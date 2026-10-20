import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
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

/-!
# A242206: Number of length n binary words which contain 00 and 01 and 10 and 11 as (possibly overlapping) contiguous subsequences.

The programs for A242206, the canonical program `A242206.P15295837578510900863` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242206 has offset 5).

The definition of A242206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242206.P15295837578510900863

`∑[A167821(n+4)-2]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A242206

/-- `∑[A167821(n+4)-2]` -/
def P15295837578510900863.Spec : Prop :=
  ∀ n, P15295837578510900863.a n = A242206 (n + 5)

theorem P15295837578510900863.correct : P15295837578510900863.Spec := by
  intro n
  simp only [A242206, Nat.add_sub_cancel]

end A242206

/-! ## A242206.P8611282206827890055

`∑[∑[2*A027934(n+2)]]`
-/

namespace A242206.P8611282206827890055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027934 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P8611282206827890055

namespace A242206

/-- `∑[∑[2*A027934(n+2)]]` -/
def P8611282206827890055.Spec : Prop :=
  ∀ n, P8611282206827890055.a n = A242206 (n + 5)

end A242206

/-! ## A242206.P13075961382592462986

`∑[∑[A074878(n+2)+2^(n+1)]]`
-/

namespace A242206.P13075961382592462986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 2) + (2 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P13075961382592462986

namespace A242206

/-- `∑[∑[A074878(n+2)+2^(n+1)]]` -/
def P13075961382592462986.Spec : Prop :=
  ∀ n, P13075961382592462986.a n = A242206 (n + 5)

end A242206

/-! ## A242206.P3365120174133149950

`∑[A008466(n+4)-A018910(n)]`
-/

namespace A242206.P3365120174133149950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 4) - A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P3365120174133149950

namespace A242206

/-- `∑[A008466(n+4)-A018910(n)]` -/
def P3365120174133149950.Spec : Prop :=
  ∀ n, P3365120174133149950.a n = A242206 (n + 5)

end A242206

/-! ## A242206.P1729214359364409296

`∑[∑[A027973(n+1)+A000045(n)]]`
-/

namespace A242206.P1729214359364409296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 (n + 1) + A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P1729214359364409296

namespace A242206

/-- `∑[∑[A027973(n+1)+A000045(n)]]` -/
def P1729214359364409296.Spec : Prop :=
  ∀ n, P1729214359364409296.a n = A242206 (n + 5)

end A242206

/-! ## A242206.P7136286073262971286

`∑[A211327(n+2)-A211324(n+2)]`
-/

namespace A242206.P7136286073262971286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211327 (n + 2) - A211324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P7136286073262971286

namespace A242206

/-- `∑[A211327(n+2)-A211324(n+2)]` -/
def P7136286073262971286.Spec : Prop :=
  ∀ n, P7136286073262971286.a n = A242206 (n + 5)

end A242206

/-!
# A242209: Semiprimes sp = p^2 + q^2 + r^2 where p, q and r are consecutive primes.

The programs for A242209, there is no canonical definition to state claims against.
-/

/-! ## A242209.P2875211690644633887

`filter[A133529(n+1), A064911(#)]`
-/

namespace A242209.P2875211690644633887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242209.P2875211690644633887

/-! ## A242209.P17387263974867571744

`filter[A133529(n+1), A280710(#)]`
-/

namespace A242209.P17387263974867571744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A242209.P17387263974867571744

/-! ## A242209.P15867352364336440527

`filter[A133529(n+1), A353475(#)]`
-/

namespace A242209.P15867352364336440527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A242209.P15867352364336440527

/-!
# A242210: Number of primes p < prime(n) such that the Bernoulli number B_{p-1} is a primitive root modulo prime(n).

The programs for A242210, there is no canonical definition to state claims against.
-/

/-! ## A242210.P11197832640258462653

`A253146(A104080(n))%A122444(n+1)`
-/

namespace A242210.P11197832640258462653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253146 (A104080 n).toNat) (A122444 (n + 1))

end

end A242210.P11197832640258462653

/-! ## A242210.P2125080460099458767

`A339896(A339896(2*n+1)+A048495(n))`
-/

namespace A242210.P2125080460099458767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (A339896 (2 * n + 1) + A048495 n).toNat

end

end A242210.P2125080460099458767

/-! ## A242210.P15682152399131612754

`∑{e}[A000288(2*n), A253587(#)]`
-/

namespace A242210.P15682152399131612754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253587 (Nat.factorization (f1 n).natAbs p)

end

end A242210.P15682152399131612754

/-! ## A242210.P19551411403772026

`A295664(A006951(n)*A108558(n))`
-/

namespace A242210.P19551411403772026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A006951 n * A108558 n).toNat

end

end A242210.P19551411403772026

/-! ## A242210.P12993621299823319044

`A055460(gcd(A007954(3*n+4), A154657(n)))`
-/

namespace A242210.P12993621299823319044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (Int.gcd (A007954 (3 * n + 4)) (A154657 n))

end

end A242210.P12993621299823319044

/-!
# A242211: a(1) = 4, a(n) = A222208(a(n-1)).

The programs for A242211, there is no canonical definition to state claims against.
-/

/-! ## A242211.P192815188789947060

`A222208(a(n-1))` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242211.P192815188789947060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A222208 (a (n - 1)).toNat

end

end A242211.P192815188789947060

/-! ## A242211.P12905244329592223770

`a(n-2)²` with `a(0)=4, a(1)=6, a(2)=12`
-/

namespace A242211.P12905244329592223770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 12] fun n a =>
  a (n - 2) ^ 2

end

end A242211.P12905244329592223770

/-! ## A242211.P16554904694255594431

`a(n-2)^2` with `a(0)=4, a(1)=6, a(2)=12`
-/

namespace A242211.P16554904694255594431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 12] fun n a =>
  a (n - 2) ^ 2

end

end A242211.P16554904694255594431

/-! ## A242211.P15766451136859020056

`a(n-2)*a(n-2)` with `a(0)=4, a(1)=6, a(2)=12`
-/

namespace A242211.P15766451136859020056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 12] fun n a =>
  a (n - 2) * a (n - 2)

end

end A242211.P15766451136859020056

/-!
# A242212: a(1) = 4. a(n) = A222209(a(n-1)).

The programs for A242212, there is no canonical definition to state claims against.
-/

/-! ## A242212.P7037476088671053996

`A222209(a(n-1))` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242212.P7037476088671053996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A222209 (a (n - 1)).toNat

end

end A242212.P7037476088671053996

/-! ## A242212.P1613473856827948924

`A383712(A358837(n)+4)`
-/

namespace A242212.P1613473856827948924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383712 (A358837 n + 4).toNat

end

end A242212.P1613473856827948924

/-! ## A242212.P3196395382261288208

`A326536(A152046(n)+A032956(n+3))`
-/

namespace A242212.P3196395382261288208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (A152046 n + A032956 (n + 3)).toNat

end

end A242212.P3196395382261288208

/-! ## A242212.P1134792890705194654

`A326645(A303430(n)+A297770(n+5))`
-/

namespace A242212.P1134792890705194654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (A303430 n + A297770 (n + 5)).toNat

end

end A242212.P1134792890705194654

/-!
# A242214: Numbers n not divisible by 10 such that n^3 contains at least one 0.

The programs for A242214, the canonical program `A242214.P18435104598137080333` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242214 has offset 1).

The definition of A242214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242214.P16083345103818847511

`eq[cos(A053668(n)), A168184(n)]`
-/

namespace A242214.P16083345103818847511
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A053668 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A242214.P16083345103818847511

namespace A242214

/-- `eq[cos(A053668(n)), A168184(n)]` -/
def P16083345103818847511.Spec : Prop :=
  ∀ n, (P16083345103818847511.a n : ℤ) = A242214 (n + 1)

end A242214

/-! ## A242214.P5196120114791310964

`eq[cos(A333206(n)), A168184(n)]`
-/

namespace A242214.P5196120114791310964
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A333206 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A242214.P5196120114791310964

namespace A242214

/-- `eq[cos(A333206(n)), A168184(n)]` -/
def P5196120114791310964.Spec : Prop :=
  ∀ n, (P5196120114791310964.a n : ℤ) = A242214 (n + 1)

end A242214

/-! ## A242214.P18435104598137080333

