import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A393700: Numbers multiplied by 2 conjecturally not occurring in A393562.

The programs for A393700, there is no canonical definition to state claims against.
-/

/-! ## A393700.P16145624464205742359

`∑[A354914(record[A245950(n+1)])]`
-/

namespace A393700.P16145624464205742359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354914 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393700.P16145624464205742359

/-! ## A393700.P11775298671237329159

`∑[A046978(∑[A000041(3*n)+3])+3]`
-/

namespace A393700.P11775298671237329159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393700.P11775298671237329159

/-! ## A393700.P17602341528614891219

`A196245(A250120(n)+A008578(n+1))`
-/

namespace A393700.P17602341528614891219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196245 (A250120 n + A008578 (n + 1)).toNat

end

end A393700.P17602341528614891219

/-! ## A393700.P1669775267197077421

`A376583(A000108(n))+A345921(3*n+2)`
-/

namespace A393700.P1669775267197077421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A000108 n).toNat + A345921 (3 * n + 2)

end

end A393700.P1669775267197077421

/-! ## A393700.P4492005655876699446

`A122497(A085395(n+1))+A050759(3*(n+1))`
-/

namespace A393700.P4492005655876699446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (A085395 (n + 1)).toNat + A050759 (3 * (n + 1))

end

end A393700.P4492005655876699446

/-!
# A393702: First number to occur at least n times in Weinstein's W sequence (A399995).

The programs for A393702, there is no canonical definition to state claims against.
-/

/-! ## A393702.P534593795109293934

`A376647(A041969(n+1))`
-/

namespace A393702.P534593795109293934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376647 (A041969 (n + 1)).toNat

end

end A393702.P534593795109293934

/-!
# A393705: a(n) is the number of ways to write n as the sum of a square and the reverse of a square.

The programs for A393705, there is no canonical definition to state claims against.
-/

/-! ## A393705.P6079597967593721712

`A000925(n)/A208222(A246106(n))`
-/

namespace A393705.P6079597967593721712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000925 n : ℚ) / (A208222 (A246106 n).toNat : ℚ)

end

end A393705.P6079597967593721712

/-! ## A393705.P11803518713918503158

`A025435(A110284(n+1)-A038189(n))`
-/

namespace A393705.P11803518713918503158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A110284 (n + 1) - A038189 n).toNat

end

end A393705.P11803518713918503158

/-! ## A393705.P8187051536009892462

`A000925(n)/A259176(A008292(n+1))`
-/

namespace A393705.P8187051536009892462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000925 n : ℚ) / (A259176 (A008292 (n + 1)).toNat : ℚ)

end

end A393705.P8187051536009892462

/-! ## A393705.P2476760058784928694

`A121373(A272564(3*n+4))+A000925(n)`
-/

namespace A393705.P2476760058784928694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A272564 (3 * n + 4)).toNat + A000925 n

end

end A393705.P2476760058784928694

/-! ## A393705.P16670633807663066404

`A025435(A089455(n+1)+n)+A000161(n)`
-/

namespace A393705.P16670633807663066404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A089455 (n + 1) + (n : ℤ)).toNat + A000161 n

end

end A393705.P16670633807663066404

/-!
# A393706: Square array A(n, k), n, k > 0, read by upwards antidiagonals; the n-th row lists the nonnegative numbers m such that A000217(m) is a multiple of n.

The programs for A393706, there is no canonical definition to state claims against.
-/

/-! ## A393706.P1706334761551403337

`A321271(A133214(n))`
-/

namespace A393706.P1706334761551403337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (A133214 n).toNat

end

end A393706.P1706334761551403337

/-! ## A393706.P3578222221193424256

`A303639(A355383(n)^A344612(n))`
-/

namespace A393706.P3578222221193424256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303639 (SequenceMachineLib.roundAway ((A355383 n : ℚ) ^ (A344612 n : ℤ))).toNat

end

end A393706.P3578222221193424256

/-!
# A393708: Achilles numbers with more than 2 distinct prime factors.

The programs for A393708, there is no canonical definition to state claims against.
-/

/-! ## A393708.P4195128357594801302

`∪[A394000(n+1), A394050(n+1)]`
-/

namespace A393708.P4195128357594801302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P4195128357594801302

/-! ## A393708.P3538568433411426801

`∪[A394000(n+1), A394224(n+1)]`
-/

namespace A393708.P3538568433411426801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P3538568433411426801

/-! ## A393708.P856316876112221010

`∩[A052486(n+1), A395197(n+1)]`
-/

namespace A393708.P856316876112221010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P856316876112221010

/-! ## A393708.P16088023391658613360

`∩[A052486(n+1), A390950(n+1)]`
-/

namespace A393708.P16088023391658613360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P16088023391658613360

/-! ## A393708.P9672905356575735668

`∩[A389753(n+1), A390950(n+1)]`
-/

