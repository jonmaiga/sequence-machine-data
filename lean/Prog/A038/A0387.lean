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
import Seq.B000.C015
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A038700: Smallest prime == -1 (mod n).

The programs for A038700, there is no canonical definition to state claims against.
-/

/-! ## A038700.P15321380119484917598

`(n+1)*A053989(n+1)-1`
-/

namespace A038700.P15321380119484917598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053989 (n + 1) - 1

end

end A038700.P15321380119484917598

/-! ## A038700.P9807072197905303534

`A008683(A004139(n+1))+(n+1)*A053989(n+1)`
-/

namespace A038700.P9807072197905303534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004139 (n + 1)).toNat + (n + 1 : ℤ) * A053989 (n + 1)

end

end A038700.P9807072197905303534

/-! ## A038700.P15821683763383692291

`A000040(A219109(n+1))`
-/

namespace A038700.P15821683763383692291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A219109 (n + 1)).toNat

end

end A038700.P15821683763383692291

/-! ## A038700.P10210961449843384291

`A008578(A219109(n+1)+1)`
-/

namespace A038700.P10210961449843384291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A219109 (n + 1) + 1).toNat

end

end A038700.P10210961449843384291

/-! ## A038700.P8130737466310417575

`A182986(A219109(n+1)+1)`
-/

namespace A038700.P8130737466310417575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A219109 (n + 1) + 1).toNat

end

end A038700.P8130737466310417575

/-! ## A038700.P4212543842800005393

`A008864(A219109(n+1))+A008683(A034694(n+1))`
-/

namespace A038700.P4212543842800005393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A219109 (n + 1)).toNat + A008683 (A034694 (n + 1)).toNat

end

end A038700.P4212543842800005393

/-! ## A038700.P10145333966798200448

`A093868((n+1)*A053989(n+1))`
-/

namespace A038700.P10145333966798200448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 ((n + 1 : ℤ) * A053989 (n + 1)).toNat

end

end A038700.P10145333966798200448

/-! ## A038700.P14954408888050201043

`A136623((n+1)*A053989(n+1))`
-/

namespace A038700.P14954408888050201043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 ((n + 1 : ℤ) * A053989 (n + 1)).toNat

end

end A038700.P14954408888050201043

/-! ## A038700.P1897014290266999547

`A393607(∑[n+1])`
-/

namespace A038700.P1897014290266999547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038700.P1897014290266999547

/-! ## A038700.P14525314988518747691

`A282049(A162657(n+1))`
-/

namespace A038700.P14525314988518747691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282049 (A162657 (n + 1)).toNat

end

end A038700.P14525314988518747691

/-!
# A038701: Prime powers q for which f(g(m(q))) = m(q), where f = A051703, g = A008475 and m = A003418.

The programs for A038701, there is no canonical definition to state claims against.
-/

/-! ## A038701.P4544907640963597259

`∩[A115919(n+1), A325400(n+1)]`
-/

namespace A038701.P4544907640963597259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038701.P4544907640963597259

/-! ## A038701.P15747558803434469651

`lt[A140437(A056056(n+1)), A014963(n+1)]+1`
-/

namespace A038701.P15747558803434469651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (A056056 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A038701.P15747558803434469651

/-! ## A038701.P17047196335951364060

`lt[A145078(2*(n-A004396(n))+1), A014963(n+1)]+1`
-/

namespace A038701.P17047196335951364060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145078 (2 * ((n : ℤ) - A004396 n) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A038701.P17047196335951364060

/-! ## A038701.P14993838272706537660

`lt[A070803(A379157(n+1)), A275288(n+1)]+1`
-/

namespace A038701.P14993838272706537660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (A379157 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A038701.P14993838272706537660

/-! ## A038701.P7645427161632471608

`A000961(∑[A126969(n)%A339790(n+1)+1]+1)`
-/

namespace A038701.P7645427161632471608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126969 n) (A339790 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A038701.P7645427161632471608

/-!
# A038702: a(n) = prime(n)^2 mod prime(n-1).

The programs for A038702, the canonical program `A038702.P14376547553865120558` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038702 has offset 2).

The definition of A038702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038702.P2177541823983281062

`A048852(n+1)%A000040(n+1)`
-/

namespace A038702.P2177541823983281062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048852 (n + 1)) (A000040 (n + 1))

end

end A038702.P2177541823983281062

namespace A038702

/-- `A048852(n+1)%A000040(n+1)` -/
def P2177541823983281062.Spec : Prop :=
  ∀ n, P2177541823983281062.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P6051187609094335067

`A069482(n+1)%A000040(n+1)`
-/

namespace A038702.P6051187609094335067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069482 (n + 1)) (A000040 (n + 1))

end

end A038702.P6051187609094335067

namespace A038702

/-- `A069482(n+1)%A000040(n+1)` -/
def P6051187609094335067.Spec : Prop :=
  ∀ n, P6051187609094335067.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P16803944602637078792

`A076821(n+1)%A000040(n+1)`
-/

namespace A038702.P16803944602637078792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076821 (n + 1)) (A000040 (n + 1))

end

end A038702.P16803944602637078792

namespace A038702

/-- `A076821(n+1)%A000040(n+1)` -/
def P16803944602637078792.Spec : Prop :=
  ∀ n, P16803944602637078792.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P1424677205040354438

`A261465(n+1)%A000040(n+1)`
-/

namespace A038702.P1424677205040354438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261465 (n + 1)) (A000040 (n + 1))

end

end A038702.P1424677205040354438

namespace A038702

/-- `A261465(n+1)%A000040(n+1)` -/
def P1424677205040354438.Spec : Prop :=
  ∀ n, P1424677205040354438.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P12180695122373631127

`A349660(n+1)%A000040(n+1)`
-/

namespace A038702.P12180695122373631127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349660 (n + 1)) (A000040 (n + 1))

end

end A038702.P12180695122373631127

namespace A038702

/-- `A349660(n+1)%A000040(n+1)` -/
def P12180695122373631127.Spec : Prop :=
  ∀ n, P12180695122373631127.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P16948814277694507501

`A001223(n+1)²%Δ[A007504(n)]`
-/

namespace A038702.P16948814277694507501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A038702.P16948814277694507501

namespace A038702

/-- `A001223(n+1)²%Δ[A007504(n)]` -/
def P16948814277694507501.Spec : Prop :=
  ∀ n, P16948814277694507501.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P14376547553865120558

`A001043(n+1)²%A000040(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038702

/-- `A001043(n+1)²%A000040(n+1)` -/
def P14376547553865120558.Spec : Prop :=
  ∀ n, P14376547553865120558.a n = A038702 (n + 2)

theorem P14376547553865120558.correct : P14376547553865120558.Spec := by
  intro n
  simp only [A038702, Nat.add_sub_cancel]

end A038702

/-! ## A038702.P17619955683636773916

`A001248(n+2)%A000040(n+1)`
-/

namespace A038702.P17619955683636773916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 2)) (A000040 (n + 1))

end

end A038702.P17619955683636773916

namespace A038702

/-- `A001248(n+2)%A000040(n+1)` -/
def P17619955683636773916.Spec : Prop :=
  ∀ n, P17619955683636773916.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P16349650016963023649

`A000040(n+2)²%A000040(n+1)`
-/

namespace A038702.P16349650016963023649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 2) (A000040 (n + 1))

end

end A038702.P16349650016963023649

namespace A038702

/-- `A000040(n+2)²%A000040(n+1)` -/
def P16349650016963023649.Spec : Prop :=
  ∀ n, P16349650016963023649.a n = A038702 (n + 2)

end A038702

/-! ## A038702.P15450438363961972524

`A000040(n+2)²%p?[A352844(n)]`
-/

namespace A038702.P15450438363961972524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A038702.P15450438363961972524

namespace A038702

/-- `A000040(n+2)²%p?[A352844(n)]` -/
def P15450438363961972524.Spec : Prop :=
  ∀ n, P15450438363961972524.a n = A038702 (n + 2)

end A038702

/-!
# A038703: Primes p such that p^2 mod q is odd, where q is the previous prime.

The programs for A038703, there is no canonical definition to state claims against.
-/

/-! ## A038703.P10183012284994514873

`A066168(∑[n²]+1)`
-/

namespace A038703.P10183012284994514873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066168 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038703.P10183012284994514873

/-!
# A038705: Position of the incrementally largest term in continued fraction for Champernowne constant (A030167).

The programs for A038705, there is no canonical definition to state claims against.
-/

/-! ## A038705.P10953490299613927693

`A143533(n+1)+1`
-/

namespace A038705.P10953490299613927693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143533 (n + 1) + 1

end

end A038705.P10953490299613927693

/-! ## A038705.P13390538579710049111

`record[A006530(A129154(floor(n²/2)))]`
-/

namespace A038705.P13390538579710049111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129154 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038705.P13390538579710049111

/-!
# A038707: a(n) = floor(n*(n+1/2)/2).

The programs for A038707, the canonical program `A038707.P10340700461919097071` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038707 has offset 0).

The definition of A038707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1/2)/2)` (program `A038707.P10340700461919097071`, by `A038707.P10340700461919097071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038707.P10340700461919097071

`floor(n*(n+1/2)/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038707

/-- `floor(n*(n+1/2)/2)` -/
def P10340700461919097071.Spec : Prop :=
  ∀ n, P10340700461919097071.a n = A038707 n

theorem P10340700461919097071.correct : P10340700461919097071.Spec := by
  intro n
  simp only [A038707]

end A038707

/-! ## A038707.P2759216188246757571

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5, a(4)=9, a(5)=13`
-/

namespace A038707.P2759216188246757571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 5, 9, 13] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A038707.P2759216188246757571

namespace A038707

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P2759216188246757571.Spec : Prop :=
  ∀ n, P2759216188246757571.a n = A038707 n

end A038707

/-! ## A038707.P6939831725258198794

`∑[n-∑[∑[n]]%2]`
-/

namespace A038707.P6939831725258198794
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P6939831725258198794

namespace A038707

/-- `∑[n-∑[∑[n]]%2]` -/
def P6939831725258198794.Spec : Prop :=
  ∀ n, P6939831725258198794.a n = A038707 n

end A038707

/-! ## A038707.P3594865974800474835

`∑[n-and(1, ∑[∑[n]])]`
-/

namespace A038707.P3594865974800474835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P3594865974800474835

namespace A038707

/-- `∑[n-and(1, ∑[∑[n]])]` -/
def P3594865974800474835.Spec : Prop :=
  ∀ n, P3594865974800474835.a n = A038707 n

end A038707

/-! ## A038707.P189514055765040760

`∑[xor(n, and(1, ∑[∑[n]]))]`
-/

namespace A038707.P189514055765040760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P189514055765040760

namespace A038707

/-- `∑[xor(n, and(1, ∑[∑[n]]))]` -/
def P189514055765040760.Spec : Prop :=
  ∀ n, (P189514055765040760.a n : ℤ) = A038707 n

end A038707

/-! ## A038707.P12232002313243302326

`C(n+1, 2)-ceil(n/4)`
-/

namespace A038707.P12232002313243302326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - ⌈(n : ℚ) / 4⌉

end

end A038707.P12232002313243302326

namespace A038707

/-- `C(n+1, 2)-ceil(n/4)` -/
def P12232002313243302326.Spec : Prop :=
  ∀ n, P12232002313243302326.a n = A038707 n

end A038707

/-! ## A038707.P100249841838527360

`∑[gcd(2, ∑[∑[n]])-2+n]`
-/

namespace A038707.P100249841838527360
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P100249841838527360

namespace A038707

/-- `∑[gcd(2, ∑[∑[n]])-2+n]` -/
def P100249841838527360.Spec : Prop :=
  ∀ n, P100249841838527360.a n = A038707 n

end A038707

/-! ## A038707.P8758820365065954376

`∑[a(n-4)+4]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A038707.P8758820365065954376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P8758820365065954376

namespace A038707

/-- `∑[a(n-4)+4]` -/
def P8758820365065954376.Spec : Prop :=
  ∀ n, (P8758820365065954376.a n : ℤ) = A038707 n

end A038707

/-! ## A038707.P800856483595051514

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A038707.P800856483595051514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 1] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P800856483595051514

namespace A038707

/-- `∑[∑[floor(a(n-4))]]` -/
def P800856483595051514.Spec : Prop :=
  ∀ n, (P800856483595051514.a n : ℤ) = A038707 n

end A038707

/-! ## A038707.P13405110385598333841

`and(-4, C(2*n+1, 2))/4`
-/

namespace A038707.P13405110385598333841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) (Nat.choose (2 * n + 1) 2 : ℤ) : ℚ) / 4

end

end A038707.P13405110385598333841

namespace A038707

/-- `and(-4, C(2*n+1, 2))/4` -/
def P13405110385598333841.Spec : Prop :=
  ∀ n, P13405110385598333841.a n = (A038707 n : ℚ)

end A038707

/-! ## A038707.P5031060527004393100

`and(n*(2*n+1), -4)/4`
-/

namespace A038707.P5031060527004393100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n * (2 * n + 1) : ℤ) (-4) : ℚ) / 4

end

end A038707.P5031060527004393100

namespace A038707

/-- `and(n*(2*n+1), -4)/4` -/
def P5031060527004393100.Spec : Prop :=
  ∀ n, P5031060527004393100.a n = (A038707 n : ℚ)

end A038707

/-! ## A038707.P1759913076299395861

`round((C(2*n+1, 2)-ϕ)/4)`
-/

namespace A038707.P1759913076299395861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (2 * n + 1) 2 : ℝ) - Real.goldenRatio) / 4)

end

end A038707.P1759913076299395861

namespace A038707

/-- `round((C(2*n+1, 2)-ϕ)/4)` -/
def P1759913076299395861.Spec : Prop :=
  ∀ n, P1759913076299395861.a n = A038707 n

end A038707

/-! ## A038707.P14036363285983567801

`∑[n]-∑[a(n-4)²]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A038707.P14036363285983567801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0] fun n f2 =>
  f2 (n - 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A038707.P14036363285983567801

namespace A038707

/-- `∑[n]-∑[a(n-4)²]` -/
def P14036363285983567801.Spec : Prop :=
  ∀ n, P14036363285983567801.a n = A038707 n

end A038707

/-! ## A038707.P9119941175843232904

`ceil(record[(2*n+1)*(n-2)/4])`
-/

namespace A038707.P9119941175843232904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (((n : ℤ) - 2 : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A038707.P9119941175843232904

namespace A038707

/-- `ceil(record[(2*n+1)*(n-2)/4])` -/
def P9119941175843232904.Spec : Prop :=
  ∀ n, P9119941175843232904.a n = A038707 n

end A038707

/-! ## A038707.P9067813556288416062

`∑[n]-∑[∑[ogf(x/(1+x+x^2+x^3))]]`
-/

namespace A038707.P9067813556288416062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A038707.P9067813556288416062

namespace A038707

/-- `∑[n]-∑[∑[ogf(x/(1+x+x^2+x^3))]]` -/
def P9067813556288416062.Spec : Prop :=
  ∀ n, P9067813556288416062.a n = A038707 n

end A038707

/-! ## A038707.P13870130751930286974

`∑[(n*gcd(4, n+1)%3)%(n+1)]`
-/

namespace A038707.P13870130751930286974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 4 (n + 1) % 3) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P13870130751930286974

namespace A038707

/-- `∑[(n*gcd(4, n+1)%3)%(n+1)]` -/
def P13870130751930286974.Spec : Prop :=
  ∀ n, (P13870130751930286974.a n : ℤ) = A038707 n

end A038707

/-! ## A038707.P13077755989471302927

`∑[∑[a(n-4)^a(n-3)]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A038707.P13077755989471302927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f2 =>
  f2 (n - 4) ^ f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038707.P13077755989471302927

namespace A038707

/-- `∑[∑[a(n-4)^a(n-3)]]` -/
def P13077755989471302927.Spec : Prop :=
  ∀ n, (P13077755989471302927.a n : ℤ) = A038707 n

end A038707

/-! ## A038707.P6210416858435024981

`A082645(n)+1`
-/

namespace A038707.P6210416858435024981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082645 n + 1

end

end A038707.P6210416858435024981

namespace A038707

/-- `A082645(n)+1` -/
def P6210416858435024981.Spec : Prop :=
  ∀ n, P6210416858435024981.a n = A038707 n

end A038707

/-! ## A038707.P8270071984783894232

`∑[n]-A110655(n)`
-/

namespace A038707.P8270071984783894232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A110655 n

end

end A038707.P8270071984783894232

namespace A038707

/-- `∑[n]-A110655(n)` -/
def P8270071984783894232.Spec : Prop :=
  ∀ n, P8270071984783894232.a n = A038707 n

end A038707

/-!
# A038708: Primes of the form (k-th primorial) + (k+1)-st prime.

The programs for A038708, there is no canonical definition to state claims against.
-/

/-! ## A038708.P1863684642213752072

`record[A065315(n+1)]`
-/

namespace A038708.P1863684642213752072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038708.P1863684642213752072

/-! ## A038708.P5199053606436669513

`A035345(A035346(n+1))`
-/

namespace A038708.P5199053606436669513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035345 (A035346 (n + 1)).toNat

end

end A038708.P5199053606436669513

/-!
# A038709: a(n) = floor(n*(n+1/2)/4).

The programs for A038709, the canonical program `A038709.P8875377009990259508` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038709 has offset 0).

The definition of A038709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1/2)/4)` (program `A038709.P8875377009990259508`, by `A038709.P8875377009990259508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038709.P8875377009990259508

`floor(n*(n+1/2)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038709

/-- `floor(n*(n+1/2)/4)` -/
def P8875377009990259508.Spec : Prop :=
  ∀ n, P8875377009990259508.a n = A038709 n

theorem P8875377009990259508.correct : P8875377009990259508.Spec := by
  intro n
  simp only [A038709]

end A038709

/-! ## A038709.P15695686733134251212

`2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=4, a(5)=6, a(6)=9, a(7)=13, a(8)=17, a(9)=21`
-/

namespace A038709.P15695686733134251212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 4, 6, 9, 13, 17, 21] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 8) - 2 * a (n - 9) + a (n - 10)

end

end A038709.P15695686733134251212

namespace A038709

/-- `2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` -/
def P15695686733134251212.Spec : Prop :=
  ∀ n, P15695686733134251212.a n = A038709 n

end A038709

/-! ## A038709.P15852278312272704476

`∑[ceil(∑[and(6, n)/6])]`
-/

namespace A038709.P15852278312272704476
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038709.P15852278312272704476

namespace A038709

/-- `∑[ceil(∑[and(6, n)/6])]` -/
def P15852278312272704476.Spec : Prop :=
  ∀ n, P15852278312272704476.a n = A038709 n

end A038709

/-! ## A038709.P5284824416189215744

`ceil(A082645(n)/2)`
-/

namespace A038709.P5284824416189215744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082645 n : ℚ) / 2⌉

end

end A038709.P5284824416189215744

namespace A038709

/-- `ceil(A082645(n)/2)` -/
def P5284824416189215744.Spec : Prop :=
  ∀ n, P5284824416189215744.a n = A038709 n

end A038709

/-! ## A038709.P4679088404471201513

`ceil(A100041(n)/8)`
-/

namespace A038709.P4679088404471201513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100041 n : ℚ) / 8⌉

end

end A038709.P4679088404471201513

namespace A038709

/-- `ceil(A100041(n)/8)` -/
def P4679088404471201513.Spec : Prop :=
  ∀ n, P4679088404471201513.a n = A038709 n

end A038709

/-! ## A038709.P8568219500775625560

`∑[∑[char[A047510(n+1)]]]`
-/

namespace A038709.P8568219500775625560
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047510 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038709.P8568219500775625560

namespace A038709

/-- `∑[∑[char[A047510(n+1)]]]` -/
def P8568219500775625560.Spec : Prop :=
  ∀ n, (P8568219500775625560.a n : ℤ) = A038709 n

end A038709

/-! ## A038709.P12054650535846512708

`∑[A004526(n)+char[or(7, n)]]`
-/

namespace A038709.P12054650535846512708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038709.P12054650535846512708

namespace A038709

/-- `∑[A004526(n)+char[or(7, n)]]` -/
def P12054650535846512708.Spec : Prop :=
  ∀ n, P12054650535846512708.a n = A038709 n

end A038709

/-! ## A038709.P2230694423755518339

`A002620(n)+∑[char[A004771(n)]]`
-/

namespace A038709.P2230694423755518339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A038709.P2230694423755518339

namespace A038709

/-- `A002620(n)+∑[char[A004771(n)]]` -/
def P2230694423755518339.Spec : Prop :=
  ∀ n, P2230694423755518339.a n = A038709 n

end A038709

/-! ## A038709.P10979081043185779697

`A002620(n)+A002265(A004524(n)+1)`
-/

namespace A038709.P10979081043185779697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + A002265 (A004524 n + 1).toNat

end

end A038709.P10979081043185779697

namespace A038709

/-- `A002620(n)+A002265(A004524(n)+1)` -/
def P10979081043185779697.Spec : Prop :=
  ∀ n, P10979081043185779697.a n = A038709 n

end A038709

/-! ## A038709.P5444192021556222463

`A002620(n)+Δ[A118729(n)]`
-/

namespace A038709.P5444192021556222463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (f1 (n + 1) - f1 n)

end

end A038709.P5444192021556222463

namespace A038709

/-- `A002620(n)+Δ[A118729(n)]` -/
def P5444192021556222463.Spec : Prop :=
  ∀ n, P5444192021556222463.a n = A038709 n

end A038709

/-! ## A038709.P9899377604399149445

`A004526(A002265(n+1))+A002620(n)`
-/

namespace A038709.P9899377604399149445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (n + 1)).toNat + A002620 n

end

end A038709.P9899377604399149445

namespace A038709

/-- `A004526(A002265(n+1))+A002620(n)` -/
def P9899377604399149445.Spec : Prop :=
  ∀ n, P9899377604399149445.a n = A038709 n

end A038709

/-! ## A038709.P14021247546039924599

`A118729(n+1)+A002620(n)-A118729(n)`
-/

namespace A038709.P14021247546039924599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (n + 1) + (A002620 n - A118729 n)

end

end A038709.P14021247546039924599

namespace A038709

/-- `A118729(n+1)+A002620(n)-A118729(n)` -/
def P14021247546039924599.Spec : Prop :=
  ∀ n, P14021247546039924599.a n = A038709 n

end A038709

/-! ## A038709.P18049799108616508007

`A132292(n+2)+A004526(n+1)*A004526(n)`
-/

namespace A038709.P18049799108616508007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 2) + A004526 (n + 1) * A004526 n

end

end A038709.P18049799108616508007

namespace A038709

/-- `A132292(n+2)+A004526(n+1)*A004526(n)` -/
def P18049799108616508007.Spec : Prop :=
  ∀ n, P18049799108616508007.a n = A038709 n

end A038709

/-! ## A038709.P2795881975267832951

`∑[A057354(A245231(n+1))]`
-/

namespace A038709.P2795881975267832951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A245231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038709.P2795881975267832951

namespace A038709

/-- `∑[A057354(A245231(n+1))]` -/
def P2795881975267832951.Spec : Prop :=
  ∀ n, P2795881975267832951.a n = A038709 n

end A038709

/-! ## A038709.P17924580517215312147

`A011869(Δ[n²])`
-/

namespace A038709.P17924580517215312147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038709.P17924580517215312147

namespace A038709

/-- `A011869(Δ[n²])` -/
def P17924580517215312147.Spec : Prop :=
  ∀ n, P17924580517215312147.a n = A038709 n

end A038709

/-! ## A038709.P11524039491571545900

`A011869(A005408(n))%(2*n+1)²²`
-/

namespace A038709.P11524039491571545900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011869 (A005408 n).toNat) (((2 * n + 1) ^ 2) ^ 2 : ℤ)

end

end A038709.P11524039491571545900

namespace A038709

/-- `A011869(A005408(n))%(2*n+1)²²` -/
def P11524039491571545900.Spec : Prop :=
  ∀ n, P11524039491571545900.a n = A038709 n

end A038709

/-! ## A038709.P1805932249688444986

`∑[A002265(A072401(n)+2*n+1)]`
-/

namespace A038709.P1805932249688444986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A072401 n + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038709.P1805932249688444986

namespace A038709

/-- `∑[A002265(A072401(n)+2*n+1)]` -/
def P1805932249688444986.Spec : Prop :=
  ∀ n, P1805932249688444986.a n = A038709 n

end A038709

/-! ## A038709.P13696779404268072159

`∑[∑[A021913(A313926(n))]]`
-/

namespace A038709.P13696779404268072159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313926 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038709.P13696779404268072159

namespace A038709

/-- `∑[∑[A021913(A313926(n))]]` -/
def P13696779404268072159.Spec : Prop :=
  ∀ n, P13696779404268072159.a n = A038709 n

end A038709

/-! ## A038709.P10311890231817538331

`filter[A011869(2*n+1), A267866(#)]`
-/

namespace A038709.P10311890231817538331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267866 (f1 j).toNat = 1) n)

end

end A038709.P10311890231817538331

namespace A038709

/-- `filter[A011869(2*n+1), A267866(#)]` -/
def P10311890231817538331.Spec : Prop :=
  ∀ n, P10311890231817538331.a n = A038709 n

end A038709

/-! ## A038709.P924601918140314588

`A004526(A038707(n))`
-/

namespace A038709.P924601918140314588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038707 n).toNat

end

end A038709.P924601918140314588

namespace A038709

/-- `A004526(A038707(n))` -/
def P924601918140314588.Spec : Prop :=
  ∀ n, P924601918140314588.a n = A038709 n

end A038709

/-!
# A038710: a(n) is the smallest prime > product of the first n primes (A002110(n)).

The programs for A038710, there is no canonical definition to state claims against.
-/

/-! ## A038710.P12369865593290820054

`A002110(n)+A038711(n)`
-/

namespace A038710.P12369865593290820054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + A038711 n

end

end A038710.P12369865593290820054

/-! ## A038710.P12785334416619217722

`A121281(∑[n])+A038711(n)`
-/

namespace A038710.P12785334416619217722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) + A038711 n

end

end A038710.P12785334416619217722

/-! ## A038710.P3925812809548708699

`A038711(n)+record[A121281(n)]`
-/

namespace A038710.P3925812809548708699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038710.P3925812809548708699

/-! ## A038710.P15819216633090588145

`A006862(n)+A038711(n)-1`
-/

namespace A038710.P15819216633090588145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n + (A038711 n - 1)

end

end A038710.P15819216633090588145

/-! ## A038710.P7157408224831582405

`A038711(n)+∏[A008578(n+1)]`
-/

namespace A038710.P7157408224831582405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038710.P7157408224831582405

/-! ## A038710.P13210379254344957133

`A038711(n)+∏[A015919(n+1)]`
-/

namespace A038710.P13210379254344957133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038710.P13210379254344957133

/-! ## A038710.P3059139089471453725

`A038711(n)+∏[A064555(n+1)]`
-/

namespace A038710.P3059139089471453725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038710.P3059139089471453725

/-! ## A038710.P11454118136780616029

`A038711(n)+record[A181811(n+1)]`
-/

namespace A038710.P11454118136780616029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038710.P11454118136780616029

/-! ## A038710.P2856073851769337893

`A038711(n)+∏[record[A006530(n+1)]]`
-/

namespace A038710.P2856073851769337893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038710.P2856073851769337893

/-! ## A038710.P11775746437415425107

`A038711(n)+∏[record[A020639(n+1)]]`
-/

namespace A038710.P11775746437415425107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038710.P11775746437415425107

/-!
# A038711: a(n) is the smallest m such that A002110(n) + m is prime.

The programs for A038711, there is no canonical definition to state claims against.
-/

/-! ## A038711.P17163406062392997773

`A038710(n)-A002110(n)`
-/

namespace A038711.P17163406062392997773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - A002110 n

end

end A038711.P17163406062392997773

/-! ## A038711.P17629900953118298438

`A038710(n)-A096334(∑[n])`
-/

namespace A038711.P17629900953118298438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - A096334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038711.P17629900953118298438

/-! ## A038711.P5935568954660188704

`A038710(n)-A121281(∑[n])`
-/

namespace A038711.P5935568954660188704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - A121281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038711.P5935568954660188704

/-! ## A038711.P12592849901926260269

`A038710(n)+1-A006862(n)`
-/

namespace A038711.P12592849901926260269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n + (1 - A006862 n)

end

end A038711.P12592849901926260269

/-! ## A038711.P3612536141373960632

`A038710(n)-∏[A008578(n+1)]`
-/

namespace A038711.P3612536141373960632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038711.P3612536141373960632

/-! ## A038711.P1645294148941824702

`A038710(n)-∏[A015919(n+1)]`
-/

namespace A038711.P1645294148941824702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038711.P1645294148941824702

/-! ## A038711.P12501909099386030570

`A038710(n)-∏[A064555(n+1)]`
-/

namespace A038711.P12501909099386030570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038711.P12501909099386030570

/-! ## A038711.P7770322521157856774

`A038710(n)-∏[record[A006530(n+1)]]`
-/

namespace A038711.P7770322521157856774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038711.P7770322521157856774

/-! ## A038711.P11159029786359315588

`A038710(n)-∏[record[A020639(n+1)]]`
-/

namespace A038711.P11159029786359315588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038711.P11159029786359315588

/-! ## A038711.P6250523978909763445

`A038710(n)-∏[lt[A001222(n+1), 2]+1]`
-/

namespace A038711.P6250523978909763445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A038711.P6250523978909763445

/-!
# A038712: Let k be the exponent of highest power of 2 dividing n (A007814); a(n) = 2^(k+1)-1.

The programs for A038712, the canonical program `A038712.P3404197303190209645` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038712 has offset 1).

The definition of A038712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038712.P3404197303190209645

`xor(n+1, n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038712

/-- `xor(n+1, n)` -/
def P3404197303190209645.Spec : Prop :=
  ∀ n, (P3404197303190209645.a n : ℤ) = A038712 (n + 1)

theorem P3404197303190209645.correct : P3404197303190209645.Spec := by
  intro n
  simp only [A038712, Nat.add_sub_cancel]

end A038712

/-! ## A038712.P17880507332433460825

`2*A006519(n+1)-1`
-/

namespace A038712.P17880507332433460825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006519 (n + 1) - 1

end

end A038712.P17880507332433460825

namespace A038712

/-- `2*A006519(n+1)-1` -/
def P17880507332433460825.Spec : Prop :=
  ∀ n, P17880507332433460825.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P17438212344799972426

`2^A001511(n+1)-1`
-/

namespace A038712.P17438212344799972426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001511 (n + 1) : ℤ) - 1

end

end A038712.P17438212344799972426

namespace A038712

/-- `2^A001511(n+1)-1` -/
def P17438212344799972426.Spec : Prop :=
  ∀ n, P17438212344799972426.a n = (A038712 (n + 1) : ℚ)

end A038712

/-! ## A038712.P16432039536795339526

`2^(A007814(n+1)+1)-1`
-/

namespace A038712.P16432039536795339526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1

end

end A038712.P16432039536795339526

namespace A038712

/-- `2^(A007814(n+1)+1)-1` -/
def P16432039536795339526.Spec : Prop :=
  ∀ n, P16432039536795339526.a n = (A038712 (n + 1) : ℚ)

end A038712

/-! ## A038712.P12706271976954998021

`A000225(A001511(n+1))`
-/

namespace A038712.P12706271976954998021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A001511 (n + 1)).toNat

end

end A038712.P12706271976954998021

namespace A038712

/-- `A000225(A001511(n+1))` -/
def P12706271976954998021.Spec : Prop :=
  ∀ n, P12706271976954998021.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P4355687321946947743

`A000203(n+1)/A000593(n+1)`
-/

namespace A038712.P4355687321946947743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ)

end

end A038712.P4355687321946947743

namespace A038712

/-- `A000203(n+1)/A000593(n+1)` -/
def P4355687321946947743.Spec : Prop :=
  ∀ n, P4355687321946947743.a n = (A038712 (n + 1) : ℚ)

end A038712

/-! ## A038712.P4473437085269927866

`2^(1+A183063(n+1)/A001227(n+1))-1`
-/

namespace A038712.P4473437085269927866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 + (A183063 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) : ℝ) - 1

end

end A038712.P4473437085269927866

namespace A038712

/-- `2^(1+A183063(n+1)/A001227(n+1))-1` -/
def P4473437085269927866.Spec : Prop :=
  ∀ n, P4473437085269927866.a n = (A038712 (n + 1) : ℝ)

end A038712

/-! ## A038712.P15529484757654627324

`A086799(2*(n+1))-2*(n+1)`
-/

namespace A038712.P15529484757654627324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A038712.P15529484757654627324

namespace A038712

/-- `A086799(2*(n+1))-2*(n+1)` -/
def P15529484757654627324.Spec : Prop :=
  ∀ n, P15529484757654627324.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P365466604233349174

`abs(xor(n, -xor(n, -1)))`
-/

namespace A038712.P365466604233349174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-Int.xor (n : ℤ) (-1))|

end

end A038712.P365466604233349174

namespace A038712

/-- `abs(xor(n, -xor(n, -1)))` -/
def P365466604233349174.Spec : Prop :=
  ∀ n, P365466604233349174.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P6819376601395939758

`ceil(ratio[xor(n, abs(1-n))])`
-/

namespace A038712.P6819376601395939758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A038712.P6819376601395939758

namespace A038712

/-- `ceil(ratio[xor(n, abs(1-n))])` -/
def P6819376601395939758.Spec : Prop :=
  ∀ n, P6819376601395939758.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P3261717678878892933

`∏[abs(ratio[xor(n, n-1)])]`
-/

namespace A038712.P3261717678878892933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038712.P3261717678878892933

namespace A038712

/-- `∏[abs(ratio[xor(n, n-1)])]` -/
def P3261717678878892933.Spec : Prop :=
  ∀ n, P3261717678878892933.a n = (A038712 (n + 1) : ℚ)

end A038712

/-! ## A038712.P9532389082139537386

`∑{d}[2^val(n+1, 2), #]`
-/

namespace A038712.P9532389082139537386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A038712.P9532389082139537386

namespace A038712

/-- `∑{d}[2^val(n+1, 2), #]` -/
def P9532389082139537386.Spec : Prop :=
  ∀ n, (P9532389082139537386.a n : ℤ) = A038712 (n + 1)

end A038712

/-! ## A038712.P13499034047714271674

`or(1, xor(n, -xor(n, -1)))`
-/

namespace A038712.P13499034047714271674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.xor (n : ℤ) (-Int.xor (n : ℤ) (-1)))

