import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A382800: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] 1 / (1 - log(1-x) * log(1-y))^3.

The programs for A382800, there is no canonical definition to state claims against.
-/

/-! ## A382800.P1791367616085879709

`A026792(A227437(n+4))*A382735(n)`
-/

namespace A382800.P1791367616085879709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (A227437 (n + 4)).toNat * A382735 n

end

end A382800.P1791367616085879709

/-!
# A382803: Positive integers m such that phi(m) and phi(m+1) are both powers of 2.

The programs for A382803, there is no canonical definition to state claims against.
-/

/-! ## A382803.P2774227638068464794

`A347167(n+1)-1`
-/

namespace A382803.P2774227638068464794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347167 (n + 1) - 1

end

end A382803.P2774227638068464794

/-! ## A382803.P12741110155996510901

`∩[A003401(n+1)-1, A003401(n+1)]`
-/

namespace A382803.P12741110155996510901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382803.P12741110155996510901

/-! ## A382803.P16740925484828231357

`A347210(A294929(n+1))+A347167(n+1)`
-/

namespace A382803.P16740925484828231357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347210 (A294929 (n + 1)).toNat + A347167 (n + 1)

end

end A382803.P16740925484828231357

/-! ## A382803.P137504336674172792

`A347211(A347174(n+1))+A347167(n+1)`
-/

namespace A382803.P137504336674172792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347211 (A347174 (n + 1)).toNat + A347167 (n + 1)

end

end A382803.P137504336674172792

/-! ## A382803.P7214181755260161720

`A283526(n)+A054375(A037203(3*n+2))`
-/

namespace A382803.P7214181755260161720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283526 n + A054375 (A037203 (3 * n + 2)).toNat

end

end A382803.P7214181755260161720

/-!
# A382804: a(n) = Sum_{k=0..n} k! * (k+1)! * Stirling1(n,k)^2.

The programs for A382804, there is no canonical definition to state claims against.
-/

/-! ## A382804.P11879703070023278454

`A382799(∑[4*n])`
-/

namespace A382804.P11879703070023278454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382799 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382804.P11879703070023278454

/-! ## A382804.P1804022044926912586

`A382799(A046092(n))%A000533(n+3)`
-/

namespace A382804.P1804022044926912586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382799 (A046092 n).toNat) (A000533 (n + 3))

end

end A382804.P1804022044926912586

/-!
# A382805: a(n) = Sum_{k=0..n} (-1)^(n-k) * (Stirling1(n,k) * k!)^2.

The programs for A382805, there is no canonical definition to state claims against.
-/

/-! ## A382805.P8243847993776579328

`A247501(A128386(n))`
-/

namespace A382805.P8243847993776579328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247501 (A128386 n).toNat

end

end A382805.P8243847993776579328

/-!
# A382806: a(n) = Sum_{k=0..n} (k!)^2 * binomial(k+2,2) * Stirling1(n,k)^2.

The programs for A382806, there is no canonical definition to state claims against.
-/

/-! ## A382806.P3998634401217413789

`A382800(∑[4*n])`
-/

namespace A382806.P3998634401217413789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382806.P3998634401217413789

/-!
# A382809: a(n) = (6*n + 1)*(12*n + 1)*(18*n + 1).

The programs for A382809, the canonical program `A382809.P2780309391022202313` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382809 has offset 0).

The definition of A382809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)*(12*n+1)*(18*n+1)` (program `A382809.P2780309391022202313`, by `A382809.P2780309391022202313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382809.P2780309391022202313

`(6*n+1)*(12*n+1)*(18*n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A382809

/-- `(6*n+1)*(12*n+1)*(18*n+1)` -/
def P2780309391022202313.Spec : Prop :=
  ∀ n, (P2780309391022202313.a n : ℤ) = A382809 n

theorem P2780309391022202313.correct : P2780309391022202313.Spec := by
  intro n
  simp only [A382809]

end A382809

/-! ## A382809.P14405554123848563630

`A011199(6*n)`
-/

namespace A382809.P14405554123848563630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (6 * n)

end

end A382809.P14405554123848563630

namespace A382809

/-- `A011199(6*n)` -/
def P14405554123848563630.Spec : Prop :=
  ∀ n, P14405554123848563630.a n = A382809 n

end A382809

/-! ## A382809.P18375621826659068647

`lcm(A000567(A016921(n)), A016921(2*n))`
-/

namespace A382809.P18375621826659068647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000567 (A016921 n).toNat) (A016921 (2 * n))

end

end A382809.P18375621826659068647

namespace A382809

/-- `lcm(A000567(A016921(n)), A016921(2*n))` -/
def P18375621826659068647.Spec : Prop :=
  ∀ n, (P18375621826659068647.a n : ℤ) = A382809 n

end A382809

/-!
# A382810: Primes p such that p + 6, p + 10 and p + 16 are also primes.

The programs for A382810, there is no canonical definition to state claims against.
-/

/-! ## A382810.P8237836737696669078

`∩[A046139(n+1), A049488(n+1)]`
-/

namespace A382810.P8237836737696669078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382810.P8237836737696669078

/-! ## A382810.P8022175872067091027

`∩[A046139(n+1), A209839(n+1)]`
-/

namespace A382810.P8022175872067091027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382810.P8022175872067091027

/-! ## A382810.P10398326405939330786

`record[A143429(record[A039924(n)])]`
-/

namespace A382810.P10398326405939330786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143429 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382810.P10398326405939330786

/-!
# A382811: Integers k such that d*2^k - 1 is prime for some divisor d of k.

The programs for A382811, there is no canonical definition to state claims against.
-/

/-! ## A382811.P1933560546646294829

`A383043(n+1)%A007749(n+1)`
-/

namespace A382811.P1933560546646294829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383043 (n + 1)) (A007749 (n + 1))

end

end A382811.P1933560546646294829

/-! ## A382811.P7713700872066687805

`A383043(n+1)+A010058(A383015(n+1))`
-/

namespace A382811.P7713700872066687805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383043 (n + 1) + A010058 (A383015 (n + 1)).toNat

end

end A382811.P7713700872066687805

/-! ## A382811.P1404981937553973258

`A383043(n+1)+A243046(A061246(2*n+3))`
-/

namespace A382811.P1404981937553973258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383043 (n + 1) + A243046 (A061246 (2 * n + 3)).toNat

end

end A382811.P1404981937553973258

/-! ## A382811.P2265659835929574144

`A383043(n+1)/A001222(A125557(3*(n+1)))`
-/

namespace A382811.P2265659835929574144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383043 (n + 1) : ℚ) / (A001222 (A125557 (3 * (n + 1))).toNat : ℚ)

end

end A382811.P2265659835929574144

/-! ## A382811.P7549633261798805149

`A097449(A383043(n+1))`
-/

namespace A382811.P7549633261798805149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A383043 (n + 1)).toNat

end

end A382811.P7549633261798805149

/-!
# A382813: Denominator of the n-th partial sum of the squares of the harmonic numbers.

The programs for A382813, the canonical program `A382813.P3009257435350173440` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382813 has offset 1).

The definition of A382813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382813.P3009257435350173440

`A002805(n+1)*A027611(n+2)/A120263(n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A382813

/-- `A002805(n+1)*A027611(n+2)/A120263(n+2)` -/
def P3009257435350173440.Spec : Prop :=
  ∀ n, P3009257435350173440.a n = (A382813 (n + 1) : ℚ)

end A382813

/-! ## A382813.P3133499603464337720

`A002805(n+2)/A316346(n+1)*A002805(n+2)`
-/

namespace A382813.P3133499603464337720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 2) : ℚ) / (A316346 (n + 1) : ℚ) * (A002805 (n + 2) : ℚ)

end

end A382813.P3133499603464337720

namespace A382813

/-- `A002805(n+2)/A316346(n+1)*A002805(n+2)` -/
def P3133499603464337720.Spec : Prop :=
  ∀ n, P3133499603464337720.a n = (A382813 (n + 1) : ℚ)

end A382813

/-! ## A382813.P3270502071687024224

`A002805(n+1)²/A335024(n+1)`
-/

namespace A382813.P3270502071687024224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) ^ 2 : ℚ) / (A335024 (n + 1) : ℚ)

end

end A382813.P3270502071687024224

namespace A382813

/-- `A002805(n+1)²/A335024(n+1)` -/
def P3270502071687024224.Spec : Prop :=
  ∀ n, P3270502071687024224.a n = (A382813 (n + 1) : ℚ)

end A382813

/-! ## A382813.P16515316907204721782

`A000142(n+1)/A056612(n+2)*A002805(n+1)`
-/

namespace A382813.P16515316907204721782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A056612 (n + 2) : ℚ) * (A002805 (n + 1) : ℚ)

end

end A382813.P16515316907204721782

namespace A382813

/-- `A000142(n+1)/A056612(n+2)*A002805(n+1)` -/
def P16515316907204721782.Spec : Prop :=
  ∀ n, P16515316907204721782.a n = (A382813 (n + 1) : ℚ)

end A382813

/-!
# A382816: a(n) = number of occurrences of n in A008949.

The programs for A382816, there is no canonical definition to state claims against.
-/

/-! ## A382816.P15879316358329171878

`A043281(A229094(n+1))`
-/

namespace A382816.P15879316358329171878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A229094 (n + 1)).toNat

end

end A382816.P15879316358329171878

/-! ## A382816.P902900422061311833

`A000005(gcd(A080605(n+1), A327358(n)))`
-/

namespace A382816.P902900422061311833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A080605 (n + 1)) (A327358 n))

end

end A382816.P902900422061311833

/-! ## A382816.P3583255118667372925

`A374586(A373084(n+1))`
-/

namespace A382816.P3583255118667372925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374586 (A373084 (n + 1)).toNat

end

end A382816.P3583255118667372925

/-! ## A382816.P15677292240718029216

`A053797(A381149(n+1)+A324850(n+1))`
-/

namespace A382816.P15677292240718029216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A381149 (n + 1) + A324850 (n + 1)).toNat

end

end A382816.P15677292240718029216

/-! ## A382816.P2968392317672793584

`A049419(A171561(3*n+2)-A034851(n))`
-/

namespace A382816.P2968392317672793584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A171561 (3 * n + 2) - A034851 n).toNat

end

end A382816.P2968392317672793584

/-!
# A382817: a(n) = number of primes among the partial sums of row n of Pascal's triangle (A007318).

The programs for A382817, there is no canonical definition to state claims against.
-/

/-! ## A382817.P10520258811297133354

`A124760(A346824(n)+1)`
-/

namespace A382817.P10520258811297133354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A346824 n + 1).toNat

end

end A382817.P10520258811297133354

/-! ## A382817.P6803156048593518954

`A001221(A003022(2*(n+1)))-A008966(2*(n+2))`
-/

namespace A382817.P6803156048593518954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003022 (2 * (n + 1))).toNat - A008966 (2 * (n + 2))

end

end A382817.P6803156048593518954

/-!
# A382819: Number of Grassmannian permutations on [n] of order dividing 3.

The programs for A382819, the canonical program `A382819.P15750206394619055152` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382819 has offset 0).

The definition of A382819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382819.P5917744799396940923

`∑[C(∑[char[3*n]]+1, 2)]-n`
-/

namespace A382819.P5917744799396940923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A382819.P5917744799396940923

namespace A382819

/-- `∑[C(∑[char[3*n]]+1, 2)]-n` -/
def P5917744799396940923.Spec : Prop :=
  ∀ n, P5917744799396940923.a n = A382819 n

end A382819

/-! ## A382819.P15750206394619055152

