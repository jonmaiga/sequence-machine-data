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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A175801: Number of real zeros of the polynomial whose coefficients are the decimal digits of prime(n).

The programs for A175801, there is no canonical definition to state claims against.
-/

/-! ## A175801.P8777566247259805860

`A117367(A272211(n+1))%A097944(n+1)`
-/

namespace A175801.P8777566247259805860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117367 (A272211 (n + 1)).toNat) (A097944 (n + 1))

end

end A175801.P8777566247259805860

/-! ## A175801.P10405806375392055406

`A047726(A059196(n+1))%A110591(n)`
-/

namespace A175801.P10405806375392055406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047726 (A059196 (n + 1)).toNat) (A110591 n)

end

end A175801.P10405806375392055406

/-! ## A175801.P14033389869106420693

`A265509(A377037(n+2))%Δ[A068670(n)]`
-/

namespace A175801.P14033389869106420693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265509 (A377037 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A175801.P14033389869106420693

/-! ## A175801.P7598829293382194656

`A212631(2*(n+1))%A055642(A000040(n+1))`
-/

namespace A175801.P7598829293382194656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212631 (2 * (n + 1))) (A055642 (A000040 (n + 1)).toNat)

end

end A175801.P7598829293382194656

/-! ## A175801.P15855027101313412367

`floor((A192438(2*n+3)-(n+1))/6)`
-/

namespace A175801.P15855027101313412367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192438 (2 * n + 3) - (n + 1 : ℤ) : ℚ) / 6⌋

end

end A175801.P15855027101313412367

/-!
# A175802: a(n) = 2^(positive nonprime(n)-1) mod (positive nonprime(n+1)).

The programs for A175802, the canonical program `A175802.P4874557558018380858` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175802 has offset 1).

The definition of A175802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175802.P4874557558018380858

`(2^(A018252(n+1)-1))%A018252(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175802

/-- `(2^(A018252(n+1)-1))%A018252(n+2)` -/
def P4874557558018380858.Spec : Prop :=
  ∀ n, P4874557558018380858.a n = A175802 (n + 1)

theorem P4874557558018380858.correct : P4874557558018380858.Spec := by
  intro n
  simp only [A175802, Nat.add_sub_cancel]

end A175802

/-! ## A175802.P640833925567142448

`A011782(A018252(n+1))%A002808(n+1)`
-/

namespace A175802.P640833925567142448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A018252 (n + 1)).toNat) (A002808 (n + 1))

end

end A175802.P640833925567142448

namespace A175802

/-- `A011782(A018252(n+1))%A002808(n+1)` -/
def P640833925567142448.Spec : Prop :=
  ∀ n, P640833925567142448.a n = A175802 (n + 1)

end A175802

/-!
# A175803: a(n) = 2^(prime(n)-2) mod prime(n+2).

The programs for A175803, the canonical program `A175803.P17996662317972865960` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175803 has offset 1).

The definition of A175803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(A000040(n+1)-2))%A000040(n+3)` (program `A175803.P17996662317972865960`, by `A175803.P17996662317972865960.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175803.P17996662317972865960

`(2^(A000040(n+1)-2))%A000040(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175803

/-- `(2^(A000040(n+1)-2))%A000040(n+3)` -/
def P17996662317972865960.Spec : Prop :=
  ∀ n, P17996662317972865960.a n = A175803 (n + 1)

theorem P17996662317972865960.correct : P17996662317972865960.Spec := by
  intro n
  simp only [A175803, Nat.add_sub_cancel]

end A175803

/-! ## A175803.P253746321456620170

`(2^A040976(n+1))%A004139(n+1)`
-/

namespace A175803.P253746321456620170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A040976 (n + 1) : ℤ))) (A004139 (n + 1))

end

end A175803.P253746321456620170

namespace A175803

/-- `(2^A040976(n+1))%A004139(n+1)` -/
def P253746321456620170.Spec : Prop :=
  ∀ n, P253746321456620170.a n = A175803 (n + 1)

end A175803

/-! ## A175803.P5780233853506551835

`A011782(A006093(n+1))%A004139(n+1)`
-/

namespace A175803.P5780233853506551835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A006093 (n + 1)).toNat) (A004139 (n + 1))

end

end A175803.P5780233853506551835

namespace A175803

/-- `A011782(A006093(n+1))%A004139(n+1)` -/
def P5780233853506551835.Spec : Prop :=
  ∀ n, P5780233853506551835.a n = A175803 (n + 1)

end A175803

/-! ## A175803.P6858335962381744170

`A131577(A039915(n+1))%A004139(n+1)`
-/

namespace A175803.P6858335962381744170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A039915 (n + 1)).toNat) (A004139 (n + 1))

end

end A175803.P6858335962381744170

namespace A175803

/-- `A131577(A039915(n+1))%A004139(n+1)` -/
def P6858335962381744170.Spec : Prop :=
  ∀ n, P6858335962381744170.a n = A175803 (n + 1)

end A175803

/-! ## A175803.P7065664114756127059

`A131577(A006093(n+1))%A073579(n+3)`
-/

namespace A175803.P7065664114756127059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A006093 (n + 1)).toNat) (A073579 (n + 3))

end

end A175803.P7065664114756127059

namespace A175803

/-- `A131577(A006093(n+1))%A073579(n+3)` -/
def P7065664114756127059.Spec : Prop :=
  ∀ n, P7065664114756127059.a n = A175803 (n + 1)

end A175803

/-! ## A175803.P10626264691379848050

`A000079(A040976(n+1))%A008578(n+4)`
-/

namespace A175803.P10626264691379848050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A040976 (n + 1)).toNat) (A008578 (n + 4))

end

end A175803.P10626264691379848050

namespace A175803

/-- `A000079(A040976(n+1))%A008578(n+4)` -/
def P10626264691379848050.Spec : Prop :=
  ∀ n, P10626264691379848050.a n = A175803 (n + 1)

end A175803

/-! ## A175803.P14787417446692642562

`A166444(A008578(n+2))%A073579(n+3)`
-/

namespace A175803.P14787417446692642562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166444 (A008578 (n + 2)).toNat) (A073579 (n + 3))

end

end A175803.P14787417446692642562

namespace A175803

/-- `A166444(A008578(n+2))%A073579(n+3)` -/
def P14787417446692642562.Spec : Prop :=
  ∀ n, P14787417446692642562.a n = A175803 (n + 1)

end A175803

/-! ## A175803.P11077397692638135280

`A034008(A000040(n+1))%A000040(A171463(n+1))`
-/

namespace A175803.P11077397692638135280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034008 (A000040 (n + 1)).toNat) (A000040 (A171463 (n + 1)).toNat)

end

end A175803.P11077397692638135280

namespace A175803

/-- `A034008(A000040(n+1))%A000040(A171463(n+1))` -/
def P11077397692638135280.Spec : Prop :=
  ∀ n, P11077397692638135280.a n = A175803 (n + 1)

end A175803

/-!
# A175804: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the n-th term of the k-th differences of partition numbers A000041.

The programs for A175804, there is no canonical definition to state claims against.
-/

/-! ## A175804.P11489955854297163815

`A227431(A187829(A038722(n+1)))`
-/

namespace A175804.P11489955854297163815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A187829 (A038722 (n + 1)).toNat).toNat

end

end A175804.P11489955854297163815

/-! ## A175804.P3486178030368513089

`A227431(A001222(2^A038722(n+1)))`
-/

namespace A175804.P3486178030368513089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A038722 (n + 1) : ℤ))).toNat).toNat

end

end A175804.P3486178030368513089

/-! ## A175804.P1110592993980334434

`A227431(A151839(n)+A038722(n+1))`
-/

namespace A175804.P1110592993980334434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A151839 n + A038722 (n + 1)).toNat

end

end A175804.P1110592993980334434

/-! ## A175804.P4241932034897242693

`A227431(A038722(n+1)%A227437(n+4))`
-/

namespace A175804.P4241932034897242693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (Int.tmod (A038722 (n + 1)) (A227437 (n + 4))).toNat

end

end A175804.P4241932034897242693

/-!
# A175805: a(n) = 21*2^n.

The programs for A175805, the canonical program `A175805.P14748781579154574710` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175805 has offset 0).

The definition of A175805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*2^n` (program `A175805.P14748781579154574710`, by `A175805.P14748781579154574710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175805.P14748781579154574710

`21*2^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175805

/-- `21*2^n` -/
def P14748781579154574710.Spec : Prop :=
  ∀ n, (P14748781579154574710.a n : ℤ) = A175805 n

theorem P14748781579154574710.correct : P14748781579154574710.Spec := by
  intro n
  simp only [A175805]

end A175805

/-!
# A175806: a(n) = 27*2^n.

The programs for A175806, the canonical program `A175806.P10746636583835692110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175806 has offset 0).

The definition of A175806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*2^n` (program `A175806.P10746636583835692110`, by `A175806.P10746636583835692110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175806.P10746636583835692110

`27*2^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175806

/-- `27*2^n` -/
def P10746636583835692110.Spec : Prop :=
  ∀ n, (P10746636583835692110.a n : ℤ) = A175806 n

theorem P10746636583835692110.correct : P10746636583835692110.Spec := by
  intro n
  simp only [A175806]

end A175806

/-!
# A175807: A007318-perfect numbers.

The programs for A175807, there is no canonical definition to state claims against.
-/

/-! ## A175807.P7147159981774930780

`record[A185415(n+1)+A134478(n)]`
-/

namespace A175807.P7147159981774930780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185415 (n + 1) + A134478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175807.P7147159981774930780

/-! ## A175807.P4312117629902643085

`A065681(A065646(n))+A034699(n+1)`
-/

namespace A175807.P4312117629902643085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065681 (A065646 n).toNat + A034699 (n + 1)

end

end A175807.P4312117629902643085

/-! ## A175807.P5486164922873814654

`A321211(A289759(n+1))+A002266(n)`
-/

namespace A175807.P5486164922873814654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321211 (A289759 (n + 1)).toNat + A002266 n

end

end A175807.P5486164922873814654

/-!
# A175808: a(n) is the length of a shortest common superstring of the binary representations of all natural numbers from 1 to n.

The programs for A175808, there is no canonical definition to state claims against.
-/

/-! ## A175808.P16510401482470242658

`floor(log2(A056744(n+1)))+1`
-/

namespace A175808.P16510401482470242658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A056744 (n + 1)).toNat + 1

end

end A175808.P16510401482470242658

/-! ## A175808.P1751341159781901154

`floor(log2(A175810(n+1)))+1`
-/

namespace A175808.P1751341159781901154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A175810 (n + 1)).toNat + 1

end

end A175808.P1751341159781901154

/-! ## A175808.P3342979059186814704

`A348553(floor(log2(A175810(n+1))))`
-/

namespace A175808.P3342979059186814704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (Nat.log 2 (A175810 (n + 1)).toNat)

end

end A175808.P3342979059186814704

/-! ## A175808.P9201603088694873307

`ceil(log2(A175810(n+1)+A175782(n)))`
-/

namespace A175808.P9201603088694873307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A175810 (n + 1) + A175782 n : ℝ)⌉

end

end A175808.P9201603088694873307

/-! ## A175808.P14537575717399724722

`ceil(log2(A175832(n)+A175810(n+1)))`
-/

namespace A175808.P14537575717399724722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A175832 n + A175810 (n + 1) : ℝ)⌉

end

end A175808.P14537575717399724722

/-!
# A175810: To calculate n-th term, find all shortest common superstrings of the binary representations of all natural numbers from 1 to n, read them as numbers in base-2, and pick max.

The programs for A175810, there is no canonical definition to state claims against.
-/

/-! ## A175810.P11375485515790780932

`A233569(A056744(n+1))`
-/

namespace A175810.P11375485515790780932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A056744 (n + 1)).toNat

end

end A175810.P11375485515790780932

/-! ## A175810.P2172496742349688959

`A233569(A344184(n+1))`
-/

namespace A175810.P2172496742349688959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A344184 (n + 1)).toNat

end

end A175810.P2172496742349688959

/-! ## A175810.P7279099375627612715

`A057889(A056744(n+1)%A079543(n+1))`
-/

namespace A175810.P7279099375627612715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A056744 (n + 1)) (A079543 (n + 1))).toNat

end

end A175810.P7279099375627612715

/-! ## A175810.P2487220723508575927

`A057889(A344184(n+1)%A079543(n+1))`
-/

namespace A175810.P2487220723508575927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A344184 (n + 1)) (A079543 (n + 1))).toNat

end

end A175810.P2487220723508575927

/-! ## A175810.P17424950817574539589

`A057889(lcm(A056744(n+1), A344184(n+1)))`
-/

namespace A175810.P17424950817574539589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lcm (A056744 (n + 1)) (A344184 (n + 1)))

end

end A175810.P17424950817574539589

/-!
# A175811: A007318-deficient numbers.

The programs for A175811, there is no canonical definition to state claims against.
-/

/-! ## A175811.P5758037156920044107

`lt[lcm(2, A257564(n+1)), A007318(n)]`
-/

namespace A175811.P5758037156920044107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257564 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175811.P5758037156920044107

/-! ## A175811.P7347181887863248323

`lt[A046080(A056893(2*(n+2))), A051168(n)]`
-/

namespace A175811.P7347181887863248323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A056893 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175811.P7347181887863248323

/-! ## A175811.P6320855382032666676

`lt[floor((3*n-2)/a(n-1)), A100862(n)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A175811.P6320855382032666676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  ⌊((3 * n : ℤ) - 2 : ℚ) / (f1 (n - 1) : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175811.P6320855382032666676

/-! ## A175811.P14107471418540568284

`lt[A062830(n), A096583(n)]`
-/

namespace A175811.P14107471418540568284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096583 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175811.P14107471418540568284

/-! ## A175811.P18382903409731182399

`A028310(lt[A078898(n), A034254(n+1)])`
-/

namespace A175811.P18382903409731182399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175811.P18382903409731182399

/-!
# A175812: Partial sums of ceiling(n^2/6).

The programs for A175812, the canonical program `A175812.P12623543403913970991` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175812 has offset 0).

The definition of A175812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175812.P12623543403913970991

`floor((n+1)*(2*n²+n+17)/36)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175812

/-- `floor((n+1)*(2*n²+n+17)/36)` -/
def P12623543403913970991.Spec : Prop :=
  ∀ n, P12623543403913970991.a n = A175812 n

theorem P12623543403913970991.correct : P12623543403913970991.Spec := by
  intro n
  simp only [A175812]

end A175812

/-! ## A175812.P8004479981088526523

`a(n-6)+(n+1)*(n-6)+18` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=12`
-/

namespace A175812.P8004479981088526523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 7, 12] fun n a =>
  a (n - 6) + (n + 1 : ℤ) * ((n : ℤ) - 6) + 18

end

end A175812.P8004479981088526523

namespace A175812

/-- `a(n-6)+(n+1)*(n-6)+18` -/
def P8004479981088526523.Spec : Prop :=
  ∀ n, P8004479981088526523.a n = A175812 n

end A175812

/-! ## A175812.P9513317018586556080

`a(n-1)+ceil(n²/6)` with `a(0)=0`
-/

namespace A175812.P9513317018586556080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 6⌉

end

end A175812.P9513317018586556080

namespace A175812

/-- `a(n-1)+ceil(n²/6)` -/
def P9513317018586556080.Spec : Prop :=
  ∀ n, P9513317018586556080.a n = A175812 n

end A175812

/-! ## A175812.P6129405980249273122

`∑[A337483(n)]+n`
-/

namespace A175812.P6129405980249273122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175812.P6129405980249273122

namespace A175812

/-- `∑[A337483(n)]+n` -/
def P6129405980249273122.Spec : Prop :=
  ∀ n, P6129405980249273122.a n = A175812 n

end A175812

/-! ## A175812.P2840733849564165467

`∑[A001840(n)]-floor((n/2)²)`
-/

namespace A175812.P2840733849564165467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A175812.P2840733849564165467

namespace A175812

/-- `∑[A001840(n)]-floor((n/2)²)` -/
def P2840733849564165467.Spec : Prop :=
  ∀ n, P2840733849564165467.a n = A175812 n

end A175812

/-! ## A175812.P2658173756354340170

`abs(∑[ceil((A002378(n)-n)/6)])`
-/

namespace A175812.P2658173756354340170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002378 n - (n : ℤ) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A175812.P2658173756354340170

namespace A175812

/-- `abs(∑[ceil((A002378(n)-n)/6)])` -/
def P2658173756354340170.Spec : Prop :=
  ∀ n, P2658173756354340170.a n = A175812 n

end A175812

/-! ## A175812.P63840990307085940

`A175870(n)+∑[floor(n²/8)]`
-/

namespace A175812.P63840990307085940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175812.P63840990307085940

namespace A175812

/-- `A175870(n)+∑[floor(n²/8)]` -/
def P63840990307085940.Spec : Prop :=
  ∀ n, P63840990307085940.a n = A175812 n

end A175812

/-! ## A175812.P11559940260303886879

`A181120(n)+A175831(n)`
-/

namespace A175812.P11559940260303886879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A175831 n

end

end A175812.P11559940260303886879

namespace A175812

/-- `A181120(n)+A175831(n)` -/
def P11559940260303886879.Spec : Prop :=
  ∀ n, P11559940260303886879.a n = A175812 n

end A175812

/-! ## A175812.P10486091751079401720

`A014126(n)-A281333(n)`
-/

namespace A175812.P10486091751079401720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n - A281333 n

end

end A175812.P10486091751079401720

namespace A175812

/-- `A014126(n)-A281333(n)` -/
def P10486091751079401720.Spec : Prop :=
  ∀ n, P10486091751079401720.a n = A175812 n

end A175812

/-! ## A175812.P12174889164785167837

`A299265(n)-A007904(n)`
-/

namespace A175812.P12174889164785167837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299265 n - A007904 n

end

end A175812.P12174889164785167837

namespace A175812

/-- `A299265(n)-A007904(n)` -/
def P12174889164785167837.Spec : Prop :=
  ∀ n, P12174889164785167837.a n = A175812 n

end A175812

/-! ## A175812.P10109424016904842648

`A131941(n)-A181286(n)`
-/

namespace A175812.P10109424016904842648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - A181286 n

end

end A175812.P10109424016904842648

namespace A175812

/-- `A131941(n)-A181286(n)` -/
def P10109424016904842648.Spec : Prop :=
  ∀ n, P10109424016904842648.a n = A175812 n

end A175812

/-! ## A175812.P10203422967746306862

`A175287(n)-A181120(n)`
-/

namespace A175812.P10203422967746306862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - A181120 n

end

end A175812.P10203422967746306862

namespace A175812

/-- `A175287(n)-A181120(n)` -/
def P10203422967746306862.Spec : Prop :=
  ∀ n, P10203422967746306862.a n = A175812 n

end A175812

/-! ## A175812.P1639046738036262026

`∑[A008747(n)]-A008747(n)`
-/

namespace A175812.P1639046738036262026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008747 n

end

end A175812.P1639046738036262026

namespace A175812

/-- `∑[A008747(n)]-A008747(n)` -/
def P1639046738036262026.Spec : Prop :=
  ∀ n, P1639046738036262026.a n = A175812 n

end A175812

/-! ## A175812.P5874309772012779422

`A131941(n)-∑[∑[A004523(n)]]`
-/

namespace A175812.P5874309772012779422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175812.P5874309772012779422

namespace A175812

/-- `A131941(n)-∑[∑[A004523(n)]]` -/
def P5874309772012779422.Spec : Prop :=
  ∀ n, P5874309772012779422.a n = A175812 n

end A175812

/-! ## A175812.P5050595479268303903

`A322042(n+1)+2*A181120(n)`
-/

namespace A175812.P5050595479268303903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + 2 * A181120 n

end

end A175812.P5050595479268303903

namespace A175812

/-- `A322042(n+1)+2*A181120(n)` -/
def P5050595479268303903.Spec : Prop :=
  ∀ n, P5050595479268303903.a n = A175812 n

end A175812

/-! ## A175812.P7402799439479870584

`2*A175831(n)-A322042(n+1)`
-/

namespace A175812.P7402799439479870584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175831 n - A322042 (n + 1)

end

end A175812.P7402799439479870584

namespace A175812

/-- `2*A175831(n)-A322042(n+1)` -/
def P7402799439479870584.Spec : Prop :=
  ∀ n, P7402799439479870584.a n = A175812 n

end A175812

/-! ## A175812.P4062829258377556915

`A002623(n)-(A002620(n)+A000601(n))`
-/

namespace A175812.P4062829258377556915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - (A002620 n + A000601 n)

end

end A175812.P4062829258377556915

namespace A175812

/-- `A002623(n)-(A002620(n)+A000601(n))` -/
def P4062829258377556915.Spec : Prop :=
  ∀ n, P4062829258377556915.a n = A175812 n

end A175812

/-! ## A175812.P3262412150638705635

`∑[A156040(n+1)-(n+1)]`
-/

namespace A175812.P3262412150638705635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175812.P3262412150638705635

namespace A175812

/-- `∑[A156040(n+1)-(n+1)]` -/
def P3262412150638705635.Spec : Prop :=
  ∀ n, P3262412150638705635.a n = A175812 n

end A175812

/-! ## A175812.P14247139245409250887

`A173691(n+1)-A056829(n)`
-/

namespace A175812.P14247139245409250887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173691 (n + 1) - A056829 n

end

end A175812.P14247139245409250887

namespace A175812

/-- `A173691(n+1)-A056829(n)` -/
def P14247139245409250887.Spec : Prop :=
  ∀ n, P14247139245409250887.a n = A175812 n

end A175812

/-! ## A175812.P331919619804779219

`∑[A056829(n+1)]-A056829(n)`
-/

namespace A175812.P331919619804779219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056829 n

end

end A175812.P331919619804779219

namespace A175812

/-- `∑[A056829(n+1)]-A056829(n)` -/
def P331919619804779219.Spec : Prop :=
  ∀ n, P331919619804779219.a n = A175812 n

end A175812

/-!
# A175813: Numbers m such that the first m decimal digits of Pi contain equal numbers of even and odd decimal digits.

The programs for A175813, there is no canonical definition to state claims against.
-/

/-! ## A175813.P1453185997514037565

`eq[0, A196686(A028310(n))]`
-/

namespace A175813.P1453185997514037565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196686 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175813.P1453185997514037565

/-!
# A175814: Numbers k such that the first k decimal digits of e contain equal numbers of even and odd decimal digits.

The programs for A175814, there is no canonical definition to state claims against.
-/

/-! ## A175814.P15919403001035139424

`eq[0, A175793(A028310(n))]`
-/

namespace A175814.P15919403001035139424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175793 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175814.P15919403001035139424

/-!
# A175815: Numbers k such that the first k decimal digits of Euler's constant gamma contain equal numbers of even and odd decimal digits.

The programs for A175815, there is no canonical definition to state claims against.
-/

/-! ## A175815.P4009042436423916811

`eq[0, A175794(A028310(n))]`
-/

namespace A175815.P4009042436423916811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175815.P4009042436423916811

/-! ## A175815.P16889421966081694935

`A014681(eq[0, A175794(n+1)])`
-/

namespace A175815.P16889421966081694935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175815.P16889421966081694935

/-! ## A175815.P11767953868701258558

`eq[0, A175794(A065190(n+1))]`
-/

namespace A175815.P11767953868701258558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175794 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175815.P11767953868701258558

/-! ## A175815.P14341359611198914586

`eq[0, A175794(A123882(n+1))]`
-/