end

end A038712.P13499034047714271674

namespace A038712

/-- `or(1, xor(n, -xor(n, -1)))` -/
def P13499034047714271674.Spec : Prop :=
  ∀ n, P13499034047714271674.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P12693138376735444930

`∑{d}[or(n, n+1)-n, #]`
-/

namespace A038712.P12693138376735444930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A038712.P12693138376735444930

namespace A038712

/-- `∑{d}[or(n, n+1)-n, #]` -/
def P12693138376735444930.Spec : Prop :=
  ∀ n, (P12693138376735444930.a n : ℤ) = A038712 (n + 1)

end A038712

/-! ## A038712.P3580369018435155772

`2*and(n, -(n+2))+1`
-/

namespace A038712.P3580369018435155772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-(n + 2 : ℤ)) + 1

end

end A038712.P3580369018435155772

namespace A038712

/-- `2*and(n, -(n+2))+1` -/
def P3580369018435155772.Spec : Prop :=
  ∀ n, P3580369018435155772.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P6946444461737177481

`lcm(2, and(n, -(n+2)))+1`
-/

namespace A038712.P6946444461737177481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 1

end

end A038712.P6946444461737177481

namespace A038712

/-- `lcm(2, and(n, -(n+2)))+1` -/
def P6946444461737177481.Spec : Prop :=
  ∀ n, (P6946444461737177481.a n : ℤ) = A038712 (n + 1)

end A038712

/-! ## A038712.P5920135358619902437

`abs(xor(n, 1-(n-2*n)))`
-/

namespace A038712.P5920135358619902437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (1 - ((n : ℤ) - (2 * n : ℤ)))|

end

end A038712.P5920135358619902437

namespace A038712

/-- `abs(xor(n, 1-(n-2*n)))` -/
def P5920135358619902437.Spec : Prop :=
  ∀ n, P5920135358619902437.a n = A038712 (n + 1)

end A038712

/-! ## A038712.P15555466176844192530

`∑{d}[and(n+1, -(n+1)), #]`
-/

namespace A038712.P15555466176844192530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A038712.P15555466176844192530

namespace A038712

/-- `∑{d}[and(n+1, -(n+1)), #]` -/
def P15555466176844192530.Spec : Prop :=
  ∀ n, (P15555466176844192530.a n : ℤ) = A038712 (n + 1)

end A038712

/-! ## A038712.P1663597008990777885

`∑{d}[or(n+1, -(n+1)), #]`
-/

namespace A038712.P1663597008990777885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A038712.P1663597008990777885

namespace A038712

/-- `∑{d}[or(n+1, -(n+1)), #]` -/
def P1663597008990777885.Spec : Prop :=
  ∀ n, (P1663597008990777885.a n : ℤ) = A038712 (n + 1)

end A038712

/-! ## A038712.P12176591237005532690

`and(-(n+3+n), Δ[n²])`
-/

namespace A038712.P12176591237005532690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 3 + n : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A038712.P12176591237005532690

namespace A038712

/-- `and(-(n+3+n), Δ[n²])` -/
def P12176591237005532690.Spec : Prop :=
  ∀ n, P12176591237005532690.a n = A038712 (n + 1)

end A038712

/-!
# A038713: a(n) = n XOR (n-1), i.e., nim-sum of sequential pairs, written in binary.

The programs for A038713, the canonical program `A038713.P2410717636388933865` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038713 has offset 1).

The definition of A038713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038713.P2410717636388933865

`(10^(val(n+1, 2)+1)-1)/9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038713

/-- `(10^(val(n+1, 2)+1)-1)/9` -/
def P2410717636388933865.Spec : Prop :=
  ∀ n, P2410717636388933865.a n = (A038713 (n + 1) : ℚ)

end A038713

/-! ## A038713.P9324508244216404993

`(10^and(1, n)*a(floor(n/2))+1)^and(1, n)` with `a(0)=1`
-/

namespace A038713.P9324508244216404993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 ^ Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat + 1) ^ Nat.land 1 n

end

end A038713.P9324508244216404993

namespace A038713

/-- `(10^and(1, n)*a(floor(n/2))+1)^and(1, n)` -/
def P9324508244216404993.Spec : Prop :=
  ∀ n, (P9324508244216404993.a n : ℤ) = A038713 (n + 1)

end A038713

/-! ## A038713.P4745434599618136885

`C(5*(2*a(floor(n/2))-(-1)^n+1)-9, n%2)` with `a(0)=1`
-/

namespace A038713.P4745434599618136885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (5 * ((2 * a ⌊(n : ℚ) / 2⌋.toNat : ℤ) - (-1) ^ n + 1) - 9).toNat (n % 2)

end

end A038713.P4745434599618136885

namespace A038713

/-- `C(5*(2*a(floor(n/2))-(-1)^n+1)-9, n%2)` -/
def P4745434599618136885.Spec : Prop :=
  ∀ n, (P4745434599618136885.a n : ℤ) = A038713 (n + 1)

end A038713

/-! ## A038713.P2585054589746043700

`A007088(xor(n, n+1))`
-/

namespace A038713.P2585054589746043700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor n (n + 1))

end

end A038713.P2585054589746043700

namespace A038713

/-- `A007088(xor(n, n+1))` -/
def P2585054589746043700.Spec : Prop :=
  ∀ n, P2585054589746043700.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P6980269362817949978

`A000042(val(n+1, 2)+1)`
-/

namespace A038713.P6980269362817949978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A038713.P6980269362817949978

namespace A038713

/-- `A000042(val(n+1, 2)+1)` -/
def P6980269362817949978.Spec : Prop :=
  ∀ n, P6980269362817949978.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P15068260678384450873

`A002275(val(n+1, 2)+1)`
-/

namespace A038713.P15068260678384450873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A038713.P15068260678384450873

namespace A038713

/-- `A002275(val(n+1, 2)+1)` -/
def P15068260678384450873.Spec : Prop :=
  ∀ n, P15068260678384450873.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P3172155554283931408

`A007088(∑{d}[2^val(n+1, 2), #])`
-/

namespace A038713.P3172155554283931408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A038713.P3172155554283931408

namespace A038713

/-- `A007088(∑{d}[2^val(n+1, 2), #])` -/
def P3172155554283931408.Spec : Prop :=
  ∀ n, P3172155554283931408.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P345344691942995983

`A265510(A135481(n))`
-/

namespace A038713.P345344691942995983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265510 (A135481 n).toNat

end

end A038713.P345344691942995983

namespace A038713

/-- `A265510(A135481(n))` -/
def P345344691942995983.Spec : Prop :=
  ∀ n, P345344691942995983.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P12426788537484657465

`A007088(A038712(n+1))`
-/

namespace A038713.P12426788537484657465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A038712 (n + 1)).toNat

end

end A038713.P12426788537484657465

namespace A038713

/-- `A007088(A038712(n+1))` -/
def P12426788537484657465.Spec : Prop :=
  ∀ n, P12426788537484657465.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P11649169499425160149

`A068995(A037227(n+1))`
-/

namespace A038713.P11649169499425160149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (A037227 (n + 1)).toNat

end

end A038713.P11649169499425160149

namespace A038713

/-- `A068995(A037227(n+1))` -/
def P11649169499425160149.Spec : Prop :=
  ∀ n, P11649169499425160149.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P14244444030675086625

`A063431(A115364(n+1))`
-/

namespace A038713.P14244444030675086625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (A115364 (n + 1)).toNat

end

end A038713.P14244444030675086625

namespace A038713

/-- `A063431(A115364(n+1))` -/
def P14244444030675086625.Spec : Prop :=
  ∀ n, P14244444030675086625.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P17979790917104255752

`A081857(A366839(n+1))`
-/

namespace A038713.P17979790917104255752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (A366839 (n + 1)).toNat

end

end A038713.P17979790917104255752

namespace A038713

/-- `A081857(A366839(n+1))` -/
def P17979790917104255752.Spec : Prop :=
  ∀ n, P17979790917104255752.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P18086182035041396420

`A000042(A007814(n+1)+1)`
-/

namespace A038713.P18086182035041396420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A007814 (n + 1) + 1).toNat

end

end A038713.P18086182035041396420

namespace A038713

/-- `A000042(A007814(n+1)+1)` -/
def P18086182035041396420.Spec : Prop :=
  ∀ n, P18086182035041396420.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P3041618022752961220

`A002275(A007814(n+1)+1)`
-/

namespace A038713.P3041618022752961220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A007814 (n + 1) + 1).toNat

end

end A038713.P3041618022752961220

namespace A038713

/-- `A002275(A007814(n+1)+1)` -/
def P3041618022752961220.Spec : Prop :=
  ∀ n, P3041618022752961220.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P15966863376513781170

`A007088(A171977(n+1)-1)`
-/

namespace A038713.P15966863376513781170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171977 (n + 1) - 1).toNat

end

end A038713.P15966863376513781170

namespace A038713

/-- `A007088(A171977(n+1)-1)` -/
def P15966863376513781170.Spec : Prop :=
  ∀ n, P15966863376513781170.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P10242168482333897243

`A002275(A090739(n+1)-2)`
-/

namespace A038713.P10242168482333897243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A090739 (n + 1) - 2).toNat

end

end A038713.P10242168482333897243

namespace A038713

/-- `A002275(A090739(n+1)-2)` -/
def P10242168482333897243.Spec : Prop :=
  ∀ n, P10242168482333897243.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P5560232699694306131

`A007088(A100892(n+1)/2)`
-/

namespace A038713.P5560232699694306131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A100892 (n + 1) : ℚ) / 2)).toNat

end

end A038713.P5560232699694306131

namespace A038713

/-- `A007088(A100892(n+1)/2)` -/
def P5560232699694306131.Spec : Prop :=
  ∀ n, P5560232699694306131.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P10130705464646808430

`A007088(2*A006519(n+1)-1)`
-/

namespace A038713.P10130705464646808430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A006519 (n + 1) - 1).toNat

end

end A038713.P10130705464646808430

namespace A038713

/-- `A007088(2*A006519(n+1)-1)` -/
def P10130705464646808430.Spec : Prop :=
  ∀ n, P10130705464646808430.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P18207454250791053923

`A007088(A135521(2*n+n+2))`
-/

namespace A038713.P18207454250791053923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A135521 (2 * n + (n + 2))).toNat

end

end A038713.P18207454250791053923

namespace A038713

/-- `A007088(A135521(2*n+n+2))` -/
def P18207454250791053923.Spec : Prop :=
  ∀ n, P18207454250791053923.a n = A038713 (n + 1)

end A038713

/-! ## A038713.P11648156597883578381

`∑{d}[n+1, A099894(#-1)*A138342((n+1)/#)]`
-/

namespace A038713.P11648156597883578381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A138342 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038713.P11648156597883578381

namespace A038713

/-- `∑{d}[n+1, A099894(#-1)*A138342((n+1)/#)]` -/
def P11648156597883578381.Spec : Prop :=
  ∀ n, P11648156597883578381.a n = A038713 (n + 1)

end A038713

/-!
# A038714: Pronic numbers repeated 4 times; a(n) = floor(n/4) * ceiling((n+1)/4).

The programs for A038714, the canonical program `A038714.P12896136081027992850` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038714 has offset 0).

The definition of A038714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+1)/4)` (program `A038714.P12896136081027992850`, by `A038714.P12896136081027992850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038714.P8481970847758463474

`floor(n/4)*(floor(n/4)+1)`
-/

namespace A038714.P8481970847758463474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * (⌊(n : ℚ) / 4⌋ + 1)

end

end A038714.P8481970847758463474

namespace A038714

/-- `floor(n/4)*(floor(n/4)+1)` -/
def P8481970847758463474.Spec : Prop :=
  ∀ n, P8481970847758463474.a n = A038714 n

end A038714

/-! ## A038714.P12896136081027992850

`floor(n/4)*ceil((n+1)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038714

/-- `floor(n/4)*ceil((n+1)/4)` -/
def P12896136081027992850.Spec : Prop :=
  ∀ n, P12896136081027992850.a n = A038714 n

theorem P12896136081027992850.correct : P12896136081027992850.Spec := by
  intro n
  simp only [A038714]

end A038714

/-! ## A038714.P13584069717602882881

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=2, a(6)=2, a(7)=2, a(8)=6`
-/

namespace A038714.P13584069717602882881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 2, 2, 2, 2, 6] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A038714.P13584069717602882881

namespace A038714

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P13584069717602882881.Spec : Prop :=
  ∀ n, P13584069717602882881.a n = A038714 n

end A038714

/-! ## A038714.P4475604049364710481

`∑[n*2%gcd(4, n)/4]`
-/

namespace A038714.P4475604049364710481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((2 % Nat.gcd 4 n : ℕ) : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038714.P4475604049364710481

namespace A038714

/-- `∑[n*2%gcd(4, n)/4]` -/
def P4475604049364710481.Spec : Prop :=
  ∀ n, P4475604049364710481.a n = (A038714 n : ℚ)

end A038714

/-! ## A038714.P12464858727963779617

`lcm(floor(n/4), ∑[char[4*n]])`
-/

namespace A038714.P12464858727963779617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 4⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A038714.P12464858727963779617

namespace A038714

/-- `lcm(floor(n/4), ∑[char[4*n]])` -/
def P12464858727963779617.Spec : Prop :=
  ∀ n, (P12464858727963779617.a n : ℤ) = A038714 n

end A038714

/-! ## A038714.P4046681352762663159

`∑[n-n/gcd(n+2, ∑[n])]`
-/

namespace A038714.P4046681352762663159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n : ℚ) / (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038714.P4046681352762663159

namespace A038714

/-- `∑[n-n/gcd(n+2, ∑[n])]` -/
def P4046681352762663159.Spec : Prop :=
  ∀ n, P4046681352762663159.a n = (A038714 n : ℚ)

end A038714

/-! ## A038714.P10587113329217240454

`∑[n/2*∑[∑[n+1]]%2]`
-/

namespace A038714.P10587113329217240454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038714.P10587113329217240454

namespace A038714

/-- `∑[n/2*∑[∑[n+1]]%2]` -/
def P10587113329217240454.Spec : Prop :=
  ∀ n, P10587113329217240454.a n = (A038714 n : ℚ)

end A038714

/-! ## A038714.P3702786444647707888

`a(n-1)+(∑[n+1]*∑[n])%n` with `a(0)=0`
-/

namespace A038714.P3702786444647707888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) % n

end

end A038714.P3702786444647707888

namespace A038714

/-- `a(n-1)+(∑[n+1]*∑[n])%n` -/
def P3702786444647707888.Spec : Prop :=
  ∀ n, (P3702786444647707888.a n : ℤ) = A038714 n

end A038714

/-! ## A038714.P10848834679969318064

`∑[floor(a(n-4))]+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A038714.P10848834679969318064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 4)

end

end A038714.P10848834679969318064

namespace A038714

/-- `∑[floor(a(n-4))]+a(n-4)` -/
def P10848834679969318064.Spec : Prop :=
  ∀ n, (P10848834679969318064.a n : ℤ) = A038714 n

end A038714

/-! ## A038714.P6649040925216727000

`A008238(or(1, n))`
-/

namespace A038714.P6649040925216727000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (Nat.lor 1 n)

end

end A038714.P6649040925216727000

namespace A038714

/-- `A008238(or(1, n))` -/
def P6649040925216727000.Spec : Prop :=
  ∀ n, P6649040925216727000.a n = A038714 n

end A038714

/-! ## A038714.P2202398337879737958

`A296159(or(1, n))`
-/

namespace A038714.P2202398337879737958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (Nat.lor 1 n)

end

end A038714.P2202398337879737958

namespace A038714

/-- `A296159(or(1, n))` -/
def P2202398337879737958.Spec : Prop :=
  ∀ n, P2202398337879737958.a n = A038714 n

end A038714

/-! ## A038714.P11207868385814781704

`A008217(or(3, n))`
-/

namespace A038714.P11207868385814781704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (Nat.lor 3 n)

end

end A038714.P11207868385814781704

namespace A038714

/-- `A008217(or(3, n))` -/
def P11207868385814781704.Spec : Prop :=
  ∀ n, P11207868385814781704.a n = A038714 n

end A038714

/-! ## A038714.P12189535894733226610

`A008797(or(3, n))`
-/

namespace A038714.P12189535894733226610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (Nat.lor 3 n)

end

end A038714.P12189535894733226610

namespace A038714

/-- `A008797(or(3, n))` -/
def P12189535894733226610.Spec : Prop :=
  ∀ n, P12189535894733226610.a n = A038714 n

end A038714

/-! ## A038714.P15065240174392307187

`A131118(or(3, n))`
-/

namespace A038714.P15065240174392307187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131118 (Nat.lor 3 n)

end

end A038714.P15065240174392307187

namespace A038714

/-- `A131118(or(3, n))` -/
def P15065240174392307187.Spec : Prop :=
  ∀ n, P15065240174392307187.a n = A038714 n

end A038714

/-! ## A038714.P1866229434638022758

`A220838(or(3, n))`
-/

namespace A038714.P1866229434638022758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (Nat.lor 3 n)

end

end A038714.P1866229434638022758

namespace A038714

/-- `A220838(or(3, n))` -/
def P1866229434638022758.Spec : Prop :=
  ∀ n, P1866229434638022758.a n = A038714 n

end A038714

/-! ## A038714.P1313413121160636342

`A110660(floor(n/2))`
-/

namespace A038714.P1313413121160636342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 ⌊(n : ℚ) / 2⌋.toNat

end

end A038714.P1313413121160636342

namespace A038714

/-- `A110660(floor(n/2))` -/
def P1313413121160636342.Spec : Prop :=
  ∀ n, P1313413121160636342.a n = A038714 n

end A038714

/-! ## A038714.P13692742673804513208

`A038715(or(1, n)-1)`
-/

namespace A038714.P13692742673804513208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (Nat.lor 1 n - 1)

end

end A038714.P13692742673804513208

namespace A038714

/-- `A038715(or(1, n)-1)` -/
def P13692742673804513208.Spec : Prop :=
  ∀ n, P13692742673804513208.a n = A038714 n

end A038714

/-! ## A038714.P4372818202010795219

`A296141(gcd(2, n)+n)`
-/

namespace A038714.P4372818202010795219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (Nat.gcd 2 n + n)

end

end A038714.P4372818202010795219

namespace A038714

/-- `A296141(gcd(2, n)+n)` -/
def P4372818202010795219.Spec : Prop :=
  ∀ n, P4372818202010795219.a n = A038714 n

end A038714

/-! ## A038714.P8162042638131697978

`A038715(n-and(1, n))`
-/

namespace A038714.P8162042638131697978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (n - Nat.land 1 n)

end

end A038714.P8162042638131697978

namespace A038714

/-- `A038715(n-and(1, n))` -/
def P8162042638131697978.Spec : Prop :=
  ∀ n, P8162042638131697978.a n = A038714 n

end A038714

/-! ## A038714.P6473140973389800716

`∑[n/2*A121262(n)]`
-/

namespace A038714.P6473140973389800716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A121262 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038714.P6473140973389800716

namespace A038714

/-- `∑[n/2*A121262(n)]` -/
def P6473140973389800716.Spec : Prop :=
  ∀ n, P6473140973389800716.a n = (A038714 n : ℚ)

end A038714

/-!
# A038715: a(n) = floor(n/4)*ceiling((n+2)/4).

The programs for A038715, the canonical program `A038715.P4898977727383590326` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038715 has offset 0).

The definition of A038715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+2)/4)` (program `A038715.P4898977727383590326`, by `A038715.P4898977727383590326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038715.P4898977727383590326

`floor(n/4)*ceil((n+2)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038715

/-- `floor(n/4)*ceil((n+2)/4)` -/
def P4898977727383590326.Spec : Prop :=
  ∀ n, P4898977727383590326.a n = A038715 n

theorem P4898977727383590326.correct : P4898977727383590326.Spec := by
  intro n
  simp only [A038715]

end A038715

/-! ## A038715.P11663818626646341730

`floor(A008217(n)+n/4)`
-/

namespace A038715.P11663818626646341730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008217 n : ℚ) + (n : ℚ) / 4⌋

end

end A038715.P11663818626646341730

namespace A038715

/-- `floor(A008217(n)+n/4)` -/
def P11663818626646341730.Spec : Prop :=
  ∀ n, P11663818626646341730.a n = A038715 n

end A038715

/-! ## A038715.P8485429791800654668

`A038716(A290561(n))`
-/

namespace A038715.P8485429791800654668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 (A290561 n).toNat

end

end A038715.P8485429791800654668

namespace A038715

/-- `A038716(A290561(n))` -/
def P8485429791800654668.Spec : Prop :=
  ∀ n, P8485429791800654668.a n = A038715 n

end A038715

/-! ## A038715.P6378031061508473196

`A198442(A004525(n+1))`
-/

namespace A038715.P6378031061508473196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (A004525 (n + 1)).toNat

end

end A038715.P6378031061508473196

namespace A038715

/-- `A198442(A004525(n+1))` -/
def P6378031061508473196.Spec : Prop :=
  ∀ n, P6378031061508473196.a n = A038715 n

end A038715

/-! ## A038715.P4055320694349373154

`A198442(A004524(n)+1)`
-/

namespace A038715.P4055320694349373154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (A004524 n + 1).toNat

end

end A038715.P4055320694349373154

namespace A038715

/-- `A198442(A004524(n)+1)` -/
def P4055320694349373154.Spec : Prop :=
  ∀ n, P4055320694349373154.a n = A038715 n

end A038715

/-! ## A038715.P12986843994928227020

`A038716(2*A004524(n))`
-/

namespace A038715.P12986843994928227020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 (2 * A004524 n).toNat

end

end A038715.P12986843994928227020

namespace A038715

/-- `A038716(2*A004524(n))` -/
def P12986843994928227020.Spec : Prop :=
  ∀ n, P12986843994928227020.a n = A038715 n

end A038715

/-! ## A038715.P9517020868890760572

`A008217(n)+A002265(n)`
-/

namespace A038715.P9517020868890760572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 n + A002265 n

end

end A038715.P9517020868890760572

namespace A038715

/-- `A008217(n)+A002265(n)` -/
def P9517020868890760572.Spec : Prop :=
  ∀ n, P9517020868890760572.a n = A038715 n

end A038715

/-! ## A038715.P11227011981760807304

`A038716(n-A021913(n))`
-/

namespace A038715.P11227011981760807304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 ((n : ℤ) - A021913 n).toNat

end

end A038715.P11227011981760807304

namespace A038715

/-- `A038716(n-A021913(n))` -/
def P11227011981760807304.Spec : Prop :=
  ∀ n, P11227011981760807304.a n = A038715 n

end A038715

/-! ## A038715.P16746426252487106464

`A302488(n)-A389430(n)`
-/

namespace A038715.P16746426252487106464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 n - A389430 n

end

end A038715.P16746426252487106464

namespace A038715

/-- `A302488(n)-A389430(n)` -/
def P16746426252487106464.Spec : Prop :=
  ∀ n, P16746426252487106464.a n = A038715 n

end A038715

/-! ## A038715.P443773229511635064

`A198442((A290561(n)+1)/2)`
-/

namespace A038715.P443773229511635064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (SequenceMachineLib.roundAway ((A290561 n + 1 : ℚ) / 2)).toNat

end

end A038715.P443773229511635064

namespace A038715

/-- `A198442((A290561(n)+1)/2)` -/
def P443773229511635064.Spec : Prop :=
  ∀ n, P443773229511635064.a n = A038715 n

end A038715

/-! ## A038715.P8332694896188327745

`A038716(A014577(n)-1+n)`
-/

namespace A038715.P8332694896188327745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 (A014577 n - 1 + (n : ℤ)).toNat

end

end A038715.P8332694896188327745

namespace A038715

/-- `A038716(A014577(n)-1+n)` -/
def P8332694896188327745.Spec : Prop :=
  ∀ n, P8332694896188327745.a n = A038715 n

end A038715

/-! ## A038715.P9153228681008600696

`A038716(n-(1-A014577(n)))`
-/

namespace A038715.P9153228681008600696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 ((n : ℤ) - (1 - A014577 n)).toNat

end

end A038715.P9153228681008600696

namespace A038715

/-- `A038716(n-(1-A014577(n)))` -/
def P9153228681008600696.Spec : Prop :=
  ∀ n, P9153228681008600696.a n = A038715 n

end A038715

/-! ## A038715.P1169516342331026228

`abs(Δ[A001972(n)]*A002265(n))`
-/

namespace A038715.P1169516342331026228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A002265 n|

end

end A038715.P1169516342331026228

namespace A038715

/-- `abs(Δ[A001972(n)]*A002265(n))` -/
def P1169516342331026228.Spec : Prop :=
  ∀ n, P1169516342331026228.a n = A038715 n

end A038715

/-! ## A038715.P3208801798280512195

`A002620(A004524(n))+A002265(n)`
-/

namespace A038715.P3208801798280512195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004524 n).toNat + A002265 n

end

end A038715.P3208801798280512195

namespace A038715

/-- `A002620(A004524(n))+A002265(n)` -/
def P3208801798280512195.Spec : Prop :=
  ∀ n, P3208801798280512195.a n = A038715 n

end A038715

/-! ## A038715.P6851148902372114292

`A198442(A290561(n)-A004524(n))`
-/

namespace A038715.P6851148902372114292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (A290561 n - A004524 n).toNat

end

end A038715.P6851148902372114292

namespace A038715

/-- `A198442(A290561(n)-A004524(n))` -/
def P6851148902372114292.Spec : Prop :=
  ∀ n, P6851148902372114292.a n = A038715 n

end A038715

/-! ## A038715.P3858159365289719864

`A008238(n+1)-A011765(n+1)`
-/

namespace A038715.P3858159365289719864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (n + 1) - A011765 (n + 1)

end

end A038715.P3858159365289719864

namespace A038715

/-- `A008238(n+1)-A011765(n+1)` -/
def P3858159365289719864.Spec : Prop :=
  ∀ n, P3858159365289719864.a n = A038715 n

end A038715

/-! ## A038715.P11065956670509382462

`A038716(A004524(n+1)+A004524(n))`
-/

namespace A038715.P11065956670509382462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 (A004524 (n + 1) + A004524 n).toNat

end

end A038715.P11065956670509382462

namespace A038715

/-- `A038716(A004524(n+1)+A004524(n))` -/
def P11065956670509382462.Spec : Prop :=
  ∀ n, P11065956670509382462.a n = A038715 n

end A038715

/-! ## A038715.P8942526534175139263

`A002265(n)+A002265(n+1)*A002265(n)`
-/

namespace A038715.P8942526534175139263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + A002265 (n + 1) * A002265 n

end

end A038715.P8942526534175139263

namespace A038715

/-- `A002265(n)+A002265(n+1)*A002265(n)` -/
def P8942526534175139263.Spec : Prop :=
  ∀ n, P8942526534175139263.a n = A038715 n

end A038715

/-! ## A038715.P13744542712773415574

`A008238(n+1)+A002265(n)-A002265(n+1)`
-/

namespace A038715.P13744542712773415574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (n + 1) + (A002265 n - A002265 (n + 1))

end

end A038715.P13744542712773415574

namespace A038715

/-- `A008238(n+1)+A002265(n)-A002265(n+1)` -/
def P13744542712773415574.Spec : Prop :=
  ∀ n, P13744542712773415574.a n = A038715 n

end A038715

/-! ## A038715.P13531685544670015573

`A008238(n+1)+A008621(n)-A008621(n+1)`
-/

namespace A038715.P13531685544670015573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (n + 1) + (A008621 n - A008621 (n + 1))

end

end A038715.P13531685544670015573

namespace A038715

/-- `A008238(n+1)+A008621(n)-A008621(n+1)` -/
def P13531685544670015573.Spec : Prop :=
  ∀ n, P13531685544670015573.a n = A038715 n

end A038715

/-!
# A038716: a(n) = floor(n/4)*ceiling((n+3)/4).

The programs for A038716, the canonical program `A038716.P12711388585788164190` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038716 has offset 0).

The definition of A038716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+3)/4)` (program `A038716.P12711388585788164190`, by `A038716.P12711388585788164190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038716.P12711388585788164190

