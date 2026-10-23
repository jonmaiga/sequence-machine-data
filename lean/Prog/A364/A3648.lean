import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A364800: The number of iterations that n requires to reach 1 under the map x -> A356874(x).

The programs for A364800, the canonical program `A364800.P7472220239797360408` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364800 has offset 1).

The definition of A364800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356874, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364800.P7472220239797360408

`a(A356874(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364800

/-- `a(A356874(n+1)-1)+1` -/
def P7472220239797360408.Spec : Prop :=
  ∀ n, (P7472220239797360408.a n : ℤ) = A364800 (n + 1)

theorem P7472220239797360408.correct : P7472220239797360408.Spec := by
  intro n
  simp only [A364800, Nat.add_sub_cancel]

end A364800

/-! ## A364800.P9383855412246097637

`ceil(log(∑[A374433(3*n)]))`
-/

namespace A364800.P9383855412246097637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A364800.P9383855412246097637

namespace A364800

/-- `ceil(log(∑[A374433(3*n)]))` -/
def P9383855412246097637.Spec : Prop :=
  ∀ n, P9383855412246097637.a n = A364800 (n + 1)

end A364800

/-! ## A364800.P7762322428780432666

`floor(log(A098374(2*n+1)))`
-/

namespace A364800.P7762322428780432666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A098374 (2 * n + 1) : ℝ)⌋

end

end A364800.P7762322428780432666

namespace A364800

/-- `floor(log(A098374(2*n+1)))` -/
def P7762322428780432666.Spec : Prop :=
  ∀ n, P7762322428780432666.a n = A364800 (n + 1)

end A364800

/-! ## A364800.P9888677057120957821

`A071578(A182049(n+2))`
-/

namespace A364800.P9888677057120957821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071578 (A182049 (n + 2)).toNat

end

end A364800.P9888677057120957821

namespace A364800

/-- `A071578(A182049(n+2))` -/
def P9888677057120957821.Spec : Prop :=
  ∀ n, P9888677057120957821.a n = A364800 (n + 1)

end A364800

/-! ## A364800.P12219541611525225607

`A084558(A383014(2*n+1)-(n+1))`
-/

namespace A364800.P12219541611525225607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A383014 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A364800.P12219541611525225607

namespace A364800

/-- `A084558(A383014(2*n+1)-(n+1))` -/
def P12219541611525225607.Spec : Prop :=
  ∀ n, P12219541611525225607.a n = A364800 (n + 1)

end A364800

/-!
# A364801: The number of iterations that n requires to reach a fixed point under the map x -> A022290(x).

The programs for A364801, the canonical program `A364801.P17417832708572255058` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364801 has offset 0).

The definition of A364801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364801.P17417832708572255058

`a(A022290(n))+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A364801

/-- `a(A022290(n))+1` -/
def P17417832708572255058.Spec : Prop :=
  ∀ n, (P17417832708572255058.a n : ℤ) = A364801 n

theorem P17417832708572255058.correct : P17417832708572255058.Spec := by
  intro n
  simp only [A364801]

end A364801

/-!
# A364802: Smallest number that reaches 1 after n iterations of the map x -> A356874(x).

The programs for A364802, there is no canonical definition to state claims against.
-/

/-! ## A364802.P11532448225485397637

`A247648(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A364802.P11532448225485397637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A247648 (a (n - 1)).toNat

end

end A364802.P11532448225485397637

/-! ## A364802.P15222079613078363113

`A385890(a(n-1)+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A364802.P15222079613078363113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A385890 (a (n - 1) + 1).toNat - 1

end

end A364802.P15222079613078363113

/-! ## A364802.P8749508081720126060

`A122620(A390560(n))`
-/

namespace A364802.P8749508081720126060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A390560 n).toNat

end

end A364802.P8749508081720126060

/-!
# A364803: Smallest number that reaches a fixed point after n iterations of the map x -> A022290(x).

The programs for A364803, there is no canonical definition to state claims against.
-/

/-! ## A364803.P14421407363022858125

`A003754(a(n-1)+1)` with `a(0)=0, a(1)=4`
-/

namespace A364803.P14421407363022858125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A003754 (a (n - 1) + 1).toNat

end

end A364803.P14421407363022858125

/-!
# A364804: a(n) is the smallest number k such that the number of prime divisors (counted with multiplicity) of the n numbers from k through k+n-1 are in nondescending order.

The programs for A364804, there is no canonical definition to state claims against.
-/

/-! ## A364804.P5390888257765185983

`A361703(or(n, A361705(n)))`
-/

namespace A364804.P5390888257765185983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361703 (Int.lor (n : ℤ) (A361705 n)).toNat

end

end A364804.P5390888257765185983

/-! ## A364804.P14347846655508525462

`A242415(A361636(and(n, -2)))`
-/

namespace A364804.P14347846655508525462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (A361636 (Int.land (n : ℤ) (-2)).toNat).toNat

end

end A364804.P14347846655508525462

/-! ## A364804.P7889316381883488019

`A361703(A006530((n+1)!))`
-/

namespace A364804.P7889316381883488019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361703 (A006530 (Nat.factorial (n + 1))).toNat

end

end A364804.P7889316381883488019

/-! ## A364804.P11076750259506297220

`A293507(or(1, A303166(n+1)))`
-/

namespace A364804.P11076750259506297220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293507 (Int.lor 1 (A303166 (n + 1))).toNat

end

end A364804.P11076750259506297220

/-!
# A364809: Number of partitions of n with at most five part sizes.

The programs for A364809, there is no canonical definition to state claims against.
-/

/-! ## A364809.P9788202029235086590

`A000041(n)-A249344(A126637(3*n+5))`
-/

namespace A364809.P9788202029235086590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A249344 (A126637 (3 * n + 5)).toNat

end

end A364809.P9788202029235086590

/-! ## A364809.P14827585708869395492

`A000041(n)-A044941(A000016(n))`
-/

namespace A364809.P14827585708869395492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A044941 (A000016 n).toNat

end

end A364809.P14827585708869395492

/-! ## A364809.P11637839436178356128

`A000041(n)-A101637(A003229(n))`
-/

namespace A364809.P11637839436178356128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A101637 (A003229 n).toNat

end

end A364809.P11637839436178356128

/-! ## A364809.P10801590328886756220

`A000041(n)-A082784(A112007(n))`
-/

namespace A364809.P10801590328886756220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A082784 (A112007 n).toNat

end

end A364809.P10801590328886756220

/-! ## A364809.P12351798582262227485

`A000041(n)-A330216(A058343(n))`
-/

namespace A364809.P12351798582262227485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A330216 (A058343 n).toNat

end

end A364809.P12351798582262227485

/-!
# A364811: Number of distinct residues x^4 (mod 2^n), x=0..2^n-1.

The programs for A364811, there is no canonical definition to state claims against.
-/

/-! ## A364811.P255622017814789543

`ceil(A001045(n)/5)+1`
-/

namespace A364811.P255622017814789543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001045 n : ℚ) / 5⌉ + 1

end

end A364811.P255622017814789543

/-! ## A364811.P10023732886245049481

`ceil(A000225(n)/15)+1`
-/

namespace A364811.P10023732886245049481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) / 15⌉ + 1

end

end A364811.P10023732886245049481

/-! ## A364811.P4006730880543810353

`floor(A000918(n)/15)+2`
-/

namespace A364811.P4006730880543810353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000918 n : ℚ) / 15⌋ + 2

end

end A364811.P4006730880543810353

/-! ## A364811.P16224736660816749491

`ceil((A000975(n)+10)/10)`
-/

namespace A364811.P16224736660816749491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000975 n + 10 : ℚ) / 10⌉

end

end A364811.P16224736660816749491

/-! ## A364811.P673831350690131418

`A181586(n)+gcd(2, n+1)`
-/

namespace A364811.P673831350690131418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + (Nat.gcd 2 (n + 1) : ℤ)

end

end A364811.P673831350690131418