`A144677(n)-n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382819

/-- `A144677(n)-n` -/
def P15750206394619055152.Spec : Prop :=
  ∀ n, P15750206394619055152.a n = A382819 n

theorem P15750206394619055152.correct : P15750206394619055152.Spec := by
  intro n
  simp only [A382819]

end A382819

/-! ## A382819.P12112363309202882507

`A225566(n+1)/2-n`
-/

namespace A382819.P12112363309202882507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225566 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A382819.P12112363309202882507

namespace A382819

/-- `A225566(n+1)/2-n` -/
def P12112363309202882507.Spec : Prop :=
  ∀ n, P12112363309202882507.a n = (A382819 n : ℚ)

end A382819

/-! ## A382819.P14907775285609168180

`∑[A000096(A002264(n))]+1`
-/

namespace A382819.P14907775285609168180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A382819.P14907775285609168180

namespace A382819

/-- `∑[A000096(A002264(n))]+1` -/
def P14907775285609168180.Spec : Prop :=
  ∀ n, P14907775285609168180.a n = A382819 n

end A382819

/-! ## A382819.P9258423774137253714

`A008670(Δ[n²])-n`
-/

namespace A382819.P9258423774137253714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A382819.P9258423774137253714

namespace A382819

/-- `A008670(Δ[n²])-n` -/
def P9258423774137253714.Spec : Prop :=
  ∀ n, P9258423774137253714.a n = A382819 n

end A382819

/-! ## A382819.P11530253064860994735

`A082146(2*n+3)-n`
-/

namespace A382819.P11530253064860994735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 (2 * n + 3) - (n : ℤ)

end

end A382819.P11530253064860994735

namespace A382819

/-- `A082146(2*n+3)-n` -/
def P11530253064860994735.Spec : Prop :=
  ∀ n, P11530253064860994735.a n = A382819 n

end A382819

/-!
# A382820: Number of columns in all n-compositions of n.

The programs for A382820, there is no canonical definition to state claims against.
-/

/-! ## A382820.P1995817406155007610

`A382818((n+1)²+n²)`
-/

namespace A382820.P1995817406155007610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382818 ((n + 1) ^ 2 + n ^ 2)

end

end A382820.P1995817406155007610

/-!
# A382826: a(n) = Sum_{k=0..n} (k! * Stirling1(n+1,k+1))^2.

The programs for A382826, there is no canonical definition to state claims against.
-/

/-! ## A382826.P2223275641547403054

`A382823(∑[4*n])`
-/

namespace A382826.P2223275641547403054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382826.P2223275641547403054

/-!
# A382827: a(n) = Sum_{k=0..n} k! * (k+1)! * Stirling1(n+1,k+1)^2.

The programs for A382827, there is no canonical definition to state claims against.
-/

/-! ## A382827.P17218171612180071945

`A382824(∑[4*n])`
-/

namespace A382827.P17218171612180071945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382827.P17218171612180071945

/-!
# A382828: a(n) = Sum_{k=0..n} (k!)^2 * binomial(k+2,2) * Stirling1(n+1,k+1)^2.

The programs for A382828, there is no canonical definition to state claims against.
-/

/-! ## A382828.P8358013652784132118

`A382825(∑[4*n])`
-/

namespace A382828.P8358013652784132118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382828.P8358013652784132118

/-!
# A382830: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * |Stirling1(n,k)| * k!.

The programs for A382830, there is no canonical definition to state claims against.
-/

/-! ## A382830.P16746781644225084628

`A007494(A364982(n))-A007294(n)`
-/

namespace A382830.P16746781644225084628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A364982 n).toNat - A007294 n

end

end A382830.P16746781644225084628

/-!
# A382833: Square array read by antidiagonals: T(n,k) is the number of distinct sum-of-powers vectors (Sum_{x in X} x^m, 0 <= m <= k) for subsets X of {0, ..., n-1}; n, k >= 0.

The programs for A382833, there is no canonical definition to state claims against.
-/

/-! ## A382833.P15042757827371405129

`A204933(A249027(n+1))`
-/

namespace A382833.P15042757827371405129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (A249027 (n + 1)).toNat

end

end A382833.P15042757827371405129

/-! ## A382833.P4114842961226818672

`A391750(A248842(n+1))`
-/

namespace A382833.P4114842961226818672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391750 (A248842 (n + 1)).toNat

end

end A382833.P4114842961226818672

/-! ## A382833.P1447094146036589524

`A267303(A145111(n))%A003416(3*n+1)`
-/

namespace A382833.P1447094146036589524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267303 (A145111 n).toNat) (A003416 (3 * n + 1))

end

end A382833.P1447094146036589524

/-! ## A382833.P5957780100836045172

`A089866(gcd(A216274(n), A306935(n)))`
-/

namespace A382833.P5957780100836045172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (Int.gcd (A216274 n) (A306935 n))

end

end A382833.P5957780100836045172

/-! ## A382833.P10424318207841245732

`A369241(A008277(n+1))+A145111(n)`
-/

namespace A382833.P10424318207841245732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369241 (A008277 (n + 1)).toNat + A145111 n

end

end A382833.P10424318207841245732

/-!
# A382834: Smallest number k > P(n) - prime(n+1)^2 which is coprime to P(n), where P(n)= A002110(n) are the primorials.

The programs for A382834, there is no canonical definition to state claims against.
-/

/-! ## A382834.P15137519991043932177

`A193432(A147590(n+1))+A064819(n+1)`
-/

namespace A382834.P15137519991043932177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A147590 (n + 1)).toNat + A064819 (n + 1)

end

end A382834.P15137519991043932177

/-!
# A382837: Numbers k such that k - A071324(k) > A000010(k).

The programs for A382837, there is no canonical definition to state claims against.
-/

/-! ## A382837.P3873623867004136066

`A305613(A067090(n+1))`
-/

namespace A382837.P3873623867004136066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305613 (A067090 (n + 1)).toNat

end

end A382837.P3873623867004136066

/-!
# A382838: a(n) is the least k such that there are exactly n solutions in positive integers to the equation x^3 + y^2 = k^2.

The programs for A382838, there is no canonical definition to state claims against.
-/

/-! ## A382838.P16731589191921486869

`A335260(A292689(n+1))`
-/

namespace A382838.P16731589191921486869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335260 (A292689 (n + 1)).toNat

end

end A382838.P16731589191921486869

/-!
# A382840: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * Stirling1(n,k) * k!.

The programs for A382840, there is no canonical definition to state claims against.
-/

/-! ## A382840.P12784907969762604070

`A020915(A006649(2*n))*A073576(n)`
-/

namespace A382840.P12784907969762604070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A006649 (2 * n)).toNat * A073576 n

end

end A382840.P12784907969762604070

/-!
# A382841: a(n) = Sum_{k=0..floor(n/2)} (binomial(n,k) * binomial(n-k,k))^2.

The programs for A382841, there is no canonical definition to state claims against.
-/

/-! ## A382841.P17196309548643466275

`A159798(A206914(2*n+1)+A111543(n))`
-/

namespace A382841.P17196309548643466275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (A206914 (2 * n + 1) + A111543 n).toNat

end

end A382841.P17196309548643466275

/-! ## A382841.P17169752982651255620

`A020882(A328442(n+2))%A328442(n+2)`
-/

namespace A382841.P17169752982651255620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020882 (A328442 (n + 2)).toNat) (A328442 (n + 2))

end

end A382841.P17169752982651255620

/-!
# A382842: a(n) = Sum_{k=0..floor(n/2)} (binomial(n,k) * binomial(n-k,k))^3.

The programs for A382842, there is no canonical definition to state claims against.
-/

/-! ## A382842.P8893892269295311197

`A160173(2*n*a(n-1)+n*(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A382842.P8893892269295311197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A160173 (2 * ((n : ℤ) * a (n - 1)) + (n : ℤ) * (((n : ℤ) - 1) * a (n - 2))).toNat

end

end A382842.P8893892269295311197

/-!
# A382843: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A382843, the canonical program `A382843.P16467974130948964599` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382843 has offset 0).

The definition of A382843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382843.P16467974130948964599

`2*A000045(n)*(A000045(n)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382843

/-- `2*A000045(n)*(A000045(n)-1)` -/
def P16467974130948964599.Spec : Prop :=
  ∀ n, P16467974130948964599.a n = A382843 n

theorem P16467974130948964599.correct : P16467974130948964599.Spec := by
  intro n
  simp only [A382843]

end A382843

/-! ## A382843.P6886194694048573182

`4*A191797(n)`
-/

namespace A382843.P6886194694048573182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191797 n

end

end A382843.P6886194694048573182

namespace A382843

/-- `4*A191797(n)` -/
def P6886194694048573182.Spec : Prop :=
  ∀ n, P6886194694048573182.a n = A382843 n

end A382843

/-! ## A382843.P5585939891068471919

`2*(A262184(n)-1)`
-/

namespace A382843.P5585939891068471919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A262184 n - 1)

end

end A382843.P5585939891068471919

namespace A382843

/-- `2*(A262184(n)-1)` -/
def P5585939891068471919.Spec : Prop :=
  ∀ n, P5585939891068471919.a n = A382843 n

end A382843

/-! ## A382843.P9312945978343460859

`A095122(n)-A000045(n)`
-/

namespace A382843.P9312945978343460859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095122 n - A000045 n

end

end A382843.P9312945978343460859

namespace A382843

/-- `A095122(n)-A000045(n)` -/
def P9312945978343460859.Spec : Prop :=
  ∀ n, P9312945978343460859.a n = A382843 n

end A382843

/-! ## A382843.P14575372587071693156

`A229912(n)-A022086(n)`
-/

namespace A382843.P14575372587071693156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A022086 n

end

end A382843.P14575372587071693156

namespace A382843

/-- `A229912(n)-A022086(n)` -/
def P14575372587071693156.Spec : Prop :=
  ∀ n, P14575372587071693156.a n = A382843 n

end A382843

/-! ## A382843.P17114513162310478078

`A192873(n)-A062114(n)`
-/

namespace A382843.P17114513162310478078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n - A062114 n

end

end A382843.P17114513162310478078

namespace A382843

/-- `A192873(n)-A062114(n)` -/
def P17114513162310478078.Spec : Prop :=
  ∀ n, P17114513162310478078.a n = A382843 n

end A382843

/-! ## A382843.P13708125917121735009

`A382608(n)-A022087(n)`
-/

namespace A382843.P13708125917121735009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n - A022087 n

end

end A382843.P13708125917121735009

namespace A382843

/-- `A382608(n)-A022087(n)` -/
def P13708125917121735009.Spec : Prop :=
  ∀ n, P13708125917121735009.a n = A382843 n

end A382843

/-! ## A382843.P14561322333261353134

`A392415(n+1)-A001588(n)`
-/

namespace A382843.P14561322333261353134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - A001588 n

end

end A382843.P14561322333261353134

namespace A382843

/-- `A392415(n+1)-A001588(n)` -/
def P14561322333261353134.Spec : Prop :=
  ∀ n, P14561322333261353134.a n = A382843 n

end A382843

/-! ## A382843.P18416249642161200338

`A175395(n)-A000045(n)-A000045(n)`
-/

namespace A382843.P18416249642161200338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - A000045 n - A000045 n

end

end A382843.P18416249642161200338

namespace A382843

/-- `A175395(n)-A000045(n)-A000045(n)` -/
def P18416249642161200338.Spec : Prop :=
  ∀ n, P18416249642161200338.a n = A382843 n

end A382843

/-! ## A382843.P17879427283632328015

`(A000045(n)-A057427(n))*A055389(n)`
-/

namespace A382843.P17879427283632328015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - A057427 n) * A055389 n

end

end A382843.P17879427283632328015

namespace A382843

/-- `(A000045(n)-A057427(n))*A055389(n)` -/
def P17879427283632328015.Spec : Prop :=
  ∀ n, P17879427283632328015.a n = A382843 n

end A382843

/-! ## A382843.P5414345957018846602

`(A006355(n+1)-A001611(n))*A006355(n+1)`
-/

namespace A382843.P5414345957018846602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006355 (n + 1) - A001611 n) * A006355 (n + 1)

end

end A382843.P5414345957018846602

namespace A382843

/-- `(A006355(n+1)-A001611(n))*A006355(n+1)` -/
def P5414345957018846602.Spec : Prop :=
  ∀ n, P5414345957018846602.a n = A382843 n

end A382843

/-! ## A382843.P9760071639416012415

`A000045(n)*A001911(n)-A001906(n)`
-/

namespace A382843.P9760071639416012415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001911 n - A001906 n

end

end A382843.P9760071639416012415

namespace A382843

/-- `A000045(n)*A001911(n)-A001906(n)` -/
def P9760071639416012415.Spec : Prop :=
  ∀ n, P9760071639416012415.a n = A382843 n

end A382843

/-!
# A382844: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A382844, the canonical program `A382844.P3099565265804280121` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382844 has offset 0).

The definition of A382844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382844.P3099565265804280121

`(A000045(n)-1)*A095122(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382844

/-- `(A000045(n)-1)*A095122(n)` -/
def P3099565265804280121.Spec : Prop :=
  ∀ n, P3099565265804280121.a n = A382844 n

theorem P3099565265804280121.correct : P3099565265804280121.Spec := by
  intro n
  simp only [A382844]

end A382844

/-! ## A382844.P4058606089134163671

`(A382845(n)-A095122(n))*A095122(n)`
-/

namespace A382844.P4058606089134163671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382845 n - A095122 n) * A095122 n

end

end A382844.P4058606089134163671

namespace A382844

/-- `(A382845(n)-A095122(n))*A095122(n)` -/
def P4058606089134163671.Spec : Prop :=
  ∀ n, P4058606089134163671.a n = A382844 n

end A382844

/-! ## A382844.P3165011287982092019

`A055112(A324969(n+1)-1)`
-/

namespace A382844.P3165011287982092019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (A324969 (n + 1) - 1).toNat

end

end A382844.P3165011287982092019

namespace A382844

/-- `A055112(A324969(n+1)-1)` -/
def P3165011287982092019.Spec : Prop :=
  ∀ n, P3165011287982092019.a n = A382844 n

end A382844

/-! ## A382844.P2088172402851548524

`A015238(A000045(n))+A000045(n)`
-/

namespace A382844.P2088172402851548524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 (A000045 n).toNat + A000045 n

end

end A382844.P2088172402851548524

namespace A382844

/-- `A015238(A000045(n))+A000045(n)` -/
def P2088172402851548524.Spec : Prop :=
  ∀ n, P2088172402851548524.a n = A382844 n

end A382844

/-! ## A382844.P16060811033951165799

`A015238(A157726(n)-3)+abs(A236191(n))`
-/

namespace A382844.P16060811033951165799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 (A157726 n - 3).toNat + |A236191 n|

end

end A382844.P16060811033951165799

namespace A382844

/-- `A015238(A157726(n)-3)+abs(A236191(n))` -/
def P16060811033951165799.Spec : Prop :=
  ∀ n, P16060811033951165799.a n = A382844 n

end A382844

/-!
# A382845: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A382845, the canonical program `A382845.P12683852924989043468` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382845 has offset 0).

The definition of A382845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382845.P10642380438890908674

`ogf((-1+4x-2x^2+x^3)/(1-3x+3x^3-x^4))`
-/

namespace A382845.P10642380438890908674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, -2, 1] [1, -3, 0, 3, -1] n

end

end A382845.P10642380438890908674

namespace A382845

/-- `ogf((-1+4x-2x^2+x^3)/(1-3x+3x^3-x^4))` -/
def P10642380438890908674.Spec : Prop :=
  ∀ n, P10642380438890908674.a n = A382845 n

end A382845

/-! ## A382845.P12683852924989043468

`A175395(n)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382845

/-- `A175395(n)-1` -/
def P12683852924989043468.Spec : Prop :=
  ∀ n, P12683852924989043468.a n = A382845 n

theorem P12683852924989043468.correct : P12683852924989043468.Spec := by
  intro n
  simp only [A382845]

end A382845

/-! ## A382845.P15511156996474973367

`A392415(n+1)-2`
-/

namespace A382845.P15511156996474973367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - 2

end

end A382845.P15511156996474973367

namespace A382845

/-- `A392415(n+1)-2` -/
def P15511156996474973367.Spec : Prop :=
  ∀ n, P15511156996474973367.a n = A382845 n

end A382845

/-! ## A382845.P452459417639288427

`2*A007598(n)-1`
-/

namespace A382845.P452459417639288427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n - 1

end

end A382845.P452459417639288427

namespace A382845

/-- `2*A007598(n)-1` -/
def P452459417639288427.Spec : Prop :=
  ∀ n, P452459417639288427.a n = A382845 n

end A382845

/-! ## A382845.P14539006924524300522

`2*A245306(n)-3`
-/

namespace A382845.P14539006924524300522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245306 n - 3

end

end A382845.P14539006924524300522

namespace A382845

/-- `2*A245306(n)-3` -/
def P14539006924524300522.Spec : Prop :=
  ∀ n, P14539006924524300522.a n = A382845 n

end A382845

/-! ## A382845.P7449568456438834889

`A295680(Δ[n²])-1`
-/

namespace A382845.P7449568456438834889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A382845.P7449568456438834889

namespace A382845

/-- `A295680(Δ[n²])-1` -/
def P7449568456438834889.Spec : Prop :=
  ∀ n, P7449568456438834889.a n = A382845 n

end A382845

/-! ## A382845.P16632734929146409984

`2*A000045(n)²-1`
-/

namespace A382845.P16632734929146409984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 - 1

end

end A382845.P16632734929146409984

namespace A382845

/-- `2*A000045(n)²-1` -/
def P16632734929146409984.Spec : Prop :=
  ∀ n, P16632734929146409984.a n = A382845 n

end A382845

/-! ## A382845.P9440072933638097111

`A229912(n)-A001611(n)`
-/

namespace A382845.P9440072933638097111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A001611 n

end

end A382845.P9440072933638097111

namespace A382845

/-- `A229912(n)-A001611(n)` -/
def P9440072933638097111.Spec : Prop :=
  ∀ n, P9440072933638097111.a n = A382845 n

end A382845

/-! ## A382845.P6606010145675219977

`A192873(n)-A059841(n)`
-/

namespace A382845.P6606010145675219977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n - A059841 n

end

end A382845.P6606010145675219977

namespace A382845

/-- `A192873(n)-A059841(n)` -/
def P6606010145675219977.Spec : Prop :=
  ∀ n, P6606010145675219977.a n = A382845 n

end A382845

/-! ## A382845.P9547107208391682881

`A382608(n)-A001588(n)`
-/

namespace A382845.P9547107208391682881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n - A001588 n

end

end A382845.P9547107208391682881

namespace A382845

/-- `A382608(n)-A001588(n)` -/
def P9547107208391682881.Spec : Prop :=
  ∀ n, P9547107208391682881.a n = A382845 n

end A382845

/-! ## A382845.P6587160649461862138

`A382308(n)-2*A001588(n)`
-/

namespace A382845.P6587160649461862138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382308 n - 2 * A001588 n

end

end A382845.P6587160649461862138

namespace A382845

/-- `A382308(n)-2*A001588(n)` -/
def P6587160649461862138.Spec : Prop :=
  ∀ n, P6587160649461862138.a n = A382845 n

end A382845

/-! ## A382845.P16612624668663983949

`A382608(n)-(A001611(n)+A000045(n))`
-/

namespace A382845.P16612624668663983949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n - (A001611 n + A000045 n)

end

end A382845.P16612624668663983949

namespace A382845

/-- `A382608(n)-(A001611(n)+A000045(n))` -/
def P16612624668663983949.Spec : Prop :=
  ∀ n, P16612624668663983949.a n = A382845 n

end A382845

/-! ## A382845.P672070661028263508

`A382608(n)+A382608(n)-A382308(n)`
-/

namespace A382845.P672070661028263508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n + (A382608 n - A382308 n)

end

end A382845.P672070661028263508

namespace A382845

/-- `A382608(n)+A382608(n)-A382308(n)` -/
def P672070661028263508.Spec : Prop :=
  ∀ n, P672070661028263508.a n = A382845 n

end A382845

/-! ## A382845.P6254324017355755134

`A000045(n)*A001588(n)-A001611(n)`
-/

namespace A382845.P6254324017355755134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001588 n - A001611 n

end

end A382845.P6254324017355755134

namespace A382845

/-- `A000045(n)*A001588(n)-A001611(n)` -/
def P6254324017355755134.Spec : Prop :=
  ∀ n, P6254324017355755134.a n = A382845 n

end A382845

/-! ## A382845.P17249034006112942333

`A000045(n)*A055389(n)-A057427(n+1)`
-/

namespace A382845.P17249034006112942333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A055389 n - A057427 (n + 1)

end

end A382845.P17249034006112942333

namespace A382845

/-- `A000045(n)*A055389(n)-A057427(n+1)` -/
def P17249034006112942333.Spec : Prop :=
  ∀ n, P17249034006112942333.a n = A382845 n

end A382845

/-! ## A382845.P1768692770710914159

`A121646(n+1)+A027941(n)`
-/

namespace A382845.P1768692770710914159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121646 (n + 1) + A027941 n

end

end A382845.P1768692770710914159

namespace A382845

/-- `A121646(n+1)+A027941(n)` -/
def P1768692770710914159.Spec : Prop :=
  ∀ n, P1768692770710914159.a n = A382845 n

end A382845

/-! ## A382845.P5983677788891562826

`A027941(n)-A226205(n+1)`
-/

namespace A382845.P5983677788891562826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n - A226205 (n + 1)

end

end A382845.P5983677788891562826

namespace A382845

/-- `A027941(n)-A226205(n+1)` -/
def P5983677788891562826.Spec : Prop :=
  ∀ n, P5983677788891562826.a n = A382845 n

end A382845

/-! ## A382845.P6275873838261814501

`A226205(n+2)-A008346(2*n)`
-/

namespace A382845.P6275873838261814501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 2) - A008346 (2 * n)

end

end A382845.P6275873838261814501

namespace A382845

/-- `A226205(n+2)-A008346(2*n)` -/
def P6275873838261814501.Spec : Prop :=
  ∀ n, P6275873838261814501.a n = A382845 n

end A382845

/-! ## A382845.P14108481267535147187

`A007598(n)+A027941(n)-A007598(n+1)`
-/

namespace A382845.P14108481267535147187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (A027941 n - A007598 (n + 1))

end

end A382845.P14108481267535147187

namespace A382845

/-- `A007598(n)+A027941(n)-A007598(n+1)` -/
def P14108481267535147187.Spec : Prop :=
  ∀ n, P14108481267535147187.a n = A382845 n

end A382845

/-! ## A382845.P11751982240314354043

`A027941(n)+A245306(n)-A245306(n+1)`
-/

namespace A382845.P11751982240314354043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + (A245306 n - A245306 (n + 1))

end

end A382845.P11751982240314354043

namespace A382845

/-- `A027941(n)+A245306(n)-A245306(n+1)` -/
def P11751982240314354043.Spec : Prop :=
  ∀ n, P11751982240314354043.a n = A382845 n

end A382845

/-!
# A382850: a(n) = least k such that binomial(n, k) > binomial(n - 1, h) for 0 <= h <= n - 1.

The programs for A382850, there is no canonical definition to state claims against.
-/

/-! ## A382850.P6751491399939295999

`A070939(ceil(sqrt(A000213(n))))`
-/

namespace A382850.P6751491399939295999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌈Real.sqrt (A000213 n : ℝ)⌉.toNat

end

end A382850.P6751491399939295999

/-! ## A382850.P8077572588073394318

`A070939(round(sqrt(A000213(n))))`
-/

namespace A382850.P8077572588073394318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway (Real.sqrt (A000213 n : ℝ))).toNat

end

end A382850.P8077572588073394318

/-! ## A382850.P11672309974995133626

`A070939(round(sqrt(A374690(n))))`
-/

namespace A382850.P11672309974995133626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway (Real.sqrt (A374690 n : ℝ))).toNat

end

end A382850.P11672309974995133626

/-! ## A382850.P14362804215710244644

`A000523(A374760(n)+1)`
-/

namespace A382850.P14362804215710244644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A374760 n + 1).toNat

end

end A382850.P14362804215710244644

/-! ## A382850.P4662204543771582319

`A070939(A374760(n)+1)-1`
-/

namespace A382850.P4662204543771582319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A374760 n + 1).toNat - 1

end

end A382850.P4662204543771582319

/-!
# A382851: a(n) = least number in row n of Pascal's triangle that exceeds every number in row n-1.

The programs for A382851, there is no canonical definition to state claims against.
-/

/-! ## A382851.P15450878482198226961

`C(n+2, A382850(n+2))`
-/

namespace A382851.P15450878482198226961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A382850 (n + 2)).toNat

end

end A382851.P15450878482198226961

/-! ## A382851.P11638839096580120874

`C(A000005(A016116(2*(n+1))), A117384(n+1))`
-/

namespace A382851.P11638839096580120874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A016116 (2 * (n + 1))).toNat).toNat (A117384 (n + 1)).toNat

end

end A382851.P11638839096580120874

/-! ## A382851.P6111245663840148721

`C(A065033(2*n+3), A001221(A185171(n+1)))`
-/

namespace A382851.P6111245663840148721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065033 (2 * n + 3)).toNat (A001221 (A185171 (n + 1)).toNat).toNat

end

end A382851.P6111245663840148721

/-! ## A382851.P11783549360996363096

`C(n+2, A055642(A230552(n+1)))`
-/

namespace A382851.P11783549360996363096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A055642 (A230552 (n + 1)).toNat).toNat

end

end A382851.P11783549360996363096

/-! ## A382851.P10240764652606451584

`C(A008619(2*n+3), A055642(A001787(n)))`
-/

namespace A382851.P10240764652606451584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008619 (2 * n + 3)).toNat (A055642 (A001787 n).toNat).toNat

end

end A382851.P10240764652606451584

/-!
# A382854: Decimal expansion of (1-log(2))/2.

The programs for A382854, there is no canonical definition to state claims against.
-/

/-! ## A382854.P6777484061168053762

`9-A372858(n)`
-/

namespace A382854.P6777484061168053762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A372858 n

end

end A382854.P6777484061168053762

/-!
# A382856: Numbers whose prime indices do not have a mode of 1.

The programs for A382856, there is no canonical definition to state claims against.
-/

/-! ## A382856.P10750691664575808805

`comp[and(-2, A360015(n+1))]`
-/

namespace A382856.P10750691664575808805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A360015 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382856.P10750691664575808805

/-! ## A382856.P5493355953509393785

`∪[A071365(n+1), Δ[n²]]`
-/

namespace A382856.P5493355953509393785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382856.P5493355953509393785

/-! ## A382856.P329503209994498253

`eq[0, A373252(abs((-1)^n-n)+1)]`
-/

namespace A382856.P329503209994498253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373252 (|(-1) ^ n - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382856.P329503209994498253

/-! ## A382856.P10460951254036071500

`eq[floor(1/(n+1)), A373252(n+1)]+1`
-/

namespace A382856.P10460951254036071500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382856.P10460951254036071500

/-! ## A382856.P4628916419231396191

`A028310(comp[A360015(n+1)])`
-/

namespace A382856.P4628916419231396191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A382856.P4628916419231396191

/-! ## A382856.P7588996818005008996

`A000007(n)+comp[A360015(n+1)]`
-/

namespace A382856.P7588996818005008996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A382856.P7588996818005008996

/-! ## A382856.P2477471397014838965

`comp[A360015(n+1)%A005892(n)]`
-/

namespace A382856.P2477471397014838965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360015 (n + 1)) (A005892 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382856.P2477471397014838965

/-! ## A382856.P8036802999496357375

`comp[A004526(A360013(n+1)+1)*A171905(n+2)]`
-/

namespace A382856.P8036802999496357375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A360013 (n + 1) + 1).toNat * A171905 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382856.P8036802999496357375

/-! ## A382856.P12412212840184499504

`comp[A004526(A360013(n+1)+1)%A001159(n+1)]`
-/

namespace A382856.P12412212840184499504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A360013 (n + 1) + 1).toNat) (A001159 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382856.P12412212840184499504

/-!
# A382857: Number of ways to permute the prime indices of n so that the run-lengths are all equal.

The programs for A382857, there is no canonical definition to state claims against.
-/

/-! ## A382857.P15412786804967718267

`A093518(A294137(n))`
-/

namespace A382857.P15412786804967718267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093518 (A294137 n).toNat

end

end A382857.P15412786804967718267

/-! ## A382857.P5754857911964707225

`A053838(A066882(n)^A066882(n))`
-/

namespace A382857.P5754857911964707225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.roundAway ((A066882 n : ℚ) ^ (A066882 n : ℤ))).toNat

end

end A382857.P5754857911964707225

/-! ## A382857.P15303816173759285022

`A083093(A066882(n)^A066882(n))`
-/

namespace A382857.P15303816173759285022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083093 (SequenceMachineLib.roundAway ((A066882 n : ℚ) ^ (A066882 n : ℤ))).toNat

end

end A382857.P15303816173759285022

/-! ## A382857.P13714063048880791599

`A059048(A074206(n)%A374992(3*n+2))`
-/

namespace A382857.P13714063048880791599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059048 (Int.tmod (A074206 n) (A374992 (3 * n + 2))).toNat

end

end A382857.P13714063048880791599

/-! ## A382857.P11026273630690782768

`A123521(A074206(n))%A237115(3*n+1)`
-/

namespace A382857.P11026273630690782768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123521 (A074206 n).toNat) (A237115 (3 * n + 1))

end

end A382857.P11026273630690782768

/-!
# A382858: Number of ways to permute a multiset whose multiplicities are the prime indices of n so that the run-lengths are all equal.

The programs for A382858, there is no canonical definition to state claims against.
-/

/-! ## A382858.P1496912617741780788

`A382857(A181821(n+1))`
-/

namespace A382858.P1496912617741780788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382857 (A181821 (n + 1)).toNat

end

end A382858.P1496912617741780788

/-!
# A382859: a(n) = Sum_{k=0..n} binomial(n,k) * binomial((n-1)*(k+1),n-k).

The programs for A382859, there is no canonical definition to state claims against.
-/

/-! ## A382859.P7235974836124292548

`A381425(∑[4*n])`
-/

namespace A382859.P7235974836124292548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381425 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382859.P7235974836124292548

/-! ## A382859.P11780969355088772064

`filter[A386634(n+2), A284364(#)]`
-/

namespace A382859.P11780969355088772064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284364 (f1 j).toNat = 1) n)

end

end A382859.P11780969355088772064

/-!
# A382862: Prime numbers whose congruence speed of tetration equals 1.

The programs for A382862, there is no canonical definition to state claims against.
-/

/-! ## A382862.P16532210082199771013

`eq[A327642(n), A373387(n)]`
-/

namespace A382862.P16532210082199771013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382862.P16532210082199771013

/-! ## A382862.P3026929605982545735

`eq[A331991(n+1)², A373387(n)]`
-/

namespace A382862.P3026929605982545735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382862.P3026929605982545735

/-! ## A382862.P18110923204124371235

`eq[A163088(n), A373387(n)]`
-/

namespace A382862.P18110923204124371235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382862.P18110923204124371235

/-! ## A382862.P11780952480841194758

`A000040(lt[1, A195310(3*n+1)])`
-/

namespace A382862.P11780952480841194758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195310 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A382862.P11780952480841194758

/-! ## A382862.P4665371670667017269

`eq[A003415(n), A363946(A296508(n+3))]`
-/

namespace A382862.P4665371670667017269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363946 (A296508 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382862.P4665371670667017269

/-!
# A382864: Triangle read by rows: T(n,k) = T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A382864, there is no canonical definition to state claims against.
-/

/-! ## A382864.P6181975311923367426

`abs(A292047(n))`
-/

namespace A382864.P6181975311923367426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292047 n|

end

end A382864.P6181975311923367426

/-! ## A382864.P3999156532197765588

`abs(A292049(n))`
-/

namespace A382864.P3999156532197765588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292049 n|

end

end A382864.P3999156532197765588

/-! ## A382864.P9013490357570531847

`gcd(A000038(n), A292047(n))`
-/

namespace A382864.P9013490357570531847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292047 n)

end

end A382864.P9013490357570531847

/-! ## A382864.P14093683636153687830

`gcd(A291970(n), A291971(n))`
-/

namespace A382864.P14093683636153687830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291970 n) (A291971 n)

