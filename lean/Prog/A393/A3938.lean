import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C026
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A393801: Decimal expansion of 1 - 2/sqrt(5).

The programs for A393801, there is no canonical definition to state claims against.
-/

/-! ## A393801.P17605285229213769109

`9-A010532(n)`
-/

namespace A393801.P17605285229213769109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010532 (n + 1)

end

end A393801.P17605285229213769109

/-!
# A393803: Numbers whose number of nonzero digits is identical in base 2 and 3.

The programs for A393803, the canonical program `A393803.P3807868099825041291` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393803 has offset 1).

The definition of A393803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393803.P3807868099825041291

`eq[A000120(n), A160384(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A393803

/-- `eq[A000120(n), A160384(n)]` -/
def P3807868099825041291.Spec : Prop :=
  ∀ n, (P3807868099825041291.a n : ℤ) = A393803 (n + 1)

theorem P3807868099825041291.correct : P3807868099825041291.Spec := by
  intro n
  simp only [A393803, Nat.add_sub_cancel]

end A393803

/-! ## A393803.P12407947350800969629

`eq[A081603(n), A180017(n)]`
-/

namespace A393803.P12407947350800969629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P12407947350800969629

namespace A393803

/-- `eq[A081603(n), A180017(n)]` -/
def P12407947350800969629.Spec : Prop :=
  ∀ n, (P12407947350800969629.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P16725863945992024116

`eq[A000120(n), A000120(A289831(n))]`
-/

namespace A393803.P16725863945992024116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P16725863945992024116

namespace A393803

/-- `eq[A000120(n), A000120(A289831(n))]` -/
def P16725863945992024116.Spec : Prop :=
  ∀ n, (P16725863945992024116.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P14833355644149550909

`eq[A000120(n), A000120(A023717(n))]`
-/

namespace A393803.P14833355644149550909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P14833355644149550909

namespace A393803

/-- `eq[A000120(n), A000120(A023717(n))]` -/
def P14833355644149550909.Spec : Prop :=
  ∀ n, (P14833355644149550909.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P13359421346921509864

`eq[A000120(n), A160385(A023709(n+1))]`
-/

namespace A393803.P13359421346921509864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A023709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P13359421346921509864

namespace A393803

/-- `eq[A000120(n), A160385(A023709(n+1))]` -/
def P13359421346921509864.Spec : Prop :=
  ∀ n, (P13359421346921509864.a n : ℤ) = A393803 (n + 1)

end A393803

/-!
# A393804: The maximal coefficient in the expansion of Product_{j=0..n} (Sum_{k=1..2^j} x_k).

The programs for A393804, there is no canonical definition to state claims against.
-/

/-! ## A393804.P8316724093847141424

`∏[∑[A010349(A219915(n+3))%2]]`
-/

namespace A393804.P8316724093847141424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010349 (A219915 (n + 3)).toNat) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P8316724093847141424

/-! ## A393804.P4475606207061596394

`∏[A134021(A273873(n+1))]`
-/

namespace A393804.P4475606207061596394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A273873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P4475606207061596394

/-! ## A393804.P4294604286405046389

`∏[∑[A004593(A358377(3*n+2))]]`
-/

namespace A393804.P4294604286405046389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (A358377 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P4294604286405046389

/-! ## A393804.P8186469893651993778

`∏[A035170(∏[A000120(3*n+1)])]`
-/

namespace A393804.P8186469893651993778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P8186469893651993778

/-! ## A393804.P11772848314669994211

`∏[∑[A030190(A323697(n+1))]]`
-/

namespace A393804.P11772848314669994211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A323697 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P11772848314669994211

/-!
# A393806: Palindromes that have only one largest digit (strict maximum).

The programs for A393806, there is no canonical definition to state claims against.
-/

/-! ## A393806.P11353332672634264288

`filter[A343524(n+1), A196368(#)]`
-/

namespace A393806.P11353332672634264288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A393806.P11353332672634264288

/-! ## A393806.P13381747223386622094

`∩[A343524(n+1), A056142(n)]`
-/

namespace A393806.P13381747223386622094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P13381747223386622094

/-! ## A393806.P726989901176190994

`∩[A043096(n+1), A343524(n+1)]`
-/

namespace A393806.P726989901176190994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P726989901176190994

/-! ## A393806.P10785112900365409295

`∩[A201982(n+1), A343524(n+1)]`
-/

namespace A393806.P10785112900365409295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P10785112900365409295

/-! ## A393806.P16877920105658429643

`∩[A241157(n+1), A343524(n+1)]`
-/

namespace A393806.P16877920105658429643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P16877920105658429643

/-!
# A393808: a(n) = Sum_{k=1..n} gcd(k^4,n).

The programs for A393808, there is no canonical definition to state claims against.
-/

/-! ## A393808.P4922227676923900606

`and(A359085(n+1), A397733(n+1))`
-/

namespace A393808.P4922227676923900606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359085 (n + 1)) (A397733 (n + 1))

end

end A393808.P4922227676923900606

/-! ## A393808.P18008824189976420695

`A397733(n+1)+A000007(A266470(2*(n+2)))`
-/

namespace A393808.P18008824189976420695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397733 (n + 1) + A000007 (A266470 (2 * (n + 2))).toNat

end

end A393808.P18008824189976420695

/-! ## A393808.P15973978939983361124

`A397733(n+1)+A347438(A000043(n+1))`
-/

namespace A393808.P15973978939983361124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397733 (n + 1) + A347438 (A000043 (n + 1)).toNat

end

end A393808.P15973978939983361124

/-! ## A393808.P2647187707681409796

`and(A152388(n+1), A397733(n+1))`
-/

namespace A393808.P2647187707681409796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A397733 (n + 1))