`filter[A291639(n+1), A168184(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242214

/-- `filter[A291639(n+1), A168184(#)]` -/
def P18435104598137080333.Spec : Prop :=
  ∀ n, P18435104598137080333.a n = A242214 (n + 1)

theorem P18435104598137080333.correct : P18435104598137080333.Spec := by
  intro n
  simp only [A242214, Nat.add_sub_cancel]

end A242214

/-! ## A242214.P4296939179263078150

`∩[A067251(n+1), A291639(n+1)]`
-/

namespace A242214.P4296939179263078150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242214.P4296939179263078150

namespace A242214

/-- `∩[A067251(n+1), A291639(n+1)]` -/
def P4296939179263078150.Spec : Prop :=
  ∀ n, (P4296939179263078150.a n : ℤ) = A242214 (n + 1)

end A242214

/-! ## A242214.P8053560869102975664

`∩[A291639(n+1), A342851(n+1)]`
-/

namespace A242214.P8053560869102975664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242214.P8053560869102975664

namespace A242214

/-- `∩[A291639(n+1), A342851(n+1)]` -/
def P8053560869102975664.Spec : Prop :=
  ∀ n, (P8053560869102975664.a n : ℤ) = A242214 (n + 1)

end A242214

/-! ## A242214.P14712244254340173772

`eq[A000038(A063462(n)), A053668(n)]`
-/

namespace A242214.P14712244254340173772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A063462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242214.P14712244254340173772

namespace A242214

/-- `eq[A000038(A063462(n)), A053668(n)]` -/
def P14712244254340173772.Spec : Prop :=
  ∀ n, (P14712244254340173772.a n : ℤ) = A242214 (n + 1)

end A242214

/-!
# A242215: a(n) = 18*n + 5.

The programs for A242215, the canonical program `A242215.P1960096412807353825` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242215 has offset 0).

The definition of A242215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n+5` (program `A242215.P1960096412807353825`, by `A242215.P1960096412807353825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242215.P1960096412807353825

`18*n+5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242215

/-- `18*n+5` -/
def P1960096412807353825.Spec : Prop :=
  ∀ n, (P1960096412807353825.a n : ℤ) = A242215 n

theorem P1960096412807353825.correct : P1960096412807353825.Spec := by
  intro n
  simp only [A242215]

end A242215

/-!
# A242216: Number of partitions of n into Heegner numbers, cf. A003173.

The programs for A242216, there is no canonical definition to state claims against.
-/

/-! ## A242216.P6067318123550688428

`A202304(A000070(n)-A008810(n))`
-/

namespace A242216.P6067318123550688428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A000070 n - A008810 n).toNat

end

end A242216.P6067318123550688428

/-! ## A242216.P14962183804285522897

`A002024(∑[∑[A325535(n)]]+1)`
-/

namespace A242216.P14962183804285522897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A242216.P14962183804285522897

/-! ## A242216.P15009686143094022256

`A003056(∑[A032766(A058984(n))])`
-/

namespace A242216.P15009686143094022256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A058984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242216.P15009686143094022256

/-! ## A242216.P9296294304098795706

`A003056(A183088(A000007(n)+n))`
-/

namespace A242216.P9296294304098795706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A183088 (A000007 n + (n : ℤ)).toNat).toNat

end

end A242216.P9296294304098795706

/-! ## A242216.P757341447040657039

`A003056(A183088(n)+A003982(n))`
-/

namespace A242216.P757341447040657039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A183088 n + A003982 n).toNat

end

end A242216.P757341447040657039

/-!
# A242218: Semiprimes which are the arithmetic mean of three consecutive primes.

The programs for A242218, the canonical program `A242218.P592347260306296089` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242218 has offset 1).

The definition of A242218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242218.P592347260306296089

`filter[A075540(n+1), A354927(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A242218

/-- `filter[A075540(n+1), A354927(#)]` -/
def P592347260306296089.Spec : Prop :=
  ∀ n, P592347260306296089.a n = A242218 (n + 1)

theorem P592347260306296089.correct : P592347260306296089.Spec := by
  intro n
  simp only [A242218, Nat.add_sub_cancel]

end A242218

/-! ## A242218.P8407150649599071488

`filter[A075540(n+1), A359828(#)]`
-/

namespace A242218.P8407150649599071488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A242218.P8407150649599071488

namespace A242218

/-- `filter[A075540(n+1), A359828(#)]` -/
def P8407150649599071488.Spec : Prop :=
  ∀ n, P8407150649599071488.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P2051548358289159441

`filter[A345363(n+1), A354927(#)]`
-/

namespace A242218.P2051548358289159441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A242218.P2051548358289159441

namespace A242218

/-- `filter[A345363(n+1), A354927(#)]` -/
def P2051548358289159441.Spec : Prop :=
  ∀ n, P2051548358289159441.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P12993708054252360517

`filter[A345363(n+1), A359828(#)]`
-/

namespace A242218.P12993708054252360517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A242218.P12993708054252360517

namespace A242218

/-- `filter[A345363(n+1), A359828(#)]` -/
def P12993708054252360517.Spec : Prop :=
  ∀ n, P12993708054252360517.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P7555824167812969739

`filter[A345363(n+1), A374128(#)]`
-/

namespace A242218.P7555824167812969739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A242218.P7555824167812969739

namespace A242218

/-- `filter[A345363(n+1), A374128(#)]` -/
def P7555824167812969739.Spec : Prop :=
  ∀ n, P7555824167812969739.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P7844950685954551365

`∩[A001358(n+1), A075540(n+1)]`
-/

namespace A242218.P7844950685954551365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242218.P7844950685954551365

namespace A242218

/-- `∩[A001358(n+1), A075540(n+1)]` -/
def P7844950685954551365.Spec : Prop :=
  ∀ n, (P7844950685954551365.a n : ℤ) = A242218 (n + 1)

end A242218

/-! ## A242218.P4875296854512159932

`filter[A075540(n+1), A064911(#)]`
-/

namespace A242218.P4875296854512159932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242218.P4875296854512159932

namespace A242218

/-- `filter[A075540(n+1), A064911(#)]` -/
def P4875296854512159932.Spec : Prop :=
  ∀ n, P4875296854512159932.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P9387041648011487636

`filter[A075540(n+1), A280710(#)]`
-/

namespace A242218.P9387041648011487636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A242218.P9387041648011487636

namespace A242218

/-- `filter[A075540(n+1), A280710(#)]` -/
def P9387041648011487636.Spec : Prop :=
  ∀ n, P9387041648011487636.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P10090906743188734029

`filter[A345363(n+1), A064911(#)]`
-/

namespace A242218.P10090906743188734029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242218.P10090906743188734029

namespace A242218

/-- `filter[A345363(n+1), A064911(#)]` -/
def P10090906743188734029.Spec : Prop :=
  ∀ n, P10090906743188734029.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P16141547168128197042

`filter[A075540(n+1), A340370(#)]`
-/

namespace A242218.P16141547168128197042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A242218.P16141547168128197042

namespace A242218

/-- `filter[A075540(n+1), A340370(#)]` -/
def P16141547168128197042.Spec : Prop :=
  ∀ n, P16141547168128197042.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P11231195850254918302

`filter[A075540(n+1), A353480(#)]`
-/

namespace A242218.P11231195850254918302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A242218.P11231195850254918302

namespace A242218

/-- `filter[A075540(n+1), A353480(#)]` -/
def P11231195850254918302.Spec : Prop :=
  ∀ n, P11231195850254918302.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P7789189668710804070

`filter[A075540(n+1), A353481(#)]`
-/

namespace A242218.P7789189668710804070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A242218.P7789189668710804070

namespace A242218

/-- `filter[A075540(n+1), A353481(#)]` -/
def P7789189668710804070.Spec : Prop :=
  ∀ n, P7789189668710804070.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P1918361521659672475

`filter[A345363(n+1), A101040(#)]`
-/

namespace A242218.P1918361521659672475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A242218.P1918361521659672475

namespace A242218

/-- `filter[A345363(n+1), A101040(#)]` -/
def P1918361521659672475.Spec : Prop :=
  ∀ n, P1918361521659672475.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P472069741274771787

`filter[A345363(n+1), A280710(#)]`
-/

namespace A242218.P472069741274771787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A242218.P472069741274771787

namespace A242218

/-- `filter[A345363(n+1), A280710(#)]` -/
def P472069741274771787.Spec : Prop :=
  ∀ n, P472069741274771787.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P17389043137899673313

`filter[A345363(n+1), A340370(#)]`
-/

namespace A242218.P17389043137899673313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A242218.P17389043137899673313

namespace A242218

/-- `filter[A345363(n+1), A340370(#)]` -/
def P17389043137899673313.Spec : Prop :=
  ∀ n, P17389043137899673313.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P17530691700930109449

`filter[A345363(n+1), A353471(#)]`
-/

namespace A242218.P17530691700930109449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A242218.P17530691700930109449

namespace A242218

/-- `filter[A345363(n+1), A353471(#)]` -/
def P17530691700930109449.Spec : Prop :=
  ∀ n, P17530691700930109449.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P14735814104464802014

`filter[A345363(n+1), A353480(#)]`
-/

namespace A242218.P14735814104464802014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A242218.P14735814104464802014

namespace A242218

/-- `filter[A345363(n+1), A353480(#)]` -/
def P14735814104464802014.Spec : Prop :=
  ∀ n, P14735814104464802014.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P8908893177193445748

`filter[A345363(n+1), A353481(#)]`
-/

namespace A242218.P8908893177193445748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A242218.P8908893177193445748

namespace A242218

/-- `filter[A345363(n+1), A353481(#)]` -/
def P8908893177193445748.Spec : Prop :=
  ∀ n, P8908893177193445748.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P3341236394441740125

`filter[A345363(n+1), A353788(#)]`
-/

namespace A242218.P3341236394441740125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A242218.P3341236394441740125

namespace A242218

/-- `filter[A345363(n+1), A353788(#)]` -/
def P3341236394441740125.Spec : Prop :=
  ∀ n, P3341236394441740125.a n = A242218 (n + 1)

end A242218

/-! ## A242218.P491285430078472620

`filter[A345363(n+1), A353799(#)]`
-/

namespace A242218.P491285430078472620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A242218.P491285430078472620

namespace A242218

/-- `filter[A345363(n+1), A353799(#)]` -/
def P491285430078472620.Spec : Prop :=
  ∀ n, P491285430078472620.a n = A242218 (n + 1)

end A242218

/-!
# A242219: Smallest a(n) in Pythagorean triple (a, b, c) such that c(n) - b(n) = n.

The programs for A242219, the canonical program `A242219.P5269030228670689026` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242219 has offset 1).

The definition of A242219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242219.P13782826653967461340

`sqrt(A145109(n+1))+1+n`
-/

namespace A242219.P13782826653967461340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145109 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A242219.P13782826653967461340

namespace A242219

/-- `sqrt(A145109(n+1))+1+n` -/
def P13782826653967461340.Spec : Prop :=
  ∀ n, P13782826653967461340.a n = (A242219 (n + 1) : ℝ)

end A242219

/-! ## A242219.P13281566303122343469

`sqrt((n+1)*A379705(n+1))`
-/

namespace A242219.P13281566303122343469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A379705 (n + 1) : ℝ)

end

end A242219.P13281566303122343469

namespace A242219

/-- `sqrt((n+1)*A379705(n+1))` -/
def P13281566303122343469.Spec : Prop :=
  ∀ n, P13281566303122343469.a n = (A242219 (n + 1) : ℝ)

end A242219

/-! ## A242219.P5269030228670689026

`lcm(2, A038388(n+1))+1+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242219

/-- `lcm(2, A038388(n+1))+1+n` -/
def P5269030228670689026.Spec : Prop :=
  ∀ n, (P5269030228670689026.a n : ℤ) = A242219 (n + 1)

theorem P5269030228670689026.correct : P5269030228670689026.Spec := by
  intro n
  simp only [A242219, Nat.add_sub_cancel]

end A242219

/-! ## A242219.P299685946962361170

`A019554(2*(n+1))+1+n`
-/

namespace A242219.P299685946962361170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (2 * (n + 1)) + 1 + (n : ℤ)

end

end A242219.P299685946962361170

namespace A242219

/-- `A019554(2*(n+1))+1+n` -/
def P299685946962361170.Spec : Prop :=
  ∀ n, P299685946962361170.a n = A242219 (n + 1)

end A242219

/-! ## A242219.P4007440528873959542

`A254732(2*(n+1))-(n+1)`
-/

namespace A242219.P4007440528873959542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254732 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A242219.P4007440528873959542

namespace A242219

/-- `A254732(2*(n+1))-(n+1)` -/
def P4007440528873959542.Spec : Prop :=
  ∀ n, P4007440528873959542.a n = A242219 (n + 1)

end A242219

/-! ## A242219.P14202458606925940334

`A019554(n+2+n)+n+1`
-/

namespace A242219.P14202458606925940334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 2 + n) + (n + 1 : ℤ)

end

end A242219.P14202458606925940334

namespace A242219

/-- `A019554(n+2+n)+n+1` -/
def P14202458606925940334.Spec : Prop :=
  ∀ n, P14202458606925940334.a n = A242219 (n + 1)

end A242219

/-! ## A242219.P18131658304083998243

`sqrt(A053143(2*(n+1)))+n+1`
-/

namespace A242219.P18131658304083998243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (2 * (n + 1)) : ℝ) + (n + 1 : ℝ)

end

end A242219.P18131658304083998243

namespace A242219

/-- `sqrt(A053143(2*(n+1)))+n+1` -/
def P18131658304083998243.Spec : Prop :=
  ∀ n, P18131658304083998243.a n = (A242219 (n + 1) : ℝ)

end A242219

/-! ## A242219.P15549529400323990353

`n+1+2*(n+1)/A000188(2*(n+1))`
-/

namespace A242219.P15549529400323990353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (2 * (n + 1) : ℚ) / (A000188 (2 * (n + 1)) : ℚ)

end

end A242219.P15549529400323990353

namespace A242219

/-- `n+1+2*(n+1)/A000188(2*(n+1))` -/
def P15549529400323990353.Spec : Prop :=
  ∀ n, P15549529400323990353.a n = (A242219 (n + 1) : ℚ)

end A242219

/-! ## A242219.P2810380333283309206

`A004442(A019554(2*(n+1)))+n`
-/

namespace A242219.P2810380333283309206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A019554 (2 * (n + 1))).toNat + (n : ℤ)

end

end A242219.P2810380333283309206

namespace A242219

/-- `A004442(A019554(2*(n+1)))+n` -/
def P2810380333283309206.Spec : Prop :=
  ∀ n, P2810380333283309206.a n = A242219 (n + 1)

end A242219

/-! ## A242219.P7561805996220988685

`(A072905(2*(n+1))-A007913(2*(n+1)))/2`
-/

namespace A242219.P7561805996220988685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072905 (2 * (n + 1)) - A007913 (2 * (n + 1)) : ℚ) / 2

end

end A242219.P7561805996220988685

namespace A242219

/-- `(A072905(2*(n+1))-A007913(2*(n+1)))/2` -/
def P7561805996220988685.Spec : Prop :=
  ∀ n, P7561805996220988685.a n = (A242219 (n + 1) : ℚ)

end A242219

/-! ## A242219.P6304149023570743685

`A020725(A019554(2*(n+1))+n)`
-/

namespace A242219.P6304149023570743685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A019554 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A242219.P6304149023570743685

namespace A242219

/-- `A020725(A019554(2*(n+1))+n)` -/
def P6304149023570743685.Spec : Prop :=
  ∀ n, P6304149023570743685.a n = A242219 (n + 1)

end A242219

/-! ## A242219.P3502447166977734764

`A065475(A019554(2*(n+1))+n)`
-/

namespace A242219.P3502447166977734764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A019554 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A242219.P3502447166977734764

namespace A242219

/-- `A065475(A019554(2*(n+1))+n)` -/
def P3502447166977734764.Spec : Prop :=
  ∀ n, P3502447166977734764.a n = A242219 (n + 1)

end A242219

/-!
# A242221: Numbers n such that n - n^2/m^2 and 2n - n/m are not prime for all m.

The programs for A242221, there is no canonical definition to state claims against.
-/

/-! ## A242221.P14886657507068255040

`∩[A166602(n+1)-A057428(n), A241884(n+1)]`
-/

namespace A242221.P14886657507068255040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1) - A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242221.P14886657507068255040

/-! ## A242221.P5335724508066554986

`∩[A138666(n+1), A241884(n+1)]`
-/

namespace A242221.P5335724508066554986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242221.P5335724508066554986

/-! ## A242221.P13019137356424165828

`eq[A049084(2*n+1), A237837(n+2)]+1`
-/

namespace A242221.P13019137356424165828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237837 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242221.P13019137356424165828

/-! ## A242221.P12511136861216570175

`eq[A061397(2*n+1), A237837(n+2)]+1`
-/

namespace A242221.P12511136861216570175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237837 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242221.P12511136861216570175

/-! ## A242221.P15416875164821685536

`eq[A166260(2*n+1), A237837(n+2)]+1`
-/

namespace A242221.P15416875164821685536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237837 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242221.P15416875164821685536

/-!
# A242223: Least prime p such that H(n) == 0 (mod p) but H(k) == 0 (mod p) for no 0 < k < n, or 1 if such a prime p does not exist, where H(n) denotes the n-th harmonic number sum_{k=1..n}1/k.

The programs for A242223, there is no canonical definition to state claims against.
-/

/-! ## A242223.P699380879348282533

`gcd(A030121(A264772(n)), A308971(n+1))`
-/

namespace A242223.P699380879348282533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030121 (A264772 n).toNat) (A308971 (n + 1))

end

end A242223.P699380879348282533

/-! ## A242223.P2190627740256358939

`A014963(C(A308971(n+1), A231813(n)))`
-/

namespace A242223.P2190627740256358939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A308971 (n + 1)).toNat (A231813 n).toNat)

end

end A242223.P2190627740256358939

/-! ## A242223.P6913634442581241178

`A308971(n+1)/A120263(A001008(n+1))`
-/

namespace A242223.P6913634442581241178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308971 (n + 1) : ℚ) / (A120263 (A001008 (n + 1)).toNat : ℚ)

end

end A242223.P6913634442581241178

/-! ## A242223.P9194473906639975820

`A308971(n+1)/A120263(A002547(n+1))`
-/

namespace A242223.P9194473906639975820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308971 (n + 1) : ℚ) / (A120263 (A002547 (n + 1)).toNat : ℚ)

end

end A242223.P9194473906639975820

/-! ## A242223.P6629923521782040572

`A308971(n+1)/A120263(A096617(n+1))`
-/

namespace A242223.P6629923521782040572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308971 (n + 1) : ℚ) / (A120263 (A096617 (n + 1)).toNat : ℚ)

end

end A242223.P6629923521782040572

/-!
# A242224: Triangular array T read by rows, T(n, k) = n*k*(gcd(n,k)+2)/gcd(n,k)^2.

The programs for A242224, the canonical program `A242224.P7022419707306435246` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242224 has offset 1).

The definition of A242224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242224.P7022419707306435246

`(A050873(n+1)+2)*A051537(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A242224

/-- `(A050873(n+1)+2)*A051537(n+1)` -/
def P7022419707306435246.Spec : Prop :=
  ∀ n, P7022419707306435246.a n = A242224 (n + 1)

theorem P7022419707306435246.correct : P7022419707306435246.Spec := by
  intro n
  simp only [A242224, Nat.add_sub_cancel]

end A242224

/-! ## A242224.P3699403962788780653

`A051173(n+1)+2*A051537(n+1)`
-/

namespace A242224.P3699403962788780653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1) + 2 * A051537 (n + 1)

end

end A242224.P3699403962788780653

namespace A242224

/-- `A051173(n+1)+2*A051537(n+1)` -/
def P3699403962788780653.Spec : Prop :=
  ∀ n, P3699403962788780653.a n = A242224 (n + 1)

end A242224

/-! ## A242224.P15488214184384741389

`A051173(n+1)+A005843(A051537(n+1))`
-/

namespace A242224.P15488214184384741389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1) + A005843 (A051537 (n + 1)).toNat

end

end A242224.P15488214184384741389

namespace A242224

/-- `A051173(n+1)+A005843(A051537(n+1))` -/
def P15488214184384741389.Spec : Prop :=
  ∀ n, P15488214184384741389.a n = A242224 (n + 1)

end A242224

/-! ## A242224.P14703475215272606828

`A009056(A050873(n+1))*A051537(n+1)`
-/

namespace A242224.P14703475215272606828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A050873 (n + 1)).toNat * A051537 (n + 1)

end

end A242224.P14703475215272606828

namespace A242224

/-- `A009056(A050873(n+1))*A051537(n+1)` -/
def P14703475215272606828.Spec : Prop :=
  ∀ n, P14703475215272606828.a n = A242224 (n + 1)

end A242224

/-! ## A242224.P6194522260919178763

`A290103(A087112(n+1))+2*A051537(n+1)`
-/

namespace A242224.P6194522260919178763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A087112 (n + 1)).toNat + 2 * A051537 (n + 1)

end

end A242224.P6194522260919178763

namespace A242224

/-- `A290103(A087112(n+1))+2*A051537(n+1)` -/
def P6194522260919178763.Spec : Prop :=
  ∀ n, P6194522260919178763.a n = A242224 (n + 1)

end A242224

/-! ## A242224.P2729671257024394925

`A290103(A087112(n+1))+A005843(A051537(n+1))`
-/

namespace A242224.P2729671257024394925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A087112 (n + 1)).toNat + A005843 (A051537 (n + 1)).toNat

end

end A242224.P2729671257024394925

namespace A242224

/-- `A290103(A087112(n+1))+A005843(A051537(n+1))` -/
def P2729671257024394925.Spec : Prop :=
  ∀ n, P2729671257024394925.a n = A242224 (n + 1)

end A242224

/-! ## A242224.P2028895444350733695

`(A093057(n+1)+3)*A051537(n+1)`
-/

namespace A242224.P2028895444350733695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093057 (n + 1) + 3) * A051537 (n + 1)

end

end A242224.P2028895444350733695

namespace A242224

/-- `(A093057(n+1)+3)*A051537(n+1)` -/
def P2028895444350733695.Spec : Prop :=
  ∀ n, P2028895444350733695.a n = A242224 (n + 1)

end A242224

/-!
# A242225: Write the coefficient of x^n/n! in the expansion of (x/(exp(x)-1))^(1/2) as f(n)/g(n); sequence gives g(n).

The programs for A242225, there is no canonical definition to state claims against.
-/

/-! ## A242225.P3915188765902881158

`A000302(n)*A365671(n)`
-/

namespace A242225.P3915188765902881158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A365671 n

end

end A242225.P3915188765902881158

/-! ## A242225.P16935399628970987808

`lcm(A365671(n), A370417(n))`
-/