end

end A382864.P14093683636153687830

/-! ## A382864.P17488738452402914742

`gcd(A292129(n), A292130(n))`
-/

namespace A382864.P17488738452402914742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292129 n) (A292130 n)

end

end A382864.P17488738452402914742

/-! ## A382864.P751729562835076699

`lcm(A020985(n), A292047(n))`
-/

namespace A382864.P751729562835076699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A292047 n)

end

end A382864.P751729562835076699

/-! ## A382864.P10003003059937176411

`lcm(A033999(n), A292049(n))`
-/

namespace A382864.P10003003059937176411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292049 n)

end

end A382864.P10003003059937176411

/-!
# A382865: Bitwise XOR of all integers between n and 2n (endpoints included).

The programs for A382865, the canonical program `A382865.P12036789506198600243` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382865 has offset 0).

The definition of A382865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382865.P12036789506198600243

`xor(A047541(n+1), A093178(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382865

/-- `xor(A047541(n+1), A093178(n))` -/
def P12036789506198600243.Spec : Prop :=
  ∀ n, P12036789506198600243.a n = A382865 n

theorem P12036789506198600243.correct : P12036789506198600243.Spec := by
  intro n
  simp only [A382865]

end A382865

/-! ## A382865.P5632203854851671416

`xor(A047415(n+1), A124625(n))`
-/

namespace A382865.P5632203854851671416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047415 (n + 1)) (A124625 n)

end

end A382865.P5632203854851671416

namespace A382865

/-- `xor(A047415(n+1), A124625(n))` -/
def P5632203854851671416.Spec : Prop :=
  ∀ n, P5632203854851671416.a n = A382865 n

end A382865

/-! ## A382865.P4346847403906648662

`xor(A047414(n+1), A338824(n+1))`
-/

namespace A382865.P4346847403906648662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047414 (n + 1)) (A338824 (n + 1))

end

end A382865.P4346847403906648662

namespace A382865

/-- `xor(A047414(n+1), A338824(n+1))` -/
def P4346847403906648662.Spec : Prop :=
  ∀ n, P4346847403906648662.a n = A382865 n

end A382865

/-!
# A382872: For n >= 1, a(n) is the number of divisors of Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n) (A018804).

The programs for A382872, the canonical program `A382872.P13479336682410921135` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382872 has offset 1).

The definition of A382872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382872.P13479336682410921135

`A000005(A018804(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382872

/-- `A000005(A018804(n+1))` -/
def P13479336682410921135.Spec : Prop :=
  ∀ n, P13479336682410921135.a n = A382872 (n + 1)

theorem P13479336682410921135.correct : P13479336682410921135.Spec := by
  intro n
  simp only [A382872, Nat.add_sub_cancel]

end A382872

/-! ## A382872.P9291697552010305631

`A000005(Δ[A209981(n)/32])`
-/

namespace A382872.P9291697552010305631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A382872.P9291697552010305631

namespace A382872

/-- `A000005(Δ[A209981(n)/32])` -/
def P9291697552010305631.Spec : Prop :=
  ∀ n, P9291697552010305631.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P16651437543343050105

`A000005(∑{d}[n+1, A029935(#)])`
-/

namespace A382872.P16651437543343050105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), A029935 d).toNat

