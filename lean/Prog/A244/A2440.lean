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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A244002: Prime terms in A214830.

The programs for A244002, there is no canonical definition to state claims against.
-/

/-! ## A244002.P17441507785926067823

`A214830(A244001(n+1))`
-/

namespace A244002.P17441507785926067823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214830 (A244001 (n + 1)).toNat

end

end A244002.P17441507785926067823

/-!
# A244003: A(n,k) = k^Fibonacci(n); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A244003, the canonical program `A244003.P13341564105965204994` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244003 has offset 0).

The definition of A244003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244003.P13341564105965204994

`(row(n)-col(n))^A000045(col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244003

/-- `(row(n)-col(n))^A000045(col(n))` -/
def P13341564105965204994.Spec : Prop :=
  ∀ n, P13341564105965204994.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P6736194642983225577

`A025581(n)^A141169(n)`
-/

namespace A244003.P6736194642983225577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A141169 n : ℤ)

end

end A244003.P6736194642983225577

namespace A244003

/-- `A025581(n)^A141169(n)` -/
def P6736194642983225577.Spec : Prop :=
  ∀ n, P6736194642983225577.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P14674097590907239424

`log2(A130321(n))^A141169(n)`
-/

namespace A244003.P14674097590907239424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) ^ (A141169 n : ℤ)

end

end A244003.P14674097590907239424

namespace A244003

/-- `log2(A130321(n))^A141169(n)` -/
def P14674097590907239424.Spec : Prop :=
  ∀ n, P14674097590907239424.a n = (A244003 n : ℝ)

end A244003

/-! ## A244003.P4995877942034805785

`(A004736(n+1)-1)^A141169(n)`
-/

namespace A244003.P4995877942034805785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A141169 n : ℤ)

end

end A244003.P4995877942034805785

namespace A244003

/-- `(A004736(n+1)-1)^A141169(n)` -/
def P4995877942034805785.Spec : Prop :=
  ∀ n, P4995877942034805785.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P17616210448039093092

`A025581(n)^A000045(A002262(n))`
-/

namespace A244003.P17616210448039093092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A000045 (A002262 n).toNat : ℤ)

end

end A244003.P17616210448039093092

namespace A244003

/-- `A025581(n)^A000045(A002262(n))` -/
def P17616210448039093092.Spec : Prop :=
  ∀ n, P17616210448039093092.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P9204050893684753369

`A028242(A099375(n))^A141169(n)`
-/

namespace A244003.P9204050893684753369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (A099375 n).toNat : ℚ) ^ (A141169 n : ℤ)

end

end A244003.P9204050893684753369

namespace A244003

/-- `A028242(A099375(n))^A141169(n)` -/
def P9204050893684753369.Spec : Prop :=
  ∀ n, P9204050893684753369.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P15965848939628516518

`A025581(n)^A212804(A002260(n+1))`
-/

namespace A244003.P15965848939628516518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A212804 (A002260 (n + 1)).toNat : ℤ)

end

end A244003.P15965848939628516518

namespace A244003

/-- `A025581(n)^A212804(A002260(n+1))` -/
def P15965848939628516518.Spec : Prop :=
  ∀ n, P15965848939628516518.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P17788253395778928684

`(A004736(n+1)-1)^A000045(A002262(n))`
-/

namespace A244003.P17788253395778928684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A000045 (A002262 n).toNat : ℤ)

end

end A244003.P17788253395778928684

namespace A244003

/-- `(A004736(n+1)-1)^A000045(A002262(n))` -/
def P17788253395778928684.Spec : Prop :=
  ∀ n, P17788253395778928684.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P8475915228055454731

`A025581(n)^A000045(A002260(n+1)-1)`
-/

namespace A244003.P8475915228055454731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A000045 (A002260 (n + 1) - 1).toNat : ℤ)

end

end A244003.P8475915228055454731

namespace A244003

/-- `A025581(n)^A000045(A002260(n+1)-1)` -/
def P8475915228055454731.Spec : Prop :=
  ∀ n, P8475915228055454731.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P16989384884294118248

`(A004736(n+1)-1)^A000045(A002260(n+1)-1)`
-/

namespace A244003.P16989384884294118248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A000045 (A002260 (n + 1) - 1).toNat : ℤ)

end

end A244003.P16989384884294118248

namespace A244003

/-- `(A004736(n+1)-1)^A000045(A002260(n+1)-1)` -/
def P16989384884294118248.Spec : Prop :=
  ∀ n, P16989384884294118248.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P7896038631678891098

`A002262(A061579(n))^A000045(A002262(n))`
-/

namespace A244003.P7896038631678891098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (A061579 n).toNat : ℚ) ^ (A000045 (A002262 n).toNat : ℤ)

end

end A244003.P7896038631678891098

namespace A244003

/-- `A002262(A061579(n))^A000045(A002262(n))` -/
def P7896038631678891098.Spec : Prop :=
  ∀ n, P7896038631678891098.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P11266443550031692756

`A025581(n)^A000045(A025581(A061579(n)))`
-/

namespace A244003.P11266443550031692756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A000045 (A025581 (A061579 n).toNat).toNat : ℤ)

end

end A244003.P11266443550031692756

namespace A244003

/-- `A025581(n)^A000045(A025581(A061579(n)))` -/
def P11266443550031692756.Spec : Prop :=
  ∀ n, P11266443550031692756.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P7677845176367811035

`(A000096(A003056(n))-n)^A000045(A002262(n))`
-/

namespace A244003.P7677845176367811035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A000045 (A002262 n).toNat : ℤ)

end

end A244003.P7677845176367811035

namespace A244003

/-- `(A000096(A003056(n))-n)^A000045(A002262(n))` -/
def P7677845176367811035.Spec : Prop :=
  ∀ n, P7677845176367811035.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P9507978732516892699

`(A000096(A003056(n))-n)^A000045(A002260(n+1)-1)`
-/

namespace A244003.P9507978732516892699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A000045 (A002260 (n + 1) - 1).toNat : ℤ)

end

end A244003.P9507978732516892699

namespace A244003

/-- `(A000096(A003056(n))-n)^A000045(A002260(n+1)-1)` -/
def P9507978732516892699.Spec : Prop :=
  ∀ n, P9507978732516892699.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P17800545403692257670

`(A003056(n)-A002262(n))^A000045(A002260(n+1)-1)`
-/

namespace A244003.P17800545403692257670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n - A002262 n : ℚ) ^ (A000045 (A002260 (n + 1) - 1).toNat : ℤ)

end

end A244003.P17800545403692257670

namespace A244003

/-- `(A003056(n)-A002262(n))^A000045(A002260(n+1)-1)` -/
def P17800545403692257670.Spec : Prop :=
  ∀ n, P17800545403692257670.a n = (A244003 n : ℚ)

end A244003

/-! ## A244003.P2231959312286453524

`(A000096(A003056(n))-n)^A000045(A057555(2*n+1)-1)`
-/

namespace A244003.P2231959312286453524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A000045 (A057555 (2 * n + 1) - 1).toNat : ℤ)

end

end A244003.P2231959312286453524

namespace A244003

/-- `(A000096(A003056(n))-n)^A000045(A057555(2*n+1)-1)` -/
def P2231959312286453524.Spec : Prop :=
  ∀ n, P2231959312286453524.a n = (A244003 n : ℚ)

end A244003

/-!
# A244004: a(n) = Sum_{k=0..n} binomial(n,k) * (1 + 3^k)^k.

The programs for A244004, the canonical program `A244004.P9539731116461940584` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244004 has offset 0).

The definition of A244004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(1+3^#)^#]` (program `A244004.P9539731116461940584`, by `A244004.P9539731116461940584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244004.P9539731116461940584

`∑{#}[n, C(n, #)*(1+3^#)^#]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244004

/-- `∑{#}[n, C(n, #)*(1+3^#)^#]` -/
def P9539731116461940584.Spec : Prop :=
  ∀ n, (P9539731116461940584.a n : ℤ) = A244004 n

theorem P9539731116461940584.correct : P9539731116461940584.Spec := by
  intro n
  simp only [A244004]

end A244004

/-!
# A244005: Atomic numbers of the pre-transition metals.

The programs for A244005, there is no canonical definition to state claims against.
-/

/-! ## A244005.P9710172045444089790

`∪[A325448(2*(n+1)), A160914(n+3)]`
-/

namespace A244005.P9710172045444089790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325448 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160914 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244005.P9710172045444089790

/-! ## A244005.P4789420024903275886

`∪[A160914(n+4), A095661(A000326(n))]`
-/

namespace A244005.P4789420024903275886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160914 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 (A000326 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244005.P4789420024903275886

/-! ## A244005.P10214652233142789673

`∪[A160914(n+4), A095661(A000567(n))]`
-/

namespace A244005.P10214652233142789673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160914 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 (A000567 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244005.P10214652233142789673

/-!
# A244009: Decimal expansion of 1 - log(2).

The programs for A244009, there is no canonical definition to state claims against.
-/

/-! ## A244009.P6186756118780580919

`9-A002162(n)`
-/

namespace A244009.P6186756118780580919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002162 n

end

end A244009.P6186756118780580919

/-! ## A244009.P15254016127919468316

`9-(A187832(n)+A020761(n))`
-/

namespace A244009.P15254016127919468316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A187832 n + A020761 n)

end

end A244009.P15254016127919468316

/-! ## A244009.P8687715013577915930

`9-(A187832(n)+5*A000007(n))`
-/

namespace A244009.P8687715013577915930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A187832 n + 5 * A000007 n)

end

end A244009.P8687715013577915930

/-! ## A244009.P4475169185204864137

`9-(A187832(n)+A063377(2*(n+1)))`
-/

namespace A244009.P4475169185204864137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A187832 n + A063377 (2 * (n + 1)))

end

end A244009.P4475169185204864137

/-! ## A244009.P10669849378186481352

`A239354(n)+A369882(n)-A187832(n)`
-/

namespace A244009.P10669849378186481352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239354 n + (A369882 n - A187832 n)

end

end A244009.P10669849378186481352

/-! ## A244009.P8496327638676545150

`A048058(n)%(A014206(n)+A002162(n))`
-/

namespace A244009.P8496327638676545150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048058 n) (A014206 n + A002162 n)

end

end A244009.P8496327638676545150

/-!
# A244010: Partial sums of A243700.

The programs for A244010, there is no canonical definition to state claims against.
-/

/-! ## A244010.P10130575634292747800

`∑[A243700(n+1)]`
-/

namespace A244010.P10130575634292747800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244010.P10130575634292747800

/-! ## A244010.P3781816568900888364

`A243700(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A244010.P3781816568900888364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243700 (n + 1) + a (A028310 n - 1).toNat

end

end A244010.P3781816568900888364

/-! ## A244010.P5956521866824892295

`A243700(n+1)+a(A005843(n)-(n+1))` with `a(0)=1`
-/

namespace A244010.P5956521866824892295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243700 (n + 1) + a (A005843 n - (n + 1 : ℤ)).toNat

end

end A244010.P5956521866824892295

/-! ## A244010.P7314398378926680854

`A243700(n+1)+A020985(n)²*a(n-1)` with `a(0)=1`
-/

namespace A244010.P7314398378926680854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243700 (n + 1) + A020985 n ^ 2 * a (n - 1)

end

end A244010.P7314398378926680854

/-! ## A244010.P4146245849945324695

`A243700(n+1)+a(A140106(2*n))` with `a(0)=1`
-/

namespace A244010.P4146245849945324695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243700 (n + 1) + a (A140106 (2 * n)).toNat

end

end A244010.P4146245849945324695

/-! ## A244010.P17549964331562124948

`a(n-1)+A007318(A000217(n))*A243700(n+1)` with `a(0)=1`
-/

namespace A244010.P17549964331562124948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (A000217 n).toNat * A243700 (n + 1)

end

end A244010.P17549964331562124948

/-!
# A244011: The quotient when A243700(n) is calculated.

The programs for A244011, there is no canonical definition to state claims against.
-/

/-! ## A244011.P14733635865048436949

`A244010(A243700(n+1))/A243700(n+1)`
-/

namespace A244011.P14733635865048436949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244010 (A243700 (n + 1)).toNat : ℚ) / (A243700 (n + 1) : ℚ)

end

end A244011.P14733635865048436949

/-!
# A244012: Numerators of rational approximations to sqrt(7) obtained from Newton's method.

The programs for A244012, there is no canonical definition to state claims against.
-/

/-! ## A244012.P3543394408927728200

`A108851(2^n)`
-/

namespace A244012.P3543394408927728200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (2 ^ n)

end

end A244012.P3543394408927728200

/-! ## A244012.P8296306411018235866

`A080042(2^n)/2`
-/

namespace A244012.P8296306411018235866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080042 (2 ^ n) : ℚ) / 2

end

end A244012.P8296306411018235866

/-! ## A244012.P3494984627138719591

`record[A108851(A001316(n))]`
-/

namespace A244012.P3494984627138719591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244012.P3494984627138719591

/-!
# A244013: Denominators of rational approximations to sqrt(7) obtained from Newton's method.

The programs for A244013, there is no canonical definition to state claims against.
-/

/-! ## A244013.P7251677037528697261

`A015530(2^n)`
-/

namespace A244013.P7251677037528697261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (2 ^ n)

end

end A244013.P7251677037528697261

/-! ## A244013.P16298246784868492615

`A106570(2^n)/3`
-/

namespace A244013.P16298246784868492615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106570 (2 ^ n) : ℚ) / 3

end

end A244013.P16298246784868492615

/-! ## A244013.P17394497589183079803

`lcm((n+1)/∏{p}[n+1, #], A015530(A000079(n)))`
-/

namespace A244013.P17394497589183079803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A015530 (A000079 n).toNat)

end

end A244013.P17394497589183079803

/-! ## A244013.P3209991154726055215

`A015530(A000079(n))%A244012(n)`
-/

namespace A244013.P3209991154726055215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015530 (A000079 n).toNat) (A244012 n)

end

end A244013.P3209991154726055215

/-!
# A244014: Numerators of rational approximations to sqrt(6) obtained from Newton's method.

The programs for A244014, there is no canonical definition to state claims against.
-/

/-! ## A244014.P7389862322122991102

`2*a(n-1)²-1` with `a(0)=2, a(1)=5`
-/

namespace A244014.P7389862322122991102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) ^ 2 - 1

end

end A244014.P7389862322122991102

/-! ## A244014.P2929400523284975957

`lcm(2, a(n-1)²)-1` with `a(0)=2, a(1)=5`
-/

namespace A244014.P2929400523284975957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (Int.lcm 2 (a (n - 1) ^ 2) : ℤ) - 1

end

end A244014.P2929400523284975957

/-! ## A244014.P13577936067744909032

`2*a(n-1)^(4/2)-1` with `a(0)=2, a(1)=5`
-/

namespace A244014.P13577936067744909032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A244014.P13577936067744909032

/-! ## A244014.P5564567705933605811

`2*a(n-1)*a(n-1)-1` with `a(0)=2, a(1)=5`
-/

namespace A244014.P5564567705933605811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) * a (n - 1) - 1

end

end A244014.P5564567705933605811

/-!
# A244015: Denominators of rational approximations to sqrt(6) obtained from Newton's method.

The programs for A244015, there is no canonical definition to state claims against.
-/

/-! ## A244015.P10278020176976410686

`A041007(2^n-1)`
-/

namespace A244015.P10278020176976410686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 ^ n - 1)

end

end A244015.P10278020176976410686

/-! ## A244015.P1848854322070364008

`A041093(2^n-1)`
-/

namespace A244015.P1848854322070364008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041093 (2 ^ n - 1)

end

end A244015.P1848854322070364008