/-!
# A364812: Triangle of generalized binomial coefficients T(n,k) = ff(n)/(ff(k)*ff(n-k)) where ff(n) = A363838(n), the generalized factorial.

The programs for A364812, there is no canonical definition to state claims against.
-/

/-! ## A364812.P17149172240006353071

`A238453(n)/A173557(A048804(n)²)*A129439(n)`
-/

namespace A364812.P17149172240006353071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A173557 (A048804 n ^ 2).toNat : ℚ) * (A129439 n : ℚ)

end

end A364812.P17149172240006353071

/-! ## A364812.P6427221285792564662

`A001221(A202917(n)+2)*A129439(n)`
-/

namespace A364812.P6427221285792564662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A202917 n + 2).toNat * A129439 n

end

end A364812.P6427221285792564662

/-! ## A364812.P14417041058675920399

`(A112765(A022166(n))+1)*A129439(n)`
-/

namespace A364812.P14417041058675920399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112765 (A022166 n).toNat + 1) * A129439 n

end

end A364812.P14417041058675920399

/-! ## A364812.P10675761312888235790

`gcd(A176427(n)!, A008459(n))*A246465(n)`
-/

namespace A364812.P10675761312888235790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.factorial (A176427 n).toNat : ℤ) (A008459 n) : ℤ) * A246465 n

end

end A364812.P10675761312888235790

/-!
# A364813: a(n) = Product_{k=2..n} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise ord(n, k) = e where e is such that k^e divides n but k^(e + 1) does not.

The programs for A364813, the canonical program `A364813.P15914586563839963174` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364813 has offset 1).

The definition of A364813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364813.P15914586563839963174

`∏{d}[n+1, A175068(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A364813

/-- `∏{d}[n+1, A175068(#)]` -/
def P15914586563839963174.Spec : Prop :=
  ∀ n, P15914586563839963174.a n = A364813 (n + 1)

theorem P15914586563839963174.correct : P15914586563839963174.Spec := by
  intro n
  simp only [A364813, Nat.add_sub_cancel]

end A364813

/-! ## A364813.P6659312226951515490

`A364812(∑[n+1]+1)`
-/

namespace A364813.P6659312226951515490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A364813.P6659312226951515490

namespace A364813

/-- `A364812(∑[n+1]+1)` -/
def P6659312226951515490.Spec : Prop :=
  ∀ n, P6659312226951515490.a n = A364813 (n + 1)

end A364813

/-! ## A364813.P10675793713607227263

`(n+1)*A381885(n+1)`
-/

namespace A364813.P10675793713607227263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A381885 (n + 1)

end

end A364813.P10675793713607227263

namespace A364813

/-- `(n+1)*A381885(n+1)` -/
def P10675793713607227263.Spec : Prop :=
  ∀ n, P10675793713607227263.a n = A364813 (n + 1)

end A364813

/-! ## A364813.P11389314692051902626

`∏{d}[n+1, #]/∏{p}[n+1, #]*A287620(A287621(n+1))`
-/

namespace A364813.P11389314692051902626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A287620 (A287621 (n + 1)).toNat : ℚ)

end

end A364813.P11389314692051902626

namespace A364813

/-- `∏{d}[n+1, #]/∏{p}[n+1, #]*A287620(A287621(n+1))` -/
def P11389314692051902626.Spec : Prop :=
  ∀ n, P11389314692051902626.a n = (A364813 (n + 1) : ℚ)

end A364813

/-! ## A364813.P10591643047389520442

`A087652(n+1)*A166469(A000079(n))`
-/

namespace A364813.P10591643047389520442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) * A166469 (A000079 n).toNat

end

end A364813.P10591643047389520442

namespace A364813

/-- `A087652(n+1)*A166469(A000079(n))` -/
def P10591643047389520442.Spec : Prop :=
  ∀ n, P10591643047389520442.a n = A364813 (n + 1)

end A364813

/-!
# A364814: Numbers k whose largest divisor <= sqrt(k) is a power of 2, listing only the first such number with any given prime signature.

The programs for A364814, there is no canonical definition to state claims against.
-/

/-! ## A364814.P9224681951694292067

`eq[A124768(n), A267959(n)]`
-/

namespace A364814.P9224681951694292067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364814.P9224681951694292067

/-! ## A364814.P18378872434177898872

`eq[A089803(n), A330955(n)]`
-/

namespace A364814.P18378872434177898872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364814.P18378872434177898872

/-! ## A364814.P16680115641378987842

`filter[A346729(n+1), A267959(#)]`
-/

namespace A364814.P16680115641378987842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A364814.P16680115641378987842

/-! ## A364814.P13335214348300427796

`filter[A333255(n+2), A267959(#)]`
-/

namespace A364814.P13335214348300427796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A364814.P13335214348300427796

/-! ## A364814.P14100907628674131840

`∩[A005555(n), A270140(n+1)]`
-/

namespace A364814.P14100907628674131840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364814.P14100907628674131840

/-!
# A364818: Number of distinct prime divisors of A000129(n) (Pell numbers).

The programs for A364818, there is no canonical definition to state claims against.
-/

/-! ## A364818.P13258766478232219179

`A000005(n+1)-A079978(A185044(n))`
-/

namespace A364818.P13258766478232219179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A079978 (A185044 n).toNat

end

end A364818.P13258766478232219179

/-! ## A364818.P18138616478044126782

`A000005(n+1)-A105586(A383768(n+1))`
-/

namespace A364818.P18138616478044126782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A105586 (A383768 (n + 1)).toNat

end

end A364818.P18138616478044126782

/-! ## A364818.P13488771810325059844

`A000005(n+1)-A106465(A179664(n+1))`
-/

namespace A364818.P13488771810325059844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A106465 (A179664 (n + 1)).toNat

end

end A364818.P13488771810325059844

/-! ## A364818.P4538807301032017205

`A000005(n+1)-A070950(A290262(3*n+5))`
-/

namespace A364818.P4538807301032017205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A070950 (A290262 (3 * n + 5)).toNat

end

end A364818.P4538807301032017205

/-! ## A364818.P12556741144689070201

`∏{e}[n+1, #+1]-A010054(A098854(n+2))`
-/

namespace A364818.P12556741144689070201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A010054 (A098854 (n + 2)).toNat

end

end A364818.P12556741144689070201

/-!
# A364819: Number of permutations p of [n] such that max(|p(p(i)) - i|)=1.

The programs for A364819, there is no canonical definition to state claims against.
-/

/-! ## A364819.P10979633690314339198

`A364817(∑[n+1]+2)`
-/

namespace A364819.P10979633690314339198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364817 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A364819.P10979633690314339198

/-! ## A364819.P13565715216112928670

`A300586(A126867(n+2))`
-/

namespace A364819.P13565715216112928670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300586 (A126867 (n + 2)).toNat

end

end A364819.P13565715216112928670

/-! ## A364819.P1763254608027793603

`n*A035063(A005578(n))`
-/

namespace A364819.P1763254608027793603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035063 (A005578 n).toNat

end

end A364819.P1763254608027793603

/-!
# A364820: a(n) is the smallest prime factor of the n-th Pell number A000129(n).

The programs for A364820, there is no canonical definition to state claims against.
-/

/-! ## A364820.P8895460853385462276

`A020639(A000129(n+2))`
-/

namespace A364820.P8895460853385462276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000129 (n + 2)).toNat

end

end A364820.P8895460853385462276

/-! ## A364820.P6821813253859927046

`A006530(A246556(A020639(n+2)))`
-/

namespace A364820.P6821813253859927046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246556 (A020639 (n + 2)).toNat).toNat

end

end A364820.P6821813253859927046

/-! ## A364820.P12151706223327656495

`A020639(A246556(A020639((n+2)²)))`
-/

namespace A364820.P12151706223327656495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A246556 (A020639 ((n + 2) ^ 2)).toNat).toNat

end

end A364820.P12151706223327656495

/-! ## A364820.P11366702331314448604

`A020639(∏{p}[A077985(n+1), #])`
-/

