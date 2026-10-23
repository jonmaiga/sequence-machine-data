import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
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
# A393702: First number to occur at least n times in Weinstein's W sequence (A394611).

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

/-! ## A393705.P8187051536009892462

`A000925(n)/A259176(A008292(n+1))`
-/

namespace A393705.P8187051536009892462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000925 n : ℚ) / (A259176 (A008292 (n + 1)).toNat : ℚ)

end

end A393705.P8187051536009892462

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

/-! ## A393710.P12334946241086773812

`A269246(A004691(n+1))`
-/

namespace A393710.P12334946241086773812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 (A004691 (n + 1)).toNat

end

end A393710.P12334946241086773812

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

/-! ## A393712.P8654986012165348553

`A387725(A282106(n))`
-/

namespace A393712.P8654986012165348553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387725 (A282106 n).toNat

end

end A393712.P8654986012165348553

/-! ## A393712.P14706420261613137729

`A374247(A310531(n))`
-/

namespace A393712.P14706420261613137729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (A310531 n).toNat

end

end A393712.P14706420261613137729

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

The programs for A393719, the canonical program `A393719.P13019433132294518856` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393719 has offset 1).

The definition of A393719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393719.P13019433132294518856

`(n+1)*((n+1)²+1)²*((n+1)²+2)/12`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393719

/-- `(n+1)*((n+1)²+1)²*((n+1)²+2)/12` -/
def P13019433132294518856.Spec : Prop :=
  ∀ n, P13019433132294518856.a n = (A393719 (n + 1) : ℚ)

end A393719

/-! ## A393719.P4028365157730979022

`Δ[A006325(∑[A028310(n)])]`
-/

namespace A393719.P4028365157730979022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393719.P4028365157730979022

namespace A393719

/-- `Δ[A006325(∑[A028310(n)])]` -/
def P4028365157730979022.Spec : Prop :=
  ∀ n, P4028365157730979022.a n = A393719 (n + 1)

end A393719

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

/-! ## A393734.P5818369562815108533

`A156253(A295553(n)+A156726(n+1))`
-/

namespace A393734.P5818369562815108533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A295553 n + A156726 (n + 1)).toNat

end

end A393734.P5818369562815108533

/-! ## A393734.P6668808604221049676

`A345760(A001729(n+1))+A318618(n)`
-/

namespace A393734.P6668808604221049676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345760 (A001729 (n + 1)).toNat + A318618 n

end

end A393734.P6668808604221049676

/-!
# A393739: Number of free polyominoes in the {8,3} tessellation of the hyperbolic plane.

The programs for A393739, there is no canonical definition to state claims against.
-/

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

/-! ## A393739.P3347618811962094908

`filter[A259353(n+1), A005171(#)]`
-/

namespace A393739.P3347618811962094908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A393739.P3347618811962094908

/-! ## A393739.P17226480101973322221

`filter[A259353(n+1), A014578(#)]`
-/

namespace A393739.P17226480101973322221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A393739.P17226480101973322221

/-!
# A393740: Number of free polyominoes in the {8,4} tessellation of the hyperbolic plane.

The programs for A393740, there is no canonical definition to state claims against.
-/

/-! ## A393740.P15632655275108085577

`A170890(A030238(n))`
-/

namespace A393740.P15632655275108085577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A030238 n).toNat

end

end A393740.P15632655275108085577

/-!
# A393741: Number of free polyominoes in the {8,5} tessellation of the hyperbolic plane.

The programs for A393741, there is no canonical definition to state claims against.
-/

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

/-! ## A393742.P17119706281087676364

`A028310(A393743(n+1))`
-/

namespace A393742.P17119706281087676364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A393743 (n + 1)).toNat

end

end A393742.P17119706281087676364

/-! ## A393742.P5204779387998004674

`A050985(A393744(n+1))`
-/

namespace A393742.P5204779387998004674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A393744 (n + 1)).toNat

end

end A393742.P5204779387998004674

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

/-! ## A393743.P3608975200333670012

`A393744(∑[A360540(n+1)])`
-/

namespace A393743.P3608975200333670012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393743.P3608975200333670012

/-! ## A393743.P14345549162249662983

`A389937(A001222(2*5^n))`
-/

namespace A393743.P14345549162249662983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389937 (A001222 (2 * 5 ^ n)).toNat

end

end A393743.P14345549162249662983

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

/-! ## A393746.P10716375917217778150

`A104248(A390678(3*n+2))+A198954(n)-1`
-/

namespace A393746.P10716375917217778150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (A390678 (3 * n + 2)).toNat + (A198954 n - 1)

end

end A393746.P10716375917217778150

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

/-! ## A393748.P16353628940830538063

`A334297(A130103(n))+A124302(n)`
-/

namespace A393748.P16353628940830538063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A130103 n).toNat + A124302 n

end