/-! ## A244015.P11580579784282638096

`lcm(A000079(n), A042669(2^n-1))`
-/

namespace A244015.P11580579784282638096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A042669 (2 ^ n - 1))

end

end A244015.P11580579784282638096

/-! ## A244015.P6725587839825619437

`A001078(A011782(n))-A000007(n)`
-/

namespace A244015.P6725587839825619437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (A011782 n).toNat - A000007 n

end

end A244015.P6725587839825619437

/-!
# A244016: Numbers in A243700 sorted into increasing order.

The programs for A244016, there is no canonical definition to state claims against.
-/

/-! ## A244016.P8722717103931940416

`eq[1, char[A243700(n+1)]]`
-/

namespace A244016.P8722717103931940416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243700 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244016.P8722717103931940416

/-! ## A244016.P3528768841594044292

`comp[A243864(n+1)-1]+1`
-/

namespace A244016.P3528768841594044292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243864 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A244016.P3528768841594044292

/-! ## A244016.P11599930336931116320

`record[gcd(n+1, A244010(n+1))]`
-/

namespace A244016.P11599930336931116320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A244010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244016.P11599930336931116320

/-! ## A244016.P17768776250634888064

`eq[char[A243864(n+1)], A000007(n)]`
-/

namespace A244016.P17768776250634888064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A244016.P17768776250634888064

/-! ## A244016.P17346132750516308443

`eq[char[A243864(n+1)], A000038(n)]`
-/

namespace A244016.P17346132750516308443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A244016.P17346132750516308443

/-! ## A244016.P336426066735634445

`eq[char[A243864(n+1)], A151933(n)]`
-/

namespace A244016.P336426066735634445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A244016.P336426066735634445

/-!
# A244017: The quotients when A243700 is calculated (A244011), but shown in the order corresponding to the sorted sequence A244016.

The programs for A244017, there is no canonical definition to state claims against.
-/

/-! ## A244017.P6301737724303739444

`A244010(A244016(n+1))/A244016(n+1)`
-/

namespace A244017.P6301737724303739444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244010 (A244016 (n + 1)).toNat : ℚ) / (A244016 (n + 1) : ℚ)

end

end A244017.P6301737724303739444

/-! ## A244017.P3714105178629288984

`A019590(n+1)+comp[A244018(n+1)]`
-/

namespace A244017.P3714105178629288984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244018 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A244017.P3714105178629288984

/-!
# A244018: Numbers missing from A244017.

The programs for A244018, there is no canonical definition to state claims against.
-/

/-! ## A244018.P8211556053285042140

`comp[A244011(n+1)-1]+1`
-/

namespace A244018.P8211556053285042140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244011 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A244018.P8211556053285042140

/-! ## A244018.P4903962236282434243

`comp[A023443(A244011(n+1))]+1`
-/

namespace A244018.P4903962236282434243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A244011 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A244018.P4903962236282434243

/-! ## A244018.P17955479916093955889

`comp[A244011(n+1)%A244049(n+4)]`
-/

namespace A244018.P17955479916093955889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244011 (n + 1)) (A244049 (n + 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244018.P17955479916093955889

/-!
# A244019: Primes of the form 9x^2 + 6xy + 1849y^2.

The programs for A244019, there is no canonical definition to state claims against.
-/

/-! ## A244019.P8940453507696029855

`A344705(A139668(n+1))`
-/

namespace A244019.P8940453507696029855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (A139668 (n + 1)).toNat

end

end A244019.P8940453507696029855

/-! ## A244019.P5643196433384606181

`A139668(n+1)+A000007(A070175(n))`
-/

namespace A244019.P5643196433384606181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139668 (n + 1) + A000007 (A070175 n).toNat

end

end A244019.P5643196433384606181

/-! ## A244019.P11361708815033765446

`A185017(A055922(n))+A139668(n+1)`
-/

namespace A244019.P11361708815033765446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 (A055922 n).toNat + A139668 (n + 1)

end

end A244019.P11361708815033765446

/-! ## A244019.P9158221313991278617

`A139668(n+1)+A000007(A361830(n))`
-/

namespace A244019.P9158221313991278617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139668 (n + 1) + A000007 (A361830 n).toNat

end

end A244019.P9158221313991278617

/-! ## A244019.P463727722488180410

`A093521(A093485(n))*A139668(n+1)`
-/

namespace A244019.P463727722488180410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 (A093485 n).toNat * A139668 (n + 1)

end

end A244019.P463727722488180410

/-!
# A244021: Analog of A244020, but starting with 5 points instead of 4.

The programs for A244021, there is no canonical definition to state claims against.
-/

/-! ## A244021.P6209179796765129999

`5*A035506(A357665(n))`
-/

namespace A244021.P6209179796765129999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A035506 (A357665 n).toNat

end

end A244021.P6209179796765129999

/-!
# A244022: Analog of A140468, but starting with 5 points instead of 4.

The programs for A244022, there is no canonical definition to state claims against.
-/

/-! ## A244022.P11242229549303065685

`5*A027336(A260304(n))`
-/

namespace A244022.P11242229549303065685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A027336 (A260304 n).toNat

end

end A244022.P11242229549303065685

/-!
# A244025: Analog of A244020, but starting with 5 points, and with the constraint that new points (or lines) are formed only from the intersections of lines (or points) of the same generation.

The programs for A244025, there is no canonical definition to state claims against.
-/

/-! ## A244025.P802083934575680967

`5*A049909(A003479(n))`
-/

namespace A244025.P802083934575680967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049909 (A003479 n).toNat

end

end A244025.P802083934575680967

/-!
# A244026: Analog of A140468, but starting with 5 points, and with the constraint that new points (or lines) are formed only from the intersections of lines (or points) of the same generation.

The programs for A244026, there is no canonical definition to state claims against.
-/

/-! ## A244026.P12311779454312115419

`(∑{p}[n+1, #%or(2, #)]+5)*A355464(n)`
-/

namespace A244026.P12311779454312115419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p % Nat.lor 2 p + 5 : ℕ) : ℤ) * A355464 n

end

end A244026.P12311779454312115419

/-!
# A244029: Primes p such that the quadratic form x^2+p*y^2 does not represent a prime strictly between p and 2p.

The programs for A244029, there is no canonical definition to state claims against.
-/

/-! ## A244029.P1661656864254203667

`p?[A244031(n+1)]`
-/

namespace A244029.P1661656864254203667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244029.P1661656864254203667

/-! ## A244029.P11264829917294999712

`filter[A244031(n+1), A010051(#)]`
-/

namespace A244029.P11264829917294999712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A244029.P11264829917294999712

/-! ## A244029.P3050324423620898097

`filter[A244031(n+1), A302777(#)]`
-/

namespace A244029.P3050324423620898097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A244029.P3050324423620898097

/-! ## A244029.P3743376972576508446

`filter[A244031(n+1), A323153(#)]`
-/

namespace A244029.P3743376972576508446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A244029.P3743376972576508446

/-! ## A244029.P783740287575911414

`filter[A244031(n+1), A324823(#)]`
-/

namespace A244029.P783740287575911414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A244029.P783740287575911414

/-!
# A244030: Composite numbers n such that the quadratic form x^2+n*y^2 does not represent a prime strictly between n and 2n.

The programs for A244030, there is no canonical definition to state claims against.
-/

/-! ## A244030.P17714994695253734036

`filter[A244031(n+1), A005171(#)]`
-/

namespace A244030.P17714994695253734036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A244030.P17714994695253734036

/-! ## A244030.P9057893140226329015

`filter[A244031(n+1), A066247(#)]`
-/

namespace A244030.P9057893140226329015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A244030.P9057893140226329015

/-! ## A244030.P12483718642400350681

`filter[A244031(n+1), A292438(#)]`
-/

namespace A244030.P12483718642400350681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A244030.P12483718642400350681

/-! ## A244030.P7310223854002583916

`∩[A002808(n+1), A244031(n+1)]`
-/

namespace A244030.P7310223854002583916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244030.P7310223854002583916

/-! ## A244030.P9798638423677955472

`∩[A018252(n+1), A244031(n+1)]`
-/

namespace A244030.P9798638423677955472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244030.P9798638423677955472

/-! ## A244030.P14246654893906530395

`∩[A141468(n+1), A244031(n+1)]`
-/

namespace A244030.P14246654893906530395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244030.P14246654893906530395

/-! ## A244030.P229313568210542102

`∩[A068780(n+1), A244031(n+1)]`
-/

namespace A244030.P229313568210542102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244030.P229313568210542102

/-! ## A244030.P11609325361756844963

`lt[n, A056897(n+1)]+2`
-/

namespace A244030.P11609325361756844963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A244030.P11609325361756844963

/-! ## A244030.P1687696549102338957

`A020725(lt[n+1, A056897(n)])`
-/

namespace A244030.P1687696549102338957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A244030.P1687696549102338957

/-! ## A244030.P441084531955822075

`A065475(lt[n+1, A056897(n)])`
-/

namespace A244030.P441084531955822075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A244030.P441084531955822075

/-!
# A244031: Integers n>1 such that the quadratic form x^2+n*y^2 does not represent a prime strictly between n and 2n.

The programs for A244031, there is no canonical definition to state claims against.
-/

/-! ## A244031.P4045324239471228466

`∪[A244029(n+1), A244030(n+1)]`
-/

namespace A244031.P4045324239471228466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244031.P4045324239471228466

/-! ## A244031.P5695361033243387431

`lt[n+2, A059843(n+1)-n]+1`
-/

namespace A244031.P5695361033243387431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A244031.P5695361033243387431

/-! ## A244031.P13279156030271642341

`lt[A060308(n+1), A059843(n+1)]+1`
-/

namespace A244031.P13279156030271642341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244031.P13279156030271642341

/-! ## A244031.P6829682489947275915

`lt[n+2, A002522(A085099(n+1))]+1`
-/

namespace A244031.P6829682489947275915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A085099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A244031.P6829682489947275915

/-! ## A244031.P283611748691195108

`lt[A032612(2*(n+1)), A032610(A059843(n+1))]+1`
-/

namespace A244031.P283611748691195108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A059843 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244031.P283611748691195108

/-!
# A244032: Positive numbers n such that there exists a positive number m != n such that x^2+ny^2 and x^2+my^2 represent the same odd primes.

The programs for A244032, there is no canonical definition to state claims against.
-/

/-! ## A244032.P12199862142863151501

`record[gcd(A284315(n), A329149(n+1))]`
-/

namespace A244032.P12199862142863151501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284315 n) (A329149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244032.P12199862142863151501

/-!
# A244033: Nonnegative integers that do not appear in A243357.

The programs for A244033, there is no canonical definition to state claims against.
-/

/-! ## A244033.P15571214072523240674

`∪[A011540(n+1), A244034(n+1)]`
-/

namespace A244033.P15571214072523240674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244033.P15571214072523240674

/-! ## A244033.P17889726295538558704

`∪[comp[A052382(n+1)], A244034(n+1)]`
-/

namespace A244033.P17889726295538558704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A244033.P17889726295538558704

/-! ## A244033.P11052967522591329084

`comp[A243357(n+1)]`
-/

namespace A244033.P11052967522591329084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244033.P11052967522591329084

/-! ## A244033.P3032865035883561890

`comp[A244496(n+1)]%A336004(2*n+5)`
-/

namespace A244033.P3032865035883561890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244496 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A336004 (2 * n + 5))

end

end A244033.P3032865035883561890

/-! ## A244033.P11142148852057241763

`comp[A244496(n+1)]%A244443(n+2)`
-/

namespace A244033.P11142148852057241763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244496 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A244443 (n + 2))

end

end A244033.P11142148852057241763

/-!
# A244034: Numbers not containing the digit 0 that do not appear in A243357.

The programs for A244034, there is no canonical definition to state claims against.
-/

/-! ## A244034.P5712159378314930239

`∩[A125290(n+1), A244033(n+1)]`
-/

namespace A244034.P5712159378314930239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244034.P5712159378314930239

/-! ## A244034.P12585145571257389994

`∩[A052382(n+1), A244033(n+1)]`
-/

namespace A244034.P12585145571257389994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244034.P12585145571257389994

/-! ## A244034.P10069417310864371862

`filter[A244033(n+1), A168046(#)]`
-/

namespace A244034.P10069417310864371862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A244034.P10069417310864371862

/-! ## A244034.P16828603902213968172

`A002262(C(∑[gcd(13, n%2)+3], 2)-1)`
-/

namespace A244034.P16828603902213968172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 (n % 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 - 1)

end

end A244034.P16828603902213968172

/-! ## A244034.P12452128509234647445

`A228141(A077168(n))+13`
-/

namespace A244034.P12452128509234647445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228141 (A077168 n).toNat + 13

end

end A244034.P12452128509234647445

/-!
# A244035: a(n) = Sum_{d|n} Sum{t|d} moebius(d/t)*binomial(3*t,t)/(3*d^2).

The programs for A244035, there is no canonical definition to state claims against.
-/

/-! ## A244035.P17606512315121019885

`∑{d}[n+1, A023900(#)*A244036((n+1)/#)]`
-/

namespace A244035.P17606512315121019885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A244036 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244035.P17606512315121019885

/-! ## A244035.P3478534794502444245

`A008612(A062709(n)*A174191(n))`
-/

namespace A244035.P3478534794502444245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A062709 n * A174191 n).toNat

end

end A244035.P3478534794502444245

/-! ## A244035.P10964412477472445773

`A332086(A098453(n)+A004761(3*n+2))`
-/

namespace A244035.P10964412477472445773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A098453 n + A004761 (3 * n + 2)).toNat

end

end A244035.P10964412477472445773

/-!
# A244036: a(n) = Sum_{d|n} Sum{t|d} (n/d)*moebius(d/t)*binomial(3*t,t)/(3*d^2).

The programs for A244036, there is no canonical definition to state claims against.
-/

/-! ## A244036.P15457153101124885060

`∑{d}[n+1, A000010(#)*A244035((n+1)/#)]`
-/

namespace A244036.P15457153101124885060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A244035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244036.P15457153101124885060

/-! ## A244036.P1421977496756761279

`A215249(A212825(n+1))`
-/

namespace A244036.P1421977496756761279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215249 (A212825 (n + 1)).toNat

end

end A244036.P1421977496756761279

/-!
# A244037: Numbers of the form x^2+14y^2.

The programs for A244037, there is no canonical definition to state claims against.
-/

/-! ## A244037.P6602325545168084840

`record[A025480(A020675(n+1))]`
-/

namespace A244037.P6602325545168084840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244037.P6602325545168084840

/-! ## A244037.P1548172015885217846

`record[A078898(A020675(A008619(n)))]`
-/

namespace A244037.P1548172015885217846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A020675 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244037.P1548172015885217846

/-! ## A244037.P10664719084371456025

`record[A078898(A020675(A052938(n)))]`
-/

namespace A244037.P10664719084371456025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A020675 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244037.P10664719084371456025

/-! ## A244037.P11891412498786875651

`A004526(record[A038608(A020675(n+1))])`
-/

namespace A244037.P11891412498786875651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A020675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244037.P11891412498786875651

/-! ## A244037.P13458615115608028704

`record[A038608(A020675(n+1))]/A020639(2*(n+1))`
-/

namespace A244037.P13458615115608028704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A020675 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A244037.P13458615115608028704

/-!
# A244038: a(n) = 4^n * binomial(3*n/2,n).

The programs for A244038, the canonical program `A244038.P3492826377890953382` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244038 has offset 0).

The definition of A244038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244038.P3492826377890953382