namespace A175815.P14341359611198914586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175794 (A123882 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175815.P14341359611198914586

/-! ## A175815.P15535174860634297970

`A153152(eq[0, A175794(n+1)])`
-/

namespace A175815.P15535174860634297970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175815.P15535174860634297970

/-!
# A175816: a(n) = Sum_{k=1..n} (-1)^A001622(k).

The programs for A175816, there is no canonical definition to state claims against.
-/

/-! ## A175816.P17882507308241068278

`∑[(-1)^A001622(n)]`
-/

namespace A175816.P17882507308241068278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001622 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P17882507308241068278

/-! ## A175816.P7793808500707281325

`∑[(-1)^A296184(n)]`
-/

namespace A175816.P7793808500707281325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A296184 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P7793808500707281325

/-! ## A175816.P10095665514291171367

`∑[(-1)^A098369(∑[n])]`
-/

namespace A175816.P10095665514291171367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A098369 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P10095665514291171367

/-! ## A175816.P17728004876630890006

`∑[-(-1)^A079585(n)]`
-/

namespace A175816.P17728004876630890006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A079585 (n + 1) : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P17728004876630890006

/-! ## A175816.P8389863342911719504

`∑[(-1)^A094214(abs(1-n))]`
-/

namespace A175816.P8389863342911719504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A094214 |1 - (n : ℤ)|.toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P8389863342911719504

/-! ## A175816.P2434419297571127361

`∑[(-1)^(9-A109866(n+1))]`
-/

namespace A175816.P2434419297571127361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (9 - A109866 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P2434419297571127361

/-! ## A175816.P14458425686519494693

`∑[(-1)^A104457(abs(1-n)+1)]`
-/

namespace A175816.P14458425686519494693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A104457 ((|1 - (n : ℤ)| + 1).toNat + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P14458425686519494693

/-! ## A175816.P16089004227327022211

`∑[A033999(A098369(∑[n]))]`
-/

namespace A175816.P16089004227327022211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A098369 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P16089004227327022211

/-! ## A175816.P7674402861522876779

`∑[A033999(A001622(n)+2*n)]`
-/

namespace A175816.P7674402861522876779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001622 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P7674402861522876779

/-! ## A175816.P7278025872821489419

`∑[A033999(or(2*n, A001622(n)))]`
-/

namespace A175816.P7278025872821489419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.lor (2 * n : ℤ) (A001622 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175816.P7278025872821489419

/-!
# A175818: Concatenate all previous terms in base 2 and add 1.

The programs for A175818, there is no canonical definition to state claims against.
-/

/-! ## A175818.P14596721809658750480

`A391588(a(n-1))+2` with `a(0)=1`
-/

namespace A175818.P14596721809658750480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A391588 (a (n - 1)).toNat + 2

end

end A175818.P14596721809658750480

/-!
# A175819: Partial sums of digits of decimal expansion of Khinchin's constant (sequence A002210).

The programs for A175819, there is no canonical definition to state claims against.
-/

/-! ## A175819.P6574567058124964939

`∑[A002210(n)]`
-/

namespace A175819.P6574567058124964939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175819.P6574567058124964939

/-! ## A175819.P689696653318682504

`A002210(n)+a(A023443(n))` with `a(0)=2`
-/

namespace A175819.P689696653318682504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002210 (n + 1) + a (A023443 n).toNat

end

end A175819.P689696653318682504

/-! ## A175819.P370943720335594552

`A028310(a(n-1))+A002210(n)` with `a(0)=2`
-/

namespace A175819.P370943720335594552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A028310 (a (n - 1)).toNat + A002210 (n + 1)

end

end A175819.P370943720335594552

/-! ## A175819.P6821180568179443505

`A002210(n)+a(A137735(n²)-1)` with `a(0)=2`
-/

namespace A175819.P6821180568179443505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002210 (n + 1) + a (A137735 (n ^ 2) - 1).toNat

end

end A175819.P6821180568179443505

/-! ## A175819.P16310659443662207335

`A103627(3*a(n-1))+A002210(n)` with `a(0)=2`
-/

namespace A175819.P16310659443662207335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A103627 (3 * a (n - 1)).toNat + A002210 (n + 1)

end

end A175819.P16310659443662207335

/-! ## A175819.P8523100723092833090

`A002210(n)+a(A000007(n)-1+n)` with `a(0)=2`
-/

namespace A175819.P8523100723092833090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002210 (n + 1) + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A175819.P8523100723092833090

/-!
# A175820: Partial sums of digits of decimal expansion of Glaisher-Kinkelin constant (sequence A074962).

The programs for A175820, there is no canonical definition to state claims against.
-/

/-! ## A175820.P2396146040154686690

`∑[A074962(n)]`
-/

namespace A175820.P2396146040154686690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175820.P2396146040154686690

/-! ## A175820.P2103418866119565004

`A074962(or(n, char[3]))+a(n-1)` with `a(0)=1`
-/

namespace A175820.P2103418866119565004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074962 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0) + 1) + a (n - 1)

end

end A175820.P2103418866119565004

/-! ## A175820.P13301720346079763097

`A074962(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A175820.P13301720346079763097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074962 ((|1 - (n : ℤ)| + 1).toNat + 1) + a (n - 1)

end

end A175820.P13301720346079763097

/-! ## A175820.P11883477749509593575

`A000027(A074962(n)+a(n-1))` with `a(0)=1`
-/

namespace A175820.P11883477749509593575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A074962 (n + 1) + a (n - 1)).toNat

end

end A175820.P11883477749509593575

/-! ## A175820.P16006339915992118199

`A181440(A074962(n)+a(n-1))` with `a(0)=1`
-/

namespace A175820.P16006339915992118199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181440 (A074962 (n + 1) + a (n - 1)).toNat

end

end A175820.P16006339915992118199

/-! ## A175820.P11360360725820735017

`A123108(2*a(n-1))+A074962(n)` with `a(0)=1`
-/

namespace A175820.P11360360725820735017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123108 (2 * a (n - 1)).toNat + A074962 (n + 1)

end

end A175820.P11360360725820735017

/-! ## A175820.P10461709727899149267

`a(n-1)+A057427(n)*A074962(n)` with `a(0)=1`
-/

namespace A175820.P10461709727899149267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A074962 (n + 1)

end

end A175820.P10461709727899149267

/-!
# A175821: A007318-abundant numbers.

The programs for A175821, there is no canonical definition to state claims against.
-/

/-! ## A175821.P3708218051757029954

`lt[A002808(A026714(n+1)), A003415(n)]`
-/

namespace A175821.P3708218051757029954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A026714 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175821.P3708218051757029954

/-! ## A175821.P8650074400423674232

`lt[A028310(A176348(n)), A003415(n)]`
-/

namespace A175821.P8650074400423674232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A176348 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175821.P8650074400423674232

/-! ## A175821.P15256339602081465344

`lt[A189526(A088699(n)), A003415(n)]`
-/

namespace A175821.P15256339602081465344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189526 (A088699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175821.P15256339602081465344

/-! ## A175821.P8028196802105264882

`lt[A366612(A007318(n)), A003415(n)]`
-/

namespace A175821.P8028196802105264882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366612 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175821.P8028196802105264882

/-! ## A175821.P11191667450408252410

`lt[A348058(A028262(n)), A003415(n)]`
-/

namespace A175821.P11191667450408252410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348058 (A028262 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175821.P11191667450408252410

/-!
# A175822: Partial sums of ceiling(n^2/7).

The programs for A175822, the canonical program `A175822.P21251282060970992` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175822 has offset 0).

The definition of A175822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175822.P21251282060970992

`round((2*n+1)*(n²+n+12)/42)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175822

/-- `round((2*n+1)*(n²+n+12)/42)` -/
def P21251282060970992.Spec : Prop :=
  ∀ n, P21251282060970992.a n = A175822 n

theorem P21251282060970992.correct : P21251282060970992.Spec := by
  intro n
  simp only [A175822]

end A175822

/-! ## A175822.P15224866618088576828

`a(n-7)+(n+1)*(n-7)+24` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=11, a(6)=17`
-/

namespace A175822.P15224866618088576828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 7, 11, 17] fun n a =>
  a (n - 7) + (n + 1 : ℤ) * ((n : ℤ) - 7) + 24

end

end A175822.P15224866618088576828

namespace A175822

/-- `a(n-7)+(n+1)*(n-7)+24` -/
def P15224866618088576828.Spec : Prop :=
  ∀ n, P15224866618088576828.a n = A175822 n

end A175822

/-! ## A175822.P8967014583358436839

`abs(∑[floor((n²-tan(8))/7)])`
-/

namespace A175822.P8967014583358436839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℝ) - Real.tan (8 : ℝ)) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A175822.P8967014583358436839

namespace A175822

/-- `abs(∑[floor((n²-tan(8))/7)])` -/
def P8967014583358436839.Spec : Prop :=
  ∀ n, P8967014583358436839.a n = A175822 n

end A175822

/-! ## A175822.P4678266369136585689

`a(n-1)+ceil(n²/7)` with `a(0)=0`
-/

namespace A175822.P4678266369136585689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 7⌉

end

end A175822.P4678266369136585689

namespace A175822

/-- `a(n-1)+ceil(n²/7)` -/
def P4678266369136585689.Spec : Prop :=
  ∀ n, P4678266369136585689.a n = A175822 n

end A175822

/-! ## A175822.P1584570312100687463

`∑[A036405(n)]`
-/

namespace A175822.P1584570312100687463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175822.P1584570312100687463

namespace A175822

/-- `∑[A036405(n)]` -/
def P1584570312100687463.Spec : Prop :=
  ∀ n, P1584570312100687463.a n = A175822 n

end A175822

/-! ## A175822.P1223827472532344742

`floor(∑[A087475(n)]/7)`
-/

namespace A175822.P1223827472532344742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7⌋

end

end A175822.P1223827472532344742

namespace A175822

/-- `floor(∑[A087475(n)]/7)` -/
def P1223827472532344742.Spec : Prop :=
  ∀ n, P1223827472532344742.a n = A175822 n

end A175822

/-! ## A175822.P12972942505156890567

`A172046(n)+A145569(n)`
-/

namespace A175822.P12972942505156890567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172046 n + A145569 n

end

end A175822.P12972942505156890567

namespace A175822

/-- `A172046(n)+A145569(n)` -/
def P12972942505156890567.Spec : Prop :=
  ∀ n, P12972942505156890567.a n = A175822 n

end A175822

/-! ## A175822.P1048439305202837985

`∑[A025784(A016789(n+1)+n+1)]-∑[n+1]`
-/

namespace A175822.P1048439305202837985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025784 (A016789 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A175822.P1048439305202837985

namespace A175822

/-- `∑[A025784(A016789(n+1)+n+1)]-∑[n+1]` -/
def P1048439305202837985.Spec : Prop :=
  ∀ n, P1048439305202837985.a n = A175822 n

end A175822

/-! ## A175822.P10168508207560423461

`∑[A057356(∑[n+3])]-∑[n]`
-/

namespace A175822.P10168508207560423461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A175822.P10168508207560423461

namespace A175822

/-- `∑[A057356(∑[n+3])]-∑[n]` -/
def P10168508207560423461.Spec : Prop :=
  ∀ n, P10168508207560423461.a n = A175822 n

end A175822

/-! ## A175822.P15049166909466284931

`∑[A242062(n²+3)]`
-/

namespace A175822.P15049166909466284931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (n ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175822.P15049166909466284931

namespace A175822

/-- `∑[A242062(n²+3)]` -/
def P15049166909466284931.Spec : Prop :=
  ∀ n, P15049166909466284931.a n = A175822 n

end A175822

/-! ## A175822.P2089395847177296813

`∑[n²]-Δ[A174738(n²)]`
-/

namespace A175822.P2089395847177296813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A175822.P2089395847177296813

namespace A175822

/-- `∑[n²]-Δ[A174738(n²)]` -/
def P2089395847177296813.Spec : Prop :=
  ∀ n, P2089395847177296813.a n = A175822 n

end A175822

/-!
# A175823: Numbers k such that gcd(k^2, reverse(k^2)) = k.

The programs for A175823, there is no canonical definition to state claims against.
-/

/-! ## A175823.P523807301333024687

`∩[A360454(n+1), A391584(n+1)]`
-/

namespace A175823.P523807301333024687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175823.P523807301333024687

/-!
# A175824: Maximum unsigned integer that can be stored in n bytes.

The programs for A175824, the canonical program `A175824.P15046591693608190189` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175824 has offset 0).

The definition of A175824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175824.P15046591693608190189

`2^(8*n)-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175824

/-- `2^(8*n)-1` -/
def P15046591693608190189.Spec : Prop :=
  ∀ n, P15046591693608190189.a n = A175824 n

theorem P15046591693608190189.correct : P15046591693608190189.Spec := by
  intro n
  simp only [A175824]

end A175824

/-! ## A175824.P17203731033696696603

`(A001025(n)-1)*(A024036(n)²+A004171(n))`
-/

namespace A175824.P17203731033696696603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001025 n - 1) * (A024036 n ^ 2 + A004171 n)

end

end A175824.P17203731033696696603

namespace A175824

/-- `(A001025(n)-1)*(A024036(n)²+A004171(n))` -/
def P17203731033696696603.Spec : Prop :=
  ∀ n, P17203731033696696603.a n = A175824 n

end A175824

/-! ## A175824.P5466242081971333810

`xor(-1, -4^(4*n))`
-/

namespace A175824.P5466242081971333810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(4 ^ (4 * n) : ℤ))

end

end A175824.P5466242081971333810

namespace A175824

/-- `xor(-1, -4^(4*n))` -/
def P5466242081971333810.Spec : Prop :=
  ∀ n, P5466242081971333810.a n = A175824 n

end A175824

/-! ## A175824.P11691741033234912079

`record[gcd(4, 1-n)^(n+3)-1]`
-/

namespace A175824.P11691741033234912079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (1 - (n : ℤ)) ^ (n + 3) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175824.P11691741033234912079

namespace A175824

/-- `record[gcd(4, 1-n)^(n+3)-1]` -/
def P11691741033234912079.Spec : Prop :=
  ∀ n, P11691741033234912079.a n = A175824 n

end A175824

/-! ## A175824.P12306514047874861388

`A024036(4*n)`
-/

namespace A175824.P12306514047874861388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (4 * n)

end

end A175824.P12306514047874861388

namespace A175824

/-- `A024036(4*n)` -/
def P12306514047874861388.Spec : Prop :=
  ∀ n, P12306514047874861388.a n = A175824 n

end A175824

/-!
# A175825: Maximum signed integer that can be stored in n bytes.

The programs for A175825, the canonical program `A175825.P1161939752678188163` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175825 has offset 1).

The definition of A175825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175825.P1161939752678188163

`2^(8*(n+1)-1)-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175825

/-- `2^(8*(n+1)-1)-1` -/
def P1161939752678188163.Spec : Prop :=
  ∀ n, P1161939752678188163.a n = (A175825 (n + 1) : ℚ)

end A175825

/-! ## A175825.P6187870325842351140

`record[2^xor(7, n)-1]`
-/

namespace A175825.P6187870325842351140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 7 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175825.P6187870325842351140

namespace A175825

/-- `record[2^xor(7, n)-1]` -/
def P6187870325842351140.Spec : Prop :=
  ∀ n, P6187870325842351140.a n = A175825 (n + 1)

end A175825

/-! ## A175825.P16807485358302753428

`A241955(Δ[n²])`
-/

namespace A175825.P16807485358302753428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175825.P16807485358302753428

namespace A175825

/-- `A241955(Δ[n²])` -/
def P16807485358302753428.Spec : Prop :=
  ∀ n, P16807485358302753428.a n = A175825 (n + 1)

end A175825

/-! ## A175825.P15230082137738983279

`A000225(record[xor(7, n)])`
-/

namespace A175825.P15230082137738983279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175825.P15230082137738983279

namespace A175825

/-- `A000225(record[xor(7, n)])` -/
def P15230082137738983279.Spec : Prop :=
  ∀ n, P15230082137738983279.a n = A175825 (n + 1)

end A175825

/-! ## A175825.P14861218706031108790

`A267935(4*n+3)`
-/

namespace A175825.P14861218706031108790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267935 (4 * n + 3)

end

end A175825.P14861218706031108790

namespace A175825

/-- `A267935(4*n+3)` -/
def P14861218706031108790.Spec : Prop :=
  ∀ n, P14861218706031108790.a n = A175825 (n + 1)

end A175825

/-!
# A175826: Partial sums of ceiling(n^2/8).

The programs for A175826, the canonical program `A175826.P8226326510971726201` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175826 has offset 0).

The definition of A175826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175826.P12561057150146580998

`floor((n+1)*(2*n²+n+27)/48)`
-/

namespace A175826.P12561057150146580998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * (2 * n ^ 2 + n + 27) : ℚ) / 48⌋

end

end A175826.P12561057150146580998

namespace A175826

/-- `floor((n+1)*(2*n²+n+27)/48)` -/
def P12561057150146580998.Spec : Prop :=
  ∀ n, P12561057150146580998.a n = A175826 n

end A175826

/-! ## A175826.P8226326510971726201

`a(n-8)+(n+1)*(n-8)+30` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=10, a(6)=15, a(7)=22`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175826

/-- `a(n-8)+(n+1)*(n-8)+30` -/
def P8226326510971726201.Spec : Prop :=
  ∀ n, P8226326510971726201.a n = A175826 n

theorem P8226326510971726201.correct : P8226326510971726201.Spec := by
  intro n
  simp only [A175826]

end A175826

/-! ## A175826.P4379722336052757709

`a(n-1)+ceil(n²/8)` with `a(0)=0`
-/

namespace A175826.P4379722336052757709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 8⌉

end

end A175826.P4379722336052757709

namespace A175826

/-- `a(n-1)+ceil(n²/8)` -/
def P4379722336052757709.Spec : Prop :=
  ∀ n, P4379722336052757709.a n = A175826 n

end A175826

/-! ## A175826.P4004437891872992574

`∑[A036406(n)]`
-/

namespace A175826.P4004437891872992574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P4004437891872992574

namespace A175826

/-- `∑[A036406(n)]` -/
def P4004437891872992574.Spec : Prop :=
  ∀ n, P4004437891872992574.a n = A175826 n

end A175826

/-! ## A175826.P3834026056947522438

`A175870(n)+∑[round(n²/12)]`
-/

namespace A175826.P3834026056947522438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P3834026056947522438

namespace A175826

/-- `A175870(n)+∑[round(n²/12)]` -/
def P3834026056947522438.Spec : Prop :=
  ∀ n, P3834026056947522438.a n = A175826 n

end A175826

/-! ## A175826.P3614874525373006223

`A173722(n)+A110654(n)`
-/

namespace A175826.P3614874525373006223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 n + A110654 n

end

end A175826.P3614874525373006223

namespace A175826

/-- `A173722(n)+A110654(n)` -/
def P3614874525373006223.Spec : Prop :=
  ∀ n, P3614874525373006223.a n = A175826 n

end A175826

/-! ## A175826.P5137136441600202012

`A177189(n)+A175848(n)`
-/

namespace A175826.P5137136441600202012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177189 n + A175848 n

end

end A175826.P5137136441600202012

namespace A175826

/-- `A177189(n)+A175848(n)` -/
def P5137136441600202012.Spec : Prop :=
  ∀ n, P5137136441600202012.a n = A175826 n

end A175826

/-! ## A175826.P16556507033771864083

`A181120(n)+A175870(n)`
-/

namespace A175826.P16556507033771864083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A175870 n

end

end A175826.P16556507033771864083

namespace A175826

/-- `A181120(n)+A175870(n)` -/
def P16556507033771864083.Spec : Prop :=
  ∀ n, P16556507033771864083.a n = A175826 n

end A175826

/-! ## A175826.P13036533271487605313

`A175287(n)-A122046(n)`
-/

namespace A175826.P13036533271487605313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - A122046 n

end

end A175826.P13036533271487605313

namespace A175826

/-- `A175287(n)-A122046(n)` -/
def P13036533271487605313.Spec : Prop :=
  ∀ n, P13036533271487605313.a n = A175826 n

end A175826

/-! ## A175826.P9295384902966158471

`A122046(n)+n-A002265(n)`
-/

namespace A175826.P9295384902966158471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n + ((n : ℤ) - A002265 n)

end

end A175826.P9295384902966158471

namespace A175826

/-- `A122046(n)+n-A002265(n)` -/
def P9295384902966158471.Spec : Prop :=
  ∀ n, P9295384902966158471.a n = A175826 n

end A175826

/-! ## A175826.P14688807263769384493

`∑[A001971(n)]+n-A004526(n)`
-/

namespace A175826.P14688807263769384493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A004526 n)

end

end A175826.P14688807263769384493

namespace A175826

/-- `∑[A001971(n)]+n-A004526(n)` -/
def P14688807263769384493.Spec : Prop :=
  ∀ n, P14688807263769384493.a n = A175826 n

end A175826

/-! ## A175826.P7176974147510317651

`∑[A001971(n)]+A007494(n)-n`
-/

namespace A175826.P7176974147510317651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A007494 n - (n : ℤ))

end

end A175826.P7176974147510317651

namespace A175826

/-- `∑[A001971(n)]+A007494(n)-n` -/
def P7176974147510317651.Spec : Prop :=
  ∀ n, P7176974147510317651.a n = A175826 n

end A175826

/-! ## A175826.P13891387104705525208

`A110654(n)+∑[∑[A059169(n+1)]]`
-/

namespace A175826.P13891387104705525208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P13891387104705525208

namespace A175826

/-- `A110654(n)+∑[∑[A059169(n+1)]]` -/
def P13891387104705525208.Spec : Prop :=
  ∀ n, P13891387104705525208.a n = A175826 n

end A175826

/-! ## A175826.P765205201162685913

`A057353(n+1)+∑[A130519(n+1)]`
-/

namespace A175826.P765205201162685913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P765205201162685913

namespace A175826

/-- `A057353(n+1)+∑[A130519(n+1)]` -/
def P765205201162685913.Spec : Prop :=
  ∀ n, P765205201162685913.a n = A175826 n

end A175826

/-! ## A175826.P5338248412229117252

`∑[A001972(n)-A004526(n)]-A001972(n)`
-/

namespace A175826.P5338248412229117252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001972 n

end

end A175826.P5338248412229117252

namespace A175826

/-- `∑[A001972(n)-A004526(n)]-A001972(n)` -/
def P5338248412229117252.Spec : Prop :=
  ∀ n, P5338248412229117252.a n = A175826 n

end A175826

/-! ## A175826.P17070508884446213931

`A122046(n+2)-A002620(n)`
-/

namespace A175826.P17070508884446213931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 2) - A002620 n

end

end A175826.P17070508884446213931

namespace A175826

/-- `A122046(n+2)-A002620(n)` -/
def P17070508884446213931.Spec : Prop :=
  ∀ n, P17070508884446213931.a n = A175826 n

end A175826

/-! ## A175826.P15524215512959700285

`A004526(n+1)+∑[A001971(n)]`
-/

namespace A175826.P15524215512959700285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P15524215512959700285

namespace A175826

/-- `A004526(n+1)+∑[A001971(n)]` -/
def P15524215512959700285.Spec : Prop :=
  ∀ n, P15524215512959700285.a n = A175826 n

end A175826

/-! ## A175826.P12801774692035084192

`A057353(n+1)+∑[∑[A002265(n+1)]]`
-/

namespace A175826.P12801774692035084192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P12801774692035084192

namespace A175826

/-- `A057353(n+1)+∑[∑[A002265(n+1)]]` -/
def P12801774692035084192.Spec : Prop :=
  ∀ n, P12801774692035084192.a n = A175826 n

end A175826

/-! ## A175826.P13506794552299947353

`A173722(n)+A059169(2*n+1)`
-/

namespace A175826.P13506794552299947353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 n + A059169 (2 * n + 1)

end

end A175826.P13506794552299947353

namespace A175826

/-- `A173722(n)+A059169(2*n+1)` -/
def P13506794552299947353.Spec : Prop :=
  ∀ n, P13506794552299947353.a n = A175826 n

end A175826

/-! ## A175826.P7156815208417023690

`∑[A110656(n²)]`
-/

namespace A175826.P7156815208417023690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175826.P7156815208417023690

namespace A175826

/-- `∑[A110656(n²)]` -/
def P7156815208417023690.Spec : Prop :=
  ∀ n, P7156815208417023690.a n = A175826 n

end A175826

/-!
# A175827: Partial sums of ceiling(n^2/10).

The programs for A175827, the canonical program `A175827.P4399819884775606867` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175827 has offset 0).

The definition of A175827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175827.P4399819884775606867

`ceil((2*n^3+3*n²+28*n-9)/60)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175827

/-- `ceil((2*n^3+3*n²+28*n-9)/60)` -/
def P4399819884775606867.Spec : Prop :=
  ∀ n, P4399819884775606867.a n = A175827 n

theorem P4399819884775606867.correct : P4399819884775606867.Spec := by
  intro n
  simp only [A175827]

end A175827

/-! ## A175827.P5032121648648073930

`a(n-10)+(n+1)*(n-10)+43` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8, a(6)=12, a(7)=17, a(8)=24, a(9)=33`
-/

namespace A175827.P5032121648648073930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 8, 12, 17, 24, 33] fun n a =>
  a (n - 10) + (n + 1 : ℤ) * ((n : ℤ) - 10) + 43

end

end A175827.P5032121648648073930

namespace A175827

/-- `a(n-10)+(n+1)*(n-10)+43` -/
def P5032121648648073930.Spec : Prop :=
  ∀ n, P5032121648648073930.a n = A175827 n

end A175827

/-! ## A175827.P9856692371954593464

`a(n-1)+ceil(n²/10)` with `a(0)=0`
-/

namespace A175827.P9856692371954593464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 10⌉

end

end A175827.P9856692371954593464

namespace A175827

/-- `a(n-1)+ceil(n²/10)` -/
def P9856692371954593464.Spec : Prop :=
  ∀ n, P9856692371954593464.a n = A175827 n

end A175827

/-! ## A175827.P1341607299490889679

`∑[A036408(n)]`
-/

namespace A175827.P1341607299490889679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175827.P1341607299490889679

namespace A175827

/-- `∑[A036408(n)]` -/
def P1341607299490889679.Spec : Prop :=
  ∀ n, P1341607299490889679.a n = A175827 n

end A175827

/-! ## A175827.P18357796512891414699

`round(∑[A105343(n)/5])`
-/

namespace A175827.P18357796512891414699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105343 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175827.P18357796512891414699

namespace A175827

/-- `round(∑[A105343(n)/5])` -/
def P18357796512891414699.Spec : Prop :=
  ∀ n, P18357796512891414699.a n = A175827 n

end A175827

/-! ## A175827.P9937574148094676886

`A173653(n)+A081600(n)`
-/

namespace A175827.P9937574148094676886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173653 n + A081600 n

end

end A175827.P9937574148094676886

namespace A175827

/-- `A173653(n)+A081600(n)` -/
def P9937574148094676886.Spec : Prop :=
  ∀ n, P9937574148094676886.a n = A175827 n

end A175827

/-! ## A175827.P3961687318871840303

`A177239(n)+A175868(n)`
-/

namespace A175827.P3961687318871840303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 n + A175868 n

end

end A175827.P3961687318871840303

namespace A175827

/-- `A177239(n)+A175868(n)` -/
def P3961687318871840303.Spec : Prop :=
  ∀ n, P3961687318871840303.a n = A175827 n

end A175827

/-!
# A175828: a(n) = (n*(6*n+1)+(n+2)*(-1)^n)/2.

