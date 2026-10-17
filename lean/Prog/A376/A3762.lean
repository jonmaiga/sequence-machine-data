import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
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
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

/-!
# A376200: Indices where primes appear in A376198.

The programs for A376200, there is no canonical definition to state claims against.
-/

/-! ## A376200.P3421884679651927013

`A376199(A000040(n+1))`
-/

namespace A376200.P3421884679651927013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (A000040 (n + 1)).toNat

end

end A376200.P3421884679651927013

/-! ## A376200.P14827515597925359618

`A376199(A008578(n+2))`
-/

namespace A376200.P14827515597925359618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (A008578 (n + 2)).toNat

end

end A376200.P14827515597925359618

/-! ## A376200.P4632935748483156246

`A376199(A182986(n+2))`
-/

namespace A376200.P4632935748483156246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (A182986 (n + 2)).toNat

end

end A376200.P4632935748483156246

/-! ## A376200.P4983443664457608169

`A376199(A006093(n+1)+1)`
-/

namespace A376200.P4983443664457608169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (A006093 (n + 1) + 1).toNat

end

end A376200.P4983443664457608169

/-! ## A376200.P3695209284973097371

`A376199(eq[1, A003415(n)])`
-/

namespace A376200.P3695209284973097371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376200.P3695209284973097371

/-!
# A376201: Fixed points in A376198.

The programs for A376201, there is no canonical definition to state claims against.
-/

/-! ## A376201.P17957105811902924220

`record[gcd(n+1, A376198(n+1))]`
-/

namespace A376201.P17957105811902924220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A376198 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376201.P17957105811902924220

/-! ## A376201.P10925783288006799305

`eq[n+1, A376199(n+1)]+1`
-/

namespace A376201.P10925783288006799305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376201.P10925783288006799305

/-! ## A376201.P1782295673625976626

`record[gcd(A289438(3*(n+1)), A376199(n+1))]`
-/

namespace A376201.P1782295673625976626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A289438 (3 * (n + 1))) (A376199 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376201.P1782295673625976626

/-! ## A376201.P12621095628354693862

`eq[A073139(n+4), A285345(A096111(n))]`
-/

namespace A376201.P12621095628354693862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (A096111 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376201.P12621095628354693862

/-! ## A376201.P18195150381391601061

`lt[A000579(A096111(n+4)), A269160(n)]`
-/

namespace A376201.P18195150381391601061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A096111 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376201.P18195150381391601061

/-!
# A376202: Number of pairs 1 <= x <= y <= n-1 such that gcd(x,n) = gcd(y,n) = gcd(x+y,n) = 1 and 1/x + 1/y == 1/(x+y) mod n.

The programs for A376202, there is no canonical definition to state claims against.
-/

/-! ## A376202.P235239022522773460

`2*A376203(ceil((2*lcm(2, n)-(n-2))/2))`
-/

namespace A376202.P235239022522773460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376203 ⌈((2 * Nat.lcm 2 n : ℤ) - ((n : ℤ) - 2) : ℚ) / 2⌉.toNat

end

end A376202.P235239022522773460

/-! ## A376202.P3622968696415453506

`A000010(n+1)*A118006(A001615(n+1))`
-/

namespace A376202.P3622968696415453506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A118006 (A001615 (n + 1)).toNat

end

end A376202.P3622968696415453506

/-!
# A376203: a(n) = A376202(2*n-1)/2.

The programs for A376203, there is no canonical definition to state claims against.
-/

/-! ## A376203.P15585684003915737145

`A376202(Δ[n²])/2`
-/

namespace A376203.P15585684003915737145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376202 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A376203.P15585684003915737145

/-! ## A376203.P2512734022368806321

`floor(A376202(2*n+1)/2)`
-/

namespace A376203.P2512734022368806321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A376202 (2 * n + 1) : ℚ) / 2⌋

end

end A376203.P2512734022368806321

/-! ## A376203.P13188075006136615625

`(A376202(2*n+1)-A000007(n+2))/2`
-/

namespace A376203.P13188075006136615625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376202 (2 * n + 1) - A000007 (n + 2) : ℚ) / 2

end

end A376203.P13188075006136615625

/-! ## A376203.P1627192392149967233

`A142150(A376202(2*n+1))`
-/

namespace A376203.P1627192392149967233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A376202 (2 * n + 1)).toNat

end

end A376203.P1627192392149967233

/-! ## A376203.P1396827507447037476

`val(A027306(2*n+1), A182731(A345168(n+1)))`
-/

namespace A376203.P1396827507447037476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027306 (2 * n + 1)).toNat (A182731 (A345168 (n + 1)).toNat).toNat

end

end A376203.P1396827507447037476

/-!
# A376206: Prime indices of triangular numbers k such that either k + 1 or k - 2 is prime.

The programs for A376206, there is no canonical definition to state claims against.
-/

/-! ## A376206.P7974694889093697841

`∪[A231847(n+1), A357218(n+1)]`
-/

namespace A376206.P7974694889093697841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376206.P7974694889093697841

/-! ## A376206.P4112405906797026048

`A172471(A096333(n+1))`
-/

namespace A376206.P4112405906797026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A096333 (n + 1)).toNat

end

end A376206.P4112405906797026048

/-! ## A376206.P788589416058599715

`A003056(A096333(n+1)+2)`
-/

namespace A376206.P788589416058599715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A096333 (n + 1) + 2).toNat

end

end A376206.P788589416058599715

/-! ## A376206.P8708688839812307119

`A000196(2*A096333(n+1))`
-/

namespace A376206.P8708688839812307119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A096333 (n + 1)).toNat

end

end A376206.P8708688839812307119

/-! ## A376206.P10891696190183428636

`A095171(A233265(n+2))`
-/

namespace A376206.P10891696190183428636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095171 (A233265 (n + 2)).toNat

end

end A376206.P10891696190183428636

/-!
# A376208: Numbers k such that 4*k+1 is the hypotenuse of a primitive Pythagorean triangle with an even short leg.

The programs for A376208, there is no canonical definition to state claims against.
-/

/-! ## A376208.P10988015345966647308

`A381552(A000217(n))+A059010(n)`
-/

namespace A376208.P10988015345966647308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381552 (A000217 n).toNat + A059010 n

end

end A376208.P10988015345966647308

/-! ## A376208.P12929390215957515767

`A147781(A134896(n+1))+A008486(n+1)`
-/

namespace A376208.P12929390215957515767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147781 (A134896 (n + 1)).toNat + A008486 (n + 1)

end

end A376208.P12929390215957515767

/-! ## A376208.P9934965321057410224

`A093641(2*(n+2))+A001221(A115073(n+1))`
-/

namespace A376208.P9934965321057410224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (2 * (n + 2)) + A001221 (A115073 (n + 1)).toNat

end

end A376208.P9934965321057410224

/-! ## A376208.P4402873718784644487

`A249818(3*n+2)+A087889(A023896(n+1))`
-/

namespace A376208.P4402873718784644487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (3 * n + 2) + A087889 (A023896 (n + 1)).toNat

end

end A376208.P4402873718784644487

/-! ## A376208.P11994003257734516382

`A304274(A318726(n+5))+A028310(3*n+2)`
-/

namespace A376208.P11994003257734516382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304274 (A318726 (n + 5)).toNat + A028310 (3 * n + 2)

end

end A376208.P11994003257734516382

/-!
# A376209: Numbers k for which the hypotenuse z=4*k+1 occurs in more than one primitive Pythagorean triangle, such that 2 distinct triangles (x1,y1,z), (x2,y2,z) with opposite parity of their short legs x1 and x2 exist (xi < yi < z).

The programs for A376209, there is no canonical definition to state claims against.
-/

/-! ## A376209.P7834383196199901476

`∩[A375750(n+1), A376208(n+1)]`
-/

namespace A376209.P7834383196199901476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376209.P7834383196199901476

/-! ## A376209.P5745671359752083790

`eq[A049605(n+1), A357070(n)]`
-/

namespace A376209.P5745671359752083790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376209.P5745671359752083790

/-! ## A376209.P1352108869785592191

`eq[A053812(n+1), A357070(n)]`
-/

namespace A376209.P1352108869785592191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376209.P1352108869785592191

/-! ## A376209.P7428524970083259099

`eq[A072865(n+1), A357070(n)]`
-/

namespace A376209.P7428524970083259099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376209.P7428524970083259099

/-! ## A376209.P11055934463651919076

`eq[A296076(n+1), A357070(n)]`
-/

namespace A376209.P11055934463651919076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376209.P11055934463651919076

/-!
# A376211: Numbers k for which among all possible Pythagorean triangles with the hypotenuse 4*k+1, the minimum of the lengths of the shorter legs is odd.

The programs for A376211, there is no canonical definition to state claims against.
-/

/-! ## A376211.P14847522719311522081

`lt[A010879(A002865(n)), A179045(n+1)]`
-/

namespace A376211.P14847522719311522081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A002865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376211.P14847522719311522081

/-! ## A376211.P17144356687335279602

`eq[A047999(n), A161755(A132393(n))]`
-/