`∑{#}[n, C(3*n+1, #)*C(2*n-#, n)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244038

/-- `∑{#}[n, C(3*n+1, #)*C(2*n-#, n)]` -/
def P3492826377890953382.Spec : Prop :=
  ∀ n, (P3492826377890953382.a n : ℤ) = A244038 n

theorem P3492826377890953382.correct : P3492826377890953382.Spec := by
  intro n
  simp only [A244038]

end A244038

/-! ## A244038.P14136723340377969426

`(n+1)*A085614(n+1)`
-/

namespace A244038.P14136723340377969426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085614 (n + 1)

end

end A244038.P14136723340377969426

namespace A244038

/-- `(n+1)*A085614(n+1)` -/
def P14136723340377969426.Spec : Prop :=
  ∀ n, P14136723340377969426.a n = A244038 n

end A244038

/-! ## A244038.P14549270378773071889

`(n+1)*A143018(∑[n]+2)`
-/

namespace A244038.P14549270378773071889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143018 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244038.P14549270378773071889

namespace A244038

/-- `(n+1)*A143018(∑[n]+2)` -/
def P14549270378773071889.Spec : Prop :=
  ∀ n, P14549270378773071889.a n = A244038 n

end A244038

/-! ## A244038.P3583902467030642474

`(n+1)*record[A143018(n+2)]`
-/

namespace A244038.P3583902467030642474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143018 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244038.P3583902467030642474

namespace A244038

/-- `(n+1)*record[A143018(n+2)]` -/
def P3583902467030642474.Spec : Prop :=
  ∀ n, P3583902467030642474.a n = A244038 n

end A244038

/-! ## A244038.P12491888107727765986

`(n+1)*(2*A078531(n)-A007297(n+1))`
-/

namespace A244038.P12491888107727765986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A078531 n - A007297 (n + 1))

end

end A244038.P12491888107727765986

namespace A244038

/-- `(n+1)*(2*A078531(n)-A007297(n+1))` -/
def P12491888107727765986.Spec : Prop :=
  ∀ n, P12491888107727765986.a n = A244038 n

end A244038

/-! ## A244038.P12010741623987015799

`A110441(∑[4*n])`
-/

namespace A244038.P12010741623987015799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244038.P12010741623987015799

namespace A244038

/-- `A110441(∑[4*n])` -/
def P12010741623987015799.Spec : Prop :=
  ∀ n, P12010741623987015799.a n = A244038 n

end A244038

/-! ## A244038.P14539712860452004152

`A054335(2*(n+1)²)`
-/

namespace A244038.P14539712860452004152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (2 * (n + 1) ^ 2)

end

end A244038.P14539712860452004152

namespace A244038

/-- `A054335(2*(n+1)²)` -/
def P14539712860452004152.Spec : Prop :=
  ∀ n, P14539712860452004152.a n = A244038 n

end A244038

/-! ## A244038.P15490372111739408640

`A206306(2*(n+1)²)`
-/

namespace A244038.P15490372111739408640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (2 * (n + 1) ^ 2)

end

end A244038.P15490372111739408640

namespace A244038

/-- `A206306(2*(n+1)²)` -/
def P15490372111739408640.Spec : Prop :=
  ∀ n, P15490372111739408640.a n = A244038 n

end A244038

/-! ## A244038.P7916220630540935003

`abs(1-A054335(∑[4*n+2]))+1`
-/

namespace A244038.P7916220630540935003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A054335 (∑ j ∈ Finset.range (n + 1), f1 j)| + 1

end

end A244038.P7916220630540935003

namespace A244038

/-- `abs(1-A054335(∑[4*n+2]))+1` -/
def P7916220630540935003.Spec : Prop :=
  ∀ n, P7916220630540935003.a n = A244038 n

end A244038

/-! ## A244038.P7967606224355807009

`A205813(A001844(n+1))`
-/

namespace A244038.P7967606224355807009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A001844 (n + 1)).toNat

end

end A244038.P7967606224355807009

namespace A244038

/-- `A205813(A001844(n+1))` -/
def P7967606224355807009.Spec : Prop :=
  ∀ n, P7967606224355807009.a n = A244038 n

end A244038

/-!
# A244039: a(n) = 2^(2*n-1) * ( binomial(3*n/2,n) + binomial((3*n-1)/2,n) ).

The programs for A244039, the canonical program `A244039.P17026378800997765579` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244039 has offset 0).

The definition of A244039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244039.P17026378800997765579

`∑{#}[n, C(3*n, #)*C(2*n-#, n)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244039

/-- `∑{#}[n, C(3*n, #)*C(2*n-#, n)]` -/
def P17026378800997765579.Spec : Prop :=
  ∀ n, (P17026378800997765579.a n : ℤ) = A244039 n

theorem P17026378800997765579.correct : P17026378800997765579.Spec := by
  intro n
  simp only [A244039]

end A244039

/-! ## A244039.P123625152493585389

`(A244038(n)+A091527(n))/2`
-/

namespace A244039.P123625152493585389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244038 n + A091527 n : ℚ) / 2

end

end A244039.P123625152493585389

namespace A244039

/-- `(A244038(n)+A091527(n))/2` -/
def P123625152493585389.Spec : Prop :=
  ∀ n, P123625152493585389.a n = (A244039 n : ℚ)

end A244039

/-! ## A244039.P4648067339456485655

`A124237(∑[4*n])`
-/

namespace A244039.P4648067339456485655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124237 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244039.P4648067339456485655

namespace A244039

/-- `A124237(∑[4*n])` -/
def P4648067339456485655.Spec : Prop :=
  ∀ n, P4648067339456485655.a n = A244039 n

end A244039

/-! ## A244039.P13367830533076901516

`A244038(n)-A206306(A001844(n))`
-/

namespace A244039.P13367830533076901516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244038 n - A206306 (A001844 n).toNat

end

end A244039.P13367830533076901516

namespace A244039

/-- `A244038(n)-A206306(A001844(n))` -/
def P13367830533076901516.Spec : Prop :=
  ∀ n, P13367830533076901516.a n = A244039 n

end A244039

/-! ## A244039.P13881573827537537109

`A140069(A081267(n))`
-/

namespace A244039.P13881573827537537109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140069 (A081267 n).toNat

end

end A244039.P13881573827537537109

namespace A244039

/-- `A140069(A081267(n))` -/
def P13881573827537537109.Spec : Prop :=
  ∀ n, P13881573827537537109.a n = A244039 n

end A244039

/-!
# A244040: Sum of digits of n in fractional base 3/2.

The programs for A244040, the canonical program `A244040.P2585511680982777641` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244040 has offset 0).

The definition of A244040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244040.P2585511680982777641

`a(2*floor(n/3))+n%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244040

/-- `a(2*floor(n/3))+n%3` -/
def P2585511680982777641.Spec : Prop :=
  ∀ n, (P2585511680982777641.a n : ℤ) = A244040 n

theorem P2585511680982777641.correct : P2585511680982777641.Spec := by
  intro n
  simp only [A244040]

end A244040

/-! ## A244040.P15502101143626089630

`∑{digits}[A024629(n), #]`
-/

namespace A244040.P15502101143626089630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244040.P15502101143626089630

namespace A244040

/-- `∑{digits}[A024629(n), #]` -/
def P15502101143626089630.Spec : Prop :=
  ∀ n, (P15502101143626089630.a n : ℤ) = A244040 n

end A244040

/-! ## A244040.P2253431607292707353

`log2(∏{digits}[A024629(n), A000079(#)])`
-/

namespace A244040.P2253431607292707353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A244040.P2253431607292707353

namespace A244040

/-- `log2(∏{digits}[A024629(n), A000079(#)])` -/
def P2253431607292707353.Spec : Prop :=
  ∀ n, P2253431607292707353.a n = (A244040 n : ℝ)

end A244040

/-! ## A244040.P4889813301521626555

`log2(∏{digits}[A024629(n), A004277(#)])`
-/

namespace A244040.P4889813301521626555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004277 x).prod : ℤ) : ℝ)

end

end A244040.P4889813301521626555

namespace A244040

/-- `log2(∏{digits}[A024629(n), A004277(#)])` -/
def P4889813301521626555.Spec : Prop :=
  ∀ n, P4889813301521626555.a n = (A244040 n : ℝ)

end A244040

/-! ## A244040.P8823866932663476078

`A010872(n)+a(2*A002264(n))` with `a(0)=0`
-/

namespace A244040.P8823866932663476078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010872 n + a (2 * A002264 n).toNat

end

end A244040.P8823866932663476078

namespace A244040

/-- `A010872(n)+a(2*A002264(n))` -/
def P8823866932663476078.Spec : Prop :=
  ∀ n, P8823866932663476078.a n = A244040 n

end A244040

/-! ## A244040.P8803094027186769368

`∑{digits}[A024637(2*n)/2, #]`
-/

namespace A244040.P8803094027186769368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024637 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A244040.P8803094027186769368

namespace A244040

/-- `∑{digits}[A024637(2*n)/2, #]` -/
def P8803094027186769368.Spec : Prop :=
  ∀ n, (P8803094027186769368.a n : ℤ) = A244040 n

end A244040

/-! ## A244040.P1212200869377515125

`A010872(n)+a(A002264(A047240(n+1)))` with `a(0)=0`
-/

namespace A244040.P1212200869377515125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010872 n + a (A002264 (A047240 (n + 1)).toNat).toNat

end

end A244040.P1212200869377515125

namespace A244040

/-- `A010872(n)+a(A002264(A047240(n+1)))` -/
def P1212200869377515125.Spec : Prop :=
  ∀ n, P1212200869377515125.a n = A244040 n

end A244040

/-! ## A244040.P15143434490900543060

`A001222(∏{digits}[A024629(n), A000079(#)])`
-/

namespace A244040.P15143434490900543060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod.toNat

end

end A244040.P15143434490900543060

namespace A244040

/-- `A001222(∏{digits}[A024629(n), A000079(#)])` -/
def P15143434490900543060.Spec : Prop :=
  ∀ n, P15143434490900543060.a n = A244040 n

end A244040

/-! ## A244040.P7930848219225705063

`A001222(∏{digits}[A024629(n), A004277(#)])`
-/

namespace A244040.P7930848219225705063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004277 x).prod.toNat

end

end A244040.P7930848219225705063

namespace A244040

/-- `A001222(∏{digits}[A024629(n), A004277(#)])` -/
def P7930848219225705063.Spec : Prop :=
  ∀ n, P7930848219225705063.a n = A244040 n

end A244040

/-! ## A244040.P11238810035315212118

`A053735(A261691(n))`
-/

namespace A244040.P11238810035315212118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A261691 n).toNat

end

end A244040.P11238810035315212118

namespace A244040

/-- `A053735(A261691(n))` -/
def P11238810035315212118.Spec : Prop :=
  ∀ n, P11238810035315212118.a n = A244040 n

end A244040

/-!
# A244041: Sum of digits of n written in fractional base 4/3.

The programs for A244041, the canonical program `A244041.P9196953694922478811` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244041 has offset 0).

The definition of A244041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244041.P9196953694922478811

`∑{digits}[A024631(n), #]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244041

/-- `∑{digits}[A024631(n), #]` -/
def P9196953694922478811.Spec : Prop :=
  ∀ n, (P9196953694922478811.a n : ℤ) = A244041 n

theorem P9196953694922478811.correct : P9196953694922478811.Spec := by
  intro n
  simp only [A244041]

end A244041

/-! ## A244041.P7848486057316380590

`∑{digits}[A024648(2*n)/2, #]`
-/

namespace A244041.P7848486057316380590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024648 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P7848486057316380590

namespace A244041

/-- `∑{digits}[A024648(2*n)/2, #]` -/
def P7848486057316380590.Spec : Prop :=
  ∀ n, (P7848486057316380590.a n : ℤ) = A244041 n

end A244041

/-! ## A244041.P765788206769373749

`A004525(∑{digits}[A024648(2*n), #])`
-/

namespace A244041.P765788206769373749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024648 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P765788206769373749

namespace A244041

/-- `A004525(∑{digits}[A024648(2*n), #])` -/
def P765788206769373749.Spec : Prop :=
  ∀ n, P765788206769373749.a n = A244041 n

end A244041

/-! ## A244041.P6500157720290078681

`A004526(∑{digits}[A024648(2*n), #])`
-/

namespace A244041.P6500157720290078681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024648 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P6500157720290078681

namespace A244041

/-- `A004526(∑{digits}[A024648(2*n), #])` -/
def P6500157720290078681.Spec : Prop :=
  ∀ n, P6500157720290078681.a n = A244041 n

end A244041

/-! ## A244041.P6079471790775854614

`A008619(∑{digits}[A024648(2*n), #])-1`
-/

namespace A244041.P6079471790775854614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024648 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum - 1

end

end A244041.P6079471790775854614

namespace A244041

/-- `A008619(∑{digits}[A024648(2*n), #])-1` -/
def P6079471790775854614.Spec : Prop :=
  ∀ n, P6079471790775854614.a n = A244041 n

end A244041

/-!
# A244042: In ternary representation of n, replace 2's with 0's.

The programs for A244042, the canonical program `A244042.P9314766524248185345` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244042 has offset 0).

The definition of A244042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244042.P12019487486842479147

`A005836(A289813(n)+1)`
-/

namespace A244042.P12019487486842479147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A289813 n + 1).toNat

end

end A244042.P12019487486842479147

namespace A244042

/-- `A005836(A289813(n)+1)` -/
def P12019487486842479147.Spec : Prop :=
  ∀ n, P12019487486842479147.a n = A244042 n

end A244042

/-! ## A244042.P9314766524248185345

`n-2*A005836(A289814(n)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244042

/-- `n-2*A005836(A289814(n)+1)` -/
def P9314766524248185345.Spec : Prop :=
  ∀ n, P9314766524248185345.a n = A244042 n

theorem P9314766524248185345.correct : P9314766524248185345.Spec := by
  intro n
  simp only [A244042]

end A244042

/-! ## A244042.P4411133964431393727

`n-A300222(n)`
-/

namespace A244042.P4411133964431393727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A300222 n

end

end A244042.P4411133964431393727

namespace A244042

/-- `n-A300222(n)` -/
def P4411133964431393727.Spec : Prop :=
  ∀ n, P4411133964431393727.a n = A244042 n

theorem P4411133964431393727.correct : P4411133964431393727.Spec := by
  intro n
  simp only [A244042, Nat.add_sub_cancel, A244042.P4411133964431393727.a, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244042

/-! ## A244042.P3333887794247785929

`∑{d}[n, A300821(#)]`
-/

namespace A244042.P3333887794247785929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300821 d

end

end A244042.P3333887794247785929

namespace A244042

/-- `∑{d}[n, A300821(#)]` -/
def P3333887794247785929.Spec : Prop :=
  ∀ n, P3333887794247785929.a n = A244042 n

end A244042

/-! ## A244042.P11438023156301582682

`n-∑{d}[n, A300822(#)]`
-/

namespace A244042.P11438023156301582682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A300822 d

end

end A244042.P11438023156301582682

namespace A244042

/-- `n-∑{d}[n, A300822(#)]` -/
def P11438023156301582682.Spec : Prop :=
  ∀ n, P11438023156301582682.a n = A244042 n

end A244042

/-! ## A244042.P11534606153558797459

`A005836(A356248(n))`
-/

namespace A244042.P11534606153558797459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A356248 n).toNat

end

end A244042.P11534606153558797459

namespace A244042

/-- `A005836(A356248(n))` -/
def P11534606153558797459.Spec : Prop :=
  ∀ n, P11534606153558797459.a n = A244042 n

end A244042

/-! ## A244042.P3141989922147347254

`A060374(A093347(n+1))`
-/

namespace A244042.P3141989922147347254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (A093347 (n + 1)).toNat

end

end A244042.P3141989922147347254

namespace A244042

/-- `A060374(A093347(n+1))` -/
def P3141989922147347254.Spec : Prop :=
  ∀ n, P3141989922147347254.a n = A244042 n

end A244042

/-! ## A244042.P14624295552240099064

`A300222(A004488(n))/2`
-/

namespace A244042.P14624295552240099064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300222 (A004488 n).toNat : ℚ) / 2