The programs for A175828, the canonical program `A175828.P12571766228937245729` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175828 has offset 0).

The definition of A175828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175828.P12571766228937245729

`(n*(6*n+1)+(n+2)*(-1)^n)/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175828

/-- `(n*(6*n+1)+(n+2)*(-1)^n)/2` -/
def P12571766228937245729.Spec : Prop :=
  ∀ n, P12571766228937245729.a n = (A175828 n : ℚ)

end A175828

/-! ## A175828.P6548132767251302173

`xor(1, n*A047241(n+1))`
-/

namespace A175828.P6548132767251302173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A047241 (n + 1))

end

end A175828.P6548132767251302173

namespace A175828

/-- `xor(1, n*A047241(n+1))` -/
def P6548132767251302173.Spec : Prop :=
  ∀ n, P6548132767251302173.a n = A175828 n

end A175828

/-! ## A175828.P14033726209390213626

`xor(1, n*(A047238(n+1)+1))`
-/

namespace A175828.P14033726209390213626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A047238 (n + 1) + 1))

end

end A175828.P14033726209390213626

namespace A175828

/-- `xor(1, n*(A047238(n+1)+1))` -/
def P14033726209390213626.Spec : Prop :=
  ∀ n, P14033726209390213626.a n = A175828 n

end A175828

/-! ## A175828.P976530727818335654

`xor(1, n*(A042963(n+1)+n))`
-/

namespace A175828.P976530727818335654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A042963 (n + 1) + (n : ℤ)))

end

end A175828.P976530727818335654

namespace A175828

/-- `xor(1, n*(A042963(n+1)+n))` -/
def P976530727818335654.Spec : Prop :=
  ∀ n, P976530727818335654.a n = A175828 n

end A175828

/-! ## A175828.P4731367233552629954

`A195143(n)+n*gcd(2, n)+1-n`
-/

namespace A175828.P4731367233552629954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n + (n * Nat.gcd 2 n : ℤ) + 1 - (n : ℤ)

end

end A175828.P4731367233552629954

namespace A175828

/-- `A195143(n)+n*gcd(2, n)+1-n` -/
def P4731367233552629954.Spec : Prop :=
  ∀ n, P4731367233552629954.a n = A175828 n

end A175828

/-! ## A175828.P3642044994293516285

`(2*n+1)*comp[3*n]+n-A047382(n+1)`
-/

namespace A175828.P3642044994293516285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((n : ℤ) - A047382 (n + 1))

end

end A175828.P3642044994293516285

namespace A175828

/-- `(2*n+1)*comp[3*n]+n-A047382(n+1)` -/
def P3642044994293516285.Spec : Prop :=
  ∀ n, P3642044994293516285.a n = A175828 n

end A175828

/-! ## A175828.P3025027659536937282

`A056109(n)-A066104(n)`
-/

namespace A175828.P3025027659536937282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - A066104 n

end

end A175828.P3025027659536937282

namespace A175828

/-- `A056109(n)-A066104(n)` -/
def P3025027659536937282.Spec : Prop :=
  ∀ n, P3025027659536937282.a n = A175828 n

end A175828

/-! ## A175828.P2632349649804107206

`A389615(n)-A316966(n)`
-/

namespace A175828.P2632349649804107206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - A316966 n

end

end A175828.P2632349649804107206

namespace A175828

/-- `A389615(n)-A316966(n)` -/
def P2632349649804107206.Spec : Prop :=
  ∀ n, P2632349649804107206.a n = A175828 n

end A175828

/-! ## A175828.P15499088212948662874

`A000466(n)+A109613(n)-A289870(n)`
-/

namespace A175828.P15499088212948662874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n + (A109613 n - A289870 n)

end

end A175828.P15499088212948662874

namespace A175828

/-- `A000466(n)+A109613(n)-A289870(n)` -/
def P15499088212948662874.Spec : Prop :=
  ∀ n, P15499088212948662874.a n = A175828 n

end A175828

/-! ## A175828.P13198285817431512646

`A056108(n)-A000035(n)*A000265(n+2)`
-/

namespace A175828.P13198285817431512646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - A000035 n * A000265 (n + 2)

end

end A175828.P13198285817431512646

namespace A175828

/-- `A056108(n)-A000035(n)*A000265(n+2)` -/
def P13198285817431512646.Spec : Prop :=
  ∀ n, P13198285817431512646.a n = A175828 n

end A175828

/-! ## A175828.P10452349745920979215

`(2*n+1)²+2-A183207(n+2)`
-/

namespace A175828.P10452349745920979215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + (2 - A183207 (n + 2))

end

end A175828.P10452349745920979215

namespace A175828

/-- `(2*n+1)²+2-A183207(n+2)` -/
def P10452349745920979215.Spec : Prop :=
  ∀ n, P10452349745920979215.a n = A175828 n

end A175828

/-! ## A175828.P15633568777986834450

`xor(1, n*A047255(2*n+1))`
-/

namespace A175828.P15633568777986834450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A047255 (2 * n + 1))

end

end A175828.P15633568777986834450

namespace A175828

/-- `xor(1, n*A047255(2*n+1))` -/
def P15633568777986834450.Spec : Prop :=
  ∀ n, P15633568777986834450.a n = A175828 n

end A175828

/-! ## A175828.P8625936853698049898

`xor(1, n*A293990(2*n))`
-/

namespace A175828.P8625936853698049898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A293990 (2 * n))

end

end A175828.P8625936853698049898

namespace A175828

/-- `xor(1, n*A293990(2*n))` -/
def P8625936853698049898.Spec : Prop :=
  ∀ n, P8625936853698049898.a n = A175828 n

end A175828

/-! ## A175828.P15327466227522882181

`xor(1, n*A047227(2*n+1))`
-/

namespace A175828.P15327466227522882181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A047227 (2 * n + 1))

end

end A175828.P15327466227522882181

namespace A175828

/-- `xor(1, n*A047227(2*n+1))` -/
def P15327466227522882181.Spec : Prop :=
  ∀ n, P15327466227522882181.a n = A175828 n

end A175828

/-! ## A175828.P5946201868345206346

`A330707(2*n)+A001057(n+1)`
-/

namespace A175828.P5946201868345206346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 (2 * n) + A001057 (n + 1)

end

end A175828.P5946201868345206346

namespace A175828

/-- `A330707(2*n)+A001057(n+1)` -/
def P5946201868345206346.Spec : Prop :=
  ∀ n, P5946201868345206346.a n = A175828 n

end A175828

/-! ## A175828.P664171579509406765

`A006578(2*n)-A131505(2*n+1)`
-/

namespace A175828.P664171579509406765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (2 * n) - A131505 (2 * n + 1)

end

end A175828.P664171579509406765

namespace A175828

/-- `A006578(2*n)-A131505(2*n+1)` -/
def P664171579509406765.Spec : Prop :=
  ∀ n, P664171579509406765.a n = A175828 n

end A175828

/-! ## A175828.P3019621567507003254

`A074377(2*n)+A080513(n+1)-A074377(n+1)`
-/

namespace A175828.P3019621567507003254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (2 * n) + (A080513 (n + 1) - A074377 (n + 1))

end

end A175828.P3019621567507003254

namespace A175828

/-- `A074377(2*n)+A080513(n+1)-A074377(n+1)` -/
def P3019621567507003254.Spec : Prop :=
  ∀ n, P3019621567507003254.a n = A175828 n

end A175828

/-! ## A175828.P12384948125904988880

`A212959(2*n)+A289870(n+1)-A289870(2*n+1)`
-/

namespace A175828.P12384948125904988880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (2 * n) + (A289870 (n + 1) - A289870 (2 * n + 1))

end

end A175828.P12384948125904988880

namespace A175828

/-- `A212959(2*n)+A289870(n+1)-A289870(2*n+1)` -/
def P12384948125904988880.Spec : Prop :=
  ∀ n, P12384948125904988880.a n = A175828 n

end A175828

/-! ## A175828.P15969498371872464323

`A238411(2*n+1)+A238411(n+2)-A093353(2*(n+1))`
-/

namespace A175828.P15969498371872464323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (2 * n + 1) + (A238411 (n + 2) - A093353 (2 * (n + 1)))

end

end A175828.P15969498371872464323

namespace A175828

/-- `A238411(2*n+1)+A238411(n+2)-A093353(2*(n+1))` -/
def P15969498371872464323.Spec : Prop :=
  ∀ n, P15969498371872464323.a n = A175828 n

end A175828

/-! ## A175828.P6205949815151917605

`xor(1, n*A109613(3*n))`
-/

namespace A175828.P6205949815151917605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A109613 (3 * n))

end

end A175828.P6205949815151917605

namespace A175828

/-- `xor(1, n*A109613(3*n))` -/
def P6205949815151917605.Spec : Prop :=
  ∀ n, P6205949815151917605.a n = A175828 n

end A175828

/-!
# A175829: Partial sums of ceiling(n^2/11).

The programs for A175829, the canonical program `A175829.P13716171456451204279` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175829 has offset 0).

The definition of A175829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175829.P13716171456451204279

`round((2*n+1)*(n²+n+18)/66)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175829

/-- `round((2*n+1)*(n²+n+18)/66)` -/
def P13716171456451204279.Spec : Prop :=
  ∀ n, P13716171456451204279.a n = A175829 n

theorem P13716171456451204279.correct : P13716171456451204279.Spec := by
  intro n
  simp only [A175829]

end A175829

/-! ## A175829.P743316842788533908

`a(n-1)+ceil(n²/11)` with `a(0)=0`
-/

namespace A175829.P743316842788533908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 11⌉

end

end A175829.P743316842788533908

namespace A175829

/-- `a(n-1)+ceil(n²/11)` -/
def P743316842788533908.Spec : Prop :=
  ∀ n, P743316842788533908.a n = A175829 n

end A175829

/-! ## A175829.P3536898424276580866

`abs(∑[-floor((n-lcm(n, n+1))/11)])`
-/

namespace A175829.P3536898424276580866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊((n : ℤ) - (Nat.lcm n (n + 1) : ℤ) : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A175829.P3536898424276580866

namespace A175829

/-- `abs(∑[-floor((n-lcm(n, n+1))/11)])` -/
def P3536898424276580866.Spec : Prop :=
  ∀ n, P3536898424276580866.a n = A175829 n

end A175829

/-! ## A175829.P10105545427019114853

`∑[A036409(n)]`
-/

namespace A175829.P10105545427019114853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175829.P10105545427019114853

namespace A175829

/-- `∑[A036409(n)]` -/
def P10105545427019114853.Spec : Prop :=
  ∀ n, P10105545427019114853.a n = A175829 n

end A175829

/-! ## A175829.P13437899574302206096

`floor(∑[A114949(n)]/11)`
-/

namespace A175829.P13437899574302206096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 11⌋

end

end A175829.P13437899574302206096

namespace A175829

/-- `floor(∑[A114949(n)]/11)` -/
def P13437899574302206096.Spec : Prop :=
  ∀ n, P13437899574302206096.a n = A175829 n

end A175829

/-!
# A175830: Number of real-valued zeros of the polynomial whose coefficients are the leading n+1 decimal digits of Euler's constant, A011543(n).

The programs for A175830, there is no canonical definition to state claims against.
-/

/-! ## A175830.P17294987455446716652

`gcd(A005900(A220182(n+1)), A158478(n))`
-/

namespace A175830.P17294987455446716652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005900 (A220182 (n + 1)).toNat) (A158478 n)

end

end A175830.P17294987455446716652

/-! ## A175830.P6763364697976435281

`A158478(gcd(A048332(n), A180714(n)))`
-/

namespace A175830.P6763364697976435281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (Int.gcd (A048332 n) (A180714 n))

end

end A175830.P6763364697976435281

/-! ## A175830.P14040601275032492122

`A327104(11*A075425(n+1))`
-/

namespace A175830.P14040601275032492122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (11 * A075425 (n + 1)).toNat

end

end A175830.P14040601275032492122

/-! ## A175830.P681163882253918893

`A327104(lcm(11, A075425(n+1)))`
-/

namespace A175830.P681163882253918893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (Int.lcm 11 (A075425 (n + 1)))

end

end A175830.P681163882253918893

/-! ## A175830.P2816426595178522047

`A008611(A110157(n+1)%A141347(n+3))`
-/

namespace A175830.P2816426595178522047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A110157 (n + 1)) (A141347 (n + 3))).toNat

end

end A175830.P2816426595178522047

/-!
# A175831: Partial sums of ceiling(n^2/12).

The programs for A175831, the canonical program `A175831.P1761045097738909637` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175831 has offset 0).

The definition of A175831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175831.P1761045097738909637

`floor((n+1)*(2*n²+n+41)/72)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175831

/-- `floor((n+1)*(2*n²+n+41)/72)` -/
def P1761045097738909637.Spec : Prop :=
  ∀ n, P1761045097738909637.a n = A175831 n

theorem P1761045097738909637.correct : P1761045097738909637.Spec := by
  intro n
  simp only [A175831]

end A175831

/-! ## A175831.P3724085631006978661

`∑[A230059(n+1)]+n`
-/

namespace A175831.P3724085631006978661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175831.P3724085631006978661

namespace A175831

/-- `∑[A230059(n+1)]+n` -/
def P3724085631006978661.Spec : Prop :=
  ∀ n, P3724085631006978661.a n = A175831 n

end A175831

/-! ## A175831.P16010459130804568657

`∑[A014591(n)]-∑[char[3*n]]`
-/

namespace A175831.P16010459130804568657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A175831.P16010459130804568657

namespace A175831

/-- `∑[A014591(n)]-∑[char[3*n]]` -/
def P16010459130804568657.Spec : Prop :=
  ∀ n, P16010459130804568657.a n = A175831 n

end A175831

/-! ## A175831.P1616683684837517655

`∑[round(n²/12)]+∑[A011655(n)]`
-/

namespace A175831.P1616683684837517655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A175831.P1616683684837517655

namespace A175831

/-- `∑[round(n²/12)]+∑[A011655(n)]` -/
def P1616683684837517655.Spec : Prop :=
  ∀ n, P1616683684837517655.a n = A175831 n

end A175831

/-! ## A175831.P165138267827998129

`A001840(n)+∑[round((2-n)²/12)]`
-/

namespace A175831.P165138267827998129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175831.P165138267827998129

namespace A175831

/-- `A001840(n)+∑[round((2-n)²/12)]` -/
def P165138267827998129.Spec : Prop :=
  ∀ n, P165138267827998129.a n = A175831 n

end A175831

/-! ## A175831.P2295011453712848053

`∑[A211540(n)]+round(∑[n+1]/3)`
-/

namespace A175831.P2295011453712848053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3)

end

end A175831.P2295011453712848053

namespace A175831

/-- `∑[A211540(n)]+round(∑[n+1]/3)` -/
def P2295011453712848053.Spec : Prop :=
  ∀ n, P2295011453712848053.a n = A175831 n

end A175831

/-! ## A175831.P14593471403883887704

`∑[∑[n]-(A032765(n)-1)]-1-a(n-1)` with `a(0)=0`
-/

namespace A175831.P14593471403883887704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (A032765 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - a (n - 1)

end

end A175831.P14593471403883887704

namespace A175831

/-- `∑[∑[n]-(A032765(n)-1)]-1-a(n-1)` -/
def P14593471403883887704.Spec : Prop :=
  ∀ n, P14593471403883887704.a n = A175831 n

end A175831

/-! ## A175831.P7180651149160758604

`A175812(n)-A181120(n)`
-/

namespace A175831.P7180651149160758604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n - A181120 n

end

end A175831.P7180651149160758604

namespace A175831

/-- `A175812(n)-A181120(n)` -/
def P7180651149160758604.Spec : Prop :=
  ∀ n, P7180651149160758604.a n = A175831 n

end A175831

/-! ## A175831.P43809067283311428

`∑[A036410(n)]-A036410(n)`
-/

namespace A175831.P43809067283311428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036410 n

end

end A175831.P43809067283311428

namespace A175831

/-- `∑[A036410(n)]-A036410(n)` -/
def P43809067283311428.Spec : Prop :=
  ∀ n, P43809067283311428.a n = A175831 n

end A175831

/-! ## A175831.P14806953671016765088

`A322042(n+1)+A181120(n)`
-/

namespace A175831.P14806953671016765088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + A181120 n

end

end A175831.P14806953671016765088

namespace A175831

/-- `A322042(n+1)+A181120(n)` -/
def P14806953671016765088.Spec : Prop :=
  ∀ n, P14806953671016765088.a n = A175831 n

end A175831

/-! ## A175831.P17781853259331436295

`A034198(n+1)-A000212(n)`
-/

namespace A175831.P17781853259331436295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034198 (n + 1) - A000212 n

end

end A175831.P17781853259331436295

namespace A175831

/-- `A034198(n+1)-A000212(n)` -/
def P17781853259331436295.Spec : Prop :=
  ∀ n, P17781853259331436295.a n = A175831 n

end A175831

/-! ## A175831.P4141680059316116030

`2*A175812(n)-A175287(n)`
-/

namespace A175831.P4141680059316116030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175812 n - A175287 n

end

end A175831.P4141680059316116030

namespace A175831

/-- `2*A175812(n)-A175287(n)` -/
def P4141680059316116030.Spec : Prop :=
  ∀ n, P4141680059316116030.a n = A175831 n

end A175831

/-! ## A175831.P17309517553605073553

`A175287(n)-2*A181120(n)`
-/

namespace A175831.P17309517553605073553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - 2 * A181120 n

end

end A175831.P17309517553605073553

namespace A175831

/-- `A175287(n)-2*A181120(n)` -/
def P17309517553605073553.Spec : Prop :=
  ∀ n, P17309517553605073553.a n = A175831 n

end A175831

/-! ## A175831.P11653489046385024373

`∑[A001840(n)+1]-A000601(n)`
-/

namespace A175831.P11653489046385024373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000601 n

end

end A175831.P11653489046385024373

namespace A175831

/-- `∑[A001840(n)+1]-A000601(n)` -/
def P11653489046385024373.Spec : Prop :=
  ∀ n, P11653489046385024373.a n = A175831 n

end A175831

/-! ## A175831.P13300356163083183450

`∑[A001399(n+1)]-A007980(n)`
-/

namespace A175831.P13300356163083183450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A175831.P13300356163083183450

namespace A175831

/-- `∑[A001399(n+1)]-A007980(n)` -/
def P13300356163083183450.Spec : Prop :=
  ∀ n, P13300356163083183450.a n = A175831 n

end A175831

/-! ## A175831.P8569122042827032251

`∑[A001840(n)%A001399(n)]+n`
-/

namespace A175831.P8569122042827032251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001840 n) (A001399 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175831.P8569122042827032251

namespace A175831

/-- `∑[A001840(n)%A001399(n)]+n` -/
def P8569122042827032251.Spec : Prop :=
  ∀ n, P8569122042827032251.a n = A175831 n

end A175831

/-! ## A175831.P10890006049042315673

`A051743(n+1)%A055278(n+4)`
-/

namespace A175831.P10890006049042315673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051743 (n + 1)) (A055278 (n + 4))

end

end A175831.P10890006049042315673

namespace A175831

/-- `A051743(n+1)%A055278(n+4)` -/
def P10890006049042315673.Spec : Prop :=
  ∀ n, P10890006049042315673.a n = A175831 n

end A175831

/-! ## A175831.P13683934235653384316

`∑[A001399(n)-A002264(n)]-A001399(n)`
-/

namespace A175831.P13683934235653384316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 n

end

end A175831.P13683934235653384316

namespace A175831

/-- `∑[A001399(n)-A002264(n)]-A001399(n)` -/
def P13683934235653384316.Spec : Prop :=
  ∀ n, P13683934235653384316.a n = A175831 n

end A175831

/-! ## A175831.P6718738678143935258

`∑[A001399(n+1)]-A001399(2*n)`
-/

namespace A175831.P6718738678143935258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 (2 * n)

end

end A175831.P6718738678143935258

namespace A175831

/-- `∑[A001399(n+1)]-A001399(2*n)` -/
def P6718738678143935258.Spec : Prop :=
  ∀ n, P6718738678143935258.a n = A175831 n

end A175831

/-!
# A175832: Number of solutions of equation 3^q - 2^p = n over integer variables p, q.

The programs for A175832, the canonical program `A175832.P355630512362293705` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175832 has offset 0).

The definition of A175832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175832.P10858542875854277726

`char[1]+char[A227048(n)]`
-/

namespace A175832.P10858542875854277726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A175832.P10858542875854277726

namespace A175832

/-- `char[1]+char[A227048(n)]` -/
def P10858542875854277726.Spec : Prop :=
  ∀ n, (P10858542875854277726.a n : ℤ) = A175832 n

end A175832

/-! ## A175832.P10926853188346597655

`char[1]+char[A192111(n+1)]`
-/

namespace A175832.P10926853188346597655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A175832.P10926853188346597655

namespace A175832

/-- `char[1]+char[A192111(n+1)]` -/
def P10926853188346597655.Spec : Prop :=
  ∀ n, (P10926853188346597655.a n : ℤ) = A175832 n

end A175832

/-! ## A175832.P4781407155467340541

`char[1]+1-char[A173671(n+1)]`
-/

namespace A175832.P4781407155467340541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173671 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A175832.P4781407155467340541

namespace A175832

/-- `char[1]+1-char[A173671(n+1)]` -/
def P4781407155467340541.Spec : Prop :=
  ∀ n, P4781407155467340541.a n = A175832 n

end A175832

/-! ## A175832.P6100007961969282525

`char[A227048(n)]-A159075(n)`
-/

namespace A175832.P6100007961969282525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A159075 n

end

end A175832.P6100007961969282525

namespace A175832

/-- `char[A227048(n)]-A159075(n)` -/
def P6100007961969282525.Spec : Prop :=
  ∀ n, P6100007961969282525.a n = A175832 n

end A175832

/-! ## A175832.P2780460555425310362

`A000108(C(2, n))*char[A227048(n)]`
-/

namespace A175832.P2780460555425310362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175832.P2780460555425310362

namespace A175832

/-- `A000108(C(2, n))*char[A227048(n)]` -/
def P2780460555425310362.Spec : Prop :=
  ∀ n, P2780460555425310362.a n = A175832 n

end A175832

/-! ## A175832.P355630512362293705

`A036987(A171960(n))+A036987(A194275(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175832

/-- `A036987(A171960(n))+A036987(A194275(n))` -/
def P355630512362293705.Spec : Prop :=
  ∀ n, P355630512362293705.a n = A175832 n

theorem P355630512362293705.correct : P355630512362293705.Spec := by
  intro n
  simp only [A175832]

end A175832

/-! ## A175832.P13497013651559084343

`A014963(A005893(n))*char[A227048(n)]`
-/

namespace A175832.P13497013651559084343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005893 n).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175832.P13497013651559084343

namespace A175832

/-- `A014963(A005893(n))*char[A227048(n)]` -/
def P13497013651559084343.Spec : Prop :=
  ∀ n, P13497013651559084343.a n = A175832 n

end A175832

/-! ## A175832.P1171853133384965483

`A014963(A005893(n))-char[A173671(n+1)]`
-/

namespace A175832.P1171853133384965483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173671 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005893 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175832.P1171853133384965483

namespace A175832

/-- `A014963(A005893(n))-char[A173671(n+1)]` -/
def P1171853133384965483.Spec : Prop :=
  ∀ n, P1171853133384965483.a n = A175832 n

end A175832

/-!
# A175833: Periodic sequence: repeat 4,7,11.

The programs for A175833, the canonical program `A175833.P6743275693519035987` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175833 has offset 0).

The definition of A175833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175833.P6743275693519035987

`a(n-3)` with `a(0)=4, a(1)=7, a(2)=11`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175833

/-- `a(n-3)` -/
def P6743275693519035987.Spec : Prop :=
  ∀ n, (P6743275693519035987.a n : ℤ) = A175833 n

theorem P6743275693519035987.correct : P6743275693519035987.Spec := by
  intro n
  simp only [A175833]

end A175833

/-!
# A175834: Number of real zeros of the polynomial whose coefficients are the decimal expansion of the golden ratio truncated to n places (A011551).

The programs for A175834, there is no canonical definition to state claims against.
-/

/-! ## A175834.P10792545366436437735

`gcd(A062133(n), A090108(gcd(n+1, a(n-1))+1))` with `a(0)=0`
-/

namespace A175834.P10792545366436437735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (A062133 n) (A090108 (Nat.gcd (n + 1) (a (n - 1)) + 1))

end

end A175834.P10792545366436437735

/-! ## A175834.P14815600545708223209

`gcd(A100624(n), A214526(n+1))`
-/

namespace A175834.P14815600545708223209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100624 n) (A214526 (n + 1))

end

end A175834.P14815600545708223209

/-! ## A175834.P1455582973023766632

`(n+6)%floor(sqrt(A371169(3*n+1)))`
-/

namespace A175834.P1455582973023766632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (Int.sqrt (A371169 (3 * n + 1)))

end

end A175834.P1455582973023766632

/-! ## A175834.P13590315969469982802

`∑{e}[A133025(n+1), A040001(#)]`
-/

namespace A175834.P13590315969469982802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A040001 (Nat.factorization (f1 n).natAbs p)

end

end A175834.P13590315969469982802

/-! ## A175834.P5314792006025411143

`A381524(A381524(n)%A191755(n))`
-/

namespace A175834.P5314792006025411143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (Int.tmod (A381524 n) (A191755 n)).toNat

end

end A175834.P5314792006025411143

