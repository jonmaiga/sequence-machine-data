import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A367302: Table read by antidiagonals: Place k equally spaced points on each side of a regular n-gon and join every pair of these n*k points by a chord; T(n,k) (n >= 3, k >= 0) gives the number of vertices in the resulting planar graph.

The programs for A367302, there is no canonical definition to state claims against.
-/

/-! ## A367302.P14318479932783000634

`A367305(n+3)+1-A367304(n+3)`
-/

namespace A367302.P14318479932783000634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367305 (n + 3) + 1 - A367304 (n + 3)

end

end A367302.P14318479932783000634

/-!
# A367304: Table read by antidiagonals: Place k equally spaced points on each side of a regular n-gon and join every pair of these n*k points by a chord; T(n,k) (n >= 3, k >= 0) gives the number of regions in the resulting planar graph.

The programs for A367304, there is no canonical definition to state claims against.
-/

/-! ## A367304.P4326234117959767916

`A367305(n+3)+1-A367302(n+3)`
-/

namespace A367304.P4326234117959767916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367305 (n + 3) + (1 - A367302 (n + 3))

end

end A367304.P4326234117959767916

/-! ## A367304.P10814813427268941226

`A001523(A061422(n+1)%A051533(n+1))`
-/

namespace A367304.P10814813427268941226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (Int.tmod (A061422 (n + 1)) (A051533 (n + 1))).toNat

end

end A367304.P10814813427268941226

/-!
# A367307: Reverse bits in blocks in binary expansion of n where blocks are separated by every second 1 bit starting from the most significant 1 bit as the first separator.

The programs for A367307, there is no canonical definition to state claims against.
-/

/-! ## A367307.P15587117750129924927

`A333777(A333777(A333692(A333776(n))))`
-/

namespace A367307.P15587117750129924927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A333777 (A333692 (A333776 n).toNat).toNat).toNat

end

end A367307.P15587117750129924927

/-! ## A367307.P7638112721622601198

`A145342(n+1)-A115576(A035104(n+1))`
-/

namespace A367307.P7638112721622601198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1) - A115576 (A035104 (n + 1)).toNat

end

end A367307.P7638112721622601198

/-!
# A367308: a(0) = 1; thereafter a(n) = n*Sum_{k=0..n-1} binomial(n,k) * a(k).

The programs for A367308, there is no canonical definition to state claims against.
-/

/-! ## A367308.P7543455176640584475

`A028310(n*A144681(n))`
-/

namespace A367308.P7543455176640584475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A144681 n).toNat

end

end A367308.P7543455176640584475

/-!
# A367314: a(0) = 1; for n > 0, a(n) = lcm(a(n-1), a(n-2)+1, a(n-3)+2, ..., a(0)+n-1).

The programs for A367314, there is no canonical definition to state claims against.
-/

/-! ## A367314.P7706424840350847294

`gcd(A084948(n+2), A168264(A353850(n)))`
-/

namespace A367314.P7706424840350847294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084948 (n + 2)) (A168264 (A353850 n).toNat)

end

end A367314.P7706424840350847294

/-! ## A367314.P6045347222062861343

`lcm(n, A306564(a(n-1)))` with `a(0)=1`
-/

namespace A367314.P6045347222062861343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n : ℤ) (A306564 (a (n - 1)))

end

end A367314.P6045347222062861343

/-!
# A367315: a(1) = 1, and for any n > 0, a(2*n) is the number of k's among 1..n such that a(k) <= a(n), a(2*n+1) is the number of k's among 1..n such that a(k) >= a(n).

The programs for A367315, there is no canonical definition to state claims against.
-/

/-! ## A367315.P1385554307218503252

`gcd(a(n-2)+1, A276163(n+1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A367315.P1385554307218503252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  Int.gcd (a (n - 2) + 1 : ℤ) (A276163 (n + 1))

end

end A367315.P1385554307218503252

/-! ## A367315.P9368176553236603240

`A215883(A007873(n+1))`
-/

namespace A367315.P9368176553236603240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 (A007873 (n + 1)).toNat

end

end A367315.P9368176553236603240

/-! ## A367315.P8276071912104781238

`A215883(A088172(n+1))`
-/

namespace A367315.P8276071912104781238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 (A088172 (n + 1)).toNat

end

end A367315.P8276071912104781238

/-!
# A367316: Number of interval-closed sets in the root poset of type A(n).

The programs for A367316, there is no canonical definition to state claims against.
-/

/-! ## A367316.P12182682179742261053

`A008621(A362210(n)+A104150(n+3))`
-/

namespace A367316.P12182682179742261053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A362210 n + A104150 (n + 3)).toNat

end

end A367316.P12182682179742261053

/-!
# A367317: Expansion of (1/x) * Series_Reversion( x * (1-x-x^4/(1-x)) ).

The programs for A367317, there is no canonical definition to state claims against.
-/

/-! ## A367317.P5677091194173414746

`A157135(n)-A086013(A365246(n))`
-/

namespace A367317.P5677091194173414746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n - A086013 (A365246 n).toNat

end

end A367317.P5677091194173414746

/-! ## A367317.P9094482264767217376

`A157135(n)-A363946(A056941(n+3))`
-/

namespace A367317.P9094482264767217376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n - A363946 (A056941 (n + 3)).toNat

end

end A367317.P9094482264767217376

/-! ## A367317.P17859666298544022174

`A157135(n)-A269243(A157108(2*n+1))`
-/

namespace A367317.P17859666298544022174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n - A269243 (A157108 (2 * n + 1)).toNat

end

end A367317.P17859666298544022174

/-! ## A367317.P3343936838089070256

`A157135(n)-A124761(A084938(3*n+2))`
-/

namespace A367317.P3343936838089070256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n - A124761 (A084938 (3 * n + 2)).toNat

end

end A367317.P3343936838089070256

/-! ## A367317.P6940218107656431329

`A157135(n)-A010051(A224685(2*n+3))`
-/

namespace A367317.P6940218107656431329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n - A010051 (A224685 (2 * n + 3)).toNat

end

end A367317.P6940218107656431329

/-!
# A367318: Lesser of twin primes p such that p and p+2 are both in A115591.

The programs for A367318, there is no canonical definition to state claims against.
-/

/-! ## A367318.P16779682430868570404

`A183010(A377561(n+1))`
-/

namespace A367318.P16779682430868570404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (A377561 (n + 1)).toNat

end

end A367318.P16779682430868570404

/-! ## A367318.P13961644163013522688

`∩[A115591(n+1)-2, A115591(n+1)]`
-/

namespace A367318.P13961644163013522688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367318.P13961644163013522688

/-! ## A367318.P4416119901098510759

`∩[A115591(n+1), A049820(A115591(n+1))]`
-/

namespace A367318.P4416119901098510759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A115591 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367318.P4416119901098510759

/-!
# A367319: Base-2 Fermat pseudoprimes k such that (k-1)/ord(2, k) > (m-1)/ord(2, m) for all base-2 Fermat pseudoprimes m < k, where ord(2, k) is the multiplicative order of 2 modulo k.

The programs for A367319, there is no canonical definition to state claims against.
-/

/-! ## A367319.P2622724706214923274

`A384438(A015892(n+1))`
-/

namespace A367319.P2622724706214923274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384438 (A015892 (n + 1)).toNat

end

end A367319.P2622724706214923274

/-!
# A367320: Carmichael numbers k such that (k-1)/lambda(k) > (m-1)/lambda(m) for all Carmichael numbers m < k, where lambda is the Carmichael lambda function (A002322).

The programs for A367320, there is no canonical definition to state claims against.
-/

/-! ## A367320.P7119043524356334090

`A002997(C(A007097(n), A051953(n+1)))`
-/

namespace A367320.P7119043524356334090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (Nat.choose (A007097 n).toNat (A051953 (n + 1)).toNat)

end

end A367320.P7119043524356334090

/-!
# A367322: Table read by antidiagonals: Place k equally spaced points on each side of a regular n-gon and join every pair of the n*(k+1) boundary points by a chord; T(n,k) (n >= 3, k >= 0) gives the number of vertices in the resulting planar graph.

The programs for A367322, there is no canonical definition to state claims against.
-/

/-! ## A367322.P17522638894399664580

`A367324(n+3)+1-A367323(n+3)`
-/

namespace A367322.P17522638894399664580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367324 (n + 3) + 1 - A367323 (n + 3)

end

end A367322.P17522638894399664580

/-!
# A367326: a(n) = Sum_{(n - k)|n} k^2.

The programs for A367326, the canonical program `A367326.P8719168921575390633` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367326 has offset 0).

The definition of A367326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367326.P8719168921575390633

`∑{d}[n, (n-#)²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367326

/-- `∑{d}[n, (n-#)²]` -/
def P8719168921575390633.Spec : Prop :=
  ∀ n, P8719168921575390633.a n = A367326 n

theorem P8719168921575390633.correct : P8719168921575390633.Spec := by
  intro n
  simp only [A367326]

end A367326

/-!
# A367328: The x-coordinate of the point where x + y = n, x and y are integers and x/y is as close as possible to e.

The programs for A367328, there is no canonical definition to state claims against.
-/

/-! ## A367328.P2096618255006960890

`1-A367329(n+1)+n`
-/

namespace A367328.P2096618255006960890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A367329 (n + 1) + (n : ℤ)

end

end A367328.P2096618255006960890

/-! ## A367328.P9623181645507409362

`A327440(A195168(n+1))`
-/

namespace A367328.P9623181645507409362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (A195168 (n + 1)).toNat

end

end A367328.P9623181645507409362

/-! ## A367328.P16006297290718745714

`n-A002837(A367329(n+1))`
-/

namespace A367328.P16006297290718745714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002837 (A367329 (n + 1)).toNat

end

end A367328.P16006297290718745714

/-! ## A367328.P4065909686439377656

`floor(log(Δ[A052130(n)]))`
-/

namespace A367328.P4065909686439377656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A367328.P4065909686439377656

/-! ## A367328.P376369889269699893

`A343609(A186291(3*n+4))%A130642(n+1)`
-/

namespace A367328.P376369889269699893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343609 (A186291 (3 * n + 4)).toNat) (A130642 (n + 1))

end

end A367328.P376369889269699893

/-!
# A367329: The y-coordinate of the point where x + y = n, x & y are integers and x/y is as close as possible to e.

The programs for A367329, there is no canonical definition to state claims against.
-/

/-! ## A367329.P5862369363775396153

`A008621(comp[A014209(n+4)])`
-/

namespace A367329.P5862369363775396153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A367329.P5862369363775396153

/-! ## A367329.P544610623762248230

`A002265(comp[A258046(n+5)²+n])+1`
-/

namespace A367329.P544610623762248230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 5) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A367329.P544610623762248230