end

end A244042.P14624295552240099064

namespace A244042

/-- `A300222(A004488(n))/2` -/
def P14624295552240099064.Spec : Prop :=
  ∀ n, P14624295552240099064.a n = (A244042 n : ℚ)

end A244042

/-! ## A244042.P3823402589889522139

`n-A005823(A289814(n)+1)`
-/

namespace A244042.P3823402589889522139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005823 (A289814 n + 1).toNat

end

end A244042.P3823402589889522139

namespace A244042

/-- `n-A005823(A289814(n)+1)` -/
def P3823402589889522139.Spec : Prop :=
  ∀ n, P3823402589889522139.a n = A244042 n

end A244042

/-! ## A244042.P13446483023485864997

`A117966(n)+A300222(n)/2`
-/

namespace A244042.P13446483023485864997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117966 n : ℚ) + (A300222 n : ℚ) / 2

end

end A244042.P13446483023485864997

namespace A244042

/-- `A117966(n)+A300222(n)/2` -/
def P13446483023485864997.Spec : Prop :=
  ∀ n, P13446483023485864997.a n = (A244042 n : ℚ)

theorem P13446483023485864997.correct : P13446483023485864997.Spec := by
  intro n
  simp only [A244042, Nat.add_sub_cancel, A244042.P13446483023485864997.a, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A117966, A117966.P11599160912576478646.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244042

/-! ## A244042.P7601715414208826790

`A004488(A300222(A004488(n)))`
-/

namespace A244042.P7601715414208826790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A300222 (A004488 n).toNat).toNat

end

end A244042.P7601715414208826790

namespace A244042

/-- `A004488(A300222(A004488(n)))` -/
def P7601715414208826790.Spec : Prop :=
  ∀ n, P7601715414208826790.a n = A244042 n

end A244042

/-! ## A244042.P5670777235629287092

`n-2*A374362(n)`
-/

namespace A244042.P5670777235629287092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A374362 n

end

end A244042.P5670777235629287092

namespace A244042

/-- `n-2*A374362(n)` -/
def P5670777235629287092.Spec : Prop :=
  ∀ n, P5670777235629287092.a n = A244042 n

theorem P5670777235629287092.correct : P5670777235629287092.Spec := by
  intro n
  simp only [A244042, Nat.add_sub_cancel, A244042.P5670777235629287092.a, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A374362, A374362.P13095679311797135054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244042

/-! ## A244042.P11196553052966519823

`A374362(n)+A117966(n)`
-/

namespace A244042.P11196553052966519823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 n + A117966 n

end

end A244042.P11196553052966519823

namespace A244042

/-- `A374362(n)+A117966(n)` -/
def P11196553052966519823.Spec : Prop :=
  ∀ n, P11196553052966519823.a n = A244042 n

theorem P11196553052966519823.correct : P11196553052966519823.Spec := by
  intro n
  simp only [A244042, Nat.add_sub_cancel, A244042.P11196553052966519823.a, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A117966, A117966.P11599160912576478646.a, A289814, A289814.P11371932108795153936.a, A374362, A374362.P13095679311797135054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244042

/-! ## A244042.P5226106806874309692

`2*A374363(n)-n`
-/

namespace A244042.P5226106806874309692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A374363 n - (n : ℤ)

end

end A244042.P5226106806874309692

namespace A244042

/-- `2*A374363(n)-n` -/
def P5226106806874309692.Spec : Prop :=
  ∀ n, P5226106806874309692.a n = A244042 n

theorem P5226106806874309692.correct : P5226106806874309692.Spec := by
  intro n
  simp only [A244042, Nat.add_sub_cancel, A244042.P5226106806874309692.a, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A374363, A374363.P4006744609650702107.a, A374362, A374362.P13095679311797135054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244042

/-! ## A244042.P5579402797809314109

`A374362(A004488(n))`
-/

namespace A244042.P5579402797809314109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A004488 n).toNat

end

end A244042.P5579402797809314109

namespace A244042

/-- `A374362(A004488(n))` -/
def P5579402797809314109.Spec : Prop :=
  ∀ n, P5579402797809314109.a n = A244042 n

end A244042

/-! ## A244042.P14531307328147864891

`A374362(A256293(n))`
-/

namespace A244042.P14531307328147864891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A256293 n).toNat

end

end A244042.P14531307328147864891

namespace A244042

/-- `A374362(A256293(n))` -/
def P14531307328147864891.Spec : Prop :=
  ∀ n, P14531307328147864891.a n = A244042 n

end A244042

/-! ## A244042.P9257410249217651424

`A374362(A117966(n)+n)`
-/

namespace A244042.P9257410249217651424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A117966 n + (n : ℤ)).toNat

end

end A244042.P9257410249217651424

namespace A244042

/-- `A374362(A117966(n)+n)` -/
def P9257410249217651424.Spec : Prop :=
  ∀ n, P9257410249217651424.a n = A244042 n

end A244042

/-! ## A244042.P16990049201097684805

`A004488(n)-A374363(n)`
-/

namespace A244042.P16990049201097684805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - A374363 n

end

end A244042.P16990049201097684805

namespace A244042

/-- `A004488(n)-A374363(n)` -/
def P16990049201097684805.Spec : Prop :=
  ∀ n, P16990049201097684805.a n = A244042 n

end A244042

/-! ## A244042.P8849705955486358642

`A374363(n)-A374362(n)`
-/

namespace A244042.P8849705955486358642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 n - A374362 n

end

end A244042.P8849705955486358642

namespace A244042

/-- `A374363(n)-A374362(n)` -/
def P8849705955486358642.Spec : Prop :=
  ∀ n, P8849705955486358642.a n = A244042 n

theorem P8849705955486358642.correct : P8849705955486358642.Spec := by
  intro n
  simp only [A244042, Nat.add_sub_cancel, A244042.P8849705955486358642.a, A244042.P9314766524248185345.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A374362, A374362.P13095679311797135054.a, A374363, A374363.P4006744609650702107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244042

/-! ## A244042.P321180935569329403

`A300222(2*A338242(n))/2`
-/

namespace A244042.P321180935569329403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300222 (2 * A338242 n).toNat : ℚ) / 2

end

end A244042.P321180935569329403

namespace A244042

/-- `A300222(2*A338242(n))/2` -/
def P321180935569329403.Spec : Prop :=
  ∀ n, P321180935569329403.a n = (A244042 n : ℚ)

end A244042

/-!
# A244043: Numbers n for new peaks of floor(sigma(n)/primepi(n)).

The programs for A244043, there is no canonical definition to state claims against.
-/

/-! ## A244043.P12631134974824019602

`∩[A124866(n+1), A140999(n+1)]`
-/

namespace A244043.P12631134974824019602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244043.P12631134974824019602

/-! ## A244043.P7736763593476721813

`∩[A124866(n+1), A354530(n+1)]`
-/

namespace A244043.P7736763593476721813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244043.P7736763593476721813

/-! ## A244043.P3908850442307529460

`∩[A124866(n+1), A325238(n+1)]`
-/

namespace A244043.P3908850442307529460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244043.P3908850442307529460

/-! ## A244043.P14911688253412157781

`record[A046523(3*(n+1))*A286520(3*n+5)]`
-/

namespace A244043.P14911688253412157781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (3 * (n + 1)) * A286520 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244043.P14911688253412157781

/-!
# A244047: Maximal nonempty {1,3}-chunks of a 4-day-old string in a "Look and Say" sequence.

The programs for A244047, there is no canonical definition to state claims against.
-/

/-! ## A244047.P12198539316594000256

`A032917(A032894(n+1)%A114221(n+1))`
-/

namespace A244047.P12198539316594000256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (Int.tmod (A032894 (n + 1)) (A114221 (n + 1))).toNat

end

end A244047.P12198539316594000256

/-! ## A244047.P15801054494382156238

`A032917(A032894(n+1)^Δ[A032907(n+1)])`
-/

namespace A244047.P15801054494382156238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (SequenceMachineLib.roundAway ((A032894 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A244047.P15801054494382156238

/-! ## A244047.P17641731325888804332

`record[A332881(A032917(n+1)²)]`
-/

namespace A244047.P17641731325888804332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (A032917 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244047.P17641731325888804332

/-! ## A244047.P11521536369336907768

`record[A348037(A032917(n+1)²)]`
-/

namespace A244047.P11521536369336907768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (A032917 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244047.P11521536369336907768

/-! ## A244047.P15811949927316076962

`record[gcd(A032917(n+1), A251762(n))]`
-/

namespace A244047.P15811949927316076962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032917 (n + 1)) (A251762 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244047.P15811949927316076962

/-!
# A244048: Antisigma(n) minus the sum of remainders of n mod k, for k = 1,2,3,...,n.

The programs for A244048, the canonical program `A244048.P6865276920681536651` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244048 has offset 1).

The definition of A244048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244048.P6865276920681536651

`A024816(n+1)-A004125(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244048

/-- `A024816(n+1)-A004125(n+1)` -/
def P6865276920681536651.Spec : Prop :=
  ∀ n, P6865276920681536651.a n = A244048 (n + 1)

theorem P6865276920681536651.correct : P6865276920681536651.Spec := by
  intro n
  simp only [A244048, Nat.add_sub_cancel]

end A244048

/-! ## A244048.P13307932677876504025

`A000217(n+1)-A123327(n+1)`
-/

namespace A244048.P13307932677876504025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A123327 (n + 1)

end

end A244048.P13307932677876504025

namespace A244048

/-- `A000217(n+1)-A123327(n+1)` -/
def P13307932677876504025.Spec : Prop :=
  ∀ n, P13307932677876504025.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P7647180814285482284

`A024916(n+1)-A000203(n+1)-A000217(n)`
-/

namespace A244048.P7647180814285482284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A000203 (n + 1) - A000217 n

end

end A244048.P7647180814285482284

namespace A244048

/-- `A024916(n+1)-A000203(n+1)-A000217(n)` -/
def P7647180814285482284.Spec : Prop :=
  ∀ n, P7647180814285482284.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P707234695159653876

`A000217(n+1)-A000203(n+1)-A004125(n+1)`
-/

namespace A244048.P707234695159653876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000203 (n + 1) - A004125 (n + 1)

end

end A244048.P707234695159653876

namespace A244048

/-- `A000217(n+1)-A000203(n+1)-A004125(n+1)` -/
def P707234695159653876.Spec : Prop :=
  ∀ n, P707234695159653876.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P13123579707605111119

`∑[∑{d}[n, #]-n]`
-/

namespace A244048.P13123579707605111119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244048.P13123579707605111119

namespace A244048

/-- `∑[∑{d}[n, #]-n]` -/
def P13123579707605111119.Spec : Prop :=
  ∀ n, P13123579707605111119.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P4960627438821558964

`∑[∑{d}[n, #%n]]`
-/

namespace A244048.P4960627438821558964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244048.P4960627438821558964

namespace A244048

/-- `∑[∑{d}[n, #%n]]` -/
def P4960627438821558964.Spec : Prop :=
  ∀ n, (P4960627438821558964.a n : ℤ) = A244048 (n + 1)

end A244048

/-! ## A244048.P1692208532518828049

`a(n-1)+∑{d}[n, #]-n` with `a(0)=0`
-/

namespace A244048.P1692208532518828049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ))

end

end A244048.P1692208532518828049

namespace A244048

/-- `a(n-1)+∑{d}[n, #]-n` -/
def P1692208532518828049.Spec : Prop :=
  ∀ n, P1692208532518828049.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P4102186138727936745

`a(n-1)-(n-∑{d}[n, #])` with `a(0)=0`
-/

namespace A244048.P4102186138727936745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A244048.P4102186138727936745

namespace A244048

/-- `a(n-1)-(n-∑{d}[n, #])` -/
def P4102186138727936745.Spec : Prop :=
  ∀ n, P4102186138727936745.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P3623165050116764127

`∑[n]-A111490(n)`
-/

namespace A244048.P3623165050116764127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A111490 n

end

end A244048.P3623165050116764127

namespace A244048

/-- `∑[n]-A111490(n)` -/
def P3623165050116764127.Spec : Prop :=
  ∀ n, P3623165050116764127.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P12239046942427572539

`A160664(n)-(∑[n]+1)`
-/

namespace A244048.P12239046942427572539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A244048.P12239046942427572539

namespace A244048

/-- `A160664(n)-(∑[n]+1)` -/
def P12239046942427572539.Spec : Prop :=
  ∀ n, P12239046942427572539.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P9794354584836391405

`∑[A039653(n)-n]+n`
-/

namespace A244048.P9794354584836391405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A244048.P9794354584836391405

namespace A244048

/-- `∑[A039653(n)-n]+n` -/
def P9794354584836391405.Spec : Prop :=
  ∀ n, P9794354584836391405.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P12854804651704371009

`a(n-1)+A001065(n)` with `a(0)=0`
-/

namespace A244048.P12854804651704371009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001065 n

end

end A244048.P12854804651704371009

namespace A244048

/-- `a(n-1)+A001065(n)` -/
def P12854804651704371009.Spec : Prop :=
  ∀ n, P12854804651704371009.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P12191040525011955757

`A332490(n+1)-(n+1)²`
-/

namespace A244048.P12191040525011955757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332490 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A244048.P12191040525011955757

namespace A244048

/-- `A332490(n+1)-(n+1)²` -/
def P12191040525011955757.Spec : Prop :=
  ∀ n, P12191040525011955757.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P2450142800192440660

`∑[n+1]-A123327(n+1)`
-/

namespace A244048.P2450142800192440660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A123327 (n + 1)

end

end A244048.P2450142800192440660

namespace A244048

/-- `∑[n+1]-A123327(n+1)` -/
def P2450142800192440660.Spec : Prop :=
  ∀ n, P2450142800192440660.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P2141444163877484088

`a(n-1)+A000203(n)-n` with `a(0)=0`
-/

namespace A244048.P2141444163877484088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000203 n - (n : ℤ))

end

end A244048.P2141444163877484088

namespace A244048

/-- `a(n-1)+A000203(n)-n` -/
def P2141444163877484088.Spec : Prop :=
  ∀ n, P2141444163877484088.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P691128553126187182

`A000203(2*n-n)-(n-a(n-1))` with `a(0)=0`
-/

namespace A244048.P691128553126187182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000203 (2 * n - n) - ((n : ℤ) - a (n - 1))

end

end A244048.P691128553126187182

namespace A244048

/-- `A000203(2*n-n)-(n-a(n-1))` -/
def P691128553126187182.Spec : Prop :=
  ∀ n, P691128553126187182.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P7794096737419375141

`a(n-1)-(n-A000203(C(n, n-1)))` with `a(0)=0`
-/

namespace A244048.P7794096737419375141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n : ℤ) - A000203 (Nat.choose n ((n : ℤ) - 1).toNat))

end

end A244048.P7794096737419375141

namespace A244048

/-- `a(n-1)-(n-A000203(C(n, n-1)))` -/
def P7794096737419375141.Spec : Prop :=
  ∀ n, P7794096737419375141.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P13415020019191915700

`A153485(A028310(n))`
-/

namespace A244048.P13415020019191915700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (A028310 n).toNat

end

end A244048.P13415020019191915700

namespace A244048

/-- `A153485(A028310(n))` -/
def P13415020019191915700.Spec : Prop :=
  ∀ n, P13415020019191915700.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P8457112134506132288

`A160664(n)%A000124(n)`
-/

namespace A244048.P8457112134506132288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160664 n) (A000124 n)

