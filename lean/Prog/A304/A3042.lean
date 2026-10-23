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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A304200: a(n) is the number of cyclic permutations with at most 2 ascents.

The programs for A304200, there is no canonical definition to state claims against.
-/

/-! ## A304200.P4848019736316314039

`A100143(A024502(n))`
-/

namespace A304200.P4848019736316314039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A024502 n).toNat

end

end A304200.P4848019736316314039

/-! ## A304200.P6306274955875745634

`2*A120239(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A304200.P6306274955875745634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * A120239 (a (n - 1)).toNat

end

end A304200.P6306274955875745634

/-! ## A304200.P7369038697295134651

`2*A330063(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A304200.P7369038697295134651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * A330063 (a (n - 1)).toNat

end

end A304200.P7369038697295134651

/-! ## A304200.P4286253228558828069

`A227911(A050535(n))`
-/

namespace A304200.P4286253228558828069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227911 (A050535 n).toNat

end

end A304200.P4286253228558828069

/-!
# A304201: a(n) is the number of cyclic permutations of length n that admit a [1,-1,-1]-gridding.

The programs for A304201, there is no canonical definition to state claims against.
-/

/-! ## A304201.P6352564497745353215

`A303980(n)+A303979(A074473(n+1))`
-/

namespace A304201.P6352564497745353215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303980 n + A303979 (A074473 (n + 1)).toNat

end

end A304201.P6352564497745353215

/-! ## A304201.P17842843985143038462

`A303980(n)+A102683(A028495(n))`
-/

namespace A304201.P17842843985143038462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303980 n + A102683 (A028495 n).toNat

end

end A304201.P17842843985143038462

/-! ## A304201.P7965555641974166139

`A303980(n)+A122840(A240815(n+3))`
-/

namespace A304201.P7965555641974166139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303980 n + A122840 (A240815 (n + 3)).toNat

end

end A304201.P7965555641974166139

/-! ## A304201.P18406317073824626240

`A303980(n)+A014029(A090977(n))`
-/

namespace A304201.P18406317073824626240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303980 n + A014029 (A090977 n).toNat

end

end A304201.P18406317073824626240

/-! ## A304201.P9101661427958108147

`A343344(A193795(n))+A303980(n)`
-/

namespace A304201.P9101661427958108147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (A193795 n).toNat + A303980 n

end

end A304201.P9101661427958108147

/-!
# A304202: a(n) = (2*n-3)*4^(n-1) - 2*binomial(2*n, n-1).

The programs for A304202, the canonical program `A304202.P11820025979161817394` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304202 has offset 3).

The definition of A304202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+3)-3)*4^(n+2)-2*C(2*(n+3), n+2)` (program `A304202.P11820025979161817394`, by `A304202.P11820025979161817394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304202.P11820025979161817394

`(2*(n+3)-3)*4^(n+2)-2*C(2*(n+3), n+2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304202

/-- `(2*(n+3)-3)*4^(n+2)-2*C(2*(n+3), n+2)` -/
def P11820025979161817394.Spec : Prop :=
  ∀ n, P11820025979161817394.a n = A304202 (n + 3)

theorem P11820025979161817394.correct : P11820025979161817394.Spec := by
  intro n
  simp only [A304202, Nat.add_sub_cancel]

end A304202

/-! ## A304202.P4970361659338344282

`abs(A162551(n+3)+A144704(n+2))`
-/

namespace A304202.P4970361659338344282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162551 (n + 3) + A144704 (n + 2)|

end

end A304202.P4970361659338344282

namespace A304202

/-- `abs(A162551(n+3)+A144704(n+2))` -/
def P4970361659338344282.Spec : Prop :=
  ∀ n, P4970361659338344282.a n = A304202 (n + 3)

end A304202

/-! ## A304202.P12571456717612855704

`(A162551(n+3)+A144704(n+2))*A008683(A215153(n+1))`
-/

namespace A304202.P12571456717612855704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162551 (n + 3) + A144704 (n + 2)) * A008683 (A215153 (n + 1)).toNat

end

end A304202.P12571456717612855704

namespace A304202

/-- `(A162551(n+3)+A144704(n+2))*A008683(A215153(n+1))` -/
def P12571456717612855704.Spec : Prop :=
  ∀ n, P12571456717612855704.a n = A304202 (n + 3)

end A304202

/-!
# A304203: If n = Product (p_j^k_j) then a(n) = Product (p_j^prime(k_j)).

The programs for A304203, the canonical program `A304203.P18269401981959007266` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304203 has offset 1).

The definition of A304203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304203.P18269401981959007266

`∏{p}[n+1, #^A000040(val(n+1, #))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304203

/-- `∏{p}[n+1, #^A000040(val(n+1, #))]` -/
def P18269401981959007266.Spec : Prop :=
  ∀ n, P18269401981959007266.a n = (A304203 (n + 1) : ℚ)

end A304203

/-! ## A304203.P355321041789171558

`lcm(1-(4/2+n), ∏{p}[n+1, #²])*A085134((n+1)/∏{p}[n+1, #])`
-/

namespace A304203.P355321041789171558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ) : ℤ) * A085134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A304203.P355321041789171558

namespace A304203

/-- `lcm(1-(4/2+n), ∏{p}[n+1, #²])*A085134((n+1)/∏{p}[n+1, #])` -/
def P355321041789171558.Spec : Prop :=
  ∀ n, P355321041789171558.a n = A304203 (n + 1)

end A304203

/-! ## A304203.P16679986392167074727

`(n+1)²/A053590(A183102(n+1))`
-/

namespace A304203.P16679986392167074727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A053590 (A183102 (n + 1)).toNat : ℚ)

end

end A304203.P16679986392167074727

namespace A304203

/-- `(n+1)²/A053590(A183102(n+1))` -/
def P16679986392167074727.Spec : Prop :=
  ∀ n, P16679986392167074727.a n = (A304203 (n + 1) : ℚ)

end A304203

/-! ## A304203.P13761208351902918811

`A019554(n+1)*A019554(A183091(n+1))`
-/

namespace A304203.P13761208351902918811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A019554 (A183091 (n + 1)).toNat

end

end A304203.P13761208351902918811

namespace A304203

/-- `A019554(n+1)*A019554(A183091(n+1))` -/
def P13761208351902918811.Spec : Prop :=
  ∀ n, P13761208351902918811.a n = A304203 (n + 1)

end A304203

/-! ## A304203.P13463403175348983380

`(n+1)*A015053(A102631(A102631(n+1)))`
-/

namespace A304203.P13463403175348983380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015053 (A102631 (A102631 (n + 1)).toNat).toNat

end

end A304203.P13463403175348983380

namespace A304203

/-- `(n+1)*A015053(A102631(A102631(n+1)))` -/
def P13463403175348983380.Spec : Prop :=
  ∀ n, P13463403175348983380.a n = A304203 (n + 1)

end A304203

/-!
# A304205: Numbers k such that 24*k + 6 is congruent to 0 (mod 49).

The programs for A304205, the canonical program `A304205.P3096693256207395664` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304205 has offset 1).

The definition of A304205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304205.P3096693256207395664

`49*(n+1)-37`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304205

/-- `49*(n+1)-37` -/
def P3096693256207395664.Spec : Prop :=
  ∀ n, P3096693256207395664.a n = A304205 (n + 1)

theorem P3096693256207395664.correct : P3096693256207395664.Spec := by
  intro n
  simp only [A304205, Nat.add_sub_cancel]

end A304205

/-!
# A304207: a(1)=17; for n>1, a(n) = (a(n-1)^2 - 1)/2 if n is even, a(n-1) + 1 if n is odd.

The programs for A304207, there is no canonical definition to state claims against.
-/

/-! ## A304207.P11731242927758626537

`lcm(a(n-1)+1, xor(1, a(n-1)))` with `a(0)=17`
-/

namespace A304207.P11731242927758626537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17] fun n a =>
  Nat.lcm (a (n - 1) + 1) (Nat.xor 1 (a (n - 1)))

end

end A304207.P11731242927758626537

/-!
# A304208: Number of partitions of n^3 into exactly n distinct parts.

The programs for A304208, there is no canonical definition to state claims against.
-/

/-! ## A304208.P4881447004363243347

`A158237(n*n!-(n-1))`
-/

namespace A304208.P4881447004363243347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158237 ((n * Nat.factorial n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A304208.P4881447004363243347

/-!
# A304212: Number of partitions of n^3 into exactly n^2 parts.

The programs for A304212, there is no canonical definition to state claims against.
-/

/-! ## A304212.P2191838197983729203

`A072233(A071232(n)+n²)`
-/

namespace A304212.P2191838197983729203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A071232 n + (n ^ 2 : ℤ)).toNat

end

end A304212.P2191838197983729203

/-! ## A304212.P16672249449262621006

`A072233(A002411(n)+(n^6+n²)/2)`
-/

namespace A304212.P16672249449262621006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.roundAway ((A002411 n : ℚ) + (n ^ 6 + n ^ 2 : ℚ) / 2)).toNat

end

end A304212.P16672249449262621006

/-!
# A304214: Smallest k > 0 such that 2^(p-1) (mod p^2) < k*p for p = prime(n).

The programs for A304214, there is no canonical definition to state claims against.
-/

/-! ## A304214.P9099107399240331079

`A178844(n+1)+1`
-/

namespace A304214.P9099107399240331079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178844 (n + 1) + 1

end

end A304214.P9099107399240331079

/-! ## A304214.P8963160563830599847

`A130912(ceil(acot(n)+n))+1`
-/

namespace A304214.P8963160563830599847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130912 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat + 1

end

end A304214.P8963160563830599847

/-! ## A304214.P17840665246002271394

`A130912(ceil(sqrt(n²+2)))+1`
-/

namespace A304214.P17840665246002271394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130912 ⌈Real.sqrt (n ^ 2 + 2 : ℝ)⌉.toNat + 1

end

end A304214.P17840665246002271394

/-! ## A304214.P1580712973456635905

`A020725(A178844(n+1))`
-/

namespace A304214.P1580712973456635905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A178844 (n + 1)).toNat

end

end A304214.P1580712973456635905

/-! ## A304214.P6320801222695413319

`ceil(A196202(n+1)/A006093(n+1))`
-/

namespace A304214.P6320801222695413319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196202 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)⌉

end

end A304214.P6320801222695413319

/-! ## A304214.P1472122521815637309

`floor(A196202(n+1)/A000040(n+1))+1`
-/

namespace A304214.P1472122521815637309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋ + 1

end

end A304214.P1472122521815637309

/-! ## A304214.P11789502642288133149

`floor(A196202(n+1)/p?[A018252(n+1)-7])+1`
-/

namespace A304214.P11789502642288133149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋ + 1

end

end A304214.P11789502642288133149

/-!
# A304215: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304215, there is no canonical definition to state claims against.
-/

/-! ## A304215.P15203761802623140354

`A304221(∑[4*n]+1)`
-/

namespace A304215.P15203761802623140354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304215.P15203761802623140354

/-! ## A304215.P13438767514081898537

`record[A003982(n)*A304221(n+1)]`
-/

namespace A304215.P13438767514081898537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304215.P13438767514081898537

/-! ## A304215.P16873424131757374953

`record[gcd(A114327(n), A304221(n+1))]`
-/

namespace A304215.P16873424131757374953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A304221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304215.P16873424131757374953

/-! ## A304215.P950588671967996832

`A304221(or(1, ∑[4*n]))-A025439(n)`
-/

namespace A304215.P950588671967996832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) - A025439 n

end

end A304215.P950588671967996832

/-! ## A304215.P2774520787178058570

`gcd(A000038(n), A304221(A001844(n)))`
-/

namespace A304215.P2774520787178058570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A304221 (A001844 n).toNat)

end

end A304215.P2774520787178058570

/-!
# A304216: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304216, the canonical program `A304216.P3665929616161891193` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304216 has offset 1).

The definition of A304216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304216.P3665929616161891193

`a(n-1)+a(n-3)+2*a(n-4)` with `a(0)=3, a(1)=7, a(2)=10, a(3)=17, a(4)=32`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304216

/-- `a(n-1)+a(n-3)+2*a(n-4)` -/
def P3665929616161891193.Spec : Prop :=
  ∀ n, (P3665929616161891193.a n : ℤ) = A304216 (n + 1)

theorem P3665929616161891193.correct : P3665929616161891193.Spec := by
  intro n
  simp only [A304216, Nat.add_sub_cancel]

end A304216

/-! ## A304216.P14718725737579456092

`A304221(∑[n+2]+4)`
-/