namespace A364820.P11366702331314448604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A364820.P11366702331314448604

/-! ## A364820.P5906735789023244756

`A020639(∏{p}[A176981(n+3), #])`
-/

namespace A364820.P5906735789023244756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A364820.P5906735789023244756

/-!
# A364822: Expansion of e.g.f. cosh(x) / (1 - 2*sinh(x)).

The programs for A364822, there is no canonical definition to state claims against.
-/

/-! ## A364822.P12861380007619073523

`(A000556(n)+A005923(n))/2`
-/

namespace A364822.P12861380007619073523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000556 n + A005923 n : ℚ) / 2

end

end A364822.P12861380007619073523

/-! ## A364822.P9995765124916460195

`A004526(A000557(n))+A000556(n)`
-/

namespace A364822.P9995765124916460195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000557 n).toNat + A000556 n

end

end A364822.P9995765124916460195

/-!
# A364823: Triangle read by rows: T(n,k) = number of possible positions for four connected discs in the game "Connect Four" played on a board with n columns and k rows, 4 <= k <= n.

The programs for A364823, there is no canonical definition to state claims against.
-/

/-! ## A364823.P13828143411679620150

`A155151(n+1)+A051162(n)`
-/

namespace A364823.P13828143411679620150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + A051162 n

end

end A364823.P13828143411679620150

/-! ## A364823.P2664291090262765984

`A155156(n+1)+A108872(n+1)`
-/

namespace A364823.P2664291090262765984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + A108872 (n + 1)

end

end A364823.P2664291090262765984

/-! ## A364823.P3963513506890352996

`A172292(n+1)+A094727(n+1)`
-/

namespace A364823.P3963513506890352996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + A094727 (n + 1)

end

end A364823.P3963513506890352996

/-! ## A364823.P10613128491213333051

`A175966(2*A144562(n+1))`
-/

namespace A364823.P10613128491213333051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175966 (2 * A144562 (n + 1)).toNat

end

end A364823.P10613128491213333051

/-!
# A364825: G.f. satisfies A(x) = 1 - x*A(x)^3 * (1 - 3*A(x)).

The programs for A364825, there is no canonical definition to state claims against.
-/

/-! ## A364825.P10435854017317720051

`A006093(2^n*A326359(n))`
-/

namespace A364825.P10435854017317720051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ((2 ^ n : ℤ) * A326359 n).toNat

end

end A364825.P10435854017317720051

/-!
# A364828: a(n) is the number of regions inside a circle after inscribing (always starting from the same point), for each divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364828, there is no canonical definition to state claims against.
-/

/-! ## A364828.P5812636455502107650

`A364829(n+1)+n+1`
-/

namespace A364828.P5812636455502107650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364829 (n + 1) + (n + 1 : ℤ)

end

end A364828.P5812636455502107650

/-!
# A364829: a(n) is the number of regions inside a regular n-gon after inscribing (always starting from the same point), for each proper divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364829, there is no canonical definition to state claims against.
-/

/-! ## A364829.P17907738712501867868

`A364828(n+1)-(n+1)`
-/

namespace A364829.P17907738712501867868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364828 (n + 1) - (n + 1 : ℤ)

end

end A364829.P17907738712501867868

/-! ## A364829.P5903565854726885498

`A023443(A364828(n+1)-n)`
-/

namespace A364829.P5903565854726885498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364828 (n + 1) - (n : ℤ)).toNat

end

end A364829.P5903565854726885498

/-! ## A364829.P17862543340129400868

`abs(A364828(n+1)+A001478(n+1))`
-/

namespace A364829.P17862543340129400868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364828 (n + 1) + A001478 (n + 1)|

end

end A364829.P17862543340129400868

/-!
# A364830: a(n) is the number of line intersections (not coinciding with a vertex) inside a regular n-gon after inscribing (always starting from the same point), for each proper divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364830, there is no canonical definition to state claims against.
-/

/-! ## A364830.P10710200286407294453

`A364838(n+1)-(n+1)`
-/

namespace A364830.P10710200286407294453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (n + 1) - (n + 1 : ℤ)

end

end A364830.P10710200286407294453

/-! ## A364830.P16904243563818301326

`A023443(A364838(n+1)-n)`
-/

namespace A364830.P16904243563818301326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364838 (n + 1) - (n : ℤ)).toNat

end

end A364830.P16904243563818301326

/-! ## A364830.P17495680804647033848

`abs(A364838(n+1)+A001478(n+1))`
-/

namespace A364830.P17495680804647033848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364838 (n + 1) + A001478 (n + 1)|

end

end A364830.P17495680804647033848

/-! ## A364830.P9835549928464281413

`A364838(n+1)%A357633(A000040(n+1))`
-/

namespace A364830.P9835549928464281413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364838 (n + 1)) (A357633 (A000040 (n + 1)).toNat)

end

end A364830.P9835549928464281413

/-! ## A364830.P18288919979165568110

`A081400(C(A183092(n+1), A001221(n+1)))`
-/

namespace A364830.P18288919979165568110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (Nat.choose (A183092 (n + 1)).toNat (A001221 (n + 1)).toNat)

end

end A364830.P18288919979165568110

/-!
# A364831: Primes whose digits are prime and in nonincreasing order.

The programs for A364831, there is no canonical definition to state claims against.
-/

/-! ## A364831.P239308947615483058

`∩[A019546(n+1), A028867(n+1)]`
-/

namespace A364831.P239308947615483058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P239308947615483058

/-! ## A364831.P12231532069409479102

`∩[A019546(n+1), A028912(n)]`
-/

namespace A364831.P12231532069409479102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P12231532069409479102

/-! ## A364831.P13259581544851263593

`∩[A009996(n+1), A019546(n+1)]`
-/

namespace A364831.P13259581544851263593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P13259581544851263593

/-! ## A364831.P1383612170356421020

`∩[A028867(n+1), A046034(n+1)]`
-/

namespace A364831.P1383612170356421020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P1383612170356421020

/-! ## A364831.P16421572551607832352

`∩[A028867(n+1), A062087(n+1)]`
-/

namespace A364831.P16421572551607832352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P16421572551607832352

/-!
# A364832: Rectangular array, read by descending antidiagonals, in which row n lists numbers m such that w(s,m) = n-1 (see comments for definition of w).

The programs for A364832, there is no canonical definition to state claims against.
-/

/-! ## A364832.P6402338179640880970

`A374611(A360646(n+1)%A336219(n+3))`
-/

namespace A364832.P6402338179640880970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (Int.tmod (A360646 (n + 1)) (A336219 (n + 3))).toNat

end

end A364832.P6402338179640880970

/-! ## A364832.P6726341436868926520

`A374611(A360646(n+1))%A001606(2*(n+2))`
-/

namespace A364832.P6726341436868926520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374611 (A360646 (n + 1)).toNat) (A001606 (2 * (n + 2)))

end

end A364832.P6726341436868926520

/-!
# A364833: G.f. satisfies A(x) = 1 + x*A(x)^2/(1 - x^3*A(x)^3).

The programs for A364833, there is no canonical definition to state claims against.
-/

/-! ## A364833.P4244241869911840466

`A301832(A073790(n))`
-/

namespace A364833.P4244241869911840466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A073790 n).toNat

end

end A364833.P4244241869911840466

/-! ## A364833.P11733564716074827366

`A301832(A004881(n+1))`
-/

namespace A364833.P11733564716074827366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004881 (n + 1)).toNat

end

end A364833.P11733564716074827366

/-! ## A364833.P14595203869351562822

`A301832(A004892(n+1))`
-/

namespace A364833.P14595203869351562822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004892 (n + 1)).toNat

end

end A364833.P14595203869351562822

/-! ## A364833.P16492271812266270853

`A301832(A004903(n+1))`
-/

namespace A364833.P16492271812266270853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004903 (n + 1)).toNat

end

end A364833.P16492271812266270853

/-! ## A364833.P15951427087765322179

`A301832(A004914(n+1))`
-/

namespace A364833.P15951427087765322179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004914 (n + 1)).toNat