namespace A242225.P16935399628970987808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A365671 n) (A370417 n)

end

end A242225.P16935399628970987808

/-! ## A242225.P17269073907784643357

`A370415(∑[n])`
-/

namespace A242225.P17269073907784643357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242225.P17269073907784643357

/-! ## A242225.P12898942757615477815

`lcm(n+1, A370415(A000217(n)))`
-/

namespace A242225.P12898942757615477815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A370415 (A000217 n).toNat)

end

end A242225.P12898942757615477815

/-! ## A242225.P5540291318301809921

`A370415(A000217(n))^A271838(n)`
-/

namespace A242225.P5540291318301809921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370415 (A000217 n).toNat : ℚ) ^ (A271838 n : ℤ)

end

end A242225.P5540291318301809921

/-!
# A242226: Numbers that can be written as a sum of numbers using only nonzero decimal digits in ascending order.

The programs for A242226, there is no canonical definition to state claims against.
-/

/-! ## A242226.P465644402996936667

`record[9*(A008620(A127288(n))+4)]`
-/

namespace A242226.P465644402996936667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A008620 (A127288 n).toNat + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242226.P465644402996936667

/-! ## A242226.P11939110429694896500

`A038123(2*(n+5))-A038123(2*(n+5))%9`
-/

namespace A242226.P11939110429694896500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038123 (2 * (n + 5)) - Int.tmod (A038123 (2 * (n + 5))) 9

end

end A242226.P11939110429694896500

/-! ## A242226.P7405771914212682477

`∪[9*(A175861(A117401(n)²)+n+5), A242264(n+1)]`
-/

namespace A242226.P7405771914212682477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A175861 (A117401 n ^ 2).toNat + (n + 5 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242226.P7405771914212682477

/-! ## A242226.P13276912436908095802

`∪[9*(A101637(A198715(n+1))+n+5), A242264(n+1)]`
-/

namespace A242226.P13276912436908095802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A101637 (A198715 (n + 1)).toNat + (n + 5 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242226.P13276912436908095802

/-! ## A242226.P1592288509844165556

`∪[9*(A193870(A344242(n+1))+n+5), A242264(n+1)]`
-/

namespace A242226.P1592288509844165556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A193870 (A344242 (n + 1)).toNat + (n + 5 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242226.P1592288509844165556

/-!
# A242227: a(n) = (2*n-1) * a(n-1) - a(n-2), a(0) = 1, a(1) = 2.

The programs for A242227, the canonical program `A242227.P11695943312730065389` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242227 has offset 0).

The definition of A242227 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-a(n-2)` (program `A242227.P11695943312730065389`, by `A242227.P11695943312730065389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242227.P11695943312730065389

`(2*n-1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242227

/-- `(2*n-1)*a(n-1)-a(n-2)` -/
def P11695943312730065389.Spec : Prop :=
  ∀ n, P11695943312730065389.a n = A242227 n

theorem P11695943312730065389.correct : P11695943312730065389.Spec := by
  intro n
  simp only [A242227]

end A242227

/-! ## A242227.P2690333847114904665

`A053983(n)+A053984(n)`
-/

namespace A242227.P2690333847114904665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053983 n + A053984 n

end

end A242227.P2690333847114904665

namespace A242227

/-- `A053983(n)+A053984(n)` -/
def P2690333847114904665.Spec : Prop :=
  ∀ n, P2690333847114904665.a n = A242227 n

end A242227

/-! ## A242227.P2383932255963592837

`a(n-1)*A004273(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A242227.P2383932255963592837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A004273 n - a (n - 2)

end

end A242227.P2383932255963592837

namespace A242227

/-- `a(n-1)*A004273(n)-a(n-2)` -/
def P2383932255963592837.Spec : Prop :=
  ∀ n, P2383932255963592837.a n = A242227 n

end A242227

/-! ## A242227.P2080674115837541447

`3*A053983(n)-A257859(n)`
-/

namespace A242227.P2080674115837541447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053983 n - A257859 n

end

end A242227.P2080674115837541447

namespace A242227

/-- `3*A053983(n)-A257859(n)` -/
def P2080674115837541447.Spec : Prop :=
  ∀ n, P2080674115837541447.a n = A242227 n

end A242227

/-! ## A242227.P9910788858491405929

`A053984(n)+(A257859(n)+A053984(n))/2`
-/

namespace A242227.P9910788858491405929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053984 n : ℚ) + (A257859 n + A053984 n : ℚ) / 2

end

end A242227.P9910788858491405929

namespace A242227

/-- `A053984(n)+(A257859(n)+A053984(n))/2` -/
def P9910788858491405929.Spec : Prop :=
  ∀ n, P9910788858491405929.a n = (A242227 n : ℚ)

end A242227

/-!
# A242230: Primes p of the form p^2 + q + 1 where p < q are consecutive primes.

The programs for A242230, there is no canonical definition to state claims against.
-/

/-! ## A242230.P11846476977634948151

`p?[A352851(n+1)+1]`
-/

namespace A242230.P11846476977634948151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242230.P11846476977634948151

/-! ## A242230.P12546637157357178932

`p?[A060800(n+1)+A001223(n+1)]`
-/

namespace A242230.P12546637157357178932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242230.P12546637157357178932

/-! ## A242230.P5314200227986993466

`p?[A008864(n+2)+A001248(n+1)]`
-/

namespace A242230.P5314200227986993466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242230.P5314200227986993466

/-! ## A242230.P5125743567923197075

`p?[A066872(n+1)+A000040(n+2)]`
-/

namespace A242230.P5125743567923197075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242230.P5125743567923197075

/-! ## A242230.P9699077087473632582

`p?[A008864(n+1)+A008578(n+1)²]`
-/

namespace A242230.P9699077087473632582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A008578 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242230.P9699077087473632582

/-!
# A242231: Primes p of the form p^2 + q - 1 where p < q are consecutive primes.

The programs for A242231, there is no canonical definition to state claims against.
-/

/-! ## A242231.P12983644646895906544

`p?[A352851(n+1)-1]`
-/

namespace A242231.P12983644646895906544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242231.P12983644646895906544

/-! ## A242231.P5461430630863145278

`p?[A084920(n+1)+A065091(n+1)]`
-/

namespace A242231.P5461430630863145278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242231.P5461430630863145278

/-! ## A242231.P1886116873705685824

`p?[A006093(n+2)+A001248(n+1)]`
-/

namespace A242231.P1886116873705685824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242231.P1886116873705685824

/-! ## A242231.P10160571090790269928

`p?[A039915(n+2)+A001248(n+1)]`
-/

namespace A242231.P10160571090790269928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242231.P10160571090790269928

/-! ## A242231.P7946010824656823025

`p?[A084920(n+1)+A000040(n+2)]`
-/

namespace A242231.P7946010824656823025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242231.P7946010824656823025

/-!
# A242232: 

The programs for A242232, there is no canonical definition to state claims against.
-/

/-! ## A242232.P9097850985288724164

`2*a(n-1)²-1` with `a(0)=6`
-/

namespace A242232.P9097850985288724164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (n - 1) ^ 2 - 1

end

end A242232.P9097850985288724164

/-! ## A242232.P16468050568068628275

`2*a(n-1)*a(n-1)-1` with `a(0)=6`
-/

namespace A242232.P16468050568068628275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (n - 1) * a (n - 1) - 1

end

end A242232.P16468050568068628275

/-! ## A242232.P622533630655550843

`a(n-1)²+a(n-1)²-1` with `a(0)=6`
-/

namespace A242232.P622533630655550843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) ^ 2 + (a (n - 1) ^ 2 - 1)

end

end A242232.P622533630655550843

/-!
# A242233: 2^n*(C_n)^(1/2) in the Cauchy type product where C_n is the n-th Catalan number.

The programs for A242233, there is no canonical definition to state claims against.
-/

/-! ## A242233.P17616288257619161390

`A327988(A332835(n))+1`
-/

namespace A242233.P17616288257619161390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327988 (A332835 n).toNat + 1

end

end A242233.P17616288257619161390

/-! ## A242233.P11072097103098296597

`A000040(A333597(a(n-2)+1)+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A242233.P11072097103098296597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A000040 (A333597 (a (n - 2) + 1).toNat + 1).toNat

end

end A242233.P11072097103098296597

/-! ## A242233.P13771974917315240053

`A316885(A188900(n)+A116686(n+1))`
-/

namespace A242233.P13771974917315240053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316885 (A188900 n + A116686 (n + 1)).toNat

end

end A242233.P13771974917315240053

/-!
# A242234: Number of length n+3+1 0..3 arrays with every value 0..3 appearing at least once in every consecutive 3+2 elements, and new values 0..3 introduced in order.

The programs for A242234, the canonical program `A242234.P15829621477588436566` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242234 has offset 1).

The definition of A242234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242234.P15829621477588436566

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=10, a(1)=22, a(2)=43, a(3)=82`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242234

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P15829621477588436566.Spec : Prop :=
  ∀ n, (P15829621477588436566.a n : ℤ) = A242234 (n + 1)

theorem P15829621477588436566.correct : P15829621477588436566.Spec := by
  intro n
  simp only [A242234, Nat.add_sub_cancel]

end A242234

/-! ## A242234.P6529327964678531818

`9*A145112(n)+A016777(n)`
-/

namespace A242234.P6529327964678531818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A145112 n + A016777 n

end

end A242234.P6529327964678531818

namespace A242234

/-- `9*A145112(n)+A016777(n)` -/
def P6529327964678531818.Spec : Prop :=
  ∀ n, P6529327964678531818.a n = A242234 (n + 1)

end A242234

/-! ## A242234.P17786119017501190770

`A000288(n+3)+3*A001630(n+4)`
-/

namespace A242234.P17786119017501190770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 3) + 3 * A001630 (n + 4)

end

end A242234.P17786119017501190770

namespace A242234

/-- `A000288(n+3)+3*A001630(n+4)` -/
def P17786119017501190770.Spec : Prop :=
  ∀ n, P17786119017501190770.a n = A242234 (n + 1)

end A242234

/-! ## A242234.P2815385197734281312

`A000288(n+6)-Δ[A000288(n+3)]`
-/

namespace A242234.P2815385197734281312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 6) - (f1 (n + 1) - f1 n)

end

end A242234.P2815385197734281312

namespace A242234

/-- `A000288(n+6)-Δ[A000288(n+3)]` -/
def P2815385197734281312.Spec : Prop :=
  ∀ n, P2815385197734281312.a n = A242234 (n + 1)

end A242234

/-! ## A242234.P3473175916676030165

`A000288(n+6)-3*A000078(n+3)`
-/

namespace A242234.P3473175916676030165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 6) - 3 * A000078 (n + 3)

end

end A242234.P3473175916676030165

namespace A242234

/-- `A000288(n+6)-3*A000078(n+3)` -/
def P3473175916676030165.Spec : Prop :=
  ∀ n, P3473175916676030165.a n = A242234 (n + 1)

end A242234

/-! ## A242234.P11486022052954302569

`A000288(n+3)+A000288(n+6)-A000288(n+4)`
-/

namespace A242234.P11486022052954302569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 3) + (A000288 (n + 6) - A000288 (n + 4))

end

end A242234.P11486022052954302569

namespace A242234

/-- `A000288(n+3)+A000288(n+6)-A000288(n+4)` -/
def P11486022052954302569.Spec : Prop :=
  ∀ n, P11486022052954302569.a n = A242234 (n + 1)

end A242234

/-! ## A242234.P9858241945877525655

`(A000288(n+7)+A000288(n+10))%A000288(n+8)`
-/

namespace A242234.P9858241945877525655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000288 (n + 7) + A000288 (n + 10)) (A000288 (n + 8))

end

end A242234.P9858241945877525655

namespace A242234

/-- `(A000288(n+7)+A000288(n+10))%A000288(n+8)` -/
def P9858241945877525655.Spec : Prop :=
  ∀ n, P9858241945877525655.a n = A242234 (n + 1)

end A242234

/-!
# A242235: Number of length n+4+1 0..4 arrays with every value 0..4 appearing at least once in every consecutive 4+2 elements, and new values 0..4 introduced in order.

The programs for A242235, the canonical program `A242235.P1946403375923120964` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242235 has offset 1).

The definition of A242235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242235.P1946403375923120964

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=15, a(1)=35, a(2)=71, a(3)=139, a(4)=271`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242235

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P1946403375923120964.Spec : Prop :=
  ∀ n, (P1946403375923120964.a n : ℤ) = A242235 (n + 1)

theorem P1946403375923120964.correct : P1946403375923120964.Spec := by
  intro n
  simp only [A242235, Nat.add_sub_cancel]

end A242235

/-! ## A242235.P15827740429749243004

`A242239(∑[n+4]+3)`
-/

namespace A242235.P15827740429749243004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A242235.P15827740429749243004

namespace A242235

/-- `A242239(∑[n+4]+3)` -/
def P15827740429749243004.Spec : Prop :=
  ∀ n, P15827740429749243004.a n = A242235 (n + 1)

end A242235

/-! ## A242235.P16227149229404677541

`or(1, A242239(A055998(n+2)))`
-/

namespace A242235.P16227149229404677541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A242239 (A055998 (n + 2)).toNat)

end

end A242235.P16227149229404677541

namespace A242235

/-- `or(1, A242239(A055998(n+2)))` -/
def P16227149229404677541.Spec : Prop :=
  ∀ n, P16227149229404677541.a n = A242235 (n + 1)

end A242235

/-! ## A242235.P9984526532247678371

`or(1, A242239(A155212(n)+5))`
-/

namespace A242235.P9984526532247678371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A242239 (A155212 n + 5).toNat)

end

end A242235.P9984526532247678371

namespace A242235

/-- `or(1, A242239(A155212(n)+5))` -/
def P9984526532247678371.Spec : Prop :=
  ∀ n, P9984526532247678371.a n = A242235 (n + 1)

end A242235

/-! ## A242235.P9775209202678214489

`A007318(C(2, n))*A242239(A155212(n)+5)`
-/

namespace A242235.P9775209202678214489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A242239 (A155212 n + 5).toNat

end

end A242235.P9775209202678214489

namespace A242235

/-- `A007318(C(2, n))*A242239(A155212(n)+5)` -/
def P9775209202678214489.Spec : Prop :=
  ∀ n, P9775209202678214489.a n = A242235 (n + 1)

end A242235

/-!
# A242236: Number of length n+5+1 0..5 arrays with every value 0..5 appearing at least once in every consecutive 5+2 elements, and new values 0..5 introduced in order.

The programs for A242236, the canonical program `A242236.P11933428656656879510` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242236 has offset 1).

The definition of A242236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242236.P11933428656656879510

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=21, a(1)=51, a(2)=106, a(3)=211, a(4)=416, a(5)=821`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242236

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P11933428656656879510.Spec : Prop :=
  ∀ n, (P11933428656656879510.a n : ℤ) = A242236 (n + 1)

theorem P11933428656656879510.correct : P11933428656656879510.Spec := by
  intro n
  simp only [A242236, Nat.add_sub_cancel]

end A242236

/-! ## A242236.P9138845016533169035

`A242239(∑[n+5]+6)`
-/

namespace A242236.P9138845016533169035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A242236.P9138845016533169035

namespace A242236

/-- `A242239(∑[n+5]+6)` -/
def P9138845016533169035.Spec : Prop :=
  ∀ n, P9138845016533169035.a n = A242236 (n + 1)

end A242236

/-! ## A242236.P10527688706907393744

`A242239(Δ[A023545(n+1)])%A158358(n+1)`
-/