namespace A393708.P9672905356575735668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P9672905356575735668

/-! ## A393708.P5564895899866140471

`∩[A389753(n+1), A395197(n+1)]`
-/

namespace A393708.P5564895899866140471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P5564895899866140471

/-! ## A393708.P15787041031125550083

`∩[A052486(n+1), A318720(n+1)]`
-/

namespace A393708.P15787041031125550083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P15787041031125550083

/-! ## A393708.P4955447699126565090

`∩[A318720(n+1), A389959(n+1)]`
-/

namespace A393708.P4955447699126565090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P4955447699126565090

/-! ## A393708.P17351742337686054568

`∩[A052486(n+1), A400773(n+1)]`
-/

namespace A393708.P17351742337686054568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P17351742337686054568

/-! ## A393708.P15498344149442862498

`∩[A389959(n+1), A400773(n+1)]`
-/

namespace A393708.P15498344149442862498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393708.P15498344149442862498

/-!
# A393710: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are positive integers satisfying x < y < z.

The programs for A393710, there is no canonical definition to state claims against.
-/

/-! ## A393710.P12195591693953537389

`A393712(n)-A025441(n)`
-/

namespace A393710.P12195591693953537389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n - A025441 n

end

end A393710.P12195591693953537389

/-! ## A393710.P12362729513284634296

`A358480(A284553(n))`
-/

namespace A393710.P12362729513284634296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358480 (A284553 n).toNat

end

end A393710.P12362729513284634296

/-! ## A393710.P10673455264085383815

`A277892(2*col(A000009(n))!)`
-/

namespace A393710.P10673455264085383815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * Nat.factorial (SequenceMachineLib.triCol (A000009 n).toNat))

end

end A393710.P10673455264085383815

/-! ## A393710.P5320185469030772404

`and(A196563(A119262(n)), A309202(n+1))`
-/

namespace A393710.P5320185469030772404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196563 (A119262 n).toNat) (A309202 (n + 1))

end

end A393710.P5320185469030772404

/-! ## A393710.P13603503066088866666

`and(A037810(n+1), A317963(A195317(n+4)))`
-/

namespace A393710.P13603503066088866666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037810 (n + 1)) (A317963 (A195317 (n + 4)).toNat)

end

end A393710.P13603503066088866666

/-!
# A393711: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are positive integers satisfying x <= y < z.

The programs for A393711, there is no canonical definition to state claims against.
-/

/-! ## A393711.P6834725405703645475

`A394746(n)-A025426(n)`
-/

namespace A393711.P6834725405703645475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394746 n - A025426 n

end

end A393711.P6834725405703645475

/-!
# A393712: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are positive integers satisfying x < y <= z.

The programs for A393712, there is no canonical definition to state claims against.
-/

/-! ## A393712.P15645204684416657256

`A393710(n)+A025441(n)`
-/

namespace A393712.P15645204684416657256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393710 n + A025441 n

end

end A393712.P15645204684416657256

/-! ## A393712.P16647026929729444072

`A358480(A284553(n))+A025441(n)`
-/

namespace A393712.P16647026929729444072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358480 (A284553 n).toNat + A025441 n

end

end A393712.P16647026929729444072

/-! ## A393712.P14843113384679037293

`A269246(A004691(n+1))+A025441(n)`
-/

namespace A393712.P14843113384679037293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 (A004691 (n + 1)).toNat + A025441 n

end

end A393712.P14843113384679037293

/-! ## A393712.P13247728222191479846

`A158383(A038754(n))%A000003(n+1)`
-/

namespace A393712.P13247728222191479846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158383 (A038754 n).toNat) (A000003 (n + 1))

end

end A393712.P13247728222191479846

/-! ## A393712.P1325681094013476945

`(A220494(3*n+4)*A326916(n))%A000003(n+1)`
-/

namespace A393712.P1325681094013476945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220494 (3 * n + 4) * A326916 n) (A000003 (n + 1))

end

end A393712.P1325681094013476945

/-!
# A393714: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are positive integers and x is coprime to y*z.

The programs for A393714, there is no canonical definition to state claims against.
-/

/-! ## A393714.P18080331043060965079

`A211508(n)-A393715(n)`
-/

namespace A393714.P18080331043060965079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211508 n - A393715 n

end

end A393714.P18080331043060965079

/-! ## A393714.P13759091924582722433

`A324105(lcm(A006456(n), A126930(n)))`
-/

namespace A393714.P13759091924582722433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (Int.lcm (A006456 n) (A126930 n))

end

end A393714.P13759091924582722433

/-!
# A393715: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are positive integers with gcd(x, y*z) > 1.

The programs for A393715, there is no canonical definition to state claims against.
-/

/-! ## A393715.P15204115630093793619

`A211508(n)-A393714(n)`
-/

namespace A393715.P15204115630093793619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211508 n - A393714 n

end

end A393715.P15204115630093793619