end

end A364833.P15951427087765322179

/-!
# A364834: Sum of positive integers <= n which are multiples of 2 or 5.

The programs for A364834, the canonical program `A364834.P5622700448256645935` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364834 has offset 1).

The definition of A364834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364834.P5622700448256645935

`∑[(n+1)%A370566(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364834

/-- `∑[(n+1)%A370566(n+1)]` -/
def P5622700448256645935.Spec : Prop :=
  ∀ n, P5622700448256645935.a n = A364834 (n + 1)

theorem P5622700448256645935.correct : P5622700448256645935.Spec := by
  intro n
  simp only [A364834, Nat.add_sub_cancel]

end A364834

/-! ## A364834.P1922478625071631296

`∑[(n+1)*A285383(A000129(n)+1)]`
-/

namespace A364834.P1922478625071631296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285383 (A000129 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P1922478625071631296

namespace A364834

/-- `∑[(n+1)*A285383(A000129(n)+1)]` -/
def P1922478625071631296.Spec : Prop :=
  ∀ n, P1922478625071631296.a n = A364834 (n + 1)

end A364834

/-! ## A364834.P16953941347815690878

`∑[∑{e}[A292118(n)^A005940(n+1), #]]`
-/

namespace A364834.P16953941347815690878
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292118 n : ℚ) ^ (A005940 (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P16953941347815690878

namespace A364834

/-- `∑[∑{e}[A292118(n)^A005940(n+1), #]]` -/
def P16953941347815690878.Spec : Prop :=
  ∀ n, (P16953941347815690878.a n : ℤ) = A364834 (n + 1)

end A364834

/-! ## A364834.P2319986918258474871

`∑[(n+1)*A320811(n+1)%2]`
-/

namespace A364834.P2319986918258474871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A320811 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P2319986918258474871

namespace A364834

/-- `∑[(n+1)*A320811(n+1)%2]` -/
def P2319986918258474871.Spec : Prop :=
  ∀ n, P2319986918258474871.a n = A364834 (n + 1)

end A364834

/-!
# A364836: a(n) is the least positive integer that can be expressed as the sum of two distinct nonzero decimal palindromes in exactly n ways.

The programs for A364836, there is no canonical definition to state claims against.
-/

/-! ## A364836.P1436570070032862922

`A115356(A000757(n))+A115336(n+1)`
-/

namespace A364836.P1436570070032862922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A000757 n).toNat + A115336 (n + 1)

end

end A364836.P1436570070032862922

/-! ## A364836.P8048302284701705886

`A115356(A115340(n+2))+A115336(n+1)`
-/

namespace A364836.P8048302284701705886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A115340 (n + 2)).toNat + A115336 (n + 1)

end

end A364836.P8048302284701705886

/-! ## A364836.P9074625078222844274

`or(A030308(A000045(2*(n+1))), A115336(n+1))`
-/

namespace A364836.P9074625078222844274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030308 (A000045 (2 * (n + 1))).toNat) (A115336 (n + 1))

end

end A364836.P9074625078222844274

/-! ## A364836.P15895457850912003959

`A115336(n+1)+A016266(A000108(n))`
-/

namespace A364836.P15895457850912003959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115336 (n + 1) + A016266 (A000108 n).toNat

end

end A364836.P15895457850912003959

/-!
# A364837: Initial digit of 2^(2^n) = A001146(n).

The programs for A364837, there is no canonical definition to state claims against.
-/

/-! ## A364837.P16178925912602772009

`A008952(2^n)`
-/

namespace A364837.P16178925912602772009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (2 ^ n)

end

end A364837.P16178925912602772009

/-! ## A364837.P6892630835861224891

`dr(A008952(A000079(n)))`
-/

namespace A364837.P6892630835861224891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (A000079 n).toNat)

end

end A364837.P6892630835861224891

/-! ## A364837.P18006142690545120786

`dr(A008952(∑[A011782(n)]))`
-/

namespace A364837.P18006142690545120786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A364837.P18006142690545120786

/-! ## A364837.P3041803318362883986

`dr(A008952(Δ[A000225(n)]))`
-/

namespace A364837.P3041803318362883986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (f1 (n + 1) - f1 n).toNat)

end

end A364837.P3041803318362883986

/-! ## A364837.P6121325711325952071

`dr(A008952(record[A117575(n)]))`
-/

namespace A364837.P6121325711325952071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A364837.P6121325711325952071

/-!
# A364838: a(n) is the number of line intersections (including vertices) inside a regular n-gon after inscribing (always starting from the same point), for each proper divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364838, there is no canonical definition to state claims against.
-/

/-! ## A364838.P10864145227927482516

`A364830(n+1)+n+1`
-/

namespace A364838.P10864145227927482516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364830 (n + 1) + (n + 1 : ℤ)

end

end A364838.P10864145227927482516

/-! ## A364838.P14664130981253648224

`A366077(A133910(n+1)!)²+1+n`
-/

namespace A364838.P14664130981253648224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366077 (Nat.factorial (A133910 (n + 1)).toNat) ^ 2 + 1 + (n : ℤ)

end

end A364838.P14664130981253648224

/-! ## A364838.P15747138536137400138

`(A128155(3*n+1)%A051119(n+1))²+1+n`
-/

namespace A364838.P15747138536137400138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128155 (3 * n + 1)) (A051119 (n + 1)) ^ 2 + 1 + (n : ℤ)

end

end A364838.P15747138536137400138

/-! ## A364838.P3216610847749287963

`and(n, A340389(A028234(n+1)))-A001478(n+1)`
-/

namespace A364838.P3216610847749287963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A340389 (A028234 (n + 1)).toNat) - A001478 (n + 1)

end

end A364838.P3216610847749287963

/-!
# A364839: Number of strict integer partitions of n such that some part can be written as a nonnegative linear combination of the others.

The programs for A364839, there is no canonical definition to state claims against.
-/

/-! ## A364839.P5891987632707533717

`A000009(n)-A364350(n)`
-/

namespace A364839.P5891987632707533717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364350 n

end

end A364839.P5891987632707533717

/-! ## A364839.P7221368522210030070

`abs(A081360(n))-A364350(n)`
-/

namespace A364839.P7221368522210030070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364350 n

end

end A364839.P7221368522210030070

/-! ## A364839.P12294958854514431190

`∑[A087897(n)]-A364350(n)`
-/

namespace A364839.P12294958854514431190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364350 n

end

end A364839.P12294958854514431190

/-! ## A364839.P7912928668093901571

`A364916(∑[n])-A364350(n)`
-/

namespace A364839.P7912928668093901571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f1 j) - A364350 n

end

end A364839.P7912928668093901571

/-! ## A364839.P8174983953666576451

`A111133(n)+1-A364350(n)`
-/

namespace A364839.P8174983953666576451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A364350 n

end

end A364839.P8174983953666576451

/-! ## A364839.P7748076733183785722

`ceil(A333147(n)/2)-A364350(n)`
-/

namespace A364839.P7748076733183785722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉ - A364350 n

end

end A364839.P7748076733183785722

/-! ## A364839.P8184277730079277871

`A219347(A000124(n))-A364350(n)`
-/

namespace A364839.P8184277730079277871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A364350 n

end

end A364839.P8184277730079277871

/-! ## A364839.P1425634532057488195

`A057428(n)+A052839(n)-A364350(n)`
-/

namespace A364839.P1425634532057488195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n - A364350 n

end

end A364839.P1425634532057488195

/-! ## A364839.P919645584939603918

`A096765(n)+A025147(n)-A364350(n)`
-/

namespace A364839.P919645584939603918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n - A364350 n

end

end A364839.P919645584939603918

/-! ## A364839.P1214630508225165637

`A096765(n+1)+A096765(n)-A364350(n)`
-/

namespace A364839.P1214630508225165637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + (A096765 n - A364350 n)

end

end A364839.P1214630508225165637

/-!
# A364840: Numbers k such that the product of the first k primes - 1 is a semiprime.