namespace A376211.P17144356687335279602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161755 (A132393 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376211.P17144356687335279602

/-! ## A376211.P10859101457052112699

`lt[A001222(A337389(n)), A353849(n)]`
-/

namespace A376211.P10859101457052112699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A337389 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376211.P10859101457052112699

/-! ## A376211.P5057694181205778489

`eq[A161716(A131182(n)), A365658(n+1)]`
-/

namespace A376211.P5057694181205778489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161716 (A131182 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376211.P5057694181205778489

/-! ## A376211.P12081063378619036881

`lt[A323889(3*n), A040785(A084938(n))]`
-/

namespace A376211.P12081063378619036881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040785 (A084938 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376211.P12081063378619036881

/-!
# A376214: a(n) = A379342(A379343(n)).

The programs for A376214, the canonical program `A376214.P9873045066255919083` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376214 has offset 1).

The definition of A376214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376214.P9873045066255919083

`A383589(A056023(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A376214

/-- `A383589(A056023(n+1))` -/
def P9873045066255919083.Spec : Prop :=
  ∀ n, P9873045066255919083.a n = A376214 (n + 1)

theorem P9873045066255919083.correct : P9873045066255919083.Spec := by
  intro n
  simp only [A376214, Nat.add_sub_cancel]

end A376214

/-! ## A376214.P18421962197360639000

`A379342(A379343(n+1))`
-/

namespace A376214.P18421962197360639000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A379343 (n + 1)).toNat

end

end A376214.P18421962197360639000

namespace A376214

/-- `A379342(A379343(n+1))` -/
def P18421962197360639000.Spec : Prop :=
  ∀ n, P18421962197360639000.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P4626223162586120130

`A380200(A378684(n+1))`
-/

namespace A376214.P4626223162586120130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A378684 (n + 1)).toNat

end

end A376214.P4626223162586120130

namespace A376214

/-- `A380200(A378684(n+1))` -/
def P4626223162586120130.Spec : Prop :=
  ∀ n, P4626223162586120130.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P6209895000144448497

`A378684(A380245(n+1))`
-/

namespace A376214.P6209895000144448497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A380245 (n + 1)).toNat

end

end A376214.P6209895000144448497

namespace A376214

/-- `A378684(A380245(n+1))` -/
def P6209895000144448497.Spec : Prop :=
  ∀ n, P6209895000144448497.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P11482019261280065405

`A379343(A380815(n+1))`
-/

namespace A376214.P11482019261280065405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A380815 (n + 1)).toNat

end

end A376214.P11482019261280065405

namespace A376214

/-- `A379343(A380815(n+1))` -/
def P11482019261280065405.Spec : Prop :=
  ∀ n, P11482019261280065405.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P10010565384419576200

`A381664(A379342(n+1))`
-/

namespace A376214.P10010565384419576200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A379342 (n + 1)).toNat

end

end A376214.P10010565384419576200

namespace A376214

/-- `A381664(A379342(n+1))` -/
def P10010565384419576200.Spec : Prop :=
  ∀ n, P10010565384419576200.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P5124373251727171640

`A381663(A380200(n+1))`
-/

namespace A376214.P5124373251727171640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A380200 (n + 1)).toNat

end

end A376214.P5124373251727171640

namespace A376214

/-- `A381663(A380200(n+1))` -/
def P5124373251727171640.Spec : Prop :=
  ∀ n, P5124373251727171640.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P6953799735423870993

`A380245(A381663(n+1))`
-/

namespace A376214.P6953799735423870993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A381663 (n + 1)).toNat

end

end A376214.P6953799735423870993

namespace A376214

/-- `A380245(A381663(n+1))` -/
def P6953799735423870993.Spec : Prop :=
  ∀ n, P6953799735423870993.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P185001352792084422

`A383723(A378762(n+1))`
-/

namespace A376214.P185001352792084422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A378762 (n + 1)).toNat

end

end A376214.P185001352792084422

namespace A376214

/-- `A383723(A378762(n+1))` -/
def P185001352792084422.Spec : Prop :=
  ∀ n, P185001352792084422.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P1710642766406423839

`A381662(A380817(n+1))`
-/

namespace A376214.P1710642766406423839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A380817 (n + 1)).toNat

end

end A376214.P1710642766406423839

namespace A376214

/-- `A381662(A380817(n+1))` -/
def P1710642766406423839.Spec : Prop :=
  ∀ n, P1710642766406423839.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P7699130229078334233

`A380815(A381664(n+1))`
-/

namespace A376214.P7699130229078334233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A381664 (n + 1)).toNat

end

end A376214.P7699130229078334233

namespace A376214

/-- `A380815(A381664(n+1))` -/
def P7699130229078334233.Spec : Prop :=
  ∀ n, P7699130229078334233.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P1540041543454745971

`A382679(A381968(n+1))`
-/

namespace A376214.P1540041543454745971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A381968 (n + 1)).toNat

end

end A376214.P1540041543454745971

namespace A376214

/-- `A382679(A381968(n+1))` -/
def P1540041543454745971.Spec : Prop :=
  ∀ n, P1540041543454745971.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P6977513425273339631

`A381968(A382680(n+1))`
-/

namespace A376214.P6977513425273339631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A382680 (n + 1)).toNat

end

end A376214.P6977513425273339631

namespace A376214

/-- `A381968(A382680(n+1))` -/
def P6977513425273339631.Spec : Prop :=
  ∀ n, P6977513425273339631.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P11200348180631299250

`A382680(A382499(n+1))`
-/

namespace A376214.P11200348180631299250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A382499 (n + 1)).toNat

end

end A376214.P11200348180631299250

namespace A376214

/-- `A382680(A382499(n+1))` -/
def P11200348180631299250.Spec : Prop :=
  ∀ n, P11200348180631299250.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P14326179881113703902

`A382499(A382679(n+1))`
-/

namespace A376214.P14326179881113703902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A382679 (n + 1)).toNat

end

end A376214.P14326179881113703902

namespace A376214

/-- `A382499(A382679(n+1))` -/
def P14326179881113703902.Spec : Prop :=
  ∀ n, P14326179881113703902.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P1433423870908216326

`A383724(A383419(n+1))`
-/

namespace A376214.P1433423870908216326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A383419 (n + 1)).toNat

end

end A376214.P1433423870908216326

namespace A376214

/-- `A383724(A383419(n+1))` -/
def P1433423870908216326.Spec : Prop :=
  ∀ n, P1433423870908216326.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P15358921715869785244

`A383419(A383722(n+1))`
-/

namespace A376214.P15358921715869785244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A383722 (n + 1)).toNat

end

end A376214.P15358921715869785244

namespace A376214

/-- `A383419(A383722(n+1))` -/
def P15358921715869785244.Spec : Prop :=
  ∀ n, P15358921715869785244.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P9533706170791560224

`A383722(A383590(n+1))`
-/

namespace A376214.P9533706170791560224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A383590 (n + 1)).toNat

end

end A376214.P9533706170791560224

namespace A376214

/-- `A383722(A383590(n+1))` -/
def P9533706170791560224.Spec : Prop :=
  ∀ n, P9533706170791560224.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P10170580302002235101

`A383590(A383724(n+1))`
-/

namespace A376214.P10170580302002235101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A383724 (n + 1)).toNat

end

end A376214.P10170580302002235101

namespace A376214

/-- `A383590(A383724(n+1))` -/
def P10170580302002235101.Spec : Prop :=
  ∀ n, P10170580302002235101.a n = A376214 (n + 1)

end A376214

/-! ## A376214.P3503957987308880782

`A380200(A378200(A378200(n+1)))`
-/

namespace A376214.P3503957987308880782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A378200 (A378200 (n + 1)).toNat).toNat

end

end A376214.P3503957987308880782

namespace A376214

/-- `A380200(A378200(A378200(n+1)))` -/
def P3503957987308880782.Spec : Prop :=
  ∀ n, P3503957987308880782.a n = A376214 (n + 1)

end A376214

/-!
# A376215: Maximum number of non-overlapping discs with a diameter of 1 that can fit within an n X n square, using hexagonal packing or square packing, whichever is more efficient.

The programs for A376215, there is no canonical definition to state claims against.
-/

/-! ## A376215.P7558347234567585997

`and(∑[A350849(A006883(n+1))], -3)`
-/

namespace A376215.P7558347234567585997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (A006883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-3)

end

end A376215.P7558347234567585997

/-! ## A376215.P7540741542142893856

`A003059(∑[A234587(3*n+2)]²)`
-/

namespace A376215.P7540741542142893856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234587 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A376215.P7540741542142893856

/-! ## A376215.P12886528809965539519

`∑[A003557(A272345(n+1))+2*n]`
-/

namespace A376215.P12886528809965539519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A272345 (n + 1)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376215.P12886528809965539519

/-! ## A376215.P9088827829959464516

`∑[A072088(2*n+1)%A128341(n+1)]`
-/

namespace A376215.P9088827829959464516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (2 * n + 1)) (A128341 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376215.P9088827829959464516

/-! ## A376215.P3007867679352843292

`A000194(floor(sqrt((n+1)^6+3))*A004709(n+1))`
-/

namespace A376215.P3007867679352843292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((Nat.sqrt ((n + 1) ^ 6 + 3) : ℤ) * A004709 (n + 1)).toNat

end

end A376215.P3007867679352843292

/-!
# A376216: Numbers whose sum of powerful divisors (including 1) is even.

The programs for A376216, the canonical program `A376216.P15355088566132048219` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376216 has offset 1).

The definition of A376216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376216.P15355088566132048219

`lt[2, A336643(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376216

/-- `lt[2, A336643(n+1)]+1` -/
def P15355088566132048219.Spec : Prop :=
  ∀ n, (P15355088566132048219.a n : ℤ) = A376216 (n + 1)

theorem P15355088566132048219.correct : P15355088566132048219.Spec := by
  intro n
  simp only [A376216, Nat.add_sub_cancel]

end A376216

/-! ## A376216.P3591277419116445089

`lt[1, A360164(n+1)]+1`
-/

namespace A376216.P3591277419116445089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376216.P3591277419116445089

namespace A376216

/-- `lt[1, A360164(n+1)]+1` -/
def P3591277419116445089.Spec : Prop :=
  ∀ n, (P3591277419116445089.a n : ℤ) = A376216 (n + 1)

end A376216

/-! ## A376216.P13690758194720557278

`lt[A360160(n+1)%2, 1]+1`
-/

namespace A376216.P13690758194720557278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360160 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376216.P13690758194720557278

namespace A376216

/-- `lt[A360160(n+1)%2, 1]+1` -/
def P13690758194720557278.Spec : Prop :=
  ∀ n, (P13690758194720557278.a n : ℤ) = A376216 (n + 1)

end A376216

/-! ## A376216.P15652298209606121104

`lt[A360162(n+1)%2, 1]+1`
-/

namespace A376216.P15652298209606121104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360162 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376216.P15652298209606121104

namespace A376216

/-- `lt[A360162(n+1)%2, 1]+1` -/
def P15652298209606121104.Spec : Prop :=
  ∀ n, (P15652298209606121104.a n : ℤ) = A376216 (n + 1)

end A376216

/-! ## A376216.P10761735546454821277

`lt[A013929(n+1), A356191(n+1)]+1`
-/

namespace A376216.P10761735546454821277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A376216.P10761735546454821277

namespace A376216

/-- `lt[A013929(n+1), A356191(n+1)]+1` -/
def P10761735546454821277.Spec : Prop :=
  ∀ n, (P10761735546454821277.a n : ℤ) = A376216 (n + 1)

end A376216

/-! ## A376216.P18324109351426456071

`lt[A026274(n+1), A356191(n+1)]+1`
-/

namespace A376216.P18324109351426456071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A376216.P18324109351426456071

namespace A376216

/-- `lt[A026274(n+1), A356191(n+1)]+1` -/
def P18324109351426456071.Spec : Prop :=
  ∀ n, (P18324109351426456071.a n : ℤ) = A376216 (n + 1)

end A376216

/-! ## A376216.P16900574376966634497

`lt[2, A336643(A008574(n))]`
-/

namespace A376216.P16900574376966634497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376216.P16900574376966634497

namespace A376216

/-- `lt[2, A336643(A008574(n))]` -/
def P16900574376966634497.Spec : Prop :=
  ∀ n, (P16900574376966634497.a n : ℤ) = A376216 (n + 1)

end A376216

/-!
# A376217: Powerful numbers whose sum of powerful divisors (including 1) is even.

The programs for A376217, there is no canonical definition to state claims against.
-/

/-! ## A376217.P1303210337589472075

`∩[A001694(n+1), A376216(n+1)]`
-/

namespace A376217.P1303210337589472075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376217.P1303210337589472075

/-! ## A376217.P13492889797777526506

`∩[A376216(n+1), A393924(n+1)]`
-/

namespace A376217.P13492889797777526506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376217.P13492889797777526506

/-! ## A376217.P8802745985966182145

`filter[A376216(n+1), A112526(#)]`
-/

namespace A376217.P8802745985966182145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A376217.P8802745985966182145

/-! ## A376217.P12503924438898411318

`∩[A069562(n+1), A368812(n+1)]`
-/

namespace A376217.P12503924438898411318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376217.P12503924438898411318

/-! ## A376217.P15072040218786719609

`∩[A155568(n+1), A347242(n+1)]`
-/

namespace A376217.P15072040218786719609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376217.P15072040218786719609

/-!
# A376218: 

The programs for A376218, there is no canonical definition to state claims against.
-/

/-! ## A376218.P15466731229053673563

`filter[2*n+1, A295316(#)]`
-/

namespace A376218.P15466731229053673563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j) = 1) n)

end

end A376218.P15466731229053673563

/-! ## A376218.P2773762351337738300

`record[A327171(2*n+1)/A173557(2*n+1)]`
-/

namespace A376218.P2773762351337738300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (2 * n + 1) : ℚ) / (A173557 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376218.P2773762351337738300

/-!
# A376220: Record values in A174414.

The programs for A376220, there is no canonical definition to state claims against.
-/

/-! ## A376220.P8558040406954671513

`A174414(A376219(n+1))`
-/

namespace A376220.P8558040406954671513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174414 (A376219 (n + 1)).toNat

end

end A376220.P8558040406954671513

/-! ## A376220.P3555055055286852964

`record[A174414(A064598(n+1))]`
-/

namespace A376220.P3555055055286852964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174414 (A064598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376220.P3555055055286852964

/-!
# A376224: G.f. A(x) satisfies A( (x + 3*A(x)^2)^3 ) = A(x)^3.

The programs for A376224, there is no canonical definition to state claims against.
-/

/-! ## A376224.P13549807388675940922

`A371416(n)+A169673(A275551(n))`
-/

namespace A376224.P13549807388675940922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371416 n + A169673 (A275551 n).toNat

end

end A376224.P13549807388675940922

/-! ## A376224.P4039768030618343188

`A371416(n)+A254110(A371428(n))`
-/

namespace A376224.P4039768030618343188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371416 n + A254110 (A371428 n).toNat

end

end A376224.P4039768030618343188

/-! ## A376224.P4212249788232570005

`or(A010054(A368931(n)), A371416(n))`
-/

namespace A376224.P4212249788232570005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A368931 n).toNat) (A371416 n)

