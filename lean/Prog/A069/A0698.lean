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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069800: Triangular array in which n-th row consists of zeroless numbers with digit sum n arranged in increasing numerical order.

The programs for A069800, there is no canonical definition to state claims against.
-/

/-! ## A069800.P1818927614086603905

`A275536(A209862(n+1))`
-/

namespace A069800.P1818927614086603905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A209862 (n + 1)).toNat

end

end A069800.P1818927614086603905

/-! ## A069800.P7778915220091778318

`A004086(A209644(n+1))`
-/

namespace A069800.P7778915220091778318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A209644 (n + 1)).toNat

end

end A069800.P7778915220091778318

/-! ## A069800.P3794169943172029611

`A081600(A113698(n+1))`
-/

namespace A069800.P3794169943172029611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A113698 (n + 1)).toNat

end

end A069800.P3794169943172029611

/-! ## A069800.P3168350151694401634

`filter[A242614(n), A168046(#)]`
-/

namespace A069800.P3168350151694401634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A069800.P3168350151694401634

/-! ## A069800.P17012218655674242948

`A098488(A113698(n+1)%p?[round(8*n/7)]²)`
-/

namespace A069800.P17012218655674242948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (Int.tmod (A113698 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2)).toNat

end

end A069800.P17012218655674242948

/-!
# A069802: Primes related to the nondecreasing subsequence of A053666.

The programs for A069802, there is no canonical definition to state claims against.
-/

/-! ## A069802.P320917417378205150

`p?[lt[n-2*floor(n/10), (n%10)²]]`
-/

namespace A069802.P320917417378205150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 10) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069802.P320917417378205150

/-! ## A069802.P13357267618455556288

`p?[lt[n², A055013(n)]]`
-/

namespace A069802.P13357267618455556288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069802.P13357267618455556288

/-! ## A069802.P16946981663077993253

`p?[lt[n^3, A055015(n)]]`
-/

namespace A069802.P16946981663077993253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069802.P16946981663077993253

/-! ## A069802.P7741168927470168802

`p?[lt[C(n, 2), A118880(n)]]`
-/

namespace A069802.P7741168927470168802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069802.P7741168927470168802

/-! ## A069802.P4143258318735107043

`p?[lt[A064876(n), n%10]]`
-/

namespace A069802.P4143258318735107043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069802.P4143258318735107043

/-!
# A069803: Smaller of two consecutive palindromic primes.

The programs for A069803, there is no canonical definition to state claims against.
-/

/-! ## A069803.P551134738130457810

`A035068(A267755(n))`
-/

namespace A069803.P551134738130457810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035068 (A267755 n).toNat

end

end A069803.P551134738130457810

/-! ## A069803.P13042550558707827969

`A064989(A069804(n+1))`
-/

namespace A069803.P13042550558707827969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A069804 (n + 1)).toNat

end

end A069803.P13042550558707827969

/-! ## A069803.P15235150892209878478

`record[A047813(p?[A096276(n)])]`
-/

namespace A069803.P15235150892209878478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069803.P15235150892209878478

/-!
# A069804: Larger of the two consecutive palindromic primes.

The programs for A069804, there is no canonical definition to state claims against.
-/

/-! ## A069804.P1784305964784652924

`A003961(A069803(n+1))`
-/

namespace A069804.P1784305964784652924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A069803 (n + 1)).toNat

end

end A069804.P1784305964784652924

/-! ## A069804.P2214943798768185624

`A035068(A267755(n)+1)`
-/

namespace A069804.P2214943798768185624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035068 (A267755 n + 1).toNat

end

end A069804.P2214943798768185624

/-! ## A069804.P9624707274849838642

`A157868(A230769(n+2))`
-/

namespace A069804.P9624707274849838642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (A230769 (n + 2)).toNat

end

end A069804.P9624707274849838642

/-!
# A069805: Smallest k>n such that tau(n) divides tau(k)=A000005(k).

The programs for A069805, there is no canonical definition to state claims against.
-/

/-! ## A069805.P17064534754886218485

`A275479(n+1)+1+n`
-/

namespace A069805.P17064534754886218485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (n + 1) + 1 + (n : ℤ)

end

end A069805.P17064534754886218485

/-! ## A069805.P18446714483368027480

`A020725(A275479(n+1))+n`
-/

namespace A069805.P18446714483368027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A275479 (n + 1)).toNat + (n : ℤ)

end

end A069805.P18446714483368027480

/-! ## A069805.P4140523090729446791

`A031285(A275479(n+1)+n)`
-/

namespace A069805.P4140523090729446791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A275479 (n + 1) + (n : ℤ)).toNat

end

end A069805.P4140523090729446791

/-! ## A069805.P2384169000203805154

`A193176(A275479(n+1)+n)`
-/

namespace A069805.P2384169000203805154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193176 (A275479 (n + 1) + (n : ℤ)).toNat

end

end A069805.P2384169000203805154

/-! ## A069805.P3950453050154160292

`A275479(A077168(n))+n+1`
-/

namespace A069805.P3950453050154160292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (A077168 n).toNat + (n + 1 : ℤ)

end

end A069805.P3950453050154160292

/-!
# A069807: Smallest k>n such that prime(n)+1 divides prime(k)+1.

The programs for A069807, there is no canonical definition to state claims against.
-/

/-! ## A069807.P5911347942443673819

`A000720(A088732(Δ[A007504(n)]))`
-/

namespace A069807.P5911347942443673819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088732 (f1 (n + 1) - f1 n).toNat).toNat

end

end A069807.P5911347942443673819

/-! ## A069807.P5858615754829439240

`A000720(A088732(record[A051698(n)]))`
-/

namespace A069807.P5858615754829439240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A069807.P5858615754829439240

/-! ## A069807.P2854086388423530942

`A000720(A088732(p?[A001057(n)]))`
-/

namespace A069807.P2854086388423530942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A069807.P2854086388423530942

/-! ## A069807.P7860037775458925405

`A000720(A088732(p?[A014681(n)]))`
-/

namespace A069807.P7860037775458925405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A069807.P7860037775458925405

/-! ## A069807.P2775895552929954243

`A000720(A088732(p?[A056847(n)]))`
-/

namespace A069807.P2775895552929954243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A069807.P2775895552929954243

/-! ## A069807.P58028581885305912

`A000720(A088732(p?[A057979(n)]))`
-/

namespace A069807.P58028581885305912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A069807.P58028581885305912

/-! ## A069807.P3269799626734299059

`∑{d}[A088732(A000040(n+1)), A000720(#)]`
-/

namespace A069807.P3269799626734299059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A069807.P3269799626734299059

/-! ## A069807.P12504532216799611116

`∏{d}[A088732(A000040(n+1)), A058933(#)]`
-/

namespace A069807.P12504532216799611116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A058933 d

end

end A069807.P12504532216799611116

/-! ## A069807.P434922867805155763

`A056239(A088732(p?[xor(1, n)+1]))`
-/

namespace A069807.P434922867805155763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A069807.P434922867805155763

/-! ## A069807.P16516389097489306127

`∑{d}[A088732(A000040(n+1)), A056239(#)]`
-/

namespace A069807.P16516389097489306127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A069807.P16516389097489306127

/-!
# A069809: Numbers k such that gcd(k, phi(k)) = tau(k).

The programs for A069809, the canonical program `A069809.P15229151927026619136` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069809 has offset 1).

The definition of A069809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069809.P15229151927026619136

`eq[gcd(n+1, A000010(n+1)), A000005(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069809

/-- `eq[gcd(n+1, A000010(n+1)), A000005(n+1)]+1` -/
def P15229151927026619136.Spec : Prop :=
  ∀ n, (P15229151927026619136.a n : ℤ) = A069809 (n + 1)

theorem P15229151927026619136.correct : P15229151927026619136.Spec := by
  intro n
  simp only [A069809, Nat.add_sub_cancel]

end A069809

/-! ## A069809.P10437367725147871169

`eq[A000005(n+1), A009195(n+1)]+1`
-/

namespace A069809.P10437367725147871169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069809.P10437367725147871169

namespace A069809

/-- `eq[A000005(n+1), A009195(n+1)]+1` -/
def P10437367725147871169.Spec : Prop :=
  ∀ n, (P10437367725147871169.a n : ℤ) = A069809 (n + 1)

end A069809

/-! ## A069809.P18151025643622474152

`eq[A334954(n+1)-1, A009195(n+1)]+1`
-/

namespace A069809.P18151025643622474152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069809.P18151025643622474152

namespace A069809

/-- `eq[A334954(n+1)-1, A009195(n+1)]+1` -/
def P18151025643622474152.Spec : Prop :=
  ∀ n, (P18151025643622474152.a n : ℤ) = A069809 (n + 1)

end A069809

/-! ## A069809.P14712278359582426204

`eq[A009195(n+1), A183063(2*(n+1))]+1`
-/

namespace A069809.P14712278359582426204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069809.P14712278359582426204

namespace A069809

/-- `eq[A009195(n+1), A183063(2*(n+1))]+1` -/
def P14712278359582426204.Spec : Prop :=
  ∀ n, (P14712278359582426204.a n : ℤ) = A069809 (n + 1)

end A069809

/-!
# A069810: Integers k such that gcd(k, sigma(k)) = tau(k).

The programs for A069810, there is no canonical definition to state claims against.
-/

/-! ## A069810.P15463550929179034905

`A047727(lt[A318731(n+1), A028822(n+1)])`
-/

namespace A069810.P15463550929179034905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069810.P15463550929179034905

/-! ## A069810.P9877791990071527482

`A047727(lt[A327481(3*n+1), A029886(n)])`
-/

namespace A069810.P9877791990071527482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327481 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069810.P9877791990071527482

/-! ## A069810.P661824855072325424

`A047727(lt[A327481(3*n+1), A325700(n+1)])`
-/

namespace A069810.P661824855072325424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327481 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069810.P661824855072325424

/-! ## A069810.P1885651653928205144

`filter[A175678(n+1), A336040(#)]`
-/

namespace A069810.P1885651653928205144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A069810.P1885651653928205144

/-!
# A069811: a(n) = Sum_{k=1..n} omega(k)^2.

The programs for A069811, the canonical program `A069811.P18286164549586486924` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069811 has offset 1).

The definition of A069811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069811.P18286164549586486924

`∑[∑{p}[n+1, gcd(n, #)]²]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069811

/-- `∑[∑{p}[n+1, gcd(n, #)]²]` -/
def P18286164549586486924.Spec : Prop :=
  ∀ n, (P18286164549586486924.a n : ℤ) = A069811 (n + 1)

theorem P18286164549586486924.correct : P18286164549586486924.Spec := by
  intro n
  simp only [A069811, Nat.add_sub_cancel]

end A069811

/-! ## A069811.P4321035217978562400

`∑[∑{e}[∏{p}[n+1, #], #]²]`
-/

namespace A069811.P4321035217978562400
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P4321035217978562400

namespace A069811

/-- `∑[∑{e}[∏{p}[n+1, #], #]²]` -/
def P4321035217978562400.Spec : Prop :=
  ∀ n, (P4321035217978562400.a n : ℤ) = A069811 (n + 1)

end A069811

/-! ## A069811.P12654054926750202316

`∑[∑{p}[n+1, ceil(1/#)]²]`
-/

namespace A069811.P12654054926750202316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (p : ℚ)⌉) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P12654054926750202316

namespace A069811

/-- `∑[∑{p}[n+1, ceil(1/#)]²]` -/
def P12654054926750202316.Spec : Prop :=
  ∀ n, P12654054926750202316.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P17417683917439261055

`∑[∑{e}[n+1, ceil(1/#)]²]`
-/

namespace A069811.P17417683917439261055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (Nat.factorization (f2 n) p : ℚ)⌉) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P17417683917439261055

namespace A069811

/-- `∑[∑{e}[n+1, ceil(1/#)]²]` -/
def P17417683917439261055.Spec : Prop :=
  ∀ n, P17417683917439261055.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P10783028079524169372

`∑[A001221(n+1)²]`
-/

namespace A069811.P10783028079524169372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P10783028079524169372

namespace A069811

/-- `∑[A001221(n+1)²]` -/
def P10783028079524169372.Spec : Prop :=
  ∀ n, P10783028079524169372.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P17145096420423935248

`∑[A158210(n+1)²]`
-/

namespace A069811.P17145096420423935248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P17145096420423935248

namespace A069811

/-- `∑[A158210(n+1)²]` -/
def P17145096420423935248.Spec : Prop :=
  ∀ n, P17145096420423935248.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P18196879854038771946

`∑[A392285(n+1)²]`
-/

namespace A069811.P18196879854038771946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392285 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P18196879854038771946

namespace A069811

/-- `∑[A392285(n+1)²]` -/
def P18196879854038771946.Spec : Prop :=
  ∀ n, P18196879854038771946.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P11007827252919220332

`∑[log2(A034444(n+1))²]`
-/

namespace A069811.P11007827252919220332
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P11007827252919220332

namespace A069811

/-- `∑[log2(A034444(n+1))²]` -/
def P11007827252919220332.Spec : Prop :=
  ∀ n, P11007827252919220332.a n = (A069811 (n + 1) : ℝ)

end A069811

/-! ## A069811.P7421852231824818341

`∑[(1-A083399(n+1))²]`
-/

namespace A069811.P7421852231824818341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A083399 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P7421852231824818341

namespace A069811

/-- `∑[(1-A083399(n+1))²]` -/
def P7421852231824818341.Spec : Prop :=
  ∀ n, P7421852231824818341.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P10843760671733030587

`∑[val(A124859(n+1), 2)²]`
-/

namespace A069811.P10843760671733030587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124859 (n + 1)).toNat 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P10843760671733030587

namespace A069811

/-- `∑[val(A124859(n+1), 2)²]` -/
def P10843760671733030587.Spec : Prop :=
  ∀ n, (P10843760671733030587.a n : ℤ) = A069811 (n + 1)

end A069811

/-! ## A069811.P16523859265026781772

`∑[A001222(∏{p}[n+1, #])²]`
-/

namespace A069811.P16523859265026781772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P16523859265026781772

namespace A069811

/-- `∑[A001222(∏{p}[n+1, #])²]` -/
def P16523859265026781772.Spec : Prop :=
  ∀ n, P16523859265026781772.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P12558474469750646881

`∑[log2(A000005(∏{p}[n+1, #]))²]`
-/

namespace A069811.P12558474469750646881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P12558474469750646881

namespace A069811

/-- `∑[log2(A000005(∏{p}[n+1, #]))²]` -/
def P12558474469750646881.Spec : Prop :=
  ∀ n, P12558474469750646881.a n = (A069811 (n + 1) : ℝ)

end A069811

/-! ## A069811.P7042925544310902243

`∑[(n+1-A229109(n+1))²]`
-/

namespace A069811.P7042925544310902243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A229109 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P7042925544310902243

namespace A069811

/-- `∑[(n+1-A229109(n+1))²]` -/
def P7042925544310902243.Spec : Prop :=
  ∀ n, P7042925544310902243.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P3888462916768010023

`∑[(n+1-A329717(n+1))²]`
-/

namespace A069811.P3888462916768010023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A329717 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P3888462916768010023

namespace A069811

/-- `∑[(n+1-A329717(n+1))²]` -/
def P3888462916768010023.Spec : Prop :=
  ∀ n, P3888462916768010023.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P4156214345802005806

`∑[(n+1-A378993(n+1))²]`
-/

namespace A069811.P4156214345802005806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A378993 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P4156214345802005806

namespace A069811

/-- `∑[(n+1-A378993(n+1))²]` -/
def P4156214345802005806.Spec : Prop :=
  ∀ n, P4156214345802005806.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P5616243156766043768

`∑[(A328260(n+1)/(n+1))²]`
-/

namespace A069811.P5616243156766043768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328260 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P5616243156766043768

namespace A069811

/-- `∑[(A328260(n+1)/(n+1))²]` -/
def P5616243156766043768.Spec : Prop :=
  ∀ n, P5616243156766043768.a n = (A069811 (n + 1) : ℚ)

end A069811

/-! ## A069811.P3653939919841264432

`∑[A001222(A007947(n+1))²]`
-/

namespace A069811.P3653939919841264432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P3653939919841264432

namespace A069811

/-- `∑[A001222(A007947(n+1))²]` -/
def P3653939919841264432.Spec : Prop :=
  ∀ n, P3653939919841264432.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P4890053113968355138

`∑[A001222(A061389(n+1))²]`
-/

namespace A069811.P4890053113968355138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061389 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P4890053113968355138

namespace A069811

/-- `∑[A001222(A061389(n+1))²]` -/
def P4890053113968355138.Spec : Prop :=
  ∀ n, P4890053113968355138.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P11639145054069753584

`∑[A001222(A073184(n+1))²]`
-/

namespace A069811.P11639145054069753584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073184 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P11639145054069753584

namespace A069811

/-- `∑[A001222(A073184(n+1))²]` -/
def P11639145054069753584.Spec : Prop :=
  ∀ n, P11639145054069753584.a n = A069811 (n + 1)

end A069811

/-! ## A069811.P16489561828886406629

`∑[A001222(A074816(n+1))²]`
-/

namespace A069811.P16489561828886406629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074816 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P16489561828886406629

namespace A069811

/-- `∑[A001222(A074816(n+1))²]` -/
def P16489561828886406629.Spec : Prop :=
  ∀ n, P16489561828886406629.a n = A069811 (n + 1)

end A069811

/-!
# A069812: a(n) = Sum_{k=1..n} (bigomega(k)-omega(k)).

The programs for A069812, the canonical program `A069812.P9702759879598059061` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069812 has offset 1).

The definition of A069812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069812.P9702759879598059061