end

end A393808.P2647187707681409796

/-! ## A393808.P13825636721832594805

`and(A383046(n+3), A397733(n+1))`
-/

namespace A393808.P13825636721832594805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A383046 (n + 3)) (A397733 (n + 1))

end

end A393808.P13825636721832594805

/-!
# A393809: Primes p such that p^2 = (a+b+c)*b + 1 for some primitive Pythagorean triple (a,b,c).

The programs for A393809, there is no canonical definition to state claims against.
-/

/-! ## A393809.P3810681270552648000

`p?[A395517(n+1)]`
-/

namespace A393809.P3810681270552648000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393809.P3810681270552648000

/-! ## A393809.P3085440483843896075

`filter[A395517(n+1), A010051(#)]`
-/

namespace A393809.P3085440483843896075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A393809.P3085440483843896075

/-! ## A393809.P4269428792100616451

`filter[A395517(n+1), A069513(#)]`
-/

namespace A393809.P4269428792100616451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A393809.P4269428792100616451

/-!
# A393813: Among all the numbers k such that 0 <= k < n and {phi * k} < {phi * n}, a(n) is the one maximizing {phi * k}, where {} denotes the fractional part and phi = A001622.

The programs for A393813, there is no canonical definition to state claims against.
-/

/-! ## A393813.P15432024674070790858

`n+1-A054065(A054068(A054066(n+1)))`
-/

namespace A393813.P15432024674070790858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A054065 (A054068 (A054066 (n + 1)).toNat).toNat

end

end A393813.P15432024674070790858

/-! ## A393813.P18416399886238728618

`n+1-A194832(∑[n+1])`
-/

namespace A393813.P18416399886238728618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A194832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393813.P18416399886238728618

/-! ## A393813.P15887523155710292710

`A084532(A054347(n+1))-1`
-/

namespace A393813.P15887523155710292710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (A054347 (n + 1)).toNat - 1

end

end A393813.P15887523155710292710

/-! ## A393813.P9942011648075209761

`A215344(A385177(n+1))`
-/

namespace A393813.P9942011648075209761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215344 (A385177 (n + 1)).toNat

end

end A393813.P9942011648075209761

/-! ## A393813.P7322513536064667347

`A215345(A054347(n+1))`
-/

namespace A393813.P7322513536064667347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215345 (A054347 (n + 1)).toNat

end

end A393813.P7322513536064667347

/-!
# A393814: Minimum value taken by Recamán's sequence (A005132) between terms where A005132(k) mod k increases.

The programs for A393814, there is no canonical definition to state claims against.
-/

/-! ## A393814.P17732898061853890381

`A005132(A393815(n+1))`
-/

namespace A393814.P17732898061853890381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A393815 (n + 1)).toNat

end

end A393814.P17732898061853890381