/-! ## A393715.P120689024408542534

`A127238(n)*A291204(A181771(3*n+4))`
-/

namespace A393715.P120689024408542534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127238 n * A291204 (A181771 (3 * n + 4)).toNat

end

end A393715.P120689024408542534

/-!
# A393716: Iteration numbers k such that SHA256^{k}(256 bits of 0) is a record high value.

The programs for A393716, there is no canonical definition to state claims against.
-/

/-! ## A393716.P7758643460211258884

`A141099(A010904(n))`
-/

namespace A393716.P7758643460211258884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141099 (A010904 n).toNat

end

end A393716.P7758643460211258884

/-!
# A393719: Sum of next n octahedral numbers (A005900).

The programs for A393719, the canonical program `A393719.P13019433132294518856` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393719 has offset 1).

The definition of A393719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393719.P11444281124353679155

`ogf((1+17x+103x^2+178x^3+103x^4+17x^5+x^6)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A393719.P11444281124353679155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17, 103, 178, 103, 17, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A393719.P11444281124353679155

namespace A393719

/-- `ogf((1+17x+103x^2+178x^3+103x^4+17x^5+x^6)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P11444281124353679155.Spec : Prop :=
  ∀ n, P11444281124353679155.a n = A393719 (n + 1)

end A393719

/-! ## A393719.P13019433132294518856

`(n+1)*((n+1)²+1)²*((n+1)²+2)/12`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393719

/-- `(n+1)*((n+1)²+1)²*((n+1)²+2)/12` -/
def P13019433132294518856.Spec : Prop :=
  ∀ n, P13019433132294518856.a n = (A393719 (n + 1) : ℚ)

end A393719

/-! ## A393719.P9636318404680543121

`Δ[A006325(∑[n]+1)]`
-/

namespace A393719.P9636318404680543121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393719.P9636318404680543121

namespace A393719

/-- `Δ[A006325(∑[n]+1)]` -/
def P9636318404680543121.Spec : Prop :=
  ∀ n, P9636318404680543121.a n = A393719 (n + 1)

end A393719

/-!
# A393720: The smallest number k such that the digit reversals of k, when written in all bases 2 to n, are greater than k.

The programs for A393720, there is no canonical definition to state claims against.
-/

/-! ## A393720.P8403989914788547680

`A384393(or(A168243(n), A334496(n+1)))`
-/

namespace A393720.P8403989914788547680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384393 (Int.lor (A168243 n) (A334496 (n + 1))).toNat

end

end A393720.P8403989914788547680

/-!
# A393721: The smallest number k such that the digit reversals of k, when written in all bases 2 to n, are less than k.

The programs for A393721, there is no canonical definition to state claims against.
-/

/-! ## A393721.P14537594461426678294

`A307616(A109355(n+1))`
-/

namespace A393721.P14537594461426678294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A109355 (n + 1)).toNat

end

end A393721.P14537594461426678294

/-! ## A393721.P17310806460873558219

`A307616(A155070(n+1))`
-/

namespace A393721.P17310806460873558219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A155070 (n + 1)).toNat

end

end A393721.P17310806460873558219

/-! ## A393721.P1499579983802992408

`A307616(A348229(n+1))`
-/

namespace A393721.P1499579983802992408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A348229 (n + 1)).toNat

end

end A393721.P1499579983802992408

/-!
# A393723: Number of free polyominoes in the {4,7} tessellation of the hyperbolic plane.

The programs for A393723, there is no canonical definition to state claims against.
-/

/-! ## A393723.P2495871191676218773

`A005036(n+1)-A005070(A001710(n))`
-/

namespace A393723.P2495871191676218773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005036 (n + 1) - A005070 (A001710 n).toNat

end

end A393723.P2495871191676218773

/-!
# A393725: Number of free polyominoes in the {5,5} tessellation of the hyperbolic plane.

The programs for A393725, there is no canonical definition to state claims against.
-/

/-! ## A393725.P4950913979954625194

`A253278(A202153(n))`
-/

namespace A393725.P4950913979954625194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253278 (A202153 n).toNat

end

end A393725.P4950913979954625194

/-! ## A393725.P13604108655972754041

`A390201(A118968(n+3))`
-/

namespace A393725.P13604108655972754041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390201 (A118968 (n + 3)).toNat

end

end A393725.P13604108655972754041

/-!
# A393729: Number of free polyominoes in the {6,4} tessellation of the hyperbolic plane.

The programs for A393729, there is no canonical definition to state claims against.
-/

/-! ## A393729.P14669112812896023076

`xor(A308167(A125654(n)), A308206(n+1))`
-/

namespace A393729.P14669112812896023076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A308167 (A125654 n).toNat) (A308206 (n + 1))

end

end A393729.P14669112812896023076

/-! ## A393729.P15228226102950491937

`A144728(A327647(n+1))`
-/

