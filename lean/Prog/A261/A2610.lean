import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261000: Unordered even-degree bilabeled increasing trees on 2n+1 nodes.

The programs for A261000, there is no canonical definition to state claims against.
-/

/-! ## A261000.P7204346698096369136

`A258659(2*n)`
-/

namespace A261000.P7204346698096369136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258659 (2 * n)

end

end A261000.P7204346698096369136

/-! ## A261000.P15089533702453523726

`3^n*A144853(n)`
-/

namespace A261000.P15089533702453523726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A144853 n

end

end A261000.P15089533702453523726

/-! ## A261000.P17343173170829090634

`record[A258659(A091453(n))]`
-/

namespace A261000.P17343173170829090634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258659 (A091453 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261000.P17343173170829090634

/-! ## A261000.P8422539254830465986

`record[root(A258659(n), A001511(n+1))]`
-/

namespace A261000.P8422539254830465986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258659 n : ℝ) ^ (1 / (A001511 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261000.P8422539254830465986

/-! ## A261000.P5424598531018688712

`record[gcd(A135523(n+1), A258659(n))]`
-/

namespace A261000.P5424598531018688712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135523 (n + 1)) (A258659 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261000.P5424598531018688712

/-!
# A261001: Numbers Q_n arising in computation of number of unordered unilabeled-bilabeled increasing trees.

The programs for A261001, there is no canonical definition to state claims against.
-/

/-! ## A261001.P11248589739901536077

`A261002(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A261001.P11248589739901536077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261002 (n + 1) - a (n - 1)

end

end A261001.P11248589739901536077

/-! ## A261001.P4702895398813686778

`∑[floor(A121894(n+1)/4)]+1`
-/

namespace A261001.P4702895398813686778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121894 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A261001.P4702895398813686778

/-!
# A261002: Number of unordered unilabeled-bilabeled increasing trees.

The programs for A261002, there is no canonical definition to state claims against.
-/

/-! ## A261002.P16984743820942677481

`A026424(A217033(n))+n-1`
-/

namespace A261002.P16984743820942677481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (A217033 n).toNat + ((n : ℤ) - 1)

end

end A261002.P16984743820942677481

/-! ## A261002.P8627488210315588175

`∑[ceil(A368095(2*n)/4)]`
-/

namespace A261002.P8627488210315588175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A368095 (2 * n) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261002.P8627488210315588175

/-!
# A261003: a(n) = A136439(n) + Catalan(n).

The programs for A261003, there is no canonical definition to state claims against.
-/

/-! ## A261003.P1225552376143351472

`floor(root(A124532(3*n+1), 5))`
-/

namespace A261003.P1225552376143351472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124532 (3 * n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A261003.P1225552376143351472

/-! ## A261003.P14366903133125969464

`round(A065190(4*n*a(n-1)+1)/(n+1))` with `a(0)=1`
-/

namespace A261003.P14366903133125969464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((A065190 ((4 * n : ℤ) * a (n - 1) + 1).toNat : ℚ) / (n + 1 : ℚ))

end

end A261003.P14366903133125969464

/-! ## A261003.P13445006795437464843

`∑[A247833(A339843(n))]`
-/

namespace A261003.P13445006795437464843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A339843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261003.P13445006795437464843

/-!
# A261004: Expansion of (-3-164*x-x^2)/(1-99*x+99*x^2-x^3).

The programs for A261004, there is no canonical definition to state claims against.
-/

/-! ## A261004.P7100762952118361228

`4-A269550(n)`
-/

namespace A261004.P7100762952118361228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269550 n

end

end A261004.P7100762952118361228

/-! ## A261004.P14543571026731959065

`A269554(n)-floor(A269551(n)/2)`
-/

namespace A261004.P14543571026731959065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269554 n - ⌊(A269551 n : ℚ) / 2⌋

end

end A261004.P14543571026731959065

/-! ## A261004.P16807692619676410988

`4-(4*A269552(n)-A269556(n))`
-/

namespace A261004.P16807692619676410988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (4 * A269552 n - A269556 n)

end

end A261004.P16807692619676410988

/-! ## A261004.P9160258341078704476

`4-floor(A269556(n)+A269551(n)/2)`
-/

namespace A261004.P9160258341078704476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ⌊(A269556 n : ℚ) + (A269551 n : ℚ) / 2⌋

end

end A261004.P9160258341078704476

/-! ## A261004.P17742169023172814460

`floor(A269550(n)/A269555(n)*A269553(n))`
-/

namespace A261004.P17742169023172814460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269550 n : ℚ) / (A269555 n : ℚ) * (A269553 n : ℚ)⌋

end

end A261004.P17742169023172814460

/-!
# A261005: Number of unlabeled simplicial complexes with n nodes.

The programs for A261005, there is no canonical definition to state claims against.
-/

/-! ## A261005.P12272507006147510754

`∏{e}[2^n, A006602(#)]`
-/

namespace A261005.P12272507006147510754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006602 (Nat.factorization (f1 n) p)

end

end A261005.P12272507006147510754

/-! ## A261005.P16688759137189716843

`A006602(gcd(n, n!²))`
-/

namespace A261005.P16688759137189716843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (Nat.gcd n (Nat.factorial n ^ 2))

end

end A261005.P16688759137189716843

/-! ## A261005.P11128665413909962268

`A006602(floor(acot(n)+n))`
-/

namespace A261005.P11128665413909962268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A261005.P11128665413909962268

/-! ## A261005.P57424043887398098

`A006602(C(C(2, n+1), 2)+n)`
-/

namespace A261005.P57424043887398098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (Nat.choose (Nat.choose 2 (n + 1)) 2 + n)

end

end A261005.P57424043887398098

/-!
# A261006: Number of unlabeled connected simplicial complexes with n nodes.

The programs for A261006, there is no canonical definition to state claims against.
-/

/-! ## A261006.P827422118257986337

`A306505(round(sqrt(n²+1)))-A327437(n)`
-/

namespace A261006.P827422118257986337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A327437 n

end

end A261006.P827422118257986337

/-! ## A261006.P9580765776844306663

`A006602(A233583(n+1))-A327426(n)`
-/

namespace A261006.P9580765776844306663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (A233583 (n + 1)).toNat - A327426 n

end

end A261006.P9580765776844306663

/-! ## A261006.P10084113163891596635

`A261005(n)-A327426(n)%A261005(n)`
-/

namespace A261006.P10084113163891596635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 n - Int.tmod (A327426 n) (A261005 n)

end

end A261006.P10084113163891596635

/-! ## A261006.P7673812064747982966

`(A261005(A233583(n+1))-A327426(n))^A057428(n)²`
-/

namespace A261006.P7673812064747982966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261005 (A233583 (n + 1)).toNat - A327426 n : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A261006.P7673812064747982966

/-!
# A261007: Arises in study of density function for random n X n determinants with entries +1, -1.

The programs for A261007, there is no canonical definition to state claims against.
-/

/-! ## A261007.P16024381873474352688

`and(A000225(A139480(n+2)), A286010(3*(n+1)))`
-/

namespace A261007.P16024381873474352688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A139480 (n + 2)).toNat) (A286010 (3 * (n + 1)))

end

end A261007.P16024381873474352688

/-!
# A261008: Arises in study of density function for random n X n determinants with entries +1, -1.

The programs for A261008, there is no canonical definition to state claims against.
-/

/-! ## A261008.P6547725359163585756

`A020702(C(n², 2)/2)`
-/

namespace A261008.P6547725359163585756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020702 (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 2)).toNat

end

end A261008.P6547725359163585756

/-!
# A261009: Write 2^n in base 3, add up the "digits".

The programs for A261009, there is no canonical definition to state claims against.
-/

/-! ## A261009.P3432443112163504686

`A036461(n)+2*A260683(n)`
-/

namespace A261009.P3432443112163504686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 n + 2 * A260683 n

end

end A261009.P3432443112163504686

/-! ## A261009.P6735141097033905952

`A036461(n)+A005843(A260683(n))`
-/

namespace A261009.P6735141097033905952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 n + A005843 (A260683 n).toNat

end

end A261009.P6735141097033905952

/-! ## A261009.P9228442727871177261

`A020915(n)+A260683(n)-A104320(n)`
-/

namespace A261009.P9228442727871177261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + (A260683 n - A104320 n)

end

end A261009.P9228442727871177261

/-! ## A261009.P6947075564996036013

`A036461(n)+A005843(A265157(n)+n%2)`
-/

namespace A261009.P6947075564996036013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 n + A005843 (A265157 n + ((n % 2 : ℕ) : ℤ)).toNat

end

end A261009.P6947075564996036013

/-! ## A261009.P817868011658713582

`A036461(n)+A005843(A265157(n)+A000035(n))`
-/

namespace A261009.P817868011658713582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 n + A005843 (A265157 n + A000035 n).toNat

end

end A261009.P817868011658713582

/-! ## A261009.P10365189118053514383

`A260683(n)-A001489(A020915(n)-A104320(n))`
-/

namespace A261009.P10365189118053514383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A001489 (A020915 n - A104320 n).toNat

end

end A261009.P10365189118053514383

/-! ## A261009.P12889553975326177507

`A131097(A022331(n))`
-/

namespace A261009.P12889553975326177507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131097 (A022331 n).toNat

end

end A261009.P12889553975326177507

/-! ## A261009.P5768754506625290176

`A131097(∑[A020915(n)])`
-/

namespace A261009.P5768754506625290176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261009.P5768754506625290176

/-! ## A261009.P13970570858757745844

`∑{digits}[A004642(n), #]`
-/

namespace A261009.P13970570858757745844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A261009.P13970570858757745844

/-! ## A261009.P7967307336135914022

`A131097(A202821(n))`
-/

namespace A261009.P7967307336135914022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131097 (A202821 n).toNat

end

end A261009.P7967307336135914022

/-!
# A261011: Positive integers n such that ceiling(n^(1/3)) divides n.

The programs for A261011, the canonical program `A261011.P14013190716216031043` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261011 has offset 1).

The definition of A261011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261011.P2957774196341414116

`record[A064866(n+1)*A074279(n+1)]`
-/

namespace A261011.P2957774196341414116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (n + 1) * A074279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P2957774196341414116

namespace A261011

/-- `record[A064866(n+1)*A074279(n+1)]` -/
def P2957774196341414116.Spec : Prop :=
  ∀ n, P2957774196341414116.a n = A261011 (n + 1)

end A261011

/-! ## A261011.P14013190716216031043