`floor(n/4)*ceil((n+3)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038716

/-- `floor(n/4)*ceil((n+3)/4)` -/
def P12711388585788164190.Spec : Prop :=
  ∀ n, P12711388585788164190.a n = A038716 n

theorem P12711388585788164190.correct : P12711388585788164190.Spec := by
  intro n
  simp only [A038716]

end A038716

/-! ## A038716.P7775163706279091478

`floor(a(n-4)+n/2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A038716.P7775163706279091478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  ⌊(a (n - 4) : ℚ) + (n : ℚ) / 2⌋

end

end A038716.P7775163706279091478

namespace A038716

/-- `floor(a(n-4)+n/2)` -/
def P7775163706279091478.Spec : Prop :=
  ∀ n, P7775163706279091478.a n = A038716 n

end A038716

/-! ## A038716.P4771533004475441399

`∑[(∑[n]-a(n-2))%n]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038716.P4771533004475441399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 2)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038716.P4771533004475441399

namespace A038716

/-- `∑[(∑[n]-a(n-2))%n]` -/
def P4771533004475441399.Spec : Prop :=
  ∀ n, P4771533004475441399.a n = A038716 n

end A038716

/-! ## A038716.P9462250601457314057

`A038715(or(1, n))`
-/

namespace A038716.P9462250601457314057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (Nat.lor 1 n)

end

end A038716.P9462250601457314057

namespace A038716

/-- `A038715(or(1, n))` -/
def P9462250601457314057.Spec : Prop :=
  ∀ n, P9462250601457314057.a n = A038716 n

end A038716

/-! ## A038716.P1466239436640489942

`A198442(∑[char[2*n]])`
-/

namespace A038716.P1466239436640489942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038716.P1466239436640489942

namespace A038716

/-- `A198442(∑[char[2*n]])` -/
def P1466239436640489942.Spec : Prop :=
  ∀ n, P1466239436640489942.a n = A038716 n

end A038716

/-! ## A038716.P2296651983818137051

`A002620(floor(n/2))+floor(n/4)`
-/

namespace A038716.P2296651983818137051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ⌊(n : ℚ) / 2⌋.toNat + ⌊(n : ℚ) / 4⌋

end

end A038716.P2296651983818137051

namespace A038716

/-- `A002620(floor(n/2))+floor(n/4)` -/
def P2296651983818137051.Spec : Prop :=
  ∀ n, P2296651983818137051.a n = A038716 n

end A038716

/-! ## A038716.P13353698756498483858

`A038715(A109613(n))`
-/

namespace A038716.P13353698756498483858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A109613 n).toNat

end

end A038716.P13353698756498483858

namespace A038716

/-- `A038715(A109613(n))` -/
def P13353698756498483858.Spec : Prop :=
  ∀ n, P13353698756498483858.a n = A038716 n

end A038716

/-! ## A038716.P13727124506406682728

`A038715(A052928(n)+1)`
-/

namespace A038716.P13727124506406682728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A052928 n + 1).toNat

end

end A038716.P13727124506406682728

namespace A038716

/-- `A038715(A052928(n)+1)` -/
def P13727124506406682728.Spec : Prop :=
  ∀ n, P13727124506406682728.a n = A038716 n

end A038716

/-! ## A038716.P11392406646048642725

`A038715(A063196(n+1))`
-/

namespace A038716.P11392406646048642725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A063196 (n + 1)).toNat

end

end A038716.P11392406646048642725

namespace A038716

/-- `A038715(A063196(n+1))` -/
def P11392406646048642725.Spec : Prop :=
  ∀ n, P11392406646048642725.a n = A038716 n

end A038716

/-! ## A038716.P9057300950533605094

`A004652(A008619(n))-1`
-/

namespace A038716.P9057300950533605094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A008619 n).toNat - 1

end

end A038716.P9057300950533605094

namespace A038716

/-- `A004652(A008619(n))-1` -/
def P9057300950533605094.Spec : Prop :=
  ∀ n, P9057300950533605094.a n = A038716 n

end A038716

/-! ## A038716.P15761985170438536185

`A004652(A004526(n)+1)-1`
-/

namespace A038716.P15761985170438536185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A004526 n + 1).toNat - 1

end

end A038716.P15761985170438536185

namespace A038716

/-- `A004652(A004526(n)+1)-1` -/
def P15761985170438536185.Spec : Prop :=
  ∀ n, P15761985170438536185.a n = A038716 n

end A038716

/-! ## A038716.P4834178081302502716

`A004652(A110654(n+1))-1`
-/

namespace A038716.P4834178081302502716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A110654 (n + 1)).toNat - 1

end

end A038716.P4834178081302502716

namespace A038716

/-- `A004652(A110654(n+1))-1` -/
def P4834178081302502716.Spec : Prop :=
  ∀ n, P4834178081302502716.a n = A038716 n

end A038716

/-! ## A038716.P15660675953944931140

`A008642(n)-A128929(n+4)`
-/

namespace A038716.P15660675953944931140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A128929 (n + 4)

end

end A038716.P15660675953944931140

namespace A038716

/-- `A008642(n)-A128929(n+4)` -/
def P15660675953944931140.Spec : Prop :=
  ∀ n, P15660675953944931140.a n = A038716 n

end A038716

/-! ## A038716.P12721942001402829535

`A008642(n)-A008619(A008619(n))`
-/

namespace A038716.P12721942001402829535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A008619 (A008619 n).toNat

end

end A038716.P12721942001402829535

namespace A038716

/-- `A008642(n)-A008619(A008619(n))` -/
def P12721942001402829535.Spec : Prop :=
  ∀ n, P12721942001402829535.a n = A038716 n

end A038716

/-! ## A038716.P10111799467304324731

`A038715(A140201(n+1)-1)`
-/

namespace A038716.P10111799467304324731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A140201 (n + 1) - 1).toNat

end

end A038716.P10111799467304324731

namespace A038716

/-- `A038715(A140201(n+1)-1)` -/
def P10111799467304324731.Spec : Prop :=
  ∀ n, P10111799467304324731.a n = A038716 n

end A038716

/-! ## A038716.P14570795061421062085

`Δ[∑[A004652(A110654(n))]-n]`
-/

namespace A038716.P14570795061421062085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A110654 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038716.P14570795061421062085

namespace A038716

/-- `Δ[∑[A004652(A110654(n))]-n]` -/
def P14570795061421062085.Spec : Prop :=
  ∀ n, P14570795061421062085.a n = A038716 n

end A038716

/-! ## A038716.P10014974087685816147

`A008642(n)-A008621(n+2)`
-/

namespace A038716.P10014974087685816147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A008621 (n + 2)

end

end A038716.P10014974087685816147

namespace A038716

/-- `A008642(n)-A008621(n+2)` -/
def P10014974087685816147.Spec : Prop :=
  ∀ n, P10014974087685816147.a n = A038716 n

end A038716

/-! ## A038716.P14898086668400075516

`A004652(A008624(2*n))-1`
-/

namespace A038716.P14898086668400075516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A008624 (2 * n)).toNat - 1

end

end A038716.P14898086668400075516

namespace A038716

/-- `A004652(A008624(2*n))-1` -/
def P14898086668400075516.Spec : Prop :=
  ∀ n, P14898086668400075516.a n = A038716 n

end A038716

/-! ## A038716.P7145279068302398068

`A004652(A110655(2*n+1))-1`
-/

namespace A038716.P7145279068302398068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A110655 (2 * n + 1)).toNat - 1

end

end A038716.P7145279068302398068

namespace A038716

/-- `A004652(A110655(2*n+1))-1` -/
def P7145279068302398068.Spec : Prop :=
  ∀ n, P7145279068302398068.a n = A038716 n

end A038716

/-! ## A038716.P10653537763338296043

`A024165(3*n+1)+floor(n/4)`
-/

namespace A038716.P10653537763338296043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (3 * n + 1) + ⌊(n : ℚ) / 4⌋

end

end A038716.P10653537763338296043

namespace A038716

/-- `A024165(3*n+1)+floor(n/4)` -/
def P10653537763338296043.Spec : Prop :=
  ∀ n, P10653537763338296043.a n = A038716 n

end A038716

/-!
# A038718: Number of permutations P of {1,2,...,n} such that P(1)=1 and |P^-1(i+1)-P^-1(i)| equals 1 or 2 for i=1,2,...,n-1.

The programs for A038718, the canonical program `A038718.P5241560716220405868` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038718 has offset 1).

The definition of A038718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038718.P5241560716220405868

`a(n-1)+a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038718

/-- `a(n-1)+a(n-3)+1` -/
def P5241560716220405868.Spec : Prop :=
  ∀ n, (P5241560716220405868.a n : ℤ) = A038718 (n + 1)

theorem P5241560716220405868.correct : P5241560716220405868.Spec := by
  intro n
  simp only [A038718, Nat.add_sub_cancel]

end A038718

/-! ## A038718.P5165460049092695869

`A097333(n+1)-1`
-/

namespace A038718.P5165460049092695869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) - 1

end

end A038718.P5165460049092695869

namespace A038718

/-- `A097333(n+1)-1` -/
def P5165460049092695869.Spec : Prop :=
  ∀ n, P5165460049092695869.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P8876440018018301628

`ogf((1-x+x^2)/(1-2x+x^2-x^3+x^4))`
-/

namespace A038718.P8876440018018301628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -2, 1, -1, 1] n

end

end A038718.P8876440018018301628

namespace A038718

/-- `ogf((1-x+x^2)/(1-2x+x^2-x^3+x^4))` -/
def P8876440018018301628.Spec : Prop :=
  ∀ n, P8876440018018301628.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P10975992758424370852

`∑[a(n-1)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A038718.P10975992758424370852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038718.P10975992758424370852

namespace A038718

/-- `∑[a(n-1)+a(n-3)]` -/
def P10975992758424370852.Spec : Prop :=
  ∀ n, (P10975992758424370852.a n : ℤ) = A038718 (n + 1)

end A038718

/-! ## A038718.P7387449811771314783

`a(n-1)-xor(-1, a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A038718.P7387449811771314783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 3))

end

end A038718.P7387449811771314783

namespace A038718

/-- `a(n-1)-xor(-1, a(n-3))` -/
def P7387449811771314783.Spec : Prop :=
  ∀ n, P7387449811771314783.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P10071476485316560520

`2-floor(1-a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A038718.P10071476485316560520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 3))

end

end A038718.P10071476485316560520

namespace A038718

/-- `2-floor(1-a(n-1)-a(n-3))` -/
def P10071476485316560520.Spec : Prop :=
  ∀ n, P10071476485316560520.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P4038126149040418686

`A170934(n)-3`
-/

namespace A038718.P4038126149040418686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170934 n - 3

end

end A038718.P4038126149040418686

namespace A038718

/-- `A170934(n)-3` -/
def P4038126149040418686.Spec : Prop :=
  ∀ n, P4038126149040418686.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P5051669100953230593

`∑[A058278(n+1)]`
-/

namespace A038718.P5051669100953230593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038718.P5051669100953230593

namespace A038718

/-- `∑[A058278(n+1)]` -/
def P5051669100953230593.Spec : Prop :=
  ∀ n, P5051669100953230593.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P3086814252695201716

`∑[abs(Δ[A097333(n)])]`
-/

namespace A038718.P3086814252695201716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038718.P3086814252695201716

namespace A038718

/-- `∑[abs(Δ[A097333(n)])]` -/
def P3086814252695201716.Spec : Prop :=
  ∀ n, P3086814252695201716.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P1073398432683016441

`abs(Δ[A199804(n)])-1`
-/

namespace A038718.P1073398432683016441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A038718.P1073398432683016441

namespace A038718

/-- `abs(Δ[A199804(n)])-1` -/
def P1073398432683016441.Spec : Prop :=
  ∀ n, P1073398432683016441.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P8088147810518673967

`∑[A226916(2*(n+2))]`
-/

namespace A038718.P8088147810518673967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038718.P8088147810518673967

namespace A038718

/-- `∑[A226916(2*(n+2))]` -/
def P8088147810518673967.Spec : Prop :=
  ∀ n, P8088147810518673967.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P16536224526846286163

`A226275(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A038718.P16536224526846286163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A226275 n + a (n - 3)

end

end A038718.P16536224526846286163

namespace A038718

/-- `A226275(n)+a(n-3)` -/
def P16536224526846286163.Spec : Prop :=
  ∀ n, P16536224526846286163.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P11428381428038555246

`A003410(A028310(n))-1`
-/

namespace A038718.P11428381428038555246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A028310 n).toNat - 1

end

end A038718.P11428381428038555246

namespace A038718

/-- `A003410(A028310(n))-1` -/
def P11428381428038555246.Spec : Prop :=
  ∀ n, P11428381428038555246.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P8735592583112379741

`A057428(n)+A003410(n)`
-/

namespace A038718.P8735592583112379741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A003410 n

end

end A038718.P8735592583112379741

namespace A038718

/-- `A057428(n)+A003410(n)` -/
def P8735592583112379741.Spec : Prop :=
  ∀ n, P8735592583112379741.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P2976650214898741056

`A003410(n)-A057427(n)`
-/

namespace A038718.P2976650214898741056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n - A057427 n

end

end A038718.P2976650214898741056

namespace A038718

/-- `A003410(n)-A057427(n)` -/
def P2976650214898741056.Spec : Prop :=
  ∀ n, P2976650214898741056.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P344183681053754628

`A226916(A020744(n+1))-1`
-/

namespace A038718.P344183681053754628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (A020744 (n + 1)).toNat - 1

end

end A038718.P344183681053754628

namespace A038718

/-- `A226916(A020744(n+1))-1` -/
def P344183681053754628.Spec : Prop :=
  ∀ n, P344183681053754628.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P4859385037445065272

`A196382(n+1)+A058278(n)`
-/

namespace A038718.P4859385037445065272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 1) + A058278 n

end

end A038718.P4859385037445065272

namespace A038718

/-- `A196382(n+1)+A058278(n)` -/
def P4859385037445065272.Spec : Prop :=
  ∀ n, P4859385037445065272.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P9191318342356908351

`A000930(n)+A068921(n)-1`
-/

namespace A038718.P9191318342356908351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + (A068921 n - 1)

end

end A038718.P9191318342356908351

namespace A038718

/-- `A000930(n)+A068921(n)-1` -/
def P9191318342356908351.Spec : Prop :=
  ∀ n, P9191318342356908351.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P2136290299218331447

`A003410(n)+A054977(n)-2`
-/

namespace A038718.P2136290299218331447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n + (A054977 n - 2)

end

end A038718.P2136290299218331447

namespace A038718

/-- `A003410(n)+A054977(n)-2` -/
def P2136290299218331447.Spec : Prop :=
  ∀ n, P2136290299218331447.a n = A038718 (n + 1)

end A038718

/-! ## A038718.P4923584518944331062

`A000930(n)+∑[A078012(n+1)]`
-/

namespace A038718.P4923584518944331062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038718.P4923584518944331062

namespace A038718

/-- `A000930(n)+∑[A078012(n+1)]` -/
def P4923584518944331062.Spec : Prop :=
  ∀ n, P4923584518944331062.a n = A038718 (n + 1)

end A038718

/-!
# A038719: Triangle T(n,k) (0 <= k <= n) giving number of chains of length k in partially ordered set formed from subsets of n-set by inclusion.

The programs for A038719, there is no canonical definition to state claims against.
-/

/-! ## A038719.P12831961971349844754

`A143494(n+2)*A233543(n)`
-/

namespace A038719.P12831961971349844754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (n + 2) * A233543 n

end

end A038719.P12831961971349844754

/-! ## A038719.P5888388607873930685

`abs(Δ[A003056(n)-A163626(n)])`
-/

namespace A038719.P5888388607873930685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A038719.P5888388607873930685

/-! ## A038719.P18407143339898548910

`A002262(n)!*A143494(n+2)`
-/

namespace A038719.P18407143339898548910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A143494 (n + 2)

end

end A038719.P18407143339898548910

/-! ## A038719.P13680585914251829801

`abs(Δ[A002024(n+1)-A163626(n)])`
-/

namespace A038719.P13680585914251829801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A038719.P13680585914251829801

/-! ## A038719.P6492978885659121457

`abs(Δ[A003057(n+2)-A163626(n)])`
-/

namespace A038719.P6492978885659121457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A038719.P6492978885659121457

/-! ## A038719.P4518451270840319578

`A166350(n+1)/A002260(n+1)*A143494(n+2)`
-/

namespace A038719.P4518451270840319578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A143494 (n + 2) : ℚ)

end

end A038719.P4518451270840319578

/-! ## A038719.P14663403675419940930

`A028246(n+1)+A028246(n+2)%A019538(n+2)`
-/

namespace A038719.P14663403675419940930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) + Int.tmod (A028246 (n + 2)) (A019538 (n + 2))

end

end A038719.P14663403675419940930

/-! ## A038719.P2241479145010118792

`A199400(n)/A002260(n+1)`
-/

namespace A038719.P2241479145010118792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199400 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A038719.P2241479145010118792

/-! ## A038719.P6720535374723887114

`abs(A162508(n+1)/A002260(n+1))`
-/

namespace A038719.P6720535374723887114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A162508 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)|

end

end A038719.P6720535374723887114

/-!
# A038720: a(n) = (n+3)*n!/2.

The programs for A038720, the canonical program `A038720.P8538500865009068744` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038720 has offset 1).

The definition of A038720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038720.P8538500865009068744

`(n+4)*(n+1)!/2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038720

/-- `(n+4)*(n+1)!/2` -/
def P8538500865009068744.Spec : Prop :=
  ∀ n, P8538500865009068744.a n = (A038720 (n + 1) : ℚ)

end A038720

/-! ## A038720.P11079417695144752492

`A052572(n+1)/2`
-/

namespace A038720.P11079417695144752492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052572 (n + 1) : ℚ) / 2

end

end A038720.P11079417695144752492

namespace A038720

/-- `A052572(n+1)/2` -/
def P11079417695144752492.Spec : Prop :=
  ∀ n, P11079417695144752492.a n = (A038720 (n + 1) : ℚ)

end A038720

/-! ## A038720.P2483220887226386019

`n!*∑[n+2]`
-/

namespace A038720.P2483220887226386019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038720.P2483220887226386019

namespace A038720

/-- `n!*∑[n+2]` -/
def P2483220887226386019.Spec : Prop :=
  ∀ n, (P2483220887226386019.a n : ℤ) = A038720 (n + 1)

end A038720

/-! ## A038720.P326498862042605956

`(n/2+2)*∏[n+1]`
-/

namespace A038720.P326498862042605956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 2) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A038720.P326498862042605956

namespace A038720

/-- `(n/2+2)*∏[n+1]` -/
def P326498862042605956.Spec : Prop :=
  ∀ n, P326498862042605956.a n = (A038720 (n + 1) : ℚ)

end A038720

/-! ## A038720.P14760439216747088258

`n!/∑[n+2]^-1`
-/

namespace A038720.P14760439216747088258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A038720.P14760439216747088258

namespace A038720

/-- `n!/∑[n+2]^-1` -/
def P14760439216747088258.Spec : Prop :=
  ∀ n, P14760439216747088258.a n = (A038720 (n + 1) : ℚ)

end A038720

/-! ## A038720.P10547740100295313246

`(n+2)*a(n-1)-n!` with `a(0)=2`
-/

namespace A038720.P10547740100295313246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - (Nat.factorial n : ℤ)

end

end A038720.P10547740100295313246

namespace A038720

/-- `(n+2)*a(n-1)-n!` -/
def P10547740100295313246.Spec : Prop :=
  ∀ n, P10547740100295313246.a n = A038720 (n + 1)

end A038720

/-! ## A038720.P7500913428346887382

`-(n!*∑[n-2-2*n])`
-/

namespace A038720.P7500913428346887382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A038720.P7500913428346887382

namespace A038720

/-- `-(n!*∑[n-2-2*n])` -/
def P7500913428346887382.Spec : Prop :=
  ∀ n, P7500913428346887382.a n = A038720 (n + 1)

end A038720

/-! ## A038720.P5007802708415205415

`A319495(∑[n+3]+1)`
-/

namespace A038720.P5007802708415205415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038720.P5007802708415205415

namespace A038720

/-- `A319495(∑[n+3]+1)` -/
def P5007802708415205415.Spec : Prop :=
  ∀ n, P5007802708415205415.a n = A038720 (n + 1)

end A038720

/-! ## A038720.P1681499359487052376

`A214178(∑[n+3]+n+3)`
-/

namespace A038720.P1681499359487052376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214178 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A038720.P1681499359487052376

namespace A038720

/-- `A214178(∑[n+3]+n+3)` -/
def P1681499359487052376.Spec : Prop :=
  ∀ n, P1681499359487052376.a n = A038720 (n + 1)

end A038720

/-! ## A038720.P10292710495901428505

`A001563(n)+2*A006595(n)`
-/

namespace A038720.P10292710495901428505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + 2 * A006595 n

end

end A038720.P10292710495901428505

namespace A038720

/-- `A001563(n)+2*A006595(n)` -/
def P10292710495901428505.Spec : Prop :=
  ∀ n, P10292710495901428505.a n = A038720 (n + 1)

end A038720

/-!
# A038721: k=2 column of A038719.

The programs for A038721, the canonical program `A038721.P7529972670454928615` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038721 has offset 1).

The definition of A038721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038721.P18005835411074545832

`4^(n+2)-2*3^(n+2)+2^(n+2)`
-/

namespace A038721.P18005835411074545832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℤ) - (2 * 3 ^ (n + 2) : ℤ) + (2 ^ (n + 2) : ℤ)

end

end A038721.P18005835411074545832

namespace A038721

/-- `4^(n+2)-2*3^(n+2)+2^(n+2)` -/
def P18005835411074545832.Spec : Prop :=
  ∀ n, P18005835411074545832.a n = A038721 (n + 1)

end A038721

/-! ## A038721.P7529972670454928615

`2*A016269(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038721

/-- `2*A016269(n)` -/
def P7529972670454928615.Spec : Prop :=
  ∀ n, P7529972670454928615.a n = A038721 (n + 1)

theorem P7529972670454928615.correct : P7529972670454928615.Spec := by
  intro n
  simp only [A038721, Nat.add_sub_cancel]

end A038721

/-! ## A038721.P18108328183643310097

`∑[2*A027650(n)]`
-/

namespace A038721.P18108328183643310097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038721.P18108328183643310097

namespace A038721

/-- `∑[2*A027650(n)]` -/
def P18108328183643310097.Spec : Prop :=
  ∀ n, P18108328183643310097.a n = A038721 (n + 1)

end A038721

/-! ## A038721.P15301466802541329275

`2*Δ[A056473(2*(n+3))]`
-/

namespace A038721.P15301466802541329275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A038721.P15301466802541329275

namespace A038721

/-- `2*Δ[A056473(2*(n+3))]` -/
def P15301466802541329275.Spec : Prop :=
  ∀ n, P15301466802541329275.a n = A038721 (n + 1)

end A038721

/-! ## A038721.P13801524221194713912

`2*Δ[A056510(2*n+5)]`
-/

namespace A038721.P13801524221194713912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A038721.P13801524221194713912

namespace A038721

/-- `2*Δ[A056510(2*n+5)]` -/
def P13801524221194713912.Spec : Prop :=
  ∀ n, P13801524221194713912.a n = A038721 (n + 1)

end A038721

/-! ## A038721.P8341261110950468179

`lcm(A010696(n), A016269(n))`
-/

namespace A038721.P8341261110950468179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A016269 n)

end

end A038721.P8341261110950468179

namespace A038721

/-- `lcm(A010696(n), A016269(n))` -/
def P8341261110950468179.Spec : Prop :=
  ∀ n, (P8341261110950468179.a n : ℤ) = A038721 (n + 1)

end A038721

/-! ## A038721.P13754293139672864437

`∑[A016269(n)+A005061(n+1)]`
-/

namespace A038721.P13754293139672864437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n + A005061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038721.P13754293139672864437

namespace A038721

/-- `∑[A016269(n)+A005061(n+1)]` -/
def P13754293139672864437.Spec : Prop :=
  ∀ n, P13754293139672864437.a n = A038721 (n + 1)

end A038721

/-! ## A038721.P144319048614304050

`A126718(n+1)%A126642(n+1)`
-/

namespace A038721.P144319048614304050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126718 (n + 1)) (A126642 (n + 1))

end

end A038721.P144319048614304050

namespace A038721

/-- `A126718(n+1)%A126642(n+1)` -/
def P144319048614304050.Spec : Prop :=
  ∀ n, P144319048614304050.a n = A038721 (n + 1)

end A038721

/-!
# A038722: Take the sequence of natural numbers (A000027) and reverse successive subsequences of lengths 1,2,3,4,... .

The programs for A038722, the canonical program `A038722.P244822054879230948` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038722 has offset 1).

The definition of A038722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038722.P244822054879230948

`floor(sqrt(2*(n+1))+1/2)²-(n+1)+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038722

/-- `floor(sqrt(2*(n+1))+1/2)²-(n+1)+1` -/
def P244822054879230948.Spec : Prop :=
  ∀ n, P244822054879230948.a n = A038722 (n + 1)

theorem P244822054879230948.correct : P244822054879230948.Spec := by
  intro n
  simp only [A038722, Nat.add_sub_cancel]

end A038722

/-! ## A038722.P12092869931513831414

`(∑[2*n]+1)%comp[∑[n]]`
-/

namespace A038722.P12092869931513831414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A038722.P12092869931513831414

namespace A038722

/-- `(∑[2*n]+1)%comp[∑[n]]` -/
def P12092869931513831414.Spec : Prop :=
  ∀ n, (P12092869931513831414.a n : ℤ) = A038722 (n + 1)

end A038722

/-! ## A038722.P4153525927925199429

`-xor(∑[2*n]%comp[∑[n]], -1)`
-/

namespace A038722.P4153525927925199429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) (-1)

end

end A038722.P4153525927925199429

namespace A038722

/-- `-xor(∑[2*n]%comp[∑[n]], -1)` -/
def P4153525927925199429.Spec : Prop :=
  ∀ n, P4153525927925199429.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P916012329641512375

`abs(∑[A198954(n)]-n)`
-/

namespace A038722.P916012329641512375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A038722.P916012329641512375

namespace A038722

/-- `abs(∑[A198954(n)]-n)` -/
def P916012329641512375.Spec : Prop :=
  ∀ n, P916012329641512375.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P5204697135092299205

`abs(A114327(n)+1+n)`
-/

namespace A038722.P5204697135092299205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 n + 1 + (n : ℤ)|

end

end A038722.P5204697135092299205

namespace A038722

/-- `abs(A114327(n)+1+n)` -/
def P5204697135092299205.Spec : Prop :=
  ∀ n, P5204697135092299205.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P16153974843292125175

`abs(A093995(n+1)-n)`
-/

namespace A038722.P16153974843292125175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093995 (n + 1) - (n : ℤ)|

end

end A038722.P16153974843292125175

namespace A038722

/-- `abs(A093995(n+1)-n)` -/
def P16153974843292125175.Spec : Prop :=
  ∀ n, P16153974843292125175.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P10643899103275872584

`abs(∑[A010054(n)]²-n)`
-/

namespace A038722.P10643899103275872584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)|

end

end A038722.P10643899103275872584

namespace A038722

/-- `abs(∑[A010054(n)]²-n)` -/
def P10643899103275872584.Spec : Prop :=
  ∀ n, P10643899103275872584.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P16361384960981779255

`abs(A002024(n+1)²-n)`
-/

namespace A038722.P16361384960981779255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) ^ 2 - (n : ℤ)|

end

end A038722.P16361384960981779255

namespace A038722

/-- `abs(A002024(n+1)²-n)` -/
def P16361384960981779255.Spec : Prop :=
  ∀ n, P16361384960981779255.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P18074284599551122205

`abs((A003056(n)+1)²-n)`
-/

namespace A038722.P18074284599551122205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A003056 n + 1) ^ 2 - (n : ℤ)|

end

end A038722.P18074284599551122205

namespace A038722

/-- `abs((A003056(n)+1)²-n)` -/
def P18074284599551122205.Spec : Prop :=
  ∀ n, P18074284599551122205.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P14926967484367413694

`A056023(A056011(n+1))`
-/

namespace A038722.P14926967484367413694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A056011 (n + 1)).toNat

end

end A038722.P14926967484367413694

namespace A038722

/-- `A056023(A056011(n+1))` -/
def P14926967484367413694.Spec : Prop :=
  ∀ n, P14926967484367413694.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P3631182960340025895

`A059399(A064578(n+1))`
-/

namespace A038722.P3631182960340025895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A064578 (n + 1)).toNat

end

end A038722.P3631182960340025895

namespace A038722

/-- `A059399(A064578(n+1))` -/
def P3631182960340025895.Spec : Prop :=
  ∀ n, P3631182960340025895.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P17397590115462851761

`A163364(A163361(n+1))`
-/

namespace A038722.P17397590115462851761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A163361 (n + 1)).toNat

end

end A038722.P17397590115462851761

namespace A038722

/-- `A163364(A163361(n+1))` -/
def P17397590115462851761.Spec : Prop :=
  ∀ n, P17397590115462851761.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P14675125129575998298

`A163362(A163363(n+1))`
-/

namespace A038722.P14675125129575998298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A163363 (n + 1)).toNat

end

end A038722.P14675125129575998298

namespace A038722

/-- `A163362(A163363(n+1))` -/
def P14675125129575998298.Spec : Prop :=
  ∀ n, P14675125129575998298.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P2656760869266158696

`A163364(A163357(n)+1)`
-/

namespace A038722.P2656760869266158696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A163357 n + 1).toNat

end

end A038722.P2656760869266158696

namespace A038722

/-- `A163364(A163357(n)+1)` -/
def P2656760869266158696.Spec : Prop :=
  ∀ n, P2656760869266158696.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P2464263931963981379

`A163362(A163359(n)+1)`
-/

namespace A038722.P2464263931963981379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A163359 n + 1).toNat

end

end A038722.P2464263931963981379

namespace A038722

/-- `A163362(A163359(n)+1)` -/
def P2464263931963981379.Spec : Prop :=
  ∀ n, P2464263931963981379.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P11865784120055372148

`A064578(A057028(n+1))`
-/

namespace A038722.P11865784120055372148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (A057028 (n + 1)).toNat

end

end A038722.P11865784120055372148

namespace A038722

/-- `A064578(A057028(n+1))` -/
def P11865784120055372148.Spec : Prop :=
  ∀ n, P11865784120055372148.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P2015767225295810085

`A194836(A054076(n+1))`
-/

namespace A038722.P2015767225295810085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194836 (A054076 (n + 1)).toNat

end

end A038722.P2015767225295810085

namespace A038722

/-- `A194836(A054076(n+1))` -/
def P2015767225295810085.Spec : Prop :=
  ∀ n, P2015767225295810085.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P509964184558748156

`A194833(A054068(n+1))`
-/

namespace A038722.P509964184558748156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194833 (A054068 (n + 1)).toNat

end

end A038722.P509964184558748156

namespace A038722

/-- `A194833(A054068(n+1))` -/
def P509964184558748156.Spec : Prop :=
  ∀ n, P509964184558748156.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P5886368757765197199

`A054069(A194834(n+1))`
-/

namespace A038722.P5886368757765197199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054069 (A194834 (n + 1)).toNat

end

end A038722.P5886368757765197199

namespace A038722

/-- `A054069(A194834(n+1))` -/
def P5886368757765197199.Spec : Prop :=
  ∀ n, P5886368757765197199.a n = A038722 (n + 1)

end A038722

/-! ## A038722.P11166302862118999345

`A064789(A057027(n+1))`
-/

namespace A038722.P11166302862118999345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A057027 (n + 1)).toNat

end

end A038722.P11166302862118999345

namespace A038722

/-- `A064789(A057027(n+1))` -/
def P11166302862118999345.Spec : Prop :=
  ∀ n, P11166302862118999345.a n = A038722 (n + 1)

end A038722

/-!
# A038723: a(n) = 6*a(n-1) - a(n-2), n >= 2, a(0)=1, a(1)=4.

The programs for A038723, the canonical program `A038723.P8027908001074795467` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038723 has offset 0).

The definition of A038723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038723.P8027908001074795467`, by `A038723.P8027908001074795467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038723.P8027908001074795467

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038723

/-- `6*a(n-1)-a(n-2)` -/
def P8027908001074795467.Spec : Prop :=
  ∀ n, P8027908001074795467.a n = A038723 n

theorem P8027908001074795467.correct : P8027908001074795467.Spec := by
  intro n
  simp only [A038723]

end A038723

/-! ## A038723.P10763189840442649055

`A001653(n+1)-A001109(n)`
-/

namespace A038723.P10763189840442649055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) - A001109 n

end

end A038723.P10763189840442649055

namespace A038723

/-- `A001653(n+1)-A001109(n)` -/
def P10763189840442649055.Spec : Prop :=
  ∀ n, P10763189840442649055.a n = A038723 n

end A038723

/-! ## A038723.P16319223038145730512

`(7+a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A038723.P16319223038145730512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (7 + a (n - 1) ^ 2) / a (n - 2)

end

end A038723.P16319223038145730512

namespace A038723

/-- `(7+a(n-1)²)/a(n-2)` -/
def P16319223038145730512.Spec : Prop :=
  ∀ n, P16319223038145730512.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P16649226771773485131

`ogf((1-2x)/(1-6x+x^2))`
-/

namespace A038723.P16649226771773485131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 1] n

end

end A038723.P16649226771773485131

namespace A038723

/-- `ogf((1-2x)/(1-6x+x^2))` -/
def P16649226771773485131.Spec : Prop :=
  ∀ n, P16649226771773485131.a n = A038723 n

end A038723

/-! ## A038723.P13126597293774296541

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=4`
-/

namespace A038723.P13126597293774296541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A038723.P13126597293774296541

namespace A038723

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P13126597293774296541.Spec : Prop :=
  ∀ n, P13126597293774296541.a n = A038723 n

end A038723

/-! ## A038723.P5058085590043714442

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=4`
-/

namespace A038723.P5058085590043714442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A038723.P5058085590043714442

namespace A038723

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P5058085590043714442.Spec : Prop :=
  ∀ n, P5058085590043714442.a n = A038723 n

end A038723

/-! ## A038723.P2444868344706446471

`A266507(n)/2`
-/

namespace A038723.P2444868344706446471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266507 n : ℚ) / 2

end

end A038723.P2444868344706446471

namespace A038723

/-- `A266507(n)/2` -/
def P2444868344706446471.Spec : Prop :=
  ∀ n, P2444868344706446471.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P146429594367746515

`A006452(Δ[n²])`
-/

namespace A038723.P146429594367746515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038723.P146429594367746515

namespace A038723

/-- `A006452(Δ[n²])` -/
def P146429594367746515.Spec : Prop :=
  ∀ n, P146429594367746515.a n = A038723 n

end A038723

/-! ## A038723.P7708242671627027390

`record[A006452(xor(1, n))]`
-/

namespace A038723.P7708242671627027390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038723.P7708242671627027390

namespace A038723

/-- `record[A006452(xor(1, n))]` -/
def P7708242671627027390.Spec : Prop :=
  ∀ n, P7708242671627027390.a n = A038723 n

end A038723

/-! ## A038723.P13650100698477330361

`A301318(3*n+2)`
-/

namespace A038723.P13650100698477330361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (3 * n + 2)

end

end A038723.P13650100698477330361

namespace A038723

/-- `A301318(3*n+2)` -/
def P13650100698477330361.Spec : Prop :=
  ∀ n, P13650100698477330361.a n = A038723 n

end A038723

/-! ## A038723.P13664242608393668416

`(A182191(n)+3)/2`
-/

namespace A038723.P13664242608393668416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182191 n + 3 : ℚ) / 2

end

end A038723.P13664242608393668416

namespace A038723

/-- `(A182191(n)+3)/2` -/
def P13664242608393668416.Spec : Prop :=
  ∀ n, P13664242608393668416.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P10319187027442750393

`A216162(4*n+2)`
-/

namespace A038723.P10319187027442750393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (4 * n + 2)

end

end A038723.P10319187027442750393

namespace A038723

/-- `A216162(4*n+2)` -/
def P10319187027442750393.Spec : Prop :=
  ∀ n, P10319187027442750393.a n = A038723 n

end A038723

/-! ## A038723.P8998334197717486099

`∑[abs(A078343(2*n))]`
-/

namespace A038723.P8998334197717486099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078343 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038723.P8998334197717486099

namespace A038723

/-- `∑[abs(A078343(2*n))]` -/
def P8998334197717486099.Spec : Prop :=
  ∀ n, P8998334197717486099.a n = A038723 n

end A038723

/-! ## A038723.P15501737084919703284

`A078343(Δ[n²])/2`
-/

namespace A038723.P15501737084919703284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A038723.P15501737084919703284

namespace A038723

/-- `A078343(Δ[n²])/2` -/
def P15501737084919703284.Spec : Prop :=
  ∀ n, P15501737084919703284.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P9721015799382233860

`A217975(Δ[n²])/2`
-/

namespace A038723.P9721015799382233860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217975 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A038723.P9721015799382233860

namespace A038723

/-- `A217975(Δ[n²])/2` -/
def P9721015799382233860.Spec : Prop :=
  ∀ n, P9721015799382233860.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P13362385638090209180

`record[A006452(n*n%2)]`
-/