/-!
# A393815: Indices of the minimum value taken by Recamán's sequence (A005132) between terms where A005132(k) mod k increases.

The programs for A393815, there is no canonical definition to state claims against.
-/

/-! ## A393815.P17966908354540731918

`A057167(A393814(n+1))`
-/

namespace A393815.P17966908354540731918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A393814 (n + 1)).toNat

end

end A393815.P17966908354540731918

/-! ## A393815.P12246171211758401271

`A173817(A005517(n+1))`
-/

namespace A393815.P12246171211758401271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (A005517 (n + 1)).toNat

end

end A393815.P12246171211758401271

/-! ## A393815.P13472979264704200058

`A321698(A000070(n))+A066503(n+1)`
-/

namespace A393815.P13472979264704200058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (A000070 n).toNat + A066503 (n + 1)

end

end A393815.P13472979264704200058

/-!
# A393816: Achilles numbers with exactly 2 distinct prime factors.

The programs for A393816, there is no canonical definition to state claims against.
-/

/-! ## A393816.P11958475610666649002

`∩[A052486(n+1), A355462(n+1)]`
-/

namespace A393816.P11958475610666649002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P11958475610666649002

/-! ## A393816.P9711297444677874356

`∩[A052486(n+1), A391921(n+1)]`
-/

namespace A393816.P9711297444677874356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P9711297444677874356

/-! ## A393816.P1756777575072097721

`∩[A355462(n+1), A389753(n+1)]`
-/

namespace A393816.P1756777575072097721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P1756777575072097721

/-! ## A393816.P15711230411502232879

`∩[A389753(n+1), A391921(n+1)]`
-/

namespace A393816.P15711230411502232879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P15711230411502232879

/-! ## A393816.P15348532273779263321

`∩[A052486(n+1), A338539(n+1)]`
-/

namespace A393816.P15348532273779263321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P15348532273779263321

/-! ## A393816.P7730289261248380686

`∩[A338539(n+1), A393941(n+1)]`
-/

namespace A393816.P7730289261248380686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P7730289261248380686

/-! ## A393816.P10265484851960485132

`∩[A355462(n+1), A391415(n+1)]`
-/

namespace A393816.P10265484851960485132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P10265484851960485132

/-!
# A393818: a(n) is the least odd semiprime > 2*prime(n).

The programs for A393818, the canonical program `A393818.P5716704395992555008` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393818 has offset 1).

The definition of A393818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393818.P5716704395992555008