end

end A376224.P4212249788232570005

/-!
# A376226: G.f. satisfies A(x) = A(x^3 + 6*x*A(x)^3) / A(x^2 + 4*x*A(x)^2).

The programs for A376226, there is no canonical definition to state claims against.
-/

/-! ## A376226.P14266208678553791590

`A358374(A000124(∑[n]))`
-/

namespace A376226.P14266208678553791590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (A000124 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A376226.P14266208678553791590

/-!
# A376227: a(n) = Product_{k=1..n} (8^k - 1)/(2^k - 1) for n >= 1 with a(0) = 1.

The programs for A376227, there is no canonical definition to state claims against.
-/

/-! ## A376227.P11816293685356505857

`∏[∑{d}[-a(n-1), #^n]]` with `a(0)=1, a(1)=4`
-/

namespace A376227.P11816293685356505857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376227.P11816293685356505857

/-! ## A376227.P17184690945013180700

`(2^n+4^n+1)*a(n-1)` with `a(0)=1`
-/

namespace A376227.P17184690945013180700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + (4 ^ n + 1)) * a (n - 1)

end

end A376227.P17184690945013180700

/-! ## A376227.P6873502849552370705

`∏[2^n+4^n-or(1, -n)%2]`
-/

namespace A376227.P6873502849552370705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℤ) - Int.tmod (Int.lor 1 (-(n : ℤ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376227.P6873502849552370705

/-! ## A376227.P11178448012485684923

`∏[A135576(n+1)]`
-/

namespace A376227.P11178448012485684923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376227.P11178448012485684923

/-! ## A376227.P7715344497857403206

`∏[A001576(n)]/3`
-/

namespace A376227.P7715344497857403206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A376227.P7715344497857403206

/-!
# A376228: a(n) = (6*n+1) * (2*n)!^3 / n!^6.

The programs for A376228, there is no canonical definition to state claims against.
-/

/-! ## A376228.P5158863274070751785

`(6*n+1)*A002897(n)`
-/

namespace A376228.P5158863274070751785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A002897 n

end

end A376228.P5158863274070751785

/-! ## A376228.P14765958705172193219

`A002897(n)*A016921(n)`
-/

namespace A376228.P14765958705172193219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002897 n * A016921 n

end

end A376228.P14765958705172193219

/-! ## A376228.P491994051069375903

`A002897(n)*A016777(2*n)`
-/

namespace A376228.P491994051069375903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002897 n * A016777 (2 * n)

end

end A376228.P491994051069375903

/-! ## A376228.P8419180477383314436

`A002897(n)*A165998(6*n)`
-/

namespace A376228.P8419180477383314436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002897 n * A165998 (6 * n)

end

end A376228.P8419180477383314436

/-! ## A376228.P5398478933073637489

`A000984(n)^3*A016921(n)`
-/

namespace A376228.P5398478933073637489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 3 * A016921 n

end

end A376228.P5398478933073637489

/-!
# A376230: Expansion of g.f. A(x) satisfying A(x)^2 = A( x*A(x) + x*A(x)^2 + x*A(x)^3 ).

The programs for A376230, there is no canonical definition to state claims against.
-/

/-! ## A376230.P6909845822848159965

`A248227(A121092(n))`
-/

namespace A376230.P6909845822848159965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A121092 n).toNat

end

end A376230.P6909845822848159965

/-! ## A376230.P10112878278954115315

`A247908(A151460(n))`
-/

namespace A376230.P10112878278954115315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A151460 n).toNat

end

end A376230.P10112878278954115315

/-! ## A376230.P1894300892802812127

`A309505(n+1)+A054899(A020988(n))`
-/

namespace A376230.P1894300892802812127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309505 (n + 1) + A054899 (A020988 n).toNat

end

end A376230.P1894300892802812127

/-!
# A376231: G.f. A(x) = Sum_{n>=0} a(n)*x^n where a(n) = Sum_{k=0..n-1} ( ([x^k] A(x)^n) (mod 2^n) ) for n > 0, with a(0) = 1.

The programs for A376231, there is no canonical definition to state claims against.
-/

/-! ## A376231.P1858838337144510036

`A001222(A116956(n))+A000108(n)`
-/

namespace A376231.P1858838337144510036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116956 n).toNat + A000108 n