/-!
# A175835: Number of real roots of the polynomial Sum_{k=0..n-1} A001620(1+k-n)*x^k, whose coefficients are the decimal digits of the Euler-Mascheroni constant.

The programs for A175835, there is no canonical definition to state claims against.
-/

/-! ## A175835.P9430220687204751129

`gcd(2, n+1)-A020985(A299728(n+1))`
-/

namespace A175835.P9430220687204751129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) - A020985 (A299728 (n + 1)).toNat

end

end A175835.P9430220687204751129

/-! ## A175835.P13741142330699830685

`A000034(n)-A020985(A299728(n+1))`
-/

namespace A175835.P13741142330699830685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A020985 (A299728 (n + 1)).toNat

end

end A175835.P13741142330699830685

/-! ## A175835.P6659784076427475820

`val(A003500(n), 2)-A020985(A299728(n+1))`
-/

namespace A175835.P6659784076427475820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A003500 n).toNat 2 : ℤ) - A020985 (A299728 (n + 1)).toNat

end

end A175835.P6659784076427475820

/-! ## A175835.P433618811690085995

`and(3, A002604(n)-A020985(A299728(n+1)))`
-/

namespace A175835.P433618811690085995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A002604 n - A020985 (A299728 (n + 1)).toNat)

end

end A175835.P433618811690085995

/-! ## A175835.P3045424139914161663

`Δ[A001651(n+1)]-A020985(A299728(n+1))`
-/

namespace A175835.P3045424139914161663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A020985 (A299728 (n + 1)).toNat

end

end A175835.P3045424139914161663

/-!
# A175836: a(n) = Product_{i=1..n} psi(i) where psi is the Dedekind psi function (A001615).

The programs for A175836, there is no canonical definition to state claims against.
-/

/-! ## A175836.P5742997916923007585

`A059381(n+1)/A001088(n+1)`
-/

namespace A175836.P5742997916923007585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059381 (n + 1) : ℚ) / (A001088 (n + 1) : ℚ)

end

end A175836.P5742997916923007585

/-! ## A175836.P6946746110970374608

`∏[∑{d}[∏{p}[n+1, #], (n+1)/#]]`
-/

namespace A175836.P6946746110970374608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P6946746110970374608

/-! ## A175836.P9319331334705546052

`a(n-1)*∑{d}[∏{p}[n+1, #], (n+1)/#]` with `a(0)=1`
-/

namespace A175836.P9319331334705546052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))

end

end A175836.P9319331334705546052

/-! ## A175836.P613356392041275102

`∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]]`
-/

namespace A175836.P613356392041275102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P613356392041275102

/-! ## A175836.P10341846614692815204

`∏[A001615(n+1)]`
-/

namespace A175836.P10341846614692815204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P10341846614692815204

/-! ## A175836.P15637457263708798964

`∏[abs(A158523(n+1))]`
-/

namespace A175836.P15637457263708798964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P15637457263708798964

/-! ## A175836.P16390658403856178315

`∏[A001616((n+1)²)]`
-/

namespace A175836.P16390658403856178315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P16390658403856178315

/-! ## A175836.P17792015171031813882

`∏[A392166((n+1)²)]`
-/

namespace A175836.P17792015171031813882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P17792015171031813882

/-! ## A175836.P2662788097920393572

`∏[A320973(∑[n+2])]`
-/

namespace A175836.P2662788097920393572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320973 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P2662788097920393572

/-! ## A175836.P8107191490975686215

`∏[A306927(n+1)+1+n]`
-/

namespace A175836.P8107191490975686215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175836.P8107191490975686215

/-!
# A175837: (2n-1)-abundant numbers.

The programs for A175837, there is no canonical definition to state claims against.
-/

/-! ## A175837.P12718820810968397742

`A005101(comp[3*n^3])`
-/

namespace A175837.P12718820810968397742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175837.P12718820810968397742

/-! ## A175837.P13430725235196471634

`lt[n, floor(A039653(n)/2)]`
-/

namespace A175837.P13430725235196471634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039653 n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175837.P13430725235196471634

/-! ## A175837.P9242259790787199219

`lt[A281626(n+1), 0]+1`
-/

namespace A175837.P9242259790787199219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175837.P9242259790787199219

/-! ## A175837.P12296569176256986342

`lt[2, A033880(n+1)]+1`
-/

namespace A175837.P12296569176256986342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175837.P12296569176256986342

/-! ## A175837.P8019624028429683157

`lt[2, A318679(n+1)]+1`
-/

namespace A175837.P8019624028429683157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175837.P8019624028429683157

/-! ## A175837.P9609339794781514244

`lt[3, A237588(n+1)]+1`
-/

namespace A175837.P9609339794781514244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175837.P9609339794781514244

/-! ## A175837.P8956474893065920935

`lt[A033885(n+2), n]+2`
-/

namespace A175837.P8956474893065920935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A175837.P8956474893065920935

/-! ## A175837.P5855186493722905613

`lt[n, A326146(round(acot(n)+n))]`
-/

namespace A175837.P5855186493722905613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175837.P5855186493722905613

/-! ## A175837.P14213041016202357347

`lt[2*(n+2), A000203(n+1)]+1`
-/

namespace A175837.P14213041016202357347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175837.P14213041016202357347

/-! ## A175837.P5112121755334530289

`lt[n+3, A000203(n+2)/2]+2`
-/

namespace A175837.P5112121755334530289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A175837.P5112121755334530289

/-!
# A175840: Mirror image of Nicomachus' table: T(n,k) = 3^(n-k)*2^k for n>=0 and 0<=k<=n.

The programs for A175840, the canonical program `A175840.P8174174489679520401` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175840 has offset 0).

The definition of A175840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175840.P8174174489679520401

`3^(row(n)-col(n))*2^col(n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175840

/-- `3^(row(n)-col(n))*2^col(n)` -/
def P8174174489679520401.Spec : Prop :=
  ∀ n, P8174174489679520401.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P16032209541460561906

`3^(row(n)+1-(col(n)+1))*2^col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175840.P16032209541460561906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ) * (2 ^ SequenceMachineLib.triCol n : ℚ)

end

end A175840.P16032209541460561906

namespace A175840

/-- `3^(row(n)+1-(col(n)+1))*2^col(n)` -/
def P16032209541460561906.Spec : Prop :=
  ∀ n, P16032209541460561906.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P14554144298249850676

`A036561(A061579(n))`
-/

namespace A175840.P14554144298249850676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A061579 n).toNat

end

end A175840.P14554144298249850676

namespace A175840

/-- `A036561(A061579(n))` -/
def P14554144298249850676.Spec : Prop :=
  ∀ n, P14554144298249850676.a n = A175840 n

end A175840

/-! ## A175840.P1784359575351535898

`A082234(A056011(n+1))`
-/

namespace A175840.P1784359575351535898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082234 (A056011 (n + 1)).toNat

end

end A175840.P1784359575351535898

namespace A175840

/-- `A082234(A056011(n+1))` -/
def P1784359575351535898.Spec : Prop :=
  ∀ n, P1784359575351535898.a n = A175840 n

end A175840

/-! ## A175840.P8269368602936441926

`A059268(n)*A140303(n)`
-/

namespace A175840.P8269368602936441926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A140303 n

end

end A175840.P8269368602936441926

namespace A175840

/-- `A059268(n)*A140303(n)` -/
def P8269368602936441926.Spec : Prop :=
  ∀ n, P8269368602936441926.a n = A175840 n

end A175840

/-! ## A175840.P1921406084721966966

`A038220(n)/A007318(n)`
-/

namespace A175840.P1921406084721966966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A007318 n : ℚ)

end

end A175840.P1921406084721966966

namespace A175840

/-- `A038220(n)/A007318(n)` -/
def P1921406084721966966.Spec : Prop :=
  ∀ n, P1921406084721966966.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P3531439913646838416

`A061929(n)/A054143(n)`
-/

namespace A175840.P3531439913646838416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061929 n : ℚ) / (A054143 n : ℚ)

end

end A175840.P3531439913646838416

namespace A175840

/-- `A061929(n)/A054143(n)` -/
def P3531439913646838416.Spec : Prop :=
  ∀ n, P3531439913646838416.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P15786180559116216098

`A038220(n)/sqrt(A008459(n))`
-/

namespace A175840.P15786180559116216098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A175840.P15786180559116216098

namespace A175840

/-- `A038220(n)/sqrt(A008459(n))` -/
def P15786180559116216098.Spec : Prop :=
  ∀ n, P15786180559116216098.a n = (A175840 n : ℝ)

end A175840

/-! ## A175840.P17596038977015839206

`A036561(A038722(n+1)-1)`
-/

namespace A175840.P17596038977015839206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A038722 (n + 1) - 1).toNat

end

end A175840.P17596038977015839206

namespace A175840

/-- `A036561(A038722(n+1)-1)` -/
def P17596038977015839206.Spec : Prop :=
  ∀ n, P17596038977015839206.a n = A175840 n

end A175840

/-! ## A175840.P15805626629541993543

`A038220(n)/(A014473(n)+1)`
-/

namespace A175840.P15805626629541993543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A175840.P15805626629541993543

namespace A175840

/-- `A038220(n)/(A014473(n)+1)` -/
def P15805626629541993543.Spec : Prop :=
  ∀ n, P15805626629541993543.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P5405694227914158694

`A036561(A099375(n)+n)/2`
-/

namespace A175840.P5405694227914158694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036561 (A099375 n + (n : ℤ)).toNat : ℚ) / 2

end

end A175840.P5405694227914158694

namespace A175840

/-- `A036561(A099375(n)+n)/2` -/
def P5405694227914158694.Spec : Prop :=
  ∀ n, P5405694227914158694.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P10496454698818837926

`A036561(A093995(n+1)-(n+1))`
-/

namespace A175840.P10496454698818837926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A175840.P10496454698818837926

namespace A175840

/-- `A036561(A093995(n+1)-(n+1))` -/
def P10496454698818837926.Spec : Prop :=
  ∀ n, P10496454698818837926.a n = A175840 n

end A175840

/-! ## A175840.P18103130007458163405

`A000244(A025581(n))*A059268(n)`
-/

namespace A175840.P18103130007458163405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A059268 n

end

end A175840.P18103130007458163405

namespace A175840

/-- `A000244(A025581(n))*A059268(n)` -/
def P18103130007458163405.Spec : Prop :=
  ∀ n, P18103130007458163405.a n = A175840 n

end A175840

/-! ## A175840.P1417339900817184001

`A000079(A002262(n))*A140303(n)`
-/

namespace A175840.P1417339900817184001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A140303 n

end

end A175840.P1417339900817184001

namespace A175840

/-- `A000079(A002262(n))*A140303(n)` -/
def P1417339900817184001.Spec : Prop :=
  ∀ n, P1417339900817184001.a n = A175840 n

end A175840

/-! ## A175840.P2375528750858574576

`A059268(n)*A108411(A099375(n))`
-/

namespace A175840.P2375528750858574576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A108411 (A099375 n).toNat

end

end A175840.P2375528750858574576

namespace A175840

/-- `A059268(n)*A108411(A099375(n))` -/
def P2375528750858574576.Spec : Prop :=
  ∀ n, P2375528750858574576.a n = A175840 n

end A175840

/-! ## A175840.P4342080887053473829

`A036561(A025581(n)+n-A002262(n))`
-/

namespace A175840.P4342080887053473829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A175840.P4342080887053473829

namespace A175840

/-- `A036561(A025581(n)+n-A002262(n))` -/
def P4342080887053473829.Spec : Prop :=
  ∀ n, P4342080887053473829.a n = A175840 n

end A175840

/-! ## A175840.P2264440639869046203

`A036561(n-(A002262(n)-A025581(n)))`
-/

namespace A175840.P2264440639869046203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A175840.P2264440639869046203

namespace A175840

/-- `A036561(n-(A002262(n)-A025581(n)))` -/
def P2264440639869046203.Spec : Prop :=
  ∀ n, P2264440639869046203.a n = A175840 n

end A175840

/-! ## A175840.P3952551155817652423

`(A154692(n)-A013620(n))/A007318(n)`
-/

namespace A175840.P3952551155817652423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154692 n - A013620 n : ℚ) / (A007318 n : ℚ)

end

end A175840.P3952551155817652423

namespace A175840

/-- `(A154692(n)-A013620(n))/A007318(n)` -/
def P3952551155817652423.Spec : Prop :=
  ∀ n, P3952551155817652423.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P12215720607879651807

`A036561(n)/A013620(n)*A038220(n)`
-/

namespace A175840.P12215720607879651807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036561 n : ℚ) / (A013620 n : ℚ) * (A038220 n : ℚ)

end

end A175840.P12215720607879651807

namespace A175840

/-- `A036561(n)/A013620(n)*A038220(n)` -/
def P12215720607879651807.Spec : Prop :=
  ∀ n, P12215720607879651807.a n = (A175840 n : ℚ)

end A175840

/-! ## A175840.P14856673918298258573

`A013609(n)/A007318(n)²*A027465(n)`
-/

namespace A175840.P14856673918298258573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n ^ 2 : ℚ) * (A027465 n : ℚ)

end

end A175840.P14856673918298258573

namespace A175840

/-- `A013609(n)/A007318(n)²*A027465(n)` -/
def P14856673918298258573.Spec : Prop :=
  ∀ n, P14856673918298258573.a n = (A175840 n : ℚ)

end A175840

/-!
# A175841: Fast "exotic addition" a o b = [ a[1]+b[1], a[1]*b[2]+a[2]*b[1] ].

The programs for A175841, there is no canonical definition to state claims against.
-/

/-! ## A175841.P13364403594160277058

`record[A353643(A353685(n+1)+A007431(n))]`
-/

namespace A175841.P13364403594160277058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353643 (A353685 (n + 1) + A007431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175841.P13364403594160277058

/-! ## A175841.P5083869618367335499

`A025487(record[A329315(n+1)])`
-/

namespace A175841.P5083869618367335499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175841.P5083869618367335499

/-! ## A175841.P18013740557946398879

`A333964(record[A329315(n+1)])`
-/

namespace A175841.P18013740557946398879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175841.P18013740557946398879

/-! ## A175841.P4699075898312007067

`record[A046523(n+1)*A101615(n)]`
-/

namespace A175841.P4699075898312007067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) * A101615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175841.P4699075898312007067

/-! ## A175841.P7398370145131006847

`A000005(A010350(n+1)*A185021(n))`
-/

namespace A175841.P7398370145131006847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A010350 (n + 1) * A185021 n).toNat

end

end A175841.P7398370145131006847

/-!
# A175842: Partial sums of ceiling(n^2/14).

The programs for A175842, the canonical program `A175842.P17369472729768165489` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175842 has offset 0).

The definition of A175842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175842.P17369472729768165489

`ceil((2*n^3+3*n²+46*n-15)/84)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175842

/-- `ceil((2*n^3+3*n²+46*n-15)/84)` -/
def P17369472729768165489.Spec : Prop :=
  ∀ n, P17369472729768165489.a n = A175842 n

theorem P17369472729768165489.correct : P17369472729768165489.Spec := by
  intro n
  simp only [A175842]

end A175842

/-! ## A175842.P10446167214203475605

`a(n-1)+ceil(n²/14)` with `a(0)=0, a(1)=1`
-/

namespace A175842.P10446167214203475605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 14⌉

end

end A175842.P10446167214203475605

namespace A175842

/-- `a(n-1)+ceil(n²/14)` -/
def P10446167214203475605.Spec : Prop :=
  ∀ n, P10446167214203475605.a n = A175842 n

end A175842

/-! ## A175842.P16167800809587413092

`∑[ceil(A000290(n)/14)]`
-/

namespace A175842.P16167800809587413092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000290 n : ℚ) / 14⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175842.P16167800809587413092

namespace A175842

/-- `∑[ceil(A000290(n)/14)]` -/
def P16167800809587413092.Spec : Prop :=
  ∀ n, P16167800809587413092.a n = A175842 n

end A175842

/-! ## A175842.P1243780857989096465

`round((A175822(n)+n-A110654(n))/2)`
-/

namespace A175842.P1243780857989096465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175822 n + ((n : ℤ) - A110654 n) : ℚ) / 2)

end

end A175842.P1243780857989096465

namespace A175842

/-- `round((A175822(n)+n-A110654(n))/2)` -/
def P1243780857989096465.Spec : Prop :=
  ∀ n, P1243780857989096465.a n = A175842 n

end A175842

/-! ## A175842.P16625914519622744847

`round((A175822(n)+A004526(n))/2)%A160805(n)`
-/

namespace A175842.P16625914519622744847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A175822 n + A004526 n : ℚ) / 2)) (A160805 n)

end

end A175842.P16625914519622744847

namespace A175842

/-- `round((A175822(n)+A004526(n))/2)%A160805(n)` -/
def P16625914519622744847.Spec : Prop :=
  ∀ n, P16625914519622744847.a n = A175842 n

end A175842

/-! ## A175842.P4581240540253111517

`A110654(A175822(n)+A004526(n))`
-/

namespace A175842.P4581240540253111517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A175822 n + A004526 n).toNat

end

end A175842.P4581240540253111517

namespace A175842

/-- `A110654(A175822(n)+A004526(n))` -/
def P4581240540253111517.Spec : Prop :=
  ∀ n, P4581240540253111517.a n = A175842 n

end A175842

/-! ## A175842.P892607581536677114

`A004526(A004526(n)+A175822(n)+1)`
-/

namespace A175842.P892607581536677114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n + (A175822 n + 1)).toNat

end

end A175842.P892607581536677114

namespace A175842

/-- `A004526(A004526(n)+A175822(n)+1)` -/
def P892607581536677114.Spec : Prop :=
  ∀ n, P892607581536677114.a n = A175842 n

end A175842

/-! ## A175842.P8467946497739023693

`A008619(A175822(n)+A008619(n))-1`
-/

namespace A175842.P8467946497739023693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A175822 n + A008619 n).toNat - 1

end

end A175842.P8467946497739023693

namespace A175842

/-- `A008619(A175822(n)+A008619(n))-1` -/
def P8467946497739023693.Spec : Prop :=
  ∀ n, P8467946497739023693.a n = A175842 n

end A175842

/-! ## A175842.P1432718278921158571

`A110654(A175822(n)+n-A110654(n))`
-/

namespace A175842.P1432718278921158571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A175822 n + ((n : ℤ) - A110654 n)).toNat

end

end A175842.P1432718278921158571

namespace A175842

/-- `A110654(A175822(n)+n-A110654(n))` -/
def P1432718278921158571.Spec : Prop :=
  ∀ n, P1432718278921158571.a n = A175842 n

end A175842

/-! ## A175842.P4718472992730698915

`A110654(n-(A110654(n)-A175822(n)))`
-/

namespace A175842.P4718472992730698915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) - (A110654 n - A175822 n)).toNat

end

end A175842.P4718472992730698915

namespace A175842

/-- `A110654(n-(A110654(n)-A175822(n)))` -/
def P4718472992730698915.Spec : Prop :=
  ∀ n, P4718472992730698915.a n = A175842 n

end A175842

/-!
# A175843: a(n) = (10^n)-th odd squarefree number.

The programs for A175843, there is no canonical definition to state claims against.
-/

/-! ## A175843.P3965488548704589197

`A056911(10^n)`
-/

namespace A175843.P3965488548704589197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (10 ^ n)

end

end A175843.P3965488548704589197

/-!
# A175844: Parse the base-2 expansion of 1/n using the Ziv-Lempel encoding as described in A106182; sequence gives the eventual period of the differences of the sequence of lengths of the successive phrases.

The programs for A175844, there is no canonical definition to state claims against.
-/

/-! ## A175844.P9789776751189603285

`A007733(n+1)²`
-/

namespace A175844.P9789776751189603285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) ^ 2

end

end A175844.P9789776751189603285

/-! ## A175844.P8433057800718913310

`A066799(∑[n+2])²`
-/

namespace A175844.P8433057800718913310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A175844.P8433057800718913310

/-! ## A175844.P7124152088826103923

`A007733(2*(n+1))^2`
-/

namespace A175844.P7124152088826103923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * (n + 1)) ^ 2

end

end A175844.P7124152088826103923

/-! ## A175844.P14131077755063616947

`(1-A277129(n+1)+n)²`
-/

namespace A175844.P14131077755063616947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A277129 (n + 1) + (n : ℤ)) ^ 2

end

end A175844.P14131077755063616947

/-! ## A175844.P14841528729721163413

`(n+1-A385989(n+1))²`
-/

namespace A175844.P14841528729721163413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A385989 (n + 1)) ^ 2

end

end A175844.P14841528729721163413

/-!
# A175845: Pandigital numbers (A171102) of the form 9*prime.

The programs for A175845, there is no canonical definition to state claims against.
-/

/-! ## A175845.P1309818500134624048

`record[9*A204532(n+3)]`
-/

namespace A175845.P1309818500134624048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A204532 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175845.P1309818500134624048

/-!
# A175846: Partial sums of ceiling(n^2/15).

The programs for A175846, the canonical program `A175846.P14693140587931579250` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175846 has offset 0).

The definition of A175846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175846.P14693140587931579250

`round((2*n+1)*(n²+n+28)/90)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175846

/-- `round((2*n+1)*(n²+n+28)/90)` -/
def P14693140587931579250.Spec : Prop :=
  ∀ n, P14693140587931579250.a n = A175846 n

theorem P14693140587931579250.correct : P14693140587931579250.Spec := by
  intro n
  simp only [A175846]

end A175846

/-! ## A175846.P17225404593529504320

`Δ[A053800(n)/A043529(2*n)]`
-/

namespace A175846.P17225404593529504320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053800 n : ℚ) / (A043529 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175846.P17225404593529504320

namespace A175846

/-- `Δ[A053800(n)/A043529(2*n)]` -/
def P17225404593529504320.Spec : Prop :=
  ∀ n, P17225404593529504320.a n = (A175846 n : ℚ)

end A175846

/-! ## A175846.P8538007906928401423

`A110654(n)+A029246(A004278(A004278(n+1)))`
-/

namespace A175846.P8538007906928401423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A029246 (A004278 (A004278 (n + 1)).toNat).toNat

end

end A175846.P8538007906928401423

namespace A175846

/-- `A110654(n)+A029246(A004278(A004278(n+1)))` -/
def P8538007906928401423.Spec : Prop :=
  ∀ n, P8538007906928401423.a n = A175846 n

end A175846

/-! ## A175846.P4269806750887650173

`Δ[A053800(n)/A020639(A053799(n))]`
-/

namespace A175846.P4269806750887650173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053800 n : ℚ) / (A020639 (A053799 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175846.P4269806750887650173

namespace A175846

/-- `Δ[A053800(n)/A020639(A053799(n))]` -/
def P4269806750887650173.Spec : Prop :=
  ∀ n, P4269806750887650173.a n = (A175846 n : ℚ)

end A175846

/-! ## A175846.P5649712974319441105

`∑[A008676(n²+2)]`
-/

namespace A175846.P5649712974319441105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175846.P5649712974319441105

namespace A175846

/-- `∑[A008676(n²+2)]` -/
def P5649712974319441105.Spec : Prop :=
  ∀ n, P5649712974319441105.a n = A175846 n

end A175846

/-! ## A175846.P14695742133050126453

`Δ[A053800(n)/A020639(A053798(n))]`
-/

namespace A175846.P14695742133050126453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053800 n : ℚ) / (A020639 (A053798 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175846.P14695742133050126453

namespace A175846

/-- `Δ[A053800(n)/A020639(A053798(n))]` -/
def P14695742133050126453.Spec : Prop :=
  ∀ n, P14695742133050126453.a n = (A175846 n : ℚ)

end A175846

/-! ## A175846.P13532504466915332390

`A278529(Δ[A053800(n)])`
-/

namespace A175846.P13532504466915332390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (f1 (n + 1) - f1 n).toNat

end

end A175846.P13532504466915332390

namespace A175846

/-- `A278529(Δ[A053800(n)])` -/
def P13532504466915332390.Spec : Prop :=
  ∀ n, P13532504466915332390.a n = A175846 n

end A175846

/-! ## A175846.P4558306898131583641

`A278529(A053800(n+1)-A053800(n))`
-/

namespace A175846.P4558306898131583641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A053800 (n + 1) - A053800 n).toNat

end

end A175846.P4558306898131583641

namespace A175846

/-- `A278529(A053800(n+1)-A053800(n))` -/
def P4558306898131583641.Spec : Prop :=
  ∀ n, P4558306898131583641.a n = A175846 n

end A175846

/-!
# A175847: Number of cyclically 4-connected simple cubic graphs on 2n vertices.

The programs for A175847, there is no canonical definition to state claims against.
-/

/-! ## A175847.P15736141141295346621

`A220913(n)+A059995(A133297(n))`
-/

namespace A175847.P15736141141295346621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 n + A059995 (A133297 n).toNat

end

end A175847.P15736141141295346621

/-! ## A175847.P7508621904535649022

`A000027(A089412(n))%A112998(n+4)`
-/

namespace A175847.P7508621904535649022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A089412 n).toNat) (A112998 (n + 4))

end

end A175847.P7508621904535649022

/-! ## A175847.P11374233664427464420

`xor(A000235(n+1), A008620(A000254(n)))`
-/

namespace A175847.P11374233664427464420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000235 (n + 1)) (A008620 (A000254 n).toNat)

end

end A175847.P11374233664427464420

/-!
# A175848: Partial sums of ceiling(n^2/16).

The programs for A175848, the canonical program `A175848.P17404347032463220447` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175848 has offset 0).

The definition of A175848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175848.P17404347032463220447