`A046315(A115392(n+1)-n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A393818

/-- `A046315(A115392(n+1)-n)` -/
def P5716704395992555008.Spec : Prop :=
  ∀ n, P5716704395992555008.a n = A393818 (n + 1)

theorem P5716704395992555008.correct : P5716704395992555008.Spec := by
  intro n
  simp only [A393818, Nat.add_sub_cancel]

end A393818

/-! ## A393818.P14790485006410335386

`A001358(A289182(A115392(n+1)-n))`
-/

namespace A393818.P14790485006410335386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A289182 (A115392 (n + 1) - (n : ℤ)).toNat).toNat

end

end A393818.P14790485006410335386

namespace A393818

/-- `A001358(A289182(A115392(n+1)-n))` -/
def P14790485006410335386.Spec : Prop :=
  ∀ n, P14790485006410335386.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P1264170721615041530

`A106326(A072055(n+1))`
-/

namespace A393818.P1264170721615041530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A072055 (n + 1)).toNat

end

end A393818.P1264170721615041530

namespace A393818

/-- `A106326(A072055(n+1))` -/
def P1264170721615041530.Spec : Prop :=
  ∀ n, P1264170721615041530.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P10090528583745988070

`A106326(A073582(n+1))`
-/

namespace A393818.P10090528583745988070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A073582 (n + 1)).toNat

end

end A393818.P10090528583745988070

namespace A393818

/-- `A106326(A073582(n+1))` -/
def P10090528583745988070.Spec : Prop :=
  ∀ n, P10090528583745988070.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P13762867020557146687

`A106326(A100484(n+1))`
-/

namespace A393818.P13762867020557146687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A100484 (n + 1)).toNat

end

end A393818.P13762867020557146687

namespace A393818

/-- `A106326(A100484(n+1))` -/
def P13762867020557146687.Spec : Prop :=
  ∀ n, P13762867020557146687.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P18315274857659568558

`A106326(A166496(n+1))`
-/

namespace A393818.P18315274857659568558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A166496 (n + 1)).toNat

end

end A393818.P18315274857659568558

namespace A393818

/-- `A106326(A166496(n+1))` -/
def P18315274857659568558.Spec : Prop :=
  ∀ n, P18315274857659568558.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P9078527605031442404

`A106326(A001747(n+2))`
-/

namespace A393818.P9078527605031442404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A001747 (n + 2)).toNat

end

end A393818.P9078527605031442404

namespace A393818

/-- `A106326(A001747(n+2))` -/
def P9078527605031442404.Spec : Prop :=
  ∀ n, P9078527605031442404.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P18043007858849123325

`A106326(A074845(n+2))`
-/

namespace A393818.P18043007858849123325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A074845 (n + 2)).toNat

end

end A393818.P18043007858849123325

namespace A393818

/-- `A106326(A074845(n+2))` -/
def P18043007858849123325.Spec : Prop :=
  ∀ n, P18043007858849123325.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P11114468508264629022

`A106326(A077017(n+2))`
-/

namespace A393818.P11114468508264629022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A077017 (n + 2)).toNat

end

end A393818.P11114468508264629022

namespace A393818

/-- `A106326(A077017(n+2))` -/
def P11114468508264629022.Spec : Prop :=
  ∀ n, P11114468508264629022.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P16466660005404321680

`A106326(A161344(n+2))`
-/

namespace A393818.P16466660005404321680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A161344 (n + 2)).toNat

end

end A393818.P16466660005404321680

namespace A393818

/-- `A106326(A161344(n+2))` -/
def P16466660005404321680.Spec : Prop :=
  ∀ n, P16466660005404321680.a n = A393818 (n + 1)

end A393818

/-!
# A393820: a(n) is the difference between the nearest upper and lower odd semiprime neighbors of 2*prime(n), divided by 2.

The programs for A393820, there is no canonical definition to state claims against.
-/

/-! ## A393820.P18052351401080095948

`(A393818(n+3)-A393819(n+3))/2`
-/

namespace A393820.P18052351401080095948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393818 (n + 3) - A393819 (n + 3) : ℚ) / 2

end

end A393820.P18052351401080095948

/-!
# A393828: a(n) is the least odd semiprime > prime(n).

The programs for A393828, the canonical program `A393828.P5604628339366627050` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393828 has offset 1).

The definition of A393828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393828.P5604628339366627050

`A106326(A000040(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A393828

/-- `A106326(A000040(n+1))` -/
def P5604628339366627050.Spec : Prop :=
  ∀ n, P5604628339366627050.a n = A393828 (n + 1)

theorem P5604628339366627050.correct : P5604628339366627050.Spec := by
  intro n
  simp only [A393828, Nat.add_sub_cancel]

end A393828

/-! ## A393828.P3821959377928705456

`A106326(A006005(n+1))`
-/

namespace A393828.P3821959377928705456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A006005 (n + 1)).toNat

end

end A393828.P3821959377928705456

namespace A393828

/-- `A106326(A006005(n+1))` -/
def P3821959377928705456.Spec : Prop :=
  ∀ n, P3821959377928705456.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P803975554378238846

`A106326(A006093(n+1))`
-/

namespace A393828.P803975554378238846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A006093 (n + 1)).toNat

end

end A393828.P803975554378238846

namespace A393828

/-- `A106326(A006093(n+1))` -/
def P803975554378238846.Spec : Prop :=
  ∀ n, P803975554378238846.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P5833850893798963857

`A106326(A008864(n+1))`
-/

namespace A393828.P5833850893798963857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A008864 (n + 1)).toNat

end

end A393828.P5833850893798963857

namespace A393828

/-- `A106326(A008864(n+1))` -/
def P5833850893798963857.Spec : Prop :=
  ∀ n, P5833850893798963857.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P13553352664520335327

`A106326(A014193(n+1))`
-/

namespace A393828.P13553352664520335327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A014193 (n + 1)).toNat

end

end A393828.P13553352664520335327

namespace A393828

/-- `A106326(A014193(n+1))` -/
def P13553352664520335327.Spec : Prop :=
  ∀ n, P13553352664520335327.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P9324945469382801443