The programs for A364840, there is no canonical definition to state claims against.
-/

/-! ## A364840.P2549389792897724229

`A000720(A250294(n+1))`
-/

namespace A364840.P2549389792897724229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A250294 (n + 1)).toNat

end

end A364840.P2549389792897724229

/-! ## A364840.P6946926896286766072

`A204892(A250294(n+1)-2)`
-/

namespace A364840.P6946926896286766072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A250294 (n + 1) - 2).toNat

end

end A364840.P6946926896286766072

/-! ## A364840.P1495716917546066522

`∑{d}[A250294(n+1), A252464(#)]`
-/

namespace A364840.P1495716917546066522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252464 d

end

end A364840.P1495716917546066522

/-! ## A364840.P7385893776432214157

`A252464(∏{p}[A250294(n+1), #])`
-/

namespace A364840.P7385893776432214157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A364840.P7385893776432214157

/-! ## A364840.P252266184438688498

`A252464(and(-1, A250294(n+1)))`
-/

namespace A364840.P252266184438688498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (Int.land (-1) (A250294 (n + 1))).toNat

end

end A364840.P252266184438688498

/-!
# A364841: Number of subsets S of {1..n} containing no element equal to the sum of a k-multiset of elements of S, for any 2 <= k <= |S|.

The programs for A364841, there is no canonical definition to state claims against.
-/

/-! ## A364841.P11761675837693663824

`A000196(A027375(n+4))-A080571(n+5)`
-/

namespace A364841.P11761675837693663824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A027375 (n + 4)).toNat - A080571 (n + 5)

end

end A364841.P11761675837693663824

/-! ## A364841.P14222287627855787392

`or(A308251(n), A358846(A371493(n)))`
-/

namespace A364841.P14222287627855787392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A308251 n) (A358846 (A371493 n).toNat)

end

end A364841.P14222287627855787392

/-! ## A364841.P1119151533812810838

`A308251(n)+A110161(A076282(n+1))`
-/

namespace A364841.P1119151533812810838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n + A110161 (A076282 (n + 1)).toNat

end

end A364841.P1119151533812810838

/-! ## A364841.P5281617257234055994

`A308251(n)+A122840(A308251(3*n))`
-/

namespace A364841.P5281617257234055994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n + A122840 (A308251 (3 * n)).toNat

end

end A364841.P5281617257234055994

/-! ## A364841.P5234975394584625534

`A281116(n+1)+eq[1, A000120(A333222(n+1))]`
-/

namespace A364841.P5234975394584625534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A333222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A364841.P5234975394584625534

/-!
# A364842: Table read by antidiagonals: row n gives the Euler transform of the sequence (2,...,2,0,0,...) that contains n 2's followed by 0's.

The programs for A364842, there is no canonical definition to state claims against.
-/

/-! ## A364842.P11489189071451120195

`A094937(A343863(n))`
-/

namespace A364842.P11489189071451120195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A343863 n).toNat

end

end A364842.P11489189071451120195

/-! ## A364842.P7198388617145441677

`and(A181842(n+1), A319769(A181842(n+1)))`
-/

namespace A364842.P7198388617145441677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181842 (n + 1)) (A319769 (A181842 (n + 1)).toNat)

end

end A364842.P7198388617145441677

/-! ## A364842.P14885590008694319509

`A374433(A133031(n+1))+A365515(n+1)`
-/

namespace A364842.P14885590008694319509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 (A133031 (n + 1)).toNat + A365515 (n + 1)

end

end A364842.P14885590008694319509

/-! ## A364842.P16589576440734759340

`or(A010054(A005179(n+1)), A116925(n))`
-/

namespace A364842.P16589576440734759340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A005179 (n + 1)).toNat) (A116925 n)

end

end A364842.P16589576440734759340

/-! ## A364842.P14390640396637211127

`A357499(n)+A257075(A001037(n+3))`
-/

namespace A364842.P14390640396637211127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357499 n + A257075 (A001037 (n + 3)).toNat

end

end A364842.P14390640396637211127

/-!
# A364843: Integers are repeated in runs of 1, 2, 3, ... Each new integer (following a run) is given the value of its sequence index value.

The programs for A364843, there is no canonical definition to state claims against.
-/

/-! ## A364843.P2154845395778862769

`C(∑[char[∑[n]]], 2)+1`
-/

namespace A364843.P2154845395778862769
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A364843.P2154845395778862769

/-! ## A364843.P16150423241275179376

`lt[abs(1-n), round(sqrt(n))²]-n`
-/

namespace A364843.P16150423241275179376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A364843.P16150423241275179376

/-! ## A364843.P9549042942900463147

`abs(n-lt[(ceil(sqrt(n))²-n)², n])`
-/

namespace A364843.P9549042942900463147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)|

end

end A364843.P9549042942900463147

/-! ## A364843.P17189846598203990358

`∑[Δ[C(round(sqrt(2*n)), 2)]+1]-n`
-/

namespace A364843.P17189846598203990358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A364843.P17189846598203990358

/-! ## A364843.P18275061966754085874

`comp[C(comp[∑[n]]-n, 2)+n]+1-n`
-/

namespace A364843.P18275061966754085874
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))

end

end A364843.P18275061966754085874

/-! ## A364843.P16766134004932172175

`eq[0, ceil(2*sqrt(n+1))%2]+1-n`
-/

namespace A364843.P16766134004932172175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - (n : ℤ)

end

end A364843.P16766134004932172175

/-! ## A364843.P7914598541274259489

`comp[eq[0, floor(sqrt(4*n+1))%2]]-(n-1)`
-/

namespace A364843.P7914598541274259489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 1)

end

end A364843.P7914598541274259489

/-! ## A364843.P3876325249856865237

`A057944(n)+1`
-/

namespace A364843.P3876325249856865237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + 1

end

end A364843.P3876325249856865237

/-! ## A364843.P10092324960341572150

`log2(A245235(n))+1`
-/

namespace A364843.P10092324960341572150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A245235 n : ℝ) + 1

end

end A364843.P10092324960341572150

/-! ## A364843.P1697243337139242410

`1-A002262(n)+n`
-/

namespace A364843.P1697243337139242410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002262 n + (n : ℤ)

end

end A364843.P1697243337139242410

/-!
# A364847: Number of conjugacy classes in the group SL(2, Z_n), up to conjugacy in GL(2, Z_n).

The programs for A364847, there is no canonical definition to state claims against.
-/

/-! ## A364847.P8327009588563084940

`∑{d}[n+1, #*A060594((n+1)/#)]`
-/

namespace A364847.P8327009588563084940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P8327009588563084940

/-! ## A364847.P13008212139698710154

`∑{d}[n+1, A000010(#)*A092089((n+1)/#)]`
-/

namespace A364847.P13008212139698710154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A092089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P13008212139698710154

/-! ## A364847.P3531754342477052605

`∑{d}[n+1, A000203(#)*A114643((n+1)/#)]`
-/

namespace A364847.P3531754342477052605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A114643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P3531754342477052605

/-! ## A364847.P7889388356578580984

`∑{d}[n+1, A063659(#)*A145390((n+1)/#)]`
-/

namespace A364847.P7889388356578580984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A145390 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P7889388356578580984

/-! ## A364847.P17846727004959621651

`∑{d}[n+1, A097012(#)*A114643((n+1)/#)]`
-/

namespace A364847.P17846727004959621651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097012 d * A114643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P17846727004959621651

/-! ## A364847.P6530506957914056655

`∑{d}[n+1, A034444(#)*A348173((n+1)/#)]`
-/

namespace A364847.P6530506957914056655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A348173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P6530506957914056655

/-!
# A364849: Number of even parity alternating permutations of [1..n] starting with an odd integer.

The programs for A364849, there is no canonical definition to state claims against.
-/

/-! ## A364849.P18292101107802041283