namespace A393729.P15228226102950491937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144728 (A327647 (n + 1)).toNat

end

end A393729.P15228226102950491937

/-!
# A393730: Number of free polyominoes in the {6,5} tessellation of the hyperbolic plane.

The programs for A393730, there is no canonical definition to state claims against.
-/

/-! ## A393730.P14241698132326757277

`A349095(A121101(n+1))`
-/

namespace A393730.P14241698132326757277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (A121101 (n + 1)).toNat

end

end A393730.P14241698132326757277

/-! ## A393730.P33288931519987874

`A229233(n)+A092953(A366401(n))`
-/

namespace A393730.P33288931519987874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229233 n + A092953 (A366401 n).toNat

end

end A393730.P33288931519987874

/-!
# A393734: Number of free polyominoes in the {7,4} tessellation of the hyperbolic plane.

The programs for A393734, there is no canonical definition to state claims against.
-/

/-! ## A393734.P5523020950989292724

`A229950(A057730(n+1))+A135903(n)`
-/

namespace A393734.P5523020950989292724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A057730 (n + 1)).toNat + A135903 n

end

end A393734.P5523020950989292724

/-! ## A393734.P5818369562815108533

`A156253(A295553(n)+A156726(n+1))`
-/

namespace A393734.P5818369562815108533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A295553 n + A156726 (n + 1)).toNat

end

end A393734.P5818369562815108533

/-!
# A393739: Number of free polyominoes in the {8,3} tessellation of the hyperbolic plane.

The programs for A393739, there is no canonical definition to state claims against.
-/

/-! ## A393739.P16809229349597816084

`A259353(∑[A378544(n+1)])`
-/

namespace A393739.P16809229349597816084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393739.P16809229349597816084

/-! ## A393739.P17929839721096694516

`A259353(A378544(n+1)+n)`
-/

namespace A393739.P17929839721096694516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259353 (A378544 (n + 1) + (n : ℤ)).toNat

end

end A393739.P17929839721096694516

/-! ## A393739.P13758205472951170874

`A259353(A069010(4^n)+n)`
-/

namespace A393739.P13758205472951170874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259353 (A069010 (4 ^ n) + (n : ℤ)).toNat

end

end A393739.P13758205472951170874

/-! ## A393739.P697309251145801428

`A259353(n+1)+A010051(A002293(n))`
-/

namespace A393739.P697309251145801428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259353 (n + 1) + A010051 (A002293 n).toNat

end

end A393739.P697309251145801428

/-!
# A393740: Number of free polyominoes in the {8,4} tessellation of the hyperbolic plane.

The programs for A393740, there is no canonical definition to state claims against.
-/

/-! ## A393740.P16872835771465522464

`A216600(A049452(2*n+1))+A216583(n)`
-/

namespace A393740.P16872835771465522464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216600 (A049452 (2 * n + 1)).toNat + A216583 n

end

end A393740.P16872835771465522464

/-!
# A393741: Number of free polyominoes in the {8,5} tessellation of the hyperbolic plane.

The programs for A393741, there is no canonical definition to state claims against.
-/

/-! ## A393741.P8559773418678347736

`A027851(n)-A108611(A284410(n))`
-/

namespace A393741.P8559773418678347736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - A108611 (A284410 n).toNat

end

end A393741.P8559773418678347736

/-! ## A393741.P17669110386648476045

`xor(A039105(A211210(n)), A144539(n))`
-/

namespace A393741.P17669110386648476045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039105 (A211210 n).toNat) (A144539 n)

end

end A393741.P17669110386648476045

/-!
# A393742: Number of free polyominoes in the {8,6} tessellation of the hyperbolic plane.

The programs for A393742, there is no canonical definition to state claims against.
-/

/-! ## A393742.P4455345698381052984

`A028310(A389937(1+n))`
-/

namespace A393742.P4455345698381052984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A389937 (1 + n)).toNat

end

end A393742.P4455345698381052984

/-! ## A393742.P17119706281087676364

`A028310(A393743(n+1))`
-/

namespace A393742.P17119706281087676364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A393743 (n + 1)).toNat

end

end A393742.P17119706281087676364

/-!
# A393743: Number of free polyominoes in the {8,7} tessellation of the hyperbolic plane.

The programs for A393743, there is no canonical definition to state claims against.
-/

/-! ## A393743.P3579991312703942421

`A389937(∑[A060455(n)²])`
-/

namespace A393743.P3579991312703942421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389937 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393743.P3579991312703942421

/-! ## A393743.P7283222901946516992

`A393744(∑[A060455(n)²])`
-/

namespace A393743.P7283222901946516992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393743.P7283222901946516992

/-! ## A393743.P274679266866868559

`∏{e}[A230880(n), A389937(#)]`
-/

namespace A393743.P274679266866868559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A389937 (Nat.factorization (f1 n).natAbs p)

end

end A393743.P274679266866868559