namespace A242236.P10527688706907393744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242239 (f1 (n + 1) - f1 n).toNat) (A158358 (n + 1))

end

end A242236.P10527688706907393744

namespace A242236

/-- `A242239(Δ[A023545(n+1)])%A158358(n+1)` -/
def P10527688706907393744.Spec : Prop :=
  ∀ n, P10527688706907393744.a n = A242236 (n + 1)

end A242236

/-! ## A242236.P2550537065962673138

`A242239(Δ[A023545(n+1)])+A158327(2*n+3)`
-/

namespace A242236.P2550537065962673138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (f1 (n + 1) - f1 n).toNat + A158327 (2 * n + 3)

end

end A242236.P2550537065962673138

namespace A242236

/-- `A242239(Δ[A023545(n+1)])+A158327(2*n+3)` -/
def P2550537065962673138.Spec : Prop :=
  ∀ n, P2550537065962673138.a n = A242236 (n + 1)

end A242236

/-! ## A242236.P17144830960214031954

`A242239(Δ[A023545(n+1)])+A158360(2*n+3)`
-/

namespace A242236.P17144830960214031954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (f1 (n + 1) - f1 n).toNat + A158360 (2 * n + 3)

end

end A242236.P17144830960214031954

namespace A242236

/-- `A242239(Δ[A023545(n+1)])+A158360(2*n+3)` -/
def P17144830960214031954.Spec : Prop :=
  ∀ n, P17144830960214031954.a n = A242236 (n + 1)

end A242236

/-!
# A242237: Number of length n+6+1 0..6 arrays with every value 0..6 appearing at least once in every consecutive 6+2 elements, and new values 0..6 introduced in order.

The programs for A242237, there is no canonical definition to state claims against.
-/

/-! ## A242237.P13253674194668009502

`A242239(A052905(n+3))`
-/

namespace A242237.P13253674194668009502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A052905 (n + 3)).toNat

end

end A242237.P13253674194668009502

/-! ## A242237.P6148907100179664005

`A242239(eq[5, A193592(n)])`
-/

namespace A242237.P6148907100179664005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242237.P6148907100179664005

/-! ## A242237.P5486344494533100820

`A242239(A055999(n+3)+1)`
-/

namespace A242237.P5486344494533100820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A055999 (n + 3) + 1).toNat

end

end A242237.P5486344494533100820

/-! ## A242237.P581606553767966604

`A242239(A134227(n+4)+1)`
-/

namespace A242237.P581606553767966604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A134227 (n + 4) + 1).toNat

end

end A242237.P581606553767966604

/-! ## A242237.P18330182542005798975

`A242239(A046691(n+4)-1)`
-/

namespace A242237.P18330182542005798975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A046691 (n + 4) - 1).toNat

end

end A242237.P18330182542005798975

/-!
# A242238: Number of length n+7+1 0..7 arrays with every value 0..7 appearing at least once in every consecutive 7+2 elements, and new values 0..7 introduced in order.

The programs for A242238, there is no canonical definition to state claims against.
-/

/-! ## A242238.P18256991590864197808

`A242239(A055999(n+4))`
-/

namespace A242238.P18256991590864197808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A055999 (n + 4)).toNat

end

end A242238.P18256991590864197808

/-! ## A242238.P2355765838702570373

`A242239(A134227(n+5))`
-/

namespace A242238.P2355765838702570373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A134227 (n + 5)).toNat

end

end A242238.P2355765838702570373

/-! ## A242238.P7971909346650071585

`A242239(eq[6, A193592(n)])`
-/

namespace A242238.P7971909346650071585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242238.P7971909346650071585

/-! ## A242238.P635081617361838801

`A242239(Δ[A023551(n+2)])`
-/

namespace A242238.P635081617361838801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (f1 (n + 1) - f1 n).toNat

end

end A242238.P635081617361838801

/-! ## A242238.P296841522172725091

`A242239(A046691(n+5)-2)`
-/

namespace A242238.P296841522172725091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242239 (A046691 (n + 5) - 2).toNat

end

end A242238.P296841522172725091

/-!
# A242240: Expansion of Jacobi sn(x, 1/2) / cd(x, 1/2).

The programs for A242240, there is no canonical definition to state claims against.
-/

/-! ## A242240.P11020762715153608855

`abs(A104203(A000038(n)+n))`
-/

namespace A242240.P11020762715153608855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104203 (A000038 n + (n : ℤ)).toNat|

end

end A242240.P11020762715153608855

/-! ## A242240.P7539803274160195190

`abs(A104203(abs(n-A000038(n))))`
-/

namespace A242240.P7539803274160195190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A104203 |(n : ℤ) - A000038 n|.toNat)|

end

end A242240.P7539803274160195190

/-! ## A242240.P3880433020878731361

`lcm(A057515(n), A104203(A028310(n)))`
-/

namespace A242240.P3880433020878731361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057515 n) (A104203 (A028310 n).toNat)

end

end A242240.P3880433020878731361

/-! ## A242240.P12350946608624142638

`lcm(A001222(n+1), A104203(A000038(n)+n))`
-/

namespace A242240.P12350946608624142638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 1)) (A104203 (A000038 n + (n : ℤ)).toNat)

end

end A242240.P12350946608624142638

/-! ## A242240.P15770118735247314721

`lcm(n%2, A190904(n))`
-/

namespace A242240.P15770118735247314721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A190904 n)

end

end A242240.P15770118735247314721

/-!
# A242242: Least positive primitive root g < prime(n) modulo prime(n) with 2^g - 1 also a primitive root modulo prime(n), or 0 if such a number g does not exist.

The programs for A242242, there is no canonical definition to state claims against.
-/

/-! ## A242242.P10274347198485555878

`A046145(Δ[A007504(n)]-A267883(n))`
-/

namespace A242242.P10274347198485555878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (n + 1) - f1 n - A267883 n).toNat

end

end A242242.P10274347198485555878

/-! ## A242242.P2547699445929315885

`A046145(p?[A259153(n)]-A267883(n))`
-/

namespace A242242.P2547699445929315885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A267883 n).toNat

end

end A242242.P2547699445929315885

/-! ## A242242.P7290026439394556797

`A046145(A000040(n+1)-A267883(n))`
-/

namespace A242242.P7290026439394556797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A000040 (n + 1) - A267883 n).toNat

end

end A242242.P7290026439394556797

/-! ## A242242.P11124996290829763695

`A046145(A008578(n+2)-A267883(n))`
-/

namespace A242242.P11124996290829763695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A008578 (n + 2) - A267883 n).toNat

end

end A242242.P11124996290829763695

/-! ## A242242.P7480798795994813239

`xor(A001918(n+1), A215573(A139099(n+1)))`
-/

namespace A242242.P7480798795994813239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001918 (n + 1)) (A215573 (A139099 (n + 1)).toNat)

end

end A242242.P7480798795994813239

/-!
# A242243: Semiprimes sp of the form p^2 + q + 1 where p and q are consecutive primes.

The programs for A242243, there is no canonical definition to state claims against.
-/

/-! ## A242243.P9113977490484960650

`∩[A006881(n+1), A352851(n+1)+1]`
-/

namespace A242243.P9113977490484960650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242243.P9113977490484960650

/-! ## A242243.P3132180673372383840

`∩[or(1, A352851(n+1)), A088707(n+1)-1]`
-/

namespace A242243.P3132180673372383840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352851 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242243.P3132180673372383840

/-! ## A242243.P15308851542036342063

`A153152(∩[A186621(n+1), A352851(n+1)])`
-/

namespace A242243.P15308851542036342063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242243.P15308851542036342063

/-!
# A242244: Primes p such that both p^2 + 2 and p^2 - 2 are semiprimes.

The programs for A242244, there is no canonical definition to state claims against.
-/

/-! ## A242244.P14783513994589210062

`∩[A240878(n+1), A242260(n+1)]`
-/

namespace A242244.P14783513994589210062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242244.P14783513994589210062

/-! ## A242244.P4452026435757823135

`∩[A109953(n+1), A242260(n+1)]`
-/

namespace A242244.P4452026435757823135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242244.P4452026435757823135

/-! ## A242244.P4972432482692988014

`record[A006530(sqrt(A278022(n+2)))]`
-/

namespace A242244.P4972432482692988014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A278022 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242244.P4972432482692988014

/-! ## A242244.P7281071149892779243

`record[A020639(sqrt(A278022(n+2)))]`
-/

namespace A242244.P7281071149892779243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A278022 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242244.P7281071149892779243

/-! ## A242244.P15885805636660224068

`∩[A242260(n+1), A242330(n+1)]`
-/

namespace A242244.P15885805636660224068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242244.P15885805636660224068

/-! ## A242244.P4282940950159125609

`record[A014963(sqrt(A278022(n+2)))]`
-/

namespace A242244.P4282940950159125609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (A278022 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242244.P4282940950159125609

/-!
# A242247: Maximal k <= n^2 + 1 such that every Goldbach representation of 2*k = p+q contains at least one prime from the set {prime(1), prime(2), ..., prime(n)}, or a(n)=0 if there is no such k.

The programs for A242247, there is no canonical definition to state claims against.
-/

/-! ## A242247.P9926063901372196054

`A318453(A000110(n))+A066207(n+1)`
-/

namespace A242247.P9926063901372196054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318453 (A000110 n).toNat + A066207 (n + 1)

end

end A242247.P9926063901372196054

/-! ## A242247.P18139695684220290730

`A215800(n+1)+A138904(A065491(n))`
-/

namespace A242247.P18139695684220290730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (n + 1) + A138904 (A065491 n).toNat

end

end A242247.P18139695684220290730

/-! ## A242247.P12445501488167068327

`A305749(A049009(n))+A066207(n+1)`
-/

namespace A242247.P12445501488167068327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (A049009 n).toNat + A066207 (n + 1)

end

end A242247.P12445501488167068327

/-! ## A242247.P13712866110317633764

`A296774(A054058(n))+A215800(n+1)`
-/

namespace A242247.P13712866110317633764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (A054058 n).toNat + A215800 (n + 1)

end

end A242247.P13712866110317633764

/-! ## A242247.P4408771147630971862

`A334996(A175844(3*n+4))+A035033(2*(n+1))`
-/

namespace A242247.P4408771147630971862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (A175844 (3 * n + 4)).toNat + A035033 (2 * (n + 1))

end

end A242247.P4408771147630971862

/-!
# A242248: a(n) = |{0 < g < prime(n): g, 2^g - 1 and (g-1)! are all primitive roots modulo prime(n)}|.

The programs for A242248, there is no canonical definition to state claims against.
-/

/-! ## A242248.P1047891157642825360

`gcd(A028242(A014162(n)), A083309(n+1))`
-/

namespace A242248.P1047891157642825360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028242 (A014162 n).toNat) (A083309 (n + 1))

end

end A242248.P1047891157642825360

/-!
# A242249: Number A(n,k) of rooted trees with n nodes and k-colored non-root nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A242249, there is no canonical definition to state claims against.
-/

/-! ## A242249.P17317827362974936356

`A000120(A288972(n)*A318753(n))`
-/

namespace A242249.P17317827362974936356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A288972 n * A318753 n).toNat

end

end A242249.P17317827362974936356

/-! ## A242249.P16938469839817865293

`A000120(A288972(n)*A318757(n))`
-/

namespace A242249.P16938469839817865293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A288972 n * A318757 n).toNat

end

end A242249.P16938469839817865293

/-! ## A242249.P9734673565957895814

`A000120(lcm(A288972(n), A318753(n)))`
-/

namespace A242249.P9734673565957895814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A288972 n) (A318753 n))

end

end A242249.P9734673565957895814

/-! ## A242249.P78927668951840162

`A026741(A361290(n)%A089007(n+1))`
-/

namespace A242249.P78927668951840162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A361290 n) (A089007 (n + 1))).toNat

end

end A242249.P78927668951840162

/-! ## A242249.P10772230811775605449

`A026741(A361290(n)^A288972(n+3))`
-/

namespace A242249.P10772230811775605449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A361290 n : ℚ) ^ (A288972 (n + 3) : ℤ))).toNat

end

end A242249.P10772230811775605449

/-!
# A242251: Smallest positive number divisible by n which is not of the form a(i), a(i)+a(j), or |a(i)-a(j)| for i and j <= n-1.

The programs for A242251, there is no canonical definition to state claims against.
-/

/-! ## A242251.P9432829693230980610

`(n+1)*A242348(n+1)`
-/

namespace A242251.P9432829693230980610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A242348 (n + 1)

end

end A242251.P9432829693230980610

/-! ## A242251.P13471724841969930959

`(n+1)*A109082(A001939(n)+1)`
-/

namespace A242251.P13471724841969930959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109082 (A001939 n + 1).toNat

end

end A242251.P13471724841969930959

/-!
# A242252: Start with n-th odd prime, and repeatedly subtract the greatest prime until either 0 or 1 remains. (The result is the "primes-greedy residue" of the n-th odd prime, which is "primes-greedy summable" if its residue = 0, as at A242255; see Comments.)

The programs for A242252, the canonical program `A242252.P7500226852341842309` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242252 has offset 1).

The definition of A242252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242252.P1202906891809847000

`A121559(A001223(n+1))`
-/

namespace A242252.P1202906891809847000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (A001223 (n + 1)).toNat

end

end A242252.P1202906891809847000

namespace A242252

/-- `A121559(A001223(n+1))` -/
def P1202906891809847000.Spec : Prop :=
  ∀ n, P1202906891809847000.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P15911238591807268833

`A062831(A074927(n+1))`
-/

namespace A242252.P15911238591807268833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062831 (A074927 (n + 1)).toNat

end

end A242252.P15911238591807268833

namespace A242252

/-- `A062831(A074927(n+1))` -/
def P15911238591807268833.Spec : Prop :=
  ∀ n, P15911238591807268833.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P9939153662193146023

`A379238(A162786(n+2))`
-/

namespace A242252.P9939153662193146023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379238 (A162786 (n + 2)).toNat

end

end A242252.P9939153662193146023

namespace A242252

/-- `A379238(A162786(n+2))` -/
def P9939153662193146023.Spec : Prop :=
  ∀ n, P9939153662193146023.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P11037115241772259061

`A121559(Δ[A000040(n+1)])`
-/

namespace A242252.P11037115241772259061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (f1 (n + 1) - f1 n).toNat

end

end A242252.P11037115241772259061

namespace A242252

/-- `A121559(Δ[A000040(n+1)])` -/
def P11037115241772259061.Spec : Prop :=
  ∀ n, P11037115241772259061.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P7500226852341842309