`record[(1-A000330(A074279(n+1)-1)+n)*A074279(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A261011

/-- `record[(1-A000330(A074279(n+1)-1)+n)*A074279(n+1)]` -/
def P14013190716216031043.Spec : Prop :=
  ∀ n, P14013190716216031043.a n = A261011 (n + 1)

theorem P14013190716216031043.correct : P14013190716216031043.Spec := by
  intro n
  simp only [A261011, Nat.add_sub_cancel]

end A261011

/-! ## A261011.P13774423644740203403

`record[gcd(n, A134914(n+1))+n]`
-/

namespace A261011.P13774423644740203403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A134914 (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P13774423644740203403

namespace A261011

/-- `record[gcd(n, A134914(n+1))+n]` -/
def P13774423644740203403.Spec : Prop :=
  ∀ n, (P13774423644740203403.a n : ℤ) = A261011 (n + 1)

end A261011

/-! ## A261011.P9035239655287472361

`record[A003059(A003059(n+1))*A004737(n+1)]`
-/

namespace A261011.P9035239655287472361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A003059 (n + 1)).toNat * A004737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P9035239655287472361

namespace A261011

/-- `record[A003059(A003059(n+1))*A004737(n+1)]` -/
def P9035239655287472361.Spec : Prop :=
  ∀ n, P9035239655287472361.a n = A261011 (n + 1)

end A261011

/-! ## A261011.P14672836162323714247

`record[(A000196(A000196(n))+1)*A033676(n+1)]`
-/

namespace A261011.P14672836162323714247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 (A000196 n).toNat + 1) * A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P14672836162323714247

namespace A261011

/-- `record[(A000196(A000196(n))+1)*A033676(n+1)]` -/
def P14672836162323714247.Spec : Prop :=
  ∀ n, P14672836162323714247.a n = A261011 (n + 1)

end A261011

/-! ## A261011.P2757486239328369190

`record[A002260(n+1)*A293578(A002024(n+1))]`
-/

namespace A261011.P2757486239328369190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A293578 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P2757486239328369190

namespace A261011

/-- `record[A002260(n+1)*A293578(A002024(n+1))]` -/
def P2757486239328369190.Spec : Prop :=
  ∀ n, P2757486239328369190.a n = A261011 (n + 1)

end A261011

/-!
# A261012: Sign(n) (with offset -1): a(n) = 1 if n>0, = -1 if n

The programs for A261012, there is no canonical definition to state claims against.
-/

/-! ## A261012.P15390646784725607227

`ceil(atan(n))-1`
-/

namespace A261012.P15390646784725607227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ - 1

end

end A261012.P15390646784725607227

/-!
# A261013: Irregular triangle read by rows: T(n,k) = number of partitions of n into prime parts in which the largest part is the k-th prime.

The programs for A261013, there is no canonical definition to state claims against.
-/

/-! ## A261013.P18021733569319811490

`A048298(A005900(n))+A007966(A057554(n+1))`
-/

namespace A261013.P18021733569319811490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A005900 n).toNat + A007966 (A057554 (n + 1)).toNat

end

end A261013.P18021733569319811490

/-! ## A261013.P15125609464309110256

`A060500(A057554(n+1)^A272903(n+2))`
-/

namespace A261013.P15125609464309110256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A057554 (n + 1) : ℚ) ^ (A272903 (n + 2) : ℤ))).toNat

end

end A261013.P15125609464309110256

/-! ## A261013.P7330478863216577460

`A061198(A065033(n))^A291684(A000040(n+1))`
-/

namespace A261013.P7330478863216577460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061198 (A065033 n).toNat : ℚ) ^ (A291684 (A000040 (n + 1)).toNat : ℤ)

end

end A261013.P7330478863216577460

/-! ## A261013.P18342665825682167279

`A061198(A065033(n))^A257783(A100725(n+1))`
-/

namespace A261013.P18342665825682167279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061198 (A065033 n).toNat : ℚ) ^ (A257783 (A100725 (n + 1)).toNat : ℤ)

end

end A261013.P18342665825682167279

/-!
# A261016: a(n) = Sum_{k=0..2^n-1} k*A261015(n,k).

The programs for A261016, there is no canonical definition to state claims against.
-/

/-! ## A261016.P3670902559224724236

`∑[A026648(A092431(n+1))+A001654(n)]`
-/

namespace A261016.P3670902559224724236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A092431 (n + 1)).toNat + A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261016.P3670902559224724236

/-! ## A261016.P4837088139032012842

`∑[∑[A000194(A193647(n+1))]]`
-/

namespace A261016.P4837088139032012842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A193647 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261016.P4837088139032012842

/-!
# A261018: First differences of A260273.

The programs for A261018, there is no canonical definition to state claims against.
-/

/-! ## A261018.P4078319169081101885

`Δ[A260273(n+1)]`
-/

namespace A261018.P4078319169081101885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261018.P4078319169081101885

/-! ## A261018.P8727411262920536308

`A260273(n+2)-A260273(n+1)`
-/

namespace A261018.P8727411262920536308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260273 (n + 2) - A260273 (n + 1)

end

end A261018.P8727411262920536308

/-! ## A261018.P16208625227483839691

`A261461(A260273(gcd(n, n+1)+n))`
-/

namespace A261018.P16208625227483839691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A260273 (Nat.gcd n (n + 1) + n)).toNat

end

end A261018.P16208625227483839691

/-! ## A261018.P17448822240184831375

`A261461(A260273(n+1))%A000408(n+1)`
-/

namespace A261018.P17448822240184831375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261461 (A260273 (n + 1)).toNat) (A000408 (n + 1))

end

end A261018.P17448822240184831375

/-! ## A261018.P6721384801232172088

`A261461(A260273(n+1)%A001248(n+1))`
-/

namespace A261018.P6721384801232172088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (Int.tmod (A260273 (n + 1)) (A001248 (n + 1))).toNat

end

end A261018.P6721384801232172088

/-! ## A261018.P2461191310515593592

`A261461(or(1, A030308(n))*A260273(n+1))`
-/

namespace A261018.P2461191310515593592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (Int.lor 1 (A030308 n) * A260273 (n + 1)).toNat

end

end A261018.P2461191310515593592

/-!
# A261020: Numbers k such that the set of the decimal digits is a subgroup of the multiplicative group (Z/mZ)* where m is the sum of the decimal digits of k.

The programs for A261020, there is no canonical definition to state claims against.
-/

/-! ## A261020.P9234221931273385359

`A284062(n+2)%A330810(2*(n+2))`
-/

namespace A261020.P9234221931273385359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284062 (n + 2)) (A330810 (2 * (n + 2)))

end

end A261020.P9234221931273385359

/-! ## A261020.P3318915959904570679

`A284062(n+2)%A284043(A242472(n+1))`
-/

namespace A261020.P3318915959904570679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284062 (n + 2)) (A284043 (A242472 (n + 1)).toNat)

end

end A261020.P3318915959904570679

/-! ## A261020.P15526535952915836595

`eq[11, A265525(n)]`
-/

namespace A261020.P15526535952915836595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261020.P15526535952915836595

/-! ## A261020.P9191753956321493181

`A118759(A284062(n+2))`
-/

namespace A261020.P9191753956321493181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A284062 (n + 2)).toNat

end

end A261020.P9191753956321493181

/-!
# A261021: a(1)=0; for n > 1, a(n) is the number k such that the set of the decimal digits is an additive group Z/mZ where m is the sum of the decimal digits.

The programs for A261021, there is no canonical definition to state claims against.
-/

/-! ## A261021.P7570517281198294910

`eq[A000005(A229853(n)), A329562(n)]`
-/

namespace A261021.P7570517281198294910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A229853 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261021.P7570517281198294910

/-! ## A261021.P3630048215626613468

`A305701(n+3)%A080983(A080951(n))`
-/

namespace A261021.P3630048215626613468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305701 (n + 3)) (A080983 (A080951 n).toNat)

end

end A261021.P3630048215626613468

/-!
# A261022: Numbers that are the sum of 2 successive primes and also twice the sum of 2 lesser successive primes.

The programs for A261022, the canonical program `A261022.P16725820296647045174` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261022 has offset 1).

The definition of A261022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261022.P16725820296647045174

`2*∩[A001043(n+1), A072568(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A261022

/-- `2*∩[A001043(n+1), A072568(n+1)]` -/
def P16725820296647045174.Spec : Prop :=
  ∀ n, (P16725820296647045174.a n : ℤ) = A261022 (n + 1)

theorem P16725820296647045174.correct : P16725820296647045174.Spec := by
  intro n
  simp only [A261022, Nat.add_sub_cancel]

end A261022

/-! ## A261022.P13761682147568327323

`∩[2*A011974(n+1), A011974(n+1)]`
-/

namespace A261022.P13761682147568327323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261022.P13761682147568327323

namespace A261022

/-- `∩[2*A011974(n+1), A011974(n+1)]` -/
def P13761682147568327323.Spec : Prop :=
  ∀ n, (P13761682147568327323.a n : ℤ) = A261022 (n + 1)

end A261022

/-! ## A261022.P9367898130715413476

`∩[2*A164653(n+1), A164653(n+1)]`
-/

namespace A261022.P9367898130715413476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261022.P9367898130715413476

namespace A261022

/-- `∩[2*A164653(n+1), A164653(n+1)]` -/
def P9367898130715413476.Spec : Prop :=
  ∀ n, (P9367898130715413476.a n : ℤ) = A261022 (n + 1)

end A261022

/-! ## A261022.P16222980421245046013

`∩[A001043(n+1), A004277(A011974(n+1))]`
-/

namespace A261022.P16222980421245046013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A011974 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261022.P16222980421245046013

namespace A261022

/-- `∩[A001043(n+1), A004277(A011974(n+1))]` -/
def P16222980421245046013.Spec : Prop :=
  ∀ n, (P16222980421245046013.a n : ℤ) = A261022 (n + 1)

end A261022

/-! ## A261022.P15111412442089863959

`A004277(∩[A001043(n+1), A024675(n+1)])`
-/

namespace A261022.P15111412442089863959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A261022.P15111412442089863959

namespace A261022

/-- `A004277(∩[A001043(n+1), A024675(n+1)])` -/
def P15111412442089863959.Spec : Prop :=
  ∀ n, P15111412442089863959.a n = A261022 (n + 1)

end A261022

/-! ## A261022.P14975732029940723796

`A005843(∩[A001043(n+1), A024675(n+1)])`
-/

namespace A261022.P14975732029940723796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A261022.P14975732029940723796

namespace A261022

/-- `A005843(∩[A001043(n+1), A024675(n+1)])` -/
def P14975732029940723796.Spec : Prop :=
  ∀ n, P14975732029940723796.a n = A261022 (n + 1)

end A261022

/-! ## A261022.P13287521461435904457

`A004277(∩[A001043(n+1), A072568(n+1)])`
-/

namespace A261022.P13287521461435904457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A261022.P13287521461435904457

namespace A261022

/-- `A004277(∩[A001043(n+1), A072568(n+1)])` -/
def P13287521461435904457.Spec : Prop :=
  ∀ n, P13287521461435904457.a n = A261022 (n + 1)

end A261022

/-! ## A261022.P2639938914563764864

`∩[A001043(n+1), A004275(A092949(n+1))]`
-/

namespace A261022.P2639938914563764864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A092949 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261022.P2639938914563764864

namespace A261022

/-- `∩[A001043(n+1), A004275(A092949(n+1))]` -/
def P2639938914563764864.Spec : Prop :=
  ∀ n, (P2639938914563764864.a n : ℤ) = A261022 (n + 1)

end A261022

/-! ## A261022.P2883672730212928701

`∩[A011974(n+1), A004275(A092949(n+1))]`
-/

namespace A261022.P2883672730212928701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A092949 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261022.P2883672730212928701

namespace A261022

/-- `∩[A011974(n+1), A004275(A092949(n+1))]` -/
def P2883672730212928701.Spec : Prop :=
  ∀ n, (P2883672730212928701.a n : ℤ) = A261022 (n + 1)

end A261022

/-! ## A261022.P7542799618789667557

`A005843(∩[2*A024675(n+1), A024675(n+1)])`
-/

namespace A261022.P7542799618789667557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A261022.P7542799618789667557

namespace A261022

/-- `A005843(∩[2*A024675(n+1), A024675(n+1)])` -/
def P7542799618789667557.Spec : Prop :=
  ∀ n, P7542799618789667557.a n = A261022 (n + 1)

end A261022

/-!
# A261023: Least number k such that prime(n) = sigma(k) - k - 1.

The programs for A261023, there is no canonical definition to state claims against.
-/

/-! ## A261023.P10524734177551216100

`A070015(A008864(n+1))`
-/

namespace A261023.P10524734177551216100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A008864 (n + 1)).toNat

end

end A261023.P10524734177551216100

/-! ## A261023.P17440445855998938719

`A070016(p?[comp[n²]])`
-/

namespace A261023.P17440445855998938719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A261023.P17440445855998938719

/-! ## A261023.P9679191146578824517

`A070016(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A261023.P9679191146578824517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A261023.P9679191146578824517

/-! ## A261023.P8683299223585863226

`A070016(A000040(n+1))`
-/

namespace A261023.P8683299223585863226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A000040 (n + 1)).toNat

end

end A261023.P8683299223585863226

/-! ## A261023.P11054631075880313810

`A070015(A028815(n+1))`
-/

namespace A261023.P11054631075880313810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A028815 (n + 1)).toNat

end

end A261023.P11054631075880313810

/-! ## A261023.P14021381011825950909

`A070016(A008578(n+2))`
-/

namespace A261023.P14021381011825950909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A008578 (n + 2)).toNat

end

end A261023.P14021381011825950909

/-! ## A261023.P3236367677129031762

`A070016(A182986(n+2))`
-/

namespace A261023.P3236367677129031762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A182986 (n + 2)).toNat

end

end A261023.P3236367677129031762

/-! ## A261023.P7425670066701016391

`A070015(A299763(n+2))`
-/

namespace A261023.P7425670066701016391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A299763 (n + 2)).toNat

end

end A261023.P7425670066701016391

/-! ## A261023.P16373940897346407460

`A070016(record[A006530(n+2)])`
-/

namespace A261023.P16373940897346407460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261023.P16373940897346407460

/-! ## A261023.P9034546828197933337

`A070016(record[A014963(n+2)])`
-/

namespace A261023.P9034546828197933337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261023.P9034546828197933337

/-! ## A261023.P1701618672731948178

`A070016(record[A020639(n+2)])`
-/

namespace A261023.P1701618672731948178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261023.P1701618672731948178

/-! ## A261023.P1533180568201614011

`A070015(A000040(n+1)+1)`
-/

namespace A261023.P1533180568201614011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A000040 (n + 1) + 1).toNat

end

end A261023.P1533180568201614011

/-! ## A261023.P12472259337959864891

`A070016(A006093(n+1)+1)`
-/

namespace A261023.P12472259337959864891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A006093 (n + 1) + 1).toNat

end

end A261023.P12472259337959864891

/-! ## A261023.P13114851417212324335

`A359132(A000040(n+1)+1)`
-/

namespace A261023.P13114851417212324335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (A000040 (n + 1) + 1).toNat

end

end A261023.P13114851417212324335

/-! ## A261023.P5245180473072448815

`A070015(A008578(n+2)+1)`
-/

namespace A261023.P5245180473072448815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A008578 (n + 2) + 1).toNat

end

end A261023.P5245180473072448815

/-! ## A261023.P11626584099387679309

`A070016(A008864(n+1)-1)`
-/

namespace A261023.P11626584099387679309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (A008864 (n + 1) - 1).toNat

end

end A261023.P11626584099387679309

/-!
# A261029: Number of ways to write n in the form F(x,y,z) = x^3 + y^3 + z^3 - 3xyz, where 0 <= x <= y <= z and z >= x+1.

The programs for A261029, there is no canonical definition to state claims against.
-/

/-! ## A261029.P12685057765256408877

`A000292(A000001(n))%A111629(2*(n+2))`
-/

namespace A261029.P12685057765256408877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A000001 n).toNat) (A111629 (2 * (n + 2)))

end

end A261029.P12685057765256408877

/-! ## A261029.P4711495919587601415

`A011737(A157384(n+1))+A011655(n)`
-/

namespace A261029.P4711495919587601415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011737 (A157384 (n + 1)).toNat + A011655 n

end

end A261029.P4711495919587601415

/-! ## A261029.P9233576755415176711

`A005091(or(A331530(n), A331532(n+2)))`
-/

namespace A261029.P9233576755415176711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (Int.lor (A331530 n) (A331532 (n + 2))).toNat

end

end A261029.P9233576755415176711

/-! ## A261029.P7436989064085456257

`A353472(A288247(n+4))+n²%3`
-/

namespace A261029.P7436989064085456257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (A288247 (n + 4)).toNat + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A261029.P7436989064085456257

/-! ## A261029.P4547527095761349982

`A156264(A339324(3*n+4))-A037011(n+1)`
-/

namespace A261029.P4547527095761349982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A339324 (3 * n + 4)).toNat - A037011 (n + 1)

end

end A261029.P4547527095761349982

/-!
# A261030: Numbers k such that sqrt(k + sqrt(k + sqrt(k + ...))) is an even perfect number.

The programs for A261030, there is no canonical definition to state claims against.
-/

/-! ## A261030.P8712160953523469792

`2^(A000043(n+1)-2)*(2^A000043(n+1)-2)*(2^A000043(n+1)-1)*(2^A000043(n+1)+1)`
-/

namespace A261030.P8712160953523469792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) - 2 : ℤ) * ((2 : ℚ) ^ (A000043 (n + 1) : ℤ) - 2) * ((2 : ℚ) ^ (A000043 (n + 1) : ℤ) - 1) * ((2 : ℚ) ^ (A000043 (n + 1) : ℤ) + 1)

end

end A261030.P8712160953523469792

/-! ## A261030.P1678949231497438346

`2*C(A000396(n+1), 2)`
-/

namespace A261030.P1678949231497438346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000396 (n + 1)).toNat 2

end

end A261030.P1678949231497438346

/-! ## A261030.P11412376783136520964

`A133051(n+1)-A000396(n+1)`
-/

namespace A261030.P11412376783136520964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133051 (n + 1) - A000396 (n + 1)

end

end A261030.P11412376783136520964

/-! ## A261030.P17328522897713636395

`A000396(n+1)*A135627(n+1)`
-/

namespace A261030.P17328522897713636395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) * A135627 (n + 1)

end

end A261030.P17328522897713636395

/-!
# A261031: Euler transform of Lucas numbers.

The programs for A261031, there is no canonical definition to state claims against.
-/

/-! ## A261031.P12031260488823433665

`A002024(A293732(n)²)`
-/

namespace A261031.P12031260488823433665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A293732 n ^ 2).toNat

end

end A261031.P12031260488823433665

/-! ## A261031.P3384811841520818382

`A002024(A317792(n)²)`
-/

namespace A261031.P3384811841520818382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A317792 n ^ 2).toNat

end

end A261031.P3384811841520818382

/-! ## A261031.P18085099770582985305

`A123578(A293732(n)²)`
-/

namespace A261031.P18085099770582985305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A293732 n ^ 2).toNat

end

end A261031.P18085099770582985305

/-!
# A261032: a(n) = (-1)^n*(n^8 + 4*n^7 - 14*n^5 + 28*n^3 - 17*n)/2.

The programs for A261032, the canonical program `A261032.P17032210878951759451` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261032 has offset 0).

The definition of A261032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(n^8+4*n^7-14*n^5+28*n^3-17*n)/2` (program `A261032.P4805232733429371093`, by `A261032.P4805232733429371093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261032.P4805232733429371093

`(-1)^n*(n^8+4*n^7-14*n^5+28*n^3-17*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261032.P4805232733429371093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * ((n ^ 8 + 4 * n ^ 7 : ℤ) - (14 * n ^ 5 : ℤ) + (28 * n ^ 3 : ℤ) - (17 * n : ℤ)) : ℚ) / 2

end

end A261032.P4805232733429371093

namespace A261032

/-- `(-1)^n*(n^8+4*n^7-14*n^5+28*n^3-17*n)/2` -/
def P4805232733429371093.Spec : Prop :=
  ∀ n, P4805232733429371093.a n = (A261032 n : ℚ)

theorem P4805232733429371093.correct : P4805232733429371093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A261032, Nat.add_sub_cancel, A261032.P4805232733429371093.a, A261032.P17032210878951759451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A261032, Nat.add_sub_cancel, A261032.P4805232733429371093.a, A261032.P17032210878951759451.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A261032

/-! ## A261032.P17032210878951759451

`a(n-1)+n²²²*(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261032

/-- `a(n-1)+n²²²*(-1)^n` -/
def P17032210878951759451.Spec : Prop :=
  ∀ n, P17032210878951759451.a n = A261032 n

theorem P17032210878951759451.correct : P17032210878951759451.Spec := by
  intro n
  simp only [A261032]

end A261032

/-! ## A261032.P8362167273308694073

`∑[A001016(n)/(-1)^n]`
-/

namespace A261032.P8362167273308694073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261032.P8362167273308694073

namespace A261032

/-- `∑[A001016(n)/(-1)^n]` -/
def P8362167273308694073.Spec : Prop :=
  ∀ n, P8362167273308694073.a n = (A261032 n : ℚ)

end A261032

/-! ## A261032.P10336846242023385736

`∑[A001016(n)*A033999(n)]`
-/

namespace A261032.P10336846242023385736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261032.P10336846242023385736

namespace A261032

/-- `∑[A001016(n)*A033999(n)]` -/
def P10336846242023385736.Spec : Prop :=
  ∀ n, P10336846242023385736.a n = A261032 n

end A261032

/-! ## A261032.P18380857643263915996

`-∑[A001016(n)*A165326(n)]`
-/

namespace A261032.P18380857643263915996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261032.P18380857643263915996

namespace A261032

/-- `-∑[A001016(n)*A165326(n)]` -/
def P18380857643263915996.Spec : Prop :=
  ∀ n, P18380857643263915996.a n = A261032 n

end A261032

/-!
# A261034: Numbers m such that 3*m is squarefree.

The programs for A261034, there is no canonical definition to state claims against.
-/

/-! ## A261034.P6292126748187681797

`record[∏{p}[comp[3*n]², #]]`
-/

namespace A261034.P6292126748187681797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261034.P6292126748187681797

/-! ## A261034.P2330723150352719959

`record[∏{p}[3*(n+1), #]/3]`
-/

namespace A261034.P2330723150352719959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261034.P2330723150352719959

/-! ## A261034.P16120303739427796476

`record[∏{p}[3*(n-1), #]]/3`
-/

namespace A261034.P16120303739427796476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3

end

end A261034.P16120303739427796476

/-! ## A261034.P6290539617726065982

`record[∏{p}[3*n, #]-2*n]`
-/

namespace A261034.P6290539617726065982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261034.P6290539617726065982

/-! ## A261034.P10538592613656553925

`lt[2*n+1, ∏{p}[6*n, #]]`
-/

namespace A261034.P10538592613656553925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261034.P10538592613656553925

/-! ## A261034.P16558287454677479783

`record[(n+1)/∏{e}[3*(n+1), #]]`
-/

namespace A261034.P16558287454677479783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261034.P16558287454677479783

/-! ## A261034.P7431098849036897072

`record[A216913(n+1)]`
-/

namespace A261034.P7431098849036897072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261034.P7431098849036897072

/-! ## A261034.P12892238172243029591

`record[A106610(∏{p}[n, #])]`
-/

namespace A261034.P12892238172243029591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261034.P12892238172243029591

/-! ## A261034.P3848784969748726761

`eq[1, A359377(n+1)]+1`
-/

namespace A261034.P3848784969748726761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A261034.P3848784969748726761

/-!
# A261036: Table read by rows: number of complete partitions of n with largest part = k.

The programs for A261036, there is no canonical definition to state claims against.
-/

/-! ## A261036.P7612808630243482201

`A055642(and(A056899(n+3), A136394(n)))`
-/

namespace A261036.P7612808630243482201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.land (A056899 (n + 3)) (A136394 n)).toNat

end

end A261036.P7612808630243482201

/-! ## A261036.P5454144093213473263

`A043537(A136394(n)+A046079(2*(n+1)))`
-/

namespace A261036.P5454144093213473263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A136394 n + A046079 (2 * (n + 1))).toNat

end

end A261036.P5454144093213473263

/-!
# A261037: The number of overpartitions of n with restricted odd differences and smallest part both odd and overlined.

The programs for A261037, there is no canonical definition to state claims against.
-/

/-! ## A261037.P10135716281920128683

`A093697(A226622(n))`
-/

namespace A261037.P10135716281920128683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A226622 n).toNat

end

end A261037.P10135716281920128683

/-! ## A261037.P11263821495244672701

`A279385(A279328(n))`
-/

namespace A261037.P11263821495244672701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A279328 n).toNat

end

end A261037.P11263821495244672701

/-! ## A261037.P8813764746557605472

`A226066(A081610(n)+A000041(n))`
-/

namespace A261037.P8813764746557605472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (A081610 n + A000041 n).toNat

end

end A261037.P8813764746557605472

/-! ## A261037.P12403344904178991097

`A098613(n)+A084938(A309862(n))`
-/

namespace A261037.P12403344904178991097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098613 n + A084938 (A309862 n).toNat

end

end A261037.P12403344904178991097

/-! ## A261037.P17986678423748095328

`A106747(n)+A106744(A280423(n))`
-/

namespace A261037.P17986678423748095328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + A106744 (A280423 n).toNat

end

end A261037.P17986678423748095328

/-!
# A261041: Number of partitions of subsets of {1,...,n}, where consecutive integers are required to be in different parts.

The programs for A261041, there is no canonical definition to state claims against.
-/

/-! ## A261041.P16135925549505387187

`∑[A376077(n)]`
-/

namespace A261041.P16135925549505387187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261041.P16135925549505387187

/-! ## A261041.P1340343822185874271

`∪[A215954(n+1), A216026(n+1)]`
-/

namespace A261041.P1340343822185874271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261041.P1340343822185874271

/-! ## A261041.P14310896874289640607

`∑[A001462(A205576(n))]`
-/

namespace A261041.P14310896874289640607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A205576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261041.P14310896874289640607

/-!
# A261042: Generating function g(0) where g(k) = 1 - x*2*(k+1)*(k+2)/(x*2*(k+1)*(k+2) - 1/g(k+1)).

The programs for A261042, there is no canonical definition to state claims against.
-/

/-! ## A261042.P7467441328811075080

`A253165(n)/2^n`
-/

namespace A261042.P7467441328811075080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253165 n : ℚ) / (2 ^ n : ℚ)

end

end A261042.P7467441328811075080

/-! ## A261042.P13651451473733396100