`∑[∑{e}[n+1, #-1]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069812

/-- `∑[∑{e}[n+1, #-1]]` -/
def P9702759879598059061.Spec : Prop :=
  ∀ n, P9702759879598059061.a n = A069812 (n + 1)

theorem P9702759879598059061.correct : P9702759879598059061.Spec := by
  intro n
  simp only [A069812, Nat.add_sub_cancel]

end A069812

/-! ## A069812.P5980030115791304610

`∑[∑{p}[n+1, val(n+1, #)-1]]`
-/

namespace A069812.P5980030115791304610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((SequenceMachineLib.valuation (n + 1) p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P5980030115791304610

namespace A069812

/-- `∑[∑{p}[n+1, val(n+1, #)-1]]` -/
def P5980030115791304610.Spec : Prop :=
  ∀ n, P5980030115791304610.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P6496379363039944958

`∑[∑{e}[n+1, #+n]%(n+1)]`
-/

namespace A069812.P6496379363039944958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + n)) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P6496379363039944958

namespace A069812

/-- `∑[∑{e}[n+1, #+n]%(n+1)]` -/
def P6496379363039944958.Spec : Prop :=
  ∀ n, (P6496379363039944958.a n : ℤ) = A069812 (n + 1)

end A069812

/-! ## A069812.P2768473262223743573

`∑[∑{p}[n+1, val((n+1)/#, #)]]`
-/

namespace A069812.P2768473262223743573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P2768473262223743573

namespace A069812

/-- `∑[∑{p}[n+1, val((n+1)/#, #)]]` -/
def P2768473262223743573.Spec : Prop :=
  ∀ n, (P2768473262223743573.a n : ℤ) = A069812 (n + 1)

end A069812

/-! ## A069812.P13634529903237763898

`∑{e}[n+1, #-1]+a(n-1)` with `a(0)=0`
-/

namespace A069812.P13634529903237763898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) + a (n - 1)

end

end A069812.P13634529903237763898

namespace A069812

/-- `∑{e}[n+1, #-1]+a(n-1)` -/
def P13634529903237763898.Spec : Prop :=
  ∀ n, P13634529903237763898.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P4008702271973963197

`∑[A046660(n+1)]`
-/

namespace A069812.P4008702271973963197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P4008702271973963197

namespace A069812

/-- `∑[A046660(n+1)]` -/
def P4008702271973963197.Spec : Prop :=
  ∀ n, P4008702271973963197.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P12667958503080178108

`∑[log2(A162510(n+1))]`
-/

namespace A069812.P12667958503080178108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A162510 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P12667958503080178108

namespace A069812

/-- `∑[log2(A162510(n+1))]` -/
def P12667958503080178108.Spec : Prop :=
  ∀ n, P12667958503080178108.a n = (A069812 (n + 1) : ℝ)

end A069812

/-! ## A069812.P13222175083698846619

`∑[A375136(n+1)]-n`
-/

namespace A069812.P13222175083698846619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069812.P13222175083698846619

namespace A069812

/-- `∑[A375136(n+1)]-n` -/
def P13222175083698846619.Spec : Prop :=
  ∀ n, P13222175083698846619.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P2913951097037577735

`∑[log2(abs(A162512(n+1)))]`
-/

namespace A069812.P2913951097037577735
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A162512 (n + 1)| : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P2913951097037577735

namespace A069812

/-- `∑[log2(abs(A162512(n+1)))]` -/
def P2913951097037577735.Spec : Prop :=
  ∀ n, P2913951097037577735.a n = (A069812 (n + 1) : ℝ)

end A069812

/-! ## A069812.P5611987124551675020

`∑[A001222((n+1)/∏{p}[n+1, #])]`
-/

namespace A069812.P5611987124551675020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P5611987124551675020

namespace A069812

/-- `∑[A001222((n+1)/∏{p}[n+1, #])]` -/
def P5611987124551675020.Spec : Prop :=
  ∀ n, P5611987124551675020.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P10159830071596084533

`∑[A001222(A003557(n+1))]`
-/

namespace A069812.P10159830071596084533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P10159830071596084533

namespace A069812

/-- `∑[A001222(A003557(n+1))]` -/
def P10159830071596084533.Spec : Prop :=
  ∀ n, P10159830071596084533.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P284718240159200368

`∑[A001222(A292589(n+1))]`
-/

namespace A069812.P284718240159200368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A292589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P284718240159200368

namespace A069812

/-- `∑[A001222(A292589(n+1))]` -/
def P284718240159200368.Spec : Prop :=
  ∀ n, P284718240159200368.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P16815749491485919963

`∑[A001222(abs(A162512(n+1)))]`
-/

namespace A069812.P16815749491485919963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A162512 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P16815749491485919963

namespace A069812

/-- `∑[A001222(abs(A162512(n+1)))]` -/
def P16815749491485919963.Spec : Prop :=
  ∀ n, P16815749491485919963.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P10120157400934311682

`A022559(n+1)-A013939(n+1)`
-/

namespace A069812.P10120157400934311682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - A013939 (n + 1)

end

end A069812.P10120157400934311682

namespace A069812

/-- `A022559(n+1)-A013939(n+1)` -/
def P10120157400934311682.Spec : Prop :=
  ∀ n, P10120157400934311682.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P16372393732622758272

`A055636(n+1)-A144489(n+1)`
-/

namespace A069812.P16372393732622758272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055636 (n + 1) - A144489 (n + 1)

end

end A069812.P16372393732622758272

namespace A069812

/-- `A055636(n+1)-A144489(n+1)` -/
def P16372393732622758272.Spec : Prop :=
  ∀ n, P16372393732622758272.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P17470219758894638340

`A210241(n+1)-A082767(n+1)`
-/

namespace A069812.P17470219758894638340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210241 (n + 1) - A082767 (n + 1)

end

end A069812.P17470219758894638340

namespace A069812

/-- `A210241(n+1)-A082767(n+1)` -/
def P17470219758894638340.Spec : Prop :=
  ∀ n, P17470219758894638340.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P2988490940327122957

`∑[A001222(n+1)-A001221(n+1)]`
-/

namespace A069812.P2988490940327122957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P2988490940327122957

namespace A069812

/-- `∑[A001222(n+1)-A001221(n+1)]` -/
def P2988490940327122957.Spec : Prop :=
  ∀ n, P2988490940327122957.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P11018909449576753749

`∑[A001222(n+1)-∑{p}[n+1, A001222(#)]]`
-/

namespace A069812.P11018909449576753749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P11018909449576753749

namespace A069812

/-- `∑[A001222(n+1)-∑{p}[n+1, A001222(#)]]` -/
def P11018909449576753749.Spec : Prop :=
  ∀ n, P11018909449576753749.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P10162847127387313884

`∑[A001222(n+1)-A001222(∏{p}[n+1, #])]`
-/

namespace A069812.P10162847127387313884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P10162847127387313884

namespace A069812

/-- `∑[A001222(n+1)-A001222(∏{p}[n+1, #])]` -/
def P10162847127387313884.Spec : Prop :=
  ∀ n, P10162847127387313884.a n = A069812 (n + 1)

end A069812

/-! ## A069812.P9605042193413464647

`∑[A001222(n+1)-A001222(A007947(n+1))]`
-/

namespace A069812.P9605042193413464647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P9605042193413464647

namespace A069812

/-- `∑[A001222(n+1)-A001222(A007947(n+1))]` -/
def P9605042193413464647.Spec : Prop :=
  ∀ n, P9605042193413464647.a n = A069812 (n + 1)

end A069812

/-!
# A069813: Maximum number of triangles in polyiamond with perimeter n.

The programs for A069813, the canonical program `A069813.P8808270607885708704` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069813 has offset 3).

The definition of A069813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069813.P5048009136395379431

`ogf((1+x+x^3-x^4)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A069813.P5048009136395379431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, -1] [1, -1, -1, 0, 1, 1, -1] n

end

end A069813.P5048009136395379431

namespace A069813

/-- `ogf((1+x+x^3-x^4)/(1-x-x^2+x^4+x^5-x^6))` -/
def P5048009136395379431.Spec : Prop :=
  ∀ n, P5048009136395379431.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P8808270607885708704

`A056829(n+3)-A097325(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069813

/-- `A056829(n+3)-A097325(n+3)` -/
def P8808270607885708704.Spec : Prop :=
  ∀ n, P8808270607885708704.a n = A069813 (n + 3)

theorem P8808270607885708704.correct : P8808270607885708704.Spec := by
  intro n
  simp only [A069813, Nat.add_sub_cancel]

end A069813

/-! ## A069813.P504656890345206857

`∑[or(1, ∑[(-1)^(n%3)])]`
-/

namespace A069813.P504656890345206857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069813.P504656890345206857

namespace A069813

/-- `∑[or(1, ∑[(-1)^(n%3)])]` -/
def P504656890345206857.Spec : Prop :=
  ∀ n, P504656890345206857.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P18420690445661292623

`∑[or(1, -∑[gcd(3, 1-n)-2])]`
-/

namespace A069813.P18420690445661292623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - (n : ℤ)) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069813.P18420690445661292623

namespace A069813

/-- `∑[or(1, -∑[gcd(3, 1-n)-2])]` -/
def P18420690445661292623.Spec : Prop :=
  ∀ n, P18420690445661292623.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P17421611312451253334

`a(n-3)+or(1, n+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A069813.P17421611312451253334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + Nat.lor 1 (n + 1)

end

end A069813.P17421611312451253334

namespace A069813

/-- `a(n-3)+or(1, n+1)` -/
def P17421611312451253334.Spec : Prop :=
  ∀ n, (P17421611312451253334.a n : ℤ) = A069813 (n + 3)

end A069813

/-! ## A069813.P17511280972219888479

`floor(∑[a(n-3)+2]/2)` with `a(0)=3, a(1)=1, a(2)=3`
-/

namespace A069813.P17511280972219888479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 3] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A069813.P17511280972219888479

namespace A069813

/-- `floor(∑[a(n-3)+2]/2)` -/
def P17511280972219888479.Spec : Prop :=
  ∀ n, P17511280972219888479.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P8144730621826856110

`∑[a(n-3)+2*and(1, n)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A069813.P8144730621826856110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 3) + 2 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069813.P8144730621826856110

namespace A069813

/-- `∑[a(n-3)+2*and(1, n)]` -/
def P8144730621826856110.Spec : Prop :=
  ∀ n, (P8144730621826856110.a n : ℤ) = A069813 (n + 3)

end A069813

/-! ## A069813.P1214941808973369690

`gcd(2, n+1)+a(n-3)+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A069813.P1214941808973369690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.gcd 2 (n + 1) + (a (n - 3) + n)

end

end A069813.P1214941808973369690

namespace A069813

/-- `gcd(2, n+1)+a(n-3)+n` -/
def P1214941808973369690.Spec : Prop :=
  ∀ n, (P1214941808973369690.a n : ℤ) = A069813 (n + 3)

end A069813

/-! ## A069813.P6610649594446764887

`n-floor(a(n-1)-(n+1)²/3)` with `a(0)=1`
-/

namespace A069813.P6610649594446764887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) - ((n + 1) ^ 2 : ℚ) / 3⌋

end

end A069813.P6610649594446764887

namespace A069813

/-- `n-floor(a(n-1)-(n+1)²/3)` -/
def P6610649594446764887.Spec : Prop :=
  ∀ n, P6610649594446764887.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P17270203655412242699

`∑[or(1, A008611(n))]`
-/

namespace A069813.P17270203655412242699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069813.P17270203655412242699

namespace A069813

/-- `∑[or(1, A008611(n))]` -/
def P17270203655412242699.Spec : Prop :=
  ∀ n, P17270203655412242699.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P12339204638853843388

`2*A069905(n)+1+n`
-/

namespace A069813.P12339204638853843388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069905 n + 1 + (n : ℤ)

end

end A069813.P12339204638853843388

namespace A069813

/-- `2*A069905(n)+1+n` -/
def P12339204638853843388.Spec : Prop :=
  ∀ n, P12339204638853843388.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P10192711307333110106

`2*A014591(n)+n-1`
-/

namespace A069813.P10192711307333110106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014591 n + ((n : ℤ) - 1)

end

end A069813.P10192711307333110106

namespace A069813

/-- `2*A014591(n)+n-1` -/
def P10192711307333110106.Spec : Prop :=
  ∀ n, P10192711307333110106.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P15744056354817690842

`A183859(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A069813.P15744056354817690842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183859 (n + 1) - a (n - 1)

end

end A069813.P15744056354817690842

namespace A069813

/-- `A183859(n+1)-a(n-1)` -/
def P15744056354817690842.Spec : Prop :=
  ∀ n, P15744056354817690842.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P3441567646734073795

`A330197(n+3)/(n+3)+n+1`
-/

namespace A069813.P3441567646734073795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330197 (n + 3) : ℚ) / (n + 3 : ℚ) + (n + 1 : ℚ)

end

end A069813.P3441567646734073795

namespace A069813

/-- `A330197(n+3)/(n+3)+n+1` -/
def P3441567646734073795.Spec : Prop :=
  ∀ n, P3441567646734073795.a n = (A069813 (n + 3) : ℚ)

end A069813

/-! ## A069813.P7723477624375119111

`A058212(n)+A007494(n)`
-/

namespace A069813.P7723477624375119111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 n + A007494 n

end

end A069813.P7723477624375119111

namespace A069813

/-- `A058212(n)+A007494(n)` -/
def P7723477624375119111.Spec : Prop :=
  ∀ n, P7723477624375119111.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P7157548957516206213

`A008822(n)-A007590(n)`
-/

namespace A069813.P7157548957516206213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n - A007590 n

end

end A069813.P7157548957516206213

namespace A069813

/-- `A008822(n)-A007590(n)` -/
def P7157548957516206213.Spec : Prop :=
  ∀ n, P7157548957516206213.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P16714753560298283972

`A110654(n)+∑[A008611(n)]`
-/

namespace A069813.P16714753560298283972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069813.P16714753560298283972

namespace A069813

/-- `A110654(n)+∑[A008611(n)]` -/
def P16714753560298283972.Spec : Prop :=
  ∀ n, P16714753560298283972.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P7375299003182885664

`A063197(n+1)+A008748(n)`
-/

namespace A069813.P7375299003182885664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063197 (n + 1) + A008748 n

end

end A069813.P7375299003182885664

namespace A069813

/-- `A063197(n+1)+A008748(n)` -/
def P7375299003182885664.Spec : Prop :=
  ∀ n, P7375299003182885664.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P4451588033488608789

`A212864(n+1)+A091972(n)`
-/

namespace A069813.P4451588033488608789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212864 (n + 1) + A091972 n

end

end A069813.P4451588033488608789

namespace A069813

/-- `A212864(n+1)+A091972(n)` -/
def P4451588033488608789.Spec : Prop :=
  ∀ n, P4451588033488608789.a n = A069813 (n + 3)

end A069813

/-! ## A069813.P18170127102527777496

`A301654(n+1)+A080513(n)`
-/

namespace A069813.P18170127102527777496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 (n + 1) + A080513 n

end

end A069813.P18170127102527777496

namespace A069813

/-- `A301654(n+1)+A080513(n)` -/
def P18170127102527777496.Spec : Prop :=
  ∀ n, P18170127102527777496.a n = A069813 (n + 3)

end A069813

/-!
# A069816: a(n) = (sum of digits of n)^2 - (sum of digits^2 of n).

The programs for A069816, the canonical program `A069816.P2167086169845687567` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069816 has offset 0).

The definition of A069816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A118881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069816.P2167086169845687567

`A118881(n)-A003132(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069816

/-- `A118881(n)-A003132(n)` -/
def P2167086169845687567.Spec : Prop :=
  ∀ n, P2167086169845687567.a n = A069816 n

theorem P2167086169845687567.correct : P2167086169845687567.Spec := by
  intro n
  simp only [A069816]

end A069816

/-! ## A069816.P9659528523833522070

`∑{digits}[n, #]²-∑{digits}[n, #²]`
-/

namespace A069816.P9659528523833522070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ)

end

end A069816.P9659528523833522070

namespace A069816

/-- `∑{digits}[n, #]²-∑{digits}[n, #²]` -/
def P9659528523833522070.Spec : Prop :=
  ∀ n, P9659528523833522070.a n = A069816 n

end A069816

/-! ## A069816.P15206358340252689634

`A007953(n)²-A003132(n)`
-/

namespace A069816.P15206358340252689634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A003132 n

end

end A069816.P15206358340252689634

namespace A069816

/-- `A007953(n)²-A003132(n)` -/
def P15206358340252689634.Spec : Prop :=
  ∀ n, P15206358340252689634.a n = A069816 n

end A069816

/-! ## A069816.P2247467393081121310

`log2(A329562(n))²-A003132(n)`
-/

namespace A069816.P2247467393081121310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) ^ 2 - (A003132 n : ℝ)

end

end A069816.P2247467393081121310

namespace A069816

/-- `log2(A329562(n))²-A003132(n)` -/
def P2247467393081121310.Spec : Prop :=
  ∀ n, P2247467393081121310.a n = (A069816 n : ℝ)

end A069816

/-! ## A069816.P13013831700440332841

`A000290(log2(A329562(n)))-A003132(n)`
-/

namespace A069816.P13013831700440332841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ))).toNat - A003132 n

end

end A069816.P13013831700440332841

namespace A069816

/-- `A000290(log2(A329562(n)))-A003132(n)` -/
def P13013831700440332841.Spec : Prop :=
  ∀ n, P13013831700440332841.a n = A069816 n

end A069816

/-! ## A069816.P5343543162538969832

`A004159(n)+A067552(n)-A003132(n)`
-/

namespace A069816.P5343543162538969832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (A067552 n - A003132 n)

end

end A069816.P5343543162538969832

namespace A069816

/-- `A004159(n)+A067552(n)-A003132(n)` -/
def P5343543162538969832.Spec : Prop :=
  ∀ n, P5343543162538969832.a n = A069816 n

theorem P5343543162538969832.correct : P5343543162538969832.Spec := by
  intro n
  simp only [A069816, Nat.add_sub_cancel, A069816.P5343543162538969832.a, A069816.P2167086169845687567.a, A003132, A003132.P15693766495744030229.f1, A003132.P15693766495744030229.a, A004159, A004159.P12894520007403696170.a, A067552, A067552.P17186920303504174424.a, A118881, A118881.P8524186405013838056.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069816

/-! ## A069816.P4811601113314998319

`A118881(n)-A289506(A113581(n))`
-/

namespace A069816.P4811601113314998319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A289506 (A113581 n).toNat

end

end A069816.P4811601113314998319

namespace A069816

/-- `A118881(n)-A289506(A113581(n))` -/
def P4811601113314998319.Spec : Prop :=
  ∀ n, P4811601113314998319.a n = A069816 n

end A069816

/-! ## A069816.P1274718301469950277

`A085942(n)%A229890(n)`
-/

namespace A069816.P1274718301469950277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085942 n) (A229890 n)

end

end A069816.P1274718301469950277

namespace A069816

/-- `A085942(n)%A229890(n)` -/
def P1274718301469950277.Spec : Prop :=
  ∀ n, P1274718301469950277.a n = A069816 n

end A069816

/-! ## A069816.P9574954978727653036

`A085942(n)%A229889(n)`
-/

namespace A069816.P9574954978727653036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085942 n) (A229889 n)

end

end A069816.P9574954978727653036

namespace A069816

/-- `A085942(n)%A229889(n)` -/
def P9574954978727653036.Spec : Prop :=
  ∀ n, P9574954978727653036.a n = A069816 n

end A069816

/-! ## A069816.P11263202600448393391

`A085942(n%A143573(n))`
-/

namespace A069816.P11263202600448393391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085942 (Int.tmod (n : ℤ) (A143573 n)).toNat

end

end A069816.P11263202600448393391

namespace A069816

/-- `A085942(n%A143573(n))` -/
def P11263202600448393391.Spec : Prop :=
  ∀ n, P11263202600448393391.a n = A069816 n

end A069816

/-!
# A069818: Let x = 1.757739951145463... be smallest real number that satisfies gcd(floor(x^m),m)=1 for all integers m>0; sequence gives floor(x^n).

The programs for A069818, there is no canonical definition to state claims against.
-/

/-! ## A069818.P7267853419791865289

`∑[A003056(A039300(n)+1)]`
-/

namespace A069818.P7267853419791865289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A039300 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069818.P7267853419791865289

/-! ## A069818.P9397925484188246843

`A000006(∑[A186341(n+1)]+1)`
-/

namespace A069818.P9397925484188246843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A069818.P9397925484188246843

/-! ## A069818.P8196927685674967913

`A289000(n)-A014499(A000108(n))`
-/

namespace A069818.P8196927685674967913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289000 n - A014499 (A000108 n).toNat

end

end A069818.P8196927685674967913

/-! ## A069818.P17771139012817842694

`A288233(n)-A288622(A007716(n))`
-/

namespace A069818.P17771139012817842694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288233 n - A288622 (A007716 n).toNat

end

end A069818.P17771139012817842694

/-! ## A069818.P7522143445285867768

`A101296(A098558(n))+n`
-/

namespace A069818.P7522143445285867768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A098558 n).toNat + (n : ℤ)

end

end A069818.P7522143445285867768

/-!
# A069821: a(n) is the smallest k > n such that (k^3 - 1)/(n^3 - 1) is an integer.

The programs for A069821, there is no canonical definition to state claims against.
-/

/-! ## A069821.P15838502241405800871

`(n+2)²-A036853(A211700(n+1))%(A047346(n+1)-2)`
-/

namespace A069821.P15838502241405800871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - Int.tmod (A036853 (A211700 (n + 1)).toNat) (A047346 (n + 1) - 2)

end

end A069821.P15838502241405800871

/-! ## A069821.P12987677225057643284

`A102305(n+1)-A217581(A236423(3*n+4))`
-/

namespace A069821.P12987677225057643284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (n + 1) - A217581 (A236423 (3 * n + 4)).toNat

end

end A069821.P12987677225057643284

/-! ## A069821.P11184968298254420210

`record[A104758(n)²]`
-/

namespace A069821.P11184968298254420210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104758 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069821.P11184968298254420210

/-! ## A069821.P16201089273527847322

`record[A137397(n)²]`
-/

namespace A069821.P16201089273527847322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137397 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069821.P16201089273527847322

/-! ## A069821.P8488553374224496908

`A003573(2^n)²`
-/

namespace A069821.P8488553374224496908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003573 (2 ^ n) ^ 2

end

end A069821.P8488553374224496908

/-!
# A069822: Numbers k for which there is at least one x < k such that sigma(x) = sigma(k).

The programs for A069822, there is no canonical definition to state claims against.
-/

/-! ## A069822.P4790519884717714884

`lt[1, A263025(n+1)]+1`
-/

namespace A069822.P4790519884717714884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069822.P4790519884717714884

/-! ## A069822.P11139648485959440590

`eq[1, A007318(a(A263025(n)))]` with `a(0)=0, a(1)=18`
-/