end

end A244048.P8457112134506132288

namespace A244048

/-- `A160664(n)%A000124(n)` -/
def P8457112134506132288.Spec : Prop :=
  ∀ n, P8457112134506132288.a n = A244048 (n + 1)

end A244048

/-! ## A244048.P1954260117772657741

`∑[A001065(A004277(n)-n)]`
-/

namespace A244048.P1954260117772657741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244048.P1954260117772657741

namespace A244048

/-- `∑[A001065(A004277(n)-n)]` -/
def P1954260117772657741.Spec : Prop :=
  ∀ n, P1954260117772657741.a n = A244048 (n + 1)

end A244048

/-!
# A244049: Sum of all proper divisors of all positive integers <= n.

The programs for A244049, the canonical program `A244049.P15221357512083652868` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244049 has offset 1).

The definition of A244049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244049.P15221357512083652868

`A153485(n+1)-n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244049

/-- `A153485(n+1)-n` -/
def P15221357512083652868.Spec : Prop :=
  ∀ n, P15221357512083652868.a n = A244049 (n + 1)

theorem P15221357512083652868.correct : P15221357512083652868.Spec := by
  intro n
  simp only [A244049, Nat.add_sub_cancel]

end A244049

/-! ## A244049.P13987491655876496225

`A161680(n)-A004125(n+1)`
-/

namespace A244049.P13987491655876496225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A004125 (n + 1)

end

end A244049.P13987491655876496225

namespace A244049

/-- `A161680(n)-A004125(n+1)` -/
def P13987491655876496225.Spec : Prop :=
  ∀ n, P13987491655876496225.a n = A244049 (n + 1)

theorem P13987491655876496225.correct : P13987491655876496225.Spec := by
  intro n
  simp only [A244049, Nat.add_sub_cancel, A244049.P13987491655876496225.a, A244049.P15221357512083652868.a, A004125, A004125.P17154347137318566864.a, A153485, A153485.P1399869421749084233.a, A161680, A161680.P17206074215489759881.a, A000217, A000217.P10269402890581615239.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244049

/-! ## A244049.P11617496140761138265

`A024916(n+1)-A034856(n+1)`
-/

namespace A244049.P11617496140761138265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A034856 (n + 1)

end

end A244049.P11617496140761138265

namespace A244049

/-- `A024916(n+1)-A034856(n+1)` -/
def P11617496140761138265.Spec : Prop :=
  ∀ n, P11617496140761138265.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P13446735634277127654

`A000290(n+1)-A034856(n+1)-A004125(n+1)`
-/

namespace A244049.P13446735634277127654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A034856 (n + 1) - A004125 (n + 1)

end

end A244049.P13446735634277127654

namespace A244049

/-- `A000290(n+1)-A034856(n+1)-A004125(n+1)` -/
def P13446735634277127654.Spec : Prop :=
  ∀ n, P13446735634277127654.a n = A244049 (n + 1)

theorem P13446735634277127654.correct : P13446735634277127654.Spec := by
  intro n
  simp only [A244049, Nat.add_sub_cancel, A244049.P13446735634277127654.a, A244049.P15221357512083652868.a, A000290, A000290.P12206242496348924484.a, A004125, A004125.P17154347137318566864.a, A034856, A034856.P1676305901281367657.a, A153485, A153485.P1399869421749084233.a, A000217, A000217.P10269402890581615239.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244049

/-! ## A244049.P18072858387523708060

`∑[∑{d}[n+1, #]-(n+2)]+1`
-/

namespace A244049.P18072858387523708060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244049.P18072858387523708060

namespace A244049

/-- `∑[∑{d}[n+1, #]-(n+2)]+1` -/
def P18072858387523708060.Spec : Prop :=
  ∀ n, P18072858387523708060.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P2054470009123221076

`∑[∑{d}[n+1, #]]%(∑[n+1]+n)`
-/

namespace A244049.P2054470009123221076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f3 j + n)

end

end A244049.P2054470009123221076

namespace A244049

/-- `∑[∑{d}[n+1, #]]%(∑[n+1]+n)` -/
def P2054470009123221076.Spec : Prop :=
  ∀ n, (P2054470009123221076.a n : ℤ) = A244049 (n + 1)

end A244049

/-! ## A244049.P18151033567211061244

`∑{d}[n+1, #]+a(n-1)-(n+2)` with `a(0)=0`
-/

namespace A244049.P18151033567211061244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (a (n - 1) - (n + 2 : ℤ))

end

end A244049.P18151033567211061244

namespace A244049

/-- `∑{d}[n+1, #]+a(n-1)-(n+2)` -/
def P18151033567211061244.Spec : Prop :=
  ∀ n, P18151033567211061244.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P3315890219694162457

`∑[A048050(n+1)]`
-/

namespace A244049.P3315890219694162457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244049.P3315890219694162457

namespace A244049

/-- `∑[A048050(n+1)]` -/
def P3315890219694162457.Spec : Prop :=
  ∀ n, P3315890219694162457.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P13147857134542874460

`∑[A173455(n+1)-1]`
-/

namespace A244049.P13147857134542874460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244049.P13147857134542874460

namespace A244049

/-- `∑[A173455(n+1)-1]` -/
def P13147857134542874460.Spec : Prop :=
  ∀ n, P13147857134542874460.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P12140031027056360371

`n²-A049766(n+1)`
-/

namespace A244049.P12140031027056360371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A049766 (n + 1)

end

end A244049.P12140031027056360371

namespace A244049

/-- `n²-A049766(n+1)` -/
def P12140031027056360371.Spec : Prop :=
  ∀ n, P12140031027056360371.a n = A244049 (n + 1)

theorem P12140031027056360371.correct : P12140031027056360371.Spec := by
  intro n
  simp only [A244049, Nat.add_sub_cancel, A244049.P12140031027056360371.a, A244049.P15221357512083652868.a, A049766, A049766.P13668387565428548660.a, A153485, A153485.P1399869421749084233.a, A000217, A000217.P10269402890581615239.a, A004125, A004125.P17154347137318566864.a, A161680, A161680.P17206074215489759881.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244049

/-! ## A244049.P2933081731742701150

`∑[A001065(n+1)]-n`
-/

namespace A244049.P2933081731742701150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A244049.P2933081731742701150

namespace A244049

/-- `∑[A001065(n+1)]-n` -/
def P2933081731742701150.Spec : Prop :=
  ∀ n, P2933081731742701150.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P15795111313728524172

`∑[A033880(n+1)+n]+1`
-/

namespace A244049.P15795111313728524172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244049.P15795111313728524172

namespace A244049

/-- `∑[A033880(n+1)+n]+1` -/
def P15795111313728524172.Spec : Prop :=
  ∀ n, P15795111313728524172.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P15854318090783231768

`∑[n-A033879(n+1)]+1`
-/

namespace A244049.P15854318090783231768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244049.P15854318090783231768

namespace A244049

/-- `∑[n-A033879(n+1)]+1` -/
def P15854318090783231768.Spec : Prop :=
  ∀ n, P15854318090783231768.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P15196496839998453444

`∑[n]+1-A111490(n+1)`
-/

namespace A244049.P15196496839998453444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A111490 (n + 1))

end

end A244049.P15196496839998453444

namespace A244049

/-- `∑[n]+1-A111490(n+1)` -/
def P15196496839998453444.Spec : Prop :=
  ∀ n, P15196496839998453444.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P6785424117109974352

`A160664(n+1)-∑[n+2]`
-/

namespace A244049.P6785424117109974352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244049.P6785424117109974352

namespace A244049

/-- `A160664(n+1)-∑[n+2]` -/
def P6785424117109974352.Spec : Prop :=
  ∀ n, P6785424117109974352.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P16638604242568008009

`∑[A091818(n+1)/2]-n`
-/

namespace A244049.P16638604242568008009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A244049.P16638604242568008009

namespace A244049

/-- `∑[A091818(n+1)/2]-n` -/
def P16638604242568008009.Spec : Prop :=
  ∀ n, P16638604242568008009.a n = (A244049 (n + 1) : ℚ)

end A244049

/-! ## A244049.P4126864968672378625

`∑[A237588(n+1)]+C(n, 2)`
-/

namespace A244049.P4126864968672378625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℤ)

end

end A244049.P4126864968672378625

namespace A244049

/-- `∑[A237588(n+1)]+C(n, 2)` -/
def P4126864968672378625.Spec : Prop :=
  ∀ n, P4126864968672378625.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P10457304784945589067

`∑[n-A235796(n+1)]-n`
-/

namespace A244049.P10457304784945589067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A244049.P10457304784945589067

namespace A244049

/-- `∑[n-A235796(n+1)]-n` -/
def P10457304784945589067.Spec : Prop :=
  ∀ n, P10457304784945589067.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P6197263353398340638

`∑[A000203(n+1)-(n+2)]+1`
-/

namespace A244049.P6197263353398340638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244049.P6197263353398340638

namespace A244049

/-- `∑[A000203(n+1)-(n+2)]+1` -/
def P6197263353398340638.Spec : Prop :=
  ∀ n, P6197263353398340638.a n = A244049 (n + 1)

end A244049

/-! ## A244049.P11714017686576293368

`∑[∑{d}[n+1, #-A000010(#)]]-n`
-/

namespace A244049.P11714017686576293368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - A000010 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A244049.P11714017686576293368

namespace A244049

/-- `∑[∑{d}[n+1, #-A000010(#)]]-n` -/
def P11714017686576293368.Spec : Prop :=
  ∀ n, P11714017686576293368.a n = A244049 (n + 1)

end A244049

/-!
# A244050: Partial sums of A243980.

The programs for A244050, the canonical program `A244050.P4388915496307742353` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244050 has offset 1).

The definition of A244050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244050.P4388915496307742353

`4*A175254(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244050

/-- `4*A175254(n+1)` -/
def P4388915496307742353.Spec : Prop :=
  ∀ n, P4388915496307742353.a n = A244050 (n + 1)

theorem P4388915496307742353.correct : P4388915496307742353.Spec := by
  intro n
  simp only [A244050, Nat.add_sub_cancel]

end A244050

/-! ## A244050.P16578722738270962608

`∑[∑[4*∑{d}[n+1, #]]]`
-/

namespace A244050.P16578722738270962608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P16578722738270962608

namespace A244050

/-- `∑[∑[4*∑{d}[n+1, #]]]` -/
def P16578722738270962608.Spec : Prop :=
  ∀ n, (P16578722738270962608.a n : ℤ) = A244050 (n + 1)

end A244050

/-! ## A244050.P3617113833439637678

`∑[A243980(n+1)]`
-/

namespace A244050.P3617113833439637678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P3617113833439637678

namespace A244050

/-- `∑[A243980(n+1)]` -/
def P3617113833439637678.Spec : Prop :=
  ∀ n, P3617113833439637678.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P3035849999065818273

`∑[∑[A239050(n+1)]]`
-/

namespace A244050.P3035849999065818273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P3035849999065818273

namespace A244050

/-- `∑[∑[A239050(n+1)]]` -/
def P3035849999065818273.Spec : Prop :=
  ∀ n, P3035849999065818273.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P3951956004187659920

`∑[2*A327329(n+1)]`
-/

namespace A244050.P3951956004187659920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P3951956004187659920

namespace A244050

/-- `∑[2*A327329(n+1)]` -/
def P3951956004187659920.Spec : Prop :=
  ∀ n, P3951956004187659920.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P3891943706134526431

`∑[4*A024916(n+1)]`
-/

namespace A244050.P3891943706134526431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P3891943706134526431

namespace A244050

/-- `∑[4*A024916(n+1)]` -/
def P3891943706134526431.Spec : Prop :=
  ∀ n, P3891943706134526431.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P14391433034020386318

`∑[∑[2*A074400(n+1)]]`
-/

namespace A244050.P14391433034020386318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P14391433034020386318

namespace A244050

/-- `∑[∑[2*A074400(n+1)]]` -/
def P14391433034020386318.Spec : Prop :=
  ∀ n, P14391433034020386318.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P15944175438966211602

`∑[∑[A319528(n+1)/2]]`
-/

namespace A244050.P15944175438966211602
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P15944175438966211602

namespace A244050

/-- `∑[∑[A319528(n+1)/2]]` -/
def P15944175438966211602.Spec : Prop :=
  ∀ n, P15944175438966211602.a n = (A244050 (n + 1) : ℚ)

end A244050

/-! ## A244050.P4974981864752670536

`∑[∑[4*A000203(n+1)]]`
-/

namespace A244050.P4974981864752670536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P4974981864752670536

namespace A244050

/-- `∑[∑[4*A000203(n+1)]]` -/
def P4974981864752670536.Spec : Prop :=
  ∀ n, P4974981864752670536.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P17292534873862795018

`∑[∑[2*A326136(2*(n+1))]]`
-/

namespace A244050.P17292534873862795018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326136 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P17292534873862795018

namespace A244050

/-- `∑[∑[2*A326136(2*(n+1))]]` -/
def P17292534873862795018.Spec : Prop :=
  ∀ n, P17292534873862795018.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P6757927415797053163

`∑[4*∑[A001065(n+1)+1+n]]`
-/

namespace A244050.P6757927415797053163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P6757927415797053163

namespace A244050

/-- `∑[4*∑[A001065(n+1)+1+n]]` -/
def P6757927415797053163.Spec : Prop :=
  ∀ n, P6757927415797053163.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P9813651345906709965

`∑[4*∑[A155085(n+1)-(n+1)]]`
-/

namespace A244050.P9813651345906709965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P9813651345906709965

namespace A244050

/-- `∑[4*∑[A155085(n+1)-(n+1)]]` -/
def P9813651345906709965.Spec : Prop :=
  ∀ n, P9813651345906709965.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P13948364572470696443

`4*(A123329(n)+A000292(n+1))`
-/

namespace A244050.P13948364572470696443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A123329 n + A000292 (n + 1))

end

end A244050.P13948364572470696443

namespace A244050

/-- `4*(A123329(n)+A000292(n+1))` -/
def P13948364572470696443.Spec : Prop :=
  ∀ n, P13948364572470696443.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P16468759027429203573

`∑[∑[A074400(n+1)²/A000203(n+1)]]`
-/

namespace A244050.P16468759027429203573
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) ^ 2 : ℚ) / (A000203 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P16468759027429203573

namespace A244050

/-- `∑[∑[A074400(n+1)²/A000203(n+1)]]` -/
def P16468759027429203573.Spec : Prop :=
  ∀ n, P16468759027429203573.a n = (A244050 (n + 1) : ℚ)

end A244050

/-! ## A244050.P16521055064698388102

`∑[4*∑[A344765(n+1)+A011772(n+1)]]`
-/

namespace A244050.P16521055064698388102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1) + A011772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P16521055064698388102

namespace A244050

/-- `∑[4*∑[A344765(n+1)+A011772(n+1)]]` -/
def P16521055064698388102.Spec : Prop :=
  ∀ n, P16521055064698388102.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P42850324797364702

`∑[2*A271342(2*(n+1))]`
-/

namespace A244050.P42850324797364702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271342 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P42850324797364702

namespace A244050

/-- `∑[2*A271342(2*(n+1))]` -/
def P42850324797364702.Spec : Prop :=
  ∀ n, P42850324797364702.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P3738837742257834652

`∑[∑[2*A146076(2*(n+1))]]`
-/

namespace A244050.P3738837742257834652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146076 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P3738837742257834652

namespace A244050

/-- `∑[∑[2*A146076(2*(n+1))]]` -/
def P3738837742257834652.Spec : Prop :=
  ∀ n, P3738837742257834652.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P17121239607915326982