/-! ## A367329.P13481676922528887775

`A003056(A025764(n)-A024155(n+1))`
-/

namespace A367329.P13481676922528887775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A025764 n - A024155 (n + 1)).toNat

end

end A367329.P13481676922528887775

/-! ## A367329.P17681314600217367943

`1-A367328(n+1)+n`
-/

namespace A367329.P17681314600217367943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A367328 (n + 1) + (n : ℤ)

end

end A367329.P17681314600217367943

/-! ## A367329.P15374802604663050568

`n-A023443(A367328(n+1))`
-/

namespace A367329.P15374802604663050568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A367328 (n + 1)).toNat

end

end A367329.P15374802604663050568

/-! ## A367329.P2803420449504002158

`floor(A356944(n+4)/4)`
-/

namespace A367329.P2803420449504002158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A356944 (n + 4) : ℚ) / 4⌋

end

end A367329.P2803420449504002158

/-!
# A367335: Long leg of the only primitive Pythagorean triple whose inradius is the n-th odd prime and whose short leg is an even number.

The programs for A367335, the canonical program `A367335.P5668082993696767224` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367335 has offset 1).

The definition of A367335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367335.P5668082993696767224

`(p?[2*n+1]+1)²-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367335

/-- `(p?[2*n+1]+1)²-1` -/
def P5668082993696767224.Spec : Prop :=
  ∀ n, P5668082993696767224.a n = A367335 (n + 1)

theorem P5668082993696767224.correct : P5668082993696767224.Spec := by
  intro n
  simp only [A367335, Nat.add_sub_cancel]

end A367335

/-! ## A367335.P2921928640250305066

`(p?[2*n+1]+2)*p?[2*n+1]`
-/

namespace A367335.P2921928640250305066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A367335.P2921928640250305066

namespace A367335

/-- `(p?[2*n+1]+2)*p?[2*n+1]` -/
def P2921928640250305066.Spec : Prop :=
  ∀ n, (P2921928640250305066.a n : ℤ) = A367335 (n + 1)

theorem P2921928640250305066.correct : P2921928640250305066.Spec := by
  intro n
  simp only [A367335, Nat.add_sub_cancel, A367335.P2921928640250305066.f1, A367335.P2921928640250305066.f2, A367335.P2921928640250305066.a, A367335.P5668082993696767224.f1, A367335.P5668082993696767224.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A367335

/-! ## A367335.P18441266235953093896

`A349660(n+1)+A210497(n+1)`
-/

namespace A367335.P18441266235953093896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + A210497 (n + 1)

end

end A367335.P18441266235953093896

namespace A367335

/-- `A349660(n+1)+A210497(n+1)` -/
def P18441266235953093896.Spec : Prop :=
  ∀ n, P18441266235953093896.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P7813681583424754267

`A364411(n+1)+A261465(n+1)`
-/

namespace A367335.P7813681583424754267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + A261465 (n + 1)

end

end A367335.P7813681583424754267

namespace A367335

/-- `A364411(n+1)+A261465(n+1)` -/
def P7813681583424754267.Spec : Prop :=
  ∀ n, P7813681583424754267.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P14203819933599788252

`A048974(n+1)*A065091(n+1)`
-/

namespace A367335.P14203819933599788252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) * A065091 (n + 1)

end

end A367335.P14203819933599788252

namespace A367335

/-- `A048974(n+1)*A065091(n+1)` -/
def P14203819933599788252.Spec : Prop :=
  ∀ n, P14203819933599788252.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P3193165451520051134

`A110833(n+2)-1`
-/

namespace A367335.P3193165451520051134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 2) - 1

end

end A367335.P3193165451520051134

namespace A367335

/-- `A110833(n+2)-1` -/
def P3193165451520051134.Spec : Prop :=
  ∀ n, P3193165451520051134.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P11672215396205363247

`Δ[A060939(n+1)]²-1`
-/

namespace A367335.P11672215396205363247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A367335.P11672215396205363247

namespace A367335

/-- `Δ[A060939(n+1)]²-1` -/
def P11672215396205363247.Spec : Prop :=
  ∀ n, P11672215396205363247.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P7476175727028986764

`A036690(n+2)+A000040(n+2)`
-/

namespace A367335.P7476175727028986764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 2) + A000040 (n + 2)

end

end A367335.P7476175727028986764

namespace A367335

/-- `A036690(n+2)+A000040(n+2)` -/
def P7476175727028986764.Spec : Prop :=
  ∀ n, P7476175727028986764.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P5006156355844144078

`A060800(n+2)+A006093(n+2)`
-/

namespace A367335.P5006156355844144078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 2) + A006093 (n + 2)

end

end A367335.P5006156355844144078

namespace A367335

/-- `A060800(n+2)+A006093(n+2)` -/
def P5006156355844144078.Spec : Prop :=
  ∀ n, P5006156355844144078.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P10110032379670474478

`A100484(n+2)+A001248(n+2)`
-/

namespace A367335.P10110032379670474478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + A001248 (n + 2)

end

end A367335.P10110032379670474478

namespace A367335

/-- `A100484(n+2)+A001248(n+2)` -/
def P10110032379670474478.Spec : Prop :=
  ∀ n, P10110032379670474478.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P3049409142125024836

`A000040(n+2)*A048974(n+1)`
-/

namespace A367335.P3049409142125024836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A048974 (n + 1)

end

end A367335.P3049409142125024836

namespace A367335

/-- `A000040(n+2)*A048974(n+1)` -/
def P3049409142125024836.Spec : Prop :=
  ∀ n, P3049409142125024836.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P4842125328239025966

`A052147(n+2)*A065091(n+1)`
-/

namespace A367335.P4842125328239025966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 2) * A065091 (n + 1)

end

end A367335.P4842125328239025966

namespace A367335

/-- `A052147(n+2)*A065091(n+1)` -/
def P4842125328239025966.Spec : Prop :=
  ∀ n, P4842125328239025966.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P14338126440431506836

`A000040(n+2)*A052147(n+2)`
-/

namespace A367335.P14338126440431506836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A052147 (n + 2)

end

end A367335.P14338126440431506836

namespace A367335

/-- `A000040(n+2)*A052147(n+2)` -/
def P14338126440431506836.Spec : Prop :=
  ∀ n, P14338126440431506836.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P18336425546252761444

`(A129726(n+2)-A005843(n))*A000040(n+2)`
-/

namespace A367335.P18336425546252761444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129726 (n + 2) - A005843 n) * A000040 (n + 2)

end

end A367335.P18336425546252761444

namespace A367335

/-- `(A129726(n+2)-A005843(n))*A000040(n+2)` -/
def P18336425546252761444.Spec : Prop :=
  ∀ n, P18336425546252761444.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P10420283792579084443

`A065091(n+1)+A065091(n+1)+A001248(n+2)`
-/

namespace A367335.P10420283792579084443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A065091 (n + 1) + A001248 (n + 2))

end

end A367335.P10420283792579084443

namespace A367335

/-- `A065091(n+1)+A065091(n+1)+A001248(n+2)` -/
def P10420283792579084443.Spec : Prop :=
  ∀ n, P10420283792579084443.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P12325462212956809613

`A000040(n+2)+A001248(n+2)+A000040(n+2)`
-/

namespace A367335.P12325462212956809613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A001248 (n + 2) + A000040 (n + 2))

end

end A367335.P12325462212956809613

namespace A367335

/-- `A000040(n+2)+A001248(n+2)+A000040(n+2)` -/
def P12325462212956809613.Spec : Prop :=
  ∀ n, P12325462212956809613.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P13669070425063348029

`A052147(n+2)*A116570(2*n+1)`
-/

namespace A367335.P13669070425063348029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 2) * A116570 (2 * n + 1)

end

end A367335.P13669070425063348029

namespace A367335

/-- `A052147(n+2)*A116570(2*n+1)` -/
def P13669070425063348029.Spec : Prop :=
  ∀ n, P13669070425063348029.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P8731062276019203828

`A079142(3*(n+1)+2)`
-/

namespace A367335.P8731062276019203828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 (3 * (n + 1) + 2)

end

end A367335.P8731062276019203828

namespace A367335

/-- `A079142(3*(n+1)+2)` -/
def P8731062276019203828.Spec : Prop :=
  ∀ n, P8731062276019203828.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P2801988129089366886

`A000466(A006254(n+1))`
-/

namespace A367335.P2801988129089366886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (A006254 (n + 1)).toNat

end

end A367335.P2801988129089366886

namespace A367335

/-- `A000466(A006254(n+1))` -/
def P2801988129089366886.Spec : Prop :=
  ∀ n, P2801988129089366886.a n = A367335 (n + 1)

end A367335

/-! ## A367335.P15595678243204121370

`A000466(A111333(n+2))`
-/

namespace A367335.P15595678243204121370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (A111333 (n + 2)).toNat

end

end A367335.P15595678243204121370

namespace A367335

/-- `A000466(A111333(n+2))` -/
def P15595678243204121370.Spec : Prop :=
  ∀ n, P15595678243204121370.a n = A367335 (n + 1)

end A367335

/-!
# A367336: Number of permutations p of [n] such that p(i), p(i+3), p(i+6),... form an up-down sequence for i in {1,2,3}.

The programs for A367336, there is no canonical definition to state claims against.
-/

/-! ## A367336.P4807965816612202188

`A022916(n)*A116598(A178999(n+2))`
-/

namespace A367336.P4807965816612202188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022916 n * A116598 (A178999 (n + 2)).toNat

end

end A367336.P4807965816612202188

/-! ## A367336.P364980726762562743

`A123258(A061255(n))`
-/

namespace A367336.P364980726762562743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A061255 n).toNat

end

end A367336.P364980726762562743

/-! ## A367336.P5955872426983792857

`A123258(A061257(n))`
-/

namespace A367336.P5955872426983792857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A061257 n).toNat

end

end A367336.P5955872426983792857

/-! ## A367336.P3990836816231549096

`A000010(n+1)*A204455(n!)`
-/

namespace A367336.P3990836816231549096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A204455 (Nat.factorial n)

end

end A367336.P3990836816231549096

/-!
# A367337: Analog of A121805, but starting with 5.

The programs for A367337, there is no canonical definition to state claims against.
-/

/-! ## A367337.P17713878720260786663

`A367338(a(n-1))` with `a(0)=5`
-/

namespace A367337.P17713878720260786663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A367337.P17713878720260786663

/-! ## A367337.P9823041215022827330

`eq[5, A367366(n+2)]+2`
-/

namespace A367337.P9823041215022827330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A367337.P9823041215022827330

/-!
# A367338: Comma-successor to n: second term of commas sequence if initial term is n, or -1 if there is no second term.

The programs for A367338, there is no canonical definition to state claims against.
-/

/-! ## A367338.P903560972160602540

`A367339(n+1)+A000005(A000079(n))`
-/

namespace A367338.P903560972160602540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (n + 1) + A000005 (A000079 n).toNat

end

end A367338.P903560972160602540

/-! ## A367338.P6408076204150691745

`A367339(n+1)+A001222(A020714(n))`
-/

namespace A367338.P6408076204150691745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (n + 1) + A001222 (A020714 n).toNat

end

end A367338.P6408076204150691745

/-! ## A367338.P7591951974186702685

`A367339(n+1)%A163901(3*n+2)+n+1`
-/

namespace A367338.P7591951974186702685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367339 (n + 1)) (A163901 (3 * n + 2)) + (n + 1 : ℤ)

end

end A367338.P7591951974186702685

/-! ## A367338.P11766122557935076251

`A367339(A077168(n))+A077168(n)`
-/

namespace A367338.P11766122557935076251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (A077168 n).toNat + A077168 n

end

end A367338.P11766122557935076251

/-! ## A367338.P2627635767423333669

`A367339(n+1)+A096111(A000225(n))`
-/

namespace A367338.P2627635767423333669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (n + 1) + A096111 (A000225 n).toNat

end

end A367338.P2627635767423333669

/-!
# A367339: a(n) = A367338(n) - n, or -1 if A367338(n) = -1.

The programs for A367339, there is no canonical definition to state claims against.
-/

/-! ## A367339.P822025540158624364

`A367338(n+1)-A000005(A000079(n))`
-/

namespace A367339.P822025540158624364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1) - A000005 (A000079 n).toNat

end

end A367339.P822025540158624364

/-! ## A367339.P1112724212754519811

`A367338(n+1)-A243347(A243347(n+1))`
-/

namespace A367339.P1112724212754519811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1) - A243347 (A243347 (n + 1)).toNat

end

end A367339.P1112724212754519811

/-! ## A367339.P7678472721446800825

`A367338(n+1)-A001222(A020714(n))`
-/

namespace A367339.P7678472721446800825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1) - A001222 (A020714 n).toNat

end

end A367339.P7678472721446800825

/-! ## A367339.P5287219630963735177

`A367338(n+1)-(A045778(A057468(n+5))+n)`
-/

namespace A367339.P5287219630963735177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1) - (A045778 (A057468 (n + 5)).toNat + (n : ℤ))

end

end A367339.P5287219630963735177

/-! ## A367339.P798637586279337275

`A367338(n+1)-A004526(2*n+2)^A032741(A057468(n+5))`
-/

namespace A367339.P798637586279337275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367338 (n + 1) : ℚ) - (A004526 (2 * n + 2) : ℚ) ^ (A032741 (A057468 (n + 5)).toNat : ℤ)

end

end A367339.P798637586279337275

/-!
# A367340: List of distinct (positive) numbers appearing in A367338.

The programs for A367340, there is no canonical definition to state claims against.
-/

/-! ## A367340.P4534448034105711368

`lt[A000007(n), A367614(n+1)]+1`
-/

namespace A367340.P4534448034105711368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367340.P4534448034105711368

/-! ## A367340.P12721635343874239170

`lt[A325897(n), A367614(n+1)]+1`
-/

namespace A367340.P12721635343874239170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367340.P12721635343874239170

/-! ## A367340.P9951308073334260040

`lt[A138363(n+1), A367614(n+1)]+1`
-/

namespace A367340.P9951308073334260040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367340.P9951308073334260040

/-! ## A367340.P5395455306071699487

`lt[A239704(n+1), A367614(n+1)]+1`
-/

namespace A367340.P5395455306071699487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367340.P5395455306071699487

/-! ## A367340.P13487908933455773704

`comp[A367366(n+1)%A053347(n)]`
-/

namespace A367340.P13487908933455773704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367366 (n + 1)) (A053347 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A367340.P13487908933455773704

/-! ## A367340.P13773408872329863477

`lt[A015142(n), A367614(n+1)]+1`
-/

namespace A367340.P13773408872329863477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367340.P13773408872329863477

/-!
# A367341: Numbers without comma-successors: these are the numbers k such that if the commas sequence A121805 is started at k instead of 1, there is no second term.

The programs for A367341, there is no canonical definition to state claims against.
-/

/-! ## A367341.P79265667542176034

`9*A367342(n+1)`
-/

namespace A367341.P79265667542176034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A367342 (n + 1)

end

end A367341.P79265667542176034

/-! ## A367341.P14374013136926085505

`A008591(A367342(n+1))`
-/

namespace A367341.P14374013136926085505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A367342 (n + 1)).toNat

end

end A367341.P14374013136926085505

/-! ## A367341.P5174728668490773303

`9*A340835(A134810(n+2))`
-/

namespace A367341.P5174728668490773303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A340835 (A134810 (n + 2)).toNat

end

end A367341.P5174728668490773303

/-! ## A367341.P8777769984875074526

`9*∑[gcd(A008965(2*(n+1)), A294739(n+2))]`
-/

namespace A367341.P8777769984875074526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008965 (2 * (n + 1))) (A294739 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367341.P8777769984875074526

/-! ## A367341.P14970807829630838098

`9*(∑[A239312(A333901(3*n+1))]+1)`
-/

namespace A367341.P14970807829630838098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 (A333901 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A367341.P14970807829630838098

/-!
# A367342: a(n) = n+1 for n = 1 to 8; a(n) = 100 + a(n-8) for n = 9 to 16; thereafter a(8*i+j) = 10^(i+1) + a(8*(i-1)+j) for i >= 2, 1 <= j <= 8.

The programs for A367342, there is no canonical definition to state claims against.
-/

/-! ## A367342.P17488557504246442687

`A367341(n+1)/9`
-/

namespace A367342.P17488557504246442687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367341 (n + 1) : ℚ) / 9

end

end A367342.P17488557504246442687

/-! ## A367342.P7091969078515213541

`A106610(A367341(n+1))`
-/

namespace A367342.P7091969078515213541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A367341 (n + 1)).toNat

end

end A367342.P7091969078515213541

/-! ## A367342.P8058162247522116268

`A328447(A137667(n+2))`
-/

namespace A367342.P8058162247522116268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A137667 (n + 2)).toNat

end

end A367342.P8058162247522116268

/-! ## A367342.P5344755093630030804

`A340835(A134810(n+2))`
-/

namespace A367342.P5344755093630030804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340835 (A134810 (n + 2)).toNat

end

end A367342.P5344755093630030804

/-! ## A367342.P4740426450095773998

`∑[gcd(A008965(2*(n+1)), A294739(n+2))]`
-/

namespace A367342.P4740426450095773998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008965 (2 * (n + 1))) (A294739 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367342.P4740426450095773998

/-!
# A367343: Compute the commas sequence starting at 1, as in A121805, except do the calculations in octal. The terms are written here in decimal (see also A367344).

The programs for A367343, there is no canonical definition to state claims against.
-/

/-! ## A367343.P14927472720400301292

`A028903(A367344(n+1))`
-/

namespace A367343.P14927472720400301292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A367344 (n + 1)).toNat

end

end A367343.P14927472720400301292

/-!
# A367344: Compute the commas sequence starting at 1, as in A121805, except do the calculations in octal. The terms are written here in octal (see also A367343).

The programs for A367344, there is no canonical definition to state claims against.
-/

/-! ## A367344.P5536186331915728232

`A007094(A367343(n+1))`
-/

namespace A367344.P5536186331915728232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A367343 (n + 1)).toNat

end

end A367344.P5536186331915728232

/-!
# A367345: Compute the commas sequence starting at 1, as in A121805, except do the calculations in hexadecimal. The terms are written here in decimal.

The programs for A367345, there is no canonical definition to state claims against.
-/

/-! ## A367345.P17137783448894949794

`A077070(A118337(3*n+1)+A070166(2*n+1))`
-/

namespace A367345.P17137783448894949794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A118337 (3 * n + 1) + A070166 (2 * n + 1)).toNat

end

end A367345.P17137783448894949794

/-!
# A367346: Numbers k such that there is more than one possible solution for A367338(k).

The programs for A367346, there is no canonical definition to state claims against.
-/

/-! ## A367346.P5377079399522239404

`eq[2, A367622(n+1)]+1`
-/

namespace A367346.P5377079399522239404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367346.P5377079399522239404

/-! ## A367346.P7937447621030420861

`A153152(eq[2, A367622(n+1)])`
-/

namespace A367346.P7937447621030420861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A367346.P7937447621030420861

/-! ## A367346.P17296639825809813483

`A367614(lt[A367614(n+1), A367616(n+1)])`
-/

namespace A367346.P17296639825809813483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367346.P17296639825809813483

/-!
# A367347: a(1) = 1; thereafter, a(n+1) = a(n) + x + 10*y, where x and y are respectively the first and last digits of a(n).

The programs for A367347, there is no canonical definition to state claims against.
-/

/-! ## A367347.P4522739231838036449

`A281662(A123011(n+1))`
-/

namespace A367347.P4522739231838036449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281662 (A123011 (n + 1)).toNat

end

end A367347.P4522739231838036449

/-!
# A367348: a(1) = 1, a(2) = 11; thereafter, a(n+1) = a(n) + x + 10*y, where x and y are respectively the first and last digits of a(n).

The programs for A367348, there is no canonical definition to state claims against.
-/

/-! ## A367348.P1224809605265694458

`A000267(a(n-1)²)` with `a(0)=1, a(1)=11`
-/

namespace A367348.P1224809605265694458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A000267 (a (n - 1) ^ 2).toNat

end

end A367348.P1224809605265694458

/-! ## A367348.P18371086446146745653

`A027434(a(n-1)²)` with `a(0)=1, a(1)=11`
-/

namespace A367348.P18371086446146745653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A027434 (a (n - 1) ^ 2).toNat

end

end A367348.P18371086446146745653

/-!
# A367349: List of numbers in the range 1 to 99 missing from A366487.

The programs for A367349, there is no canonical definition to state claims against.
-/

/-! ## A367349.P14017307528608020959

`A080193(n+1)-A010051(A144115(3*n+4))`
-/

namespace A367349.P14017307528608020959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) - A010051 (A144115 (3 * n + 4)).toNat

end

end A367349.P14017307528608020959

/-!
# A367350: Analog of A121805, but starting with 6.

The programs for A367350, there is no canonical definition to state claims against.
-/

/-! ## A367350.P11996269084666571588

`A367338(a(n-1))` with `a(0)=6`
-/

namespace A367350.P11996269084666571588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A367350.P11996269084666571588

/-!
# A367352: Analog of A121805, but starting with 8.

The programs for A367352, there is no canonical definition to state claims against.
-/

/-! ## A367352.P6146671305139186165

`A367338(a(n-1))` with `a(0)=8`
-/

namespace A367352.P6146671305139186165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A367352.P6146671305139186165

/-!
# A367353: Analog of A121805, but starting with 9.

The programs for A367353, there is no canonical definition to state claims against.
-/

/-! ## A367353.P16404926095318564807

`A367338(a(n-1))` with `a(0)=9`
-/

namespace A367353.P16404926095318564807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A367353.P16404926095318564807

/-! ## A367353.P17639330820182645263

`eq[9, A367366(n+2)]+2`
-/

namespace A367353.P17639330820182645263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A367353.P17639330820182645263

/-!
# A367354: Analog of A121805, but starting with 10.

The programs for A367354, there is no canonical definition to state claims against.
-/

/-! ## A367354.P560184533706037061

`A367338(a(n-1))` with `a(0)=10`
-/

namespace A367354.P560184533706037061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A367354.P560184533706037061

/-!
# A367355: Comma sequence, analogous to A121805, starting at 1, but the calculations are done in base 3.

The programs for A367355, there is no canonical definition to state claims against.
-/

/-! ## A367355.P15340456199758560183

`A367606(abs(a(n-1)))` with `a(0)=1`
-/

namespace A367355.P15340456199758560183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367606 |a (n - 1)|.toNat

end

end A367355.P15340456199758560183

/-! ## A367355.P1352195024494883929

`eq[A057077(n), A377051(A324188(n+2))]`
-/

namespace A367355.P1352195024494883929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377051 (A324188 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367355.P1352195024494883929

/-! ## A367355.P14801539728227136652

`eq[A131707(n), A277892(A284012(2*(n+2)))]`
-/

namespace A367355.P14801539728227136652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A284012 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367355.P14801539728227136652

/-! ## A367355.P11154107810102404183

`eq[A255051(n+4), A270701(A356230(2*n+3))]`
-/

namespace A367355.P11154107810102404183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A356230 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367355.P11154107810102404183

/-!
# A367357: First differences of A134647.

The programs for A367357, there is no canonical definition to state claims against.
-/

/-! ## A367357.P3013977905583653087

`Δ[A134647(n+1)]`
-/

namespace A367357.P3013977905583653087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367357.P3013977905583653087

/-! ## A367357.P3658776058834489436

`A134647(n+2)-A134647(n+1)`
-/

namespace A367357.P3658776058834489436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134647 (n + 2) - A134647 (n + 1)

end

end A367357.P3658776058834489436

/-!
# A367359: Value of A121805(k) for k = A367358(n).

The programs for A367359, there is no canonical definition to state claims against.
-/

/-! ## A367359.P1495692190200796275

`A121805(A367358(n+1))`
-/

namespace A367359.P1495692190200796275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121805 (A367358 (n + 1)).toNat

end

end A367359.P1495692190200796275

/-! ## A367359.P6764388838374196042

`A121805(lt[A190172(3*n), A060142(3*n)])`
-/

namespace A367359.P6764388838374196042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190172 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367359.P6764388838374196042

/-! ## A367359.P4476941388036853400

`A121805(lt[A046934(n), A117004(n+1)])`
-/

namespace A367359.P4476941388036853400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367359.P4476941388036853400

/-! ## A367359.P6665971622983246046

`A121805(lt[A324756(n), A035513(n+1)])`
-/

namespace A367359.P6665971622983246046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367359.P6665971622983246046

/-!
# A367360: Comma transform of squares.

The programs for A367360, the canonical program `A367360.P3912048120050815529` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367360 has offset 0).

The definition of A367360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002993, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367360.P3912048120050815529

`10*A008959(n)+A002993(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367360

/-- `10*A008959(n)+A002993(n+1)` -/
def P3912048120050815529.Spec : Prop :=
  ∀ n, P3912048120050815529.a n = A367360 n

theorem P3912048120050815529.correct : P3912048120050815529.Spec := by
  intro n
  simp only [A367360]

end A367360

/-! ## A367360.P9371245228369594570

`A367362(A246972(n))`
-/

namespace A367360.P9371245228369594570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A246972 n).toNat