`2^n*record[A009006(n)]`
-/

namespace A261042.P13651451473733396100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261042.P13651451473733396100

/-! ## A261042.P6659693167602005643

`2^n*A000182(n+1)`
-/

namespace A261042.P6659693167602005643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000182 (n + 1)

end

end A261042.P6659693167602005643

/-! ## A261042.P6636905615988349486

`4^n*A002105(n+1)`
-/

namespace A261042.P6636905615988349486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A002105 (n + 1)

end

end A261042.P6636905615988349486

/-! ## A261042.P832404730729239634

`2^n*A000111(Δ[n²])`
-/

namespace A261042.P832404730729239634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A261042.P832404730729239634

/-!
# A261043: Number of multisets of nonempty words with a total of n letters over binary alphabet such that all letters occur at least once in the multiset.

The programs for A261043, there is no canonical definition to state claims against.
-/

/-! ## A261043.P4476614821147810893

`A257740(A133263(n))`
-/

namespace A261043.P4476614821147810893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A133263 n).toNat

end

end A261043.P4476614821147810893

/-! ## A261043.P6355241090458015063

`A257740(A238531(n+1))`
-/

namespace A261043.P6355241090458015063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A238531 (n + 1)).toNat

end

end A261043.P6355241090458015063

/-! ## A261043.P8812237293349986340

`A257740(A179865(n+1)+2)`
-/

namespace A261043.P8812237293349986340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A179865 (n + 1) + 2).toNat

end

end A261043.P8812237293349986340

/-! ## A261043.P17696075266617358077

`A257740(A134869(n+1)-n)`
-/

namespace A261043.P17696075266617358077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A261043.P17696075266617358077

/-! ## A261043.P5546687956133880789

`A257740(ceil(A000124(n)+acot(n)))`
-/

namespace A261043.P5546687956133880789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 ⌈(A000124 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A261043.P5546687956133880789

/-! ## A261043.P5127018974162282365

`A257740(A028310(A000217(n))+2)`
-/

namespace A261043.P5127018974162282365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A028310 (A000217 n).toNat + 2).toNat

end

end A261043.P5127018974162282365

/-! ## A261043.P10081211782537930311

`A257740(A057427(n)+A000124(n))`
-/

namespace A261043.P10081211782537930311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A057427 n + A000124 n).toNat

end

end A261043.P10081211782537930311

/-! ## A261043.P5093217091351958270

`A257740(A178334(n)+A000124(n))`
-/

namespace A261043.P5093217091351958270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A178334 n + A000124 n).toNat

end

end A261043.P5093217091351958270

/-! ## A261043.P14942952093770409990

`A257740(A000124(n)-A057428(n))`
-/

namespace A261043.P14942952093770409990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A000124 n - A057428 n).toNat

end

end A261043.P14942952093770409990

/-!
# A261044: Number of solutions to c(1)*prime(4)+...+c(n)*prime(n+3) = -2, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A261044, there is no canonical definition to state claims against.
-/

/-! ## A261044.P10542352272430550177

`and(A181578(A004697(n)), A344677(n))`
-/

namespace A261044.P10542352272430550177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181578 (A004697 n).toNat) (A344677 n)

end

end A261044.P10542352272430550177

/-!
# A261045: Number of solutions to c(1)*prime(4) + c(2)*prime(5) + ... + c(2n-1)*prime(2n+2) = -1, where c(i) = +-1 for i>1, c(1) = 1.

The programs for A261045, there is no canonical definition to state claims against.
-/

/-! ## A261045.P6708467378688437856

`A224791(A283315(n))%A255062(n+3)`
-/

namespace A261045.P6708467378688437856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224791 (A283315 n).toNat) (A255062 (n + 3))

end

end A261045.P6708467378688437856

/-!
# A261046: Irregular triangle read by rows: the first column consists of the odd numbers repeated but without the first 1. Row n (n>=0) contains floor(n/2)=1 terms. Every row contains successive odd numbers.

The programs for A261046, there is no canonical definition to state claims against.
-/

/-! ## A261046.P135772345611500983

`A158405(eq[0, A305612(A061896(n))])`
-/

namespace A261046.P135772345611500983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 (A061896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261046.P135772345611500983

/-! ## A261046.P11383290476567848680

`A158405(eq[1, A000079(A061896(n))])`
-/

namespace A261046.P11383290476567848680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A061896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261046.P11383290476567848680

/-! ## A261046.P8769192194744306402

`A131507(A090894(n)%A166089(n))`
-/

namespace A261046.P8769192194744306402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (Int.tmod (A090894 n) (A166089 n)).toNat

end

end A261046.P8769192194744306402

/-! ## A261046.P12822203472650443604

`A005408(A322832(n)%A166089(n))`
-/

namespace A261046.P12822203472650443604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A322832 n) (A166089 n)).toNat

end

end A261046.P12822203472650443604

/-! ## A261046.P6045685945652952888

`2*A000120(A263133(n+1))+1`
-/

namespace A261046.P6045685945652952888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 (A263133 (n + 1)).toNat + 1

end

end A261046.P6045685945652952888

/-! ## A261046.P1467165180497216257

`2*A033265(A263132(n+1))+1`
-/

namespace A261046.P1467165180497216257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033265 (A263132 (n + 1)).toNat + 1

end

end A261046.P1467165180497216257

/-! ## A261046.P11812096685621163895

`A292849(A340349(A063787(A263132(n+1))))`
-/

namespace A261046.P11812096685621163895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292849 (A340349 (A063787 (A263132 (n + 1)).toNat).toNat).toNat

end

end A261046.P11812096685621163895

/-!
# A261047: Euler transform of (n+1)!.

The programs for A261047, there is no canonical definition to state claims against.
-/

/-! ## A261047.P10275693800099054842

`A285869(A326175(3*n+2)+A246521(n+1))`
-/

namespace A261047.P10275693800099054842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A326175 (3 * n + 2) + A246521 (n + 1)).toNat

end

end A261047.P10275693800099054842

/-!
# A261048: Second column of the triangle A085843.

The programs for A261048, there is no canonical definition to state claims against.
-/

/-! ## A261048.P16725967248373931807

`A085843(∑[n+1]+1)`
-/

namespace A261048.P16725967248373931807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085843 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261048.P16725967248373931807

/-! ## A261048.P8102776457153521389

`record[A085843(A257504(n+1))]`
-/

namespace A261048.P8102776457153521389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085843 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261048.P8102776457153521389

/-! ## A261048.P8935156601450026803

`record[gcd(A085843(n), A097230(n))]`
-/

namespace A261048.P8935156601450026803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085843 n) (A097230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261048.P8935156601450026803

/-! ## A261048.P7524588814282948579

`record[gcd(A085838(n), A085843(n+1))]`
-/

namespace A261048.P7524588814282948579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085838 n) (A085843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261048.P7524588814282948579

/-!
# A261049: Expansion of Product_{k>=1} (1+x^k)^(p(k)), where p(k) is the partition function.

The programs for A261049, there is no canonical definition to state claims against.
-/

/-! ## A261049.P3520050698202080733

`A359267(A115993(n))`
-/

namespace A261049.P3520050698202080733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359267 (A115993 n).toNat

end

end A261049.P3520050698202080733

/-! ## A261049.P706873610224007948

`A393562(A165527(n))`
-/

namespace A261049.P706873610224007948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 (A165527 n).toNat

end

end A261049.P706873610224007948

/-! ## A261049.P12134777272513989882

`A320921(n)+A057356(A000079(n))`
-/

namespace A261049.P12134777272513989882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n + A057356 (A000079 n).toNat

end

end A261049.P12134777272513989882

/-! ## A261049.P4705248589093585344

`A316355(A326355(n)+A298340(n))`
-/

namespace A261049.P4705248589093585344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A326355 n + A298340 n).toNat

end

end A261049.P4705248589093585344

/-!
# A261050: Expansion of Product_{k>=1} (1+x^k)^(Fibonacci(k)).

The programs for A261050, there is no canonical definition to state claims against.
-/

/-! ## A261050.P14626613741475445621

`A220844(A024502(n))`
-/

namespace A261050.P14626613741475445621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220844 (A024502 n).toNat

end

end A261050.P14626613741475445621

/-! ## A261050.P15468152981894614309

`A103128(A289590(n+1))`
-/

namespace A261050.P15468152981894614309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A289590 (n + 1)).toNat

end

end A261050.P15468152981894614309

/-! ## A261050.P7306197202684480728

`A225687(A056198(n+1)-n)`
-/

namespace A261050.P7306197202684480728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A056198 (n + 1) - (n : ℤ)).toNat

end

end A261050.P7306197202684480728

/-! ## A261050.P28021019899381998

`A002024(A055099(floor(n-atan(n))))`
-/

namespace A261050.P28021019899381998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A055099 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A261050.P28021019899381998

/-! ## A261050.P15260784080550989922

`floor(A035615(n+4)/A010411(2*n+3))`
-/

namespace A261050.P15260784080550989922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035615 (n + 4) : ℚ) / (A010411 (2 * n + 3) : ℚ)⌋

end

end A261050.P15260784080550989922

/-!
# A261051: Expansion of Product_{k>=1} (1+x^k)^(Lucas(k)).

The programs for A261051, there is no canonical definition to state claims against.
-/

/-! ## A261051.P10960455778228906806

`A261049(n)+A138366(A261049(n))`
-/

namespace A261051.P10960455778228906806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261049 n + A138366 (A261049 n).toNat

end

end A261051.P10960455778228906806

/-! ## A261051.P15622818469769281422

`A284359(A129442(n))-A299886(n+1)`
-/

namespace A261051.P15622818469769281422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A129442 n).toNat - A299886 (n + 1)

end

end A261051.P15622818469769281422

/-! ## A261051.P3137930700784103977

`A262689(A052919(n)*A235648(n+1))`
-/

namespace A261051.P3137930700784103977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A052919 n * A235648 (n + 1)).toNat

end

end A261051.P3137930700784103977

/-! ## A261051.P1567171387140331938

`A262689(A100702(n)*A235648(n+1))`
-/

namespace A261051.P1567171387140331938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A100702 n * A235648 (n + 1)).toNat

end

end A261051.P1567171387140331938

/-!
# A261052: Expansion of Product_{k>=1} (1+x^k)^(k!).

The programs for A261052, there is no canonical definition to state claims against.
-/

/-! ## A261052.P11022259159226634283

`A265950(n)+A124790(A124791(n))`
-/

namespace A261052.P11022259159226634283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265950 n + A124790 (A124791 n).toNat

end

end A261052.P11022259159226634283

/-! ## A261052.P6396662366946635877

`A349402(A000700(3*n+4))+A265950(n)`
-/

namespace A261052.P6396662366946635877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349402 (A000700 (3 * n + 4)).toNat + A265950 n

end

end A261052.P6396662366946635877

/-!
# A261053: Expansion of Product_{k>=1} (1+x^k)^(k^k).

The programs for A261053, there is no canonical definition to state claims against.
-/

/-! ## A261053.P10073388954606069589

`A004525(A322451(n)+A052622(n))`
-/

namespace A261053.P10073388954606069589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A322451 n + A052622 n).toNat

end

end A261053.P10073388954606069589

/-! ## A261053.P6336094712384735975

`A265949(n)+A037851(A265949(n))`
-/

namespace A261053.P6336094712384735975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265949 n + A037851 (A265949 n).toNat

end

end A261053.P6336094712384735975

/-!
# A261054: Expansion of ( 2+x-x^2+x^3 ) / (1-x^2-x)^3 .

The programs for A261054, the canonical program `A261054.P9506361650987879936` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261054 has offset 0).

The definition of A261054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x-x^2+x^3)/(1-3x+5x^3-3x^5-x^6))` (program `A261054.P9506361650987879936`, by `A261054.P9506361650987879936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261054.P9506361650987879936

`ogf((2+x-x^2+x^3)/(1-3x+5x^3-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261054

/-- `ogf((2+x-x^2+x^3)/(1-3x+5x^3-3x^5-x^6))` -/
def P9506361650987879936.Spec : Prop :=
  ∀ n, P9506361650987879936.a n = A261054 n

theorem P9506361650987879936.correct : P9506361650987879936.Spec := by
  intro n
  simp only [A261054]

end A261054

/-! ## A261054.P6618817936978211717

`A234713(∑[n+2]+3)`
-/

namespace A261054.P6618817936978211717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234713 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A261054.P6618817936978211717

namespace A261054

/-- `A234713(∑[n+2]+3)` -/
def P6618817936978211717.Spec : Prop :=
  ∀ n, P6618817936978211717.a n = A261054 n

end A261054

/-!
# A261055: Expansion of ( -1-2*x+x^2+x^3 ) / (x^2+x-1)^3 .

The programs for A261055, the canonical program `A261055.P3485312381800775943` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261055 has offset 0).

The definition of A261055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2-x^3)/(1-3x+5x^3-3x^5-x^6))` (program `A261055.P3485312381800775943`, by `A261055.P3485312381800775943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261055.P3485312381800775943

`ogf((1+2x-x^2-x^3)/(1-3x+5x^3-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261055

/-- `ogf((1+2x-x^2-x^3)/(1-3x+5x^3-3x^5-x^6))` -/
def P3485312381800775943.Spec : Prop :=
  ∀ n, P3485312381800775943.a n = A261055 n

theorem P3485312381800775943.correct : P3485312381800775943.Spec := by
  intro n
  simp only [A261055]

end A261055

/-! ## A261055.P9719171263553810423

`A001628(n+1)-Δ[A023610(n)]`
-/

namespace A261055.P9719171263553810423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) - (f1 (n + 1) - f1 n)

end

end A261055.P9719171263553810423

namespace A261055

/-- `A001628(n+1)-Δ[A023610(n)]` -/
def P9719171263553810423.Spec : Prop :=
  ∀ n, P9719171263553810423.a n = A261055 n

end A261055

/-! ## A261055.P5357101880294913281

`A129707(n+2)+A001629(n+1)`
-/

namespace A261055.P5357101880294913281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (n + 2) + A001629 (n + 1)

end

end A261055.P5357101880294913281

namespace A261055

/-- `A129707(n+2)+A001629(n+1)` -/
def P5357101880294913281.Spec : Prop :=
  ∀ n, P5357101880294913281.a n = A261055 n

end A261055

/-! ## A261055.P9291826668189347170

`A001628(n+1)-A029907(n+2)`
-/

namespace A261055.P9291826668189347170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) - A029907 (n + 2)

end

end A261055.P9291826668189347170

namespace A261055

/-- `A001628(n+1)-A029907(n+2)` -/
def P9291826668189347170.Spec : Prop :=
  ∀ n, P9291826668189347170.a n = A261055 n

end A261055

/-! ## A261055.P11637036397232484828

`A001628(n)-Δ[A023610(n)-A001628(n)]`
-/

namespace A261055.P11637036397232484828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A001628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n - (f1 (n + 1) - f1 n)

end

end A261055.P11637036397232484828

namespace A261055

/-- `A001628(n)-Δ[A023610(n)-A001628(n)]` -/
def P11637036397232484828.Spec : Prop :=
  ∀ n, P11637036397232484828.a n = A261055 n

end A261055

/-! ## A261055.P10930009259275106493

`A001628(n+1)-(A102702(n)+A001629(n+1))`
-/

namespace A261055.P10930009259275106493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) - (A102702 n + A001629 (n + 1))

end

end A261055.P10930009259275106493

namespace A261055

/-- `A001628(n+1)-(A102702(n)+A001629(n+1))` -/
def P10930009259275106493.Spec : Prop :=
  ∀ n, P10930009259275106493.a n = A261055 n

end A261055

/-! ## A261055.P9710694445506928774