`A106326(A014686(n+1))`
-/

namespace A393828.P9324945469382801443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A014686 (n + 1)).toNat

end

end A393828.P9324945469382801443

namespace A393828

/-- `A106326(A014686(n+1))` -/
def P9324945469382801443.Spec : Prop :=
  ∀ n, P9324945469382801443.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P6809685379599560957

`A106326(A028815(n+1))`
-/

namespace A393828.P6809685379599560957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A028815 (n + 1)).toNat

end

end A393828.P6809685379599560957

namespace A393828

/-- `A106326(A028815(n+1))` -/
def P6809685379599560957.Spec : Prop :=
  ∀ n, P6809685379599560957.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P15279149654474080268

`A106326(A039915(n+1))`
-/

namespace A393828.P15279149654474080268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A039915 (n + 1)).toNat

end

end A393828.P15279149654474080268

namespace A393828

/-- `A106326(A039915(n+1))` -/
def P15279149654474080268.Spec : Prop :=
  ∀ n, P15279149654474080268.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P1765236900346788390

`A106326(A052147(n+1))`
-/

namespace A393828.P1765236900346788390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A052147 (n + 1)).toNat

end

end A393828.P1765236900346788390

namespace A393828

/-- `A106326(A052147(n+1))` -/
def P1765236900346788390.Spec : Prop :=
  ∀ n, P1765236900346788390.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P7669325137657905065

`A106326(A055670(n+1))`
-/

namespace A393828.P7669325137657905065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A055670 (n + 1)).toNat

end

end A393828.P7669325137657905065

namespace A393828

/-- `A106326(A055670(n+1))` -/
def P7669325137657905065.Spec : Prop :=
  ∀ n, P7669325137657905065.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P17132415139847589766

`A106326(A076342(n+1))`
-/

namespace A393828.P17132415139847589766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A076342 (n + 1)).toNat

end

end A393828.P17132415139847589766

namespace A393828

/-- `A106326(A076342(n+1))` -/
def P17132415139847589766.Spec : Prop :=
  ∀ n, P17132415139847589766.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P6576575812660693594

`A106326(A082542(n+1))`
-/

namespace A393828.P6576575812660693594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A082542 (n + 1)).toNat

end

end A393828.P6576575812660693594

namespace A393828

/-- `A106326(A082542(n+1))` -/
def P6576575812660693594.Spec : Prop :=
  ∀ n, P6576575812660693594.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P6096717545418692595

`A106326(A102414(n+1))`
-/

namespace A393828.P6096717545418692595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A102414 (n + 1)).toNat

end

end A393828.P6096717545418692595

namespace A393828

/-- `A106326(A102414(n+1))` -/
def P6096717545418692595.Spec : Prop :=
  ∀ n, P6096717545418692595.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P8970379522984114975

`A106326(A123123(n+1))`
-/

namespace A393828.P8970379522984114975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A123123 (n + 1)).toNat

end

end A393828.P8970379522984114975

namespace A393828

/-- `A106326(A123123(n+1))` -/
def P8970379522984114975.Spec : Prop :=
  ∀ n, P8970379522984114975.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P17882249768958882869

`A106326(A156037(n+1))`
-/

namespace A393828.P17882249768958882869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A156037 (n + 1)).toNat

end

end A393828.P17882249768958882869

namespace A393828

/-- `A106326(A156037(n+1))` -/
def P17882249768958882869.Spec : Prop :=
  ∀ n, P17882249768958882869.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P4871820541614374523

`A106326(A161847(n+1))`
-/

namespace A393828.P4871820541614374523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A161847 (n + 1)).toNat

end

end A393828.P4871820541614374523

namespace A393828

/-- `A106326(A161847(n+1))` -/
def P4871820541614374523.Spec : Prop :=
  ∀ n, P4871820541614374523.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P12700718612250001101

`A106326(A163976(n+1))`
-/

namespace A393828.P12700718612250001101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A163976 (n + 1)).toNat

end

end A393828.P12700718612250001101

namespace A393828

/-- `A106326(A163976(n+1))` -/
def P12700718612250001101.Spec : Prop :=
  ∀ n, P12700718612250001101.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P9195484769411513967