namespace A304216.P14718725737579456092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304216.P14718725737579456092

namespace A304216

/-- `A304221(∑[n+2]+4)` -/
def P14718725737579456092.Spec : Prop :=
  ∀ n, P14718725737579456092.a n = A304216 (n + 1)

end A304216

/-! ## A304216.P1179479134906718403

`lcm(1-and(2, n), A304221(A167614(n+1)))`
-/

namespace A304216.P1179479134906718403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A304221 (A167614 (n + 1)).toNat)

end

end A304216.P1179479134906718403

namespace A304216

/-- `lcm(1-and(2, n), A304221(A167614(n+1)))` -/
def P1179479134906718403.Spec : Prop :=
  ∀ n, (P1179479134906718403.a n : ℤ) = A304216 (n + 1)

end A304216

/-! ## A304216.P3742312684455531155

`A304221(A167614(n+1))%A186019(n+1)`
-/

namespace A304216.P3742312684455531155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304221 (A167614 (n + 1)).toNat) (A186019 (n + 1))

end

end A304216.P3742312684455531155

namespace A304216

/-- `A304221(A167614(n+1))%A186019(n+1)` -/
def P3742312684455531155.Spec : Prop :=
  ∀ n, P3742312684455531155.a n = A304216 (n + 1)

end A304216

/-! ## A304216.P6298928527623864397

`A304221(A046691(n)+7)%A213019(n+1)`
-/

namespace A304216.P6298928527623864397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304221 (A046691 n + 7).toNat) (A213019 (n + 1))

end

end A304216.P6298928527623864397

namespace A304216

/-- `A304221(A046691(n)+7)%A213019(n+1)` -/
def P6298928527623864397.Spec : Prop :=
  ∀ n, P6298928527623864397.a n = A304216 (n + 1)

end A304216

/-!
# A304217: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304217, the canonical program `A304217.P4628740369741042359` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304217 has offset 1).

The definition of A304217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304217.P4628740369741042359

`a(n-1)+2*a(n-3)+a(n-4)+a(n-5)-2*a(n-7)` with `a(0)=5, a(1)=17, a(2)=17, a(3)=32, a(4)=62, a(5)=108, a(6)=190, a(7)=348, a(8)=636`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304217

/-- `a(n-1)+2*a(n-3)+a(n-4)+a(n-5)-2*a(n-7)` -/
def P4628740369741042359.Spec : Prop :=
  ∀ n, P4628740369741042359.a n = A304217 (n + 1)

theorem P4628740369741042359.correct : P4628740369741042359.Spec := by
  intro n
  simp only [A304217, Nat.add_sub_cancel]

end A304217

/-! ## A304217.P17911022780712841669

`A304221(A374004(n+1))`
-/

namespace A304217.P17911022780712841669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A374004 (n + 1)).toNat

end

end A304217.P17911022780712841669

namespace A304217

/-- `A304221(A374004(n+1))` -/
def P17911022780712841669.Spec : Prop :=
  ∀ n, P17911022780712841669.a n = A304217 (n + 1)

end A304217

/-! ## A304217.P8170130918529861090

`A304221(A052905(n)+9)`
-/

namespace A304217.P8170130918529861090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A052905 n + 9).toNat

end

end A304217.P8170130918529861090

namespace A304217

/-- `A304221(A052905(n)+9)` -/
def P8170130918529861090.Spec : Prop :=
  ∀ n, P8170130918529861090.a n = A304217 (n + 1)

end A304217

/-! ## A304217.P8098161337762442905

`A304221(A055999(n)+10)`
-/

namespace A304217.P8098161337762442905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A055999 n + 10).toNat

end

end A304217.P8098161337762442905

namespace A304217

/-- `A304221(A055999(n)+10)` -/
def P8098161337762442905.Spec : Prop :=
  ∀ n, P8098161337762442905.a n = A304217 (n + 1)

end A304217

/-! ## A304217.P1616691735860223347

`A304221(A167614(n+2)+1)`
-/

namespace A304217.P1616691735860223347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A167614 (n + 2) + 1).toNat

end

end A304217.P1616691735860223347

namespace A304217

/-- `A304221(A167614(n+2)+1)` -/
def P1616691735860223347.Spec : Prop :=
  ∀ n, P1616691735860223347.a n = A304217 (n + 1)

end A304217

/-!
# A304218: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304218, there is no canonical definition to state claims against.
-/

/-! ## A304218.P11641192163559463390

`A304221(A374005(n+1))`
-/

namespace A304218.P11641192163559463390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A374005 (n + 1)).toNat

end

end A304218.P11641192163559463390

/-! ## A304218.P852653105148183037

`A304221(A167499(n+3))`
-/

namespace A304218.P852653105148183037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A167499 (n + 3)).toNat

end

end A304218.P852653105148183037

/-! ## A304218.P8030805708759417315

`A304221(A167614(n+2)+n+6)`
-/

namespace A304218.P8030805708759417315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A304218.P8030805708759417315

/-! ## A304218.P10033301876776555757

`A304221(A052905(n+3)-(2*n+1))`
-/

namespace A304218.P10033301876776555757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A304218.P10033301876776555757

/-! ## A304218.P3405362595245398856

`A304221(Δ[A264443(n)])`
-/

namespace A304218.P3405362595245398856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (f1 (n + 1) - f1 n).toNat

end

end A304218.P3405362595245398856

/-!
# A304219: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304219, there is no canonical definition to state claims against.
-/

/-! ## A304219.P10262557450833297294

`A304221(A374007(n+1))`
-/

namespace A304219.P10262557450833297294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A374007 (n + 1)).toNat

end

end A304219.P10262557450833297294

/-! ## A304219.P16821516902730475998

`A304221(A000217(n+5)+6)`
-/

namespace A304219.P16821516902730475998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A000217 (n + 5) + 6).toNat

end

end A304219.P16821516902730475998

/-! ## A304219.P9291193029829038303

`A304221(A055998(n+5)-A005843(n+2))`
-/

namespace A304219.P9291193029829038303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A055998 (n + 5) - A005843 (n + 2)).toNat

end

end A304219.P9291193029829038303

/-! ## A304219.P16992522168540708705

`A304221(A167614(n+2)+A005843(n+6))`
-/

namespace A304219.P16992522168540708705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A167614 (n + 2) + A005843 (n + 6)).toNat

end

end A304219.P16992522168540708705

/-! ## A304219.P14783324575542392487

`A304221(A005843(n+7)+A000124(n+3))`
-/

namespace A304219.P14783324575542392487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A304219.P14783324575542392487

/-!
# A304220: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304220, there is no canonical definition to state claims against.
-/

/-! ## A304220.P16506312258264365747

`A304221(A374008(n+1))`
-/

namespace A304220.P16506312258264365747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A374008 (n + 1)).toNat

end

end A304220.P16506312258264365747

/-! ## A304220.P15520263665963025199

`A304221(A000217(n+6)+7)`
-/

namespace A304220.P15520263665963025199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A000217 (n + 6) + 7).toNat

end

end A304220.P15520263665963025199

/-! ## A304220.P17074501593626767205

`A304221(A034856(n+5)+9)`
-/

namespace A304220.P17074501593626767205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A034856 (n + 5) + 9).toNat

end

end A304220.P17074501593626767205

/-! ## A304220.P5325236800146336397

`A304221(A046691(n+5)-2)`
-/

namespace A304220.P5325236800146336397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A046691 (n + 5) - 2).toNat

end

end A304220.P5325236800146336397

/-! ## A304220.P16517275091741566713

`A304221(A000096(n+6)-5)`
-/

namespace A304220.P16517275091741566713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (A000096 (n + 6) - 5).toNat

end

end A304220.P16517275091741566713

/-!
# A304221: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304221, there is no canonical definition to state claims against.
-/

/-! ## A304221.P10915126660985859538

`A303682(n+1)+A184159(A099594(n))`
-/

namespace A304221.P10915126660985859538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (n + 1) + A184159 (A099594 n).toNat

end

end A304221.P10915126660985859538

/-! ## A304221.P4118149105350663800

`A303682(n+1)+A163510(A157273(n))`
-/

namespace A304221.P4118149105350663800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (n + 1) + A163510 (A157273 n).toNat

end

end A304221.P4118149105350663800

/-! ## A304221.P15732458317658779681

`A303682(n+1)+A178498(A255256(n))`
-/

namespace A304221.P15732458317658779681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (n + 1) + A178498 (A255256 n).toNat

end

end A304221.P15732458317658779681

/-! ## A304221.P7353352675728193388

`A305482(n+1)-A065040(A296548(n))`
-/

namespace A304221.P7353352675728193388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (n + 1) - A065040 (A296548 n).toNat

end

end A304221.P7353352675728193388

/-! ## A304221.P3369125740668675267

`A305482(A001222(2^n)+1)`
-/

namespace A304221.P3369125740668675267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A001222 (2 ^ n) + 1).toNat

end

end A304221.P3369125740668675267

/-!
# A304224: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304224, there is no canonical definition to state claims against.
-/

/-! ## A304224.P14052865123712284316

`A304230(∑[4*n]+1)`
-/

namespace A304224.P14052865123712284316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304224.P14052865123712284316

/-! ## A304224.P1665673262293289411

`gcd(4*char[1], A304230(A001844(n)))`
-/

namespace A304224.P1665673262293289411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A304230 (A001844 n).toNat)

end

end A304224.P1665673262293289411

/-! ## A304224.P18252833850472523363

`record[A003982(n)*A304230(n+1)]`
-/

namespace A304224.P18252833850472523363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304224.P18252833850472523363

/-! ## A304224.P504992848935977620

`record[A214505(n)*A304230(n+1)]`
-/

namespace A304224.P504992848935977620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A304230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304224.P504992848935977620

/-! ## A304224.P1465147386900142537

`record[gcd(A008482(n), A304230(n+1))]`
-/

namespace A304224.P1465147386900142537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A304230 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304224.P1465147386900142537

/-!
# A304225: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304225, the canonical program `A304225.P9551689926002279936` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304225 has offset 1).

The definition of A304225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304225.P16492756041196106399

`ogf((4-x+2x^2-3x^3+2x^4)/(1-x-x^3))`
-/

namespace A304225.P16492756041196106399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, 2, -3, 2] [1, -1, 0, -1] n

end

end A304225.P16492756041196106399

namespace A304225

/-- `ogf((4-x+2x^2-3x^3+2x^4)/(1-x-x^3))` -/
def P16492756041196106399.Spec : Prop :=
  ∀ n, P16492756041196106399.a n = A304225 (n + 1)

end A304225

/-! ## A304225.P9551689926002279936

`a(n-1)+a(n-3)` with `a(0)=4, a(1)=3, a(2)=5, a(3)=6, a(4)=11`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304225

/-- `a(n-1)+a(n-3)` -/
def P9551689926002279936.Spec : Prop :=
  ∀ n, (P9551689926002279936.a n : ℤ) = A304225 (n + 1)

theorem P9551689926002279936.correct : P9551689926002279936.Spec := by
  intro n
  simp only [A304225, Nat.add_sub_cancel]

end A304225

/-! ## A304225.P3349054737226938285

`A304230(∑[n+2]+4)`
-/

namespace A304225.P3349054737226938285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304225.P3349054737226938285

namespace A304225

/-- `A304230(∑[n+2]+4)` -/
def P3349054737226938285.Spec : Prop :=
  ∀ n, P3349054737226938285.a n = A304225 (n + 1)

end A304225

/-! ## A304225.P11718301922685797632

`A304230(A167614(n+1))+A264668(n)`
-/

namespace A304225.P11718301922685797632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A167614 (n + 1)).toNat + A264668 n

end

end A304225.P11718301922685797632

namespace A304225

/-- `A304230(A167614(n+1))+A264668(n)` -/
def P11718301922685797632.Spec : Prop :=
  ∀ n, P11718301922685797632.a n = A304225 (n + 1)

end A304225

/-! ## A304225.P2266002199348862870

`A152851(n)*A304230(A167614(n+1))`
-/

namespace A304225.P2266002199348862870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A304230 (A167614 (n + 1)).toNat

end

end A304225.P2266002199348862870

namespace A304225

/-- `A152851(n)*A304230(A167614(n+1))` -/
def P2266002199348862870.Spec : Prop :=
  ∀ n, P2266002199348862870.a n = A304225 (n + 1)

end A304225

/-!
# A304226: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304226, the canonical program `A304226.P14540625997265054543` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304226 has offset 1).

The definition of A304226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304226.P14540625997265054543