/-!
# A393744: Number of free polyominoes in the {8,8} tessellation of the hyperbolic plane.

The programs for A393744, there is no canonical definition to state claims against.
-/

/-! ## A393744.P5238050936233651710

`A394863(n)+A394864(n)`
-/

namespace A393744.P5238050936233651710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394863 n + A394864 n

end

end A393744.P5238050936233651710

/-! ## A393744.P7256575906737137497

`A394862(n)-A394863(n)`
-/

namespace A393744.P7256575906737137497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - A394863 n

end

end A393744.P7256575906737137497

/-! ## A393744.P13634108988495614841

`(A394862(n)+A394864(n))/2`
-/

namespace A393744.P13634108988495614841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394862 n + A394864 n : ℚ) / 2

end

end A393744.P13634108988495614841

/-!
# A393746: Triangle read by rows: T(n, k) is the number of ordered pairs (i, j) of integers with 0 <= i, j < n such that i*j = k*n, for n>=1 and k=0 to n-1.

The programs for A393746, there is no canonical definition to state claims against.
-/

/-! ## A393746.P7321917799331577129

`A198954(n)+A036580(A062845(n+5))`
-/

namespace A393746.P7321917799331577129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n + A036580 (A062845 (n + 5)).toNat

end

end A393746.P7321917799331577129

/-! ## A393746.P10631920988566612012

`A333767(A396588(n))+A198954(n)`
-/

namespace A393746.P10631920988566612012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 (A396588 n).toNat + A198954 n

end

end A393746.P10631920988566612012

/-! ## A393746.P1734533394261032184

`or(A005369(A005316(n)), A198954(n))`
-/

namespace A393746.P1734533394261032184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (A005316 n).toNat) (A198954 n)

end

end A393746.P1734533394261032184

/-! ## A393746.P6169576485928522838

`gcd(A240467(A166861(n+3)), A010816(n))`
-/

namespace A393746.P6169576485928522838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240467 (A166861 (n + 3)).toNat) (A010816 n)

end

end A393746.P6169576485928522838

/-! ## A393746.P6039776831762640481

`A035263(A000108(n))*A131843(n)`
-/

namespace A393746.P6039776831762640481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A000108 n).toNat * A131843 n

end

end A393746.P6039776831762640481

/-!
# A393747: Triangle read by rows: T(n, k) is the number of 3-dimensional balanced ballot paths of length 3n with exactly k semisymmetric peaks for 0 <= k < n if n >=1 and for k=0 if n=0.

The programs for A393747, there is no canonical definition to state claims against.
-/

/-! ## A393747.P8022459810141312053

`A339890(A220335(n+1)²)²`
-/

namespace A393747.P8022459810141312053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (A220335 (n + 1) ^ 2).toNat ^ 2

end

end A393747.P8022459810141312053

/-! ## A393747.P128826652100427148

`A128738(n)^A001316(A000302(n))`
-/

namespace A393747.P128826652100427148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128738 n : ℚ) ^ (A001316 (A000302 n).toNat : ℤ)

end

end A393747.P128826652100427148

/-! ## A393747.P1769965116086892485

`A128738(n)^A353858(A353858(n))`
-/

namespace A393747.P1769965116086892485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128738 n : ℚ) ^ (A353858 (A353858 n).toNat : ℤ)

end

end A393747.P1769965116086892485

/-! ## A393747.P10876144408150702221

`A128738(n)^A270647(A056654(n+4))`
-/

namespace A393747.P10876144408150702221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128738 n : ℚ) ^ (A270647 (A056654 (n + 4)).toNat : ℤ)

end

end A393747.P10876144408150702221

/-!
# A393748: Number of totally symmetric planar subpartitions of the size n pyramidal planar partition.

The programs for A393748, there is no canonical definition to state claims against.
-/

/-! ## A393748.P6819479738195498517

`A212625(A001317(n))+A061136(n)`
-/

namespace A393748.P6819479738195498517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A001317 n).toNat + A061136 n

end

end A393748.P6819479738195498517

/-! ## A393748.P11810477963191024053

`A308648(n)+A212625(A001317(n))`
-/

namespace A393748.P11810477963191024053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n + A212625 (A001317 n).toNat

end

end A393748.P11810477963191024053

/-! ## A393748.P16353628940830538063

`A334297(A130103(n))+A124302(n)`
-/

namespace A393748.P16353628940830538063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A130103 n).toNat + A124302 n

end

end A393748.P16353628940830538063

/-!
# A393749: The total number of at-most-5-furcating labeled histories that can be constructed for n labeled leaves.

The programs for A393749, there is no canonical definition to state claims against.
-/

/-! ## A393749.P18362683418790829401

`A256006(n)-A171368(A000108(n))`
-/

namespace A393749.P18362683418790829401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256006 n - A171368 (A000108 n).toNat

end

end A393749.P18362683418790829401