`A229731(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A261055.P9710694445506928774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229731 (n + 3) - a (n - 1)

end

end A261055.P9710694445506928774

namespace A261055

/-- `A229731(n+3)-a(n-1)` -/
def P9710694445506928774.Spec : Prop :=
  ∀ n, P9710694445506928774.a n = A261055 n

end A261055

/-! ## A261055.P5589104297078516042

`A152881(n+2)-A129707(n)`
-/

namespace A261055.P5589104297078516042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 2) - A129707 n

end

end A261055.P5589104297078516042

namespace A261055

/-- `A152881(n+2)-A129707(n)` -/
def P5589104297078516042.Spec : Prop :=
  ∀ n, P5589104297078516042.a n = A261055 n

end A261055

/-! ## A261055.P15703755460692866093

`A212338(n+3)-A370304(n)`
-/

namespace A261055.P15703755460692866093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212338 (n + 3) - A370304 n

end

end A261055.P15703755460692866093

namespace A261055

/-- `A212338(n+3)-A370304(n)` -/
def P15703755460692866093.Spec : Prop :=
  ∀ n, P15703755460692866093.a n = A261055 n

end A261055

/-! ## A261055.P1759898820328287227

`A001629(n+1)+A212338(n+3)-A001628(n)`
-/

namespace A261055.P1759898820328287227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (A212338 (n + 3) - A001628 n)

end

end A261055.P1759898820328287227

namespace A261055

/-- `A001629(n+1)+A212338(n+3)-A001628(n)` -/
def P1759898820328287227.Spec : Prop :=
  ∀ n, P1759898820328287227.a n = A261055 n

end A261055

/-! ## A261055.P8836701689977378848

`Δ[∑[A001628(n)]-A023610(n)]`
-/

namespace A261055.P8836701689977378848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261055.P8836701689977378848

namespace A261055

/-- `Δ[∑[A001628(n)]-A023610(n)]` -/
def P8836701689977378848.Spec : Prop :=
  ∀ n, P8836701689977378848.a n = A261055 n

end A261055

/-! ## A261055.P14722561158540878354

`A228815(∑[n+2]+3)`
-/

namespace A261055.P14722561158540878354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228815 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A261055.P14722561158540878354

namespace A261055

/-- `A228815(∑[n+2]+3)` -/
def P14722561158540878354.Spec : Prop :=
  ∀ n, P14722561158540878354.a n = A261055 n

end A261055

/-! ## A261055.P17992202893713050945

`A155161(A167614(n+1))+∑[A054455(n)]`
-/

namespace A261055.P17992202893713050945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A167614 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261055.P17992202893713050945

namespace A261055

/-- `A155161(A167614(n+1))+∑[A054455(n)]` -/
def P17992202893713050945.Spec : Prop :=
  ∀ n, P17992202893713050945.a n = A261055 n

end A261055

/-!
# A261056: Expansion of ( 2-x^2 ) / (x^2+2*x-1)^2 .

The programs for A261056, the canonical program `A261056.P12938568074925612111` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261056 has offset 0).

The definition of A261056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x^2)/(1-4x+2x^2+4x^3+x^4))` (program `A261056.P12938568074925612111`, by `A261056.P12938568074925612111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261056.P12938568074925612111

`ogf((2-x^2)/(1-4x+2x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261056

/-- `ogf((2-x^2)/(1-4x+2x^2+4x^3+x^4))` -/
def P12938568074925612111.Spec : Prop :=
  ∀ n, P12938568074925612111.a n = A261056 n

theorem P12938568074925612111.correct : P12938568074925612111.Spec := by
  intro n
  simp only [A261056]

end A261056

/-! ## A261056.P17142807306852606954

`2*A006645(n+2)-A006645(n)`
-/

namespace A261056.P17142807306852606954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006645 (n + 2) - A006645 n

end

end A261056.P17142807306852606954

namespace A261056

/-- `2*A006645(n+2)-A006645(n)` -/
def P17142807306852606954.Spec : Prop :=
  ∀ n, P17142807306852606954.a n = A261056 n

end A261056

/-! ## A261056.P8750156065033195730

`∑[A291264(n)-Δ[A054447(n)]]`
-/

namespace A261056.P8750156065033195730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291264 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261056.P8750156065033195730

namespace A261056

/-- `∑[A291264(n)-Δ[A054447(n)]]` -/
def P8750156065033195730.Spec : Prop :=
  ∀ n, P8750156065033195730.a n = A261056 n

end A261056

/-! ## A261056.P11650499854548419416

`A119915(n+1)+A006645(n+2)`
-/

namespace A261056.P11650499854548419416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + A006645 (n + 2)

end

end A261056.P11650499854548419416

namespace A261056

/-- `A119915(n+1)+A006645(n+2)` -/
def P11650499854548419416.Spec : Prop :=
  ∀ n, P11650499854548419416.a n = A261056 n

end A261056

/-! ## A261056.P12638252311693503611

`A088210(n+1)-A054447(n+1)`
-/

namespace A261056.P12638252311693503611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 (n + 1) - A054447 (n + 1)

end

end A261056.P12638252311693503611

namespace A261056

/-- `A088210(n+1)-A054447(n+1)` -/
def P12638252311693503611.Spec : Prop :=
  ∀ n, P12638252311693503611.a n = A261056 n

end A261056

/-! ## A261056.P13897862004968135201

`∑[5*A054447(n)-A054447(n+1)]`
-/

namespace A261056.P13897862004968135201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A054447 n - A054447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261056.P13897862004968135201

namespace A261056

/-- `∑[5*A054447(n)-A054447(n+1)]` -/
def P13897862004968135201.Spec : Prop :=
  ∀ n, P13897862004968135201.a n = A261056 n

end A261056

/-! ## A261056.P13269350046979337031

`A000129(n+1)+A054459(n)-A006645(n)`
-/

namespace A261056.P13269350046979337031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A054459 n - A006645 n)

end

end A261056.P13269350046979337031

namespace A261056

/-- `A000129(n+1)+A054459(n)-A006645(n)` -/
def P13269350046979337031.Spec : Prop :=
  ∀ n, P13269350046979337031.a n = A261056 n

end A261056

/-! ## A261056.P6058753403810854057

`A364553(n+1)+A026937(n)-A006645(n)`
-/

namespace A261056.P6058753403810854057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364553 (n + 1) + (A026937 n - A006645 n)

end

end A261056.P6058753403810854057

namespace A261056

/-- `A364553(n+1)+A026937(n)-A006645(n)` -/
def P6058753403810854057.Spec : Prop :=
  ∀ n, P6058753403810854057.a n = A261056 n

end A261056

/-! ## A261056.P6098054450360573971

`A000129(n+1)+A364553(n+1)+A006645(n+1)`
-/

namespace A261056.P6098054450360573971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A364553 (n + 1) + A006645 (n + 1))

end

end A261056.P6098054450360573971

namespace A261056

/-- `A000129(n+1)+A364553(n+1)+A006645(n+1)` -/
def P6098054450360573971.Spec : Prop :=
  ∀ n, P6098054450360573971.a n = A261056 n

end A261056

/-! ## A261056.P2333255919720963834

`A006645(n+1)+A026937(n+1)-A001333(n+1)`
-/

namespace A261056.P2333255919720963834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A026937 (n + 1) - A001333 (n + 1))

end

end A261056.P2333255919720963834

namespace A261056

/-- `A006645(n+1)+A026937(n+1)-A001333(n+1)` -/
def P2333255919720963834.Spec : Prop :=
  ∀ n, P2333255919720963834.a n = A261056 n

end A261056

/-! ## A261056.P5816128968736199408

`A006645(n+1)+A088210(n+1)-A026937(n+1)`
-/

namespace A261056.P5816128968736199408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A088210 (n + 1) - A026937 (n + 1))

end

end A261056.P5816128968736199408

namespace A261056

/-- `A006645(n+1)+A088210(n+1)-A026937(n+1)` -/
def P5816128968736199408.Spec : Prop :=
  ∀ n, P5816128968736199408.a n = A261056 n

end A261056

/-! ## A261056.P11992703142635656872

`A187917(n+2)-A054459(n)`
-/

namespace A261056.P11992703142635656872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187917 (n + 2) - A054459 n

end

end A261056.P11992703142635656872

namespace A261056

/-- `A187917(n+2)-A054459(n)` -/
def P11992703142635656872.Spec : Prop :=
  ∀ n, P11992703142635656872.a n = A261056 n

end A261056

/-! ## A261056.P10518365935498652081

`Δ[A054459(n)]-A054447(n+1)`
-/

namespace A261056.P10518365935498652081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054447 (n + 1)

end

end A261056.P10518365935498652081

namespace A261056

/-- `Δ[A054459(n)]-A054447(n+1)` -/
def P10518365935498652081.Spec : Prop :=
  ∀ n, P10518365935498652081.a n = A261056 n

end A261056

/-! ## A261056.P17468343734447208371

`Δ[A187917(n+1)]-A054447(n)`
-/

namespace A261056.P17468343734447208371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054447 n

end

end A261056.P17468343734447208371

namespace A261056

/-- `Δ[A187917(n+1)]-A054447(n)` -/
def P17468343734447208371.Spec : Prop :=
  ∀ n, P17468343734447208371.a n = A261056 n

end A261056

/-! ## A261056.P117329811851260403

`(A054459(n+1)-A088211(n+1))/2`
-/

namespace A261056.P117329811851260403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054459 (n + 1) - A088211 (n + 1) : ℚ) / 2

end

end A261056.P117329811851260403

namespace A261056

/-- `(A054459(n+1)-A088211(n+1))/2` -/
def P117329811851260403.Spec : Prop :=
  ∀ n, P117329811851260403.a n = (A261056 n : ℚ)

end A261056

/-! ## A261056.P11286515378127275457

`Δ[A054459(n)-A054447(n)]-A054447(n)`
-/

namespace A261056.P11286515378127275457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - A054447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054447 n

end

end A261056.P11286515378127275457

namespace A261056

/-- `Δ[A054459(n)-A054447(n)]-A054447(n)` -/
def P11286515378127275457.Spec : Prop :=
  ∀ n, P11286515378127275457.a n = A261056 n

end A261056

/-! ## A261056.P14208538195937560166

`A210637(∑[n+1]+1)`
-/

namespace A261056.P14208538195937560166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261056.P14208538195937560166

namespace A261056

/-- `A210637(∑[n+1]+1)` -/
def P14208538195937560166.Spec : Prop :=
  ∀ n, P14208538195937560166.a n = A261056 n

end A261056

/-!
# A261057: Number of solutions to c(1)*prime(1)+...+c(2n-1)*prime(2n-1) = -2, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A261057, there is no canonical definition to state claims against.
-/

/-! ## A261057.P8539306910983042172

`A113041(n+1)-A022896(2*n+1)`
-/

namespace A261057.P8539306910983042172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113041 (n + 1) - A022896 (2 * n + 1)

end

end A261057.P8539306910983042172

/-! ## A261057.P18331067178958899426

`A054404(A148239(n))`
-/

namespace A261057.P18331067178958899426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A148239 n).toNat

end

end A261057.P18331067178958899426

/-! ## A261057.P8882720958785012698

`A065744(A191636(n+1))`
-/

namespace A261057.P8882720958785012698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A191636 (n + 1)).toNat

end

end A261057.P8882720958785012698

/-! ## A261057.P18403568077398614007

`A003056(floor(A111752(n)/3))`
-/

namespace A261057.P18403568077398614007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊(A111752 n : ℚ) / 3⌋.toNat

end

end A261057.P18403568077398614007

/-!
# A261058: Column k=1 of A213221.

The programs for A261058, there is no canonical definition to state claims against.
-/

/-! ## A261058.P9337422764308921645

`2*A157004(n)-A157003(n)`
-/

namespace A261058.P9337422764308921645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157004 n - A157003 n

end

end A261058.P9337422764308921645

/-! ## A261058.P3656175558128400077

`record[2*A168151(n)]-A157003(n)`
-/

namespace A261058.P3656175558128400077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A157003 n

end

end A261058.P3656175558128400077

/-! ## A261058.P14441316331231022219

`A157004(n)+record[A168151(n)]-A157003(n)`
-/

namespace A261058.P14441316331231022219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157004 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A157003 n)

end

end A261058.P14441316331231022219

/-! ## A261058.P8652958960409605680

`record[A213221(comp[∑[n]])]`
-/

namespace A261058.P8652958960409605680
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261058.P8652958960409605680

/-! ## A261058.P10891197202271434061

`A213221(∑[n+1]+1)`
-/

namespace A261058.P10891197202271434061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261058.P10891197202271434061

/-!
# A261059: Number of solutions to c(1)*prime(2)+...+c(2n)*prime(2n+1) = -2, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A261059, there is no canonical definition to state claims against.
-/

/-! ## A261059.P1869992811972621003

`A022894(n+1)-A022899(2*(n+1))`
-/

namespace A261059.P1869992811972621003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022894 (n + 1) - A022899 (2 * (n + 1))

end

end A261059.P1869992811972621003

/-! ## A261059.P11591367212371250564

`A306443(2*n+3)-A022899(2*(n+1))`
-/

namespace A261059.P11591367212371250564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * n + 3) - A022899 (2 * (n + 1))

end

end A261059.P11591367212371250564

/-!
# A261061: Number of solutions to c(1)*prime(1)+...+c(2n)*prime(2n) = -1, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A261061, there is no canonical definition to state claims against.
-/

/-! ## A261061.P1473292918458949301

`A113040(n+1)-A022895(2*(n+1))`
-/

namespace A261061.P1473292918458949301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113040 (n + 1) - A022895 (2 * (n + 1))

end

end A261061.P1473292918458949301

/-! ## A261061.P14044847795974356933

`A306443(2*(n+1))-A022895(A051755(n+2))`
-/

namespace A261061.P14044847795974356933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * (n + 1)) - A022895 (A051755 (n + 2)).toNat

end

end A261061.P14044847795974356933

/-!
# A261062: Number of solutions to c(1)*prime(2) + ... + c(2n-1)*prime(2n) = -1, where c(i) = +-1 for i > 1, c(1) = 1.

The programs for A261062, there is no canonical definition to state claims against.
-/

/-! ## A261062.P5665917900872490217

`A148804(n)%A073188(A000142(n))`
-/

namespace A261062.P5665917900872490217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148804 n) (A073188 (A000142 n).toNat)

end

end A261062.P5665917900872490217

/-! ## A261062.P14061682047774083897

`A022328(A010892(3*n+4)*A110210(n))`
-/

namespace A261062.P14061682047774083897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (A010892 (3 * n + 4) * A110210 n).toNat

end

end A261062.P14061682047774083897

/-!
# A261064: a(n) = (3^n-1)*(n+1)/4.

The programs for A261064, the canonical program `A261064.P11931087326849838884` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261064 has offset 1).

The definition of A261064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261064.P11931087326849838884

`(3^(n+1)-1)*(n+2)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261064

/-- `(3^(n+1)-1)*(n+2)/4` -/
def P11931087326849838884.Spec : Prop :=
  ∀ n, P11931087326849838884.a n = (A261064 (n + 1) : ℚ)

end A261064

/-! ## A261064.P15431254057768739276

`∑[∑[ogf((1-2x)/(1-6x+9x^2))]]`
-/

namespace A261064.P15431254057768739276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 9] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P15431254057768739276

namespace A261064

/-- `∑[∑[ogf((1-2x)/(1-6x+9x^2))]]` -/
def P15431254057768739276.Spec : Prop :=
  ∀ n, P15431254057768739276.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P12362043917140215158

`∑[3*a(n-1)-1]+3*a(n-1)` with `a(0)=1`
-/

namespace A261064.P12362043917140215158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A261064.P12362043917140215158

namespace A261064

/-- `∑[3*a(n-1)-1]+3*a(n-1)` -/
def P12362043917140215158.Spec : Prop :=
  ∀ n, P12362043917140215158.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P10785451260557323957

`∑[∑[3^(n-1)+a(n-1)/sqrt(1/9)]]` with `a(0)=1`
-/

namespace A261064.P10785451260557323957
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + f2 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P10785451260557323957

namespace A261064

/-- `∑[∑[3^(n-1)+a(n-1)/sqrt(1/9)]]` -/
def P10785451260557323957.Spec : Prop :=
  ∀ n, P10785451260557323957.a n = (A261064 (n + 1) : ℝ)

end A261064

/-! ## A261064.P11893400671904433424

`∑[A392266(n+1)]`
-/

namespace A261064.P11893400671904433424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P11893400671904433424

namespace A261064

/-- `∑[A392266(n+1)]` -/
def P11893400671904433424.Spec : Prop :=
  ∀ n, P11893400671904433424.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P14045129552337921281

`∑[∑[A006234(n+3)]]`
-/

namespace A261064.P14045129552337921281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P14045129552337921281

namespace A261064

/-- `∑[∑[A006234(n+3)]]` -/
def P14045129552337921281.Spec : Prop :=
  ∀ n, P14045129552337921281.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P10268573255192360162

`A360715(n+2)-(n+2)`
-/

namespace A261064.P10268573255192360162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360715 (n + 2) - (n + 2 : ℤ)

end

end A261064.P10268573255192360162

namespace A261064

/-- `A360715(n+2)-(n+2)` -/
def P10268573255192360162.Spec : Prop :=
  ∀ n, P10268573255192360162.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P8057147318970326903

`∑[∑[A199923(n+1)/2]]`
-/

namespace A261064.P8057147318970326903
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199923 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P8057147318970326903

namespace A261064

/-- `∑[∑[A199923(n+1)/2]]` -/
def P8057147318970326903.Spec : Prop :=
  ∀ n, P8057147318970326903.a n = (A261064 (n + 1) : ℚ)

end A261064

/-! ## A261064.P7448184036969017136

`A047926(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A261064.P7448184036969017136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047926 n + 3 * a (n - 1)

end

end A261064.P7448184036969017136

namespace A261064

/-- `A047926(n)+3*a(n-1)` -/
def P7448184036969017136.Spec : Prop :=
  ∀ n, P7448184036969017136.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P6735567237932771261

`A164039(n+1)+3*a(n-1)-1` with `a(0)=1`
-/

namespace A261064.P6735567237932771261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164039 (n + 1) + (3 * a (n - 1) - 1)

end

end A261064.P6735567237932771261

namespace A261064

/-- `A164039(n+1)+3*a(n-1)-1` -/
def P6735567237932771261.Spec : Prop :=
  ∀ n, P6735567237932771261.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P10560048448868575896

`A288834(n+1)-A372852(n+1)`
-/

namespace A261064.P10560048448868575896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - A372852 (n + 1)

end

end A261064.P10560048448868575896

namespace A261064

/-- `A288834(n+1)-A372852(n+1)` -/
def P10560048448868575896.Spec : Prop :=
  ∀ n, P10560048448868575896.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P7366264278304553226

`A372872(n+3)-A007051(n+2)`
-/

namespace A261064.P7366264278304553226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372872 (n + 3) - A007051 (n + 2)

end

end A261064.P7366264278304553226

namespace A261064

/-- `A372872(n+3)-A007051(n+2)` -/
def P7366264278304553226.Spec : Prop :=
  ∀ n, P7366264278304553226.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P2305526200424656631

`∑[∑[A027471(n+1)+A000244(n)]]`
-/

namespace A261064.P2305526200424656631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + A000244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P2305526200424656631

namespace A261064

/-- `∑[∑[A027471(n+1)+A000244(n)]]` -/
def P2305526200424656631.Spec : Prop :=
  ∀ n, P2305526200424656631.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P7968072907908202703

`∑[∑[A081038(n)-A027471(n+1)]]`
-/

namespace A261064.P7968072907908202703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n - A027471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P7968072907908202703

namespace A261064

/-- `∑[∑[A081038(n)-A027471(n+1)]]` -/
def P7968072907908202703.Spec : Prop :=
  ∀ n, P7968072907908202703.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P7366326518324094780

`A014915(n+1)-∑[∑[A027471(n+1)]]`
-/

namespace A261064.P7366326518324094780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261064.P7366326518324094780

namespace A261064

/-- `A014915(n+1)-∑[∑[A027471(n+1)]]` -/
def P7366326518324094780.Spec : Prop :=
  ∀ n, P7366326518324094780.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P5324867272357936979

`A014915(n+1)+A014915(n+1)-A212337(n)`
-/

namespace A261064.P5324867272357936979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 1) + (A014915 (n + 1) - A212337 n)

end

end A261064.P5324867272357936979

namespace A261064

/-- `A014915(n+1)+A014915(n+1)-A212337(n)` -/
def P5324867272357936979.Spec : Prop :=
  ∀ n, P5324867272357936979.a n = A261064 (n + 1)

end A261064

/-! ## A261064.P5095516591056968792

`A201730(A134869(n+2))`
-/

namespace A261064.P5095516591056968792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201730 (A134869 (n + 2)).toNat

end

end A261064.P5095516591056968792

namespace A261064

/-- `A201730(A134869(n+2))` -/
def P5095516591056968792.Spec : Prop :=
  ∀ n, P5095516591056968792.a n = A261064 (n + 1)

end A261064

/-!
# A261065: Second column of A086872.

The programs for A261065, the canonical program `A261065.P15174676505508964117` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261065 has offset 1).

The definition of A261065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261065.P15174676505508964117