`ceil((2*n^3+3*n²+52*n-9)/96)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175848

/-- `ceil((2*n^3+3*n²+52*n-9)/96)` -/
def P17404347032463220447.Spec : Prop :=
  ∀ n, P17404347032463220447.a n = A175848 n

theorem P17404347032463220447.correct : P17404347032463220447.Spec := by
  intro n
  simp only [A175848]

end A175848

/-! ## A175848.P10090053342757024444

`floor((∑[A057427(n)+round(n²/8)]+1)/2)`
-/

namespace A175848.P10090053342757024444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌋

end

end A175848.P10090053342757024444

namespace A175848

/-- `floor((∑[A057427(n)+round(n²/8)]+1)/2)` -/
def P10090053342757024444.Spec : Prop :=
  ∀ n, P10090053342757024444.a n = A175848 n

end A175848

/-! ## A175848.P1843560436462690792

`A175826(n)-A177189(n)`
-/

namespace A175848.P1843560436462690792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n - A177189 n

end

end A175848.P1843560436462690792

namespace A175848

/-- `A175826(n)-A177189(n)` -/
def P1843560436462690792.Spec : Prop :=
  ∀ n, P1843560436462690792.a n = A175848 n

end A175848

/-! ## A175848.P13215171166994012984

`∑[A036406(n)]-A177189(n)`
-/

namespace A175848.P13215171166994012984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177189 n

end

end A175848.P13215171166994012984

namespace A175848

/-- `∑[A036406(n)]-A177189(n)` -/
def P13215171166994012984.Spec : Prop :=
  ∀ n, P13215171166994012984.a n = A175848 n

end A175848

/-! ## A175848.P4184531197460630652

`A175777(n)+A110654(A110654(n)+n)`
-/

namespace A175848.P4184531197460630652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175777 n + A110654 (A110654 n + (n : ℤ)).toNat

end

end A175848.P4184531197460630652

namespace A175848

/-- `A175777(n)+A110654(A110654(n)+n)` -/
def P4184531197460630652.Spec : Prop :=
  ∀ n, P4184531197460630652.a n = A175848 n

end A175848

/-! ## A175848.P10803526861370405926

`A175777(n)+A110655(3*n)`
-/

namespace A175848.P10803526861370405926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175777 n + A110655 (3 * n)

end

end A175848.P10803526861370405926

namespace A175848

/-- `A175777(n)+A110655(3*n)` -/
def P10803526861370405926.Spec : Prop :=
  ∀ n, P10803526861370405926.a n = A175848 n

end A175848

/-! ## A175848.P16030285855720666884

`A057353(n+1)+∑[A004526(A130519(n+1))]`
-/

namespace A175848.P16030285855720666884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175848.P16030285855720666884

namespace A175848

/-- `A057353(n+1)+∑[A004526(A130519(n+1))]` -/
def P16030285855720666884.Spec : Prop :=
  ∀ n, P16030285855720666884.a n = A175848 n

end A175848

/-! ## A175848.P10824650928486888620

`A110654(A173722(n)+n)`
-/

namespace A175848.P10824650928486888620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A173722 n + (n : ℤ)).toNat

end

end A175848.P10824650928486888620

namespace A175848

/-- `A110654(A173722(n)+n)` -/
def P10824650928486888620.Spec : Prop :=
  ∀ n, P10824650928486888620.a n = A175848 n

end A175848

/-!
# A175849: Numbers k with property that sum of divisors of k-th triangular number is some m-th triangular number.

The programs for A175849, there is no canonical definition to state claims against.
-/

/-! ## A175849.P1078304144148104570

`floor(sqrt(2*A083674(n+1)))`
-/

namespace A175849.P1078304144148104570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A083674 (n + 1))

end

end A175849.P1078304144148104570

/-! ## A175849.P5546438627732948916

`ceil(sqrt(2*A083674(2*n+1-n)))-1`
-/

namespace A175849.P5546438627732948916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A083674 (2 * n + 1 - n) : ℝ)⌉ - 1

end

end A175849.P5546438627732948916

/-! ## A175849.P1150609252233708200

`A000027(round(sqrt(2*A083674(n+1))))`
-/

namespace A175849.P1150609252233708200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A083674 (n + 1) : ℝ))).toNat

end

end A175849.P1150609252233708200

/-!
# A175851: a(n) = 1 for noncomposite n, a(n) = n - previousprime(n) + 1 for composite n.

The programs for A175851, the canonical program `A175851.P13592010490707745070` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175851 has offset 1).

The definition of A175851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175851.P1054273464917967258

`1+A064722(n+1)`
-/

namespace A175851.P1054273464917967258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A064722 (n + 1)

end

end A175851.P1054273464917967258

namespace A175851

/-- `1+A064722(n+1)` -/
def P1054273464917967258.Spec : Prop :=
  ∀ n, P1054273464917967258.a n = A175851 (n + 1)

theorem P1054273464917967258.correct : P1054273464917967258.Spec := by
  intro n
  simp only [A175851, Nat.add_sub_cancel, A175851.P1054273464917967258.a, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, A064722, A064722.P17255395012520951887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175851

/-! ## A175851.P17643001520274977842

`∑{d}[n+1, A305806(#)]`
-/

namespace A175851.P17643001520274977842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305806 d

end

end A175851.P17643001520274977842

namespace A175851

/-- `∑{d}[n+1, A305806(#)]` -/
def P17643001520274977842.Spec : Prop :=
  ∀ n, P17643001520274977842.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P8676169478128279191

`A049711(abs(1-n)+3)`
-/

namespace A175851.P8676169478128279191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (|1 - (n : ℤ)| + 3).toNat

end

end A175851.P8676169478128279191

namespace A175851

/-- `A049711(abs(1-n)+3)` -/
def P8676169478128279191.Spec : Prop :=
  ∀ n, P8676169478128279191.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P83145862323985080

`(n+3-A175856(n+1))/2`
-/

namespace A175851.P83145862323985080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A175856 (n + 1) : ℚ) / 2

end

end A175851.P83145862323985080

namespace A175851

/-- `(n+3-A175856(n+1))/2` -/
def P83145862323985080.Spec : Prop :=
  ∀ n, P83145862323985080.a n = (A175851 (n + 1) : ℚ)

theorem P83145862323985080.correct : P83145862323985080.Spec := by
  intro n
  simp only [A175851, Nat.add_sub_cancel, A175851.P83145862323985080.a, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, A175856, A175856.P13215807738889420678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175851

/-! ## A175851.P13592010490707745070

`gcd(a(n-1)+1, A061007(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175851

/-- `gcd(a(n-1)+1, A061007(n+1))` -/
def P13592010490707745070.Spec : Prop :=
  ∀ n, (P13592010490707745070.a n : ℤ) = A175851 (n + 1)

theorem P13592010490707745070.correct : P13592010490707745070.Spec := by
  intro n
  simp only [A175851, Nat.add_sub_cancel]

end A175851

/-! ## A175851.P13684906056373053783

`A028310(n)+1-A070320(n+1)`
-/

namespace A175851.P13684906056373053783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A070320 (n + 1))

end

end A175851.P13684906056373053783

namespace A175851

/-- `A028310(n)+1-A070320(n+1)` -/
def P13684906056373053783.Spec : Prop :=
  ∀ n, P13684906056373053783.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P10792412696744293365

`n+1-A349127(A151800(n+1))`
-/

namespace A175851.P10792412696744293365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A349127 (A151800 (n + 1)).toNat

end

end A175851.P10792412696744293365

namespace A175851

/-- `n+1-A349127(A151800(n+1))` -/
def P10792412696744293365.Spec : Prop :=
  ∀ n, P10792412696744293365.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P868379023828721491

`2-A008578(A036234(n+1))+n`
-/

namespace A175851.P868379023828721491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008578 (A036234 (n + 1)).toNat + (n : ℤ)

end

end A175851.P868379023828721491

namespace A175851

/-- `2-A008578(A036234(n+1))+n` -/
def P868379023828721491.Spec : Prop :=
  ∀ n, P868379023828721491.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P16076849012883602381

`n+2-A008578(A000720(n+1)+1)`
-/

namespace A175851.P16076849012883602381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A008578 (A000720 (n + 1) + 1).toNat

end

end A175851.P16076849012883602381

namespace A175851

/-- `n+2-A008578(A000720(n+1)+1)` -/
def P16076849012883602381.Spec : Prop :=
  ∀ n, P16076849012883602381.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P13117736380501853766

`abs(A040976(A000720(abs(1-n)+2))-n)`
-/

namespace A175851.P13117736380501853766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A040976 (A000720 (|1 - (n : ℤ)| + 2).toNat).toNat - (n : ℤ))|

end

end A175851.P13117736380501853766

namespace A175851

/-- `abs(A040976(A000720(abs(1-n)+2))-n)` -/
def P13117736380501853766.Spec : Prop :=
  ∀ n, P13117736380501853766.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P11044694321265524656

`∑{d}[n+1, A305791(#)*A305805((n+1)/#)]`
-/

namespace A175851.P11044694321265524656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305791 d * A305805 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A175851.P11044694321265524656

namespace A175851

/-- `∑{d}[n+1, A305791(#)*A305805((n+1)/#)]` -/
def P11044694321265524656.Spec : Prop :=
  ∀ n, P11044694321265524656.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P10265752548715178392

`n+2-A008578(A000720(A007918(n+2)))`
-/

namespace A175851.P10265752548715178392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A008578 (A000720 (A007918 (n + 2)).toNat).toNat

end

end A175851.P10265752548715178392

namespace A175851

/-- `n+2-A008578(A000720(A007918(n+2)))` -/
def P10265752548715178392.Spec : Prop :=
  ∀ n, P10265752548715178392.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P1702976296882271459

`A007920(A210882(n+2))+1`
-/

namespace A175851.P1702976296882271459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A210882 (n + 2)).toNat + 1

end

end A175851.P1702976296882271459

namespace A175851

/-- `A007920(A210882(n+2))+1` -/
def P1702976296882271459.Spec : Prop :=
  ∀ n, P1702976296882271459.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P9446300331494538252

`2-A064989(A066169(n+1))+n`
-/

namespace A175851.P9446300331494538252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A064989 (A066169 (n + 1)).toNat + (n : ℤ)

end

end A175851.P9446300331494538252

namespace A175851

/-- `2-A064989(A066169(n+1))+n` -/
def P9446300331494538252.Spec : Prop :=
  ∀ n, P9446300331494538252.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P12090307263886185539

`2-A136548(n+2)+n`
-/

namespace A175851.P12090307263886185539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A136548 (n + 2) + (n : ℤ)

end

end A175851.P12090307263886185539

namespace A175851

/-- `2-A136548(n+2)+n` -/
def P12090307263886185539.Spec : Prop :=
  ∀ n, P12090307263886185539.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P16376281339005044460

`n+2-A357980(A109763(2*n+1))`
-/

namespace A175851.P16376281339005044460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A357980 (A109763 (2 * n + 1)).toNat

end

end A175851.P16376281339005044460

namespace A175851

/-- `n+2-A357980(A109763(2*n+1))` -/
def P16376281339005044460.Spec : Prop :=
  ∀ n, P16376281339005044460.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P5503989138345119332

`A159477(n+1)+1-A119257(n+1)`
-/

namespace A175851.P5503989138345119332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) + (1 - A119257 (n + 1))

end

end A175851.P5503989138345119332

namespace A175851

/-- `A159477(n+1)+1-A119257(n+1)` -/
def P5503989138345119332.Spec : Prop :=
  ∀ n, P5503989138345119332.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P13608611370532156898

`2-A139421(A103517(n))+n`
-/

namespace A175851.P13608611370532156898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A139421 (A103517 n).toNat + (n : ℤ)

end

end A175851.P13608611370532156898

namespace A175851

/-- `2-A139421(A103517(n))+n` -/
def P13608611370532156898.Spec : Prop :=
  ∀ n, P13608611370532156898.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P4700524170344258629

`A213222(2*n+3)-(A139421(2*(n+1))+n)`
-/

namespace A175851.P4700524170344258629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213222 (2 * n + 3) - (A139421 (2 * (n + 1)) + (n : ℤ))

end

end A175851.P4700524170344258629

namespace A175851

/-- `A213222(2*n+3)-(A139421(2*(n+1))+n)` -/
def P4700524170344258629.Spec : Prop :=
  ∀ n, P4700524170344258629.a n = A175851 (n + 1)

end A175851

/-! ## A175851.P16971440936785562858

`n+2-A006530((n+1)*(n+1-a(n-1)))` with `a(0)=1`
-/

namespace A175851.P16971440936785562858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - A006530 ((n + 1 : ℤ) * ((n + 1 : ℤ) - a (n - 1))).toNat

end

end A175851.P16971440936785562858

namespace A175851

/-- `n+2-A006530((n+1)*(n+1-a(n-1)))` -/
def P16971440936785562858.Spec : Prop :=
  ∀ n, P16971440936785562858.a n = A175851 (n + 1)

end A175851

/-!
# A175852: a(n) = the highest power of 5 with n decimal digits.

The programs for A175852, there is no canonical definition to state claims against.
-/

/-! ## A175852.P3954900918076783642

`5^floor((n+1)*atan(7))`
-/

namespace A175852.P3954900918076783642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n + 1 : ℝ) * Real.arctan (7 : ℝ)⌋ : ℤ)

end

end A175852.P3954900918076783642

/-! ## A175852.P10483024559969016804

`5^floor(10*(n+1)/7)`
-/

namespace A175852.P10483024559969016804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊10 * ((n + 1 : ℚ) / 7)⌋ : ℤ)

end

end A175852.P10483024559969016804

/-! ## A175852.P5412917666730314464

`A056451(Δ[floor(n²*atan(7))])`
-/

namespace A175852.P5412917666730314464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) * Real.arctan (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (f1 (n + 1) - f1 n).toNat

end

end A175852.P5412917666730314464

/-! ## A175852.P11362191418395795997

`A000351(A066344(n+1))`
-/

namespace A175852.P11362191418395795997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A066344 (n + 1)).toNat

end

end A175852.P11362191418395795997

/-! ## A175852.P10268113782632285352

`A000351(A034888(2*n+1+n))`
-/

namespace A175852.P10268113782632285352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A034888 (2 * n + 1 + n)).toNat

end

end A175852.P10268113782632285352

/-!
# A175854: Number of anagrams of n that are divisible by exactly 3 primes (counted with multiplicity).

The programs for A175854, there is no canonical definition to state claims against.
-/

/-! ## A175854.P10253911695734679901

`and(A011712(n), A285846(n+1))`
-/

namespace A175854.P10253911695734679901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011712 n) (A285846 (n + 1))

end

end A175854.P10253911695734679901

/-! ## A175854.P15216534908347167081

`A128174(A341528(n+1)+A127647(2*n+1))`
-/

namespace A175854.P15216534908347167081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A341528 (n + 1) + A127647 (2 * n + 1)).toNat

end

end A175854.P15216534908347167081

/-! ## A175854.P11341651880553355750

`and(A011712(n), A219642(A133733(n+1)))`
-/

namespace A175854.P11341651880553355750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011712 n) (A219642 (A133733 (n + 1)).toNat)

end

end A175854.P11341651880553355750

/-! ## A175854.P16030685323018057088

`and(A011712(n), A033705(n+1))`
-/

namespace A175854.P16030685323018057088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011712 n) (A033705 (n + 1))

end

end A175854.P16030685323018057088

/-! ## A175854.P8070913111819353396

`and(A000007(A004018(n+4)), A191302(2*n))`
-/

namespace A175854.P8070913111819353396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 (A004018 (n + 4)).toNat) (A191302 (2 * n))

end

end A175854.P8070913111819353396

/-!
# A175856: a(n) = a(n-1) - 1 if n is composite, a(n) = n otherwise.

The programs for A175856, the canonical program `A175856.P13215807738889420678` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175856 has offset 1).

The definition of A175856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175856.P13008973113157026486

`n+1-2*A064722(n+1)`
-/

namespace A175856.P13008973113157026486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A064722 (n + 1)

end

end A175856.P13008973113157026486

namespace A175856

/-- `n+1-2*A064722(n+1)` -/
def P13008973113157026486.Spec : Prop :=
  ∀ n, P13008973113157026486.a n = A175856 (n + 1)

theorem P13008973113157026486.correct : P13008973113157026486.Spec := by
  intro n
  simp only [A175856, Nat.add_sub_cancel, A175856.P13008973113157026486.a, A175856.P13215807738889420678.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175856

/-! ## A175856.P13215807738889420678

`n+3-2*A175851(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175856

/-- `n+3-2*A175851(n+1)` -/
def P13215807738889420678.Spec : Prop :=
  ∀ n, P13215807738889420678.a n = A175856 (n + 1)

theorem P13215807738889420678.correct : P13215807738889420678.Spec := by
  intro n
  simp only [A175856, Nat.add_sub_cancel]

end A175856

/-! ## A175856.P1906210891695641302

`n-A060747(A064722(n+1))`
-/

namespace A175856.P1906210891695641302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060747 (A064722 (n + 1)).toNat

end

end A175856.P1906210891695641302

namespace A175856

/-- `n-A060747(A064722(n+1))` -/
def P1906210891695641302.Spec : Prop :=
  ∀ n, P1906210891695641302.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P9084398992140211226

`A001747(A036234(n+1))-(n+1)`
-/

namespace A175856.P9084398992140211226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (A036234 (n + 1)).toNat - (n + 1 : ℤ)

end

end A175856.P9084398992140211226

namespace A175856

/-- `A001747(A036234(n+1))-(n+1)` -/
def P9084398992140211226.Spec : Prop :=
  ∀ n, P9084398992140211226.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P8152860058933008890

`A076274(A000720(n+1)+1)-n`
-/

namespace A175856.P8152860058933008890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (A000720 (n + 1) + 1).toNat - (n : ℤ)

end

end A175856.P8152860058933008890

namespace A175856

/-- `A076274(A000720(n+1)+1)-n` -/
def P8152860058933008890.Spec : Prop :=
  ∀ n, P8152860058933008890.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P13715313487985747954

`A276000(n+1)-A184985(n+1)`
-/

namespace A175856.P13715313487985747954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276000 (n + 1) - A184985 (n + 1)

end

end A175856.P13715313487985747954

namespace A175856

/-- `A276000(n+1)-A184985(n+1)` -/
def P13715313487985747954.Spec : Prop :=
  ∀ n, P13715313487985747954.a n = A175856 (n + 1)

theorem P13715313487985747954.correct : P13715313487985747954.Spec := by
  intro n
  simp only [A175856, Nat.add_sub_cancel, A175856.P13715313487985747954.a, A175856.P13215807738889420678.a, A175851, A175851.P13592010490707745070.a, A184985, A184985.P8151491416379667933.a, A276000, A276000.P16396236457092608332.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175856

/-! ## A175856.P12564219525355736049

`2-A004273(A175851(n+1))+n`
-/

namespace A175856.P12564219525355736049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004273 (A175851 (n + 1)).toNat + (n : ℤ)

end

end A175856.P12564219525355736049

namespace A175856

/-- `2-A004273(A175851(n+1))+n` -/
def P12564219525355736049.Spec : Prop :=
  ∀ n, P12564219525355736049.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P7366832819180070113

`2*A008578(A000720(n+1)+1)-(n+1)`
-/

namespace A175856.P7366832819180070113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (A000720 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A175856.P7366832819180070113

namespace A175856

/-- `2*A008578(A000720(n+1)+1)-(n+1)` -/
def P7366832819180070113.Spec : Prop :=
  ∀ n, P7366832819180070113.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P126224388751108274

`A001747(A000720(A151800(n+1)))-(n+1)`
-/

namespace A175856.P126224388751108274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (A000720 (A151800 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A175856.P126224388751108274

namespace A175856

/-- `A001747(A000720(A151800(n+1)))-(n+1)` -/
def P126224388751108274.Spec : Prop :=
  ∀ n, P126224388751108274.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P18049754842149534692

`A014963(n+1-A064722(n+1))-A064722(n+1)`
-/

namespace A175856.P18049754842149534692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1 : ℤ) - A064722 (n + 1)).toNat - A064722 (n + 1)

end

end A175856.P18049754842149534692

namespace A175856

/-- `A014963(n+1-A064722(n+1))-A064722(n+1)` -/
def P18049754842149534692.Spec : Prop :=
  ∀ n, P18049754842149534692.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P13642384646829718093

`A020725(n+2-A175851(n+1))-A175851(n+1)`
-/

namespace A175856.P13642384646829718093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 2 : ℤ) - A175851 (n + 1)).toNat - A175851 (n + 1)

end

end A175856.P13642384646829718093

namespace A175856

/-- `A020725(n+2-A175851(n+1))-A175851(n+1)` -/
def P13642384646829718093.Spec : Prop :=
  ∀ n, P13642384646829718093.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P15206225516795422842

`2*A136548(n+2)-(n+1)`
-/

namespace A175856.P15206225516795422842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136548 (n + 2) - (n + 1 : ℤ)

end

end A175856.P15206225516795422842

namespace A175856

/-- `2*A136548(n+2)-(n+1)` -/
def P15206225516795422842.Spec : Prop :=
  ∀ n, P15206225516795422842.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P8058122426216296768

`(A004277(A139421(2*(n+1)))+n+3)%(n+2)`
-/

namespace A175856.P8058122426216296768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A139421 (2 * (n + 1))).toNat + (n : ℤ) + 3) (n + 2 : ℤ)

end

end A175856.P8058122426216296768

namespace A175856

/-- `(A004277(A139421(2*(n+1)))+n+3)%(n+2)` -/
def P8058122426216296768.Spec : Prop :=
  ∀ n, P8058122426216296768.a n = A175856 (n + 1)

end A175856

/-! ## A175856.P11801475993820559088

`A083718(A006530(A083717(n+1)))-(n+1)`
-/

namespace A175856.P11801475993820559088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083718 (A006530 (A083717 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A175856.P11801475993820559088

namespace A175856

/-- `A083718(A006530(A083717(n+1)))-(n+1)` -/
def P11801475993820559088.Spec : Prop :=
  ∀ n, P11801475993820559088.a n = A175856 (n + 1)

end A175856

/-!
# A175857: a(n) = possible values of A175856(m) in increasing order, where A175856(m): a(m) = m for m = noncomposites, a(m) = previous term - 1 for m = composites.

The programs for A175857, there is no canonical definition to state claims against.
-/

/-! ## A175857.P13133292119454081823

`comp[n*A175861(or(1, n))]`
-/

namespace A175857.P13133292119454081823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175861 (Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175857.P13133292119454081823

/-! ## A175857.P380363267252215862

`eq[0, A175861(n+1)]+1`
-/

namespace A175857.P380363267252215862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175857.P380363267252215862

/-! ## A175857.P13061608241407253759

`lt[0, A175860(n+1)]+1`
-/

namespace A175857.P13061608241407253759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175857.P13061608241407253759

/-! ## A175857.P15569447379133141238

`comp[xor(1, comp[A075365(n+1)])]`
-/

namespace A175857.P15569447379133141238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175857.P15569447379133141238

/-! ## A175857.P13787545941681773471

`comp[A175859(n+1)-1]+1`
-/

namespace A175857.P13787545941681773471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175857.P13787545941681773471

/-! ## A175857.P13429159234743096374

`eq[0, A175861(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A175857.P13429159234743096374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A175861 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175857.P13429159234743096374

/-! ## A175857.P9428529079501834290

`eq[A000007(n), A175861(or(1, n))]`
-/

namespace A175857.P9428529079501834290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175857.P9428529079501834290

/-! ## A175857.P16909907176338391972

`eq[A000038(n), A175861(or(1, n))]`
-/

namespace A175857.P16909907176338391972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175857.P16909907176338391972

/-! ## A175857.P1934298439675180319

`comp[A004442(comp[A075365(n+1)])]`
-/

namespace A175857.P1934298439675180319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075365 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175857.P1934298439675180319

/-!
# A175858: a(n) = all values of A175856(m) in increasing order, where A175856(m): a(m) = m for m = noncomposites, a(m) = previous term - 1 for m = composites.

The programs for A175858, there is no canonical definition to state claims against.
-/

/-! ## A175858.P5049627869591757886

`A210434(∑[gcd(5, A337894(n+2))])`
-/

namespace A175858.P5049627869591757886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A337894 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175858.P5049627869591757886

/-! ## A175858.P986116332995247578

`A210434(∑[A123162(A123162(n+1))])`
-/

namespace A175858.P986116332995247578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123162 (A123162 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175858.P986116332995247578

/-! ## A175858.P16068090802525981275

`A285189(A137688(n)+∑[A285189(n)])`
-/

namespace A175858.P16068090802525981275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A137688 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175858.P16068090802525981275

/-! ## A175858.P9678009439411940171

`A007094(A249036(n+1))%A360574(2*(n+2))`
-/

namespace A175858.P9678009439411940171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A249036 (n + 1)).toNat) (A360574 (2 * (n + 2)))

end

end A175858.P9678009439411940171

/-!
# A175859: a(n) = numbers k in increasing order such that A175856(m) = k has no solution for any m, where A175856(m): a(m) = m for m = noncomposites, a(m) = previous term - 1 for m = composites.

The programs for A175859, there is no canonical definition to state claims against.
-/

/-! ## A175859.P645206737401340799

`eq[0, A175860(n+1)]+1`
-/

namespace A175859.P645206737401340799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175859.P645206737401340799

/-! ## A175859.P12459285172450010443

`lt[A175860(n+2), 1]+2`
-/

namespace A175859.P12459285172450010443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A175859.P12459285172450010443

/-! ## A175859.P7708606299393389458

`eq[1, A175861(or(1, n))]`
-/

namespace A175859.P7708606299393389458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175859.P7708606299393389458

/-! ## A175859.P1145014931619035678

`eq[1, A175861(n+1)]+1`
-/

namespace A175859.P1145014931619035678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175859.P1145014931619035678

/-! ## A175859.P8342433358451746016

`eq[0, A175860(A109613(n))]`
-/

namespace A175859.P8342433358451746016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175859.P8342433358451746016

/-! ## A175859.P16256900315867074710

`lt[A175860(A028310(n)), 1]`
-/

namespace A175859.P16256900315867074710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175859.P16256900315867074710

/-! ## A175859.P17804848238792900294

`eq[1, A175861(A000007(n)+n)]`
-/

namespace A175859.P17804848238792900294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175859.P17804848238792900294

/-! ## A175859.P2437036189194742884

`eq[1, A175861(A000038(n)+n)]`
-/

namespace A175859.P2437036189194742884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175859.P2437036189194742884

/-! ## A175859.P230841346295313493

`A000720(p?[A000040(n+1)*A175861(n+1)])`
-/

namespace A175859.P230841346295313493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A175861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A175859.P230841346295313493

/-! ## A175859.P1480264475572590987

`A000720(p?[A175860(n+2)+A000040(n+2)])`
-/

namespace A175859.P1480264475572590987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A175859.P1480264475572590987

/-!
# A175860: a(n) = characteristic function of numbers k such that A175856(m) = k has solution for any m, where A175856(m): a(m) = m for m = noncomposites, a(m) = previous term - 1 for m = composites.

The programs for A175860, there is no canonical definition to state claims against.
-/

/-! ## A175860.P13747024798118671081

`1-A175861(n+1)`
-/

namespace A175860.P13747024798118671081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175861 (n + 1)

end

end A175860.P13747024798118671081

/-! ## A175860.P11407156515188760961

`A000007(n*A175861(n+1))`
-/

namespace A175860.P11407156515188760961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A175861 (n + 1)).toNat

end

end A175860.P11407156515188760961

/-! ## A175860.P9382038824439411967

`C(2, A005843(n)*A175861(n+1))`
-/

namespace A175860.P9382038824439411967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A005843 n * A175861 (n + 1)).toNat