namespace A038723.P13362385638090209180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038723.P13362385638090209180

namespace A038723

/-- `record[A006452(n*n%2)]` -/
def P13362385638090209180.Spec : Prop :=
  ∀ n, P13362385638090209180.a n = A038723 n

end A038723

/-! ## A038723.P2798561240635537170

`(A174192(2*n)+1)/2`
-/

namespace A038723.P2798561240635537170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174192 (2 * n) + 1 : ℚ) / 2

end

end A038723.P2798561240635537170

namespace A038723

/-- `(A174192(2*n)+1)/2` -/
def P2798561240635537170.Spec : Prop :=
  ∀ n, P2798561240635537170.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P7970871117093072839

`A077447(2*n+1)/4`
-/

namespace A038723.P7970871117093072839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077447 (2 * n + 1) : ℚ) / 4

end

end A038723.P7970871117093072839

namespace A038723

/-- `A077447(2*n+1)/4` -/
def P7970871117093072839.Spec : Prop :=
  ∀ n, P7970871117093072839.a n = (A038723 n : ℚ)

end A038723

/-! ## A038723.P4911325192106111494

`∑[∑[A265107(2*n)]+1]`
-/

namespace A038723.P4911325192106111494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265107 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038723.P4911325192106111494

namespace A038723

/-- `∑[∑[A265107(2*n)]+1]` -/
def P4911325192106111494.Spec : Prop :=
  ∀ n, P4911325192106111494.a n = A038723 n

end A038723

/-! ## A038723.P17077405792538366903

`(A111955(2*n+1)+1)/2`
-/

namespace A038723.P17077405792538366903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111955 (2 * n + 1) + 1 : ℚ) / 2

end

end A038723.P17077405792538366903

namespace A038723

/-- `(A111955(2*n+1)+1)/2` -/
def P17077405792538366903.Spec : Prop :=
  ∀ n, P17077405792538366903.a n = (A038723 n : ℚ)

end A038723

/-!
# A038724: Each term describes the ordinal number of its position in the sequence, by a summation of the numerals in that ordinal number and then by the differences between each contiguous pair of the numerals in the order in which they appear.

The programs for A038724, there is no canonical definition to state claims against.
-/

/-! ## A038724.P5495640539592762511

`A064834(n)+eq[0, A257297(n)]`
-/

namespace A038724.P5495640539592762511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A038724.P5495640539592762511

/-! ## A038724.P4113337526876474580

`A347689(A056143(n))+A338829(A265525(n))`
-/

namespace A038724.P4113337526876474580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A056143 n).toNat + A338829 (A265525 n).toNat

end

end A038724.P4113337526876474580

/-! ## A038724.P14691947866583363324

`A347689(A181352(n))+A338829(A265525(n))`
-/

namespace A038724.P14691947866583363324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A181352 n).toNat + A338829 (A265525 n).toNat

end

end A038724.P14691947866583363324

/-! ## A038724.P7223572815664568268

`A347689(n)+eq[A227362(n), A328447(n)]`
-/

namespace A038724.P7223572815664568268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A038724.P7223572815664568268

/-!
# A038725: a(n) = 6*a(n-1) - a(n-2), n >= 2, a(0)=1, a(1)=2.

The programs for A038725, the canonical program `A038725.P11328021704514278055` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038725 has offset 0).

The definition of A038725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038725.P11328021704514278055`, by `A038725.P11328021704514278055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038725.P11328021704514278055

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038725

/-- `6*a(n-1)-a(n-2)` -/
def P11328021704514278055.Spec : Prop :=
  ∀ n, P11328021704514278055.a n = A038725 n

theorem P11328021704514278055.correct : P11328021704514278055.Spec := by
  intro n
  simp only [A038725]

end A038725

/-! ## A038725.P13328085033914108382

`(7+a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A038725.P13328085033914108382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (7 + a (n - 1) ^ 2) / a (n - 2)

end

end A038725.P13328085033914108382

namespace A038725

/-- `(7+a(n-1)²)/a(n-2)` -/
def P13328085033914108382.Spec : Prop :=
  ∀ n, P13328085033914108382.a n = (A038725 n : ℚ)

end A038725

/-! ## A038725.P7936133409775866631

`ogf((1-4x)/(1-6x+x^2))`
-/

namespace A038725.P7936133409775866631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -6, 1] n

end

end A038725.P7936133409775866631

namespace A038725

/-- `ogf((1-4x)/(1-6x+x^2))` -/
def P7936133409775866631.Spec : Prop :=
  ∀ n, P7936133409775866631.a n = A038725 n

end A038725

/-! ## A038725.P13340864078744595329

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=2`
-/

namespace A038725.P13340864078744595329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A038725.P13340864078744595329

namespace A038725

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P13340864078744595329.Spec : Prop :=
  ∀ n, P13340864078744595329.a n = A038725 n

end A038725

/-! ## A038725.P7379531378203349962

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=2, a(2)=11`
-/

namespace A038725.P7379531378203349962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A038725.P7379531378203349962

namespace A038725

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P7379531378203349962.Spec : Prop :=
  ∀ n, P7379531378203349962.a n = A038725 n

end A038725

/-! ## A038725.P18418865624325678838

`a(n-1)+lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A038725.P18418865624325678838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ((Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2))

end

end A038725.P18418865624325678838

namespace A038725

/-- `a(n-1)+lcm(5, a(n-1))-a(n-2)` -/
def P18418865624325678838.Spec : Prop :=
  ∀ n, P18418865624325678838.a n = A038725 n

end A038725

/-! ## A038725.P14681974035580421675

`A108261(n)-1`
-/

namespace A038725.P14681974035580421675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108261 n - 1

end

end A038725.P14681974035580421675

namespace A038725

/-- `A108261(n)-1` -/
def P14681974035580421675.Spec : Prop :=
  ∀ n, P14681974035580421675.a n = A038725 n

end A038725

/-! ## A038725.P3088228403980350803

`A006452(2*n)`
-/

namespace A038725.P3088228403980350803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (2 * n)

end

end A038725.P3088228403980350803

namespace A038725

/-- `A006452(2*n)` -/
def P3088228403980350803.Spec : Prop :=
  ∀ n, P3088228403980350803.a n = A038725 n

end A038725

/-! ## A038725.P8064988769190069600

`A216162(4*n)`
-/

namespace A038725.P8064988769190069600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (4 * n)

end

end A038725.P8064988769190069600

namespace A038725

/-- `A216162(4*n)` -/
def P8064988769190069600.Spec : Prop :=
  ∀ n, P8064988769190069600.a n = A038725 n

end A038725

/-! ## A038725.P7189739623354637112

`record[A006452(and(n, n+1))]`
-/

namespace A038725.P7189739623354637112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038725.P7189739623354637112

namespace A038725

/-- `record[A006452(and(n, n+1))]` -/
def P7189739623354637112.Spec : Prop :=
  ∀ n, P7189739623354637112.a n = A038725 n

end A038725

/-! ## A038725.P18134701946547679126

`record[A006452(n)/(-1)^n]`
-/

namespace A038725.P18134701946547679126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006452 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038725.P18134701946547679126

namespace A038725

/-- `record[A006452(n)/(-1)^n]` -/
def P18134701946547679126.Spec : Prop :=
  ∀ n, P18134701946547679126.a n = (A038725 n : ℚ)

end A038725

/-! ## A038725.P640357823169839412

`A038761(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A038725.P640357823169839412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038761 (n - 1) + a (n - 1)

end

end A038725.P640357823169839412

namespace A038725

/-- `A038761(n-1)+a(n-1)` -/
def P640357823169839412.Spec : Prop :=
  ∀ n, P640357823169839412.a n = A038725 n

end A038725

/-! ## A038725.P7756068044746472802

`A117719(A004273(n))`
-/

namespace A038725.P7756068044746472802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117719 (A004273 n).toNat

end

end A038725.P7756068044746472802

namespace A038725

/-- `A117719(A004273(n))` -/
def P7756068044746472802.Spec : Prop :=
  ∀ n, P7756068044746472802.a n = A038725 n

end A038725

/-! ## A038725.P2993532952231403516

`A001541(n)-A001109(n)`
-/

namespace A038725.P2993532952231403516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n - A001109 n

end

end A038725.P2993532952231403516

namespace A038725

/-- `A001541(n)-A001109(n)` -/
def P2993532952231403516.Spec : Prop :=
  ∀ n, P2993532952231403516.a n = A038725 n

end A038725

/-! ## A038725.P13227557692060893560

`A011900(n)-A182435(n)`
-/

namespace A038725.P13227557692060893560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n - A182435 n

end

end A038725.P13227557692060893560

namespace A038725

/-- `A011900(n)-A182435(n)` -/
def P13227557692060893560.Spec : Prop :=
  ∀ n, P13227557692060893560.a n = A038725 n

end A038725

/-! ## A038725.P9965618464858681772

`A053141(n)+1-A182435(n)`
-/

namespace A038725.P9965618464858681772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + (1 - A182435 n)

end

end A038725.P9965618464858681772

namespace A038725

/-- `A053141(n)+1-A182435(n)` -/
def P9965618464858681772.Spec : Prop :=
  ∀ n, P9965618464858681772.a n = A038725 n

end A038725

/-! ## A038725.P8971419099136089927

`A001333(2*n)-A001109(n)`
-/

namespace A038725.P8971419099136089927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n) - A001109 n

end

end A038725.P8971419099136089927

namespace A038725

/-- `A001333(2*n)-A001109(n)` -/
def P8971419099136089927.Spec : Prop :=
  ∀ n, P8971419099136089927.a n = A038725 n

end A038725

/-! ## A038725.P8785209603589862213

`A079496(2*n)-A001109(n)`
-/

namespace A038725.P8785209603589862213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (2 * n) - A001109 n

end

end A038725.P8785209603589862213

namespace A038725

/-- `A079496(2*n)-A001109(n)` -/
def P8785209603589862213.Spec : Prop :=
  ∀ n, P8785209603589862213.a n = A038725 n

end A038725

/-! ## A038725.P13636261718511565987

`A123335(2*n)-A001109(n)`
-/

namespace A038725.P13636261718511565987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (2 * n) - A001109 n

end

end A038725.P13636261718511565987

namespace A038725

/-- `A123335(2*n)-A001109(n)` -/
def P13636261718511565987.Spec : Prop :=
  ∀ n, P13636261718511565987.a n = A038725 n

end A038725

/-! ## A038725.P8275484111522332747

`A001541(n)-A001542(n)/2`
-/

namespace A038725.P8275484111522332747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001541 n : ℚ) - (A001542 n : ℚ) / 2

end

end A038725.P8275484111522332747

namespace A038725

/-- `A001541(n)-A001542(n)/2` -/
def P8275484111522332747.Spec : Prop :=
  ∀ n, P8275484111522332747.a n = (A038725 n : ℚ)

end A038725

/-!
# A038726: The number of n-step self-avoiding walks in a 5-dimensional hypercubic lattice with no non-contiguous adjacencies.

The programs for A038726, there is no canonical definition to state claims against.
-/

/-! ## A038726.P11282468728104600013

`A047472(A084135(n))+1`
-/

namespace A038726.P11282468728104600013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047472 (A084135 n).toNat + 1

end

end A038726.P11282468728104600013

/-!
# A038728: Configurations of linear chains in a 5-dimensional hypercubic lattice.

The programs for A038728, there is no canonical definition to state claims against.
-/

/-! ## A038728.P902699564920208010

`140*A093391(A006125(n))`
-/

namespace A038728.P902699564920208010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  140 * A093391 (A006125 n).toNat

end

end A038728.P902699564920208010

/-! ## A038728.P13192681167738272698

`floor(floor(A302346(A054514(n+1))/3)/3)`
-/

namespace A038728.P13192681167738272698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A302346 (A054514 (n + 1)).toNat : ℚ) / 3⌋ : ℚ) / 3⌋

end

end A038728.P13192681167738272698

/-!
# A038730: Path-counting triangular array T(i,j), read by rows, obtained from array t in A038792 by T(i,j) = t(2*i-j, j) (for i >= 1 and 1 <= j <= i).

The programs for A038730, there is no canonical definition to state claims against.
-/

/-! ## A038730.P3824426609525034497

`A294453(A292564(n))`
-/

namespace A038730.P3824426609525034497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A292564 n).toNat

end

end A038730.P3824426609525034497

/-! ## A038730.P8604202835845632107

`A038792(A292564(n)+1)`
-/

namespace A038730.P8604202835845632107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A292564 n + 1).toNat

end

end A038730.P8604202835845632107

/-! ## A038730.P13152560145965566048

`A099573(A185868(n+1)-1)`
-/

namespace A038730.P13152560145965566048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A185868 (n + 1) - 1).toNat

end

end A038730.P13152560145965566048

/-! ## A038730.P112041351470522262

`A099573(A063656(n)+A061885(n))`
-/

namespace A038730.P112041351470522262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A063656 n + A061885 n).toNat

end

end A038730.P112041351470522262

/-! ## A038730.P7120381845151429833

`A099573(A292564(n)+A002262(n))`
-/

namespace A038730.P7120381845151429833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A292564 n + A002262 n).toNat

end

end A038730.P7120381845151429833

/-!
# A038731: Number of columns in all directed column-convex polyominoes of area n+1.

The programs for A038731, the canonical program `A038731.P6700874595404502670` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038731 has offset 0).

The definition of A038731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038731.P6700874595404502670

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=32`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038731

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P6700874595404502670.Spec : Prop :=
  ∀ n, P6700874595404502670.a n = A038731 n

theorem P6700874595404502670.correct : P6700874595404502670.Spec := by
  intro n
  simp only [A038731]

end A038731

/-! ## A038731.P18116351303939677471

`A134512(2*n)`
-/

namespace A038731.P18116351303939677471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n)

end

end A038731.P18116351303939677471

namespace A038731

/-- `A134512(2*n)` -/
def P18116351303939677471.Spec : Prop :=
  ∀ n, P18116351303939677471.a n = A038731 n

end A038731

/-! ## A038731.P16222674580887843685

`A291241(2*n)`
-/

namespace A038731.P16222674580887843685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n)

end

end A038731.P16222674580887843685

namespace A038731

/-- `A291241(2*n)` -/
def P16222674580887843685.Spec : Prop :=
  ∀ n, P16222674580887843685.a n = A038731 n

end A038731

/-! ## A038731.P17675952772546800495

`A239342(2*(n+1))/2`
-/

namespace A038731.P17675952772546800495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239342 (2 * (n + 1)) : ℚ) / 2

end

end A038731.P17675952772546800495

namespace A038731

/-- `A239342(2*(n+1))/2` -/
def P17675952772546800495.Spec : Prop :=
  ∀ n, P17675952772546800495.a n = (A038731 n : ℚ)

end A038731

/-! ## A038731.P12968421109276392249

`A287349(n)-a(n-1)` with `a(0)=1`
-/

namespace A038731.P12968421109276392249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287349 n - a (n - 1)

end

end A038731.P12968421109276392249

namespace A038731

/-- `A287349(n)-a(n-1)` -/
def P12968421109276392249.Spec : Prop :=
  ∀ n, P12968421109276392249.a n = A038731 n

end A038731

/-! ## A038731.P18390728530090458689

`A290917(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A038731.P18390728530090458689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290917 (n - 1) + a (n - 1)

end

end A038731.P18390728530090458689

namespace A038731

/-- `A290917(n-1)+a(n-1)` -/
def P18390728530090458689.Spec : Prop :=
  ∀ n, P18390728530090458689.a n = A038731 n

end A038731

/-! ## A038731.P13092081015712323684

`record[A134512(A014681(n))]`
-/

namespace A038731.P13092081015712323684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038731.P13092081015712323684

namespace A038731

/-- `record[A134512(A014681(n))]` -/
def P13092081015712323684.Spec : Prop :=
  ∀ n, P13092081015712323684.a n = A038731 n

end A038731

/-! ## A038731.P15583732506084001570

`A238846(n)-A001906(n)`
-/

namespace A038731.P15583732506084001570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n - A001906 n

end

end A038731.P15583732506084001570

namespace A038731

/-- `A238846(n)-A001906(n)` -/
def P15583732506084001570.Spec : Prop :=
  ∀ n, P15583732506084001570.a n = A038731 n

end A038731

/-! ## A038731.P7554142611998437655

`A129722(2*n)+A122367(n)`
-/

namespace A038731.P7554142611998437655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A122367 n

end

end A038731.P7554142611998437655

namespace A038731

/-- `A129722(2*n)+A122367(n)` -/
def P7554142611998437655.Spec : Prop :=
  ∀ n, P7554142611998437655.a n = A038731 n

end A038731

/-! ## A038731.P7101408499534120272

`A238846(n)+A135994(2*n)`
-/

namespace A038731.P7101408499534120272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n + A135994 (2 * n)

end

end A038731.P7101408499534120272

namespace A038731

/-- `A238846(n)+A135994(2*n)` -/
def P7101408499534120272.Spec : Prop :=
  ∀ n, P7101408499534120272.a n = A038731 n

end A038731

/-! ## A038731.P13876659638837488704

`A238846(n)-A000045(2*n)`
-/

namespace A038731.P13876659638837488704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n - A000045 (2 * n)

end

end A038731.P13876659638837488704

namespace A038731

/-- `A238846(n)-A000045(2*n)` -/
def P13876659638837488704.Spec : Prop :=
  ∀ n, P13876659638837488704.a n = A038731 n

end A038731

/-! ## A038731.P2171945349205634594

`A238846(n)-A109522(2*n)`
-/

namespace A038731.P2171945349205634594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n - A109522 (2 * n)

end

end A038731.P2171945349205634594

namespace A038731

/-- `A238846(n)-A109522(2*n)` -/
def P2171945349205634594.Spec : Prop :=
  ∀ n, P2171945349205634594.a n = A038731 n

end A038731

/-! ## A038731.P1927930906007500633

`record[A291241(A006257(n+1)-1)]`
-/

namespace A038731.P1927930906007500633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038731.P1927930906007500633

namespace A038731

/-- `record[A291241(A006257(n+1)-1)]` -/
def P1927930906007500633.Spec : Prop :=
  ∀ n, P1927930906007500633.a n = A038731 n

end A038731

/-! ## A038731.P8021797502530589211

`A121486(n+1)+A121483(n+1)`
-/

namespace A038731.P8021797502530589211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121486 (n + 1) + A121483 (n + 1)

end

end A038731.P8021797502530589211

namespace A038731

/-- `A121486(n+1)+A121483(n+1)` -/
def P8021797502530589211.Spec : Prop :=
  ∀ n, P8021797502530589211.a n = A038731 n

end A038731

/-! ## A038731.P17258110702143945761

`A129720(2*n)+A001519(n+1)`
-/

namespace A038731.P17258110702143945761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n) + A001519 (n + 1)

end

end A038731.P17258110702143945761

namespace A038731

/-- `A129720(2*n)+A001519(n+1)` -/
def P17258110702143945761.Spec : Prop :=
  ∀ n, P17258110702143945761.a n = A038731 n

end A038731

/-! ## A038731.P2065993327545468875

`A129722(2*n)+A001519(n+1)`
-/

namespace A038731.P2065993327545468875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A001519 (n + 1)

end

end A038731.P2065993327545468875

namespace A038731

/-- `A129722(2*n)+A001519(n+1)` -/
def P2065993327545468875.Spec : Prop :=
  ∀ n, P2065993327545468875.a n = A038731 n

end A038731

/-! ## A038731.P8678670341393742570

`A129722(2*n)+A094967(2*n)`
-/

namespace A038731.P8678670341393742570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A094967 (2 * n)

end

end A038731.P8678670341393742570

namespace A038731

/-- `A129722(2*n)+A094967(2*n)` -/
def P8678670341393742570.Spec : Prop :=
  ∀ n, P8678670341393742570.a n = A038731 n

end A038731

/-! ## A038731.P16000822493205200891

`A129722(2*n)+A127968(2*n)`
-/

namespace A038731.P16000822493205200891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A127968 (2 * n)

end

end A038731.P16000822493205200891

namespace A038731

/-- `A129722(2*n)+A127968(2*n)` -/
def P16000822493205200891.Spec : Prop :=
  ∀ n, P16000822493205200891.a n = A038731 n

end A038731

/-! ## A038731.P17554855659410759641

`A129722(2*n)+A000045(Δ[n²])`
-/

namespace A038731.P17554855659410759641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038731.P17554855659410759641

namespace A038731

/-- `A129722(2*n)+A000045(Δ[n²])` -/
def P17554855659410759641.Spec : Prop :=
  ∀ n, P17554855659410759641.a n = A038731 n

end A038731

/-! ## A038731.P6333176530113544805

`A094864(n+1)-Δ[A001519(n+1)]`
-/

namespace A038731.P6333176530113544805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 (n + 1) - (f1 (n + 1) - f1 n)

end

end A038731.P6333176530113544805

namespace A038731

/-- `A094864(n+1)-Δ[A001519(n+1)]` -/
def P6333176530113544805.Spec : Prop :=
  ∀ n, P6333176530113544805.a n = A038731 n

end A038731

/-!
# A038732: T(n,n-3), array T as in A038730.

The programs for A038732, the canonical program `A038732.P17261607542785657851` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038732 has offset 3).

The definition of A038732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038732.P16767561705537904033

`∑[A038739(n+2)]`
-/

namespace A038732.P16767561705537904033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P16767561705537904033

namespace A038732

/-- `∑[A038739(n+2)]` -/
def P16767561705537904033.Spec : Prop :=
  ∀ n, P16767561705537904033.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P4279021500312124432

`∑[∑[A038737(n+2)]]`
-/

namespace A038732.P4279021500312124432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038737 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P4279021500312124432

namespace A038732

/-- `∑[∑[A038737(n+2)]]` -/
def P4279021500312124432.Spec : Prop :=
  ∀ n, P4279021500312124432.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P15974751746538195274

`∑[∑[A099572(2*n)]]`
-/

namespace A038732.P15974751746538195274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P15974751746538195274

namespace A038732

/-- `∑[∑[A099572(2*n)]]` -/
def P15974751746538195274.Spec : Prop :=
  ∀ n, P15974751746538195274.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P926673732838338273

`∑[∑[∑[A054452(n+2)]]]`
-/

namespace A038732.P926673732838338273
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P926673732838338273

namespace A038732

/-- `∑[∑[∑[A054452(n+2)]]]` -/
def P926673732838338273.Spec : Prop :=
  ∀ n, P926673732838338273.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P7783333931340204840

`∑[∑[∑[A099571(2*n)]]]`
-/

namespace A038732.P7783333931340204840
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P7783333931340204840

namespace A038732

/-- `∑[∑[∑[A099571(2*n)]]]` -/
def P7783333931340204840.Spec : Prop :=
  ∀ n, P7783333931340204840.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P17799581838266833579

`∑[∑[∑[A054451(2*n+1)]]]`
-/

namespace A038732.P17799581838266833579
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P17799581838266833579

namespace A038732

/-- `∑[∑[∑[A054451(2*n+1)]]]` -/
def P17799581838266833579.Spec : Prop :=
  ∀ n, P17799581838266833579.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P1800453546652718295

`∑[∑[∑[A129696(2*n+1)]]]`
-/

namespace A038732.P1800453546652718295
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P1800453546652718295

namespace A038732

/-- `∑[∑[∑[A129696(2*n+1)]]]` -/
def P1800453546652718295.Spec : Prop :=
  ∀ n, P1800453546652718295.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P17261607542785657851

`∑[∑[∑[A215004(2*n+1)]]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038732

/-- `∑[∑[∑[A215004(2*n+1)]]]` -/
def P17261607542785657851.Spec : Prop :=
  ∀ n, P17261607542785657851.a n = A038732 (n + 3)

theorem P17261607542785657851.correct : P17261607542785657851.Spec := by
  intro n
  simp only [A038732, Nat.add_sub_cancel]

end A038732

/-! ## A038732.P14334717790786696310

`∑[∑[∑[∑[∑[∑[A000045(Δ[n²])]]]]]]`
-/

namespace A038732.P14334717790786696310
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f7 (n + 1) : ℤ) - (f7 n : ℤ)).toNat

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P14334717790786696310

namespace A038732

/-- `∑[∑[∑[∑[∑[∑[A000045(Δ[n²])]]]]]]` -/
def P14334717790786696310.Spec : Prop :=
  ∀ n, P14334717790786696310.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P9613314406116086568

`∑[∑[∑[∑[∑[A000045(2*(n+1))]]]]]`
-/

namespace A038732.P9613314406116086568
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P9613314406116086568

namespace A038732

/-- `∑[∑[∑[∑[∑[A000045(2*(n+1))]]]]]` -/
def P9613314406116086568.Spec : Prop :=
  ∀ n, P9613314406116086568.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P11090346979251067447

`∑[A099572(comp[A099570(n+2)])]`
-/

namespace A038732.P11090346979251067447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099570 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P11090346979251067447

namespace A038732

/-- `∑[A099572(comp[A099570(n+2)])]` -/
def P11090346979251067447.Spec : Prop :=
  ∀ n, P11090346979251067447.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P12975361489627126376

`A038740(n+4)-(A038740(n+3)+A038739(n+3))`
-/

namespace A038732.P12975361489627126376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038740 (n + 4) - (A038740 (n + 3) + A038739 (n + 3))

end

end A038732.P12975361489627126376

namespace A038732

/-- `A038740(n+4)-(A038740(n+3)+A038739(n+3))` -/
def P12975361489627126376.Spec : Prop :=
  ∀ n, P12975361489627126376.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P8629376167646107296

`A038730(A027379(n+2))`
-/

namespace A038732.P8629376167646107296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A027379 (n + 2)).toNat

end

end A038732.P8629376167646107296

namespace A038732

/-- `A038730(A027379(n+2))` -/
def P8629376167646107296.Spec : Prop :=
  ∀ n, P8629376167646107296.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P3575236403954533507

`A038730(A052905(n+1)+2)`
-/

namespace A038732.P3575236403954533507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A052905 (n + 1) + 2).toNat

end

end A038732.P3575236403954533507

namespace A038732

/-- `A038730(A052905(n+1)+2)` -/
def P3575236403954533507.Spec : Prop :=
  ∀ n, P3575236403954533507.a n = A038732 (n + 3)

end A038732

/-! ## A038732.P1040835761731118832

`A038730(A000124(n+4)-4)`
-/

namespace A038732.P1040835761731118832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A000124 (n + 4) - 4).toNat

end

end A038732.P1040835761731118832

namespace A038732

/-- `A038730(A000124(n+4)-4)` -/
def P1040835761731118832.Spec : Prop :=
  ∀ n, P1040835761731118832.a n = A038732 (n + 3)

end A038732

/-!
# A038733: T(n,n-4), array T as in A038730.

The programs for A038733, the canonical program `A038733.P6887556614693278943` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038733 has offset 4).

The definition of A038733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038733.P8120203808211953143

`∑[A038740(n+3)]`
-/

namespace A038733.P8120203808211953143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038740 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038733.P8120203808211953143

namespace A038733

/-- `∑[A038740(n+3)]` -/
def P8120203808211953143.Spec : Prop :=
  ∀ n, P8120203808211953143.a n = A038733 (n + 4)

end A038733

/-! ## A038733.P6887556614693278943

`∑[∑[A038732(n+3)]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038733

/-- `∑[∑[A038732(n+3)]]` -/
def P6887556614693278943.Spec : Prop :=
  ∀ n, P6887556614693278943.a n = A038733 (n + 4)

theorem P6887556614693278943.correct : P6887556614693278943.Spec := by
  intro n
  simp only [A038733, Nat.add_sub_cancel]

end A038733

/-! ## A038733.P4396249659901627236

`∑[∑[∑[A038739(n+2)]]]`
-/

namespace A038733.P4396249659901627236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038739 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038733.P4396249659901627236

namespace A038733

/-- `∑[∑[∑[A038739(n+2)]]]` -/
def P4396249659901627236.Spec : Prop :=
  ∀ n, P4396249659901627236.a n = A038733 (n + 4)

end A038733

/-! ## A038733.P11396140026863505184

`∑[∑[∑[A099572(2*n+1)]]]`
-/

namespace A038733.P11396140026863505184
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038733.P11396140026863505184

namespace A038733

/-- `∑[∑[∑[A099572(2*n+1)]]]` -/
def P11396140026863505184.Spec : Prop :=
  ∀ n, P11396140026863505184.a n = A038733 (n + 4)

end A038733

/-! ## A038733.P7339831689360661952

`A038741(n+5)-(A038741(n+4)+A038740(n+4))`
-/

namespace A038733.P7339831689360661952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038741 (n + 5) - (A038741 (n + 4) + A038740 (n + 4))

end

end A038733.P7339831689360661952

namespace A038733

/-- `A038741(n+5)-(A038741(n+4)+A038740(n+4))` -/
def P7339831689360661952.Spec : Prop :=
  ∀ n, P7339831689360661952.a n = A038733 (n + 4)

end A038733

/-! ## A038733.P6141999590727775804

`∑[∑[A038730(A027379(n+2))]]`
-/

namespace A038733.P6141999590727775804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A027379 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038733.P6141999590727775804

namespace A038733

/-- `∑[∑[A038730(A027379(n+2))]]` -/
def P6141999590727775804.Spec : Prop :=
  ∀ n, P6141999590727775804.a n = A038733 (n + 4)

end A038733

/-! ## A038733.P11896874203682787855

`A038730(Δ[∑[∑[n+4]+3]-n])`
-/

namespace A038733.P11896874203682787855
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (f1 (n + 1) - f1 n).toNat

end

end A038733.P11896874203682787855

namespace A038733

/-- `A038730(Δ[∑[∑[n+4]+3]-n])` -/
def P11896874203682787855.Spec : Prop :=
  ∀ n, P11896874203682787855.a n = A038733 (n + 4)

end A038733

/-! ## A038733.P13413702689827420485

`A099573(A187989(n+1))`
-/

namespace A038733.P13413702689827420485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A187989 (n + 1)).toNat

end

end A038733.P13413702689827420485

namespace A038733

/-- `A099573(A187989(n+1))` -/
def P13413702689827420485.Spec : Prop :=
  ∀ n, P13413702689827420485.a n = A038733 (n + 4)

end A038733

/-!
# A038734: T(n,n-5), array T as in A038730.

The programs for A038734, the canonical program `A038734.P8844479592814247932` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038734 has offset 5).

The definition of A038734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038734.P1029723306093983732

`∑[A038741(n+4)]`
-/

namespace A038734.P1029723306093983732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038741 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038734.P1029723306093983732

namespace A038734

/-- `∑[A038741(n+4)]` -/
def P1029723306093983732.Spec : Prop :=
  ∀ n, P1029723306093983732.a n = A038734 (n + 5)

end A038734

/-! ## A038734.P8844479592814247932

`∑[∑[A038733(n+4)]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038734

/-- `∑[∑[A038733(n+4)]]` -/
def P8844479592814247932.Spec : Prop :=
  ∀ n, P8844479592814247932.a n = A038734 (n + 5)

theorem P8844479592814247932.correct : P8844479592814247932.Spec := by
  intro n
  simp only [A038734, Nat.add_sub_cancel]

end A038734

/-! ## A038734.P15054041458570274683

`∑[∑[∑[A038740(n+3)]]]`
-/

namespace A038734.P15054041458570274683
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038740 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038734.P15054041458570274683

namespace A038734

/-- `∑[∑[∑[A038740(n+3)]]]` -/
def P15054041458570274683.Spec : Prop :=
  ∀ n, P15054041458570274683.a n = A038734 (n + 5)

end A038734

/-! ## A038734.P12391717855646867472

`A038742(n+6)-(A038742(n+5)+A038741(n+5))`
-/

namespace A038734.P12391717855646867472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038742 (n + 6) - (A038742 (n + 5) + A038741 (n + 5))

end

end A038734.P12391717855646867472

namespace A038734

/-- `A038742(n+6)-(A038742(n+5)+A038741(n+5))` -/
def P12391717855646867472.Spec : Prop :=
  ∀ n, P12391717855646867472.a n = A038734 (n + 5)

end A038734

/-! ## A038734.P16314275095118444347

`A038730(A052905(n+3))`
-/

namespace A038734.P16314275095118444347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A052905 (n + 3)).toNat

end

end A038734.P16314275095118444347

namespace A038734

/-- `A038730(A052905(n+3))` -/
def P16314275095118444347.Spec : Prop :=
  ∀ n, P16314275095118444347.a n = A038734 (n + 5)

end A038734

/-! ## A038734.P5800453623508970115

`A038730(A161680(n+7)-5)`
-/

namespace A038734.P5800453623508970115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A161680 (n + 7) - 5).toNat

end

end A038734.P5800453623508970115

namespace A038734

/-- `A038730(A161680(n+7)-5)` -/
def P5800453623508970115.Spec : Prop :=
  ∀ n, P5800453623508970115.a n = A038734 (n + 5)

end A038734

/-! ## A038734.P16270973482227289388

`A038730(2*(n+1)+A000096(n+3)+5)`
-/

namespace A038734.P16270973482227289388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 ((2 * (n + 1) : ℤ) + (A000096 (n + 3) + 5)).toNat

end

end A038734.P16270973482227289388

namespace A038734

/-- `A038730(2*(n+1)+A000096(n+3)+5)` -/
def P16270973482227289388.Spec : Prop :=
  ∀ n, P16270973482227289388.a n = A038734 (n + 5)