namespace A069822.P11139648485959440590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n f2 =>
  A007318 (f2 (A263025 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069822.P11139648485959440590

/-! ## A069822.P1759414544848746164

`eq[1, A016199(a(A263025(n)))]` with `a(0)=4, a(1)=18`
-/

namespace A069822.P1759414544848746164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 18] fun n f2 =>
  A016199 (f2 (A263025 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069822.P1759414544848746164

/-! ## A069822.P16132374630827796801

`eq[1, A076689(a(A263025(n)))]` with `a(0)=4, a(1)=18`
-/

namespace A069822.P16132374630827796801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 18] fun n f2 =>
  A076689 (f2 (A263025 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069822.P16132374630827796801

/-! ## A069822.P11877315130411514585

`eq[1, A240025(a(A263025(n)))]` with `a(0)=4, a(1)=18`
-/

namespace A069822.P11877315130411514585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 18] fun n f2 =>
  A240025 (f2 (A263025 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069822.P11877315130411514585

/-! ## A069822.P17258775430313026846

`eq[1, A253641(a(A263025(n)))]` with `a(0)=0, a(1)=4, a(2)=18`
-/

namespace A069822.P17258775430313026846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 18] fun n f2 =>
  A253641 (f2 (A263025 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069822.P17258775430313026846

/-! ## A069822.P483391438563932183

`comp[C(A275987(n+1), n)]`
-/

namespace A069822.P483391438563932183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A275987 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A069822.P483391438563932183

/-! ## A069822.P985303046045975505

`comp[A051444(n+1)]`
-/

namespace A069822.P985303046045975505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A069822.P985303046045975505

/-!
# A069823: Nonprime numbers k for which there is no x < k such that phi(x) = phi(k).

The programs for A069823, there is no canonical definition to state claims against.
-/

/-! ## A069823.P2058832818470928075

`record[A191558(A015126(n+1))]`
-/

namespace A069823.P2058832818470928075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A015126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069823.P2058832818470928075

/-! ## A069823.P12016985098809919098

`filter[A210719(n+1), A005171(#)]`
-/

namespace A069823.P12016985098809919098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A069823.P12016985098809919098

/-! ## A069823.P13167577386519150655

`filter[A210719(n+1), A292438(#)]`
-/

namespace A069823.P13167577386519150655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A069823.P13167577386519150655

/-! ## A069823.P11272831457321522977

`∩[A014076(n+1), A210719(n+1)]`
-/

namespace A069823.P11272831457321522977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P11272831457321522977

/-! ## A069823.P14741558532942874858

`∩[A018252(n+1), A210719(n+1)]`
-/

namespace A069823.P14741558532942874858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P14741558532942874858

/-! ## A069823.P10415067979943373382

`∩[A056653(n+1), A210719(n+1)]`
-/

namespace A069823.P10415067979943373382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P10415067979943373382

/-! ## A069823.P17503289369868654047

`∩[A065090(n+1), A210719(n+1)]`
-/

namespace A069823.P17503289369868654047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P17503289369868654047

/-! ## A069823.P1287955470151318597

`∩[A067800(n+1), A210719(n+1)]`
-/

namespace A069823.P1287955470151318597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P1287955470151318597

/-! ## A069823.P8132876013879185307

`∩[A141468(n+1), A210719(n+1)]`
-/

namespace A069823.P8132876013879185307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P8132876013879185307

/-! ## A069823.P4592273685158592089

`∩[A164276(n+1), A210719(n+1)]`
-/

namespace A069823.P4592273685158592089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P4592273685158592089

/-! ## A069823.P17817844902887647153

`∩[A210719(n+1), A231879(n+1)]`
-/

namespace A069823.P17817844902887647153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P17817844902887647153

/-! ## A069823.P11783871819846123567

`∩[A210719(n+1), A264828(n+1)]`
-/

namespace A069823.P11783871819846123567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P11783871819846123567

/-! ## A069823.P6245114462299848863

`∩[A210719(n+1), A325037(n+1)]`
-/

namespace A069823.P6245114462299848863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P6245114462299848863

/-! ## A069823.P17210421874039776290

`∩[A210719(n+1), A347202(n+1)]`
-/

namespace A069823.P17210421874039776290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069823.P17210421874039776290

/-!
# A069825: Numbers k such that there is no x < k such that sigma(x) = phi(k).

The programs for A069825, there is no canonical definition to state claims against.
-/

/-! ## A069825.P15359213660301850191

`eq[0, n*A291503(n+1)]+1`
-/

namespace A069825.P15359213660301850191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A291503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069825.P15359213660301850191

/-! ## A069825.P9189973902333586847

`record[2-A022846(A291503(n+2))+n]`
-/

namespace A069825.P9189973902333586847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A022846 (A291503 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069825.P9189973902333586847

/-! ## A069825.P14090575219931137449

`record[n+1-A153151(n)*A291503(n+1)]`
-/

namespace A069825.P14090575219931137449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A153151 n * A291503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069825.P14090575219931137449

/-! ## A069825.P9359688965997669786

`record[n+1-A004913(n+1)*A291503(n+1)]`
-/

namespace A069825.P9359688965997669786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004913 (n + 1) * A291503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069825.P9359688965997669786

/-! ## A069825.P997514817178880853

`record[(n+1)/(n+1)^A054973(A000010(n+1))]`
-/

namespace A069825.P997514817178880853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 1 : ℚ) ^ (A054973 (A000010 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069825.P997514817178880853

/-!
# A069826: Numbers k such that sigma(k^2-k-1) = k*(k+1).

The programs for A069826, there is no canonical definition to state claims against.
-/

/-! ## A069826.P3250412304957981993

`A081944(n+1)²-1`
-/

namespace A069826.P3250412304957981993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1) ^ 2 - 1

end

end A069826.P3250412304957981993

/-! ## A069826.P11099046223094447666

`(A116214(n+1)+1)²-1`
-/

namespace A069826.P11099046223094447666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116214 (n + 1) + 1) ^ 2 - 1

end

end A069826.P11099046223094447666

/-! ## A069826.P8389952175602684855

`A005563(A116214(n+1))`
-/

namespace A069826.P8389952175602684855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A116214 (n + 1)).toNat

end

end A069826.P8389952175602684855

/-! ## A069826.P7633562530326940633

`A082562(A081944(n+1))`
-/

namespace A069826.P7633562530326940633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A081944 (n + 1)).toNat

end

end A069826.P7633562530326940633

/-! ## A069826.P8752211066132237954

`A082562(A116214(n+1)+1)`
-/

namespace A069826.P8752211066132237954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A116214 (n + 1) + 1).toNat

end

end A069826.P8752211066132237954

/-! ## A069826.P764996066397135233

`∩[A002328(n+1), A045546(n+1)]²-1`
-/

namespace A069826.P764996066397135233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A069826.P764996066397135233

/-! ## A069826.P7457365646334725428

`A020725(A116214(n+1)+1)*A116214(n+1)`
-/

namespace A069826.P7457365646334725428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A116214 (n + 1) + 1).toNat * A116214 (n + 1)

end

end A069826.P7457365646334725428

/-!
# A069828: Sum of positive integers k for k <= n and gcd(k,n) = gcd(k+1,n).

The programs for A069828, the canonical program `A069828.P7975132913255653083` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069828 has offset 1).

The definition of A069828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069828.P4453596014323492637

`round(cosh(log(acot(n))))*A058026(n+1)`
-/

namespace A069828.P4453596014323492637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))) * A058026 (n + 1)

end

end A069828.P4453596014323492637

namespace A069828

/-- `round(cosh(log(acot(n))))*A058026(n+1)` -/
def P4453596014323492637.Spec : Prop :=
  ∀ n, P4453596014323492637.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P7975132913255653083

`A058026(n+1)*A065033(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069828

/-- `A058026(n+1)*A065033(n)` -/
def P7975132913255653083.Spec : Prop :=
  ∀ n, P7975132913255653083.a n = A069828 (n + 1)

theorem P7975132913255653083.correct : P7975132913255653083.Spec := by
  intro n
  simp only [A069828, Nat.add_sub_cancel]

end A069828

/-! ## A069828.P18212579433266533498

`A058026(n+1)*A123108(n)`
-/

namespace A069828.P18212579433266533498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1) * A123108 n

end

end A069828.P18212579433266533498

namespace A069828

/-- `A058026(n+1)*A123108(n)` -/
def P18212579433266533498.Spec : Prop :=
  ∀ n, P18212579433266533498.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P437967777784532195

`log2(gcd(2, n))*A070555(A008619(n))`
-/

namespace A069828.P437967777784532195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A070555 (A008619 n).toNat : ℝ)

end

end A069828.P437967777784532195

namespace A069828

/-- `log2(gcd(2, n))*A070555(A008619(n))` -/
def P437967777784532195.Spec : Prop :=
  ∀ n, P437967777784532195.a n = (A069828 (n + 1) : ℝ)

end A069828

/-! ## A069828.P256792647499923876

`char[2*n]*A070555(A052938(n))`
-/

namespace A069828.P256792647499923876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A070555 (A052938 n).toNat

end

end A069828.P256792647499923876

namespace A069828

/-- `char[2*n]*A070555(A052938(n))` -/
def P256792647499923876.Spec : Prop :=
  ∀ n, P256792647499923876.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P11350514468796480267

`A058026(n+1)*A101279(n+1)`
-/

namespace A069828.P11350514468796480267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1) * A101279 (n + 1)

end

end A069828.P11350514468796480267

namespace A069828

/-- `A058026(n+1)*A101279(n+1)` -/
def P11350514468796480267.Spec : Prop :=
  ∀ n, P11350514468796480267.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P5004602746708165851

`A058026(n+1)*A165818(n+1)`
-/

namespace A069828.P5004602746708165851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1) * A165818 (n + 1)

end

end A069828.P5004602746708165851

namespace A069828

/-- `A058026(n+1)*A165818(n+1)` -/
def P5004602746708165851.Spec : Prop :=
  ∀ n, P5004602746708165851.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P11809017967392953384

`A058026(n+1)*A249038(n+1)`
-/

namespace A069828.P11809017967392953384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1) * A249038 (n + 1)

end

end A069828.P11809017967392953384

namespace A069828

/-- `A058026(n+1)*A249038(n+1)` -/
def P11809017967392953384.Spec : Prop :=
  ∀ n, P11809017967392953384.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P1584143482119606822

`ceil(A058026(n+1)/2*A028310(n))`
-/

namespace A069828.P1584143482119606822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058026 (n + 1) : ℚ) / 2 * (A028310 n : ℚ)⌉

end

end A069828.P1584143482119606822

namespace A069828

/-- `ceil(A058026(n+1)/2*A028310(n))` -/
def P1584143482119606822.Spec : Prop :=
  ∀ n, P1584143482119606822.a n = A069828 (n + 1)

end A069828

/-! ## A069828.P5094926517369598269

`A058026(n+1)*A323608(n+1)`
-/

namespace A069828.P5094926517369598269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1) * A323608 (n + 1)

end

end A069828.P5094926517369598269

namespace A069828

/-- `A058026(n+1)*A323608(n+1)` -/
def P5094926517369598269.Spec : Prop :=
  ∀ n, P5094926517369598269.a n = A069828 (n + 1)

end A069828

/-!
# A069829: a(n) = PS(n)(2n), where PS is described in A057032.

The programs for A069829, there is no canonical definition to state claims against.
-/

/-! ## A069829.P12755690827204244918

`A171056(lt[A171090(n+6), A005169(n)])`
-/

namespace A069829.P12755690827204244918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171090 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069829.P12755690827204244918

/-! ## A069829.P11702660960131053391

`A000203(2*(n+1))-A319226(A002522(n))`
-/

namespace A069829.P11702660960131053391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - A319226 (A002522 n).toNat

end

end A069829.P11702660960131053391

/-!
# A069830: Multiplicative inverse of prime(n) modulo prime(n+1).

The programs for A069830, there is no canonical definition to state claims against.
-/

/-! ## A069830.P1473155848667180553

`A392870(A000040(n+1))`
-/

namespace A069830.P1473155848667180553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392870 (A000040 (n + 1)).toNat

end

end A069830.P1473155848667180553

/-! ## A069830.P18111374039255964949

`A073603(n+1)/Δ[A007504(n)]`
-/

namespace A069830.P18111374039255964949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A069830.P18111374039255964949

/-! ## A069830.P7559542932180127035

`A065091(n+1)-A077005(n+2)`
-/

namespace A069830.P7559542932180127035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A077005 (n + 2)

end

end A069830.P7559542932180127035

/-! ## A069830.P16802403234675555211

`A073603(n+1)/A000040(n+1)`
-/

namespace A069830.P16802403234675555211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A069830.P16802403234675555211

/-! ## A069830.P18062098714565865794

`A073603(n+1)/(A008864(n+1)-1)`
-/

namespace A069830.P18062098714565865794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A008864 (n + 1) - 1 : ℚ)

end

end A069830.P18062098714565865794

/-! ## A069830.P2429903492316124337

`2*A073603(n+1)/A100484(n+1)`
-/

namespace A069830.P2429903492316124337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A073603 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ))

end

end A069830.P2429903492316124337

/-! ## A069830.P6603531113047224719

`A065091(n+1)-A077338(n+1)/A000040(n+1)`
-/

namespace A069830.P6603531113047224719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) - (A077338 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A069830.P6603531113047224719

/-! ## A069830.P12008586720034955205

`A000040(n+2)-A077005(n+2)`
-/

namespace A069830.P12008586720034955205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A077005 (n + 2)

end

end A069830.P12008586720034955205

/-! ## A069830.P11647258698735666881

`A073603(n+1)/A008578(n+2)`
-/

namespace A069830.P11647258698735666881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A069830.P11647258698735666881

/-! ## A069830.P5916500500192735898

`A073603(n+1)/(A194367(n+1)+A087454(n+2))`
-/

namespace A069830.P5916500500192735898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A194367 (n + 1) + A087454 (n + 2) : ℚ)

end

end A069830.P5916500500192735898

/-! ## A069830.P4576294626870059489

`A194367(n+2)+A087454(n+3)-A077005(n+2)`
-/

namespace A069830.P4576294626870059489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194367 (n + 2) + (A087454 (n + 3) - A077005 (n + 2))

end

end A069830.P4576294626870059489

/-! ## A069830.P15707109197220697184

`A073603(n+1)/A006530(A100484(n+1))`
-/

namespace A069830.P15707109197220697184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A006530 (A100484 (n + 1)).toNat : ℚ)

end

end A069830.P15707109197220697184

/-! ## A069830.P5353180930232556013

`A073603(n+1)/p?[A064216(n+1)]`
-/

namespace A069830.P5353180930232556013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A069830.P5353180930232556013

/-! ## A069830.P12650554852068997967

`A122585(A000040(n+1))`
-/

namespace A069830.P12650554852068997967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (A000040 (n + 1)).toNat

end

end A069830.P12650554852068997967

/-! ## A069830.P5025339033663469964

`A122585(A008578(n+2))`
-/

namespace A069830.P5025339033663469964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (A008578 (n + 2)).toNat

end

end A069830.P5025339033663469964

/-! ## A069830.P2403476027746018031

`A122585(A182986(n+2))`
-/

namespace A069830.P2403476027746018031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (A182986 (n + 2)).toNat

end

end A069830.P2403476027746018031

/-! ## A069830.P1431464757334609700

`A122585(record[A006530(n+2)])`
-/

namespace A069830.P1431464757334609700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069830.P1431464757334609700

/-! ## A069830.P17153963330421921694

`A122585(record[A020639(n+2)])`
-/

namespace A069830.P17153963330421921694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069830.P17153963330421921694

/-! ## A069830.P2454452049667047053

`A122585(A006093(n+1)+1)`
-/

namespace A069830.P2454452049667047053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (A006093 (n + 1) + 1).toNat

end

end A069830.P2454452049667047053

/-! ## A069830.P12328695167499259001

`A122585(A008864(n+1)-1)`
-/

namespace A069830.P12328695167499259001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122585 (A008864 (n + 1) - 1).toNat

end

end A069830.P12328695167499259001

/-!
# A069832: Prefixing, suffixing or inserting a 7 in the number anywhere gives a prime.

The programs for A069832, there is no canonical definition to state claims against.
-/

/-! ## A069832.P223519305361725322

`∪[A215420(n+1), A216168(n+1)]`
-/

namespace A069832.P223519305361725322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069832.P223519305361725322

/-! ## A069832.P15453250601270772848

`filter[A068677(n+1), A167851(#)]`
-/

namespace A069832.P15453250601270772848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167851 (f1 j).toNat = 1) n)

end

end A069832.P15453250601270772848

/-! ## A069832.P5688314361708426411

`filter[A068677(n+1), A334465(#)]`
-/

namespace A069832.P5688314361708426411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A069832.P5688314361708426411

/-! ## A069832.P16357049660357192337

`∩[A068677(n+1), A076564(n+1)]`
-/

namespace A069832.P16357049660357192337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069832.P16357049660357192337

/-! ## A069832.P12972294293514355156

`∩[A068677(n+1), A097904(n+1)]`
-/

namespace A069832.P12972294293514355156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069832.P12972294293514355156

/-!
# A069834: a(n) = n-th reduced triangular number: n*(n+1)/{2^k} where 2^k is the largest power of 2 that divides product n*(n+1).

The programs for A069834, the canonical program `A069834.P1511118200551447947` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069834 has offset 1).

The definition of A069834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069834.P1511118200551447947

`A000265(n+1)*A000265(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069834

/-- `A000265(n+1)*A000265(n+2)` -/
def P1511118200551447947.Spec : Prop :=
  ∀ n, P1511118200551447947.a n = A069834 (n + 1)

theorem P1511118200551447947.correct : P1511118200551447947.Spec := by
  intro n
  simp only [A069834, Nat.add_sub_cancel]

end A069834

/-! ## A069834.P16208640213792944757

`A000265(A000217(n+1))`
-/

namespace A069834.P16208640213792944757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000217 (n + 1)).toNat

end

end A069834.P16208640213792944757

namespace A069834

/-- `A000265(A000217(n+1))` -/
def P16208640213792944757.Spec : Prop :=
  ∀ n, P16208640213792944757.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P16161286154510844824

`(n+1)/(1-and(n, n+2)/(n+2))`
-/

namespace A069834.P16161286154510844824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 - (Nat.land n (n + 2) : ℚ) / (n + 2 : ℚ))

end

end A069834.P16161286154510844824

namespace A069834

/-- `(n+1)/(1-and(n, n+2)/(n+2))` -/
def P16161286154510844824.Spec : Prop :=
  ∀ n, P16161286154510844824.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P7886027375372350656

`(n+1)*(n+2)/and(n+2, -(n+1))`
-/

namespace A069834.P7886027375372350656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℚ))

end

end A069834.P7886027375372350656

namespace A069834

/-- `(n+1)*(n+2)/and(n+2, -(n+1))` -/
def P7886027375372350656.Spec : Prop :=
  ∀ n, P7886027375372350656.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P7552573672353436788

`lcm(n+1, n+2)/and(n+2, -(n+1))`
-/

namespace A069834.P7552573672353436788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℚ) / (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A069834.P7552573672353436788

namespace A069834

/-- `lcm(n+1, n+2)/and(n+2, -(n+1))` -/
def P7552573672353436788.Spec : Prop :=
  ∀ n, P7552573672353436788.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P8978767549328135534

`(n+1)/2^val(n+1, 2)*A171435(2*(n+2))`
-/

namespace A069834.P8978767549328135534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A171435 (2 * (n + 2)) : ℚ)

end

end A069834.P8978767549328135534

namespace A069834

/-- `(n+1)/2^val(n+1, 2)*A171435(2*(n+2))` -/
def P8978767549328135534.Spec : Prop :=
  ∀ n, P8978767549328135534.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P16545447489075260783

`A171435(2*(n+2))*A302034(2*(n+1))`
-/

namespace A069834.P16545447489075260783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 2)) * A302034 (2 * (n + 1))

end

end A069834.P16545447489075260783

namespace A069834

/-- `A171435(2*(n+2))*A302034(2*(n+1))` -/
def P16545447489075260783.Spec : Prop :=
  ∀ n, P16545447489075260783.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P1980184718471642125

`A000217(n+1)/A000010(and(n+2, -(n+1)))`
-/

namespace A069834.P1980184718471642125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A000010 (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A069834.P1980184718471642125

namespace A069834

/-- `A000217(n+1)/A000010(and(n+2, -(n+1)))` -/
def P1980184718471642125.Spec : Prop :=
  ∀ n, P1980184718471642125.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P12681282925994679928

`lcm(A000265(A000027(n+1)), A000265(n+2))`
-/

namespace A069834.P12681282925994679928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A000027 (n + 1)).toNat) (A000265 (n + 2))

end

end A069834.P12681282925994679928

namespace A069834

/-- `lcm(A000265(A000027(n+1)), A000265(n+2))` -/
def P12681282925994679928.Spec : Prop :=
  ∀ n, (P12681282925994679928.a n : ℤ) = A069834 (n + 1)

end A069834

/-! ## A069834.P3868327276965093008

`2*(n+1)/(xor(n, n+1)+1)*A227140(A259445(n+2))`
-/

namespace A069834.P3868327276965093008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) * (A227140 (A259445 (n + 2)).toNat : ℚ)

end

end A069834.P3868327276965093008

namespace A069834

/-- `2*(n+1)/(xor(n, n+1)+1)*A227140(A259445(n+2))` -/
def P3868327276965093008.Spec : Prop :=
  ∀ n, P3868327276965093008.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P4606583511052814978

`(A153733(n)+1)*A227140(A259445(n+2))`
-/

namespace A069834.P4606583511052814978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1) * A227140 (A259445 (n + 2)).toNat

end

end A069834.P4606583511052814978

namespace A069834

/-- `(A153733(n)+1)*A227140(A259445(n+2))` -/
def P4606583511052814978.Spec : Prop :=
  ∀ n, P4606583511052814978.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P7462623169705082340

`A166466(n+1)/3*A227140(A259445(n+2))`
-/

namespace A069834.P7462623169705082340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (n + 1) : ℚ) / 3 * (A227140 (A259445 (n + 2)).toNat : ℚ)

end

end A069834.P7462623169705082340

namespace A069834

/-- `A166466(n+1)/3*A227140(A259445(n+2))` -/
def P7462623169705082340.Spec : Prop :=
  ∀ n, P7462623169705082340.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P12909186475536604342

`A003961(A064989(n+2))*A030101(A030101(n+1))`
-/

namespace A069834.P12909186475536604342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (n + 2)).toNat * A030101 (A030101 (n + 1)).toNat

end

end A069834.P12909186475536604342

namespace A069834

/-- `A003961(A064989(n+2))*A030101(A030101(n+1))` -/
def P12909186475536604342.Spec : Prop :=
  ∀ n, P12909186475536604342.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P18283860269993556413

`(A153733(n+1)+1)*A163575(2*(n+1))`
-/

namespace A069834.P18283860269993556413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153733 (n + 1) + 1) * A163575 (2 * (n + 1))

end

end A069834.P18283860269993556413

namespace A069834

/-- `(A153733(n+1)+1)*A163575(2*(n+1))` -/
def P18283860269993556413.Spec : Prop :=
  ∀ n, P18283860269993556413.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P10343048141838986666

`lcm(A000265(n+1), A000265(A161151(n+1)))`
-/

namespace A069834.P10343048141838986666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (n + 1)) (A000265 (A161151 (n + 1)).toNat)

end

end A069834.P10343048141838986666

namespace A069834

/-- `lcm(A000265(n+1), A000265(A161151(n+1)))` -/
def P10343048141838986666.Spec : Prop :=
  ∀ n, (P10343048141838986666.a n : ℤ) = A069834 (n + 1)

end A069834

/-! ## A069834.P9521174290964756699

`A000265(A064038(n+2))`
-/

namespace A069834.P9521174290964756699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064038 (n + 2)).toNat

end

end A069834.P9521174290964756699

namespace A069834

/-- `A000265(A064038(n+2))` -/
def P9521174290964756699.Spec : Prop :=
  ∀ n, P9521174290964756699.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P15714393449447510594

`A000265(∑[n+1])`
-/

namespace A069834.P15714393449447510594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069834.P15714393449447510594

namespace A069834

/-- `A000265(∑[n+1])` -/
def P15714393449447510594.Spec : Prop :=
  ∀ n, P15714393449447510594.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P10079473407078344873

`or(1, A000265(A161680(n+2)))`
-/

namespace A069834.P10079473407078344873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000265 (A161680 (n + 2)).toNat)

end

end A069834.P10079473407078344873

namespace A069834

/-- `or(1, A000265(A161680(n+2)))` -/
def P10079473407078344873.Spec : Prop :=
  ∀ n, P10079473407078344873.a n = A069834 (n + 1)

end A069834

/-! ## A069834.P17068521383400924304

`lcm(A000217(n+1), A011782(n+1))/A011782(n+1)`
-/

namespace A069834.P17068521383400924304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (n + 1)) (A011782 (n + 1)) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A069834.P17068521383400924304

namespace A069834

/-- `lcm(A000217(n+1), A011782(n+1))/A011782(n+1)` -/
def P17068521383400924304.Spec : Prop :=
  ∀ n, P17068521383400924304.a n = (A069834 (n + 1) : ℚ)

end A069834

/-! ## A069834.P9310716616236532707

`A171435(∑[2*(n+1)])`
-/

namespace A069834.P9310716616236532707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069834.P9310716616236532707

namespace A069834

/-- `A171435(∑[2*(n+1)])` -/
def P9310716616236532707.Spec : Prop :=
  ∀ n, P9310716616236532707.a n = A069834 (n + 1)

end A069834

/-!
# A069835: Define an array as follows: b(i,0)=b(0,j)=1, b(i,j) = 2*b(i-1,j-1) + b(i-1,j) + b(i,j-1). Then a(n) = b(n,n).

The programs for A069835, the canonical program `A069835.P9329151471741774858` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069835 has offset 0).

The definition of A069835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069835.P9329151471741774858

`∑{#}[n, 3^#*C(n, #)²]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069835

/-- `∑{#}[n, 3^#*C(n, #)²]` -/
def P9329151471741774858.Spec : Prop :=
  ∀ n, (P9329151471741774858.a n : ℤ) = A069835 n

theorem P9329151471741774858.correct : P9329151471741774858.Spec := by
  intro n
  simp only [A069835]

end A069835

/-! ## A069835.P9917761124669352644

`∑{#}[n, C(n, #)*C(n+#, #)*2^(n-#)]`
-/

namespace A069835.P9917761124669352644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * Nat.choose (n + k) k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A069835.P9917761124669352644

namespace A069835

/-- `∑{#}[n, C(n, #)*C(n+#, #)*2^(n-#)]` -/
def P9917761124669352644.Spec : Prop :=
  ∀ n, P9917761124669352644.a n = (A069835 n : ℚ)

end A069835

/-! ## A069835.P5065944586333243318

`∑{#}[floor(n/2), C(n, #)*C(2*(n-#), n)*(-1)^#*2^(n-2*#)]`
-/

namespace A069835.P5065944586333243318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.choose n k * Nat.choose (2 * ((n : ℤ) - (k : ℤ))).toNat n : ℤ) * (-1) ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A069835.P5065944586333243318