/-! ## A393749.P7742210780845768190

`A256006(n)-A269250(A006125(n))`
-/

namespace A393749.P7742210780845768190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256006 n - A269250 (A006125 n).toNat

end

end A393749.P7742210780845768190

/-!
# A393752: E.g.f.: exp( x * Sum_{n>=0} n! * 2^n * x^n ).

The programs for A393752, there is no canonical definition to state claims against.
-/

/-! ## A393752.P7619203474304797532

`A039955(∏[n!])`
-/

namespace A393752.P7619203474304797532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A393752.P7619203474304797532

/-!
# A393753: E.g.f.: exp( x * Sum_{n>=0} n! * 3^n * x^n ).

The programs for A393753, there is no canonical definition to state claims against.
-/

/-! ## A393753.P10845920851051558609

`A151573(A197900(n+1)-n)`
-/

namespace A393753.P10845920851051558609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 (A197900 (n + 1) - (n : ℤ)).toNat

end

end A393753.P10845920851051558609

/-!
# A393754: E.g.f.: exp( x * Sum_{n>=0} n! * 4^n * x^n ).

The programs for A393754, there is no canonical definition to state claims against.
-/

/-! ## A393754.P2570472611409001242

`A143332(A143330(n))*A143339(n)`
-/

namespace A393754.P2570472611409001242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143332 (A143330 n).toNat * A143339 n

end

end A393754.P2570472611409001242

/-!
# A393759: The total number of at-most-6-furcating labeled histories that can be constructed for n labeled leaves.

The programs for A393759, there is no canonical definition to state claims against.
-/

/-! ## A393759.P3673004256778353277

`A068696(A334434(n)+A138860(n))`
-/

namespace A393759.P3673004256778353277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068696 (A334434 n + A138860 n).toNat

end

end A393759.P3673004256778353277

/-! ## A393759.P1478169926506106480

`A325245(A358136(n+2)+A000129(n))`
-/

namespace A393759.P1478169926506106480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325245 (A358136 (n + 2) + A000129 n).toNat

end

end A393759.P1478169926506106480

/-!
# A393761: O.g.f. A(x) satisfies: [x^n] exp( n^2*(n+1)*x - n*A(x) ) = 0 for n >= 1.

The programs for A393761, there is no canonical definition to state claims against.
-/

/-! ## A393761.P10186177498597544011

`A393760(∑[n+1]+n)`
-/

namespace A393761.P10186177498597544011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A393761.P10186177498597544011

/-! ## A393761.P4990826275226495458

`lcm(2, A393760(C(n+3, 2)-2))`
-/

namespace A393761.P4990826275226495458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A393760 (Nat.choose (n + 3) 2 - 2))

end

end A393761.P4990826275226495458

/-!
# A393762: O.g.f. A(x) satisfies: [x^n] exp( n^2*(n+2)*x - n*A(x) ) = 0 for n >= 1.

The programs for A393762, there is no canonical definition to state claims against.
-/

/-! ## A393762.P15136840313750496612

`A393760(∑[3+n])`
-/

namespace A393762.P15136840313750496612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393762.P15136840313750496612

/-!
# A393763: O.g.f. A(x) satisfies: [x^n] exp( n^2*(n+3)*x - n*A(x) ) = 0 for n >= 1.

The programs for A393763, there is no canonical definition to state claims against.
-/

/-! ## A393763.P14929688232395233171

`A393760(∑[n+4]+2)`
-/

namespace A393763.P14929688232395233171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A393763.P14929688232395233171

/-!
# A393768: Main diagonal of rectangular array A393760.

The programs for A393768, there is no canonical definition to state claims against.
-/

/-! ## A393768.P6717501760565360386

`A393760(∑[4*n])`
-/

namespace A393768.P6717501760565360386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393768.P6717501760565360386

/-!
# A393769: Coefficients of E(2,t*E(4,t^2)), where E(d,t)=1+t*E(d,t)^d.

The programs for A393769, there is no canonical definition to state claims against.
-/

/-! ## A393769.P15829349211731152982

`A320536(A356937(n+1))`
-/

namespace A393769.P15829349211731152982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A356937 (n + 1)).toNat

end

end A393769.P15829349211731152982

/-! ## A393769.P9021899156609430966

`A375576(A033321(n))+A000108(n)`
-/

namespace A393769.P9021899156609430966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375576 (A033321 n).toNat + A000108 n

end

end A393769.P9021899156609430966

/-! ## A393769.P14572848815285540111

`A320536(A213093(n)+A000244(n))`
-/

namespace A393769.P14572848815285540111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A213093 n + A000244 n).toNat

end

end A393769.P14572848815285540111

/-!
# A393770: G.f.: A(x) = INV(x - x*INV(x - x^3*INV(x - x^5*INV(x - x^7*INV(x - ... - x^(2*n-1)*INV(x - ...)))))), where INV(F(x)) = series reversion of F(x).