end A038734

/-! ## A038734.P2624103892732610540

`A099573(A187989(n+2)-1)`
-/

namespace A038734.P2624103892732610540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A187989 (n + 2) - 1).toNat

end

end A038734.P2624103892732610540

namespace A038734

/-- `A099573(A187989(n+2)-1)` -/
def P2624103892732610540.Spec : Prop :=
  ∀ n, P2624103892732610540.a n = A038734 (n + 5)

end A038734

/-!
# A038735: T(n,n-6), array T as in A038730.

The programs for A038735, the canonical program `A038735.P3675330770344052257` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038735 has offset 6).

The definition of A038735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038735.P502076505978459879

`∑[A038742(n+5)]`
-/

namespace A038735.P502076505978459879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038742 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P502076505978459879

namespace A038735

/-- `∑[A038742(n+5)]` -/
def P502076505978459879.Spec : Prop :=
  ∀ n, P502076505978459879.a n = A038735 (n + 6)

end A038735

/-! ## A038735.P3675330770344052257

`∑[∑[A038734(n+5)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038735

/-- `∑[∑[A038734(n+5)]]` -/
def P3675330770344052257.Spec : Prop :=
  ∀ n, P3675330770344052257.a n = A038735 (n + 6)

theorem P3675330770344052257.correct : P3675330770344052257.Spec := by
  intro n
  simp only [A038735, Nat.add_sub_cancel]

end A038735

/-! ## A038735.P12700974349241676360

`∑[∑[∑[A038741(n+4)]]]`
-/

namespace A038735.P12700974349241676360
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038741 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P12700974349241676360

namespace A038735

/-- `∑[∑[∑[A038741(n+4)]]]` -/
def P12700974349241676360.Spec : Prop :=
  ∀ n, P12700974349241676360.a n = A038735 (n + 6)

end A038735

/-! ## A038735.P13137787624846435533

`A038743(n+7)-(A038743(n+6)+A038742(n+6))`
-/

namespace A038735.P13137787624846435533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038743 (n + 7) - (A038743 (n + 6) + A038742 (n + 6))

end

end A038735.P13137787624846435533

namespace A038735

/-- `A038743(n+7)-(A038743(n+6)+A038742(n+6))` -/
def P13137787624846435533.Spec : Prop :=
  ∀ n, P13137787624846435533.a n = A038735 (n + 6)

end A038735

/-! ## A038735.P864918925897992211

`A038730(A055999(n+4))`
-/

namespace A038735.P864918925897992211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A055999 (n + 4)).toNat

end

end A038735.P864918925897992211

namespace A038735

/-- `A038730(A055999(n+4))` -/
def P864918925897992211.Spec : Prop :=
  ∀ n, P864918925897992211.a n = A038735 (n + 6)

end A038735

/-! ## A038735.P3105937103597939090

`A038730(A046691(n+5)-2)`
-/

namespace A038735.P3105937103597939090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A046691 (n + 5) - 2).toNat

end

end A038735.P3105937103597939090

namespace A038735

/-- `A038730(A046691(n+5)-2)` -/
def P3105937103597939090.Spec : Prop :=
  ∀ n, P3105937103597939090.a n = A038735 (n + 6)

end A038735

/-! ## A038735.P4430483287235050923

`∑[∑[A125171(A167487(n+9)+3)]]`
-/

namespace A038735.P4430483287235050923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A167487 (n + 9) + 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P4430483287235050923

namespace A038735

/-- `∑[∑[A125171(A167487(n+9)+3)]]` -/
def P4430483287235050923.Spec : Prop :=
  ∀ n, P4430483287235050923.a n = A038735 (n + 6)

end A038735

/-! ## A038735.P16837924575639997849

`∑[A294453(A152811(n+5))]`
-/

namespace A038735.P16837924575639997849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A152811 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P16837924575639997849

namespace A038735

/-- `∑[A294453(A152811(n+5))]` -/
def P16837924575639997849.Spec : Prop :=
  ∀ n, P16837924575639997849.a n = A038735 (n + 6)

end A038735

/-!
# A038736: a(n) = T(3*n + 1, n + 1), array T as in A038792.

The programs for A038736, there is no canonical definition to state claims against.
-/

/-! ## A038736.P12457818076949723669

`A010754(4*n)`
-/

namespace A038736.P12457818076949723669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010754 (4 * n)

end

end A038736.P12457818076949723669

/-! ## A038736.P2396784665537347392

`A038730(∑[4*n]+1)`
-/

namespace A038736.P2396784665537347392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038736.P2396784665537347392

/-! ## A038736.P8273008273645307291

`A193667(A022266(n))`
-/

namespace A038736.P8273008273645307291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A022266 n).toNat

end

end A038736.P8273008273645307291

/-! ## A038736.P3402666376224213963

`A125171(A062728(n))`
-/

namespace A038736.P3402666376224213963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A062728 n).toNat

end

end A038736.P3402666376224213963

/-! ## A038736.P7625888284769441264

`A193923(A051682(n+1))`
-/

namespace A038736.P7625888284769441264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A051682 (n + 1)).toNat

end

end A038736.P7625888284769441264

/-!
# A038737: T(n,n-2), array T as in A038792.

The programs for A038737, the canonical program `A038737.P9311207257525753904` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038737 has offset 2).

The definition of A038737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038737.P8916033151011013333

`∑[∑[∑[ogf(1/(1-3x+x^2))]]]`
-/

namespace A038737.P8916033151011013333
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P8916033151011013333

namespace A038737

/-- `∑[∑[∑[ogf(1/(1-3x+x^2))]]]` -/
def P8916033151011013333.Spec : Prop :=
  ∀ n, P8916033151011013333.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P18249357069831153038

`∑[∑[∑[ceil(ϕ²*a(n-1))]]]` with `a(0)=1`
-/

namespace A038737.P18249357069831153038
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  ⌈Real.goldenRatio ^ 2 * (f3 (n - 1) : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P18249357069831153038

namespace A038737

/-- `∑[∑[∑[ceil(ϕ²*a(n-1))]]]` -/
def P18249357069831153038.Spec : Prop :=
  ∀ n, P18249357069831153038.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P9311207257525753904

`∑[∑[∑[3*a(n-1)-a(n-2)]]]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038737

/-- `∑[∑[∑[3*a(n-1)-a(n-2)]]]` -/
def P9311207257525753904.Spec : Prop :=
  ∀ n, P9311207257525753904.a n = A038737 (n + 2)

theorem P9311207257525753904.correct : P9311207257525753904.Spec := by
  intro n
  simp only [A038737, Nat.add_sub_cancel]

end A038737

/-! ## A038737.P14650897363296869268

`A099572(2*n)`
-/

namespace A038737.P14650897363296869268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n)

end

end A038737.P14650897363296869268

namespace A038737

/-- `A099572(2*n)` -/
def P14650897363296869268.Spec : Prop :=
  ∀ n, P14650897363296869268.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P15113563106018614991

`A099571(Δ[n²])`
-/

namespace A038737.P15113563106018614991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038737.P15113563106018614991

namespace A038737

/-- `A099571(Δ[n²])` -/
def P15113563106018614991.Spec : Prop :=
  ∀ n, P15113563106018614991.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P9339907770348614434

`∑[A054452(n+2)]`
-/

namespace A038737.P9339907770348614434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P9339907770348614434

namespace A038737

/-- `∑[A054452(n+2)]` -/
def P9339907770348614434.Spec : Prop :=
  ∀ n, P9339907770348614434.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P7135992805951915255

`∑[A099571(2*n)]`
-/

namespace A038737.P7135992805951915255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P7135992805951915255

namespace A038737

/-- `∑[A099571(2*n)]` -/
def P7135992805951915255.Spec : Prop :=
  ∀ n, P7135992805951915255.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P1835427592843917016

`∑[∑[A027941(n+1)]]`
-/

namespace A038737.P1835427592843917016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P1835427592843917016

namespace A038737

/-- `∑[∑[A027941(n+1)]]` -/
def P1835427592843917016.Spec : Prop :=
  ∀ n, P1835427592843917016.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P521177727148297823

`∑[∑[A048575(n)-1]]`
-/

namespace A038737.P521177727148297823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P521177727148297823

namespace A038737

/-- `∑[∑[A048575(n)-1]]` -/
def P521177727148297823.Spec : Prop :=
  ∀ n, P521177727148297823.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P9671176624572178728

`∑[∑[A293064(n+3)]]`
-/

namespace A038737.P9671176624572178728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P9671176624572178728

namespace A038737

/-- `∑[∑[A293064(n+3)]]` -/
def P9671176624572178728.Spec : Prop :=
  ∀ n, P9671176624572178728.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P14638395587506256460

`∑[∑[A054451(2*n)]]`
-/

namespace A038737.P14638395587506256460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P14638395587506256460

namespace A038737

/-- `∑[∑[A054451(2*n)]]` -/
def P14638395587506256460.Spec : Prop :=
  ∀ n, P14638395587506256460.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P14562188519920418405

`∑[A114185(n+2)+1]`
-/

namespace A038737.P14562188519920418405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P14562188519920418405

namespace A038737

/-- `∑[A114185(n+2)+1]` -/
def P14562188519920418405.Spec : Prop :=
  ∀ n, P14562188519920418405.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P5357354072518832221

`∑[A129696(2*n+1)]`
-/

namespace A038737.P5357354072518832221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P5357354072518832221

namespace A038737

/-- `∑[A129696(2*n+1)]` -/
def P5357354072518832221.Spec : Prop :=
  ∀ n, P5357354072518832221.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P12830752426884856832

`∑[A215004(2*n+1)]`
-/

namespace A038737.P12830752426884856832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P12830752426884856832

namespace A038737

/-- `∑[A215004(2*n+1)]` -/
def P12830752426884856832.Spec : Prop :=
  ∀ n, P12830752426884856832.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P4958828960105161468

`∑[A213043(2*n+3)]`
-/

namespace A038737.P4958828960105161468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213043 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P4958828960105161468

namespace A038737

/-- `∑[A213043(2*n+3)]` -/
def P4958828960105161468.Spec : Prop :=
  ∀ n, P4958828960105161468.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P16641811333940856780

`A027937(n+1)-∑[n]`
-/

namespace A038737.P16641811333940856780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027937 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A038737.P16641811333940856780

namespace A038737

/-- `A027937(n+1)-∑[n]` -/
def P16641811333940856780.Spec : Prop :=
  ∀ n, P16641811333940856780.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P12937046593486848201

`∑[∑[A052952(2*n+1)]]`
-/

namespace A038737.P12937046593486848201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P12937046593486848201

namespace A038737

/-- `∑[∑[A052952(2*n+1)]]` -/
def P12937046593486848201.Spec : Prop :=
  ∀ n, P12937046593486848201.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P2009560650882287589

`∑[∑[A280523(n+1)+n]]`
-/

namespace A038737.P2009560650882287589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280523 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P2009560650882287589

namespace A038737

/-- `∑[∑[A280523(n+1)+n]]` -/
def P2009560650882287589.Spec : Prop :=
  ∀ n, P2009560650882287589.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P8044045530891284454

`∑[∑[∑[∑[A000045(Δ[n²])]]]]`
-/

namespace A038737.P8044045530891284454
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f5 (n + 1) : ℤ) - (f5 n : ℤ)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P8044045530891284454

namespace A038737

/-- `∑[∑[∑[∑[A000045(Δ[n²])]]]]` -/
def P8044045530891284454.Spec : Prop :=
  ∀ n, P8044045530891284454.a n = A038737 (n + 2)

end A038737

/-! ## A038737.P1155444087076179712

`∑[A035508(n+1)-(n+1)]`
-/

namespace A038737.P1155444087076179712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P1155444087076179712

namespace A038737

/-- `∑[A035508(n+1)-(n+1)]` -/
def P1155444087076179712.Spec : Prop :=
  ∀ n, P1155444087076179712.a n = A038737 (n + 2)

end A038737

/-!
# A038738: Path-counting array T(i,j) obtained from array t in A038792 by T(i,j)=t(2i+1,j).

The programs for A038738, there is no canonical definition to state claims against.
-/

/-! ## A038738.P5099419802479976517

`A294453(A341706(gcd(n, A198954(n))))`
-/

namespace A038738.P5099419802479976517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A341706 (Int.gcd (n : ℤ) (A198954 n))).toNat

end

end A038738.P5099419802479976517

/-! ## A038738.P17884629058410364844

`A099573(A185869(n+1))`
-/

namespace A038738.P17884629058410364844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A185869 (n + 1)).toNat

end

end A038738.P17884629058410364844

/-! ## A038738.P3552162672390206427

`A038792(A341706(n+1))`
-/

namespace A038738.P3552162672390206427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A341706 (n + 1)).toNat

end

end A038738.P3552162672390206427

/-! ## A038738.P4385847594357085474

`A294453(A341706(n+1)-1)`
-/

namespace A038738.P4385847594357085474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A341706 (n + 1) - 1).toNat

end

end A038738.P4385847594357085474

/-! ## A038738.P4773557618003723608

`A099573(A093995(n+1)+2*n)`
-/

namespace A038738.P4773557618003723608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A093995 (n + 1) + (2 * n : ℤ)).toNat

end

end A038738.P4773557618003723608

/-! ## A038738.P193220067050788171

`A099573(A093995(n+1)+n+n)`
-/

namespace A038738.P193220067050788171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A093995 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A038738.P193220067050788171

/-! ## A038738.P10222319115010579680

`A294453(A093995(n+1)+A061885(n))`
-/

namespace A038738.P10222319115010579680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A093995 (n + 1) + A061885 n).toNat

end

end A038738.P10222319115010579680

/-! ## A038738.P17705836412666313461

`A294453(A061885(n)+A002024(n+1)²)`
-/

namespace A038738.P17705836412666313461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A061885 n + A002024 (n + 1) ^ 2).toNat

end

end A038738.P17705836412666313461

/-! ## A038738.P9928084265438561786

`A294453(A185869(n+1)-A002260(n+1))`
-/

namespace A038738.P9928084265438561786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A185869 (n + 1) - A002260 (n + 1)).toNat

end

end A038738.P9928084265438561786

/-! ## A038738.P5243840481380160220

`A294453(A185869(n+1)-A002262(n+1))`
-/

namespace A038738.P5243840481380160220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A185869 (n + 1) - A002262 (n + 1)).toNat

end

end A038738.P5243840481380160220

/-! ## A038738.P8927269041285494365

`A134511(A038722(A038722(n+1)+A016789(n)))`
-/

namespace A038738.P8927269041285494365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (A038722 (A038722 (n + 1) + A016789 n).toNat).toNat

end

end A038738.P8927269041285494365

/-!
# A038739: T(n,n-2), array T as in A038738.

The programs for A038739, the canonical program `A038739.P12917154288506719563` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038739 has offset 2).

The definition of A038739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038739.P10901802198868359841

`∑[∑[∑[∑[ogf(1/(1-3x+x^2))]]]]`
-/

namespace A038739.P10901802198868359841
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P10901802198868359841

namespace A038739

/-- `∑[∑[∑[∑[ogf(1/(1-3x+x^2))]]]]` -/
def P10901802198868359841.Spec : Prop :=
  ∀ n, P10901802198868359841.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P1098709427408684239

`∑[∑[∑[∑[ceil(ϕ²*a(n-1))]]]]` with `a(0)=1`
-/

namespace A038739.P1098709427408684239
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  ⌈Real.goldenRatio ^ 2 * (f4 (n - 1) : ℝ)⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P1098709427408684239

namespace A038739

/-- `∑[∑[∑[∑[ceil(ϕ²*a(n-1))]]]]` -/
def P1098709427408684239.Spec : Prop :=
  ∀ n, P1098709427408684239.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P9724049840385697224

`∑[∑[∑[∑[round(ϕ²*a(n-1))]]]]` with `a(0)=1`
-/

namespace A038739.P9724049840385697224
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (f4 (n - 1) : ℝ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P9724049840385697224

namespace A038739

/-- `∑[∑[∑[∑[round(ϕ²*a(n-1))]]]]` -/
def P9724049840385697224.Spec : Prop :=
  ∀ n, P9724049840385697224.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P12917154288506719563

`∑[∑[∑[∑[3*a(n-1)-a(n-2)]]]]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038739

/-- `∑[∑[∑[∑[3*a(n-1)-a(n-2)]]]]` -/
def P12917154288506719563.Spec : Prop :=
  ∀ n, P12917154288506719563.a n = A038739 (n + 2)

theorem P12917154288506719563.correct : P12917154288506719563.Spec := by
  intro n
  simp only [A038739, Nat.add_sub_cancel]

end A038739

/-! ## A038739.P6839257470864678222

`A099572(Δ[n²])`
-/

namespace A038739.P6839257470864678222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038739.P6839257470864678222

namespace A038739

/-- `A099572(Δ[n²])` -/
def P6839257470864678222.Spec : Prop :=
  ∀ n, P6839257470864678222.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P15850199878349910071

`∑[A038737(n+2)]`
-/

namespace A038739.P15850199878349910071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P15850199878349910071

namespace A038739

/-- `∑[A038737(n+2)]` -/
def P15850199878349910071.Spec : Prop :=
  ∀ n, P15850199878349910071.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P11397432427697252545

`∑[A099572(2*n)]`
-/

namespace A038739.P11397432427697252545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P11397432427697252545

namespace A038739

/-- `∑[A099572(2*n)]` -/
def P11397432427697252545.Spec : Prop :=
  ∀ n, P11397432427697252545.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P8065069696574922270

`∑[∑[A054452(n+2)]]`
-/

namespace A038739.P8065069696574922270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P8065069696574922270

namespace A038739

/-- `∑[∑[A054452(n+2)]]` -/
def P8065069696574922270.Spec : Prop :=
  ∀ n, P8065069696574922270.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P17749060009671011286

`∑[∑[A099571(2*n)]]`
-/

namespace A038739.P17749060009671011286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P17749060009671011286

namespace A038739

/-- `∑[∑[A099571(2*n)]]` -/
def P17749060009671011286.Spec : Prop :=
  ∀ n, P17749060009671011286.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P14106763995762631935

`∑[∑[∑[A027941(n+1)]]]`
-/

namespace A038739.P14106763995762631935
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P14106763995762631935

namespace A038739

/-- `∑[∑[∑[A027941(n+1)]]]` -/
def P14106763995762631935.Spec : Prop :=
  ∀ n, P14106763995762631935.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P18207266765203025117

`∑[∑[∑[A293064(n+3)]]]`
-/

namespace A038739.P18207266765203025117
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P18207266765203025117

namespace A038739

/-- `∑[∑[∑[A293064(n+3)]]]` -/
def P18207266765203025117.Spec : Prop :=
  ∀ n, P18207266765203025117.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P1369430691588679527

`∑[∑[∑[A054451(2*n)]]]`
-/

namespace A038739.P1369430691588679527
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P1369430691588679527

namespace A038739

/-- `∑[∑[∑[A054451(2*n)]]]` -/
def P1369430691588679527.Spec : Prop :=
  ∀ n, P1369430691588679527.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P2908629162916431671

`∑[∑[A114185(n+2)+1]]`
-/

namespace A038739.P2908629162916431671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P2908629162916431671

namespace A038739

/-- `∑[∑[A114185(n+2)+1]]` -/
def P2908629162916431671.Spec : Prop :=
  ∀ n, P2908629162916431671.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P12026263166815163085

`∑[∑[A129696(2*n+1)]]`
-/

namespace A038739.P12026263166815163085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P12026263166815163085

namespace A038739

/-- `∑[∑[A129696(2*n+1)]]` -/
def P12026263166815163085.Spec : Prop :=
  ∀ n, P12026263166815163085.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P1458319536707306956

`∑[∑[A215004(2*n+1)]]`
-/

namespace A038739.P1458319536707306956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P1458319536707306956

namespace A038739

/-- `∑[∑[A215004(2*n+1)]]` -/
def P1458319536707306956.Spec : Prop :=
  ∀ n, P1458319536707306956.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P6562460679741390346

`∑[A027937(n+1)-∑[n]]`
-/

namespace A038739.P6562460679741390346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027937 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P6562460679741390346

namespace A038739

/-- `∑[A027937(n+1)-∑[n]]` -/
def P6562460679741390346.Spec : Prop :=
  ∀ n, P6562460679741390346.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P12359148722229103221

`∑[∑[∑[A052952(2*n+1)]]]`
-/

namespace A038739.P12359148722229103221
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P12359148722229103221

namespace A038739

/-- `∑[∑[∑[A052952(2*n+1)]]]` -/
def P12359148722229103221.Spec : Prop :=
  ∀ n, P12359148722229103221.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P5079473602120051327

`∑[∑[∑[A000071(2*n+3)]]]`
-/

namespace A038739.P5079473602120051327
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P5079473602120051327

namespace A038739

/-- `∑[∑[∑[A000071(2*n+3)]]]` -/
def P5079473602120051327.Spec : Prop :=
  ∀ n, P5079473602120051327.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P8151973055588933009

`∑[∑[∑[∑[A000045(2*(n+1))]]]]`
-/

namespace A038739.P8151973055588933009
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P8151973055588933009

namespace A038739

/-- `∑[∑[∑[∑[A000045(2*(n+1))]]]]` -/
def P8151973055588933009.Spec : Prop :=
  ∀ n, P8151973055588933009.a n = A038739 (n + 2)

end A038739

/-! ## A038739.P14703884215836363950

`∑[∑[∑[A000045(n+3+n)-1]]]`
-/

namespace A038739.P14703884215836363950
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3 + n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P14703884215836363950

namespace A038739

/-- `∑[∑[∑[A000045(n+3+n)-1]]]` -/
def P14703884215836363950.Spec : Prop :=
  ∀ n, P14703884215836363950.a n = A038739 (n + 2)

end A038739

/-!
# A038740: a(n) = T(n,n-3), array T as in A038738.

The programs for A038740, the canonical program `A038740.P613190986859176741` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038740 has offset 3).

The definition of A038740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038740.P613190986859176741

`∑[A038732(n+3)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038740

/-- `∑[A038732(n+3)]` -/
def P613190986859176741.Spec : Prop :=
  ∀ n, P613190986859176741.a n = A038740 (n + 3)

theorem P613190986859176741.correct : P613190986859176741.Spec := by
  intro n
  simp only [A038740, Nat.add_sub_cancel]

end A038740

/-! ## A038740.P12021935846449575332

`∑[∑[A038739(n+2)]]`
-/

namespace A038740.P12021935846449575332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038739 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P12021935846449575332

namespace A038740

/-- `∑[∑[A038739(n+2)]]` -/
def P12021935846449575332.Spec : Prop :=
  ∀ n, P12021935846449575332.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P12916274078967028555

`∑[∑[∑[A038737(n+2)]]]`
-/

namespace A038740.P12916274078967028555
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038737 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P12916274078967028555

namespace A038740

/-- `∑[∑[∑[A038737(n+2)]]]` -/
def P12916274078967028555.Spec : Prop :=
  ∀ n, P12916274078967028555.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P12052084149509470043

`∑[∑[∑[A099572(2*n)]]]`
-/

namespace A038740.P12052084149509470043
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P12052084149509470043

namespace A038740

/-- `∑[∑[∑[A099572(2*n)]]]` -/
def P12052084149509470043.Spec : Prop :=
  ∀ n, P12052084149509470043.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P17469860524927578511

`∑[∑[∑[A099571(2*n+1)]]]`
-/

namespace A038740.P17469860524927578511
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P17469860524927578511

namespace A038740

/-- `∑[∑[∑[A099571(2*n+1)]]]` -/
def P17469860524927578511.Spec : Prop :=
  ∀ n, P17469860524927578511.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P16544168374627100389

`∑[∑[∑[∑[∑[∑[A000045(2*(n+1))]]]]]]`
-/

namespace A038740.P16544168374627100389
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P16544168374627100389

namespace A038740

/-- `∑[∑[∑[∑[∑[∑[A000045(2*(n+1))]]]]]]` -/
def P16544168374627100389.Spec : Prop :=
  ∀ n, P16544168374627100389.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P8011930436775266118

`A038733(n+5)-(A038733(n+4)+A038732(n+4))`
-/

namespace A038740.P8011930436775266118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038733 (n + 5) - (A038733 (n + 4) + A038732 (n + 4))

end

end A038740.P8011930436775266118

namespace A038740

/-- `A038733(n+5)-(A038733(n+4)+A038732(n+4))` -/
def P8011930436775266118.Spec : Prop :=
  ∀ n, P8011930436775266118.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P10980539896826132620

`∑[A038730(A027379(n+2))]`
-/

namespace A038740.P10980539896826132620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P10980539896826132620

namespace A038740

/-- `∑[A038730(A027379(n+2))]` -/
def P10980539896826132620.Spec : Prop :=
  ∀ n, P10980539896826132620.a n = A038740 (n + 3)

end A038740

/-! ## A038740.P2193381403984139142

`∑[A038730(A052905(n+1)+2)]`
-/

namespace A038740.P2193381403984139142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A052905 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P2193381403984139142

namespace A038740

/-- `∑[A038730(A052905(n+1)+2)]` -/
def P2193381403984139142.Spec : Prop :=
  ∀ n, P2193381403984139142.a n = A038740 (n + 3)

end A038740

/-!
# A038741: T(n,n-4), array T as in A038738.

The programs for A038741, the canonical program `A038741.P6419063686036010405` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038741 has offset 4).

The definition of A038741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038741.P6419063686036010405

`∑[A038733(n+4)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038741

/-- `∑[A038733(n+4)]` -/
def P6419063686036010405.Spec : Prop :=
  ∀ n, P6419063686036010405.a n = A038741 (n + 4)

theorem P6419063686036010405.correct : P6419063686036010405.Spec := by
  intro n
  simp only [A038741, Nat.add_sub_cancel]

end A038741

/-! ## A038741.P9049571027492429430

`∑[∑[A038740(n+3)]]`
-/

namespace A038741.P9049571027492429430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038740 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038741.P9049571027492429430

namespace A038741

/-- `∑[∑[A038740(n+3)]]` -/
def P9049571027492429430.Spec : Prop :=
  ∀ n, P9049571027492429430.a n = A038741 (n + 4)

end A038741

/-! ## A038741.P3728647549394449968

`∑[∑[∑[A038732(n+3)]]]`
-/

namespace A038741.P3728647549394449968
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038732 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038741.P3728647549394449968

namespace A038741

/-- `∑[∑[∑[A038732(n+3)]]]` -/
def P3728647549394449968.Spec : Prop :=
  ∀ n, P3728647549394449968.a n = A038741 (n + 4)

end A038741

/-! ## A038741.P5319340413025135930

`A038734(n+6)-(A038734(n+5)+A038733(n+5))`
-/

namespace A038741.P5319340413025135930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 6) - (A038734 (n + 5) + A038733 (n + 5))

end

end A038741.P5319340413025135930

namespace A038741

/-- `A038734(n+6)-(A038734(n+5)+A038733(n+5))` -/
def P5319340413025135930.Spec : Prop :=
  ∀ n, P5319340413025135930.a n = A038741 (n + 4)

end A038741

/-! ## A038741.P6159836495762070771

`∑[A038730(A046691(n+3))]`
-/

namespace A038741.P6159836495762070771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A046691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038741.P6159836495762070771

namespace A038741

/-- `∑[A038730(A046691(n+3))]` -/
def P6159836495762070771.Spec : Prop :=
  ∀ n, P6159836495762070771.a n = A038741 (n + 4)

end A038741

/-! ## A038741.P2231384546103282243

`A125171(A000096(n+8)+10)`
-/

namespace A038741.P2231384546103282243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A000096 (n + 8) + 10).toNat

end

end A038741.P2231384546103282243

namespace A038741

/-- `A125171(A000096(n+8)+10)` -/
def P2231384546103282243.Spec : Prop :=
  ∀ n, P2231384546103282243.a n = A038741 (n + 4)

end A038741

/-!
# A038742: T(n,n-5), array T as in A038738.

The programs for A038742, the canonical program `A038742.P9813013638731696612` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038742 has offset 5).

The definition of A038742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038742.P9813013638731696612

`∑[A038734(n+5)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038742

/-- `∑[A038734(n+5)]` -/
def P9813013638731696612.Spec : Prop :=
  ∀ n, P9813013638731696612.a n = A038742 (n + 5)

theorem P9813013638731696612.correct : P9813013638731696612.Spec := by
  intro n
  simp only [A038742, Nat.add_sub_cancel]

end A038742

/-! ## A038742.P11931536139738753342

`∑[∑[A038741(n+4)]]`
-/

namespace A038742.P11931536139738753342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038741 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P11931536139738753342

namespace A038742

/-- `∑[∑[A038741(n+4)]]` -/
def P11931536139738753342.Spec : Prop :=
  ∀ n, P11931536139738753342.a n = A038742 (n + 5)

end A038742

/-! ## A038742.P9114877342343700983

`∑[∑[∑[A038733(n+4)]]]`
-/

namespace A038742.P9114877342343700983
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038733 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P9114877342343700983

namespace A038742

/-- `∑[∑[∑[A038733(n+4)]]]` -/
def P9114877342343700983.Spec : Prop :=
  ∀ n, P9114877342343700983.a n = A038742 (n + 5)

end A038742

/-! ## A038742.P11108427998582813520

`A038735(n+7)-(A038735(n+6)+A038734(n+6))`
-/

namespace A038742.P11108427998582813520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038735 (n + 7) - (A038735 (n + 6) + A038734 (n + 6))

end

end A038742.P11108427998582813520

namespace A038742

/-- `A038735(n+7)-(A038735(n+6)+A038734(n+6))` -/
def P11108427998582813520.Spec : Prop :=
  ∀ n, P11108427998582813520.a n = A038742 (n + 5)

end A038742

/-! ## A038742.P15444479518747417157

`∑[A038730(A052905(n+3))]`
-/

namespace A038742.P15444479518747417157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P15444479518747417157

namespace A038742

/-- `∑[A038730(A052905(n+3))]` -/
def P15444479518747417157.Spec : Prop :=
  ∀ n, P15444479518747417157.a n = A038742 (n + 5)

end A038742

/-! ## A038742.P14574705272764078252

`∑[A038730(2*(n+1)+A000096(n+3)+5)]`
-/

namespace A038742.P14574705272764078252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 ((2 * (n + 1) : ℤ) + (A000096 (n + 3) + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P14574705272764078252

namespace A038742

/-- `∑[A038730(2*(n+1)+A000096(n+3)+5)]` -/
def P14574705272764078252.Spec : Prop :=
  ∀ n, P14574705272764078252.a n = A038742 (n + 5)

end A038742

/-! ## A038742.P13150770400156060730

`record[A134511(A055998(n)+14)]`
-/

namespace A038742.P13150770400156060730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (A055998 n + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038742.P13150770400156060730

namespace A038742

/-- `record[A134511(A055998(n)+14)]` -/
def P13150770400156060730.Spec : Prop :=
  ∀ n, P13150770400156060730.a n = A038742 (n + 5)

end A038742

/-!
# A038743: T(n,n-6), array T as in A038738.

The programs for A038743, the canonical program `A038743.P9627818471373104012` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038743 has offset 6).

The definition of A038743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038743.P9627818471373104012

`∑[A038735(n+6)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038743

/-- `∑[A038735(n+6)]` -/
def P9627818471373104012.Spec : Prop :=
  ∀ n, P9627818471373104012.a n = A038743 (n + 6)

theorem P9627818471373104012.correct : P9627818471373104012.Spec := by
  intro n
  simp only [A038743, Nat.add_sub_cancel]

end A038743

/-! ## A038743.P13374575563352258694

`∑[∑[A038742(n+5)]]`
-/

namespace A038743.P13374575563352258694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038742 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038743.P13374575563352258694

namespace A038743

/-- `∑[∑[A038742(n+5)]]` -/
def P13374575563352258694.Spec : Prop :=
  ∀ n, P13374575563352258694.a n = A038743 (n + 6)

end A038743

/-! ## A038743.P8113026315389151763

`∑[∑[∑[A038734(n+5)]]]`
-/

namespace A038743.P8113026315389151763
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038743.P8113026315389151763

namespace A038743

/-- `∑[∑[∑[A038734(n+5)]]]` -/
def P8113026315389151763.Spec : Prop :=
  ∀ n, P8113026315389151763.a n = A038743 (n + 6)

end A038743

/-! ## A038743.P13989924999700060030

`∑[A038730(A055999(n+4))]`
-/

namespace A038743.P13989924999700060030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A055999 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038743.P13989924999700060030

namespace A038743

/-- `∑[A038730(A055999(n+4))]` -/
def P13989924999700060030.Spec : Prop :=
  ∀ n, P13989924999700060030.a n = A038743 (n + 6)

end A038743

/-! ## A038743.P10208346864738475793

`A193923(A000217(n+14)+n)`
-/

namespace A038743.P10208346864738475793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A038743.P10208346864738475793

namespace A038743

/-- `A193923(A000217(n+14)+n)` -/
def P10208346864738475793.Spec : Prop :=
  ∀ n, P10208346864738475793.a n = A038743 (n + 6)

end A038743

/-!
# A038744: a(n) = T(2n,n), array T as in A038738.

The programs for A038744, there is no canonical definition to state claims against.
-/

/-! ## A038744.P8254535898877080663

`A010754(4*n+1)`
-/

namespace A038744.P8254535898877080663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010754 (4 * n + 1)

end

end A038744.P8254535898877080663

/-! ## A038744.P1351990687945148283

`A038738((n+1)²+n²)`
-/

namespace A038744.P1351990687945148283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038738 ((n + 1) ^ 2 + n ^ 2)

end

end A038744.P1351990687945148283

/-! ## A038744.P16781785591422497278

`A125172(A081267(n))`
-/

namespace A038744.P16781785591422497278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125172 (A081267 n).toNat

end

end A038744.P16781785591422497278

/-! ## A038744.P16432542735114240319

`A193667(A062725(n))`
-/

namespace A038744.P16432542735114240319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A062725 n).toNat

end

end A038744.P16432542735114240319

/-! ## A038744.P17371436322640051151

`A193923(A081270(n))`
-/

namespace A038744.P17371436322640051151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A081270 n).toNat

end

end A038744.P17371436322640051151

/-!
# A038746: Number of equivalence classes under rotations and reflections of non-straight n-step self-avoiding walks on the square lattice having no pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A038746, there is no canonical definition to state claims against.
-/

/-! ## A038746.P10817491507469918068

`(A173380(n+1)-4)/8`
-/

namespace A038746.P10817491507469918068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173380 (n + 1) - 4 : ℚ) / 8

end

end A038746.P10817491507469918068

/-! ## A038746.P6914466169849729946

`(A182644(n+2)-2)/4`
-/

namespace A038746.P6914466169849729946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182644 (n + 2) - 2 : ℚ) / 4

end

end A038746.P6914466169849729946

/-! ## A038746.P5532669198928871256

`floor(A173380(n+1)/8)`
-/

namespace A038746.P5532669198928871256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173380 (n + 1) : ℚ) / 8⌋

end

end A038746.P5532669198928871256

/-! ## A038746.P9696665451723567164

`A324245(A182644(n+2))`
-/

namespace A038746.P9696665451723567164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A182644 (n + 2)).toNat

end

end A038746.P9696665451723567164

/-! ## A038746.P17092665792108182999

`A110658(A173380(n+1))`
-/

namespace A038746.P17092665792108182999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A173380 (n + 1)).toNat

end

end A038746.P17092665792108182999

/-!
# A038747: Number of equivalence classes under rotations and reflections of n-step self-avoiding walks on the square lattice having exactly 1 pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A038747, there is no canonical definition to state claims against.
-/

/-! ## A038747.P277261021280608701

`A033155(n+1)/8`
-/

namespace A038747.P277261021280608701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033155 (n + 1) : ℚ) / 8

end

end A038747.P277261021280608701

/-! ## A038747.P8056232005380056145

`A110962(A033155(n+1)+1)`
-/

namespace A038747.P8056232005380056145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A033155 (n + 1) + 1).toNat

end

end A038747.P8056232005380056145

/-! ## A038747.P372438549937156641

`A006085(A033155(n+1))`
-/

namespace A038747.P372438549937156641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A033155 (n + 1)).toNat

end

end A038747.P372438549937156641

/-! ## A038747.P3398433562886995886

`A110658(A033155(n+1)+1)`
-/

namespace A038747.P3398433562886995886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A033155 (n + 1) + 1).toNat

end

end A038747.P3398433562886995886

/-! ## A038747.P141159654248892579

`A025480(A033155(n+1)+3)`
-/

namespace A038747.P141159654248892579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A033155 (n + 1) + 3).toNat

end

end A038747.P141159654248892579

/-!
# A038748: Coefficients arising in the enumeration of configurations of linear chains.

The programs for A038748, there is no canonical definition to state claims against.
-/

/-! ## A038748.P2437277387468334875

`A082996(A150159(n+1))`
-/

namespace A038748.P2437277387468334875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (A150159 (n + 1)).toNat

end

end A038748.P2437277387468334875

/-! ## A038748.P9168832526063184766

`A344420((n-A003945(n))²)`
-/

namespace A038748.P9168832526063184766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (((n : ℤ) - A003945 n) ^ 2).toNat

end

end A038748.P9168832526063184766

/-! ## A038748.P1270466500977362612

`A072114(A149778(n)+A149773(n))`
-/

namespace A038748.P1270466500977362612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (A149778 n + A149773 n).toNat

end

end A038748.P1270466500977362612

/-!
# A038749: Coefficients arising in the enumeration of configurations of linear chains.

The programs for A038749, there is no canonical definition to state claims against.
-/

/-! ## A038749.P17271379938808112144

`Δ[A184020(n+1)%A202705(n)]`
-/

namespace A038749.P17271379938808112144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184020 (n + 1)) (A202705 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038749.P17271379938808112144

/-! ## A038749.P9384887344578267634

`A000142(n)-A165412(A107597(n))`
-/

namespace A038749.P9384887344578267634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A165412 (A107597 n).toNat

end

end A038749.P9384887344578267634

/-! ## A038749.P8795745807994710076

`A000142(n)-A018676(A374743(n))`
-/

namespace A038749.P8795745807994710076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A018676 (A374743 n).toNat

end

end A038749.P8795745807994710076

/-!
# A038753: Nonprime partition numbers.

The programs for A038753, there is no canonical definition to state claims against.
-/

/-! ## A038753.P551095064253693819

`A000041(comp[A046063(n+1)-1]+1)`
-/

namespace A038753.P551095064253693819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A038753.P551095064253693819

/-! ## A038753.P5697865356727211766

`A000041(lt[A158388(n), A085561(n)])`
-/

namespace A038753.P5697865356727211766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038753.P5697865356727211766

/-! ## A038753.P5454451995524681143

`A000041(lt[n, A096371(n)+1])`
-/

namespace A038753.P5454451995524681143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096371 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038753.P5454451995524681143

/-! ## A038753.P2640735792031475185

`A000041(lt[n-1, A096371(n)])`
-/

namespace A038753.P2640735792031475185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038753.P2640735792031475185

/-! ## A038753.P609150048187808755

`A000041(lt[A074174(2*n+3), A196110(n+1)])`
-/

namespace A038753.P609150048187808755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074174 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038753.P609150048187808755

/-!
# A038754: a(2n) = 3^n, a(2n+1) = 2*3^n.

The programs for A038754, the canonical program `A038754.P13322389225864494282` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038754 has offset 0).

The definition of A038754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038754.P13322389225864494282

`3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038754

/-- `3*a(n-2)` -/
def P13322389225864494282.Spec : Prop :=
  ∀ n, (P13322389225864494282.a n : ℤ) = A038754 n

theorem P13322389225864494282.correct : P13322389225864494282.Spec := by
  intro n
  simp only [A038754]

end A038754

/-! ## A038754.P10234446664222453575

`2^(n%2)*3^((n-n%2)/2)`
-/

namespace A038754.P10234446664222453575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (n % 2) : ℝ) * (3 : ℝ) ^ (((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 2 : ℝ)

end

end A038754.P10234446664222453575

namespace A038754

/-- `2^(n%2)*3^((n-n%2)/2)` -/
def P10234446664222453575.Spec : Prop :=
  ∀ n, P10234446664222453575.a n = (A038754 n : ℝ)

end A038754

/-! ## A038754.P2665624767764104618

`2^((1-(-1)^n)/2)*3^((2*n-1+(-1)^n)/4)`
-/

namespace A038754.P2665624767764104618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ) * (3 : ℝ) ^ (((2 * n : ℤ) - 1 + (-1) ^ n : ℚ) / 4 : ℝ)

end

end A038754.P2665624767764104618

namespace A038754

/-- `2^((1-(-1)^n)/2)*3^((2*n-1+(-1)^n)/4)` -/
def P2665624767764104618.Spec : Prop :=
  ∀ n, P2665624767764104618.a n = (A038754 n : ℝ)

end A038754

/-! ## A038754.P7116722868587840909

`ogf((1+2x)/(1-3x^2))`
-/

namespace A038754.P7116722868587840909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -3] n

end

end A038754.P7116722868587840909

namespace A038754

/-- `ogf((1+2x)/(1-3x^2))` -/
def P7116722868587840909.Spec : Prop :=
  ∀ n, P7116722868587840909.a n = A038754 n

end A038754

/-! ## A038754.P8871093787178659717

`∏[3/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A038754.P8871093787178659717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038754.P8871093787178659717

namespace A038754

/-- `∏[3/a(n-1)]` -/
def P8871093787178659717.Spec : Prop :=
  ∀ n, P8871093787178659717.a n = (A038754 n : ℚ)

end A038754

/-! ## A038754.P16486390953103584375

`∏[log2(root(8, a(n-1)))]` with `a(0)=1, a(1)=2`
-/

namespace A038754.P16486390953103584375
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Real.logb 2 ((8 : ℝ) ^ (1 / f1 (n - 1)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038754.P16486390953103584375

namespace A038754

/-- `∏[log2(root(8, a(n-1)))]` -/
def P16486390953103584375.Spec : Prop :=
  ∀ n, P16486390953103584375.a n = (A038754 n : ℝ)

end A038754

/-! ## A038754.P4899430388982838300

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=2`
-/

namespace A038754.P4899430388982838300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A038754.P4899430388982838300

namespace A038754

/-- `a(n-2)/(1-2/3)` -/
def P4899430388982838300.Spec : Prop :=
  ∀ n, P4899430388982838300.a n = (A038754 n : ℚ)

end A038754

/-! ## A038754.P6061065728176659795

`a(n-1)+a(n-gcd(2, n))` with `a(0)=1`
-/

namespace A038754.P6061065728176659795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 n)

end

end A038754.P6061065728176659795

namespace A038754

/-- `a(n-1)+a(n-gcd(2, n))` -/
def P6061065728176659795.Spec : Prop :=
  ∀ n, (P6061065728176659795.a n : ℤ) = A038754 n

end A038754

/-! ## A038754.P9807597030831352149

`a(n-1)+3^val(a(n-1), 3)` with `a(0)=1`
-/

namespace A038754.P9807597030831352149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 ^ SequenceMachineLib.valuation (a (n - 1)) 3

end

end A038754.P9807597030831352149

namespace A038754

/-- `a(n-1)+3^val(a(n-1), 3)` -/
def P9807597030831352149.Spec : Prop :=
  ∀ n, (P9807597030831352149.a n : ℤ) = A038754 n

end A038754

/-! ## A038754.P3562332685044490313

`a(n-1)+a(n%2-2+n)` with `a(0)=1`
-/

namespace A038754.P3562332685044490313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (((n % 2 : ℕ) : ℤ) - 2 + (n : ℤ)).toNat

end

end A038754.P3562332685044490313

namespace A038754

/-- `a(n-1)+a(n%2-2+n)` -/
def P3562332685044490313.Spec : Prop :=
  ∀ n, (P3562332685044490313.a n : ℤ) = A038754 n

end A038754

/-! ## A038754.P15381540601437495617

`a(n-1-and(1, n+1))+a(n-1)` with `a(0)=1`
-/

namespace A038754.P15381540601437495617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - (Nat.land 1 (n + 1) : ℤ)).toNat + a (n - 1)

end

end A038754.P15381540601437495617

namespace A038754

/-- `a(n-1-and(1, n+1))+a(n-1)` -/
def P15381540601437495617.Spec : Prop :=
  ∀ n, (P15381540601437495617.a n : ℤ) = A038754 n

end A038754

/-! ## A038754.P7708676249149583487

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A038754.P7708676249149583487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A038754.P7708676249149583487

namespace A038754

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P7708676249149583487.Spec : Prop :=
  ∀ n, (P7708676249149583487.a n : ℤ) = A038754 n

end A038754

/-! ## A038754.P2932868691917906889

`a(n-1)-((a(n-2)-a(n-1))%a(n-2)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A038754.P2932868691917906889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2) - a (n - 1)) (a (n - 2)) - a (n - 2))

end

end A038754.P2932868691917906889

namespace A038754

/-- `a(n-1)-((a(n-2)-a(n-1))%a(n-2)-a(n-2))` -/
def P2932868691917906889.Spec : Prop :=
  ∀ n, P2932868691917906889.a n = A038754 n

end A038754

/-! ## A038754.P11304936322869428737

`a(n-1)-(gcd(a(n-1), a(n-2))-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A038754.P11304936322869428737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((Int.gcd (a (n - 1)) (a (n - 2)) : ℤ) - a (n - 2) - a (n - 2))

end

end A038754.P11304936322869428737

namespace A038754

/-- `a(n-1)-(gcd(a(n-1), a(n-2))-a(n-2)-a(n-2))` -/
def P11304936322869428737.Spec : Prop :=
  ∀ n, P11304936322869428737.a n = A038754 n

end A038754

/-! ## A038754.P13753771888355976142

`A182522(n+1)`
-/

namespace A038754.P13753771888355976142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1)

end

end A038754.P13753771888355976142

namespace A038754

/-- `A182522(n+1)` -/
def P13753771888355976142.Spec : Prop :=
  ∀ n, P13753771888355976142.a n = A038754 n

end A038754

/-! ## A038754.P14730623605962865416

`A062318(n+1)+1`
-/

namespace A038754.P14730623605962865416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1) + 1