end

end A175860.P9382038824439411967

/-! ## A175860.P1636907037376099573

`C(2, A007623(n)*A175861(n+1))`
-/

namespace A175860.P1636907037376099573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A007623 n * A175861 (n + 1)).toNat

end

end A175860.P1636907037376099573

/-! ## A175860.P3277077151596256699

`C(2, A008354(n)*A175861(n+1))`
-/

namespace A175860.P3277077151596256699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A008354 n * A175861 (n + 1)).toNat

end

end A175860.P3277077151596256699

/-! ## A175860.P361696932001191079

`C(A057515(n), n*A175861(n+1))`
-/

namespace A175860.P361696932001191079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057515 n).toNat ((n : ℤ) * A175861 (n + 1)).toNat

end

end A175860.P361696932001191079

/-! ## A175860.P11553208699039012205

`A007059(C(n+1, A175861(n+1)+n+1))`
-/

namespace A175860.P11553208699039012205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (Nat.choose (n + 1) (A175861 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A175860.P11553208699039012205

/-! ## A175860.P483555109206176154

`A007623(C(n+1, A175861(n+1)+n+1))`
-/

namespace A175860.P483555109206176154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (Nat.choose (n + 1) (A175861 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A175860.P483555109206176154

/-! ## A175860.P9019862885406526689

`A008354(C(n+1, A175861(n+1)+n+1))`
-/

namespace A175860.P9019862885406526689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008354 (Nat.choose (n + 1) (A175861 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A175860.P9019862885406526689

/-! ## A175860.P14647096890147144874

`A057515(C(n+1, A175861(n+1)+n+1))`
-/

namespace A175860.P14647096890147144874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (Nat.choose (n + 1) (A175861 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A175860.P14647096890147144874

/-! ## A175860.P8306435853197106113

`A262905(floor((n+1)/(A175861(n+1)+n+1)))`
-/

namespace A175860.P8306435853197106113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262905 ⌊(n + 1 : ℚ) / (A175861 (n + 1) + (n + 1 : ℤ) : ℚ)⌋.toNat

end

end A175860.P8306435853197106113

/-! ## A175860.P18131648630480098479

`A005843(C(n+1, A175861(n+1)+n+1))/2`
-/

namespace A175860.P18131648630480098479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (Nat.choose (n + 1) (A175861 (n + 1) + (n + 1 : ℤ)).toNat) : ℚ) / 2

end

end A175860.P18131648630480098479

/-! ## A175860.P6419848971409103081

`A192118(floor((n+1)/(A175861(n+1)+n+1))+1)`
-/

namespace A175860.P6419848971409103081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192118 (⌊(n + 1 : ℚ) / (A175861 (n + 1) + (n + 1 : ℤ) : ℚ)⌋ + 1).toNat

end

end A175860.P6419848971409103081

/-! ## A175860.P17391507894756216098

`xor(A001221(A007918(n)), A175861(n+1))`
-/

namespace A175860.P17391507894756216098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A007918 n).toNat) (A175861 (n + 1))

end

end A175860.P17391507894756216098

/-! ## A175860.P16430606889306775072

`char[A076981(n+1)]`
-/

namespace A175860.P16430606889306775072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175860.P16430606889306775072

/-! ## A175860.P14857738088707829073

`xor(A014963(6*(n+5)), A175861(n+1))`
-/

namespace A175860.P14857738088707829073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (6 * (n + 5))) (A175861 (n + 1))

end

end A175860.P14857738088707829073

/-! ## A175860.P2594596504710084763

`floor(1/A066508(n*A175861(n+1)+1))`
-/

namespace A175860.P2594596504710084763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A066508 ((n : ℤ) * A175861 (n + 1) + 1).toNat : ℚ)⌋

end

end A175860.P2594596504710084763

/-! ## A175860.P2994852641989285645

`C(2, A007059(n)*A175861(n+1))`
-/

namespace A175860.P2994852641989285645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A007059 n * A175861 (n + 1)).toNat

end

end A175860.P2994852641989285645

/-!
# A175861: a(n) = characteristic function of numbers k such that A175856(m) = k has no solution for any m, where A175856(m): a(m) = m for m = noncomposites, a(m) = previous term - 1 for m = composites.

The programs for A175861, there is no canonical definition to state claims against.
-/

/-! ## A175861.P11419684628402219240

`1-A175860(n+1)`
-/

namespace A175861.P11419684628402219240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175860 (n + 1)

end

end A175861.P11419684628402219240

/-! ## A175861.P13295662253476255647

`char[A175859(n+1)-1]`
-/

namespace A175861.P13295662253476255647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175861.P13295662253476255647

/-! ## A175861.P13331551804700531363

`xor(1, A175860(A000027(n+1)))`
-/

namespace A175861.P13331551804700531363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A175860 (A000027 (n + 1)).toNat)

end

end A175861.P13331551804700531363

/-! ## A175861.P5777897636756245537

`(A175860(n+1)+A158480(n))%2`
-/

namespace A175861.P5777897636756245537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175860 (n + 1) + A158480 n) 2

end

end A175861.P5777897636756245537

/-! ## A175861.P12247332531685137269

`and(A175860(n+1)+1, A057427(n))`
-/

namespace A175861.P12247332531685137269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175860 (n + 1) + 1) (A057427 n)

end

end A175861.P12247332531685137269

/-! ## A175861.P13945408363428681528

`xor(1, A175860(n+1))^A007318(n)`
-/

namespace A175861.P13945408363428681528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A175860 (n + 1)) : ℚ) ^ (A007318 n : ℤ)

end

end A175861.P13945408363428681528

/-! ## A175861.P14507554116195347850

`xor(1, A175860(n+1))^∑[A029259(n)]`
-/

namespace A175861.P14507554116195347850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A175860 (n + 1)) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A175861.P14507554116195347850

/-! ## A175861.P17433463486665013609

`A102354(gcd(n, n+1)*A175860(n+1)+1)`
-/

namespace A175861.P17433463486665013609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((Nat.gcd n (n + 1) : ℤ) * A175860 (n + 1) + 1).toNat

end

end A175861.P17433463486665013609

/-! ## A175861.P8682795394639204129

`A102354(lt[A102354(n+1), 1]*A175860(n+1)+1)`
-/

namespace A175861.P8682795394639204129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) * A175860 (n + 1) + 1).toNat

end

end A175861.P8682795394639204129

/-! ## A175861.P7375384780293745680

`xor(1, A175860(n+1))^A029940(n+1)`
-/

namespace A175861.P7375384780293745680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A175860 (n + 1)) : ℚ) ^ (A029940 (n + 1) : ℤ)

end

end A175861.P7375384780293745680

/-!
# A175862: a(n) = frequency of values n in A175856(m), where A175856(m): a(m) = m for m = noncomposites, a(m) = previous term - 1 for m = composites.

The programs for A175862, there is no canonical definition to state claims against.
-/

/-! ## A175862.P12010360961003291443

`A010872(10*A032006(n))`
-/

namespace A175862.P12010360961003291443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (10 * A032006 n).toNat

end

end A175862.P12010360961003291443

/-! ## A175862.P16479957473307210419

`A331893(A171516(n))%3`
-/

namespace A175862.P16479957473307210419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331893 (A171516 n).toNat) 3

end

end A175862.P16479957473307210419

/-! ## A175862.P15549248854847051033

`(A219608(A023488(n))+1+n)%3`
-/

namespace A175862.P15549248854847051033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219608 (A023488 n).toNat + 1 + (n : ℤ)) 3

end

end A175862.P15549248854847051033

/-! ## A175862.P14250866559936996413

`A032006(n)%A010707(A032005(n))`
-/

namespace A175862.P14250866559936996413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032006 n) (A010707 (A032005 n).toNat)

end

end A175862.P14250866559936996413

/-!
# A175864: Partial sums of ceiling(n^2/19).

The programs for A175864, the canonical program `A175864.P10980081036262705056` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175864 has offset 0).

The definition of A175864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175864.P10980081036262705056

`round((2*n+1)*(n²+n+30)/114)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175864

/-- `round((2*n+1)*(n²+n+30)/114)` -/
def P10980081036262705056.Spec : Prop :=
  ∀ n, P10980081036262705056.a n = A175864 n

theorem P10980081036262705056.correct : P10980081036262705056.Spec := by
  intro n
  simp only [A175864]

end A175864

/-! ## A175864.P14694642965500240941

`ceil(a(n-1)+n²/19)` with `a(0)=0`
-/

namespace A175864.P14694642965500240941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 19⌉

end

end A175864.P14694642965500240941

namespace A175864

/-- `ceil(a(n-1)+n²/19)` -/
def P14694642965500240941.Spec : Prop :=
  ∀ n, P14694642965500240941.a n = A175864 n

end A175864

/-! ## A175864.P9458507763337579685

`∑[ceil(A000290(n)/19)]`
-/

namespace A175864.P9458507763337579685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000290 n : ℚ) / 19⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175864.P9458507763337579685

namespace A175864

/-- `∑[ceil(A000290(n)/19)]` -/
def P9458507763337579685.Spec : Prop :=
  ∀ n, P9458507763337579685.a n = A175864 n

end A175864

/-! ## A175864.P4211551369193461557

`A037213(∑[floor(C(n, 2)/9)]²)+n`
-/

namespace A175864.P4211551369193461557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat + (n : ℤ)

end

end A175864.P4211551369193461557

namespace A175864

/-- `A037213(∑[floor(C(n, 2)/9)]²)+n` -/
def P4211551369193461557.Spec : Prop :=
  ∀ n, P4211551369193461557.a n = A175864 n

end A175864

/-! ## A175864.P72071287467263915

`∑[∑[A357722(A171966(n))]]`
-/

namespace A175864.P72071287467263915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((A171966 n).toNat + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175864.P72071287467263915

namespace A175864

/-- `∑[∑[A357722(A171966(n))]]` -/
def P72071287467263915.Spec : Prop :=
  ∀ n, P72071287467263915.a n = A175864 n

end A175864

/-!
# A175865: 

The programs for A175865, there is no canonical definition to state claims against.
-/

/-! ## A175865.P437853848261842034

`2*A224486(n+1)+1`
-/

namespace A175865.P437853848261842034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224486 (n + 1) + 1

end

end A175865.P437853848261842034

/-! ## A175865.P13626966862309101062

`A000265(A224486(n+1)+A224486(n+1)+1)`
-/

namespace A175865.P13626966862309101062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A224486 (n + 1) + A224486 (n + 1) + 1).toNat

end

end A175865.P13626966862309101062

/-! ## A175865.P12675838692858867992

`A005408(A224486(n+1))`
-/

namespace A175865.P12675838692858867992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A224486 (n + 1)).toNat

end

end A175865.P12675838692858867992

/-! ## A175865.P18446586955057087673

`A004273(A224486(n+1)+1)`
-/

namespace A175865.P18446586955057087673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A224486 (n + 1) + 1).toNat

end

end A175865.P18446586955057087673

/-! ## A175865.P5259071595512387059

`A137576(eq[A047444(n+1), A137576(n)])`
-/

namespace A175865.P5259071595512387059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175865.P5259071595512387059

/-! ## A175865.P11042662950570413686

`A137576(eq[A047447(n+1), A137576(n)])`
-/

namespace A175865.P11042662950570413686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175865.P11042662950570413686

/-! ## A175865.P5454765594275202361

`A328399(4*A224486(n+1))`
-/

namespace A175865.P5454765594275202361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (4 * A224486 (n + 1)).toNat

end

end A175865.P5454765594275202361

/-! ## A175865.P11226461387225024049

`A004442(2*A224486(n+1))`
-/

namespace A175865.P11226461387225024049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A224486 (n + 1)).toNat

end

end A175865.P11226461387225024049

/-! ## A175865.P1480163888944771176

`A109613(2*A224486(n+1))`
-/

namespace A175865.P1480163888944771176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A224486 (n + 1)).toNat

end

end A175865.P1480163888944771176

/-! ## A175865.P10084328605665776823

`A008619(4*A224486(n+1))`
-/

namespace A175865.P10084328605665776823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A224486 (n + 1)).toNat

end

end A175865.P10084328605665776823

/-!
# A175866: Numbers k such that 2^(k-1) == 1 (mod k) and 2^(k-1) == 3*k + 1 (mod k^2).

The programs for A175866, there is no canonical definition to state claims against.
-/

/-! ## A175866.P8580568332901626676

`A186884(A032702(n+1)+A001168(n))`
-/

namespace A175866.P8580568332901626676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186884 (A032702 (n + 1) + A001168 n).toNat

end

end A175866.P8580568332901626676

/-!
# A175868: Partial sums of ceiling(n^2/20).

The programs for A175868, the canonical program `A175868.P8964829421024085440` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175868 has offset 0).

The definition of A175868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175868.P8964829421024085440

`ceil((2*n^3+3*n²+70*n-3)/120)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175868

/-- `ceil((2*n^3+3*n²+70*n-3)/120)` -/
def P8964829421024085440.Spec : Prop :=
  ∀ n, P8964829421024085440.a n = A175868 n

theorem P8964829421024085440.correct : P8964829421024085440.Spec := by
  intro n
  simp only [A175868]

end A175868

/-! ## A175868.P11447009358768140731

`A175827(n)-A177239(n)`
-/

namespace A175868.P11447009358768140731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175827 n - A177239 n

end

end A175868.P11447009358768140731

namespace A175868

/-- `A175827(n)-A177239(n)` -/
def P11447009358768140731.Spec : Prop :=
  ∀ n, P11447009358768140731.a n = A175868 n

end A175868

/-! ## A175868.P9143655050726520019

`∑[A036408(n)]-A177239(n)`
-/

namespace A175868.P9143655050726520019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177239 n

end

end A175868.P9143655050726520019

namespace A175868

/-- `∑[A036408(n)]-A177239(n)` -/
def P9143655050726520019.Spec : Prop :=
  ∀ n, P9143655050726520019.a n = A175868 n

end A175868

/-! ## A175868.P12733333727184538197

`A175827(n)-A029383(A100764(n+1))`
-/

namespace A175868.P12733333727184538197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175827 n - A029383 (A100764 (n + 1)).toNat

end

end A175868.P12733333727184538197

namespace A175868

/-- `A175827(n)-A029383(A100764(n+1))` -/
def P12733333727184538197.Spec : Prop :=
  ∀ n, P12733333727184538197.a n = A175868 n

end A175868

/-! ## A175868.P12685512001749339211

`A002266(∑[A002620(n)+3])`
-/

namespace A175868.P12685512001749339211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175868.P12685512001749339211

namespace A175868

/-- `A002266(∑[A002620(n)+3])` -/
def P12685512001749339211.Spec : Prop :=
  ∀ n, P12685512001749339211.a n = A175868 n

end A175868

/-!
# A175869: Partial sums of ceiling(n^2/23).

The programs for A175869, the canonical program `A175869.P14338339700553079318` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175869 has offset 0).

The definition of A175869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175869.P14338339700553079318

`round((2*n+1)*(n²+n+42)/138)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175869

/-- `round((2*n+1)*(n²+n+42)/138)` -/
def P14338339700553079318.Spec : Prop :=
  ∀ n, P14338339700553079318.a n = A175869 n

theorem P14338339700553079318.correct : P14338339700553079318.Spec := by
  intro n
  simp only [A175869]

end A175869

/-! ## A175869.P15691190826663015394

`a(n-1)+ceil(n²/23)` with `a(0)=0`
-/

namespace A175869.P15691190826663015394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌈(n ^ 2 : ℚ) / 23⌉

end

end A175869.P15691190826663015394

namespace A175869

/-- `a(n-1)+ceil(n²/23)` -/
def P15691190826663015394.Spec : Prop :=
  ∀ n, P15691190826663015394.a n = A175869 n

end A175869

/-! ## A175869.P2561041297932602341

`A000196(A084376(2*n)-A182806(n+1))`
-/

namespace A175869.P2561041297932602341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084376 (2 * n) - A182806 (n + 1)).toNat

end

end A175869.P2561041297932602341

namespace A175869

/-- `A000196(A084376(2*n)-A182806(n+1))` -/
def P2561041297932602341.Spec : Prop :=
  ∀ n, P2561041297932602341.a n = A175869 n

end A175869

/-! ## A175869.P2984538496020807207

`record[round(A332359(n+1)/62)]`
-/

namespace A175869.P2984538496020807207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332359 (n + 1) : ℚ) / 62)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175869.P2984538496020807207

namespace A175869

/-- `record[round(A332359(n+1)/62)]` -/
def P2984538496020807207.Spec : Prop :=
  ∀ n, P2984538496020807207.a n = A175869 n

end A175869

/-! ## A175869.P954659404762115303

`∑[∑[A000035(A295352(2*n+1))]]`
-/

namespace A175869.P954659404762115303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295352 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175869.P954659404762115303

namespace A175869

/-- `∑[∑[A000035(A295352(2*n+1))]]` -/
def P954659404762115303.Spec : Prop :=
  ∀ n, P954659404762115303.a n = A175869 n

end A175869

/-!
# A175870: Partial sums of ceiling(n^2/24).

The programs for A175870, the canonical program `A175870.P5636134616265253569` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175870 has offset 0).

The definition of A175870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175870.P5636134616265253569

`floor((n+1)*(2*n²+n+95)/144)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175870

/-- `floor((n+1)*(2*n²+n+95)/144)` -/
def P5636134616265253569.Spec : Prop :=
  ∀ n, P5636134616265253569.a n = A175870 n

theorem P5636134616265253569.correct : P5636134616265253569.Spec := by
  intro n
  simp only [A175870]

end A175870

/-! ## A175870.P9130084664585319353

`A008770(n)-A008647(n)`
-/

namespace A175870.P9130084664585319353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008770 n - A008647 n

end

end A175870.P9130084664585319353

namespace A175870

/-- `A008770(n)-A008647(n)` -/
def P9130084664585319353.Spec : Prop :=
  ∀ n, P9130084664585319353.a n = A175870 n

end A175870

/-! ## A175870.P13785565931553737347

`A175812(n)-A122046(n)`
-/

namespace A175870.P13785565931553737347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n - A122046 n

end

end A175870.P13785565931553737347

namespace A175870

/-- `A175812(n)-A122046(n)` -/
def P13785565931553737347.Spec : Prop :=
  ∀ n, P13785565931553737347.a n = A175870 n

end A175870

/-! ## A175870.P1369234854373513690

`A175826(n)-A181120(n)`
-/

namespace A175870.P1369234854373513690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n - A181120 n

end

end A175870.P1369234854373513690

namespace A175870

/-- `A175826(n)-A181120(n)` -/
def P1369234854373513690.Spec : Prop :=
  ∀ n, P1369234854373513690.a n = A175870 n

end A175870

/-! ## A175870.P8505957744006301455

`A175812(n)-∑[∑[A002265(n+1)]]`
-/

namespace A175870.P8505957744006301455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175870.P8505957744006301455

namespace A175870

/-- `A175812(n)-∑[∑[A002265(n+1)]]` -/
def P8505957744006301455.Spec : Prop :=
  ∀ n, P8505957744006301455.a n = A175870 n

end A175870

/-!
# A175871: a(0) = 2; a(n) = a(n - 1) * 3 + 1 if a(n - 1) is prime, or a(n - 1) / (smallest prime factor) if it is composite.

The programs for A175871, there is no canonical definition to state claims against.
-/

/-! ## A175871.P8802693240041734225

`A266551(a(n-1))` with `a(0)=2`
-/

namespace A175871.P8802693240041734225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266551 (a (n - 1)).toNat

end

end A175871.P8802693240041734225

/-!
# A175872: Write n in binary. Consider the 0's and 1 as a list. (*) If the new list consists entirely of 1's, then a(n) = the number of 1's, and end. Otherwise, construct a new list made up of the lengths, written in order, of the runs of similarly-valued terms from the previous list. Go to *.

The programs for A175872, there is no canonical definition to state claims against.
-/

/-! ## A175872.P9098475963269759407

`A124768(A233249(n+4)+A036436(n+1))`
-/

namespace A175872.P9098475963269759407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A233249 (n + 4) + A036436 (n + 1)).toNat

end

end A175872.P9098475963269759407

/-! ## A175872.P7934602278789262882

`A324920(lcm(A324931(n+1), A324933(2*n+1)))`
-/

namespace A175872.P7934602278789262882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324920 (Int.lcm (A324931 (n + 1)) (A324933 (2 * n + 1)))

end

end A175872.P7934602278789262882

/-! ## A175872.P17751027027659325523

`A168046(A000051(n))+A107286(n)`
-/

namespace A175872.P17751027027659325523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A000051 n).toNat + A107286 n

end

end A175872.P17751027027659325523

/-! ## A175872.P8474794081170729597

`A168046(A000079(n))+A107286(n)`
-/

namespace A175872.P8474794081170729597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A000079 n).toNat + A107286 n

end

end A175872.P8474794081170729597

/-! ## A175872.P14897592760007922240

`A168046(A014551(n))+A107286(n)`
-/

namespace A175872.P14897592760007922240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A014551 n).toNat + A107286 n

end

end A175872.P14897592760007922240

/-!
# A175873: Primes of the form prime(k+1) + prime(k+2) - prime(k).

The programs for A175873, there is no canonical definition to state claims against.
-/

/-! ## A175873.P10186754464741371507

`p?[A181428(record[A140595(n)])]`
-/

namespace A175873.P10186754464741371507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175873.P10186754464741371507

/-! ## A175873.P6501704112438545800

`p?[C(A181428(n+1), A285337(n+1))]`
-/

namespace A175873.P6501704112438545800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181428 (n + 1)).toNat (A285337 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175873.P6501704112438545800

/-! ## A175873.P2963340268711529150

`∩[A069346(n+1), A376297(n+1)]`
-/

namespace A175873.P2963340268711529150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175873.P2963340268711529150

/-! ## A175873.P12006232783400604897

`p?[record[A181428(A106501(n+1))]]`
-/

namespace A175873.P12006232783400604897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (A106501 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175873.P12006232783400604897

/-! ## A175873.P2397533531088792857

`p?[A181428(record[A115060(n+1)])]`
-/

namespace A175873.P2397533531088792857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175873.P2397533531088792857

/-!
# A175876: Numbers k such that sigma(k+2) = 2*sigma(k).

The programs for A175876, there is no canonical definition to state claims against.
-/

/-! ## A175876.P6961568622413429498

`A067134(n+1)-1`
-/

namespace A175876.P6961568622413429498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067134 (n + 1) - 1

end

end A175876.P6961568622413429498

/-! ## A175876.P13845879864957875029

`A153881(n+2)+A067134(n+1)`
-/

namespace A175876.P13845879864957875029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A067134 (n + 1)

end

end A175876.P13845879864957875029

/-! ## A175876.P18349306051310055445

`A106400(A059150(n))+A067134(n+1)`
-/

namespace A175876.P18349306051310055445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A059150 n).toNat + A067134 (n + 1)

end

end A175876.P18349306051310055445

/-! ## A175876.P8135015863632134861

`A348954(A000040(n+3))+A067134(n+1)`
-/

namespace A175876.P8135015863632134861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348954 (A000040 (n + 3)).toNat + A067134 (n + 1)

end

end A175876.P8135015863632134861

/-! ## A175876.P1707678929687403255

`xor(-A067134(n+1), A008683(A037153(n+1)))`
-/

namespace A175876.P1707678929687403255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A067134 (n + 1)) (A008683 (A037153 (n + 1)).toNat)