`A370482(A001223(n+1)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242252

/-- `A370482(A001223(n+1)-1)` -/
def P7500226852341842309.Spec : Prop :=
  ∀ n, P7500226852341842309.a n = A242252 (n + 1)

theorem P7500226852341842309.correct : P7500226852341842309.Spec := by
  intro n
  simp only [A242252, Nat.add_sub_cancel]

end A242252

/-! ## A242252.P2309780881770733081

`A010051(abs(2-A001223(n+1))+1)`
-/

namespace A242252.P2309780881770733081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (|2 - A001223 (n + 1)| + 1).toNat

end

end A242252.P2309780881770733081

namespace A242252

/-- `A010051(abs(2-A001223(n+1))+1)` -/
def P2309780881770733081.Spec : Prop :=
  ∀ n, P2309780881770733081.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P17472270655460284293

`A061358(Δ[A040976(n+1)]+1)^n`
-/

namespace A242252.P17472270655460284293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (f1 (n + 1) - f1 n + 1).toNat ^ n

end

end A242252.P17472270655460284293

namespace A242252

/-- `A061358(Δ[A040976(n+1)]+1)^n` -/
def P17472270655460284293.Spec : Prop :=
  ∀ n, P17472270655460284293.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P5625643560236239447

`A010051(xor(1, A001223(n+1)-1)+1)`
-/

namespace A242252.P5625643560236239447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.xor 1 (A001223 (n + 1) - 1) + 1).toNat

end

end A242252.P5625643560236239447

namespace A242252

/-- `A010051(xor(1, A001223(n+1)-1)+1)` -/
def P5625643560236239447.Spec : Prop :=
  ∀ n, P5625643560236239447.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P15205190536603652807

`A010051(abs(2-Δ[A000040(n+1)])+1)`
-/

namespace A242252.P15205190536603652807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (|2 - (f1 (n + 1) - f1 n)| + 1).toNat

end

end A242252.P15205190536603652807

namespace A242252

/-- `A010051(abs(2-Δ[A000040(n+1)])+1)` -/
def P15205190536603652807.Spec : Prop :=
  ∀ n, P15205190536603652807.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P11265474229919131143

`A010051(xor(1, Δ[A000040(n+1)]-1)+1)`
-/

namespace A242252.P11265474229919131143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.xor 1 (f1 (n + 1) - f1 n - 1) + 1).toNat

end

end A242252.P11265474229919131143

namespace A242252

/-- `A010051(xor(1, Δ[A000040(n+1)]-1)+1)` -/
def P11265474229919131143.Spec : Prop :=
  ∀ n, P11265474229919131143.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P16004707479064744971

`A010051(∑[A001223(n+1)]%A000040(n+1)+1)`
-/

namespace A242252.P16004707479064744971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1)) + 1).toNat

end

end A242252.P16004707479064744971

namespace A242252

/-- `A010051(∑[A001223(n+1)]%A000040(n+1)+1)` -/
def P16004707479064744971.Spec : Prop :=
  ∀ n, P16004707479064744971.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P9189336268937491628

`A010051((A000040(n+2)-2)%A000040(n+1)+1)`
-/

namespace A242252.P9189336268937491628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.tmod (A000040 (n + 2) - 2) (A000040 (n + 1)) + 1).toNat

end

end A242252.P9189336268937491628

namespace A242252

/-- `A010051((A000040(n+2)-2)%A000040(n+1)+1)` -/
def P9189336268937491628.Spec : Prop :=
  ∀ n, P9189336268937491628.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P17494607715367738787

`A211110(A211110(A211110(A046933(n+1))))`
-/

namespace A242252.P17494607715367738787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (A211110 (A211110 (A046933 (n + 1)).toNat).toNat).toNat

end

end A242252.P17494607715367738787

namespace A242252

/-- `A211110(A211110(A211110(A046933(n+1))))` -/
def P17494607715367738787.Spec : Prop :=
  ∀ n, P17494607715367738787.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P11865771064804158495

`A121559(A049711(A000040(n+2)))`
-/

namespace A242252.P11865771064804158495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (A049711 (A000040 (n + 2)).toNat).toNat

end

end A242252.P11865771064804158495

namespace A242252

/-- `A121559(A049711(A000040(n+2)))` -/
def P11865771064804158495.Spec : Prop :=
  ∀ n, P11865771064804158495.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P17215265867645120903

`A288861(∏{p}[Δ[A000040(n+1)]^3+1, #]+1)`
-/

namespace A242252.P17215265867645120903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1)

end

end A242252.P17215265867645120903

namespace A242252

/-- `A288861(∏{p}[Δ[A000040(n+1)]^3+1, #]+1)` -/
def P17215265867645120903.Spec : Prop :=
  ∀ n, P17215265867645120903.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P4372734209092422160

`and(A007318(A100820(n+1)), A100810(n+1))`
-/

namespace A242252.P4372734209092422160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (A100820 (n + 1)).toNat) (A100810 (n + 1))

end

end A242252.P4372734209092422160

namespace A242252

/-- `and(A007318(A100820(n+1)), A100810(n+1))` -/
def P4372734209092422160.Spec : Prop :=
  ∀ n, P4372734209092422160.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P1028395028300208717

`and(A100792(A100803(n+1)), A100810(n+1))`
-/

namespace A242252.P1028395028300208717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100792 (A100803 (n + 1)).toNat) (A100810 (n + 1))

end

end A242252.P1028395028300208717

namespace A242252

/-- `and(A100792(A100803(n+1)), A100810(n+1))` -/
def P1028395028300208717.Spec : Prop :=
  ∀ n, P1028395028300208717.a n = A242252 (n + 1)

end A242252

/-! ## A242252.P5833919031214925903

`A100810(Δ[A000040(n+1)])*A100810(n+1)`
-/

namespace A242252.P5833919031214925903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100810 (f1 (n + 1) - f1 n).toNat * A100810 (n + 1)

end

end A242252.P5833919031214925903

namespace A242252

/-- `A100810(Δ[A000040(n+1)])*A100810(n+1)` -/
def P5833919031214925903.Spec : Prop :=
  ∀ n, P5833919031214925903.a n = A242252 (n + 1)

end A242252

/-!
# A242253: Number of primes in the primes-greedy sum (defined at A242252) for the n-th odd prime.

The programs for A242253, the canonical program `A242253.P7785784206183266084` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242253 has offset 1).

The definition of A242253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242253.P7785784206183266084

`A175078(A076368(n+2))+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A242253

/-- `A175078(A076368(n+2))+1` -/
def P7785784206183266084.Spec : Prop :=
  ∀ n, P7785784206183266084.a n = A242253 (n + 1)

theorem P7785784206183266084.correct : P7785784206183266084.Spec := by
  intro n
  simp only [A242253, Nat.add_sub_cancel]

end A242253

/-! ## A242253.P371055794432553234

`A121561(Δ[A000040(n+1)])+1`
-/

namespace A242253.P371055794432553234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (f1 (n + 1) - f1 n).toNat + 1

end

end A242253.P371055794432553234

namespace A242253

/-- `A121561(Δ[A000040(n+1)])+1` -/
def P371055794432553234.Spec : Prop :=
  ∀ n, P371055794432553234.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P5728418650523266377

`A175078(Δ[A000040(n+1)]+1)+1`
-/

namespace A242253.P5728418650523266377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (f1 (n + 1) - f1 n + 1).toNat + 1

end

end A242253.P5728418650523266377

namespace A242253

/-- `A175078(Δ[A000040(n+1)]+1)+1` -/
def P5728418650523266377.Spec : Prop :=
  ∀ n, P5728418650523266377.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P5841264237026043742

`A175078(A000040(n+2)-A000040(n+1)+1)+1`
-/

namespace A242253.P5841264237026043742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A000040 (n + 2) - A000040 (n + 1) + 1).toNat + 1

end

end A242253.P5841264237026043742

namespace A242253

/-- `A175078(A000040(n+2)-A000040(n+1)+1)+1` -/
def P5841264237026043742.Spec : Prop :=
  ∀ n, P5841264237026043742.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P2083027147127938230

`A175078(A006093(n+2)-A006093(n+1)+1)+1`
-/

namespace A242253.P2083027147127938230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A006093 (n + 2) - A006093 (n + 1) + 1).toNat + 1

end

end A242253.P2083027147127938230

namespace A242253

/-- `A175078(A006093(n+2)-A006093(n+1)+1)+1` -/
def P2083027147127938230.Spec : Prop :=
  ∀ n, P2083027147127938230.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P15314523661692973990

`A072491(eq[A107279(3*n), A270003(n+1)])`
-/

namespace A242253.P15314523661692973990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242253.P15314523661692973990

namespace A242253

/-- `A072491(eq[A107279(3*n), A270003(n+1)])` -/
def P15314523661692973990.Spec : Prop :=
  ∀ n, P15314523661692973990.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P18269797014780339590

`A072491(record[A233583(A110560(n))])`
-/

namespace A242253.P18269797014780339590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A110560 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242253.P18269797014780339590

namespace A242253

/-- `A072491(record[A233583(A110560(n))])` -/
def P18269797014780339590.Spec : Prop :=
  ∀ n, P18269797014780339590.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P5348019673314749896

`A072491(A233583(p?[A060462(n+1)]))`
-/

namespace A242253.P5348019673314749896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A233583 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A242253.P5348019673314749896

namespace A242253

/-- `A072491(A233583(p?[A060462(n+1)]))` -/
def P5348019673314749896.Spec : Prop :=
  ∀ n, P5348019673314749896.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P15706477555987825877

`A072491(record[A233583(2*n+1)/A072491(2*n+1)])`
-/

namespace A242253.P15706477555987825877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (2 * n + 1) : ℚ) / (A072491 (2 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A242253.P15706477555987825877

namespace A242253

/-- `A072491(record[A233583(2*n+1)/A072491(2*n+1)])` -/
def P15706477555987825877.Spec : Prop :=
  ∀ n, P15706477555987825877.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P1030211916092672882

`A067131(A293441(A001223(n+1))²)`
-/

namespace A242253.P1030211916092672882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A293441 (A001223 (n + 1)).toNat ^ 2).toNat

end

end A242253.P1030211916092672882

namespace A242253

/-- `A067131(A293441(A001223(n+1))²)` -/
def P1030211916092672882.Spec : Prop :=
  ∀ n, P1030211916092672882.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P12902026273566011416

`A028334(A054541(A000230(A054541(n+2))))`
-/

namespace A242253.P12902026273566011416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A054541 (A000230 (A054541 (n + 2)).toNat).toNat).toNat

end

end A242253.P12902026273566011416

namespace A242253

/-- `A028334(A054541(A000230(A054541(n+2))))` -/
def P12902026273566011416.Spec : Prop :=
  ∀ n, P12902026273566011416.a n = A242253 (n + 1)

end A242253

/-! ## A242253.P9529707579136589217

`A205558(A205717(A204890(∑[n+1])))`
-/

namespace A242253.P9529707579136589217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A205717 (A204890 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A242253.P9529707579136589217

namespace A242253

/-- `A205558(A205717(A204890(∑[n+1])))` -/
def P9529707579136589217.Spec : Prop :=
  ∀ n, P9529707579136589217.a n = A242253 (n + 1)

end A242253

/-!
# A242254: Numbers k such that the k-th prime is primes-greedy summable, as defined at A242252.

The programs for A242254, the canonical program `A242254.P1110677211204880734` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242254 has offset 1).

The definition of A242254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242254.P1110677211204880734

`eq[2, A242252(n+1)+2]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242254

/-- `eq[2, A242252(n+1)+2]+2` -/
def P1110677211204880734.Spec : Prop :=
  ∀ n, (P1110677211204880734.a n : ℤ) = A242254 (n + 1)

theorem P1110677211204880734.correct : P1110677211204880734.Spec := by
  intro n
  simp only [A242254, Nat.add_sub_cancel]

end A242254

/-! ## A242254.P8958222461946622752

`A000720(A242255(n+1))`
-/

namespace A242254.P8958222461946622752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A242255 (n + 1)).toNat

end

end A242254.P8958222461946622752

namespace A242254

/-- `A000720(A242255(n+1))` -/
def P8958222461946622752.Spec : Prop :=
  ∀ n, P8958222461946622752.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P5765891953458250113

`A297113(or(1, A242255(n+1)))`
-/

namespace A242254.P5765891953458250113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (Int.lor 1 (A242255 (n + 1))).toNat

end

end A242254.P5765891953458250113

namespace A242254

/-- `A297113(or(1, A242255(n+1)))` -/
def P5765891953458250113.Spec : Prop :=
  ∀ n, P5765891953458250113.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P10672187588871224171

`A297113(A242255(n+1)/A093178(2*(n+2)))`
-/

namespace A242254.P10672187588871224171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (SequenceMachineLib.roundAway ((A242255 (n + 1) : ℚ) / (A093178 (2 * (n + 2)) : ℚ))).toNat

end

end A242254.P10672187588871224171

namespace A242254

/-- `A297113(A242255(n+1)/A093178(2*(n+2)))` -/
def P10672187588871224171.Spec : Prop :=
  ∀ n, P10672187588871224171.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P12379221341359574093

`A297113(C(A242255(n+1), A093178(2*(n+2))))`
-/

namespace A242254.P12379221341359574093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (Nat.choose (A242255 (n + 1)).toNat (A093178 (2 * (n + 2))).toNat)

end

end A242254.P12379221341359574093

namespace A242254

/-- `A297113(C(A242255(n+1), A093178(2*(n+2))))` -/
def P12379221341359574093.Spec : Prop :=
  ∀ n, P12379221341359574093.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P3969506901244643255

`A056239(p?[A242255(n+1)])`
-/

namespace A242254.P3969506901244643255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A242254.P3969506901244643255

namespace A242254

/-- `A056239(p?[A242255(n+1)])` -/
def P3969506901244643255.Spec : Prop :=
  ∀ n, P3969506901244643255.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P7504370921242710109

`A324863(p?[A242255(n+1)])`
-/

namespace A242254.P7504370921242710109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A242254.P7504370921242710109

namespace A242254

/-- `A324863(p?[A242255(n+1)])` -/
def P7504370921242710109.Spec : Prop :=
  ∀ n, P7504370921242710109.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P7972308391940729869

`∑{d}[A242255(n+1), A324863(#)]`
-/

namespace A242254.P7972308391940729869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A324863 d

end

end A242254.P7972308391940729869

namespace A242254

/-- `∑{d}[A242255(n+1), A324863(#)]` -/
def P7972308391940729869.Spec : Prop :=
  ∀ n, P7972308391940729869.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P7567720247089011447

`A324863(∏{d}[A242255(n+1), #])`
-/

namespace A242254.P7567720247089011447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A242254.P7567720247089011447

namespace A242254

/-- `A324863(∏{d}[A242255(n+1), #])` -/
def P7567720247089011447.Spec : Prop :=
  ∀ n, P7567720247089011447.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P15617949278209884812

`A324863(∏{p}[A242255(n+1), #])`
-/

namespace A242254.P15617949278209884812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A242254.P15617949278209884812

namespace A242254

/-- `A324863(∏{p}[A242255(n+1), #])` -/
def P15617949278209884812.Spec : Prop :=
  ∀ n, P15617949278209884812.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P16008519560824294868

`A056239(A242255(n+1)+A000007(n))`
-/

namespace A242254.P16008519560824294868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A242255 (n + 1) + A000007 n).toNat

end

end A242254.P16008519560824294868

namespace A242254

/-- `A056239(A242255(n+1)+A000007(n))` -/
def P16008519560824294868.Spec : Prop :=
  ∀ n, P16008519560824294868.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P7251559150788157961

`A324863(2*A242255(n+1)-A242255(n+1))`
-/

namespace A242254.P7251559150788157961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (2 * A242255 (n + 1) - A242255 (n + 1)).toNat

end

end A242254.P7251559150788157961

namespace A242254

/-- `A324863(2*A242255(n+1)-A242255(n+1))` -/
def P7251559150788157961.Spec : Prop :=
  ∀ n, P7251559150788157961.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P10011387087505047055

`A297113(2*A242255(n+1))`
-/

namespace A242254.P10011387087505047055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (2 * A242255 (n + 1)).toNat

end

end A242254.P10011387087505047055

namespace A242254

/-- `A297113(2*A242255(n+1))` -/
def P10011387087505047055.Spec : Prop :=
  ∀ n, P10011387087505047055.a n = A242254 (n + 1)

end A242254

/-! ## A242254.P12690998299494124456

`A324863(2*A242255(n+1))-1`
-/

namespace A242254.P12690998299494124456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (2 * A242255 (n + 1)).toNat - 1