namespace A069835

/-- `∑{#}[floor(n/2), C(n, #)*C(2*(n-#), n)*(-1)^#*2^(n-2*#)]` -/
def P5065944586333243318.Spec : Prop :=
  ∀ n, P5065944586333243318.a n = (A069835 n : ℚ)

end A069835

/-! ## A069835.P14949638076666560

`∑{#}[n, 3^#*C(n, #)*C(n, #)]`
-/

namespace A069835.P14949638076666560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose n k * Nat.choose n k

end

end A069835.P14949638076666560

namespace A069835

/-- `∑{#}[n, 3^#*C(n, #)*C(n, #)]` -/
def P14949638076666560.Spec : Prop :=
  ∀ n, (P14949638076666560.a n : ℤ) = A069835 n

theorem P14949638076666560.correct : P14949638076666560.Spec := by
  intro n
  simp only [A069835, Nat.add_sub_cancel, A069835.P14949638076666560.f1, A069835.P14949638076666560.a, A069835.P9329151471741774858.f1, A069835.P9329151471741774858.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069835

/-! ## A069835.P15006901086948875881

`∑[A054122(n)]`
-/

namespace A069835.P15006901086948875881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069835.P15006901086948875881

namespace A069835

/-- `∑[A054122(n)]` -/
def P15006901086948875881.Spec : Prop :=
  ∀ n, P15006901086948875881.a n = A069835 n

end A069835

/-! ## A069835.P17392720277515249910

`3*A363570(n)+1`
-/

namespace A069835.P17392720277515249910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A363570 n + 1

end

end A069835.P17392720277515249910

namespace A069835

/-- `3*A363570(n)+1` -/
def P17392720277515249910.Spec : Prop :=
  ∀ n, P17392720277515249910.a n = A069835 n

end A069835

/-! ## A069835.P5783642095880301847

`4*(2*n-1)*a(n-1)/n-4*(n-1)*a(n-2)/n` with `a(0)=1, a(1)=4`
-/

namespace A069835.P5783642095880301847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) / (n : ℚ) - (4 * ((n : ℤ) - 1) : ℚ) * a (n - 2) / (n : ℚ)

end

end A069835.P5783642095880301847

namespace A069835

/-- `4*(2*n-1)*a(n-1)/n-4*(n-1)*a(n-2)/n` -/
def P5783642095880301847.Spec : Prop :=
  ∀ n, P5783642095880301847.a n = (A069835 n : ℚ)

end A069835

/-! ## A069835.P3066264441867445427

`A299989(n²)+A054122(n)`
-/

namespace A069835.P3066264441867445427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 (n ^ 2) + A054122 n

end

end A069835.P3066264441867445427

namespace A069835

/-- `A299989(n²)+A054122(n)` -/
def P3066264441867445427.Spec : Prop :=
  ∀ n, P3066264441867445427.a n = A069835 n

end A069835

/-! ## A069835.P7274734469766436045

`A299989((n+1)²)`
-/

namespace A069835.P7274734469766436045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 ((n + 1) ^ 2)

end

end A069835.P7274734469766436045

namespace A069835

/-- `A299989((n+1)²)` -/
def P7274734469766436045.Spec : Prop :=
  ∀ n, P7274734469766436045.a n = A069835 n

end A069835

/-! ## A069835.P13046341815255761720

`record[A299989((1-n)²)]`
-/

namespace A069835.P13046341815255761720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069835.P13046341815255761720

namespace A069835

/-- `record[A299989((1-n)²)]` -/
def P13046341815255761720.Spec : Prop :=
  ∀ n, P13046341815255761720.a n = A069835 n

end A069835

/-!
# A069837: Smallest prime which is a concatenation of n primes.

The programs for A069837, there is no canonical definition to state claims against.
-/

/-! ## A069837.P2028594951249395231

`A098831(n+1)+A002276(n+1)`
-/

namespace A069837.P2028594951249395231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098831 (n + 1) + A002276 (n + 1)

end

end A069837.P2028594951249395231

/-! ## A069837.P17275940918006080752

`A098831(n+1)+2*A000042(n+1)`
-/

namespace A069837.P17275940918006080752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098831 (n + 1) + 2 * A000042 (n + 1)

end

end A069837.P17275940918006080752

/-! ## A069837.P14121366505967014659

`A002275(n+1)+A098831(n+1)+A002275(n+1)`
-/

namespace A069837.P14121366505967014659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A098831 (n + 1) + A002275 (n + 1))

end

end A069837.P14121366505967014659

/-! ## A069837.P2851741254850018724

`A374376(∑[n]+1)`
-/

namespace A069837.P2851741254850018724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A069837.P2851741254850018724

/-! ## A069837.P6554318144195749225

`record[A374376(n+1)]`
-/

namespace A069837.P6554318144195749225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069837.P6554318144195749225

/-!
# A069842: Number of distinct primes obtained by inserting a 1 at all possible places in n. This includes prefixing and suffixing.

The programs for A069842, there is no canonical definition to state claims against.
-/

/-! ## A069842.P15323781608482122631

`A010872((2-A010872(n+1))*A316123(3*n+2))`
-/

namespace A069842.P15323781608482122631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 - A010872 (n + 1)) * A316123 (3 * n + 2)).toNat

end

end A069842.P15323781608482122631

/-! ## A069842.P8974991356345152927

`A010872(A010872(2*(n+2))*A316123(3*n+2))`
-/

namespace A069842.P8974991356345152927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A010872 (2 * (n + 2)) * A316123 (3 * n + 2)).toNat

end

end A069842.P8974991356345152927

/-! ## A069842.P3222227542682967276

`A007949(∑[A031100(n+1)]*A031118(n+1))`
-/

namespace A069842.P3222227542682967276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 ((∑ j ∈ Finset.range (n + 1), f1 j) * A031118 (n + 1)).toNat

end

end A069842.P3222227542682967276

/-! ## A069842.P5445909117164119497

`C(A010673(A022098(n)), ∑{e}[n+1, #])`
-/

namespace A069842.P5445909117164119497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A010673 (A022098 n).toNat).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A069842.P5445909117164119497

/-! ## A069842.P12541735697912544931

`C(A010673(A182415(n)), ∑{e}[n+1, #])`
-/

namespace A069842.P12541735697912544931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A010673 (A182415 n).toNat).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A069842.P12541735697912544931

/-!
# A069843: Number of distinct primes obtained by inserting a 2 at all possible places in n. This includes prefixing.

The programs for A069843, there is no canonical definition to state claims against.
-/

/-! ## A069843.P5859611441533844375

`A011765(lt[A154293(n+1), A220810(n+1)]+1)`
-/

namespace A069843.P5859611441533844375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A069843.P5859611441533844375

/-! ## A069843.P11670708044281433605

`A005117(A005496(n))%A244227(n)`
-/

namespace A069843.P11670708044281433605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A005496 n).toNat) (A244227 n)

end

end A069843.P11670708044281433605

/-! ## A069843.P2529385164653910278

`and(A010060(A094707(n)), A094707(n))`
-/

namespace A069843.P2529385164653910278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A094707 n).toNat) (A094707 n)

end

end A069843.P2529385164653910278

/-! ## A069843.P7868093179399980053

`and(A001629(n), A011664(A066969(n+1)))`
-/

namespace A069843.P7868093179399980053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001629 n) (A011664 (A066969 (n + 1)).toNat)

end

end A069843.P7868093179399980053

/-! ## A069843.P11155111805263175808

`A104785(gcd(A023900(n+1), A054353(2*(n+2))))`
-/

namespace A069843.P11155111805263175808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104785 (Int.gcd (A023900 (n + 1)) (A054353 (2 * (n + 2))))

end

end A069843.P11155111805263175808

/-!
# A069844: Number of distinct primes obtained by inserting a 3 at all possible places in n. This includes prefixing and suffixing.

The programs for A069844, there is no canonical definition to state claims against.
-/

/-! ## A069844.P148980635175732525

`A055396(gcd(A000574(n+3), A025480(n)))`
-/

namespace A069844.P148980635175732525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.gcd (A000574 (n + 3)) (A025480 n))

end

end A069844.P148980635175732525

/-! ## A069844.P16409867841946801869

`A001222(gcd(A226023(n), A226024(n+3)))`
-/

namespace A069844.P16409867841946801869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A226023 n) (A226024 (n + 3)))

end

end A069844.P16409867841946801869

/-! ## A069844.P8282577541023158031

`A054054(A003961(n+1)*A093005(n+2))`
-/

namespace A069844.P8282577541023158031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A003961 (n + 1) * A093005 (n + 2)).toNat

end

end A069844.P8282577541023158031

/-! ## A069844.P2793232359868237046

`A113345(A008812(n))%5`
-/

namespace A069844.P2793232359868237046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113345 (A008812 n).toNat) 5

end

end A069844.P2793232359868237046

/-! ## A069844.P6889794019385335869

`and(A023416(n)+1, A062224(n+1))`
-/

namespace A069844.P6889794019385335869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023416 n + 1) (A062224 (n + 1))

end

end A069844.P6889794019385335869

/-!
# A069845: Number of distinct primes obtained by inserting a 4 at all possible places in n. This includes prefixing.

The programs for A069845, there is no canonical definition to state claims against.
-/

/-! ## A069845.P11773589900286731898

`A152938(Δ[n²])%(A000086(n+1)+1)`
-/

namespace A069845.P11773589900286731898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A000086 (n + 1) + 1)

end

end A069845.P11773589900286731898

/-! ## A069845.P155024949529365328

`A333755(gcd(A005811(n), A349647(n+1)))`
-/

namespace A069845.P155024949529365328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (Int.gcd (A005811 n) (A349647 (n + 1)))

end

end A069845.P155024949529365328

/-! ## A069845.P214701718088518649

`and(A048250(A001615(n+1)), A124778(n))`
-/

namespace A069845.P214701718088518649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048250 (A001615 (n + 1)).toNat) (A124778 n)

end

end A069845.P214701718088518649

/-! ## A069845.P12211217577158509099

`and(A048250(A069934(n+1)), A124778(n))`
-/

namespace A069845.P12211217577158509099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048250 (A069934 (n + 1)).toNat) (A124778 n)

end

end A069845.P12211217577158509099

/-! ## A069845.P16253451447328700987

`and(A048250(A348944(n+1)), A124778(n))`
-/

namespace A069845.P16253451447328700987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048250 (A348944 (n + 1)).toNat) (A124778 n)

end

end A069845.P16253451447328700987

/-!
# A069846: Number of distinct primes obtained by inserting a 5 at all possible places in n. This includes prefixing.

The programs for A069846, there is no canonical definition to state claims against.
-/

/-! ## A069846.P10091468499926686980

`and(A281422(A260738(n+3)), A351337(n+1))`
-/

namespace A069846.P10091468499926686980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281422 (A260738 (n + 3)).toNat) (A351337 (n + 1))

end

end A069846.P10091468499926686980

/-! ## A069846.P10580168755641702186

`val(A074400(A303814(2*(n+1))), 11)`
-/

namespace A069846.P10580168755641702186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074400 (A303814 (2 * (n + 1))).toNat).toNat 11

end

end A069846.P10580168755641702186

/-! ## A069846.P6709175862985533385

`A291087(2*(n+1))%A123579(A091090(n+3))`
-/

namespace A069846.P6709175862985533385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291087 (2 * (n + 1))) (A123579 (A091090 (n + 3)).toNat)

end

end A069846.P6709175862985533385

/-! ## A069846.P423932994754462749

`A122205(n+1)%A003484(A122194(n+1))`
-/

namespace A069846.P423932994754462749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122205 (n + 1)) (A003484 (A122194 (n + 1)).toNat)

end

end A069846.P423932994754462749

/-! ## A069846.P17523628026718153858

`val(A004009(A303814(2*(n+1))), 11)`
-/

namespace A069846.P17523628026718153858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004009 (A303814 (2 * (n + 1))).toNat).toNat 11

end

end A069846.P17523628026718153858

/-!
# A069847: Number of distinct primes obtained by inserting a 6 at all possible places in n. This includes prefixing.

The programs for A069847, there is no canonical definition to state claims against.
-/

/-! ## A069847.P16382784397605644339

`and(A080843(A226541(n)), A216556(n))`
-/

namespace A069847.P16382784397605644339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080843 (A226541 n).toNat) (A216556 n)

end

end A069847.P16382784397605644339

/-! ## A069847.P6099990556951498906

`∏{p}[n+1, A153246(A153199(#))]`
-/

namespace A069847.P6099990556951498906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A153246 (A153199 p).toNat

end

end A069847.P6099990556951498906

/-! ## A069847.P1337443665631077769

`∏{p}[n+1, A328283(A002322(2*A014681(#)))]`
-/

namespace A069847.P1337443665631077769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A328283 (A002322 (2 * A014681 p).toNat).toNat

end

end A069847.P1337443665631077769

/-! ## A069847.P11485164021022826911

`A124763(A105574(n+1)+1)`
-/

namespace A069847.P11485164021022826911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A105574 (n + 1) + 1).toNat

end

end A069847.P11485164021022826911

/-! ## A069847.P2759892310057475916

`A334323(n+1)%A095346(n+1)`
-/

namespace A069847.P2759892310057475916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334323 (n + 1)) (A095346 (n + 1))

end

end A069847.P2759892310057475916

/-!
# A069848: Number of distinct primes obtained by inserting a 7 at all possible places in n. This includes prefixing as well as suffixing.

The programs for A069848, there is no canonical definition to state claims against.
-/

/-! ## A069848.P7118853210727952795

`A048388(n+1)%A007862(A167499(A000217(n)))`
-/

namespace A069848.P7118853210727952795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048388 (n + 1)) (A007862 (A167499 (A000217 n).toNat).toNat)

end

end A069848.P7118853210727952795

/-! ## A069848.P12252691192301873794

`A231227(∑[n+1]+2)%(gcd(2, n)+1)`
-/

namespace A069848.P12252691192301873794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231227 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (Nat.gcd 2 n + 1 : ℤ)

end

end A069848.P12252691192301873794

/-! ## A069848.P4456529408455480035

`A289284(A072079(n+2))%3`
-/

namespace A069848.P4456529408455480035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289284 (A072079 (n + 2)).toNat) 3

end

end A069848.P4456529408455480035

/-! ## A069848.P7850968173128496379

`A231227(A000096(n)+3)%(char[2*n]+2)`
-/

namespace A069848.P7850968173128496379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231227 (A000096 n + 3).toNat) (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℤ)

end

end A069848.P7850968173128496379

/-! ## A069848.P11365700680396884196

`A329903(or(A167614(n+1), A283390(n)))`
-/

namespace A069848.P11365700680396884196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (Int.lor (A167614 (n + 1)) (A283390 n)).toNat

end

end A069848.P11365700680396884196

/-!
# A069849: Number of distinct primes obtained by inserting an 8 at all possible places in n. This includes prefixing.

The programs for A069849, there is no canonical definition to state claims against.
-/

/-! ## A069849.P12567299826099545489

`and(A127322(n), A135814(A267354(n)))`
-/

namespace A069849.P12567299826099545489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127322 n) (A135814 (A267354 n).toNat)

end

end A069849.P12567299826099545489

/-! ## A069849.P4258418876686052584

`and(A081396(A276586(n)), A084680(n+1))`
-/

namespace A069849.P4258418876686052584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081396 (A276586 n).toNat) (A084680 (n + 1))

end

end A069849.P4258418876686052584

/-! ## A069849.P8026523574383798945

`and(A076511(A025620(n+1)), A084680(n+1))`
-/

namespace A069849.P8026523574383798945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076511 (A025620 (n + 1)).toNat) (A084680 (n + 1))

end

end A069849.P8026523574383798945

/-! ## A069849.P15502802120651974061

`A084680(n+1)%A000005(A032367(n+1))`
-/

namespace A069849.P15502802120651974061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084680 (n + 1)) (A000005 (A032367 (n + 1)).toNat)

end

end A069849.P15502802120651974061

/-! ## A069849.P13060381700311471511

`A304662(n+4)%A002186(A020639(n+1))`
-/

namespace A069849.P13060381700311471511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304662 (n + 4)) (A002186 (A020639 (n + 1)).toNat)

end

end A069849.P13060381700311471511

/-!
# A069850: Number of distinct primes obtained by inserting a 9 at all possible places in n. This includes prefixing as well as suffixing.

The programs for A069850, there is no canonical definition to state claims against.
-/

/-! ## A069850.P15519521614591321358

`and(A073204(n), A289643(A001595(n)))`
-/

namespace A069850.P15519521614591321358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073204 n) (A289643 (A001595 n).toNat)

end

end A069850.P15519521614591321358

/-! ## A069850.P2834504322656191043

`A032273(n+1)%A059832(A203302(3*(n+1)))`
-/