end

end A038754.P14730623605962865416

namespace A038754

/-- `A062318(n+1)+1` -/
def P14730623605962865416.Spec : Prop :=
  ∀ n, P14730623605962865416.a n = A038754 n

end A038754

/-! ## A038754.P14776590868426223789

`∑[abs(A287479(n))]+1`
-/

namespace A038754.P14776590868426223789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287479 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038754.P14776590868426223789

namespace A038754

/-- `∑[abs(A287479(n))]+1` -/
def P14776590868426223789.Spec : Prop :=
  ∀ n, P14776590868426223789.a n = A038754 n

end A038754

/-! ## A038754.P16097636390453848690

`∑[A108411(abs(1-n))]`
-/

namespace A038754.P16097636390453848690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038754.P16097636390453848690

namespace A038754

/-- `∑[A108411(abs(1-n))]` -/
def P16097636390453848690.Spec : Prop :=
  ∀ n, P16097636390453848690.a n = A038754 n

end A038754

/-! ## A038754.P7372591633484537737

`∑[3^A140106(n+1)]`
-/

namespace A038754.P7372591633484537737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A140106 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038754.P7372591633484537737

namespace A038754

/-- `∑[3^A140106(n+1)]` -/
def P7372591633484537737.Spec : Prop :=
  ∀ n, P7372591633484537737.a n = (A038754 n : ℚ)

end A038754

/-! ## A038754.P1326547307420548104

`A083658(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A038754.P1326547307420548104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083658 (n + 1) - a (n - 1)

end

end A038754.P1326547307420548104

namespace A038754

/-- `A083658(n+1)-a(n-1)` -/
def P1326547307420548104.Spec : Prop :=
  ∀ n, P1326547307420548104.a n = A038754 n

end A038754

/-!
# A038756: Earliest sequence where a(a(n))=3^n.

The programs for A038756, there is no canonical definition to state claims against.
-/

/-! ## A038756.P17881173504134212513

`A053585(lcm(n+2, A130505(n)))`
-/

namespace A038756.P17881173504134212513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (Int.lcm (n + 2 : ℤ) (A130505 n))

end

end A038756.P17881173504134212513

/-! ## A038756.P16837504496041402888

`A053585(lcm(A000244(n), A136432(n)))`
-/

namespace A038756.P16837504496041402888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (Int.lcm (A000244 n) (A136432 n))

end

end A038756.P16837504496041402888

/-! ## A038756.P7793657637523909750

`A097224(A098555(n+1))^A128707(n+1)`
-/

namespace A038756.P7793657637523909750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097224 (A098555 (n + 1)).toNat : ℚ) ^ (A128707 (n + 1) : ℤ)

end

end A038756.P7793657637523909750

/-!
# A038758: Number of ways of covering a 2n X 2n lattice by 2n^2 dominoes with exactly 4 horizontal (or vertical) dominoes.

The programs for A038758, the canonical program `A038758.P13417027966199607140` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038758 has offset 2).

The definition of A038758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038758.P13417027966199607140

`1/24*(n+2)*(n+1)*(n+3)*(12*(n+2)^3-11*(n+2)-10)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038758

/-- `1/24*(n+2)*(n+1)*(n+3)*(12*(n+2)^3-11*(n+2)-10)` -/
def P13417027966199607140.Spec : Prop :=
  ∀ n, P13417027966199607140.a n = (A038758 (n + 2) : ℚ)

end A038758

/-! ## A038758.P13246508667576235556

`A000332(n+4)+C(A007531(n+3), 2)`
-/

namespace A038758.P13246508667576235556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + (Nat.choose (A007531 (n + 3)).toNat 2 : ℤ)

end

end A038758.P13246508667576235556

namespace A038758

/-- `A000332(n+4)+C(A007531(n+3), 2)` -/
def P13246508667576235556.Spec : Prop :=
  ∀ n, P13246508667576235556.a n = A038758 (n + 2)

end A038758

/-!
# A038759: a(n) = ceiling(sqrt(n))*floor(sqrt(n)).

The programs for A038759, the canonical program `A038759.P4328138862900684480` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038759 has offset 0).

The definition of A038759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n))*floor(sqrt(n))` (program `A038759.P4328138862900684480`, by `A038759.P4328138862900684480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038759.P4328138862900684480

`ceil(sqrt(n))*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038759

/-- `ceil(sqrt(n))*floor(sqrt(n))` -/
def P4328138862900684480.Spec : Prop :=
  ∀ n, P4328138862900684480.a n = A038759 n

theorem P4328138862900684480.correct : P4328138862900684480.Spec := by
  intro n
  simp only [A038759]

end A038759

/-! ## A038759.P4767493740629117195

`n-A038760(n)`
-/

namespace A038759.P4767493740629117195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038760 n

end

end A038759.P4767493740629117195

namespace A038759

/-- `n-A038760(n)` -/
def P4767493740629117195.Spec : Prop :=
  ∀ n, P4767493740629117195.a n = A038759 n

theorem P4767493740629117195.correct : P4767493740629117195.Spec := by
  intro n
  simp only [A038759, Nat.add_sub_cancel, A038759.P4767493740629117195.a, A038759.P4328138862900684480.a, A038760, A038760.P7627672833818385301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038759

/-! ## A038759.P9632657300733059680

`A174803(n)-n`
-/

namespace A038759.P9632657300733059680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174803 n - (n : ℤ)

end

end A038759.P9632657300733059680

namespace A038759

/-- `A174803(n)-n` -/
def P9632657300733059680.Spec : Prop :=
  ∀ n, P9632657300733059680.a n = A038759 n

theorem P9632657300733059680.correct : P9632657300733059680.Spec := by
  intro n
  simp only [A038759, Nat.add_sub_cancel, A038759.P9632657300733059680.a, A038759.P4328138862900684480.a, A174803, A174803.P17565562458744675628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038759

/-! ## A038759.P17830132445662982250

`sqrt(floor(sqrt(n))²*A048761(n))`
-/

namespace A038759.P17830132445662982250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.sqrt n ^ 2 : ℤ) * A048761 n : ℝ)

end

end A038759.P17830132445662982250

namespace A038759

/-- `sqrt(floor(sqrt(n))²*A048761(n))` -/
def P17830132445662982250.Spec : Prop :=
  ∀ n, P17830132445662982250.a n = (A038759 n : ℝ)

end A038759

/-! ## A038759.P2139807756072486665

`A002620(∑[A266298(n)])`
-/

namespace A038759.P2139807756072486665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038759.P2139807756072486665

namespace A038759

/-- `A002620(∑[A266298(n)])` -/
def P2139807756072486665.Spec : Prop :=
  ∀ n, P2139807756072486665.a n = A038759 n

end A038759

/-! ## A038759.P4973636543021649276

`A174804(n)/A028310(n)`
-/

namespace A038759.P4973636543021649276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174804 n : ℚ) / (A028310 n : ℚ)

end

end A038759.P4973636543021649276

namespace A038759

/-- `A174804(n)/A028310(n)` -/
def P4973636543021649276.Spec : Prop :=
  ∀ n, P4973636543021649276.a n = (A038759 n : ℚ)

end A038759

/-! ## A038759.P8226164717222907233

`A002620(∑[char[A137224(n)]])`
-/

namespace A038759.P8226164717222907233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038759.P8226164717222907233

namespace A038759

/-- `A002620(∑[char[A137224(n)]])` -/
def P8226164717222907233.Spec : Prop :=
  ∀ n, P8226164717222907233.a n = A038759 n

end A038759

/-! ## A038759.P16443512065216833599

`abs(A038760(n)+A001489(n))`
-/

namespace A038759.P16443512065216833599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038760 n + A001489 n|

end

end A038759.P16443512065216833599

namespace A038759

/-- `abs(A038760(n)+A001489(n))` -/
def P16443512065216833599.Spec : Prop :=
  ∀ n, P16443512065216833599.a n = A038759 n

end A038759

/-! ## A038759.P3434066827289552721

`∑[A000196(n*A266298(n))]`
-/

namespace A038759.P3434066827289552721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A266298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038759.P3434066827289552721

namespace A038759

/-- `∑[A000196(n*A266298(n))]` -/
def P3434066827289552721.Spec : Prop :=
  ∀ n, P3434066827289552721.a n = A038759 n

end A038759

/-! ## A038759.P767694826826231576

`n-A196199(A037213(n)+n)`
-/

namespace A038759.P767694826826231576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A196199 (A037213 n + (n : ℤ)).toNat

end

end A038759.P767694826826231576

namespace A038759

/-- `n-A196199(A037213(n)+n)` -/
def P767694826826231576.Spec : Prop :=
  ∀ n, P767694826826231576.a n = A038759 n

end A038759

/-! ## A038759.P7228945596221682732

`n-A196199(n-A037213(n))`
-/

namespace A038759.P7228945596221682732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A196199 ((n : ℤ) - A037213 n).toNat

end

end A038759.P7228945596221682732

namespace A038759

/-- `n-A196199(n-A037213(n))` -/
def P7228945596221682732.Spec : Prop :=
  ∀ n, P7228945596221682732.a n = A038759 n

end A038759

/-! ## A038759.P10566587799796188869

`n-A196199(n*A267635(n))`
-/

namespace A038759.P10566587799796188869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A196199 ((n : ℤ) * A267635 n).toNat

end

end A038759.P10566587799796188869

namespace A038759

/-- `n-A196199(n*A267635(n))` -/
def P10566587799796188869.Spec : Prop :=
  ∀ n, P10566587799796188869.a n = A038759 n

end A038759

/-! ## A038759.P5900445857423679750

`A007606(n+1)-(A037213(n)+1+n)`
-/

namespace A038759.P5900445857423679750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1) - (A037213 n + 1 + (n : ℤ))

end

end A038759.P5900445857423679750

namespace A038759

/-- `A007606(n+1)-(A037213(n)+1+n)` -/
def P5900445857423679750.Spec : Prop :=
  ∀ n, P5900445857423679750.a n = A038759 n

end A038759

/-! ## A038759.P82686260087009379

`A000196(n)+A000196(n)²-A037213(n)`
-/

namespace A038759.P82686260087009379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A000196 n ^ 2 - A037213 n)

end

end A038759.P82686260087009379

namespace A038759

/-- `A000196(n)+A000196(n)²-A037213(n)` -/
def P82686260087009379.Spec : Prop :=
  ∀ n, P82686260087009379.a n = A038759 n

end A038759

/-! ## A038759.P5793928750407659335

`A000196(n)*A003059(n+1)-A037213(n)`
-/

namespace A038759.P5793928750407659335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A003059 (n + 1) - A037213 n

end

end A038759.P5793928750407659335

namespace A038759

/-- `A000196(n)*A003059(n+1)-A037213(n)` -/
def P5793928750407659335.Spec : Prop :=
  ∀ n, P5793928750407659335.a n = A038759 n

end A038759

/-! ## A038759.P17471134508992304117

`A003059(n+1)*A135034(n)-A135034(n)`
-/

namespace A038759.P17471134508992304117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) * A135034 n - A135034 n

end

end A038759.P17471134508992304117

namespace A038759

/-- `A003059(n+1)*A135034(n)-A135034(n)` -/
def P17471134508992304117.Spec : Prop :=
  ∀ n, P17471134508992304117.a n = A038759 n

end A038759

/-! ## A038759.P13398913837598868372

`A135034(n+1)*A135034(n)-A135034(n)`
-/

namespace A038759.P13398913837598868372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (n + 1) * A135034 n - A135034 n

end

end A038759.P13398913837598868372

namespace A038759

/-- `A135034(n+1)*A135034(n)-A135034(n)` -/
def P13398913837598868372.Spec : Prop :=
  ∀ n, P13398913837598868372.a n = A038759 n

end A038759

/-! ## A038759.P7316638232900066952

`n-(2*n-lt[A057212(n+1), 1])*char[comp[n²]]`
-/

namespace A038759.P7316638232900066952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A038759.P7316638232900066952

namespace A038759

/-- `n-(2*n-lt[A057212(n+1), 1])*char[comp[n²]]` -/
def P7316638232900066952.Spec : Prop :=
  ∀ n, P7316638232900066952.a n = A038759 n

end A038759

/-! ## A038759.P13900292428157756511

`A002265(∑[A266298(n)]²)`
-/

namespace A038759.P13900292428157756511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A038759.P13900292428157756511

namespace A038759

/-- `A002265(∑[A266298(n)]²)` -/
def P13900292428157756511.Spec : Prop :=
  ∀ n, P13900292428157756511.a n = A038759 n

end A038759

/-! ## A038759.P8089316577913366647

`A174804(n)/A000196(n²+1)`
-/

namespace A038759.P8089316577913366647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174804 n : ℚ) / (A000196 (n ^ 2 + 1) : ℚ)

end

end A038759.P8089316577913366647

namespace A038759

/-- `A174804(n)/A000196(n²+1)` -/
def P8089316577913366647.Spec : Prop :=
  ∀ n, P8089316577913366647.a n = (A038759 n : ℚ)

end A038759

/-!
# A038760: a(n) = n - floor(sqrt(n)) * ceiling(sqrt(n)).

The programs for A038760, the canonical program `A038760.P7627672833818385301` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038760 has offset 0).

The definition of A038760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-floor(sqrt(n))*ceil(sqrt(n))` (program `A038760.P7627672833818385301`, by `A038760.P7627672833818385301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038760.P7627672833818385301

`n-floor(sqrt(n))*ceil(sqrt(n))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038760

/-- `n-floor(sqrt(n))*ceil(sqrt(n))` -/
def P7627672833818385301.Spec : Prop :=
  ∀ n, P7627672833818385301.a n = A038760 n

theorem P7627672833818385301.correct : P7627672833818385301.Spec := by
  intro n
  simp only [A038760]

end A038760

/-! ## A038760.P16045691166316173554

`A196199(n)%round(sqrt(n+1))`
-/

namespace A038760.P16045691166316173554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196199 n) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)))

end

end A038760.P16045691166316173554

namespace A038760

/-- `A196199(n)%round(sqrt(n+1))` -/
def P16045691166316173554.Spec : Prop :=
  ∀ n, P16045691166316173554.a n = A038760 n

end A038760

/-! ## A038760.P13921836195592755440

`A196199(A037213(n)+n)`
-/

namespace A038760.P13921836195592755440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A037213 n + (n : ℤ)).toNat

end

end A038760.P13921836195592755440

namespace A038760

/-- `A196199(A037213(n)+n)` -/
def P13921836195592755440.Spec : Prop :=
  ∀ n, P13921836195592755440.a n = A038760 n

end A038760

/-! ## A038760.P15457311795289951037

`A196199(n-A037213(n))`
-/

namespace A038760.P15457311795289951037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 ((n : ℤ) - A037213 n).toNat

end

end A038760.P15457311795289951037

namespace A038760

/-- `A196199(n-A037213(n))` -/
def P15457311795289951037.Spec : Prop :=
  ∀ n, P15457311795289951037.a n = A038760 n

end A038760

/-! ## A038760.P4911649378219865397

`A196199(n*A267635(n))`
-/

namespace A038760.P4911649378219865397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 ((n : ℤ) * A267635 n).toNat

end

end A038760.P4911649378219865397

namespace A038760

/-- `A196199(n*A267635(n))` -/
def P4911649378219865397.Spec : Prop :=
  ∀ n, P4911649378219865397.a n = A038760 n

end A038760

/-! ## A038760.P10434987852029464584

`ceil((A053186(n)-A068527(n))/2)`
-/

namespace A038760.P10434987852029464584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 n - A068527 n : ℚ) / 2⌉

end

end A038760.P10434987852029464584

namespace A038760

/-- `ceil((A053186(n)-A068527(n))/2)` -/
def P10434987852029464584.Spec : Prop :=
  ∀ n, P10434987852029464584.a n = A038760 n

end A038760

/-! ## A038760.P7983092096614532827

`(A071797(n+1)-A028310(A068527(n)))/2`
-/

namespace A038760.P7983092096614532827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071797 (n + 1) - A028310 (A068527 n).toNat : ℚ) / 2

end

end A038760.P7983092096614532827

namespace A038760

/-- `(A071797(n+1)-A028310(A068527(n)))/2` -/
def P7983092096614532827.Spec : Prop :=
  ∀ n, P7983092096614532827.a n = (A038760 n : ℚ)

end A038760

/-! ## A038760.P1601516208155630548

`(A053186(n)-A000196(n))%A000196(n+1)`
-/

namespace A038760.P1601516208155630548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053186 n - A000196 n) (A000196 (n + 1))

end

end A038760.P1601516208155630548

namespace A038760

/-- `(A053186(n)-A000196(n))%A000196(n+1)` -/
def P1601516208155630548.Spec : Prop :=
  ∀ n, P1601516208155630548.a n = A038760 n

end A038760

/-! ## A038760.P8056345954442809643

`(2*n-lt[A057212(n+1), 1])*char[comp[n²]]`
-/

namespace A038760.P8056345954442809643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A038760.P8056345954442809643

namespace A038760

/-- `(2*n-lt[A057212(n+1), 1])*char[comp[n²]]` -/
def P8056345954442809643.Spec : Prop :=
  ∀ n, P8056345954442809643.a n = A038760 n

end A038760

/-! ## A038760.P16347397730415004413

`A010751(A174803(n))`
-/

namespace A038760.P16347397730415004413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A174803 n).toNat

end

end A038760.P16347397730415004413

namespace A038760

/-- `A010751(A174803(n))` -/
def P16347397730415004413.Spec : Prop :=
  ∀ n, P16347397730415004413.a n = A038760 n

end A038760

/-!
# A038761: a(n) = 6*a(n-1) - a(n-2), n >= 2, a(0)=1, a(1)=9.

The programs for A038761, the canonical program `A038761.P8696052964661000947` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038761 has offset 0).

The definition of A038761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038761.P8696052964661000947`, by `A038761.P8696052964661000947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038761.P8696052964661000947

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038761

/-- `6*a(n-1)-a(n-2)` -/
def P8696052964661000947.Spec : Prop :=
  ∀ n, P8696052964661000947.a n = A038761 n

theorem P8696052964661000947.correct : P8696052964661000947.Spec := by
  intro n
  simp only [A038761]

end A038761

/-! ## A038761.P5645926790315760107

`sqrt(2*A038762(n)²-14)/2`
-/

namespace A038761.P5645926790315760107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A038762 n ^ 2 - 14 : ℝ) / 2

end

end A038761.P5645926790315760107

namespace A038761

/-- `sqrt(2*A038762(n)²-14)/2` -/
def P5645926790315760107.Spec : Prop :=
  ∀ n, P5645926790315760107.a n = (A038761 n : ℝ)

end A038761

/-! ## A038761.P779415217195650591

`ogf((1+3x)/(1-6x+x^2))`
-/

namespace A038761.P779415217195650591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -6, 1] n

end

end A038761.P779415217195650591

namespace A038761

/-- `ogf((1+3x)/(1-6x+x^2))` -/
def P779415217195650591.Spec : Prop :=
  ∀ n, P779415217195650591.a n = A038761 n

end A038761

/-! ## A038761.P5856267061188349354

`Δ[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=2`
-/

namespace A038761.P5856267061188349354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038761.P5856267061188349354

namespace A038761

/-- `Δ[floor(a(n-1)/(3-sqrt(8)))]` -/
def P5856267061188349354.Spec : Prop :=
  ∀ n, P5856267061188349354.a n = A038761 n

end A038761

/-! ## A038761.P12216101687389595881

`or(1, floor(a(n-1)/(3-sqrt(8))))` with `a(0)=1, a(1)=9`
-/

namespace A038761.P12216101687389595881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  Int.lor 1 ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A038761.P12216101687389595881

namespace A038761

/-- `or(1, floor(a(n-1)/(3-sqrt(8))))` -/
def P12216101687389595881.Spec : Prop :=
  ∀ n, P12216101687389595881.a n = A038761 n

end A038761

/-! ## A038761.P8685237926916430028

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A038761.P8685237926916430028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038761.P8685237926916430028

namespace A038761

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P8685237926916430028.Spec : Prop :=
  ∀ n, P8685237926916430028.a n = A038761 n

end A038761

/-! ## A038761.P477238352060606883

`Δ[A038725(n)]`
-/

namespace A038761.P477238352060606883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038761.P477238352060606883

namespace A038761

/-- `Δ[A038725(n)]` -/
def P477238352060606883.Spec : Prop :=
  ∀ n, P477238352060606883.a n = A038761 n

end A038761

/-! ## A038761.P6513289173734872075

`Δ[A108261(n)]`
-/