end

end A382872.P16651437543343050105

namespace A382872

/-- `A000005(∑{d}[n+1, A029935(#)])` -/
def P16651437543343050105.Spec : Prop :=
  ∀ n, P16651437543343050105.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P3336417813215879771

`A000005(A006579(n+1)+n+1)`
-/

namespace A382872.P3336417813215879771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006579 (n + 1) + (n + 1 : ℤ)).toNat

end

end A382872.P3336417813215879771

namespace A382872

/-- `A000005(A006579(n+1)+n+1)` -/
def P3336417813215879771.Spec : Prop :=
  ∀ n, P3336417813215879771.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P9422748521422759483

`A000005(A209295(n+1)-(n+1))`
-/

namespace A382872.P9422748521422759483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A209295 (n + 1) - (n + 1 : ℤ)).toNat

end

end A382872.P9422748521422759483

namespace A382872

/-- `A000005(A209295(n+1)-(n+1))` -/
def P9422748521422759483.Spec : Prop :=
  ∀ n, P9422748521422759483.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P5475324174794400770

`A000005(A268631(n+1)+Δ[n²])`
-/

namespace A382872.P5475324174794400770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A268631 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A382872.P5475324174794400770

namespace A382872

/-- `A000005(A268631(n+1)+Δ[n²])` -/
def P5475324174794400770.Spec : Prop :=
  ∀ n, P5475324174794400770.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P12901173566333019791

`A000005((n+1)²-A344485(n+1))`
-/

namespace A382872.P12901173566333019791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((n + 1) ^ 2 : ℤ) - A344485 (n + 1)).toNat

end

end A382872.P12901173566333019791

namespace A382872

/-- `A000005((n+1)²-A344485(n+1))` -/
def P12901173566333019791.Spec : Prop :=
  ∀ n, P12901173566333019791.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P17642585134497376358

`A000005(2*A174088(n+1)-A000188(n+1))`
-/

namespace A382872.P17642585134497376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A174088 (n + 1) - A000188 (n + 1)).toNat

end

end A382872.P17642585134497376358

namespace A382872

/-- `A000005(2*A174088(n+1)-A000188(n+1))` -/
def P17642585134497376358.Spec : Prop :=
  ∀ n, P17642585134497376358.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P16182679214865043229

`A000005(∑{d}[n+1, A007427(#)*A060640((n+1)/#)])`
-/

namespace A382872.P16182679214865043229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), A007427 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A382872.P16182679214865043229

namespace A382872

/-- `A000005(∑{d}[n+1, A007427(#)*A060640((n+1)/#)])` -/
def P16182679214865043229.Spec : Prop :=
  ∀ n, P16182679214865043229.a n = A382872 (n + 1)

end A382872

/-! ## A382872.P3932952124166714136

`A183063(2*A018804(n+1))`
-/

namespace A382872.P3932952124166714136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A018804 (n + 1)).toNat

end

end A382872.P3932952124166714136

namespace A382872

/-- `A183063(2*A018804(n+1))` -/
def P3932952124166714136.Spec : Prop :=
  ∀ n, P3932952124166714136.a n = A382872 (n + 1)

end A382872

/-!
# A382873: a(n) = A019565(A014311(n)).

The programs for A382873, the canonical program `A382873.P3118827444732228492` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382873 has offset 1).

The definition of A382873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382873.P11868837013614077563