`∑[∑[A008574(A000203(n+1))]]`
-/

namespace A244050.P17121239607915326982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000203 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P17121239607915326982

namespace A244050

/-- `∑[∑[A008574(A000203(n+1))]]` -/
def P17121239607915326982.Spec : Prop :=
  ∀ n, P17121239607915326982.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P5745517214181071143

`∑[4*∑[A323643(n+1)+A207376(n+1)]]`
-/

namespace A244050.P5745517214181071143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323643 (n + 1) + A207376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P5745517214181071143

namespace A244050

/-- `∑[4*∑[A323643(n+1)+A207376(n+1)]]` -/
def P5745517214181071143.Spec : Prop :=
  ∀ n, P5745517214181071143.a n = A244050 (n + 1)

end A244050

/-! ## A244050.P5052736459235591794

`∑[A016825(∑[A000203(n+1)])-2]`
-/

namespace A244050.P5052736459235591794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244050.P5052736459235591794

namespace A244050

/-- `∑[A016825(∑[A000203(n+1)])-2]` -/
def P5052736459235591794.Spec : Prop :=
  ∀ n, P5052736459235591794.a n = A244050 (n + 1)

end A244050

/-!
# A244051: Triangle read by rows in which row n lists the parts of the partitions of n into equal parts, in nonincreasing order.

The programs for A244051, there is no canonical definition to state claims against.
-/

/-! ## A244051.P3871864319283024980

`gcd(A045917(A115921(n+4)), A069623(n+4))`
-/

namespace A244051.P3871864319283024980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045917 (A115921 (n + 4)).toNat) (A069623 (n + 4))

end

end A244051.P3871864319283024980

/-! ## A244051.P7505679070636259093

`gcd(A007318(n+3), A007326(A008586(n)))`
-/

namespace A244051.P7505679070636259093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (n + 3)) (A007326 (A008586 n).toNat)

end

end A244051.P7505679070636259093

/-! ## A244051.P9886994116575197681

`gcd(A225673(A000045(n+2)+2), A225687(n+1))`
-/

namespace A244051.P9886994116575197681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225673 (A000045 (n + 2) + 2).toNat) (A225687 (n + 1))

end

end A244051.P9886994116575197681

/-! ## A244051.P436458134458567949

`A228351(A305889(n)+A010553(n+1))`
-/

namespace A244051.P436458134458567949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A305889 n + A010553 (n + 1)).toNat

end

end A244051.P436458134458567949

/-!
# A244052: Highly regular numbers a(n) defined as positions of records in A010846: a(1) = 1 and a(n) is the least number k > a(n-1) such that A010846(k) > A010846(a(n-1)).

The programs for A244052, there is no canonical definition to state claims against.
-/

/-! ## A244052.P3943478663312809193

`A384004(A244053(n+1))`
-/

namespace A244052.P3943478663312809193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384004 (A244053 (n + 1)).toNat

end

end A244052.P3943478663312809193

/-! ## A244052.P13672000866263976439

`A322164(n+1)-C(n, n²)`
-/

namespace A244052.P13672000866263976439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322164 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A244052.P13672000866263976439

/-! ## A244052.P14764519845488040169

`A322164(n+1)-log2(A141044(n))`
-/

namespace A244052.P14764519845488040169
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322164 (n + 1) : ℝ) - Real.logb 2 (A141044 n : ℝ)

end

end A244052.P14764519845488040169

/-! ## A244052.P14720552291180997601

`A322164(n+1)-A019590(n+1)`
-/

namespace A244052.P14720552291180997601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322164 (n + 1) - A019590 (n + 1)

end

end A244052.P14720552291180997601

/-! ## A244052.P10030047873440630538

`A322164(n+1)-char[1-A000045(n)]`
-/

namespace A244052.P10030047873440630538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322164 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244052.P10030047873440630538

/-!
# A244053: Let m = A244052(n) = n-th highly regular number; a(n) = number of numbers r <= m, all of whose prime divisors p also divide m.

The programs for A244053, there is no canonical definition to state claims against.
-/

/-! ## A244053.P12906146520818032073

`record[A010846(n+1)]`
-/

namespace A244053.P12906146520818032073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244053.P12906146520818032073

/-! ## A244053.P9321493416784983278

`record[1-A010847(n+1)+n]`
-/

namespace A244053.P9321493416784983278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010847 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244053.P9321493416784983278

/-! ## A244053.P6494189458702565883

`A010846(A244052(n+1))`
-/

namespace A244053.P6494189458702565883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A244052 (n + 1)).toNat

end

end A244053.P6494189458702565883

/-! ## A244053.P10944484214728728004

`record[A243822(n+1)+A000005(n+1)]`
-/

namespace A244053.P10944484214728728004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244053.P10944484214728728004

/-! ## A244053.P18164924625538883020

`A010846(A322164(n+1)-C(n, n²))`
-/

namespace A244053.P18164924625538883020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A322164 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A244053.P18164924625538883020

/-!
# A244056: Maximum score achievable in the 2048 game on an n X n grid.

The programs for A244056, the canonical program `A244056.P5323418012458188344` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244056 has offset 1).

The definition of A244056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244056.P5323418012458188344

`4*((n+1)²-1)*(2^(n+1)²-1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244056

/-- `4*((n+1)²-1)*(2^(n+1)²-1)` -/
def P5323418012458188344.Spec : Prop :=
  ∀ n, P5323418012458188344.a n = A244056 (n + 1)

theorem P5323418012458188344.correct : P5323418012458188344.Spec := by
  intro n
  simp only [A244056, Nat.add_sub_cancel]

end A244056

/-! ## A244056.P12857228094634935215

`∑[4*Δ[A188716(n*(n+1)-n)]]`
-/

namespace A244056.P12857228094634935215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 (n * (n + 1) - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244056.P12857228094634935215

namespace A244056

/-- `∑[4*Δ[A188716(n*(n+1)-n)]]` -/
def P12857228094634935215.Spec : Prop :=
  ∀ n, P12857228094634935215.a n = A244056 (n + 1)

end A244056

/-!
# A244057: Semiprimes which are concatenation of two consecutive primes.

The programs for A244057, there is no canonical definition to state claims against.
-/

/-! ## A244057.P15326193720883047970

`record[A055615(A045533(n+2))]`
-/

namespace A244057.P15326193720883047970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A045533 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244057.P15326193720883047970

/-! ## A244057.P12475455139068083478

`filter[A045533(n+1), A064911(#)]`
-/

namespace A244057.P12475455139068083478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A244057.P12475455139068083478

/-! ## A244057.P9603787114984622817

`filter[A045533(n+1), A065043(#)]`
-/

namespace A244057.P9603787114984622817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A244057.P9603787114984622817

/-! ## A244057.P14387566029331158823

`filter[A045533(n+1), A280710(#)]`
-/

namespace A244057.P14387566029331158823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A244057.P14387566029331158823

/-! ## A244057.P2924201488829704510

`filter[A045533(n+1), A340370(#)]`
-/

namespace A244057.P2924201488829704510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A244057.P2924201488829704510

/-!
# A244058: n-th term of the 'Reverse and Add!' sequence starting with n.

The programs for A244058, there is no canonical definition to state claims against.
-/

/-! ## A244058.P9472440534302241789

`A243238(∑[4*n]+1)`
-/

namespace A244058.P9472440534302241789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244058.P9472440534302241789

/-! ## A244058.P14269406385251076423

`lcm(A033999(n), A243238(A001844(n)))`
-/

namespace A244058.P14269406385251076423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243238 (A001844 n).toNat)

end

end A244058.P14269406385251076423

/-! ## A244058.P8959475761126547137

`A007318(∑[n])*A243238(A001844(n))`
-/

namespace A244058.P8959475761126547137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A243238 (A001844 n).toNat

end

end A244058.P8959475761126547137

/-! ## A244058.P17763645795966008703

`A243238(A001844(n))+A000007(n+1)`
-/

namespace A244058.P17763645795966008703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A001844 n).toNat + A000007 (n + 1)

end

end A244058.P17763645795966008703

/-! ## A244058.P17671476816827274438

`A033999(2*n)*A243238(A001844(n))`
-/

namespace A244058.P17671476816827274438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A243238 (A001844 n).toNat

end

end A244058.P17671476816827274438

/-! ## A244058.P15346609216456398673

`A243238(A001844(n))%A225022(n+1)`
-/

namespace A244058.P15346609216456398673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243238 (A001844 n).toNat) (A225022 (n + 1))

end

end A244058.P15346609216456398673

/-! ## A244058.P3715281272070403693

`A243238(A001844(n))/(A000027(n+1)-n)`
-/

namespace A244058.P3715281272070403693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243238 (A001844 n).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A244058.P3715281272070403693

/-! ## A244058.P14816346534579701267

`floor(A243238(A001844(n))+(n+1)/A000040(n+1))`
-/

namespace A244058.P14816346534579701267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243238 (A001844 n).toNat : ℚ) + (n + 1 : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A244058.P14816346534579701267

/-! ## A244058.P16647881955190875665

`A001222(A000057(n+1))*A243238(A001844(n))`
-/

namespace A244058.P16647881955190875665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000057 (n + 1)).toNat * A243238 (A001844 n).toNat

end

end A244058.P16647881955190875665

/-!
# A244060: Sum of digits of (2^n)!.

The programs for A244060, there is no canonical definition to state claims against.
-/

/-! ## A244060.P10616165424603914336

`A004152(2^n)`
-/

namespace A244060.P10616165424603914336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (2 ^ n)

end

end A244060.P10616165424603914336

/-! ## A244060.P16778175412393260965

`record[A004152(A059148(n))]`
-/

namespace A244060.P16778175412393260965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (A059148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244060.P16778175412393260965

/-! ## A244060.P7134334346692229431

`record[A004152(A059268(n))]`
-/

namespace A244060.P7134334346692229431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244060.P7134334346692229431

/-! ## A244060.P5766092073722725960

`record[A004152(A072345(n))]`
-/

namespace A244060.P5766092073722725960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (A072345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244060.P5766092073722725960

/-! ## A244060.P13325172135549221654

`record[A004152(A077957(n))]`
-/

namespace A244060.P13325172135549221654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (A077957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244060.P13325172135549221654

/-!
# A244061: The number of digits of (2^n)!.

The programs for A244061, there is no canonical definition to state claims against.
-/

/-! ## A244061.P12692059154684794164

`A034886(2^n)`
-/

namespace A244061.P12692059154684794164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (2 ^ n)

end

end A244061.P12692059154684794164

/-! ## A244061.P6191551467744885443

`and(-1, A034886(A000079(n)))`
-/

namespace A244061.P6191551467744885443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A034886 (A000079 n).toNat)

end

end A244061.P6191551467744885443

/-! ## A244061.P2661179091452063155

`Δ[A034886(A011782(n))+a(n-1)]` with `a(0)=0`
-/

namespace A244061.P2661179091452063155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A034886 (A011782 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244061.P2661179091452063155

/-! ## A244061.P5094601807743822969

`A034886(A000079(n))+A025443(n)`
-/

namespace A244061.P5094601807743822969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A000079 n).toNat + A025443 n

end

end A244061.P5094601807743822969

/-! ## A244061.P3981863667586159329

`A105517(n)+A034886(A000079(n))`
-/

namespace A244061.P3981863667586159329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 n + A034886 (A000079 n).toNat

end

end A244061.P3981863667586159329

/-!
# A244062: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (2*A(x)^(2*n) - A(x)^n).

The programs for A244062, there is no canonical definition to state claims against.
-/

/-! ## A244062.P15189358307831497401

`A110655(A006964(n+1))`
-/

namespace A244062.P15189358307831497401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A006964 (n + 1)).toNat

end

end A244062.P15189358307831497401

/-! ## A244062.P17325695915072386695

`A008621(A006964(n+1)-1)`
-/

namespace A244062.P17325695915072386695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A006964 (n + 1) - 1).toNat

end

end A244062.P17325695915072386695

/-!
# A244063: Number of prime factors (with multiplicity) of the number of distinct prime factors of n; a(n) = Omega(omega(n)).

The programs for A244063, the canonical program `A244063.P5296313231182627666` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244063 has offset 2).

The definition of A244063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001222(A001221(n+2))` (program `A244063.P5296313231182627666`, by `A244063.P5296313231182627666.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244063.P5296313231182627666

`A001222(A001221(n+2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244063

/-- `A001222(A001221(n+2))` -/
def P5296313231182627666.Spec : Prop :=
  ∀ n, P5296313231182627666.a n = A244063 (n + 2)

theorem P5296313231182627666.correct : P5296313231182627666.Spec := by
  intro n
  simp only [A244063, Nat.add_sub_cancel]

end A244063

/-! ## A244063.P14312724297210569980

`A031286(xor(2, A074816(n+2)))`
-/

namespace A244063.P14312724297210569980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (Int.xor 2 (A074816 (n + 2))).toNat

end

end A244063.P14312724297210569980

namespace A244063

/-- `A031286(xor(2, A074816(n+2)))` -/
def P14312724297210569980.Spec : Prop :=
  ∀ n, P14312724297210569980.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P13433393225383518229

`A001222(∑{p}[n+2, A001222(#)])`
-/

namespace A244063.P13433393225383518229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A244063.P13433393225383518229

namespace A244063

/-- `A001222(∑{p}[n+2, A001222(#)])` -/
def P13433393225383518229.Spec : Prop :=
  ∀ n, P13433393225383518229.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P7562982805262292148

`A001222(A001222(∏{p}[n+2, #]))`
-/

namespace A244063.P7562982805262292148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A244063.P7562982805262292148

namespace A244063

/-- `A001222(A001222(∏{p}[n+2, #]))` -/
def P7562982805262292148.Spec : Prop :=
  ∀ n, P7562982805262292148.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P8626141462390649899

`A324190(A324190(∏{p}[n+2, #]))`
-/

namespace A244063.P8626141462390649899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (A324190 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A244063.P8626141462390649899

namespace A244063

/-- `A324190(A324190(∏{p}[n+2, #]))` -/
def P8626141462390649899.Spec : Prop :=
  ∀ n, P8626141462390649899.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P10036488120506501580

`abs(1-A057555(A000005(∏{p}[n+2, #])+1))`
-/

namespace A244063.P10036488120506501580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A057555 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1).toNat|

end

end A244063.P10036488120506501580

namespace A244063

/-- `abs(1-A057555(A000005(∏{p}[n+2, #])+1))` -/
def P10036488120506501580.Spec : Prop :=
  ∀ n, P10036488120506501580.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P11757591902712555721

`A001221(A309307(n+2))`
-/

namespace A244063.P11757591902712555721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A309307 (n + 2)).toNat

end

end A244063.P11757591902712555721

namespace A244063

/-- `A001221(A309307(n+2))` -/
def P11757591902712555721.Spec : Prop :=
  ∀ n, P11757591902712555721.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P12392893279069556308

`A001221(A325446(n+2))`
-/

namespace A244063.P12392893279069556308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325446 (n + 2)).toNat

end

end A244063.P12392893279069556308

namespace A244063

/-- `A001221(A325446(n+2))` -/
def P12392893279069556308.Spec : Prop :=
  ∀ n, P12392893279069556308.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P9956620421361734123

`A001222(Δ[A013939(n+1)])`
-/

namespace A244063.P9956620421361734123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A244063.P9956620421361734123

namespace A244063

/-- `A001222(Δ[A013939(n+1)])` -/
def P9956620421361734123.Spec : Prop :=
  ∀ n, P9956620421361734123.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P17742609204096017686

`A005171(A295557(n+2))`
-/

namespace A244063.P17742609204096017686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A295557 (n + 2)).toNat