`(n+3)*(2*(n+1))!/(3*2^(n+1)*n!)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261065

/-- `(n+3)*(2*(n+1))!/(3*2^(n+1)*n!)` -/
def P15174676505508964117.Spec : Prop :=
  ∀ n, P15174676505508964117.a n = (A261065 (n + 1) : ℚ)

end A261065

/-! ## A261065.P8396941838387791248

`(n+1)*∏[2*n+1]*(n+3)/3`
-/

namespace A261065.P8396941838387791248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) * ((n + 3 : ℚ) / 3)

end

end A261065.P8396941838387791248

namespace A261065

/-- `(n+1)*∏[2*n+1]*(n+3)/3` -/
def P8396941838387791248.Spec : Prop :=
  ∀ n, P8396941838387791248.a n = (A261065 (n + 1) : ℚ)

end A261065

/-! ## A261065.P12816348121832579368

`record[A171526(n+1)*A288950(n)]`
-/

namespace A261065.P12816348121832579368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (n + 1) * A288950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261065.P12816348121832579368

namespace A261065

/-- `record[A171526(n+1)*A288950(n)]` -/
def P12816348121832579368.Spec : Prop :=
  ∀ n, P12816348121832579368.a n = A261065 (n + 1)

end A261065

/-! ## A261065.P456045300763365065

`(A001879(n)+A000457(n))/2`
-/

namespace A261065.P456045300763365065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001879 n + A000457 n : ℚ) / 2

end

end A261065.P456045300763365065

namespace A261065

/-- `(A001879(n)+A000457(n))/2` -/
def P456045300763365065.Spec : Prop :=
  ∀ n, P456045300763365065.a n = (A261065 (n + 1) : ℚ)

end A261065

/-! ## A261065.P9127910575254697066

`A086872(∑[n+1]+1)`
-/

namespace A261065.P9127910575254697066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086872 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261065.P9127910575254697066

namespace A261065

/-- `A086872(∑[n+1]+1)` -/
def P9127910575254697066.Spec : Prop :=
  ∀ n, P9127910575254697066.a n = A261065 (n + 1)

end A261065

/-!
# A261066: 

The programs for A261066, there is no canonical definition to state claims against.
-/

/-! ## A261066.P14823575931030920768

`a(n-1)+a(n-1)²*2^(n+1)` with `a(0)=6`
-/

namespace A261066.P14823575931030920768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 * 2 ^ (n + 1)

end

end A261066.P14823575931030920768

/-!
# A261071: 

The programs for A261071, there is no canonical definition to state claims against.
-/

/-! ## A261071.P12010664355745951736

`2^(n+1)!+1`
-/

namespace A261071.P12010664355745951736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.factorial (n + 1) + 1

end

end A261071.P12010664355745951736

/-!
# A261072: Divisors of 1234567890987654321.

The programs for A261072, there is no canonical definition to state claims against.
-/

/-! ## A261072.P966467035090168662

`record[gcd(2*n+1, A268685(6*n+8))]`
-/

namespace A261072.P966467035090168662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A268685 (6 * n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261072.P966467035090168662

/-! ## A261072.P2777312447731156230

`A264974(A018596(n+1))`
-/

namespace A261072.P2777312447731156230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A018596 (n + 1)).toNat

end

end A261072.P2777312447731156230

/-! ## A261072.P7097428304599600626

`A353397(A344826(n+1))`
-/

namespace A261072.P7097428304599600626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353397 (A344826 (n + 1)).toNat

end

end A261072.P7097428304599600626

/-! ## A261072.P13099462026732606483

`∩[A003528(n+1), A222262(n+1)]`
-/

namespace A261072.P13099462026732606483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261072.P13099462026732606483

/-! ## A261072.P5323640917115812122

`∩[A003528(n+1), A245028(n+1)]`
-/

namespace A261072.P5323640917115812122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261072.P5323640917115812122

/-!
# A261073: Semiprimes whose prime factors are of equal binary length and which differ from each other in one bit position only.

The programs for A261073, there is no canonical definition to state claims against.
-/

/-! ## A261073.P7445525862060566480

`∩[A085721(n+1), A261077(n+1)]`
-/

namespace A261073.P7445525862060566480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P7445525862060566480

/-! ## A261073.P5816361599389509367

`∩[A182302(n+1), A261077(n+1)]`
-/

namespace A261073.P5816361599389509367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P5816361599389509367

/-! ## A261073.P11718055930487223332

`∩[A200878(n+1), A261077(n+1)]`
-/

namespace A261073.P11718055930487223332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P11718055930487223332

/-! ## A261073.P13085632361341353389

`∩[A186777(n+1), A261077(n+1)]`
-/

namespace A261073.P13085632361341353389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P13085632361341353389

/-! ## A261073.P7948778337429513886

`∩[A089341(n+1), A261077(n+1)]`
-/

namespace A261073.P7948778337429513886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P7948778337429513886

/-! ## A261073.P13777487326913543400

`∩[A087718(n+1), A261077(n+1)]`
-/

namespace A261073.P13777487326913543400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P13777487326913543400

/-! ## A261073.P18312409060309794992

`∩[A261077(n+1), A302022(n+1)]`
-/

namespace A261073.P18312409060309794992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261073.P18312409060309794992

/-!
# A261076: The infinite trunk of Zeckendorf (Fibonacci) beanstalk, with reversed subsections.

The programs for A261076, there is no canonical definition to state claims against.
-/

/-! ## A261076.P10456129787461326165

`A219648(A261102(n))`
-/

namespace A261076.P10456129787461326165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 (A261102 n).toNat

end

end A261076.P10456129787461326165

/-!
# A261077: Semiprimes whose prime factors differ from each other in one bit position only.

The programs for A261077, there is no canonical definition to state claims against.
-/

/-! ## A261077.P16622896176724507073

`eq[1, A260737(n+1)]+1`
-/

namespace A261077.P16622896176724507073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A261077.P16622896176724507073

/-! ## A261077.P7815844683873020057

`eq[1, A260737(A028310(n))]`
-/

namespace A261077.P7815844683873020057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261077.P7815844683873020057

/-! ## A261077.P17667665417881822349

`A020725(eq[1, A260737(n+1)])`
-/

namespace A261077.P17667665417881822349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261077.P17667665417881822349

/-! ## A261077.P8241438527321737400

`A153152(eq[1, A260737(n+1)])`
-/

namespace A261077.P8241438527321737400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261077.P8241438527321737400

/-! ## A261077.P10898910589660064500

`eq[1, A260737(A233583(n+1))]`
-/

namespace A261077.P10898910589660064500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261077.P10898910589660064500

/-!
# A261078: Semiprimes p*q such that q = p + 2^k for some k >= 0.

The programs for A261078, there is no canonical definition to state claims against.
-/

/-! ## A261078.P3214075530304746089

`filter[A141698(n+1), A064911(#)]`
-/

namespace A261078.P3214075530304746089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A261078.P3214075530304746089

/-! ## A261078.P2239855001662087985

`filter[A141698(n+1), A101040(#)]`
-/

namespace A261078.P2239855001662087985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A261078.P2239855001662087985

/-! ## A261078.P12816162737524854353

`filter[A141698(n+1), A280710(#)]`
-/

namespace A261078.P12816162737524854353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A261078.P12816162737524854353

/-! ## A261078.P284989822850105446

`filter[A141698(n+1), A353471(#)]`
-/

namespace A261078.P284989822850105446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A261078.P284989822850105446

/-! ## A261078.P1325001095575758400

`filter[A141698(n+1), A353788(#)]`
-/

namespace A261078.P1325001095575758400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A261078.P1325001095575758400

/-!
# A261079: Sum of index differences between prime factors of n, summed over all unordered pairs of primes present (with multiplicity) in the prime factorization of n.

The programs for A261079, there is no canonical definition to state claims against.
-/

/-! ## A261079.P1399226176654012625

`2*A304818(n+1)-A359362(n+1)`
-/

namespace A261079.P1399226176654012625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304818 (n + 1) - A359362 (n + 1)

end

end A261079.P1399226176654012625

/-! ## A261079.P697122245934074864

`A304818(n+1)-A318283(n+1)`
-/

namespace A261079.P697122245934074864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - A318283 (n + 1)

end

end A261079.P697122245934074864

/-! ## A261079.P15457761245736540220

`A304818(n+1)-(A056239(n+1)*A144494(2*(n+1))-A304818(n+1))`
-/

namespace A261079.P15457761245736540220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - (A056239 (n + 1) * A144494 (2 * (n + 1)) - A304818 (n + 1))

end

end A261079.P15457761245736540220

/-! ## A261079.P1008168478477854038

`A359362(n+1)-2*A318283(n+1)`
-/

namespace A261079.P1008168478477854038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359362 (n + 1) - 2 * A318283 (n + 1)

end

end A261079.P1008168478477854038

/-! ## A261079.P6760882378377878249

`A304818(A032742(n+1))-A359677(n+1)`
-/

namespace A261079.P6760882378377878249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A032742 (n + 1)).toNat - A359677 (n + 1)

end

end A261079.P6760882378377878249

/-! ## A261079.P12805042719611912162

`A304818(n+1)-(A359677(n+1)+A056239(n+1))`
-/

namespace A261079.P12805042719611912162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - (A359677 (n + 1) + A056239 (n + 1))

end

end A261079.P12805042719611912162

/-! ## A261079.P4595119793369416626

`A359674(n+1)-A359677(n+1)`
-/

namespace A261079.P4595119793369416626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (n + 1) - A359677 (n + 1)

end

end A261079.P4595119793369416626

/-! ## A261079.P4571755104594078541

`A359674(n+1)-A318283(A052126(n+1))`
-/

namespace A261079.P4571755104594078541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (n + 1) - A318283 (A052126 (n + 1)).toNat

end

end A261079.P4571755104594078541

/-! ## A261079.P17850971600406183480

`A359674(n+1)+A056239(n+1)-(A359362(n+1)-A304818(n+1))`
-/

namespace A261079.P17850971600406183480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (n + 1) + A056239 (n + 1) - (A359362 (n + 1) - A304818 (n + 1))

end

end A261079.P17850971600406183480

/-! ## A261079.P7462232957598143087

`A355930(A304660(n+1))`
-/

namespace A261079.P7462232957598143087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355930 (A304660 (n + 1)).toNat

end

end A261079.P7462232957598143087

/-!
# A261080: Semiprimes p*q for which p and q are successive primes and their binary representations differ from each other in one bit position only.

The programs for A261080, the canonical program `A261080.P5026933393780726250` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261080 has offset 1).

The definition of A261080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205302, A205511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261080.P5026933393780726250

`A205511(n+1)*A205302(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A261080

/-- `A205511(n+1)*A205302(n+1)` -/
def P5026933393780726250.Spec : Prop :=
  ∀ n, P5026933393780726250.a n = A261080 (n + 1)

theorem P5026933393780726250.correct : P5026933393780726250.Spec := by
  intro n
  simp only [A261080, Nat.add_sub_cancel]

end A261080

/-! ## A261080.P4605103497394567034

`∩[A006094(n+1), A261073(n+1)]`
-/

namespace A261080.P4605103497394567034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P4605103497394567034

namespace A261080

/-- `∩[A006094(n+1), A261073(n+1)]` -/
def P4605103497394567034.Spec : Prop :=
  ∀ n, (P4605103497394567034.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P12240393349612406219

`∩[A097889(n+1), A261073(n+1)]`
-/

namespace A261080.P12240393349612406219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P12240393349612406219

namespace A261080

/-- `∩[A097889(n+1), A261073(n+1)]` -/
def P12240393349612406219.Spec : Prop :=
  ∀ n, (P12240393349612406219.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P16902331766475306194

`∩[A256617(n+1), A261073(n+1)]`
-/

namespace A261080.P16902331766475306194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P16902331766475306194

namespace A261080

/-- `∩[A256617(n+1), A261073(n+1)]` -/
def P16902331766475306194.Spec : Prop :=
  ∀ n, (P16902331766475306194.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P9973012524836458623

`A006094(record[(n+1)/A205510(n+1)])`
-/

namespace A261080.P9973012524836458623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A205510 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A261080.P9973012524836458623

namespace A261080

/-- `A006094(record[(n+1)/A205510(n+1)])` -/
def P9973012524836458623.Spec : Prop :=
  ∀ n, P9973012524836458623.a n = A261080 (n + 1)

end A261080

/-! ## A261080.P3827794764953857546

`record[(2-A205510(n+1))*A006094(n+1)]`
-/

namespace A261080.P3827794764953857546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A205510 (n + 1)) * A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261080.P3827794764953857546

namespace A261080

/-- `record[(2-A205510(n+1))*A006094(n+1)]` -/
def P3827794764953857546.Spec : Prop :=
  ∀ n, P3827794764953857546.a n = A261080 (n + 1)

end A261080

/-! ## A261080.P8327457796302463624

`∩[A261073(n+1), A033476(n)]`
-/

namespace A261080.P8327457796302463624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P8327457796302463624

namespace A261080

/-- `∩[A261073(n+1), A033476(n)]` -/
def P8327457796302463624.Spec : Prop :=
  ∀ n, (P8327457796302463624.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P3760908227159765674

`∩[A057602(n+1), A261073(n+1)]`
-/

namespace A261080.P3760908227159765674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P3760908227159765674

namespace A261080

/-- `∩[A057602(n+1), A261073(n+1)]` -/
def P3760908227159765674.Spec : Prop :=
  ∀ n, (P3760908227159765674.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P16114560019922923535

`∩[A261077(n+1), A033476(n)]`
-/

namespace A261080.P16114560019922923535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P16114560019922923535

namespace A261080

/-- `∩[A261077(n+1), A033476(n)]` -/
def P16114560019922923535.Spec : Prop :=
  ∀ n, (P16114560019922923535.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P16254164639278560891

`∩[A006094(n+1), A261077(n+1)]`
-/

namespace A261080.P16254164639278560891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P16254164639278560891

namespace A261080

/-- `∩[A006094(n+1), A261077(n+1)]` -/
def P16254164639278560891.Spec : Prop :=
  ∀ n, (P16254164639278560891.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P11710256849568037227

`∩[A057602(n+1), A261077(n+1)]`
-/

namespace A261080.P11710256849568037227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P11710256849568037227

namespace A261080

/-- `∩[A057602(n+1), A261077(n+1)]` -/
def P11710256849568037227.Spec : Prop :=
  ∀ n, (P11710256849568037227.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P16658567273266977339

`∩[A097889(n+1), A261077(n+1)]`
-/

namespace A261080.P16658567273266977339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P16658567273266977339

namespace A261080

/-- `∩[A097889(n+1), A261077(n+1)]` -/
def P16658567273266977339.Spec : Prop :=
  ∀ n, (P16658567273266977339.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P13446480773627462036

`∩[A256617(n+1), A261077(n+1)]`
-/

namespace A261080.P13446480773627462036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P13446480773627462036

namespace A261080

/-- `∩[A256617(n+1), A261077(n+1)]` -/
def P13446480773627462036.Spec : Prop :=
  ∀ n, (P13446480773627462036.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P3082381013959145909

`A013637(A205302(n+1))`
-/

namespace A261080.P3082381013959145909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (A205302 (n + 1)).toNat

end

end A261080.P3082381013959145909

namespace A261080

/-- `A013637(A205302(n+1))` -/
def P3082381013959145909.Spec : Prop :=
  ∀ n, P3082381013959145909.a n = A261080 (n + 1)

end A261080

/-! ## A261080.P1952778256136834311

`A013636(A205511(n+1))`
-/

namespace A261080.P1952778256136834311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (A205511 (n + 1)).toNat

end

end A261080.P1952778256136834311

namespace A261080

/-- `A013636(A205511(n+1))` -/
def P1952778256136834311.Spec : Prop :=
  ∀ n, P1952778256136834311.a n = A261080 (n + 1)

end A261080

/-! ## A261080.P2539311913972464444

`∩[A261073(n+1), A013636(n)]`
-/

namespace A261080.P2539311913972464444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P2539311913972464444

namespace A261080

/-- `∩[A261073(n+1), A013636(n)]` -/
def P2539311913972464444.Spec : Prop :=
  ∀ n, (P2539311913972464444.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P5491760223391269393

`∩[A261077(n+1), A013636(n)]`
-/

namespace A261080.P5491760223391269393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P5491760223391269393

namespace A261080

/-- `∩[A261077(n+1), A013636(n)]` -/
def P5491760223391269393.Spec : Prop :=
  ∀ n, (P5491760223391269393.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P16638538741776903544

`∩[A245630(n+1), A261073(n+1)]`
-/

namespace A261080.P16638538741776903544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P16638538741776903544

namespace A261080

/-- `∩[A245630(n+1), A261073(n+1)]` -/
def P16638538741776903544.Spec : Prop :=
  ∀ n, (P16638538741776903544.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P10557403664056031259

`∩[A245630(n+1), A261077(n+1)]`
-/

namespace A261080.P10557403664056031259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P10557403664056031259

namespace A261080

/-- `∩[A245630(n+1), A261077(n+1)]` -/
def P10557403664056031259.Spec : Prop :=
  ∀ n, (P10557403664056031259.a n : ℤ) = A261080 (n + 1)

end A261080

/-! ## A261080.P5145147594086761028

`∩[A013637(n+3), A261073(n+1)]`
-/

namespace A261080.P5145147594086761028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261080.P5145147594086761028

namespace A261080

/-- `∩[A013637(n+3), A261073(n+1)]` -/
def P5145147594086761028.Spec : Prop :=
  ∀ n, (P5145147594086761028.a n : ℤ) = A261080 (n + 1)

end A261080

/-!
# A261081: a(n) = number of steps required to reach 0 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

The programs for A261081, the canonical program `A261081.P15491907119103926316` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261081 has offset 0).

The definition of A261081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261081.P2052056719758860541

`A261082(n)-1`
-/

namespace A261081.P2052056719758860541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261082 n - 1

end

end A261081.P2052056719758860541

namespace A261081

/-- `A261082(n)-1` -/
def P2052056719758860541.Spec : Prop :=
  ∀ n, P2052056719758860541.a n = A261081 n

theorem P2052056719758860541.correct : P2052056719758860541.Spec := by
  intro n
  simp only [A261081, Nat.add_sub_cancel, A261081.P2052056719758860541.a, A261081.P15491907119103926316.a, A000045, A000045.P11838749114346432762.a, A219642, A219642.P8698780994322484832.a, A261082, A261082.P8170488330143915318.a, A219641, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261081

/-! ## A261081.P6432282763107029011

`A261091(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A261081.P6432282763107029011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A261091 n + a (n - 1)

end

end A261081.P6432282763107029011

namespace A261081

/-- `A261091(n)+a(n-1)` -/
def P6432282763107029011.Spec : Prop :=
  ∀ n, P6432282763107029011.a n = A261081 n

end A261081

/-! ## A261081.P15491907119103926316

`A219642(A000045(n+2)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A261081

/-- `A219642(A000045(n+2)-1)` -/
def P15491907119103926316.Spec : Prop :=
  ∀ n, P15491907119103926316.a n = A261081 n

theorem P15491907119103926316.correct : P15491907119103926316.Spec := by
  intro n
  simp only [A261081]

end A261081

/-! ## A261081.P4439130403876345763

`∑[A261091(n)]`
-/

namespace A261081.P4439130403876345763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261081.P4439130403876345763

namespace A261081

/-- `∑[A261091(n)]` -/
def P4439130403876345763.Spec : Prop :=
  ∀ n, P4439130403876345763.a n = A261081 n

end A261081

/-! ## A261081.P5630067645028432773

`∑[∑[A261090(abs(1-n))]]`
-/

namespace A261081.P5630067645028432773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261090 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261081.P5630067645028432773

namespace A261081

/-- `∑[∑[A261090(abs(1-n))]]` -/
def P5630067645028432773.Spec : Prop :=
  ∀ n, P5630067645028432773.a n = A261081 n

end A261081

/-!
# A261082: a(n) = number of steps required to reach 0 from F(n+2) by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

The programs for A261082, the canonical program `A261082.P8170488330143915318` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261082 has offset 0).

The definition of A261082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261081, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261082.P8170488330143915318

`A261081(n)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A261082

/-- `A261081(n)+1` -/
def P8170488330143915318.Spec : Prop :=
  ∀ n, P8170488330143915318.a n = A261082 n

theorem P8170488330143915318.correct : P8170488330143915318.Spec := by
  intro n
  simp only [A261082]

end A261082

/-! ## A261082.P6156403631001408621

`A261091(n)+a(n-1)` with `a(0)=1`
-/

namespace A261082.P6156403631001408621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261091 n + a (n - 1)

end

end A261082.P6156403631001408621

namespace A261082

/-- `A261091(n)+a(n-1)` -/
def P6156403631001408621.Spec : Prop :=
  ∀ n, P6156403631001408621.a n = A261082 n

end A261082

/-! ## A261082.P6437425960119095720

`A219642(A000045(n+2))`
-/

namespace A261082.P6437425960119095720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2)).toNat