`A019565(A014311(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382873.P11868837013614077563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A014311 (n + 1)).toNat

end

end A382873.P11868837013614077563

namespace A382873

/-- `A019565(A014311(n+1))` -/
def P11868837013614077563.Spec : Prop :=
  ∀ n, P11868837013614077563.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P3118827444732228492

`A277006(A179243(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A382873

/-- `A277006(A179243(n+1))` -/
def P3118827444732228492.Spec : Prop :=
  ∀ n, P3118827444732228492.a n = A382873 (n + 1)

theorem P3118827444732228492.correct : P3118827444732228492.Spec := by
  intro n
  simp only [A382873, Nat.add_sub_cancel]

end A382873

/-! ## A382873.P9437643497294482099

`A277006(eq[4, A143299(n+1)])`
-/

namespace A382873.P9437643497294482099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382873.P9437643497294482099

namespace A382873

/-- `A277006(eq[4, A143299(n+1)])` -/
def P9437643497294482099.Spec : Prop :=
  ∀ n, P9437643497294482099.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P6182738039579010192

`A277006(eq[3, A007895(n)])`
-/

namespace A382873.P6182738039579010192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382873.P6182738039579010192

namespace A382873

/-- `A277006(eq[3, A007895(n)])` -/
def P6182738039579010192.Spec : Prop :=
  ∀ n, P6182738039579010192.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P8519730179274456861

`A019565(eq[3, A000120(n)])`
-/

namespace A382873.P8519730179274456861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382873.P8519730179274456861

namespace A382873

/-- `A019565(eq[3, A000120(n)])` -/
def P8519730179274456861.Spec : Prop :=
  ∀ n, P8519730179274456861.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P16503546546203398678

`filter[A277006(n), A354926(#)]`
-/

namespace A382873.P16503546546203398678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382873.P16503546546203398678

namespace A382873

/-- `filter[A277006(n), A354926(#)]` -/
def P16503546546203398678.Spec : Prop :=
  ∀ n, P16503546546203398678.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P11289239448504889901

`filter[A277006(n), A358753(#)]`
-/

namespace A382873.P11289239448504889901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A382873.P11289239448504889901

namespace A382873

/-- `filter[A277006(n), A358753(#)]` -/
def P11289239448504889901.Spec : Prop :=
  ∀ n, P11289239448504889901.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P1504888224214512792

`A101278(A038465(n+1))`
-/

namespace A382873.P1504888224214512792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 (A038465 (n + 1)).toNat

end

end A382873.P1504888224214512792

namespace A382873

/-- `A101278(A038465(n+1))` -/
def P1504888224214512792.Spec : Prop :=
  ∀ n, P1504888224214512792.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P17103742398113760553

`filter[A277006(n), A101605(#)]`
-/

namespace A382873.P17103742398113760553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A382873.P17103742398113760553

namespace A382873

/-- `filter[A277006(n), A101605(#)]` -/
def P17103742398113760553.Spec : Prop :=
  ∀ n, P17103742398113760553.a n = A382873 (n + 1)

end A382873

/-! ## A382873.P11962644508766522449

`filter[A277006(n+2), A262683(#)]`
-/

namespace A382873.P11962644508766522449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A382873.P11962644508766522449

namespace A382873

/-- `filter[A277006(n+2), A262683(#)]` -/
def P11962644508766522449.Spec : Prop :=
  ∀ n, P11962644508766522449.a n = A382873 (n + 1)

end A382873

/-!
# A382875: Numbers which are a multiple of 2^k - 1 for some k > 1.

The programs for A382875, the canonical program `A382875.P17273073748173241581` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382875 has offset 1).

The definition of A382875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382875.P17273073748173241581

`A080425(3*n)+comp[A161790(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382875

/-- `A080425(3*n)+comp[A161790(n+1)]` -/
def P17273073748173241581.Spec : Prop :=
  ∀ n, P17273073748173241581.a n = A382875 (n + 1)

theorem P17273073748173241581.correct : P17273073748173241581.Spec := by
  intro n
  simp only [A382875, Nat.add_sub_cancel]

end A382875

/-! ## A382875.P9495287228410627284

`eq[A322829(A160353(n+1)), A322829(n)]`
-/

namespace A382875.P9495287228410627284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 (A160353 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382875.P9495287228410627284

namespace A382875

/-- `eq[A322829(A160353(n+1)), A322829(n)]` -/
def P9495287228410627284.Spec : Prop :=
  ∀ n, (P9495287228410627284.a n : ℤ) = A382875 (n + 1)

end A382875

/-!
# A382876: Number of ways to permute the prime indices of n so that the run-sums are all different.

The programs for A382876, there is no canonical definition to state claims against.
-/

/-! ## A382876.P4031038354338544275

`A333175(n+1)%A333175(A256879(n+1))`
-/

namespace A382876.P4031038354338544275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (n + 1)) (A333175 (A256879 (n + 1)).toNat)

end

end A382876.P4031038354338544275

/-! ## A382876.P5785511804731103042

`∑{e}[∏{p}[n+1, #], #]!%A256308(A246102(3*n+2))`
-/

namespace A382876.P5785511804731103042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (A256308 (A246102 (3 * n + 2)).toNat)

end

end A382876.P5785511804731103042

/-! ## A382876.P6083581242586570974

`and(A230544(n+1), A333175(n+1))`
-/

namespace A382876.P6083581242586570974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230544 (n + 1)) (A333175 (n + 1))

end

end A382876.P6083581242586570974

/-! ## A382876.P750592101369252154

`A335452(A353832(n+1))%A353840(2*(n+1))`
-/

namespace A382876.P750592101369252154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335452 (A353832 (n + 1)).toNat) (A353840 (2 * (n + 1)))

end

end A382876.P750592101369252154

/-! ## A382876.P820927876151867397

`A333175(n+1)%A185268(n+1)`
-/

namespace A382876.P820927876151867397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (n + 1)) (A185268 (n + 1))

end

end A382876.P820927876151867397

/-!
# A382877: Number of ways to permute the prime indices of n so that the run-sums are all equal.

The programs for A382877, there is no canonical definition to state claims against.
-/

/-! ## A382877.P3443493668396255019

`A079439(A305976(n+1))%3`
-/

namespace A382877.P3443493668396255019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079439 (A305976 (n + 1)).toNat) 3

end

end A382877.P3443493668396255019

/-! ## A382877.P15954630927536484248

`A325238(A327670(n+1))%4`
-/

namespace A382877.P15954630927536484248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325238 (A327670 (n + 1)).toNat) 4

end

end A382877.P15954630927536484248

/-! ## A382877.P5961636183342079290

`and(A058580(n+1), A382771(n+1))`
-/

namespace A382877.P5961636183342079290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058580 (n + 1)) (A382771 (n + 1))

end

end A382877.P5961636183342079290

/-! ## A382877.P5281610224492503748

`and(A088294(n+1), A382771(n+1))`
-/

namespace A382877.P5281610224492503748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088294 (n + 1)) (A382771 (n + 1))

end

end A382877.P5281610224492503748

/-! ## A382877.P17108856367449860774

`and(A122271(n+1), A382771(n+1))`
-/

namespace A382877.P17108856367449860774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122271 (n + 1)) (A382771 (n + 1))

end

end A382877.P17108856367449860774

/-!
# A382878: Set of positions of first appearances in A382857 (permutations of prime indices with equal run-lengths).

The programs for A382878, there is no canonical definition to state claims against.
-/

/-! ## A382878.P8604704372539813708

`∏{p}[n+1, #+1]*A006666(A094858(2*(n+1)))`
-/

namespace A382878.P8604704372539813708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) * A006666 (A094858 (2 * (n + 1))).toNat

end

end A382878.P8604704372539813708

/-! ## A382878.P3852749220225043160

`A266228(eq[A025446(n), A059571(n+1)])`
-/

namespace A382878.P3852749220225043160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A382878.P3852749220225043160

/-!
# A382879: Positions of 0 in A382857 (permutations of prime indices with equal run-lengths).

The programs for A382879, there is no canonical definition to state claims against.
-/

/-! ## A382879.P5431327966631424890

`filter[A345193(n+1), A132350(#)]`
-/

namespace A382879.P5431327966631424890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A382879.P5431327966631424890

/-! ## A382879.P16136755460289444508

`∩[A345193(n+1), A391415(n+1)]`
-/

namespace A382879.P16136755460289444508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382879.P16136755460289444508

/-! ## A382879.P589979542804372817

`filter[A335448(n+1), A132350(#)]`
-/

namespace A382879.P589979542804372817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A382879.P589979542804372817

/-! ## A382879.P16888965029292921690

`∩[A335448(n+1), A391415(n+1)]`
-/

namespace A382879.P16888965029292921690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382879.P16888965029292921690

/-! ## A382879.P15943206961470001468

`∩[A317493(n+1), A348097(n+1)]`
-/

namespace A382879.P15943206961470001468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382879.P15943206961470001468

/-!
# A382881: Triangle read by rows: T(n, k) = -Sum_{d|n, d= 1, T(n, 0) = 0^n, T(n, n) = 1, where V(n, d) = 1 if d = 1 otherwise valuation(n, d).

The programs for A382881, there is no canonical definition to state claims against.
-/

/-! ## A382881.P153757434508641781

`A093921(2*n+5)-A306346(A379046(n+1))`
-/

namespace A382881.P153757434508641781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093921 (2 * n + 5) - A306346 (A379046 (n + 1)).toNat

end

end A382881.P153757434508641781

/-!
# A382882: Triangle read by rows: T(n, k) = k^ord(n, k) where ord(n, k) is the p-adic order if n and k >= 2, 1 if k = 1, and 0^n if k = 0.

The programs for A382882, there is no canonical definition to state claims against.
-/

/-! ## A382882.P12656933423759338094

`A002262(n)^A000045(A271424(n))`
-/

namespace A382882.P12656933423759338094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A000045 (A271424 n).toNat : ℤ)

end

end A382882.P12656933423759338094

/-! ## A382882.P13883648509278391191

`A373748(n)^A000045(A271424(n))`
-/

namespace A382882.P13883648509278391191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373748 n : ℚ) ^ (A000045 (A271424 n).toNat : ℤ)

end

end A382882.P13883648509278391191

/-! ## A382882.P18057074308514483216

`A051904(A222444(n+1)-A025581(n))`
-/

namespace A382882.P18057074308514483216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A222444 (n + 1) - A025581 n).toNat

end

end A382882.P18057074308514483216

/-! ## A382882.P13160374311317733510

`gcd(A003056(n), A003415(A096334(n)))`
-/

namespace A382882.P13160374311317733510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 n) (A003415 (A096334 n).toNat)

end

end A382882.P13160374311317733510

/-! ## A382882.P3573283029100718167

`A347447(A314983(n))`
-/

namespace A382882.P3573283029100718167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (A314983 n).toNat

end

end A382882.P3573283029100718167

/-!
# A382883: a(n) = A382881(n, 1) = -Sum_{d|n, 1= 2, otherwise n.

The programs for A382883, there is no canonical definition to state claims against.
-/

/-! ## A382883.P3617906399323017285

`A383575(n+1)-A383576(n+1)`
-/

namespace A382883.P3617906399323017285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383575 (n + 1) - A383576 (n + 1)

end

end A382883.P3617906399323017285

/-! ## A382883.P10377181592061019216

`A383575(n+1)-A384667(n+1)*A384709(n+1)`
-/

namespace A382883.P10377181592061019216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383575 (n + 1) - A384667 (n + 1) * A384709 (n + 1)

end

end A382883.P10377181592061019216

/-! ## A382883.P9887871088113542917

`A384667(n+1)*A385055(n+1)-A383576(n+1)`
-/

namespace A382883.P9887871088113542917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (n + 1) * A385055 (n + 1) - A383576 (n + 1)

end

end A382883.P9887871088113542917

/-! ## A382883.P7848716794515441852

`∑{d}[n+1, A383123(#)]`
-/

namespace A382883.P7848716794515441852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A383123 d

end

end A382883.P7848716794515441852

/-! ## A382883.P5581678444842136203

`A382940(n+1)/(n+1)`
-/

namespace A382883.P5581678444842136203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382940 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A382883.P5581678444842136203

/-!
# A382885: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x) * A(x) )^3.

The programs for A382885, there is no canonical definition to state claims against.
-/

/-! ## A382885.P2607518862416086030

`A379171(n)-a(n-1)` with `a(0)=1`
-/

namespace A382885.P2607518862416086030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379171 n - a (n - 1)

end

end A382885.P2607518862416086030

/-!
# A382886: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x)^2 * A(x) )^3.

The programs for A382886, there is no canonical definition to state claims against.
-/

/-! ## A382886.P18311169071521604548

`A102464(A212973(n))`
-/

namespace A382886.P18311169071521604548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102464 (A212973 n).toNat

end

end A382886.P18311169071521604548

/-!
# A382888: The squarefree kernel of the n-th cubefree number.

The programs for A382888, the canonical program `A382888.P10950597595188319361` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382888 has offset 1).

The definition of A382888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382888.P10950597595188319361

`A007947(A004709(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382888

/-- `A007947(A004709(n+1))` -/
def P10950597595188319361.Spec : Prop :=
  ∀ n, P10950597595188319361.a n = A382888 (n + 1)

theorem P10950597595188319361.correct : P10950597595188319361.Spec := by
  intro n
  simp only [A382888, Nat.add_sub_cancel]

end A382888

/-! ## A382888.P18436113136121836439

`A004709(n+1)/A382890(n+1)`
-/

namespace A382888.P18436113136121836439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382890 (n + 1) : ℚ)

end

end A382888.P18436113136121836439

namespace A382888

/-- `A004709(n+1)/A382890(n+1)` -/
def P18436113136121836439.Spec : Prop :=
  ∀ n, P18436113136121836439.a n = (A382888 (n + 1) : ℚ)

end A382888

/-! ## A382888.P687202942313074385

`sqrt(A004709(n+1)*A382891(n+1))`
-/

namespace A382888.P687202942313074385
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A004709 (n + 1) * A382891 (n + 1) : ℝ)

end

end A382888.P687202942313074385

namespace A382888

/-- `sqrt(A004709(n+1)*A382891(n+1))` -/
def P687202942313074385.Spec : Prop :=
  ∀ n, P687202942313074385.a n = (A382888 (n + 1) : ℝ)

end A382888

/-! ## A382888.P5219630684086582846

`A004709(n+1)/sqrt(A382889(n+1))`
-/

namespace A382888.P5219630684086582846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℝ) / Real.sqrt (A382889 (n + 1) : ℝ)

end

end A382888.P5219630684086582846

namespace A382888

/-- `A004709(n+1)/sqrt(A382889(n+1))` -/
def P5219630684086582846.Spec : Prop :=
  ∀ n, P5219630684086582846.a n = (A382888 (n + 1) : ℝ)

end A382888

/-! ## A382888.P12315913685842907692

`∏{p}[A277803(n+1), #]`
-/

namespace A382888.P12315913685842907692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382888.P12315913685842907692

namespace A382888

/-- `∏{p}[A277803(n+1), #]` -/
def P12315913685842907692.Spec : Prop :=
  ∀ n, (P12315913685842907692.a n : ℤ) = A382888 (n + 1)

end A382888

/-! ## A382888.P14967579446058102318

`A007947(A277803(n+1))`
-/

namespace A382888.P14967579446058102318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A277803 (n + 1)).toNat