The programs for A393770, there is no canonical definition to state claims against.
-/

/-! ## A393770.P18290888209135604795

`A370813(A013916(n+1))+A063021(n+1)`
-/

namespace A393770.P18290888209135604795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A013916 (n + 1)).toNat + A063021 (n + 1)

end

end A393770.P18290888209135604795

/-!
# A393789: Expansion of e.g.f. 1 / (2 - exp(x))^exp(x).

The programs for A393789, there is no canonical definition to state claims against.
-/

/-! ## A393789.P3392493168926370275

`A161205(∑[n]^n)`
-/

namespace A393789.P3392493168926370275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A393789.P3392493168926370275

/-!
# A393790: Expansion of e.g.f. (exp(exp(2*x) - 1) + 1) / 2.

The programs for A393790, there is no canonical definition to state claims against.
-/

/-! ## A393790.P4568876891946444829

`ceil(2^(n-1))*A000110(n)`
-/

namespace A393790.P4568876891946444829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000110 n

end

end A393790.P4568876891946444829

/-! ## A393790.P11306471123429968511

`abs(A292935(n))*ceil(2^(n-1))`
-/

namespace A393790.P11306471123429968511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A393790.P11306471123429968511

/-! ## A393790.P16957217654084623477

`A383207(n)+A004211(n)`
-/

namespace A393790.P16957217654084623477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383207 n + A004211 n

end

end A393790.P16957217654084623477

/-! ## A393790.P9402164423077412461

`A000110(n)*A011782(n)`
-/

namespace A393790.P9402164423077412461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A011782 n

end

end A393790.P9402164423077412461

/-! ## A393790.P16773760843673544386

`A011782(n)*A095149(∑[n])`
-/

namespace A393790.P16773760843673544386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393790.P16773760843673544386

/-! ## A393790.P14130671690115458520

`A011782(n)*A154380(∑[n])`
-/

namespace A393790.P14130671690115458520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A154380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393790.P14130671690115458520

/-! ## A393790.P18102091839920901898

`A011782(n)*A212431(∑[n])`
-/

namespace A393790.P18102091839920901898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A212431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393790.P18102091839920901898

/-! ## A393790.P12850668277931267453

`A000110(n)*A102363(C(n, 2))`
-/

namespace A393790.P12850668277931267453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A102363 (Nat.choose n 2)

end

end A393790.P12850668277931267453

/-! ## A393790.P1009186326974401015

`A000110(n)*A158780(2*n+1)`
-/

namespace A393790.P1009186326974401015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A158780 (2 * n + 1)

end

end A393790.P1009186326974401015

/-! ## A393790.P1215940797169713169

`A000110(n)*A118800(A000217(n))`
-/

namespace A393790.P1215940797169713169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A118800 (A000217 n).toNat

end

end A393790.P1215940797169713169

/-!
# A393791: Expansion of e.g.f. -log(1 - x) * exp(exp(x) - 1).

The programs for A393791, there is no canonical definition to state claims against.
-/

/-! ## A393791.P3872815772561893552

`A105515(A150788(n+1))`
-/

namespace A393791.P3872815772561893552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (A150788 (n + 1)).toNat

end

end A393791.P3872815772561893552

/-! ## A393791.P6208584361021142786

`∑{d}[A091065(n+1), A368095(#)]`
-/

namespace A393791.P6208584361021142786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A368095 d

end

end A393791.P6208584361021142786

/-!
# A393792: Expansion of e.g.f. -log(1 - x) / (2 - exp(x)).

The programs for A393792, there is no canonical definition to state claims against.
-/

/-! ## A393792.P17895074675481970678

`A057354(A070939(n)+A002720(n))`
-/

namespace A393792.P17895074675481970678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A070939 n + A002720 n).toNat

end

end A393792.P17895074675481970678

/-! ## A393792.P7841680421911336807

`A057354(A089408(n)+A002720(n))`
-/

namespace A393792.P7841680421911336807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A089408 n + A002720 n).toNat

end

end A393792.P7841680421911336807

/-!
# A393793: A sequence constructed by greedily sampling the discrete probability distribution p(k)=zeta(k+1)-1 to minimize discrepancy.

The programs for A393793, there is no canonical definition to state claims against.
-/

/-! ## A393793.P13515073093282970552

`A374515(A246935(n)*A374519(n+1))`
-/

namespace A393793.P13515073093282970552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A246935 n * A374519 (n + 1)).toNat

end

end A393793.P13515073093282970552

/-! ## A393793.P7624235645642505562

`A066099(lcm(A000961(2*(n+1)), A077800(n+3)))`
-/

namespace A393793.P7624235645642505562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.lcm (A000961 (2 * (n + 1))) (A077800 (n + 3)))

end

end A393793.P7624235645642505562

/-! ## A393793.P13196617317484643642

`A354747(A194382(n+1))`
-/