end

end A242254.P12690998299494124456

namespace A242254

/-- `A324863(2*A242255(n+1))-1` -/
def P12690998299494124456.Spec : Prop :=
  ∀ n, P12690998299494124456.a n = A242254 (n + 1)

end A242254

/-!
# A242255: Primes-greedy summable primes, as defined at A242252.

The programs for A242255, the canonical program `A242255.P8978324754123545430` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242255 has offset 1).

The definition of A242255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242255.P8978324754123545430

`A000040(A242254(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242255

/-- `A000040(A242254(n+1))` -/
def P8978324754123545430.Spec : Prop :=
  ∀ n, P8978324754123545430.a n = A242255 (n + 1)

theorem P8978324754123545430.correct : P8978324754123545430.Spec := by
  intro n
  simp only [A242255, Nat.add_sub_cancel]

end A242255

/-! ## A242255.P13941019607841357154

`A008578(A242254(n+1)+1)`
-/

namespace A242255.P13941019607841357154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A242254 (n + 1) + 1).toNat

end

end A242255.P13941019607841357154

namespace A242255

/-- `A008578(A242254(n+1)+1)` -/
def P13941019607841357154.Spec : Prop :=
  ∀ n, P13941019607841357154.a n = A242255 (n + 1)

end A242255

/-! ## A242255.P17741375863036651424

`A175787(A242254(n+1)+1)`
-/

namespace A242255.P17741375863036651424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A242254 (n + 1) + 1).toNat

end

end A242255.P17741375863036651424

namespace A242255

/-- `A175787(A242254(n+1)+1)` -/
def P17741375863036651424.Spec : Prop :=
  ∀ n, P17741375863036651424.a n = A242255 (n + 1)

end A242255

/-! ## A242255.P8595904594665454990

`A045344(A242254(n+1)-1)`
-/

namespace A242255.P8595904594665454990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A242254 (n + 1) - 1).toNat

end

end A242255.P8595904594665454990

namespace A242255

/-- `A045344(A242254(n+1)-1)` -/
def P8595904594665454990.Spec : Prop :=
  ∀ n, P8595904594665454990.a n = A242255 (n + 1)

end A242255

/-! ## A242255.P8359853966420894450

`A082500(2*A242254(n+1))`
-/

namespace A242255.P8359853966420894450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A242254 (n + 1)).toNat

end

end A242255.P8359853966420894450

namespace A242255

/-- `A082500(2*A242254(n+1))` -/
def P8359853966420894450.Spec : Prop :=
  ∀ n, P8359853966420894450.a n = A242255 (n + 1)

end A242255

/-! ## A242255.P10542888190481765991

`∪[A006512(n+1), A209619(n+1)]`
-/

namespace A242255.P10542888190481765991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242255.P10542888190481765991

namespace A242255

/-- `∪[A006512(n+1), A209619(n+1)]` -/
def P10542888190481765991.Spec : Prop :=
  ∀ n, (P10542888190481765991.a n : ℤ) = A242255 (n + 1)

end A242255

/-! ## A242255.P9607277742471994482

`p?[A242252(n+1)+A000040(n+2)]`
-/

namespace A242255.P9607277742471994482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242252 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242255.P9607277742471994482

namespace A242255

/-- `p?[A242252(n+1)+A000040(n+2)]` -/
def P9607277742471994482.Spec : Prop :=
  ∀ n, P9607277742471994482.a n = A242255 (n + 1)

end A242255

/-!
# A242256: Primes that are not primes-greedy summable, as defined at A242252.

The programs for A242256, the canonical program `A242256.P8815613757924160173` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242256 has offset 1).

The definition of A242256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242256.P2214303464228049198

`∪[A062459(n+1), A209624(n+1)]`
-/

namespace A242256.P2214303464228049198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P2214303464228049198

namespace A242256

/-- `∪[A062459(n+1), A209624(n+1)]` -/
def P2214303464228049198.Spec : Prop :=
  ∀ n, (P2214303464228049198.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P11599284619727504446

`∪[A110482(n+1), A209624(n+1)]`
-/

namespace A242256.P11599284619727504446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P11599284619727504446

namespace A242256

/-- `∪[A110482(n+1), A209624(n+1)]` -/
def P11599284619727504446.Spec : Prop :=
  ∀ n, (P11599284619727504446.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P9532133482827457117

`∪[A132282(n+1), A209624(n+1)]`
-/

namespace A242256.P9532133482827457117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P9532133482827457117

namespace A242256

/-- `∪[A132282(n+1), A209624(n+1)]` -/
def P9532133482827457117.Spec : Prop :=
  ∀ n, (P9532133482827457117.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P10127475489525438773

`∪[A144953(n+1), A209624(n+1)]`
-/

namespace A242256.P10127475489525438773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P10127475489525438773

namespace A242256

/-- `∪[A144953(n+1), A209624(n+1)]` -/
def P10127475489525438773.Spec : Prop :=
  ∀ n, (P10127475489525438773.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P13476463513243633792

`∪[A154253(n+1), A209624(n+1)]`
-/

namespace A242256.P13476463513243633792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P13476463513243633792

namespace A242256

/-- `∪[A154253(n+1), A209624(n+1)]` -/
def P13476463513243633792.Spec : Prop :=
  ∀ n, (P13476463513243633792.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P13217767002055109710

`∪[A209624(n+1), A216977(n+1)]`
-/

namespace A242256.P13217767002055109710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P13217767002055109710

namespace A242256

/-- `∪[A209624(n+1), A216977(n+1)]` -/
def P13217767002055109710.Spec : Prop :=
  ∀ n, (P13217767002055109710.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P6107084168432391211

`∪[A209624(n+1), A258455(n+1)]`
-/

namespace A242256.P6107084168432391211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242256.P6107084168432391211

namespace A242256

/-- `∪[A209624(n+1), A258455(n+1)]` -/
def P6107084168432391211.Spec : Prop :=
  ∀ n, (P6107084168432391211.a n : ℤ) = A242256 (n + 1)

end A242256

/-! ## A242256.P8815613757924160173

`p?[A175078(2*n+1)+A163985(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242256

/-- `p?[A175078(2*n+1)+A163985(n)]` -/
def P8815613757924160173.Spec : Prop :=
  ∀ n, P8815613757924160173.a n = A242256 (n + 1)

theorem P8815613757924160173.correct : P8815613757924160173.Spec := by
  intro n
  simp only [A242256, Nat.add_sub_cancel]

end A242256

/-! ## A242256.P3035434776495524236

`p?[(n+2)*A330241(A175851(n+1))]`
-/

namespace A242256.P3035434776495524236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A330241 (A175851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242256.P3035434776495524236

namespace A242256

/-- `p?[(n+2)*A330241(A175851(n+1))]` -/
def P3035434776495524236.Spec : Prop :=
  ∀ n, P3035434776495524236.a n = A242256 (n + 1)

end A242256

/-! ## A242256.P10487138205765013407

`record[p?[A121561(n+1)+A026741(n)]]`
-/

namespace A242256.P10487138205765013407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1) + A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242256.P10487138205765013407

namespace A242256

/-- `record[p?[A121561(n+1)+A026741(n)]]` -/
def P10487138205765013407.Spec : Prop :=
  ∀ n, P10487138205765013407.a n = A242256 (n + 1)

end A242256

/-! ## A242256.P3321701883209604118

`p?[record[A175078(n+1)+A074722(n+1)]]`
-/

namespace A242256.P3321701883209604118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1) + A074722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242256.P3321701883209604118

namespace A242256

/-- `p?[record[A175078(n+1)+A074722(n+1)]]` -/
def P3321701883209604118.Spec : Prop :=
  ∀ n, P3321701883209604118.a n = A242256 (n + 1)

end A242256

/-! ## A242256.P13983951865889126921

`p?[A121559(A064722(n+1)+1)+n+1]`
-/

namespace A242256.P13983951865889126921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (A064722 (n + 1) + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242256.P13983951865889126921

namespace A242256

/-- `p?[A121559(A064722(n+1)+1)+n+1]` -/
def P13983951865889126921.Spec : Prop :=
  ∀ n, P13983951865889126921.a n = A242256 (n + 1)

end A242256

/-!
# A242258: Number of summands in s-greedy sum of s(n), where s(n) = A000041(n), the partitions numbers.

The programs for A242258, there is no canonical definition to state claims against.
-/

/-! ## A242258.P17052657137476210700

`A001222(A000265(∑[A051683(n+7)]))`
-/

namespace A242258.P17052657137476210700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A242258.P17052657137476210700

/-! ## A242258.P1716292976308386621

`A043537(A001068(A226653(n+1)²))`
-/

namespace A242258.P1716292976308386621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A001068 (A226653 (n + 1) ^ 2).toNat).toNat

end

end A242258.P1716292976308386621

/-! ## A242258.P13833622740895007904

`A055640(p?[A154958(n)]*A056109(n))`
-/

namespace A242258.P13833622740895007904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A056109 n).toNat

end

end A242258.P13833622740895007904

/-! ## A242258.P1119582023801711176

`A332992(A077313(n+1)+A000040(n+1))`
-/

namespace A242258.P1119582023801711176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A077313 (n + 1) + A000040 (n + 1)).toNat

end

end A242258.P1119582023801711176

/-! ## A242258.P7303344008329460530

`A055640(A014342(n+1)-A346623(n+1))`
-/

namespace A242258.P7303344008329460530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A014342 (n + 1) - A346623 (n + 1)).toNat

end

end A242258.P7303344008329460530

/-!
# A242259: Number of summands in s-greedy sum of s(n), where s(n) = A000009(n) (strict partition numbers).

The programs for A242259, there is no canonical definition to state claims against.
-/

/-! ## A242259.P11009136827174904084

`A306537(A240831(2*(n+1))²)`
-/

namespace A242259.P11009136827174904084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306537 (A240831 (2 * (n + 1)) ^ 2).toNat

end

end A242259.P11009136827174904084

/-! ## A242259.P894865522060841655

`A355813(2^A240831(2*(n+1)))`
-/

namespace A242259.P894865522060841655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355813 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A240831 (2 * (n + 1)) : ℤ))).toNat

end

end A242259.P894865522060841655

/-! ## A242259.P6253634168304964200

`A023109(A240831(2*(n+1))²)%4`
-/

namespace A242259.P6253634168304964200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023109 (A240831 (2 * (n + 1)) ^ 2).toNat) 4

end

end A242259.P6253634168304964200

/-!
# A242260: Primes p such that p^2-2 is semiprime.

The programs for A242260, there is no canonical definition to state claims against.
-/

/-! ## A242260.P7759677054871711524

`p?[n*A008683(abs(2-n²))]`
-/

namespace A242260.P7759677054871711524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 |2 - (n ^ 2 : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242260.P7759677054871711524

/-! ## A242260.P15363817215888776143

`p?[A008683(A067872(n+1))*A004442(n)]`
-/

namespace A242260.P15363817215888776143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A067872 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242260.P15363817215888776143

/-! ## A242260.P7758227888159463937

`p?[A008683(A321322(n+1))*A004442(n)]`
-/

namespace A242260.P7758227888159463937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A321322 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242260.P7758227888159463937

/-! ## A242260.P14027958939423015535

`p?[A008683(A067872(n+1))*A061397(n+1)]`
-/

namespace A242260.P14027958939423015535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A067872 (n + 1)).toNat * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242260.P14027958939423015535

/-! ## A242260.P10237033878519743958

`p?[A008683(A321322(n+1))*A007947(n+1)]`
-/

namespace A242260.P10237033878519743958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A321322 (n + 1)).toNat * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242260.P10237033878519743958

/-!
# A242261: Lexicographically last sequence such that every odd prime is the sum of at least two terms of the sequence.

The programs for A242261, there is no canonical definition to state claims against.
-/

/-! ## A242261.P3141309121221585008

`A284359(Δ[floor(2^n/3)²])`
-/

namespace A242261.P3141309121221585008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (f1 (n + 1) - f1 n).toNat

end

end A242261.P3141309121221585008

/-! ## A242261.P1690399645074195263

`A229219(A148971(n+1))`
-/

namespace A242261.P1690399645074195263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A148971 (n + 1)).toNat

end

end A242261.P1690399645074195263

/-! ## A242261.P8285100325426127493

`A229489(A196118(n+1))`
-/

namespace A242261.P8285100325426127493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229489 (A196118 (n + 1)).toNat

end

end A242261.P8285100325426127493

/-! ## A242261.P13176124510415866170

`A056926(Δ[A291583(n)]²)`
-/

namespace A242261.P13176124510415866170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A242261.P13176124510415866170

/-!
# A242262: Semiprimes of the form k^3 - 1.

The programs for A242262, there is no canonical definition to state claims against.
-/

/-! ## A242262.P3713599553140699539

`(p?[floor(sqrt(A002383(n+2)))-1]+1)^3-1`
-/

namespace A242262.P3713599553140699539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002383 (n + 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 3 - 1

end

end A242262.P3713599553140699539

/-! ## A242262.P3528162586610805463

`(p?[A128815(n+1)]+1)^3-1`
-/

namespace A242262.P3528162586610805463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 3 - 1

end

end A242262.P3528162586610805463

/-! ## A242262.P346576605357441530

`or(-1, A000041(n))+(p?[A128815(n+1)]+1)^3`
-/

namespace A242262.P346576605357441530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 3

end

end A242262.P346576605357441530

/-! ## A242262.P8766176295603173674

`A068601(p?[A128815(n+1)]+1)`
-/

namespace A242262.P8766176295603173674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A242262.P8766176295603173674

/-! ## A242262.P6906891207247085364

`A135300(p?[A128815(n+1)]+1)`
-/

namespace A242262.P6906891207247085364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A242262.P6906891207247085364

/-! ## A242262.P5396503472041128296

`A030653(p?[A128815(n+1)])+3`
-/

namespace A242262.P5396503472041128296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 3

end

end A242262.P5396503472041128296

/-! ## A242262.P14607023026213482519

`∩[A068601(n+1), A189045(n+1)]`
-/

namespace A242262.P14607023026213482519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242262.P14607023026213482519

/-! ## A242262.P18243178907047264831

`∩[A135300(n+1), A189045(n+1)]`
-/

namespace A242262.P18243178907047264831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242262.P18243178907047264831

/-!
# A242264: Numbers that can be written as a sum of numbers using all nonzero decimal digits in descending order and also all nonzero decimal digits in ascending order.

The programs for A242264, there is no canonical definition to state claims against.
-/

/-! ## A242264.P10981211248895374650

`∩[A242226(n+1), A242263(n+1)]`
-/

namespace A242264.P10981211248895374650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242264.P10981211248895374650

/-! ## A242264.P3247284011044108289

`∩[A038123(2*(n+5))-A038123(2*(n+5))%9, A242263(n+1)]`
-/

namespace A242264.P3247284011044108289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038123 (2 * (n + 5)) - Int.tmod (A038123 (2 * (n + 5))) 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242264.P3247284011044108289

/-!
# A242265: Primes that become composite numbers if the most significant digit is removed.

The programs for A242265, there is no canonical definition to state claims against.
-/

/-! ## A242265.P10070714033109700821

`p?[10*n-A005136(A046741(n))]`
-/

namespace A242265.P10070714033109700821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - A005136 (A046741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242265.P10070714033109700821

/-! ## A242265.P1048805687427937683

`p?[A276183(A027623(n))+5*n+4]`
-/

namespace A242265.P1048805687427937683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (A027623 n).toNat + (5 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242265.P1048805687427937683

/-!
# A242266: a(n) = |{0 < g < prime(n): g is a primitive root mod prime(n) with g = sum_{j=1..k} prime(j) for some k > 0}|.

The programs for A242266, there is no canonical definition to state claims against.
-/

/-! ## A242266.P7640100962277178236

`∑{e}[or(A109395(n+1), A117647(n)), #]`
-/

namespace A242266.P7640100962277178236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109395 (n + 1)) (A117647 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A242266.P7640100962277178236

/-! ## A242266.P4412254902838720338

`A001221(A303023(n+1)+A048675(n+1))`
-/

namespace A242266.P4412254902838720338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A303023 (n + 1) + A048675 (n + 1)).toNat

end

end A242266.P4412254902838720338

/-! ## A242266.P8097797792327503127

`A001222(or(A066530(n), A103196(n)))`
-/

namespace A242266.P8097797792327503127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A066530 n) (A103196 n)).toNat