end A393748.P16353628940830538063

/-! ## A393748.P7494227808551672702

`or(A046079(A002110(n)), A394218(n+1))`
-/

namespace A393748.P7494227808551672702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046079 (A002110 n).toNat) (A394218 (n + 1))

end

end A393748.P7494227808551672702

/-! ## A393748.P6543784375401280034

`A326787(A011539(n+2))+A159772(n+1)`
-/

namespace A393748.P6543784375401280034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A011539 (n + 2)).toNat + A159772 (n + 1)

end

end A393748.P6543784375401280034

/-!
# A393749: The total number of at-most-5-furcating labeled histories that can be constructed for n labeled leaves.

The programs for A393749, there is no canonical definition to state claims against.
-/

/-! ## A393749.P16878697756008718978

`A256006(n)-A248805(A120732(n))`
-/

namespace A393749.P16878697756008718978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256006 n - A248805 (A120732 n).toNat

end

end A393749.P16878697756008718978

/-! ## A393749.P6786970388391668490

`A256006(n)-A358775(A360978(n+1))`
-/

namespace A393749.P6786970388391668490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256006 n - A358775 (A360978 (n + 1)).toNat

end

end A393749.P6786970388391668490

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

/-! ## A393753.P18008506797959136412

`A289439(A394523(n)+∏{p}[n+1, #])`
-/

namespace A393753.P18008506797959136412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A394523 n + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A393753.P18008506797959136412

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

/-!
# A393762: O.g.f. A(x) satisfies: [x^n] exp( n^2*(n+2)*x - n*A(x) ) = 0 for n >= 1.

The programs for A393762, there is no canonical definition to state claims against.
-/

/-! ## A393762.P8151516303299301479

`A393760(∑[n+3])`
-/

namespace A393762.P8151516303299301479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393762.P8151516303299301479

/-!
# A393763: O.g.f. A(x) satisfies: [x^n] exp( n^2*(n+3)*x - n*A(x) ) = 0 for n >= 1.

The programs for A393763, there is no canonical definition to state claims against.
-/

/-! ## A393763.P11303014285133132729

`A393760(A000217(n+3)+n)`
-/

namespace A393763.P11303014285133132729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A393763.P11303014285133132729

/-! ## A393763.P9050254645821344812

`A393760(lt[A393760(n+4), n])`
-/

namespace A393763.P9050254645821344812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A393763.P9050254645821344812

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

/-! ## A393790.P1009186326974401015

`A000110(n)*A158780(2*n+1)`
-/

namespace A393790.P1009186326974401015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A158780 (2 * n + 1)

end

end A393790.P1009186326974401015

/-! ## A393790.P2723954945252358075

`(A000108(n)-A125107(n))*A000110(n)`
-/

namespace A393790.P2723954945252358075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n - A125107 n) * A000110 n

end

end A393790.P2723954945252358075

/-! ## A393790.P11804692451019430609

`(A094373(n+1)-A094373(n))*A000110(n)`
-/

namespace A393790.P11804692451019430609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094373 (n + 1) - A094373 n) * A000110 n

end

end A393790.P11804692451019430609

/-! ## A393790.P2890562207080911442

`(A131577(n+1)-A131577(n))*A000110(n)`
-/

namespace A393790.P2890562207080911442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) - A131577 n) * A000110 n

end

end A393790.P2890562207080911442

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

/-! ## A393792.P5492160645618347794

`A057363(A005346(n+1)-A002996(n+1))`
-/

namespace A393792.P5492160645618347794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A005346 (n + 1) - A002996 (n + 1)).toNat

end

end A393792.P5492160645618347794

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

/-! ## A393793.P2512503173924234540

`A005361(A233733(n+1)-A144026(n))`
-/

namespace A393793.P2512503173924234540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A233733 (n + 1) - A144026 n).toNat

end

end A393793.P2512503173924234540

/-!
# A393794: Fixed points of the 1089-trick map T(n) = |n - reverse(n)| + reverse(|n - reverse(n)|).

The programs for A393794, the canonical program `A393794.P17029044210723335748` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393794 has offset 1).

The definition of A393794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393794.P17029044210723335748

`110*(10^(n+2)-1)`

The canonical program, it is in `Seq.B000.C039`.
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

/-! ## A393796.P1321545403264899174

`A334274(A034691(n)+1)`
-/

namespace A393796.P1321545403264899174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (A034691 n + 1).toNat

end

end A393796.P1321545403264899174

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

/-! ## A393798.P17894498151327807515

`A000040(lt[A382858(2*(n+1)), A178358(n)])`
-/

namespace A393798.P17894498151327807515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382858 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P17894498151327807515

/-! ## A393798.P2463373739117972645

`A000040(lt[A053261(2*n+3), A358522(n+1)])`
-/

namespace A393798.P2463373739117972645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393798.P2463373739117972645