namespace A069850.P2834504322656191043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032273 (n + 1)) (A059832 (A203302 (3 * (n + 1))).toNat)

end

end A069850.P2834504322656191043

/-! ## A069850.P2680318495856002873

`and(A073204(n), A139272(A022095(n)))`
-/

namespace A069850.P2680318495856002873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073204 n) (A139272 (A022095 n).toNat)

end

end A069850.P2680318495856002873

/-! ## A069850.P8227061199112534389

`A316826(A143146(n+1)%A238659(3*(n+1)))`
-/

namespace A069850.P8227061199112534389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (Int.tmod (A143146 (n + 1)) (A238659 (3 * (n + 1)))).toNat

end

end A069850.P8227061199112534389

/-! ## A069850.P13877610070948587311

`A010872(xor(A107428(n+1), A351711(n+1)))`
-/

namespace A069850.P13877610070948587311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.xor (A107428 (n + 1)) (A351711 (n + 1))).toNat

end

end A069850.P13877610070948587311

/-!
# A069851: Number of distinct primes obtained by inserting a 0 at all possible places in n. This includes prefixing.

The programs for A069851, there is no canonical definition to state claims against.
-/

/-! ## A069851.P17124924920065791809

`A010051(n+1)*A014695(A060876(3*n+2))`
-/

namespace A069851.P17124924920065791809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A014695 (A060876 (3 * n + 2)).toNat

end

end A069851.P17124924920065791809

/-! ## A069851.P12898790476809961064

`A134451(A051349(A049084(n+1)²))`
-/

namespace A069851.P12898790476809961064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A051349 (A049084 (n + 1) ^ 2).toNat).toNat

end

end A069851.P12898790476809961064

/-! ## A069851.P9929423555708350799

`A000120(Δ[A230980(n)]*A076869(n+1))`
-/

namespace A069851.P9929423555708350799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((f1 (n + 1) - f1 n) * A076869 (n + 1)).toNat

end

end A069851.P9929423555708350799

/-! ## A069851.P12359614895281364911

`A000120(A029832(n+1)*A076869(n+1))`
-/

namespace A069851.P12359614895281364911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A029832 (n + 1) * A076869 (n + 1)).toNat

end

end A069851.P12359614895281364911

/-! ## A069851.P10916296888238238009

`A010051(n+1)*A118383(Δ[A000960(n+1)])`
-/

namespace A069851.P10916296888238238009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A118383 (f1 (n + 1) - f1 n).toNat

end

end A069851.P10916296888238238009

/-!
# A069852: a(n) = Sum_{i=0..2n} B(i)*C(2n+1,i)*5^i where B(i) are the Bernoulli numbers, C(2n,i) the binomial numbers.

The programs for A069852, there is no canonical definition to state claims against.
-/

/-! ## A069852.P1399806120614651818

`A083009(2*n+3)`
-/

namespace A069852.P1399806120614651818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083009 (2 * n + 3)

end

end A069852.P1399806120614651818

/-! ## A069852.P2143226503284936641

`or(2, A083009(A005408(n+1)))`
-/

namespace A069852.P2143226503284936641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A083009 (A005408 (n + 1)).toNat)

end

end A069852.P2143226503284936641

/-! ## A069852.P7513251648884685528

`A083009(A005408(n+1))+A000007(n+1)`
-/

namespace A069852.P7513251648884685528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083009 (A005408 (n + 1)).toNat + A000007 (n + 1)

end

end A069852.P7513251648884685528

/-! ## A069852.P1759700894757595783

`A083009(A005408(n+1))/A178334(n+2)`
-/

namespace A069852.P1759700894757595783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083009 (A005408 (n + 1)).toNat : ℚ) / (A178334 (n + 2) : ℚ)

end

end A069852.P1759700894757595783

/-! ## A069852.P15208850475569695265

`A157866(2*n+3)`
-/

namespace A069852.P15208850475569695265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157866 (2 * n + 3)

end

end A069852.P15208850475569695265

/-!
# A069853: Numerators of coefficients of expansion of sinh(x)/sin(x) (even powers only).

The programs for A069853, there is no canonical definition to state claims against.
-/

/-! ## A069853.P229194054342661657

`A007418(2*n)`
-/

namespace A069853.P229194054342661657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007418 (2 * n)

end

end A069853.P229194054342661657

/-! ## A069853.P12854835015752144253

`or(1, A007418(A005843(n)))`
-/

namespace A069853.P12854835015752144253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007418 (A005843 n).toNat)

end

end A069853.P12854835015752144253

/-! ## A069853.P16726262988133766238

`A007418(A004277(n))-A000007(n)`
-/

namespace A069853.P16726262988133766238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007418 (A004277 n).toNat - A000007 n

end

end A069853.P16726262988133766238

/-! ## A069853.P444593118175500523

`lcm(A007418(A005843(n)), A209615(n+1))`
-/

namespace A069853.P444593118175500523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007418 (A005843 n).toNat) (A209615 (n + 1))

end

end A069853.P444593118175500523

/-! ## A069853.P14453754771388956519

`A007418(A005843(n))^A007318(val(n+1, 4))`
-/

namespace A069853.P14453754771388956519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007418 (A005843 n).toNat : ℚ) ^ (A007318 (SequenceMachineLib.valuation (n + 1) 4) : ℤ)

end

end A069853.P14453754771388956519

/-! ## A069853.P15952137200856058091

`A007418(A004277(n))/A000034(A001316(n))`
-/

namespace A069853.P15952137200856058091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007418 (A004277 n).toNat : ℚ) / (A000034 (A001316 n).toNat : ℚ)

end

end A069853.P15952137200856058091

/-!
# A069854: Denominators of coefficients of expansion of sinh(x)/sin(x) (even powers only).

The programs for A069854, there is no canonical definition to state claims against.
-/

/-! ## A069854.P10434347680173932092

`A007451(2*n)`
-/

namespace A069854.P10434347680173932092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007451 (2 * n)

end

end A069854.P10434347680173932092

/-! ## A069854.P7121834534114311460

`or(char[1], A007451(A005843(n)))`
-/

namespace A069854.P7121834534114311460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007451 (A005843 n).toNat)

end

end A069854.P7121834534114311460

/-! ## A069854.P5169161553750068079

`A178798(n)+A007451(A005843(n))`
-/

namespace A069854.P5169161553750068079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A007451 (A005843 n).toNat

end

end A069854.P5169161553750068079

/-! ## A069854.P4131998727315477684

`lcm(A007318(n), A007451(A005843(n)))`
-/

namespace A069854.P4131998727315477684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A007451 (A005843 n).toNat)

end

end A069854.P4131998727315477684

/-! ## A069854.P16055865350457340968

`A007451(A005843(n))/A007318(A000217(n))`
-/

namespace A069854.P16055865350457340968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007451 (A005843 n).toNat : ℚ) / (A007318 (A000217 n).toNat : ℚ)

end

end A069854.P16055865350457340968

/-!
# A069856: E.g.f.: exp(x)/(1+LambertW(x)).

The programs for A069856, the canonical program `A069856.P2718549601781370411` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069856 has offset 0).

The definition of A069856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069856.P2718549601781370411

`n!*∑{#}[n, (-1)^#*#^#/(#!*(n-#)!)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069856

/-- `n!*∑{#}[n, (-1)^#*#^#/(#!*(n-#)!)]` -/
def P2718549601781370411.Spec : Prop :=
  ∀ n, P2718549601781370411.a n = (A069856 n : ℚ)

end A069856

/-! ## A069856.P6668425022320512443

`A033999(n)*A350212(A000217(n))`
-/

namespace A069856.P6668425022320512443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A350212 (A000217 n).toNat

end

end A069856.P6668425022320512443

namespace A069856

/-- `A033999(n)*A350212(A000217(n))` -/
def P6668425022320512443.Spec : Prop :=
  ∀ n, P6668425022320512443.a n = A069856 n

end A069856

/-! ## A069856.P9100546630088664645

`A009001(2*n)*A350212(A000217(n))`
-/

namespace A069856.P9100546630088664645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A350212 (A000217 n).toNat

end

end A069856.P9100546630088664645

namespace A069856

/-- `A009001(2*n)*A350212(A000217(n))` -/
def P9100546630088664645.Spec : Prop :=
  ∀ n, P9100546630088664645.a n = A069856 n

end A069856

/-! ## A069856.P18352717327006130744

`A209615(n²+1)*A350212(A000217(n))`
-/

namespace A069856.P18352717327006130744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n ^ 2 + 1) * A350212 (A000217 n).toNat

end

end A069856.P18352717327006130744

namespace A069856

/-- `A209615(n²+1)*A350212(A000217(n))` -/
def P18352717327006130744.Spec : Prop :=
  ∀ n, P18352717327006130744.a n = A069856 n

end A069856

/-! ## A069856.P1168916121933744624

`A350212(A000217(n))/A285048(n)*A285287(n)`
-/

namespace A069856.P1168916121933744624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350212 (A000217 n).toNat : ℚ) / (A285048 n : ℚ) * (A285287 n : ℚ)

end

end A069856.P1168916121933744624

namespace A069856

/-- `A350212(A000217(n))/A285048(n)*A285287(n)` -/
def P1168916121933744624.Spec : Prop :=
  ∀ n, P1168916121933744624.a n = (A069856 n : ℚ)

end A069856

/-!
# A069858: 1/n has period 4 in base 10.

The programs for A069858, there is no canonical definition to state claims against.
-/

/-! ## A069858.P6370808348743405782

`eq[4, A007732(A028310(n))]`
-/

namespace A069858.P6370808348743405782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069858.P6370808348743405782

/-! ## A069858.P13466361440025148975

`A326178(eq[4, A007732(n+1)])`
-/

namespace A069858.P13466361440025148975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069858.P13466361440025148975

/-! ## A069858.P13543601731727183601

`A326178(eq[4, A051626(n+1)])`
-/

namespace A069858.P13543601731727183601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069858.P13543601731727183601

/-! ## A069858.P11611896009795483081

`eq[4, A051626(A004277(n))]`
-/

namespace A069858.P11611896009795483081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069858.P11611896009795483081

/-! ## A069858.P3276766104108247213

`eq[4, A051626(A008706(n))]`
-/

namespace A069858.P3276766104108247213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069858.P3276766104108247213

/-!
# A069859: a(n) = (greatest prime factor of n) modulo (least prime factor of n).

The programs for A069859, the canonical program `A069859.P3070300904514064570` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069859 has offset 1).

The definition of A069859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A020639, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069859.P3070300904514064570

`A006530(n+1)%A020639(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A069859

/-- `A006530(n+1)%A020639(n+1)` -/
def P3070300904514064570.Spec : Prop :=
  ∀ n, P3070300904514064570.a n = A069859 (n + 1)

theorem P3070300904514064570.correct : P3070300904514064570.Spec := by
  intro n
  simp only [A069859, Nat.add_sub_cancel]

end A069859

/-! ## A069859.P5874624792158372890

`A006530(n+1)-A069897(n+1)*A020639(n+1)`
-/

namespace A069859.P5874624792158372890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A069897 (n + 1) * A020639 (n + 1)

end

end A069859.P5874624792158372890

namespace A069859

/-- `A006530(n+1)-A069897(n+1)*A020639(n+1)` -/
def P5874624792158372890.Spec : Prop :=
  ∀ n, P5874624792158372890.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P1248483515207703397

`A101257(A088835(n+1))`
-/

namespace A069859.P1248483515207703397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (A088835 (n + 1)).toNat

end

end A069859.P1248483515207703397

namespace A069859

/-- `A101257(A088835(n+1))` -/
def P1248483515207703397.Spec : Prop :=
  ∀ n, P1248483515207703397.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P17169814925930745559

`A046665(n+1)%A020639(n+1)`
-/

namespace A069859.P17169814925930745559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046665 (n + 1)) (A020639 (n + 1))

end

end A069859.P17169814925930745559

namespace A069859

/-- `A046665(n+1)%A020639(n+1)` -/
def P17169814925930745559.Spec : Prop :=
  ∀ n, P17169814925930745559.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P8190795528970321651

`A070229(n+1)%A020639(n+1)`
-/

namespace A069859.P8190795528970321651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070229 (n + 1)) (A020639 (n + 1))

end

end A069859.P8190795528970321651

namespace A069859

/-- `A070229(n+1)%A020639(n+1)` -/
def P8190795528970321651.Spec : Prop :=
  ∀ n, P8190795528970321651.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P1986744566616592333

`A074320(n+1)%A020639(n+1)`
-/

namespace A069859.P1986744566616592333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074320 (n + 1)) (A020639 (n + 1))

end

end A069859.P1986744566616592333

namespace A069859

/-- `A074320(n+1)%A020639(n+1)` -/
def P1986744566616592333.Spec : Prop :=
  ∀ n, P1986744566616592333.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P8594034101580872929

`A111089(n+1)%A020639(n+1)`
-/

namespace A069859.P8594034101580872929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111089 (n + 1)) (A020639 (n + 1))

end

end A069859.P8594034101580872929

namespace A069859

/-- `A111089(n+1)%A020639(n+1)` -/
def P8594034101580872929.Spec : Prop :=
  ∀ n, P8594034101580872929.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P4762780436236086414

`A101257((n+1)/A052126(A032742(n+1)))`
-/

namespace A069859.P4762780436236086414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (A032742 (n + 1)).toNat : ℚ))).toNat

end

end A069859.P4762780436236086414

namespace A069859

/-- `A101257((n+1)/A052126(A032742(n+1)))` -/
def P4762780436236086414.Spec : Prop :=
  ∀ n, P4762780436236086414.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P11987239402961201334

`A053585(∏{p}[n+1, #])%A020639(A051119(n+1))`
-/

namespace A069859.P11987239402961201334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A020639 (A051119 (n + 1)).toNat)

end

end A069859.P11987239402961201334

namespace A069859

/-- `A053585(∏{p}[n+1, #])%A020639(A051119(n+1))` -/
def P11987239402961201334.Spec : Prop :=
  ∀ n, P11987239402961201334.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P6074485398794239299

`A006530(n+1)-A020639(n+1)*A069897(n+1)`
-/

namespace A069859.P6074485398794239299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A020639 (n + 1) * A069897 (n + 1)

end

end A069859.P6074485398794239299

namespace A069859

/-- `A006530(n+1)-A020639(n+1)*A069897(n+1)` -/
def P6074485398794239299.Spec : Prop :=
  ∀ n, P6074485398794239299.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P278490812892748866

`((n+1)/A052126(n+1))%A020639(A051119(n+1))`
-/

namespace A069859.P278490812892748866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))) (A020639 (A051119 (n + 1)).toNat)

end

end A069859.P278490812892748866

namespace A069859

/-- `((n+1)/A052126(n+1))%A020639(A051119(n+1))` -/
def P278490812892748866.Spec : Prop :=
  ∀ n, P278490812892748866.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P10136154772461614214

`A006530(∏{p}[n+1, #])%A008578(A055396(n+1)+1)`
-/

namespace A069859.P10136154772461614214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A008578 (A055396 (n + 1) + 1).toNat)

end

end A069859.P10136154772461614214

namespace A069859

/-- `A006530(∏{p}[n+1, #])%A008578(A055396(n+1)+1)` -/
def P10136154772461614214.Spec : Prop :=
  ∀ n, P10136154772461614214.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P7269814768807037360

`A006530(A007947(n+1))%A014963(A028233(n+1))`
-/

namespace A069859.P7269814768807037360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A007947 (n + 1)).toNat) (A014963 (A028233 (n + 1)).toNat)

end

end A069859.P7269814768807037360

namespace A069859

/-- `A006530(A007947(n+1))%A014963(A028233(n+1))` -/
def P7269814768807037360.Spec : Prop :=
  ∀ n, P7269814768807037360.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P7323182804980324250

`A006530(A053166(n+1))%A014963(A028233(n+1))`
-/

namespace A069859.P7323182804980324250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A053166 (n + 1)).toNat) (A014963 (A028233 (n + 1)).toNat)

end

end A069859.P7323182804980324250

namespace A069859

/-- `A006530(A053166(n+1))%A014963(A028233(n+1))` -/
def P7323182804980324250.Spec : Prop :=
  ∀ n, P7323182804980324250.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P10458839414116397254

`(A318884(n+1)-A318886(n+1))%A020639(A051119(n+1))`
-/

namespace A069859.P10458839414116397254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318884 (n + 1) - A318886 (n + 1)) (A020639 (A051119 (n + 1)).toNat)

end

end A069859.P10458839414116397254

namespace A069859

/-- `(A318884(n+1)-A318886(n+1))%A020639(A051119(n+1))` -/
def P10458839414116397254.Spec : Prop :=
  ∀ n, P10458839414116397254.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P4271168485244567647

`(A051664(n+1)-A070536(n+1))%A020639(n+1)`
-/

namespace A069859.P4271168485244567647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051664 (n + 1) - A070536 (n + 1)) (A020639 (n + 1))

end

end A069859.P4271168485244567647

namespace A069859

/-- `(A051664(n+1)-A070536(n+1))%A020639(n+1)` -/
def P4271168485244567647.Spec : Prop :=
  ∀ n, P4271168485244567647.a n = A069859 (n + 1)

end A069859

/-! ## A069859.P2696249776626321042

`A101257(A066048(n+1))`
-/

namespace A069859.P2696249776626321042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (A066048 (n + 1)).toNat

end

end A069859.P2696249776626321042

namespace A069859

/-- `A101257(A066048(n+1))` -/
def P2696249776626321042.Spec : Prop :=
  ∀ n, P2696249776626321042.a n = A069859 (n + 1)

end A069859

/-!
# A069860: Numbers m that divide the concatenation of m+1 and m+2.

The programs for A069860, there is no canonical definition to state claims against.
-/

/-! ## A069860.P862847490486969719

`A281233(n+1)-1`
-/

namespace A069860.P862847490486969719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281233 (n + 1) - 1

end

end A069860.P862847490486969719

/-! ## A069860.P15714695586289876234

`abs(A281233(n+1)+A260196(n+1))`
-/

namespace A069860.P15714695586289876234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281233 (n + 1) + A260196 (n + 1)|

end

end A069860.P15714695586289876234

/-! ## A069860.P6383140773538950401

`xor(-A281233(n+1), A260196(n+2))`
-/

namespace A069860.P6383140773538950401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A281233 (n + 1)) (A260196 (n + 2))

end

end A069860.P6383140773538950401

/-! ## A069860.P7828784968922300693

`A001478(n+1)+A281233(n+1)+n`
-/

namespace A069860.P7828784968922300693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A281233 (n + 1) + (n : ℤ))

end

end A069860.P7828784968922300693

/-! ## A069860.P10778157766494000983

`A349340(A000040(n+1))+A281233(n+1)`
-/

namespace A069860.P10778157766494000983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A000040 (n + 1)).toNat + A281233 (n + 1)

end

end A069860.P10778157766494000983

/-!
# A069861: Numbers n that divide the concatenation of next n numbers.

The programs for A069861, there is no canonical definition to state claims against.
-/

/-! ## A069861.P17964879337288986861

`record[gcd(n+1, A019524(n+1))]`
-/

namespace A069861.P17964879337288986861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A019524 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069861.P17964879337288986861

/-! ## A069861.P5482676877490952777

`∑[gcd(A174909(n+1), A233510(n+1))]`
-/

namespace A069861.P5482676877490952777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174909 (n + 1)) (A233510 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069861.P5482676877490952777

/-!
# A069862: Smallest k such that n divides the concatenation of numbers from (n+1) to (n+k), where (n+1) is on the most significant side.

The programs for A069862, there is no canonical definition to state claims against.
-/

/-! ## A069862.P1191035329270264339

`A077312(n+1)-(n+1)`
-/

namespace A069862.P1191035329270264339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077312 (n + 1) - (n + 1 : ℤ)

end

end A069862.P1191035329270264339

/-! ## A069862.P11747272973632436195

`A077312(-xor(n, -1))-1-n`
-/

namespace A069862.P11747272973632436195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077312 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A069862.P11747272973632436195

/-! ## A069862.P1735425361248934598

`A077312(Δ[n²]-n)-1-n`
-/

namespace A069862.P1735425361248934598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077312 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A069862.P1735425361248934598

/-! ## A069862.P11341298020700768641

`A023443(A077312(n+1)-n)`
-/

namespace A069862.P11341298020700768641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077312 (n + 1) - (n : ℤ)).toNat

end

end A069862.P11341298020700768641

/-! ## A069862.P13825581577430727192

`abs(A077312(n+1)+A001478(n+1))`
-/

namespace A069862.P13825581577430727192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077312 (n + 1) + A001478 (n + 1)|

end

end A069862.P13825581577430727192

/-! ## A069862.P16864466645322478194

`A196199((n+1)²)+A077312(n+1)`
-/

namespace A069862.P16864466645322478194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 ((n + 1) ^ 2) + A077312 (n + 1)

end

end A069862.P16864466645322478194

/-!
# A069865: a(n) = Sum_{k = 0..n} C(n,k)^6.

The programs for A069865, the canonical program `A069865.P4921471706026141618` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069865 has offset 0).

The definition of A069865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^6]` (program `A069865.P4921471706026141618`, by `A069865.P4921471706026141618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069865.P4921471706026141618