end

end A376231.P1858838337144510036

/-! ## A376231.P39423845621812982

`A329395(or(A000120(n), A128761(n)))`
-/

namespace A376231.P39423845621812982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (Int.lor (A000120 n) (A128761 n)).toNat

end

end A376231.P39423845621812982

/-!
# A376232: G.f. A(x) = Sum_{n>=0} a(n)*x^n where a(n) = Sum_{k=0..n-1} 2^(n-k-1) * ( ([x^k] A(x)^n) (mod 2^n) ) for n > 0, with a(0) = 1.

The programs for A376232, there is no canonical definition to state claims against.
-/

/-! ## A376232.P9372611351789210527

`A392704(A048816(comp[∑[n]]))`
-/

namespace A376232.P9372611351789210527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392704 (A048816 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A376232.P9372611351789210527

/-! ## A376232.P11128387951653179860

`A070086(A112935(n+1)+1)`
-/

namespace A376232.P11128387951653179860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070086 (A112935 (n + 1) + 1).toNat

end

end A376232.P11128387951653179860

/-!
# A376233: G.f. A(x) satisfies: A( x - x^2 - A(x)^3 ) = x.

The programs for A376233, there is no canonical definition to state claims against.
-/

/-! ## A376233.P15047799981804496113

`A062491(A073191(n+1))`
-/

namespace A376233.P15047799981804496113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062491 (A073191 (n + 1)).toNat

end

end A376233.P15047799981804496113

/-! ## A376233.P12865521453919400069

`A181515(A276924(n))+1`
-/

namespace A376233.P12865521453919400069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181515 (A276924 n).toNat + 1

end

end A376233.P12865521453919400069

/-!
# A376235: Prime numbers with Hamming weight neither prime nor a power of 2.

The programs for A376235, there is no canonical definition to state claims against.
-/

/-! ## A376235.P15645220469399304965

`filter[A085448(n+1), A135947(#)]`
-/

namespace A376235.P15645220469399304965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A376235.P15645220469399304965

/-! ## A376235.P7272683223159059586

`filter[A255564(n+2), A135947(#)]`
-/

namespace A376235.P7272683223159059586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255564 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A376235.P7272683223159059586

/-! ## A376235.P10492659215931735255

`∩[A023688(n+1), A087759(n+1)]`
-/

namespace A376235.P10492659215931735255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376235.P10492659215931735255

/-! ## A376235.P5233894610581201492

`∩[A023688(n+1), A095286(n+1)]`
-/

namespace A376235.P5233894610581201492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376235.P5233894610581201492

/-!
# A376236: Ludic Fortunate numbers: a(n) = N(P(n)+1) - P(n), where N(x) = min {L in A003309 | L > x} is the next larger ludic number and P(n) = Prod_{k=1..n} A003309[n].

The programs for A376236, there is no canonical definition to state claims against.
-/

/-! ## A376236.P6570194685814298754

`A284146(A039952(n))`
-/

namespace A376236.P6570194685814298754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284146 (A039952 n).toNat

end

end A376236.P6570194685814298754

/-! ## A376236.P14687885018176944471

`A117366(A126764(n+1))`
-/

namespace A376236.P14687885018176944471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A126764 (n + 1)).toNat

end

end A376236.P14687885018176944471

/-! ## A376236.P16939087567313220301

`A036962(A309369(n+1))`
-/

namespace A376236.P16939087567313220301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (A309369 (n + 1)).toNat

end

end A376236.P16939087567313220301

/-! ## A376236.P944935558670242082

`A245821(A105909(n+1))`
-/

namespace A376236.P944935558670242082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245821 (A105909 (n + 1)).toNat

end

end A376236.P944935558670242082

/-! ## A376236.P12800392558211135332

`A292205(A143827(n+1))`
-/

namespace A376236.P12800392558211135332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292205 (A143827 (n + 1)).toNat

end

end A376236.P12800392558211135332

/-!
# A376237: Ludic factorials: product of the first n ludic numbers A003309.

The programs for A376237, there is no canonical definition to state claims against.
-/

/-! ## A376237.P13438215667901351467

`a(n-1)*A003309(n)` with `a(0)=1`
-/

namespace A376237.P13438215667901351467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A003309 n

end

end A376237.P13438215667901351467

/-! ## A376237.P11163204724145852856

`∏[A003309(A028310(n))]`
-/

namespace A376237.P11163204724145852856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376237.P11163204724145852856

/-! ## A376237.P9609694377184655338

`∏[A003309(A000007(n)+n)]`
-/

namespace A376237.P9609694377184655338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376237.P9609694377184655338

/-! ## A376237.P11208292049984708986

`∏[A269380(record[A269380(n+1)])]`
-/

namespace A376237.P11208292049984708986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376237.P11208292049984708986

/-! ## A376237.P17230709174281455094

`∏[A003309(A008619(comp[2*n+3]))]`
-/

namespace A376237.P17230709174281455094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (A008619 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376237.P17230709174281455094

/-!
# A376238: Sequence obtained from A376239 by deleting the substrings of k-1 copies of k starting at index k(k-1)/2 + 1 for each k > 1.

The programs for A376238, there is no canonical definition to state claims against.
-/

/-! ## A376238.P1248205330129249608

`A358551(A060092(n+2))-A358372(n+2)`
-/

namespace A376238.P1248205330129249608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358551 (A060092 (n + 2)).toNat - A358372 (n + 2)

end

end A376238.P1248205330129249608

/-! ## A376238.P7949977080035888022

`A055642(A220328(n+3)²)`
-/

namespace A376238.P7949977080035888022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A220328 (n + 3) ^ 2).toNat

end

end A376238.P7949977080035888022

/-! ## A376238.P14754315492945520689

`A055642((1-A268886(n+3))²)`
-/

namespace A376238.P14754315492945520689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((1 - A268886 (n + 3)) ^ 2).toNat

end

end A376238.P14754315492945520689

/-! ## A376238.P1462997011647524268

`A055642(A055642(n)*A225118(n+2))`
-/

namespace A376238.P1462997011647524268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055642 n * A225118 (n + 2)).toNat

end

end A376238.P1462997011647524268

/-! ## A376238.P8662812187545455227

`A055642(A004523(n)*A232376(n+3))`
-/

namespace A376238.P8662812187545455227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A004523 n * A232376 (n + 3)).toNat

end

end A376238.P8662812187545455227

/-!
# A376239: a(n) = index k of the column in which n is found, if the columns k = 1, 2, 3, ... are initially filled with numbers T(k-1)+1, ..., T(k) = k(k+1)/2, and when n is found in column k, then the top element of each subsequent column (k+1, k+2, ...) is moved to the top of the previous column (k, k+1, ...).

The programs for A376239, there is no canonical definition to state claims against.
-/

/-! ## A376239.P4272290579847560550

`A159081(A096334(n)*A251683(3*n+4))`
-/

namespace A376239.P4272290579847560550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (A096334 n * A251683 (3 * n + 4)).toNat

end

end A376239.P4272290579847560550

/-!
# A376245: Lexicographically earliest sequence of positive integers a(1), a(2), ... such that for any n > 0, Sum_{k = 1..n} 1 / (a(k) * A376244(k)) < 1.

The programs for A376245, there is no canonical definition to state claims against.
-/

/-! ## A376245.P4840326030723227950

`A002722(A153955(n))`
-/

namespace A376245.P4840326030723227950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002722 (A153955 n).toNat

end

end A376245.P4840326030723227950

/-! ## A376245.P3896381184496057310

`A124333(A150796(n))`
-/

namespace A376245.P3896381184496057310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124333 (A150796 n).toNat

end

end A376245.P3896381184496057310

/-! ## A376245.P14337051164660947794

`A002722(A291738(n))`
-/

namespace A376245.P14337051164660947794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002722 (A291738 n).toNat

end

end A376245.P14337051164660947794

/-!
# A376246: a(n) is the numerator of Sum_{k = 1..n} 1 / (A376244(k) * A376245(k)).

The programs for A376246, there is no canonical definition to state claims against.
-/

/-! ## A376246.P4479056129068186691

`A006530(A377234(n)+A008472(n+1))`
-/

namespace A376246.P4479056129068186691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A377234 n + A008472 (n + 1)).toNat

end

end A376246.P4479056129068186691

/-!
# A376247: a(n) is the denominator of Sum_{k = 1..n} 1 / (A376244(k) * A376245(k)).

The programs for A376247, there is no canonical definition to state claims against.
-/

/-! ## A376247.P18085028644517047744