end

end A175876.P1707678929687403255

/-! ## A175876.P14363933115821603574

`A244895(2*A273669(n+1))+A067134(n+1)`
-/

namespace A175876.P14363933115821603574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (2 * A273669 (n + 1)).toNat + A067134 (n + 1)

end

end A175876.P14363933115821603574

/-!
# A175879: Numbers arising from certain regular binary expansions.

The programs for A175879, there is no canonical definition to state claims against.
-/

/-! ## A175879.P12768554373336326692

`A373275(n)+a(n-1)` with `a(0)=0`
-/

namespace A175879.P12768554373336326692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A373275 n + a (n - 1)

end

end A175879.P12768554373336326692

/-! ## A175879.P3015702619247012597

`xor(a(n-1), A034729(n))` with `a(0)=0`
-/

namespace A175879.P3015702619247012597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A034729 n)

end

end A175879.P3015702619247012597

/-! ## A175879.P8522060716186478077

`∑[A373275(n+1)]-A373275(n+1)`
-/

namespace A175879.P8522060716186478077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A373275 (n + 1)

end

end A175879.P8522060716186478077

/-! ## A175879.P253732115058637460

`floor(A186644(2^n)/2)`
-/

namespace A175879.P253732115058637460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186644 (2 ^ n) : ℚ) / 2⌋

end

end A175879.P253732115058637460

/-! ## A175879.P8991786220761685351

`xor(a(n-1), A038572(A055895(n)))` with `a(0)=0`
-/

namespace A175879.P8991786220761685351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A038572 (A055895 n).toNat)

end

end A175879.P8991786220761685351

/-!
# A175880: a(1)=1, a(2)=2. If n >= 3: if n/2 is in the sequence, a(n)=0, otherwise a(n)=n.

The programs for A175880, the canonical program `A175880.P5038530478114564646` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175880 has offset 1).

The definition of A175880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175880.P5038530478114564646

`n+1-(1+(-1)^(n+1))*a((2*(n+1)+1-(-1)^(n+1))/4-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175880

/-- `n+1-(1+(-1)^(n+1))*a((2*(n+1)+1-(-1)^(n+1))/4-1)` -/
def P5038530478114564646.Spec : Prop :=
  ∀ n, P5038530478114564646.a n = A175880 (n + 1)

theorem P5038530478114564646.correct : P5038530478114564646.Spec := by
  intro n
  simp only [A175880, Nat.add_sub_cancel]

end A175880

/-! ## A175880.P17944371310277665165

`(n+1)*A039982(xor(1, n))`
-/

namespace A175880.P17944371310277665165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039982 (Nat.xor 1 n)

end

end A175880.P17944371310277665165

namespace A175880

/-- `(n+1)*A039982(xor(1, n))` -/
def P17944371310277665165.Spec : Prop :=
  ∀ n, P17944371310277665165.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P4068215816649810545

`(n+1)*and(1, Δ[A023416(n)])`
-/

namespace A175880.P4068215816649810545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (f1 (n + 1) - f1 n)

end

end A175880.P4068215816649810545

namespace A175880

/-- `(n+1)*and(1, Δ[A023416(n)])` -/
def P4068215816649810545.Spec : Prop :=
  ∀ n, P4068215816649810545.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P1241508471990938413

`(n+1)*and(1, Δ[A056792(n)])`
-/

namespace A175880.P1241508471990938413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (f1 (n + 1) - f1 n)

end

end A175880.P1241508471990938413

namespace A175880

/-- `(n+1)*and(1, Δ[A056792(n)])` -/
def P1241508471990938413.Spec : Prop :=
  ∀ n, P1241508471990938413.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P3616728180530616627

`(n+1)*A039963(Δ[n²]-2^ceil(log2(n+1)))`
-/

namespace A175880.P3616728180530616627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039963 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A175880.P3616728180530616627

namespace A175880

/-- `(n+1)*A039963(Δ[n²]-2^ceil(log2(n+1)))` -/
def P3616728180530616627.Spec : Prop :=
  ∀ n, P3616728180530616627.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P4224897326401931227

`(n+1)*A000035(A091090(n))`
-/

namespace A175880.P4224897326401931227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A091090 n).toNat

end

end A175880.P4224897326401931227

namespace A175880

/-- `(n+1)*A000035(A091090(n))` -/
def P4224897326401931227.Spec : Prop :=
  ∀ n, P4224897326401931227.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P7765085843478144366

`(n+1)*A035263(A009195(n+1))`
-/

namespace A175880.P7765085843478144366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035263 (A009195 (n + 1)).toNat

end

end A175880.P7765085843478144366

namespace A175880

/-- `(n+1)*A035263(A009195(n+1))` -/
def P7765085843478144366.Spec : Prop :=
  ∀ n, P7765085843478144366.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P6608183686055594080

`(n+1)*A035263(A048671(n+1))`
-/

namespace A175880.P6608183686055594080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035263 (A048671 (n + 1)).toNat

end

end A175880.P6608183686055594080

namespace A175880

/-- `(n+1)*A035263(A048671(n+1))` -/
def P6608183686055594080.Spec : Prop :=
  ∀ n, P6608183686055594080.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P4425547779883372730

`(n+1)*A035263(A052126(n+1))`
-/

namespace A175880.P4425547779883372730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035263 (A052126 (n + 1)).toNat

end

end A175880.P4425547779883372730

namespace A175880

/-- `(n+1)*A035263(A052126(n+1))` -/
def P4425547779883372730.Spec : Prop :=
  ∀ n, P4425547779883372730.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P1302717116203848796

`(n+1)*A000035(A000005(A135517(n)))`
-/

namespace A175880.P1302717116203848796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A000005 (A135517 n).toNat).toNat

end

end A175880.P1302717116203848796

namespace A175880

/-- `(n+1)*A000035(A000005(A135517(n)))` -/
def P1302717116203848796.Spec : Prop :=
  ∀ n, P1302717116203848796.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P270662839227199202

`(n+1)*A039984(Δ[n²])`
-/

namespace A175880.P270662839227199202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175880.P270662839227199202

namespace A175880

/-- `(n+1)*A039984(Δ[n²])` -/
def P270662839227199202.Spec : Prop :=
  ∀ n, P270662839227199202.a n = A175880 (n + 1)

end A175880

/-! ## A175880.P14386146246688715758

`(n+1)*A035263(A050399(n+1))`
-/

namespace A175880.P14386146246688715758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035263 (A050399 (n + 1)).toNat

end

end A175880.P14386146246688715758

namespace A175880

/-- `(n+1)*A035263(A050399(n+1))` -/
def P14386146246688715758.Spec : Prop :=
  ∀ n, P14386146246688715758.a n = A175880 (n + 1)

end A175880

/-!
# A175881: Number of closed Knight's tours on a 6 X n board.

The programs for A175881, there is no canonical definition to state claims against.
-/

/-! ## A175881.P15319805136087058113

`A392000(A017461(n))`
-/

namespace A175881.P15319805136087058113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392000 (A017461 n).toNat

end

end A175881.P15319805136087058113

/-! ## A175881.P15547995274096032478

`A392000(A167996(n+1))`
-/

namespace A175881.P15547995274096032478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392000 (A167996 (n + 1)).toNat

end

end A175881.P15547995274096032478

/-! ## A175881.P8735223596613242408

`A392000(A366962(n+1))`
-/

namespace A175881.P8735223596613242408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392000 (A366962 (n + 1)).toNat

end

end A175881.P8735223596613242408

/-!
# A175882: Number of groupoids of order n with no identity element.

The programs for A175882, the canonical program `A175882.P14577659323486255059` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175882 has offset 0).

The definition of A175882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175882.P14577659323486255059

`n^n²-n^((n-1)²+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175882

/-- `n^n²-n^((n-1)²+1)` -/
def P14577659323486255059.Spec : Prop :=
  ∀ n, P14577659323486255059.a n = (A175882 n : ℚ)

end A175882

/-!
# A175883: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k)|0<k<=3} which never go above the line y=x.

The programs for A175883, there is no canonical definition to state claims against.
-/

/-! ## A175883.P11598954394241470089

`A004396(A059221(2*n))`
-/

namespace A175883.P11598954394241470089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A059221 (2 * n)).toNat

end

end A175883.P11598954394241470089

/-! ## A175883.P11590643069214376775

`A213096(n)+A002264(A015451(n))`
-/

namespace A175883.P11590643069214376775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213096 n + A002264 (A015451 n).toNat

end

end A175883.P11590643069214376775

/-!
# A175884: Numbers that are congruent to {0, 2, 4, 7, 9} mod 12.

The programs for A175884, the canonical program `A175884.P5955673173974396126` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175884 has offset 1).

The definition of A175884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175884.P13184622939192619976

`floor(12*n/5)`
-/

namespace A175884.P13184622939192619976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * n : ℚ) / 5⌋

end

end A175884.P13184622939192619976

namespace A175884

/-- `floor(12*n/5)` -/
def P13184622939192619976.Spec : Prop :=
  ∀ n, P13184622939192619976.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P5955673173974396126

`A005843(n)+A057354(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175884

/-- `A005843(n)+A057354(n)` -/
def P5955673173974396126.Spec : Prop :=
  ∀ n, P5955673173974396126.a n = A175884 (n + 1)

theorem P5955673173974396126.correct : P5955673173974396126.Spec := by
  intro n
  simp only [A175884, Nat.add_sub_cancel]

end A175884

/-! ## A175884.P13656362472951580068

`comp[a(n-2)+7]+n` with `a(0)=3, a(1)=6`
-/

namespace A175884.P13656362472951580068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A175884.P13656362472951580068

namespace A175884

/-- `comp[a(n-2)+7]+n` -/
def P13656362472951580068.Spec : Prop :=
  ∀ n, (P13656362472951580068.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P15263818562970658929

`comp[∑[gcd(2, n)+2]-1]+n`
-/

namespace A175884.P15263818562970658929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P15263818562970658929

namespace A175884

/-- `comp[∑[gcd(2, n)+2]-1]+n` -/
def P15263818562970658929.Spec : Prop :=
  ∀ n, (P15263818562970658929.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P15602104086788119171

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A175884.P15602104086788119171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 3, 2, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175884.P15602104086788119171

namespace A175884

/-- `∑[floor(a(n-5))]` -/
def P15602104086788119171.Spec : Prop :=
  ∀ n, (P15602104086788119171.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P17442600331890164968

`round(a(n-1)/6+2*n)` with `a(0)=0`
-/

namespace A175884.P17442600331890164968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 6 + (2 * n : ℚ))

end

end A175884.P17442600331890164968

namespace A175884

/-- `round(a(n-1)/6+2*n)` -/
def P17442600331890164968.Spec : Prop :=
  ∀ n, P17442600331890164968.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P1581976628338637478

`∑[a(n-5)%4]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3, a(4)=2, a(5)=3`
-/

namespace A175884.P1581976628338637478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 3, 2, 3] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175884.P1581976628338637478

namespace A175884

/-- `∑[a(n-5)%4]` -/
def P1581976628338637478.Spec : Prop :=
  ∀ n, (P1581976628338637478.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P1137129807513917224

`floor(a(n-1)/3)%2+a(n-1)+2` with `a(0)=0`
-/

namespace A175884.P1137129807513917224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ⌊(a (n - 1) : ℚ) / 3⌋ 2 + (a (n - 1) + 2)

end

end A175884.P1137129807513917224

namespace A175884

/-- `floor(a(n-1)/3)%2+a(n-1)+2` -/
def P1137129807513917224.Spec : Prop :=
  ∀ n, P1137129807513917224.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P4022402721291721311

`record[floor(n/5)+floor(n/and(n+1, -(n+1)))]`
-/

namespace A175884.P4022402721291721311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋ + ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175884.P4022402721291721311

namespace A175884

/-- `record[floor(n/5)+floor(n/and(n+1, -(n+1)))]` -/
def P4022402721291721311.Spec : Prop :=
  ∀ n, P4022402721291721311.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P1647691906913656446

`A047381(n+1)+n`
-/

namespace A175884.P1647691906913656446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (n + 1) + (n : ℤ)

end

end A175884.P1647691906913656446

namespace A175884

/-- `A047381(n+1)+n` -/
def P1647691906913656446.Spec : Prop :=
  ∀ n, P1647691906913656446.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P10910354650139776177

`comp[A047280(n+1)]+n`
-/

namespace A175884.P10910354650139776177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P10910354650139776177

namespace A175884

/-- `comp[A047280(n+1)]+n` -/
def P10910354650139776177.Spec : Prop :=
  ∀ n, (P10910354650139776177.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P14613541402021903219

`A032796(n+1)-1+n`
-/

namespace A175884.P14613541402021903219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (n + 1) - 1 + (n : ℤ)

end

end A175884.P14613541402021903219

namespace A175884

/-- `A032796(n+1)-1+n` -/
def P14613541402021903219.Spec : Prop :=
  ∀ n, P14613541402021903219.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P14813846515592054609

`4*n-A047496(n+1)`
-/

namespace A175884.P14813846515592054609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A047496 (n + 1)

end

end A175884.P14813846515592054609

namespace A175884

/-- `4*n-A047496(n+1)` -/
def P14813846515592054609.Spec : Prop :=
  ∀ n, P14813846515592054609.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P2320788680937313233

`n-1+A173276(n)+n`
-/

namespace A175884.P2320788680937313233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A173276 n + (n : ℤ))

end

end A175884.P2320788680937313233

namespace A175884

/-- `n-1+A173276(n)+n` -/
def P2320788680937313233.Spec : Prop :=
  ∀ n, P2320788680937313233.a n = A175884 (n + 1)

end A175884

/-! ## A175884.P4743587163895232756

`comp[A047385(n+1)+1]+n`
-/

namespace A175884.P4743587163895232756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P4743587163895232756

namespace A175884

/-- `comp[A047385(n+1)+1]+n` -/
def P4743587163895232756.Spec : Prop :=
  ∀ n, (P4743587163895232756.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P10600265795698973386

`comp[A047345(n+1)-1]+n`
-/

namespace A175884.P10600265795698973386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P10600265795698973386

namespace A175884

/-- `comp[A047345(n+1)-1]+n` -/
def P10600265795698973386.Spec : Prop :=
  ∀ n, (P10600265795698973386.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P2873809709737933311

`comp[A047346(n+1)+2]+n`
-/

namespace A175884.P2873809709737933311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P2873809709737933311

namespace A175884

/-- `comp[A047346(n+1)+2]+n` -/
def P2873809709737933311.Spec : Prop :=
  ∀ n, (P2873809709737933311.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P1441897806940124179

`comp[A047383(n+1)-2]+n`
-/

namespace A175884.P1441897806940124179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P1441897806940124179

namespace A175884

/-- `comp[A047383(n+1)-2]+n` -/
def P1441897806940124179.Spec : Prop :=
  ∀ n, (P1441897806940124179.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P3157504574042087487

`comp[A047297(2*(n+1))]+n`
-/

namespace A175884.P3157504574042087487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047297 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P3157504574042087487

namespace A175884

/-- `comp[A047297(2*(n+1))]+n` -/
def P3157504574042087487.Spec : Prop :=
  ∀ n, (P3157504574042087487.a n : ℤ) = A175884 (n + 1)

end A175884

/-! ## A175884.P16806112534065564286

`comp[A047300(2*(n+1))]+n`
-/

namespace A175884.P16806112534065564286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047300 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A175884.P16806112534065564286

namespace A175884

/-- `comp[A047300(2*(n+1))]+n` -/
def P16806112534065564286.Spec : Prop :=
  ∀ n, (P16806112534065564286.a n : ℤ) = A175884 (n + 1)

end A175884

/-!
# A175885: Numbers that are congruent to {1, 10} mod 11.

The programs for A175885, the canonical program `A175885.P3656749870854080995` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175885 has offset 1).

The definition of A175885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175885.P3656749870854080995

`a(n-2)+11` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175885

/-- `a(n-2)+11` -/
def P3656749870854080995.Spec : Prop :=
  ∀ n, (P3656749870854080995.a n : ℤ) = A175885 (n + 1)

theorem P3656749870854080995.correct : P3656749870854080995.Spec := by
  intro n
  simp only [A175885, Nat.add_sub_cancel]

end A175885

/-! ## A175885.P15142746728879597396

`(22*(n+1)+7*(-1)^(n+1)-11)/4`
-/

namespace A175885.P15142746728879597396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) - 11 : ℚ) / 4

end

end A175885.P15142746728879597396

namespace A175885

/-- `(22*(n+1)+7*(-1)^(n+1)-11)/4` -/
def P15142746728879597396.Spec : Prop :=
  ∀ n, P15142746728879597396.a n = (A175885 (n + 1) : ℚ)

theorem P15142746728879597396.correct : P15142746728879597396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175885, Nat.add_sub_cancel, A175885.P15142746728879597396.a, A175885.P3656749870854080995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A175885, Nat.add_sub_cancel, A175885.P15142746728879597396.a, A175885.P3656749870854080995.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175885

/-! ## A175885.P17690360245910730591

`A195312(n+1)+A195312(n)`
-/

namespace A175885.P17690360245910730591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 (n + 1) + A195312 n

end

end A175885.P17690360245910730591

namespace A175885

/-- `A195312(n+1)+A195312(n)` -/
def P17690360245910730591.Spec : Prop :=
  ∀ n, P17690360245910730591.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P17882211230885601504

`∑[8^(n%2)]+n`
-/

namespace A175885.P17882211230885601504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175885.P17882211230885601504

namespace A175885

/-- `∑[8^(n%2)]+n` -/
def P17882211230885601504.Spec : Prop :=
  ∀ n, (P17882211230885601504.a n : ℤ) = A175885 (n + 1)

end A175885

/-! ## A175885.P156933168262087636

`∑[8^and(1, n)]+n`
-/

namespace A175885.P156933168262087636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175885.P156933168262087636

namespace A175885

/-- `∑[8^and(1, n)]+n` -/
def P156933168262087636.Spec : Prop :=
  ∀ n, (P156933168262087636.a n : ℤ) = A175885 (n + 1)

end A175885

/-! ## A175885.P7614252746165362061

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=9, a(2)=2`
-/

namespace A175885.P7614252746165362061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175885.P7614252746165362061

namespace A175885

/-- `∑[abs(a(n-2))]` -/
def P7614252746165362061.Spec : Prop :=
  ∀ n, (P7614252746165362061.a n : ℤ) = A175885 (n + 1)

end A175885

/-! ## A175885.P8317927714047559705

`∑[11-a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A175885.P8317927714047559705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175885.P8317927714047559705

namespace A175885

/-- `∑[11-a(n-1)]` -/
def P8317927714047559705.Spec : Prop :=
  ∀ n, P8317927714047559705.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P8891173381332871205

`11*n-a(n-1)` with `a(0)=1`
-/

namespace A175885.P8891173381332871205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (11 * n : ℤ) - a (n - 1)

end

end A175885.P8891173381332871205

namespace A175885

/-- `11*n-a(n-1)` -/
def P8891173381332871205.Spec : Prop :=
  ∀ n, P8891173381332871205.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P17568072826271019975

`∑[gcd(8, 1-n²)]+n`
-/

namespace A175885.P17568072826271019975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (1 - (n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175885.P17568072826271019975

namespace A175885

/-- `∑[gcd(8, 1-n²)]+n` -/
def P17568072826271019975.Spec : Prop :=
  ∀ n, (P17568072826271019975.a n : ℤ) = A175885 (n + 1)

end A175885

/-! ## A175885.P4482006215136907346

`∑[∑[ogf((1+9x+x^2)/(1+x))]]`
-/

namespace A175885.P4482006215136907346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175885.P4482006215136907346

namespace A175885

/-- `∑[∑[ogf((1+9x+x^2)/(1+x))]]` -/
def P4482006215136907346.Spec : Prop :=
  ∀ n, P4482006215136907346.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P6551573467512783428

`ogf((1+9x+x^2)/(1-x-x^2+x^3))`
-/

namespace A175885.P6551573467512783428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 1] [1, -1, -1, 1] n

end

end A175885.P6551573467512783428

namespace A175885

/-- `ogf((1+9x+x^2)/(1-x-x^2+x^3))` -/
def P6551573467512783428.Spec : Prop :=
  ∀ n, P6551573467512783428.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P1769272076480097996

`∑[gcd(2, n+1)^3]+n`
-/

namespace A175885.P1769272076480097996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175885.P1769272076480097996

namespace A175885

/-- `∑[gcd(2, n+1)^3]+n` -/
def P1769272076480097996.Spec : Prop :=
  ∀ n, (P1769272076480097996.a n : ℤ) = A175885 (n + 1)

end A175885

/-! ## A175885.P15342255637010775370

`lt[dr(n+2)+n, n+3]+n+1`
-/

namespace A175885.P15342255637010775370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 1)

end

end A175885.P15342255637010775370

namespace A175885

/-- `lt[dr(n+2)+n, n+3]+n+1` -/
def P15342255637010775370.Spec : Prop :=
  ∀ n, (P15342255637010775370.a n : ℤ) = A175885 (n + 1)

end A175885

/-! ## A175885.P13530133816173139510

`record[(n+2)/dr((2*n+1)²)]+n-1`
-/

namespace A175885.P13530133816173139510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 1 : ℚ)

end

end A175885.P13530133816173139510

namespace A175885

/-- `record[(n+2)/dr((2*n+1)²)]+n-1` -/
def P13530133816173139510.Spec : Prop :=
  ∀ n, P13530133816173139510.a n = (A175885 (n + 1) : ℚ)

end A175885

/-! ## A175885.P16653830616919648933

`Δ[A195043(n)]`
-/

namespace A175885.P16653830616919648933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175885.P16653830616919648933

namespace A175885

/-- `Δ[A195043(n)]` -/
def P16653830616919648933.Spec : Prop :=
  ∀ n, P16653830616919648933.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P9477880553980116219

`∑[A010699(n)]-1`
-/

namespace A175885.P9477880553980116219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A175885.P9477880553980116219

namespace A175885

/-- `∑[A010699(n)]-1` -/
def P9477880553980116219.Spec : Prop :=
  ∀ n, P9477880553980116219.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P2435188153010076735

`∑[A010689(n)]+n`
-/

namespace A175885.P2435188153010076735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175885.P2435188153010076735

namespace A175885

/-- `∑[A010689(n)]+n` -/
def P2435188153010076735.Spec : Prop :=
  ∀ n, P2435188153010076735.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P12235889019888911657

`A106389(n+1)-n`
-/

namespace A175885.P12235889019888911657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1) - (n : ℤ)

end

end A175885.P12235889019888911657

namespace A175885

/-- `A106389(n+1)-n` -/
def P12235889019888911657.Spec : Prop :=
  ∀ n, P12235889019888911657.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P17179384758056216448

`∑[A179102(a(n-1))]` with `a(0)=1`
-/

namespace A175885.P17179384758056216448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A179102 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175885.P17179384758056216448

namespace A175885

/-- `∑[A179102(a(n-1))]` -/
def P17179384758056216448.Spec : Prop :=
  ∀ n, P17179384758056216448.a n = A175885 (n + 1)

end A175885

/-! ## A175885.P4880253754360450697

`∑[A040019(n+1)]+n`
-/

namespace A175885.P4880253754360450697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175885.P4880253754360450697

namespace A175885

/-- `∑[A040019(n+1)]+n` -/
def P4880253754360450697.Spec : Prop :=
  ∀ n, P4880253754360450697.a n = A175885 (n + 1)

end A175885

/-!
# A175886: Numbers that are congruent to {1, 12} mod 13.

The programs for A175886, the canonical program `A175886.P13612719249372281489` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175886 has offset 1).

The definition of A175886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175886.P13612719249372281489

`a(n-2)+13` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175886

/-- `a(n-2)+13` -/
def P13612719249372281489.Spec : Prop :=
  ∀ n, (P13612719249372281489.a n : ℤ) = A175886 (n + 1)

theorem P13612719249372281489.correct : P13612719249372281489.Spec := by
  intro n
  simp only [A175886, Nat.add_sub_cancel]

end A175886

/-! ## A175886.P11847033697023461049

`(26*(n+1)+9*(-1)^(n+1)-13)/4`
-/

namespace A175886.P11847033697023461049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((26 * (n + 1) : ℤ) + 9 * (-1) ^ (n + 1) - 13 : ℚ) / 4

end

end A175886.P11847033697023461049

namespace A175886

/-- `(26*(n+1)+9*(-1)^(n+1)-13)/4` -/
def P11847033697023461049.Spec : Prop :=
  ∀ n, P11847033697023461049.a n = (A175886 (n + 1) : ℚ)

theorem P11847033697023461049.correct : P11847033697023461049.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175886, Nat.add_sub_cancel, A175886.P11847033697023461049.a, A175886.P13612719249372281489.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A175886, Nat.add_sub_cancel, A175886.P11847033697023461049.a, A175886.P13612719249372281489.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175886

/-! ## A175886.P14047675408471523491

`∑[10^(n%2)]+n`
-/

namespace A175886.P14047675408471523491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175886.P14047675408471523491

namespace A175886

/-- `∑[10^(n%2)]+n` -/
def P14047675408471523491.Spec : Prop :=
  ∀ n, (P14047675408471523491.a n : ℤ) = A175886 (n + 1)

end A175886

/-! ## A175886.P9083915058676955173

`∑[10^and(1, n)]+n`
-/

namespace A175886.P9083915058676955173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175886.P9083915058676955173

namespace A175886

/-- `∑[10^and(1, n)]+n` -/
def P9083915058676955173.Spec : Prop :=
  ∀ n, (P9083915058676955173.a n : ℤ) = A175886 (n + 1)

end A175886

/-! ## A175886.P6826695842536623195

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=11, a(2)=2`
-/