`a(n-1)+5*a(n-3)-4*a(n-6)` with `a(0)=8, a(1)=5, a(2)=6, a(3)=11, a(4)=20, a(5)=46, a(6)=97, a(7)=189`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304226

/-- `a(n-1)+5*a(n-3)-4*a(n-6)` -/
def P14540625997265054543.Spec : Prop :=
  ∀ n, P14540625997265054543.a n = A304226 (n + 1)

theorem P14540625997265054543.correct : P14540625997265054543.Spec := by
  intro n
  simp only [A304226, Nat.add_sub_cancel]

end A304226

/-! ## A304226.P15308340899569142361

`A304230(A141214(n)+7)`
-/

namespace A304226.P15308340899569142361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A141214 n + 7).toNat

end

end A304226.P15308340899569142361

namespace A304226

/-- `A304230(A141214(n)+7)` -/
def P15308340899569142361.Spec : Prop :=
  ∀ n, P15308340899569142361.a n = A304226 (n + 1)

end A304226

/-! ## A304226.P4524251443437599281

`A304230(A052905(n)+9)`
-/

namespace A304226.P4524251443437599281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A052905 n + 9).toNat

end

end A304226.P4524251443437599281

namespace A304226

/-- `A304230(A052905(n)+9)` -/
def P4524251443437599281.Spec : Prop :=
  ∀ n, P4524251443437599281.a n = A304226 (n + 1)

end A304226

/-! ## A304226.P5670762117224340425

`A304230(A055999(n)+10)`
-/

namespace A304226.P5670762117224340425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A055999 n + 10).toNat

end

end A304226.P5670762117224340425

namespace A304226

/-- `A304230(A055999(n)+10)` -/
def P5670762117224340425.Spec : Prop :=
  ∀ n, P5670762117224340425.a n = A304226 (n + 1)

end A304226

/-! ## A304226.P6477563527695277112

`A304230(A167614(n+2)+1)`
-/

namespace A304226.P6477563527695277112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A167614 (n + 2) + 1).toNat

end

end A304226.P6477563527695277112

namespace A304226

/-- `A304230(A167614(n+2)+1)` -/
def P6477563527695277112.Spec : Prop :=
  ∀ n, P6477563527695277112.a n = A304226 (n + 1)

end A304226

/-!
# A304227: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304227, there is no canonical definition to state claims against.
-/

/-! ## A304227.P13999391925862883661

`A304230(A167499(n+3))`
-/

namespace A304227.P13999391925862883661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A167499 (n + 3)).toNat

end

end A304227.P13999391925862883661

/-! ## A304227.P2635980996651204245

`A304230(A166136(n+3)-1)`
-/

namespace A304227.P2635980996651204245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A166136 (n + 3) - 1).toNat

end

end A304227.P2635980996651204245

/-! ## A304227.P4893666206718983430

`A304230(A167614(n+3)+2)`
-/

namespace A304227.P4893666206718983430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A167614 (n + 3) + 2).toNat

end

end A304227.P4893666206718983430

/-! ## A304227.P16569921498858742492

`A304230(A133263(n+4)+3)`
-/

namespace A304227.P16569921498858742492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A133263 (n + 4) + 3).toNat

end

end A304227.P16569921498858742492

/-! ## A304227.P11733268129662645010

`A304230(A052905(n+3)-(2*n+1))`
-/

namespace A304227.P11733268129662645010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A304227.P11733268129662645010

/-!
# A304228: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304228, there is no canonical definition to state claims against.
-/

/-! ## A304228.P8804398123982959540

`A304230(A166136(n+4))`
-/

namespace A304228.P8804398123982959540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A166136 (n + 4)).toNat

end

end A304228.P8804398123982959540

/-! ## A304228.P12068911211093662613

`A304230(A000124(n+5)+5)`
-/

namespace A304228.P12068911211093662613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A000124 (n + 5) + 5).toNat

end

end A304228.P12068911211093662613

/-! ## A304228.P261234666795389494

`A304230(A000217(n+5)+6)`
-/

namespace A304228.P261234666795389494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A000217 (n + 5) + 6).toNat

end

end A304228.P261234666795389494

/-! ## A304228.P11710711247083036305

`A304230(A034856(n+4)+8)`
-/

namespace A304228.P11710711247083036305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A034856 (n + 4) + 8).toNat

end

end A304228.P11710711247083036305

/-! ## A304228.P17120742175004169336

`A304230(Δ[A023551(n+2)]-1-2*n)`
-/

namespace A304228.P17120742175004169336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (f1 (n + 1) - f1 n - 1 - (2 * n : ℤ)).toNat

end

end A304228.P17120742175004169336

/-!
# A304229: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304229, there is no canonical definition to state claims against.
-/

/-! ## A304229.P10744629075173506587

`A304230(A167487(n+5))`
-/

namespace A304229.P10744629075173506587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A167487 (n + 5)).toNat

end

end A304229.P10744629075173506587

/-! ## A304229.P8681159563263716427

`A304230(A000124(n+6)+6)`
-/

namespace A304229.P8681159563263716427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A000124 (n + 6) + 6).toNat

end

end A304229.P8681159563263716427

/-! ## A304229.P9117095441299119418

`A304230(A000217(n+6)+7)`
-/

namespace A304229.P9117095441299119418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A000217 (n + 6) + 7).toNat

end

end A304229.P9117095441299119418

/-! ## A304229.P1402285858645206349

`A304230(A141214(n+8)-A008706(n+7))`
-/

namespace A304229.P1402285858645206349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A141214 (n + 8) - A008706 (n + 7)).toNat

end

end A304229.P1402285858645206349

/-! ## A304229.P13721976652550736856

`A304230(A374008(n+1))`
-/

namespace A304229.P13721976652550736856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (A374008 (n + 1)).toNat

end

end A304229.P13721976652550736856

/-!
# A304230: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304230, there is no canonical definition to state claims against.
-/

/-! ## A304230.P13751261322734684787

`A305258(A131235(n))+A305040(n+1)`
-/

namespace A304230.P13751261322734684787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A131235 n).toNat + A305040 (n + 1)

end

end A304230.P13751261322734684787

/-! ## A304230.P2223464587489894559

`A305586(n+1)-A340998(A174376(n))`
-/

namespace A304230.P2223464587489894559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (n + 1) - A340998 ((A174376 n).toNat + 140)

end

end A304230.P2223464587489894559

/-! ## A304230.P7772501628326872941

`A305040(n+1)-A082858(A059441(n+1))`
-/

namespace A304230.P7772501628326872941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (n + 1) - A082858 (A059441 (n + 1)).toNat

end

end A304230.P7772501628326872941

/-! ## A304230.P8373565254835110118

`A305586(n+1)-A058348(A131235(n))`
-/

namespace A304230.P8373565254835110118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (n + 1) - A058348 (A131235 n).toNat

end

end A304230.P8373565254835110118

/-! ## A304230.P3543838927558044060

`A305586(n+1)-A086013(A276085(n+1))`
-/

namespace A304230.P3543838927558044060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (n + 1) - A086013 (A276085 (n + 1)).toNat

end

end A304230.P3543838927558044060

/-!
# A304231: Numbers of the form m*k with m <= k < 2m.

The programs for A304231, there is no canonical definition to state claims against.
-/

/-! ## A304231.P14579512150629932608

`lt[A139717(abs(1-n)+1), n]`
-/

namespace A304231.P14579512150629932608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139717 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304231.P14579512150629932608

/-! ## A304231.P3146446606805382169

`lt[n, A071090(n+1)²]+1`
-/

namespace A304231.P3146446606805382169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A304231.P3146446606805382169

/-! ## A304231.P17758461729524890437

`∪[(n+1)², A001284(n+1)]`
-/

namespace A304231.P17758461729524890437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304231.P17758461729524890437

/-! ## A304231.P125174450470592042

`lt[A139717(n+1), n+1]+1`
-/

namespace A304231.P125174450470592042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139717 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A304231.P125174450470592042

/-! ## A304231.P10749800374836473372

`lt[A033677(n+1)², 2*(n+1)]+1`
-/

namespace A304231.P10749800374836473372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A304231.P10749800374836473372

/-! ## A304231.P644110290212026106

`∪[A001284(n+1), A066213(n+1)]`
-/

namespace A304231.P644110290212026106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304231.P644110290212026106

/-! ## A304231.P11418714374016719838

`∪[A001284(n+1), A216500(n+1)]`
-/

namespace A304231.P11418714374016719838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304231.P11418714374016719838

/-! ## A304231.P5379344383371338361

`∪[A001284(n+1), A221222(n+1)]`
-/

namespace A304231.P5379344383371338361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304231.P5379344383371338361

/-! ## A304231.P11703642452237842672

`∪[A001284(n+1), A330879(n+1)]`
-/

namespace A304231.P11703642452237842672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304231.P11703642452237842672

/-! ## A304231.P14540318290886632565

`∪[A001284(n+1), A331219(n+1)]`
-/

namespace A304231.P14540318290886632565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304231.P14540318290886632565

/-!
# A304233: If n = Product (p_j^k_j) then a(n) = min{p_j^k_j}*max{p_j^k_j}.

The programs for A304233, there is no canonical definition to state claims against.
-/

/-! ## A304233.P15212582942564754722

`A034684(n+1)*A034699(n+1)`
-/

namespace A304233.P15212582942564754722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) * A034699 (n + 1)

end

end A304233.P15212582942564754722

/-! ## A304233.P7391623856730253254

`A028310(A158377(n+1))*A100994(n+1)`
-/

namespace A304233.P7391623856730253254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A158377 (n + 1)).toNat * A100994 (n + 1)

end

end A304233.P7391623856730253254

/-! ## A304233.P18131214529379801657

`(A158377(n+1)+A000007(n))*A100994(n+1)`
-/

namespace A304233.P18131214529379801657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158377 (n + 1) + A000007 n) * A100994 (n + 1)

end

end A304233.P18131214529379801657

/-! ## A304233.P17329926704340396364

`gcd(A027620(n), A139082(n+1))*A034684(n+1)`
-/

namespace A304233.P17329926704340396364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A027620 n) (A139082 (n + 1)) : ℤ) * A034684 (n + 1)

end

end A304233.P17329926704340396364

/-! ## A304233.P17671417628190412822

`(A100574(n+1)+A034684(n+1))*A034684(n+1)`
-/

namespace A304233.P17671417628190412822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100574 (n + 1) + A034684 (n + 1)) * A034684 (n + 1)

end

end A304233.P17671417628190412822

/-! ## A304233.P4843761795212827063

`(A034699(n+1)-A100574(n+1))*A034699(n+1)`
-/

namespace A304233.P4843761795212827063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) - A100574 (n + 1)) * A034699 (n + 1)

end

end A304233.P4843761795212827063

/-! ## A304233.P13060861837479651203

`A034684(n+1)*A210208(A210241(n+1))`
-/

namespace A304233.P13060861837479651203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) * A210208 (A210241 (n + 1)).toNat

end

end A304233.P13060861837479651203

/-! ## A304233.P4231142737419435788

`A034684(n+1)*A210208(∑[A073093(n+1)])`
-/

namespace A304233.P4231142737419435788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) * A210208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304233.P4231142737419435788

/-!
# A304236: Triangle T(n,k) = T(n-1,k) + 3*T(n-2,k-1) for k = 0..floor(n/2), with T(0,0) = 1, T(n,k) = 0 for n or k < 0, read by rows.

The programs for A304236, the canonical program `A304236.P2045440630624373802` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304236 has offset 0).

The definition of A304236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304236.P12956319623678415854

`A013610(A091018(n))`
-/

namespace A304236.P12956319623678415854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A091018 n).toNat

end

end A304236.P12956319623678415854

namespace A304236

/-- `A013610(A091018(n))` -/
def P12956319623678415854.Spec : Prop :=
  ∀ n, P12956319623678415854.a n = A304236 n

end A304236

/-! ## A304236.P5787573120716245688

`A013610(A056536(n+1)-1)`
-/

namespace A304236.P5787573120716245688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A056536 (n + 1) - 1).toNat

end

end A304236.P5787573120716245688

namespace A304236

/-- `A013610(A056536(n+1)-1)` -/
def P5787573120716245688.Spec : Prop :=
  ∀ n, P5787573120716245688.a n = A304236 n

end A304236

/-! ## A304236.P2045440630624373802