`∑{#}[n, C(n, #)^6]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069865

/-- `∑{#}[n, C(n, #)^6]` -/
def P4921471706026141618.Spec : Prop :=
  ∀ n, (P4921471706026141618.a n : ℤ) = A069865 n

theorem P4921471706026141618.correct : P4921471706026141618.Spec := by
  intro n
  simp only [A069865]

end A069865

/-! ## A069865.P7613774751892361498

`A309010(eq[6, A025581(n)])`
-/

namespace A069865.P7613774751892361498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069865.P7613774751892361498

namespace A069865

/-- `A309010(eq[6, A025581(n)])` -/
def P7613774751892361498.Spec : Prop :=
  ∀ n, P7613774751892361498.a n = A069865 n

end A069865

/-! ## A069865.P5092763264381062205

`A309010(eq[7, A193739(n)])`
-/

namespace A069865.P5092763264381062205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069865.P5092763264381062205

namespace A069865

/-- `A309010(eq[7, A193739(n)])` -/
def P5092763264381062205.Spec : Prop :=
  ∀ n, P5092763264381062205.a n = A069865 n

end A069865

/-! ## A069865.P15435714854958213223

`A309010(eq[13, A099375(n)])`
-/

namespace A069865.P15435714854958213223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069865.P15435714854958213223

namespace A069865

/-- `A309010(eq[13, A099375(n)])` -/
def P15435714854958213223.Spec : Prop :=
  ∀ n, P15435714854958213223.a n = A069865 n

end A069865

/-! ## A069865.P17788553191494906448

`A309010(eq[5, A068049(n+1)])`
-/

namespace A069865.P17788553191494906448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069865.P17788553191494906448

namespace A069865

/-- `A309010(eq[5, A068049(n+1)])` -/
def P17788553191494906448.Spec : Prop :=
  ∀ n, P17788553191494906448.a n = A069865 n

end A069865

/-!
# A069867: Primes in which repeatedly deleting the least significant digit then the most significant digit gives a prime at every step until a single-digit prime remains.

The programs for A069867, there is no canonical definition to state claims against.
-/

/-! ## A069867.P15184708217928278655

`A020639(record[A164962(n+2)]*A024770(n+1))`
-/

namespace A069867.P15184708217928278655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A024770 (n + 1)).toNat

end

end A069867.P15184708217928278655

/-! ## A069867.P1181725951508540659

`∪[A024770(n+1), A085414(n+1)]%A020994(n+2)`
-/

namespace A069867.P1181725951508540659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085414 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A020994 (n + 2))

end

end A069867.P1181725951508540659

/-!
# A069868: Smallest n-th power whose digit reversal is a prime.

The programs for A069868, there is no canonical definition to state claims against.
-/

/-! ## A069868.P14794753317067843850

`A059215(n+1)^(n+1)`
-/

namespace A069868.P14794753317067843850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059215 (n + 1) ^ (n + 1)

end

end A069868.P14794753317067843850

/-! ## A069868.P11421089065683229202

`A044050(A044064(3*n+4))^A044051(n+1)`
-/

namespace A069868.P11421089065683229202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044050 (A044064 (3 * n + 4)).toNat : ℚ) ^ (A044051 (n + 1) : ℤ)

end

end A069868.P11421089065683229202

/-!
# A069869: Largest prime that is a concatenation of the parts of a partition of n, or 0 if no such prime exists.

The programs for A069869, there is no canonical definition to state claims against.
-/

/-! ## A069869.P17464448590265520305

`A258055(A343495(n+1))`
-/

namespace A069869.P17464448590265520305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258055 (A343495 (n + 1)).toNat

end

end A069869.P17464448590265520305

/-!
# A069870: Smallest prime that can be formed using a partition of n, or 0 if no such prime exists.

The programs for A069870, there is no canonical definition to state claims against.
-/

/-! ## A069870.P14744698498946414749

`A107286(A018800(n+1)*A067180(n+1))`
-/

namespace A069870.P14744698498946414749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A018800 (n + 1) * A067180 (n + 1)).toNat

end

end A069870.P14744698498946414749

/-! ## A069870.P17653318616739380900

`A054977(A068547(n+1))*A059717(A067180(n+1))`
-/

namespace A069870.P17653318616739380900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A068547 (n + 1)).toNat * A059717 (A067180 (n + 1)).toNat

end

end A069870.P17653318616739380900

/-! ## A069870.P11955035234503362723

`A059717(A067180(n+1))%A007093(A029494(n+1))`
-/

namespace A069870.P11955035234503362723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059717 (A067180 (n + 1)).toNat) (A007093 (A029494 (n + 1)).toNat)

end

end A069870.P11955035234503362723

/-! ## A069870.P16518403677404060493

`A054977(A067180(n+1)²)*A059717(A067180(n+1))`
-/

namespace A069870.P16518403677404060493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A067180 (n + 1) ^ 2).toNat * A059717 (A067180 (n + 1)).toNat

end

end A069870.P16518403677404060493

/-!
# A069871: Numbers m that divide the concatenation of m-1 and m+1.

The programs for A069871, there is no canonical definition to state claims against.
-/

/-! ## A069871.P14637604735996964237

`∩[A088877(n+1), A249647(n+2)]`
-/

namespace A069871.P14637604735996964237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249647 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069871.P14637604735996964237

/-! ## A069871.P5876292132218798245

`filter[A249647(n+2), A304109(#)]`
-/

namespace A069871.P5876292132218798245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249647 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A069871.P5876292132218798245

/-! ## A069871.P7233714926404717665

`filter[A249647(n+2), A349167(#)]`
-/

namespace A069871.P7233714926404717665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249647 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A069871.P7233714926404717665

/-! ## A069871.P12014609612583118396

`record[gcd(n-3, A172502(n+1))]`
-/

namespace A069871.P12014609612583118396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 3) (A172502 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069871.P12014609612583118396

/-!
# A069872: Numbers k such that k divides the concatenation all divisors in ascending order, i.e., k divides A037278(k).

The programs for A069872, there is no canonical definition to state claims against.
-/

/-! ## A069872.P11083883347607680871

`record[gcd(n+1, A037278(n+1))]`
-/

namespace A069872.P11083883347607680871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A037278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069872.P11083883347607680871

/-! ## A069872.P11639606768341997762

`record[gcd(A037278(n+1), A131738(n))]`
-/

namespace A069872.P11639606768341997762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037278 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069872.P11639606768341997762

/-! ## A069872.P5918116350300636448

`record[A037278(n+1)/A078810(n+1)]`
-/

namespace A069872.P5918116350300636448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037278 (n + 1) : ℚ) / (A078810 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069872.P5918116350300636448

/-! ## A069872.P7148025264843974369

`eq[A037278(n+1), A078218(n+1)]+1`
-/

namespace A069872.P7148025264843974369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069872.P7148025264843974369

/-! ## A069872.P13943621632426758852

`A336505(lt[A336517(3*n), A336546(n+1)])`
-/

namespace A069872.P13943621632426758852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336517 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336505 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069872.P13943621632426758852

/-!
# A069874: a(1) = a(2) = 1; a(n) = 2^a(n-1) + 2^a(n-2) for n > 2.

The programs for A069874, there is no canonical definition to state claims against.
-/

/-! ## A069874.P2905399290746344950

`2^a(n-1)+2^a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A069874.P2905399290746344950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 ^ a (n - 1) + 2 ^ a (n - 2)

end

end A069874.P2905399290746344950

/-!
# A069875: Smallest multiple of n with a prime signature different from all previous terms.

The programs for A069875, there is no canonical definition to state claims against.
-/

/-! ## A069875.P15734468646823488648

`lcm(A008904(A148551(n)), A174824(n+1))`
-/

namespace A069875.P15734468646823488648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008904 (A148551 n).toNat) (A174824 (n + 1))

end

end A069875.P15734468646823488648

/-! ## A069875.P11258231826350063695

`lcm(n+1, A000005(A052990(n)))`
-/

namespace A069875.P11258231826350063695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000005 (A052990 n).toNat)

end

end A069875.P11258231826350063695

/-! ## A069875.P10569681870946340357

`∏{p}[n+1, #]*A001227(A081562(n))`
-/

namespace A069875.P10569681870946340357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A001227 (A081562 n).toNat

end

end A069875.P10569681870946340357

/-! ## A069875.P5396793899386504995

`(n+1)*A351168(n+1)%A349547(3*n+5)`
-/

namespace A069875.P5396793899386504995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A351168 (n + 1)) (A349547 (3 * n + 5))

end

end A069875.P5396793899386504995

/-!
# A069877: Smallest number with a prime signature whose indices are the decimal digits of n.

The programs for A069877, there is no canonical definition to state claims against.
-/

/-! ## A069877.P9324515354076434839

`A046523(A054842(n))`
-/

namespace A069877.P9324515354076434839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A054842 n).toNat

end

end A069877.P9324515354076434839

/-! ## A069877.P12171178520398593686

`A054842(A004185(n))`
-/

namespace A069877.P12171178520398593686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A004185 n).toNat

end

end A069877.P12171178520398593686

/-! ## A069877.P14467454515803301414

`A061509(A004186(n))`
-/

namespace A069877.P14467454515803301414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (A004186 n).toNat

end

end A069877.P14467454515803301414

/-! ## A069877.P7189537110297848399

`A061509(A108782(n)+n)`
-/

namespace A069877.P7189537110297848399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (A108782 n + (n : ℤ)).toNat

end

end A069877.P7189537110297848399

/-! ## A069877.P1458724091087715489

`A054842(n-A193581(n))`
-/

namespace A069877.P1458724091087715489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 ((n : ℤ) - A193581 n).toNat

end

end A069877.P1458724091087715489

/-! ## A069877.P3488727671264527288

`A181821(A113581(n))`
-/

namespace A069877.P3488727671264527288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A113581 n).toNat

end

end A069877.P3488727671264527288

/-!
# A069878: 

The programs for A069878, there is no canonical definition to state claims against.
-/

/-! ## A069878.P2403302799906953644

`∑{d}[A011557(n), A078374(#)]`
-/

namespace A069878.P2403302799906953644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078374 d

end

end A069878.P2403302799906953644

/-!
# A069879: Number of pairs {i,j} with i different from j; 1<=i<=n; 1<= j <=n such that i+j is a prime number.

The programs for A069879, the canonical program `A069879.P15875305375985047542` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069879 has offset 1).

The definition of A069879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069879.P15875305375985047542

`2*A071917(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069879

/-- `2*A071917(n+1)` -/
def P15875305375985047542.Spec : Prop :=
  ∀ n, P15875305375985047542.a n = A069879 (n + 1)

theorem P15875305375985047542.correct : P15875305375985047542.Spec := by
  intro n
  simp only [A069879, Nat.add_sub_cancel]

end A069879

/-! ## A069879.P7144091973012348986

`A292918(n+1)-1`
-/

namespace A069879.P7144091973012348986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292918 (n + 1) - 1

end

end A069879.P7144091973012348986

namespace A069879

/-- `A292918(n+1)-1` -/
def P7144091973012348986.Spec : Prop :=
  ∀ n, P7144091973012348986.a n = A069879 (n + 1)

theorem P7144091973012348986.correct : P7144091973012348986.Spec := by
  intro n
  simp only [A069879, Nat.add_sub_cancel, A069879.P7144091973012348986.a, A069879.P15875305375985047542.a, A071917, A071917.P891086082951689253.a, A292918, A292918.P8931066894349998368.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069879

/-! ## A069879.P11129843621362132162

`∑[2*A060715(n+1)]`
-/

namespace A069879.P11129843621362132162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069879.P11129843621362132162

namespace A069879

/-- `∑[2*A060715(n+1)]` -/
def P11129843621362132162.Spec : Prop :=
  ∀ n, P11129843621362132162.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P16649942020837589593

`2*(∑[A108954(n+1)]-1)`
-/

namespace A069879.P16649942020837589593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A069879.P16649942020837589593

namespace A069879

/-- `2*(∑[A108954(n+1)]-1)` -/
def P16649942020837589593.Spec : Prop :=
  ∀ n, P16649942020837589593.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P15517055539900894700

`∑[2*(n-A307912(n+1))]`
-/

namespace A069879.P15517055539900894700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A307912 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069879.P15517055539900894700

namespace A069879

/-- `∑[2*(n-A307912(n+1))]` -/
def P15517055539900894700.Spec : Prop :=
  ∀ n, P15517055539900894700.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P8083128375055814408

`2*(∑[A056171(2*(n+1))]-1)`
-/

namespace A069879.P8083128375055814408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A069879.P8083128375055814408

namespace A069879

/-- `2*(∑[A056171(2*(n+1))]-1)` -/
def P8083128375055814408.Spec : Prop :=
  ∀ n, P8083128375055814408.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P11706896229793221857

`∑[2*A056171(A103517(n))]`
-/

namespace A069879.P11706896229793221857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056171 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069879.P11706896229793221857

namespace A069879

/-- `∑[2*A056171(A103517(n))]` -/
def P11706896229793221857.Spec : Prop :=
  ∀ n, P11706896229793221857.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P12764973416895779050

`2*(A066665(n)-A036234(n+1))`
-/

namespace A069879.P12764973416895779050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066665 n - A036234 (n + 1))

end

end A069879.P12764973416895779050

namespace A069879

/-- `2*(A066665(n)-A036234(n+1))` -/
def P12764973416895779050.Spec : Prop :=
  ∀ n, P12764973416895779050.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P5236186433211164751

`A071917(n+1)+A071917(n+2)-A060715(n+2)`
-/

namespace A069879.P5236186433211164751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (n + 1) + (A071917 (n + 2) - A060715 (n + 2))

end

end A069879.P5236186433211164751

namespace A069879

/-- `A071917(n+1)+A071917(n+2)-A060715(n+2)` -/
def P5236186433211164751.Spec : Prop :=
  ∀ n, P5236186433211164751.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P2983937108719258292

`A071917(n+1)+A071917(n+2)-A108954(n+2)`
-/

namespace A069879.P2983937108719258292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (n + 1) + (A071917 (n + 2) - A108954 (n + 2))

end

end A069879.P2983937108719258292

namespace A069879

/-- `A071917(n+1)+A071917(n+2)-A108954(n+2)` -/
def P2983937108719258292.Spec : Prop :=
  ∀ n, P2983937108719258292.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P17368648443554643039

`∑[2*A294602(2*(n+1))]`
-/

namespace A069879.P17368648443554643039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294602 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069879.P17368648443554643039

namespace A069879

/-- `∑[2*A294602(2*(n+1))]` -/
def P17368648443554643039.Spec : Prop :=
  ∀ n, P17368648443554643039.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P196721993095258595

`A005843(A071917(n+1))`
-/

namespace A069879.P196721993095258595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A071917 (n + 1)).toNat

end

end A069879.P196721993095258595

namespace A069879

/-- `A005843(A071917(n+1))` -/
def P196721993095258595.Spec : Prop :=
  ∀ n, P196721993095258595.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P17718465049896318945

`A004442(A292918(n+1))`
-/

namespace A069879.P17718465049896318945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A292918 (n + 1)).toNat

end

end A069879.P17718465049896318945

namespace A069879

/-- `A004442(A292918(n+1))` -/
def P17718465049896318945.Spec : Prop :=
  ∀ n, P17718465049896318945.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P262184579746678509

`2*A282516(A133263(n+1))`
-/

namespace A069879.P262184579746678509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282516 (A133263 (n + 1)).toNat

end

end A069879.P262184579746678509

namespace A069879

/-- `2*A282516(A133263(n+1))` -/
def P262184579746678509.Spec : Prop :=
  ∀ n, P262184579746678509.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P15408297066753849559

`and(A158525(n+4), A292918(n+1))`
-/

namespace A069879.P15408297066753849559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158525 (n + 4)) (A292918 (n + 1))

end

end A069879.P15408297066753849559

namespace A069879

/-- `and(A158525(n+4), A292918(n+1))` -/
def P15408297066753849559.Spec : Prop :=
  ∀ n, P15408297066753849559.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P8312778043374485379

`and(A002446(n), A292918(n+1))`
-/

namespace A069879.P8312778043374485379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A292918 (n + 1))

end

end A069879.P8312778043374485379

namespace A069879

/-- `and(A002446(n), A292918(n+1))` -/
def P8312778043374485379.Spec : Prop :=
  ∀ n, P8312778043374485379.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P13058235826931533410

`and(A005367(n), A292918(n+1))`
-/

namespace A069879.P13058235826931533410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A292918 (n + 1))

end

end A069879.P13058235826931533410

namespace A069879

/-- `and(A005367(n), A292918(n+1))` -/
def P13058235826931533410.Spec : Prop :=
  ∀ n, P13058235826931533410.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P10208753619463015825

`and(A286778(n), A292918(n+1))`
-/

namespace A069879.P10208753619463015825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286778 n) (A292918 (n + 1))

end

end A069879.P10208753619463015825

namespace A069879

/-- `and(A286778(n), A292918(n+1))` -/
def P10208753619463015825.Spec : Prop :=
  ∀ n, P10208753619463015825.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P10886101258753041000

`and(A143960(n+1), A292918(n+1))`
-/

namespace A069879.P10886101258753041000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A292918 (n + 1))

end

end A069879.P10886101258753041000

namespace A069879

/-- `and(A143960(n+1), A292918(n+1))` -/
def P10886101258753041000.Spec : Prop :=
  ∀ n, P10886101258753041000.a n = A069879 (n + 1)

end A069879

/-! ## A069879.P2553750425159747437

`and(A170940(n+1), A292918(n+1))`
-/

namespace A069879.P2553750425159747437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170940 (n + 1)) (A292918 (n + 1))

end

end A069879.P2553750425159747437

namespace A069879

/-- `and(A170940(n+1), A292918(n+1))` -/
def P2553750425159747437.Spec : Prop :=
  ∀ n, P2553750425159747437.a n = A069879 (n + 1)

end A069879

/-!
# A069881: Numbers n such that n and 2n+1 are both palindromes.

The programs for A069881, there is no canonical definition to state claims against.
-/

/-! ## A069881.P704745346564296298

`eq[A050782(n), A083965(n+1)]`
-/

namespace A069881.P704745346564296298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069881.P704745346564296298

/-! ## A069881.P5406908195496637026

`eq[A072137(n), A083965(n+1)]`
-/

namespace A069881.P5406908195496637026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069881.P5406908195496637026

/-! ## A069881.P2352726732640614287

`eq[A256756(n)+A256756(2*n+1), A000007(n)]`
-/

namespace A069881.P2352726732640614287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n + A256756 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069881.P2352726732640614287

/-! ## A069881.P13992973273154371413

`eq[A256756(n)+A256756(2*n+1), A000038(n)]`
-/

namespace A069881.P13992973273154371413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n + A256756 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069881.P13992973273154371413

/-! ## A069881.P6788751002771537704

`eq[A233583(A047813(2*n+1)), A262223(n)]`
-/

namespace A069881.P6788751002771537704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A047813 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069881.P6788751002771537704

/-!
# A069882: Numbers n such that n and 2n-1 are both palindromes.

The programs for A069882, the canonical program `A069882.P8569674765764534696` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069882 has offset 1).

The definition of A069882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069882.P15076904570185272913

`ogf((1-9x-9x^2-9x^3-9x^4-9x^5+50x^6)/(1-11x+10x^2))`
-/

namespace A069882.P15076904570185272913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9, -9, -9, -9, -9, 50] [1, -11, 10] n

end

end A069882.P15076904570185272913

namespace A069882

/-- `ogf((1-9x-9x^2-9x^3-9x^4-9x^5+50x^6)/(1-11x+10x^2))` -/
def P15076904570185272913.Spec : Prop :=
  ∀ n, P15076904570185272913.a n = A069882 (n + 1)

end A069882

/-! ## A069882.P8569674765764534696

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=66`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069882

/-- `11*a(n-1)-10*a(n-2)` -/
def P8569674765764534696.Spec : Prop :=
  ∀ n, P8569674765764534696.a n = A069882 (n + 1)

theorem P8569674765764534696.correct : P8569674765764534696.Spec := by
  intro n
  simp only [A069882, Nat.add_sub_cancel]

end A069882

/-!
# A069888: Self-inverse permutation of natural numbers induced by the automorphism DeepReverse_et_RotateHandshakes! acting on the parenthesizations encoded by A014486.

The programs for A069888, there is no canonical definition to state claims against.
-/

/-! ## A069888.P1699245996999132959

`A057501(A057164(n))`
-/

namespace A069888.P1699245996999132959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057164 n).toNat

end

end A069888.P1699245996999132959

/-! ## A069888.P10744113958024237092

`A082317(A082314(n))`
-/

namespace A069888.P10744113958024237092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A082314 n).toNat

end

end A069888.P10744113958024237092

/-! ## A069888.P17281206607351650922

`A082317(A057164(A082315(n)))`
-/

namespace A069888.P17281206607351650922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057164 (A082315 n).toNat).toNat

end

end A069888.P17281206607351650922

/-! ## A069888.P12997868587726255209

`A082317(A082313(A082319(n)))`
-/

namespace A069888.P12997868587726255209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A082313 (A082319 n).toNat).toNat

end