end

end A382888.P14967579446058102318

namespace A382888

/-- `A007947(A277803(n+1))` -/
def P14967579446058102318.Spec : Prop :=
  ∀ n, P14967579446058102318.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P8160787110675415123

`A382890(n+1)*A382891(n+1)`
-/

namespace A382888.P8160787110675415123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382890 (n + 1) * A382891 (n + 1)

end

end A382888.P8160787110675415123

namespace A382888

/-- `A382890(n+1)*A382891(n+1)` -/
def P8160787110675415123.Spec : Prop :=
  ∀ n, P8160787110675415123.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P3376303862133511005

`A277802(n+1)/A382891(n+1)`
-/

namespace A382888.P3376303862133511005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277802 (n + 1) : ℚ) / (A382891 (n + 1) : ℚ)

end

end A382888.P3376303862133511005

namespace A382888

/-- `A277802(n+1)/A382891(n+1)` -/
def P3376303862133511005.Spec : Prop :=
  ∀ n, P3376303862133511005.a n = (A382888 (n + 1) : ℚ)

end A382888

/-! ## A382888.P13352070888447779783

`A331737(A004709(2*n+1-n))`
-/

namespace A382888.P13352070888447779783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A004709 (2 * n + 1 - n)).toNat

end

end A382888.P13352070888447779783

namespace A382888

/-- `A331737(A004709(2*n+1-n))` -/
def P13352070888447779783.Spec : Prop :=
  ∀ n, P13352070888447779783.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P17095662561524002079

`gcd(A004709(n+1), A277802(n+1))`
-/

namespace A382888.P17095662561524002079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004709 (n + 1)) (A277802 (n + 1))

end

end A382888.P17095662561524002079

namespace A382888

/-- `gcd(A004709(n+1), A277802(n+1))` -/
def P17095662561524002079.Spec : Prop :=
  ∀ n, (P17095662561524002079.a n : ℤ) = A382888 (n + 1)

end A382888

/-! ## A382888.P17826266735432924377

`A007947(A382889(n+1)*A382891(n+1))`
-/

namespace A382888.P17826266735432924377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382889 (n + 1) * A382891 (n + 1)).toNat

end

end A382888.P17826266735432924377

namespace A382888

/-- `A007947(A382889(n+1)*A382891(n+1))` -/
def P17826266735432924377.Spec : Prop :=
  ∀ n, P17826266735432924377.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P16811714825900797389

`filter[A019554(n+1), A008966(#)]`
-/

namespace A382888.P16811714825900797389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382888.P16811714825900797389

namespace A382888

/-- `filter[A019554(n+1), A008966(#)]` -/
def P16811714825900797389.Spec : Prop :=
  ∀ n, P16811714825900797389.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P10083936884263251973

`filter[A350390(n+1), A008966(#)]`
-/

namespace A382888.P10083936884263251973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382888.P10083936884263251973

namespace A382888

/-- `filter[A350390(n+1), A008966(#)]` -/
def P10083936884263251973.Spec : Prop :=
  ∀ n, P10083936884263251973.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P11608031746634677849

`filter[A355263(n+1), A008966(#)]`
-/

namespace A382888.P11608031746634677849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382888.P11608031746634677849

namespace A382888

/-- `filter[A355263(n+1), A008966(#)]` -/
def P11608031746634677849.Spec : Prop :=
  ∀ n, P11608031746634677849.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P4521629597836408238

`filter[A366765(n+1), A008966(#)]`
-/

namespace A382888.P4521629597836408238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382888.P4521629597836408238

namespace A382888

/-- `filter[A366765(n+1), A008966(#)]` -/
def P4521629597836408238.Spec : Prop :=
  ∀ n, P4521629597836408238.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P9526592314241931646

`filter[A372379(n+1), A008966(#)]`
-/

namespace A382888.P9526592314241931646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382888.P9526592314241931646

namespace A382888

/-- `filter[A372379(n+1), A008966(#)]` -/
def P9526592314241931646.Spec : Prop :=
  ∀ n, P9526592314241931646.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P6259752752134912470

`filter[A383717(n+1), A166486(#)]`
-/

namespace A382888.P6259752752134912470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A382888.P6259752752134912470

namespace A382888

/-- `filter[A383717(n+1), A166486(#)]` -/
def P6259752752134912470.Spec : Prop :=
  ∀ n, P6259752752134912470.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P4155078610537608374

`filter[A383717(n+1), A168181(#)]`
-/

namespace A382888.P4155078610537608374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A382888.P4155078610537608374

namespace A382888

/-- `filter[A383717(n+1), A168181(#)]` -/
def P4155078610537608374.Spec : Prop :=
  ∀ n, P4155078610537608374.a n = A382888 (n + 1)

end A382888

/-! ## A382888.P764426372172864347

`filter[A383717(n+1), A168182(#)]`
-/

namespace A382888.P764426372172864347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A382888.P764426372172864347

namespace A382888

/-- `filter[A383717(n+1), A168182(#)]` -/
def P764426372172864347.Spec : Prop :=
  ∀ n, P764426372172864347.a n = A382888 (n + 1)

end A382888

/-!
# A382889: The largest square dividing the n-th cubefree number.

The programs for A382889, the canonical program `A382889.P8393808026600234868` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382889 has offset 1).

The definition of A382889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382889.P17770056904991008441

`A382890(n+1)²`
-/

namespace A382889.P17770056904991008441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382890 (n + 1) ^ 2

end

end A382889.P17770056904991008441

namespace A382889

/-- `A382890(n+1)²` -/
def P17770056904991008441.Spec : Prop :=
  ∀ n, P17770056904991008441.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P17867168419014396532

`A008833(A004709(n+1))`
-/

namespace A382889.P17867168419014396532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A004709 (n + 1)).toNat

end

end A382889.P17867168419014396532

namespace A382889

/-- `A008833(A004709(n+1))` -/
def P17867168419014396532.Spec : Prop :=
  ∀ n, P17867168419014396532.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P4286416719600901188

`A004709(n+1)/A382891(n+1)`
-/

namespace A382889.P4286416719600901188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382891 (n + 1) : ℚ)

end

end A382889.P4286416719600901188

namespace A382889

/-- `A004709(n+1)/A382891(n+1)` -/
def P4286416719600901188.Spec : Prop :=
  ∀ n, P4286416719600901188.a n = (A382889 (n + 1) : ℚ)

end A382889

/-! ## A382889.P8393808026600234868

`(A004709(n+1)/A382888(n+1))²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382889

/-- `(A004709(n+1)/A382888(n+1))²` -/
def P8393808026600234868.Spec : Prop :=
  ∀ n, P8393808026600234868.a n = (A382889 (n + 1) : ℚ)

end A382889

/-! ## A382889.P18419454632054136962

`A057521(A004709(2*n+1-n))`
-/

namespace A382889.P18419454632054136962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A004709 (2 * n + 1 - n)).toNat

end

end A382889.P18419454632054136962

namespace A382889

/-- `A057521(A004709(2*n+1-n))` -/
def P18419454632054136962.Spec : Prop :=
  ∀ n, P18419454632054136962.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P2326556338718889271

`A008833(A382888(n+1)*A382890(n+1))`
-/

namespace A382889.P2326556338718889271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A382888 (n + 1) * A382890 (n + 1)).toNat

end

end A382889.P2326556338718889271

namespace A382889

/-- `A008833(A382888(n+1)*A382890(n+1))` -/
def P2326556338718889271.Spec : Prop :=
  ∀ n, P2326556338718889271.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P6949580239929784913

`A004709(n+1)/A382888(n+1)*A382890(n+1)`
-/

namespace A382889.P6949580239929784913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ) * (A382890 (n + 1) : ℚ)

end

end A382889.P6949580239929784913

namespace A382889

/-- `A004709(n+1)/A382888(n+1)*A382890(n+1)` -/
def P6949580239929784913.Spec : Prop :=
  ∀ n, P6949580239929784913.a n = (A382889 (n + 1) : ℚ)

end A382889

/-! ## A382889.P8384518905196122543

`filter[A382906(n+1), A212793(#)]`
-/

namespace A382889.P8384518905196122543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382889.P8384518905196122543

namespace A382889

/-- `filter[A382906(n+1), A212793(#)]` -/
def P8384518905196122543.Spec : Prop :=
  ∀ n, P8384518905196122543.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P13316961741564816847

`filter[A382906(n+1), A227291(#)]`
-/

namespace A382889.P13316961741564816847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A227291 (f1 j).toNat = 1) n)

end

end A382889.P13316961741564816847

namespace A382889

/-- `filter[A382906(n+1), A227291(#)]` -/
def P13316961741564816847.Spec : Prop :=
  ∀ n, P13316961741564816847.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P11776707183614464609

`filter[A382906(n+1), A010052(#)]`
-/

namespace A382889.P11776707183614464609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A382889.P11776707183614464609

namespace A382889

/-- `filter[A382906(n+1), A010052(#)]` -/
def P11776707183614464609.Spec : Prop :=
  ∀ n, P11776707183614464609.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P3549479184617008713

`filter[A382906(n+1), A266178(#)]`
-/

namespace A382889.P3549479184617008713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266178 (f1 j).toNat = 1) n)

end

end A382889.P3549479184617008713

namespace A382889

/-- `filter[A382906(n+1), A266178(#)]` -/
def P3549479184617008713.Spec : Prop :=
  ∀ n, P3549479184617008713.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P7941847245052410389

`filter[A382906(n+1), A266298(#)]`
-/

namespace A382889.P7941847245052410389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266298 (f1 j).toNat = 1) n)

end

end A382889.P7941847245052410389

namespace A382889

/-- `filter[A382906(n+1), A266298(#)]` -/
def P7941847245052410389.Spec : Prop :=
  ∀ n, P7941847245052410389.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P11877408442240601567

`filter[A057521(n+1), A212793(#)]`
-/

namespace A382889.P11877408442240601567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382889.P11877408442240601567

namespace A382889

/-- `filter[A057521(n+1), A212793(#)]` -/
def P11877408442240601567.Spec : Prop :=
  ∀ n, P11877408442240601567.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P3110787253039822850

`filter[A057521(n+1), A227291(#)]`
-/

namespace A382889.P3110787253039822850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A227291 (f1 j).toNat = 1) n)

end

end A382889.P3110787253039822850

namespace A382889

/-- `filter[A057521(n+1), A227291(#)]` -/
def P3110787253039822850.Spec : Prop :=
  ∀ n, P3110787253039822850.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P18351721250513579462

`filter[A366993(n+1), A010052(#)]`
-/

namespace A382889.P18351721250513579462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A382889.P18351721250513579462

namespace A382889

/-- `filter[A366993(n+1), A010052(#)]` -/
def P18351721250513579462.Spec : Prop :=
  ∀ n, P18351721250513579462.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P14048852219891921316

`A000188(A004709(n+1))*A382890(n+1)`
-/

namespace A382889.P14048852219891921316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A004709 (n + 1)).toNat * A382890 (n + 1)

end

end A382889.P14048852219891921316

namespace A382889

/-- `A000188(A004709(n+1))*A382890(n+1)` -/
def P14048852219891921316.Spec : Prop :=
  ∀ n, P14048852219891921316.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P7360133149365196123

`A007913(A277802(n+1))²`
-/

namespace A382889.P7360133149365196123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A277802 (n + 1)).toNat ^ 2

end

end A382889.P7360133149365196123

namespace A382889

/-- `A007913(A277802(n+1))²` -/
def P7360133149365196123.Spec : Prop :=
  ∀ n, P7360133149365196123.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P980700903035461753

`A295657(A004709(n+1)²)²`
-/

namespace A382889.P980700903035461753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A004709 (n + 1) ^ 2).toNat ^ 2

end

end A382889.P980700903035461753

namespace A382889

/-- `A295657(A004709(n+1)²)²` -/
def P980700903035461753.Spec : Prop :=
  ∀ n, P980700903035461753.a n = A382889 (n + 1)