end

end A367360.P9371245228369594570

namespace A367360

/-- `A367362(A246972(n))` -/
def P9371245228369594570.Spec : Prop :=
  ∀ n, P9371245228369594570.a n = A367360 n

end A367360

/-!
# A367361: Comma transform of powers of 2.

The programs for A367361, the canonical program `A367361.P13432602641584135222` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367361 has offset 0).

The definition of A367361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008952, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367361.P13432602641584135222

`10*A000689(n)+A008952(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367361

/-- `10*A000689(n)+A008952(n+1)` -/
def P13432602641584135222.Spec : Prop :=
  ∀ n, P13432602641584135222.a n = A367361 n

theorem P13432602641584135222.correct : P13432602641584135222.Spec := by
  intro n
  simp only [A367361]

end A367361

/-! ## A367361.P13220767900532635662

`A367362(∑[2*a(n-1)])` with `a(0)=21, a(1)=21, a(2)=42`
-/

namespace A367361.P13220767900532635662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 21, 42] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367361.P13220767900532635662

namespace A367361

/-- `A367362(∑[2*a(n-1)])` -/
def P13220767900532635662.Spec : Prop :=
  ∀ n, P13220767900532635662.a n = A367361 n

end A367361

/-! ## A367361.P12269347955185626258

`A367362(A175805(n))`
-/

namespace A367361.P12269347955185626258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A175805 n).toNat

end

end A367361.P12269347955185626258

namespace A367361

/-- `A367362(A175805(n))` -/
def P12269347955185626258.Spec : Prop :=
  ∀ n, P12269347955185626258.a n = A367361 n

end A367361

/-! ## A367361.P971757003068129868

`A367362(A020714(n)+A000079(n+4))`
-/

namespace A367361.P971757003068129868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A020714 n + A000079 (n + 4)).toNat

end

end A367361.P971757003068129868

namespace A367361

/-- `A367362(A020714(n)+A000079(n+4))` -/
def P971757003068129868.Spec : Prop :=
  ∀ n, P971757003068129868.a n = A367361 n

end A367361

/-!
# A367362: Comma transform of the nonnegative integers.

The programs for A367362, the canonical program `A367362.P4347257855293322710` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367362 has offset 0).

The definition of A367362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367362.P4347257855293322710

`10*A010879(n)+A000030(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367362

/-- `10*A010879(n)+A000030(n+1)` -/
def P4347257855293322710.Spec : Prop :=
  ∀ n, P4347257855293322710.a n = A367362 n

theorem P4347257855293322710.correct : P4347257855293322710.Spec := by
  intro n
  simp only [A367362]

end A367362

/-! ## A367362.P4049913960857121379

`A290148(A073729(n+1))`
-/

namespace A367362.P4049913960857121379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290148 (A073729 (n + 1)).toNat

end

end A367362.P4049913960857121379

namespace A367362

/-- `A290148(A073729(n+1))` -/
def P4049913960857121379.Spec : Prop :=
  ∀ n, P4049913960857121379.a n = A367362 n

end A367362

/-! ## A367362.P4527887936857812086

`eq[0, A008587(A110727(n))]`
-/

namespace A367362.P4527887936857812086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A110727 (n + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367362.P4527887936857812086

namespace A367362

/-- `eq[0, A008587(A110727(n))]` -/
def P4527887936857812086.Spec : Prop :=
  ∀ n, (P4527887936857812086.a n : ℤ) = A367362 n

end A367362

/-! ## A367362.P8575032352127369891

`eq[A083928(n), A110726(n)]`
-/

namespace A367362.P8575032352127369891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110726 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367362.P8575032352127369891

namespace A367362

/-- `eq[A083928(n), A110726(n)]` -/
def P8575032352127369891.Spec : Prop :=
  ∀ n, (P8575032352127369891.a n : ℤ) = A367362 n

end A367362

/-! ## A367362.P4482963813158940630

`eq[A083928(n), A110727(n)]`
-/

namespace A367362.P4482963813158940630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110727 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367362.P4482963813158940630

namespace A367362

/-- `eq[A083928(n), A110727(n)]` -/
def P4482963813158940630.Spec : Prop :=
  ∀ n, (P4482963813158940630.a n : ℤ) = A367362 n

end A367362

/-!
# A367365: Indices of record high-points in A330128.

The programs for A367365, there is no canonical definition to state claims against.
-/

/-! ## A367365.P2746233244179636072

`A367603(A078840(n))`
-/

namespace A367365.P2746233244179636072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367603 (A078840 n).toNat

end

end A367365.P2746233244179636072

/-!
# A367367: Largest k such that k*(n-1)^k >= n^k-1.

The programs for A367367, there is no canonical definition to state claims against.
-/

/-! ## A367367.P3912013725165706868

`∑[A054725(A141214(3*n+1)%A194248(3*(n+1))+1)]`
-/

namespace A367367.P3912013725165706868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (Int.tmod (A141214 (3 * n + 1)) (A194248 (3 * (n + 1))) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367367.P3912013725165706868

/-! ## A367367.P13591969466711425500

`A133872(A368220(n+1))+A076522(n+1)`
-/

namespace A367367.P13591969466711425500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A368220 (n + 1)).toNat + A076522 (n + 1)

end

end A367367.P13591969466711425500

/-! ## A367367.P15340787711367372928

`A060831(2*n)+A001221(A032259(n+1))`
-/

namespace A367367.P15340787711367372928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n) + A001221 (A032259 (n + 1)).toNat

end

end A367367.P15340787711367372928

/-! ## A367367.P9143394132425430946

`A360010((2-(n+1)²)²)`
-/

namespace A367367.P9143394132425430946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 ((2 - ((n + 1) ^ 2 : ℤ)) ^ 2).toNat

end

end A367367.P9143394132425430946

/-! ## A367367.P16313438873015559469

`∑[A328114(∑[A046879(n+3)])]`
-/

namespace A367367.P16313438873015559469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046879 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367367.P16313438873015559469

/-!
# A367368: a(n) = Sum_{(n - k) does not divide n, 0 <= k <= n} k.

The programs for A367368, there is no canonical definition to state claims against.
-/

/-! ## A367368.P16924250336018666860

`∑{d}[n, #-n]+∑[n]`
-/

namespace A367368.P16924250336018666860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (n : ℤ)) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A367368.P16924250336018666860