end

end A261082.P6437425960119095720

namespace A261082

/-- `A219642(A000045(n+2))` -/
def P6437425960119095720.Spec : Prop :=
  ∀ n, P6437425960119095720.a n = A261082 n

end A261082

/-! ## A261082.P8480978414807462205

`∑[A261091(n)]+1`
-/

namespace A261082.P8480978414807462205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A261082.P8480978414807462205

namespace A261082

/-- `∑[A261091(n)]+1` -/
def P8480978414807462205.Spec : Prop :=
  ∀ n, P8480978414807462205.a n = A261082 n

end A261082

/-! ## A261082.P13766882513128207634

`∑[∑[A261090(abs(1-n))]]+1`
-/

namespace A261082.P13766882513128207634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261090 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A261082.P13766882513128207634

namespace A261082

/-- `∑[∑[A261090(abs(1-n))]]+1` -/
def P13766882513128207634.Spec : Prop :=
  ∀ n, P13766882513128207634.a n = A261082 n

end A261082

/-!
# A261083: a(n) = A219648(n) - A219643(n).

The programs for A261083, there is no canonical definition to state claims against.
-/

/-! ## A261083.P3208898641539851215

`A219648(n)-A219643(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261083.P3208898641539851215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 n - A219643 n

end

end A261083.P3208898641539851215

/-! ## A261083.P12259081893303444644

`A219644(n)-(A261084(n)+1)`
-/

namespace A261083.P12259081893303444644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n - (A261084 n + 1)

end

end A261083.P12259081893303444644

/-! ## A261083.P12573640909598332200

`A008554(A219644(n)-A261084(n))`
-/

namespace A261083.P12573640909598332200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A219644 n - A261084 n).toNat

end

end A261083.P12573640909598332200

/-! ## A261083.P3448160308403433898

`A219645(n)-(A261084(n)+A219643(n))`
-/

namespace A261083.P3448160308403433898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - (A261084 n + A219643 n)

end

end A261083.P3448160308403433898

/-! ## A261083.P14941965505008734368

`A261076(A261102(n))-A219643(n)`
-/

namespace A261083.P14941965505008734368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261076 (A261102 n).toNat - A219643 n

end

end A261083.P14941965505008734368

/-! ## A261083.P3141409035465771903

`A261076(A219642(A261076(n)))-A219643(n)`
-/

namespace A261083.P3141409035465771903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261076 (A219642 (A261076 n).toNat).toNat - A219643 n

end

end A261083.P3141409035465771903

/-!
# A261084: a(n) = A219645(n) - A219648(n).

The programs for A261084, there is no canonical definition to state claims against.
-/

/-! ## A261084.P17158156151699556005

`A219645(n)-A219648(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261084.P17158156151699556005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - A219648 n

end

end A261084.P17158156151699556005

/-! ## A261084.P6790108921755529466

`A219644(n)-(A261083(n)+1)`
-/

namespace A261084.P6790108921755529466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n - (A261083 n + 1)

end

end A261084.P6790108921755529466

/-! ## A261084.P6957375548207931564

`A219643(n+1)-1-A219648(n)`
-/

namespace A261084.P6957375548207931564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (n + 1) - 1 - A219648 n

end

end A261084.P6957375548207931564

/-! ## A261084.P2629551616731401559

`A008554(A219644(n)-A261083(n))`
-/

namespace A261084.P2629551616731401559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A219644 n - A261083 n).toNat

end

end A261084.P2629551616731401559

/-! ## A261084.P11865950650059130380

`A057890(A219644(n)-A261083(n))`
-/

namespace A261084.P11865950650059130380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (A219644 n - A261083 n).toNat

end

end A261084.P11865950650059130380

/-! ## A261084.P3360684757255600872

`A219645(n)-(A261083(n)+A219643(n))`
-/

namespace A261084.P3360684757255600872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - (A261083 n + A219643 n)

end

end A261084.P3360684757255600872

/-! ## A261084.P5784793322524816409

`A219645(n)-A261076(A261102(n))`
-/

namespace A261084.P5784793322524816409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - A261076 (A261102 n).toNat

end

end A261084.P5784793322524816409

/-!
# A261085: Number of steps needed to reach zero when starting from the n-th prime [i.e., setting k to A000040(n)] and repeatedly applying the map that replaces k with k - d(k), where d(k) is the number of divisors of k (A000005).

The programs for A261085, the canonical program `A261085.P10967970624675834494` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261085 has offset 1).

The definition of A261085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261085.P10967970624675834494

`A155043(A000040(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261085

/-- `A155043(A000040(n+1))` -/
def P10967970624675834494.Spec : Prop :=
  ∀ n, P10967970624675834494.a n = A261085 (n + 1)

theorem P10967970624675834494.correct : P10967970624675834494.Spec := by
  intro n
  simp only [A261085, Nat.add_sub_cancel]

end A261085

/-! ## A261085.P16318847448447189176

`A155043(Δ[A007504(n)])`
-/

namespace A261085.P16318847448447189176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (f1 (n + 1) - f1 n).toNat

end

end A261085.P16318847448447189176

namespace A261085

/-- `A155043(Δ[A007504(n)])` -/
def P16318847448447189176.Spec : Prop :=
  ∀ n, P16318847448447189176.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P17887286666055386923

`A155043(A006005(n+1))`
-/

namespace A261085.P17887286666055386923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A006005 (n + 1)).toNat

end

end A261085.P17887286666055386923

namespace A261085

/-- `A155043(A006005(n+1))` -/
def P17887286666055386923.Spec : Prop :=
  ∀ n, P17887286666055386923.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P7983913811687169636

`A155043(A008578(n+2))`
-/

namespace A261085.P7983913811687169636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A008578 (n + 2)).toNat

end

end A261085.P7983913811687169636

namespace A261085

/-- `A155043(A008578(n+2))` -/
def P7983913811687169636.Spec : Prop :=
  ∀ n, P7983913811687169636.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P505104314498554880

`A155043(A182986(n+2))`
-/

namespace A261085.P505104314498554880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A182986 (n + 2)).toNat

end

end A261085.P505104314498554880

namespace A261085

/-- `A155043(A182986(n+2))` -/
def P505104314498554880.Spec : Prop :=
  ∀ n, P505104314498554880.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P16569496903881594317

`A155043(record[A006530(n+2)])`
-/

namespace A261085.P16569496903881594317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261085.P16569496903881594317

namespace A261085

/-- `A155043(record[A006530(n+2)])` -/
def P16569496903881594317.Spec : Prop :=
  ∀ n, P16569496903881594317.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P2732433296559849577

`A155043(record[A020639(n+2)])`
-/

namespace A261085.P2732433296559849577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261085.P2732433296559849577

namespace A261085

/-- `A155043(record[A020639(n+2)])` -/
def P2732433296559849577.Spec : Prop :=
  ∀ n, P2732433296559849577.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P15394899477651640179

`A155043(A040976(n+1))+1`
-/

namespace A261085.P15394899477651640179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A040976 (n + 1)).toNat + 1

end

end A261085.P15394899477651640179

namespace A261085

/-- `A155043(A040976(n+1))+1` -/
def P15394899477651640179.Spec : Prop :=
  ∀ n, P15394899477651640179.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P10640336315269700871

`A155043(A075643(n+2))`
-/

namespace A261085.P10640336315269700871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A075643 (n + 2)).toNat

end

end A261085.P10640336315269700871

namespace A261085

/-- `A155043(A075643(n+2))` -/
def P10640336315269700871.Spec : Prop :=
  ∀ n, P10640336315269700871.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P17124786423128635629

`A262519(A102781(n+1))`
-/

namespace A261085.P17124786423128635629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 (A102781 (n + 1)).toNat

end

end A261085.P17124786423128635629

namespace A261085

/-- `A262519(A102781(n+1))` -/
def P17124786423128635629.Spec : Prop :=
  ∀ n, P17124786423128635629.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P12460858532355227797

`A155043(lt[A026100(n+1), 2]+1)`
-/

namespace A261085.P12460858532355227797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026100 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A261085.P12460858532355227797

namespace A261085

/-- `A155043(lt[A026100(n+1), 2]+1)` -/
def P12460858532355227797.Spec : Prop :=
  ∀ n, P12460858532355227797.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P5620484275096926076

`A155043(eq[1, A032741(n)])`
-/

namespace A261085.P5620484275096926076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261085.P5620484275096926076

namespace A261085

/-- `A155043(eq[1, A032741(n)])` -/
def P5620484275096926076.Spec : Prop :=
  ∀ n, P5620484275096926076.a n = A261085 (n + 1)

end A261085

/-! ## A261085.P1548428100688803059

`A155043(record[A014963(n+2)])`
-/

namespace A261085.P1548428100688803059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261085.P1548428100688803059

namespace A261085

/-- `A155043(record[A014963(n+2)])` -/
def P1548428100688803059.Spec : Prop :=
  ∀ n, P1548428100688803059.a n = A261085 (n + 1)

end A261085

/-!
# A261086: Numbers n > 1 for which A261085(n) < A261085(n-1).

The programs for A261086, there is no canonical definition to state claims against.
-/

/-! ## A261086.P17113662573741381461

`A000720(A261087(n+1))`
-/

namespace A261086.P17113662573741381461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A261087 (n + 1)).toNat

end

end A261086.P17113662573741381461

/-! ## A261086.P15625702493865907320

`A061395(lcm(2, A261087(n+1))/2)`
-/

namespace A261086.P15625702493865907320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((Int.lcm 2 (A261087 (n + 1)) : ℚ) / 2)).toNat

end

end A261086.P15625702493865907320

/-! ## A261086.P11195711116128797206

`A061395(A261087(n+1)%A054825(n+1))`
-/

namespace A261086.P11195711116128797206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A261087 (n + 1)) (A054825 (n + 1))).toNat

end

end A261086.P11195711116128797206

/-! ## A261086.P15596292945839289638

`A061395(2*A261087(n+1))`
-/

namespace A261086.P15596292945839289638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A261087 (n + 1)).toNat

end

end A261086.P15596292945839289638

/-! ## A261086.P9599789438587053730

`A061395(lcm(2, A261087(n+1)))`
-/

namespace A261086.P9599789438587053730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A261087 (n + 1)))

end

end A261086.P9599789438587053730

/-! ## A261086.P10443593887033435522

`A056239(or(1, A261087(n+1)))`
-/

namespace A261086.P10443593887033435522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A261087 (n + 1))).toNat

end

end A261086.P10443593887033435522

/-! ## A261086.P16447027860040472704

`A055396(A261087(n+1))%A253022(n+1)`
-/

namespace A261086.P16447027860040472704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A261087 (n + 1)).toNat) (A253022 (n + 1))

end

end A261086.P16447027860040472704

/-! ## A261086.P18123796275676498871

`A055396(2*A261087(n+1)-A261087(n+1))`
-/

namespace A261086.P18123796275676498871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A261087 (n + 1) - A261087 (n + 1)).toNat

end

end A261086.P18123796275676498871

/-! ## A261086.P16425371632934696656

`A321648(2*A261087(n+1))`
-/

namespace A261086.P16425371632934696656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (2 * A261087 (n + 1)).toNat

end

end A261086.P16425371632934696656

/-!
# A261087: Primes p for which A155043(p) < A155043(prevprime(p)), where A155043 gives the number of steps needed to reach zero when repeatedly applying the map that replaces k with k - A000005(k).

The programs for A261087, there is no canonical definition to state claims against.
-/

/-! ## A261087.P6203046886947649542

`A000040(A261086(n+1))`
-/

namespace A261087.P6203046886947649542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A261086 (n + 1)).toNat

end

end A261087.P6203046886947649542

/-! ## A261087.P3717077178755440812

`A008578(A261086(n+1)+1)`
-/

namespace A261087.P3717077178755440812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A261086 (n + 1) + 1).toNat

end

end A261087.P3717077178755440812

/-! ## A261087.P8595093800805552194

`A045319(A261086(n+1)-1)`
-/

namespace A261087.P8595093800805552194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A261086 (n + 1) - 1).toNat

end

end A261087.P8595093800805552194

/-! ## A261087.P11082644530170883127

`A045344(A261086(n+1)-1)`
-/

namespace A261087.P11082644530170883127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A261086 (n + 1) - 1).toNat

end

end A261087.P11082644530170883127

/-! ## A261087.P15260174496096017173

`A065091(A261086(n+1)-1)`
-/

namespace A261087.P15260174496096017173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A261086 (n + 1) - 1).toNat

end

end A261087.P15260174496096017173

/-! ## A261087.P6081960836961251826

`A006005(or(A000038(n), A261086(n+1)))`
-/

namespace A261087.P6081960836961251826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lor (A000038 n) (A261086 (n + 1))).toNat

end

end A261087.P6081960836961251826

/-! ## A261087.P992288488543917557

`A006005(lcm(A212157(n+1), A261086(n+1)))`
-/

namespace A261087.P992288488543917557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lcm (A212157 (n + 1)) (A261086 (n + 1)))

end

end A261087.P992288488543917557

/-!
# A261088: Number of steps needed to reach zero when starting from k = n^2 and repeatedly applying the map that replaces k with k - d(k), where d(k) is the number of divisors of k (A000005).

The programs for A261088, the canonical program `A261088.P12367769580199237088` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261088 has offset 0).

The definition of A261088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261088.P12367769580199237088

`A155043(n²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261088

/-- `A155043(n²)` -/
def P12367769580199237088.Spec : Prop :=
  ∀ n, P12367769580199237088.a n = A261088 n

theorem P12367769580199237088.correct : P12367769580199237088.Spec := by
  intro n
  simp only [A261088]

end A261088

/-! ## A261088.P11460437025532813529

`A155043(n^2)%∑[n+1]`
-/

namespace A261088.P11460437025532813529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155043 (n ^ 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A261088.P11460437025532813529

namespace A261088

/-- `A155043(n^2)%∑[n+1]` -/
def P11460437025532813529.Spec : Prop :=
  ∀ n, P11460437025532813529.a n = A261088 n

end A261088

/-! ## A261088.P3608140995990378263

`and(-1, A155043(A000290(n)))`
-/

namespace A261088.P3608140995990378263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A155043 (A000290 n).toNat)

end

end A261088.P3608140995990378263

namespace A261088

/-- `and(-1, A155043(A000290(n)))` -/
def P3608140995990378263.Spec : Prop :=
  ∀ n, P3608140995990378263.a n = A261088 n

end A261088

/-! ## A261088.P4689021908050960319

`A054977(n)*A155043(A000290(n))`
-/

namespace A261088.P4689021908050960319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A155043 (A000290 n).toNat

end

end A261088.P4689021908050960319

namespace A261088

/-- `A054977(n)*A155043(A000290(n))` -/
def P4689021908050960319.Spec : Prop :=
  ∀ n, P4689021908050960319.a n = A261088 n

end A261088

/-! ## A261088.P6919505849687524099

`A057427(n)*A155043(A000290(n))`
-/

namespace A261088.P6919505849687524099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A155043 (A000290 n).toNat

end

end A261088.P6919505849687524099

namespace A261088

/-- `A057427(n)*A155043(A000290(n))` -/
def P6919505849687524099.Spec : Prop :=
  ∀ n, P6919505849687524099.a n = A261088 n

end A261088

/-! ## A261088.P10846752660292427205

`lcm(A033999(n), A155043(A000290(n)))`
-/

namespace A261088.P10846752660292427205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A155043 (A000290 n).toNat)

end

end A261088.P10846752660292427205

namespace A261088

/-- `lcm(A033999(n), A155043(A000290(n)))` -/
def P10846752660292427205.Spec : Prop :=
  ∀ n, (P10846752660292427205.a n : ℤ) = A261088 n

end A261088

/-! ## A261088.P10166453850262369506

`A155043(A000290(n))+A000035(2*n)`
-/

namespace A261088.P10166453850262369506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A000290 n).toNat + A000035 (2 * n)

end

end A261088.P10166453850262369506

namespace A261088

/-- `A155043(A000290(n))+A000035(2*n)` -/
def P10166453850262369506.Spec : Prop :=
  ∀ n, P10166453850262369506.a n = A261088 n

end A261088

/-! ## A261088.P12759387075974385389

`A155043(A000290(n))+A055671(A055671(n))`
-/

namespace A261088.P12759387075974385389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A000290 n).toNat + A055671 (A055671 n).toNat

end

end A261088.P12759387075974385389

namespace A261088