end A382889

/-! ## A382889.P2180630584878245422

`A295658(A004709(n+1)²)²`
-/

namespace A382889.P2180630584878245422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (A004709 (n + 1) ^ 2).toNat ^ 2

end

end A382889.P2180630584878245422

namespace A382889

/-- `A295658(A004709(n+1)²)²` -/
def P2180630584878245422.Spec : Prop :=
  ∀ n, P2180630584878245422.a n = A382889 (n + 1)

end A382889

/-!
# A382890: The square root of the largest square dividing the n-th cubefree number.

The programs for A382890, the canonical program `A382890.P5080446729015347365` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382890 has offset 1).

The definition of A382890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382890.P5080446729015347365

`sqrt(A382889(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382890

/-- `sqrt(A382889(n+1))` -/
def P5080446729015347365.Spec : Prop :=
  ∀ n, P5080446729015347365.a n = (A382890 (n + 1) : ℝ)

end A382890

/-! ## A382890.P12775875820725229542

`A004709(n+1)/A382888(n+1)`
-/

namespace A382890.P12775875820725229542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ)

end

end A382890.P12775875820725229542

namespace A382890

/-- `A004709(n+1)/A382888(n+1)` -/
def P12775875820725229542.Spec : Prop :=
  ∀ n, P12775875820725229542.a n = (A382890 (n + 1) : ℚ)

end A382890

/-! ## A382890.P13392090690742570437

`sqrt(A004709(n+1)/A382891(n+1))`
-/

namespace A382890.P13392090690742570437
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A004709 (n + 1) : ℚ) / (A382891 (n + 1) : ℚ) : ℝ)

end

end A382890.P13392090690742570437

namespace A382890

/-- `sqrt(A004709(n+1)/A382891(n+1))` -/
def P13392090690742570437.Spec : Prop :=
  ∀ n, P13392090690742570437.a n = (A382890 (n + 1) : ℝ)

end A382890

/-! ## A382890.P4273991005275594239

`A000188(A004709(n+1))`
-/

namespace A382890.P4273991005275594239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A004709 (n + 1)).toNat

end

end A382890.P4273991005275594239

namespace A382890

/-- `A000188(A004709(n+1))` -/
def P4273991005275594239.Spec : Prop :=
  ∀ n, P4273991005275594239.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P17166048184097197429

`A382888(n+1)/A382891(n+1)`
-/

namespace A382890.P17166048184097197429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382888 (n + 1) : ℚ) / (A382891 (n + 1) : ℚ)

end

end A382890.P17166048184097197429

namespace A382890

/-- `A382888(n+1)/A382891(n+1)` -/
def P17166048184097197429.Spec : Prop :=
  ∀ n, P17166048184097197429.a n = (A382890 (n + 1) : ℚ)

end A382890

/-! ## A382890.P526615067834284523

`A007947(A382889(2*n+1-n))`
-/

namespace A382890.P526615067834284523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382889 (2 * n + 1 - n)).toNat

end

end A382890.P526615067834284523

namespace A382890

/-- `A007947(A382889(2*n+1-n))` -/
def P526615067834284523.Spec : Prop :=
  ∀ n, P526615067834284523.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P13462594386250922251

`gcd(A157104(n+1), A277802(n+1))`
-/

namespace A382890.P13462594386250922251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157104 (n + 1)) (A277802 (n + 1))

end

end A382890.P13462594386250922251

namespace A382890

/-- `gcd(A157104(n+1), A277802(n+1))` -/
def P13462594386250922251.Spec : Prop :=
  ∀ n, (P13462594386250922251.a n : ℤ) = A382890 (n + 1)

end A382890

/-! ## A382890.P6854514190231571747

`A336643(A336643(A004709(n+1))²)`
-/

namespace A382890.P6854514190231571747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A336643 (A004709 (n + 1)).toNat ^ 2).toNat

end

end A382890.P6854514190231571747

namespace A382890

/-- `A336643(A336643(A004709(n+1))²)` -/
def P6854514190231571747.Spec : Prop :=
  ∀ n, P6854514190231571747.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P18027708648037599777

`A007947(A004709(n+1)/A382891(n+1))`
-/

namespace A382890.P18027708648037599777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A004709 (n + 1) : ℚ) / (A382891 (n + 1) : ℚ))).toNat

end

end A382890.P18027708648037599777

namespace A382890

/-- `A007947(A004709(n+1)/A382891(n+1))` -/
def P18027708648037599777.Spec : Prop :=
  ∀ n, P18027708648037599777.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P14127389115063408301

`filter[A000189(n+1), A008966(#)]`
-/

namespace A382890.P14127389115063408301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382890.P14127389115063408301

namespace A382890

/-- `filter[A000189(n+1), A008966(#)]` -/
def P14127389115063408301.Spec : Prop :=
  ∀ n, P14127389115063408301.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P10067002417676403579

`filter[A000190(n+1), A008966(#)]`
-/

namespace A382890.P10067002417676403579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382890.P10067002417676403579

namespace A382890

/-- `filter[A000190(n+1), A008966(#)]` -/
def P10067002417676403579.Spec : Prop :=
  ∀ n, P10067002417676403579.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P15856465088354063218

`filter[A003557(n+1), A008966(#)]`
-/

namespace A382890.P15856465088354063218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382890.P15856465088354063218

namespace A382890

/-- `filter[A003557(n+1), A008966(#)]` -/
def P15856465088354063218.Spec : Prop :=
  ∀ n, P15856465088354063218.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P16940751397846227624

`A000189(A004709(2*n+1-n))`
-/

namespace A382890.P16940751397846227624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A004709 (2 * n + 1 - n)).toNat

end

end A382890.P16940751397846227624

namespace A382890

/-- `A000189(A004709(2*n+1-n))` -/
def P16940751397846227624.Spec : Prop :=
  ∀ n, P16940751397846227624.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P337688524111848922

`A003557(A003557(A004709(n+1))²)`
-/

namespace A382890.P337688524111848922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (A004709 (n + 1)).toNat ^ 2).toNat

end

end A382890.P337688524111848922

namespace A382890

/-- `A003557(A003557(A004709(n+1))²)` -/
def P337688524111848922.Spec : Prop :=
  ∀ n, P337688524111848922.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P1394071741384489465

`A007947(A382889(n+1)²)`
-/

namespace A382890.P1394071741384489465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382889 (n + 1) ^ 2).toNat

end

end A382890.P1394071741384489465

namespace A382890

/-- `A007947(A382889(n+1)²)` -/
def P1394071741384489465.Spec : Prop :=
  ∀ n, P1394071741384489465.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P2553063889063866792

`A007947(A382889(n+1)*A382889(n+1))`
-/

namespace A382890.P2553063889063866792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382889 (n + 1) * A382889 (n + 1)).toNat

end

end A382890.P2553063889063866792

namespace A382890

/-- `A007947(A382889(n+1)*A382889(n+1))` -/
def P2553063889063866792.Spec : Prop :=
  ∀ n, P2553063889063866792.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P7491864904708580111

`A007913(A277802(n+1))`
-/

namespace A382890.P7491864904708580111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A277802 (n + 1)).toNat

end

end A382890.P7491864904708580111

namespace A382890

/-- `A007913(A277802(n+1))` -/
def P7491864904708580111.Spec : Prop :=
  ∀ n, P7491864904708580111.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P7115826947597873134

`A007913(A382888(n+1)*A382891(n+1))`
-/

namespace A382890.P7115826947597873134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A382888 (n + 1) * A382891 (n + 1)).toNat

end

end A382890.P7115826947597873134

namespace A382890

/-- `A007913(A382888(n+1)*A382891(n+1))` -/
def P7115826947597873134.Spec : Prop :=
  ∀ n, P7115826947597873134.a n = A382890 (n + 1)

end A382890

/-! ## A382890.P1415987316961872826

`gcd(A034386(n), A382889(n+1))`
-/

namespace A382890.P1415987316961872826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A382889 (n + 1))

end

end A382890.P1415987316961872826

namespace A382890

/-- `gcd(A034386(n), A382889(n+1))` -/
def P1415987316961872826.Spec : Prop :=
  ∀ n, (P1415987316961872826.a n : ℤ) = A382890 (n + 1)

end A382890

/-! ## A382890.P12008867156740253834

`A295657(A004709(n+1)²)`
-/

namespace A382890.P12008867156740253834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A004709 (n + 1) ^ 2).toNat

end

end A382890.P12008867156740253834

namespace A382890

/-- `A295657(A004709(n+1)²)` -/
def P12008867156740253834.Spec : Prop :=
  ∀ n, P12008867156740253834.a n = A382890 (n + 1)

end A382890

/-!
# A382891: The powerfree part of the n-th cubefree number.

The programs for A382891, the canonical program `A382891.P5915587379995941909` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382891 has offset 1).

The definition of A382891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382891.P15065191058668165874

`A007913(A004709(n+1))`
-/

namespace A382891.P15065191058668165874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A004709 (n + 1)).toNat

end

end A382891.P15065191058668165874

namespace A382891

/-- `A007913(A004709(n+1))` -/
def P15065191058668165874.Spec : Prop :=
  ∀ n, P15065191058668165874.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P5915587379995941909

`A004709(n+1)/A382889(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382891

/-- `A004709(n+1)/A382889(n+1)` -/
def P5915587379995941909.Spec : Prop :=
  ∀ n, P5915587379995941909.a n = (A382891 (n + 1) : ℚ)

end A382891

/-! ## A382891.P16172889200618164356

`A382888(n+1)²/A004709(n+1)`
-/

namespace A382891.P16172889200618164356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382888 (n + 1) ^ 2 : ℚ) / (A004709 (n + 1) : ℚ)

end

end A382891.P16172889200618164356

namespace A382891

/-- `A382888(n+1)²/A004709(n+1)` -/
def P16172889200618164356.Spec : Prop :=
  ∀ n, P16172889200618164356.a n = (A382891 (n + 1) : ℚ)

end A382891

/-! ## A382891.P10206739208650386231

`A277802(n+1)/A382888(n+1)`
-/

namespace A382891.P10206739208650386231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277802 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ)

end

end A382891.P10206739208650386231

namespace A382891

/-- `A277802(n+1)/A382888(n+1)` -/
def P10206739208650386231.Spec : Prop :=
  ∀ n, P10206739208650386231.a n = (A382891 (n + 1) : ℚ)

end A382891

/-! ## A382891.P1283556443262907562

`A382888(n+1)/A382890(n+1)`
-/

namespace A382891.P1283556443262907562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382888 (n + 1) : ℚ) / (A382890 (n + 1) : ℚ)

end

end A382891.P1283556443262907562

namespace A382891

/-- `A382888(n+1)/A382890(n+1)` -/
def P1283556443262907562.Spec : Prop :=
  ∀ n, P1283556443262907562.a n = (A382891 (n + 1) : ℚ)

end A382891

/-! ## A382891.P14511028337004164241

`A055231(A004709(2*n+1-n))`
-/

namespace A382891.P14511028337004164241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A004709 (2 * n + 1 - n)).toNat

end

end A382891.P14511028337004164241

namespace A382891

/-- `A055231(A004709(2*n+1-n))` -/
def P14511028337004164241.Spec : Prop :=
  ∀ n, P14511028337004164241.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P6637299918754697086

`A007913(A382888(n+1)*A382890(n+1))`
-/

namespace A382891.P6637299918754697086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A382888 (n + 1) * A382890 (n + 1)).toNat

end

end A382891.P6637299918754697086

namespace A382891

/-- `A007913(A382888(n+1)*A382890(n+1))` -/
def P6637299918754697086.Spec : Prop :=
  ∀ n, P6637299918754697086.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P12279565969391896814

`A055231(A382888(n+1)*A382890(n+1))`
-/

namespace A382891.P12279565969391896814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382888 (n + 1) * A382890 (n + 1)).toNat

end

end A382891.P12279565969391896814

namespace A382891

/-- `A055231(A382888(n+1)*A382890(n+1))` -/
def P12279565969391896814.Spec : Prop :=
  ∀ n, P12279565969391896814.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P13350138760473702439

`A007947(A004709(n+1))/A382890(n+1)`
-/

namespace A382891.P13350138760473702439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A004709 (n + 1)).toNat : ℚ) / (A382890 (n + 1) : ℚ)

end

end A382891.P13350138760473702439

namespace A382891

/-- `A007947(A004709(n+1))/A382890(n+1)` -/
def P13350138760473702439.Spec : Prop :=
  ∀ n, P13350138760473702439.a n = (A382891 (n + 1) : ℚ)

end A382891

/-! ## A382891.P437935607704630650

`filter[A368886(n+1), A008966(#)]`
-/

namespace A382891.P437935607704630650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382891.P437935607704630650

namespace A382891

/-- `filter[A368886(n+1), A008966(#)]` -/
def P437935607704630650.Spec : Prop :=
  ∀ n, P437935607704630650.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P7110899975504866523

`filter[A390371(n+1), A008966(#)]`
-/

namespace A382891.P7110899975504866523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382891.P7110899975504866523

namespace A382891

/-- `filter[A390371(n+1), A008966(#)]` -/
def P7110899975504866523.Spec : Prop :=
  ∀ n, P7110899975504866523.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P10681385313798956651

`filter[A368886(n+1), A212793(#)]`
-/

namespace A382891.P10681385313798956651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382891.P10681385313798956651

namespace A382891

/-- `filter[A368886(n+1), A212793(#)]` -/
def P10681385313798956651.Spec : Prop :=
  ∀ n, P10681385313798956651.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P1831270104903629248

`filter[A390371(n+1), A212793(#)]`
-/

namespace A382891.P1831270104903629248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382891.P1831270104903629248

namespace A382891

/-- `filter[A390371(n+1), A212793(#)]` -/
def P1831270104903629248.Spec : Prop :=
  ∀ n, P1831270104903629248.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P13307614568374164413

`filter[A368886(n+1), A359471(#)]`
-/

namespace A382891.P13307614568374164413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A382891.P13307614568374164413

namespace A382891

/-- `filter[A368886(n+1), A359471(#)]` -/
def P13307614568374164413.Spec : Prop :=
  ∀ n, P13307614568374164413.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P15626973350056845360

`filter[A390371(n+1), A355823(#)]`
-/

namespace A382891.P15626973350056845360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A382891.P15626973350056845360

namespace A382891

/-- `filter[A390371(n+1), A355823(#)]` -/
def P15626973350056845360.Spec : Prop :=
  ∀ n, P15626973350056845360.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P394768817977823604

`filter[A390371(n+1), A359471(#)]`
-/

namespace A382891.P394768817977823604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A382891.P394768817977823604

namespace A382891

/-- `filter[A390371(n+1), A359471(#)]` -/
def P394768817977823604.Spec : Prop :=
  ∀ n, P394768817977823604.a n = A382891 (n + 1)

end A382891

/-! ## A382891.P17273383305356474399

`A055231(A382888(n+1)*A382889(n+1))`
-/

namespace A382891.P17273383305356474399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382888 (n + 1) * A382889 (n + 1)).toNat

end

end A382891.P17273383305356474399

namespace A382891

/-- `A055231(A382888(n+1)*A382889(n+1))` -/
def P17273383305356474399.Spec : Prop :=
  ∀ n, P17273383305356474399.a n = A382891 (n + 1)

end A382891

/-!
# A382892: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x)^3 * A(x) )^3.

The programs for A382892, there is no canonical definition to state claims against.
-/

/-! ## A382892.P3170231422372619919

`A032742(A001651(n+1)*A121421(n))`
-/

namespace A382892.P3170231422372619919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A001651 (n + 1) * A121421 n).toNat