namespace A393793.P13196617317484643642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354747 (A194382 (n + 1)).toNat

end

end A393793.P13196617317484643642

/-! ## A393793.P13878995076717413281

`A362749(A291241(n+1))`
-/

namespace A393793.P13878995076717413281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362749 (A291241 (n + 1)).toNat

end

end A393793.P13878995076717413281

/-! ## A393793.P15433070511611499825

`A245562(A108917(3*n+1)+3)`
-/

namespace A393793.P15433070511611499825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245562 (A108917 (3 * n + 1) + 3).toNat

end

end A393793.P15433070511611499825

/-!
# A393794: Fixed points of the 1089-trick map T(n) = |n - reverse(n)| + reverse(|n - reverse(n)|).

The programs for A393794, the canonical program `A393794.P17029044210723335748` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393794 has offset 1).

The definition of A393794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393794.P17029044210723335748

`110*(10^(n+2)-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393794

/-- `110*(10^(n+2)-1)` -/
def P17029044210723335748.Spec : Prop :=
  ∀ n, P17029044210723335748.a n = A393794 (n + 1)

theorem P17029044210723335748.correct : P17029044210723335748.Spec := by
  intro n
  simp only [A393794, Nat.add_sub_cancel]

end A393794

/-!
# A393795: 7-smooth numbers that are averages of twin prime pairs.

The programs for A393795, there is no canonical definition to state claims against.
-/

/-! ## A393795.P17259059669148117108

`∩[A002473(n+1), A258838(n+1)]`
-/

namespace A393795.P17259059669148117108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P17259059669148117108

/-! ## A393795.P10586348429775799117

`∩[A085125(n+1), A258838(n+1)]`
-/

namespace A393795.P10586348429775799117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P10586348429775799117

/-! ## A393795.P3573372446429467910

`∩[A002473(n+1), A014574(n+1)]`
-/

namespace A393795.P3573372446429467910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P3573372446429467910

/-! ## A393795.P5780202532184907139

`∩[A014574(n+1), A085125(n+1)]`
-/

namespace A393795.P5780202532184907139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P5780202532184907139

/-! ## A393795.P12489590528040639078

`∩[A002473(n+1), A217259(n+1)]`
-/

namespace A393795.P12489590528040639078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P12489590528040639078

/-! ## A393795.P7316272227693971725

`∩[A085125(n+1), A217259(n+1)]`
-/

namespace A393795.P7316272227693971725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P7316272227693971725

/-! ## A393795.P8242252900803184672

`∩[A056853(n+1), A085125(n+1)]`
-/

namespace A393795.P8242252900803184672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P8242252900803184672

/-! ## A393795.P13194698243000617917

`∩[A014574(n+1), A199009(n+1)]`
-/

namespace A393795.P13194698243000617917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P13194698243000617917

/-! ## A393795.P11454904176096605304

`∩[A199009(n+1), A217259(n+1)]`
-/

namespace A393795.P11454904176096605304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P11454904176096605304

/-! ## A393795.P9218779566828357791

`∩[A199009(n+1), A258838(n+1)]`
-/

namespace A393795.P9218779566828357791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393795.P9218779566828357791

/-!
# A393796: a(n) is the number of different ways to move from A to B along grid paths in an equilateral triangular grid ABC of side n units such that the distance between A and each successive point of the path increases.

The programs for A393796, there is no canonical definition to state claims against.
-/

/-! ## A393796.P9773461202317987233

`A280951(∑[n²+n+1])`
-/

namespace A393796.P9773461202317987233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393796.P9773461202317987233

/-! ## A393796.P4678757468133978383

`A003056(A066739(n²))`
-/

namespace A393796.P4678757468133978383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A066739 (n ^ 2)).toNat

end

end A393796.P4678757468133978383

/-!
# A393798: a(n) is the least prime p such that a(n)-a(n-1) is a 3-smooth number, starting with a(1) = 2.

The programs for A393798, there is no canonical definition to state claims against.
-/

/-! ## A393798.P13525095703030252033

`A000040(lt[A317994(2*n+5), A350064(n+1)])`
-/

namespace A393798.P13525095703030252033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317994 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P13525095703030252033

/-! ## A393798.P1139070571334222564

`A000040(lt[A003961(n+1), A094004(2*n+1)])`
-/

namespace A393798.P1139070571334222564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P1139070571334222564

/-! ## A393798.P529292811989978077

`A000040(lt[A000700(n), A055653(n+1)])`
-/

namespace A393798.P529292811989978077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P529292811989978077

/-! ## A393798.P13484299985722647884

`A000040(lt[A000700(n), A353832(n+1)])`
-/

namespace A393798.P13484299985722647884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P13484299985722647884

/-! ## A393798.P15323577879137141932

`A049551(lt[A000700(n), A353832(n+1)])`
-/

namespace A393798.P15323577879137141932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P15323577879137141932