end A069888.P12997868587726255209

/-! ## A069888.P6146808013509087284

`A057502(A082313(n))`
-/

namespace A069888.P6146808013509087284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082313 n).toNat

end

end A069888.P6146808013509087284

/-! ## A069888.P16398667417928641860

`A069889(A082316(n))`
-/

namespace A069888.P16398667417928641860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A082316 n).toNat

end

end A069888.P16398667417928641860

/-! ## A069888.P16613972272279234020

`A057501(A069772(A069771(n)))`
-/

namespace A069888.P16613972272279234020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069772 (A069771 n).toNat).toNat

end

end A069888.P16613972272279234020

/-! ## A069888.P16970737641172905960

`A057164(A057502(n))`
-/

namespace A069888.P16970737641172905960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057502 n).toNat

end

end A069888.P16970737641172905960

/-! ## A069888.P13410918225978942485

`A057163(A082331(n))`
-/

namespace A069888.P13410918225978942485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082331 n).toNat

end

end A069888.P13410918225978942485

/-! ## A069888.P13156052860969962123

`A082332(A057163(n))`
-/

namespace A069888.P13156052860969962123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A057163 n).toNat

end

end A069888.P13156052860969962123

/-! ## A069888.P14837383754532261980

`A082313(A057501(n))`
-/

namespace A069888.P14837383754532261980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057501 n).toNat

end

end A069888.P14837383754532261980

/-! ## A069888.P9064685153309630259

`A082315(A069889(n))`
-/

namespace A069888.P9064685153309630259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A069889 n).toNat

end

end A069888.P9064685153309630259

/-! ## A069888.P12406839631157452593

`A082314(A082318(n))`
-/

namespace A069888.P12406839631157452593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082318 n).toNat

end

end A069888.P12406839631157452593

/-! ## A069888.P2282712234947083894

`A057501(A057163(A057506(n)))`
-/

namespace A069888.P2282712234947083894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057163 (A057506 n).toNat).toNat

end

end A069888.P2282712234947083894

/-! ## A069888.P16626424943550708166

`A057164(A069770(A057510(n)))`
-/

namespace A069888.P16626424943550708166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069770 (A057510 n).toNat).toNat

end

end A069888.P16626424943550708166

/-! ## A069888.P1671473135039761347

`A069772(A069889(A069772(n)))`
-/

namespace A069888.P1671473135039761347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A069889 (A069772 n).toNat).toNat

end

end A069888.P1671473135039761347

/-! ## A069888.P9787068654641910089

`A085170(A085161(A074684(n)))`
-/

namespace A069888.P9787068654641910089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085161 (A074684 n).toNat).toNat

end

end A069888.P9787068654641910089

/-! ## A069888.P4598852959379408808

`A082313(A082316(A082317(n)))`
-/

namespace A069888.P4598852959379408808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082316 (A082317 n).toNat).toNat

end

end A069888.P4598852959379408808

/-! ## A069888.P17856251869482459348

`A082319(A082313(A082321(n)))`
-/

namespace A069888.P17856251869482459348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082313 (A082321 n).toNat).toNat

end

end A069888.P17856251869482459348

/-! ## A069888.P10267257737092493100

`A082313(A082321(A082320(n)))`
-/

namespace A069888.P10267257737092493100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082321 (A082320 n).toNat).toNat

end

end A069888.P10267257737092493100

/-!
# A069889: Self-inverse permutation of natural numbers induced by the automorphism RotateHandshakes_et_DeepReverse! acting on the parenthesizations encoded by A014486.

The programs for A069889, there is no canonical definition to state claims against.
-/

/-! ## A069889.P3256460662375947860

`A057164(A057501(n))`
-/

namespace A069889.P3256460662375947860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057501 n).toNat

end

end A069889.P3256460662375947860

/-! ## A069889.P7991347959062357982

`A069888(A082315(n))`
-/

namespace A069889.P7991347959062357982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082315 n).toNat

end

end A069889.P7991347959062357982

/-! ## A069889.P5241622706591392187

`A082321(A082313(A082319(A082319(n))))`
-/

namespace A069889.P5241622706591392187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082313 (A082319 (A082319 n).toNat).toNat).toNat

end

end A069889.P5241622706591392187

/-! ## A069889.P8881237721250945216

`A057501(A082314(n))`
-/

namespace A069889.P8881237721250945216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082314 n).toNat

end

end A069889.P8881237721250945216

/-! ## A069889.P10705684880685774371

`A057502(A057164(n))`
-/

namespace A069889.P10705684880685774371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057164 n).toNat

end

end A069889.P10705684880685774371

/-! ## A069889.P12315732600674689511

`A082318(A082313(n))`
-/

namespace A069889.P12315732600674689511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A082313 n).toNat

end

end A069889.P12315732600674689511

/-! ## A069889.P5298333040243846247

`A082318(A057164(A082316(n)))`
-/

namespace A069889.P5298333040243846247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A057164 (A082316 n).toNat).toNat

end

end A069889.P5298333040243846247

/-! ## A069889.P2126289182205262352

`A082314(A057502(n))`
-/

namespace A069889.P2126289182205262352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057502 n).toNat

end

end A069889.P2126289182205262352

/-! ## A069889.P11253935728840104343

`A082316(A069888(n))`
-/

namespace A069889.P11253935728840104343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A069888 n).toNat

end

end A069889.P11253935728840104343

/-! ## A069889.P10927877251791073550

`A082313(A082317(n))`
-/

namespace A069889.P10927877251791073550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082317 n).toNat

end

end A069889.P10927877251791073550

/-! ## A069889.P5822008408293089260

`A057502(A057505(A057163(n)))`
-/

namespace A069889.P5822008408293089260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057505 (A057163 n).toNat).toNat

end

end A069889.P5822008408293089260

/-! ## A069889.P12585693649438773386

`A057502(A057163(A057506(n)))`
-/

namespace A069889.P12585693649438773386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057163 (A057506 n).toNat).toNat

end

end A069889.P12585693649438773386

/-! ## A069889.P2882175847771075547

`A069772(A057501(A069771(n)))`
-/

namespace A069889.P2882175847771075547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057501 (A069771 n).toNat).toNat

end

end A069889.P2882175847771075547

/-! ## A069889.P2431719999164163696

`A069772(A069888(A069772(n)))`
-/

namespace A069889.P2431719999164163696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A069888 (A069772 n).toNat).toNat

end

end A069889.P2431719999164163696

/-! ## A069889.P12663561199739199723

`A057164(A082317(A082316(n)))`
-/

namespace A069889.P12663561199739199723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082317 (A082316 n).toNat).toNat

end

end A069889.P12663561199739199723

/-! ## A069889.P6587646102806902246

`A082313(A057502(A082319(n)))`
-/

namespace A069889.P6587646102806902246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057502 (A082319 n).toNat).toNat

end

end A069889.P6587646102806902246

/-! ## A069889.P14271367490943852397

`A082313(A082316(A082321(n)))`
-/

namespace A069889.P14271367490943852397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082316 (A082321 n).toNat).toNat

end

end A069889.P14271367490943852397

/-! ## A069889.P12628960680104603916

`A057164(A082315(A082315(A082318(n))))`
-/

namespace A069889.P12628960680104603916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082315 (A082315 (A082318 n).toNat).toNat).toNat

end

end A069889.P12628960680104603916

/-! ## A069889.P5040647359549057641

`A082315(A057501(A082313(A082323(n))))`
-/

namespace A069889.P5040647359549057641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A057501 (A082313 (A082323 n).toNat).toNat).toNat

end

end A069889.P5040647359549057641

/-! ## A069889.P8551557844462500735

`A082324(A057502(A082313(A082320(n))))`
-/

namespace A069889.P8551557844462500735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A057502 (A082313 (A082320 n).toNat).toNat).toNat

end

end A069889.P8551557844462500735

/-!
# A069891: a(n) = Sum_{k=1..n} A007913(k), the squarefree part of k.

The programs for A069891, the canonical program `A069891.P9601038511984379204` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069891 has offset 0).

The definition of A069891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069891.P9601038511984379204

`A007913(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069891

/-- `A007913(n)+a(n-1)` -/
def P9601038511984379204.Spec : Prop :=
  ∀ n, P9601038511984379204.a n = A069891 n

theorem P9601038511984379204.correct : P9601038511984379204.Spec := by
  intro n
  simp only [A069891]

end A069891

/-! ## A069891.P1104977375695813464

`a(n-1)+n-A326128(n)` with `a(0)=0`
-/

namespace A069891.P1104977375695813464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A326128 n)

end

end A069891.P1104977375695813464

namespace A069891

/-- `a(n-1)+n-A326128(n)` -/
def P1104977375695813464.Spec : Prop :=
  ∀ n, P1104977375695813464.a n = A069891 n

end A069891

/-! ## A069891.P2319094271545110693

`∑[n-A326128(abs(1-n)+1)]`
-/

namespace A069891.P2319094271545110693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326128 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069891.P2319094271545110693

namespace A069891

/-- `∑[n-A326128(abs(1-n)+1)]` -/
def P2319094271545110693.Spec : Prop :=
  ∀ n, P2319094271545110693.a n = A069891 n

end A069891

/-! ## A069891.P2188317805688360397

`∑[A007913(A000007(n)+n)]-1`
-/

namespace A069891.P2188317805688360397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A069891.P2188317805688360397

namespace A069891

/-- `∑[A007913(A000007(n)+n)]-1` -/
def P2188317805688360397.Spec : Prop :=
  ∀ n, P2188317805688360397.a n = A069891 n

end A069891

/-! ## A069891.P5786860283998421888

`∑[A007913(n+1)]-A007913(n+1)`
-/

namespace A069891.P5786860283998421888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007913 (n + 1)

end

end A069891.P5786860283998421888

namespace A069891

/-- `∑[A007913(n+1)]-A007913(n+1)` -/
def P5786860283998421888.Spec : Prop :=
  ∀ n, P5786860283998421888.a n = A069891 n

end A069891

/-! ## A069891.P1328492873150918689

`A326128(n+1)+∑[n-A326128(n+1)]`
-/

namespace A069891.P1328492873150918689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069891.P1328492873150918689

namespace A069891

/-- `A326128(n+1)+∑[n-A326128(n+1)]` -/
def P1328492873150918689.Spec : Prop :=
  ∀ n, P1328492873150918689.a n = A069891 n

end A069891

/-! ## A069891.P1150150146162195416

`A002088(n+1)+A070236(n+1)-A007913(n+1)`
-/

namespace A069891.P1150150146162195416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A070236 (n + 1) - A007913 (n + 1))

end

end A069891.P1150150146162195416

namespace A069891

/-- `A002088(n+1)+A070236(n+1)-A007913(n+1)` -/
def P1150150146162195416.Spec : Prop :=
  ∀ n, P1150150146162195416.a n = A069891 n

end A069891

/-! ## A069891.P16342926749027236115

`∑[(n+1)/(A336642(n+1)+1)]-A055229(n+1)*A055231(n+1)`
-/

namespace A069891.P16342926749027236115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336642 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A055229 (n + 1) * A055231 (n + 1) : ℚ)

end

end A069891.P16342926749027236115

namespace A069891

/-- `∑[(n+1)/(A336642(n+1)+1)]-A055229(n+1)*A055231(n+1)` -/
def P16342926749027236115.Spec : Prop :=
  ∀ n, P16342926749027236115.a n = (A069891 n : ℚ)

end A069891

/-! ## A069891.P5377691713541867650

`∑[A117811(2*n+1)]-A117811(2*n+1)`
-/

namespace A069891.P5377691713541867650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117811 (2 * n + 1)

end

end A069891.P5377691713541867650

namespace A069891

/-- `∑[A117811(2*n+1)]-A117811(2*n+1)` -/
def P5377691713541867650.Spec : Prop :=
  ∀ n, P5377691713541867650.a n = A069891 n

end A069891

/-! ## A069891.P3009762445407850904

`∑[A364900(2*n+1)]-A364900(2*n+1)`
-/

namespace A069891.P3009762445407850904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364900 (2 * n + 1)

end

end A069891.P3009762445407850904

namespace A069891

/-- `∑[A364900(2*n+1)]-A364900(2*n+1)` -/
def P3009762445407850904.Spec : Prop :=
  ∀ n, P3009762445407850904.a n = A069891 n

end A069891

/-!
# A069894: Centered square numbers: a(n) = 4*n^2 + 4*n + 2.

The programs for A069894, the canonical program `A069894.P6207372148760126868` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069894 has offset 0).

The definition of A069894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+4*n+2` (program `A069894.P6207372148760126868`, by `A069894.P6207372148760126868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069894.P8609993528614468876

`(2*n+1)²+1`
-/

namespace A069894.P8609993528614468876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

end

end A069894.P8609993528614468876

namespace A069894

/-- `(2*n+1)²+1` -/
def P8609993528614468876.Spec : Prop :=
  ∀ n, (P8609993528614468876.a n : ℤ) = A069894 n

theorem P8609993528614468876.correct : P8609993528614468876.Spec := by
  intro n
  simp only [A069894, Nat.add_sub_cancel, A069894.P8609993528614468876.a, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069894

/-! ## A069894.P3875358414507424973

`ogf((2+4x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A069894.P3875358414507424973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 2] [1, -3, 3, -1] n

end

end A069894.P3875358414507424973

namespace A069894

/-- `ogf((2+4x+2x^2)/(1-3x+3x^2-x^3))` -/
def P3875358414507424973.Spec : Prop :=
  ∀ n, P3875358414507424973.a n = A069894 n

end A069894

/-! ## A069894.P6207372148760126868

`4*n²+4*n+2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A069894

/-- `4*n²+4*n+2` -/
def P6207372148760126868.Spec : Prop :=
  ∀ n, (P6207372148760126868.a n : ℤ) = A069894 n

theorem P6207372148760126868.correct : P6207372148760126868.Spec := by
  intro n
  simp only [A069894]

end A069894

/-! ## A069894.P17735419537261356123

`2*A001844(n)`
-/

namespace A069894.P17735419537261356123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001844 n

end

end A069894.P17735419537261356123

namespace A069894

/-- `2*A001844(n)` -/
def P17735419537261356123.Spec : Prop :=
  ∀ n, P17735419537261356123.a n = A069894 n

theorem P17735419537261356123.correct : P17735419537261356123.Spec := by
  intro n
  simp only [A069894, Nat.add_sub_cancel, A069894.P17735419537261356123.a, A069894.P6207372148760126868.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069894

/-! ## A069894.P14747585488709041112

`A002522(2*n+1)`
-/

namespace A069894.P14747585488709041112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (2 * n + 1)

end

end A069894.P14747585488709041112

namespace A069894

/-- `A002522(2*n+1)` -/
def P14747585488709041112.Spec : Prop :=
  ∀ n, P14747585488709041112.a n = A069894 n

theorem P14747585488709041112.correct : P14747585488709041112.Spec := by
  intro n
  simp only [A069894, Nat.add_sub_cancel, A069894.P14747585488709041112.a, A069894.P6207372148760126868.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069894

/-! ## A069894.P3116832547982503860

`A261327(4*n+2)`
-/

namespace A069894.P3116832547982503860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (4 * n + 2)

end

end A069894.P3116832547982503860

namespace A069894

/-- `A261327(4*n+2)` -/
def P3116832547982503860.Spec : Prop :=
  ∀ n, P3116832547982503860.a n = A069894 n

end A069894

/-! ## A069894.P3213446065461405448

`or(2, ∑[8*n])`
-/

namespace A069894.P3213446065461405448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069894.P3213446065461405448

namespace A069894

/-- `or(2, ∑[8*n])` -/
def P3213446065461405448.Spec : Prop :=
  ∀ n, (P3213446065461405448.a n : ℤ) = A069894 n

end A069894

/-! ## A069894.P6387947796301116761

`xor(2, ∑[8*n])`
-/

namespace A069894.P6387947796301116761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069894.P6387947796301116761

namespace A069894

/-- `xor(2, ∑[8*n])` -/
def P6387947796301116761.Spec : Prop :=
  ∀ n, (P6387947796301116761.a n : ℤ) = A069894 n

end A069894

/-! ## A069894.P12586587189475474481

`record[xor(1, n)²+1]`
-/

namespace A069894.P12586587189475474481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069894.P12586587189475474481

namespace A069894

/-- `record[xor(1, n)²+1]` -/
def P12586587189475474481.Spec : Prop :=
  ∀ n, (P12586587189475474481.a n : ℤ) = A069894 n

end A069894

/-! ## A069894.P13671615595423020226

`abs(xor(Δ[n²]², -1))`
-/

namespace A069894.P13671615595423020226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (-1)|

end

end A069894.P13671615595423020226

namespace A069894

/-- `abs(xor(Δ[n²]², -1))` -/
def P13671615595423020226.Spec : Prop :=
  ∀ n, P13671615595423020226.a n = A069894 n

end A069894

/-! ## A069894.P4519360331210545585

`-xor(Δ[n²]², -1)`
-/

namespace A069894.P4519360331210545585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (-1)

end

end A069894.P4519360331210545585

namespace A069894

/-- `-xor(Δ[n²]², -1)` -/
def P4519360331210545585.Spec : Prop :=
  ∀ n, P4519360331210545585.a n = A069894 n

end A069894

/-! ## A069894.P6186041453746758535

`filter[n²+1, val(#, 2)]`
-/

namespace A069894.P6186041453746758535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j) 2 = 1) n)

end

end A069894.P6186041453746758535

namespace A069894

/-- `filter[n²+1, val(#, 2)]` -/
def P6186041453746758535.Spec : Prop :=
  ∀ n, (P6186041453746758535.a n : ℤ) = A069894 n

end A069894

/-! ## A069894.P1187905104231915647

`lcm(2, Δ[n²]²+1)`
-/

namespace A069894.P1187905104231915647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1)

end

end A069894.P1187905104231915647

namespace A069894

/-- `lcm(2, Δ[n²]²+1)` -/
def P1187905104231915647.Spec : Prop :=
  ∀ n, (P1187905104231915647.a n : ℤ) = A069894 n

end A069894

/-! ## A069894.P15561755715882400854

`ceil(2/Δ[atan(2*n)])`
-/

namespace A069894.P15561755715882400854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (f1 (n + 1) - f1 n)⌉

end

end A069894.P15561755715882400854

namespace A069894

/-- `ceil(2/Δ[atan(2*n)])` -/
def P15561755715882400854.Spec : Prop :=
  ∀ n, P15561755715882400854.a n = A069894 n

end A069894

/-! ## A069894.P3478661127071726848

`∑[floor(4/acot(2*n))]`
-/