`A000244(A055087(n))*A011973(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A304236

/-- `A000244(A055087(n))*A011973(n)` -/
def P2045440630624373802.Spec : Prop :=
  ∀ n, P2045440630624373802.a n = A304236 n

theorem P2045440630624373802.correct : P2045440630624373802.Spec := by
  intro n
  simp only [A304236]

end A304236

/-! ## A304236.P1082796248423756542

`A013610(A057428(n)+A056536(n+1))`
-/

namespace A304236.P1082796248423756542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A057428 n + A056536 (n + 1)).toNat

end

end A304236.P1082796248423756542

namespace A304236

/-- `A013610(A057428(n)+A056536(n+1))` -/
def P1082796248423756542.Spec : Prop :=
  ∀ n, P1082796248423756542.a n = A304236 n

end A304236

/-! ## A304236.P13222927481846733988

`abs(A115139(n+1))*A000244(A055087(n))`
-/

namespace A304236.P13222927481846733988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115139 (n + 1)| * A000244 (A055087 n).toNat

end

end A304236.P13222927481846733988

namespace A304236

/-- `abs(A115139(n+1))*A000244(A055087(n))` -/
def P13222927481846733988.Spec : Prop :=
  ∀ n, P13222927481846733988.a n = A304236 n

end A304236

/-! ## A304236.P17741563223248833911

`A000244(A055087(n))*A007318(A091018(n))`
-/

namespace A304236.P17741563223248833911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A055087 n).toNat * A007318 (A091018 n).toNat

end

end A304236.P17741563223248833911

namespace A304236

/-- `A000244(A055087(n))*A007318(A091018(n))` -/
def P17741563223248833911.Spec : Prop :=
  ∀ n, P17741563223248833911.a n = A304236 n

end A304236

/-! ## A304236.P16770942630054870636

`A304252(n)/A000079(A055087(n))`
-/

namespace A304236.P16770942630054870636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304252 n : ℚ) / (A000079 (A055087 n).toNat : ℚ)

end

end A304236.P16770942630054870636

namespace A304236

/-- `A304252(n)/A000079(A055087(n))` -/
def P16770942630054870636.Spec : Prop :=
  ∀ n, P16770942630054870636.a n = (A304236 n : ℚ)

end A304236

/-! ## A304236.P15884264166814805313

`gcd(A038221(A091018(n)), A304252(n))`
-/

namespace A304236.P15884264166814805313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038221 (A091018 n).toNat) (A304252 n)

end

end A304236.P15884264166814805313

namespace A304236

/-- `gcd(A038221(A091018(n)), A304252(n))` -/
def P15884264166814805313.Spec : Prop :=
  ∀ n, (P15884264166814805313.a n : ℤ) = A304236 n

end A304236

/-! ## A304236.P14096995904558303595

`A304252(n)/A006519(A245178(n+1))`
-/

namespace A304236.P14096995904558303595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304252 n : ℚ) / (A006519 (A245178 (n + 1)).toNat : ℚ)

end

end A304236.P14096995904558303595

namespace A304236

/-- `A304252(n)/A006519(A245178(n+1))` -/
def P14096995904558303595.Spec : Prop :=
  ∀ n, P14096995904558303595.a n = (A304236 n : ℚ)

end A304236

/-! ## A304236.P5408722993961718270

`gcd(A304252(n), A317051(n))`
-/

namespace A304236.P5408722993961718270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304252 n) (A317051 n)

end

end A304236.P5408722993961718270

namespace A304236

/-- `gcd(A304252(n), A317051(n))` -/
def P5408722993961718270.Spec : Prop :=
  ∀ n, (P5408722993961718270.a n : ℤ) = A304236 n

end A304236

/-!
# A304237: a(n) is the smallest positive integer not yet in the sequence that is obtained when the first and last digits of a(n-1) are exchanged and used in a(n) in the exchanged order (but not necessarily adjacent); a(1)=10.

The programs for A304237, there is no canonical definition to state claims against.
-/

/-! ## A304237.P14196993785458631957

`xor(A091009(A304229(n+1)), A304238(n+1))`
-/

namespace A304237.P14196993785458631957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091009 (A304229 (n + 1)).toNat) (A304238 (n + 1))

end

end A304237.P14196993785458631957

/-!
# A304238: a(n) is the smallest positive integer not yet in the sequence that is obtained when the first and last digits of a(n-1) are exchanged and used in a(n) in the exchanged order (and necessarily adjacent); a(1)=10.

The programs for A304238, there is no canonical definition to state claims against.
-/

/-! ## A304238.P10294753451863198863

`xor(A091009(A304229(n+1)), A304237(n+1))`
-/

namespace A304238.P10294753451863198863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091009 (A304229 (n + 1)).toNat) (A304237 (n + 1))

end

end A304238.P10294753451863198863

/-!
# A304240: Extremum of the Mertens function A002321 between two successive (but not adjacent) zeros.

The programs for A304240, there is no canonical definition to state claims against.
-/

/-! ## A304240.P15883827541875238142

`A002321(A304239(n+1))`
-/

namespace A304240.P15883827541875238142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A304239 (n + 1)).toNat

end

end A304240.P15883827541875238142

/-!
# A304241: Indices where Mertens function A002321 reaches record amplitudes between zeros.

The programs for A304241, there is no canonical definition to state claims against.
-/

/-! ## A304241.P2548431361408014632

`A051402(abs(A304242(n+1)))`
-/

namespace A304241.P2548431361408014632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 |A304242 (n + 1)|.toNat

end

end A304241.P2548431361408014632

/-! ## A304241.P14753250026658328970

`A051402(lcm((-1)^n, A304242(n+1)))`
-/

namespace A304241.P14753250026658328970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (Int.lcm ((-1) ^ n) (A304242 (n + 1)))

end

end A304241.P14753250026658328970

/-! ## A304241.P7327643701049699782

`A051402(gcd(A025444(n), A304242(n+1)))`
-/

namespace A304241.P7327643701049699782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (Int.gcd (A025444 n) (A304242 (n + 1)))

end

end A304241.P7327643701049699782

/-! ## A304241.P14662335992436943506

`A051402(∑{d}[A304242(n+1), A000010(#)])`
-/

namespace A304241.P14662335992436943506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A304241.P14662335992436943506

/-! ## A304241.P15980617970091313272

`A051402(∏{d}[A304242(n+1), A014963(#)])`
-/

namespace A304241.P15980617970091313272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A304241.P15980617970091313272

/-!
# A304242: Increasingly larger (in absolute value) extrema of the Mertens function A002321 between subsequent zeros.

The programs for A304242, there is no canonical definition to state claims against.
-/

/-! ## A304242.P15545693627183790887

`A002321(A304241(n+1))`
-/

namespace A304242.P15545693627183790887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A304241 (n + 1)).toNat

end

end A304242.P15545693627183790887

/-!
# A304244: Numbers that yield a prime when prime(k) is inserted after the k-th digit, for any k >= 1, k < number of digits.

The programs for A304244, there is no canonical definition to state claims against.
-/

/-! ## A304244.P10582957674429332314

`A304247(n+1)%A333137(n+1)`
-/

namespace A304244.P10582957674429332314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304247 (n + 1)) (A333137 (n + 1))

end

end A304244.P10582957674429332314

/-! ## A304244.P18083978994936988456

`A304245(n+1)%A331043(n+2)`
-/

namespace A304244.P18083978994936988456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304245 (n + 1)) (A331043 (n + 2))

end

end A304244.P18083978994936988456

/-! ## A304244.P14905728274748064193

`A304245(n+1)+A185284(A035382(n))`
-/

namespace A304244.P14905728274748064193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304245 (n + 1) + A185284 (A035382 n).toNat

end

end A304244.P14905728274748064193

/-! ## A304244.P11184311148734609613

`A304245(n+1)/A215401(A000124(n))`
-/

namespace A304244.P11184311148734609613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304245 (n + 1) : ℚ) / (A215401 (A000124 n).toNat : ℚ)

end

end A304244.P11184311148734609613

/-! ## A304244.P11887479166228397421

`A304245(n+1)%A000124(A001752(n))`
-/

namespace A304244.P11887479166228397421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304245 (n + 1)) (A000124 (A001752 n).toNat)

end

end A304244.P11887479166228397421

/-!
# A304245: Numbers that yield a prime when '2' is inserted between the first and second digit, or prime(k+1) is inserted after the k-th digit for any k > 1, k < number of digits.

The programs for A304245, there is no canonical definition to state claims against.
-/

/-! ## A304245.P13996805940946890331

`A304247(n+1)%A109139(n)`
-/

namespace A304245.P13996805940946890331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304247 (n + 1)) (A109139 n)

end

end A304245.P13996805940946890331

/-! ## A304245.P14337755692341791815

`A043545(A016814(n))*A304247(n+1)`
-/

namespace A304245.P14337755692341791815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A016814 n).toNat * A304247 (n + 1)

end

end A304245.P14337755692341791815

/-! ## A304245.P1926506150661545546

`A304247(n+1)+A051584(A209721(n+1))`
-/

namespace A304245.P1926506150661545546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 1) + A051584 (A209721 (n + 1)).toNat

end

end A304245.P1926506150661545546

/-! ## A304245.P7567104390102128181

`A321797(A019538(n+1))+A304247(n+1)`
-/

namespace A304245.P7567104390102128181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A019538 (n + 1)).toNat + A304247 (n + 1)

end

end A304245.P7567104390102128181

/-! ## A304245.P13091835350582082183

`A304247(n+1)^A335324(A056220(n+4))`
-/

namespace A304245.P13091835350582082183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304247 (n + 1) : ℚ) ^ (A335324 (A056220 (n + 4)).toNat : ℤ)

end

end A304245.P13091835350582082183

/-!
# A304246: Numbers that yield a prime whenever a '1' is inserted between any two digits.

The programs for A304246, there is no canonical definition to state claims against.
-/

/-! ## A304246.P11627043061847265270

`lt[∑[A326642(n)], A085398(2*(n+1))]`
-/

namespace A304246.P11627043061847265270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A304246.P11627043061847265270

/-! ## A304246.P1078050269710745625

`lt[A351005(n), A091722(A321981(n+1))]`
-/

namespace A304246.P1078050269710745625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091722 (A321981 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304246.P1078050269710745625

/-! ## A304246.P4382101957965886526

`lt[A000045(n), A030078(A085398(2*(n+1)))]`
-/

namespace A304246.P4382101957965886526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A085398 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304246.P4382101957965886526

/-! ## A304246.P10054790113568399185

`lt[A026346(A175200(n+4)), A016993(3*(n+1))]`
-/

namespace A304246.P10054790113568399185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026346 (A175200 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304246.P10054790113568399185

/-! ## A304246.P11765441816971200891

`lt[A324050(A225655(n+1)), A076123(3*n+4)]`
-/

namespace A304246.P11765441816971200891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A225655 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076123 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304246.P11765441816971200891

/-!
# A304248: Numbers that yield a prime whenever a '3' is inserted between any two digits.

The programs for A304248, there is no canonical definition to state claims against.
-/

/-! ## A304248.P10765267730096597222

`lt[A363723(n), A144539(A306500(n+5))]`
-/

namespace A304248.P10765267730096597222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144539 (A306500 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304248.P10765267730096597222

/-! ## A304248.P10648141557373859299

`lt[A224931(n+1), A371127(A300978(2*n))]`
-/

namespace A304248.P10648141557373859299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (A300978 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304248.P10648141557373859299

/-! ## A304248.P9285601766279407631

`lt[A326002(n), Δ[A056866(n+1)]]`
-/

namespace A304248.P9285601766279407631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326002 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304248.P9285601766279407631

/-!
# A304249: Triangle T(n,k) = 3*T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2), with T(0,0) = 1 and T(n,k) = 0 for n < 0 or k < 0, read by rows.

The programs for A304249, there is no canonical definition to state claims against.
-/

/-! ## A304249.P12480355272245499191

`A027465(A091018(n))`
-/

namespace A304249.P12480355272245499191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A091018 n).toNat

end

end A304249.P12480355272245499191

/-! ## A304249.P16058312839166825882

`A027465(A056536(n+1)-1)`
-/

namespace A304249.P16058312839166825882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A056536 (n + 1) - 1).toNat

end

end A304249.P16058312839166825882

/-! ## A304249.P13185818768773515465

`3^A082375(n)*A011973(n)`
-/

namespace A304249.P13185818768773515465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A082375 n : ℤ) * (A011973 n : ℚ)

end

end A304249.P13185818768773515465

/-! ## A304249.P2688263101643313813

`A000244(A082375(n))*A011973(n)`
-/

namespace A304249.P2688263101643313813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A082375 n).toNat * A011973 n

end

end A304249.P2688263101643313813

/-! ## A304249.P5385419054585009437