namespace A038761.P6513289173734872075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038761.P6513289173734872075

namespace A038761

/-- `Δ[A108261(n)]` -/
def P6513289173734872075.Spec : Prop :=
  ∀ n, P6513289173734872075.a n = A038761 n

end A038761

/-! ## A038761.P9317813060290094972

`A048654(2*n)`
-/

namespace A038761.P9317813060290094972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (2 * n)

end

end A038761.P9317813060290094972

namespace A038761

/-- `A048654(2*n)` -/
def P9317813060290094972.Spec : Prop :=
  ∀ n, P9317813060290094972.a n = A038761 n

end A038761

/-! ## A038761.P2802745559557752783

`A077442(2*n)`
-/

namespace A038761.P2802745559557752783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (2 * n)

end

end A038761.P2802745559557752783

namespace A038761

/-- `A077442(2*n)` -/
def P2802745559557752783.Spec : Prop :=
  ∀ n, P2802745559557752783.a n = A038761 n

end A038761

/-! ## A038761.P10155202218659544042

`Δ[A006452(2*n)]`
-/

namespace A038761.P10155202218659544042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038761.P10155202218659544042

namespace A038761

/-- `Δ[A006452(2*n)]` -/
def P10155202218659544042.Spec : Prop :=
  ∀ n, P10155202218659544042.a n = A038761 n

end A038761

/-! ## A038761.P380119184619310506

`Δ[A216162(4*n)]`
-/

namespace A038761.P380119184619310506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038761.P380119184619310506

namespace A038761

/-- `Δ[A216162(4*n)]` -/
def P380119184619310506.Spec : Prop :=
  ∀ n, P380119184619310506.a n = A038761 n

end A038761

/-! ## A038761.P12062838993268976272

`A082981(4*n+1)`
-/

namespace A038761.P12062838993268976272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082981 (4 * n + 1)

end

end A038761.P12062838993268976272

namespace A038761

/-- `A082981(4*n+1)` -/
def P12062838993268976272.Spec : Prop :=
  ∀ n, P12062838993268976272.a n = A038761 n

end A038761

/-! ## A038761.P8802606620094601059

`A266504(4*n+2)`
-/

namespace A038761.P8802606620094601059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (4 * n + 2)

end

end A038761.P8802606620094601059

namespace A038761

/-- `A266504(4*n+2)` -/
def P8802606620094601059.Spec : Prop :=
  ∀ n, P8802606620094601059.a n = A038761 n

end A038761

/-! ## A038761.P15983108801262023570

`A266506(8*n+4)`
-/

namespace A038761.P15983108801262023570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (8 * n + 4)

end

end A038761.P15983108801262023570

namespace A038761

/-- `A266506(8*n+4)` -/
def P15983108801262023570.Spec : Prop :=
  ∀ n, P15983108801262023570.a n = A038761 n

end A038761

/-! ## A038761.P17831790243986547791

`2*A216134(2*n)+1`
-/

namespace A038761.P17831790243986547791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216134 (2 * n) + 1

end

end A038761.P17831790243986547791

namespace A038761

/-- `2*A216134(2*n)+1` -/
def P17831790243986547791.Spec : Prop :=
  ∀ n, P17831790243986547791.a n = A038761 n

end A038761

/-! ## A038761.P13667790323721507164

`A002315(n)+A001542(n)`
-/

namespace A038761.P13667790323721507164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + A001542 n

end

end A038761.P13667790323721507164

namespace A038761

/-- `A002315(n)+A001542(n)` -/
def P13667790323721507164.Spec : Prop :=
  ∀ n, P13667790323721507164.a n = A038761 n

end A038761

/-! ## A038761.P9515693512924051983

`A054488(n)+A001109(n)`
-/

namespace A038761.P9515693512924051983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + A001109 n

end

end A038761.P9515693512924051983

namespace A038761

/-- `A054488(n)+A001109(n)` -/
def P9515693512924051983.Spec : Prop :=
  ∀ n, P9515693512924051983.a n = A038761 n

end A038761

/-! ## A038761.P10906955072513973700

`A075848(n)+A001541(n)`
-/

namespace A038761.P10906955072513973700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n + A001541 n

end

end A038761.P10906955072513973700

namespace A038761

/-- `A075848(n)+A001541(n)` -/
def P10906955072513973700.Spec : Prop :=
  ∀ n, P10906955072513973700.a n = A038761 n

end A038761

/-! ## A038761.P1280737674703562395

`A054489(n)-A001109(n)`
-/

namespace A038761.P1280737674703562395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n - A001109 n

end

end A038761.P1280737674703562395

namespace A038761

/-- `A054489(n)-A001109(n)` -/
def P1280737674703562395.Spec : Prop :=
  ∀ n, P1280737674703562395.a n = A038761 n

end A038761

/-!
# A038762: a(n) = 6*a(n-1) - a(n-2) for n >= 2, with a(0)=3, a(1)=13.

The programs for A038762, the canonical program `A038762.P13220051109249100831` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038762 has offset 0).

The definition of A038762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038762.P13220051109249100831`, by `A038762.P13220051109249100831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038762.P13220051109249100831

`6*a(n-1)-a(n-2)` with `a(0)=3, a(1)=13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038762

/-- `6*a(n-1)-a(n-2)` -/
def P13220051109249100831.Spec : Prop :=
  ∀ n, P13220051109249100831.a n = A038762 n

theorem P13220051109249100831.correct : P13220051109249100831.Spec := by
  intro n
  simp only [A038762]

end A038762

/-! ## A038762.P10349698149170003798

`A077443(2*n+1)`
-/

namespace A038762.P10349698149170003798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (2 * n + 1)

end

end A038762.P10349698149170003798

namespace A038762

/-- `A077443(2*n+1)` -/
def P10349698149170003798.Spec : Prop :=
  ∀ n, P10349698149170003798.a n = A038762 n

end A038762

/-! ## A038762.P9329616456067106755

`A038725(n)+A038725(n+1)`
-/

namespace A038762.P9329616456067106755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 n + A038725 (n + 1)

end

end A038762.P9329616456067106755

namespace A038762

/-- `A038725(n)+A038725(n+1)` -/
def P9329616456067106755.Spec : Prop :=
  ∀ n, P9329616456067106755.a n = A038762 n

end A038762

/-! ## A038762.P10534532929421316661

`sqrt(2*A038761(n)²+7)`
-/

namespace A038762.P10534532929421316661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A038761 n ^ 2 + 7 : ℝ)

end

end A038762.P10534532929421316661

namespace A038762

/-- `sqrt(2*A038761(n)²+7)` -/
def P10534532929421316661.Spec : Prop :=
  ∀ n, P10534532929421316661.a n = (A038762 n : ℝ)

end A038762

/-! ## A038762.P7729372368950363518

`ogf((3-5x)/(1-6x+x^2))`
-/

namespace A038762.P7729372368950363518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -6, 1] n

end

end A038762.P7729372368950363518

namespace A038762

/-- `ogf((3-5x)/(1-6x+x^2))` -/
def P7729372368950363518.Spec : Prop :=
  ∀ n, P7729372368950363518.a n = A038762 n

end A038762

/-! ## A038762.P15596697534729707752

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=3, a(1)=13`
-/

namespace A038762.P15596697534729707752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A038762.P15596697534729707752

namespace A038762

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P15596697534729707752.Spec : Prop :=
  ∀ n, P15596697534729707752.a n = A038762 n

end A038762

/-! ## A038762.P271877414995352433

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=3, a(1)=1, a(2)=3`
-/

namespace A038762.P271877414995352433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038762.P271877414995352433

namespace A038762

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P271877414995352433.Spec : Prop :=
  ∀ n, P271877414995352433.a n = A038762 n

end A038762

/-! ## A038762.P14918973028335340136

`A135532(Δ[n²])`
-/

namespace A038762.P14918973028335340136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038762.P14918973028335340136

namespace A038762

/-- `A135532(Δ[n²])` -/
def P14918973028335340136.Spec : Prop :=
  ∀ n, P14918973028335340136.a n = A038762 n

end A038762

/-! ## A038762.P5870533438600412261

`Δ[A353580(2*n)]`
-/

namespace A038762.P5870533438600412261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038762.P5870533438600412261

namespace A038762

/-- `Δ[A353580(2*n)]` -/
def P5870533438600412261.Spec : Prop :=
  ∀ n, P5870533438600412261.a n = A038762 n

end A038762

/-! ## A038762.P11820833653527294023

`Δ[A364319(2*n)]`
-/

namespace A038762.P11820833653527294023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038762.P11820833653527294023

namespace A038762

/-- `Δ[A364319(2*n)]` -/
def P11820833653527294023.Spec : Prop :=
  ∀ n, P11820833653527294023.a n = A038762 n

end A038762

/-! ## A038762.P14971872995254246761

`2*A108262(n)-3`
-/

namespace A038762.P14971872995254246761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108262 n - 3

end

end A038762.P14971872995254246761

namespace A038762

/-- `2*A108262(n)-3` -/
def P14971872995254246761.Spec : Prop :=
  ∀ n, P14971872995254246761.a n = A038762 n

end A038762

/-! ## A038762.P8758166557532174482

`A266505(4*n+2)`
-/

namespace A038762.P8758166557532174482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (4 * n + 2)

end

end A038762.P8758166557532174482

namespace A038762

/-- `A266505(4*n+2)` -/
def P8758166557532174482.Spec : Prop :=
  ∀ n, P8758166557532174482.a n = A038762 n

end A038762

/-! ## A038762.P11046229682112760559

`abs(A135532(2*n+1))`
-/

namespace A038762.P11046229682112760559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135532 (2 * n + 1)|

end

end A038762.P11046229682112760559

namespace A038762

/-- `abs(A135532(2*n+1))` -/
def P11046229682112760559.Spec : Prop :=
  ∀ n, P11046229682112760559.a n = A038762 n

end A038762

/-! ## A038762.P9982915432456900654

`2*A212329(n+1)+3`
-/

namespace A038762.P9982915432456900654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212329 (n + 1) + 3

end

end A038762.P9982915432456900654

namespace A038762

/-- `2*A212329(n+1)+3` -/
def P9982915432456900654.Spec : Prop :=
  ∀ n, P9982915432456900654.a n = A038762 n

end A038762

/-! ## A038762.P5982909462600008942

`2*A098790(2*n)+1`
-/

namespace A038762.P5982909462600008942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098790 (2 * n) + 1

end

end A038762.P5982909462600008942

namespace A038762

/-- `2*A098790(2*n)+1` -/
def P5982909462600008942.Spec : Prop :=
  ∀ n, P5982909462600008942.a n = A038762 n

end A038762

/-! ## A038762.P4844289863809982761

`2*A124124(2*n+1)+1`
-/

namespace A038762.P4844289863809982761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124124 (2 * n + 1) + 1

end

end A038762.P4844289863809982761

namespace A038762

/-- `2*A124124(2*n+1)+1` -/
def P4844289863809982761.Spec : Prop :=
  ∀ n, P4844289863809982761.a n = A038762 n

end A038762

/-! ## A038762.P1196868407962915988

`2*A353580(2*n+1)-1`
-/

namespace A038762.P1196868407962915988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353580 (2 * n + 1) - 1

end

end A038762.P1196868407962915988

namespace A038762

/-- `2*A353580(2*n+1)-1` -/
def P1196868407962915988.Spec : Prop :=
  ∀ n, P1196868407962915988.a n = A038762 n

end A038762

/-! ## A038762.P9262807450100576433

`A266506(A004770(n+1))`
-/

namespace A038762.P9262807450100576433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A004770 (n + 1)).toNat

end

end A038762.P9262807450100576433

namespace A038762

/-- `A266506(A004770(n+1))` -/
def P9262807450100576433.Spec : Prop :=
  ∀ n, P9262807450100576433.a n = A038762 n

end A038762

/-! ## A038762.P9786889449122807733

`A266506(A017101(n)+2)`
-/

namespace A038762.P9786889449122807733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A017101 n + 2).toNat

end

end A038762.P9786889449122807733

namespace A038762

/-- `A266506(A017101(n)+2)` -/
def P9786889449122807733.Spec : Prop :=
  ∀ n, P9786889449122807733.a n = A038762 n

end A038762

/-! ## A038762.P17265774081135358758

`A266506(A017137(n)-1)`
-/

namespace A038762.P17265774081135358758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A017137 n - 1).toNat

end

end A038762.P17265774081135358758

namespace A038762

/-- `A266506(A017137(n)-1)` -/
def P17265774081135358758.Spec : Prop :=
  ∀ n, P17265774081135358758.a n = A038762 n

end A038762

/-!
# A038763: Triangular matrix arising in enumeration of catafusenes, read by rows.

The programs for A038763, there is no canonical definition to state claims against.
-/

/-! ## A038763.P9929354483075754293

`A193730(n)/A130321(n)`
-/

namespace A038763.P9929354483075754293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193730 n : ℚ) / (A130321 n : ℚ)

end

end A038763.P9929354483075754293

/-! ## A038763.P803110892873645736

`2*A193722(n)-A013610(n)`
-/

namespace A038763.P803110892873645736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193722 n - A013610 n

end

end A038763.P803110892873645736

/-! ## A038763.P17619572094501839776

`A136158(A168038(n)-A326178(n))`
-/

namespace A038763.P17619572094501839776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 (A168038 n - A326178 n).toNat

end

end A038763.P17619572094501839776

/-! ## A038763.P7257806678150925379

`A136158(A061579(n))`
-/

namespace A038763.P7257806678150925379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 (A061579 n).toNat

end

end A038763.P7257806678150925379

/-! ## A038763.P827913896574334225

`abs(A164948(A114327(n)+n))`
-/

namespace A038763.P827913896574334225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164948 (A114327 n + (n : ℤ)).toNat|

end

end A038763.P827913896574334225

/-! ## A038763.P8895425311551177998

`abs(A164948(A038722(n+1)-1))`
-/

namespace A038763.P8895425311551177998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164948 (A038722 (n + 1) - 1).toNat|

end

end A038763.P8895425311551177998

/-! ## A038763.P9705783287334732002

`A097807(n)*A164948(A061579(n))`
-/

namespace A038763.P9705783287334732002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A164948 (A061579 n).toNat

end

end A038763.P9705783287334732002

/-! ## A038763.P13648870890483111161

`gcd(A000038(n), A164948(A061579(n)))`
-/

namespace A038763.P13648870890483111161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A164948 (A061579 n).toNat)

end

end A038763.P13648870890483111161

/-! ## A038763.P3400111491985844963

`lcm(A020985(n), A164948(A061579(n)))`
-/

namespace A038763.P3400111491985844963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A164948 (A061579 n).toNat)

end

end A038763.P3400111491985844963

/-! ## A038763.P17206987030845002656

`abs(A164948(A023443(A038722(n+1))))`
-/

namespace A038763.P17206987030845002656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164948 (A023443 (A038722 (n + 1)).toNat).toNat|

end

end A038763.P17206987030845002656

/-!
# A038764: a(n) = (9*n^2 + 3*n + 2)/2.

The programs for A038764, the canonical program `A038764.P14215064194449549955` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038764 has offset 0).

The definition of A038764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038764.P14215064194449549955

`n*(9*n+3)/2+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038764

/-- `n*(9*n+3)/2+1` -/
def P14215064194449549955.Spec : Prop :=
  ∀ n, P14215064194449549955.a n = (A038764 n : ℚ)

end A038764

/-! ## A038764.P6106227716071050696

`(9*n²+3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038764.P6106227716071050696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 3 * n + 2 : ℚ) / 2

end

end A038764.P6106227716071050696

namespace A038764

/-- `(9*n²+3*n+2)/2` -/
def P6106227716071050696.Spec : Prop :=
  ∀ n, P6106227716071050696.a n = (A038764 n : ℚ)

end A038764

/-! ## A038764.P16808673984962275730

`∑[a(n-1)+9]` with `a(0)=1, a(1)=6`
-/

namespace A038764.P16808673984962275730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038764.P16808673984962275730

namespace A038764

/-- `∑[a(n-1)+9]` -/
def P16808673984962275730.Spec : Prop :=
  ∀ n, (P16808673984962275730.a n : ℤ) = A038764 n

end A038764

/-! ## A038764.P16188329648338963269

`∑[ogf((1+4x+4x^2)/(1-2x+x^2))]`
-/

namespace A038764.P16188329648338963269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038764.P16188329648338963269

namespace A038764

/-- `∑[ogf((1+4x+4x^2)/(1-2x+x^2))]` -/
def P16188329648338963269.Spec : Prop :=
  ∀ n, P16188329648338963269.a n = A038764 n

end A038764

/-! ## A038764.P1120331209707112370

`ogf((1+4x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A038764.P1120331209707112370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -3, 3, -1] n

end

end A038764.P1120331209707112370

namespace A038764

/-- `ogf((1+4x+4x^2)/(1-3x+3x^2-x^3))` -/
def P1120331209707112370.Spec : Prop :=
  ∀ n, P1120331209707112370.a n = A038764 n

end A038764

/-! ## A038764.P9617441087786925293

`floor(9*n-(3-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A038764.P9617441087786925293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) - (3 - a (n - 1))

end

end A038764.P9617441087786925293

namespace A038764

/-- `floor(9*n-(3-a(n-1)))` -/
def P9617441087786925293.Spec : Prop :=
  ∀ n, P9617441087786925293.a n = A038764 n

end A038764

/-! ## A038764.P8793610560113549783

`Δ[n*(C(n+1, 2)+(1-n)²)]`
-/

namespace A038764.P8793610560113549783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (n + 1) 2 : ℤ) + (1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038764.P8793610560113549783

namespace A038764

/-- `Δ[n*(C(n+1, 2)+(1-n)²)]` -/
def P8793610560113549783.Spec : Prop :=
  ∀ n, P8793610560113549783.a n = A038764 n

end A038764

/-! ## A038764.P15971660330546380517

`∑[A122709(n)]`
-/

namespace A038764.P15971660330546380517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038764.P15971660330546380517

namespace A038764

/-- `∑[A122709(n)]` -/
def P15971660330546380517.Spec : Prop :=
  ∀ n, P15971660330546380517.a n = A038764 n

end A038764

/-! ## A038764.P12624098605521615052

`ceil(A082040(n)/2)`
-/

namespace A038764.P12624098605521615052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082040 n : ℚ) / 2⌉

end

end A038764.P12624098605521615052

namespace A038764

/-- `ceil(A082040(n)/2)` -/
def P12624098605521615052.Spec : Prop :=
  ∀ n, P12624098605521615052.a n = A038764 n

end A038764

/-! ## A038764.P14719984381955883658

`A086640(n+1)%A235332(n)`
-/

namespace A038764.P14719984381955883658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086640 (n + 1)) (A235332 n)

end

end A038764.P14719984381955883658

namespace A038764

/-- `A086640(n+1)%A235332(n)` -/
def P14719984381955883658.Spec : Prop :=
  ∀ n, P14719984381955883658.a n = A038764 n

end A038764

/-! ## A038764.P5022171821986475472

`A386906(n+1)%A062123(n)`
-/

namespace A038764.P5022171821986475472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386906 (n + 1)) (A062123 n)

end

end A038764.P5022171821986475472

namespace A038764

/-- `A386906(n+1)%A062123(n)` -/
def P5022171821986475472.Spec : Prop :=
  ∀ n, P5022171821986475472.a n = A038764 n

end A038764

/-! ## A038764.P15615285663380677095

`A185939(n+1)%A283394(n)`
-/

namespace A038764.P15615285663380677095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185939 (n + 1)) (A283394 n)

end

end A038764.P15615285663380677095

namespace A038764

/-- `A185939(n+1)%A283394(n)` -/
def P15615285663380677095.Spec : Prop :=
  ∀ n, P15615285663380677095.a n = A038764 n

end A038764

/-! ## A038764.P6563587171882007031

`record[∑[n+1]-lcm(3, n)]`
-/

namespace A038764.P6563587171882007031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.lcm 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038764.P6563587171882007031

namespace A038764

/-- `record[∑[n+1]-lcm(3, n)]` -/
def P6563587171882007031.Spec : Prop :=
  ∀ n, P6563587171882007031.a n = A038764 n

end A038764

/-! ## A038764.P7850503663624441365

`A000124(3*n)`
-/

namespace A038764.P7850503663624441365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (3 * n)

end

end A038764.P7850503663624441365

namespace A038764

/-- `A000124(3*n)` -/
def P7850503663624441365.Spec : Prop :=
  ∀ n, P7850503663624441365.a n = A038764 n

end A038764

/-! ## A038764.P11351857749394855811

`sqrt(A086601(3*n))`
-/

namespace A038764.P11351857749394855811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A086601 (3 * n) : ℝ)

end

end A038764.P11351857749394855811

namespace A038764

/-- `sqrt(A086601(3*n))` -/
def P11351857749394855811.Spec : Prop :=
  ∀ n, P11351857749394855811.a n = (A038764 n : ℝ)

end A038764

/-! ## A038764.P7537502386389643433

`A342939(3*n+1)`
-/

namespace A038764.P7537502386389643433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342939 (3 * n + 1)

end

end A038764.P7537502386389643433

namespace A038764

/-- `A342939(3*n+1)` -/
def P7537502386389643433.Spec : Prop :=
  ∀ n, P7537502386389643433.a n = A038764 n

end A038764

/-! ## A038764.P16405876253892774156

`A134869(A008486(n))`
-/

namespace A038764.P16405876253892774156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (A008486 n).toNat

end

end A038764.P16405876253892774156

namespace A038764

/-- `A134869(A008486(n))` -/
def P16405876253892774156.Spec : Prop :=
  ∀ n, P16405876253892774156.a n = A038764 n

end A038764

/-! ## A038764.P13294607117429248756

`∩[A143101(n+1), A000124(n)]`
-/

namespace A038764.P13294607117429248756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038764.P13294607117429248756

namespace A038764

/-- `∩[A143101(n+1), A000124(n)]` -/
def P13294607117429248756.Spec : Prop :=
  ∀ n, (P13294607117429248756.a n : ℤ) = A038764 n

end A038764

/-! ## A038764.P6419717488251408201

`∩[A134869(n+1), A143101(n+1)]`
-/

namespace A038764.P6419717488251408201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038764.P6419717488251408201

namespace A038764

/-- `∩[A134869(n+1), A143101(n+1)]` -/
def P6419717488251408201.Spec : Prop :=
  ∀ n, (P6419717488251408201.a n : ℤ) = A038764 n

end A038764

/-! ## A038764.P14894123363932067851

`∩[A143101(n+1), A342939(n+1)]`
-/

namespace A038764.P14894123363932067851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038764.P14894123363932067851

namespace A038764

/-- `∩[A143101(n+1), A342939(n+1)]` -/
def P14894123363932067851.Spec : Prop :=
  ∀ n, (P14894123363932067851.a n : ℤ) = A038764 n

end A038764

/-!
# A038765: Next-to-last diagonal of A024462.

The programs for A038765, the canonical program `A038765.P10375169158108185938` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038765 has offset 0).

The definition of A038765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038765.P13493495250849275829

`ceil(1/9*3^n*(5+n))`
-/

namespace A038765.P13493495250849275829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 9 * (3 ^ n : ℚ) * (5 + n : ℚ)⌉

end

end A038765.P13493495250849275829

namespace A038765

/-- `ceil(1/9*3^n*(5+n))` -/
def P13493495250849275829.Spec : Prop :=
  ∀ n, P13493495250849275829.a n = A038765 n

end A038765

/-! ## A038765.P10375169158108185938

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038765

/-- `6*a(n-1)-9*a(n-2)` -/
def P10375169158108185938.Spec : Prop :=
  ∀ n, P10375169158108185938.a n = A038765 n

theorem P10375169158108185938.correct : P10375169158108185938.Spec := by
  intro n
  simp only [A038765]

end A038765

/-! ## A038765.P8657747390987115174

`ogf((1-4x+4x^2)/(1-6x+9x^2))`
-/

namespace A038765.P8657747390987115174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -6, 9] n

end

end A038765.P8657747390987115174

namespace A038765

/-- `ogf((1-4x+4x^2)/(1-6x+9x^2))` -/
def P8657747390987115174.Spec : Prop :=
  ∀ n, P8657747390987115174.a n = A038765 n

end A038765

/-! ## A038765.P11047592917338578670

`(3/(n+4)+3)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A038765.P11047592917338578670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 / (n + 4 : ℚ) + 3) * a (n - 1)

end

end A038765.P11047592917338578670

namespace A038765

/-- `(3/(n+4)+3)*a(n-1)` -/
def P11047592917338578670.Spec : Prop :=
  ∀ n, P11047592917338578670.a n = (A038765 n : ℚ)

end A038765

/-! ## A038765.P13176584619485181247