`A282779(∏[n+3])`
-/

namespace A376247.P18085028644517047744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282779 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A376247.P18085028644517047744

/-!
# A376248: Irregular triangle where row n lists m such that rad(m) | n and bigomega(m) <= bigomega(n), where rad = A007947 and bigomega = A001222.

The programs for A376248, there is no canonical definition to state claims against.
-/

/-! ## A376248.P14658415225407144250

`A162306(n+1)+A159786(A205295(n))`
-/

namespace A376248.P14658415225407144250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) + A159786 (A205295 n).toNat

end

end A376248.P14658415225407144250

/-!
# A376249: Numbers that are not prime powers and have a unique largest prime exponent that is larger than the second-largest prime exponent by 1.

The programs for A376249, there is no canonical definition to state claims against.
-/

/-! ## A376249.P10513282279963643111

`∩[A376250(n+1), A376251(n+1)]`
-/

namespace A376249.P10513282279963643111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376249.P10513282279963643111

/-! ## A376249.P6356554407433642479

`∩[A356862(n+1), A376251(n+1)]`
-/

namespace A376249.P6356554407433642479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376249.P6356554407433642479

/-! ## A376249.P10075438249348947036

`∩[A351201(n+1), A377562(n+1)]`
-/

namespace A376249.P10075438249348947036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376249.P10075438249348947036

/-! ## A376249.P6717805850764780019

`A325241(comp[A295182(2*n+1)²])`
-/

namespace A376249.P6717805850764780019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295182 (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A376249.P6717805850764780019

/-!
# A376250: Numbers with a unique largest prime exponent (A356862) that are not prime powers (A246655).

The programs for A376250, the canonical program `A376250.P13512818789682152144` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376250 has offset 1).

The definition of A376250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376250.P13512818789682152144

`filter[A356862(n+1), A355447(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A376250

/-- `filter[A356862(n+1), A355447(#)]` -/
def P13512818789682152144.Spec : Prop :=
  ∀ n, P13512818789682152144.a n = A376250 (n + 1)

theorem P13512818789682152144.correct : P13512818789682152144.Spec := by
  intro n
  simp only [A376250, Nat.add_sub_cancel]

end A376250

/-! ## A376250.P17465881630394763682

`∩[A126706(n+1), A356862(n+1)]`
-/

namespace A376250.P17465881630394763682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376250.P17465881630394763682

namespace A376250

/-- `∩[A126706(n+1), A356862(n+1)]` -/
def P17465881630394763682.Spec : Prop :=
  ∀ n, (P17465881630394763682.a n : ℤ) = A376250 (n + 1)

end A376250

/-! ## A376250.P5208713992300183802

`∩[A024619(n+1), A356862(n+1)]`
-/

namespace A376250.P5208713992300183802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376250.P5208713992300183802

namespace A376250

/-- `∩[A024619(n+1), A356862(n+1)]` -/
def P5208713992300183802.Spec : Prop :=
  ∀ n, (P5208713992300183802.a n : ℤ) = A376250 (n + 1)

end A376250

/-! ## A376250.P4003274157746528107

`∩[A356862(n+1), A361102(n+1)]`
-/

namespace A376250.P4003274157746528107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376250.P4003274157746528107

namespace A376250

/-- `∩[A356862(n+1), A361102(n+1)]` -/
def P4003274157746528107.Spec : Prop :=
  ∀ n, (P4003274157746528107.a n : ℤ) = A376250 (n + 1)

end A376250

/-! ## A376250.P12390325402992142583

`filter[A356862(n+1), A143731(#)]`
-/

namespace A376250.P12390325402992142583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A376250.P12390325402992142583

namespace A376250

/-- `filter[A356862(n+1), A143731(#)]` -/
def P12390325402992142583.Spec : Prop :=
  ∀ n, P12390325402992142583.a n = A376250 (n + 1)

end A376250

/-! ## A376250.P17962278815347854343

`∩[A102467(n+1), A356862(n+1)]`
-/

namespace A376250.P17962278815347854343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376250.P17962278815347854343

namespace A376250

/-- `∩[A102467(n+1), A356862(n+1)]` -/
def P17962278815347854343.Spec : Prop :=
  ∀ n, (P17962278815347854343.a n : ℤ) = A376250 (n + 1)

end A376250

/-!
# A376252: Concatenated (n+1)||n modulo n.

The programs for A376252, the canonical program `A376252.P16858412016413004925` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376252 has offset 1).

The definition of A376252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376252.P16858412016413004925

`A061601(n)%(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A376252

/-- `A061601(n)%(n+1)` -/
def P16858412016413004925.Spec : Prop :=
  ∀ n, P16858412016413004925.a n = A376252 (n + 1)

theorem P16858412016413004925.correct : P16858412016413004925.Spec := by
  intro n
  simp only [A376252, Nat.add_sub_cancel]

end A376252

/-! ## A376252.P6286659308867388126

`A261618(n+1)%(n+1)`
-/

namespace A376252.P6286659308867388126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261618 (n + 1)) (n + 1 : ℤ)

end

end A376252.P6286659308867388126

namespace A376252

/-- `A261618(n+1)%(n+1)` -/
def P6286659308867388126.Spec : Prop :=
  ∀ n, P6286659308867388126.a n = A376252 (n + 1)

end A376252

/-! ## A376252.P17670408757620690420

`A392225(n+1)%(n+1)`
-/

namespace A376252.P17670408757620690420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392225 (n + 1)) (n + 1 : ℤ)

end

end A376252.P17670408757620690420

namespace A376252

/-- `A392225(n+1)%(n+1)` -/
def P17670408757620690420.Spec : Prop :=
  ∀ n, P17670408757620690420.a n = A376252 (n + 1)

end A376252

/-! ## A376252.P9339136076586553581

`A089186(n+1)%(n+1)`
-/

namespace A376252.P9339136076586553581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089186 (n + 1)) (n + 1 : ℤ)

end

end A376252.P9339136076586553581

namespace A376252

/-- `A089186(n+1)%(n+1)` -/
def P9339136076586553581.Spec : Prop :=
  ∀ n, P9339136076586553581.a n = A376252 (n + 1)

end A376252

/-! ## A376252.P15468241671299405236

`A178914(n+1)%(n+1)`
-/

namespace A376252.P15468241671299405236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178914 (n + 1)) (n + 1 : ℤ)

end

end A376252.P15468241671299405236

namespace A376252

/-- `A178914(n+1)%(n+1)` -/
def P15468241671299405236.Spec : Prop :=
  ∀ n, P15468241671299405236.a n = A376252 (n + 1)

end A376252

/-! ## A376252.P16687644216129194348

`A127423(n+2)%(n+1)`
-/

namespace A376252.P16687644216129194348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127423 (n + 2)) (n + 1 : ℤ)

end

end A376252.P16687644216129194348

namespace A376252

/-- `A127423(n+2)%(n+1)` -/
def P16687644216129194348.Spec : Prop :=
  ∀ n, P16687644216129194348.a n = A376252 (n + 1)

end A376252

/-! ## A376252.P6624917768436555036

`A248378(2*n+1)%(n+1)`
-/

namespace A376252.P6624917768436555036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248378 (2 * n + 1)) (n + 1 : ℤ)

end

end A376252.P6624917768436555036

namespace A376252

/-- `A248378(2*n+1)%(n+1)` -/
def P6624917768436555036.Spec : Prop :=
  ∀ n, P6624917768436555036.a n = A376252 (n + 1)

end A376252

/-!
# A376253: Composite numbers k such that 2^(2^(k-1)-1) == 1 (mod k^2).

The programs for A376253, there is no canonical definition to state claims against.
-/

/-! ## A376253.P16852840362893616058

`A001262(A061917(2*n+5)^A224344(n))`
-/

namespace A376253.P16852840362893616058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (SequenceMachineLib.roundAway ((A061917 (2 * n + 5) : ℚ) ^ (A224344 n : ℤ))).toNat

end

end A376253.P16852840362893616058

/-!
# A376256: Numbers which are the minimum of a cycle in the map x -> phi(sigma(x)).

The programs for A376256, there is no canonical definition to state claims against.
-/

/-! ## A376256.P13803455753109240942

`record[A036845(A096998(n+1))]`
-/

namespace A376256.P13803455753109240942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036845 (A096998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376256.P13803455753109240942

/-! ## A376256.P15238364549769627154

`∩[A096850(n+1), A318083(n+1)]`
-/

namespace A376256.P15238364549769627154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376256.P15238364549769627154

/-! ## A376256.P8638897529727101740

`∩[A005792(n+1), A096850(n+1)]`
-/

namespace A376256.P8638897529727101740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376256.P8638897529727101740

/-! ## A376256.P11144116015217340261

`∩[A032867(n+1), A096850(n+1)]`
-/

namespace A376256.P11144116015217340261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376256.P11144116015217340261

/-! ## A376256.P2370502219133481345

`∩[A032939(n+1), A096850(n+1)]`
-/

namespace A376256.P2370502219133481345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376256.P2370502219133481345

/-!
# A376264: Run-sums of first differences (A078147) of nonsquarefree numbers (A013929).

The programs for A376264, there is no canonical definition to state claims against.
-/

/-! ## A376264.P10189265481672882091

`A376267(n+1)*A376312(n+1)`
-/

namespace A376264.P10189265481672882091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376267 (n + 1) * A376312 (n + 1)

end

end A376264.P10189265481672882091

/-!
# A376267: Run-lengths of first differences (A078147) of nonsquarefree numbers (A013929).

The programs for A376267, there is no canonical definition to state claims against.
-/

/-! ## A376267.P15909789530814465638

`A376264(n+1)/A376312(n+1)`
-/

namespace A376267.P15909789530814465638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376264 (n + 1) : ℚ) / (A376312 (n + 1) : ℚ)

end

end A376267.P15909789530814465638

/-!
# A376269: a(n) = n! + (n - 1)! + (n - 2)! + n - 3.

The programs for A376269, there is no canonical definition to state claims against.
-/

/-! ## A376269.P15763911911195698675

`(n+2)²*n!+n-1`
-/

namespace A376269.P15763911911195698675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 * Nat.factorial n : ℤ) + ((n : ℤ) - 1)

end

end A376269.P15763911911195698675

/-! ## A376269.P9108563906142938926

`(n+2)*(n+2)*n!+n-1`
-/

namespace A376269.P9108563906142938926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * ((n + 2) * Nat.factorial n) : ℤ) + ((n : ℤ) - 1)

end

end A376269.P9108563906142938926

/-! ## A376269.P3066689023521899393

`(n+2)/(n+1)*∏[n+2]+n-1`
-/

namespace A376269.P3066689023521899393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((n : ℤ) - 1 : ℚ)

end

end A376269.P3066689023521899393

/-!
# A376270: a(n) is the product of the leading digit of n and the sum of the squares of its digits.

The programs for A376270, the canonical program `A376270.P2407315113390054031` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376270 has offset 0).

The definition of A376270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376270.P2407315113390054031

`A000030(n)*A003132(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A376270

/-- `A000030(n)*A003132(n)` -/
def P2407315113390054031.Spec : Prop :=
  ∀ n, P2407315113390054031.a n = A376270 n

theorem P2407315113390054031.correct : P2407315113390054031.Spec := by
  intro n
  simp only [A376270]

end A376270

/-! ## A376270.P13623594123378315532

`∑{digits}[n, #²]*A000030(A137564(n))`
-/

namespace A376270.P13623594123378315532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) * A000030 (A137564 n).toNat

end

end A376270.P13623594123378315532

namespace A376270

/-- `∑{digits}[n, #²]*A000030(A137564(n))` -/
def P13623594123378315532.Spec : Prop :=
  ∀ n, P13623594123378315532.a n = A376270 n

end A376270

/-! ## A376270.P1403030786671422462

`∑{digits}[n, #²]*A000030(A355222(n))`
-/

namespace A376270.P1403030786671422462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) * A000030 (A355222 n).toNat