`A011973(n)*A140303(A091018(n))`
-/

namespace A304249.P5385419054585009437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A140303 (A091018 n).toNat

end

end A304249.P5385419054585009437

/-!
# A304250: Perfect powers whose prime factors span an initial interval of prime numbers.

The programs for A304250, there is no canonical definition to state claims against.
-/

/-! ## A304250.P4119676019958570944

`∩[A055932(n+1), A075090(n+1)]`
-/

namespace A304250.P4119676019958570944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304250.P4119676019958570944

/-! ## A304250.P8098364873460866381

`∩[A075090(n+1), A387901(n+1)]`
-/

namespace A304250.P8098364873460866381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304250.P8098364873460866381

/-! ## A304250.P16848798510610945015

`∩[2*A066311(n+1), A075090(n+1)]`
-/

namespace A304250.P16848798510610945015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304250.P16848798510610945015

/-! ## A304250.P13616364124046766052

`∩[2*A073491(n+1), A075090(n+1)]`
-/

namespace A304250.P13616364124046766052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304250.P13616364124046766052

/-!
# A304251: If n = Product (p_j^k_j) then a(n) = Sum (prime(p_j)^k_j).

The programs for A304251, the canonical program `A304251.P1616102808794678672` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304251 has offset 1).

The definition of A304251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304251.P1616102808794678672

`∑{p}[n+1, A000040(#)^val(n+1, #)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304251

/-- `∑{p}[n+1, A000040(#)^val(n+1, #)]` -/
def P1616102808794678672.Spec : Prop :=
  ∀ n, P1616102808794678672.a n = A304251 (n + 1)

theorem P1616102808794678672.correct : P1616102808794678672.Spec := by
  intro n
  simp only [A304251, Nat.add_sub_cancel]

end A304251

/-! ## A304251.P14514563906453626767

`A008475(A064988(n+1))`
-/

namespace A304251.P14514563906453626767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A064988 (n + 1)).toNat

end

end A304251.P14514563906453626767

namespace A304251

/-- `A008475(A064988(n+1))` -/
def P14514563906453626767.Spec : Prop :=
  ∀ n, P14514563906453626767.a n = A304251 (n + 1)

end A304251

/-! ## A304251.P665757217927807140

`∑{d}[A064988(n+1), A092509(#)]`
-/

namespace A304251.P665757217927807140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092509 d

end

end A304251.P665757217927807140

namespace A304251

/-- `∑{d}[A064988(n+1), A092509(#)]` -/
def P665757217927807140.Spec : Prop :=
  ∀ n, P665757217927807140.a n = A304251 (n + 1)

end A304251

/-! ## A304251.P15237218213201356554

`A222416(A064988(n+1))-A000007(n)`
-/

namespace A304251.P15237218213201356554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A064988 (n + 1)).toNat - A000007 n

end

end A304251.P15237218213201356554

namespace A304251

/-- `A222416(A064988(n+1))-A000007(n)` -/
def P15237218213201356554.Spec : Prop :=
  ∀ n, P15237218213201356554.a n = A304251 (n + 1)

end A304251

/-! ## A304251.P11578168422516780540

`A222416(A064988(n+1))%A112145(n)`
-/

namespace A304251.P11578168422516780540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (A064988 (n + 1)).toNat) (A112145 n)

end

end A304251.P11578168422516780540

namespace A304251

/-- `A222416(A064988(n+1))%A112145(n)` -/
def P11578168422516780540.Spec : Prop :=
  ∀ n, P11578168422516780540.a n = A304251 (n + 1)

end A304251

/-! ## A304251.P3913283389496968462

`A222416(2*A064988(n+1))-2`
-/

namespace A304251.P3913283389496968462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (2 * A064988 (n + 1)).toNat - 2

end

end A304251.P3913283389496968462

namespace A304251

/-- `A222416(2*A064988(n+1))-2` -/
def P3913283389496968462.Spec : Prop :=
  ∀ n, P3913283389496968462.a n = A304251 (n + 1)

end A304251

/-!
# A304252: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 6*T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A304252, there is no canonical definition to state claims against.
-/

/-! ## A304252.P1894184896340721719

`A013613(A091018(n))`
-/

namespace A304252.P1894184896340721719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (A091018 n).toNat

end

end A304252.P1894184896340721719

/-! ## A304252.P13496077484037899272

`lcm(A128099(n), A304236(n))`
-/

namespace A304252.P13496077484037899272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128099 n) (A304236 n)

end

end A304252.P13496077484037899272

/-! ## A304252.P406125345684265112

`A013613(A056536(n+1)-1)`
-/

namespace A304252.P406125345684265112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (A056536 (n + 1) - 1).toNat

end

end A304252.P406125345684265112

/-! ## A304252.P17736939864995642376

`6^A055087(n)*A011973(n)`
-/

namespace A304252.P17736939864995642376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A055087 n : ℤ) * (A011973 n : ℚ)

end

end A304252.P17736939864995642376

/-! ## A304252.P15242285945816416282

`A000400(n%floor(sqrt(n+1)))*A011973(n)`
-/

namespace A304252.P15242285945816416282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n % Nat.sqrt (n + 1)) * A011973 n

end

end A304252.P15242285945816416282

/-! ## A304252.P1140720635122726141

`A000400(A055087(n))*A011973(n)`
-/

namespace A304252.P1140720635122726141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A055087 n).toNat * A011973 n

end

end A304252.P1140720635122726141

/-! ## A304252.P15596488898645540828

`A000244(A055087(n))*A128099(n)`
-/

namespace A304252.P15596488898645540828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A055087 n).toNat * A128099 n

end

end A304252.P15596488898645540828

/-! ## A304252.P11118118177321473167

`A000079(A055087(n))*A304236(n)`
-/

namespace A304252.P11118118177321473167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A304236 n

end

end A304252.P11118118177321473167

/-! ## A304252.P12350688660251343117

`A059268(A091018(n))*A304236(n)`
-/

namespace A304252.P12350688660251343117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A304236 n

end

end A304252.P12350688660251343117

/-! ## A304252.P7610518135345593631

`A000079(A025685(n+1))*A304236(n)`
-/

namespace A304252.P7610518135345593631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025685 (n + 1)).toNat * A304236 n

end

end A304252.P7610518135345593631

/-!
# A304255: Triangle read by rows: T(0,0) = 1; T(n,k) = 6*T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A304255, there is no canonical definition to state claims against.
-/

/-! ## A304255.P18258619197124418923

`A038255(A091018(n))`
-/

namespace A304255.P18258619197124418923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A091018 n).toNat

end

end A304255.P18258619197124418923

/-! ## A304255.P5125833098315366703

`lcm(A133156(n), A304249(n))`
-/

namespace A304255.P5125833098315366703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133156 n) (A304249 n)

end

end A304255.P5125833098315366703

/-! ## A304255.P12958280945156304021

`A038255(A056536(n+1)-1)`
-/

namespace A304255.P12958280945156304021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A056536 (n + 1) - 1).toNat

end

end A304255.P12958280945156304021

/-! ## A304255.P2456295686687053003

`6^A082375(n)*A011973(n)`
-/

namespace A304255.P2456295686687053003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A082375 n : ℤ) * (A011973 n : ℚ)

end

end A304255.P2456295686687053003

/-! ## A304255.P7337722782429415180

`3^A082375(n)*A207538(n+1)`
-/

namespace A304255.P7337722782429415180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A082375 n : ℤ) * (A207538 (n + 1) : ℚ)

end

end A304255.P7337722782429415180

/-!
# A304256: Number of n X n 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304256, there is no canonical definition to state claims against.
-/

/-! ## A304256.P8582483649287967190

`A304263(∑[4*n]+1)`
-/

namespace A304256.P8582483649287967190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304256.P8582483649287967190

/-! ## A304256.P10525961284648295943

`record[A304263(Δ[A235355(n)])]`
-/

namespace A304256.P10525961284648295943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304256.P10525961284648295943

/-! ## A304256.P10138911318804388384

`record[A304263(A330613(n+1))]`
-/

namespace A304256.P10138911318804388384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304256.P10138911318804388384

/-! ## A304256.P7147206579883394631

`A304263(A001844(n))+char[10]`
-/

namespace A304256.P7147206579883394631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304256.P7147206579883394631

/-! ## A304256.P11631119505962923248

`record[A304263(n+1)/A304236(2*n+1)]`
-/

namespace A304256.P11631119505962923248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304263 (n + 1) : ℚ) / (A304236 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304256.P11631119505962923248

/-!
# A304257: Number of nX2 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304257, there is no canonical definition to state claims against.
-/

/-! ## A304257.P12609871957182749577

`A304263(∑[n+1]+2)`
-/

namespace A304257.P12609871957182749577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304257.P12609871957182749577

/-! ## A304257.P9644396743086119458

`record[A304263(A255552(n+1))]`
-/

namespace A304257.P9644396743086119458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A255552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304257.P9644396743086119458

/-! ## A304257.P2382468796537501820

`record[A010054(n)*A304263(n+2)]`
-/

namespace A304257.P2382468796537501820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304257.P2382468796537501820

/-! ## A304257.P12164918795490241684

`record[A304263(n+1)/A070914(n)]`
-/

namespace A304257.P12164918795490241684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304263 (n + 1) : ℚ) / (A070914 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304257.P12164918795490241684

/-! ## A304257.P13788951048859712808

`record[A304263(n+1)/A135225(n)]`
-/

namespace A304257.P13788951048859712808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304263 (n + 1) : ℚ) / (A135225 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304257.P13788951048859712808

/-!
# A304258: Number of nX3 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304258, there is no canonical definition to state claims against.
-/

/-! ## A304258.P17408813634871075415

`A304263(∑[n+2]+4)`
-/

namespace A304258.P17408813634871075415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304258.P17408813634871075415

/-! ## A304258.P9682300678076755896

`record[A304263(A025796(n)+3)]`
-/

namespace A304258.P9682300678076755896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A025796 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304258.P9682300678076755896

/-! ## A304258.P7560498130273080936

`A304263(A055998(n)+6)+char[19]`
-/

namespace A304258.P7560498130273080936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304258.P7560498130273080936

/-! ## A304258.P3005804964847007317

`A304263(A046691(n)+7)+char[21]`
-/

namespace A304258.P3005804964847007317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304258.P3005804964847007317

/-! ## A304258.P18299508026083954143

`ceil(acot(n))*A304263(A167614(n+1))`
-/

namespace A304258.P18299508026083954143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A304263 (A167614 (n + 1)).toNat

end

end A304258.P18299508026083954143

/-!
# A304259: Number of nX4 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304259, there is no canonical definition to state claims against.
-/

/-! ## A304259.P11242167673861719405

`A304263(∑[n+3]+7)`
-/

namespace A304259.P11242167673861719405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304259.P11242167673861719405

/-! ## A304259.P1490809105710232051

`A304263(A000124(n+3)+3)+char[18]`
-/

namespace A304259.P1490809105710232051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304259.P1490809105710232051

/-! ## A304259.P13746792299166386988

`A304263(A027379(n+1)+7)+char[30]`
-/

namespace A304259.P13746792299166386988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304259.P13746792299166386988

/-! ## A304259.P15684588555036765906

`A007318(floor(n/5))*A304263(A000124(n+3)+3)`
-/

namespace A304259.P15684588555036765906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 5⌋.toNat * A304263 (A000124 (n + 3) + 3).toNat

end

end A304259.P15684588555036765906

/-! ## A304259.P9158085791998644957

`A000108(C(2, n+2))*A304263(A027379(n+1)+7)`
-/

namespace A304259.P9158085791998644957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A304263 (A027379 (n + 1) + 7).toNat

end

end A304259.P9158085791998644957

/-!
# A304260: Number of nX5 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304260, there is no canonical definition to state claims against.
-/

/-! ## A304260.P15376065889324099432

`A304263(A374005(n+1))`
-/

namespace A304260.P15376065889324099432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A374005 (n + 1)).toNat

end

end A304260.P15376065889324099432

/-! ## A304260.P3113682474607294814

`A304263(A167499(n+3))`
-/

namespace A304260.P3113682474607294814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A167499 (n + 3)).toNat

end

end A304260.P3113682474607294814

/-! ## A304260.P15004563698694545217

`A304263(A155212(n)+13)`
-/

namespace A304260.P15004563698694545217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A155212 n + 13).toNat

end

end A304260.P15004563698694545217

/-! ## A304260.P3460727270434762193

`A304263(A056000(n)+15)`
-/

namespace A304260.P3460727270434762193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A056000 n + 15).toNat

end

end A304260.P3460727270434762193