/-! ## A367368.P11490614281674608410

`∑[n]-∑{d}[n, n-#]`
-/

namespace A367368.P11490614281674608410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ((n : ℤ) - (d : ℤ))

end

end A367368.P11490614281674608410

/-! ## A367368.P6831242855300436242

`A000217(n)-A094471(A028310(n))`
-/

namespace A367368.P6831242855300436242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A094471 (A028310 n).toNat

end

end A367368.P6831242855300436242

/-!
# A367369: a(n) = A340556(2*n, n), the central terms of the second order Eulerian numbers.

The programs for A367369, there is no canonical definition to state claims against.
-/

/-! ## A367369.P1557788013169851100

`A112007(2*n²)`
-/

namespace A367369.P1557788013169851100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (2 * n ^ 2)

end

end A367369.P1557788013169851100

/-! ## A367369.P17431861466330571749

`A340556(∑[4*n])`
-/

namespace A367369.P17431861466330571749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367369.P17431861466330571749

/-! ## A367369.P11157156441815154420

`A163936((n+1)²+n²)`
-/

namespace A367369.P11157156441815154420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 ((n + 1) ^ 2 + n ^ 2)

end

end A367369.P11157156441815154420

/-! ## A367369.P2786607716215412330

`A008517(C(comp[2*(n+1)]+2, 2)-n)`
-/