`A106326(A172022(n+1))`
-/

namespace A393828.P9195484769411513967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A172022 (n + 1)).toNat

end

end A393828.P9195484769411513967

namespace A393828

/-- `A106326(A172022(n+1))` -/
def P9195484769411513967.Spec : Prop :=
  ∀ n, P9195484769411513967.a n = A393828 (n + 1)

end A393828

/-!
# A393830: a(n) is the difference between the nearest upper and lower odd semiprime neighbors of prime(n), divided by 2.

The programs for A393830, there is no canonical definition to state claims against.
-/

/-! ## A393830.P15433480793873274719

`(A393828(n+5)-A393829(n+5))/2`
-/

namespace A393830.P15433480793873274719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393828 (n + 5) - A393829 (n + 5) : ℚ) / 2

end

end A393830.P15433480793873274719

/-!
# A393834: A variant of Sierpinski carpet, read by antidiagonals.

The programs for A393834, there is no canonical definition to state claims against.
-/

/-! ## A393834.P14890519521862276853

`A215604(val(A143007(n)+1, 6)+1)`
-/

namespace A393834.P14890519521862276853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215604 (SequenceMachineLib.valuation (A143007 n + 1).toNat 6 + 1)

end

end A393834.P14890519521862276853

/-! ## A393834.P13367196947190295676

`or(char[A127758(n+1)], A153490(n+1))`
-/

namespace A393834.P13367196947190295676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A153490 (n + 1))

end

end A393834.P13367196947190295676

/-! ## A393834.P5029917798946617316

`or(char[A295078(n+1)], A153490(n+1))`
-/

namespace A393834.P5029917798946617316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A153490 (n + 1))

end

end A393834.P5029917798946617316

/-! ## A393834.P1027004604352211678

`or(char[A341241(n+3)], A153490(n+1))`
-/

namespace A393834.P1027004604352211678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341241 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A153490 (n + 1))

end

end A393834.P1027004604352211678

/-! ## A393834.P780684698143884703

`A153490(n+1)+char[A125816(3*n+4)]`
-/

namespace A393834.P780684698143884703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125816 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A393834.P780684698143884703

/-! ## A393834.P9138465879672299711

`or(A153490(n+1), A213676(A007318(n)))`
-/

namespace A393834.P9138465879672299711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153490 (n + 1)) (A213676 (A007318 n).toNat)

end

end A393834.P9138465879672299711

/-!
# A393837: Number of one-sided polygiraffes with n cells.

The programs for A393837, there is no canonical definition to state claims against.
-/

/-! ## A393837.P15856443985869294822

`A393391(A000217(n+3)+4)`
-/

namespace A393837.P15856443985869294822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393391 (A000217 (n + 3) + 4).toNat

end

end A393837.P15856443985869294822

/-!
# A393842: Number of n X n binary matrices with exactly 12 1's such that there are an even number of 1's in every row and column.

The programs for A393842, there is no canonical definition to state claims against.
-/

/-! ## A393842.P3729787229091857064

`A000010(n+1)*A151949(A061684(n))`
-/

namespace A393842.P3729787229091857064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A151949 (A061684 n).toNat

end

end A393842.P3729787229091857064

/-!
# A393843: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1)*(n+2)*x - 6*n*A(x) ) = 0 for n >= 1.

The programs for A393843, there is no canonical definition to state claims against.
-/

/-! ## A393843.P254638079922259650

`ceil(A393763(n+1)/6)`
-/

namespace A393843.P254638079922259650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A393763 (n + 1) : ℚ) / 6⌉

end

end A393843.P254638079922259650

/-!
# A393847: O.g.f. A(x) satisfies: [x^n] exp( n^7 * x ) / A(x) = 0 for n>0.

The programs for A393847, there is no canonical definition to state claims against.
-/

/-! ## A393847.P213679514875413818

`A304320(A027379(n+5)-3)`
-/

namespace A393847.P213679514875413818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A027379 (n + 5) - 3).toNat

end

end A393847.P213679514875413818

/-!
# A393850: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = n*(n+1) * [x^(n-1)] A(x)^(n+1) for n >= 1 with A'(0) = 1.

The programs for A393850, there is no canonical definition to state claims against.
-/

/-! ## A393850.P2348574893016280802