/-! ## A304260.P7840574552963920434

`A304263(eq[7, A066657(n)])`
-/

namespace A304260.P7840574552963920434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304260.P7840574552963920434

/-!
# A304261: Number of nX6 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304261, there is no canonical definition to state claims against.
-/

/-! ## A304261.P505776620302884647

`A304263(∑[n+5]+16)`
-/

namespace A304261.P505776620302884647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304261.P505776620302884647

/-! ## A304261.P15316235662659831602

`A304263(A055998(n+3)+9)+char[16]`
-/

namespace A304261.P15316235662659831602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A055998 (n + 3) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304261.P15316235662659831602

/-! ## A304261.P13225619619892781257

`A304263(A133263(n+5)+4)%A152928(n+2)`
-/

namespace A304261.P13225619619892781257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304263 (A133263 (n + 5) + 4).toNat) (A152928 (n + 2))

end

end A304261.P13225619619892781257

/-! ## A304261.P2920451846455646896

`A304263(A055998(n+3)+9)%A000108(n+6)`
-/

namespace A304261.P2920451846455646896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304263 (A055998 (n + 3) + 9).toNat) (A000108 (n + 6))

end

end A304261.P2920451846455646896

/-! ## A304261.P11866314679210995674

`A000041(C(2, n+2))*A304263(A055998(n+3)+9)`
-/

namespace A304261.P11866314679210995674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A304263 (A055998 (n + 3) + 9).toNat

end

end A304261.P11866314679210995674

/-!
# A304262: Number of nX7 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304262, there is no canonical definition to state claims against.
-/

/-! ## A304262.P6230458294709411231

`A304263(A374008(n+1))`
-/

namespace A304262.P6230458294709411231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A374008 (n + 1)).toNat

end

end A304262.P6230458294709411231

/-! ## A304262.P5937834951826944232

`A304263(eq[11, A066657(n)])`
-/

namespace A304262.P5937834951826944232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304262.P5937834951826944232

/-! ## A304262.P17940233530838820583

`A304263(A166136(n+5)+1)`
-/

namespace A304262.P17940233530838820583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A166136 (n + 5) + 1).toNat

end

end A304262.P17940233530838820583

/-! ## A304262.P2111963205788523708

`A304263(A000124(n+6)+6)`
-/

namespace A304262.P2111963205788523708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A000124 (n + 6) + 6).toNat

end

end A304262.P2111963205788523708

/-! ## A304262.P12149152216017210763

`A304263(A000217(n+6)+7)`
-/

namespace A304262.P12149152216017210763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A000217 (n + 6) + 7).toNat

end

end A304262.P12149152216017210763

/-!
# A304263: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304263, there is no canonical definition to state claims against.
-/

/-! ## A304263.P10861913617671887733

`A305223(n+1)-A325194(A001263(n+1))`
-/

namespace A304263.P10861913617671887733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (n + 1) - A325194 (A001263 (n + 1)).toNat

end

end A304263.P10861913617671887733

/-! ## A304263.P6188173057258041378

`A316801(n+1)-A325194(A001263(n+1))`
-/

namespace A304263.P6188173057258041378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (n + 1) - A325194 (A001263 (n + 1)).toNat

end

end A304263.P6188173057258041378

/-! ## A304263.P10582613390090659652

`A305223(n+1)-A196564(A282230(n+1))`
-/

namespace A304263.P10582613390090659652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (n + 1) - A196564 (A282230 (n + 1)).toNat

end

end A304263.P10582613390090659652

/-! ## A304263.P16726688627060123650

`A316801(n+1)-A196564(A282230(n+1))`
-/

namespace A304263.P16726688627060123650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (n + 1) - A196564 (A282230 (n + 1)).toNat

end

end A304263.P16726688627060123650

/-! ## A304263.P12590621233478137711

`A305223(n+1)-A321537(A278385(n+1))`
-/

namespace A304263.P12590621233478137711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (n + 1) - A321537 (A278385 (n + 1)).toNat

end

end A304263.P12590621233478137711

/-!
# A304264: Number of n X n 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304264, there is no canonical definition to state claims against.
-/

/-! ## A304264.P7249346999924930614

`A304270((n+1)²+n²)`
-/

namespace A304264.P7249346999924930614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 ((n + 1) ^ 2 + n ^ 2)

end

end A304264.P7249346999924930614

/-! ## A304264.P17295136536871258736

`or(char[1], A304270(A001844(n)))`
-/

namespace A304264.P17295136536871258736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304270 (A001844 n).toNat)

end

end A304264.P17295136536871258736

/-! ## A304264.P9157919415650492905

`A304270(A001844(n))+A185246(n)`
-/

namespace A304264.P9157919415650492905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A001844 n).toNat + A185246 n

end

end A304264.P9157919415650492905

/-! ## A304264.P10362171061568928517

`lcm(A020985(n), A304270(A001844(n)))`
-/

namespace A304264.P10362171061568928517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A304270 (A001844 n).toNat)

end

end A304264.P10362171061568928517

/-! ## A304264.P9559613157315419260

`abs(A057077(n)*A304270(A001844(n)))`
-/

namespace A304264.P9559613157315419260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n * A304270 (A001844 n).toNat|

end

end A304264.P9559613157315419260

/-!
# A304265: Number of nX3 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304265, the canonical program `A304265.P7882934036940855486` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304265 has offset 1).

The definition of A304265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304265.P2641173889786295321

`ogf((3+3x^2-5x^3)/(1-x-3x^3))`
-/

namespace A304265.P2641173889786295321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 3, -5] [1, -1, 0, -3] n

end

end A304265.P2641173889786295321

namespace A304265

/-- `ogf((3+3x^2-5x^3)/(1-x-3x^3))` -/
def P2641173889786295321.Spec : Prop :=
  ∀ n, P2641173889786295321.a n = A304265 (n + 1)

end A304265

/-! ## A304265.P7882934036940855486