namespace A367369.P2786607716215412330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) 2 - n)

end

end A367369.P2786607716215412330

/-! ## A367369.P15325028541191790434

`A201637(A132209(n))`
-/

namespace A367369.P15325028541191790434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A132209 n).toNat

end

end A367369.P15325028541191790434

/-!
# A367371: Expansion of the e.g.f. (exp(x) / (3 - 2*exp(x)))^(2/3).

The programs for A367371, there is no canonical definition to state claims against.
-/

/-! ## A367371.P6486180758115277103

`A005250(A149868(n))`
-/

namespace A367371.P6486180758115277103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A149868 n).toNat

end

end A367371.P6486180758115277103

/-!
# A367372: Expansion of the e.g.f. (exp(x) / (4 - 3*exp(x)))^(1/2).

The programs for A367372, there is no canonical definition to state claims against.
-/

/-! ## A367372.P12774518712068754689

`A008620((n+1)^(n+1))`
-/

namespace A367372.P12774518712068754689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n + 1) ^ (n + 1))

end

end A367372.P12774518712068754689

/-!
# A367373: Expansion of the e.g.f. (exp(x) / (4 - 3*exp(x)))^(3/4).

The programs for A367373, there is no canonical definition to state claims against.
-/

/-! ## A367373.P15760181412923243946