namespace A175886.P6826695842536623195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175886.P6826695842536623195

namespace A175886

/-- `∑[abs(a(n-2))]` -/
def P6826695842536623195.Spec : Prop :=
  ∀ n, (P6826695842536623195.a n : ℤ) = A175886 (n + 1)

end A175886

/-! ## A175886.P1669994554679851199

`∑[13-a(n-1)]` with `a(0)=1, a(1)=11`
-/

namespace A175886.P1669994554679851199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175886.P1669994554679851199

namespace A175886

/-- `∑[13-a(n-1)]` -/
def P1669994554679851199.Spec : Prop :=
  ∀ n, P1669994554679851199.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P9419830883633978504

`13*n-a(n-1)` with `a(0)=1`
-/

namespace A175886.P9419830883633978504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (13 * n : ℤ) - a (n - 1)

end

end A175886.P9419830883633978504

namespace A175886

/-- `13*n-a(n-1)` -/
def P9419830883633978504.Spec : Prop :=
  ∀ n, P9419830883633978504.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P9509329353363267053

`∑[gcd(10, (n+1)%2)]+n`
-/

namespace A175886.P9509329353363267053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175886.P9509329353363267053

namespace A175886

/-- `∑[gcd(10, (n+1)%2)]+n` -/
def P9509329353363267053.Spec : Prop :=
  ∀ n, (P9509329353363267053.a n : ℤ) = A175886 (n + 1)

end A175886

/-! ## A175886.P8988527215554560250

`Δ[A195045(n)]`
-/

namespace A175886.P8988527215554560250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175886.P8988527215554560250

namespace A175886

/-- `Δ[A195045(n)]` -/
def P8988527215554560250.Spec : Prop :=
  ∀ n, P8988527215554560250.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P561740606873438573

`∑[and(11, A280193(n))]`
-/

namespace A175886.P561740606873438573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 11 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175886.P561740606873438573

namespace A175886

/-- `∑[and(11, A280193(n))]` -/
def P561740606873438573.Spec : Prop :=
  ∀ n, P561740606873438573.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P2221145662454002358

`∑[A010691(n)]+n`
-/

namespace A175886.P2221145662454002358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175886.P2221145662454002358

namespace A175886

/-- `∑[A010691(n)]+n` -/
def P2221145662454002358.Spec : Prop :=
  ∀ n, P2221145662454002358.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P2947231606035166161

`∑[A383063(a(n-1))]` with `a(0)=1`
-/

namespace A175886.P2947231606035166161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A383063 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175886.P2947231606035166161

namespace A175886

/-- `∑[A383063(a(n-1))]` -/
def P2947231606035166161.Spec : Prop :=
  ∀ n, P2947231606035166161.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P3332893135346500231

`∑[A040029(n+1)]+n`
-/

namespace A175886.P3332893135346500231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175886.P3332893135346500231

namespace A175886

/-- `∑[A040029(n+1)]+n` -/
def P3332893135346500231.Spec : Prop :=
  ∀ n, P3332893135346500231.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P8703336723205019303

`A168416(n+1)+2*n`
-/

namespace A175886.P8703336723205019303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168416 (n + 1) + (2 * n : ℤ)

end

end A175886.P8703336723205019303

namespace A175886

/-- `A168416(n+1)+2*n` -/
def P8703336723205019303.Spec : Prop :=
  ∀ n, P8703336723205019303.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P1893916900689630951

`A168419(n+1)+Δ[n²]`
-/

namespace A175886.P1893916900689630951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A175886.P1893916900689630951

namespace A175886

/-- `A168419(n+1)+Δ[n²]` -/
def P1893916900689630951.Spec : Prop :=
  ∀ n, P1893916900689630951.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P18056346768032235336

`floor(A113801(n+1)-n/2)`
-/

namespace A175886.P18056346768032235336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113801 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A175886.P18056346768032235336

namespace A175886

/-- `floor(A113801(n+1)-n/2)` -/
def P18056346768032235336.Spec : Prop :=
  ∀ n, P18056346768032235336.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P10511340673350533809

`A152832(n)+A016945(n)`
-/

namespace A175886.P10511340673350533809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 n + A016945 n

end

end A175886.P10511340673350533809

namespace A175886

/-- `A152832(n)+A016945(n)` -/
def P10511340673350533809.Spec : Prop :=
  ∀ n, P10511340673350533809.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P18379561593555136036

`A266327(n)+A112653(n)`
-/

namespace A175886.P18379561593555136036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + A112653 n

end

end A175886.P18379561593555136036

namespace A175886

/-- `A266327(n)+A112653(n)` -/
def P18379561593555136036.Spec : Prop :=
  ∀ n, P18379561593555136036.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P7473114552378086178

`Δ[A195143(n)+A002620(n)]`
-/

namespace A175886.P7473114552378086178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175886.P7473114552378086178

namespace A175886

/-- `Δ[A195143(n)+A002620(n)]` -/
def P7473114552378086178.Spec : Prop :=
  ∀ n, P7473114552378086178.a n = A175886 (n + 1)

end A175886

/-! ## A175886.P18104991250536449435

`A106389(n+1)+A000035(n)`
-/

namespace A175886.P18104991250536449435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1) + A000035 n

end

end A175886.P18104991250536449435

namespace A175886

/-- `A106389(n+1)+A000035(n)` -/
def P18104991250536449435.Spec : Prop :=
  ∀ n, P18104991250536449435.a n = A175886 (n + 1)

end A175886

/-!
# A175887: Numbers that are congruent to {1, 14} mod 15.

The programs for A175887, the canonical program `A175887.P11857836302056305642` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175887 has offset 1).

The definition of A175887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175887.P11857836302056305642

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=14, a(2)=16`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175887

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11857836302056305642.Spec : Prop :=
  ∀ n, P11857836302056305642.a n = A175887 (n + 1)

theorem P11857836302056305642.correct : P11857836302056305642.Spec := by
  intro n
  simp only [A175887, Nat.add_sub_cancel]

end A175887

/-! ## A175887.P430721768378511582

`(30*(n+1)+11*(-1)^(n+1)-15)/4`
-/

namespace A175887.P430721768378511582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 * (n + 1) : ℤ) + 11 * (-1) ^ (n + 1) - 15 : ℚ) / 4

end

end A175887.P430721768378511582

namespace A175887

/-- `(30*(n+1)+11*(-1)^(n+1)-15)/4` -/
def P430721768378511582.Spec : Prop :=
  ∀ n, P430721768378511582.a n = (A175887 (n + 1) : ℚ)

theorem P430721768378511582.correct : P430721768378511582.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A175887, Nat.add_sub_cancel, A175887.P430721768378511582.a, A175887.P11857836302056305642.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A175887, Nat.add_sub_cancel, A175887.P430721768378511582.a, A175887.P11857836302056305642.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175887

/-! ## A175887.P3749728726301052059

`A047209(A047225(n+2))`
-/

namespace A175887.P3749728726301052059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A047225 (n + 2)).toNat

end

end A175887.P3749728726301052059

namespace A175887

/-- `A047209(A047225(n+2))` -/
def P3749728726301052059.Spec : Prop :=
  ∀ n, P3749728726301052059.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P9680934174312012634

`a(n-2)+15` with `a(0)=1, a(1)=14`
-/

namespace A175887.P9680934174312012634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  a (n - 2) + 15

end

end A175887.P9680934174312012634

namespace A175887

/-- `a(n-2)+15` -/
def P9680934174312012634.Spec : Prop :=
  ∀ n, (P9680934174312012634.a n : ℤ) = A175887 (n + 1)

end A175887

/-! ## A175887.P425678382846158787

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=13, a(2)=2`
-/

namespace A175887.P425678382846158787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175887.P425678382846158787

namespace A175887

/-- `∑[abs(a(n-2))]` -/
def P425678382846158787.Spec : Prop :=
  ∀ n, (P425678382846158787.a n : ℤ) = A175887 (n + 1)

end A175887

/-! ## A175887.P7184011312990822077

`∑[15-a(n-1)]` with `a(0)=1, a(1)=13`
-/

namespace A175887.P7184011312990822077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  15 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175887.P7184011312990822077

namespace A175887

/-- `∑[15-a(n-1)]` -/
def P7184011312990822077.Spec : Prop :=
  ∀ n, P7184011312990822077.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P11091565078310879712

`15*n-a(n-1)` with `a(0)=1`
-/

namespace A175887.P11091565078310879712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (15 * n : ℤ) - a (n - 1)

end

end A175887.P11091565078310879712

namespace A175887

/-- `15*n-a(n-1)` -/
def P11091565078310879712.Spec : Prop :=
  ∀ n, P11091565078310879712.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P915948965027454750

`∑[11*n%2+1]+n`
-/

namespace A175887.P915948965027454750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175887.P915948965027454750

namespace A175887

/-- `∑[11*n%2+1]+n` -/
def P915948965027454750.Spec : Prop :=
  ∀ n, (P915948965027454750.a n : ℤ) = A175887 (n + 1)

end A175887

/-! ## A175887.P9246706808773569200

`∑[∑[ogf((1+8x-4x^2)/(1+x))]]+5*n`
-/

namespace A175887.P9246706808773569200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (5 * n : ℤ)

end

end A175887.P9246706808773569200

namespace A175887

/-- `∑[∑[ogf((1+8x-4x^2)/(1+x))]]+5*n` -/
def P9246706808773569200.Spec : Prop :=
  ∀ n, P9246706808773569200.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P10971125187567509167

`∑[A040041(n+1)]+n`
-/

namespace A175887.P10971125187567509167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A175887.P10971125187567509167

namespace A175887

/-- `∑[A040041(n+1)]+n` -/
def P10971125187567509167.Spec : Prop :=
  ∀ n, P10971125187567509167.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P3778494658742164934

`A168463(n+1)+2*(n-2)`
-/

namespace A175887.P3778494658742164934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168463 (n + 1) + 2 * ((n : ℤ) - 2)

end

end A175887.P3778494658742164934

namespace A175887

/-- `A168463(n+1)+2*(n-2)` -/
def P3778494658742164934.Spec : Prop :=
  ∀ n, P3778494658742164934.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P16795440633297608890

`∑[Δ[11*A008619(n)]+2]-1`
-/

namespace A175887.P16795440633297608890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A175887.P16795440633297608890

namespace A175887

/-- `∑[Δ[11*A008619(n)]+2]-1` -/
def P16795440633297608890.Spec : Prop :=
  ∀ n, P16795440633297608890.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P9427628920035317532

`A113801(n+1)+floor((n+1)/2)`
-/

namespace A175887.P9427628920035317532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1) + ⌊(n + 1 : ℚ) / 2⌋

end

end A175887.P9427628920035317532

namespace A175887

/-- `A113801(n+1)+floor((n+1)/2)` -/
def P9427628920035317532.Spec : Prop :=
  ∀ n, P9427628920035317532.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P13947032480962434250

`A004771(n)-A137235(n)`
-/

namespace A175887.P13947032480962434250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A137235 n

end

end A175887.P13947032480962434250

namespace A175887

/-- `A004771(n)-A137235(n)` -/
def P13947032480962434250.Spec : Prop :=
  ∀ n, P13947032480962434250.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P8679098258473930996

`A131877(n)-A112653(n)`
-/

namespace A175887.P8679098258473930996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - A112653 n

end

end A175887.P8679098258473930996

namespace A175887

/-- `A131877(n)-A112653(n)` -/
def P8679098258473930996.Spec : Prop :=
  ∀ n, P8679098258473930996.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P14842602558988480442

`∑[A040653(n)%A040600(n)]`
-/

namespace A175887.P14842602558988480442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040653 n) (A040600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175887.P14842602558988480442

namespace A175887

/-- `∑[A040653(n)%A040600(n)]` -/
def P14842602558988480442.Spec : Prop :=
  ∀ n, P14842602558988480442.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P15970072589195580665

`A087446(n+1)+A010679(n)`
-/

namespace A175887.P15970072589195580665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087446 (n + 1) + A010679 n

end

end A175887.P15970072589195580665

namespace A175887

/-- `A087446(n+1)+A010679(n)` -/
def P15970072589195580665.Spec : Prop :=
  ∀ n, P15970072589195580665.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P14541835672477652082

`A146510(n+1)+A010681(n)`
-/

namespace A175887.P14541835672477652082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1) + A010681 n

end

end A175887.P14541835672477652082

namespace A175887

/-- `A146510(n+1)+A010681(n)` -/
def P14541835672477652082.Spec : Prop :=
  ∀ n, P14541835672477652082.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P3773307247859696597

`A166520(n+1)+A008587(n)`
-/

namespace A175887.P3773307247859696597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) + A008587 n

end

end A175887.P3773307247859696597

namespace A175887

/-- `A166520(n+1)+A008587(n)` -/
def P3773307247859696597.Spec : Prop :=
  ∀ n, P3773307247859696597.a n = A175887 (n + 1)

end A175887

/-! ## A175887.P11383454724089640681

`A168197(n+1)+A016921(n)`
-/

namespace A175887.P11383454724089640681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168197 (n + 1) + A016921 n

end

end A175887.P11383454724089640681

namespace A175887

/-- `A168197(n+1)+A016921(n)` -/
def P11383454724089640681.Spec : Prop :=
  ∀ n, P11383454724089640681.a n = A175887 (n + 1)

end A175887

/-!
# A175888: Numbers n with property that sigma(n) < min(sigma(n-2),sigma(n-1),sigma(n+1),sigma(n+2)).

The programs for A175888, there is no canonical definition to state claims against.
-/

/-! ## A175888.P4343149489340295321

`A175127(3*(n+1))+A053669(A175127(3*(n+1)))`
-/

namespace A175888.P4343149489340295321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175127 (3 * (n + 1)) + A053669 (A175127 (3 * (n + 1))).toNat

end

end A175888.P4343149489340295321

/-! ## A175888.P4297503996412263548

`A134871(A016789(2*n+3))%A229308(2*n+3)`
-/

namespace A175888.P4297503996412263548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134871 (A016789 (2 * n + 3)).toNat) (A229308 (2 * n + 3))

end

end A175888.P4297503996412263548

/-! ## A175888.P14755970413300289566

`or(1, A113636(A138966(3*n+5)))`
-/

namespace A175888.P14755970413300289566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113636 (A138966 (3 * n + 5)).toNat)

end

end A175888.P14755970413300289566

/-! ## A175888.P1273680425345293970

`∩[A177713(n+1)+2, A180934(n+1)]`
-/

namespace A175888.P1273680425345293970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175888.P1273680425345293970

/-! ## A175888.P608883407719842528

`p?[A093510(n+3)]`
-/

namespace A175888.P608883407719842528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093510 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175888.P608883407719842528

/-!
# A175891: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k)|0<k<=4} which never go above the line y=x.

The programs for A175891, there is no canonical definition to state claims against.
-/

/-! ## A175891.P8928017248361131514

`A103221(A094432(n+1)+n)`
-/

namespace A175891.P8928017248361131514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A094432 (n + 1) + (n : ℤ)).toNat

end

end A175891.P8928017248361131514

/-! ## A175891.P18379830340181207409

`A008615(A094432(n+1)+n+2)`
-/

namespace A175891.P18379830340181207409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A094432 (n + 1) + (n + 2 : ℤ)).toNat

end

end A175891.P18379830340181207409

/-!
# A175892: Row a(0) = A000027; row a(n) for n > 0 is the sequence of natural numbers up to each k in row a(n-1).

The programs for A175892, there is no canonical definition to state claims against.
-/

/-! ## A175892.P14464133014212932810

`val(A066884(n+1), 2)+1`
-/

namespace A175892.P14464133014212932810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066884 (n + 1)).toNat 2 + 1

end

end A175892.P14464133014212932810

/-! ## A175892.P11160892141273059584

`val(A067576(A038722(n+1)), 2)+1`
-/

namespace A175892.P11160892141273059584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067576 (A038722 (n + 1)).toNat).toNat 2 + 1

end

end A175892.P11160892141273059584

/-! ## A175892.P4082015743694101723

`val(A067576(A061579(n)+1), 2)+1`
-/

namespace A175892.P4082015743694101723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067576 (A061579 n + 1).toNat).toNat 2 + 1

end

end A175892.P4082015743694101723

/-! ## A175892.P15647810025177806015

`val(A067576(A114327(n)+1+n), 2)+1`
-/

namespace A175892.P15647810025177806015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067576 (A114327 n + 1 + (n : ℤ)).toNat).toNat 2 + 1

end

end A175892.P15647810025177806015

/-! ## A175892.P13987956236696338888

`A000005(gcd(A000079(n), A066884(n+1)))`
-/

namespace A175892.P13987956236696338888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000079 n) (A066884 (n + 1)))

end

end A175892.P13987956236696338888

/-! ## A175892.P17023695696450545137

`A000005(and(-A066884(n+1), A066884(n+1)))`
-/

namespace A175892.P17023695696450545137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-A066884 (n + 1)) (A066884 (n + 1))).toNat

end

end A175892.P17023695696450545137

/-! ## A175892.P12044353300070115512

`∑{d}[A066884(n+1), A209229(#)]`
-/

namespace A175892.P12044353300070115512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A175892.P12044353300070115512

/-! ## A175892.P498988277435903082

`∑{d}[A066884(n+1), A135523(A000265(#))]`
-/

namespace A175892.P498988277435903082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A135523 (A000265 d).toNat

end

end A175892.P498988277435903082

/-! ## A175892.P14946822881057005985

`A000005(A066884(n+1)/A000265(A066884(n+1)))`
-/

namespace A175892.P14946822881057005985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A066884 (n + 1) : ℚ) / (A000265 (A066884 (n + 1)).toNat : ℚ))).toNat

end

end A175892.P14946822881057005985

/-! ## A175892.P1188584135060041267

`A000005(A006519(A066884(n+1)%A175746(n+1)))`
-/

namespace A175892.P1188584135060041267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (Int.tmod (A066884 (n + 1)) (A175746 (n + 1))).toNat).toNat

end

end A175892.P1188584135060041267

/-!
# A175893: Numbers m such that 2*prime(m)+prime(m+1) is prime.

The programs for A175893, the canonical program `A175893.P14973154944427096017` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175893 has offset 1).

The definition of A175893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175893.P8523623629422235471

`A000720(A173971(n+1))`
-/

namespace A175893.P8523623629422235471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A173971 (n + 1)).toNat

end

end A175893.P8523623629422235471

namespace A175893

/-- `A000720(A173971(n+1))` -/
def P8523623629422235471.Spec : Prop :=
  ∀ n, P8523623629422235471.a n = A175893 (n + 1)

end A175893

/-! ## A175893.P12860447288887749382

`eq[1, A114266(n+1)]+1`
-/

namespace A175893.P12860447288887749382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175893.P12860447288887749382

namespace A175893

/-- `eq[1, A114266(n+1)]+1` -/
def P12860447288887749382.Spec : Prop :=
  ∀ n, (P12860447288887749382.a n : ℤ) = A175893 (n + 1)

end A175893

/-! ## A175893.P15011804650409820899

`eq[1, A114231(n+2)]+1`
-/

namespace A175893.P15011804650409820899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114231 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175893.P15011804650409820899

namespace A175893

/-- `eq[1, A114231(n+2)]+1` -/
def P15011804650409820899.Spec : Prop :=
  ∀ n, (P15011804650409820899.a n : ℤ) = A175893 (n + 1)

end A175893

/-! ## A175893.P8780061724998357529

`eq[A000040(n+1), A114230(n+2)]+1`
-/

namespace A175893.P8780061724998357529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114230 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175893.P8780061724998357529

namespace A175893

/-- `eq[A000040(n+1), A114230(n+2)]+1` -/
def P8780061724998357529.Spec : Prop :=
  ∀ n, (P8780061724998357529.a n : ℤ) = A175893 (n + 1)

end A175893

/-! ## A175893.P10452977791854458417

`A061395(2*A173971(n+1))`
-/

namespace A175893.P10452977791854458417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A173971 (n + 1)).toNat

end

end A175893.P10452977791854458417

namespace A175893

/-- `A061395(2*A173971(n+1))` -/
def P10452977791854458417.Spec : Prop :=
  ∀ n, P10452977791854458417.a n = A175893 (n + 1)

end A175893

/-! ## A175893.P14973154944427096017

`lt[A000005(A011974(n+2)+A000040(n+1)), 3]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175893

/-- `lt[A000005(A011974(n+2)+A000040(n+1)), 3]+1` -/
def P14973154944427096017.Spec : Prop :=
  ∀ n, (P14973154944427096017.a n : ℤ) = A175893 (n + 1)

theorem P14973154944427096017.correct : P14973154944427096017.Spec := by
  intro n
  simp only [A175893, Nat.add_sub_cancel]

end A175893

/-! ## A175893.P11487941539475382847

`A302039(2*A173971(n+1))-1`
-/

namespace A175893.P11487941539475382847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A173971 (n + 1)).toNat - 1

end

end A175893.P11487941539475382847

namespace A175893

/-- `A302039(2*A173971(n+1))-1` -/
def P11487941539475382847.Spec : Prop :=
  ∀ n, P11487941539475382847.a n = A175893 (n + 1)

end A175893

/-! ## A175893.P6077585342582350050

`lt[A114231(n+2), A020639((n+2)*(n+1))]+1`
-/

namespace A175893.P6077585342582350050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114231 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A175893.P6077585342582350050

namespace A175893

/-- `lt[A114231(n+2), A020639((n+2)*(n+1))]+1` -/
def P6077585342582350050.Spec : Prop :=
  ∀ n, (P6077585342582350050.a n : ℤ) = A175893 (n + 1)

end A175893

/-!
# A175895: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(1,1)|0<k<=2} which never go above the line y=x.

The programs for A175895, there is no canonical definition to state claims against.
-/

/-! ## A175895.P17517029732605576145

`A034887(A182053(2*n+1)+A011782(n))`
-/

namespace A175895.P17517029732605576145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A182053 (2 * n + 1) + A011782 n).toNat

end

end A175895.P17517029732605576145

/-!
# A175896: Number of lattice paths from (0,0) to (n,n) using steps S={(k,0),(0,k),(1,1)|0<k<=3} which never go above the line y-x.

The programs for A175896, there is no canonical definition to state claims against.
-/

/-! ## A175896.P9074393278785046304

`A180119(n)+A113981(A271469(n))`
-/

namespace A175896.P9074393278785046304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + A113981 (A271469 n).toNat

end

end A175896.P9074393278785046304

/-!
# A175898: Expansion of (1+3*x+9*x^2+9*x^3+9*x^4+3*x^5+x^6) /( (1+x)^2 * (1-x)^5 ).

The programs for A175898, the canonical program `A175898.P1673177963965982875` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175898 has offset 0).

The definition of A175898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+9x^2+9x^3+9x^4+3x^5+x^6)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` (program `A175898.P1673177963965982875`, by `A175898.P1673177963965982875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175898.P1673177963965982875

`ogf((1+3x+9x^2+9x^3+9x^4+3x^5+x^6)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175898

/-- `ogf((1+3x+9x^2+9x^3+9x^4+3x^5+x^6)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` -/
def P1673177963965982875.Spec : Prop :=
  ∀ n, P1673177963965982875.a n = A175898 n

theorem P1673177963965982875.correct : P1673177963965982875.Spec := by
  intro n
  simp only [A175898]

end A175898

/-! ## A175898.P12255312540225984827

`∪[A181342(n+1), A181343(n+1)]`
-/

namespace A175898.P12255312540225984827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175898.P12255312540225984827

namespace A175898

/-- `∪[A181342(n+1), A181343(n+1)]` -/
def P12255312540225984827.Spec : Prop :=
  ∀ n, (P12255312540225984827.a n : ℤ) = A175898 n

end A175898

/-! ## A175898.P7834922402366902769

`∪[A181342(n+1), A181342(n+2)-A008383(n+1)]`
-/

namespace A175898.P7834922402366902769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181342 (n + 2) - A008383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175898.P7834922402366902769

namespace A175898

/-- `∪[A181342(n+1), A181342(n+2)-A008383(n+1)]` -/
def P7834922402366902769.Spec : Prop :=
  ∀ n, (P7834922402366902769.a n : ℤ) = A175898 n

end A175898

/-! ## A175898.P13882128272574791224

`∑[A358632(n)]`
-/

namespace A175898.P13882128272574791224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175898.P13882128272574791224

namespace A175898

/-- `∑[A358632(n)]` -/
def P13882128272574791224.Spec : Prop :=
  ∀ n, P13882128272574791224.a n = A175898 n

end A175898

/-!
# A175899: a(n) = a(n-2) + a(n-3) + 2*a(n-4), with a(1) = 0, a(2) = 2, a(3) = 3, a(4) = 10.

The programs for A175899, the canonical program `A175899.P15739094207379238981` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175899 has offset 1).

The definition of A175899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+2*a(n-4)` (program `A175899.P15739094207379238981`, by `A175899.P15739094207379238981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175899.P15739094207379238981

`a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175899

/-- `a(n-2)+a(n-3)+2*a(n-4)` -/
def P15739094207379238981.Spec : Prop :=
  ∀ n, (P15739094207379238981.a n : ℤ) = A175899 (n + 1)

theorem P15739094207379238981.correct : P15739094207379238981.Spec := by
  intro n
  simp only [A175899, Nat.add_sub_cancel]

end A175899