end

end A382892.P3170231422372619919

/-!
# A382893: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x)^2 * A(x) )^2.

The programs for A382893, there is no canonical definition to state claims against.
-/

/-! ## A382893.P5345510692927330595

`abs(∑[∑[A366434(n+1)]])`
-/

namespace A382893.P5345510692927330595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A382893.P5345510692927330595

/-! ## A382893.P7445542805757960361

`∑[A109613(A317752(n+1))]`
-/

namespace A382893.P7445542805757960361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A317752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382893.P7445542805757960361

/-!
# A382894: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1+x)^3 * A(x) )^2.

The programs for A382894, there is no canonical definition to state claims against.
-/

/-! ## A382894.P7484677568701567695

`A334821(A211380(n+3))`
-/

namespace A382894.P7484677568701567695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334821 (A211380 (n + 3)).toNat

end

end A382894.P7484677568701567695

/-!
# A382895: Divide n successively by its nonzero digits from most to least significant, updating the result at each step and skipping any digit that doesn't divide the current value exactly.

The programs for A382895, there is no canonical definition to state claims against.
-/

/-! ## A382895.P17456180349548907924

`(n+1)/A382897(n+1)`
-/

namespace A382895.P17456180349548907924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A382897 (n + 1) : ℚ)

end

end A382895.P17456180349548907924

/-!
# A382896: Smith sphenic numbers, i.e., Smith numbers (A006753) that are the product of three distinct prime numbers.

The programs for A382896, the canonical program `A382896.P5821804241152732795` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382896 has offset 1).

The definition of A382896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382896.P16016651206480418125

`filter[A006753(n+1), A354926(#)]`
-/

namespace A382896.P16016651206480418125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382896.P16016651206480418125

namespace A382896

/-- `filter[A006753(n+1), A354926(#)]` -/
def P16016651206480418125.Spec : Prop :=
  ∀ n, P16016651206480418125.a n = A382896 (n + 1)

end A382896

/-! ## A382896.P14161163680047868129

`filter[A019506(n+1), A354926(#)]`
-/

namespace A382896.P14161163680047868129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382896.P14161163680047868129

namespace A382896

/-- `filter[A019506(n+1), A354926(#)]` -/
def P14161163680047868129.Spec : Prop :=
  ∀ n, P14161163680047868129.a n = A382896 (n + 1)

end A382896

/-! ## A382896.P10243686227841149037

`filter[A202387(n+1), A354926(#)]`
-/

namespace A382896.P10243686227841149037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382896.P10243686227841149037

namespace A382896

/-- `filter[A202387(n+1), A354926(#)]` -/
def P10243686227841149037.Spec : Prop :=
  ∀ n, P10243686227841149037.a n = A382896 (n + 1)

end A382896

/-! ## A382896.P13581957345989806204

`filter[A202387(n+1), A358753(#)]`
-/

namespace A382896.P13581957345989806204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A382896.P13581957345989806204

namespace A382896

/-- `filter[A202387(n+1), A358753(#)]` -/
def P13581957345989806204.Spec : Prop :=
  ∀ n, P13581957345989806204.a n = A382896 (n + 1)

end A382896

/-! ## A382896.P5821804241152732795

`∩[A019506(n+1), A110188(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A382896

/-- `∩[A019506(n+1), A110188(n+1)]` -/
def P5821804241152732795.Spec : Prop :=
  ∀ n, (P5821804241152732795.a n : ℤ) = A382896 (n + 1)

theorem P5821804241152732795.correct : P5821804241152732795.Spec := by
  intro n
  simp only [A382896, Nat.add_sub_cancel]

end A382896

/-! ## A382896.P10617206163259554523

`∩[A110188(n+1), A202387(n+1)]`
-/

namespace A382896.P10617206163259554523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P10617206163259554523

namespace A382896

/-- `∩[A110188(n+1), A202387(n+1)]` -/
def P10617206163259554523.Spec : Prop :=
  ∀ n, (P10617206163259554523.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P57804885678456379

`∩[A006753(n+1), A007304(n+1)]`
-/

namespace A382896.P57804885678456379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P57804885678456379

namespace A382896

/-- `∩[A006753(n+1), A007304(n+1)]` -/
def P57804885678456379.Spec : Prop :=
  ∀ n, (P57804885678456379.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P17567742858787647538

`∩[A007304(n+1), A019506(n+1)]`
-/

namespace A382896.P17567742858787647538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P17567742858787647538

namespace A382896

/-- `∩[A007304(n+1), A019506(n+1)]` -/
def P17567742858787647538.Spec : Prop :=
  ∀ n, (P17567742858787647538.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P16007057597409802624

`∩[A007304(n+1), A202387(n+1)]`
-/

namespace A382896.P16007057597409802624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P16007057597409802624

namespace A382896

/-- `∩[A007304(n+1), A202387(n+1)]` -/
def P16007057597409802624.Spec : Prop :=
  ∀ n, (P16007057597409802624.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P2936512756530553112

`∩[A202387(n+1), A345382(n+1)]`
-/

namespace A382896.P2936512756530553112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P2936512756530553112

namespace A382896

/-- `∩[A202387(n+1), A345382(n+1)]` -/
def P2936512756530553112.Spec : Prop :=
  ∀ n, (P2936512756530553112.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P18437901036241653178

`∩[A202387(n+1), A225228(n+1)]`
-/

namespace A382896.P18437901036241653178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P18437901036241653178

namespace A382896

/-- `∩[A202387(n+1), A225228(n+1)]` -/
def P18437901036241653178.Spec : Prop :=
  ∀ n, (P18437901036241653178.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P11297018841319617893

`∩[A006753(n+1), A030626(n+1)]`
-/

namespace A382896.P11297018841319617893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P11297018841319617893

namespace A382896

/-- `∩[A006753(n+1), A030626(n+1)]` -/
def P11297018841319617893.Spec : Prop :=
  ∀ n, (P11297018841319617893.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P6700423871735318396

`∩[A006753(n+1), A111398(n+1)]`
-/

namespace A382896.P6700423871735318396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P6700423871735318396

namespace A382896

/-- `∩[A006753(n+1), A111398(n+1)]` -/
def P6700423871735318396.Spec : Prop :=
  ∀ n, (P6700423871735318396.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P7040780022765259106

`∩[A030626(n+1), A202387(n+1)]`
-/

namespace A382896.P7040780022765259106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P7040780022765259106

namespace A382896

/-- `∩[A030626(n+1), A202387(n+1)]` -/
def P7040780022765259106.Spec : Prop :=
  ∀ n, (P7040780022765259106.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P5111788888315459348

`∩[A111398(n+1), A202387(n+1)]`
-/

namespace A382896.P5111788888315459348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P5111788888315459348

namespace A382896

/-- `∩[A111398(n+1), A202387(n+1)]` -/
def P5111788888315459348.Spec : Prop :=
  ∀ n, (P5111788888315459348.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P17635670266706343548

`∩[A014612(n+1), A019506(n+1)]`
-/

namespace A382896.P17635670266706343548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P17635670266706343548

namespace A382896

/-- `∩[A014612(n+1), A019506(n+1)]` -/
def P17635670266706343548.Spec : Prop :=
  ∀ n, (P17635670266706343548.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P10759393245768996569

`∩[A014612(n+1), A202387(n+1)]`
-/

namespace A382896.P10759393245768996569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P10759393245768996569

namespace A382896

/-- `∩[A014612(n+1), A202387(n+1)]` -/
def P10759393245768996569.Spec : Prop :=
  ∀ n, (P10759393245768996569.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P14109423586054898929

`∩[A006753(n+1), A217856(n+1)]`
-/

namespace A382896.P14109423586054898929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P14109423586054898929

namespace A382896

/-- `∩[A006753(n+1), A217856(n+1)]` -/
def P14109423586054898929.Spec : Prop :=
  ∀ n, (P14109423586054898929.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P4922376045453436756

`∩[A019506(n+1), A217856(n+1)]`
-/

namespace A382896.P4922376045453436756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P4922376045453436756

namespace A382896

/-- `∩[A019506(n+1), A217856(n+1)]` -/
def P4922376045453436756.Spec : Prop :=
  ∀ n, (P4922376045453436756.a n : ℤ) = A382896 (n + 1)

end A382896

/-! ## A382896.P5499106779130175766

`∩[A202387(n+1), A217856(n+1)]`
-/

namespace A382896.P5499106779130175766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382896.P5499106779130175766

namespace A382896

/-- `∩[A202387(n+1), A217856(n+1)]` -/
def P5499106779130175766.Spec : Prop :=
  ∀ n, (P5499106779130175766.a n : ℤ) = A382896 (n + 1)

end A382896

/-!
# A382897: a(n) = n / A382895(n).

The programs for A382897, there is no canonical definition to state claims against.
-/

/-! ## A382897.P16849273462454941461

`(n+1)/A382895(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382897.P16849273462454941461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A382895 (n + 1) : ℚ)

end

end A382897.P16849273462454941461

/-!
# A382899: The smallest n-digit prime that turns composite at each step as its digits are successively appended, starting from the first.

The programs for A382899, there is no canonical definition to state claims against.
-/

/-! ## A382899.P15089728790337118733

`or(A003617(n+1), A019425(A001465(n)))`
-/

namespace A382899.P15089728790337118733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003617 (n + 1)) (A019425 (A001465 n).toNat)

end

end A382899.P15089728790337118733

/-! ## A382899.P4760904056122389958

`or(A003617(n+1), A266389(A241204(n)))`
-/

namespace A382899.P4760904056122389958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003617 (n + 1)) (A266389 (A241204 n).toNat)

end

end A382899.P4760904056122389958

/-! ## A382899.P2550977779906379087

`or(A003617(n+1), A069705(A000108(n)))`
-/

namespace A382899.P2550977779906379087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003617 (n + 1)) (A069705 (A000108 n).toNat)

end

end A382899.P2550977779906379087

/-! ## A382899.P3630692804106027568

`or(A001222(A323229(n)), A003617(n+1))`
-/

namespace A382899.P3630692804106027568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A323229 n).toNat) (A003617 (n + 1))

end

end A382899.P3630692804106027568

/-! ## A382899.P11921227819496256914

`or(A003617(n+1), A137843(A139148(n+1)))`
-/

namespace A382899.P11921227819496256914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003617 (n + 1)) (A137843 (A139148 (n + 1)).toNat)

end

end A382899.P11921227819496256914