`A006368(A365575(n))`
-/

namespace A367373.P15760181412923243946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A365575 n).toNat

end

end A367373.P15760181412923243946

/-!
# A367374: Expansion of the e.g.f. (exp(x) / (5 - 4*exp(x)))^(2/5).

The programs for A367374, there is no canonical definition to state claims against.
-/

/-! ## A367374.P4479269765871506423

`A325326(A306504(n))`
-/

namespace A367374.P4479269765871506423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325326 (A306504 n).toNat

end

end A367374.P4479269765871506423

/-!
# A367375: Expansion of the e.g.f. (exp(x) / (5 - 4*exp(x)))^(3/5).

The programs for A367375, there is no canonical definition to state claims against.
-/

/-! ## A367375.P14207443049373250115

`A061121(n+1)+A008619(A088695(n+1))`
-/

namespace A367375.P14207443049373250115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061121 (n + 1) + A008619 (A088695 (n + 1)).toNat

end

end A367375.P14207443049373250115

/-!
# A367376: Expansion of the e.g.f. (exp(x) / (5 - 4*exp(x)))^(4/5).

The programs for A367376, there is no canonical definition to state claims against.
-/

/-! ## A367376.P9886432472612958070

`A023717(∏[∑[A096862(n+3)]])`
-/

namespace A367376.P9886432472612958070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367376.P9886432472612958070

/-!
# A367379: a(n) = Sum_{j=1..n} Sum_{i=1..n} (j mod i).

The programs for A367379, the canonical program `A367379.P13796554037346860458` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367379 has offset 1).

The definition of A367379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367379.P13796554037346860458