`A171462(A081066(n))+A048671(n+1)`
-/

namespace A393850.P2348574893016280802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A081066 n).toNat + A048671 (n + 1)

end

end A393850.P2348574893016280802

/-!
# A393851: G.f. satisfies A(x) = x + x^2 * d^2/dx^2 A(x)^2/2.

The programs for A393851, there is no canonical definition to state claims against.
-/

/-! ## A393851.P17297367835804795697

`A206292(A077335(n))`
-/

namespace A393851.P17297367835804795697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206292 (A077335 n).toNat

end

end A393851.P17297367835804795697

/-!
# A393860: Prime powers q such that q-1 is squarefree.

The programs for A393860, there is no canonical definition to state claims against.
-/

/-! ## A393860.P11834429228664206306

`record[A034699(A007913(n+1)+1)]`
-/

namespace A393860.P11834429228664206306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A007913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P11834429228664206306

/-! ## A393860.P17168574480155757801

`record[A034699(A055231(n+1)+1)]`
-/

namespace A393860.P17168574480155757801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A055231 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P17168574480155757801

/-! ## A393860.P11169165742953773267

`∩[A000961(n+1), A005117(n+1)+1]`
-/

namespace A393860.P11169165742953773267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393860.P11169165742953773267

/-! ## A393860.P2354785749409803610

`∩[A005117(n+1)+1, A246655(n+1)]`
-/

namespace A393860.P2354785749409803610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393860.P2354785749409803610

/-! ## A393860.P12793289236341863146

`record[A028233(A005117(n+1)+1)]`
-/

namespace A393860.P12793289236341863146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A005117 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P12793289236341863146

/-! ## A393860.P1421301596964761370

`record[A028233(A007947(n+1)+1)]`
-/

namespace A393860.P1421301596964761370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P1421301596964761370

/-! ## A393860.P14148969758069620561

`record[A309639(A007913(n+1)+1)]`
-/

namespace A393860.P14148969758069620561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (A007913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P14148969758069620561

/-! ## A393860.P14503098238893649358

`record[A007947(A344005(n+1))+1]`
-/

namespace A393860.P14503098238893649358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A344005 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P14503098238893649358

/-! ## A393860.P11116233797042667540

`record[A100994(A003557(n+1)+n+1)]`
-/

namespace A393860.P11116233797042667540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A003557 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P11116233797042667540

/-!
# A393869: Numbers k such that A053669(k) < A003557(k).

The programs for A393869, there is no canonical definition to state claims against.
-/

/-! ## A393869.P1042491389332803865

`∪[A360765(n+1), A396324(n+1)]`
-/

namespace A393869.P1042491389332803865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393869.P1042491389332803865

/-!
# A393870: G.f. A(x) satisfies [x^(n+2)] A^(2^n)(x) = n*2^n * [x^(n+1)] A^(2^n)(x) for n >= 1, where A^k(x) denotes the k-th iteration of A(x).

The programs for A393870, there is no canonical definition to state claims against.
-/

/-! ## A393870.P3919975483573686834

`A356860(A337482(∑[n]))`
-/

namespace A393870.P3919975483573686834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356860 (A337482 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A393870.P3919975483573686834

/-!
# A393888: G.f. A(x) satisfies 3*A(x) = 1 + x + 2*A(x*A(x)).

The programs for A393888, there is no canonical definition to state claims against.
-/

/-! ## A393888.P17677373139356418924

`A392379(∑[n+1]+n)`
-/

namespace A393888.P17677373139356418924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392379 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A393888.P17677373139356418924

/-!
# A393889: G.f. A(x) satisfies 4*A(x) = 1 + x + 3*A(x*A(x)).

The programs for A393889, there is no canonical definition to state claims against.
-/

/-! ## A393889.P14949853647683490649

`A394047(∑[n+1]+n)`
-/

namespace A393889.P14949853647683490649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394047 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A393889.P14949853647683490649

/-!
# A393890: G.f. A(x) satisfies 5*A(x) = 1 + x + 4*A(x*A(x)).

The programs for A393890, there is no canonical definition to state claims against.
-/

/-! ## A393890.P1702401135944661000

`A394901(∑[n+1]+n)`
-/

namespace A393890.P1702401135944661000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394901 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A393890.P1702401135944661000