end

end A244063.P17742609204096017686

namespace A244063

/-- `A005171(A295557(n+2))` -/
def P17742609204096017686.Spec : Prop :=
  ∀ n, P17742609204096017686.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P4579952218165965695

`A333487(A333175(n+2)²)`
-/

namespace A244063.P4579952218165965695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A333175 (n + 2) ^ 2).toNat

end

end A244063.P4579952218165965695

namespace A244063

/-- `A333487(A333175(n+2)²)` -/
def P4579952218165965695.Spec : Prop :=
  ∀ n, P4579952218165965695.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P3683754955568702347

`(7%A001221(n+2))^A000032(2*n)`
-/

namespace A244063.P3683754955568702347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 7 (A001221 (n + 2)) : ℚ) ^ (A000032 (2 * n) : ℤ)

end

end A244063.P3683754955568702347

namespace A244063

/-- `(7%A001221(n+2))^A000032(2*n)` -/
def P3683754955568702347.Spec : Prop :=
  ∀ n, P3683754955568702347.a n = (A244063 (n + 2) : ℚ)

end A244063

/-! ## A244063.P490270837805177651

`A252735(A284010(A003961(A046523(n+2))))`
-/

namespace A244063.P490270837805177651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A284010 (A003961 (A046523 (n + 2)).toNat).toNat).toNat

end

end A244063.P490270837805177651

namespace A244063

/-- `A252735(A284010(A003961(A046523(n+2))))` -/
def P490270837805177651.Spec : Prop :=
  ∀ n, P490270837805177651.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P3441956897220222224

`A104189(n+1)%A377282(n+1)`
-/

namespace A244063.P3441956897220222224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104189 (n + 1)) (A377282 (n + 1))

end

end A244063.P3441956897220222224

namespace A244063

/-- `A104189(n+1)%A377282(n+1)` -/
def P3441956897220222224.Spec : Prop :=
  ∀ n, P3441956897220222224.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P16846115373948437084

`A020503(n)%A206824(n+2)`
-/

namespace A244063.P16846115373948437084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020503 n) (A206824 (n + 2))

end

end A244063.P16846115373948437084

namespace A244063

/-- `A020503(n)%A206824(n+2)` -/
def P16846115373948437084.Spec : Prop :=
  ∀ n, P16846115373948437084.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P8600313164928193935

`A001221(A126120(2*n+1)+A001221(n+2))`
-/

namespace A244063.P8600313164928193935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A126120 (2 * n + 1) + A001221 (n + 2)).toNat

end

end A244063.P8600313164928193935

namespace A244063

/-- `A001221(A126120(2*n+1)+A001221(n+2))` -/
def P8600313164928193935.Spec : Prop :=
  ∀ n, P8600313164928193935.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P5530675408612690145

`A172196(n)%A377282(n+1)`
-/

namespace A244063.P5530675408612690145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172196 n) (A377282 (n + 1))

end

end A244063.P5530675408612690145

namespace A244063

/-- `A172196(n)%A377282(n+1)` -/
def P5530675408612690145.Spec : Prop :=
  ∀ n, P5530675408612690145.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P9520351101047590465

`A001221(A126869(2*n+1)+A001221(n+2))`
-/

namespace A244063.P9520351101047590465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A126869 (2 * n + 1) + A001221 (n + 2)).toNat

end

end A244063.P9520351101047590465

namespace A244063

/-- `A001221(A126869(2*n+1)+A001221(n+2))` -/
def P9520351101047590465.Spec : Prop :=
  ∀ n, P9520351101047590465.a n = A244063 (n + 2)

end A244063

/-! ## A244063.P3898355591166318949

`C(A046212(A014963(2*n+1)), A014963(n+2))`
-/

namespace A244063.P3898355591166318949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046212 (A014963 (2 * n + 1)).toNat).toNat (A014963 (n + 2)).toNat

end

end A244063.P3898355591166318949

namespace A244063

/-- `C(A046212(A014963(2*n+1)), A014963(n+2))` -/
def P3898355591166318949.Spec : Prop :=
  ∀ n, (P3898355591166318949.a n : ℤ) = A244063 (n + 2)

end A244063

/-! ## A244063.P15268045606633968578

`A001221(A001221(n+2)*A287197(2*n))`
-/

namespace A244063.P15268045606633968578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001221 (n + 2) * A287197 (2 * n)).toNat

end

end A244063.P15268045606633968578

namespace A244063

/-- `A001221(A001221(n+2)*A287197(2*n))` -/
def P15268045606633968578.Spec : Prop :=
  ∀ n, P15268045606633968578.a n = A244063 (n + 2)

end A244063

/-!
# A244065: Pseudoprimes to base 3 that are not squarefree.

The programs for A244065, there is no canonical definition to state claims against.
-/

/-! ## A244065.P18354067332906382696

`∩[A005935(n+1), A306448(n+1)]`
-/

namespace A244065.P18354067332906382696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P18354067332906382696

/-! ## A244065.P8390303408170883119

`∩[A005935(n+1), A306452(n+1)]`
-/

namespace A244065.P8390303408170883119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P8390303408170883119

/-! ## A244065.P16827964997760754635

`∩[A306448(n+1), A306452(n+1)]`
-/

namespace A244065.P16827964997760754635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P16827964997760754635

/-! ## A244065.P14890821349676475243

`∩[A122780(n+1), A306448(n+1)]`
-/

namespace A244065.P14890821349676475243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P14890821349676475243

/-! ## A244065.P14870247974548924866

`∩[A263239(n+1), A306452(n+1)]`
-/

namespace A244065.P14870247974548924866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P14870247974548924866

/-! ## A244065.P3734375122604732477

`∩[A020138(n+1), A306452(n+1)]`
-/

namespace A244065.P3734375122604732477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P3734375122604732477

/-! ## A244065.P3253782315852188061

`∩[A153514(n+1), A306448(n+1)]`
-/

namespace A244065.P3253782315852188061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P3253782315852188061

/-! ## A244065.P7123604787533630738

`∩[A020209(n+1), A306452(n+1)]`
-/

namespace A244065.P7123604787533630738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P7123604787533630738

/-! ## A244065.P12556968236074121460

`∩[A020155(n+1), A306448(n+1)]`
-/

namespace A244065.P12556968236074121460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P12556968236074121460

/-! ## A244065.P15083456545794403654

`∩[A020155(n+1), A306452(n+1)]`
-/

namespace A244065.P15083456545794403654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244065.P15083456545794403654

/-!
# A244066: Arithmetic mean of two consecutive twin primes that is also the arithmetic mean of two consecutive non-twin primes.

The programs for A244066, the canonical program `A244066.P12419883921865423903` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244066 has offset 1).

The definition of A244066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244066.P12419883921865423903

`∩[A162734(n+1), A163656(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A244066

/-- `∩[A162734(n+1), A163656(n+1)]` -/
def P12419883921865423903.Spec : Prop :=
  ∀ n, (P12419883921865423903.a n : ℤ) = A244066 (n + 1)

theorem P12419883921865423903.correct : P12419883921865423903.Spec := by
  intro n
  simp only [A244066, Nat.add_sub_cancel]

end A244066

/-!
# A244070: Odd integers n such that for every integer k>0, n*2^k-1 has a divisor in the set {3, 5, 7, 13, 17, 241}.

The programs for A244070, there is no canonical definition to state claims against.
-/

/-! ## A244070.P1540301265640670616

`A101036(lt[A101042(n+1), A101064(n+2)])`
-/

namespace A244070.P1540301265640670616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101064 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A244070.P1540301265640670616

/-! ## A244070.P8485853419446061854

`A101036(A382441(n+1)%A195746(2*(n+1)))`
-/

namespace A244070.P8485853419446061854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (Int.tmod (A382441 (n + 1)) (A195746 (2 * (n + 1)))).toNat

end

end A244070.P8485853419446061854

/-! ## A244070.P7673404495905091635

`A101036(A382441(n+1))%A244545(3*n+5)`
-/

namespace A244070.P7673404495905091635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101036 (A382441 (n + 1)).toNat) (A244545 (3 * n + 5))

end

end A244070.P7673404495905091635

/-!
# A244075: Numbers of nonprime digits between successive single-digit primes in the decimal expansion of e (A001113).

The programs for A244075, there is no canonical definition to state claims against.
-/

/-! ## A244075.P13731719606803828536

`Δ[A073302(n+1)]-1`
-/

namespace A244075.P13731719606803828536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A244075.P13731719606803828536

/-! ## A244075.P17600384710535354881

`A002837(Δ[A073302(n+1)])`
-/

namespace A244075.P17600384710535354881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A244075.P17600384710535354881

/-! ## A244075.P6838643193212535754

`A023443(Δ[A073302(n+1)])`
-/

namespace A244075.P6838643193212535754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A244075.P6838643193212535754

/-! ## A244075.P17845784955429843942

`Δ[A073302(n+1)+A022958(n)]`
-/

namespace A244075.P17845784955429843942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1) + A022958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244075.P17845784955429843942

/-! ## A244075.P8504330110844964082

`A057428(3*n+4)+Δ[A073302(n+1)]`
-/

namespace A244075.P8504330110844964082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 4) + (f1 (n + 1) - f1 n)

end

end A244075.P8504330110844964082

/-!
# A244078: Consider a number of k digits n = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + ... + d_(2)*10 + d_(1). Sequence lists the numbers n such that n' = Sum_{i=1..k-1}{Sum_{j=1..i}{d_(j)*10^(j-1)}}', where n' is the arithmetic derivative of n (see example below).

The programs for A244078, there is no canonical definition to state claims against.
-/

/-! ## A244078.P3302360678779439644

`∩[p?[A057854(n+1)], A240894(n+1)]`
-/

namespace A244078.P3302360678779439644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A244078.P3302360678779439644

/-! ## A244078.P15459294886168693111

`A240894(record[A064515(2*n+1)+1])`
-/

namespace A244078.P15459294886168693111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240894 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244078.P15459294886168693111

/-! ## A244078.P14752199860848057625

`filter[A071774(n+1), A377191(#)]`
-/

namespace A244078.P14752199860848057625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A244078.P14752199860848057625

/-! ## A244078.P6310516567827321496

`∩[A071774(n+1), A095862(n+1)]`
-/

namespace A244078.P6310516567827321496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244078.P6310516567827321496

/-! ## A244078.P10158075885298120591

`∩[A003631(n+1), A166934(n+1)]`
-/

namespace A244078.P10158075885298120591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244078.P10158075885298120591

/-!
# A244080: Largest prime factor of A166133(n).

The programs for A244080, there is no canonical definition to state claims against.
-/

/-! ## A244080.P9275208480593228878

`A006530(A166133(n+1))`
-/

namespace A244080.P9275208480593228878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166133 (n + 1)).toNat

end

end A244080.P9275208480593228878

/-! ## A244080.P1710613516999874956

`A006530(sqrt(A256557(n+1)+1))`
-/

namespace A244080.P1710613516999874956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A256557 (n + 1) + 1 : ℝ))).toNat

end

end A244080.P1710613516999874956

/-! ## A244080.P1569485280650973160

`A006530(∑[A256541(A000007(n)+n)])`
-/

namespace A244080.P1569485280650973160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244080.P1569485280650973160

/-! ## A244080.P18387597718817324501

`A006530(A256564(n+1)*A256578(n+1))`
-/

namespace A244080.P18387597718817324501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256564 (n + 1) * A256578 (n + 1)).toNat

end

end A244080.P18387597718817324501

/-! ## A244080.P10759172251777240744

`A006530(lcm(A256564(n+1), A256578(n+1)))`
-/

namespace A244080.P10759172251777240744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A256564 (n + 1)) (A256578 (n + 1)))

end

end A244080.P10759172251777240744

/-! ## A244080.P127003020886544591

`A006530(A256557(n+1)+1)`
-/

namespace A244080.P127003020886544591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256557 (n + 1) + 1).toNat

end

end A244080.P127003020886544591

/-! ## A244080.P2155579782499208981

`A006530(A137734(A256557(n+1)))`
-/

namespace A244080.P2155579782499208981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137734 (A256557 (n + 1)).toNat).toNat

end

end A244080.P2155579782499208981

/-!
# A244082: a(n) = 32*n^2.

The programs for A244082, the canonical program `A244082.P4230128900204354164` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244082 has offset 0).

The definition of A244082 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n²` (program `A244082.P4230128900204354164`, by `A244082.P4230128900204354164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244082.P4230128900204354164