namespace A069894.P3478661127071726848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot (2 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069894.P3478661127071726848

namespace A069894

/-- `∑[floor(4/acot(2*n))]` -/
def P3478661127071726848.Spec : Prop :=
  ∀ n, P3478661127071726848.a n = A069894 n

end A069894

/-! ## A069894.P15491301804293440410

`∑[a(n-1)+8]` with `a(0)=2, a(1)=8`
-/

namespace A069894.P15491301804293440410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069894.P15491301804293440410

namespace A069894

/-- `∑[a(n-1)+8]` -/
def P15491301804293440410.Spec : Prop :=
  ∀ n, (P15491301804293440410.a n : ℤ) = A069894 n

end A069894

/-! ## A069894.P13684292118300379538

`∑[ogf((2+4x+2x^2)/(1-2x+x^2))]`
-/

namespace A069894.P13684292118300379538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069894.P13684292118300379538

namespace A069894

/-- `∑[ogf((2+4x+2x^2)/(1-2x+x^2))]` -/
def P13684292118300379538.Spec : Prop :=
  ∀ n, P13684292118300379538.a n = A069894 n

end A069894

/-! ## A069894.P9139604911847284370

`abs(a(n-1)+8*n)` with `a(0)=2`
-/

namespace A069894.P9139604911847284370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 8 * n

end

end A069894.P9139604911847284370

namespace A069894

/-- `abs(a(n-1)+8*n)` -/
def P9139604911847284370.Spec : Prop :=
  ∀ n, (P9139604911847284370.a n : ℤ) = A069894 n

theorem P9139604911847284370.correct : P9139604911847284370.Spec := by
  intro n
  induction n with
  | zero => simp [A069894, A069894.P9139604911847284370.a, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069894, Nat.add_sub_cancel, A069894.P9139604911847284370.a, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069894

/-! ## A069894.P7266494617790906971

`Δ[C(2*n+1, 3)+n]`
-/

namespace A069894.P7266494617790906971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069894.P7266494617790906971

namespace A069894

/-- `Δ[C(2*n+1, 3)+n]` -/
def P7266494617790906971.Spec : Prop :=
  ∀ n, P7266494617790906971.a n = A069894 n

theorem P7266494617790906971.correct : P7266494617790906971.Spec := by
  intro n
  simp only [A069894, Nat.add_sub_cancel, A069894.P7266494617790906971.f1, A069894.P7266494617790906971.a, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069894

/-! ## A069894.P2716386400643149291

`floor(a(n-1)+8*n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A069894.P2716386400643149291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 8 * n

end

end A069894.P2716386400643149291

namespace A069894

/-- `floor(a(n-1)+8*n)` -/
def P2716386400643149291.Spec : Prop :=
  ∀ n, (P2716386400643149291.a n : ℤ) = A069894 n

theorem P2716386400643149291.correct : P2716386400643149291.Spec := by
  intro n
  induction n with
  | zero => simp [A069894, A069894.P2716386400643149291.a, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069894, Nat.add_sub_cancel, A069894.P2716386400643149291.a, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069894

/-!
# A069895: 2^a(n) divides (2n)^(2n): exponent of 2 in (2n)^(2n).

The programs for A069895, the canonical program `A069895.P6990373946246977319` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069895 has offset 1).

The definition of A069895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069895.P5883597389004782791

`2*A091512(n+1)`
-/

namespace A069895.P5883597389004782791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091512 (n + 1)

end

end A069895.P5883597389004782791

namespace A069895

/-- `2*A091512(n+1)` -/
def P5883597389004782791.Spec : Prop :=
  ∀ n, P5883597389004782791.a n = A069895 (n + 1)

end A069895

/-! ## A069895.P6990373946246977319

`2*(n+1)*A001511(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069895

/-- `2*(n+1)*A001511(n+1)` -/
def P6990373946246977319.Spec : Prop :=
  ∀ n, P6990373946246977319.a n = A069895 (n + 1)

theorem P6990373946246977319.correct : P6990373946246977319.Spec := by
  intro n
  simp only [A069895, Nat.add_sub_cancel]

end A069895

/-! ## A069895.P5950823332286072188

`(n+1)*(val((n+1)², 2)+2)`
-/

namespace A069895.P5950823332286072188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2)

end

end A069895.P5950823332286072188

namespace A069895

/-- `(n+1)*(val((n+1)², 2)+2)` -/
def P5950823332286072188.Spec : Prop :=
  ∀ n, (P5950823332286072188.a n : ℤ) = A069895 (n + 1)

end A069895

/-! ## A069895.P17880761665617338914

`(n+1)*val(∑[8*n+4], 2)`
-/

namespace A069895.P17880761665617338914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A069895.P17880761665617338914

namespace A069895

/-- `(n+1)*val(∑[8*n+4], 2)` -/
def P17880761665617338914.Spec : Prop :=
  ∀ n, (P17880761665617338914.a n : ℤ) = A069895 (n + 1)

end A069895

/-! ## A069895.P2236970954770778481

`(n+1)*log2(xor(n, -(n+2))²)`
-/

namespace A069895.P2236970954770778481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 : ℝ)

end

end A069895.P2236970954770778481

namespace A069895

/-- `(n+1)*log2(xor(n, -(n+2))²)` -/
def P2236970954770778481.Spec : Prop :=
  ∀ n, P2236970954770778481.a n = (A069895 (n + 1) : ℝ)

end A069895

/-! ## A069895.P7928525165664022007

`2*(val(n+1, 2)+1)*(n+1)`
-/

namespace A069895.P7928525165664022007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.valuation (n + 1) 2 + 1) * (n + 1))

end

end A069895.P7928525165664022007

namespace A069895

/-- `2*(val(n+1, 2)+1)*(n+1)` -/
def P7928525165664022007.Spec : Prop :=
  ∀ n, (P7928525165664022007.a n : ℤ) = A069895 (n + 1)

end A069895

/-! ## A069895.P6591563259208190890

`(n+1)*log2((xor(n, n+1)+1)²)`
-/

namespace A069895.P6591563259208190890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 ((Nat.xor n (n + 1) + 1) ^ 2 : ℝ)

end

end A069895.P6591563259208190890

namespace A069895

/-- `(n+1)*log2((xor(n, n+1)+1)²)` -/
def P6591563259208190890.Spec : Prop :=
  ∀ n, P6591563259208190890.a n = (A069895 (n + 1) : ℝ)

end A069895

/-! ## A069895.P554428677604925290

`2*(n+1)*log2(xor(n, n+1)+1)`
-/

namespace A069895.P554428677604925290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℝ) * Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A069895.P554428677604925290

namespace A069895

/-- `2*(n+1)*log2(xor(n, n+1)+1)` -/
def P554428677604925290.Spec : Prop :=
  ∀ n, P554428677604925290.a n = (A069895 (n + 1) : ℝ)

end A069895

/-! ## A069895.P11324188683727517769

`Δ[A249153(n)]`
-/

namespace A069895.P11324188683727517769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069895.P11324188683727517769

namespace A069895

/-- `Δ[A249153(n)]` -/
def P11324188683727517769.Spec : Prop :=
  ∀ n, P11324188683727517769.a n = A069895 (n + 1)

end A069895

/-! ## A069895.P2314869431547090416

`(n+1)*Δ[A178207(n)]`
-/

namespace A069895.P2314869431547090416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A069895.P2314869431547090416

namespace A069895

/-- `(n+1)*Δ[A178207(n)]` -/
def P2314869431547090416.Spec : Prop :=
  ∀ n, P2314869431547090416.a n = A069895 (n + 1)

end A069895

/-! ## A069895.P13463615946677214057

`(n+1)*A366839(n+1)`
-/

namespace A069895.P13463615946677214057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A366839 (n + 1)

end

end A069895.P13463615946677214057

namespace A069895

/-- `(n+1)*A366839(n+1)` -/
def P13463615946677214057.Spec : Prop :=
  ∀ n, P13463615946677214057.a n = A069895 (n + 1)

theorem P13463615946677214057.correct : P13463615946677214057.Spec := by
  intro n
  simp only [A069895, Nat.add_sub_cancel, A069895.P13463615946677214057.a, A069895.P6990373946246977319.a, A001511, A001511.P17146462531039486101.a, A366839, A366839.P8593895561095689137.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069895

/-! ## A069895.P2745813845982173724

`(n+1)*(A037227(n+1)+1)`
-/

namespace A069895.P2745813845982173724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A037227 (n + 1) + 1)

end

end A069895.P2745813845982173724

namespace A069895

/-- `(n+1)*(A037227(n+1)+1)` -/
def P2745813845982173724.Spec : Prop :=
  ∀ n, P2745813845982173724.a n = A069895 (n + 1)

theorem P2745813845982173724.correct : P2745813845982173724.Spec := by
  intro n
  simp only [A069895, Nat.add_sub_cancel, A069895.P2745813845982173724.a, A069895.P6990373946246977319.a, A001511, A001511.P17146462531039486101.a, A037227, A037227.P1481052513991100259.a, A006519, A006519.P10435570611646570274.a, A007814, A007814.P13537437864234730737.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069895

/-! ## A069895.P3034576873219331408

`(A007814(n+1)+1)*2*(n+1)`
-/

namespace A069895.P3034576873219331408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * (2 * (n + 1) : ℤ)

end

end A069895.P3034576873219331408

namespace A069895

/-- `(A007814(n+1)+1)*2*(n+1)` -/
def P3034576873219331408.Spec : Prop :=
  ∀ n, P3034576873219331408.a n = A069895 (n + 1)

theorem P3034576873219331408.correct : P3034576873219331408.Spec := by
  intro n
  simp only [A069895, Nat.add_sub_cancel, A069895.P3034576873219331408.a, A069895.P6990373946246977319.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069895

/-! ## A069895.P10528523433156259194

`A249153(n+1)-A249153(n)`
-/

namespace A069895.P10528523433156259194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 (n + 1) - A249153 n

end

end A069895.P10528523433156259194

namespace A069895

/-- `A249153(n+1)-A249153(n)` -/
def P10528523433156259194.Spec : Prop :=
  ∀ n, P10528523433156259194.a n = A069895 (n + 1)

end A069895

/-! ## A069895.P11317019519760426752

`A145229(n)/A054844(n+1)`
-/

namespace A069895.P11317019519760426752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145229 n : ℚ) / (A054844 (n + 1) : ℚ)

end

end A069895.P11317019519760426752

namespace A069895

/-- `A145229(n)/A054844(n+1)` -/
def P11317019519760426752.Spec : Prop :=
  ∀ n, P11317019519760426752.a n = (A069895 (n + 1) : ℚ)

end A069895

/-! ## A069895.P11187272621668579753

`(n+1)*A002326(A006519(n+1))`
-/

namespace A069895.P11187272621668579753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002326 (A006519 (n + 1)).toNat

end

end A069895.P11187272621668579753

namespace A069895

/-- `(n+1)*A002326(A006519(n+1))` -/
def P11187272621668579753.Spec : Prop :=
  ∀ n, P11187272621668579753.a n = A069895 (n + 1)

end A069895

/-! ## A069895.P13681945918687603079

`A000265(n+1)*A183037(n+1)`
-/

namespace A069895.P13681945918687603079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A183037 (n + 1)

end

end A069895.P13681945918687603079

namespace A069895

/-- `A000265(n+1)*A183037(n+1)` -/
def P13681945918687603079.Spec : Prop :=
  ∀ n, P13681945918687603079.a n = A069895 (n + 1)

end A069895

/-! ## A069895.P13856623278962013590

`lcm(A091512(n+1), A183037(n+1))`
-/

namespace A069895.P13856623278962013590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091512 (n + 1)) (A183037 (n + 1))

end

end A069895.P13856623278962013590

namespace A069895

/-- `lcm(A091512(n+1), A183037(n+1))` -/
def P13856623278962013590.Spec : Prop :=
  ∀ n, (P13856623278962013590.a n : ℤ) = A069895 (n + 1)

end A069895

/-! ## A069895.P12064392522837602983

`∑{d}[n+1, A000010(#)*A100892((n+1)/#)]`
-/

namespace A069895.P12064392522837602983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A100892 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069895.P12064392522837602983

namespace A069895

/-- `∑{d}[n+1, A000010(#)*A100892((n+1)/#)]` -/
def P12064392522837602983.Spec : Prop :=
  ∀ n, P12064392522837602983.a n = A069895 (n + 1)

end A069895

/-!
# A069896: GCD of consecutive values of Chowla's function.

The programs for A069896, the canonical program `A069896.P13065951481713959796` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069896 has offset 1).

The definition of A069896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069896.P13065951481713959796

`gcd(A048050(n+1), A053246(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069896

/-- `gcd(A048050(n+1), A053246(n+1))` -/
def P13065951481713959796.Spec : Prop :=
  ∀ n, (P13065951481713959796.a n : ℤ) = A069896 (n + 1)

theorem P13065951481713959796.correct : P13065951481713959796.Spec := by
  intro n
  simp only [A069896, Nat.add_sub_cancel]

end A069896

/-! ## A069896.P11287911775219383857

`gcd(A053246(n+1), A346880(A008619(n)))`
-/

namespace A069896.P11287911775219383857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053246 (n + 1)) (A346880 (A008619 n).toNat)

end

end A069896.P11287911775219383857

namespace A069896

/-- `gcd(A053246(n+1), A346880(A008619(n)))` -/
def P11287911775219383857.Spec : Prop :=
  ∀ n, (P11287911775219383857.a n : ℤ) = A069896 (n + 1)

end A069896

/-! ## A069896.P9937491251788798623

`gcd(∑{d}[n+1, (#%(n+1))%#²], A048050(n+2))`
-/

namespace A069896.P9937491251788798623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d % (n + 1) % d ^ 2 : ℕ) : ℤ) (A048050 (n + 2))

end

end A069896.P9937491251788798623

namespace A069896

/-- `gcd(∑{d}[n+1, (#%(n+1))%#²], A048050(n+2))` -/
def P9937491251788798623.Spec : Prop :=
  ∀ n, (P9937491251788798623.a n : ℤ) = A069896 (n + 1)

end A069896

/-! ## A069896.P1691019917790181419

`gcd(Δ[A048050(n+1)], A048050(n+2))`
-/

namespace A069896.P1691019917790181419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A048050 (n + 2))

end

end A069896.P1691019917790181419

namespace A069896

/-- `gcd(Δ[A048050(n+1)], A048050(n+2))` -/
def P1691019917790181419.Spec : Prop :=
  ∀ n, (P1691019917790181419.a n : ℤ) = A069896 (n + 1)

end A069896

/-! ## A069896.P9382862826148808022

`gcd(1-A173455(n+1), Δ[A173455(n+1)])`
-/

namespace A069896.P9382862826148808022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A173455 (n + 1)) (f1 (n + 1) - f1 n)

end

end A069896.P9382862826148808022

namespace A069896

/-- `gcd(1-A173455(n+1), Δ[A173455(n+1)])` -/
def P9382862826148808022.Spec : Prop :=
  ∀ n, (P9382862826148808022.a n : ℤ) = A069896 (n + 1)

end A069896

/-!
# A069897: Integer quotient of the largest and the smallest prime factors of n, with a(1) = 1.

The programs for A069897, the canonical program `A069897.P4691380075408580993` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069897 has offset 1).

The definition of A069897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A020639, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069897.P4691380075408580993

`floor(A006530(n+1)/A020639(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A069897

/-- `floor(A006530(n+1)/A020639(n+1))` -/
def P4691380075408580993.Spec : Prop :=
  ∀ n, P4691380075408580993.a n = A069897 (n + 1)

theorem P4691380075408580993.correct : P4691380075408580993.Spec := by
  intro n
  simp only [A069897, Nat.add_sub_cancel]

end A069897

/-! ## A069897.P3275705797292822963

`floor(A130064(n+1)/(n+1))`
-/

namespace A069897.P3275705797292822963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130064 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A069897.P3275705797292822963

namespace A069897

/-- `floor(A130064(n+1)/(n+1))` -/
def P3275705797292822963.Spec : Prop :=
  ∀ n, P3275705797292822963.a n = A069897 (n + 1)

end A069897

/-! ## A069897.P11273782711993643186

`floor((n+1)/A130065(n+1))`
-/

namespace A069897.P11273782711993643186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A130065 (n + 1) : ℚ)⌋

end

end A069897.P11273782711993643186

namespace A069897

/-- `floor((n+1)/A130065(n+1))` -/
def P11273782711993643186.Spec : Prop :=
  ∀ n, P11273782711993643186.a n = A069897 (n + 1)

end A069897

/-! ## A069897.P13042444149280492071

`A028310(A120454(n+1)-1)`
-/

namespace A069897.P13042444149280492071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A120454 (n + 1) - 1).toNat

end

end A069897.P13042444149280492071

namespace A069897

/-- `A028310(A120454(n+1)-1)` -/
def P13042444149280492071.Spec : Prop :=
  ∀ n, P13042444149280492071.a n = A069897 (n + 1)

end A069897

/-! ## A069897.P16023335196263880315

`A120454(n+1)-A143731(n+1)`
-/

namespace A069897.P16023335196263880315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1) - A143731 (n + 1)

end

end A069897.P16023335196263880315

namespace A069897

/-- `A120454(n+1)-A143731(n+1)` -/
def P16023335196263880315.Spec : Prop :=
  ∀ n, P16023335196263880315.a n = A069897 (n + 1)

end A069897

/-! ## A069897.P3882370453563473950

`floor(A032742(n+1)/A052126(n+1))`
-/

namespace A069897.P3882370453563473950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032742 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)⌋

end

end A069897.P3882370453563473950

namespace A069897

/-- `floor(A032742(n+1)/A052126(n+1))` -/
def P3882370453563473950.Spec : Prop :=
  ∀ n, P3882370453563473950.a n = A069897 (n + 1)

end A069897

/-! ## A069897.P8340635944335766093

`(A006530(n+1)-A069859(n+1))/A020639(n+1)`
-/

namespace A069897.P8340635944335766093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) - A069859 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A069897.P8340635944335766093

namespace A069897

/-- `(A006530(n+1)-A069859(n+1))/A020639(n+1)` -/
def P8340635944335766093.Spec : Prop :=
  ∀ n, P8340635944335766093.a n = (A069897 (n + 1) : ℚ)

end A069897

/-!
# A069898: Smallest of the largest prime divisors of all the composite numbers between prime(n) and prime(n+1).

The programs for A069898, there is no canonical definition to state claims against.
-/

/-! ## A069898.P10576955429144748917

`A020639(A076977(n+2)%A077006(n+4))`
-/

namespace A069898.P10576955429144748917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A076977 (n + 2)) (A077006 (n + 4))).toNat

end

end A069898.P10576955429144748917

/-! ## A069898.P4390384112192003126

`A105561(A105567(2*n)+A105550(n+5))`
-/

namespace A069898.P4390384112192003126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105561 (A105567 (2 * n) + A105550 (n + 5)).toNat

end

end A069898.P4390384112192003126

/-! ## A069898.P5178162650808255491

`A020639(A076977(n+2))`
-/

namespace A069898.P5178162650808255491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076977 (n + 2)).toNat

end

end A069898.P5178162650808255491

/-! ## A069898.P2050897646298667346

`p?[A291363(A076977(n+1))]`
-/

namespace A069898.P2050897646298667346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291363 (A076977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069898.P2050897646298667346

/-! ## A069898.P17054223356350365653

`p?[A239550(n)²²*A097285(n+1)]`
-/

namespace A069898.P17054223356350365653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239550 n ^ 2) ^ 2 * A097285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069898.P17054223356350365653

/-!
# A069899: Numbers k such that the integer quotient of largest and smallest prime factors of k is 1.

The programs for A069899, the canonical program `A069899.P9389504675875476274` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069899 has offset 1).

The definition of A069899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069899.P16394661791480394855

`A081306(n+2)`
-/

namespace A069899.P16394661791480394855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 2)

end

end A069899.P16394661791480394855

namespace A069899

/-- `A081306(n+2)` -/
def P16394661791480394855.Spec : Prop :=
  ∀ n, P16394661791480394855.a n = A069899 (n + 1)

end A069899

/-! ## A069899.P3063315471892349357

`∪[A089341(n+1), A246655(n+1)]`
-/

namespace A069899.P3063315471892349357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069899.P3063315471892349357

namespace A069899

/-- `∪[A089341(n+1), A246655(n+1)]` -/
def P3063315471892349357.Spec : Prop :=
  ∀ n, (P3063315471892349357.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P17874735063768091544

`record[A081306(or(n, A000038(n)))]`
-/

namespace A069899.P17874735063768091544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069899.P17874735063768091544

namespace A069899

/-- `record[A081306(or(n, A000038(n)))]` -/
def P17874735063768091544.Spec : Prop :=
  ∀ n, P17874735063768091544.a n = A069899 (n + 1)

end A069899

/-! ## A069899.P9389504675875476274

`eq[1, A069897(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A069899

/-- `eq[1, A069897(n+2)]+2` -/
def P9389504675875476274.Spec : Prop :=
  ∀ n, (P9389504675875476274.a n : ℤ) = A069899 (n + 1)

theorem P9389504675875476274.correct : P9389504675875476274.Spec := by
  intro n
  simp only [A069899, Nat.add_sub_cancel]

end A069899

/-! ## A069899.P5906009993516760980

`lt[A120454(n+2), 3]+2`
-/

namespace A069899.P5906009993516760980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A069899.P5906009993516760980

namespace A069899

/-- `lt[A120454(n+2), 3]+2` -/
def P5906009993516760980.Spec : Prop :=
  ∀ n, (P5906009993516760980.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P8872058702223057184

`eq[2, sqrt(a(A069897(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A069899.P8872058702223057184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  Real.sqrt (f2 (A069897 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A069899.P8872058702223057184

namespace A069899

/-- `eq[2, sqrt(a(A069897(n)))]` -/
def P8872058702223057184.Spec : Prop :=
  ∀ n, (P8872058702223057184.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P12337260987915735262

`lt[n*atan(A069897(n+1)), n]+1`
-/

namespace A069899.P12337260987915735262
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.arctan (A069897 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A069899.P12337260987915735262

namespace A069899

/-- `lt[n*atan(A069897(n+1)), n]+1` -/
def P12337260987915735262.Spec : Prop :=
  ∀ n, (P12337260987915735262.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P17659070423787119019

`eq[2, A000040(a(A069897(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A069899.P17659070423787119019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000040 (f2 (A069897 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069899.P17659070423787119019

namespace A069899

/-- `eq[2, A000040(a(A069897(n)))]` -/
def P17659070423787119019.Spec : Prop :=
  ∀ n, (P17659070423787119019.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P2369445554817824722

`lt[A130064(round(acot(n)+n)), 2*n]`
-/

namespace A069899.P2369445554817824722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069899.P2369445554817824722

namespace A069899

/-- `lt[A130064(round(acot(n)+n)), 2*n]` -/
def P2369445554817824722.Spec : Prop :=
  ∀ n, (P2369445554817824722.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P438653631907133706

`lt[A130064(n+1), 2*n+1]+1`
-/

namespace A069899.P438653631907133706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069899.P438653631907133706

namespace A069899

/-- `lt[A130064(n+1), 2*n+1]+1` -/
def P438653631907133706.Spec : Prop :=
  ∀ n, (P438653631907133706.a n : ℤ) = A069899 (n + 1)

end A069899

/-! ## A069899.P807802235540009848

`A020725(lt[A054576(2*(n+1)), A052126(2*(n+1))])`
-/

namespace A069899.P807802235540009848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069899.P807802235540009848

namespace A069899

/-- `A020725(lt[A054576(2*(n+1)), A052126(2*(n+1))])` -/
def P807802235540009848.Spec : Prop :=
  ∀ n, P807802235540009848.a n = A069899 (n + 1)

end A069899