`a(n-1)+3*a(n-3)` with `a(0)=3, a(1)=3, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304265

/-- `a(n-1)+3*a(n-3)` -/
def P7882934036940855486.Spec : Prop :=
  ∀ n, (P7882934036940855486.a n : ℤ) = A304265 (n + 1)

theorem P7882934036940855486.correct : P7882934036940855486.Spec := by
  intro n
  simp only [A304265, Nat.add_sub_cancel]

end A304265

/-! ## A304265.P529959970097217570

`A304270(∑[n+2]+4)`
-/

namespace A304265.P529959970097217570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304265.P529959970097217570

namespace A304265

/-- `A304270(∑[n+2]+4)` -/
def P529959970097217570.Spec : Prop :=
  ∀ n, P529959970097217570.a n = A304265 (n + 1)

end A304265

/-! ## A304265.P113673393173666518

`A304270(A167614(n+1))%A017237(n)`
-/

namespace A304265.P113673393173666518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304270 (A167614 (n + 1)).toNat) (A017237 n)

end

end A304265.P113673393173666518

namespace A304265

/-- `A304270(A167614(n+1))%A017237(n)` -/
def P113673393173666518.Spec : Prop :=
  ∀ n, P113673393173666518.a n = A304265 (n + 1)

end A304265

/-! ## A304265.P10088083697516700847

`lcm(A210247(n), A304270(A167614(n+1)))`
-/

namespace A304265.P10088083697516700847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A210247 n) (A304270 (A167614 (n + 1)).toNat)

end

end A304265.P10088083697516700847

namespace A304265

/-- `lcm(A210247(n), A304270(A167614(n+1)))` -/
def P10088083697516700847.Spec : Prop :=
  ∀ n, (P10088083697516700847.a n : ℤ) = A304265 (n + 1)

end A304265

/-!
# A304266: Number of nX4 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304266, there is no canonical definition to state claims against.
-/

/-! ## A304266.P10275127418257192027

`A304270(A374004(n+1))`
-/

namespace A304266.P10275127418257192027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A374004 (n + 1)).toNat

end

end A304266.P10275127418257192027

/-! ## A304266.P7712291333747411756

`A304270(A052905(n)+9)`
-/

namespace A304266.P7712291333747411756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A052905 n + 9).toNat

end

end A304266.P7712291333747411756

/-! ## A304266.P16397930214032810375

`A304270(A167614(n+2)+1)`
-/

namespace A304266.P16397930214032810375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A167614 (n + 2) + 1).toNat

end

end A304266.P16397930214032810375

/-! ## A304266.P9234311022521254295

`A304270(A167487(n+2)-3)`
-/

namespace A304266.P9234311022521254295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A167487 (n + 2) - 3).toNat

end

end A304266.P9234311022521254295

/-! ## A304266.P7192748179653627090

`A304270(A055998(n+2))`
-/

namespace A304266.P7192748179653627090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A055998 (n + 2)).toNat

end

end A304266.P7192748179653627090

/-!
# A304267: Number of nX5 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304267, there is no canonical definition to state claims against.
-/

/-! ## A304267.P6866000274109244385

`A304270(A374005(n+1))`
-/

namespace A304267.P6866000274109244385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A374005 (n + 1)).toNat

end

end A304267.P6866000274109244385

/-! ## A304267.P7868450170226844551

`A304270(A167499(n+3))`
-/

namespace A304267.P7868450170226844551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A167499 (n + 3)).toNat

end

end A304267.P7868450170226844551

/-! ## A304267.P2521893972529228640

`A304270(A155212(n)+13)`
-/

namespace A304267.P2521893972529228640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A155212 n + 13).toNat

end

end A304267.P2521893972529228640

/-! ## A304267.P4680402174434913068

`A304270(A056000(n)+15)`
-/

namespace A304267.P4680402174434913068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A056000 n + 15).toNat

end

end A304267.P4680402174434913068

/-! ## A304267.P1189793098275613285

`A304270(A046691(n+3))`
-/

namespace A304267.P1189793098275613285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A046691 (n + 3)).toNat

end

end A304267.P1189793098275613285

/-!
# A304268: Number of nX6 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304268, there is no canonical definition to state claims against.
-/

/-! ## A304268.P6469321092258286510

`A304270(A374007(n+1))`
-/

namespace A304268.P6469321092258286510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A374007 (n + 1)).toNat

end

end A304268.P6469321092258286510

/-! ## A304268.P18375014308500754623

`A304270(A167499(n+4)+1)`
-/

namespace A304268.P18375014308500754623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A167499 (n + 4) + 1).toNat

end

end A304268.P18375014308500754623

/-! ## A304268.P9221888267295669552

`A304270(A000217(n+5)+6)`
-/

namespace A304268.P9221888267295669552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A000217 (n + 5) + 6).toNat

end

end A304268.P9221888267295669552

/-! ## A304268.P2873061620769350592

`A304270(A052905(n+3))`
-/

namespace A304268.P2873061620769350592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A052905 (n + 3)).toNat

end

end A304268.P2873061620769350592

/-! ## A304268.P13476280100885875316

`A304270(Δ[Δ[A006504(n+1)]])`
-/

namespace A304268.P13476280100885875316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (f1 (n + 1) - f1 n).toNat

end

end A304268.P13476280100885875316

/-!
# A304269: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304269, there is no canonical definition to state claims against.
-/

/-! ## A304269.P17437803829155385404

`A304270(A374008(n+1))`
-/

namespace A304269.P17437803829155385404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A374008 (n + 1)).toNat

end

end A304269.P17437803829155385404

/-! ## A304269.P13463658077585701768

`A304270(A167487(n+5))`
-/

namespace A304269.P13463658077585701768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A167487 (n + 5)).toNat

end

end A304269.P13463658077585701768

/-! ## A304269.P7780242562900512890

`A304270(A167499(n+5)+2)`
-/

namespace A304269.P7780242562900512890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A167499 (n + 5) + 2).toNat

end

end A304269.P7780242562900512890

/-! ## A304269.P3420480388725771362

`A304270(A133263(n+6)+5)`
-/

namespace A304269.P3420480388725771362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A133263 (n + 6) + 5).toNat

end

end A304269.P3420480388725771362

/-! ## A304269.P9574065936156630500

`A304270(A000217(n+6)+7)`
-/

namespace A304269.P9574065936156630500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (A000217 (n + 6) + 7).toNat

end

end A304269.P9574065936156630500

/-!
# A304270: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304270, there is no canonical definition to state claims against.
-/

/-! ## A304270.P12007809797230183980

`A303719(n+1)+A163510(A157273(n))`
-/

namespace A304270.P12007809797230183980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (n + 1) + A163510 (A157273 n).toNat

end

end A304270.P12007809797230183980

/-! ## A304270.P12156632370875570044

`A303719(n+1)+A014081(A189111(n+1))`
-/

namespace A304270.P12156632370875570044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (n + 1) + A014081 (A189111 (n + 1)).toNat

end

end A304270.P12156632370875570044

/-! ## A304270.P17145631127254662513

`A303719(n+1)+A014707(A022171(n))`
-/

namespace A304270.P17145631127254662513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (n + 1) + A014707 (A022171 n).toNat

end

end A304270.P17145631127254662513

/-! ## A304270.P5812307750652645258

`A303719(n+1)+A025469(A022345(n))`
-/

namespace A304270.P5812307750652645258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (n + 1) + A025469 (A022345 n).toNat

end

end A304270.P5812307750652645258

/-! ## A304270.P16286401218669049303

`A303719(n+1)-A016389(A022166(n))`
-/

namespace A304270.P16286401218669049303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (n + 1) - A016389 (A022166 n).toNat

end

end A304270.P16286401218669049303

/-!
# A304272: The largest even integer that can be written with n digits in base 3/2.

The programs for A304272, there is no canonical definition to state claims against.
-/

/-! ## A304272.P9014923874097626146

`A024629(A305497(n+1))`
-/

namespace A304272.P9014923874097626146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A305497 (n + 1)).toNat

end

end A304272.P9014923874097626146

/-! ## A304272.P8637391599305747011

`A024629(∑[2*A005428(n)])`
-/

namespace A304272.P8637391599305747011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304272.P8637391599305747011

/-! ## A304272.P3668527590798223249

`A024629(2*A006999(n+1))`
-/

namespace A304272.P3668527590798223249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (2 * A006999 (n + 1)).toNat

end

end A304272.P3668527590798223249

/-! ## A304272.P4761482966837002446

`A024629(A305498(n+2)-2)`
-/

namespace A304272.P4761482966837002446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A305498 (n + 2) - 2).toNat

end

end A304272.P4761482966837002446

/-! ## A304272.P1798599544358538197

`A024629(∑[2*A073941(n+2)])`
-/

namespace A304272.P1798599544358538197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304272.P1798599544358538197

/-!
# A304273: The concatenation of the first n terms is the smallest positive even number with n digits when written in base 3/2 (cf. A024629).

The programs for A304273, there is no canonical definition to state claims against.
-/

/-! ## A304273.P16711543552368660789

`(a(n-1)-A082416(n))²` with `a(0)=2`
-/

namespace A304273.P16711543552368660789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) - A082416 n) ^ 2

end

end A304273.P16711543552368660789

/-! ## A304273.P1865511023470043812

`A205083(n+1)+C(2, n+2)`
-/

namespace A304273.P1865511023470043812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A304273.P1865511023470043812

/-! ## A304273.P11343556223916234504

`A205083(n+1)+A000007(n)`
-/

namespace A304273.P11343556223916234504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A000007 n

end

end A304273.P11343556223916234504

/-! ## A304273.P7155787799945447312

`A054977(n)*A205083(n+1)`
-/

namespace A304273.P7155787799945447312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A205083 (n + 1)

end

end A304273.P7155787799945447312

/-! ## A304273.P4832374489745503717

`A205083(n+1)+A036987(2*n)`
-/

namespace A304273.P4832374489745503717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A036987 (2 * n)

end

end A304273.P4832374489745503717

/-! ## A304273.P1989866780117481634

`A193631(C(2, n))*A205083(n+1)`
-/

namespace A304273.P1989866780117481634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193631 (Nat.choose 2 n) * A205083 (n + 1)

end

end A304273.P1989866780117481634

/-! ## A304273.P15697663265048789736

`and(A000108(a(n-2)), A205083(n+1))` with `a(0)=2, a(1)=1`
-/

namespace A304273.P15697663265048789736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.land (A000108 (a (n - 2)).toNat) (A205083 (n + 1))

end

end A304273.P15697663265048789736

/-! ## A304273.P5747911032431494823

`and(A058281(a(n-2)), A205083(n+1))` with `a(0)=2, a(1)=1`
-/

namespace A304273.P5747911032431494823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.land (A058281 (a (n - 2)).toNat) (A205083 (n + 1))

end

end A304273.P5747911032431494823

/-! ## A304273.P15353497220601495641

`A073941(a(n-1)+1)*A205083(n+1)` with `a(0)=2`
-/

namespace A304273.P15353497220601495641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073941 (a (n - 1) + 1).toNat * A205083 (n + 1)

end

end A304273.P15353497220601495641

/-! ## A304273.P11660634212170986544

`A205083(n*A205083(a(n-1)+1)+1)` with `a(0)=2`
-/

namespace A304273.P11660634212170986544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A205083 ((n : ℤ) * A205083 (a (n - 1) + 1).toNat + 1).toNat

end

end A304273.P11660634212170986544

/-! ## A304273.P12905162428812646758

`A205083(n+1)+A008683(A008574(n))`
-/

namespace A304273.P12905162428812646758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A008683 (A008574 n).toNat

end

end A304273.P12905162428812646758

/-! ## A304273.P16953309909664587564

`A205083(n+1)+A000035(A028625(n))`
-/

namespace A304273.P16953309909664587564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A000035 (A028625 n).toNat

end

end A304273.P16953309909664587564

/-! ## A304273.P12053410713578012957

`A205083(n+1)-A008683(2*A062383(n))`
-/

namespace A304273.P12053410713578012957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) - A008683 (2 * A062383 n).toNat

end

end A304273.P12053410713578012957

/-! ## A304273.P1414387404331153856

`A205083(n+1)-A154955(n+2)`
-/

namespace A304273.P1414387404331153856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) - A154955 (n + 2)

end

end A304273.P1414387404331153856

/-! ## A304273.P241370653300311716

`A205083(n+1)-A008683(A062383(n+1))`
-/

namespace A304273.P241370653300311716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) - A008683 (A062383 (n + 1)).toNat

end

end A304273.P241370653300311716

/-! ## A304273.P6676007734182539433

`A205083(n+1)+A101264(A016921(n))`
-/

namespace A304273.P6676007734182539433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A101264 (A016921 n).toNat

end

end A304273.P6676007734182539433

/-! ## A304273.P10295071528346503621

`A205083(n+1)+A130706(2*n)`
-/

namespace A304273.P10295071528346503621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A130706 (2 * n)

end

end A304273.P10295071528346503621

/-! ## A304273.P9387112297166988771

`A205083(n+1)+A169585(2*n)`
-/

namespace A304273.P9387112297166988771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A169585 (2 * n)

end

end A304273.P9387112297166988771

/-! ## A304273.P8717482491159098751

`A285476(2*n)+A205083(n+1)`
-/

namespace A304273.P8717482491159098751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (2 * n) + A205083 (n + 1)

end

end A304273.P8717482491159098751

/-! ## A304273.P16681112455083727284

`2-A006999(n)%3`
-/

namespace A304273.P16681112455083727284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A006999 n) 3

end

end A304273.P16681112455083727284

/-!
# A304274: The concatenation of the first n elements is the largest positive even number with n digits when written in base 3/2.

The programs for A304274, the canonical program `A304274.P11244077371519869299` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304274 has offset 1).

The definition of A304274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304274.P12236730766343788595

`A304273(n+2)+1`
-/

namespace A304274.P12236730766343788595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 2) + 1

end

end A304274.P12236730766343788595

namespace A304274

/-- `A304273(n+2)+1` -/
def P12236730766343788595.Spec : Prop :=
  ∀ n, P12236730766343788595.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P11244077371519869299

`A305498(n+2)-3/2*A305498(n+1)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A304274

/-- `A305498(n+2)-3/2*A305498(n+1)+1` -/
def P11244077371519869299.Spec : Prop :=
  ∀ n, P11244077371519869299.a n = (A304274 (n + 1) : ℚ)

end A304274

/-! ## A304274.P17397899595632149457

`round(ratio[floor(3/2*a(n-1))])` with `a(0)=2`
-/

namespace A304274.P17397899595632149457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A304274.P17397899595632149457

namespace A304274

/-- `round(ratio[floor(3/2*a(n-1))])` -/
def P17397899595632149457.Spec : Prop :=
  ∀ n, P17397899595632149457.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P9292632925399209463

`gcd(2, A006999(n))`
-/

namespace A304274.P9292632925399209463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A006999 n)

end

end A304274.P9292632925399209463

namespace A304274

/-- `gcd(2, A006999(n))` -/
def P9292632925399209463.Spec : Prop :=
  ∀ n, (P9292632925399209463.a n : ℤ) = A304274 (n + 1)

end A304274

/-! ## A304274.P13416778611916020206

`A205083(n+2)+1`
-/

namespace A304274.P13416778611916020206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 2) + 1

end

end A304274.P13416778611916020206

namespace A304274

/-- `A205083(n+2)+1` -/
def P13416778611916020206.Spec : Prop :=
  ∀ n, P13416778611916020206.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P15240052645104890011

`2-A356556(n+1)`
-/

namespace A304274.P15240052645104890011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A356556 (n + 1)

end

end A304274.P15240052645104890011

namespace A304274

/-- `2-A356556(n+1)` -/
def P15240052645104890011.Spec : Prop :=
  ∀ n, P15240052645104890011.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P3048272585415991546

`A305497(n+1)%3`
-/

namespace A304274.P3048272585415991546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305497 (n + 1)) 3

end

end A304274.P3048272585415991546

namespace A304274

/-- `A305497(n+1)%3` -/
def P3048272585415991546.Spec : Prop :=
  ∀ n, P3048272585415991546.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P12797736006082662114

`gcd(6, A304025(n+1))`
-/

namespace A304274.P12797736006082662114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A304025 (n + 1))

end

end A304274.P12797736006082662114

namespace A304274

/-- `gcd(6, A304025(n+1))` -/
def P12797736006082662114.Spec : Prop :=
  ∀ n, (P12797736006082662114.a n : ℤ) = A304274 (n + 1)

end A304274

/-! ## A304274.P2439923325874812464

`round(ratio[A061418(n+1)])`
-/

namespace A304274.P2439923325874812464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A304274.P2439923325874812464

namespace A304274

/-- `round(ratio[A061418(n+1)])` -/
def P2439923325874812464.Spec : Prop :=
  ∀ n, P2439923325874812464.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P13002234704814349358

`∑[2*A005428(n)]%3`
-/

namespace A304274.P13002234704814349358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A304274.P13002234704814349358

namespace A304274

/-- `∑[2*A005428(n)]%3` -/
def P13002234704814349358.Spec : Prop :=
  ∀ n, P13002234704814349358.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P3736341978063958217

`A061419(n+1)%2+1`
-/

namespace A304274.P3736341978063958217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061419 (n + 1)) 2 + 1

end

end A304274.P3736341978063958217

namespace A304274

/-- `A061419(n+1)%2+1` -/
def P3736341978063958217.Spec : Prop :=
  ∀ n, P3736341978063958217.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P4131608743281778859

`and(1, A070885(n+2))+1`
-/

namespace A304274.P4131608743281778859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A070885 (n + 2)) + 1

end

end A304274.P4131608743281778859

namespace A304274

/-- `and(1, A070885(n+2))+1` -/
def P4131608743281778859.Spec : Prop :=
  ∀ n, P4131608743281778859.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P16486123531332597488

`∑[A073941(n+1)]%2+1`
-/

namespace A304274.P16486123531332597488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A304274.P16486123531332597488

namespace A304274

/-- `∑[A073941(n+1)]%2+1` -/
def P16486123531332597488.Spec : Prop :=
  ∀ n, P16486123531332597488.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P1202481526643339432

`A054977(A083199(n+1))`
-/

namespace A304274.P1202481526643339432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A083199 (n + 1)).toNat

end

end A304274.P1202481526643339432

namespace A304274

/-- `A054977(A083199(n+1))` -/
def P1202481526643339432.Spec : Prop :=
  ∀ n, P1202481526643339432.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P11698512291432921442

`2*A005428(n)-A006999(n)`
-/

namespace A304274.P11698512291432921442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005428 n - A006999 n

end

end A304274.P11698512291432921442

namespace A304274

/-- `2*A005428(n)-A006999(n)` -/
def P11698512291432921442.Spec : Prop :=
  ∀ n, P11698512291432921442.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P13865043135446516496

`gcd(A061418(n+1), A130130(n))`
-/

namespace A304274.P13865043135446516496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061418 (n + 1)) (A130130 n)

end

end A304274.P13865043135446516496

namespace A304274

/-- `gcd(A061418(n+1), A130130(n))` -/
def P13865043135446516496.Spec : Prop :=
  ∀ n, (P13865043135446516496.a n : ℤ) = A304274 (n + 1)