`A072481(n+1)+A000292(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367379

/-- `A072481(n+1)+A000292(n)` -/
def P13796554037346860458.Spec : Prop :=
  ∀ n, P13796554037346860458.a n = A367379 (n + 1)

theorem P13796554037346860458.correct : P13796554037346860458.Spec := by
  intro n
  simp only [A367379, Nat.add_sub_cancel]

end A367379

/-! ## A367379.P4292240804598773374

`A002411(n+1)-A175254(n+1)`
-/

namespace A367379.P4292240804598773374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) - A175254 (n + 1)

end

end A367379.P4292240804598773374

namespace A367379

/-- `A002411(n+1)-A175254(n+1)` -/
def P4292240804598773374.Spec : Prop :=
  ∀ n, P4292240804598773374.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P4854050661224489568

`∑[∑[3*n+1-∑{d}[n+1, #]]]`
-/

namespace A367379.P4854050661224489568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P4854050661224489568

namespace A367379

/-- `∑[∑[3*n+1-∑{d}[n+1, #]]]` -/
def P4854050661224489568.Spec : Prop :=
  ∀ n, P4854050661224489568.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P3265932017363988023

`∑[A049766(n+1)]`
-/

namespace A367379.P3265932017363988023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P3265932017363988023

namespace A367379

/-- `∑[A049766(n+1)]` -/
def P3265932017363988023.Spec : Prop :=
  ∀ n, P3265932017363988023.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P2148324806014941689

`∑[∑[A353190(n+1)-1]]`
-/

namespace A367379.P2148324806014941689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P2148324806014941689

namespace A367379

/-- `∑[∑[A353190(n+1)-1]]` -/
def P2148324806014941689.Spec : Prop :=
  ∀ n, P2148324806014941689.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P5524740136025612435

`∑[∑[A033885(n+1)-2]]`
-/

namespace A367379.P5524740136025612435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P5524740136025612435

namespace A367379

/-- `∑[∑[A033885(n+1)-2]]` -/
def P5524740136025612435.Spec : Prop :=
  ∀ n, P5524740136025612435.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P9234811269036234090

`∑[n²-A244049(n+1)]`
-/

namespace A367379.P9234811269036234090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A244049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P9234811269036234090

namespace A367379

/-- `∑[n²-A244049(n+1)]` -/
def P9234811269036234090.Spec : Prop :=
  ∀ n, P9234811269036234090.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P8483416748542872095

`∑[A004125(n+1)+∑[n]]`
-/

namespace A367379.P8483416748542872095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P8483416748542872095

namespace A367379

/-- `∑[A004125(n+1)+∑[n]]` -/
def P8483416748542872095.Spec : Prop :=
  ∀ n, P8483416748542872095.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P4558785616228398073

`∑[∑[A235796(n+1)+n]]`
-/

namespace A367379.P4558785616228398073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P4558785616228398073

namespace A367379

/-- `∑[∑[A235796(n+1)+n]]` -/
def P4558785616228398073.Spec : Prop :=
  ∀ n, P4558785616228398073.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P15781393178021906573

`∑[∑[n-A237588(n+1)]]`
-/

namespace A367379.P15781393178021906573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A237588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P15781393178021906573

namespace A367379

/-- `∑[∑[n-A237588(n+1)]]` -/
def P15781393178021906573.Spec : Prop :=
  ∀ n, P15781393178021906573.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P9372520134792911258

`∑[A354801(n+1)-(n+1)]`
-/

namespace A367379.P9372520134792911258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354801 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P9372520134792911258

namespace A367379

/-- `∑[A354801(n+1)-(n+1)]` -/
def P9372520134792911258.Spec : Prop :=
  ∀ n, P9372520134792911258.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P13883980013691573422

`2*A000292(n)-A123329(n)`
-/

namespace A367379.P13883980013691573422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - A123329 n

end

end A367379.P13883980013691573422

namespace A367379

/-- `2*A000292(n)-A123329(n)` -/
def P13883980013691573422.Spec : Prop :=
  ∀ n, P13883980013691573422.a n = A367379 (n + 1)

end A367379

/-! ## A367379.P12984410431783567237

`∑[∑[A016777(n)-A000203(n+1)]]`
-/

namespace A367379.P12984410431783567237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367379.P12984410431783567237

namespace A367379

/-- `∑[∑[A016777(n)-A000203(n+1)]]` -/
def P12984410431783567237.Spec : Prop :=
  ∀ n, P12984410431783567237.a n = A367379 (n + 1)

end A367379

/-!
# A367380: E.g.f. S(x,y) = Integral C(x,y)*C(y,x) dx such that C(x,y)^2 + S(x,y)^2 = 1 and C(y,x) = 1 - Integral S(y,x)*C(x,y) dy, as a triangle of coefficients T(n,k) read by rows.

The programs for A367380, there is no canonical definition to state claims against.
-/

/-! ## A367380.P16511976538575469056

`A033999(A003056(n))*A322220(n)`
-/

namespace A367380.P16511976538575469056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A322220 n

end

end A367380.P16511976538575469056

/-! ## A367380.P17033028588719785293

`A008683(A235981(n+1))*A322220(n)`
-/

namespace A367380.P17033028588719785293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A235981 (n + 1)).toNat * A322220 n

end

end A367380.P17033028588719785293

/-!
# A367381: E.g.f. C(x,y) = 1 - Integral S(x,y)*C(y,x) dx such that C(x,y)^2 + S(x,y)^2 = 1 and S(y,x) = Integral C(y,x)*C(x,y) dy, as a triangle of coefficients T(n,k) read by rows.

The programs for A367381, there is no canonical definition to state claims against.
-/

/-! ## A367381.P6655544878479649269

`A322221(n)*A367380(n)%2`
-/

namespace A367381.P6655544878479649269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322221 n * Int.tmod (A367380 n) 2

end

end A367381.P6655544878479649269

/-! ## A367381.P2263971472122726823

`A033999(A163336(n))*A322221(n)`
-/

namespace A367381.P2263971472122726823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A163336 n).toNat * A322221 n

end

end A367381.P2263971472122726823

/-! ## A367381.P8853818016474513383

`A322220(n)*A322221(n)/A367380(n)`
-/

namespace A367381.P8853818016474513383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322220 n * A322221 n : ℚ) / (A367380 n : ℚ)

end

end A367381.P8853818016474513383

/-!
# A367383: Expansion of g.f. A(x) satisfying A(x - A(x)) = Sum_{n>=1} x^prime(n).

The programs for A367383, there is no canonical definition to state claims against.
-/

/-! ## A367383.P6584290262697525603

`A296343(∑[A153399(n)])`
-/

namespace A367383.P6584290262697525603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367383.P6584290262697525603

/-!
# A367384: Expansion of g.f. A(x) satisfying A( sqrt(A(x)^2 - 8*A(x)^3) ) = x.

The programs for A367384, there is no canonical definition to state claims against.
-/

/-! ## A367384.P5907661112892446571

`A287774(A346649(n))-n`
-/

namespace A367384.P5907661112892446571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287774 (A346649 n).toNat - (n : ℤ)

end

end A367384.P5907661112892446571

/-!
# A367385: Expansion of e.g.f. A(x) satisfying A(x/A(x)) = exp(x*A(x)).

The programs for A367385, there is no canonical definition to state claims against.
-/

/-! ## A367385.P3278204505214919917

`A167637(A376334(n+1))`
-/

namespace A367385.P3278204505214919917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167637 (A376334 (n + 1)).toNat

end

end A367385.P3278204505214919917

/-!
# A367386: Expansion of g.f. A(x) satisfying A(x)^2 = (1+x) * A(x*A(x)) with A(0) = 0.

The programs for A367386, there is no canonical definition to state claims against.
-/

/-! ## A367386.P10454841930447503070

`ceil(A322257(n)/A004171(n))`
-/

namespace A367386.P10454841930447503070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322257 n : ℚ) / (A004171 n : ℚ)⌉

end

end A367386.P10454841930447503070

/-! ## A367386.P9050728887645933369

`A054404(A110334(n+1)+1)`
-/

namespace A367386.P9050728887645933369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A110334 (n + 1) + 1).toNat

end

end A367386.P9050728887645933369

/-! ## A367386.P6457908766893378152

`ceil(A322257(n)/A000225(2*n+1))`
-/

namespace A367386.P6457908766893378152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322257 n : ℚ) / (A000225 (2 * n + 1) : ℚ)⌉

end

end A367386.P6457908766893378152

/-! ## A367386.P2339887190760026279

`A336488(A192804(n))`
-/

namespace A367386.P2339887190760026279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (A192804 n).toNat

end

end A367386.P2339887190760026279

/-! ## A367386.P5517503379900493106

`A257639(A307228(n))`
-/

namespace A367386.P5517503379900493106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A307228 n).toNat

end

end A367386.P5517503379900493106

/-!
# A367388: Expansion of g.f. A(x) satisfying 1/x = Sum_{n=-oo..+oo} x^n * A(x)^n * (A(x)^n + x^n)^(n+1).

The programs for A367388, there is no canonical definition to state claims against.
-/

/-! ## A367388.P8205033953446429061

`A117331(A042771(n))`
-/

namespace A367388.P8205033953446429061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117331 (A042771 n).toNat

end

end A367388.P8205033953446429061

/-!
# A367389: Expansion of g.f. A(x) = B(x^2)/(1 - 2*x*B(x^2)) where B(x) = 1 + 2*x*B(x)^3 is the g.f. of A153231.

The programs for A367389, there is no canonical definition to state claims against.
-/

/-! ## A367389.P9729858991520828110

`A267300(A052956(n))`
-/

namespace A367389.P9729858991520828110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267300 (A052956 n).toNat

end

end A367389.P9729858991520828110

/-! ## A367389.P11992067160522145047

`A359755(A058696(n))`
-/

namespace A367389.P11992067160522145047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359755 (A058696 n).toNat

end

end A367389.P11992067160522145047

/-!
# A367390: Expansion of e.g.f. A(x) satisfying A(x)^2 = exp(x) * A(x*A(x)) with A(0) = 0.

The programs for A367390, there is no canonical definition to state claims against.
-/

/-! ## A367390.P16073065838220902729