end

end A376270.P1403030786671422462

namespace A376270

/-- `∑{digits}[n, #²]*A000030(A355222(n))` -/
def P1403030786671422462.Spec : Prop :=
  ∀ n, P1403030786671422462.a n = A376270 n

end A376270

/-! ## A376270.P8225750017224627532

`∑{digits}[n, A001105(#)]/2*A000030(n)`
-/

namespace A376270.P8225750017224627532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2 * (A000030 n : ℚ)

end

end A376270.P8225750017224627532

namespace A376270

/-- `∑{digits}[n, A001105(#)]/2*A000030(n)` -/
def P8225750017224627532.Spec : Prop :=
  ∀ n, P8225750017224627532.a n = (A376270 n : ℚ)

end A376270

/-! ## A376270.P17936074183603560855

`A000030(n)*A289506(A113581(n))`
-/

namespace A376270.P17936074183603560855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A289506 (A113581 n).toNat

end

end A376270.P17936074183603560855

namespace A376270

/-- `A000030(n)*A289506(A113581(n))` -/
def P17936074183603560855.Spec : Prop :=
  ∀ n, P17936074183603560855.a n = A376270 n

end A376270

/-! ## A376270.P14289596771555689973

`(A069940(n)-A257297(n))*A000030(n)`
-/

namespace A376270.P14289596771555689973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069940 n - A257297 n) * A000030 n

end

end A376270.P14289596771555689973

namespace A376270

/-- `(A069940(n)-A257297(n))*A000030(n)` -/
def P14289596771555689973.Spec : Prop :=
  ∀ n, P14289596771555689973.a n = A376270 n

end A376270

/-! ## A376270.P10937267207777161861

`(A007953(n)²-2*A257297(n))*A000030(n)`
-/

namespace A376270.P10937267207777161861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 n ^ 2 - 2 * A257297 n) * A000030 n

end

end A376270.P10937267207777161861

namespace A376270

/-- `(A007953(n)²-2*A257297(n))*A000030(n)` -/
def P10937267207777161861.Spec : Prop :=
  ∀ n, P10937267207777161861.a n = A376270 n

end A376270

/-! ## A376270.P17726146874910960876

`A000030(n)*A257587(A051022(n))`
-/

namespace A376270.P17726146874910960876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A257587 (A051022 n).toNat

end

end A376270.P17726146874910960876

namespace A376270

/-- `A000030(n)*A257587(A051022(n))` -/
def P17726146874910960876.Spec : Prop :=
  ∀ n, P17726146874910960876.a n = A376270 n

end A376270

/-! ## A376270.P14491112782096265983

`A000030(n)*A111707(A056142(n))`
-/

namespace A376270.P14491112782096265983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A111707 (A056142 n).toNat

end

end A376270.P14491112782096265983

namespace A376270

/-- `A000030(n)*A111707(A056142(n))` -/
def P14491112782096265983.Spec : Prop :=
  ∀ n, P14491112782096265983.a n = A376270 n

end A376270

/-!
# A376271: Numbers k such that there exists at least one proper divisor that is neither squarefree nor a prime power, i.e., m is in A126706.

The programs for A376271, the canonical program `A376271.P10040751222563494524` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376271 has offset 1).

The definition of A376271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376271.P3181820877399876030

`lt[2, A340654(n+1)]+1`
-/

namespace A376271.P3181820877399876030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376271.P3181820877399876030

namespace A376271