/-- `A155043(A000290(n))+A055671(A055671(n))` -/
def P12759387075974385389.Spec : Prop :=
  ∀ n, P12759387075974385389.a n = A261088 n

end A261088

/-! ## A261088.P2738489715133878728

`A001221(A000961(n+1))*A155043(A000290(n))`
-/

namespace A261088.P2738489715133878728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A155043 (A000290 n).toNat

end

end A261088.P2738489715133878728

namespace A261088

/-- `A001221(A000961(n+1))*A155043(A000290(n))` -/
def P2738489715133878728.Spec : Prop :=
  ∀ n, P2738489715133878728.a n = A261088 n

end A261088

/-! ## A261088.P11466059231565535341

`A263270(A263266(n²))`
-/

namespace A261088.P11466059231565535341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 (n ^ 2)).toNat

end

end A261088.P11466059231565535341

namespace A261088

/-- `A263270(A263266(n²))` -/
def P11466059231565535341.Spec : Prop :=
  ∀ n, P11466059231565535341.a n = A261088 n

end A261088

/-!
# A261089: a(n) = least k such that A155043(k) = n; positions of records in A155043.

The programs for A261089, there is no canonical definition to state claims against.
-/

/-! ## A261089.P14381888253921192819

`A259934(n)-A261103(n)`
-/

namespace A261089.P14381888253921192819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n - A261103 n

end

end A261089.P14381888253921192819

/-! ## A261089.P10011067655434558488

`A262503(n)-A262505(n)`
-/

namespace A261089.P10011067655434558488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A262505 n

end

end A261089.P10011067655434558488

/-! ## A261089.P15050262857311937725

`A263265(A263260(n)-A262507(n))`
-/

namespace A261089.P15050262857311937725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (A263260 n - A262507 n).toNat

end

end A261089.P15050262857311937725

/-! ## A261089.P13556176607870594593

`A263265(∑[A262507(n)]-A262507(n))`
-/

namespace A261089.P13556176607870594593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (∑ j ∈ Finset.range (n + 1), f1 j - A262507 n).toNat

end

end A261089.P13556176607870594593

/-! ## A261089.P15343846280135393088

`A259934(n)+A262506(n)-A262505(n)`
-/

namespace A261089.P15343846280135393088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n + (A262506 n - A262505 n)

end

end A261089.P15343846280135393088

/-! ## A261089.P3694048450875794768

`A262503(n)-(A262506(n)+A261103(n))`
-/

namespace A261089.P3694048450875794768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - (A262506 n + A261103 n)

end

end A261089.P3694048450875794768

/-! ## A261089.P17457129069292835048

`eq[1, A263259(n)]`
-/

namespace A261089.P17457129069292835048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261089.P17457129069292835048

/-! ## A261089.P11099150863952429077

`record[n/A263266(A263259(n)²)]`
-/

namespace A261089.P11099150863952429077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A263266 (A263259 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261089.P11099150863952429077

/-! ## A261089.P15167813637315978809

`record[n/A263267(A263259(n)²)]`
-/

namespace A261089.P15167813637315978809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A263267 (A263259 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261089.P15167813637315978809

/-! ## A261089.P2137362816541384948

`record[A263267(n)/A263259(A263267(n))]`
-/

namespace A261089.P2137362816541384948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263267 n : ℚ) / (A263259 (A263267 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261089.P2137362816541384948

/-!
# A261090: First differences of A261091: a(n) = A261091(n+1) - A261091(n).

The programs for A261090, the canonical program `A261090.P12363886356026085992` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261090 has offset 0).

The definition of A261090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261090.P12363886356026085992

`A261091(n+1)-A261091(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A261090

/-- `A261091(n+1)-A261091(n)` -/
def P12363886356026085992.Spec : Prop :=
  ∀ n, P12363886356026085992.a n = A261090 n

theorem P12363886356026085992.correct : P12363886356026085992.Spec := by
  intro n
  simp only [A261090]

end A261090

/-! ## A261090.P10101617398966769464

`Δ[A261091(n)]`
-/

namespace A261090.P10101617398966769464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261090.P10101617398966769464

namespace A261090

/-- `Δ[A261091(n)]` -/
def P10101617398966769464.Spec : Prop :=
  ∀ n, P10101617398966769464.a n = A261090 n

theorem P10101617398966769464.correct : P10101617398966769464.Spec := by
  intro n
  simp only [A261090, Nat.add_sub_cancel, A261090.P10101617398966769464.f1, A261090.P10101617398966769464.a, A261090.P12363886356026085992.a, SequenceMachineLib.memo_apply]

end A261090

/-! ## A261090.P12982086942442535892

`Δ[Δ[A261081(log2(A011782(n)))]]`
-/

namespace A261090.P12982086942442535892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261090.P12982086942442535892

namespace A261090

/-- `Δ[Δ[A261081(log2(A011782(n)))]]` -/
def P12982086942442535892.Spec : Prop :=
  ∀ n, P12982086942442535892.a n = A261090 n

end A261090

/-! ## A261090.P11541486460282962395

`Δ[Δ[A261082(log2(A011782(n)))]]`
-/

namespace A261090.P11541486460282962395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261082 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261090.P11541486460282962395

namespace A261090

/-- `Δ[Δ[A261082(log2(A011782(n)))]]` -/
def P11541486460282962395.Spec : Prop :=
  ∀ n, P11541486460282962395.a n = A261090 n

end A261090

/-! ## A261090.P8675610573799353198

`Δ[Δ[A261081(A289207(n+1))]]`
-/

namespace A261090.P8675610573799353198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 (A289207 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261090.P8675610573799353198

namespace A261090

/-- `Δ[Δ[A261081(A289207(n+1))]]` -/
def P8675610573799353198.Spec : Prop :=
  ∀ n, P8675610573799353198.a n = A261090 n

end A261090

/-!
# A261091: a(n) = number of steps required to reach F(n+1)-1 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

The programs for A261091, the canonical program `A261091.P14200442498164629939` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261091 has offset 0).

The definition of A261091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261091.P14200442498164629939

`A219642(A000045(n+2))-A219642(A000045(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A261091

/-- `A219642(A000045(n+2))-A219642(A000045(n+1))` -/
def P14200442498164629939.Spec : Prop :=
  ∀ n, P14200442498164629939.a n = A261091 n

theorem P14200442498164629939.correct : P14200442498164629939.Spec := by
  intro n
  simp only [A261091]

end A261091

/-! ## A261091.P3287331083315541940

`A219642(A000071(n+2))-A219642(A000071(n+1))`
-/

namespace A261091.P3287331083315541940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000071 (n + 2)).toNat - A219642 (A000071 (n + 1)).toNat

end

end A261091.P3287331083315541940

namespace A261091

/-- `A219642(A000071(n+2))-A219642(A000071(n+1))` -/
def P3287331083315541940.Spec : Prop :=
  ∀ n, P3287331083315541940.a n = A261091 n

end A261091

/-! ## A261091.P12306906160855660284

`∑[A261090(abs(1-n))]`
-/

namespace A261091.P12306906160855660284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261090 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261091.P12306906160855660284

namespace A261091

/-- `∑[A261090(abs(1-n))]` -/
def P12306906160855660284.Spec : Prop :=
  ∀ n, P12306906160855660284.a n = A261091 n

end A261091

/-! ## A261091.P4452865769777924908

`Δ[A261081(log2(ceil(2^(n-1))))]`
-/

namespace A261091.P4452865769777924908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261091.P4452865769777924908

namespace A261091

/-- `Δ[A261081(log2(ceil(2^(n-1))))]` -/
def P4452865769777924908.Spec : Prop :=
  ∀ n, P4452865769777924908.a n = A261091 n

end A261091

/-! ## A261091.P13073037665181670721

`Δ[A261082(log2(ceil(2^(n-1))))]`
-/

namespace A261091.P13073037665181670721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261082 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261091.P13073037665181670721

namespace A261091

/-- `Δ[A261082(log2(ceil(2^(n-1))))]` -/
def P13073037665181670721.Spec : Prop :=
  ∀ n, P13073037665181670721.a n = A261091 n

end A261091

/-!
# A261092: First differences of A261093; characteristic function for A219640.

The programs for A261092, the canonical program `A261092.P3361888197169044314` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261092 has offset 0).

The definition of A261092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261092.P3361888197169044314

`char[A219640(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A261092

/-- `char[A219640(n)]` -/
def P3361888197169044314.Spec : Prop :=
  ∀ n, (P3361888197169044314.a n : ℤ) = A261092 n

theorem P3361888197169044314.correct : P3361888197169044314.Spec := by
  intro n
  simp only [A261092]

end A261092

/-! ## A261092.P3038339801387667588

`char[A219641(n)]`
-/

namespace A261092.P3038339801387667588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P3038339801387667588

namespace A261092

/-- `char[A219641(n)]` -/
def P3038339801387667588.Spec : Prop :=
  ∀ n, (P3038339801387667588.a n : ℤ) = A261092 n

end A261092

/-! ## A261092.P195252248745382584

`char[n-A007895(n)]`
-/

namespace A261092.P195252248745382584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P195252248745382584

namespace A261092

/-- `char[n-A007895(n)]` -/
def P195252248745382584.Spec : Prop :=
  ∀ n, (P195252248745382584.a n : ℤ) = A261092 n

end A261092

/-! ## A261092.P7182141448470760860

`char[comp[A219638(n+1)]]`
-/

namespace A261092.P7182141448470760860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219638 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A261092.P7182141448470760860

namespace A261092

/-- `char[comp[A219638(n+1)]]` -/
def P7182141448470760860.Spec : Prop :=
  ∀ n, (P7182141448470760860.a n : ℤ) = A261092 n

end A261092

/-! ## A261092.P497759917713962760

`char[A219637(n+1)-n]`
-/

namespace A261092.P497759917713962760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P497759917713962760

namespace A261092

/-- `char[A219637(n+1)-n]` -/
def P497759917713962760.Spec : Prop :=
  ∀ n, (P497759917713962760.a n : ℤ) = A261092 n

end A261092

/-! ## A261092.P16248650964421544725

`char[A288601(n+1)-(n+2)]`
-/

namespace A261092.P16248650964421544725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P16248650964421544725

namespace A261092

/-- `char[A288601(n+1)-(n+2)]` -/
def P16248650964421544725.Spec : Prop :=
  ∀ n, (P16248650964421544725.a n : ℤ) = A261092 n

end A261092

/-! ## A261092.P10742267352315658961

`char[A288625(n+1)-(n+2)]`
-/

namespace A261092.P10742267352315658961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P10742267352315658961

namespace A261092

/-- `char[A288625(n+1)-(n+2)]` -/
def P10742267352315658961.Spec : Prop :=
  ∀ n, (P10742267352315658961.a n : ℤ) = A261092 n

end A261092

/-! ## A261092.P3287396205457502237

`1-char[eq[3, A004743(n+1)%4]]`
-/

namespace A261092.P3287396205457502237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004743 (n + 1)) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261092.P3287396205457502237

namespace A261092

/-- `1-char[eq[3, A004743(n+1)%4]]` -/
def P3287396205457502237.Spec : Prop :=
  ∀ n, P3287396205457502237.a n = A261092 n

end A261092

/-! ## A261092.P13682985901526116245

`A296135(A383977(n+1))`
-/

namespace A261092.P13682985901526116245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 (A383977 (n + 1)).toNat

end

end A261092.P13682985901526116245

namespace A261092

/-- `A296135(A383977(n+1))` -/
def P13682985901526116245.Spec : Prop :=
  ∀ n, P13682985901526116245.a n = A261092 n

end A261092

/-! ## A261092.P9258370176514673749

`A001221(Δ[A283794(n+1)])`
-/

namespace A261092.P9258370176514673749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A261092.P9258370176514673749

namespace A261092

/-- `A001221(Δ[A283794(n+1)])` -/
def P9258370176514673749.Spec : Prop :=
  ∀ n, P9258370176514673749.a n = A261092 n

end A261092

/-! ## A261092.P2755817392873995776

`A001222(Δ[A283794(n+1)])`
-/

namespace A261092.P2755817392873995776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A261092.P2755817392873995776

namespace A261092

/-- `A001222(Δ[A283794(n+1)])` -/
def P2755817392873995776.Spec : Prop :=
  ∀ n, P2755817392873995776.a n = A261092 n

end A261092

/-! ## A261092.P3617397945062541034

`A001221(Δ[A288602(n+1)])`
-/

namespace A261092.P3617397945062541034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A261092.P3617397945062541034

namespace A261092

/-- `A001221(Δ[A288602(n+1)])` -/
def P3617397945062541034.Spec : Prop :=
  ∀ n, P3617397945062541034.a n = A261092 n

end A261092

/-! ## A261092.P17161206505092713856

`A001222(Δ[A288602(n+1)])`
-/

namespace A261092.P17161206505092713856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A261092.P17161206505092713856

namespace A261092

/-- `A001222(Δ[A288602(n+1)])` -/
def P17161206505092713856.Spec : Prop :=
  ∀ n, P17161206505092713856.a n = A261092 n

end A261092

/-! ## A261092.P17819949902593956248

`1-A000007(A261094(A000007(n)+n))`
-/

namespace A261092.P17819949902593956248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A261094 (A000007 n + (n : ℤ)).toNat).toNat

end

end A261092.P17819949902593956248

namespace A261092

/-- `1-A000007(A261094(A000007(n)+n))` -/
def P17819949902593956248.Spec : Prop :=
  ∀ n, P17819949902593956248.a n = A261092 n

end A261092

/-! ## A261092.P8022362473411300660

`A130706(n)+1-A130706(A261094(n))`
-/

namespace A261092.P8022362473411300660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + (1 - A130706 (A261094 n).toNat)

end

end A261092.P8022362473411300660

namespace A261092

/-- `A130706(n)+1-A130706(A261094(n))` -/
def P8022362473411300660.Spec : Prop :=
  ∀ n, P8022362473411300660.a n = A261092 n

end A261092

/-! ## A261092.P9608323929094821010

`A130713(n)+1-A130713(A261094(n))`
-/

namespace A261092.P9608323929094821010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n + (1 - A130713 (A261094 n).toNat)

end

end A261092.P9608323929094821010

namespace A261092

/-- `A130713(n)+1-A130713(A261094(n))` -/
def P9608323929094821010.Spec : Prop :=
  ∀ n, P9608323929094821010.a n = A261092 n

end A261092

/-! ## A261092.P6751907826782719523

`A166926(n)+1-A166926(A261094(n))`
-/

namespace A261092.P6751907826782719523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n + (1 - A166926 (A261094 n).toNat)

end

end A261092.P6751907826782719523

namespace A261092

/-- `A166926(n)+1-A166926(A261094(n))` -/
def P6751907826782719523.Spec : Prop :=
  ∀ n, P6751907826782719523.a n = A261092 n

end A261092

/-! ## A261092.P2994145232482075316

`A169585(n)+1-A169585(A261094(n))`
-/

namespace A261092.P2994145232482075316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n + (1 - A169585 (A261094 n).toNat)

end

end A261092.P2994145232482075316

namespace A261092

/-- `A169585(n)+1-A169585(A261094(n))` -/
def P2994145232482075316.Spec : Prop :=
  ∀ n, P2994145232482075316.a n = A261092 n

end A261092

/-! ## A261092.P5616773939577584992

`A263013(n)+1-A263013(A261094(n))`
-/

namespace A261092.P5616773939577584992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + (1 - A263013 (A261094 n).toNat)

end

end A261092.P5616773939577584992

namespace A261092

/-- `A263013(n)+1-A263013(A261094(n))` -/
def P5616773939577584992.Spec : Prop :=
  ∀ n, P5616773939577584992.a n = A261092 n

end A261092

/-! ## A261092.P15582186741165175607

`A001221(A288931(2*(n+1))-A288931(2*n+1))`
-/

namespace A261092.P15582186741165175607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A288931 (2 * (n + 1)) - A288931 (2 * n + 1)).toNat

end

end A261092.P15582186741165175607

namespace A261092

/-- `A001221(A288931(2*(n+1))-A288931(2*n+1))` -/
def P15582186741165175607.Spec : Prop :=
  ∀ n, P15582186741165175607.a n = A261092 n

end A261092

/-!
# A261093: a(n) = number of nonzero terms of A219640 <= n.

The programs for A261093, the canonical program `A261093.P14586296269946193917` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261093 has offset 0).

The definition of A261093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261093.P14586296269946193917

`∑[A261092(n)]-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A261093

/-- `∑[A261092(n)]-1` -/
def P14586296269946193917.Spec : Prop :=
  ∀ n, P14586296269946193917.a n = A261093 n

theorem P14586296269946193917.correct : P14586296269946193917.Spec := by
  intro n
  simp only [A261093]

end A261093

/-! ## A261093.P10261875411436409163

`∑[char[A219640(n+1)]]`
-/

namespace A261093.P10261875411436409163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261093.P10261875411436409163

namespace A261093

/-- `∑[char[A219640(n+1)]]` -/
def P10261875411436409163.Spec : Prop :=
  ∀ n, (P10261875411436409163.a n : ℤ) = A261093 n

end A261093

/-! ## A261093.P4739629869056275730

`∑[char[A219641(n+2)]]`
-/

namespace A261093.P4739629869056275730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261093.P4739629869056275730

namespace A261093

/-- `∑[char[A219641(n+2)]]` -/
def P4739629869056275730.Spec : Prop :=
  ∀ n, (P4739629869056275730.a n : ℤ) = A261093 n

end A261093

/-! ## A261093.P3745097377648299454

`∑[char[A219640(n)]]-1`
-/

namespace A261093.P3745097377648299454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A261093.P3745097377648299454

namespace A261093

/-- `∑[char[A219640(n)]]-1` -/
def P3745097377648299454.Spec : Prop :=
  ∀ n, P3745097377648299454.a n = A261093 n

end A261093

/-! ## A261093.P10157544865212595488

`∑[char[A219641(n)]]-1`
-/

namespace A261093.P10157544865212595488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A261093.P10157544865212595488

namespace A261093

/-- `∑[char[A219641(n)]]-1` -/
def P10157544865212595488.Spec : Prop :=
  ∀ n, P10157544865212595488.a n = A261093 n

end A261093

/-! ## A261093.P12068611169721956402

`comp[A219637(n+1)]-(n+1)`
-/

namespace A261093.P12068611169721956402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A261093.P12068611169721956402

namespace A261093

/-- `comp[A219637(n+1)]-(n+1)` -/
def P12068611169721956402.Spec : Prop :=
  ∀ n, P12068611169721956402.a n = A261093 n

end A261093

/-! ## A261093.P17855300876271358539

`∑[char[A028310(A219641(n))]]`
-/

namespace A261093.P17855300876271358539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A219641 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261093.P17855300876271358539

namespace A261093

/-- `∑[char[A028310(A219641(n))]]` -/
def P17855300876271358539.Spec : Prop :=
  ∀ n, (P17855300876271358539.a n : ℤ) = A261093 n

end A261093

/-! ## A261093.P9646931076187612703

`n-∑[A288375(A288602(n+1))]`
-/

namespace A261093.P9646931076187612703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A288602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261093.P9646931076187612703

namespace A261093

/-- `n-∑[A288375(A288602(n+1))]` -/
def P9646931076187612703.Spec : Prop :=
  ∀ n, P9646931076187612703.a n = A261093 n

end A261093

/-! ## A261093.P9070054749542436430

`a(n-1)+1-A288375(A283794(n+1)+1)` with `a(0)=0`
-/

namespace A261093.P9070054749542436430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A288375 (A283794 (n + 1) + 1).toNat)

end

end A261093.P9070054749542436430

namespace A261093

/-- `a(n-1)+1-A288375(A283794(n+1)+1)` -/
def P9070054749542436430.Spec : Prop :=
  ∀ n, P9070054749542436430.a n = A261093 n

end A261093

/-! ## A261093.P6003535232991393959

`A022290(A004743(n+1)+1)-1`
-/

namespace A261093.P6003535232991393959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A004743 (n + 1) + 1).toNat - 1