`floor((n+1)/2)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A364849.P18292101107802041283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  ⌊(n + 1 : ℚ) / 2⌋ * a (n - 1)

end

end A364849.P18292101107802041283

/-! ## A364849.P7754377358188324883

`floor((n-floor(n/2))*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A364849.P7754377358188324883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  ((n : ℤ) - ⌊(n : ℚ) / 2⌋) * a (n - 1)

end

end A364849.P7754377358188324883

/-! ## A364849.P5441600582921792485

`ceil(A010551(n)/2)`
-/

namespace A364849.P5441600582921792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010551 n : ℚ) / 2⌉

end

end A364849.P5441600582921792485

/-! ## A364849.P17950264444357336848

`ceil(∏[A065033(n)]/2)`
-/

namespace A364849.P17950264444357336848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A364849.P17950264444357336848

/-! ## A364849.P10216379216689310288

`round(A001710(n)/A001405(n))`
-/

namespace A364849.P10216379216689310288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001710 n : ℚ) / (A001405 n : ℚ))

end

end A364849.P10216379216689310288

/-!
# A364850: a(n) = negated numerator of A014963(n)*A023900(n)/2.

The programs for A364850, there is no canonical definition to state claims against.
-/

/-! ## A364850.P17091126546208020728

`A155457(n+1)*A297381(n+1)`
-/

namespace A364850.P17091126546208020728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 (n + 1) * A297381 (n + 1)

end

end A364850.P17091126546208020728

/-!
# A364852: Number of paths in the n-Lucas cube graph.

The programs for A364852, there is no canonical definition to state claims against.
-/

/-! ## A364852.P8397480519602093473

`A272071(∑[n^(n+1)])`
-/

namespace A364852.P8397480519602093473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364852.P8397480519602093473

/-!
# A364856: Triangle read by rows: T(n,k) is the number of k-dimensional faces of the n-dimensional Kunz cone, 0 <= k <= n.

The programs for A364856, there is no canonical definition to state claims against.
-/

/-! ## A364856.P10256541339694166999

`A092333(A176560(n))`
-/

namespace A364856.P10256541339694166999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092333 (A176560 n).toNat

end

end A364856.P10256541339694166999

/-! ## A364856.P3358444474523858507

`A277760(A022173(n))`
-/

namespace A364856.P3358444474523858507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277760 (A022173 n).toNat

end

end A364856.P3358444474523858507

/-! ## A364856.P6156191629967446039

`A348674(A022175(n))`
-/

namespace A364856.P6156191629967446039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (A022175 n).toNat

end

end A364856.P6156191629967446039

/-! ## A364856.P8320549879174418531

`A120456(A299904(n))`
-/

namespace A364856.P8320549879174418531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120456 (A299904 n).toNat

end

end A364856.P8320549879174418531

/-! ## A364856.P3375907588398410516

`A125978(A331406(n))`
-/

namespace A364856.P3375907588398410516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125978 (A331406 n).toNat

end

end A364856.P3375907588398410516

/-!
# A364860: Greater of a pair of S-amicable numbers k < m such that s(k) = m and s(m) = k, where s(k) = A364858(k).

The programs for A364860, there is no canonical definition to state claims against.
-/

/-! ## A364860.P13159898566843502852

`A294888(A364859(n+1))`
-/

namespace A364860.P13159898566843502852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (A364859 (n + 1)).toNat

end

end A364860.P13159898566843502852

/-!
# A364865: G.f. satisfies A(x) = 1 + x*A(x)^4 / (1 + x*A(x)^4).

The programs for A364865, there is no canonical definition to state claims against.
-/

/-! ## A364865.P12405510317436769870

`A239161(A149012(n))`
-/

namespace A364865.P12405510317436769870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (A149012 n).toNat

end

end A364865.P12405510317436769870

/-! ## A364865.P292593504312924107

`xor(A008676(A032443(n+1)), A326459(3*n+1))`
-/

namespace A364865.P292593504312924107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008676 (A032443 (n + 1)).toNat) (A326459 (3 * n + 1))

end

end A364865.P292593504312924107

/-!
# A364866: G.f. satisfies A(x) = 1 + x*A(x)^5 / (1 + x*A(x)^5).

The programs for A364866, there is no canonical definition to state claims against.
-/

/-! ## A364866.P10371981042120430751

`A002264(A372415(n)+A000032(n))`
-/

namespace A364866.P10371981042120430751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A372415 n + A000032 n).toNat

end

end A364866.P10371981042120430751

/-! ## A364866.P2123745558483702236

`A028310(A001090(n))/A028310(n)`
-/

namespace A364866.P2123745558483702236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A001090 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A364866.P2123745558483702236

/-!
# A364867: Primes p such that the multiplicative order of 9 modulo p is (p-1)/2.

The programs for A364867, there is no canonical definition to state claims against.
-/

/-! ## A364867.P17940991864127465037

`2*record[A054717(n+3)]+1`
-/

namespace A364867.P17940991864127465037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A364867.P17940991864127465037

/-! ## A364867.P6064146063752930039

`2*eq[n, A054717(2*n+1)]+1`
-/

namespace A364867.P6064146063752930039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364867.P6064146063752930039

/-! ## A364867.P16585401028405630577

`A005408(record[A054717(2*n+3)])`
-/

namespace A364867.P16585401028405630577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364867.P16585401028405630577

/-! ## A364867.P8839039610212090758

`record[A144396(A054717(n+1)+A000007(n))]`
-/

namespace A364867.P8839039610212090758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A054717 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364867.P8839039610212090758

/-! ## A364867.P8724221966860158202

`record[A144396(A359170(n+1)+A054717(n+1))]`
-/

namespace A364867.P8724221966860158202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A359170 (n + 1) + A054717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364867.P8724221966860158202

/-!
# A364868: Numbers k such that 4*k+1 is the norm of a Gaussian prime.

The programs for A364868, the canonical program `A364868.P4386631434435275963` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364868 has offset 1).

The definition of A364868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364868.P4386631434435275963