/-- `lt[2, A340654(n+1)]+1` -/
def P3181820877399876030.Spec : Prop :=
  ∀ n, (P3181820877399876030.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P6762638990268748369

`∪[A036785(n+1), A379336(n+1)]`
-/

namespace A376271.P6762638990268748369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P6762638990268748369

namespace A376271

/-- `∪[A036785(n+1), A379336(n+1)]` -/
def P6762638990268748369.Spec : Prop :=
  ∀ n, (P6762638990268748369.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P16585723031087781827

`∪[A067341(n+1), A379336(n+1)]`
-/

namespace A376271.P16585723031087781827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P16585723031087781827

namespace A376271

/-- `∪[A067341(n+1), A379336(n+1)]` -/
def P16585723031087781827.Spec : Prop :=
  ∀ n, (P16585723031087781827.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P2378944165715963867

`∪[A072413(n+1), A379336(n+1)]`
-/

namespace A376271.P2378944165715963867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P2378944165715963867

namespace A376271

/-- `∪[A072413(n+1), A379336(n+1)]` -/
def P2378944165715963867.Spec : Prop :=
  ∀ n, (P2378944165715963867.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P10040751222563494524

`∪[A085986(n+1), A379336(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A376271

/-- `∪[A085986(n+1), A379336(n+1)]` -/
def P10040751222563494524.Spec : Prop :=
  ∀ n, (P10040751222563494524.a n : ℤ) = A376271 (n + 1)

theorem P10040751222563494524.correct : P10040751222563494524.Spec := by
  intro n
  simp only [A376271, Nat.add_sub_cancel]

end A376271

/-! ## A376271.P1510012149198392676

`∪[A375055(n+1), A378878(n+1)]`
-/

namespace A376271.P1510012149198392676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P1510012149198392676

namespace A376271

/-- `∪[A375055(n+1), A378878(n+1)]` -/
def P1510012149198392676.Spec : Prop :=
  ∀ n, (P1510012149198392676.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P18005495567375161034

`filter[A062171(n+1), A355447(#)]`
-/

namespace A376271.P18005495567375161034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376271.P18005495567375161034

namespace A376271

/-- `filter[A062171(n+1), A355447(#)]` -/
def P18005495567375161034.Spec : Prop :=
  ∀ n, P18005495567375161034.a n = A376271 (n + 1)

end A376271

/-! ## A376271.P4917734552581304845

`filter[A289554(n+1), A355447(#)]`
-/

namespace A376271.P4917734552581304845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376271.P4917734552581304845

namespace A376271

/-- `filter[A289554(n+1), A355447(#)]` -/
def P4917734552581304845.Spec : Prop :=
  ∀ n, P4917734552581304845.a n = A376271 (n + 1)

end A376271

/-! ## A376271.P6457106336407791781

`filter[A033987(n+1), A355447(#)]`
-/

namespace A376271.P6457106336407791781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376271.P6457106336407791781

namespace A376271

/-- `filter[A033987(n+1), A355447(#)]` -/
def P6457106336407791781.Spec : Prop :=
  ∀ n, P6457106336407791781.a n = A376271 (n + 1)

end A376271

/-! ## A376271.P5977752855617787381

`∩[A033987(n+1), A126706(n+1)]`
-/

namespace A376271.P5977752855617787381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P5977752855617787381

namespace A376271

/-- `∩[A033987(n+1), A126706(n+1)]` -/
def P5977752855617787381.Spec : Prop :=
  ∀ n, (P5977752855617787381.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P6953200289055036684

`∩[A062171(n+1), A126706(n+1)]`
-/

namespace A376271.P6953200289055036684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P6953200289055036684

namespace A376271

/-- `∩[A062171(n+1), A126706(n+1)]` -/
def P6953200289055036684.Spec : Prop :=
  ∀ n, (P6953200289055036684.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P15962121099441065878

`∩[A126706(n+1), A289554(n+1)]`
-/

namespace A376271.P15962121099441065878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P15962121099441065878

namespace A376271

/-- `∩[A126706(n+1), A289554(n+1)]` -/
def P15962121099441065878.Spec : Prop :=
  ∀ n, (P15962121099441065878.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P17091890024442521272

`filter[A122181(n+1), A355447(#)]`
-/

namespace A376271.P17091890024442521272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376271.P17091890024442521272

namespace A376271

/-- `filter[A122181(n+1), A355447(#)]` -/
def P17091890024442521272.Spec : Prop :=
  ∀ n, P17091890024442521272.a n = A376271 (n + 1)

end A376271

/-! ## A376271.P5746556585079173950

`∩[A122181(n+1), A126706(n+1)]`
-/

namespace A376271.P5746556585079173950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P5746556585079173950

namespace A376271

/-- `∩[A122181(n+1), A126706(n+1)]` -/
def P5746556585079173950.Spec : Prop :=
  ∀ n, (P5746556585079173950.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P8838663192993223508

`∩[A062171(n+1), A376384(n+1)]`
-/

namespace A376271.P8838663192993223508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P8838663192993223508

namespace A376271

/-- `∩[A062171(n+1), A376384(n+1)]` -/
def P8838663192993223508.Spec : Prop :=
  ∀ n, (P8838663192993223508.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P10870416118312303995

`∩[A126706(n+1), A239289(n+1)]`
-/

namespace A376271.P10870416118312303995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P10870416118312303995

namespace A376271

/-- `∩[A126706(n+1), A239289(n+1)]` -/
def P10870416118312303995.Spec : Prop :=
  ∀ n, (P10870416118312303995.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P6634458338699621914

`∩[A062171(n+1), A158871(n+1)]`
-/

namespace A376271.P6634458338699621914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P6634458338699621914

namespace A376271

/-- `∩[A062171(n+1), A158871(n+1)]` -/
def P6634458338699621914.Spec : Prop :=
  ∀ n, (P6634458338699621914.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P10037478261352751202

`∩[A024619(n+1), A062171(n+1)]`
-/

namespace A376271.P10037478261352751202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P10037478261352751202

namespace A376271

/-- `∩[A024619(n+1), A062171(n+1)]` -/
def P10037478261352751202.Spec : Prop :=
  ∀ n, (P10037478261352751202.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P18035806185115267398

`∩[A062171(n+1), A361102(n+1)]`
-/

namespace A376271.P18035806185115267398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P18035806185115267398

namespace A376271

/-- `∩[A062171(n+1), A361102(n+1)]` -/
def P18035806185115267398.Spec : Prop :=
  ∀ n, (P18035806185115267398.a n : ℤ) = A376271 (n + 1)

end A376271

/-! ## A376271.P17561715909215322070

`∩[A062171(n+1), A387335(n+1)]`
-/

namespace A376271.P17561715909215322070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P17561715909215322070

namespace A376271

/-- `∩[A062171(n+1), A387335(n+1)]` -/
def P17561715909215322070.Spec : Prop :=
  ∀ n, (P17561715909215322070.a n : ℤ) = A376271 (n + 1)

end A376271

/-!
# A376277: The least increasing sequence starting with 1, such that the determinants of the Hankel matrices H1 = [a(0), a(1), ..., a(n); ...; a(n), a(n+1), ..., a(2*n)] and H2 = [a(1), a(2), ..., a(n+1); ...; a(n+1), a(n+2), ..., a(2*n+1)] are > 0.

The programs for A376277, there is no canonical definition to state claims against.
-/

/-! ## A376277.P5549664005585377765

`or(A099802(A071976(n+1)), A181771(n+1))`
-/

namespace A376277.P5549664005585377765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099802 (A071976 (n + 1)).toNat) (A181771 (n + 1))

end

end A376277.P5549664005585377765

/-! ## A376277.P10402671190830101895

`A157271(A001998(n+1))`
-/

namespace A376277.P10402671190830101895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A001998 (n + 1)).toNat

end

end A376277.P10402671190830101895

/-! ## A376277.P10706959144370439643

`A256133(A115324(n+1))`
-/

namespace A376277.P10706959144370439643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A115324 (n + 1)).toNat

end

end A376277.P10706959144370439643

/-!
# A376279: Numbers k such that k^k is a cube.

The programs for A376279, the canonical program `A376279.P14030068633923779886` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376279 has offset 1).

The definition of A376279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376279.P6698423426913998999

`∪[3*n, n^3]`
-/

namespace A376279.P6698423426913998999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A376279.P6698423426913998999

namespace A376279

/-- `∪[3*n, n^3]` -/
def P6698423426913998999.Spec : Prop :=
  ∀ n, (P6698423426913998999.a n : ℤ) = A376279 (n + 1)

end A376279

/-! ## A376279.P14030068633923779886

`lt[0, A010057(n*n²%3)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A376279

/-- `lt[0, A010057(n*n²%3)]` -/
def P14030068633923779886.Spec : Prop :=
  ∀ n, (P14030068633923779886.a n : ℤ) = A376279 (n + 1)

theorem P14030068633923779886.correct : P14030068633923779886.Spec := by
  intro n
  simp only [A376279, Nat.add_sub_cancel]

end A376279

/-! ## A376279.P2518293338233871281

`sqrt(∪[A000290(3*(n+1)), A001014(n)])`
-/

namespace A376279.P2518293338233871281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A376279.P2518293338233871281

namespace A376279

/-- `sqrt(∪[A000290(3*(n+1)), A001014(n)])` -/
def P2518293338233871281.Spec : Prop :=
  ∀ n, P2518293338233871281.a n = (A376279 (n + 1) : ℝ)

end A376279

/-! ## A376279.P8455871845775265848

`eq[A369317(n+1), A382109(n+1)]`
-/

namespace A376279.P8455871845775265848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376279.P8455871845775265848

namespace A376279

/-- `eq[A369317(n+1), A382109(n+1)]` -/
def P8455871845775265848.Spec : Prop :=
  ∀ n, (P8455871845775265848.a n : ℤ) = A376279 (n + 1)

end A376279

/-!
# A376280: Record values in A085908.

The programs for A376280, there is no canonical definition to state claims against.
-/

/-! ## A376280.P7562944073123383515

`record[A085908(n+1)]`
-/

namespace A376280.P7562944073123383515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376280.P7562944073123383515

/-! ## A376280.P7306160433003473871

`A085908(A376278(n+1))`
-/

namespace A376280.P7306160433003473871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (A376278 (n + 1)).toNat

end

end A376280.P7306160433003473871

/-!
# A376281: Number of pairs (d, k/d), d | k, d < k/d, such that gcd(d, k/d) is not in {1, d, k/d}, where k is in A379336.

The programs for A376281, there is no canonical definition to state claims against.
-/

/-! ## A376281.P13785178542522295485

`A097868(A279228(n+2))`
-/

namespace A376281.P13785178542522295485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097868 (A279228 (n + 2)).toNat

end

end A376281.P13785178542522295485

/-!
# A376283: a(n) = (40)^n * cos(nB), where B is the angle opposite side CA in a triangle ABC having sidelengths |BC|=3, |CA|=4, |AB|=5; ABC is the smallest integer-sided right triangle.

The programs for A376283, there is no canonical definition to state claims against.
-/

/-! ## A376283.P15461648547484117562

`A001018(n)*A066771(n)`
-/

namespace A376283.P15461648547484117562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n * A066771 n

end

end A376283.P15461648547484117562

/-! ## A376283.P13234286325955402772

`record[A077957(n)]*A370191(2*n)`
-/

namespace A376283.P13234286325955402772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A370191 (2 * n)

end

end A376283.P13234286325955402772

/-! ## A376283.P10805678678057598791

`(A000051(n)-1)*A370191(2*n)`
-/

namespace A376283.P10805678678057598791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n - 1) * A370191 (2 * n)

end

end A376283.P10805678678057598791

/-! ## A376283.P7467156391733468724

`A066771(n)*A166444(3*n+2)`
-/

namespace A376283.P7467156391733468724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066771 n * A166444 (3 * n + 2)

end

end A376283.P7467156391733468724

/-! ## A376283.P12174646736002828943

`A000079(A008585(n))*A066771(n)`
-/

namespace A376283.P12174646736002828943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008585 n).toNat * A066771 n

end

end A376283.P12174646736002828943

/-!
# A376284: a(n) = least k such that (2n)^(2k)/(2 k)! < 1.

The programs for A376284, there is no canonical definition to state claims against.
-/

/-! ## A376284.P7062213520607957615

`A376956(2*n)`
-/

namespace A376284.P7062213520607957615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376956 (2 * n)

end

end A376284.P7062213520607957615

/-! ## A376284.P210027117268692288

`ceil(A065027(2*n)/2)`
-/

namespace A376284.P210027117268692288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065027 (2 * n) : ℚ) / 2⌉

end

end A376284.P210027117268692288

/-! ## A376284.P8711974721009567433

`A065033(A065027(2*n))`
-/

namespace A376284.P8711974721009567433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065027 (2 * n)).toNat

end

end A376284.P8711974721009567433

/-! ## A376284.P6993501773713041958

`A065033(A086824(2*n))`
-/

namespace A376284.P6993501773713041958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A086824 (2 * n)).toNat

end

end A376284.P6993501773713041958

/-! ## A376284.P7295334270982905998

`record[A376956(A348717(n+1))]`
-/

namespace A376284.P7295334270982905998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376956 (A348717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376284.P7295334270982905998

/-! ## A376284.P4131104984828029379

`record[A376956(n)/A000034(n)]`
-/

namespace A376284.P4131104984828029379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376956 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376284.P4131104984828029379

/-! ## A376284.P11153970575791691713

`record[A376956(n)/A033999(n)]`
-/

namespace A376284.P11153970575791691713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376956 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376284.P11153970575791691713

/-! ## A376284.P17369370459695193871

`A004526(A065027(2*n)+1)`
-/

namespace A376284.P17369370459695193871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065027 (2 * n) + 1).toNat

end

end A376284.P17369370459695193871

/-! ## A376284.P16339623238643202868

`A123108(A065027(2*n)+1)`
-/

namespace A376284.P16339623238643202868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A065027 (2 * n) + 1).toNat

end

end A376284.P16339623238643202868

/-!
# A376285: a(n) = 20^n * cos(n*A), where A is the angle opposite side BC in a triangle ABC having sidelengths |BC|=3, |CA|=4, |AB|=5; ABC is the smallest integer-sided right triangle.

The programs for A376285, the canonical program `A376285.P8434348471878484386` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376285 has offset 0).

The definition of A376285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376285.P8434348471878484386

`32*a(n-1)-400*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A376285

/-- `32*a(n-1)-400*a(n-2)` -/
def P8434348471878484386.Spec : Prop :=
  ∀ n, P8434348471878484386.a n = A376285 n

theorem P8434348471878484386.correct : P8434348471878484386.Spec := by
  intro n
  simp only [A376285]

end A376285

/-! ## A376285.P15135135940976225080

`A000302(n)*A139030(n)`
-/

namespace A376285.P15135135940976225080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A139030 n

end

end A376285.P15135135940976225080

namespace A376285

/-- `A000302(n)*A139030(n)` -/
def P15135135940976225080.Spec : Prop :=
  ∀ n, P15135135940976225080.a n = A376285 n

end A376285

/-! ## A376285.P2220560348377471620

`A000079(n)²*A139030(n)`
-/

namespace A376285.P2220560348377471620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A139030 n

end

end A376285.P2220560348377471620

namespace A376285

/-- `A000079(n)²*A139030(n)` -/
def P2220560348377471620.Spec : Prop :=
  ∀ n, P2220560348377471620.a n = A376285 n

end A376285

/-! ## A376285.P13421640740707015742

`A000079(2*n)*A139030(n)`
-/

namespace A376285.P13421640740707015742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A139030 n

end

end A376285.P13421640740707015742

namespace A376285

/-- `A000079(2*n)*A139030(n)` -/
def P13421640740707015742.Spec : Prop :=
  ∀ n, P13421640740707015742.a n = A376285 n

end A376285

/-! ## A376285.P16782883509001600791

`Δ[A078008(2*n)]*A139030(n)`
-/

namespace A376285.P16782883509001600791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A139030 n

end

end A376285.P16782883509001600791

namespace A376285

/-- `Δ[A078008(2*n)]*A139030(n)` -/
def P16782883509001600791.Spec : Prop :=
  ∀ n, P16782883509001600791.a n = A376285 n

end A376285

/-!
# A376286: n! less trailing zeros (A004154) (mod nextprime(n)).

The programs for A376286, there is no canonical definition to state claims against.
-/

/-! ## A376286.P4544263140119506476

`A004154(n)%A151800(n)`
-/

namespace A376286.P4544263140119506476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004154 n) (A151800 n)

end

end A376286.P4544263140119506476

/-! ## A376286.P7545400204460212037

`(n!/A011557(A027868(n)))%sqrt(A069549(n+1))`
-/

namespace A376286.P7545400204460212037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A011557 (A027868 n).toNat : ℚ))) (SequenceMachineLib.roundAway (Real.sqrt (A069549 (n + 1) : ℝ)))

end

end A376286.P7545400204460212037

/-! ## A376286.P11381231865243344076

`(A000142(n)/10^A027868(n))%sqrt(A069549(n+1))`
-/

namespace A376286.P11381231865243344076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (10 : ℚ) ^ (A027868 n : ℤ))) (SequenceMachineLib.roundAway (Real.sqrt (A069549 (n + 1) : ℝ)))

end

end A376286.P11381231865243344076

/-!
# A376287: Index of first occurrence of n in A129363, or 0 if no such number exists.

The programs for A376287, there is no canonical definition to state claims against.
-/

/-! ## A376287.P11774780107087968268

`A325185(A000116(n))`
-/

namespace A376287.P11774780107087968268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (A000116 n).toNat

end

end A376287.P11774780107087968268

/-! ## A376287.P11299476608509730323

`A325185(∑[∏[A017980(n)]])`
-/

namespace A376287.P11299476608509730323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376287.P11299476608509730323

/-!
# A376290: a(n) = Sum_{k=1..n-1} sigma_2(k) * sigma_3(n-k).

The programs for A376290, there is no canonical definition to state claims against.
-/

/-! ## A376290.P3579357955699072844

`A358558(A085622(n))`
-/

namespace A376290.P3579357955699072844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358558 (A085622 n).toNat

end

end A376290.P3579357955699072844

/-!
# A376291: Numbers k such that k^k is not a cube and can be expressed as (a^3 + b^3)/2 for positive integers a, b.

The programs for A376291, there is no canonical definition to state claims against.
-/

/-! ## A376291.P8920484637288308419

`∩[∪[3*n, n^3]+1, A268319(n+1)]`
-/

namespace A376291.P8920484637288308419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A376291.P8920484637288308419

/-!
# A376292: E.g.f. satisfies A(x) = 1 - (x*A(x))^3 * log(1 - x*A(x)).

The programs for A376292, there is no canonical definition to state claims against.
-/

/-! ## A376292.P6609691636404427876

`A164529(A291700(n))*A353229(n)`
-/

namespace A376292.P6609691636404427876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A291700 n).toNat * A353229 n

end

end A376292.P6609691636404427876

/-!
# A376295: The binary expansion of a(n) is the reversal of the concatenation of the binary expansions of 1,...,n.

The programs for A376295, there is no canonical definition to state claims against.
-/

/-! ## A376295.P17984946659745279071

`A030101(A047778(n+1))`
-/

namespace A376295.P17984946659745279071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047778 (n + 1)).toNat

end

end A376295.P17984946659745279071

/-! ## A376295.P12201628377216329461

`A030101(A179069(∑[n+2])/A227774(n+1))`
-/

namespace A376295.P12201628377216329461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A179069 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A227774 (n + 1) : ℚ))).toNat