`3^(n-2)+3*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A038765.P13176584619485181247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 3 * a (n - 1)

end

end A038765.P13176584619485181247

namespace A038765

/-- `3^(n-2)+3*a(n-1)` -/
def P13176584619485181247.Spec : Prop :=
  ∀ n, P13176584619485181247.a n = (A038765 n : ℚ)

end A038765

/-! ## A038765.P16504329111317946268

`A126184(n)-A140429(n)`
-/

namespace A038765.P16504329111317946268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126184 n - A140429 n

end

end A038765.P16504329111317946268

namespace A038765

/-- `A126184(n)-A140429(n)` -/
def P16504329111317946268.Spec : Prop :=
  ∀ n, P16504329111317946268.a n = A038765 n

end A038765

/-! ## A038765.P8265404267709454233

`A027471(A028310(n))+A025192(n)`
-/

namespace A038765.P8265404267709454233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (A028310 n).toNat + A025192 n

end

end A038765.P8265404267709454233

namespace A038765

/-- `A027471(A028310(n))+A025192(n)` -/
def P8265404267709454233.Spec : Prop :=
  ∀ n, P8265404267709454233.a n = A038765 n

end A038765

/-! ## A038765.P7403502806600741136

`A027471(A028310(n))+∑[A052156(n)]`
-/

namespace A038765.P7403502806600741136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (A028310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038765.P7403502806600741136

namespace A038765

/-- `A027471(A028310(n))+∑[A052156(n)]` -/
def P7403502806600741136.Spec : Prop :=
  ∀ n, P7403502806600741136.a n = A038765 n

end A038765

/-! ## A038765.P13412705445778756015

`A027471(n+1)+A120926(n+1)-A229277(n)`
-/

namespace A038765.P13412705445778756015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A120926 (n + 1) - A229277 n)

end

end A038765.P13412705445778756015

namespace A038765

/-- `A027471(n+1)+A120926(n+1)-A229277(n)` -/
def P13412705445778756015.Spec : Prop :=
  ∀ n, P13412705445778756015.a n = A038765 n

end A038765

/-! ## A038765.P11854384853895025171

`A024462(∑[n+2]-1)`
-/

namespace A038765.P11854384853895025171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024462 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A038765.P11854384853895025171

namespace A038765

/-- `A024462(∑[n+2]-1)` -/
def P11854384853895025171.Spec : Prop :=
  ∀ n, P11854384853895025171.a n = A038765 n

end A038765

/-!
# A038767: Numbers k for which k-th primorial + square of (k+1)-th prime is also a prime.

The programs for A038767, there is no canonical definition to state claims against.
-/

/-! ## A038767.P2645425542223919064

`A000720(sqrt(A245694(n+1))-1)`
-/

namespace A038767.P2645425542223919064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A245694 (n + 1) : ℝ) - 1)).toNat

end

end A038767.P2645425542223919064

/-! ## A038767.P10013558409560851982

`A033270(sqrt(A245694(n+1)))`
-/

namespace A038767.P10013558409560851982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (SequenceMachineLib.roundAway (Real.sqrt (A245694 (n + 1) : ℝ))).toNat

end

end A038767.P10013558409560851982

/-! ## A038767.P13128382745327012564

`A079067(sqrt(A245694(n+1)))`
-/

namespace A038767.P13128382745327012564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (SequenceMachineLib.roundAway (Real.sqrt (A245694 (n + 1) : ℝ))).toNat

end

end A038767.P13128382745327012564

/-! ## A038767.P11936732486532233151

`A257541(sqrt(A245694(n+1)))`
-/

namespace A038767.P11936732486532233151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (SequenceMachineLib.roundAway (Real.sqrt (A245694 (n + 1) : ℝ))).toNat

end

end A038767.P11936732486532233151

/-! ## A038767.P14262151929616967398

`A277322(sqrt(A245694(n+1)))`
-/

namespace A038767.P14262151929616967398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (SequenceMachineLib.roundAway (Real.sqrt (A245694 (n + 1) : ℝ))).toNat

end

end A038767.P14262151929616967398

/-!
# A038768: Primes of the form A002110(k) + prime(k+1)^2.

The programs for A038768, there is no canonical definition to state claims against.
-/

/-! ## A038768.P7902238982904006282

`A038773(A038767(n+1))`
-/

namespace A038768.P7902238982904006282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038773 (A038767 (n + 1)).toNat

end

end A038768.P7902238982904006282

/-!
# A038769: Number of digits of n which are divisors of n.

The programs for A038769, there is no canonical definition to state claims against.
-/

/-! ## A038769.P13281968022498635168

`A055640(n+1)-A055639(n+1)`
-/

namespace A038769.P13281968022498635168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (n + 1) - A055639 (n + 1)

end

end A038769.P13281968022498635168

/-! ## A038769.P9902611943584635496

`A055642(A004719(n+1))-A055639(n+1)`
-/

namespace A038769.P9902611943584635496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A004719 (n + 1)).toNat - A055639 (n + 1)

end

end A038769.P9902611943584635496

/-! ## A038769.P7443125284654993141

`A055640(n+1)-A055640(A347323(n+1))`
-/

namespace A038769.P7443125284654993141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (n + 1) - A055640 (A347323 (n + 1)).toNat

end

end A038769.P7443125284654993141

/-! ## A038769.P10714931441612737209

`A098378(n+1)-A055639(n+1)`
-/

namespace A038769.P10714931441612737209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1) - A055639 (n + 1)

end

end A038769.P10714931441612737209

/-! ## A038769.P18433213780958826901

`A098378(n+1)+A055639(n+1)*A057428(n)`
-/

namespace A038769.P18433213780958826901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1) + A055639 (n + 1) * A057428 n

end

end A038769.P18433213780958826901

/-!
# A038770: Numbers divisible by at least one of their digits.

The programs for A038770, there is no canonical definition to state claims against.
-/

/-! ## A038770.P17344464751748701233

`∪[A011531(n+1), A185186(n+1)]`
-/

namespace A038770.P17344464751748701233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038770.P17344464751748701233

/-! ## A038770.P10517814664641940777

`∪[A185186(n+1), A263314(n+1)]`
-/

namespace A038770.P10517814664641940777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038770.P10517814664641940777

/-! ## A038770.P12011466524519797394

`lt[0, A038769(n+1)]+1`
-/

namespace A038770.P12011466524519797394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038770.P12011466524519797394

/-! ## A038770.P8685363434147588692

`eq[1, A000030(a(A038769(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A038770.P8685363434147588692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000030 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038770.P8685363434147588692

/-! ## A038770.P12212170808251892161

`eq[1, A007602(a(A038769(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A038770.P12212170808251892161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A007602 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038770.P12212170808251892161

/-! ## A038770.P16668908160655305647

`eq[1, A034709(a(A038769(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A038770.P16668908160655305647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A034709 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038770.P16668908160655305647

/-! ## A038770.P10122232471094999211

`eq[1, A034837(a(A038769(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A038770.P10122232471094999211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A034837 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038770.P10122232471094999211

/-! ## A038770.P17410910445412234717

`eq[1, A034838(a(A038769(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A038770.P17410910445412234717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A034838 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038770.P17410910445412234717

/-!
# A038771: a(n) is the smallest composite number c such that A002110(n) + c is prime.

The programs for A038771, there is no canonical definition to state claims against.
-/

/-! ## A038771.P10868588864580351418

`A076281(A094024(n))+A001248(n+1)`
-/

namespace A038771.P10868588864580351418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076281 (A094024 n).toNat + A001248 (n + 1)

end

end A038771.P10868588864580351418

/-! ## A038771.P1676606557688259975

`A319626(A001248(n+1)*A376020(n+1))`
-/

namespace A038771.P1676606557688259975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A001248 (n + 1) * A376020 (n + 1)).toNat

end

end A038771.P1676606557688259975

/-! ## A038771.P12459130214774024631

`A179312(A001248(n+1)*A163327(2*(n+2)))`
-/

namespace A038771.P12459130214774024631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A001248 (n + 1) * A163327 (2 * (n + 2))).toNat

end

end A038771.P12459130214774024631

/-!
# A038772: Numbers not divisible by any of their digits.

The programs for A038772, there is no canonical definition to state claims against.
-/

/-! ## A038772.P2408934671444799000

`eq[0, A038769(n+1)]+1`
-/

namespace A038772.P2408934671444799000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038772.P2408934671444799000

/-! ## A038772.P8618089940801674739

`eq[1, 1-a(A038769(n))]` with `a(0)=0, a(1)=2`
-/

namespace A038772.P8618089940801674739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  1 - f2 (A038769 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038772.P8618089940801674739

/-! ## A038772.P94222762413974028

`lt[A038769(A028310(n)), 1]`
-/

namespace A038772.P94222762413974028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038772.P94222762413974028

/-! ## A038772.P15407714317793471313

`A153152(eq[0, A038769(n+1)])`
-/

namespace A038772.P15407714317793471313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038772.P15407714317793471313

/-! ## A038772.P760982391144399012

`lt[A038769(A004277(n)-n), 1]`
-/

namespace A038772.P760982391144399012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038772.P760982391144399012

/-! ## A038772.P8487622001509734351

`eq[0, A038769(A138153(n+1))]`
-/

namespace A038772.P8487622001509734351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038772.P8487622001509734351

/-! ## A038772.P16122665607914402719

`∪[A342844(n+1), A382237(n+1)]`
-/

namespace A038772.P16122665607914402719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038772.P16122665607914402719

/-! ## A038772.P9127327370519114117

`∪[A342844(n+1), A382239(n+1)]`
-/

namespace A038772.P9127327370519114117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038772.P9127327370519114117

/-! ## A038772.P11528980934078523738

`eq[0, A038769(A233583(n+1))]`
-/

namespace A038772.P11528980934078523738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038772.P11528980934078523738

/-!
# A038773: a(n) is the smallest prime of the form Q + c, where Q is the n-th primorial and c is a composite >= prime(n+1)^2.

The programs for A038773, there is no canonical definition to state claims against.
-/

/-! ## A038773.P11174576576202983946

`A038771(n+1)+A002110(n+1)`
-/

namespace A038773.P11174576576202983946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038771 (n + 1) + A002110 (n + 1)

end

end A038773.P11174576576202983946

/-! ## A038773.P6823422580724397715

`A038771(n+1)+∏[A000040(n+1)]`
-/

namespace A038773.P6823422580724397715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038771 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038773.P6823422580724397715

/-! ## A038773.P10742640515848714842

`A035345(n+1)+A038771(n+1)-A005235(n+1)`
-/

namespace A038773.P10742640515848714842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035345 (n + 1) + (A038771 (n + 1) - A005235 (n + 1))

end

end A038773.P10742640515848714842

/-!
# A038775: a(n) is the number of cycles of the permutation that converts forest(n) of depth-first planar planted binary trees into breadth-first representation.

The programs for A038775, there is no canonical definition to state claims against.
-/

/-! ## A038775.P2501633686582455693

`∑[dr(A124094(A002160(n)))]`
-/

namespace A038775.P2501633686582455693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A124094 (A002160 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038775.P2501633686582455693

/-! ## A038775.P5157989829371506244

`∑[dr(A151573(A218957(n)))]`
-/

namespace A038775.P5157989829371506244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A151573 (A218957 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038775.P5157989829371506244

/-! ## A038775.P8047192253785579091

`∑[dr(A326135(A000984(n)+2))]`
-/

namespace A038775.P8047192253785579091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326135 (A000984 n + 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038775.P8047192253785579091

/-! ## A038775.P12864949512057449729

`A052955(n)+A001222(A207828(n))`
-/

namespace A038775.P12864949512057449729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + A001222 (A207828 n).toNat

end

end A038775.P12864949512057449729

/-! ## A038775.P6579248512903408209

`A133263(n)-A268341(A081348(n))`
-/

namespace A038775.P6579248512903408209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - A268341 (A081348 n).toNat

end

end A038775.P6579248512903408209

/-!
# A038776: The sequence a[1] to a[ cat[n] ] is the permutation that converts forest[n] of depth-first planar planted binary trees into breadth-first representation.

The programs for A038776, there is no canonical definition to state claims against.
-/

/-! ## A038776.P570205054663297111

`(A082364(n)+1)%A168339(2*(n+1))`
-/

namespace A038776.P570205054663297111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082364 n + 1) (A168339 (2 * (n + 1)))

end

end A038776.P570205054663297111

/-! ## A038776.P11681910400876157138

`A082364(n)%A156271(2*n+5)+1`
-/

namespace A038776.P11681910400876157138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082364 n) (A156271 (2 * n + 5)) + 1

end

end A038776.P11681910400876157138

/-! ## A038776.P6242493143257170030

`A082364(n)+A000688(A001269(n))`
-/

namespace A038776.P6242493143257170030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082364 n + A000688 (A001269 n).toNat

end

end A038776.P6242493143257170030

/-! ## A038776.P6340382049407230097

`A082364(n)+A000688(A031935(n))`
-/

namespace A038776.P6340382049407230097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082364 n + A000688 (A031935 n).toNat

end

end A038776.P6340382049407230097

/-! ## A038776.P16203765310220091557

`A082364(n)+A057427(A000041(n))`
-/

namespace A038776.P16203765310220091557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082364 n + A057427 (A000041 n).toNat

end

end A038776.P16203765310220091557

/-!
# A038778: 

The programs for A038778, there is no canonical definition to state claims against.
-/

/-! ## A038778.P6224674112450198289

`A056391(A244365(n+1)²)`
-/

namespace A038778.P6224674112450198289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (A244365 (n + 1) ^ 2).toNat

end

end A038778.P6224674112450198289

/-!
# A038779: An intermediate sequence for nonisomorphic circulant directed p^2-graphs, indexed by odd primes p.

The programs for A038779, there is no canonical definition to state claims against.
-/

/-! ## A038779.P9336757452236063840

`A001868(A006093(n+2))`
-/

namespace A038779.P9336757452236063840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A006093 (n + 2)).toNat

end

end A038779.P9336757452236063840

/-! ## A038779.P10981731757818105491

`A001868(A039915(n+2))`
-/

namespace A038779.P10981731757818105491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A039915 (n + 2)).toNat

end

end A038779.P10981731757818105491

/-! ## A038779.P13117728009798034409

`A001868(record[A000010(n+3)])`
-/

namespace A038779.P13117728009798034409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038779.P13117728009798034409

/-! ## A038779.P16548217583889391232

`A106367(record[A000010(n+3)])`
-/

namespace A038779.P16548217583889391232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106367 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038779.P16548217583889391232

/-! ## A038779.P7871455777319047158

`A001868(record[2*A285982(n)])`
-/

namespace A038779.P7871455777319047158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038779.P7871455777319047158

/-!
# A038780: An intermediate sequence for counting nonisomorphic circulant directed p^2-graphs, indexed by odd primes p.

The programs for A038780, there is no canonical definition to state claims against.
-/

/-! ## A038780.P15952621306342746054

`A056391(p?[2*n+1])²`
-/

namespace A038780.P15952621306342746054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A038780.P15952621306342746054

/-! ## A038780.P4430797162004500753

`A000031(A006093(n+2))²`
-/

namespace A038780.P4430797162004500753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A006093 (n + 2)).toNat ^ 2

end

end A038780.P4430797162004500753

/-! ## A038780.P16452744176376855629

`A056391(A000040(n+2))²`
-/

namespace A038780.P16452744176376855629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (A000040 (n + 2)).toNat ^ 2

end

end A038780.P16452744176376855629

/-! ## A038780.P65977291483383695

`A000031(A000040(n+2)-1)²`
-/

namespace A038780.P65977291483383695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A000040 (n + 2) - 1).toNat ^ 2

end

end A038780.P65977291483383695

/-! ## A038780.P821909762303196136

`A106365(A000040(n+2)-1)²`
-/

namespace A038780.P821909762303196136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106365 (A000040 (n + 2) - 1).toNat ^ 2

end

end A038780.P821909762303196136

/-!
# A038783: An intermediate sequence for nonisomorphic circulant undirected p^2-graphs, indexed by odd primes p.

The programs for A038783, there is no canonical definition to state claims against.
-/

/-! ## A038783.P12440965244346572125

`A001868(record[A285982(n)])`
-/

namespace A038783.P12440965244346572125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038783.P12440965244346572125

/-! ## A038783.P2225118980479030031

`A001868(A005097(n+1))`
-/

namespace A038783.P2225118980479030031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A005097 (n + 1)).toNat

end

end A038783.P2225118980479030031

/-! ## A038783.P16456108235810523314

`A001868(A139791(n+1))`
-/

namespace A038783.P16456108235810523314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A139791 (n + 1)).toNat

end

end A038783.P16456108235810523314

/-! ## A038783.P8243599083971073290

`A001868(A102781(n+2))`
-/

namespace A038783.P8243599083971073290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A102781 (n + 2)).toNat

end

end A038783.P8243599083971073290

/-! ## A038783.P13913851276874745887

`A001868(A130290(n+2))`
-/

namespace A038783.P13913851276874745887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A130290 (n + 2)).toNat

end

end A038783.P13913851276874745887

/-! ## A038783.P6834668049477788476

`A001868(record[A195508(n+1)])`
-/

namespace A038783.P6834668049477788476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038783.P6834668049477788476

/-! ## A038783.P1647251117556935427

`A001868(A006093(n+2)/2)`
-/

namespace A038783.P1647251117556935427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A038783.P1647251117556935427

/-! ## A038783.P17472618327598933120

`A001868(A039915(n+2)/2)`
-/

namespace A038783.P17472618327598933120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (SequenceMachineLib.roundAway ((A039915 (n + 2) : ℚ) / 2)).toNat

end

end A038783.P17472618327598933120

/-! ## A038783.P2359246513197607158

`A038791(n+2)+A038787(n+1)`
-/

namespace A038783.P2359246513197607158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038791 (n + 2) + A038787 (n + 1)

end

end A038783.P2359246513197607158

/-! ## A038783.P10254372831058388388

`A001868(record[A000010(2*n+1)-n])`
-/

namespace A038783.P10254372831058388388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038783.P10254372831058388388

/-!
# A038784: An intermediate sequence for nonisomorphic circulant undirected p^2-graphs, indexed by odd primes p.

The programs for A038784, there is no canonical definition to state claims against.
-/

/-! ## A038784.P3831343018396301014

`A000031(record[A285982(n)])²`
-/

namespace A038784.P3831343018396301014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A038784.P3831343018396301014

/-! ## A038784.P14426734483142878001

`A000031(A006093(n+2)/2)²`
-/

namespace A038784.P14426734483142878001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat ^ 2

end

end A038784.P14426734483142878001

/-! ## A038784.P14734599824805894522

`A000031(eq[2, A000005(2*n+1)])²`
-/

namespace A038784.P14734599824805894522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A038784.P14734599824805894522

/-! ## A038784.P9168275876945456668

`record[A000031(A285982(2*n))*A000031(n+1)]`
-/

namespace A038784.P9168275876945456668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A285982 (2 * n)).toNat * A000031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038784.P9168275876945456668

/-! ## A038784.P4613004018120272175

`A285620(p?[2*n+1])²`
-/

namespace A038784.P4613004018120272175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A038784.P4613004018120272175

/-!
# A038787: An intermediate sequence for nonisomorphic circulant self-complementary directed p^2-graphs, indexed by odd primes p.

The programs for A038787, there is no canonical definition to state claims against.
-/

/-! ## A038787.P17136544589669843642

`A038783(n+1)-A038791(n+2)`
-/

namespace A038787.P17136544589669843642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038783 (n + 1) - A038791 (n + 2)

end

end A038787.P17136544589669843642

/-! ## A038787.P17236552904064250850

`A061848(n+3)+A038791(n+2)`
-/

namespace A038787.P17236552904064250850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061848 (n + 3) + A038791 (n + 2)

end

end A038787.P17236552904064250850

/-! ## A038787.P1602896646180748533

`A001868(record[A285982(n)])-A038791(n+2)`
-/

namespace A038787.P1602896646180748533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A038791 (n + 2)

end

end A038787.P1602896646180748533

/-! ## A038787.P5822863746733171286

`A001868(A005097(n+1))-A038791(n+2)`
-/

namespace A038787.P5822863746733171286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A005097 (n + 1)).toNat - A038791 (n + 2)

end

end A038787.P5822863746733171286

/-! ## A038787.P11011069730886829408

`A001868(A139791(n+1))-A038791(n+2)`
-/

namespace A038787.P11011069730886829408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A139791 (n + 1)).toNat - A038791 (n + 2)

end

end A038787.P11011069730886829408

/-! ## A038787.P12980975857845332799

`A001868(A130290(n+2))-A038791(n+2)`
-/

namespace A038787.P12980975857845332799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A130290 (n + 2)).toNat - A038791 (n + 2)

end

end A038787.P12980975857845332799

/-! ## A038787.P4875405494933039849

`A001868(record[A195508(n+1)])-A038791(n+2)`
-/

namespace A038787.P4875405494933039849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A038791 (n + 2)

end

end A038787.P4875405494933039849

/-!
# A038788: Non-Cayley-isomorphic circulant self-complementary directed p^2-graphs, indexed by odd primes p.

The programs for A038788, there is no canonical definition to state claims against.
-/

/-! ## A038788.P17024535649083847787

`A000013(A005097(n+1))²`
-/

namespace A038788.P17024535649083847787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (A005097 (n + 1)).toNat ^ 2

end

end A038788.P17024535649083847787

/-! ## A038788.P10663556000587622666

`A000013(A130290(n+2))²`
-/

namespace A038788.P10663556000587622666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (A130290 (n + 2)).toNat ^ 2

end

end A038788.P10663556000587622666

/-! ## A038788.P3441000004774090167

`A000013(record[A195508(n+1)])²`
-/

namespace A038788.P3441000004774090167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A038788.P3441000004774090167

/-! ## A038788.P17758129440530737533

`A000013(eq[1, A001222(2*n+1)])²`
-/

namespace A038788.P17758129440530737533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A038788.P17758129440530737533

/-! ## A038788.P1938712224739603822

`A000013(A004526(p?[A079945(n)]))²`
-/

namespace A038788.P1938712224739603822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat ^ 2

end

end A038788.P1938712224739603822

/-! ## A038788.P1829759057685920259

`A000013(A004526(A065091(n+1)))²`
-/

namespace A038788.P1829759057685920259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (A004526 (A065091 (n + 1)).toNat).toNat ^ 2

end

end A038788.P1829759057685920259

/-!
# A038791: An intermediate sequence for nonisomorphic circulant p^2-tournaments, indexed by odd primes p.

The programs for A038791, there is no canonical definition to state claims against.
-/

/-! ## A038791.P13170754324849669564

`A238446(n+2)+1`
-/

namespace A038791.P13170754324849669564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238446 (n + 2) + 1

end

end A038791.P13170754324849669564

/-! ## A038791.P9608203291662241390

`A063776(abs(2-p?[abs(1-2*n)])+1)`
-/

namespace A038791.P9608203291662241390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (|2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1).toNat

end

end A038791.P9608203291662241390

/-! ## A038791.P9423723488123064219

`A063776(A165972(n+1))`
-/

namespace A038791.P9423723488123064219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A165972 (n + 1)).toNat

end

end A038791.P9423723488123064219

/-! ## A038791.P18179959421734371854

`A063776(A006093(n+2))`
-/

namespace A038791.P18179959421734371854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A006093 (n + 2)).toNat

end

end A038791.P18179959421734371854

/-! ## A038791.P8276927959761894857

`A063776(A039915(n+2))`
-/

namespace A038791.P8276927959761894857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A039915 (n + 2)).toNat

end

end A038791.P8276927959761894857

/-! ## A038791.P13927141938672538934

`A063776(A156037(n+2))`
-/

namespace A038791.P13927141938672538934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A156037 (n + 2)).toNat

end

end A038791.P13927141938672538934

/-! ## A038791.P7389068896172822033

`record[A063776(A000010(n+1))]`
-/

namespace A038791.P7389068896172822033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038791.P7389068896172822033

/-! ## A038791.P13667541181049908458

`record[A063776(A002322(n+1))]`
-/

namespace A038791.P13667541181049908458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A002322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038791.P13667541181049908458

/-! ## A038791.P15881727337772442326

`A063776(A040976(n+2)+1)`
-/

namespace A038791.P15881727337772442326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A040976 (n + 2) + 1).toNat

end

end A038791.P15881727337772442326

/-! ## A038791.P1619182876220183295

`A063776(A000040(n+2)-1)`
-/

namespace A038791.P1619182876220183295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A000040 (n + 2) - 1).toNat

end

end A038791.P1619182876220183295

/-!
# A038792: Rectangular array defined by T(i,1) = T(1,j) = 1 for i >= 1 and j >= 1; T(i,j) = max(T(i-1,j) + T(i-1,j-1), T(i-1,j-1) + T(i,j-1)) for i >= 2, j >= 2, read by antidiagonals.

The programs for A038792, there is no canonical definition to state claims against.
-/

/-! ## A038792.P10575679962778121096

`A294453(A057944(n)+A004197(n))`
-/

namespace A038792.P10575679962778121096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A057944 n + A004197 n).toNat

end

end A038792.P10575679962778121096

/-! ## A038792.P13535606183595182047

`A099573(A093995(n+1)-A064789(n+1))`
-/

namespace A038792.P13535606183595182047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A093995 (n + 1) - A064789 (n + 1)).toNat

end

end A038792.P13535606183595182047

/-! ## A038792.P795577031619278186

`A054450(A064789(n+1)-1)`
-/

namespace A038792.P795577031619278186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A064789 (n + 1) - 1).toNat

end

end A038792.P795577031619278186

/-! ## A038792.P7711996701655810393

`A054450(A185180(n+1)-1)`
-/

namespace A038792.P7711996701655810393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A185180 (n + 1) - 1).toNat

end

end A038792.P7711996701655810393

/-! ## A038792.P4610868684837766448

`A104726(A057944(n)+A003984(n))`
-/

namespace A038792.P4610868684837766448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A057944 n + A003984 n).toNat

end

end A038792.P4610868684837766448

/-! ## A038792.P16375708415702782780

`A104726(A127739(n+1)-A003983(n+1))`
-/

namespace A038792.P16375708415702782780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A127739 (n + 1) - A003983 (n + 1)).toNat

end

end A038792.P16375708415702782780

/-! ## A038792.P16113313219652502130

`A099573(A093995(n+1)-A185180(n+1))`
-/

namespace A038792.P16113313219652502130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A093995 (n + 1) - A185180 (n + 1)).toNat

end

end A038792.P16113313219652502130

/-! ## A038792.P12593046337820303360

`A099573(A002024(n+1)²-A185180(n+1))`
-/

namespace A038792.P12593046337820303360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A002024 (n + 1) ^ 2 - A185180 (n + 1)).toNat

end

end A038792.P12593046337820303360

/-!
# A038793: T(n,n-3), array T as in A038792.

The programs for A038793, the canonical program `A038793.P14847679001544695164` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038793 has offset 3).

The definition of A038793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038793.P14847679001544695164

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038793

/-- `∑[∑[a(n-1)+1]]` -/
def P14847679001544695164.Spec : Prop :=
  ∀ n, (P14847679001544695164.a n : ℤ) = A038793 (n + 3)

theorem P14847679001544695164.correct : P14847679001544695164.Spec := by
  intro n
  simp only [A038793, Nat.add_sub_cancel]

end A038793

/-! ## A038793.P6567545944579205048

`∑[n-(1-a(n-1))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A038793.P6567545944579205048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 5] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038793.P6567545944579205048

namespace A038793

/-- `∑[n-(1-a(n-1))]` -/
def P6567545944579205048.Spec : Prop :=
  ∀ n, P6567545944579205048.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P3124396366837663150

`a(n-1)+C(n, (2%n)!)+2` with `a(0)=1`
-/

namespace A038793.P3124396366837663150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose n (Nat.factorial (2 % n)) + 2)

end

end A038793.P3124396366837663150

namespace A038793

/-- `a(n-1)+C(n, (2%n)!)+2` -/
def P3124396366837663150.Spec : Prop :=
  ∀ n, (P3124396366837663150.a n : ℤ) = A038793 (n + 3)

end A038793

/-! ## A038793.P2453272796543892585

`ceil(A180415(n+1)+atan(n))`
-/

namespace A038793.P2453272796543892585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180415 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌉

end

end A038793.P2453272796543892585

namespace A038793

/-- `ceil(A180415(n+1)+atan(n))` -/
def P2453272796543892585.Spec : Prop :=
  ∀ n, P2453272796543892585.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P12207800769350713408

`A188554(n)+A157928(n)`
-/

namespace A038793.P12207800769350713408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 n + A157928 n

end

end A038793.P12207800769350713408

namespace A038793

/-- `A188554(n)+A157928(n)` -/
def P12207800769350713408.Spec : Prop :=
  ∀ n, P12207800769350713408.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P6965188447564590438

`A180415(n+1)+A130130(n)`
-/

namespace A038793.P6965188447564590438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A130130 n

end

end A038793.P6965188447564590438

namespace A038793

/-- `A180415(n+1)+A130130(n)` -/
def P6965188447564590438.Spec : Prop :=
  ∀ n, P6965188447564590438.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P328940744285115609

`A177787(n+1)-A212342(n)`
-/

namespace A038793.P328940744285115609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (n + 1) - A212342 n

end

end A038793.P328940744285115609

namespace A038793

/-- `A177787(n+1)-A212342(n)` -/
def P328940744285115609.Spec : Prop :=
  ∀ n, P328940744285115609.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P10354030522425714482

`A254667(n)+A180739(n+2)`
-/

namespace A038793.P10354030522425714482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A180739 (n + 2)

end

end A038793.P10354030522425714482

namespace A038793

/-- `A254667(n)+A180739(n+2)` -/
def P10354030522425714482.Spec : Prop :=
  ∀ n, P10354030522425714482.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P3203642920268080933

`A166830(n+1)-A140229(n+1)`
-/

namespace A038793.P3203642920268080933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) - A140229 (n + 1)

end

end A038793.P3203642920268080933

namespace A038793

/-- `A166830(n+1)-A140229(n+1)` -/
def P3203642920268080933.Spec : Prop :=
  ∀ n, P3203642920268080933.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P9541727658528131703

`A016028(n+1)+∑[A016028(n+1)]-1`
-/

namespace A038793.P9541727658528131703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A038793.P9541727658528131703

namespace A038793

/-- `A016028(n+1)+∑[A016028(n+1)]-1` -/
def P9541727658528131703.Spec : Prop :=
  ∀ n, P9541727658528131703.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P7536509287778735033

`Δ[A219680(n+1)]-n`
-/

namespace A038793.P7536509287778735033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A038793.P7536509287778735033

namespace A038793

/-- `Δ[A219680(n+1)]-n` -/
def P7536509287778735033.Spec : Prop :=
  ∀ n, P7536509287778735033.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P11861858030143624260

`A267873(n+1)+C(n+1, 3)`
-/

namespace A038793.P11861858030143624260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (n + 1) + (Nat.choose (n + 1) 3 : ℤ)

end

end A038793.P11861858030143624260

namespace A038793

/-- `A267873(n+1)+C(n+1, 3)` -/
def P11861858030143624260.Spec : Prop :=
  ∀ n, P11861858030143624260.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P18021611526790981375

`∑[A007318(∑[abs(1-n)]+1)+n]+n`
-/

namespace A038793.P18021611526790981375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A038793.P18021611526790981375

namespace A038793

/-- `∑[A007318(∑[abs(1-n)]+1)+n]+n` -/
def P18021611526790981375.Spec : Prop :=
  ∀ n, P18021611526790981375.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P2874687003514882353

`∑[lt[A193844(n), 4]+2]-1`
-/

namespace A038793.P2874687003514882353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A038793.P2874687003514882353

namespace A038793

/-- `∑[lt[A193844(n), 4]+2]-1` -/
def P2874687003514882353.Spec : Prop :=
  ∀ n, P2874687003514882353.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P13142561148449264142

`A038792(A374004(n+1))`
-/

namespace A038793.P13142561148449264142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A374004 (n + 1)).toNat

end

end A038793.P13142561148449264142

namespace A038793

/-- `A038792(A374004(n+1))` -/
def P13142561148449264142.Spec : Prop :=
  ∀ n, P13142561148449264142.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P15413848826437909785

`A038792(A167614(n+2)+1)`
-/

namespace A038793.P15413848826437909785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A167614 (n + 2) + 1).toNat

end

end A038793.P15413848826437909785

namespace A038793

/-- `A038792(A167614(n+2)+1)` -/
def P15413848826437909785.Spec : Prop :=
  ∀ n, P15413848826437909785.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P4226344340352227337

`A038792(A166136(n+2)-2)`
-/

namespace A038793.P4226344340352227337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A166136 (n + 2) - 2).toNat

end

end A038793.P4226344340352227337

namespace A038793

/-- `A038792(A166136(n+2)-2)` -/
def P4226344340352227337.Spec : Prop :=
  ∀ n, P4226344340352227337.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P1565622845316230528

`A038792(Δ[A264443(n)-n²])`
-/

namespace A038793.P1565622845316230528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n).toNat

end

end A038793.P1565622845316230528

namespace A038793

/-- `A038792(Δ[A264443(n)-n²])` -/
def P1565622845316230528.Spec : Prop :=
  ∀ n, P1565622845316230528.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P13100762732177534008

`A038792(A166136(n+1)+1+n)`
-/

namespace A038793.P13100762732177534008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A038793.P13100762732177534008

namespace A038793

/-- `A038792(A166136(n+1)+1+n)` -/
def P13100762732177534008.Spec : Prop :=
  ∀ n, P13100762732177534008.a n = A038793 (n + 3)

end A038793

/-! ## A038793.P6990854848564499640

`A038792(Δ[A023545(n+1)-n²])`
-/

namespace A038793.P6990854848564499640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n).toNat

end

end A038793.P6990854848564499640

namespace A038793

/-- `A038792(Δ[A023545(n+1)-n²])` -/
def P6990854848564499640.Spec : Prop :=
  ∀ n, P6990854848564499640.a n = A038793 (n + 3)

end A038793

/-!
# A038794: T(n,n-4), array T as in A038792.

The programs for A038794, there is no canonical definition to state claims against.
-/

/-! ## A038794.P374928483560478805

`A038792(A374005(n+1))`
-/

namespace A038794.P374928483560478805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A374005 (n + 1)).toNat

end

end A038794.P374928483560478805

/-! ## A038794.P4652888020667290786

`A038792(A167499(n+3))`
-/

namespace A038794.P4652888020667290786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A167499 (n + 3)).toNat

end

end A038794.P4652888020667290786

/-! ## A038794.P15664873837801589233

`A038792(A155212(n)+13)`
-/

namespace A038794.P15664873837801589233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A155212 n + 13).toNat

end

end A038794.P15664873837801589233

/-! ## A038794.P12687242198980564337

`A038792(A056000(n)+15)`
-/

namespace A038794.P12687242198980564337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A056000 n + 15).toNat

end

end A038794.P12687242198980564337

/-! ## A038794.P13986324594575935652

`A038792(A167614(n+3)+2)`
-/

namespace A038794.P13986324594575935652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A167614 (n + 3) + 2).toNat

end

end A038794.P13986324594575935652

/-! ## A038794.P6791006827734298332

`A038792(A000096(n+3)+6)`
-/

namespace A038794.P6791006827734298332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000096 (n + 3) + 6).toNat

end

end A038794.P6791006827734298332

/-! ## A038794.P15386176078684682921

`A038792(A000217(n+4)+5)`
-/

namespace A038794.P15386176078684682921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000217 (n + 4) + 5).toNat

end

end A038794.P15386176078684682921

/-! ## A038794.P4070921242606983557

`A038792(Δ[A034857(n+1)]+8)`
-/

namespace A038794.P4070921242606983557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n + 8).toNat

end

end A038794.P4070921242606983557

/-! ## A038794.P2206715077061755556

`A038792(A173036(n)+A016825(n))`
-/

namespace A038794.P2206715077061755556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A173036 n + A016825 n).toNat

end

end A038794.P2206715077061755556

/-! ## A038794.P2291953061368433085

`A038792(Δ[A264443(n)])`
-/

namespace A038794.P2291953061368433085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n).toNat

end

end A038794.P2291953061368433085

/-! ## A038794.P3479325285399275834

`A038792(A046691(n+3))`
-/

namespace A038794.P3479325285399275834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A046691 (n + 3)).toNat

end

end A038794.P3479325285399275834

/-! ## A038794.P7454985168734876907

`A038792(eq[3, A274190(n)])`
-/

namespace A038794.P7454985168734876907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038794.P7454985168734876907

/-! ## A038794.P12327003783308236906

`A038792(Δ[A023545(n+1)])`
-/

namespace A038794.P12327003783308236906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n).toNat

end

end A038794.P12327003783308236906

/-! ## A038794.P12844363579399393207

`A038792(A052905(n+2)+1)`
-/

namespace A038794.P12844363579399393207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A052905 (n + 2) + 1).toNat

end

end A038794.P12844363579399393207

/-! ## A038794.P14570102865377527735

`A038792(A055999(n+1)+n+7)`
-/

namespace A038794.P14570102865377527735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A055999 (n + 1) + (n + 7 : ℤ)).toNat

end

end A038794.P14570102865377527735

/-! ## A038794.P444302197180582521

`A038792(A264443(n+1)-A264443(n))`
-/

namespace A038794.P444302197180582521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A264443 (n + 1) - A264443 n).toNat

end

end A038794.P444302197180582521

/-!
# A038795: T(n,n-5), array T as in A038792.

The programs for A038795, there is no canonical definition to state claims against.
-/

/-! ## A038795.P10137855553083505291

`A038792(A374007(n+1))`
-/

namespace A038795.P10137855553083505291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A374007 (n + 1)).toNat

end

end A038795.P10137855553083505291

/-! ## A038795.P10471640166146235026

`A038792(A000124(n+5)+5)`
-/

namespace A038795.P10471640166146235026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000124 (n + 5) + 5).toNat

end

end A038795.P10471640166146235026

/-! ## A038795.P5515419912984840263

`A038792(A000217(n+5)+6)`
-/

namespace A038795.P5515419912984840263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000217 (n + 5) + 6).toNat

end

end A038795.P5515419912984840263

/-! ## A038795.P8630142371905991860

`A038792(A046691(n+3)+10)`
-/

namespace A038795.P8630142371905991860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A046691 (n + 3) + 10).toNat

end

end A038795.P8630142371905991860

/-! ## A038795.P14811185479257251646

`A038792(A055999(n+4)-A005408(n))`
-/

namespace A038795.P14811185479257251646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A055999 (n + 4) - A005408 n).toNat

end

end A038795.P14811185479257251646

/-! ## A038795.P17250084262520446016

`A038792(A052905(n+3))`
-/

namespace A038795.P17250084262520446016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A052905 (n + 3)).toNat

end

end A038795.P17250084262520446016

/-! ## A038795.P10842936341861536760

`A038792(A000096(n+5)-4)`
-/

namespace A038795.P10842936341861536760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000096 (n + 5) - 4).toNat

end

end A038795.P10842936341861536760

/-! ## A038795.P13712460256742319426

`A038792(A167614(n+5)-8)`
-/

namespace A038795.P13712460256742319426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A167614 (n + 5) - 8).toNat

end

end A038795.P13712460256742319426

/-! ## A038795.P14847831518690398682

`A038792(Δ[A264443(n+1)]-1)`
-/

namespace A038795.P14847831518690398682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n - 1).toNat

end

end A038795.P14847831518690398682

/-! ## A038795.P5447577773766406262

`A038792(Δ[A023545(n+2)]-1)`
-/

namespace A038795.P5447577773766406262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (f1 (n + 1) - f1 n - 1).toNat

end

end A038795.P5447577773766406262

/-! ## A038795.P11154907463505311198

`A038792(Δ[n²]+Δ[A034857(n+1)]+8)`
-/

namespace A038795.P11154907463505311198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (f2 (n + 1) - f2 n + 8)).toNat

end

end A038795.P11154907463505311198

/-!
# A038796: T(n,n-6), array T as in A038792.

The programs for A038796, there is no canonical definition to state claims against.
-/

/-! ## A038796.P9819375427311965228

`A038792(A374008(n+1))`
-/

namespace A038796.P9819375427311965228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A374008 (n + 1)).toNat

end

end A038796.P9819375427311965228

/-! ## A038796.P596542664943844720

`A038792(A166136(n+5)+1)`
-/

namespace A038796.P596542664943844720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A166136 (n + 5) + 1).toNat

end

end A038796.P596542664943844720

/-! ## A038796.P12583652152420140161

`A038792(A167499(n+5)+2)`
-/

namespace A038796.P12583652152420140161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A167499 (n + 5) + 2).toNat

end

end A038796.P12583652152420140161

/-! ## A038796.P7102457569931272421

`A038792(A133263(n+6)+5)`
-/

namespace A038796.P7102457569931272421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A133263 (n + 6) + 5).toNat

end

end A038796.P7102457569931272421

/-! ## A038796.P4397028792394622294

`A038792(A000096(n+5)+8)`
-/

namespace A038796.P4397028792394622294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000096 (n + 5) + 8).toNat

end

end A038796.P4397028792394622294

/-! ## A038796.P13540516197589039153

`A038792(A000217(n+6)+7)`
-/

namespace A038796.P13540516197589039153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000217 (n + 6) + 7).toNat

end

end A038796.P13540516197589039153

/-! ## A038796.P15083543298631856291

`A038792(A000124(n+7)-(n+1))`
-/

namespace A038796.P15083543298631856291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A038796.P15083543298631856291

/-! ## A038796.P17219382364264868869

`A038792(A001478(n+1)+A000124(n+7))`
-/

namespace A038796.P17219382364264868869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A001478 (n + 1) + A000124 (n + 7)).toNat

end

end A038796.P17219382364264868869

/-! ## A038796.P7283963365153161017

`A038792(A055999(n+4))`
-/

namespace A038796.P7283963365153161017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A055999 (n + 4)).toNat

end

end A038796.P7283963365153161017