`(n+1)*A224418(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A367390.P16073065838220902729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) * A224418 (a (n - 1)).toNat

end

end A367390.P16073065838220902729

/-!
# A367391: Expansion of e.g.f. A(x) satisfying A(x)^2 = exp(x) * A(x*A(x)) with A(0) = 1.

The programs for A367391, there is no canonical definition to state claims against.
-/

/-! ## A367391.P16324605657946460789

`A045917(∏[xor(1, -2*n)]²)+1`
-/

namespace A367391.P16324605657946460789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat + 1

end

end A367391.P16324605657946460789

/-!
# A367392: a(n) = Sum_{k=0..n} (-1)^k * binomial(n, k) * (n - k)^(2*n + 1).

The programs for A367392, there is no canonical definition to state claims against.
-/

/-! ## A367392.P16102009870527256209

`n*A243227(n)`
-/

namespace A367392.P16102009870527256209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A243227 n

end

end A367392.P16102009870527256209

/-! ## A367392.P17109721242533138259

`A344397(Δ[n²])`
-/

namespace A367392.P17109721242533138259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344397 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A367392.P17109721242533138259

/-! ## A367392.P11493019264255219205

`lcm(n, A344397(2*n+1))`
-/

namespace A367392.P11493019264255219205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A344397 (2 * n + 1))

end

end A367392.P11493019264255219205

/-! ## A367392.P13290208419858730673

`A131689(A056220(n+1))`
-/

namespace A367392.P13290208419858730673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A056220 (n + 1)).toNat

end

end A367392.P13290208419858730673

/-! ## A367392.P11590293310233424367

`n*A028246(A106232(n+1))`
-/

namespace A367392.P11590293310233424367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028246 (A106232 (n + 1)).toNat

end

end A367392.P11590293310233424367

/-!
# A367393: a(n) = A103136(2*n, n), the central terms of the inverse of the Delannoy triangle.

The programs for A367393, there is no canonical definition to state claims against.
-/

/-! ## A367393.P10652602206614573490

`A103136(∑[4*n])`
-/

namespace A367393.P10652602206614573490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103136 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367393.P10652602206614573490

/-! ## A367393.P10715134337514009535

`A112477(2*(n+1)²)`
-/

namespace A367393.P10715134337514009535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112477 (2 * (n + 1) ^ 2)

end

end A367393.P10715134337514009535

/-!
# A367394: Number of integer partitions of n whose length is a semi-sum of the parts.

The programs for A367394, there is no canonical definition to state claims against.
-/

/-! ## A367394.P15201816685494825989

`A000041(n)-A367398(n)`
-/

namespace A367394.P15201816685494825989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367398 n

end

end A367394.P15201816685494825989

/-! ## A367394.P5278615541722706625

`A213598(n)-A367398(n)`
-/

namespace A367394.P5278615541722706625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367398 n

end

end A367394.P5278615541722706625

/-! ## A367394.P13215454039362088120

`∑[A002865(n)]-A367398(n)`
-/

namespace A367394.P13215454039362088120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367398 n

end

end A367394.P13215454039362088120

/-! ## A367394.P12800433206557670886

`A238343(∑[n])-A367398(n)`
-/

namespace A367394.P12800433206557670886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A367398 n

end

end A367394.P12800433206557670886

/-!
# A367395: Number of strict integer partitions of n whose length is the sum of two distinct parts.

The programs for A367395, there is no canonical definition to state claims against.
-/

/-! ## A367395.P17708886942661770847

`A000009(n)-A367399(n)`
-/

namespace A367395.P17708886942661770847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367399 n

end

end A367395.P17708886942661770847

/-! ## A367395.P8709717166808679789

`A000009(n)%A367399(A028310(n))`
-/

namespace A367395.P8709717166808679789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A367399 (A028310 n).toNat)

end

end A367395.P8709717166808679789

/-! ## A367395.P2195699004513444717

`A367220(n)+A367221(n)-A367399(n)`
-/

namespace A367395.P2195699004513444717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367220 n + (A367221 n - A367399 n)

end

end A367395.P2195699004513444717

/-!
# A367396: Number of subsets of {1..n} whose cardinality is the sum of two distinct elements.

The programs for A367396, the canonical program `A367396.P3258263714388146902` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367396 has offset 0).

The definition of A367396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367396.P3258263714388146902

`2^n-A367400(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367396

/-- `2^n-A367400(n)` -/
def P3258263714388146902.Spec : Prop :=
  ∀ n, P3258263714388146902.a n = A367396 n

theorem P3258263714388146902.correct : P3258263714388146902.Spec := by
  intro n
  simp only [A367396]

end A367396

/-! ## A367396.P4911186227074951166

`and(-A367400(n), A000225(n))`
-/

namespace A367396.P4911186227074951166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A367400 n) (A000225 n)

end

end A367396.P4911186227074951166

namespace A367396

/-- `and(-A367400(n), A000225(n))` -/
def P4911186227074951166.Spec : Prop :=
  ∀ n, P4911186227074951166.a n = A367396 n

end A367396

/-! ## A367396.P682263436616076841

`A000079(n)-Δ[A118870(n)]`
-/

namespace A367396.P682263436616076841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A367396.P682263436616076841

namespace A367396

/-- `A000079(n)-Δ[A118870(n)]` -/
def P682263436616076841.Spec : Prop :=
  ∀ n, P682263436616076841.a n = A367396 n

end A367396

/-! ## A367396.P5500184104749268659

`A000051(n)-(A367400(n)+1)`
-/

namespace A367396.P5500184104749268659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A367400 n + 1)

end

end A367396.P5500184104749268659

namespace A367396

/-- `A000051(n)-(A367400(n)+1)` -/
def P5500184104749268659.Spec : Prop :=
  ∀ n, P5500184104749268659.a n = A367396 n

end A367396

/-! ## A367396.P17926753672264431148

`A000079(n)+A118870(n)-A118870(n+1)`
-/

namespace A367396.P17926753672264431148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A118870 n - A118870 (n + 1))

end

end A367396.P17926753672264431148

namespace A367396

/-- `A000079(n)+A118870(n)-A118870(n+1)` -/
def P17926753672264431148.Spec : Prop :=
  ∀ n, P17926753672264431148.a n = A367396 n

end A367396

/-! ## A367396.P15535604603939645679

`Δ[A397833(n)]`
-/

namespace A367396.P15535604603939645679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367396.P15535604603939645679

namespace A367396

/-- `Δ[A397833(n)]` -/
def P15535604603939645679.Spec : Prop :=
  ∀ n, P15535604603939645679.a n = A367396 n

end A367396

/-! ## A367396.P10489196410858511693

`A397833(n+1)-A397833(n)`
-/

namespace A367396.P10489196410858511693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397833 (n + 1) - A397833 n

end

end A367396.P10489196410858511693

namespace A367396

/-- `A397833(n+1)-A397833(n)` -/
def P10489196410858511693.Spec : Prop :=
  ∀ n, P10489196410858511693.a n = A367396 n

end A367396

/-!
# A367398: Number of integer partitions of n whose length is not a semi-sum of the parts.

The programs for A367398, there is no canonical definition to state claims against.
-/

/-! ## A367398.P1222686643878312202

`A000041(n)-A367394(n)`
-/

namespace A367398.P1222686643878312202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367394 n

end

end A367398.P1222686643878312202

/-! ## A367398.P6412484182788318121

`A213598(n)-A367394(n)`
-/

namespace A367398.P6412484182788318121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367394 n

end

end A367398.P6412484182788318121

/-! ## A367398.P266458610550304887

`∑[A002865(n)]-A367394(n)`
-/

namespace A367398.P266458610550304887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367394 n

end

end A367398.P266458610550304887

/-! ## A367398.P1480449088473321551

`A238343(∑[n])-A367394(n)`
-/

namespace A367398.P1480449088473321551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A367394 n

end

end A367398.P1480449088473321551

/-! ## A367398.P17163209361500103921

`A000065(n)+1-A367394(n)`
-/

namespace A367398.P17163209361500103921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A367394 n)

end

end A367398.P17163209361500103921

/-!
# A367399: Number of strict integer partitions of n whose length is not the sum of any two distinct parts.

The programs for A367399, there is no canonical definition to state claims against.
-/

/-! ## A367399.P4729407412347166155

`A000009(n)-A367395(n)`
-/

namespace A367399.P4729407412347166155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367395 n

end

end A367399.P4729407412347166155

/-! ## A367399.P17730246798104825706

`A227177(A036590(n))`
-/

namespace A367399.P17730246798104825706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A036590 n).toNat

end

end A367399.P17730246798104825706

/-! ## A367399.P8208384680718709313

`A048766(A066369(n))`
-/

namespace A367399.P8208384680718709313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A066369 n).toNat

end

end A367399.P8208384680718709313

/-! ## A367399.P10861764776337620572

`A127321(A047031(n))`
-/

namespace A367399.P10861764776337620572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A047031 n).toNat

end

end A367399.P10861764776337620572

/-! ## A367399.P1125855413844348950

`A048766(A288465(n))`
-/

namespace A367399.P1125855413844348950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A288465 n).toNat

end

end A367399.P1125855413844348950