`(A055025(n+2)-1)/4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A364868

/-- `(A055025(n+2)-1)/4` -/
def P4386631434435275963.Spec : Prop :=
  ∀ n, P4386631434435275963.a n = (A364868 (n + 1) : ℚ)

end A364868

/-! ## A364868.P4451609600168028547

`lt[A295996(abs(1-n)), A295996(n)]`
-/

namespace A364868.P4451609600168028547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295996 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364868.P4451609600168028547

namespace A364868

/-- `lt[A295996(abs(1-n)), A295996(n)]` -/
def P4451609600168028547.Spec : Prop :=
  ∀ n, (P4451609600168028547.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P12912945088568553709

`A002265(A055025(n+2))`
-/

namespace A364868.P12912945088568553709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A055025 (n + 2)).toNat

end

end A364868.P12912945088568553709

namespace A364868

/-- `A002265(A055025(n+2))` -/
def P12912945088568553709.Spec : Prop :=
  ∀ n, P12912945088568553709.a n = A364868 (n + 1)

end A364868

/-! ## A364868.P151036174915835766

`eq[2, A046081(A016813(n))]`
-/

namespace A364868.P151036174915835766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364868.P151036174915835766

namespace A364868

/-- `eq[2, A046081(A016813(n))]` -/
def P151036174915835766.Spec : Prop :=
  ∀ n, (P151036174915835766.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P9379018759640747495

`A100727(∩[A055025(n+2), A140139(n+2)])`
-/

namespace A364868.P9379018759640747495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A364868.P9379018759640747495

namespace A364868

/-- `A100727(∩[A055025(n+2), A140139(n+2)])` -/
def P9379018759640747495.Spec : Prop :=
  ∀ n, P9379018759640747495.a n = A364868 (n + 1)

end A364868

/-! ## A364868.P13721113489391749353

`eq[2, A046081(A017089(n))]`
-/

namespace A364868.P13721113489391749353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A017089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364868.P13721113489391749353

namespace A364868

/-- `eq[2, A046081(A017089(n))]` -/
def P13721113489391749353.Spec : Prop :=
  ∀ n, (P13721113489391749353.a n : ℤ) = A364868 (n + 1)

end A364868

/-!
# A364869: Numbers k such that 6*k+1 is the norm of an Eisenstein prime.

The programs for A364869, there is no canonical definition to state claims against.
-/

/-! ## A364869.P7962976943496603119

`(A055664(n+3)-1)/6`
-/

namespace A364869.P7962976943496603119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055664 (n + 3) - 1 : ℚ) / 6

end

end A364869.P7962976943496603119

/-! ## A364869.P8392391183995474565

`floor(A055664(n+3)/6)`
-/

namespace A364869.P8392391183995474565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055664 (n + 3) : ℚ) / 6⌋

end

end A364869.P8392391183995474565

/-! ## A364869.P5430896262879531796

`A110654(eq[A290739(n), A380218(3*n)])`
-/

namespace A364869.P5430896262879531796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380218 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364869.P5430896262879531796

/-! ## A364869.P6717203266851256599

`A001057(lt[A001065(3*n+4), A182298(n)])`
-/

namespace A364869.P6717203266851256599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364869.P6717203266851256599

/-!
# A364870: Array read by ascending antidiagonals: A(n, k) = (n + k)^n, with k >= 0.

The programs for A364870, there is no canonical definition to state claims against.
-/

/-! ## A364870.P3041324509883309051

`∑[char[∑[n+1]]]^A025581(n)`
-/

namespace A364870.P3041324509883309051
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A025581 n : ℤ)

end

end A364870.P3041324509883309051

/-! ## A364870.P16380908807505766293

`A079901(∑[2*n]%comp[∑[n]])`
-/

namespace A364870.P16380908807505766293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A364870.P16380908807505766293

/-! ## A364870.P1666461476471594727

`A079901(∑[char[∑[n]]]²-n-1)`
-/

namespace A364870.P1666461476471594727
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A364870.P1666461476471594727

/-! ## A364870.P14123496742101529406

`∑[char[∑[n+1]]]^(A004736(n+1)-1)`
-/

namespace A364870.P14123496742101529406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A364870.P14123496742101529406

/-! ## A364870.P448227417283905327

`A003056(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A364870.P448227417283905327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A364870.P448227417283905327

/-! ## A364870.P11809967284517876845

`A357930(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A364870.P11809967284517876845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357930 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A364870.P11809967284517876845

/-! ## A364870.P3322782816278724834

`A071207(n)/A007318(n)`
-/

namespace A364870.P3322782816278724834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071207 n : ℚ) / (A007318 n : ℚ)

end

end A364870.P3322782816278724834

/-! ## A364870.P7212099280612177415

`A398136(n)/A008279(n)`
-/

namespace A364870.P7212099280612177415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398136 n : ℚ) / (A008279 n : ℚ)

end

end A364870.P7212099280612177415

/-! ## A364870.P4067567681291031633

`A398373(n)/A059481(n)`
-/

namespace A364870.P4067567681291031633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398373 n : ℚ) / (A059481 n : ℚ)

end

end A364870.P4067567681291031633

/-!
# A364871: a(n) = B(n) - A(n), where A(1) = 0, B(1) = 1, and sequences A and B are the lexicographically earliest sequences that start with their respective first terms and contain no term whose binary expansion is the concatenation of any two earlier terms in that sequence.

The programs for A364871, there is no canonical definition to state claims against.
-/

/-! ## A364871.P6796524835230338446

`A365018(n+1)-A365017(n+1)`
-/

namespace A364871.P6796524835230338446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365018 (n + 1) - A365017 (n + 1)

end

end A364871.P6796524835230338446

/-!
# A364874: A packing coloring for the one-way infinite path using only the first 8 prime numbers.

The programs for A364874, there is no canonical definition to state claims against.
-/

/-! ## A364874.P8985334762121466608

`A276076(A087088(n+1)!)`
-/

namespace A364874.P8985334762121466608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (Nat.factorial (A087088 (n + 1)).toNat)

end

end A364874.P8985334762121466608

/-! ## A364874.P5376025124692125124

`A000040(A087088(n+1)%A244360(n+3))`
-/

namespace A364874.P5376025124692125124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A087088 (n + 1)) (A244360 (n + 3))).toNat

end

end A364874.P5376025124692125124

/-! ## A364874.P17750962809133976013

`A000040(A087088(n+1))%A336330(2*n+1)`
-/

namespace A364874.P17750962809133976013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A087088 (n + 1)).toNat) (A336330 (2 * n + 1))

end

end A364874.P17750962809133976013

/-! ## A364874.P12712672023854986530

`A000040(A087088(n+1)%A373110(n))`
-/

namespace A364874.P12712672023854986530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A087088 (n + 1)) (A373110 n)).toNat

end

end A364874.P12712672023854986530

/-! ## A364874.P504085471779331965

`A000040(A087088(n+1))%A080201(n+1)`
-/

namespace A364874.P504085471779331965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A087088 (n + 1)).toNat) (A080201 (n + 1))

end

end A364874.P504085471779331965

/-!
# A364878: Triangle read by rows: T(n,k), 0 <= k <= n, is the smallest number that has n distinct prime factors, k of which are unique.

The programs for A364878, there is no canonical definition to state claims against.
-/

/-! ## A364878.P4964388137131579905

`A181821(A175840(n))`
-/

namespace A364878.P4964388137131579905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A175840 n).toNat

end

end A364878.P4964388137131579905

/-! ## A364878.P17757903549592078808

`A086141(A130328(n))`
-/

namespace A364878.P17757903549592078808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A130328 n).toNat

end

end A364878.P17757903549592078808

/-!
# A364879: a(n) is the smallest number k such that (sum of composites <= k) / (sum of primes <= k) >= n.

The programs for A364879, there is no canonical definition to state claims against.
-/

/-! ## A364879.P17925983461992308538

`A286636(n+1)*A344651(A002605(n))`
-/

namespace A364879.P17925983461992308538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286636 (n + 1) * A344651 (A002605 n).toNat

end

end A364879.P17925983461992308538

/-!
# A364880: a(0) = 0. If a(n-1) is a novel term, a(n) = a(a(n-1)); otherwise a(n) is the number of distinct terms occurring prior to a(n-1) which are <= a(n-1).

The programs for A364880, there is no canonical definition to state claims against.
-/

/-! ## A364880.P300002128167706546

`A002262(lt[A333381(3*n), A059268(n+1)])`
-/

namespace A364880.P300002128167706546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P300002128167706546

/-! ## A364880.P9343303383598585717

`A002262(lt[A000008(n), A017666(2*n+3)])`
-/

namespace A364880.P9343303383598585717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P9343303383598585717

/-! ## A364880.P9903989515187815487

`A002262(lt[A333381(3*n), A002260(n+2)])`
-/

namespace A364880.P9903989515187815487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P9903989515187815487

/-! ## A364880.P16656046209272933638

`A002262(lt[A263273(2*n+3), A356376(3*n+5)])`
-/

namespace A364880.P16656046209272933638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356376 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P16656046209272933638

/-!
# A364881: First significant digit of the decimal expansion of n/(2^n).

The programs for A364881, there is no canonical definition to state claims against.
-/

/-! ## A364881.P18276536495800170879

`A052038(A053638(n+1))`
-/

namespace A364881.P18276536495800170879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A053638 (n + 1)).toNat

end

end A364881.P18276536495800170879

/-! ## A364881.P2890018724922650807

`A052038(A065482(n+1))`
-/

namespace A364881.P2890018724922650807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A065482 (n + 1)).toNat

end

end A364881.P2890018724922650807

/-!
# A364883: Consider the Fermat quotient for base n: Fq(n,k) = (n^(p - 1) - 1)/p, where p = prime(k), for k >= 1. a(n) is the least k >= 1 such that Fq(n,j) is divisible by n^2 - 1 for all j >= k.

The programs for A364883, there is no canonical definition to state claims against.
-/

/-! ## A364883.P11994110124183391315

`A003977(A093074(n+2))`
-/

namespace A364883.P11994110124183391315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A093074 (n + 2)).toNat

end

end A364883.P11994110124183391315

/-! ## A364883.P17969366469620510140

`A252489(A005563(n+1))+1`
-/

namespace A364883.P17969366469620510140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (A005563 (n + 1)).toNat + 1

end

end A364883.P17969366469620510140

/-! ## A364883.P11799709600210657176

`A056239(2*A093074(n+2))`
-/

namespace A364883.P11799709600210657176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A093074 (n + 2)).toNat

end

end A364883.P11799709600210657176

/-! ## A364883.P8644599996036783968

`A300118(A093074(n+2)+A000007(n))`
-/

namespace A364883.P8644599996036783968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (A093074 (n + 2) + A000007 n).toNat

end

end A364883.P8644599996036783968

/-! ## A364883.P10525675892546727766

`A300118(A093074(n+2))%A005878(n)`
-/

namespace A364883.P10525675892546727766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300118 (A093074 (n + 2)).toNat) (A005878 n)

end

end A364883.P10525675892546727766

/-! ## A364883.P12417870500720570657

`A300118(A093074(n+2)%A001126(n+1))`
-/

namespace A364883.P12417870500720570657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (Int.tmod (A093074 (n + 2)) (A001126 (n + 1))).toNat

end

end A364883.P12417870500720570657

/-! ## A364883.P3375310991027090938

`A061395(∑[∑[3*(n+1)]])+1`
-/

namespace A364883.P3375310991027090938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A364883.P3375310991027090938

/-!
# A364884: Triangle T(n, k), n > 0, k = 1..n, read by rows; T(1, 1) = 1, and for n > 1, k = 1..n, T(n, k) is the least unseen multiple of the k-th term of the flattened sequence .

The programs for A364884, there is no canonical definition to state claims against.
-/

/-! ## A364884.P9780240188827101311

`A280864(n+1)+A240868(A014382(n))`
-/

namespace A364884.P9780240188827101311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1) + A240868 (A014382 n).toNat

end

end A364884.P9780240188827101311

/-! ## A364884.P15635497282421751373

`A280866(n+1)+A184955(A047592(n+1))`
-/

namespace A364884.P15635497282421751373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280866 (n + 1) + A184955 (A047592 (n + 1)).toNat

end

end A364884.P15635497282421751373

/-!
# A364885: Triangle T(n, k), n >= 0, k = 0..n, read by rows; T(0, 0) = 0, and for any n > 0, k = 0..n, T(n, k) is the least number obtained by turning a 0 into a 1 in the binary expansion of the k-th term of the (0-based) flattened sequence.

The programs for A364885, there is no canonical definition to state claims against.
-/

/-! ## A364885.P3818964199529817221

`A006369(A039274(n+1)%A320355(n+1))`
-/

namespace A364885.P3818964199529817221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (Int.tmod (A039274 (n + 1)) (A320355 (n + 1))).toNat

end

end A364885.P3818964199529817221

/-! ## A364885.P11690116951002479854

`A156552(A280864(n+1)%A270339(3*n+4))`
-/

namespace A364885.P11690116951002479854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A280864 (n + 1)) (A270339 (3 * n + 4))).toNat

end

end A364885.P11690116951002479854

/-!
# A364887: Inverse permutation to A364884.

The programs for A364887, there is no canonical definition to state claims against.
-/

/-! ## A364887.P9162879679966878663

`A056239(lcm(A108951(2*(n+1)), A116505(2*(n+1))))`
-/

namespace A364887.P9162879679966878663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (A108951 (2 * (n + 1))) (A116505 (2 * (n + 1))))

end

end A364887.P9162879679966878663

/-!
# A364892: Row sums of A364891.

The programs for A364892, there is no canonical definition to state claims against.
-/

/-! ## A364892.P3893437411563509718

`A372825(A347206(n))`
-/

namespace A364892.P3893437411563509718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (A347206 n).toNat

end

end A364892.P3893437411563509718

/-! ## A364892.P5984599989162449700

`A111660(A126796(n+1))`
-/

namespace A364892.P5984599989162449700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A126796 (n + 1)).toNat

end

end A364892.P5984599989162449700

/-! ## A364892.P13028986714338105395

`A353090(A328545(n)+1)`
-/

namespace A364892.P13028986714338105395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (A328545 n + 1).toNat

end

end A364892.P13028986714338105395

/-! ## A364892.P10202447821434791058

`A214131(3*n)%A002061(A001317(n))`
-/

namespace A364892.P10202447821434791058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214131 (3 * n)) (A002061 (A001317 n).toNat)

end

end A364892.P10202447821434791058

/-!
# A364893: a(n) is the minimal positive value of m such that A325433(2m, 2n+1) > A364891(2m, 2n+1).

The programs for A364893, there is no canonical definition to state claims against.
-/

/-! ## A364893.P500755215264578122

`A002378(2*n+3)-A055642(A195309(2*n+1))`
-/

namespace A364893.P500755215264578122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * n + 3) - A055642 (A195309 (2 * n + 1)).toNat

end

end A364893.P500755215264578122

/-! ## A364893.P17449671241530424513

`A002939(n+2)-A055642(A000070(2*(n+1)))`
-/

namespace A364893.P17449671241530424513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 2) - A055642 (A000070 (2 * (n + 1))).toNat

end

end A364893.P17449671241530424513

/-! ## A364893.P16422771718128483209

`A002378(2*n+3)-A055642(A116645(3*n+4))`
-/

namespace A364893.P16422771718128483209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * n + 3) - A055642 (A116645 (3 * n + 4)).toNat

end

end A364893.P16422771718128483209

/-! ## A364893.P11955802892226676970

`A035100(A018034(n))+A000290(2*n+3)`
-/

namespace A364893.P11955802892226676970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (A018034 n).toNat + A000290 (2 * n + 3)

end

end A364893.P11955802892226676970

/-! ## A364893.P12136223345513436587

`A002378(2*(n+2))-A169865(2*(n+2))`
-/

namespace A364893.P12136223345513436587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * (n + 2)) - A169865 (2 * (n + 2))

end

end A364893.P12136223345513436587

/-!
# A364894: a(n) = floor(4*n^2 + 7*n - sqrt(n)*log(n)) - floor(n/3).

The programs for A364894, the canonical program `A364894.P13156001567958523882` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364894 has offset 1).

The definition of A364894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*(n+1)²+7*(n+1)-sqrt(n+1)*log(n+1))-floor((n+1)/3)` (program `A364894.P13156001567958523882`, by `A364894.P13156001567958523882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A364894.P13156001567958523882

`floor(4*(n+1)²+7*(n+1)-sqrt(n+1)*log(n+1))-floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A364894

/-- `floor(4*(n+1)²+7*(n+1)-sqrt(n+1)*log(n+1))-floor((n+1)/3)` -/
def P13156001567958523882.Spec : Prop :=
  ∀ n, P13156001567958523882.a n = A364894 (n + 1)

theorem P13156001567958523882.correct : P13156001567958523882.Spec := by
  intro n
  simp only [A364894, Nat.add_sub_cancel]

end A364894

/-! ## A364894.P7136695331362448808

`A245207(2*(n+1))^A000579(n)!`
-/

namespace A364894.P7136695331362448808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245207 (2 * (n + 1)) ^ Nat.factorial (A000579 n).toNat

end

end A364894.P7136695331362448808

namespace A364894

/-- `A245207(2*(n+1))^A000579(n)!` -/
def P7136695331362448808.Spec : Prop :=
  ∀ n, P7136695331362448808.a n = A364894 (n + 1)

end A364894

/-! ## A364894.P14928150570341928347

`A245207(2*(n+1))^A245169(n)!`
-/

namespace A364894.P14928150570341928347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245207 (2 * (n + 1)) ^ Nat.factorial (A245169 n).toNat

end

end A364894.P14928150570341928347

namespace A364894

/-- `A245207(2*(n+1))^A245169(n)!` -/
def P14928150570341928347.Spec : Prop :=
  ∀ n, P14928150570341928347.a n = A364894 (n + 1)

end A364894