end

end A376295.P12201628377216329461

/-!
# A376297: Smallest terms which are the concatenation of two unambiguous distinct integers > 0.

The programs for A376297, there is no canonical definition to state claims against.
-/

/-! ## A376297.P7649806582397794788

`lt[0, A055615(or(2, A213217(n)))]`
-/

namespace A376297.P7649806582397794788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (Int.lor 2 (A213217 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376297.P7649806582397794788

/-! ## A376297.P2432747936728314580

`lt[A320473(n+3), A108782(n)]`
-/

namespace A376297.P2432747936728314580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320473 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376297.P2432747936728314580

/-! ## A376297.P18325854332602653262

`lt[sqrt(A347470(n+1)), A108782(n)]`
-/

namespace A376297.P18325854332602653262
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A347470 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A376297.P18325854332602653262

/-! ## A376297.P6446393982497076604

`comp[A004186(n)]%A157428(n+1)`
-/

namespace A376297.P6446393982497076604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A157428 (n + 1))

end

end A376297.P6446393982497076604

/-! ## A376297.P7411882051763522494

`lt[A118759(A004185(n)), A004086(n)]`
-/

namespace A376297.P7411882051763522494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376297.P7411882051763522494

/-!
# A376298: Numbers which are the sum of at least three successive terms of a geometric progression.

The programs for A376298, there is no canonical definition to state claims against.
-/

/-! ## A376298.P12093839867596239057

`eq[1, A080061(A366873(n))]`
-/

namespace A376298.P12093839867596239057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080061 (A366873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376298.P12093839867596239057

/-! ## A376298.P15927173829455725311

`lt[A129706(A048724(n)), A000120(n)]`
-/

namespace A376298.P15927173829455725311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129706 (A048724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376298.P15927173829455725311

/-! ## A376298.P7426458289120827505

`lt[A375123(2*n), A373953(A304331(n+1))]`
-/

namespace A376298.P7426458289120827505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375123 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A304331 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376298.P7426458289120827505