end

end A242266.P8097797792327503127

/-! ## A242266.P11450091537572366342

`A001222(or(A109395(n+1), A117647(n)))`
-/

namespace A242266.P11450091537572366342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A109395 (n + 1)) (A117647 n)).toNat

end

end A242266.P11450091537572366342

/-! ## A242266.P6881884008402728995

`A005087(A109395(n+1)+A078441(n+1))`
-/

namespace A242266.P6881884008402728995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A109395 (n + 1) + A078441 (n + 1)).toNat

end

end A242266.P6881884008402728995

/-!
# A242267: Numbers that can be written as a sum of numbers using all decimal digits in descending order.

The programs for A242267, there is no canonical definition to state claims against.
-/

/-! ## A242267.P13842555613291910176

`A008591(A247064(n+5)%A341764(n+3))`
-/

namespace A242267.P13842555613291910176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (Int.tmod (A247064 (n + 5)) (A341764 (n + 3))).toNat

end

end A242267.P13842555613291910176

/-!
# A242268: Squares not ending in 00 that remain squares if prefixed with the digit 1.

The programs for A242268, there is no canonical definition to state claims against.
-/

/-! ## A242268.P17619677123862230159

`A167035(A224082(n+1)*A293507(n))`
-/

namespace A242268.P17619677123862230159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167035 (A224082 (n + 1) * A293507 n).toNat

end

end A242268.P17619677123862230159

/-!
# A242273: Numbers n such that n*2^n - 1 is a semiprime.

The programs for A242273, there is no canonical definition to state claims against.
-/

/-! ## A242273.P9777951887763763776

`eq[2, A366899(n+1)]+1`
-/

namespace A242273.P9777951887763763776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242273.P9777951887763763776

/-! ## A242273.P9000115129805982664

`eq[4, A366898(n+1)]+1`
-/

namespace A242273.P9000115129805982664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242273.P9000115129805982664

/-! ## A242273.P8987283140257354712

`eq[2, A366899(A028310(n))]`
-/

namespace A242273.P8987283140257354712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366899 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242273.P8987283140257354712

/-! ## A242273.P2110264179635879645

`A020725(eq[2, A366899(n+1)])`
-/

namespace A242273.P2110264179635879645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242273.P2110264179635879645

/-! ## A242273.P17937658432966488360

`eq[2, A366899(A233583(n+1))]`
-/

namespace A242273.P17937658432966488360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366899 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242273.P17937658432966488360

/-!
# A242274: Numbers k such that k*3^k - 1 is semiprime.

The programs for A242274, there is no canonical definition to state claims against.
-/

/-! ## A242274.P9659338113890023508

`eq[A126241(A036454(n+1)), A126241(n+1)]`
-/

namespace A242274.P9659338113890023508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A036454 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242274.P9659338113890023508

/-! ## A242274.P418736174006245087

`eq[A007814(n+2)+1, A068073(A036454(n+1))]`
-/

namespace A242274.P418736174006245087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A036454 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242274.P418736174006245087

/-!
# A242275: Number of isomorphism classes of 2-reductive abelian/medial quandles.

The programs for A242275, there is no canonical definition to state claims against.
-/

/-! ## A242275.P14171111314016106287

`A165200(n+1)-A257351(n+1)`
-/

namespace A242275.P14171111314016106287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165200 (n + 1) - A257351 (n + 1)

end

end A242275.P14171111314016106287

/-! ## A242275.P5920986505658176226

`A371448(A148077(n))`
-/

namespace A242275.P5920986505658176226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (A148077 n).toNat

end

end A242275.P5920986505658176226

/-! ## A242275.P7588488991906740567

`A371448(A148078(n))`
-/

namespace A242275.P7588488991906740567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (A148078 n).toNat

end

end A242275.P7588488991906740567

/-!
# A242277: Least positive primitive root g < prime(n) mod prime(n) such that g is the sum of the first k primes for some k > 0, or 0 if such a number g does not exist.

The programs for A242277, there is no canonical definition to state claims against.
-/

/-! ## A242277.P9230014324431093829

`∑{p}[A241476(n+1)²², #]`
-/

namespace A242277.P9230014324431093829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241476 (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A242277.P9230014324431093829

/-! ## A242277.P2772726683355550191

`A008472(A241476(n+1)^3)`
-/

namespace A242277.P2772726683355550191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A241476 (n + 1) ^ 3).toNat

end

end A242277.P2772726683355550191

/-! ## A242277.P18169543491639543884

`A183101(A241476(n+1)^3)`
-/

namespace A242277.P18169543491639543884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183101 (A241476 (n + 1) ^ 3).toNat

end

end A242277.P18169543491639543884

/-! ## A242277.P9901212283046684

`A008472(A241476(n+1)²²)`
-/

namespace A242277.P9901212283046684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((A241476 (n + 1) ^ 2) ^ 2).toNat

end

end A242277.P9901212283046684

/-! ## A242277.P11267613113506242518

`A241476(n+1)*A293895(A038754(n))`
-/

namespace A242277.P11267613113506242518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241476 (n + 1) * A293895 (A038754 n).toNat

end

end A242277.P11267613113506242518

/-!
# A242278: Number of non-palindromic n-tuples of 3 distinct elements.

The programs for A242278, the canonical program `A242278.P1128140246244468018` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242278 has offset 1).

The definition of A242278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242278.P13234040442706533520

`3^(n+1)-3^ceil((n+1)/2)`
-/

namespace A242278.P13234040442706533520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℚ) - (3 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ)

end

end A242278.P13234040442706533520

namespace A242278

/-- `3^(n+1)-3^ceil((n+1)/2)` -/
def P13234040442706533520.Spec : Prop :=
  ∀ n, P13234040442706533520.a n = (A242278 (n + 1) : ℚ)

end A242278

/-! ## A242278.P1128140246244468018

`6*A167993(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242278

/-- `6*A167993(n+1)` -/
def P1128140246244468018.Spec : Prop :=
  ∀ n, P1128140246244468018.a n = A242278 (n + 1)

theorem P1128140246244468018.correct : P1128140246244468018.Spec := by
  intro n
  simp only [A242278, Nat.add_sub_cancel]

end A242278

/-! ## A242278.P4466308487326956457

`ogf(6x/(1-3x-3x^2+9x^3))`
-/

namespace A242278.P4466308487326956457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -3, -3, 9] n

end

end A242278.P4466308487326956457

namespace A242278

/-- `ogf(6x/(1-3x-3x^2+9x^3))` -/
def P4466308487326956457.Spec : Prop :=
  ∀ n, P4466308487326956457.a n = A242278 (n + 1)

end A242278

/-!
# A242279: Number of inequivalent (mod D_4) ways four checkers can be placed on an n X n board.

The programs for A242279, there is no canonical definition to state claims against.
-/

/-! ## A242279.P14354767784379121649

`A054252(∑[(n+2)²]+n-1)`
-/

namespace A242279.P14354767784379121649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A242279.P14354767784379121649

/-! ## A242279.P14548063791639306791

`record[A054252(eq[1, A054252(n+4)])]`
-/

namespace A242279.P14548063791639306791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242279.P14548063791639306791

/-! ## A242279.P14586204787922960783

`record[A054252(lt[A054252(n+4), 2])]`
-/

namespace A242279.P14586204787922960783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242279.P14586204787922960783

/-!
# A242281: Smaller member of a Sophie Germain pair in which each member of the pair is the smaller of its prime pair (p, (p*p*p)+2).

The programs for A242281, there is no canonical definition to state claims against.
-/

/-! ## A242281.P8828349430144263432

`∩[A048637(n+1), A004526(A048637(n+1))]`
-/

namespace A242281.P8828349430144263432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048637 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242281.P8828349430144263432

/-!
# A242284: Greedy residue sequence of triangular numbers 3, 6, 10, 15, ...

The programs for A242284, there is no canonical definition to state claims against.
-/

/-! ## A242284.P14397430642008773248

`A263635(2*n+1)+A073423(A143461(n))`
-/

namespace A242284.P14397430642008773248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263635 (2 * n + 1) + A073423 (A143461 n).toNat

end

end A242284.P14397430642008773248

/-! ## A242284.P11008396892307321884

`A263635(2*n+1)+A010054(A263666(n+1))`
-/

namespace A242284.P11008396892307321884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263635 (2 * n + 1) + A010054 (A263666 (n + 1)).toNat

end

end A242284.P11008396892307321884

/-! ## A242284.P5810937438362367307

`A010054(A143461(n))+C(n, n²)`
-/

namespace A242284.P5810937438362367307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A143461 n).toNat + (Nat.choose n (n ^ 2) : ℤ)

end

end A242284.P5810937438362367307

/-! ## A242284.P15219500288252177103

`A000108(a(n-1))*A010054(A143461(n))` with `a(0)=2`
-/

namespace A242284.P15219500288252177103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000108 (a (n - 1)).toNat * A010054 (A143461 n).toNat

end

end A242284.P15219500288252177103

/-! ## A242284.P3512877018896615928

`A010054(A265064(n))+char[∑[n]]`
-/

namespace A242284.P3512877018896615928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A265064 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A242284.P3512877018896615928

/-!
# A242285: Number of terms in the greedy sum for the n-th triangular number.

The programs for A242285, there is no canonical definition to state claims against.
-/

/-! ## A242285.P12418069721174367384

`A256911(n+2)+A057427(n)`
-/

namespace A242285.P12418069721174367384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (n + 2) + A057427 n

end

end A242285.P12418069721174367384

/-! ## A242285.P17600324505790734882

`A256911(n+2)+char[A052938(n)]`
-/

namespace A242285.P17600324505790734882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A242285.P17600324505790734882

/-! ## A242285.P7997157784286009777

`A256911(n+2)+A004273(n)%2`
-/

namespace A242285.P7997157784286009777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (n + 2) + Int.tmod (A004273 n) 2

end

end A242285.P7997157784286009777

/-! ## A242285.P9473460374062510377

`A256911(n+2)+A146277(a(n-1))` with `a(0)=1`
-/

namespace A242285.P9473460374062510377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256911 (n + 2) + A146277 (a (n - 1)).toNat

end

end A242285.P9473460374062510377

/-! ## A242285.P10359895354206910967

`A256911(A029159(a(n-1))+n+1)+1` with `a(0)=1`
-/

namespace A242285.P10359895354206910967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256911 (A029159 (a (n - 1)).toNat + (n + 1 : ℤ)).toNat + 1

end

end A242285.P10359895354206910967

/-! ## A242285.P5999346060188716777

`A256911(n+2)+A178334(A178334(n))`
-/

namespace A242285.P5999346060188716777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (n + 2) + A178334 (A178334 n).toNat

end

end A242285.P5999346060188716777

/-! ## A242285.P5881672116346469302

`A256911(n+2)+A001221(A061142(n+1))`
-/

namespace A242285.P5881672116346469302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (n + 2) + A001221 (A061142 (n + 1)).toNat

end

end A242285.P5881672116346469302

/-! ## A242285.P4453226990961835310

`A323239(A007504(n+1)-A007504(n))+A256911(n+2)`
-/

namespace A242285.P4453226990961835310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A007504 (n + 1) - A007504 n).toNat + A256911 (n + 2)

end

end A242285.P4453226990961835310

/-!
# A242286: Positive integers k for which the k-th triangular number is greedy-summable.

The programs for A242286, the canonical program `A242286.P1527126420096053857` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242286 has offset 1).

The definition of A242286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242286.P735683826450887643

`eq[0, A242284(n+2)]+2`
-/

namespace A242286.P735683826450887643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242284 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242286.P735683826450887643

namespace A242286

/-- `eq[0, A242284(n+2)]+2` -/
def P735683826450887643.Spec : Prop :=
  ∀ n, (P735683826450887643.a n : ℤ) = A242286 (n + 1)

end A242286

/-! ## A242286.P18093804601949349089

`floor(sqrt(2*A242287(n+1)))`
-/

namespace A242286.P18093804601949349089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A242287 (n + 1))

end

end A242286.P18093804601949349089

namespace A242286

/-- `floor(sqrt(2*A242287(n+1)))` -/
def P18093804601949349089.Spec : Prop :=
  ∀ n, P18093804601949349089.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P1527126420096053857

`lt[4, (n-2)*a(A002260(n+1)-1)]` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242286

/-- `lt[4, (n-2)*a(A002260(n+1)-1)]` -/
def P1527126420096053857.Spec : Prop :=
  ∀ n, (P1527126420096053857.a n : ℤ) = A242286 (n + 1)

theorem P1527126420096053857.correct : P1527126420096053857.Spec := by
  intro n
  simp only [A242286, Nat.add_sub_cancel]

end A242286

/-! ## A242286.P1617872532320496362

`A080098(A242287(n+1))`
-/

namespace A242286.P1617872532320496362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A242287 (n + 1)).toNat

end

end A242286.P1617872532320496362

namespace A242286

/-- `A080098(A242287(n+1))` -/
def P1617872532320496362.Spec : Prop :=
  ∀ n, P1617872532320496362.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P6802569848725611702

`A294317(A242287(n+1)-2)`
-/

namespace A242286.P6802569848725611702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A242287 (n + 1) - 2).toNat

end

end A242286.P6802569848725611702

namespace A242286

/-- `A294317(A242287(n+1)-2)` -/
def P6802569848725611702.Spec : Prop :=
  ∀ n, P6802569848725611702.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P10496998900765664577

`A113881(∩[A242287(n+1), C(n+1, 2)])`
-/

namespace A242286.P10496998900765664577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242287 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A242286.P10496998900765664577

namespace A242286

/-- `A113881(∩[A242287(n+1), C(n+1, 2)])` -/
def P10496998900765664577.Spec : Prop :=
  ∀ n, P10496998900765664577.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P15215654919572211930

`A113881(or(A000038(n), A242287(n+1)))`
-/

namespace A242286.P15215654919572211930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (Int.lor (A000038 n) (A242287 (n + 1))).toNat

end

end A242286.P15215654919572211930

namespace A242286

/-- `A113881(or(A000038(n), A242287(n+1)))` -/
def P15215654919572211930.Spec : Prop :=
  ∀ n, P15215654919572211930.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P804061282144352625

`A113881(A242287(n+1)+8*A000038(n))`
-/

namespace A242286.P804061282144352625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A242287 (n + 1) + 8 * A000038 n).toNat

end

end A242286.P804061282144352625

namespace A242286

/-- `A113881(A242287(n+1)+8*A000038(n))` -/
def P804061282144352625.Spec : Prop :=
  ∀ n, P804061282144352625.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P12485775714253651886

`A113881(A242287(n+1)+A000038(n)²²)`
-/

namespace A242286.P12485775714253651886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A242287 (n + 1) + (A000038 n ^ 2) ^ 2).toNat

end

end A242286.P12485775714253651886

namespace A242286

/-- `A113881(A242287(n+1)+A000038(n)²²)` -/
def P12485775714253651886.Spec : Prop :=
  ∀ n, P12485775714253651886.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P4084264815422779782

`A113881(2*A242287(n+1)-A242287(n+1))`
-/

namespace A242286.P4084264815422779782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (2 * A242287 (n + 1) - A242287 (n + 1)).toNat

end

end A242286.P4084264815422779782

namespace A242286

/-- `A113881(2*A242287(n+1)-A242287(n+1))` -/
def P4084264815422779782.Spec : Prop :=
  ∀ n, P4084264815422779782.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P14954051769223394035

`A113881(A242287(n+1))+A000038(A113881(n+1))`
-/

namespace A242286.P14954051769223394035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A242287 (n + 1)).toNat + A000038 (A113881 (n + 1)).toNat

end

end A242286.P14954051769223394035

namespace A242286

/-- `A113881(A242287(n+1))+A000038(A113881(n+1))` -/
def P14954051769223394035.Spec : Prop :=
  ∀ n, P14954051769223394035.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P5470606800497231575

`A113881(A242287(n+1)+1)-1`
-/

namespace A242286.P5470606800497231575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A242287 (n + 1) + 1).toNat - 1

end

end A242286.P5470606800497231575

namespace A242286

/-- `A113881(A242287(n+1)+1)-1` -/
def P5470606800497231575.Spec : Prop :=
  ∀ n, P5470606800497231575.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P10145075792198734701

`A002260(A242287(n+1))%A017053(n)`
-/

namespace A242286.P10145075792198734701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A242287 (n + 1)).toNat) (A017053 n)

end

end A242286.P10145075792198734701

namespace A242286

/-- `A002260(A242287(n+1))%A017053(n)` -/
def P10145075792198734701.Spec : Prop :=
  ∀ n, P10145075792198734701.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P8495513967533800240

`lcm(A002260(A242287(n+1)), A020985(n))`
-/

namespace A242286.P8495513967533800240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (A242287 (n + 1)).toNat) (A020985 n)

end

end A242286.P8495513967533800240

namespace A242286

/-- `lcm(A002260(A242287(n+1)), A020985(n))` -/
def P8495513967533800240.Spec : Prop :=
  ∀ n, (P8495513967533800240.a n : ℤ) = A242286 (n + 1)

end A242286

/-! ## A242286.P12112973820958990610

`A002260(or(A178333(n), A242287(n+1)))`
-/

namespace A242286.P12112973820958990610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lor (A178333 n) (A242287 (n + 1))).toNat

end

end A242286.P12112973820958990610

namespace A242286

/-- `A002260(or(A178333(n), A242287(n+1)))` -/
def P12112973820958990610.Spec : Prop :=
  ∀ n, P12112973820958990610.a n = A242286 (n + 1)

end A242286

/-! ## A242286.P2217345749814932175

`A002260(lcm(A242287(n+1), A343785(n+1)))`
-/

namespace A242286.P2217345749814932175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lcm (A242287 (n + 1)) (A343785 (n + 1)))

end

end A242286.P2217345749814932175

namespace A242286

/-- `A002260(lcm(A242287(n+1), A343785(n+1)))` -/
def P2217345749814932175.Spec : Prop :=
  ∀ n, P2217345749814932175.a n = A242286 (n + 1)

end A242286

/-!
# A242287: Greedy-summable triangular numbers.

The programs for A242287, the canonical program `A242287.P1452863974751054915` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242287 has offset 1).

The definition of A242287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242287.P1452863974751054915

`A000217(A242286(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242287

/-- `A000217(A242286(n+1))` -/
def P1452863974751054915.Spec : Prop :=
  ∀ n, P1452863974751054915.a n = A242287 (n + 1)

theorem P1452863974751054915.correct : P1452863974751054915.Spec := by
  intro n
  simp only [A242287, Nat.add_sub_cancel]

end A242287

/-! ## A242287.P12418288647764952630

`A161680(A242286(n+1)+1)`
-/

namespace A242287.P12418288647764952630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A242286 (n + 1) + 1).toNat

end

end A242287.P12418288647764952630

namespace A242287

/-- `A161680(A242286(n+1)+1)` -/
def P12418288647764952630.Spec : Prop :=
  ∀ n, P12418288647764952630.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P16614863771505245404

`A179865(A242286(n+1)+1)`
-/

namespace A242287.P16614863771505245404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A242286 (n + 1) + 1).toNat