end A304274

/-! ## A304274.P15108707859125249379

`A054977(n*and(1, A006999(n)))`
-/

namespace A304274.P15108707859125249379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n : ℤ) * Int.land 1 (A006999 n)).toNat

end

end A304274.P15108707859125249379

namespace A304274

/-- `A054977(n*and(1, A006999(n)))` -/
def P15108707859125249379.Spec : Prop :=
  ∀ n, P15108707859125249379.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P1652096671553244751

`2-and(A000051(n)², A006999(n))`
-/

namespace A304274.P1652096671553244751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A000051 n ^ 2) (A006999 n)

end

end A304274.P1652096671553244751

namespace A304274

/-- `2-and(A000051(n)², A006999(n))` -/
def P1652096671553244751.Spec : Prop :=
  ∀ n, P1652096671553244751.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P13382868710797542182

`2-and(A020737(n)², A006999(n))`
-/

namespace A304274.P13382868710797542182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A020737 n ^ 2) (A006999 n)

end

end A304274.P13382868710797542182

namespace A304274

/-- `2-and(A020737(n)², A006999(n))` -/
def P13382868710797542182.Spec : Prop :=
  ∀ n, P13382868710797542182.a n = A304274 (n + 1)

end A304274

/-! ## A304274.P16377988686282416703

`2-and(A035089(n)², A006999(n))`
-/

namespace A304274.P16377988686282416703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A035089 n ^ 2) (A006999 n)

end

end A304274.P16377988686282416703

namespace A304274

/-- `2-and(A035089(n)², A006999(n))` -/
def P16377988686282416703.Spec : Prop :=
  ∀ n, P16377988686282416703.a n = A304274 (n + 1)

end A304274

/-!
# A304275: a(n) = Sum_{k = 1..n} gcd(k,n) / cos(Pi*k/n)^2 for odd n.

The programs for A304275, the canonical program `A304275.P15555862402224262054` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304275 has offset 1).

The definition of A304275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304275.P15555862402224262054

`A069097(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A304275

/-- `A069097(2*n+1)` -/
def P15555862402224262054.Spec : Prop :=
  ∀ n, P15555862402224262054.a n = A304275 (n + 1)

theorem P15555862402224262054.correct : P15555862402224262054.Spec := by
  intro n
  simp only [A304275, Nat.add_sub_cancel]

end A304275

/-! ## A304275.P11208222937343833150

`∑{d}[2*n+1, A341772(#)]`
-/

namespace A304275.P11208222937343833150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d

end

end A304275.P11208222937343833150

namespace A304275

/-- `∑{d}[2*n+1, A341772(#)]` -/
def P11208222937343833150.Spec : Prop :=
  ∀ n, P11208222937343833150.a n = A304275 (n + 1)

end A304275

/-! ## A304275.P14535876557033708256

`A316148(2*n+1)/Δ[n²]`
-/

namespace A304275.P14535876557033708256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316148 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A304275.P14535876557033708256

namespace A304275

/-- `A316148(2*n+1)/Δ[n²]` -/
def P14535876557033708256.Spec : Prop :=
  ∀ n, P14535876557033708256.a n = (A304275 (n + 1) : ℚ)

end A304275

/-! ## A304275.P10402522854599004220

`A020478(2*n+1)/(2*n+1)`
-/

namespace A304275.P10402522854599004220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020478 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A304275.P10402522854599004220

namespace A304275

/-- `A020478(2*n+1)/(2*n+1)` -/
def P10402522854599004220.Spec : Prop :=
  ∀ n, P10402522854599004220.a n = (A304275 (n + 1) : ℚ)

end A304275

/-! ## A304275.P11565656048739797595

`A240547(2*n+1)/(2*n+1)`
-/

namespace A304275.P11565656048739797595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240547 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A304275.P11565656048739797595

namespace A304275

/-- `A240547(2*n+1)/(2*n+1)` -/
def P11565656048739797595.Spec : Prop :=
  ∀ n, P11565656048739797595.a n = (A304275 (n + 1) : ℚ)

end A304275

/-! ## A304275.P10775476416679302222

`2*A309322(2*n+1)-A018804(2*n+1)`
-/

namespace A304275.P10775476416679302222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309322 (2 * n + 1) - A018804 (2 * n + 1)

end

end A304275.P10775476416679302222

namespace A304275

/-- `2*A309322(2*n+1)-A018804(2*n+1)` -/
def P10775476416679302222.Spec : Prop :=
  ∀ n, P10775476416679302222.a n = A304275 (n + 1)

end A304275

/-!
# A304291: Composite numbers k such that for all primes p dividing k, p-1 divides k-1 and p+1 divides k+1.

The programs for A304291, there is no canonical definition to state claims against.
-/

/-! ## A304291.P15988139146125739936

`∩[A056729(n+1), A080062(n+1)]`
-/

namespace A304291.P15988139146125739936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304291.P15988139146125739936

/-! ## A304291.P7165977109668941192

`filter[A056729(n+1), A324290(#)]`
-/

namespace A304291.P7165977109668941192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A304291.P7165977109668941192

/-!
# A304293: Number of points of a Koblitz curve E: y^2 + x*y = x^3 + a*x^2 + 1 over a field with 2^n elements.

The programs for A304293, the canonical program `A304293.P17607718605946343988` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304293 has offset 0).

The definition of A304293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304293.P17607718605946343988

`a(n-1)+4*(a(n-3)-1)` with `a(0)=0, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304293

/-- `a(n-1)+4*(a(n-3)-1)` -/
def P17607718605946343988.Spec : Prop :=
  ∀ n, P17607718605946343988.a n = A304293 n

theorem P17607718605946343988.correct : P17607718605946343988.Spec := by
  intro n
  simp only [A304293]

end A304293

/-! ## A304293.P16142404122987055566

`a(n-1)-4*(1-a(n-3))` with `a(0)=0, a(1)=4, a(2)=8`
-/

namespace A304293.P16142404122987055566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 8] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 3))

end

end A304293.P16142404122987055566

namespace A304293

/-- `a(n-1)-4*(1-a(n-3))` -/
def P16142404122987055566.Spec : Prop :=
  ∀ n, P16142404122987055566.a n = A304293 n

theorem P16142404122987055566.correct : P16142404122987055566.Spec := by
  intro n
  simp only [A304293, Nat.add_sub_cancel, A304293.P16142404122987055566.a, A304293.P17607718605946343988.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304293

/-! ## A304293.P4165950310066083902

`A089977(n+1)+A110512(n+2)+1`
-/

namespace A304293.P4165950310066083902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 (n + 1) + (A110512 (n + 2) + 1)

end

end A304293.P4165950310066083902

namespace A304293

/-- `A089977(n+1)+A110512(n+2)+1` -/
def P4165950310066083902.Spec : Prop :=
  ∀ n, P4165950310066083902.a n = A304293 n

end A304293

/-! ## A304293.P9693287347097603242

`A000051(n)-A002249(n)*A033999(n)`
-/

namespace A304293.P9693287347097603242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A002249 n * A033999 n

end

end A304293.P9693287347097603242

namespace A304293

/-- `A000051(n)-A002249(n)*A033999(n)` -/
def P9693287347097603242.Spec : Prop :=
  ∀ n, P9693287347097603242.a n = A304293 n

end A304293

/-! ## A304293.P5734098568573902468

`A089977(n+2)-A004273(A089977(n))`
-/

namespace A304293.P5734098568573902468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 (n + 2) - A004273 (A089977 n).toNat

end

end A304293.P5734098568573902468

namespace A304293

/-- `A089977(n+2)-A004273(A089977(n))` -/
def P5734098568573902468.Spec : Prop :=
  ∀ n, P5734098568573902468.a n = A304293 n

end A304293

/-!
# A304296: Number of n X n 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304296, there is no canonical definition to state claims against.
-/

/-! ## A304296.P14143766039728263640

`A304302((n+1)²+n²)`
-/

namespace A304296.P14143766039728263640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 ((n + 1) ^ 2 + n ^ 2)

end

end A304296.P14143766039728263640

/-! ## A304296.P14602586695845141308

`A054977(n)*A304302(A001844(n))`
-/

namespace A304296.P14602586695845141308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A304302 (A001844 n).toNat

end

end A304296.P14602586695845141308

/-! ## A304296.P10166724967434293744

`A278657(n)*A304302(A001844(n))`
-/

namespace A304296.P10166724967434293744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A304302 (A001844 n).toNat

end

end A304296.P10166724967434293744

/-! ## A304296.P13849701222149715472

`A304302(A001844(n))%A012916(n)`
-/

namespace A304296.P13849701222149715472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304302 (A001844 n).toNat) (A012916 n)

end

end A304296.P13849701222149715472

/-! ## A304296.P5705602523496392460

`lcm(A033999(n), A304302(A001844(n)))`
-/

namespace A304296.P5705602523496392460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A304302 (A001844 n).toNat)

end

end A304296.P5705602523496392460

/-!
# A304297: Number of nX3 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304297, there is no canonical definition to state claims against.
-/

/-! ## A304297.P10024761862309061300

`A304302(∑[n+2]+4)`
-/

namespace A304297.P10024761862309061300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304297.P10024761862309061300

/-! ## A304297.P14355361282999337280

`A304302(A167614(n+1))+A185284(n)`
-/

namespace A304297.P14355361282999337280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A167614 (n + 1)).toNat + A185284 n

end

end A304297.P14355361282999337280

/-! ## A304297.P500134844668378896

`A304302(A167614(n+1))%A017019(n)`
-/

namespace A304297.P500134844668378896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304302 (A167614 (n + 1)).toNat) (A017019 n)

end

end A304297.P500134844668378896

/-! ## A304297.P2491474137354551982

`gcd(A000038(n), A304302(A167614(n+1)))`
-/

namespace A304297.P2491474137354551982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A304302 (A167614 (n + 1)).toNat)

end

end A304297.P2491474137354551982

/-! ## A304297.P5468792084987946783

`lcm(A131554(n), A304302(A167614(n+1)))`
-/

namespace A304297.P5468792084987946783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131554 n) (A304302 (A167614 (n + 1)).toNat)

end

end A304297.P5468792084987946783

/-!
# A304298: Number of nX4 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304298, there is no canonical definition to state claims against.
-/

/-! ## A304298.P6812494334934523321

`A304302(A374004(n+1))`
-/

namespace A304298.P6812494334934523321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A374004 (n + 1)).toNat

end

end A304298.P6812494334934523321

/-! ## A304298.P14224823193514859759

`A304302(A052905(n)+9)`
-/

namespace A304298.P14224823193514859759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A052905 n + 9).toNat

end

end A304298.P14224823193514859759

/-! ## A304298.P17136339817949900746

`A304302(A055999(n)+10)`
-/

namespace A304298.P17136339817949900746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A055999 n + 10).toNat

end

end A304298.P17136339817949900746

/-! ## A304298.P5417932025799344961

`A304302(A167614(n+2)+1)`
-/

namespace A304298.P5417932025799344961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A167614 (n + 2) + 1).toNat

end

end A304298.P5417932025799344961

/-! ## A304298.P17031852049913254984

`A304302(A167499(n+2)-1)`
-/

namespace A304298.P17031852049913254984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A167499 (n + 2) - 1).toNat

end

end A304298.P17031852049913254984

/-!
# A304299: Number of nX5 0..1 arrays with every element unequal to 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A304299, there is no canonical definition to state claims against.
-/

/-! ## A304299.P13966677035231314186

`A304302(A374005(n+1))`
-/

namespace A304299.P13966677035231314186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A374005 (n + 1)).toNat

end

end A304299.P13966677035231314186

/-! ## A304299.P10863565078306853316

`A304302(A167499(n+3))`
-/

namespace A304299.P10863565078306853316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A167499 (n + 3)).toNat

end

end A304299.P10863565078306853316

/-! ## A304299.P11164786060506325517

`A304302(A056000(n)+15)`
-/

namespace A304299.P11164786060506325517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A056000 n + 15).toNat

end

end A304299.P11164786060506325517

/-! ## A304299.P6671663386928700324

`A304302(A000217(n+4)+5)`
-/

namespace A304299.P6671663386928700324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A000217 (n + 4) + 5).toNat

end

end A304299.P6671663386928700324

/-! ## A304299.P13809993395601308468

`A304302(A046691(n+2)+9)`
-/

namespace A304299.P13809993395601308468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (A046691 (n + 2) + 9).toNat

end

end A304299.P13809993395601308468