end

end A261093.P6003535232991393959

namespace A261093

/-- `A022290(A004743(n+1)+1)-1` -/
def P6003535232991393959.Spec : Prop :=
  ∀ n, P6003535232991393959.a n = A261093 n

end A261093

/-!
# A261094: Left inverse of A219640: If n = A219640(k) for some k, then a(n) = k, otherwise zero.

The programs for A261094, the canonical program `A261094.P291515214993649240` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261094 has offset 0).

The definition of A261094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261092, A261093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261094.P291515214993649240

`A261092(n)*A261093(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A261094

/-- `A261092(n)*A261093(n)` -/
def P291515214993649240.Spec : Prop :=
  ∀ n, P291515214993649240.a n = A261094 n

theorem P291515214993649240.correct : P291515214993649240.Spec := by
  intro n
  simp only [A261094]

end A261094

/-! ## A261094.P9457555398556050885

`A261093(and(n, -A261092(n)))`
-/

namespace A261094.P9457555398556050885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 (Int.land (n : ℤ) (-A261092 n)).toNat

end

end A261094.P9457555398556050885

namespace A261094

/-- `A261093(and(n, -A261092(n)))` -/
def P9457555398556050885.Spec : Prop :=
  ∀ n, P9457555398556050885.a n = A261094 n

end A261094

/-! ## A261094.P6654855484984868455

`A261093(n*char[A219640(n)])`
-/

namespace A261094.P6654855484984868455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A261094.P6654855484984868455

namespace A261094

/-- `A261093(n*char[A219640(n)])` -/
def P6654855484984868455.Spec : Prop :=
  ∀ n, P6654855484984868455.a n = A261094 n

end A261094

/-! ## A261094.P11719852700934125435

`A261093(n*char[A219641(n)])`
-/

namespace A261094.P11719852700934125435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A261094.P11719852700934125435

namespace A261094

/-- `A261093(n*char[A219641(n)])` -/
def P11719852700934125435.Spec : Prop :=
  ∀ n, P11719852700934125435.a n = A261094 n

end A261094

/-! ## A261094.P11509400227389589080

`A355524(A036897(n+2))`
-/

namespace A261094.P11509400227389589080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355524 (A036897 (n + 2)).toNat

end

end A261094.P11509400227389589080

namespace A261094

/-- `A355524(A036897(n+2))` -/
def P11509400227389589080.Spec : Prop :=
  ∀ n, P11509400227389589080.a n = A261094 n

end A261094

/-!
# A261095: First differences of A219640: a(n) = A219640(n+1) - A219640(n).

The programs for A261095, the canonical program `A261095.P11813985126909535147` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261095 has offset 0).

The definition of A261095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261095.P11813985126909535147

`A219640(n+1)-A219640(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A261095

/-- `A219640(n+1)-A219640(n)` -/
def P11813985126909535147.Spec : Prop :=
  ∀ n, P11813985126909535147.a n = A261095 n

theorem P11813985126909535147.correct : P11813985126909535147.Spec := by
  intro n
  simp only [A261095]

end A261095

/-! ## A261095.P3715599252427927895

`Δ[A219640(n)]`
-/

namespace A261095.P3715599252427927895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261095.P3715599252427927895

namespace A261095

/-- `Δ[A219640(n)]` -/
def P3715599252427927895.Spec : Prop :=
  ∀ n, P3715599252427927895.a n = A261095 n

theorem P3715599252427927895.correct : P3715599252427927895.Spec := by
  intro n
  simp only [A261095, Nat.add_sub_cancel, A261095.P3715599252427927895.f1, A261095.P3715599252427927895.a, A261095.P11813985126909535147.a, SequenceMachineLib.memo_apply]

end A261095

/-! ## A261095.P145268612940466589

`floor(A035614(n)/2)+1`
-/

namespace A261095.P145268612940466589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035614 n : ℚ) / 2⌋ + 1

end

end A261095.P145268612940466589

namespace A261095

/-- `floor(A035614(n)/2)+1` -/
def P145268612940466589.Spec : Prop :=
  ∀ n, P145268612940466589.a n = A261095 n

end A261095

/-! ## A261095.P11998240739982266327

`ceil(A035612(n+1)/2)`
-/

namespace A261095.P11998240739982266327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035612 (n + 1) : ℚ) / 2⌉

end

end A261095.P11998240739982266327

namespace A261095

/-- `ceil(A035612(n+1)/2)` -/
def P11998240739982266327.Spec : Prop :=
  ∀ n, P11998240739982266327.a n = A261095 n

end A261095

/-! ## A261095.P14909520168632631029

`ceil(log2(sqrt(A319432(n+1))))`
-/

namespace A261095.P14909520168632631029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A319432 (n + 1) : ℝ))⌉

end

end A261095.P14909520168632631029

namespace A261095

/-- `ceil(log2(sqrt(A319432(n+1))))` -/
def P14909520168632631029.Spec : Prop :=
  ∀ n, P14909520168632631029.a n = A261095 n

end A261095

/-! ## A261095.P7318287194503978981

`Δ[floor(ϕ*(n+1))-A007895(n)]`
-/

namespace A261095.P7318287194503978981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261095.P7318287194503978981

namespace A261095

/-- `Δ[floor(ϕ*(n+1))-A007895(n)]` -/
def P7318287194503978981.Spec : Prop :=
  ∀ n, P7318287194503978981.a n = A261095 n

end A261095

/-! ## A261095.P1895265784089304294

`A008619(A035614(n))`
-/

namespace A261095.P1895265784089304294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035614 n).toNat

end

end A261095.P1895265784089304294

namespace A261095

/-- `A008619(A035614(n))` -/
def P1895265784089304294.Spec : Prop :=
  ∀ n, P1895265784089304294.a n = A261095 n

end A261095

/-! ## A261095.P7066502897711480478

`A034888(A035612(n+1))`
-/

namespace A261095.P7066502897711480478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A035612 (n + 1)).toNat

end

end A261095.P7066502897711480478

namespace A261095

/-- `A034888(A035612(n+1))` -/
def P7066502897711480478.Spec : Prop :=
  ∀ n, P7066502897711480478.a n = A261095 n

end A261095

/-! ## A261095.P9058304146392085733

`A000119(A139764(n+1))`
-/

namespace A261095.P9058304146392085733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A139764 (n + 1)).toNat

end

end A261095.P9058304146392085733

namespace A261095

/-- `A000119(A139764(n+1))` -/
def P9058304146392085733.Spec : Prop :=
  ∀ n, P9058304146392085733.a n = A261095 n

end A261095

/-! ## A261095.P14161904722938338563

`A004526(A035614(n)+2)`
-/

namespace A261095.P14161904722938338563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035614 n + 2).toNat

end

end A261095.P14161904722938338563

namespace A261095

/-- `A004526(A035614(n)+2)` -/
def P14161904722938338563.Spec : Prop :=
  ∀ n, P14161904722938338563.a n = A261095 n

end A261095

/-! ## A261095.P13642662972232007201

`A008621(2*A035614(n))`
-/

namespace A261095.P13642662972232007201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A035614 n).toNat

end

end A261095.P13642662972232007201

namespace A261095

/-- `A008621(2*A035614(n))` -/
def P13642662972232007201.Spec : Prop :=
  ∀ n, P13642662972232007201.a n = A261095 n

end A261095

/-! ## A261095.P10631760555145684428

`ceil(ratio[A093998(n)+A093997(n)])`
-/

namespace A261095.P10631760555145684428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n + A093997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A261095.P10631760555145684428

namespace A261095

/-- `ceil(ratio[A093998(n)+A093997(n)])` -/
def P10631760555145684428.Spec : Prop :=
  ∀ n, P10631760555145684428.a n = A261095 n

end A261095

/-! ## A261095.P7833156469201289417

`A008621(A035614(n)+A035614(n)+1)`
-/

namespace A261095.P7833156469201289417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A035614 n + (A035614 n + 1)).toNat

end

end A261095.P7833156469201289417

namespace A261095

/-- `A008621(A035614(n)+A035614(n)+1)` -/
def P7833156469201289417.Spec : Prop :=
  ∀ n, P7833156469201289417.a n = A261095 n

end A261095

/-! ## A261095.P3643485978544987281

`A007895(n+1)+A035614(n)-A007895(n)`
-/

namespace A261095.P3643485978544987281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) + (A035614 n - A007895 n)

end

end A261095.P3643485978544987281

namespace A261095

/-- `A007895(n+1)+A035614(n)-A007895(n)` -/
def P3643485978544987281.Spec : Prop :=
  ∀ n, P3643485978544987281.a n = A261095 n

end A261095

/-! ## A261095.P7425877751028761283

`ceil(ratio[A000119(n)])`
-/

namespace A261095.P7425877751028761283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A261095.P7425877751028761283

namespace A261095

/-- `ceil(ratio[A000119(n)])` -/
def P7425877751028761283.Spec : Prop :=
  ∀ n, P7425877751028761283.a n = A261095 n

end A261095

/-! ## A261095.P4641286972120451256

`Δ[comp[A219638(n+1)]]`
-/

namespace A261095.P4641286972120451256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219638 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A261095.P4641286972120451256

namespace A261095

/-- `Δ[comp[A219638(n+1)]]` -/
def P4641286972120451256.Spec : Prop :=
  ∀ n, P4641286972120451256.a n = A261095 n

end A261095

/-! ## A261095.P17190081327655625818

`Δ[A219637(n+1)]-1`
-/

namespace A261095.P17190081327655625818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A261095.P17190081327655625818

namespace A261095

/-- `Δ[A219637(n+1)]-1` -/
def P17190081327655625818.Spec : Prop :=
  ∀ n, P17190081327655625818.a n = A261095 n

end A261095

/-! ## A261095.P11187685452566621978

`ceil(A000119(n+1)/A000119(n))`
-/

namespace A261095.P11187685452566621978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000119 (n + 1) : ℚ) / (A000119 n : ℚ)⌉

end

end A261095.P11187685452566621978

namespace A261095

/-- `ceil(A000119(n+1)/A000119(n))` -/
def P11187685452566621978.Spec : Prop :=
  ∀ n, P11187685452566621978.a n = A261095 n

end A261095

/-! ## A261095.P13827271392769221271

`A001468(n+1)+A007895(n)-A007895(n+1)`
-/

namespace A261095.P13827271392769221271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1) + (A007895 n - A007895 (n + 1))

end

end A261095.P13827271392769221271

namespace A261095

/-- `A001468(n+1)+A007895(n)-A007895(n+1)` -/
def P13827271392769221271.Spec : Prop :=
  ∀ n, P13827271392769221271.a n = A261095 n

end A261095

/-! ## A261095.P4079157508564343954

`A219637(n+2)-(A219641(n)+A000201(n+1))`
-/

namespace A261095.P4079157508564343954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 2) - (A219641 n + A000201 (n + 1))

end

end A261095.P4079157508564343954

namespace A261095

/-- `A219637(n+2)-(A219641(n)+A000201(n+1))` -/
def P4079157508564343954.Spec : Prop :=
  ∀ n, P4079157508564343954.a n = A261095 n

end A261095

/-!
# A261096: A(i,j) = rank (in A055089) of the composition of the i-th and the j-th permutation in table A055089, which lists all finite permutations in reversed colexicographic ordering.

The programs for A261096, there is no canonical definition to state claims against.
-/

/-! ## A261096.P18343854723114218766

`A261097(A061579(n))`
-/

namespace A261096.P18343854723114218766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A061579 n).toNat

end

end A261096.P18343854723114218766

/-! ## A261096.P12101436970287300229

`A261097(A114327(n)+n)`
-/

namespace A261096.P12101436970287300229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A114327 n + (n : ℤ)).toNat

end

end A261096.P12101436970287300229

/-! ## A261096.P18052746977517808550

`A261097(A038722(n+1)-1)`
-/

namespace A261096.P18052746977517808550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A038722 (n + 1) - 1).toNat

end

end A261096.P18052746977517808550

/-! ## A261096.P2730309869013501541

`A261097(A093995(n+1)-(n+1))`
-/

namespace A261096.P2730309869013501541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A261096.P2730309869013501541

/-! ## A261096.P13148605748799316004

`A261097(A023443(A038722(n+1)))`
-/

namespace A261096.P13148605748799316004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A261096.P13148605748799316004

/-! ## A261096.P1987112394644899848

`A261097(A002378(n)%A014132(n+1))`
-/

namespace A261096.P1987112394644899848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A261096.P1987112394644899848

/-! ## A261096.P7168966121273311170

`A261097(A214526(A038722(n+1)²))`
-/

namespace A261096.P7168966121273311170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A214526 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A261096.P7168966121273311170

/-!
# A261097: Transpose of square array A261096.

The programs for A261097, there is no canonical definition to state claims against.
-/

/-! ## A261097.P5277122301593932052

`A261096(∑[2*n]%comp[∑[n]])`
-/

namespace A261097.P5277122301593932052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A261097.P5277122301593932052

/-! ## A261097.P1280733895356799515

`A261096(∑[char[∑[n]]]²-n-1)`
-/

namespace A261097.P1280733895356799515
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A261097.P1280733895356799515

/-! ## A261097.P12651574084538437909

`A261096(A061579(n))%(2*n+5)`
-/

namespace A261097.P12651574084538437909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261096 (A061579 n).toNat) (2 * n + 5 : ℤ)

end

end A261097.P12651574084538437909

/-! ## A261097.P6038843389306367460

`A057427(n)*A261096(∑[A198954(n)-1])`
-/

namespace A261097.P6038843389306367460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A261096 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261097.P6038843389306367460

/-! ## A261097.P12474471508554785363

`A261096(A061579(n))+A014027(3*n+2)`
-/

namespace A261097.P12474471508554785363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (A061579 n).toNat + A014027 (3 * n + 2)

end

end A261097.P12474471508554785363

/-!
# A261098: Row 1 of A261096.

The programs for A261098, there is no canonical definition to state claims against.
-/

/-! ## A261098.P1100425059515464657

`A060119(A261218(A060126(n)))`
-/

namespace A261098.P1100425059515464657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A261218 (A060126 n).toNat).toNat

end

end A261098.P1100425059515464657

/-! ## A261098.P14856356371515993662

`A056019(xor(1, A056019(n)))`
-/

namespace A261098.P14856356371515993662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (Int.xor 1 (A056019 n)).toNat

end

end A261098.P14856356371515993662

/-! ## A261098.P268742738202729595

`A056019(A004442(A056019(n)))`
-/

namespace A261098.P268742738202729595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A004442 (A056019 n).toNat).toNat

end

end A261098.P268742738202729595

/-! ## A261098.P7998543347124093514

`A060119(A261218(n))+n-A060119(n)`
-/

namespace A261098.P7998543347124093514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A261218 n).toNat + ((n : ℤ) - A060119 n)

end

end A261098.P7998543347124093514

/-! ## A261098.P2060761613876028548

`A060119(A060125(A004442(A060127(n))))`
-/

namespace A261098.P2060761613876028548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A060125 (A004442 (A060127 n).toNat).toNat).toNat

end

end A261098.P2060761613876028548

/-! ## A261098.P4201574978957415312

`A261096(∑[n+1]+1)`
-/

namespace A261098.P4201574978957415312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261098.P4201574978957415312

/-! ## A261098.P22645063285690622

`A261097(∑[n+2]-1)`
-/

namespace A261098.P22645063285690622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A261098.P22645063285690622

/-!
# A261099: Main diagonal of A261096.

The programs for A261099, there is no canonical definition to state claims against.
-/

/-! ## A261099.P8680475406341445239

`A060119(A261219(A060126(n)))`
-/

namespace A261099.P8680475406341445239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A261219 (A060126 n).toNat).toNat

end

end A261099.P8680475406341445239

/-! ## A261099.P7058976613366346684

`A060119(A261219(A060125(A060127(n))))`
-/

namespace A261099.P7058976613366346684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A261219 (A060125 (A060127 n).toNat).toNat).toNat

end

end A261099.P7058976613366346684

/-! ## A261099.P15118679613512733403

`A261096(∑[4*n])`
-/

namespace A261099.P15118679613512733403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261099.P15118679613512733403

/-! ## A261099.P15962845812129649138

`and(-1, A261096(2*(n²+n)))`
-/

namespace A261099.P15962845812129649138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A261096 (2 * (n ^ 2 + n)))

end

end A261099.P15962845812129649138

/-! ## A261099.P17573985478265713779

`or(char[4], A261096(A106232(n+1)))`
-/

namespace A261099.P17573985478265713779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261096 (A106232 (n + 1)).toNat)

end

end A261099.P17573985478265713779

/-! ## A261099.P17374108804552458731

`A261096(2*(n²+n))%A000041(n+1)`
-/

namespace A261099.P17374108804552458731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261096 (2 * (n ^ 2 + n))) (A000041 (n + 1))

end

end A261099.P17374108804552458731

/-! ## A261099.P15502830948768073656

`A007318(C(3, n))*A261096(2*(n²+n))`
-/

namespace A261099.P15502830948768073656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A261096 (2 * (n ^ 2 + n))

end

end A261099.P15502830948768073656

/-! ## A261099.P4072889067368533555

`A261097(∑[4*n])`
-/

namespace A261099.P4072889067368533555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261099.P4072889067368533555