end

end A242287.P16614863771505245404

namespace A242287

/-- `A179865(A242286(n+1)+1)` -/
def P16614863771505245404.Spec : Prop :=
  ∀ n, P16614863771505245404.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P16770993057725154655

`A000124(eq[0, A242284(n+2)]+2)-1`
-/

namespace A242287.P16770993057725154655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1

end

end A242287.P16770993057725154655

namespace A242287

/-- `A000124(eq[0, A242284(n+2)]+2)-1` -/
def P16770993057725154655.Spec : Prop :=
  ∀ n, P16770993057725154655.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P16774711477188482874

`A000124(A242286(n+1))-A257679(2*n+1)`
-/

namespace A242287.P16774711477188482874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A242286 (n + 1)).toNat - A257679 (2 * n + 1)

end

end A242287.P16774711477188482874

namespace A242287

/-- `A000124(A242286(n+1))-A257679(2*n+1)` -/
def P16774711477188482874.Spec : Prop :=
  ∀ n, P16774711477188482874.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P7355412626852810916

`A179865(A054977(3*n+2)+eq[0, A242284(n+2)]+2)`
-/

namespace A242287.P7355412626852810916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A054977 (3 * n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A242287.P7355412626852810916

namespace A242287

/-- `A179865(A054977(3*n+2)+eq[0, A242284(n+2)]+2)` -/
def P7355412626852810916.Spec : Prop :=
  ∀ n, P7355412626852810916.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P15529030893588519288

`A000124(A242286(n+1))-A327515(A054844(n+1))`
-/

namespace A242287.P15529030893588519288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A242286 (n + 1)).toNat - A327515 (A054844 (n + 1)).toNat

end

end A242287.P15529030893588519288

namespace A242287

/-- `A000124(A242286(n+1))-A327515(A054844(n+1))` -/
def P15529030893588519288.Spec : Prop :=
  ∀ n, P15529030893588519288.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P11019816136261579021

`A007318(A055998(A242286(n+1)%A024408(n+1)))`
-/

namespace A242287.P11019816136261579021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055998 (Int.tmod (A242286 (n + 1)) (A024408 (n + 1))).toNat).toNat

end

end A242287.P11019816136261579021

namespace A242287

/-- `A007318(A055998(A242286(n+1)%A024408(n+1)))` -/
def P11019816136261579021.Spec : Prop :=
  ∀ n, P11019816136261579021.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P4082301570541380145

`A032742(A242286(n+1)+A242286(n+1)²)`
-/

namespace A242287.P4082301570541380145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A242286 (n + 1) + A242286 (n + 1) ^ 2).toNat

end

end A242287.P4082301570541380145

namespace A242287

/-- `A032742(A242286(n+1)+A242286(n+1)²)` -/
def P4082301570541380145.Spec : Prop :=
  ∀ n, P4082301570541380145.a n = A242287 (n + 1)

end A242287

/-! ## A242287.P1170913711214234991

`A032742((A242286(n+1)+1)*A242286(n+1))`
-/

namespace A242287.P1170913711214234991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((A242286 (n + 1) + 1) * A242286 (n + 1)).toNat

end

end A242287.P1170913711214234991

namespace A242287

/-- `A032742((A242286(n+1)+1)*A242286(n+1))` -/
def P1170913711214234991.Spec : Prop :=
  ∀ n, P1170913711214234991.a n = A242287 (n + 1)

end A242287

/-!
# A242290: Positive integers k for which the k-th tetrahedral number is greedy-summable.

The programs for A242290, there is no canonical definition to state claims against.
-/

/-! ## A242290.P7400219242888376522

`eq[0, A242288(n+2)]+2`
-/

namespace A242290.P7400219242888376522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242290.P7400219242888376522

/-! ## A242290.P14034812217929895364

`A057544(eq[0, A242288(n+2)])`
-/

namespace A242290.P14034812217929895364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242290.P14034812217929895364

/-! ## A242290.P13916167964593800017

`A057544(lt[A242288(n+2), 1])`
-/

namespace A242290.P13916167964593800017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242290.P13916167964593800017

/-! ## A242290.P16503593806732896311

`eq[0, A242288(A233583(n+1))]`
-/

namespace A242290.P16503593806732896311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242290.P16503593806732896311

/-! ## A242290.P14530910181895880522

`lt[A242288(A233583(n+1)), A054977(n)]`
-/

namespace A242290.P14530910181895880522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242290.P14530910181895880522

/-!
# A242291: Greedy-summable tetrahedral numbers.

The programs for A242291, there is no canonical definition to state claims against.
-/

/-! ## A242291.P15602713477114322129

`A000292(A242290(n+1))`
-/

namespace A242291.P15602713477114322129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A242290 (n + 1)).toNat

end

end A242291.P15602713477114322129

/-! ## A242291.P8623458927582379951

`A000292(eq[0, A242288(n+2)]+2)`
-/

namespace A242291.P8623458927582379951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A242291.P8623458927582379951

/-! ## A242291.P17486067887032143702

`A027480(eq[0, A242288(n+2)]+2)/3`
-/

namespace A242291.P17486067887032143702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) : ℚ) / 3

end

end A242291.P17486067887032143702

/-! ## A242291.P10864025416897524470

`A210440(eq[0, A242288(n+2)]+2)/4`
-/

namespace A242291.P10864025416897524470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) : ℚ) / 4

end

end A242291.P10864025416897524470

/-! ## A242291.P3291142731405327331

`C(A057544(eq[0, A242288(n+2)]+2), 3)`
-/

namespace A242291.P3291142731405327331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242288 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)).toNat 3

end

end A242291.P3291142731405327331

/-!
# A242295: Positive integers k for which k^3 is greedy-summable.

The programs for A242295, there is no canonical definition to state claims against.
-/

/-! ## A242295.P17684406723178461300

`root(A242296(n+1), 3)`
-/

namespace A242295.P17684406723178461300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A242296 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A242295.P17684406723178461300

/-! ## A242295.P4145138599295214820

`eq[0, A242293(n+2)]+2`
-/

namespace A242295.P4145138599295214820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242295.P4145138599295214820

/-! ## A242295.P16228046513019247989

`lt[A242293(round(acot(n)+n)), 1]`
-/

namespace A242295.P16228046513019247989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A242295.P16228046513019247989

/-! ## A242295.P15151075470370283621

`A243427(eq[0, A242293(n+2)])`
-/

namespace A242295.P15151075470370283621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242295.P15151075470370283621

/-! ## A242295.P968212113755659129

`A243427(lt[A242293(n+2), 1])`
-/

namespace A242295.P968212113755659129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242295.P968212113755659129

/-! ## A242295.P8514556941851002917

`eq[0, A242293(A233583(n+1))]`
-/

namespace A242295.P8514556941851002917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242295.P8514556941851002917

/-! ## A242295.P1920013167238625636

`lt[A242293(A233583(n+1)), A057427(n)]`
-/

namespace A242295.P1920013167238625636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242295.P1920013167238625636

/-!
# A242296: Greedy-summable cubes.

The programs for A242296, there is no canonical definition to state claims against.
-/

/-! ## A242296.P2452718669392582729

`A242295(n+1)^3`
-/

namespace A242296.P2452718669392582729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242295 (n + 1) ^ 3

end

end A242296.P2452718669392582729

/-! ## A242296.P14396055030947962836

`(eq[0, A242293(n+2)]+2)^3`
-/

namespace A242296.P14396055030947962836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) ^ 3

end

end A242296.P14396055030947962836

/-! ## A242296.P11436550915911928879

`A000578(A242295(n+1))`
-/

namespace A242296.P11436550915911928879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A242295 (n + 1)).toNat

end

end A242296.P11436550915911928879

/-! ## A242296.P14506012334749193650

`record[A242295(A152271(n))^3]`
-/

namespace A242296.P14506012334749193650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242295 (A152271 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242296.P14506012334749193650

/-! ## A242296.P11454115328903889388

`A243427(eq[0, A242293(n+2)])^3`
-/

namespace A242296.P11454115328903889388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 3

end

end A242296.P11454115328903889388

/-! ## A242296.P15866905193380539725

`A243427(lt[A242293(n+2), 1])^3`
-/

namespace A242296.P15866905193380539725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242293 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 3

end

end A242296.P15866905193380539725

/-! ## A242296.P16175420666940300931

`A242295(A000027(n+1))²²/A242295(n+1)`
-/

namespace A242296.P16175420666940300931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A242295 (A000027 (n + 1)).toNat ^ 2) ^ 2 : ℚ) / (A242295 (n + 1) : ℚ)

end

end A242296.P16175420666940300931

/-!
# A242297: Record high values in A222208.

The programs for A242297, there is no canonical definition to state claims against.
-/

/-! ## A242297.P15838251523080591846

`record[A222208(n+1)]`
-/

namespace A242297.P15838251523080591846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242297.P15838251523080591846

/-! ## A242297.P647046558037199128

`record[A309954(A008576(n))]`
-/

namespace A242297.P647046558037199128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242297.P647046558037199128

/-! ## A242297.P1296455046704984602

`record[A006047(n)%A092188(n+2)]`
-/

namespace A242297.P1296455046704984602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006047 n) (A092188 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242297.P1296455046704984602

/-! ## A242297.P5559462945035307110

`record[A338854(A023706(n+1)-A057427(n))]`
-/

namespace A242297.P5559462945035307110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A023706 (n + 1) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242297.P5559462945035307110

/-! ## A242297.P3643652894119669185

`record[A338854(A043333(n+1)-A057427(n))]`
-/

namespace A242297.P3643652894119669185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A043333 (n + 1) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242297.P3643652894119669185

/-!
# A242298: Once a number in this sequence is divisible by all numbers 1 to m, subsequent terms are constrained to have the same property; choose the smallest permissible number that is greater than the previous term.

The programs for A242298, there is no canonical definition to state claims against.
-/

/-! ## A242298.P5516955637796482510

`a(n-1)+A368777(a(n-1))` with `a(0)=1`
-/

namespace A242298.P5516955637796482510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A368777 (a (n - 1)).toNat

end

end A242298.P5516955637796482510

/-! ## A242298.P10212432837131079284

`∑[A307616(A240849(n+1))]`
-/

namespace A242298.P10212432837131079284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A240849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242298.P10212432837131079284

/-! ## A242298.P4580464078173607271

`∑[∏[A139549(A001043(n+1))]]`
-/

namespace A242298.P4580464078173607271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139549 (A001043 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242298.P4580464078173607271

/-! ## A242298.P10012771988852558335

`record[gcd(A140067(2*n+1), A140067(2*(n+1)))]`
-/

namespace A242298.P10012771988852558335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140067 (2 * n + 1)) (A140067 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242298.P10012771988852558335

/-!
# A242299: a(n) is the smallest composite number ending in 1, 3, 7, or 9 with n digits whose first n-1 digits are a(n-1).

The programs for A242299, there is no canonical definition to state claims against.
-/

/-! ## A242299.P12281964933441079806

`A000122(3*(n+1))+lcm(10, a(n-1))+1` with `a(0)=9`
-/

namespace A242299.P12281964933441079806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A000122 (3 * (n + 1)) + (Int.lcm 10 (a (n - 1)) + 1 : ℤ)

end

end A242299.P12281964933441079806