`32*n²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244082

/-- `32*n²` -/
def P4230128900204354164.Spec : Prop :=
  ∀ n, (P4230128900204354164.a n : ℤ) = A244082 n

theorem P4230128900204354164.correct : P4230128900204354164.Spec := by
  intro n
  simp only [A244082]

end A244082

/-!
# A244083: a(n) = numerator( n^n/(2*n)! ).

The programs for A244083, there is no canonical definition to state claims against.
-/

/-! ## A244083.P10328349604939834568

`A000312(n)/A010050(n)*A244084(n)`
-/

namespace A244083.P10328349604939834568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n : ℚ) / (A010050 n : ℚ) * (A244084 n : ℚ)

end

end A244083.P10328349604939834568

/-! ## A244083.P7568154832537798299

`A000312(n)/gcd(A000142(2*n), A000312(n))`
-/

namespace A244083.P7568154832537798299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n : ℚ) / (Int.gcd (A000142 (2 * n)) (A000312 n) : ℚ)

end

end A244083.P7568154832537798299

/-! ## A244083.P14979872335285455390

`A076932(n^floor(n^(1/3)))`
-/

namespace A244083.P14979872335285455390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076932 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℤ))).toNat

end

end A244083.P14979872335285455390

/-!
# A244084: a(n) = denominator( n^n/(2*n)! ).

The programs for A244084, there is no canonical definition to state claims against.
-/

/-! ## A244084.P16843141565957862095

`(2*n)!/gcd(A000038(A005893(n))-n^n, (2*n)!)`
-/

namespace A244084.P16843141565957862095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Int.gcd (A000038 (A005893 n).toNat - (n ^ n : ℤ)) (Nat.factorial (2 * n) : ℤ) : ℚ)

end

end A244084.P16843141565957862095

/-! ## A244084.P14156500561257154650

`A010050(n)/A000312(n)*A244083(n)`
-/

namespace A244084.P14156500561257154650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A000312 n : ℚ) * (A244083 n : ℚ)

end

end A244084.P14156500561257154650

/-! ## A244084.P16924492883503143827

`A000142(2*n)/gcd(A000142(2*n), A000312(n))`
-/

namespace A244084.P16924492883503143827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) / (Int.gcd (A000142 (2 * n)) (A000312 n) : ℚ)

end

end A244084.P16924492883503143827

/-!
# A244085: Primes p such that the concatenation of p and 2*p-1 is also prime.

The programs for A244085, there is no canonical definition to state claims against.
-/

/-! ## A244085.P16264404673517946645

`record[A007610(A007602(n+1)+A007599(n))]`
-/

namespace A244085.P16264404673517946645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (A007602 (n + 1) + A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244085.P16264404673517946645

/-! ## A244085.P10567336517215968526

`A318719(A259380(n+1)+A000040(n+1))`
-/

namespace A244085.P10567336517215968526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A259380 (n + 1) + A000040 (n + 1)).toNat

end

end A244085.P10567336517215968526

/-!
# A244087: Numbers n such that 4*n+3 and 8*n+7 are prime.

The programs for A244087, there is no canonical definition to state claims against.
-/

/-! ## A244087.P12448663444782077924

`floor(A002515(n+1)/4)`
-/

namespace A244087.P12448663444782077924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002515 (n + 1) : ℚ) / 4⌋

end

end A244087.P12448663444782077924

/-! ## A244087.P12097657647147374845

`floor(A101789(n+1)/8)`
-/

namespace A244087.P12097657647147374845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101789 (n + 1) : ℚ) / 8⌋

end

end A244087.P12097657647147374845

/-! ## A244087.P293155952521523570

`record[A137332(n+2)-3]/4`
-/

namespace A244087.P293155952521523570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137332 (n + 2) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A244087.P293155952521523570

/-! ## A244087.P8208801676358712484

`∩[A095278(n+1), A139487(n+1)]`
-/

namespace A244087.P8208801676358712484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244087.P8208801676358712484

/-! ## A244087.P629094246015333818

`floor(p?[A163780(n+1)]/4)`
-/

namespace A244087.P629094246015333818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A244087.P629094246015333818

/-! ## A244087.P13005710321327938106

`(p?[A158034(n+1)]-3)/4`
-/

namespace A244087.P13005710321327938106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158034 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 4

end

end A244087.P13005710321327938106

/-! ## A244087.P8516672974217641077

`(p?[A081858(n+1)]-3)/4`
-/

namespace A244087.P8516672974217641077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081858 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 4

end

end A244087.P8516672974217641077

/-! ## A244087.P1682636576657063631

`lt[1, A067849(2*n+1)]`
-/

namespace A244087.P1682636576657063631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244087.P1682636576657063631

/-! ## A244087.P3770085391770848254

`lt[A245203(2*n+1), A101264(2*n+1)]`
-/

namespace A244087.P3770085391770848254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244087.P3770085391770848254

/-! ## A244087.P4931515159111856393

`A002265(A002515(n+1))`
-/

namespace A244087.P4931515159111856393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002515 (n + 1)).toNat

end

end A244087.P4931515159111856393

/-! ## A244087.P7157891474685778645

`A002265(A374914(n+2))`
-/

namespace A244087.P7157891474685778645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A374914 (n + 2)).toNat

end

end A244087.P7157891474685778645

/-! ## A244087.P2506652114224658884

`eq[A046067(2*(n+1)), A053193(2*n+1)]`
-/

namespace A244087.P2506652114224658884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244087.P2506652114224658884

/-! ## A244087.P5050160510579999417

`eq[A198020(2*n+1), A198020(4*n+3)]`
-/

namespace A244087.P5050160510579999417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244087.P5050160510579999417

/-! ## A244087.P13008569807457732281

`eq[A281680(4*n+3), A281680(2*n+1)]`
-/

namespace A244087.P13008569807457732281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244087.P13008569807457732281

/-!
# A244092: Primes which are the arithmetic mean of two consecutive primes of the form 4n + 1.

The programs for A244092, the canonical program `A244092.P5012121100547918818` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244092 has offset 1).

The definition of A244092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244092.P5012121100547918818

`p?[A002144(n+1)+2*A082074(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244092

/-- `p?[A002144(n+1)+2*A082074(n+1)]` -/
def P5012121100547918818.Spec : Prop :=
  ∀ n, P5012121100547918818.a n = A244092 (n + 1)

theorem P5012121100547918818.correct : P5012121100547918818.Spec := by
  intro n
  simp only [A244092, Nat.add_sub_cancel]

end A244092

/-! ## A244092.P13914184249859514385

`p?[A002144(n+1)+A001281(A082073(n+1))]`
-/

namespace A244092.P13914184249859514385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + A001281 (A082073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P13914184249859514385

namespace A244092

/-- `p?[A002144(n+1)+A001281(A082073(n+1))]` -/
def P13914184249859514385.Spec : Prop :=
  ∀ n, P13914184249859514385.a n = A244092 (n + 1)

end A244092

/-! ## A244092.P4352191842648374113

`p?[A005843(A082074(n+1))+A002144(n+1)]`
-/

namespace A244092.P4352191842648374113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082074 (n + 1)).toNat + A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P4352191842648374113

namespace A244092

/-- `p?[A005843(A082074(n+1))+A002144(n+1)]` -/
def P4352191842648374113.Spec : Prop :=
  ∀ n, P4352191842648374113.a n = A244092 (n + 1)

end A244092

/-! ## A244092.P10158846172908626779

`p?[A072480(A002313(n+1)+A002144(n+1))]`
-/

namespace A244092.P10158846172908626779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A002313 (n + 1) + A002144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P10158846172908626779

namespace A244092

/-- `p?[A072480(A002313(n+1)+A002144(n+1))]` -/
def P10158846172908626779.Spec : Prop :=
  ∀ n, P10158846172908626779.a n = A244092 (n + 1)

end A244092

/-! ## A244092.P16819856976236721415

`p?[A104636(n+2)+A104636(n+1)+1]`
-/

namespace A244092.P16819856976236721415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 2) + (A104636 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P16819856976236721415

namespace A244092

/-- `p?[A104636(n+2)+A104636(n+1)+1]` -/
def P16819856976236721415.Spec : Prop :=
  ∀ n, P16819856976236721415.a n = A244092 (n + 1)

end A244092

/-!
# A244095: Primes of the form (p + q)^2 + 1, where p and q are consecutive primes.

The programs for A244095, the canonical program `A244095.P10181876482107747881` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244095 has offset 1).

The definition of A244095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244095.P10181876482107747881

`∩[A001043(n+1)²+1, A002496(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A244095

/-- `∩[A001043(n+1)²+1, A002496(n+1)]` -/
def P10181876482107747881.Spec : Prop :=
  ∀ n, (P10181876482107747881.a n : ℤ) = A244095 (n + 1)

theorem P10181876482107747881.correct : P10181876482107747881.Spec := by
  intro n
  simp only [A244095, Nat.add_sub_cancel]

end A244095

/-! ## A244095.P3628470466472164408

`∩[A001043(n+1)²+1, A163588(n+1)]`
-/

namespace A244095.P3628470466472164408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P3628470466472164408

namespace A244095

/-- `∩[A001043(n+1)²+1, A163588(n+1)]` -/
def P3628470466472164408.Spec : Prop :=
  ∀ n, (P3628470466472164408.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P14594907394552689530

`∩[A001043(n+1)²+1, A227829(n+1)]`
-/

namespace A244095.P14594907394552689530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P14594907394552689530

namespace A244095

/-- `∩[A001043(n+1)²+1, A227829(n+1)]` -/
def P14594907394552689530.Spec : Prop :=
  ∀ n, (P14594907394552689530.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P18394734076439831550

`∩[A001043(n+1)²+1, A168024(n)]`
-/

namespace A244095.P18394734076439831550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P18394734076439831550

namespace A244095

/-- `∩[A001043(n+1)²+1, A168024(n)]` -/
def P18394734076439831550.Spec : Prop :=
  ∀ n, (P18394734076439831550.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P3928865921522854792

`record[A014442(A001043(n+5))]`
-/

namespace A244095.P3928865921522854792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A001043 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244095.P3928865921522854792

namespace A244095

/-- `record[A014442(A001043(n+5))]` -/
def P3928865921522854792.Spec : Prop :=
  ∀ n, P3928865921522854792.a n = A244095 (n + 1)

end A244095

/-! ## A244095.P14755834847996890865

`∩[A001043(n+1)²+1, A113425(n+1)]`
-/

namespace A244095.P14755834847996890865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P14755834847996890865

namespace A244095

/-- `∩[A001043(n+1)²+1, A113425(n+1)]` -/
def P14755834847996890865.Spec : Prop :=
  ∀ n, (P14755834847996890865.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P3910884134841314771

`∩[A113425(A001043(n+1)), A168024(n)]`
-/

namespace A244095.P3910884134841314771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (A001043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P3910884134841314771

namespace A244095

/-- `∩[A113425(A001043(n+1)), A168024(n)]` -/
def P3910884134841314771.Spec : Prop :=
  ∀ n, (P3910884134841314771.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P14262420741465326006

`∩[A113425(A001043(n+1)), A002496(n+1)]`
-/

namespace A244095.P14262420741465326006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (A001043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P14262420741465326006

namespace A244095

/-- `∩[A113425(A001043(n+1)), A002496(n+1)]` -/
def P14262420741465326006.Spec : Prop :=
  ∀ n, (P14262420741465326006.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P13319408562542967028

`∩[A113425(A001043(n+1)), A163588(n+1)]`
-/

namespace A244095.P13319408562542967028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (A001043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P13319408562542967028

namespace A244095

/-- `∩[A113425(A001043(n+1)), A163588(n+1)]` -/
def P13319408562542967028.Spec : Prop :=
  ∀ n, (P13319408562542967028.a n : ℤ) = A244095 (n + 1)

end A244095

/-! ## A244095.P17922607322472900919

`A113425(∩[A001043(n+1), A089593(n+1)+1])`
-/

namespace A244095.P17922607322472900919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A244095.P17922607322472900919

namespace A244095

/-- `A113425(∩[A001043(n+1), A089593(n+1)+1])` -/
def P17922607322472900919.Spec : Prop :=
  ∀ n, P17922607322472900919.a n = A244095 (n + 1)

end A244095

/-!
# A244096: Rounded down area ratio of a circle inscribed in a congruent triangle of a regular n-gon and a circle inscribed between a side of such an n-gon and a circumscribed unit circle.

The programs for A244096, there is no canonical definition to state claims against.
-/

/-! ## A244096.P15342121208013489933

`A005448(n+1)-A071030(A033304(n))`
-/

namespace A244096.P15342121208013489933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) - A071030 (A033304 n).toNat

end

end A244096.P15342121208013489933

/-! ## A244096.P6560648424099042965

`A045943(n)+A010051(A096508(n+2))`
-/

namespace A244096.P6560648424099042965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + A010051 (A096508 (n + 2)).toNat

end

end A244096.P6560648424099042965

/-! ## A244096.P5281413337686739584

`A359474(A319616(n+2))+A045943(n)`
-/

namespace A244096.P5281413337686739584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (A319616 (n + 2)).toNat + A045943 n

end

end A244096.P5281413337686739584

/-! ## A244096.P2746400592864247043

`A327166(A231891(2*(n+1)))+A045943(n)`
-/

namespace A244096.P2746400592864247043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327166 (A231891 (2 * (n + 1))).toNat + A045943 n

end

end A244096.P2746400592864247043

/-! ## A244096.P11228009574373953944

`A005448(n+1)-A030302(A000041(3*n))`
-/

namespace A244096.P11228009574373953944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) - A030302 (A000041 (3 * n)).toNat

end

end A244096.P11228009574373953944

/-!
# A244098: Total number of divisors of all the ordered prime factorizations of an integer.

The programs for A244098, the canonical program `A244098.P17071830825429301538` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244098 has offset 1).

The definition of A244098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244098.P9072487603622546958

`∑{d}[n+1, A008480(#)]`
-/

namespace A244098.P9072487603622546958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008480 d

end

end A244098.P9072487603622546958

namespace A244098

/-- `∑{d}[n+1, A008480(#)]` -/
def P9072487603622546958.Spec : Prop :=
  ∀ n, P9072487603622546958.a n = A244098 (n + 1)

end A244098

/-! ## A244098.P17071830825429301538

`∑{d}[n+1, A168324(#)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244098

/-- `∑{d}[n+1, A168324(#)]+1` -/
def P17071830825429301538.Spec : Prop :=
  ∀ n, P17071830825429301538.a n = A244098 (n + 1)

theorem P17071830825429301538.correct : P17071830825429301538.Spec := by
  intro n
  simp only [A244098, Nat.add_sub_cancel]

end A244098

/-! ## A244098.P9112821556362364500

`∑{d}[n+1, A135323(#)/#]`
-/

namespace A244098.P9112821556362364500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A135323 d : ℚ) / (d : ℚ)

end

end A244098.P9112821556362364500

namespace A244098

/-- `∑{d}[n+1, A135323(#)/#]` -/
def P9112821556362364500.Spec : Prop :=
  ∀ n, P9112821556362364500.a n = (A244098 (n + 1) : ℚ)

end A244098

/-! ## A244098.P6290386491695105091

`∑{d}[n+1, A001511(#)*A325392((n+1)/#)]`
-/

namespace A244098.P6290386491695105091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A325392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244098.P6290386491695105091

namespace A244098

/-- `∑{d}[n+1, A001511(#)*A325392((n+1)/#)]` -/
def P6290386491695105091.Spec : Prop :=
  ∀ n, P6290386491695105091.a n = A244098 (n + 1)

end A244098

/-! ## A244098.P8229207932537524199

`∑{d}[A003961(n+1), A325392(#)]`
-/

namespace A244098.P8229207932537524199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A325392 d

end

end A244098.P8229207932537524199

namespace A244098

/-- `∑{d}[A003961(n+1), A325392(#)]` -/
def P8229207932537524199.Spec : Prop :=
  ∀ n, P8229207932537524199.a n = A244098 (n + 1)

end A244098

/-! ## A244098.P9413900392961682576

`∑{d}[A332818(n+1), A325392(#)]`
-/

namespace A244098.P9413900392961682576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A325392 d

end

end A244098.P9413900392961682576

namespace A244098

/-- `∑{d}[A332818(n+1), A325392(#)]` -/
def P9413900392961682576.Spec : Prop :=
  ∀ n, P9413900392961682576.a n = A244098 (n + 1)

end A244098

/-! ## A244098.P4197421687703693813

`∑{d}[n+1, A206487(A046523(#))]`
-/

namespace A244098.P4197421687703693813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206487 (A046523 d).toNat

end

end A244098.P4197421687703693813

namespace A244098

/-- `∑{d}[n+1, A206487(A046523(#))]` -/
def P4197421687703693813.Spec : Prop :=
  ∀ n, P4197421687703693813.a n = A244098 (n + 1)

end A244098

/-!
# A244099: Number of ballot sequences of length n having 2 largest parts.

The programs for A244099, there is no canonical definition to state claims against.
-/

/-! ## A244099.P4255072431491764258

`A238123(A133263(n))`
-/

namespace A244099.P4255072431491764258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A133263 n).toNat

end

end A244099.P4255072431491764258

/-! ## A244099.P14315171289001511552

`A238123(A238531(n+1))`
-/

namespace A244099.P14315171289001511552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A238531 (n + 1)).toNat

end

end A244099.P14315171289001511552

/-! ## A244099.P18143937796776423080

`A238123(A134869(n+1)-n)`
-/

namespace A244099.P18143937796776423080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A244099.P18143937796776423080

/-! ## A244099.P13742657905134296865

`A238123(∑[A233583(n+1)]-1)`
-/

namespace A244099.P13742657905134296865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A244099.P13742657905134296865

/-! ## A244099.P372351622915129771

`A238123(A007318(∑[n+1]+2)+2)`
-/

namespace A244099.P372351622915129771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 2).toNat

end

end A244099.P372351622915129771

/-! ## A244099.P14253618250011610735

`A238123(A057427(n)+A000124(n))`
-/

namespace A244099.P14253618250011610735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A057427 n + A000124 n).toNat

end

end A244099.P14253618250011610735

/-! ## A244099.P3700490474238960142

`A238123(A178334(n)+A000124(n))`
-/

namespace A244099.P3700490474238960142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A178334 n + A000124 n).toNat

end

end A244099.P3700490474238960142

/-! ## A244099.P901204405818177339

`A238123(A000124(n)-A057428(n))`
-/

namespace A244099.P901204405818177339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000124 n - A057428 n).toNat

end

end A244099.P901204405818177339

/-! ## A244099.P9745978311690360585

`A238123(A000124(n)+A057428(n)²)`
-/

namespace A244099.P9745978311690360585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000124 n + A057428 n ^ 2).toNat

end

end A244099.P9745978311690360585

