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
import Seq.B000.C021
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A024100: a(n) = 8^n - n^12.

The programs for A024100, the canonical program `A024100.P15786960180768034148` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024100 has offset 0).

The definition of A024100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^12` (program `A024100.P15786960180768034148`, by `A024100.P15786960180768034148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024100.P15786960180768034148

`8^n-n^12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024100

/-- `8^n-n^12` -/
def P15786960180768034148.Spec : Prop :=
  ∀ n, P15786960180768034148.a n = A024100 n

theorem P15786960180768034148.correct : P15786960180768034148.Spec := by
  intro n
  simp only [A024100]

end A024100

/-! ## A024100.P3959706356026530138

`(A001018(n)-A001014(n²))*A016777(n+11)%3`
-/

namespace A024100.P3959706356026530138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001014 (n ^ 2)) * Int.tmod (A016777 (n + 11)) 3

end

end A024100.P3959706356026530138

namespace A024100

/-- `(A001018(n)-A001014(n²))*A016777(n+11)%3` -/
def P3959706356026530138.Spec : Prop :=
  ∀ n, P3959706356026530138.a n = A024100 n

end A024100

/-! ## A024100.P4364003056274434152

`(A001018(n)-A001014(n²))*A057728(∑[n+1]+1)`
-/

namespace A024100.P4364003056274434152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001014 (n ^ 2)) * A057728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024100.P4364003056274434152

namespace A024100

/-- `(A001018(n)-A001014(n²))*A057728(∑[n+1]+1)` -/
def P4364003056274434152.Spec : Prop :=
  ∀ n, P4364003056274434152.a n = A024100 n

end A024100

/-! ## A024100.P7363500953154748544

`(A001018(n)-A001014(n²))*A052529(∏{d}[1-n, #%2])`
-/

namespace A024100.P7363500953154748544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001014 (n ^ 2)) * A052529 (∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2)

end

end A024100.P7363500953154748544

namespace A024100

/-- `(A001018(n)-A001014(n²))*A052529(∏{d}[1-n, #%2])` -/
def P7363500953154748544.Spec : Prop :=
  ∀ n, P7363500953154748544.a n = A024100 n

end A024100

/-! ## A024100.P11172436731046092272

`(A001018(n)-A001014(n²))*A001222(A007918(n))`
-/

namespace A024100.P11172436731046092272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001014 (n ^ 2)) * A001222 (A007918 n).toNat

end

end A024100.P11172436731046092272

namespace A024100

/-- `(A001018(n)-A001014(n²))*A001222(A007918(n))` -/
def P11172436731046092272.Spec : Prop :=
  ∀ n, P11172436731046092272.a n = A024100 n

end A024100

/-!
# A024101: a(n) = 9^n-1.

The programs for A024101, the canonical program `A024101.P10200110673150781070` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024101 has offset 0).

The definition of A024101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-1` (program `A024101.P10200110673150781070`, by `A024101.P10200110673150781070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024101.P10200110673150781070

`9^n-1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024101

/-- `9^n-1` -/
def P10200110673150781070.Spec : Prop :=
  ∀ n, P10200110673150781070.a n = A024101 n

theorem P10200110673150781070.correct : P10200110673150781070.Spec := by
  intro n
  simp only [A024101]

end A024101

/-!
# A024102: a(n) = 9^n - n.

The programs for A024102, the canonical program `A024102.P8541995443160321865` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024102 has offset 0).

The definition of A024102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n` (program `A024102.P8541995443160321865`, by `A024102.P8541995443160321865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024102.P8541995443160321865

`9^n-n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024102

/-- `9^n-n` -/
def P8541995443160321865.Spec : Prop :=
  ∀ n, P8541995443160321865.a n = A024102 n

theorem P8541995443160321865.correct : P8541995443160321865.Spec := by
  intro n
  simp only [A024102]

end A024102

/-!
# A024103: a(n) = 9^n - n^2.

The programs for A024103, the canonical program `A024103.P6455062112864184122` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024103 has offset 0).

The definition of A024103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n²` (program `A024103.P6455062112864184122`, by `A024103.P6455062112864184122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024103.P6455062112864184122

`9^n-n²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024103

/-- `9^n-n²` -/
def P6455062112864184122.Spec : Prop :=
  ∀ n, P6455062112864184122.a n = A024103 n

theorem P6455062112864184122.correct : P6455062112864184122.Spec := by
  intro n
  simp only [A024103]

end A024103

/-! ## A024103.P7401607359079165518

`ogf((1-4x+11x^2+8x^3)/(1-12x+30x^2-28x^3+9x^4))`
-/

namespace A024103.P7401607359079165518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 11, 8] [1, -12, 30, -28, 9] n

end

end A024103.P7401607359079165518

namespace A024103

/-- `ogf((1-4x+11x^2+8x^3)/(1-12x+30x^2-28x^3+9x^4))` -/
def P7401607359079165518.Spec : Prop :=
  ∀ n, P7401607359079165518.a n = A024103 n

end A024103

/-! ## A024103.P1408606791123446298

`A024024(n)*A104743(n)`
-/

namespace A024103.P1408606791123446298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n * A104743 n

end

end A024103.P1408606791123446298

namespace A024103

/-- `A024024(n)*A104743(n)` -/
def P1408606791123446298.Spec : Prop :=
  ∀ n, P1408606791123446298.a n = A024103 n

end A024103

/-! ## A024103.P11725739672479764297

`ceil(∑[3*a(n-1)]²-n²)` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A024103.P11725739672479764297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A024103.P11725739672479764297

namespace A024103

/-- `ceil(∑[3*a(n-1)]²-n²)` -/
def P11725739672479764297.Spec : Prop :=
  ∀ n, P11725739672479764297.a n = A024103 n

end A024103

/-! ## A024103.P1949604091386446810

`∑[ceil(Δ[9^((n-1)%(n+2))])-comp[2*(n+1)]]`
-/

namespace A024103.P1949604091386446810
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉ - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024103.P1949604091386446810

namespace A024103

/-- `∑[ceil(Δ[9^((n-1)%(n+2))])-comp[2*(n+1)]]` -/
def P1949604091386446810.Spec : Prop :=
  ∀ n, P1949604091386446810.a n = A024103 n

end A024103

/-! ## A024103.P3395540251447539822

`abs(n²-A001019(n))`
-/

namespace A024103.P3395540251447539822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A001019 n|

end

end A024103.P3395540251447539822

namespace A024103

/-- `abs(n²-A001019(n))` -/
def P3395540251447539822.Spec : Prop :=
  ∀ n, P3395540251447539822.a n = A024103 n

end A024103

/-! ## A024103.P5820585607503975942

`abs(9^n-A000290(n))`
-/

namespace A024103.P5820585607503975942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - A000290 n|

end

end A024103.P5820585607503975942

namespace A024103

/-- `abs(9^n-A000290(n))` -/
def P5820585607503975942.Spec : Prop :=
  ∀ n, P5820585607503975942.a n = A024103 n

end A024103

/-! ## A024103.P17358479735373154918

`abs(A000244(n)²-n²)`
-/

namespace A024103.P17358479735373154918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - (n ^ 2 : ℤ)|

end

end A024103.P17358479735373154918

namespace A024103

/-- `abs(A000244(n)²-n²)` -/
def P17358479735373154918.Spec : Prop :=
  ∀ n, P17358479735373154918.a n = A024103 n

end A024103

/-! ## A024103.P7304300985681700903

`(A024023(n)+1+n)*(3^n-n)`
-/

namespace A024103.P7304300985681700903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + 1 + (n : ℤ)) * ((3 ^ n : ℤ) - (n : ℤ))

end

end A024103.P7304300985681700903

namespace A024103

/-- `(A024023(n)+1+n)*(3^n-n)` -/
def P7304300985681700903.Spec : Prop :=
  ∀ n, P7304300985681700903.a n = A024103 n

end A024103

/-! ## A024103.P13657894483353110068

`-((A004526(2*n)+1)*(n-1)-9^n+1)`
-/

namespace A024103.P13657894483353110068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A004526 (2 * n) + 1) * ((n : ℤ) - 1) - (9 ^ n : ℤ) + 1)

end

end A024103.P13657894483353110068

namespace A024103

/-- `-((A004526(2*n)+1)*(n-1)-9^n+1)` -/
def P13657894483353110068.Spec : Prop :=
  ∀ n, P13657894483353110068.a n = A024103 n

end A024103

/-! ## A024103.P6258566301378339209

`∑[A055275(n)-A004273(n)]`
-/

namespace A024103.P6258566301378339209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024103.P6258566301378339209

namespace A024103

/-- `∑[A055275(n)-A004273(n)]` -/
def P6258566301378339209.Spec : Prop :=
  ∀ n, P6258566301378339209.a n = A024103 n

end A024103

/-! ## A024103.P12637610314310080322

`(A008776(n)-A104743(n))*A104743(n)`
-/

namespace A024103.P12637610314310080322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - A104743 n) * A104743 n

end

end A024103.P12637610314310080322

namespace A024103

/-- `(A008776(n)-A104743(n))*A104743(n)` -/
def P12637610314310080322.Spec : Prop :=
  ∀ n, P12637610314310080322.a n = A024103 n

end A024103

/-! ## A024103.P7917194314072472928

`(A212262(n)-A065220(n))*A024024(n)`
-/

namespace A024103.P7917194314072472928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212262 n - A065220 n) * A024024 n

end

end A024103.P7917194314072472928

namespace A024103

/-- `(A212262(n)-A065220(n))*A024024(n)` -/
def P7917194314072472928.Spec : Prop :=
  ∀ n, P7917194314072472928.a n = A024103 n

end A024103

/-!
# A024104: a(n) = 9^n - n^3.

The programs for A024104, the canonical program `A024104.P8384828211239424098` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024104 has offset 0).

The definition of A024104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^3` (program `A024104.P8384828211239424098`, by `A024104.P8384828211239424098.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024104.P8384828211239424098

`9^n-n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024104

/-- `9^n-n^3` -/
def P8384828211239424098.Spec : Prop :=
  ∀ n, P8384828211239424098.a n = A024104 n

theorem P8384828211239424098.correct : P8384828211239424098.Spec := by
  intro n
  simp only [A024104]

end A024104

/-! ## A024104.P6303317472913887064

`ogf((1-5x+11x^2+31x^3+10x^4)/(1-13x+42x^2-58x^3+37x^4-9x^5))`
-/

namespace A024104.P6303317472913887064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 11, 31, 10] [1, -13, 42, -58, 37, -9] n

end

end A024104.P6303317472913887064

namespace A024104

/-- `ogf((1-5x+11x^2+31x^3+10x^4)/(1-13x+42x^2-58x^3+37x^4-9x^5))` -/
def P6303317472913887064.Spec : Prop :=
  ∀ n, P6303317472913887064.a n = A024104 n

end A024104

/-! ## A024104.P17489839739162230823

`abs(n*n²-A001019(n))`
-/

namespace A024104.P17489839739162230823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A001019 n|

end

end A024104.P17489839739162230823

namespace A024104

/-- `abs(n*n²-A001019(n))` -/
def P17489839739162230823.Spec : Prop :=
  ∀ n, P17489839739162230823.a n = A024104 n

end A024104

/-! ## A024104.P4989329437731198520

`abs(n*n²-A000244(n)²)`
-/

namespace A024104.P4989329437731198520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A000244 n ^ 2|

end

end A024104.P4989329437731198520

namespace A024104

/-- `abs(n*n²-A000244(n)²)` -/
def P4989329437731198520.Spec : Prop :=
  ∀ n, P4989329437731198520.a n = A024104 n

end A024104

/-! ## A024104.P7718738327932294541

`abs(A000244(n)²-A000578(n))`
-/

namespace A024104.P7718738327932294541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - A000578 n|

end

end A024104.P7718738327932294541

namespace A024104

/-- `abs(A000244(n)²-A000578(n))` -/
def P7718738327932294541.Spec : Prop :=
  ∀ n, P7718738327932294541.a n = A024104 n

end A024104

/-! ## A024104.P13135560885617458646

`abs(A000244(2*n)-A000578(n))`
-/

namespace A024104.P13135560885617458646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 (2 * n) - A000578 n|

end

end A024104.P13135560885617458646

namespace A024104

/-- `abs(A000244(2*n)-A000578(n))` -/
def P13135560885617458646.Spec : Prop :=
  ∀ n, P13135560885617458646.a n = A024104 n

end A024104

/-! ## A024104.P16688616709871525069

`record[A140303(n)²-A198063(n)]`
-/

namespace A024104.P16688616709871525069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 - A198063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024104.P16688616709871525069

namespace A024104

/-- `record[A140303(n)²-A198063(n)]` -/
def P16688616709871525069.Spec : Prop :=
  ∀ n, P16688616709871525069.a n = A024104 n

end A024104

/-!
# A024105: a(n) = 9^n - n^4.

The programs for A024105, the canonical program `A024105.P3501767266720353538` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024105 has offset 0).

The definition of A024105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^4` (program `A024105.P3501767266720353538`, by `A024105.P3501767266720353538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024105.P3501767266720353538

`9^n-n^4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024105

/-- `9^n-n^4` -/
def P3501767266720353538.Spec : Prop :=
  ∀ n, P3501767266720353538.a n = A024105 n

theorem P3501767266720353538.correct : P3501767266720353538.Spec := by
  intro n
  simp only [A024105]

end A024105

/-! ## A024105.P2935428786440512427

`ogf((1-6x+8x^2+78x^3+103x^4+8x^5)/(1-14x+55x^2-100x^3+95x^4-46x^5+9x^6))`
-/

namespace A024105.P2935428786440512427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 8, 78, 103, 8] [1, -14, 55, -100, 95, -46, 9] n

end

end A024105.P2935428786440512427

namespace A024105

/-- `ogf((1-6x+8x^2+78x^3+103x^4+8x^5)/(1-14x+55x^2-100x^3+95x^4-46x^5+9x^6))` -/
def P2935428786440512427.Spec : Prop :=
  ∀ n, P2935428786440512427.a n = A024105 n

end A024105

/-! ## A024105.P9170213915049568876

`abs(n²²-A001019(n))`
-/

namespace A024105.P9170213915049568876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A001019 n|

end

end A024105.P9170213915049568876

namespace A024105

/-- `abs(n²²-A001019(n))` -/
def P9170213915049568876.Spec : Prop :=
  ∀ n, P9170213915049568876.a n = A024105 n

end A024105

/-! ## A024105.P3459283447284682853

`abs(A000244(n)²-n²²)`
-/

namespace A024105.P3459283447284682853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - ((n ^ 2) ^ 2 : ℤ)|

end

end A024105.P3459283447284682853

namespace A024105

/-- `abs(A000244(n)²-n²²)` -/
def P3459283447284682853.Spec : Prop :=
  ∀ n, P3459283447284682853.a n = A024105 n

end A024105

/-! ## A024105.P17183256780811704920

`A024025(n)*A251701(n)`
-/

namespace A024105.P17183256780811704920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024025 n * A251701 n

end

end A024105.P17183256780811704920

namespace A024105

/-- `A024025(n)*A251701(n)` -/
def P17183256780811704920.Spec : Prop :=
  ∀ n, P17183256780811704920.a n = A024105 n

end A024105

/-! ## A024105.P9984063466446111379

`abs(A118004(n)+A024040(n))`
-/

namespace A024105.P9984063466446111379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118004 n + A024040 n|

end

end A024105.P9984063466446111379

namespace A024105

/-- `abs(A118004(n)+A024040(n))` -/
def P9984063466446111379.Spec : Prop :=
  ∀ n, P9984063466446111379.a n = A024105 n

end A024105

/-! ## A024105.P4491688719121475339

`abs(A001019(n)-A000583(n))`
-/

namespace A024105.P4491688719121475339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A000583 n|

end

end A024105.P4491688719121475339

namespace A024105

/-- `abs(A001019(n)-A000583(n))` -/
def P4491688719121475339.Spec : Prop :=
  ∀ n, P4491688719121475339.a n = A024105 n

end A024105

/-! ## A024105.P18189475129331099223

`(A000244(n)+n²)*A024025(n)`
-/

namespace A024105.P18189475129331099223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + (n ^ 2 : ℤ)) * A024025 n

end

end A024105.P18189475129331099223

namespace A024105

/-- `(A000244(n)+n²)*A024025(n)` -/
def P18189475129331099223.Spec : Prop :=
  ∀ n, P18189475129331099223.a n = A024105 n

end A024105

/-! ## A024105.P16521455246231591908

`(A000244(n)-n²)*A251701(n)`
-/

namespace A024105.P16521455246231591908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - (n ^ 2 : ℤ)) * A251701 n

end

end A024105.P16521455246231591908

namespace A024105

/-- `(A000244(n)-n²)*A251701(n)` -/
def P16521455246231591908.Spec : Prop :=
  ∀ n, P16521455246231591908.a n = A024105 n

end A024105

/-! ## A024105.P6128942621185027007

`(A000290(n)+A000244(n))*A024025(n)`
-/

namespace A024105.P6128942621185027007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 n + A000244 n) * A024025 n

end

end A024105.P6128942621185027007

namespace A024105

/-- `(A000290(n)+A000244(n))*A024025(n)` -/
def P6128942621185027007.Spec : Prop :=
  ∀ n, P6128942621185027007.a n = A024105 n

end A024105

/-! ## A024105.P2960327028377582982

`(A008776(n)-A251701(n))*A251701(n)`
-/

namespace A024105.P2960327028377582982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - A251701 n) * A251701 n

end

end A024105.P2960327028377582982

namespace A024105

/-- `(A008776(n)-A251701(n))*A251701(n)` -/
def P2960327028377582982.Spec : Prop :=
  ∀ n, P2960327028377582982.a n = A024105 n

end A024105

/-!
# A024106: a(n) = 9^n-n^5.

The programs for A024106, the canonical program `A024106.P6443200917951395996` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024106 has offset 0).

The definition of A024106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^5` (program `A024106.P6443200917951395996`, by `A024106.P6443200917951395996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024106.P6443200917951395996

`9^n-n^5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024106

/-- `9^n-n^5` -/
def P6443200917951395996.Spec : Prop :=
  ∀ n, P6443200917951395996.a n = A024106 n

theorem P6443200917951395996.correct : P6443200917951395996.Spec := by
  intro n
  simp only [A024106]

end A024106

/-! ## A024106.P5370904715876459577

`abs(A000584(n)-A001019(n))`
-/

namespace A024106.P5370904715876459577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000584 n - A001019 n|

end

end A024106.P5370904715876459577

namespace A024106

/-- `abs(A000584(n)-A001019(n))` -/
def P5370904715876459577.Spec : Prop :=
  ∀ n, P5370904715876459577.a n = A024106 n

end A024106

/-! ## A024106.P7846690923570933517

`abs(A001019(n)-Δ[A263689(n)])`
-/

namespace A024106.P7846690923570933517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - (f1 (n + 1) - f1 n)|

end

end A024106.P7846690923570933517

namespace A024106

/-- `abs(A001019(n)-Δ[A263689(n)])` -/
def P7846690923570933517.Spec : Prop :=
  ∀ n, P7846690923570933517.a n = A024106 n

end A024106

/-! ## A024106.P5006668318832378319

`abs(A024104(n)-(A133070(n)+n²))`
-/

namespace A024106.P5006668318832378319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024104 n - (A133070 n + (n ^ 2 : ℤ))|

end

end A024106.P5006668318832378319

namespace A024106

/-- `abs(A024104(n)-(A133070(n)+n²))` -/
def P5006668318832378319.Spec : Prop :=
  ∀ n, P5006668318832378319.a n = A024106 n

end A024106

/-! ## A024106.P16255889545972179183

`abs(A024119(n)+A155642(n)-A155643(n))`
-/

namespace A024106.P16255889545972179183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024119 n + (A155642 n - A155643 n)|

end

end A024106.P16255889545972179183

namespace A024106

/-- `abs(A024119(n)+A155642(n)-A155643(n))` -/
def P16255889545972179183.Spec : Prop :=
  ∀ n, P16255889545972179183.a n = A024106 n

end A024106

/-!
# A024107: a(n) = 9^n - n^6.

The programs for A024107, the canonical program `A024107.P3086199680297968342` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024107 has offset 0).

The definition of A024107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^6` (program `A024107.P3086199680297968342`, by `A024107.P3086199680297968342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024107.P3086199680297968342

`9^n-n^6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024107

/-- `9^n-n^6` -/
def P3086199680297968342.Spec : Prop :=
  ∀ n, P3086199680297968342.a n = A024107 n

theorem P3086199680297968342.correct : P3086199680297968342.Spec := by
  intro n
  simp only [A024107]

end A024107

/-! ## A024107.P1917065598477260238

`A001585(n)*A024026(n)`
-/

namespace A024107.P1917065598477260238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001585 n * A024026 n

end

end A024107.P1917065598477260238

namespace A024107

/-- `A001585(n)*A024026(n)` -/
def P1917065598477260238.Spec : Prop :=
  ∀ n, P1917065598477260238.a n = A024107 n

end A024107

/-! ## A024107.P4466769708545928342

`abs(A001014(n)-A001019(n))`
-/

namespace A024107.P4466769708545928342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001014 n - A001019 n|

end

end A024107.P4466769708545928342

namespace A024107

/-- `abs(A001014(n)-A001019(n))` -/
def P4466769708545928342.Spec : Prop :=
  ∀ n, P4466769708545928342.a n = A024107 n

end A024107

/-! ## A024107.P10755275554237828621

`abs(A024105(n)-A136038(n))`
-/

namespace A024107.P10755275554237828621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024105 n - A136038 n|

end

end A024107.P10755275554237828621

namespace A024107

/-- `abs(A024105(n)-A136038(n))` -/
def P10755275554237828621.Spec : Prop :=
  ∀ n, P10755275554237828621.a n = A024107 n

end A024107

/-! ## A024107.P10074158692362048820

`(A000578(n)+A000244(n))*A024026(n)`
-/

namespace A024107.P10074158692362048820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000244 n) * A024026 n

end

end A024107.P10074158692362048820

namespace A024107

/-- `(A000578(n)+A000244(n))*A024026(n)` -/
def P10074158692362048820.Spec : Prop :=
  ∀ n, P10074158692362048820.a n = A024107 n

end A024107

/-!
# A024108: a(n) = 9^n-n^7.

The programs for A024108, the canonical program `A024108.P1849207470830730192` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024108 has offset 0).

The definition of A024108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^7` (program `A024108.P1849207470830730192`, by `A024108.P1849207470830730192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024108.P1849207470830730192

`9^n-n^7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024108

/-- `9^n-n^7` -/
def P1849207470830730192.Spec : Prop :=
  ∀ n, P1849207470830730192.a n = A024108 n

theorem P1849207470830730192.correct : P1849207470830730192.Spec := by
  intro n
  simp only [A024108]

end A024108

/-! ## A024108.P17583466004869321308

`or(A000244(n)²-A001015(n), A000007(n))`
-/

namespace A024108.P17583466004869321308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n ^ 2 - A001015 n) (A000007 n)

end

end A024108.P17583466004869321308

namespace A024108

/-- `or(A000244(n)²-A001015(n), A000007(n))` -/
def P17583466004869321308.Spec : Prop :=
  ∀ n, P17583466004869321308.a n = A024108 n

end A024108

/-! ## A024108.P4083206542754649355

`or(A000244(2*n)-A001015(n), A000007(n))`
-/

namespace A024108.P4083206542754649355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 (2 * n) - A001015 n) (A000007 n)

end

end A024108.P4083206542754649355

namespace A024108

/-- `or(A000244(2*n)-A001015(n), A000007(n))` -/
def P4083206542754649355.Spec : Prop :=
  ∀ n, P4083206542754649355.a n = A024108 n

end A024108

/-! ## A024108.P9742292359241821917

`(A000244(n)²-A001015(n))/(A020639(2*(n+1))-1)`
-/

namespace A024108.P9742292359241821917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 - A001015 n : ℚ) / (A020639 (2 * (n + 1)) - 1 : ℚ)

end

end A024108.P9742292359241821917

namespace A024108

/-- `(A000244(n)²-A001015(n))/(A020639(2*(n+1))-1)` -/
def P9742292359241821917.Spec : Prop :=
  ∀ n, P9742292359241821917.a n = (A024108 n : ℚ)

end A024108

/-! ## A024108.P12449325491240421857

`round(A024121(n)-Δ[A217094(n)/9])`
-/

namespace A024108.P12449325491240421857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217094 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024121 n : ℚ) - (f1 (n + 1) - f1 n))

end

end A024108.P12449325491240421857

namespace A024108

/-- `round(A024121(n)-Δ[A217094(n)/9])` -/
def P12449325491240421857.Spec : Prop :=
  ∀ n, P12449325491240421857.a n = A024108 n

end A024108

/-! ## A024108.P6294676036115291278

`floor(A024121(n)-A050720(2*(n+1))/9)`
-/

namespace A024108.P6294676036115291278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024121 n : ℚ) - (A050720 (2 * (n + 1)) : ℚ) / 9⌋

end

end A024108.P6294676036115291278

namespace A024108

/-- `floor(A024121(n)-A050720(2*(n+1))/9)` -/
def P6294676036115291278.Spec : Prop :=
  ∀ n, P6294676036115291278.a n = A024108 n

end A024108

/-!
# A024109: a(n) = 9^n - n^8.

The programs for A024109, the canonical program `A024109.P17444985497815057518` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024109 has offset 0).

The definition of A024109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^8` (program `A024109.P17444985497815057518`, by `A024109.P17444985497815057518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024109.P17444985497815057518

`9^n-n^8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024109

/-- `9^n-n^8` -/
def P17444985497815057518.Spec : Prop :=
  ∀ n, P17444985497815057518.a n = A024109 n

theorem P17444985497815057518.correct : P17444985497815057518.Spec := by
  intro n
  simp only [A024109]

end A024109

/-! ## A024109.P16001737763115939215

`(A024023(2*n)+A024006(n))^(n²%(n+1))`
-/

namespace A024109.P16001737763115939215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 (2 * n) + A024006 n) ^ (n ^ 2 % (n + 1))

end

end A024109.P16001737763115939215

namespace A024109

/-- `(A024023(2*n)+A024006(n))^(n²%(n+1))` -/
def P16001737763115939215.Spec : Prop :=
  ∀ n, P16001737763115939215.a n = A024109 n

end A024109

/-! ## A024109.P12394949377199395385

`(A000583(n)+A000244(n))*A024027(n)`
-/

namespace A024109.P12394949377199395385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n + A000244 n) * A024027 n

end

end A024109.P12394949377199395385

namespace A024109

/-- `(A000583(n)+A000244(n))*A024027(n)` -/
def P12394949377199395385.Spec : Prop :=
  ∀ n, P12394949377199395385.a n = A024109 n

end A024109

/-! ## A024109.P3238770679138808701

`(A001589(n)-A005061(n))*A024027(n)`
-/

namespace A024109.P3238770679138808701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001589 n - A005061 n) * A024027 n

end

end A024109.P3238770679138808701

namespace A024109

/-- `(A001589(n)-A005061(n))*A024027(n)` -/
def P3238770679138808701.Spec : Prop :=
  ∀ n, P3238770679138808701.a n = A024109 n

end A024109

/-! ## A024109.P7618205837733309939

`(A008776(n)-A024027(n))*A024027(n)`
-/

namespace A024109.P7618205837733309939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - A024027 n) * A024027 n

end

end A024109.P7618205837733309939

namespace A024109

/-- `(A008776(n)-A024027(n))*A024027(n)` -/
def P7618205837733309939.Spec : Prop :=
  ∀ n, P7618205837733309939.a n = A024109 n

end A024109

/-!
# A024110: a(n) = 9^n - n^9.

The programs for A024110, the canonical program `A024110.P18361619474523280795` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024110 has offset 0).

The definition of A024110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^9` (program `A024110.P18361619474523280795`, by `A024110.P18361619474523280795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024110.P18361619474523280795

`9^n-n^9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024110

/-- `9^n-n^9` -/
def P18361619474523280795.Spec : Prop :=
  ∀ n, P18361619474523280795.a n = A024110 n

theorem P18361619474523280795.correct : P18361619474523280795.Spec := by
  intro n
  simp only [A024110]

end A024110

/-! ## A024110.P12548080121196896053

`A055651(A056000(n+6))`
-/

namespace A024110.P12548080121196896053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A056000 (n + 6)).toNat

end

end A024110.P12548080121196896053

namespace A024110

/-- `A055651(A056000(n+6))` -/
def P12548080121196896053.Spec : Prop :=
  ∀ n, P12548080121196896053.a n = A024110 n

end A024110

/-! ## A024110.P12114536825282085243

`A055651(eq[9, A025581(n)])`
-/

namespace A024110.P12114536825282085243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024110.P12114536825282085243

namespace A024110

/-- `A055651(eq[9, A025581(n)])` -/
def P12114536825282085243.Spec : Prop :=
  ∀ n, P12114536825282085243.a n = A024110 n

end A024110

/-! ## A024110.P12224377106779910156

`A055651(A000217(n+10)-10)`
-/

namespace A024110.P12224377106779910156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000217 (n + 10) - 10).toNat

end

end A024110.P12224377106779910156

namespace A024110

/-- `A055651(A000217(n+10)-10)` -/
def P12224377106779910156.Spec : Prop :=
  ∀ n, P12224377106779910156.a n = A024110 n

end A024110

/-! ## A024110.P5971641322786568794

`A055651(eq[10, A004736(n+1)])`
-/

namespace A024110.P5971641322786568794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024110.P5971641322786568794

namespace A024110

/-- `A055651(eq[10, A004736(n+1)])` -/
def P5971641322786568794.Spec : Prop :=
  ∀ n, P5971641322786568794.a n = A024110 n

end A024110

/-!
# A024111: a(n) = 9^n - n^10.

The programs for A024111, the canonical program `A024111.P7793302305722937161` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024111 has offset 0).

The definition of A024111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^10` (program `A024111.P7793302305722937161`, by `A024111.P7793302305722937161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024111.P7793302305722937161

`9^n-n^10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024111

/-- `9^n-n^10` -/
def P7793302305722937161.Spec : Prop :=
  ∀ n, P7793302305722937161.a n = A024111 n

theorem P7793302305722937161.correct : P7793302305722937161.Spec := by
  intro n
  simp only [A024111]

end A024111

/-! ## A024111.P1584968634396034131

`(A000584(n)+A000244(n))*A024028(n)`
-/

namespace A024111.P1584968634396034131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n + A000244 n) * A024028 n

end

end A024111.P1584968634396034131

namespace A024111

/-- `(A000584(n)+A000244(n))*A024028(n)` -/
def P1584968634396034131.Spec : Prop :=
  ∀ n, P1584968634396034131.a n = A024111 n

end A024111

/-! ## A024111.P9714217572606995679

`(A008776(n)-A024028(n))*A024028(n)`
-/

namespace A024111.P9714217572606995679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - A024028 n) * A024028 n

end

end A024111.P9714217572606995679

namespace A024111

/-- `(A008776(n)-A024028(n))*A024028(n)` -/
def P9714217572606995679.Spec : Prop :=
  ∀ n, P9714217572606995679.a n = A024111 n

end A024111

/-! ## A024111.P8508680169176490225

`(A000584(n)+A000244(n))*(A024023(n)+A024003(n))`
-/

namespace A024111.P8508680169176490225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n + A000244 n) * (A024023 n + A024003 n)

end

end A024111.P8508680169176490225

namespace A024111

/-- `(A000584(n)+A000244(n))*(A024023(n)+A024003(n))` -/
def P8508680169176490225.Spec : Prop :=
  ∀ n, P8508680169176490225.a n = A024111 n

end A024111

/-! ## A024111.P18183637358244193587

`floor(sqrt(A001019(2*n))-A008454(n))`
-/

namespace A024111.P18183637358244193587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001019 (2 * n) : ℝ) - (A008454 n : ℝ)⌋

end

end A024111.P18183637358244193587

namespace A024111

/-- `floor(sqrt(A001019(2*n))-A008454(n))` -/
def P18183637358244193587.Spec : Prop :=
  ∀ n, P18183637358244193587.a n = A024111 n

end A024111

/-!
# A024112: a(n) = 9^n - n^11.

The programs for A024112, the canonical program `A024112.P8524865851041838520` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024112 has offset 0).

The definition of A024112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^11` (program `A024112.P8524865851041838520`, by `A024112.P8524865851041838520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024112.P8524865851041838520

`9^n-n^11`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024112

/-- `9^n-n^11` -/
def P8524865851041838520.Spec : Prop :=
  ∀ n, P8524865851041838520.a n = A024112 n

theorem P8524865851041838520.correct : P8524865851041838520.Spec := by
  intro n
  simp only [A024112]

end A024112

/-! ## A024112.P10264218518298168911

`(A024023(2*n)+A024009(n))*(-1)^n*(-1)^n`
-/

namespace A024112.P10264218518298168911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 (2 * n) + A024009 n) * (-1) ^ n * (-1) ^ n

end

end A024112.P10264218518298168911

namespace A024112

/-- `(A024023(2*n)+A024009(n))*(-1)^n*(-1)^n` -/
def P10264218518298168911.Spec : Prop :=
  ∀ n, P10264218518298168911.a n = A024112 n

end A024112

/-! ## A024112.P7047246568647025575

`(A000244(n)²-A008455(n))*A033999(n)²`
-/

namespace A024112.P7047246568647025575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 - A008455 n) * A033999 n ^ 2

end

end A024112.P7047246568647025575

namespace A024112

/-- `(A000244(n)²-A008455(n))*A033999(n)²` -/
def P7047246568647025575.Spec : Prop :=
  ∀ n, P7047246568647025575.a n = A024112 n

end A024112

/-! ## A024112.P11993815880575955959

`(A000244(n)²-A008455(n))*a(A000038(n))` with `a(0)=1`
-/

namespace A024112.P11993815880575955959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000244 n ^ 2 - A008455 n) * a (A000038 n).toNat

end

end A024112.P11993815880575955959

namespace A024112

/-- `(A000244(n)²-A008455(n))*a(A000038(n))` -/
def P11993815880575955959.Spec : Prop :=
  ∀ n, P11993815880575955959.a n = A024112 n

end A024112

/-! ## A024112.P12342787248859257118

`(A000244(n)²-A008455(n))/A046143(∑[n]+1)`
-/

namespace A024112.P12342787248859257118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 - A008455 n : ℚ) / (A046143 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A024112.P12342787248859257118

namespace A024112

/-- `(A000244(n)²-A008455(n))/A046143(∑[n]+1)` -/
def P12342787248859257118.Spec : Prop :=
  ∀ n, P12342787248859257118.a n = (A024112 n : ℚ)

end A024112

/-!
# A024113: a(n) = 9^n-n^12.

The programs for A024113, the canonical program `A024113.P6465424657438598139` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024113 has offset 0).

The definition of A024113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-n^12` (program `A024113.P6465424657438598139`, by `A024113.P6465424657438598139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024113.P6465424657438598139

`9^n-n^12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024113

/-- `9^n-n^12` -/
def P6465424657438598139.Spec : Prop :=
  ∀ n, P6465424657438598139.a n = A024113 n

theorem P6465424657438598139.correct : P6465424657438598139.Spec := by
  intro n
  simp only [A024113]

end A024113

/-! ## A024113.P10545472310849866455

`(A001014(n)+A000244(n))*A024029(n)`
-/

namespace A024113.P10545472310849866455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n + A000244 n) * A024029 n

end

end A024113.P10545472310849866455

namespace A024113

/-- `(A001014(n)+A000244(n))*A024029(n)` -/
def P10545472310849866455.Spec : Prop :=
  ∀ n, P10545472310849866455.a n = A024113 n

end A024113

/-!
# A024114: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-8*x)*(1-12*x)).

The programs for A024114, there is no canonical definition to state claims against.
-/

/-! ## A024114.P3017426494473437275

`∑[A020594(n)]`
-/

namespace A024114.P3017426494473437275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024114.P3017426494473437275

/-! ## A024114.P9186930247259064863

`∑[A000079(n)*A016765(n)]`
-/

namespace A024114.P9186930247259064863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024114.P9186930247259064863

/-! ## A024114.P11858114379231347075

`2*A016260(n)-A016243(n)`
-/

namespace A024114.P11858114379231347075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016260 n - A016243 n

end

end A024114.P11858114379231347075

/-! ## A024114.P3952321091360469954

`2*A021844(n)-A021814(n)`
-/

namespace A024114.P3952321091360469954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021844 n - A021814 n

end

end A024114.P3952321091360469954

/-! ## A024114.P5261839038397028816

`∑[∑[A011782(n)]*A016765(n)]`
-/

namespace A024114.P5261839038397028816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A016765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024114.P5261839038397028816

/-!
# A024115: a(n) = 10^n - n.

The programs for A024115, the canonical program `A024115.P7224267279248567987` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024115 has offset 0).

The definition of A024115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n` (program `A024115.P7224267279248567987`, by `A024115.P7224267279248567987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024115.P7224267279248567987

`10^n-n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024115

/-- `10^n-n` -/
def P7224267279248567987.Spec : Prop :=
  ∀ n, P7224267279248567987.a n = A024115 n

theorem P7224267279248567987.correct : P7224267279248567987.Spec := by
  intro n
  simp only [A024115]

end A024115

/-!
# A024116: a(n) = 10^n - n^2.

The programs for A024116, the canonical program `A024116.P17971060724163524533` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024116 has offset 0).

The definition of A024116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n²` (program `A024116.P17971060724163524533`, by `A024116.P17971060724163524533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024116.P17971060724163524533

`10^n-n²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024116

/-- `10^n-n²` -/
def P17971060724163524533.Spec : Prop :=
  ∀ n, P17971060724163524533.a n = A024116 n

theorem P17971060724163524533.correct : P17971060724163524533.Spec := by
  intro n
  simp only [A024116]

end A024116

/-! ## A024116.P15062623373977577882

`ogf((1-4x+12x^2+9x^3)/(1-13x+33x^2-31x^3+10x^4))`
-/

namespace A024116.P15062623373977577882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 12, 9] [1, -13, 33, -31, 10] n

end

end A024116.P15062623373977577882

namespace A024116

/-- `ogf((1-4x+12x^2+9x^3)/(1-13x+33x^2-31x^3+10x^4))` -/
def P15062623373977577882.Spec : Prop :=
  ∀ n, P15062623373977577882.a n = A024116 n

end A024116

/-! ## A024116.P700107235135382685

`abs(n²-A011557(n))`
-/

namespace A024116.P700107235135382685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A011557 n|

end

end A024116.P700107235135382685

namespace A024116

/-- `abs(n²-A011557(n))` -/
def P700107235135382685.Spec : Prop :=
  ∀ n, P700107235135382685.a n = A024116 n

end A024116

/-! ## A024116.P12784428687683324410

`abs(10^n-A000290(n))`
-/

namespace A024116.P12784428687683324410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A000290 n|

end

end A024116.P12784428687683324410

namespace A024116

/-- `abs(10^n-A000290(n))` -/
def P12784428687683324410.Spec : Prop :=
  ∀ n, P12784428687683324410.a n = A024116 n

end A024116

/-! ## A024116.P15423225995413797463

`abs(1-(n²-A002283(n)))`
-/

namespace A024116.P15423225995413797463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n ^ 2 : ℤ) - A002283 n)|

end

end A024116.P15423225995413797463

namespace A024116

/-- `abs(1-(n²-A002283(n)))` -/
def P15423225995413797463.Spec : Prop :=
  ∀ n, P15423225995413797463.a n = A024116 n

end A024116

/-! ## A024116.P16834653442970778637

`abs(10^n-sqrt(A000583(n)))`
-/

namespace A024116.P16834653442970778637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℝ) - Real.sqrt (A000583 n : ℝ)|

end

end A024116.P16834653442970778637

namespace A024116

/-- `abs(10^n-sqrt(A000583(n)))` -/
def P16834653442970778637.Spec : Prop :=
  ∀ n, P16834653442970778637.a n = (A024116 n : ℝ)

end A024116

/-! ## A024116.P10585490259431513303

`abs(n*A028310(n)-10^n)`
-/

namespace A024116.P10585490259431513303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A028310 n - (10 ^ n : ℤ)|

end

end A024116.P10585490259431513303

namespace A024116

/-- `abs(n*A028310(n)-10^n)` -/
def P10585490259431513303.Spec : Prop :=
  ∀ n, P10585490259431513303.a n = A024116 n

end A024116

/-! ## A024116.P6981821122600455203

`abs(∑[comp[A003961(n+1)+1]]-10^n)`
-/

namespace A024116.P6981821122600455203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (10 ^ n : ℤ)|

end

end A024116.P6981821122600455203

namespace A024116

/-- `abs(∑[comp[A003961(n+1)+1]]-10^n)` -/
def P6981821122600455203.Spec : Prop :=
  ∀ n, P6981821122600455203.a n = A024116 n

end A024116

/-! ## A024116.P5740184997896085308

`abs(A178500(n)-A253909(n))`
-/

namespace A024116.P5740184997896085308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178500 n - A253909 n|

end

end A024116.P5740184997896085308

namespace A024116

/-- `abs(A178500(n)-A253909(n))` -/
def P5740184997896085308.Spec : Prop :=
  ∀ n, P5740184997896085308.a n = A024116 n

end A024116

/-! ## A024116.P2526445872289238979

`record[A286507(n)-A002620(n)]`
-/

namespace A024116.P2526445872289238979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024116.P2526445872289238979

namespace A024116

/-- `record[A286507(n)-A002620(n)]` -/
def P2526445872289238979.Spec : Prop :=
  ∀ n, P2526445872289238979.a n = A024116 n

end A024116

/-! ## A024116.P7380806472788160205

`abs(A130517(∑[n+1])²-A178500(n))`
-/

namespace A024116.P7380806472788160205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130517 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A178500 n|

end

end A024116.P7380806472788160205

namespace A024116

/-- `abs(A130517(∑[n+1])²-A178500(n))` -/
def P7380806472788160205.Spec : Prop :=
  ∀ n, P7380806472788160205.a n = A024116 n

end A024116

/-! ## A024116.P10540719655285584489

`(10^n-A000290(n))/∑[n+1]*A000217(n+1)`
-/

namespace A024116.P10540719655285584489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - A000290 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A000217 (n + 1) : ℚ)

end

end A024116.P10540719655285584489

namespace A024116

/-- `(10^n-A000290(n))/∑[n+1]*A000217(n+1)` -/
def P10540719655285584489.Spec : Prop :=
  ∀ n, P10540719655285584489.a n = (A024116 n : ℚ)

end A024116

/-! ## A024116.P2475965721874019885

`(10^n-A000290(n))^A206774(A036952(n+1))`
-/

namespace A024116.P2475965721874019885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - A000290 n : ℚ) ^ (A206774 (A036952 (n + 1)).toNat : ℤ)

end

end A024116.P2475965721874019885

namespace A024116

/-- `(10^n-A000290(n))^A206774(A036952(n+1))` -/
def P2475965721874019885.Spec : Prop :=
  ∀ n, P2475965721874019885.a n = (A024116 n : ℚ)

end A024116

/-! ## A024116.P3609540039895094960

`abs(n²-Δ[A002275(n)])`
-/

namespace A024116.P3609540039895094960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (f1 (n + 1) - f1 n)|

end

end A024116.P3609540039895094960

namespace A024116

/-- `abs(n²-Δ[A002275(n)])` -/
def P3609540039895094960.Spec : Prop :=
  ∀ n, P3609540039895094960.a n = A024116 n

end A024116

/-! ## A024116.P13098862869968604103

`abs(n²+A002275(n)-A002275(n+1))`
-/

namespace A024116.P13098862869968604103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + (A002275 n - A002275 (n + 1))|

end

end A024116.P13098862869968604103

namespace A024116

/-- `abs(n²+A002275(n)-A002275(n+1))` -/
def P13098862869968604103.Spec : Prop :=
  ∀ n, P13098862869968604103.a n = A024116 n

end A024116

/-! ## A024116.P11311014269192114120

`abs(n²+A124001(n)-A092245(n+1))`
-/

namespace A024116.P11311014269192114120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + (A124001 n - A092245 (n + 1))|

end

end A024116.P11311014269192114120

namespace A024116

/-- `abs(n²+A124001(n)-A092245(n+1))` -/
def P11311014269192114120.Spec : Prop :=
  ∀ n, P11311014269192114120.a n = A024116 n

end A024116

/-! ## A024116.P9219736613624437379

`-(n²+A033873(n)-A003617(n+1))`
-/

namespace A024116.P9219736613624437379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) + (A033873 n - A003617 (n + 1)))

end

end A024116.P9219736613624437379

namespace A024116

/-- `-(n²+A033873(n)-A003617(n+1))` -/
def P9219736613624437379.Spec : Prop :=
  ∀ n, P9219736613624437379.a n = A024116 n

theorem P9219736613624437379.correct : P9219736613624437379.Spec := by
  intro n
  simp only [A024116, Nat.add_sub_cancel, A024116.P9219736613624437379.a, A024116.P17971060724163524533.a, A003617, A003617.P3664545779481022082.a, A033873, A033873.P18414686977204439608.a, A011557, A011557.P11220211478167790856.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024116

/-!
# A024117: a(n) = 10^n - n^3.

The programs for A024117, the canonical program `A024117.P14091664100680304392` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024117 has offset 0).

The definition of A024117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^3` (program `A024117.P14091664100680304392`, by `A024117.P14091664100680304392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024117.P14091664100680304392

`10^n-n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024117

/-- `10^n-n^3` -/
def P14091664100680304392.Spec : Prop :=
  ∀ n, P14091664100680304392.a n = A024117 n

theorem P14091664100680304392.correct : P14091664100680304392.Spec := by
  intro n
  simp only [A024117]

end A024117

/-! ## A024117.P3641041308592420270

`ogf((1-5x+12x^2+35x^3+11x^4)/(1-14x+46x^2-64x^3+41x^4-10x^5))`
-/

namespace A024117.P3641041308592420270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 12, 35, 11] [1, -14, 46, -64, 41, -10] n

end

end A024117.P3641041308592420270

namespace A024117

/-- `ogf((1-5x+12x^2+35x^3+11x^4)/(1-14x+46x^2-64x^3+41x^4-10x^5))` -/
def P3641041308592420270.Spec : Prop :=
  ∀ n, P3641041308592420270.a n = A024117 n

end A024117

/-! ## A024117.P5484756225018711806

`abs(n*n²-A011557(n))`
-/

namespace A024117.P5484756225018711806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A011557 n|

end

end A024117.P5484756225018711806

namespace A024117

/-- `abs(n*n²-A011557(n))` -/
def P5484756225018711806.Spec : Prop :=
  ∀ n, P5484756225018711806.a n = A024117 n

end A024117

/-! ## A024117.P17322363527591498838

`abs(n*n²-A024115(n)-n)`
-/

namespace A024117.P17322363527591498838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A024115 n - (n : ℤ)|

end

end A024117.P17322363527591498838

namespace A024117

/-- `abs(n*n²-A024115(n)-n)` -/
def P17322363527591498838.Spec : Prop :=
  ∀ n, P17322363527591498838.a n = A024117 n

end A024117

/-! ## A024117.P12044941166798133617

`abs(A011557(n)-A000578(n))`
-/

namespace A024117.P12044941166798133617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A000578 n|

end

end A024117.P12044941166798133617

namespace A024117

/-- `abs(A011557(n)-A000578(n))` -/
def P12044941166798133617.Spec : Prop :=
  ∀ n, P12044941166798133617.a n = A024117 n

end A024117

/-! ## A024117.P17207244934717837734

`abs(A000578(n)-(A002283(n)+1))`
-/

namespace A024117.P17207244934717837734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - (A002283 n + 1)|

end

end A024117.P17207244934717837734

namespace A024117

/-- `abs(A000578(n)-(A002283(n)+1))` -/
def P17207244934717837734.Spec : Prop :=
  ∀ n, P17207244934717837734.a n = A024117 n

end A024117

/-! ## A024117.P2068910165231992157

`floor(A011557(n)-A033431(n)/2)`
-/

namespace A024117.P2068910165231992157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011557 n : ℚ) - (A033431 n : ℚ) / 2⌋

end

end A024117.P2068910165231992157

namespace A024117

/-- `floor(A011557(n)-A033431(n)/2)` -/
def P2068910165231992157.Spec : Prop :=
  ∀ n, P2068910165231992157.a n = A024117 n

end A024117

/-! ## A024117.P12382330540213108571

`gcd(A011557(n)-n*n², A008683(4*(n+1)))`
-/

namespace A024117.P12382330540213108571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011557 n - (n * n ^ 2 : ℤ)) (A008683 (4 * (n + 1)))

end

end A024117.P12382330540213108571

namespace A024117

/-- `gcd(A011557(n)-n*n², A008683(4*(n+1)))` -/
def P12382330540213108571.Spec : Prop :=
  ∀ n, (P12382330540213108571.a n : ℤ) = A024117 n

end A024117

/-! ## A024117.P15776331287894866258

`(A011557(n)-A033431(n)/2)*A007318(∑[n])`
-/

namespace A024117.P15776331287894866258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A011557 n : ℚ) - (A033431 n : ℚ) / 2) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A024117.P15776331287894866258

namespace A024117

/-- `(A011557(n)-A033431(n)/2)*A007318(∑[n])` -/
def P15776331287894866258.Spec : Prop :=
  ∀ n, P15776331287894866258.a n = (A024117 n : ℚ)

end A024117

/-! ## A024117.P3801027117569897111

`Δ[A002275(n)-A161680(n)²]`
-/

namespace A024117.P3801027117569897111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024117.P3801027117569897111

namespace A024117

/-- `Δ[A002275(n)-A161680(n)²]` -/
def P3801027117569897111.Spec : Prop :=
  ∀ n, P3801027117569897111.a n = A024117 n

end A024117

/-! ## A024117.P6119941132515262673

`Δ[A047855(n)-A161680(n)²]`
-/

namespace A024117.P6119941132515262673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024117.P6119941132515262673

namespace A024117

/-- `Δ[A047855(n)-A161680(n)²]` -/
def P6119941132515262673.Spec : Prop :=
  ∀ n, P6119941132515262673.a n = A024117 n

end A024117

/-!
# A024118: a(n) = 10^n - n^4.

The programs for A024118, the canonical program `A024118.P17191116103762530581` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024118 has offset 0).

The definition of A024118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^4` (program `A024118.P17191116103762530581`, by `A024118.P17191116103762530581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024118.P17191116103762530581

`10^n-n^4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024118

/-- `10^n-n^4` -/
def P17191116103762530581.Spec : Prop :=
  ∀ n, P17191116103762530581.a n = A024118 n

theorem P17191116103762530581.correct : P17191116103762530581.Spec := by
  intro n
  simp only [A024118]

end A024118

/-! ## A024118.P9445620837632417049

`abs(n²²-A011557(n))`
-/

namespace A024118.P9445620837632417049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A011557 n|

end

end A024118.P9445620837632417049

namespace A024118

/-- `abs(n²²-A011557(n))` -/
def P9445620837632417049.Spec : Prop :=
  ∀ n, P9445620837632417049.a n = A024118 n

end A024118

/-! ## A024118.P13368578991246965791

`abs(A011557(n)-A000583(n))`
-/

namespace A024118.P13368578991246965791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A000583 n|

end

end A024118.P13368578991246965791

namespace A024118

/-- `abs(A011557(n)-A000583(n))` -/
def P13368578991246965791.Spec : Prop :=
  ∀ n, P13368578991246965791.a n = A024118 n

end A024118

/-! ## A024118.P11197379323867966709

`abs(A178500(n)-A253909(n)²)`
-/

namespace A024118.P11197379323867966709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178500 n - A253909 n ^ 2|

end

end A024118.P11197379323867966709

namespace A024118

/-- `abs(A178500(n)-A253909(n)²)` -/
def P11197379323867966709.Spec : Prop :=
  ∀ n, P11197379323867966709.a n = A024118 n

end A024118

/-! ## A024118.P440231265106460344

`floor(A011557(n)-sqrt(A001016(n)))`
-/

namespace A024118.P440231265106460344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011557 n : ℝ) - Real.sqrt (A001016 n : ℝ)⌋

end

end A024118.P440231265106460344

namespace A024118

/-- `floor(A011557(n)-sqrt(A001016(n)))` -/
def P440231265106460344.Spec : Prop :=
  ∀ n, P440231265106460344.a n = A024118 n

end A024118

/-! ## A024118.P8547260038073211595

`record[A286507(n)-A002620(n)²]`
-/

namespace A024118.P8547260038073211595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n - A002620 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024118.P8547260038073211595

namespace A024118

/-- `record[A286507(n)-A002620(n)²]` -/
def P8547260038073211595.Spec : Prop :=
  ∀ n, P8547260038073211595.a n = A024118 n

end A024118

/-! ## A024118.P17332128345768526869

`Δ[A002275(n)-A267691(n)]`
-/

namespace A024118.P17332128345768526869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A267691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024118.P17332128345768526869

namespace A024118

/-- `Δ[A002275(n)-A267691(n)]` -/
def P17332128345768526869.Spec : Prop :=
  ∀ n, P17332128345768526869.a n = A024118 n

end A024118

/-! ## A024118.P17950602096527829943

`abs(A178500(n)-A253909(n²))`
-/

namespace A024118.P17950602096527829943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178500 n - A253909 (n ^ 2)|

end

end A024118.P17950602096527829943

namespace A024118

/-- `abs(A178500(n)-A253909(n²))` -/
def P17950602096527829943.Spec : Prop :=
  ∀ n, P17950602096527829943.a n = A024118 n

end A024118

/-! ## A024118.P17146767802720172446

`(A011557(n)-n²²)%A249164(n+2)`
-/

namespace A024118.P17146767802720172446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011557 n - ((n ^ 2) ^ 2 : ℤ)) (A249164 (n + 2))

end

end A024118.P17146767802720172446

namespace A024118

/-- `(A011557(n)-n²²)%A249164(n+2)` -/
def P17146767802720172446.Spec : Prop :=
  ∀ n, P17146767802720172446.a n = A024118 n

end A024118

/-!
# A024119: a(n) = 10^n - n^5.

The programs for A024119, the canonical program `A024119.P3834542903987928036` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024119 has offset 0).

The definition of A024119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^5` (program `A024119.P3834542903987928036`, by `A024119.P3834542903987928036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024119.P3834542903987928036

`10^n-n^5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024119

/-- `10^n-n^5` -/
def P3834542903987928036.Spec : Prop :=
  ∀ n, P3834542903987928036.a n = A024119 n

theorem P3834542903987928036.correct : P3834542903987928036.Spec := by
  intro n
  simp only [A024119]

end A024119

/-! ## A024119.P9745027279461967174

`abs(A000584(n)-A011557(n))`
-/

namespace A024119.P9745027279461967174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000584 n - A011557 n|

end

end A024119.P9745027279461967174

namespace A024119

/-- `abs(A000584(n)-A011557(n))` -/
def P9745027279461967174.Spec : Prop :=
  ∀ n, P9745027279461967174.a n = A024119 n

end A024119

/-! ## A024119.P244677099923877007

`(A000584(n)-A011557(n))*(A005843(n)-(2*n+1))`
-/

namespace A024119.P244677099923877007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n - A011557 n) * (A005843 n - (2 * n + 1 : ℤ))

end

end A024119.P244677099923877007

namespace A024119

/-- `(A000584(n)-A011557(n))*(A005843(n)-(2*n+1))` -/
def P244677099923877007.Spec : Prop :=
  ∀ n, P244677099923877007.a n = A024119 n

theorem P244677099923877007.correct : P244677099923877007.Spec := by
  intro n
  simp only [A024119, Nat.add_sub_cancel, A024119.P244677099923877007.a, A024119.P3834542903987928036.a, A000584, A000584.P5477385692209315495.a, A005843, A005843.P3167286115683555970.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024119

/-! ## A024119.P4912864847363450170

`Δ[A098406(n)-A263689(n)]`
-/

namespace A024119.P4912864847363450170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024119.P4912864847363450170

namespace A024119

/-- `Δ[A098406(n)-A263689(n)]` -/
def P4912864847363450170.Spec : Prop :=
  ∀ n, P4912864847363450170.a n = A024119 n

end A024119

/-!
# A024120: a(n) = 10^n - n^6.

The programs for A024120, the canonical program `A024120.P13937657747517274108` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024120 has offset 0).

The definition of A024120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^6` (program `A024120.P13937657747517274108`, by `A024120.P13937657747517274108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024120.P13937657747517274108

`10^n-n^6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024120

/-- `10^n-n^6` -/
def P13937657747517274108.Spec : Prop :=
  ∀ n, P13937657747517274108.a n = A024120 n

theorem P13937657747517274108.correct : P13937657747517274108.Spec := by
  intro n
  simp only [A024120]

end A024120

/-! ## A024120.P806135381439506774

`abs(A001014(n)-A011557(n))`
-/

namespace A024120.P806135381439506774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001014 n - A011557 n|

end

end A024120.P806135381439506774

namespace A024120

/-- `abs(A001014(n)-A011557(n))` -/
def P806135381439506774.Spec : Prop :=
  ∀ n, P806135381439506774.a n = A024120 n

end A024120

/-! ## A024120.P3865273087294122156

`abs(A024118(n)-A136038(n))`
-/

namespace A024120.P3865273087294122156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024118 n - A136038 n|

end

end A024120.P3865273087294122156

namespace A024120

/-- `abs(A024118(n)-A136038(n))` -/
def P3865273087294122156.Spec : Prop :=
  ∀ n, P3865273087294122156.a n = A024120 n

end A024120

/-! ## A024120.P14183339131433145901

`abs(A001014(n)-A017936(A005408(n)))`
-/

namespace A024120.P14183339131433145901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001014 n - A017936 (A005408 n).toNat|

end

end A024120.P14183339131433145901

namespace A024120

/-- `abs(A001014(n)-A017936(A005408(n)))` -/
def P14183339131433145901.Spec : Prop :=
  ∀ n, P14183339131433145901.a n = A024120 n

end A024120

/-! ## A024120.P14710262369233310209

`(A001014(n)-A011557(n))*A118830(Δ[n²])`
-/

namespace A024120.P14710262369233310209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n - A011557 n) * A118830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024120.P14710262369233310209

namespace A024120

/-- `(A001014(n)-A011557(n))*A118830(Δ[n²])` -/
def P14710262369233310209.Spec : Prop :=
  ∀ n, P14710262369233310209.a n = A024120 n

end A024120

/-! ## A024120.P2786922268988910481

`(A024118(n)-A136038(n))*A007318(∑[n+2])`
-/

namespace A024120.P2786922268988910481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024118 n - A136038 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024120.P2786922268988910481

namespace A024120

/-- `(A024118(n)-A136038(n))*A007318(∑[n+2])` -/
def P2786922268988910481.Spec : Prop :=
  ∀ n, P2786922268988910481.a n = A024120 n

end A024120

/-! ## A024120.P17731960734244829778

`-((A001014(n)-A011557(n))*A007318(and(n, -(n+1))))`
-/

namespace A024120.P17731960734244829778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A001014 n - A011557 n) * A007318 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat)

end

end A024120.P17731960734244829778

namespace A024120

/-- `-((A001014(n)-A011557(n))*A007318(and(n, -(n+1))))` -/
def P17731960734244829778.Spec : Prop :=
  ∀ n, P17731960734244829778.a n = A024120 n

end A024120

/-! ## A024120.P9477393771177972391

`(A024118(n)-A136038(n))*A001222(A002145(n+1))`
-/

namespace A024120.P9477393771177972391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024118 n - A136038 n) * A001222 (A002145 (n + 1)).toNat

end

end A024120.P9477393771177972391

namespace A024120

/-- `(A024118(n)-A136038(n))*A001222(A002145(n+1))` -/
def P9477393771177972391.Spec : Prop :=
  ∀ n, P9477393771177972391.a n = A024120 n

end A024120

/-! ## A024120.P14135571475356745873

`(A001014(n)-A011557(n))*A033999(A283983(n))`
-/

namespace A024120.P14135571475356745873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n - A011557 n) * A033999 (A283983 n).toNat

end

end A024120.P14135571475356745873

namespace A024120

/-- `(A001014(n)-A011557(n))*A033999(A283983(n))` -/
def P14135571475356745873.Spec : Prop :=
  ∀ n, P14135571475356745873.a n = A024120 n

end A024120

/-!
# A024121: a(n) = 10^n - n^7.

The programs for A024121, the canonical program `A024121.P15094850580278157121` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024121 has offset 0).

The definition of A024121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^7` (program `A024121.P15094850580278157121`, by `A024121.P15094850580278157121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024121.P15094850580278157121

`10^n-n^7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024121

/-- `10^n-n^7` -/
def P15094850580278157121.Spec : Prop :=
  ∀ n, P15094850580278157121.a n = A024121 n

theorem P15094850580278157121.correct : P15094850580278157121.Spec := by
  intro n
  simp only [A024121]

end A024121

/-! ## A024121.P8707628326247016690

`floor(A024108(n)+A050720(2*(n+1))/9)`
-/

namespace A024121.P8707628326247016690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024108 n : ℚ) + (A050720 (2 * (n + 1)) : ℚ) / 9⌋

end

end A024121.P8707628326247016690

namespace A024121

/-- `floor(A024108(n)+A050720(2*(n+1))/9)` -/
def P8707628326247016690.Spec : Prop :=
  ∀ n, P8707628326247016690.a n = A024121 n

end A024121

/-!
# A024122: a(n) = 10^n - n^8.

The programs for A024122, the canonical program `A024122.P3998614830522493599` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024122 has offset 0).

The definition of A024122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^8` (program `A024122.P3998614830522493599`, by `A024122.P3998614830522493599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024122.P3998614830522493599

`10^n-n^8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024122

/-- `10^n-n^8` -/
def P3998614830522493599.Spec : Prop :=
  ∀ n, P3998614830522493599.a n = A024122 n

theorem P3998614830522493599.correct : P3998614830522493599.Spec := by
  intro n
  simp only [A024122]

end A024122

/-!
# A024123: a(n) = 10^n - n^9.

The programs for A024123, the canonical program `A024123.P13272972538010996408` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024123 has offset 0).

The definition of A024123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^9` (program `A024123.P13272972538010996408`, by `A024123.P13272972538010996408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024123.P13272972538010996408

`10^n-n^9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024123

/-- `10^n-n^9` -/
def P13272972538010996408.Spec : Prop :=
  ∀ n, P13272972538010996408.a n = A024123 n

theorem P13272972538010996408.correct : P13272972538010996408.Spec := by
  intro n
  simp only [A024123]

end A024123

/-! ## A024123.P13138742846384695782

`round(sqrt(A168624(n))-A001017(n))`
-/

namespace A024123.P13138742846384695782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A168624 n : ℝ) - (A001017 n : ℝ))

end

end A024123.P13138742846384695782

namespace A024123

/-- `round(sqrt(A168624(n))-A001017(n))` -/
def P13138742846384695782.Spec : Prop :=
  ∀ n, P13138742846384695782.a n = A024123 n

end A024123

/-! ## A024123.P16043828192378147029

`(A011557(n)-n*A000583(n)²)*A014963(A158445(n+1))`
-/

namespace A024123.P16043828192378147029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n - (n : ℤ) * A000583 n ^ 2) * A014963 (A158445 (n + 1)).toNat

end

end A024123.P16043828192378147029

namespace A024123

/-- `(A011557(n)-n*A000583(n)²)*A014963(A158445(n+1))` -/
def P16043828192378147029.Spec : Prop :=
  ∀ n, P16043828192378147029.a n = A024123 n

end A024123

/-!
# A024124: a(n) = 10^n - n^10.

The programs for A024124, the canonical program `A024124.P6724019648273413541` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024124 has offset 0).

The definition of A024124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^10` (program `A024124.P6724019648273413541`, by `A024124.P6724019648273413541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024124.P6724019648273413541

`10^n-n^10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024124

/-- `10^n-n^10` -/
def P6724019648273413541.Spec : Prop :=
  ∀ n, P6724019648273413541.a n = A024124 n

theorem P6724019648273413541.correct : P6724019648273413541.Spec := by
  intro n
  simp only [A024124]

end A024124

/-! ## A024124.P16824450205986846320

`A055651(eq[10, A025581(n)])`
-/

namespace A024124.P16824450205986846320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024124.P16824450205986846320

namespace A024124

/-- `A055651(eq[10, A025581(n)])` -/
def P16824450205986846320.Spec : Prop :=
  ∀ n, P16824450205986846320.a n = A024124 n

end A024124

/-! ## A024124.P15494759677313969368

`A055651(A055999(n+8)-5)`
-/

namespace A024124.P15494759677313969368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A055999 (n + 8) - 5).toNat

end

end A024124.P15494759677313969368

namespace A024124

/-- `A055651(A055999(n+8)-5)` -/
def P15494759677313969368.Spec : Prop :=
  ∀ n, P15494759677313969368.a n = A024124 n

end A024124

/-! ## A024124.P1848424926024070124

`A055651(eq[11, A004736(n+1)])`
-/

namespace A024124.P1848424926024070124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024124.P1848424926024070124

namespace A024124

/-- `A055651(eq[11, A004736(n+1)])` -/
def P1848424926024070124.Spec : Prop :=
  ∀ n, P1848424926024070124.a n = A024124 n

end A024124

/-! ## A024124.P7104997031264257133

`A055651(A134869(n+10)+n-1)`
-/

namespace A024124.P7104997031264257133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A134869 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A024124.P7104997031264257133

namespace A024124

/-- `A055651(A134869(n+10)+n-1)` -/
def P7104997031264257133.Spec : Prop :=
  ∀ n, P7104997031264257133.a n = A024124 n

end A024124

/-!
# A024125: a(n) = 10^n - n^11.

The programs for A024125, the canonical program `A024125.P11417554694117109612` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024125 has offset 0).

The definition of A024125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^11` (program `A024125.P11417554694117109612`, by `A024125.P11417554694117109612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024125.P11417554694117109612

`10^n-n^11`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024125

/-- `10^n-n^11` -/
def P11417554694117109612.Spec : Prop :=
  ∀ n, P11417554694117109612.a n = A024125 n

theorem P11417554694117109612.correct : P11417554694117109612.Spec := by
  intro n
  simp only [A024125]

end A024125

/-! ## A024125.P10353534108784848734

`(A011557(n)-A008455(n))/A007318(∑[n])`
-/

namespace A024125.P10353534108784848734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n - A008455 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A024125.P10353534108784848734

namespace A024125

/-- `(A011557(n)-A008455(n))/A007318(∑[n])` -/
def P10353534108784848734.Spec : Prop :=
  ∀ n, P10353534108784848734.a n = (A024125 n : ℚ)

end A024125

/-! ## A024125.P16962965729760959794

`(A002283(n)+1-A008455(n))*A033999(n)²`
-/

namespace A024125.P16962965729760959794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002283 n + 1 - A008455 n) * A033999 n ^ 2

end

end A024125.P16962965729760959794

namespace A024125

/-- `(A002283(n)+1-A008455(n))*A033999(n)²` -/
def P16962965729760959794.Spec : Prop :=
  ∀ n, P16962965729760959794.a n = A024125 n

end A024125

/-! ## A024125.P16398332792240353951

`(A011557(n)-A008455(n))*A001222(A086472(n+1))`
-/

namespace A024125.P16398332792240353951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n - A008455 n) * A001222 (A086472 (n + 1)).toNat

end

end A024125.P16398332792240353951

namespace A024125

/-- `(A011557(n)-A008455(n))*A001222(A086472(n+1))` -/
def P16398332792240353951.Spec : Prop :=
  ∀ n, P16398332792240353951.a n = A024125 n

end A024125

/-! ## A024125.P13698534609692051918

`(A011557(n)-A008455(n))/gcd(n, A000248(n))`
-/

namespace A024125.P13698534609692051918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n - A008455 n : ℚ) / (Int.gcd (n : ℤ) (A000248 n) : ℚ)

end

end A024125.P13698534609692051918

namespace A024125

/-- `(A011557(n)-A008455(n))/gcd(n, A000248(n))` -/
def P13698534609692051918.Spec : Prop :=
  ∀ n, P13698534609692051918.a n = (A024125 n : ℚ)

end A024125

/-!
# A024126: a(n) = 10^n - n^12.

The programs for A024126, the canonical program `A024126.P15081268258570000974` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024126 has offset 0).

The definition of A024126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-n^12` (program `A024126.P15081268258570000974`, by `A024126.P15081268258570000974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024126.P15081268258570000974

`10^n-n^12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024126

/-- `10^n-n^12` -/
def P15081268258570000974.Spec : Prop :=
  ∀ n, P15081268258570000974.a n = A024126 n

theorem P15081268258570000974.correct : P15081268258570000974.Spec := by
  intro n
  simp only [A024126]

end A024126

/-! ## A024126.P11957194982125492030

`(A001014(n²)-A011557(n))*(1-4/2)`
-/

namespace A024126.P11957194982125492030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 (n ^ 2) - A011557 n : ℚ) * (1 - (4 : ℚ) / 2)

end

end A024126.P11957194982125492030

namespace A024126

/-- `(A001014(n²)-A011557(n))*(1-4/2)` -/
def P11957194982125492030.Spec : Prop :=
  ∀ n, P11957194982125492030.a n = (A024126 n : ℚ)

theorem P11957194982125492030.correct : P11957194982125492030.Spec := by
  intro n
  simp only [A024126, Nat.add_sub_cancel, A024126.P11957194982125492030.a, A024126.P15081268258570000974.a, A001014, A001014.P10270364271630987481.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024126

/-! ## A024126.P659102677505217079

`(A001014(n²)-A011557(n))/A057428(n+1)`
-/

namespace A024126.P659102677505217079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 (n ^ 2) - A011557 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A024126.P659102677505217079

namespace A024126

/-- `(A001014(n²)-A011557(n))/A057428(n+1)` -/
def P659102677505217079.Spec : Prop :=
  ∀ n, P659102677505217079.a n = (A024126 n : ℚ)

end A024126

/-!
# A024127: a(n) = 11^n-1.

The programs for A024127, the canonical program `A024127.P11041693200226580728` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024127 has offset 0).

The definition of A024127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-1` (program `A024127.P11041693200226580728`, by `A024127.P11041693200226580728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024127.P11041693200226580728

`11^n-1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024127

/-- `11^n-1` -/
def P11041693200226580728.Spec : Prop :=
  ∀ n, P11041693200226580728.a n = A024127 n

theorem P11041693200226580728.correct : P11041693200226580728.Spec := by
  intro n
  simp only [A024127]

end A024127

/-!
# A024128: a(n) = 11^n - n.

The programs for A024128, the canonical program `A024128.P11402012561748999173` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024128 has offset 0).

The definition of A024128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n` (program `A024128.P11402012561748999173`, by `A024128.P11402012561748999173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024128.P11402012561748999173

`11^n-n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024128

/-- `11^n-n` -/
def P11402012561748999173.Spec : Prop :=
  ∀ n, P11402012561748999173.a n = A024128 n

theorem P11402012561748999173.correct : P11402012561748999173.Spec := by
  intro n
  simp only [A024128]

end A024128

/-!
# A024129: a(n) = 11^n - n^2.

The programs for A024129, the canonical program `A024129.P16007207259459301615` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024129 has offset 0).

The definition of A024129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n²` (program `A024129.P16007207259459301615`, by `A024129.P16007207259459301615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024129.P16007207259459301615

`11^n-n²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024129

/-- `11^n-n²` -/
def P16007207259459301615.Spec : Prop :=
  ∀ n, P16007207259459301615.a n = A024129 n

theorem P16007207259459301615.correct : P16007207259459301615.Spec := by
  intro n
  simp only [A024129]

end A024129

/-! ## A024129.P17779011799319571320

`ogf((1-4x+13x^2+10x^3)/(1-14x+36x^2-34x^3+11x^4))`
-/

namespace A024129.P17779011799319571320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 13, 10] [1, -14, 36, -34, 11] n

end

end A024129.P17779011799319571320

namespace A024129

/-- `ogf((1-4x+13x^2+10x^3)/(1-14x+36x^2-34x^3+11x^4))` -/
def P17779011799319571320.Spec : Prop :=
  ∀ n, P17779011799319571320.a n = A024129 n

end A024129

/-! ## A024129.P16889453809031703868

`abs(n²-A001020(n))`
-/

namespace A024129.P16889453809031703868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A001020 n|

end

end A024129.P16889453809031703868

namespace A024129

/-- `abs(n²-A001020(n))` -/
def P16889453809031703868.Spec : Prop :=
  ∀ n, P16889453809031703868.a n = A024129 n

end A024129

/-! ## A024129.P11269674207719941201

`abs(A001020(n)-A000290(n))`
-/

namespace A024129.P11269674207719941201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A000290 n|

end

end A024129.P11269674207719941201

namespace A024129

/-- `abs(A001020(n)-A000290(n))` -/
def P11269674207719941201.Spec : Prop :=
  ∀ n, P11269674207719941201.a n = A024129 n

end A024129

/-! ## A024129.P3694209982215738045

`∑[A055276(n)-A004273(n)]`
-/

namespace A024129.P3694209982215738045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055276 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024129.P3694209982215738045

namespace A024129

/-- `∑[A055276(n)-A004273(n)]` -/
def P3694209982215738045.Spec : Prop :=
  ∀ n, P3694209982215738045.a n = A024129 n

end A024129

/-! ## A024129.P6510138419336626117

`abs(A001020(n)-∑[A004273(n)])`
-/

namespace A024129.P6510138419336626117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A024129.P6510138419336626117

namespace A024129

/-- `abs(A001020(n)-∑[A004273(n)])` -/
def P6510138419336626117.Spec : Prop :=
  ∀ n, P6510138419336626117.a n = A024129 n

end A024129

/-! ## A024129.P13351472243940128504

`abs(n²-A038241(A000096(n)))`
-/

namespace A024129.P13351472243940128504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A038241 (A000096 n).toNat|

end

end A024129.P13351472243940128504

namespace A024129

/-- `abs(n²-A038241(A000096(n)))` -/
def P13351472243940128504.Spec : Prop :=
  ∀ n, P13351472243940128504.a n = A024129 n

end A024129

/-!
# A024130: a(n) = 11^n - n^3.

The programs for A024130, the canonical program `A024130.P10284632125409092359` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024130 has offset 0).

The definition of A024130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^3` (program `A024130.P10284632125409092359`, by `A024130.P10284632125409092359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024130.P10284632125409092359

`11^n-n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024130

/-- `11^n-n^3` -/
def P10284632125409092359.Spec : Prop :=
  ∀ n, P10284632125409092359.a n = A024130 n

theorem P10284632125409092359.correct : P10284632125409092359.Spec := by
  intro n
  simp only [A024130]

end A024130

/-! ## A024130.P13107509920267872027

`ogf((1-5x+13x^2+39x^3+12x^4)/(1-15x+50x^2-70x^3+45x^4-11x^5))`
-/

namespace A024130.P13107509920267872027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 13, 39, 12] [1, -15, 50, -70, 45, -11] n

end

end A024130.P13107509920267872027

namespace A024130

/-- `ogf((1-5x+13x^2+39x^3+12x^4)/(1-15x+50x^2-70x^3+45x^4-11x^5))` -/
def P13107509920267872027.Spec : Prop :=
  ∀ n, P13107509920267872027.a n = A024130 n

end A024130

/-! ## A024130.P3792321397809930562

`abs(n*n²-A001020(n))`
-/

namespace A024130.P3792321397809930562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A001020 n|

end

end A024130.P3792321397809930562

namespace A024130

/-- `abs(n*n²-A001020(n))` -/
def P3792321397809930562.Spec : Prop :=
  ∀ n, P3792321397809930562.a n = A024130 n

end A024130

/-! ## A024130.P1938420659302929111

`(A000578(n)-A001020(n))*(1-4/2)`
-/

namespace A024130.P1938420659302929111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n - A001020 n : ℚ) * (1 - (4 : ℚ) / 2)

end

end A024130.P1938420659302929111

namespace A024130

/-- `(A000578(n)-A001020(n))*(1-4/2)` -/
def P1938420659302929111.Spec : Prop :=
  ∀ n, P1938420659302929111.a n = (A024130 n : ℚ)

theorem P1938420659302929111.correct : P1938420659302929111.Spec := by
  intro n
  simp only [A024130, Nat.add_sub_cancel, A024130.P1938420659302929111.a, A024130.P10284632125409092359.a, A000578, A000578.P12162961755414704816.a, A001020, A001020.P6110418391945528251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024130

/-! ## A024130.P13952258031291827725

`record[A001020(A002262(n))-A163282(n)]`
-/

namespace A024130.P13952258031291827725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat - A163282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024130.P13952258031291827725

namespace A024130

/-- `record[A001020(A002262(n))-A163282(n)]` -/
def P13952258031291827725.Spec : Prop :=
  ∀ n, P13952258031291827725.a n = A024130 n

end A024130

/-! ## A024130.P5968501268641351477

`lcm(A000578(n)-A001020(n), A000034(n))`
-/

namespace A024130.P5968501268641351477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n - A001020 n) (A000034 n)

end

end A024130.P5968501268641351477

namespace A024130

/-- `lcm(A000578(n)-A001020(n), A000034(n))` -/
def P5968501268641351477.Spec : Prop :=
  ∀ n, (P5968501268641351477.a n : ℤ) = A024130 n

end A024130

/-! ## A024130.P15811470106680460794

`(A001020(n)-A000578(n))/A033999(n)²`
-/

namespace A024130.P15811470106680460794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001020 n - A000578 n : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A024130.P15811470106680460794

namespace A024130

/-- `(A001020(n)-A000578(n))/A033999(n)²` -/
def P15811470106680460794.Spec : Prop :=
  ∀ n, P15811470106680460794.a n = (A024130 n : ℚ)

end A024130

/-! ## A024130.P15008164979630141003

`(A286815(∑[n])-2)*(A000578(n)-A001020(n))`
-/

namespace A024130.P15008164979630141003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286815 (∑ j ∈ Finset.range (n + 1), f1 j) - 2) * (A000578 n - A001020 n)

end

end A024130.P15008164979630141003

namespace A024130

/-- `(A286815(∑[n])-2)*(A000578(n)-A001020(n))` -/
def P15008164979630141003.Spec : Prop :=
  ∀ n, P15008164979630141003.a n = A024130 n

end A024130

/-!
# A024131: a(n) = 11^n - n^4.

The programs for A024131, the canonical program `A024131.P10928712122987497059` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024131 has offset 0).

The definition of A024131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^4` (program `A024131.P10928712122987497059`, by `A024131.P10928712122987497059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024131.P10928712122987497059

`11^n-n^4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024131

/-- `11^n-n^4` -/
def P10928712122987497059.Spec : Prop :=
  ∀ n, P10928712122987497059.a n = A024131 n

theorem P10928712122987497059.correct : P10928712122987497059.Spec := by
  intro n
  simp only [A024131]

end A024131

/-! ## A024131.P17537399082148815693

`abs(n²²-A001020(n))`
-/

namespace A024131.P17537399082148815693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A001020 n|

end

end A024131.P17537399082148815693

namespace A024131

/-- `abs(n²²-A001020(n))` -/
def P17537399082148815693.Spec : Prop :=
  ∀ n, P17537399082148815693.a n = A024131 n

end A024131

/-! ## A024131.P4762302621169449445

`abs(A139742(n)+A024040(n))`
-/

namespace A024131.P4762302621169449445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139742 n + A024040 n|

end

end A024131.P4762302621169449445

namespace A024131

/-- `abs(A139742(n)+A024040(n))` -/
def P4762302621169449445.Spec : Prop :=
  ∀ n, P4762302621169449445.a n = A024131 n

end A024131

/-! ## A024131.P12242199016122209253

`(A139742(n)+A024040(n))*A193722(∑[n])`
-/

namespace A024131.P12242199016122209253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139742 n + A024040 n) * A193722 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024131.P12242199016122209253

namespace A024131

/-- `(A139742(n)+A024040(n))*A193722(∑[n])` -/
def P12242199016122209253.Spec : Prop :=
  ∀ n, P12242199016122209253.a n = A024131 n

end A024131

/-! ## A024131.P4842777440659953724

`(A139742(n)+A024040(n))^cos(A000007(n))`
-/

namespace A024131.P4842777440659953724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A139742 n + A024040 n : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A024131.P4842777440659953724

namespace A024131

/-- `(A139742(n)+A024040(n))^cos(A000007(n))` -/
def P4842777440659953724.Spec : Prop :=
  ∀ n, P4842777440659953724.a n = (A024131 n : ℝ)

end A024131

/-!
# A024132: a(n) = 11^n - n^5.

The programs for A024132, the canonical program `A024132.P1421074262879381667` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024132 has offset 0).

The definition of A024132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^5` (program `A024132.P1421074262879381667`, by `A024132.P1421074262879381667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024132.P1421074262879381667

`11^n-n^5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024132

/-- `11^n-n^5` -/
def P1421074262879381667.Spec : Prop :=
  ∀ n, P1421074262879381667.a n = A024132 n

theorem P1421074262879381667.correct : P1421074262879381667.Spec := by
  intro n
  simp only [A024132]

end A024132

/-! ## A024132.P1038962534954609223

`abs(A139744(n)+A024067(n))`
-/

namespace A024132.P1038962534954609223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139744 n + A024067 n|

end

end A024132.P1038962534954609223

namespace A024132

/-- `abs(A139744(n)+A024067(n))` -/
def P1038962534954609223.Spec : Prop :=
  ∀ n, P1038962534954609223.a n = A024132 n

end A024132

/-! ## A024132.P12872166733151982632

`abs(A000584(n)-A001020(n))`
-/

namespace A024132.P12872166733151982632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000584 n - A001020 n|

end

end A024132.P12872166733151982632

namespace A024132

/-- `abs(A000584(n)-A001020(n))` -/
def P12872166733151982632.Spec : Prop :=
  ∀ n, P12872166733151982632.a n = A024132 n

end A024132

/-! ## A024132.P6252820802169010701

`lcm(A000584(n)-A001020(n), A025455(n)!)`
-/

namespace A024132.P6252820802169010701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000584 n - A001020 n) (Nat.factorial (A025455 n).toNat : ℤ)

end

end A024132.P6252820802169010701

namespace A024132

/-- `lcm(A000584(n)-A001020(n), A025455(n)!)` -/
def P6252820802169010701.Spec : Prop :=
  ∀ n, (P6252820802169010701.a n : ℤ) = A024132 n

end A024132

/-! ## A024132.P9658737960259346216

`(A000584(n)-A001020(n))*A099837(A014963(2*(n+1)))`
-/

namespace A024132.P9658737960259346216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n - A001020 n) * A099837 (A014963 (2 * (n + 1))).toNat

end

end A024132.P9658737960259346216

namespace A024132

/-- `(A000584(n)-A001020(n))*A099837(A014963(2*(n+1)))` -/
def P9658737960259346216.Spec : Prop :=
  ∀ n, P9658737960259346216.a n = A024132 n

end A024132

/-! ## A024132.P14166435985265417300

`(A000584(n)-A001020(n))*A099837(4*A000040(n+3))`
-/

namespace A024132.P14166435985265417300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n - A001020 n) * A099837 (4 * A000040 (n + 3)).toNat

end

end A024132.P14166435985265417300

namespace A024132

/-- `(A000584(n)-A001020(n))*A099837(4*A000040(n+3))` -/
def P14166435985265417300.Spec : Prop :=
  ∀ n, P14166435985265417300.a n = A024132 n

end A024132

/-!
# A024133: a(n) = 11^n - n^6.

The programs for A024133, the canonical program `A024133.P15603198131222785914` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024133 has offset 0).

The definition of A024133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^6` (program `A024133.P15603198131222785914`, by `A024133.P15603198131222785914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024133.P15603198131222785914

`11^n-n^6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024133

/-- `11^n-n^6` -/
def P15603198131222785914.Spec : Prop :=
  ∀ n, P15603198131222785914.a n = A024133 n

theorem P15603198131222785914.correct : P15603198131222785914.Spec := by
  intro n
  simp only [A024133]

end A024133

/-! ## A024133.P16549558183900716932

`abs((n*n²)²-A001020(n))`
-/

namespace A024133.P16549558183900716932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n * n ^ 2) ^ 2 : ℤ) - A001020 n|

end

end A024133.P16549558183900716932

namespace A024133

/-- `abs((n*n²)²-A001020(n))` -/
def P16549558183900716932.Spec : Prop :=
  ∀ n, P16549558183900716932.a n = A024133 n

end A024133

/-! ## A024133.P2452051995307059776

`abs(A001020(n)-A001014(n))`
-/

namespace A024133.P2452051995307059776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A001014 n|

end

end A024133.P2452051995307059776

namespace A024133

/-- `abs(A001020(n)-A001014(n))` -/
def P2452051995307059776.Spec : Prop :=
  ∀ n, P2452051995307059776.a n = A024133 n

end A024133

/-! ## A024133.P15996479913875811837

`abs(A024131(n)-A136038(n))`
-/

namespace A024133.P15996479913875811837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024131 n - A136038 n|

end

end A024133.P15996479913875811837

namespace A024133

/-- `abs(A024131(n)-A136038(n))` -/
def P15996479913875811837.Spec : Prop :=
  ∀ n, P15996479913875811837.a n = A024133 n

end A024133

/-! ## A024133.P18361555574340626324

`abs(A001020(n)-(n-A034262(n))²)`
-/

namespace A024133.P18361555574340626324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - ((n : ℤ) - A034262 n) ^ 2|

end

end A024133.P18361555574340626324

namespace A024133

/-- `abs(A001020(n)-(n-A034262(n))²)` -/
def P18361555574340626324.Spec : Prop :=
  ∀ n, P18361555574340626324.a n = A024133 n

end A024133

/-! ## A024133.P8791542724033108433

`lcm(A001020(n)-A001014(n), A033999(n))`
-/

namespace A024133.P8791542724033108433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001020 n - A001014 n) (A033999 n)

end

end A024133.P8791542724033108433

namespace A024133

/-- `lcm(A001020(n)-A001014(n), A033999(n))` -/
def P8791542724033108433.Spec : Prop :=
  ∀ n, (P8791542724033108433.a n : ℤ) = A024133 n

end A024133

/-! ## A024133.P16489003419548399249

`record[A001020(A002262(n))-A163282(n)²]`
-/

namespace A024133.P16489003419548399249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat - A163282 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024133.P16489003419548399249

namespace A024133

/-- `record[A001020(A002262(n))-A163282(n)²]` -/
def P16489003419548399249.Spec : Prop :=
  ∀ n, P16489003419548399249.a n = A024133 n

end A024133

/-! ## A024133.P3962686929655415139

`(A001020(n)-A001014(n))*A001221(A001316(n))!`
-/

namespace A024133.P3962686929655415139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001020 n - A001014 n) * (Nat.factorial (A001221 (A001316 n).toNat).toNat : ℤ)

end

end A024133.P3962686929655415139

namespace A024133

/-- `(A001020(n)-A001014(n))*A001221(A001316(n))!` -/
def P3962686929655415139.Spec : Prop :=
  ∀ n, P3962686929655415139.a n = A024133 n

end A024133

/-!
# A024134: a(n) = 11^n - n^7.

The programs for A024134, the canonical program `A024134.P4993719209886557787` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024134 has offset 0).

The definition of A024134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^7` (program `A024134.P4993719209886557787`, by `A024134.P4993719209886557787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024134.P4993719209886557787

`11^n-n^7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024134

/-- `11^n-n^7` -/
def P4993719209886557787.Spec : Prop :=
  ∀ n, P4993719209886557787.a n = A024134 n

theorem P4993719209886557787.correct : P4993719209886557787.Spec := by
  intro n
  simp only [A024134]

end A024134

/-! ## A024134.P12228579023616606441

`and(A001020(n)-A001015(n), A057428(n+1))`
-/

namespace A024134.P12228579023616606441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001020 n - A001015 n) (A057428 (n + 1))

end

end A024134.P12228579023616606441

namespace A024134

/-- `and(A001020(n)-A001015(n), A057428(n+1))` -/
def P12228579023616606441.Spec : Prop :=
  ∀ n, P12228579023616606441.a n = A024134 n

end A024134

/-! ## A024134.P7357149142229269432

`(A001020(n)-A001015(n))*gcd(6, A033999(n))`
-/

namespace A024134.P7357149142229269432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001020 n - A001015 n) * (Int.gcd 6 (A033999 n) : ℤ)

end

end A024134.P7357149142229269432

namespace A024134

/-- `(A001020(n)-A001015(n))*gcd(6, A033999(n))` -/
def P7357149142229269432.Spec : Prop :=
  ∀ n, P7357149142229269432.a n = A024134 n

end A024134

/-! ## A024134.P1539632542810692796

`xor(A001020(n)-A001015(n), A000035(2*n))`
-/

namespace A024134.P1539632542810692796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001020 n - A001015 n) (A000035 (2 * n))

end

end A024134.P1539632542810692796

namespace A024134

/-- `xor(A001020(n)-A001015(n), A000035(2*n))` -/
def P1539632542810692796.Spec : Prop :=
  ∀ n, P1539632542810692796.a n = A024134 n

end A024134

/-! ## A024134.P15411007567866246256

`(A001020(n)-A001015(n))%(6*A000400(n)²)`
-/

namespace A024134.P15411007567866246256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001020 n - A001015 n) (6 * A000400 n ^ 2)

end

end A024134.P15411007567866246256

namespace A024134

/-- `(A001020(n)-A001015(n))%(6*A000400(n)²)` -/
def P15411007567866246256.Spec : Prop :=
  ∀ n, P15411007567866246256.a n = A024134 n

end A024134

/-!
# A024135: a(n) = 11^n - n^8.

The programs for A024135, the canonical program `A024135.P11521720281764288313` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024135 has offset 0).

The definition of A024135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^8` (program `A024135.P11521720281764288313`, by `A024135.P11521720281764288313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024135.P11521720281764288313

`11^n-n^8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024135

/-- `11^n-n^8` -/
def P11521720281764288313.Spec : Prop :=
  ∀ n, P11521720281764288313.a n = A024135 n

theorem P11521720281764288313.correct : P11521720281764288313.Spec := by
  intro n
  simp only [A024135]

end A024135

/-!
# A024136: a(n) = 11^n - n^9.

The programs for A024136, the canonical program `A024136.P17683319167210010435` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024136 has offset 0).

The definition of A024136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^9` (program `A024136.P17683319167210010435`, by `A024136.P17683319167210010435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024136.P17683319167210010435

`11^n-n^9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024136

/-- `11^n-n^9` -/
def P17683319167210010435.Spec : Prop :=
  ∀ n, P17683319167210010435.a n = A024136 n

theorem P17683319167210010435.correct : P17683319167210010435.Spec := by
  intro n
  simp only [A024136]

end A024136

/-!
# A024137: a(n) = 11^n - n^10.

The programs for A024137, the canonical program `A024137.P10951250776865531630` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024137 has offset 0).

The definition of A024137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^10` (program `A024137.P10951250776865531630`, by `A024137.P10951250776865531630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024137.P10951250776865531630

`11^n-n^10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024137

/-- `11^n-n^10` -/
def P10951250776865531630.Spec : Prop :=
  ∀ n, P10951250776865531630.a n = A024137 n

theorem P10951250776865531630.correct : P10951250776865531630.Spec := by
  intro n
  simp only [A024137]

end A024137

/-! ## A024137.P13782994648458427924

`(A001020(n)-A000584(n²))%A324269(n)`
-/

namespace A024137.P13782994648458427924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001020 n - A000584 (n ^ 2)) (A324269 n)

end

end A024137.P13782994648458427924

namespace A024137

/-- `(A001020(n)-A000584(n²))%A324269(n)` -/
def P13782994648458427924.Spec : Prop :=
  ∀ n, P13782994648458427924.a n = A024137 n

end A024137

/-!
# A024138: a(n) = 11^n - n^11.

The programs for A024138, the canonical program `A024138.P1855052185967406334` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024138 has offset 0).

The definition of A024138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^11` (program `A024138.P1855052185967406334`, by `A024138.P1855052185967406334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024138.P1855052185967406334

`11^n-n^11`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024138

/-- `11^n-n^11` -/
def P1855052185967406334.Spec : Prop :=
  ∀ n, P1855052185967406334.a n = A024138 n

theorem P1855052185967406334.correct : P1855052185967406334.Spec := by
  intro n
  simp only [A024138]

end A024138

/-! ## A024138.P7307225486296928812

`A055651(eq[11, A025581(n)])`
-/

namespace A024138.P7307225486296928812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024138.P7307225486296928812

namespace A024138

/-- `A055651(eq[11, A025581(n)])` -/
def P7307225486296928812.Spec : Prop :=
  ∀ n, P7307225486296928812.a n = A024138 n

end A024138

/-! ## A024138.P16770133640141205730

`A055651(eq[12, A193739(n)])`
-/

namespace A024138.P16770133640141205730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024138.P16770133640141205730

namespace A024138

/-- `A055651(eq[12, A193739(n)])` -/
def P16770133640141205730.Spec : Prop :=
  ∀ n, P16770133640141205730.a n = A024138 n

end A024138

/-! ## A024138.P13475997909356973284

`A055651(eq[11, A144257(n+1)])`
-/

namespace A024138.P13475997909356973284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024138.P13475997909356973284

namespace A024138

/-- `A055651(eq[11, A144257(n+1)])` -/
def P13475997909356973284.Spec : Prop :=
  ∀ n, P13475997909356973284.a n = A024138 n

end A024138

/-! ## A024138.P10163695563747373676

`A055651(eq[12, A004736(n+1)])`
-/

namespace A024138.P10163695563747373676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024138.P10163695563747373676

namespace A024138

/-- `A055651(eq[12, A004736(n+1)])` -/
def P10163695563747373676.Spec : Prop :=
  ∀ n, P10163695563747373676.a n = A024138 n

end A024138

/-!
# A024139: a(n) = 11^n - n^12.

The programs for A024139, the canonical program `A024139.P5031877860101872650` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024139 has offset 0).

The definition of A024139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-n^12` (program `A024139.P5031877860101872650`, by `A024139.P5031877860101872650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024139.P5031877860101872650

`11^n-n^12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024139

/-- `11^n-n^12` -/
def P5031877860101872650.Spec : Prop :=
  ∀ n, P5031877860101872650.a n = A024139 n

theorem P5031877860101872650.correct : P5031877860101872650.Spec := by
  intro n
  simp only [A024139]

end A024139

/-!
# A024140: a(n) = 12^n - 1.

The programs for A024140, the canonical program `A024140.P9557119594288676513` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024140 has offset 0).

The definition of A024140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-1` (program `A024140.P9557119594288676513`, by `A024140.P9557119594288676513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024140.P9557119594288676513

`12^n-1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024140

/-- `12^n-1` -/
def P9557119594288676513.Spec : Prop :=
  ∀ n, P9557119594288676513.a n = A024140 n

theorem P9557119594288676513.correct : P9557119594288676513.Spec := by
  intro n
  simp only [A024140]

end A024140

/-!
# A024141: a(n) = 12^n - n.

The programs for A024141, the canonical program `A024141.P13125376712654658933` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024141 has offset 0).

The definition of A024141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n` (program `A024141.P13125376712654658933`, by `A024141.P13125376712654658933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024141.P13125376712654658933

`12^n-n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024141

/-- `12^n-n` -/
def P13125376712654658933.Spec : Prop :=
  ∀ n, P13125376712654658933.a n = A024141 n

theorem P13125376712654658933.correct : P13125376712654658933.Spec := by
  intro n
  simp only [A024141]

end A024141

/-!
# A024142: a(n) = 12^n - n^2.

The programs for A024142, the canonical program `A024142.P18213015850672031102` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024142 has offset 0).

The definition of A024142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n²` (program `A024142.P18213015850672031102`, by `A024142.P18213015850672031102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024142.P18213015850672031102

`12^n-n²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024142

/-- `12^n-n²` -/
def P18213015850672031102.Spec : Prop :=
  ∀ n, P18213015850672031102.a n = A024142 n

theorem P18213015850672031102.correct : P18213015850672031102.Spec := by
  intro n
  simp only [A024142]

end A024142

/-! ## A024142.P7759173064963700323

`ogf((1-4x+14x^2+11x^3)/(1-15x+39x^2-37x^3+12x^4))`
-/

namespace A024142.P7759173064963700323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 14, 11] [1, -15, 39, -37, 12] n

end

end A024142.P7759173064963700323

namespace A024142

/-- `ogf((1-4x+14x^2+11x^3)/(1-15x+39x^2-37x^3+12x^4))` -/
def P7759173064963700323.Spec : Prop :=
  ∀ n, P7759173064963700323.a n = A024142 n

end A024142

/-! ## A024142.P18262389554876645052

`abs(n²-A001021(n))`
-/

namespace A024142.P18262389554876645052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A001021 n|

end

end A024142.P18262389554876645052

namespace A024142

/-- `abs(n²-A001021(n))` -/
def P18262389554876645052.Spec : Prop :=
  ∀ n, P18262389554876645052.a n = A024142 n

end A024142

/-! ## A024142.P9686121809718267135

`abs(12^n-A000290(n))`
-/

namespace A024142.P9686121809718267135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(12 ^ n : ℤ) - A000290 n|

end

end A024142.P9686121809718267135

namespace A024142

/-- `abs(12^n-A000290(n))` -/
def P9686121809718267135.Spec : Prop :=
  ∀ n, P9686121809718267135.a n = A024142 n

end A024142

/-! ## A024142.P17460840943097166164

`abs(A282023(2*n)-n²)`
-/

namespace A024142.P17460840943097166164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A282023 (2 * n) - (n ^ 2 : ℤ)|

end

end A024142.P17460840943097166164

namespace A024142

/-- `abs(A282023(2*n)-n²)` -/
def P17460840943097166164.Spec : Prop :=
  ∀ n, P17460840943097166164.a n = A024142 n

end A024142

/-! ## A024142.P4105598754616575504

`abs(A282022(2*n)-∑[comp[2*(n+1)]])`
-/

namespace A024142.P4105598754616575504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A282022 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A024142.P4105598754616575504

namespace A024142

/-- `abs(A282022(2*n)-∑[comp[2*(n+1)]])` -/
def P4105598754616575504.Spec : Prop :=
  ∀ n, P4105598754616575504.a n = A024142 n

end A024142

/-! ## A024142.P14525184509010892053

`abs(n²-A000079(n)*A000400(n))`
-/

namespace A024142.P14525184509010892053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000079 n * A000400 n|

end

end A024142.P14525184509010892053

namespace A024142

/-- `abs(n²-A000079(n)*A000400(n))` -/
def P14525184509010892053.Spec : Prop :=
  ∀ n, P14525184509010892053.a n = A024142 n

end A024142

/-!
# A024143: a(n) = 12^n - n^3.

The programs for A024143, the canonical program `A024143.P17576552448236298523` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024143 has offset 0).

The definition of A024143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^3` (program `A024143.P17576552448236298523`, by `A024143.P17576552448236298523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024143.P17576552448236298523

`12^n-n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024143

/-- `12^n-n^3` -/
def P17576552448236298523.Spec : Prop :=
  ∀ n, P17576552448236298523.a n = A024143 n

theorem P17576552448236298523.correct : P17576552448236298523.Spec := by
  intro n
  simp only [A024143]

end A024143

/-! ## A024143.P3618929851708887334

`ogf((1-5x+14x^2+43x^3+13x^4)/(1-16x+54x^2-76x^3+49x^4-12x^5))`
-/

namespace A024143.P3618929851708887334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 14, 43, 13] [1, -16, 54, -76, 49, -12] n

end

end A024143.P3618929851708887334

namespace A024143

/-- `ogf((1-5x+14x^2+43x^3+13x^4)/(1-16x+54x^2-76x^3+49x^4-12x^5))` -/
def P3618929851708887334.Spec : Prop :=
  ∀ n, P3618929851708887334.a n = A024143 n

end A024143

/-! ## A024143.P11390275683568210597

`abs(A000578(n)-A001021(n))`
-/

namespace A024143.P11390275683568210597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A001021 n|

end

end A024143.P11390275683568210597

namespace A024143

/-- `abs(A000578(n)-A001021(n))` -/
def P11390275683568210597.Spec : Prop :=
  ∀ n, P11390275683568210597.a n = A024143 n

end A024143

/-! ## A024143.P6005620035816934943

`abs(A282022(2*n)-A000578(n))`
-/

namespace A024143.P6005620035816934943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A282022 (2 * n) - A000578 n|

end

end A024143.P6005620035816934943

namespace A024143

/-- `abs(A282022(2*n)-A000578(n))` -/
def P6005620035816934943.Spec : Prop :=
  ∀ n, P6005620035816934943.a n = A024143 n

end A024143

/-! ## A024143.P11997008708284428764

`gcd(A000578(n)-A001021(n), A000038(n))`
-/

namespace A024143.P11997008708284428764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 n - A001021 n) (A000038 n)

end

end A024143.P11997008708284428764

namespace A024143

/-- `gcd(A000578(n)-A001021(n), A000038(n))` -/
def P11997008708284428764.Spec : Prop :=
  ∀ n, (P11997008708284428764.a n : ℤ) = A024143 n

end A024143

/-! ## A024143.P15066559800271510925

`lcm(A000578(n)-A001021(n), A249111(n²))`
-/

namespace A024143.P15066559800271510925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n - A001021 n) (A249111 (n ^ 2))

end

end A024143.P15066559800271510925

namespace A024143

/-- `lcm(A000578(n)-A001021(n), A249111(n²))` -/
def P15066559800271510925.Spec : Prop :=
  ∀ n, (P15066559800271510925.a n : ℤ) = A024143 n

end A024143

/-! ## A024143.P16740299084547610239

`(A000578(n)-A001021(n))*(A023443(n)-n)`
-/

namespace A024143.P16740299084547610239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A001021 n) * (A023443 n - (n : ℤ))

end

end A024143.P16740299084547610239

namespace A024143

/-- `(A000578(n)-A001021(n))*(A023443(n)-n)` -/
def P16740299084547610239.Spec : Prop :=
  ∀ n, P16740299084547610239.a n = A024143 n

theorem P16740299084547610239.correct : P16740299084547610239.Spec := by
  intro n
  simp only [A024143, Nat.add_sub_cancel, A024143.P16740299084547610239.a, A024143.P17576552448236298523.a, A000578, A000578.P12162961755414704816.a, A001021, A001021.P13459149055597848017.a, A023443, A023443.P2966051066474347068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024143

/-! ## A024143.P17637566806031504126

`(A000007(n+1)+1)*(A282022(2*n)-A000578(n))`
-/

namespace A024143.P17637566806031504126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) + 1) * (A282022 (2 * n) - A000578 n)

end

end A024143.P17637566806031504126

namespace A024143

/-- `(A000007(n+1)+1)*(A282022(2*n)-A000578(n))` -/
def P17637566806031504126.Spec : Prop :=
  ∀ n, P17637566806031504126.a n = A024143 n

end A024143

/-!
# A024144: a(n) = 12^n - n^4.

The programs for A024144, the canonical program `A024144.P11149565785450196742` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024144 has offset 0).

The definition of A024144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^4` (program `A024144.P11149565785450196742`, by `A024144.P11149565785450196742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024144.P11149565785450196742

`12^n-n^4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024144

/-- `12^n-n^4` -/
def P11149565785450196742.Spec : Prop :=
  ∀ n, P11149565785450196742.a n = A024144 n

theorem P11149565785450196742.correct : P11149565785450196742.Spec := by
  intro n
  simp only [A024144]

end A024144

/-! ## A024144.P16088545901441910867

`abs(n²²-A001021(n))`
-/

namespace A024144.P16088545901441910867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A001021 n|

end

end A024144.P16088545901441910867

namespace A024144

/-- `abs(n²²-A001021(n))` -/
def P16088545901441910867.Spec : Prop :=
  ∀ n, P16088545901441910867.a n = A024144 n

end A024144

/-! ## A024144.P3373107835905575004

`abs(A001021(n)-A000583(n))`
-/

namespace A024144.P3373107835905575004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001021 n - A000583 n|

end

end A024144.P3373107835905575004

namespace A024144

/-- `abs(A001021(n)-A000583(n))` -/
def P3373107835905575004.Spec : Prop :=
  ∀ n, P3373107835905575004.a n = A024144 n

end A024144

/-! ## A024144.P1951228702844406346

`gcd(A000583(n)-A001021(n), (A024062(n)+1)%2)`
-/

namespace A024144.P1951228702844406346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000583 n - A001021 n) (Int.tmod (A024062 n + 1) 2)

end

end A024144.P1951228702844406346

namespace A024144

/-- `gcd(A000583(n)-A001021(n), (A024062(n)+1)%2)` -/
def P1951228702844406346.Spec : Prop :=
  ∀ n, (P1951228702844406346.a n : ℤ) = A024144 n

end A024144

/-! ## A024144.P8607238597740727476

`(A000583(n)-A001021(n))*A057428(A000267(n))`
-/

namespace A024144.P8607238597740727476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A001021 n) * A057428 (A000267 n).toNat

end

end A024144.P8607238597740727476

namespace A024144

/-- `(A000583(n)-A001021(n))*A057428(A000267(n))` -/
def P8607238597740727476.Spec : Prop :=
  ∀ n, P8607238597740727476.a n = A024144 n

end A024144

/-! ## A024144.P158389329898946322

`(A000583(n)-A001021(n))*A057428(A016777(n))`
-/

namespace A024144.P158389329898946322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A001021 n) * A057428 (A016777 n).toNat

end

end A024144.P158389329898946322

namespace A024144

/-- `(A000583(n)-A001021(n))*A057428(A016777(n))` -/
def P158389329898946322.Spec : Prop :=
  ∀ n, P158389329898946322.a n = A024144 n

end A024144

/-! ## A024144.P10951386207915310514

`(A000583(n)-A001021(n))*A057428(A141310(n))`
-/

namespace A024144.P10951386207915310514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A001021 n) * A057428 (A141310 n).toNat

end

end A024144.P10951386207915310514

namespace A024144

/-- `(A000583(n)-A001021(n))*A057428(A141310(n))` -/
def P10951386207915310514.Spec : Prop :=
  ∀ n, P10951386207915310514.a n = A024144 n

end A024144

/-! ## A024144.P1702580641200094587

`(A000583(n)-A001021(n))*A057428(A098550(n+1))`
-/

namespace A024144.P1702580641200094587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A001021 n) * A057428 (A098550 (n + 1)).toNat

end

end A024144.P1702580641200094587

namespace A024144

/-- `(A000583(n)-A001021(n))*A057428(A098550(n+1))` -/
def P1702580641200094587.Spec : Prop :=
  ∀ n, P1702580641200094587.a n = A024144 n

end A024144

/-! ## A024144.P2508011716479642500

`(A000583(n)-A001021(n))*A057428(A247665(n+1))`
-/

namespace A024144.P2508011716479642500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A001021 n) * A057428 (A247665 (n + 1)).toNat

end

end A024144.P2508011716479642500

namespace A024144

/-- `(A000583(n)-A001021(n))*A057428(A247665(n+1))` -/
def P2508011716479642500.Spec : Prop :=
  ∀ n, P2508011716479642500.a n = A024144 n

end A024144

/-! ## A024144.P1756992411172901657

`(A000583(n)-A001021(n))*A057428(A249684(n+1))`
-/

namespace A024144.P1756992411172901657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A001021 n) * A057428 (A249684 (n + 1)).toNat

end

end A024144.P1756992411172901657

namespace A024144

/-- `(A000583(n)-A001021(n))*A057428(A249684(n+1))` -/
def P1756992411172901657.Spec : Prop :=
  ∀ n, P1756992411172901657.a n = A024144 n

end A024144

/-!
# A024145: a(n) = 12^n - n^5.

The programs for A024145, the canonical program `A024145.P9007527277748387589` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024145 has offset 0).

The definition of A024145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^5` (program `A024145.P9007527277748387589`, by `A024145.P9007527277748387589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024145.P9007527277748387589

`12^n-n^5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024145

/-- `12^n-n^5` -/
def P9007527277748387589.Spec : Prop :=
  ∀ n, P9007527277748387589.a n = A024145 n

theorem P9007527277748387589.correct : P9007527277748387589.Spec := by
  intro n
  simp only [A024145]

end A024145

/-! ## A024145.P2903106948402911869

`abs(A024140(n)+A024003(n))`
-/

namespace A024145.P2903106948402911869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024140 n + A024003 n|

end

end A024145.P2903106948402911869

namespace A024145

/-- `abs(A024140(n)+A024003(n))` -/
def P2903106948402911869.Spec : Prop :=
  ∀ n, P2903106948402911869.a n = A024145 n

end A024145

/-! ## A024145.P7323115405943337655

`abs(A282023(2*n)-A000584(n))`
-/

namespace A024145.P7323115405943337655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A282023 (2 * n) - A000584 n|

end

end A024145.P7323115405943337655

namespace A024145

/-- `abs(A282023(2*n)-A000584(n))` -/
def P7323115405943337655.Spec : Prop :=
  ∀ n, P7323115405943337655.a n = A024145 n

end A024145

/-! ## A024145.P12171768042611787270

`(A282023(2*n)-A000584(n))*A020985(n)²`
-/

namespace A024145.P12171768042611787270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282023 (2 * n) - A000584 n) * A020985 n ^ 2

end

end A024145.P12171768042611787270

namespace A024145

/-- `(A282023(2*n)-A000584(n))*A020985(n)²` -/
def P12171768042611787270.Spec : Prop :=
  ∀ n, P12171768042611787270.a n = A024145 n

end A024145

/-! ## A024145.P3529955706374935453

`(A282023(2*n)-A000584(n))*char[A061601(n)]`
-/

namespace A024145.P3529955706374935453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282023 (2 * n) - A000584 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024145.P3529955706374935453

namespace A024145

/-- `(A282023(2*n)-A000584(n))*char[A061601(n)]` -/
def P3529955706374935453.Spec : Prop :=
  ∀ n, P3529955706374935453.a n = A024145 n

end A024145

/-! ## A024145.P13965411846649182383

`(A282023(2*n)-A000584(n))*A003958(or(n, n+4)-n)`
-/

namespace A024145.P13965411846649182383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282023 (2 * n) - A000584 n) * A003958 (Nat.lor n (n + 4) - n)

end

end A024145.P13965411846649182383

namespace A024145

/-- `(A282023(2*n)-A000584(n))*A003958(or(n, n+4)-n)` -/
def P13965411846649182383.Spec : Prop :=
  ∀ n, P13965411846649182383.a n = A024145 n

end A024145

/-! ## A024145.P11346973228497908939

`(A282023(2*n)-A000584(n))*A014963(A104210(n+1))`
-/

namespace A024145.P11346973228497908939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282023 (2 * n) - A000584 n) * A014963 (A104210 (n + 1)).toNat

end

end A024145.P11346973228497908939

namespace A024145

/-- `(A282023(2*n)-A000584(n))*A014963(A104210(n+1))` -/
def P11346973228497908939.Spec : Prop :=
  ∀ n, P11346973228497908939.a n = A024145 n

end A024145

/-! ## A024145.P9068714168088287696

`(A282023(2*n)-A000584(n))*A014963(A152786(n+1))`
-/

namespace A024145.P9068714168088287696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282023 (2 * n) - A000584 n) * A014963 (A152786 (n + 1)).toNat

end

end A024145.P9068714168088287696

namespace A024145

/-- `(A282023(2*n)-A000584(n))*A014963(A152786(n+1))` -/
def P9068714168088287696.Spec : Prop :=
  ∀ n, P9068714168088287696.a n = A024145 n

end A024145

/-! ## A024145.P6913027124452095420

`(A282023(2*n)-A000584(n))*A007318(A025463(n+1)+1)`
-/

namespace A024145.P6913027124452095420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282023 (2 * n) - A000584 n) * A007318 (A025463 (n + 1) + 1).toNat

end

end A024145.P6913027124452095420

namespace A024145

/-- `(A282023(2*n)-A000584(n))*A007318(A025463(n+1)+1)` -/
def P6913027124452095420.Spec : Prop :=
  ∀ n, P6913027124452095420.a n = A024145 n

end A024145

/-!
# A024146: a(n) = 12^n - n^6.

The programs for A024146, the canonical program `A024146.P12158845430865856651` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024146 has offset 0).

The definition of A024146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^6` (program `A024146.P12158845430865856651`, by `A024146.P12158845430865856651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024146.P12158845430865856651

`12^n-n^6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024146

/-- `12^n-n^6` -/
def P12158845430865856651.Spec : Prop :=
  ∀ n, P12158845430865856651.a n = A024146 n

theorem P12158845430865856651.correct : P12158845430865856651.Spec := by
  intro n
  simp only [A024146]

end A024146

/-! ## A024146.P6400216283313309927

`abs(A001014(n)-A001021(n))`
-/

namespace A024146.P6400216283313309927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001014 n - A001021 n|

end

end A024146.P6400216283313309927

namespace A024146

/-- `abs(A001014(n)-A001021(n))` -/
def P6400216283313309927.Spec : Prop :=
  ∀ n, P6400216283313309927.a n = A024146 n

end A024146

/-! ## A024146.P15350480621913708856

`abs(A282022(2*n)-A001014(n))`
-/

namespace A024146.P15350480621913708856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A282022 (2 * n) - A001014 n|

end

end A024146.P15350480621913708856

namespace A024146

/-- `abs(A282022(2*n)-A001014(n))` -/
def P15350480621913708856.Spec : Prop :=
  ∀ n, P15350480621913708856.a n = A024146 n

end A024146

/-! ## A024146.P8712990735185797819

`(A001489(n+1)+n)*(A001014(n)-A001021(n))`
-/

namespace A024146.P8712990735185797819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001489 (n + 1) + (n : ℤ)) * (A001014 n - A001021 n)

end

end A024146.P8712990735185797819

namespace A024146

/-- `(A001489(n+1)+n)*(A001014(n)-A001021(n))` -/
def P8712990735185797819.Spec : Prop :=
  ∀ n, P8712990735185797819.a n = A024146 n

theorem P8712990735185797819.correct : P8712990735185797819.Spec := by
  intro n
  simp only [A024146, Nat.add_sub_cancel, A024146.P8712990735185797819.a, A024146.P12158845430865856651.a, A001014, A001014.P10270364271630987481.a, A001021, A001021.P13459149055597848017.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024146

/-! ## A024146.P15092839147939715216

`(A001014(n)-A001021(n))*A094648(gcd(n, n+1))`
-/

namespace A024146.P15092839147939715216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n - A001021 n) * A094648 (Nat.gcd n (n + 1))

end

end A024146.P15092839147939715216

namespace A024146

/-- `(A001014(n)-A001021(n))*A094648(gcd(n, n+1))` -/
def P15092839147939715216.Spec : Prop :=
  ∀ n, P15092839147939715216.a n = A024146 n

end A024146

/-! ## A024146.P2026019118944721890

`(A001014(n)-A001021(n))*A008683(A007918(n+2))`
-/

namespace A024146.P2026019118944721890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n - A001021 n) * A008683 (A007918 (n + 2)).toNat

end

end A024146.P2026019118944721890

namespace A024146

/-- `(A001014(n)-A001021(n))*A008683(A007918(n+2))` -/
def P2026019118944721890.Spec : Prop :=
  ∀ n, P2026019118944721890.a n = A024146 n

end A024146

/-!
# A024147: a(n) = 12^n - n^7.

The programs for A024147, the canonical program `A024147.P5267444298114078021` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024147 has offset 0).

The definition of A024147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^7` (program `A024147.P5267444298114078021`, by `A024147.P5267444298114078021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024147.P5267444298114078021

`12^n-n^7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024147

/-- `12^n-n^7` -/
def P5267444298114078021.Spec : Prop :=
  ∀ n, P5267444298114078021.a n = A024147 n

theorem P5267444298114078021.correct : P5267444298114078021.Spec := by
  intro n
  simp only [A024147]

end A024147

/-!
# A024148: a(n) = 12^n - n^8.

The programs for A024148, the canonical program `A024148.P6668263677293550655` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024148 has offset 0).

The definition of A024148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^8` (program `A024148.P6668263677293550655`, by `A024148.P6668263677293550655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024148.P6668263677293550655

`12^n-n^8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024148

/-- `12^n-n^8` -/
def P6668263677293550655.Spec : Prop :=
  ∀ n, P6668263677293550655.a n = A024148 n

theorem P6668263677293550655.correct : P6668263677293550655.Spec := by
  intro n
  simp only [A024148]

end A024148

/-! ## A024148.P1432768215442085367

`xor(A000583(n²)-A001021(n)-1, -1)`
-/

namespace A024148.P1432768215442085367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000583 (n ^ 2) - A001021 n - 1) (-1)

end

end A024148.P1432768215442085367

namespace A024148

/-- `xor(A000583(n²)-A001021(n)-1, -1)` -/
def P1432768215442085367.Spec : Prop :=
  ∀ n, P1432768215442085367.a n = A024148 n

end A024148

/-! ## A024148.P6753468093086527160

`(A000583(n²)-A001021(n))*A057428(A000267(n))`
-/

namespace A024148.P6753468093086527160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A000267 n).toNat

end

end A024148.P6753468093086527160

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A000267(n))` -/
def P6753468093086527160.Spec : Prop :=
  ∀ n, P6753468093086527160.a n = A024148 n

end A024148

/-! ## A024148.P8600175726166585412

`(A000583(n²)-A001021(n))*A057428(A016777(n))`
-/

namespace A024148.P8600175726166585412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A016777 n).toNat

end

end A024148.P8600175726166585412

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A016777(n))` -/
def P8600175726166585412.Spec : Prop :=
  ∀ n, P8600175726166585412.a n = A024148 n

end A024148

/-! ## A024148.P18156298810758756430

`(A000583(n²)-A001021(n))*A057428(A141310(n))`
-/

namespace A024148.P18156298810758756430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A141310 n).toNat

end

end A024148.P18156298810758756430

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A141310(n))` -/
def P18156298810758756430.Spec : Prop :=
  ∀ n, P18156298810758756430.a n = A024148 n

end A024148

/-! ## A024148.P16795867473908204387

`(A000583(n²)-A001021(n))*A057428(A098550(n+1))`
-/

namespace A024148.P16795867473908204387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A098550 (n + 1)).toNat

end

end A024148.P16795867473908204387

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A098550(n+1))` -/
def P16795867473908204387.Spec : Prop :=
  ∀ n, P16795867473908204387.a n = A024148 n

end A024148

/-! ## A024148.P6946170367703878387

`(A000583(n²)-A001021(n))*A057428(A247665(n+1))`
-/

namespace A024148.P6946170367703878387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A247665 (n + 1)).toNat

end

end A024148.P6946170367703878387

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A247665(n+1))` -/
def P6946170367703878387.Spec : Prop :=
  ∀ n, P6946170367703878387.a n = A024148 n

end A024148

/-! ## A024148.P3184849009593500289

`(A000583(n²)-A001021(n))*A057428(A249684(n+1))`
-/

namespace A024148.P3184849009593500289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A249684 (n + 1)).toNat

end

end A024148.P3184849009593500289

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A249684(n+1))` -/
def P3184849009593500289.Spec : Prop :=
  ∀ n, P3184849009593500289.a n = A024148 n

end A024148

/-! ## A024148.P4039051757036266281

`(A000583(n²)-A001021(n))*A057428(A270139(n+1))`
-/

namespace A024148.P4039051757036266281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n ^ 2) - A001021 n) * A057428 (A270139 (n + 1)).toNat

end

end A024148.P4039051757036266281

namespace A024148

/-- `(A000583(n²)-A001021(n))*A057428(A270139(n+1))` -/
def P4039051757036266281.Spec : Prop :=
  ∀ n, P4039051757036266281.a n = A024148 n

end A024148

/-!
# A024149: a(n) = 12^n - n^9.

The programs for A024149, the canonical program `A024149.P5969540758630680996` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024149 has offset 0).

The definition of A024149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^9` (program `A024149.P5969540758630680996`, by `A024149.P5969540758630680996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024149.P5969540758630680996

`12^n-n^9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024149

/-- `12^n-n^9` -/
def P5969540758630680996.Spec : Prop :=
  ∀ n, P5969540758630680996.a n = A024149 n

theorem P5969540758630680996.correct : P5969540758630680996.Spec := by
  intro n
  simp only [A024149]

end A024149

/-!
# A024150: a(n) = 12^n - n^10.

The programs for A024150, the canonical program `A024150.P13094254099950479324` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024150 has offset 0).

The definition of A024150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^10` (program `A024150.P13094254099950479324`, by `A024150.P13094254099950479324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024150.P13094254099950479324

`12^n-n^10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024150

/-- `12^n-n^10` -/
def P13094254099950479324.Spec : Prop :=
  ∀ n, P13094254099950479324.a n = A024150 n

theorem P13094254099950479324.correct : P13094254099950479324.Spec := by
  intro n
  simp only [A024150]

end A024150

/-!
# A024151: a(n) = 12^n - n^11.

The programs for A024151, the canonical program `A024151.P7817134902830766327` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024151 has offset 0).

The definition of A024151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^11` (program `A024151.P7817134902830766327`, by `A024151.P7817134902830766327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024151.P7817134902830766327

`12^n-n^11`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024151

/-- `12^n-n^11` -/
def P7817134902830766327.Spec : Prop :=
  ∀ n, P7817134902830766327.a n = A024151 n

theorem P7817134902830766327.correct : P7817134902830766327.Spec := by
  intro n
  simp only [A024151]

end A024151

/-!
# A024152: a(n) = 12^n - n^12.

The programs for A024152, the canonical program `A024152.P4889288855265503925` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024152 has offset 0).

The definition of A024152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-n^12` (program `A024152.P4889288855265503925`, by `A024152.P4889288855265503925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024152.P4889288855265503925

`12^n-n^12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024152

/-- `12^n-n^12` -/
def P4889288855265503925.Spec : Prop :=
  ∀ n, P4889288855265503925.a n = A024152 n

theorem P4889288855265503925.correct : P4889288855265503925.Spec := by
  intro n
  simp only [A024152]

end A024152

/-! ## A024152.P15649767355888713497

`A055651(eq[12, A025581(n)])`
-/

namespace A024152.P15649767355888713497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024152.P15649767355888713497

namespace A024152

/-- `A055651(eq[12, A025581(n)])` -/
def P15649767355888713497.Spec : Prop :=
  ∀ n, P15649767355888713497.a n = A024152 n

end A024152

/-! ## A024152.P17225836550789818029

`A055651(eq[12, A195664(n)])`
-/

namespace A024152.P17225836550789818029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024152.P17225836550789818029

namespace A024152

/-- `A055651(eq[12, A195664(n)])` -/
def P17225836550789818029.Spec : Prop :=
  ∀ n, P17225836550789818029.a n = A024152 n

end A024152

/-! ## A024152.P15881397890010797882

`A055651(eq[13, A193739(n)])`
-/

namespace A024152.P15881397890010797882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024152.P15881397890010797882

namespace A024152

/-- `A055651(eq[13, A193739(n)])` -/
def P15881397890010797882.Spec : Prop :=
  ∀ n, P15881397890010797882.a n = A024152 n

end A024152

/-! ## A024152.P2480028697386070201

`A055651(eq[12, A144257(n+1)])`
-/

namespace A024152.P2480028697386070201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024152.P2480028697386070201

namespace A024152

/-- `A055651(eq[12, A144257(n+1)])` -/
def P2480028697386070201.Spec : Prop :=
  ∀ n, P2480028697386070201.a n = A024152 n

end A024152

/-! ## A024152.P10210131314394604905

`A055651(eq[13, A004736(n+1)])`
-/

namespace A024152.P10210131314394604905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024152.P10210131314394604905

namespace A024152

/-- `A055651(eq[13, A004736(n+1)])` -/
def P10210131314394604905.Spec : Prop :=
  ∀ n, P10210131314394604905.a n = A024152 n

end A024152

/-!
# A024153: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n that have integer area.

The programs for A024153, there is no canonical definition to state claims against.
-/

/-! ## A024153.P13438827155379038653

`A051516(n+1)-A070139(n+1)`
-/

namespace A024153.P13438827155379038653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - A070139 (n + 1)

end

end A024153.P13438827155379038653

/-! ## A024153.P6819263418217427997

`A051517(A057979(n)+1)-A070139(n+1)`
-/

namespace A024153.P6819263418217427997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A057979 n + 1).toNat - A070139 (n + 1)

end

end A024153.P6819263418217427997

/-! ## A024153.P14188721543523599941

`(A051518(n+1)+A051516(n+1))%(A070139(n+1)+A051518(n+1))`
-/

namespace A024153.P14188721543523599941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051518 (n + 1) + A051516 (n + 1)) (A070139 (n + 1) + A051518 (n + 1))

end

end A024153.P14188721543523599941

/-! ## A024153.P14753680080262621576

`(A083875(n+1)+A051516(n+1))%(A083875(n+1)+A070139(n+1))`
-/

namespace A024153.P14753680080262621576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083875 (n + 1) + A051516 (n + 1)) (A083875 (n + 1) + A070139 (n + 1))

end

end A024153.P14753680080262621576

/-! ## A024153.P4813319029768135690

`(A096468(n+1)+A051516(n+1))%(A096468(n+1)+A070139(n+1))`
-/

namespace A024153.P4813319029768135690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096468 (n + 1) + A051516 (n + 1)) (A096468 (n + 1) + A070139 (n + 1))

end

end A024153.P4813319029768135690

/-! ## A024153.P3510525402040098596

`A070201(n+1)+A070208(n+1)-A070139(n+1)`
-/

namespace A024153.P3510525402040098596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) + (A070208 (n + 1) - A070139 (n + 1))

end

end A024153.P3510525402040098596

/-! ## A024153.P5608120147218972877

`(A298121(n+4)+A051516(n+1))%(A298121(n+4)+A070139(n+1))`
-/

namespace A024153.P5608120147218972877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298121 (n + 4) + A051516 (n + 1)) (A298121 (n + 4) + A070139 (n + 1))

end

end A024153.P5608120147218972877

/-! ## A024153.P15170210489757497841

`A070201(n+1)+A070201(A132743(n+5))`
-/

namespace A024153.P15170210489757497841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) + A070201 (A132743 (n + 5)).toNat

end

end A024153.P15170210489757497841

/-!
# A024154: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n that are acute.

The programs for A024154, there is no canonical definition to state claims against.
-/

/-! ## A024154.P12981059422870789255

`A070093(n+1)-A070098(n+1)`
-/

namespace A024154.P12981059422870789255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) - A070098 (n + 1)

end

end A024154.P12981059422870789255

/-! ## A024154.P13307725706045754795

`A070093(n+1)+A183138(n+1)-A004526(n)`
-/

namespace A024154.P13307725706045754795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) + (A183138 (n + 1) - A004526 n)

end

end A024154.P13307725706045754795

/-! ## A024154.P7599256601571770344

`A070093(n+1)-(A049472(n+1)-A110654(n))`
-/

namespace A024154.P7599256601571770344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) - (A049472 (n + 1) - A110654 n)

end

end A024154.P7599256601571770344

/-! ## A024154.P13862530783360460636

`A070093(n+1)+A070106(n+1)-A059169(n+1)`
-/

namespace A024154.P13862530783360460636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) + (A070106 (n + 1) - A059169 (n + 1))

end

end A024154.P13862530783360460636

/-! ## A024154.P519386022371685158

`A070093(n+1)-(A049474(n+1)-A004526(n+3))`
-/

namespace A024154.P519386022371685158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) - (A049474 (n + 1) - A004526 (n + 3))

end

end A024154.P519386022371685158

/-! ## A024154.P10061045939262420074

`A070093(n+1)-A003152(n+1)%A026178(n+1)`
-/

namespace A024154.P10061045939262420074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) - Int.tmod (A003152 (n + 1)) (A026178 (n + 1))

end

end A024154.P10061045939262420074

/-! ## A024154.P6421257649285616585

`A005044(n+1)-(A070101(n+1)+A024155(n+1))-A070098(n+1)`
-/

namespace A024154.P6421257649285616585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A070101 (n + 1) + A024155 (n + 1)) - A070098 (n + 1)

end

end A024154.P6421257649285616585

/-! ## A024154.P17608456910280580485

`∑{d}[n+1, A070096(#)]`
-/

namespace A024154.P17608456910280580485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070096 d

end

end A024154.P17608456910280580485

/-! ## A024154.P14057104697512655138

`A307728(n+1)/(n+1)-A070098(n+1)`
-/

namespace A024154.P14057104697512655138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307728 (n + 1) : ℚ) / (n + 1 : ℚ) - (A070098 (n + 1) : ℚ)

end

end A024154.P14057104697512655138

/-!
# A024155: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n that are right triangles.

The programs for A024155, there is no canonical definition to state claims against.
-/

/-! ## A024155.P10216119221470118560

`A070201(n+1)-A070205(n+1)-A070206(n+1)`
-/

namespace A024155.P10216119221470118560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - A070205 (n + 1) - A070206 (n + 1)

end

end A024155.P10216119221470118560

/-! ## A024155.P8502492478008664392

`∑{d}[n+1, A070109(#)]`
-/

namespace A024155.P8502492478008664392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070109 d

end

end A024155.P8502492478008664392

/-! ## A024155.P9040061512519367969

`A270417(gcd(n-1, floor(n/2))+1)`
-/

namespace A024155.P9040061512519367969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (Int.gcd ((n : ℤ) - 1) ⌊(n : ℚ) / 2⌋ + 1)

end

end A024155.P9040061512519367969

/-! ## A024155.P2244598366326940872

`A270417(A152271(n))`
-/

namespace A024155.P2244598366326940872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A152271 n).toNat

end

end A024155.P2244598366326940872

/-! ## A024155.P12399018767541665365

`A270417(A057979(n)+1)`
-/

namespace A024155.P12399018767541665365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A057979 n + 1).toNat

end

end A024155.P12399018767541665365

/-! ## A024155.P6708155390190246734

`A270417(A326139(n+1))`
-/

namespace A024155.P6708155390190246734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A326139 (n + 1)).toNat

end

end A024155.P6708155390190246734

/-! ## A024155.P1735246820478910696

`A270417(n%∑[A051699(n+1)%2]+1)`
-/

namespace A024155.P1735246820478910696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051699 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A024155.P1735246820478910696

/-! ## A024155.P4398537682419310275

`∑{d}[n+1, A000035(#-1)*A078926((n+1)/#)]`
-/

namespace A024155.P4398537682419310275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (d - 1) * A078926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024155.P4398537682419310275

/-! ## A024155.P6799323082011896538

`A270417(A004526(Δ[A004526(n)²])+1)`
-/

namespace A024155.P6799323082011896538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A004526 (f1 (n + 1) - f1 n).toNat + 1).toNat

end

end A024155.P6799323082011896538

/-! ## A024155.P16253693077060800826

`A005044(n+1)-(A070101(n+1)+A070093(n+1))`
-/

namespace A024155.P16253693077060800826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A070101 (n + 1) + A070093 (n + 1))

end

end A024155.P16253693077060800826

/-! ## A024155.P18352962779641624143

`A070201(n+1)-(A070206(n+1)+A070205(n+1))`
-/

namespace A024155.P18352962779641624143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - (A070206 (n + 1) + A070205 (n + 1))

end

end A024155.P18352962779641624143

/-! ## A024155.P9813785518912726172

`A051516(n+1)-(A070141(n+1)+A070140(n+1))`
-/

namespace A024155.P9813785518912726172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - (A070141 (n + 1) + A070140 (n + 1))

end

end A024155.P9813785518912726172

/-!
# A024156: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n that are obtuse.

The programs for A024156, there is no canonical definition to state claims against.
-/

/-! ## A024156.P1386032637793041558

`∑{d}[n+1, A070104(#)]`
-/

namespace A024156.P1386032637793041558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070104 d

end

end A024156.P1386032637793041558

/-! ## A024156.P3136646312598261285

`A070101(n+1)-A070106(n+1)`
-/

namespace A024156.P3136646312598261285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) - A070106 (n + 1)

end

end A024156.P3136646312598261285

/-! ## A024156.P8248916874335330576

`A070101(n+1)-(A183138(n+1)-floor((n+1)/4))`
-/

namespace A024156.P8248916874335330576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) - (A183138 (n + 1) - ⌊(n + 1 : ℚ) / 4⌋)

end

end A024156.P8248916874335330576

/-! ## A024156.P11146086437099504821

`A070101(n+1)-A194920(n+1)%Δ[A108354(n)]`
-/

namespace A024156.P11146086437099504821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) - Int.tmod (A194920 (n + 1)) (f1 (n + 1) - f1 n)

end

end A024156.P11146086437099504821

/-! ## A024156.P5874913071108500528

`A003152(n+1)+A070101(n+1)-A047329(n+1)`
-/

namespace A024156.P5874913071108500528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + (A070101 (n + 1) - A047329 (n + 1))

end

end A024156.P5874913071108500528

/-! ## A024156.P3009130612321715192

`A070098(n+1)+A070101(n+1)-A059169(n+1)`
-/

namespace A024156.P3009130612321715192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (n + 1) + (A070101 (n + 1) - A059169 (n + 1))

end

end A024156.P3009130612321715192

/-! ## A024156.P3029871917108154075

`A005044(n+1)-(A070093(n+1)+A024155(n+1))-A070106(n+1)`
-/

namespace A024156.P3029871917108154075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A070093 (n + 1) + A024155 (n + 1)) - A070106 (n + 1)

end

end A024156.P3029871917108154075

/-! ## A024156.P5383253922545069454

`A070101(n+1)-(A024154(n+1)+A059169(n+1)-A070093(n+1))`
-/

namespace A024156.P5383253922545069454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) - (A024154 (n + 1) + (A059169 (n + 1) - A070093 (n + 1)))

end

end A024156.P5383253922545069454

/-! ## A024156.P11098006536763876294

`A070101(n+1)-(A097508(A049472(n)+1)-A342696(3*(n+1)))`
-/

namespace A024156.P11098006536763876294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) - (A097508 (A049472 n + 1).toNat - A342696 (3 * (n + 1)))

end

end A024156.P11098006536763876294

/-! ## A024156.P10383612101127450441

`A308157(n+1)/(n+1)-A070106(n+1)`
-/

namespace A024156.P10383612101127450441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308157 (n + 1) : ℚ) / (n + 1 : ℚ) - (A070106 (n + 1) : ℚ)

end

end A024156.P10383612101127450441

/-!
# A024157: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that n divides abc.

The programs for A024157, there is no canonical definition to state claims against.
-/

/-! ## A024157.P735684959587546039

`and(A000577(A215366(n)), A220136(n+1))`
-/

namespace A024157.P735684959587546039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000577 (A215366 n).toNat) (A220136 (n + 1))

end

end A024157.P735684959587546039

/-! ## A024157.P14825760744506595691

`A030051(n+1)%A030036(A066660(n+1))`
-/

namespace A024157.P14825760744506595691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030051 (n + 1)) (A030036 (A066660 (n + 1)).toNat)

end

end A024157.P14825760744506595691

/-! ## A024157.P17285781872436840806

`A102742(n+1)%A060955(A174273(n+1))`
-/

namespace A024157.P17285781872436840806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102742 (n + 1)) (A060955 (A174273 (n + 1)).toNat)

end

end A024157.P17285781872436840806

/-! ## A024157.P7815520910231563135

`A326918(A334872(n+1)^A175851(n+1))`
-/

namespace A024157.P7815520910231563135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 (SequenceMachineLib.roundAway ((A334872 (n + 1) : ℚ) ^ (A175851 (n + 1) : ℤ))).toNat

end

end A024157.P7815520910231563135

/-! ## A024157.P17952793656009691673

`A307534(A003254(n+1))%A302776(n+1)`
-/

namespace A024157.P17952793656009691673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307534 (A003254 (n + 1)).toNat) (A302776 (n + 1))

end

end A024157.P17952793656009691673

/-!
# A024159: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that n divides a^3 + b^3 + c^3.

The programs for A024159, there is no canonical definition to state claims against.
-/

/-! ## A024159.P4051612211023766679

`A255070(gcd(A255070(n), A327448(n)))`
-/

namespace A024159.P4051612211023766679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (Int.gcd (A255070 n) (A327448 (n + 23)))

end

end A024159.P4051612211023766679

/-! ## A024159.P13402334602947038176

`A157228(A157229(3*n+4))+A024164(n+1)`
-/

namespace A024159.P13402334602947038176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A157229 (3 * n + 4)).toNat + A024164 (n + 1)

end

end A024159.P13402334602947038176

/-! ## A024159.P1672373445447610473

`A131810(A182256(n+1)/2)`
-/

namespace A024159.P1672373445447610473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (SequenceMachineLib.roundAway ((A182256 (n + 1) : ℚ) / 2)).toNat

end

end A024159.P1672373445447610473

/-! ## A024159.P2378955261400478183

`A217248(3*n+4)%A339839(A000204(n+1))`
-/

namespace A024159.P2378955261400478183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217248 (3 * n + 4)) (A339839 (A000204 (n + 1)).toNat)

end

end A024159.P2378955261400478183

/-! ## A024159.P15105706179557637980

`A218543(A218543(2*n+3)%A286520(2*(n+1)))`
-/

namespace A024159.P15105706179557637980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218543 (Int.tmod (A218543 (2 * n + 3)) (A286520 (2 * (n + 1)))).toNat

end

end A024159.P15105706179557637980

/-!
# A024160: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that (c-b)(c-a)(b-a) divides (c+b)(c+a)(b+a).

The programs for A024160, there is no canonical definition to state claims against.
-/

/-! ## A024160.P4868254246075726826

`A037830(A303909(n)+A218032(n))`
-/

namespace A024160.P4868254246075726826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A303909 n + A218032 n).toNat

end

end A024160.P4868254246075726826

/-! ## A024160.P15145158875215380363

`A196049(A273731(n)+A082319(n))`
-/

namespace A024160.P15145158875215380363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A273731 n + A082319 n).toNat

end

end A024160.P15145158875215380363

/-! ## A024160.P1390088364842901163

`A196049(or(A082319(n), A273731(n)))`
-/

namespace A024160.P1390088364842901163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (Int.lor (A082319 n) (A273731 n)).toNat

end

end A024160.P1390088364842901163

/-!
# A024161: Number of integer-sided triangles with sides a,b,c, a < b < c, a+b+c = n such that a,b,c are pairwise relatively prime.

The programs for A024161, there is no canonical definition to state claims against.
-/

/-! ## A024161.P16106354940755066471

`A308074(char[2]+1+n)`
-/

namespace A024161.P16106354940755066471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308074 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A024161.P16106354940755066471

/-! ## A024161.P3346690343124027151

`A308074(n+1)%(2-∑[n])`
-/

namespace A024161.P3346690343124027151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308074 (n + 1)) (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A024161.P3346690343124027151

/-! ## A024161.P7156602035043712673

`A308074(n+1)-A185012(n)`
-/

namespace A024161.P7156602035043712673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308074 (n + 1) - A185012 n

end

end A024161.P7156602035043712673

/-! ## A024161.P5281492191695055554

`A130543(n)*A308074(n+1)`
-/

namespace A024161.P5281492191695055554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n * A308074 (n + 1)

end

end A024161.P5281492191695055554

/-! ## A024161.P9379147683652980320

`A179184(n)*A308074(n+1)`
-/

namespace A024161.P9379147683652980320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n * A308074 (n + 1)

end

end A024161.P9379147683652980320

/-! ## A024161.P4166231730293438723

`A185114(n)*A308074(n+1)`
-/

namespace A024161.P4166231730293438723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n * A308074 (n + 1)

end

end A024161.P4166231730293438723

/-! ## A024161.P17863183349802236662

`A185115(n)*A308074(n+1)`
-/

namespace A024161.P17863183349802236662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 n * A308074 (n + 1)

end

end A024161.P17863183349802236662

/-! ## A024161.P818357620789824177

`A185116(n)*A308074(n+1)`
-/

namespace A024161.P818357620789824177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 n * A308074 (n + 1)

end

end A024161.P818357620789824177

/-! ## A024161.P6723744178565559669

`A185117(n)*A308074(n+1)`
-/

namespace A024161.P6723744178565559669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n * A308074 (n + 1)

end

end A024161.P6723744178565559669

/-! ## A024161.P8988566450459568980

`A185118(n)*A308074(n+1)`
-/

namespace A024161.P8988566450459568980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n * A308074 (n + 1)

end

end A024161.P8988566450459568980

/-! ## A024161.P14778028838240456951

`A185119(n)*A308074(n+1)`
-/

namespace A024161.P14778028838240456951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n * A308074 (n + 1)

end

end A024161.P14778028838240456951

/-! ## A024161.P11051546938886732565

`A267537(n)*A308074(n+1)`
-/

namespace A024161.P11051546938886732565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n * A308074 (n + 1)

end

end A024161.P11051546938886732565

/-! ## A024161.P13731094011758937144

`A267868(n)*A308074(n+1)`
-/

namespace A024161.P13731094011758937144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267868 n * A308074 (n + 1)

end

end A024161.P13731094011758937144

/-! ## A024161.P7575624078440959335

`A267869(n)*A308074(n+1)`
-/

namespace A024161.P7575624078440959335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 n * A308074 (n + 1)

end

end A024161.P7575624078440959335

/-! ## A024161.P9693864964088414496

`A267927(n)*A308074(n+1)`
-/

namespace A024161.P9693864964088414496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267927 n * A308074 (n + 1)

end

end A024161.P9693864964088414496

/-! ## A024161.P12784649850597379978

`A171905(n+1)*A308074(n+1)`
-/

namespace A024161.P12784649850597379978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1) * A308074 (n + 1)

end

end A024161.P12784649850597379978

/-! ## A024161.P1606872791870914781

`and(A077492(n+1), A308074(n+1))`
-/

namespace A024161.P1606872791870914781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077492 (n + 1)) (A308074 (n + 1))

end

end A024161.P1606872791870914781

/-! ## A024161.P10867788691577499806

`and(A165804(n+1), A308074(n+1))`
-/

namespace A024161.P10867788691577499806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165804 (n + 1)) (A308074 (n + 1))

end

end A024161.P10867788691577499806

/-! ## A024161.P10212432338400262354

`and(A073866(n+1), A308074(n+1))`
-/

namespace A024161.P10212432338400262354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073866 (n + 1)) (A308074 (n + 1))

end

end A024161.P10212432338400262354

/-!
# A024162: Number of incongruent integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that gcd(a,b,c)=1.

The programs for A024162, there is no canonical definition to state claims against.
-/

/-! ## A024162.P2946453869394808127

`A102572(A146285(n+2))`
-/

namespace A024162.P2946453869394808127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A146285 (n + 2)).toNat

end

end A024162.P2946453869394808127

/-! ## A024162.P16342862374925558379

`A124737(A308994(n+1))`
-/

namespace A024162.P16342862374925558379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A308994 (n + 1)).toNat

end

end A024162.P16342862374925558379

/-! ## A024162.P2114968385600741309

`A297034(A146011(n+2))`
-/

namespace A024162.P2114968385600741309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A146011 (n + 2)).toNat

end

end A024162.P2114968385600741309

/-!
# A024163: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that c - b < b - a.

The programs for A024163, the canonical program `A024163.P15793700980657077991` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024163 has offset 1).

The definition of A024163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024163.P15793700980657077991

`ogf(x^10/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024163

/-- `ogf(x^10/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))` -/
def P15793700980657077991.Spec : Prop :=
  ∀ n, P15793700980657077991.a n = A024163 (n + 1)

theorem P15793700980657077991.correct : P15793700980657077991.Spec := by
  intro n
  simp only [A024163, Nat.add_sub_cancel]

end A024163

/-! ## A024163.P18280227848947536241

`C(Δ[round((2-n)²/12)], 2)`
-/

namespace A024163.P18280227848947536241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A024163.P18280227848947536241

namespace A024163

/-- `C(Δ[round((2-n)²/12)], 2)` -/
def P18280227848947536241.Spec : Prop :=
  ∀ n, (P18280227848947536241.a n : ℤ) = A024163 (n + 1)

end A024163

/-! ## A024163.P1695760123992834646

`A211534(A028242(n))`
-/

namespace A024163.P1695760123992834646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 (A028242 n).toNat

end

end A024163.P1695760123992834646

namespace A024163

/-- `A211534(A028242(n))` -/
def P1695760123992834646.Spec : Prop :=
  ∀ n, P1695760123992834646.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P14990745975004034600

`A161680(A004526(n)-A002264(n+1))`
-/

namespace A024163.P14990745975004034600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004526 n - A002264 (n + 1)).toNat

end

end A024163.P14990745975004034600

namespace A024163

/-- `A161680(A004526(n)-A002264(n+1))` -/
def P14990745975004034600.Spec : Prop :=
  ∀ n, P14990745975004034600.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P8998358147789496560

`A161680(A211540(n+1)-A211540(n))`
-/

namespace A024163.P8998358147789496560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A211540 (n + 1) - A211540 n).toNat

end

end A024163.P8998358147789496560

namespace A024163

/-- `A161680(A211540(n+1)-A211540(n))` -/
def P8998358147789496560.Spec : Prop :=
  ∀ n, P8998358147789496560.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P5451817916550712665

`A024165(n+1)+A024165(n+3)`
-/

namespace A024163.P5451817916550712665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (n + 1) + A024165 (n + 3)

end

end A024163.P5451817916550712665

namespace A024163

/-- `A024165(n+1)+A024165(n+3)` -/
def P5451817916550712665.Spec : Prop :=
  ∀ n, P5451817916550712665.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P16723994584957520106

`A161680(A008647(2*n+1))`
-/

namespace A024163.P16723994584957520106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008647 (2 * n + 1)).toNat

end

end A024163.P16723994584957520106

namespace A024163

/-- `A161680(A008647(2*n+1))` -/
def P16723994584957520106.Spec : Prop :=
  ∀ n, P16723994584957520106.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P4097487333620221987

`A161680(A230128(2*(n+1))-A004526(n))`
-/

namespace A024163.P4097487333620221987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A230128 (2 * (n + 1)) - A004526 n).toNat

end

end A024163.P4097487333620221987

namespace A024163

/-- `A161680(A230128(2*(n+1))-A004526(n))` -/
def P4097487333620221987.Spec : Prop :=
  ∀ n, P4097487333620221987.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P1777473015941253942

`A161680(A103221(2*n+1)-A103221(n+1))`
-/

namespace A024163.P1777473015941253942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A103221 (2 * n + 1) - A103221 (n + 1)).toNat

end

end A024163.P1777473015941253942

namespace A024163

/-- `A161680(A103221(2*n+1)-A103221(n+1))` -/
def P1777473015941253942.Spec : Prop :=
  ∀ n, P1777473015941253942.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P14751680024628867928

`A090176(2*n+1)-A003056(A090176(2*n+1))`
-/

namespace A024163.P14751680024628867928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (2 * n + 1) - A003056 (A090176 (2 * n + 1)).toNat

end

end A024163.P14751680024628867928

namespace A024163

/-- `A090176(2*n+1)-A003056(A090176(2*n+1))` -/
def P14751680024628867928.Spec : Prop :=
  ∀ n, P14751680024628867928.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P13094466657911438215

`A004525(A008647(2*n+1)²-A008647(2*n+1))`
-/

namespace A024163.P13094466657911438215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008647 (2 * n + 1) ^ 2 - A008647 (2 * n + 1)).toNat

end

end A024163.P13094466657911438215

namespace A024163

/-- `A004525(A008647(2*n+1)²-A008647(2*n+1))` -/
def P13094466657911438215.Spec : Prop :=
  ∀ n, P13094466657911438215.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P17499397236618635713

`A004526(A008647(2*n+1)²-A008647(2*n+1))`
-/

namespace A024163.P17499397236618635713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008647 (2 * n + 1) ^ 2 - A008647 (2 * n + 1)).toNat

end

end A024163.P17499397236618635713

namespace A024163

/-- `A004526(A008647(2*n+1)²-A008647(2*n+1))` -/
def P17499397236618635713.Spec : Prop :=
  ∀ n, P17499397236618635713.a n = A024163 (n + 1)

end A024163

/-! ## A024163.P615260354733511867

`A025480(A008647(2*n+1)²-A008647(2*n+1))`
-/

namespace A024163.P615260354733511867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A008647 (2 * n + 1) ^ 2 - A008647 (2 * n + 1)).toNat

end

end A024163.P615260354733511867

namespace A024163

/-- `A025480(A008647(2*n+1)²-A008647(2*n+1))` -/
def P615260354733511867.Spec : Prop :=
  ∀ n, P615260354733511867.a n = A024163 (n + 1)

end A024163

/-!
# A024164: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that c - b = b - a.

The programs for A024164, the canonical program `A024164.P8438582726836098068` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024164 has offset 1).

The definition of A024164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024164.P10812094827457280140

`ogf(x^8/(1-x^3-x^6+x^9))`
-/

namespace A024164.P10812094827457280140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 0, 0, 1] [1, 0, 0, -1, 0, 0, -1, 0, 0, 1] n

end

end A024164.P10812094827457280140

namespace A024164

/-- `ogf(x^8/(1-x^3-x^6+x^9))` -/
def P10812094827457280140.Spec : Prop :=
  ∀ n, P10812094827457280140.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P10917438671540535404

`(1-ceil((n+1)/3)+floor((n+1)/3))*floor((n-2)/6)`
-/

namespace A024164.P10917438671540535404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ⌈(n + 1 : ℚ) / 3⌉ + ⌊(n + 1 : ℚ) / 3⌋) * ⌊((n : ℤ) - 2 : ℚ) / 6⌋

end

end A024164.P10917438671540535404

namespace A024164

/-- `(1-ceil((n+1)/3)+floor((n+1)/3))*floor((n-2)/6)` -/
def P10917438671540535404.Spec : Prop :=
  ∀ n, P10917438671540535404.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P8438582726836098068

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024164

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P8438582726836098068.Spec : Prop :=
  ∀ n, P8438582726836098068.a n = A024164 (n + 1)

theorem P8438582726836098068.correct : P8438582726836098068.Spec := by
  intro n
  simp only [A024164, Nat.add_sub_cancel]

end A024164

/-! ## A024164.P11844572211493514953

`lcm(floor(n/6), Δ[floor(n/3)])`
-/

namespace A024164.P11844572211493514953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 6⌋ (f1 (n + 1) - f1 n)

end

end A024164.P11844572211493514953

namespace A024164

/-- `lcm(floor(n/6), Δ[floor(n/3)])` -/
def P11844572211493514953.Spec : Prop :=
  ∀ n, (P11844572211493514953.a n : ℤ) = A024164 (n + 1)

end A024164

/-! ## A024164.P11032464276366236516

`∑{d}[n+1, A336757(#)]`
-/

namespace A024164.P11032464276366236516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336757 d

end

end A024164.P11032464276366236516

namespace A024164

/-- `∑{d}[n+1, A336757(#)]` -/
def P11032464276366236516.Spec : Prop :=
  ∀ n, P11032464276366236516.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P9805980323709200935

`A059169(A003417(n))`
-/

namespace A024164.P9805980323709200935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A003417 n).toNat

end

end A024164.P9805980323709200935

namespace A024164

/-- `A059169(A003417(n))` -/
def P9805980323709200935.Spec : Prop :=
  ∀ n, P9805980323709200935.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P5350137902540352415

`A140106(A081750(n+1))`
-/

namespace A024164.P5350137902540352415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A081750 (n + 1)).toNat

end

end A024164.P5350137902540352415

namespace A024164

/-- `A140106(A081750(n+1))` -/
def P5350137902540352415.Spec : Prop :=
  ∀ n, P5350137902540352415.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P8600047981291234567

`A152467(A302130(n+1))`
-/

namespace A024164.P8600047981291234567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A302130 (n + 1)).toNat

end

end A024164.P8600047981291234567

namespace A024164

/-- `A152467(A302130(n+1))` -/
def P8600047981291234567.Spec : Prop :=
  ∀ n, P8600047981291234567.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P14071292370983017118

`A342369(n)-A138750(n)`
-/

namespace A024164.P14071292370983017118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342369 n - A138750 n

end

end A024164.P14071292370983017118

namespace A024164

/-- `A342369(n)-A138750(n)` -/
def P14071292370983017118.Spec : Prop :=
  ∀ n, P14071292370983017118.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P10609987071609788049

`A090168(n)%A003417(n)`
-/

namespace A024164.P10609987071609788049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090168 n) (A003417 n)

end

end A024164.P10609987071609788049

namespace A024164

/-- `A090168(n)%A003417(n)` -/
def P10609987071609788049.Spec : Prop :=
  ∀ n, P10609987071609788049.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P10867285100775301523

`A152467(n)%A003417(n)`
-/

namespace A024164.P10867285100775301523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152467 n) (A003417 n)

end

end A024164.P10867285100775301523

namespace A024164

/-- `A152467(n)%A003417(n)` -/
def P10867285100775301523.Spec : Prop :=
  ∀ n, P10867285100775301523.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P1096479660327507923

`A002265(Δ[A002264(n)²])`
-/

namespace A024164.P1096479660327507923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A024164.P1096479660327507923

namespace A024164

/-- `A002265(Δ[A002264(n)²])` -/
def P1096479660327507923.Spec : Prop :=
  ∀ n, P1096479660327507923.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P14240458355796928869

`A002265(Δ[A002264(n)^2])`
-/

namespace A024164.P14240458355796928869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A024164.P14240458355796928869

namespace A024164

/-- `A002265(Δ[A002264(n)^2])` -/
def P14240458355796928869.Spec : Prop :=
  ∀ n, P14240458355796928869.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P13321892071665044597

`A008612(A222257(n)+1-n)`
-/

namespace A024164.P13321892071665044597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A222257 n + (1 - (n : ℤ))).toNat

end

end A024164.P13321892071665044597

namespace A024164

/-- `A008612(A222257(n)+1-n)` -/
def P13321892071665044597.Spec : Prop :=
  ∀ n, P13321892071665044597.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P10271197836260144173

`A008612(1-(n-A222257(n)))`
-/

namespace A024164.P10271197836260144173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (1 - ((n : ℤ) - A222257 n)).toNat

end

end A024164.P10271197836260144173

namespace A024164

/-- `A008612(1-(n-A222257(n)))` -/
def P10271197836260144173.Spec : Prop :=
  ∀ n, P10271197836260144173.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P7250867534841767502

`A152467(n*A173857(n+1))`
-/

namespace A024164.P7250867534841767502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 ((n : ℤ) * A173857 (n + 1)).toNat

end

end A024164.P7250867534841767502

namespace A024164

/-- `A152467(n*A173857(n+1))` -/
def P7250867534841767502.Spec : Prop :=
  ∀ n, P7250867534841767502.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P970055798603328583

`A276031(n+1)%A267806(n)`
-/

namespace A024164.P970055798603328583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276031 (n + 1)) (A267806 n)

end

end A024164.P970055798603328583

namespace A024164

/-- `A276031(n+1)%A267806(n)` -/
def P970055798603328583.Spec : Prop :=
  ∀ n, P970055798603328583.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P11849120369825307754

`A175676(n+1)%A026806(n+1)`
-/

namespace A024164.P11849120369825307754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175676 (n + 1)) (A026806 (n + 1))

end

end A024164.P11849120369825307754

namespace A024164

/-- `A175676(n+1)%A026806(n+1)` -/
def P11849120369825307754.Spec : Prop :=
  ∀ n, P11849120369825307754.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P1008560949219810810

`A008612(n)-A008612(n)*A011655(n+1)`
-/

namespace A024164.P1008560949219810810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n - A008612 n * A011655 (n + 1)

end

end A024164.P1008560949219810810

namespace A024164

/-- `A008612(n)-A008612(n)*A011655(n+1)` -/
def P1008560949219810810.Spec : Prop :=
  ∀ n, P1008560949219810810.a n = A024164 (n + 1)

end A024164

/-! ## A024164.P3559925216053176552

`A175676(n+1)-A079978(n+1)*A117910(n+1)`
-/

namespace A024164.P3559925216053176552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1) - A079978 (n + 1) * A117910 (n + 1)

end

end A024164.P3559925216053176552

namespace A024164

/-- `A175676(n+1)-A079978(n+1)*A117910(n+1)` -/
def P3559925216053176552.Spec : Prop :=
  ∀ n, P3559925216053176552.a n = A024164 (n + 1)

end A024164

/-!
# A024165: Number of integer-sided triangles with sides a,b,c, a<b<c, a+b+c=n such that c - b > b - a.

The programs for A024165, the canonical program `A024165.P2736460532015738690` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024165 has offset 1).

The definition of A024165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024165.P5320111508034886907

`ogf(x^12/(1-x^3-x^4-x^6+x^7+x^9+x^10-x^13))`
-/

namespace A024165.P5320111508034886907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] [1, 0, 0, -1, -1, 0, -1, 1, 0, 1, 1, 0, 0, -1] n

end

end A024165.P5320111508034886907

namespace A024165

/-- `ogf(x^12/(1-x^3-x^4-x^6+x^7+x^9+x^10-x^13))` -/
def P5320111508034886907.Spec : Prop :=
  ∀ n, P5320111508034886907.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P2736460532015738690

`(floor(n/3)-floor((n+1)/4))*(floor(n/3)+floor((n+1)/4)-floor((n+1)/2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024165

/-- `(floor(n/3)-floor((n+1)/4))*(floor(n/3)+floor((n+1)/4)-floor((n+1)/2))` -/
def P2736460532015738690.Spec : Prop :=
  ∀ n, P2736460532015738690.a n = A024165 (n + 1)

theorem P2736460532015738690.correct : P2736460532015738690.Spec := by
  intro n
  simp only [A024165, Nat.add_sub_cancel]

end A024165

/-! ## A024165.P1176252323147471365

`A025828(n)-A008612(n)`
-/

namespace A024165.P1176252323147471365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 n - A008612 n

end

end A024165.P1176252323147471365

namespace A024165

/-- `A025828(n)-A008612(n)` -/
def P1176252323147471365.Spec : Prop :=
  ∀ n, P1176252323147471365.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P9557121322962929349

`A002620(abs(1-A008612(n)))`
-/

namespace A024165.P9557121322962929349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 |1 - A008612 n|.toNat

end

end A024165.P9557121322962929349

namespace A024165

/-- `A002620(abs(1-A008612(n)))` -/
def P9557121322962929349.Spec : Prop :=
  ∀ n, P9557121322962929349.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P2749251923926036471

`A008217(A004273(A008612(n)))`
-/

namespace A024165.P2749251923926036471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A004273 (A008612 n).toNat).toNat

end

end A024165.P2749251923926036471

namespace A024165

/-- `A008217(A004273(A008612(n)))` -/
def P2749251923926036471.Spec : Prop :=
  ∀ n, P2749251923926036471.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P5392547821746954885

`A002620(A008612(n)+1)-A008612(n)`
-/

namespace A024165.P5392547821746954885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008612 n + 1).toNat - A008612 n

end

end A024165.P5392547821746954885

namespace A024165

/-- `A002620(A008612(n)+1)-A008612(n)` -/
def P5392547821746954885.Spec : Prop :=
  ∀ n, P5392547821746954885.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P2478576418438220300

`A025828(n)-A003056(2*A025828(n))`
-/

namespace A024165.P2478576418438220300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 n - A003056 (2 * A025828 n).toNat

end

end A024165.P2478576418438220300

namespace A024165

/-- `A025828(n)-A003056(2*A025828(n))` -/
def P2478576418438220300.Spec : Prop :=
  ∀ n, P2478576418438220300.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P5771719104725682869

`A002265((1-A008612(n))²)`
-/

namespace A024165.P5771719104725682869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((1 - A008612 n) ^ 2).toNat

end

end A024165.P5771719104725682869

namespace A024165

/-- `A002265((1-A008612(n))²)` -/
def P5771719104725682869.Spec : Prop :=
  ∀ n, P5771719104725682869.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P5118113522838050167

`A004526((1-A008612(n))²)/2`
-/

namespace A024165.P5118113522838050167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 ((1 - A008612 n) ^ 2).toNat : ℚ) / 2

end

end A024165.P5118113522838050167

namespace A024165

/-- `A004526((1-A008612(n))²)/2` -/
def P5118113522838050167.Spec : Prop :=
  ∀ n, P5118113522838050167.a n = (A024165 (n + 1) : ℚ)

end A024165

/-! ## A024165.P10415433395107312196

`A002265((n%3-A008615(n))²)`
-/

namespace A024165.P10415433395107312196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((((n % 3 : ℕ) : ℤ) - A008615 n) ^ 2).toNat

end

end A024165.P10415433395107312196

namespace A024165

/-- `A002265((n%3-A008615(n))²)` -/
def P10415433395107312196.Spec : Prop :=
  ∀ n, P10415433395107312196.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P5993174066846588813

`A056847(A110657(A008612(n)²))`
-/

namespace A024165.P5993174066846588813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A110657 (A008612 n ^ 2).toNat).toNat

end

end A024165.P5993174066846588813

namespace A024165

/-- `A056847(A110657(A008612(n)²))` -/
def P5993174066846588813.Spec : Prop :=
  ∀ n, P5993174066846588813.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P9516574974766623362

`A004247(A300068(A008612(n)²))`
-/

namespace A024165.P9516574974766623362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A300068 (A008612 n ^ 2).toNat).toNat

end

end A024165.P9516574974766623362

namespace A024165

/-- `A004247(A300068(A008612(n)²))` -/
def P9516574974766623362.Spec : Prop :=
  ∀ n, P9516574974766623362.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P14419783747723247042

`A002265((A008615(n)-A010872(n))²)`
-/

namespace A024165.P14419783747723247042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((A008615 n - A010872 n) ^ 2).toNat

end

end A024165.P14419783747723247042

namespace A024165

/-- `A002265((A008615(n)-A010872(n))²)` -/
def P14419783747723247042.Spec : Prop :=
  ∀ n, P14419783747723247042.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P1275363587509758542

`A002265((A002265(2*n)-A008611(n+1))²)`
-/

namespace A024165.P1275363587509758542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((A002265 (2 * n) - A008611 (n + 1)) ^ 2).toNat

end

end A024165.P1275363587509758542

namespace A024165

/-- `A002265((A002265(2*n)-A008611(n+1))²)` -/
def P1275363587509758542.Spec : Prop :=
  ∀ n, P1275363587509758542.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P5579577263686385048

`A004247(A004524(A008612(n)²))`
-/

namespace A024165.P5579577263686385048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A004524 (A008612 n ^ 2).toNat).toNat

end

end A024165.P5579577263686385048

namespace A024165

/-- `A004247(A004524(A008612(n)²))` -/
def P5579577263686385048.Spec : Prop :=
  ∀ n, P5579577263686385048.a n = A024165 (n + 1)

end A024165

/-! ## A024165.P9281578934386573857

`A002620(A266542(n+1))%A001399(n)`
-/

namespace A024165.P9281578934386573857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 (A266542 (n + 1)).toNat) (A001399 n)

end

end A024165.P9281578934386573857

namespace A024165

/-- `A002620(A266542(n+1))%A001399(n)` -/
def P9281578934386573857.Spec : Prop :=
  ∀ n, P9281578934386573857.a n = A024165 (n + 1)

end A024165

/-!
# A024166: a(n) = Sum_{1 <= i < j <= n} (j-i)^3.

The programs for A024166, the canonical program `A024166.P6072422221111961718` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024166 has offset 0).

The definition of A024166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024166.P6072422221111961718

`n*C(n+3, 4)+C(n+2, 5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024166

/-- `n*C(n+3, 4)+C(n+2, 5)` -/
def P6072422221111961718.Spec : Prop :=
  ∀ n, (P6072422221111961718.a n : ℤ) = A024166 n

theorem P6072422221111961718.correct : P6072422221111961718.Spec := by
  intro n
  simp only [A024166]

end A024166

/-! ## A024166.P4952904751438932754

`ogf((x+4x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A024166.P4952904751438932754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A024166.P4952904751438932754

namespace A024166

/-- `ogf((x+4x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4952904751438932754.Spec : Prop :=
  ∀ n, P4952904751438932754.a n = A024166 n

end A024166

/-! ## A024166.P15361572787436550936

`n*(n+1)*(n+2)*(3*n²+6*n+1)/60`
-/

namespace A024166.P15361572787436550936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (3 * n ^ 2 + 6 * n + 1) : ℚ) / 60

end

end A024166.P15361572787436550936

namespace A024166

/-- `n*(n+1)*(n+2)*(3*n²+6*n+1)/60` -/
def P15361572787436550936.Spec : Prop :=
  ∀ n, P15361572787436550936.a n = (A024166 n : ℚ)

theorem P15361572787436550936.correct : P15361572787436550936.Spec := by
  intro n
  simp only [A024166, Nat.add_sub_cancel, A024166.P15361572787436550936.a, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024166

/-! ## A024166.P13720017998835477098

`∑{#}[n, #^3*(n+1-#)]`
-/

namespace A024166.P13720017998835477098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k ^ 3 : ℤ) * ((n + 1 : ℤ) - (k : ℤ))

end

end A024166.P13720017998835477098

namespace A024166

/-- `∑{#}[n, #^3*(n+1-#)]` -/
def P13720017998835477098.Spec : Prop :=
  ∀ n, P13720017998835477098.a n = A024166 n

end A024166

/-! ## A024166.P10913570469489649258

`or(∑[∑[n]²], char[1])`
-/

namespace A024166.P10913570469489649258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f3 j = n then 1 else 0)

end

end A024166.P10913570469489649258

namespace A024166

/-- `or(∑[∑[n]²], char[1])` -/
def P10913570469489649258.Spec : Prop :=
  ∀ n, (P10913570469489649258.a n : ℤ) = A024166 n

end A024166

/-! ## A024166.P15527648753198964677

`∑[n]²+a(n-1)` with `a(0)=0`
-/

namespace A024166.P15527648753198964677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + a (n - 1)

end

end A024166.P15527648753198964677

namespace A024166

/-- `∑[n]²+a(n-1)` -/
def P15527648753198964677.Spec : Prop :=
  ∀ n, (P15527648753198964677.a n : ℤ) = A024166 n

end A024166

/-! ## A024166.P9115702253674473743

`abs(∑[a(n-1)-n^3])` with `a(0)=0`
-/

namespace A024166.P9115702253674473743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A024166.P9115702253674473743

namespace A024166

/-- `abs(∑[a(n-1)-n^3])` -/
def P9115702253674473743.Spec : Prop :=
  ∀ n, P9115702253674473743.a n = A024166 n

end A024166

/-! ## A024166.P9472885757129762063

`-∑[a(n-1)-n^3]` with `a(0)=0`
-/

namespace A024166.P9472885757129762063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024166.P9472885757129762063

namespace A024166

/-- `-∑[a(n-1)-n^3]` -/
def P9472885757129762063.Spec : Prop :=
  ∀ n, P9472885757129762063.a n = A024166 n

end A024166

/-! ## A024166.P17999075413284810933

`∑[∑[n]^(2%(n+1))]-1`
-/

namespace A024166.P17999075413284810933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A024166.P17999075413284810933

namespace A024166

/-- `∑[∑[n]^(2%(n+1))]-1` -/
def P17999075413284810933.Spec : Prop :=
  ∀ n, P17999075413284810933.a n = A024166 n

end A024166

/-! ## A024166.P8276417609348797763

`∑[lcm(n, n+1)*∑[n]]/2`
-/

namespace A024166.P8276417609348797763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A024166.P8276417609348797763

namespace A024166

/-- `∑[lcm(n, n+1)*∑[n]]/2` -/
def P8276417609348797763.Spec : Prop :=
  ∀ n, P8276417609348797763.a n = (A024166 n : ℚ)

end A024166

/-! ## A024166.P2479121717452192177

`a(n-1)+C(n+1, 2)²` with `a(0)=0`
-/

namespace A024166.P2479121717452192177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (n + 1) 2 ^ 2

end

end A024166.P2479121717452192177

namespace A024166

/-- `a(n-1)+C(n+1, 2)²` -/
def P2479121717452192177.Spec : Prop :=
  ∀ n, (P2479121717452192177.a n : ℤ) = A024166 n

end A024166

/-! ## A024166.P1346071550637679407

`∑[∑[a(n-1)+1]*∑[n]]` with `a(0)=0`
-/

namespace A024166.P1346071550637679407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024166.P1346071550637679407

namespace A024166

/-- `∑[∑[a(n-1)+1]*∑[n]]` -/
def P1346071550637679407.Spec : Prop :=
  ∀ n, (P1346071550637679407.a n : ℤ) = A024166 n

end A024166

/-! ## A024166.P12952859288327161754

`n-∑[a(n-1)-n^3]` with `a(0)=0, a(1)=0`
-/

namespace A024166.P12952859288327161754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024166.P12952859288327161754

namespace A024166

/-- `n-∑[a(n-1)-n^3]` -/
def P12952859288327161754.Spec : Prop :=
  ∀ n, P12952859288327161754.a n = A024166 n

end A024166

/-! ## A024166.P2592129727189960692

`a(n-1)+((n²+n)/2)²` with `a(0)=0`
-/

namespace A024166.P2592129727189960692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2 + n : ℚ) / 2) ^ 2

end

end A024166.P2592129727189960692

namespace A024166

/-- `a(n-1)+((n²+n)/2)²` -/
def P2592129727189960692.Spec : Prop :=
  ∀ n, P2592129727189960692.a n = (A024166 n : ℚ)

end A024166

/-! ## A024166.P1440376960473798348

`A365373(n)+∑[n]`
-/

namespace A024166.P1440376960473798348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365373 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024166.P1440376960473798348

namespace A024166

/-- `A365373(n)+∑[n]` -/
def P1440376960473798348.Spec : Prop :=
  ∀ n, P1440376960473798348.a n = A024166 n

end A024166

/-! ## A024166.P1407949533340416616

`∑[A154323(n)]-(n+1)`
-/

namespace A024166.P1407949533340416616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A024166.P1407949533340416616

namespace A024166

/-- `∑[A154323(n)]-(n+1)` -/
def P1407949533340416616.Spec : Prop :=
  ∀ n, P1407949533340416616.a n = A024166 n

end A024166

/-! ## A024166.P3646468465625971699

`A112851(n)+A001296(n)`
-/

namespace A024166.P3646468465625971699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 n + A001296 n

end

end A024166.P3646468465625971699

namespace A024166

/-- `A112851(n)+A001296(n)` -/
def P3646468465625971699.Spec : Prop :=
  ∀ n, P3646468465625971699.a n = A024166 n

end A024166

/-! ## A024166.P2027852350425397887

`A244864(n)-A034263(n)`
-/

namespace A024166.P2027852350425397887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A034263 n

end

end A024166.P2027852350425397887

namespace A024166

/-- `A244864(n)-A034263(n)` -/
def P2027852350425397887.Spec : Prop :=
  ∀ n, P2027852350425397887.a n = A024166 n

theorem P2027852350425397887.correct : P2027852350425397887.Spec := by
  intro n
  simp only [A024166, Nat.add_sub_cancel, A024166.P2027852350425397887.a, A024166.P6072422221111961718.a, A034263, A034263.P5868129197671622568.a, A244864, A244864.P2839936141787549621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024166

/-! ## A024166.P10405249700837937363

`A271663(n)-A006322(n+1)`
-/

namespace A024166.P10405249700837937363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 n - A006322 (n + 1)

end

end A024166.P10405249700837937363

namespace A024166

/-- `A271663(n)-A006322(n+1)` -/
def P10405249700837937363.Spec : Prop :=
  ∀ n, P10405249700837937363.a n = A024166 n

end A024166

/-! ## A024166.P10203931050595016632

`A085462(n+1)-A086689(n+1)`
-/

namespace A024166.P10203931050595016632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A086689 (n + 1)

end

end A024166.P10203931050595016632

namespace A024166

/-- `A085462(n+1)-A086689(n+1)` -/
def P10203931050595016632.Spec : Prop :=
  ∀ n, P10203931050595016632.a n = A024166 n

end A024166

/-!
# A024167: a(n) = n!*(1 - 1/2 + 1/3 - ... + c/n), where c = (-1)^(n+1).

The programs for A024167, the canonical program `A024167.P6816668062951058336` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024167 has offset 1).

The definition of A024167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024167.P6816668062951058336

`a(n-1)+a(n-2)*n²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024167

/-- `a(n-1)+a(n-2)*n²` -/
def P6816668062951058336.Spec : Prop :=
  ∀ n, (P6816668062951058336.a n : ℤ) = A024167 (n + 1)

theorem P6816668062951058336.correct : P6816668062951058336.Spec := by
  intro n
  simp only [A024167, Nat.add_sub_cancel]

end A024167

/-! ## A024167.P7791836134470953215

`(n+1)*a(n-1)-(-1)^(n+1)*n!` with `a(0)=1`
-/

namespace A024167.P7791836134470953215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - (-1) ^ (n + 1) * (Nat.factorial n : ℤ)

end

end A024167.P7791836134470953215

namespace A024167

/-- `(n+1)*a(n-1)-(-1)^(n+1)*n!` -/
def P7791836134470953215.Spec : Prop :=
  ∀ n, P7791836134470953215.a n = A024167 (n + 1)

end A024167

/-! ## A024167.P9227925370810025822

`A081358(n+1)-A092691(n+1)`
-/

namespace A024167.P9227925370810025822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 (n + 1) - A092691 (n + 1)

end

end A024167.P9227925370810025822

namespace A024167

/-- `A081358(n+1)-A092691(n+1)` -/
def P9227925370810025822.Spec : Prop :=
  ∀ n, P9227925370810025822.a n = A024167 (n + 1)

end A024167

/-! ## A024167.P3479829745236582907

`a(n-1)+n*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A024167.P3479829745236582907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + n * (n * a (n - 2))

end

end A024167.P3479829745236582907

namespace A024167

/-- `a(n-1)+n*n*a(n-2)` -/
def P3479829745236582907.Spec : Prop :=
  ∀ n, (P3479829745236582907.a n : ℤ) = A024167 (n + 1)

end A024167

/-! ## A024167.P12745395663783106582

`a(n-1)+a(n-2)/n^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A024167.P12745395663783106582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (n : ℚ) ^ (-2 : ℤ)

end

end A024167.P12745395663783106582

namespace A024167

/-- `a(n-1)+a(n-2)/n^(-2)` -/
def P12745395663783106582.Spec : Prop :=
  ∀ n, P12745395663783106582.a n = (A024167 (n + 1) : ℚ)

end A024167

/-! ## A024167.P8087205372599330733

`A073480(∑[n]+1)`
-/

namespace A024167.P8087205372599330733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024167.P8087205372599330733

namespace A024167

/-- `A073480(∑[n]+1)` -/
def P8087205372599330733.Spec : Prop :=
  ∀ n, P8087205372599330733.a n = A024167 (n + 1)

end A024167

/-! ## A024167.P15681617035609015534

`A080959(∑[n+1])`
-/

namespace A024167.P15681617035609015534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024167.P15681617035609015534

namespace A024167

/-- `A080959(∑[n+1])` -/
def P15681617035609015534.Spec : Prop :=
  ∀ n, P15681617035609015534.a n = A024167 (n + 1)

end A024167

/-! ## A024167.P13470552828762658953

`A054651(∑[n+2]-1)`
-/

namespace A024167.P13470552828762658953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A024167.P13470552828762658953

namespace A024167

/-- `A054651(∑[n+2]-1)` -/
def P13470552828762658953.Spec : Prop :=
  ∀ n, P13470552828762658953.a n = A024167 (n + 1)

end A024167

/-! ## A024167.P9156372222428131898

`A025527(n+1)*A025530(n+1)`
-/

namespace A024167.P9156372222428131898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A025530 (n + 1)

end

end A024167.P9156372222428131898

namespace A024167

/-- `A025527(n+1)*A025530(n+1)` -/
def P9156372222428131898.Spec : Prop :=
  ∀ n, P9156372222428131898.a n = A024167 (n + 1)

end A024167

/-! ## A024167.P10589641935392503567

`A058313(n+1)*A334958(n+1)`
-/

namespace A024167.P10589641935392503567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 1) * A334958 (n + 1)

end

end A024167.P10589641935392503567

namespace A024167

/-- `A058313(n+1)*A334958(n+1)` -/
def P10589641935392503567.Spec : Prop :=
  ∀ n, P10589641935392503567.a n = A024167 (n + 1)

end A024167

/-!
# A024168: a(n) = n! * (1 + Sum_{j=1..n} (-1)^j/j).

The programs for A024168, the canonical program `A024168.P6818589342891800532` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024168 has offset 0).

The definition of A024168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024168.P6818589342891800532

`a(n-1)+a(n-2)*(n-1)²` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024168

/-- `a(n-1)+a(n-2)*(n-1)²` -/
def P6818589342891800532.Spec : Prop :=
  ∀ n, P6818589342891800532.a n = A024168 n

theorem P6818589342891800532.correct : P6818589342891800532.Spec := by
  intro n
  simp only [A024168]

end A024168

/-! ## A024168.P1632690492522857681

`a(n-1)*n+(-1)^n*(n-1)!` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A024168.P1632690492522857681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) * (n : ℤ) + (-1) ^ n * (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A024168.P1632690492522857681

namespace A024168

/-- `a(n-1)*n+(-1)^n*(n-1)!` -/
def P1632690492522857681.Spec : Prop :=
  ∀ n, P1632690492522857681.a n = A024168 n

end A024168

/-! ## A024168.P15440909487345616704

`a(n-1)+(n-1)²*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A024168.P15440909487345616704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A024168.P15440909487345616704

namespace A024168

/-- `a(n-1)+(n-1)²*a(n-2)` -/
def P15440909487345616704.Spec : Prop :=
  ∀ n, P15440909487345616704.a n = A024168 n

end A024168

/-! ## A024168.P9008910252673066011

`∏[char[1]-abs(1-n)]+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A024168.P9008910252673066011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A024168.P9008910252673066011

namespace A024168

/-- `∏[char[1]-abs(1-n)]+a(n-1)/n^(-1)` -/
def P9008910252673066011.Spec : Prop :=
  ∀ n, P9008910252673066011.a n = (A024168 n : ℚ)

end A024168

/-! ## A024168.P6098944336823493454

`a(n-1)+(n-1)*(n-1)*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A024168.P6098944336823493454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 1) * a (n - 2))

end

end A024168.P6098944336823493454

namespace A024168

/-- `a(n-1)+(n-1)*(n-1)*a(n-2)` -/
def P6098944336823493454.Spec : Prop :=
  ∀ n, P6098944336823493454.a n = A024168 n

end A024168

/-! ## A024168.P7759943554081269352

`A075829(n+1)*A334958(A233583(n+1))`
-/

namespace A024168.P7759943554081269352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075829 (n + 1) * A334958 (A233583 (n + 1)).toNat

end

end A024168.P7759943554081269352

namespace A024168

/-- `A075829(n+1)*A334958(A233583(n+1))` -/
def P7759943554081269352.Spec : Prop :=
  ∀ n, P7759943554081269352.a n = A024168 n

end A024168

/-! ## A024168.P7617406737003789704

`a(n-1)/n^(-1)+n!/A274922(A028310(n))` with `a(0)=1`
-/

namespace A024168.P7617406737003789704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (Nat.factorial n : ℚ) / (A274922 (A028310 n).toNat : ℚ)

end

end A024168.P7617406737003789704

namespace A024168

/-- `a(n-1)/n^(-1)+n!/A274922(A028310(n))` -/
def P7617406737003789704.Spec : Prop :=
  ∀ n, P7617406737003789704.a n = (A024168 n : ℚ)

end A024168

/-! ## A024168.P9590818883645944444

`A024167(n+1)/A075827(n+1)*A075829(n+1)`
-/

namespace A024168.P9590818883645944444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A075827 (n + 1) : ℚ) * (A075829 (n + 1) : ℚ)

end

end A024168.P9590818883645944444

namespace A024168

/-- `A024167(n+1)/A075827(n+1)*A075829(n+1)` -/
def P9590818883645944444.Spec : Prop :=
  ∀ n, P9590818883645944444.a n = (A024168 n : ℚ)

end A024168

/-!
# A024169: Integer part of ((2nd elementary symmetric function of 1,2,...,n)/(1+2+...+n)).

The programs for A024169, the canonical program `A024169.P8056837572494978508` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024169 has offset 1).

The definition of A024169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024169.P8056837572494978508

`floor(1/12*n*(3*(n+1)+2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024169

/-- `floor(1/12*n*(3*(n+1)+2))` -/
def P8056837572494978508.Spec : Prop :=
  ∀ n, P8056837572494978508.a n = A024169 (n + 1)

theorem P8056837572494978508.correct : P8056837572494978508.Spec := by
  intro n
  simp only [A024169, Nat.add_sub_cancel]

end A024169

/-! ## A024169.P12085131549913773445

`ogf((x^2+x^3-x^6+x^7+2x^9-x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))`
-/

namespace A024169.P12085131549913773445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 0, 0, -1, 1, 0, 2, -1] [1, -2, 1, -1, 2, -1, 1, -2, 1, -1, 2, -1] n

end

end A024169.P12085131549913773445

namespace A024169

/-- `ogf((x^2+x^3-x^6+x^7+2x^9-x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))` -/
def P12085131549913773445.Spec : Prop :=
  ∀ n, P12085131549913773445.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P10910927673111063882

`ceil((∑[n-n²%3]+n-1)/2)`
-/

namespace A024169.P10910927673111063882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1) : ℤ) : ℚ) / 2⌉

end

end A024169.P10910927673111063882

namespace A024169

/-- `ceil((∑[n-n²%3]+n-1)/2)` -/
def P10910927673111063882.Spec : Prop :=
  ∀ n, P10910927673111063882.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P9865843685771413545

`A004526(A063197(n+1))+A002620(n)`
-/

namespace A024169.P9865843685771413545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063197 (n + 1)).toNat + A002620 n

end

end A024169.P9865843685771413545

namespace A024169

/-- `A004526(A063197(n+1))+A002620(n)` -/
def P9865843685771413545.Spec : Prop :=
  ∀ n, P9865843685771413545.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P6508322232301671400

`A004526(n-A008615(n))+A002620(n)`
-/

namespace A024169.P6508322232301671400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A008615 n).toNat + A002620 n

end

end A024169.P6508322232301671400

namespace A024169

/-- `A004526(n-A008615(n))+A002620(n)` -/
def P6508322232301671400.Spec : Prop :=
  ∀ n, P6508322232301671400.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P3561216514713294868

`A076921(n+1)-A065033(A103221(n+1))`
-/

namespace A024169.P3561216514713294868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 1) - A065033 (A103221 (n + 1)).toNat

end

end A024169.P3561216514713294868

namespace A024169

/-- `A076921(n+1)-A065033(A103221(n+1))` -/
def P3561216514713294868.Spec : Prop :=
  ∀ n, P3561216514713294868.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P16084008242867180922

`A002620(n+1)-A008615(2*A008624(n+1))`
-/

namespace A024169.P16084008242867180922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - A008615 (2 * A008624 (n + 1)).toNat

end

end A024169.P16084008242867180922

namespace A024169

/-- `A002620(n+1)-A008615(2*A008624(n+1))` -/
def P16084008242867180922.Spec : Prop :=
  ∀ n, P16084008242867180922.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P3522948491388426588

`A024177(n+3)-(2*n+5)`
-/

namespace A024169.P3522948491388426588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024177 (n + 3) - (2 * n + 5 : ℤ)

end

end A024169.P3522948491388426588

namespace A024169

/-- `A024177(n+3)-(2*n+5)` -/
def P3522948491388426588.Spec : Prop :=
  ∀ n, P3522948491388426588.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P3527083079782245817

`∑[A008619(n)]-A008619(A008615(n)+n+1)`
-/

namespace A024169.P3527083079782245817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 (A008615 n + (n + 1 : ℤ)).toNat

end

end A024169.P3527083079782245817

namespace A024169

/-- `∑[A008619(n)]-A008619(A008615(n)+n+1)` -/
def P3527083079782245817.Spec : Prop :=
  ∀ n, P3527083079782245817.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P10088012495930378689

`A265409(A024190(n+2)+1)`
-/

namespace A024169.P10088012495930378689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265409 (A024190 (n + 2) + 1).toNat

end

end A024169.P10088012495930378689

namespace A024169

/-- `A265409(A024190(n+2)+1)` -/
def P10088012495930378689.Spec : Prop :=
  ∀ n, P10088012495930378689.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P4684308397484265641

`A004526(A000217(n)-A002264(n))+A002264(n)`
-/

namespace A024169.P4684308397484265641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000217 n - A002264 n).toNat + A002264 n

end

end A024169.P4684308397484265641

namespace A024169

/-- `A004526(A000217(n)-A002264(n))+A002264(n)` -/
def P4684308397484265641.Spec : Prop :=
  ∀ n, P4684308397484265641.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P9984358848044418838

`A004526(∑[n]+floor(n/3))`
-/

namespace A024169.P9984358848044418838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 3⌋).toNat

end

end A024169.P9984358848044418838

namespace A024169

/-- `A004526(∑[n]+floor(n/3))` -/
def P9984358848044418838.Spec : Prop :=
  ∀ n, P9984358848044418838.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P7380596413861640417

`A110654(A008620(n)+A000217(n))-1`
-/

namespace A024169.P7380596413861640417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008620 n + A000217 n).toNat - 1

end

end A024169.P7380596413861640417

namespace A024169

/-- `A110654(A008620(n)+A000217(n))-1` -/
def P7380596413861640417.Spec : Prop :=
  ∀ n, P7380596413861640417.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P15920266748183189305

`A002264(A330707(n)+n)`
-/

namespace A024169.P15920266748183189305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330707 n + (n : ℤ)).toNat

end

end A024169.P15920266748183189305

namespace A024169

/-- `A002264(A330707(n)+n)` -/
def P15920266748183189305.Spec : Prop :=
  ∀ n, P15920266748183189305.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P8324255595316893819

`A002264(∑[2*n]-A054925(n))`
-/

namespace A024169.P8324255595316893819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054925 n).toNat

end

end A024169.P8324255595316893819

namespace A024169

/-- `A002264(∑[2*n]-A054925(n))` -/
def P8324255595316893819.Spec : Prop :=
  ∀ n, P8324255595316893819.a n = A024169 (n + 1)

end A024169

/-! ## A024169.P4905947038333598951

`A002265(∑[2*n]+round(2*n/3))`
-/

namespace A024169.P4905947038333598951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A024169.P4905947038333598951

namespace A024169

/-- `A002265(∑[2*n]+round(2*n/3))` -/
def P4905947038333598951.Spec : Prop :=
  ∀ n, P4905947038333598951.a n = A024169 (n + 1)

end A024169

/-!
# A024170: Expansion of 1/((1-x)(1-6x)(1-9x)(1-10x)).

The programs for A024170, there is no canonical definition to state claims against.
-/

/-! ## A024170.P12388439988731149313

`∑[A020595(n)]`
-/

namespace A024170.P12388439988731149313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024170.P12388439988731149313

/-! ## A024170.P7255385614933639475

`2*A021284(n)-A021194(n)`
-/

namespace A024170.P7255385614933639475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021284 n - A021194 n

end

end A024170.P7255385614933639475

/-! ## A024170.P4376924548430359658

`2*A021684(n)-A021514(n)`
-/

namespace A024170.P4376924548430359658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021684 n - A021514 n

end

end A024170.P4376924548430359658

/-! ## A024170.P8535658761577834671

`2*A023955(n)-A023954(n)`
-/

namespace A024170.P8535658761577834671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023955 n - A023954 n

end

end A024170.P8535658761577834671

/-! ## A024170.P10922805666741201208

`A020595(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A024170.P10922805666741201208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020595 n + a (A023443 n).toNat

end

end A024170.P10922805666741201208

/-! ## A024170.P16235797380615717980

`A016246(n+1)-A016244(n+1)`
-/

namespace A024170.P16235797380615717980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016246 (n + 1) - A016244 (n + 1)

end

end A024170.P16235797380615717980

/-!
# A024172: Integer part of ((3rd elementary symmetric function of 1,2,..,n)/(2nd elementary symmetric function of 1,2,...,n)).

The programs for A024172, the canonical program `A024172.P176446262918756482` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024172 has offset 2).

The definition of A024172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024172.P176446262918756482

`floor(1/2*(n+2)*n*(n+3)/(3*(n+2)+2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024172

/-- `floor(1/2*(n+2)*n*(n+3)/(3*(n+2)+2))` -/
def P176446262918756482.Spec : Prop :=
  ∀ n, P176446262918756482.a n = A024172 (n + 2)

theorem P176446262918756482.correct : P176446262918756482.Spec := by
  intro n
  simp only [A024172, Nat.add_sub_cancel]

end A024172

/-! ## A024172.P10657557060264301839

`floor(∑[(a(n-1)+n+1)/4])` with `a(0)=0`
-/

namespace A024172.P10657557060264301839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + (n + 1 : ℚ)) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A024172.P10657557060264301839

namespace A024172

/-- `floor(∑[(a(n-1)+n+1)/4])` -/
def P10657557060264301839.Spec : Prop :=
  ∀ n, P10657557060264301839.a n = A024172 (n + 2)

end A024172

/-! ## A024172.P6608956205566829808

`ogf((x^2+x^4+x^8+x^10-x^11)/(1-2x+x^2-x^9+2x^10-x^11))`
-/

namespace A024172.P6608956205566829808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, -1] [1, -2, 1, 0, 0, 0, 0, 0, 0, -1, 2, -1] n

end

end A024172.P6608956205566829808

namespace A024172

/-- `ogf((x^2+x^4+x^8+x^10-x^11)/(1-2x+x^2-x^9+2x^10-x^11))` -/
def P6608956205566829808.Spec : Prop :=
  ∀ n, P6608956205566829808.a n = A024172 (n + 2)

end A024172

/-! ## A024172.P2337362898157362253

`A002264(A131737(n)+∑[n])`
-/

namespace A024172.P2337362898157362253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A131737 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A024172.P2337362898157362253

namespace A024172

/-- `A002264(A131737(n)+∑[n])` -/
def P2337362898157362253.Spec : Prop :=
  ∀ n, P2337362898157362253.a n = A024172 (n + 2)

end A024172

/-! ## A024172.P6381127093919878228

`A002264(record[A160791(n+1)+A002264(n)])`
-/

namespace A024172.P6381127093919878228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (n + 1) + A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024172.P6381127093919878228

namespace A024172

/-- `A002264(record[A160791(n+1)+A002264(n)])` -/
def P6381127093919878228.Spec : Prop :=
  ∀ n, P6381127093919878228.a n = A024172 (n + 2)

end A024172

/-! ## A024172.P9184137695158974660

`A002264(A027379(n)-(A002264(4*n)+1))`
-/

namespace A024172.P9184137695158974660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A027379 n - (A002264 (4 * n) + 1)).toNat

end

end A024172.P9184137695158974660

namespace A024172

/-- `A002264(A027379(n)-(A002264(4*n)+1))` -/
def P9184137695158974660.Spec : Prop :=
  ∀ n, P9184137695158974660.a n = A024172 (n + 2)

end A024172

/-! ## A024172.P17441284121371402712

`A002265(A002264(A144429(A080341(n+1))))`
-/

namespace A024172.P17441284121371402712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002264 (A144429 (A080341 (n + 1)).toNat).toNat).toNat

end

end A024172.P17441284121371402712

namespace A024172

/-- `A002265(A002264(A144429(A080341(n+1))))` -/
def P17441284121371402712.Spec : Prop :=
  ∀ n, P17441284121371402712.a n = A024172 (n + 2)

end A024172

/-!
# A024173: Integer part of ((4th elementary symmetric function of 1,2,..,n)/(2nd elementary symmetric function of 1,2,...,n)).

The programs for A024173, there is no canonical definition to state claims against.
-/

/-! ## A024173.P1889338397298432834

`A002265(A002265(A002265(A025767(A033570(n)))))`
-/

namespace A024173.P1889338397298432834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (A002265 (A025767 (A033570 n).toNat).toNat).toNat).toNat

end

end A024173.P1889338397298432834

/-!
# A024174: a(n) is floor((4th elementary symmetric function of 1,2,..,n)/(3rd elementary symmetric function of 1,2,...,n)).

The programs for A024174, the canonical program `A024174.P17652174362532825888` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024174 has offset 3).

The definition of A024174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024174.P17652174362532825888

`floor(n*(15*(n+3)^3+15*(n+3)²-10*(n+3)-8)/(120*(n+3)*(n+4)))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024174

/-- `floor(n*(15*(n+3)^3+15*(n+3)²-10*(n+3)-8)/(120*(n+3)*(n+4)))` -/
def P17652174362532825888.Spec : Prop :=
  ∀ n, P17652174362532825888.a n = A024174 (n + 3)

theorem P17652174362532825888.correct : P17652174362532825888.Spec := by
  intro n
  simp only [A024174, Nat.add_sub_cancel]

end A024174

/-! ## A024174.P16945384933737428973

`floor(C(n*(n+2), 2)/(2*n+1)²)`
-/

namespace A024174.P16945384933737428973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n * (n + 2)) 2 : ℚ) / ((2 * n + 1) ^ 2 : ℚ)⌋

end

end A024174.P16945384933737428973

namespace A024174

/-- `floor(C(n*(n+2), 2)/(2*n+1)²)` -/
def P16945384933737428973.Spec : Prop :=
  ∀ n, P16945384933737428973.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P10613002531455736018

`ogf((x^2-x^3+x^4-x^5+2x^6-2x^7+2x^8-x^9)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`
-/

namespace A024174.P10613002531455736018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1, 1, -1, 2, -2, 2, -1] [1, -3, 4, -4, 4, -4, 4, -4, 3, -1] n

end

end A024174.P10613002531455736018

namespace A024174

/-- `ogf((x^2-x^3+x^4-x^5+2x^6-2x^7+2x^8-x^9)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P10613002531455736018.Spec : Prop :=
  ∀ n, P10613002531455736018.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P3555906684580708970

`round(A048840(n)/8)`
-/

namespace A024174.P3555906684580708970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048840 n : ℚ) / 8)

end

end A024174.P3555906684580708970

namespace A024174

/-- `round(A048840(n)/8)` -/
def P3555906684580708970.Spec : Prop :=
  ∀ n, P3555906684580708970.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P15039718530946946987

`round(∑[(n+1)/4]-A057427(n))`
-/

namespace A024174.P15039718530946946987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - (A057427 n : ℚ))

end

end A024174.P15039718530946946987

namespace A024174

/-- `round(∑[(n+1)/4]-A057427(n))` -/
def P15039718530946946987.Spec : Prop :=
  ∀ n, P15039718530946946987.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P10685796112344215588

`round((A060533(n+1)+∑[n])/8)`
-/

namespace A024174.P10685796112344215588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060533 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 8)

end

end A024174.P10685796112344215588

namespace A024174

/-- `round((A060533(n+1)+∑[n])/8)` -/
def P10685796112344215588.Spec : Prop :=
  ∀ n, P10685796112344215588.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P738563722377015138

`∑[A002265(A008239(n)%A005408(n))]`
-/

namespace A024174.P738563722377015138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A008239 n) (A005408 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024174.P738563722377015138

namespace A024174

/-- `∑[A002265(A008239(n)%A005408(n))]` -/
def P738563722377015138.Spec : Prop :=
  ∀ n, P738563722377015138.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P15946680555103619489

`A289207(n+1)+A011861(A289207(n))`
-/

namespace A024174.P15946680555103619489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (n + 1) + A011861 (A289207 n).toNat

end

end A024174.P15946680555103619489

namespace A024174

/-- `A289207(n+1)+A011861(A289207(n))` -/
def P15946680555103619489.Spec : Prop :=
  ∀ n, P15946680555103619489.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P13164750050703546860

`∑[(n+1)%A004525(A004525(n+1)+n+1)]`
-/

namespace A024174.P13164750050703546860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004525 (A004525 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024174.P13164750050703546860

namespace A024174

/-- `∑[(n+1)%A004525(A004525(n+1)+n+1)]` -/
def P13164750050703546860.Spec : Prop :=
  ∀ n, P13164750050703546860.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P8520012915279723788

`A140106(A039823(n+1))`
-/

namespace A024174.P8520012915279723788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A039823 (n + 1)).toNat

end

end A024174.P8520012915279723788

namespace A024174

/-- `A140106(A039823(n+1))` -/
def P8520012915279723788.Spec : Prop :=
  ∀ n, P8520012915279723788.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P190443911603704493

`A065033(A054925(n)+n)-1`
-/

namespace A024174.P190443911603704493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A054925 n + (n : ℤ)).toNat - 1

end

end A024174.P190443911603704493

namespace A024174

/-- `A065033(A054925(n)+n)-1` -/
def P190443911603704493.Spec : Prop :=
  ∀ n, P190443911603704493.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P14386253160754038984

`∑[∑[A292944(∑[n])%2]]`
-/

namespace A024174.P14386253160754038984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292944 (∑ j ∈ Finset.range (n + 1), f3 j)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024174.P14386253160754038984

namespace A024174

/-- `∑[∑[A292944(∑[n])%2]]` -/
def P14386253160754038984.Spec : Prop :=
  ∀ n, P14386253160754038984.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P4863552818812856398

`A002265(abs(3-∑[n+1])+1)`
-/

namespace A024174.P4863552818812856398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (|3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A024174.P4863552818812856398

namespace A024174

/-- `A002265(abs(3-∑[n+1])+1)` -/
def P4863552818812856398.Spec : Prop :=
  ∀ n, P4863552818812856398.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P4850661186541667007

`A004526(A140106(∑[n+1]))`
-/

namespace A024174.P4850661186541667007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A140106 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024174.P4850661186541667007

namespace A024174

/-- `A004526(A140106(∑[n+1]))` -/
def P4850661186541667007.Spec : Prop :=
  ∀ n, P4850661186541667007.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P9372605143018907135

`A140106(A008619(∑[n+1]))`
-/

namespace A024174.P9372605143018907135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024174.P9372605143018907135

namespace A024174

/-- `A140106(A008619(∑[n+1]))` -/
def P9372605143018907135.Spec : Prop :=
  ∀ n, P9372605143018907135.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P2822659429132011228

`A059169(A185048((n+1)*(n+2)))`
-/

namespace A024174.P2822659429132011228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A185048 ((n + 1) * (n + 2))).toNat

end

end A024174.P2822659429132011228

namespace A024174

/-- `A059169(A185048((n+1)*(n+2)))` -/
def P2822659429132011228.Spec : Prop :=
  ∀ n, P2822659429132011228.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P2198454590786965209

`A002264(A057353(∑[n+1]-2%(n+1)))`
-/

namespace A024174.P2198454590786965209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057353 (∑ j ∈ Finset.range (n + 1), f1 j - 2 % (n + 1))).toNat

end

end A024174.P2198454590786965209

namespace A024174

/-- `A002264(A057353(∑[n+1]-2%(n+1)))` -/
def P2198454590786965209.Spec : Prop :=
  ∀ n, P2198454590786965209.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P12526097836917921839

`A000096(n)%A037915(A000096(n))`
-/

namespace A024174.P12526097836917921839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A037915 (A000096 n).toNat)

end

end A024174.P12526097836917921839

namespace A024174

/-- `A000096(n)%A037915(A000096(n))` -/
def P12526097836917921839.Spec : Prop :=
  ∀ n, P12526097836917921839.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P17408567863077660104

`A004526(A004526(A309945(∑[n+2])))`
-/

namespace A024174.P17408567863077660104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A309945 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A024174.P17408567863077660104

namespace A024174

/-- `A004526(A004526(A309945(∑[n+2])))` -/
def P17408567863077660104.Spec : Prop :=
  ∀ n, P17408567863077660104.a n = A024174 (n + 3)

end A024174

/-! ## A024174.P13680208406590070703

`A002265(A183905(n+1)+n)-n`
-/

namespace A024174.P13680208406590070703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A183905 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A024174.P13680208406590070703

namespace A024174

/-- `A002265(A183905(n+1)+n)-n` -/
def P13680208406590070703.Spec : Prop :=
  ∀ n, P13680208406590070703.a n = A024174 (n + 3)

end A024174

/-!
# A024175: Expansion of g.f. (1 - 5*x + 6*x^2 - x^3)/((1 - 2*x)*(1 - 4*x + 2*x^2)).

The programs for A024175, the canonical program `A024175.P2877136297432760661` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024175 has offset 0).

The definition of A024175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+6x^2-x^3)/(1-6x+10x^2-4x^3))` (program `A024175.P2877136297432760661`, by `A024175.P2877136297432760661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024175.P2877136297432760661

`ogf((1-5x+6x^2-x^3)/(1-6x+10x^2-4x^3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024175

/-- `ogf((1-5x+6x^2-x^3)/(1-6x+10x^2-4x^3))` -/
def P2877136297432760661.Spec : Prop :=
  ∀ n, P2877136297432760661.a n = A024175 n

theorem P2877136297432760661.correct : P2877136297432760661.Spec := by
  intro n
  simp only [A024175]

end A024175

/-! ## A024175.P11619014674055615546

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A024175.P11619014674055615546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  6 * a (n - 1) - 10 * a (n - 2) + 4 * a (n - 3)

end

end A024175.P11619014674055615546

namespace A024175

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P11619014674055615546.Spec : Prop :=
  ∀ n, P11619014674055615546.a n = A024175 n

end A024175

/-! ## A024175.P15953255191658554493

`A094803(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A024175.P15953255191658554493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A094803 (n - 1) + a (n - 1)

end

end A024175.P15953255191658554493

namespace A024175

/-- `A094803(n-1)+a(n-1)` -/
def P15953255191658554493.Spec : Prop :=
  ∀ n, P15953255191658554493.a n = A024175 n

end A024175

/-! ## A024175.P6303339731231156997

`A080934(eq[4, A268830(n)])`
-/

namespace A024175.P6303339731231156997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P6303339731231156997

namespace A024175

/-- `A080934(eq[4, A268830(n)])` -/
def P6303339731231156997.Spec : Prop :=
  ∀ n, P6303339731231156997.a n = A024175 n

end A024175

/-! ## A024175.P13636822962501645314

`A080934(eq[13, A099375(n)])`
-/

namespace A024175.P13636822962501645314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P13636822962501645314

namespace A024175

/-- `A080934(eq[13, A099375(n)])` -/
def P13636822962501645314.Spec : Prop :=
  ∀ n, P13636822962501645314.a n = A024175 n

end A024175

/-! ## A024175.P14781201706009207924

`A080934(2*n+A000217(n+5)+6)`
-/

namespace A024175.P14781201706009207924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A024175.P14781201706009207924

namespace A024175

/-- `A080934(2*n+A000217(n+5)+6)` -/
def P14781201706009207924.Spec : Prop :=
  ∀ n, P14781201706009207924.a n = A024175 n

end A024175

/-! ## A024175.P9001036056847792473

`A080934(eq[6, A025581(n)])`
-/

namespace A024175.P9001036056847792473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P9001036056847792473

namespace A024175

/-- `A080934(eq[6, A025581(n)])` -/
def P9001036056847792473.Spec : Prop :=
  ∀ n, P9001036056847792473.a n = A024175 n

end A024175

/-! ## A024175.P68726086005722173

`A080934(eq[8, A129713(n)])`
-/

namespace A024175.P68726086005722173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P68726086005722173

namespace A024175

/-- `A080934(eq[8, A129713(n)])` -/
def P68726086005722173.Spec : Prop :=
  ∀ n, P68726086005722173.a n = A024175 n

end A024175

/-! ## A024175.P17563682044024431772

`A080934(eq[7, A004736(n+1)])`
-/

namespace A024175.P17563682044024431772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P17563682044024431772

namespace A024175

/-- `A080934(eq[7, A004736(n+1)])` -/
def P17563682044024431772.Spec : Prop :=
  ∀ n, P17563682044024431772.a n = A024175 n

end A024175

/-! ## A024175.P1700856608676413965

`A080934(eq[11, A027293(n+1)])`
-/

namespace A024175.P1700856608676413965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P1700856608676413965

namespace A024175

/-- `A080934(eq[11, A027293(n+1)])` -/
def P1700856608676413965.Spec : Prop :=
  ∀ n, P1700856608676413965.a n = A024175 n

end A024175

/-! ## A024175.P5149723588609494064

`A120493(∑[n])`
-/

namespace A024175.P5149723588609494064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120493 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024175.P5149723588609494064

namespace A024175

/-- `A120493(∑[n])` -/
def P5149723588609494064.Spec : Prop :=
  ∀ n, P5149723588609494064.a n = A024175 n

end A024175

/-! ## A024175.P3629131840442729604

`A080934(eq[7, A195663(n)])`
-/

namespace A024175.P3629131840442729604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024175.P3629131840442729604

namespace A024175

/-- `A080934(eq[7, A195663(n)])` -/
def P3629131840442729604.Spec : Prop :=
  ∀ n, P3629131840442729604.a n = A024175 n

end A024175

/-!
# A024176: a(n) = (n+2)!(1/3 - 1/4 + ... + c/(n+2)), where c=(-1)^(n+1).

The programs for A024176, there is no canonical definition to state claims against.
-/

/-! ## A024176.P14200935874663934696

`2*A024188(n+1)`
-/

namespace A024176.P14200935874663934696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024188 (n + 1)

end

end A024176.P14200935874663934696

/-! ## A024176.P16801048510432181559

`(n+3)*a(n-1)-∏[-(n+2)]` with `a(0)=2`
-/

namespace A024176.P16801048510432181559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024176.P16801048510432181559

/-! ## A024176.P11782526121954168

`a(n-1)+(n+2)²*a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A024176.P11782526121954168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (n + 2) ^ 2 * a (n - 2)

end

end A024176.P11782526121954168

/-! ## A024176.P12596763273474490846

`a(n-1)+(n+2)*(n+2)*a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A024176.P12596763273474490846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (n + 2) * ((n + 2) * a (n - 2))

end

end A024176.P12596763273474490846

/-! ## A024176.P7797441026648400196

`A024188(A000027(n+1))+A024188(n+1)`
-/

namespace A024176.P7797441026648400196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024188 (A000027 (n + 1)).toNat + A024188 (n + 1)

end

end A024176.P7797441026648400196

/-! ## A024176.P11480728992316190881

`A024188(n+1)+A165560(A196222(n))+A024188(n+1)`
-/

namespace A024176.P11480728992316190881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024188 (n + 1) + (A165560 (A196222 n).toNat + A024188 (n + 1))

end

end A024176.P11480728992316190881

/-! ## A024176.P16748785105644978078

`A024188(n+1)+A024188(n+1)%A024189(n+1)`
-/

namespace A024176.P16748785105644978078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024188 (n + 1) + Int.tmod (A024188 (n + 1)) (A024189 (n + 1))

end

end A024176.P16748785105644978078

/-!
# A024177: a(n) = floor ( (2nd elementary symmetric function of 2,3,...,n+2)/(2+3+...+n+2) ).

The programs for A024177, the canonical program `A024177.P1799746633300952048` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024177 has offset 1).

The definition of A024177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024177.P1799746633300952048

`floor(1/12*(n+1)*(3*(n+1)²+23*(n+1)+46)/(n+5))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024177

/-- `floor(1/12*(n+1)*(3*(n+1)²+23*(n+1)+46)/(n+5))` -/
def P1799746633300952048.Spec : Prop :=
  ∀ n, P1799746633300952048.a n = A024177 (n + 1)

theorem P1799746633300952048.correct : P1799746633300952048.Spec := by
  intro n
  simp only [A024177, Nat.add_sub_cancel]

end A024177

/-! ## A024177.P18169363340454711591

`round((A042965(n+1)+∑[n+1])/2)`
-/

namespace A024177.P18169363340454711591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A042965 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2)

end

end A024177.P18169363340454711591

namespace A024177

/-- `round((A042965(n+1)+∑[n+1])/2)` -/
def P18169363340454711591.Spec : Prop :=
  ∀ n, P18169363340454711591.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P10724423907732321339

`A004526(A010761(n+1))+∑[A008619(n)]`
-/

namespace A024177.P10724423907732321339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A010761 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024177.P10724423907732321339

namespace A024177

/-- `A004526(A010761(n+1))+∑[A008619(n)]` -/
def P10724423907732321339.Spec : Prop :=
  ∀ n, P10724423907732321339.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P9349830654437540542

`A087811(n+1)+A004526(A010761(n+1))`
-/

namespace A024177.P9349830654437540542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A004526 (A010761 (n + 1)).toNat

end

end A024177.P9349830654437540542

namespace A024177

/-- `A087811(n+1)+A004526(A010761(n+1))` -/
def P9349830654437540542.Spec : Prop :=
  ∀ n, P9349830654437540542.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P16467096929664712397

`∑[n+1]-A398851(n+1)`
-/

namespace A024177.P16467096929664712397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A398851 (n + 1)

end

end A024177.P16467096929664712397

namespace A024177

/-- `∑[n+1]-A398851(n+1)` -/
def P16467096929664712397.Spec : Prop :=
  ∀ n, P16467096929664712397.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P3206502491408643584

`A004526(A010761(n+1))+A002620(n+2)`
-/

namespace A024177.P3206502491408643584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A010761 (n + 1)).toNat + A002620 (n + 2)

end

end A024177.P3206502491408643584

namespace A024177

/-- `A004526(A010761(n+1))+A002620(n+2)` -/
def P3206502491408643584.Spec : Prop :=
  ∀ n, P3206502491408643584.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P12906889768159719951

`A000217(n+1)+A000217(n+1)-A398845(n+1)`
-/

namespace A024177.P12906889768159719951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) - A398845 (n + 1)

end

end A024177.P12906889768159719951

namespace A024177

/-- `A000217(n+1)+A000217(n+1)-A398845(n+1)` -/
def P12906889768159719951.Spec : Prop :=
  ∀ n, P12906889768159719951.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P17458932371922412187

`A212986(n)+A008615(A312101(n))`
-/

namespace A024177.P17458932371922412187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 n + A008615 (A312101 n).toNat

end

end A024177.P17458932371922412187

namespace A024177

/-- `A212986(n)+A008615(A312101(n))` -/
def P17458932371922412187.Spec : Prop :=
  ∀ n, P17458932371922412187.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P17584233887323211398

`A087483(n)-A004526(A008748(n+1))+n`
-/

namespace A024177.P17584233887323211398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 n - A004526 (A008748 (n + 1)).toNat + (n : ℤ)

end

end A024177.P17584233887323211398

namespace A024177

/-- `A087483(n)-A004526(A008748(n+1))+n` -/
def P17584233887323211398.Spec : Prop :=
  ∀ n, P17584233887323211398.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P18413569436329007711

`A007980(n)+A002265(A007980(n))-A062781(n+1)`
-/

namespace A024177.P18413569436329007711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n + (A002265 (A007980 n).toNat - A062781 (n + 1))

end

end A024177.P18413569436329007711

namespace A024177

/-- `A007980(n)+A002265(A007980(n))-A062781(n+1)` -/
def P18413569436329007711.Spec : Prop :=
  ∀ n, P18413569436329007711.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P10756329328032223785

`A008619(∑[∑[n%3]])+n`
-/

namespace A024177.P10756329328032223785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A024177.P10756329328032223785

namespace A024177

/-- `A008619(∑[∑[n%3]])+n` -/
def P10756329328032223785.Spec : Prop :=
  ∀ n, P10756329328032223785.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P3211890337044892786

`A008619(∑[A130481(n)])+n`
-/

namespace A024177.P3211890337044892786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A024177.P3211890337044892786

namespace A024177

/-- `A008619(∑[A130481(n)])+n` -/
def P3211890337044892786.Spec : Prop :=
  ∀ n, P3211890337044892786.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P15347029726810436831

`A004526(∑[A130481(n)])+n+1`
-/

namespace A024177.P15347029726810436831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A024177.P15347029726810436831

namespace A024177

/-- `A004526(∑[A130481(n)])+n+1` -/
def P15347029726810436831.Spec : Prop :=
  ∀ n, P15347029726810436831.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P7488340815260694776

`A004526(A171452(n+1))+n+1`
-/

namespace A024177.P7488340815260694776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171452 (n + 1)).toNat + (n + 1 : ℤ)

end

end A024177.P7488340815260694776

namespace A024177

/-- `A004526(A171452(n+1))+n+1` -/
def P7488340815260694776.Spec : Prop :=
  ∀ n, P7488340815260694776.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P12674743987460716060

`A004526(A087483(n)+A008748(n))+n`
-/

namespace A024177.P12674743987460716060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087483 n + A008748 n).toNat + (n : ℤ)

end

end A024177.P12674743987460716060

namespace A024177

/-- `A004526(A087483(n)+A008748(n))+n` -/
def P12674743987460716060.Spec : Prop :=
  ∀ n, P12674743987460716060.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P5048678373115324198

`A004526(∑[A130481(n)+2])`
-/

namespace A024177.P5048678373115324198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024177.P5048678373115324198

namespace A024177

/-- `A004526(∑[A130481(n)+2])` -/
def P5048678373115324198.Spec : Prop :=
  ∀ n, P5048678373115324198.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P11294860044166271467

`A110654(A004396(2*n)+∑[n+1])`
-/

namespace A024177.P11294860044166271467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004396 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A024177.P11294860044166271467

namespace A024177

/-- `A110654(A004396(2*n)+∑[n+1])` -/
def P11294860044166271467.Spec : Prop :=
  ∀ n, P11294860044166271467.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P7427931729574005417

`A065033(A131737(2*n+1)+∑[n+1])`
-/

namespace A024177.P7427931729574005417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A131737 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A024177.P7427931729574005417

namespace A024177

/-- `A065033(A131737(2*n+1)+∑[n+1])` -/
def P7427931729574005417.Spec : Prop :=
  ∀ n, P7427931729574005417.a n = A024177 (n + 1)

end A024177

/-! ## A024177.P18056940324002162524

`A002264(A330707(n+2)+n)`
-/

namespace A024177.P18056940324002162524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330707 (n + 2) + (n : ℤ)).toNat

end

end A024177.P18056940324002162524

namespace A024177

/-- `A002264(A330707(n+2)+n)` -/
def P18056940324002162524.Spec : Prop :=
  ∀ n, P18056940324002162524.a n = A024177 (n + 1)

end A024177

/-!
# A024178: a(n) = floor((3rd elementary symmetric function of 2,3,...,n+3)/(2+3+...+n+3)).

The programs for A024178, the canonical program `A024178.P13902277561253341787` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024178 has offset 1).

The definition of A024178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024178.P13902277561253341787

`ogf((2+3x-3x^2+x^3)/(1-4x+6x^2-5x^3+5x^4-6x^5+4x^6-x^7))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024178

/-- `ogf((2+3x-3x^2+x^3)/(1-4x+6x^2-5x^3+5x^4-6x^5+4x^6-x^7))` -/
def P13902277561253341787.Spec : Prop :=
  ∀ n, P13902277561253341787.a n = A024178 (n + 1)

theorem P13902277561253341787.correct : P13902277561253341787.Spec := by
  intro n
  simp only [A024178, Nat.add_sub_cancel]

end A024178

/-! ## A024178.P7605560289048175739

`∑[∑[∑[a(n-3)+3]]]` with `a(0)=2, a(1)=5, a(2)=2`
-/

namespace A024178.P7605560289048175739
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 2] fun n f3 =>
  f3 (n - 3) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024178.P7605560289048175739

namespace A024178

/-- `∑[∑[∑[a(n-3)+3]]]` -/
def P7605560289048175739.Spec : Prop :=
  ∀ n, (P7605560289048175739.a n : ℤ) = A024178 (n + 1)

end A024178

/-! ## A024178.P5376785936625541245

`∑[∑[∑[2*(n+1)%3+n]]]`
-/

namespace A024178.P5376785936625541245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) % 3) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024178.P5376785936625541245

namespace A024178

/-- `∑[∑[∑[2*(n+1)%3+n]]]` -/
def P5376785936625541245.Spec : Prop :=
  ∀ n, (P5376785936625541245.a n : ℤ) = A024178 (n + 1)

end A024178

/-! ## A024178.P17330474814731492285

`floor((n+1)*(n+2)*((n+1)²+9*(n+1)+22)/24)`
-/

namespace A024178.P17330474814731492285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * (n + 2) * ((n + 1) ^ 2 + 9 * (n + 1) + 22) : ℚ) / 24⌋

end

end A024178.P17330474814731492285

namespace A024178

/-- `floor((n+1)*(n+2)*((n+1)²+9*(n+1)+22)/24)` -/
def P17330474814731492285.Spec : Prop :=
  ∀ n, P17330474814731492285.a n = A024178 (n + 1)

end A024178

/-! ## A024178.P4877932268833488596

`A063258(n)-A186498(n+1)`
-/

namespace A024178.P4877932268833488596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - A186498 (n + 1)

end

end A024178.P4877932268833488596

namespace A024178

/-- `A063258(n)-A186498(n+1)` -/
def P4877932268833488596.Spec : Prop :=
  ∀ n, P4877932268833488596.a n = A024178 (n + 1)

end A024178

/-! ## A024178.P17256602947491776713

`A166805(n+1)-A186357(n+1)`
-/

namespace A024178.P17256602947491776713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) - A186357 (n + 1)

end

end A024178.P17256602947491776713

namespace A024178

/-- `A166805(n+1)-A186357(n+1)` -/
def P17256602947491776713.Spec : Prop :=
  ∀ n, P17256602947491776713.a n = A024178 (n + 1)

end A024178

/-! ## A024178.P10509722222944639181

`∑[A008611(2*n+1)+∑[∑[n+2]]]`
-/

namespace A024178.P10509722222944639181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024178.P10509722222944639181

namespace A024178

/-- `∑[A008611(2*n+1)+∑[∑[n+2]]]` -/
def P10509722222944639181.Spec : Prop :=
  ∀ n, P10509722222944639181.a n = A024178 (n + 1)

end A024178

/-! ## A024178.P13269281603335160136

`A008806(2*n+1)+A005582(n+1)`
-/

namespace A024178.P13269281603335160136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (2 * n + 1) + A005582 (n + 1)

end

end A024178.P13269281603335160136

namespace A024178

/-- `A008806(2*n+1)+A005582(n+1)` -/
def P13269281603335160136.Spec : Prop :=
  ∀ n, P13269281603335160136.a n = A024178 (n + 1)

end A024178

/-!
# A024180: a(n) = floor((3rd elementary symmetric function of 2,3,...,n+3) / (2nd elementary symmetric function of 2,3,...,n+3) ).

The programs for A024180, the canonical program `A024180.P3058088487350193850` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024180 has offset 1).

The definition of A024180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024180.P3058088487350193850

`floor(1/2*(n+1)*(5+n+1)*((n+1)²+9*(n+1)+22)/(3*(n+1)²+29*(n+1)+72))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024180

/-- `floor(1/2*(n+1)*(5+n+1)*((n+1)²+9*(n+1)+22)/(3*(n+1)²+29*(n+1)+72))` -/
def P3058088487350193850.Spec : Prop :=
  ∀ n, P3058088487350193850.a n = A024180 (n + 1)

theorem P3058088487350193850.correct : P3058088487350193850.Spec := by
  intro n
  simp only [A024180, Nat.add_sub_cancel]

end A024180

/-! ## A024180.P7967866516367216307

`n-floor(∑[(a(n-1)-n)/4])` with `a(0)=0`
-/

namespace A024180.P7967866516367216307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) - (n : ℚ)) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A024180.P7967866516367216307

namespace A024180

/-- `n-floor(∑[(a(n-1)-n)/4])` -/
def P7967866516367216307.Spec : Prop :=
  ∀ n, P7967866516367216307.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P2974633001170474841

`ogf((2x-x^2+x^3+x^5+x^8-2x^10+x^11)/(1-2x+x^2-x^9+2x^10-x^11))`
-/

namespace A024180.P2974633001170474841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 1, 0, 1, 0, 0, 1, 0, -2, 1] [1, -2, 1, 0, 0, 0, 0, 0, 0, -1, 2, -1] n

end

end A024180.P2974633001170474841

namespace A024180

/-- `ogf((2x-x^2+x^3+x^5+x^8-2x^10+x^11)/(1-2x+x^2-x^9+2x^10-x^11))` -/
def P2974633001170474841.Spec : Prop :=
  ∀ n, P2974633001170474841.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P10198737626409220015

`A103221(A298786(n))+A001840(n)`
-/

namespace A024180.P10198737626409220015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A298786 n).toNat + A001840 n

end

end A024180.P10198737626409220015

namespace A024180

/-- `A103221(A298786(n))+A001840(n)` -/
def P10198737626409220015.Spec : Prop :=
  ∀ n, P10198737626409220015.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P2874460137926038788

`A002264(A134869(n+1)+A032793(n+1))`
-/

namespace A024180.P2874460137926038788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A134869 (n + 1) + A032793 (n + 1)).toNat

end

end A024180.P2874460137926038788

namespace A024180

/-- `A002264(A134869(n+1)+A032793(n+1))` -/
def P2874460137926038788.Spec : Prop :=
  ∀ n, P2874460137926038788.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P15805891377993659496

`A002264(A133263(n)+A004396(4*n+1))`
-/

namespace A024180.P15805891377993659496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A133263 n + A004396 (4 * n + 1)).toNat

end

end A024180.P15805891377993659496

namespace A024180

/-- `A002264(A133263(n)+A004396(4*n+1))` -/
def P15805891377993659496.Spec : Prop :=
  ∀ n, P15805891377993659496.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P10783949756679184766

`A002264(A134869(n+1)+A002264(5*n)+1)`
-/

namespace A024180.P10783949756679184766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A134869 (n + 1) + (A002264 (5 * n) + 1)).toNat

end

end A024180.P10783949756679184766

namespace A024180

/-- `A002264(A134869(n+1)+A002264(5*n)+1)` -/
def P10783949756679184766.Spec : Prop :=
  ∀ n, P10783949756679184766.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P5157774645822651702

`A002264(A133263(n)+A002264(A017101(n)))`
-/

namespace A024180.P5157774645822651702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A133263 n + A002264 (A017101 n).toNat).toNat

end

end A024180.P5157774645822651702

namespace A024180

/-- `A002264(A133263(n)+A002264(A017101(n)))` -/
def P5157774645822651702.Spec : Prop :=
  ∀ n, P5157774645822651702.a n = A024180 (n + 1)

end A024180

/-! ## A024180.P11286472054206772687

`A178334(n)+A002264(A002264(A140675(n)))`
-/

namespace A024180.P11286472054206772687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A002264 (A002264 (A140675 n).toNat).toNat

end

end A024180.P11286472054206772687

namespace A024180

/-- `A178334(n)+A002264(A002264(A140675(n)))` -/
def P11286472054206772687.Spec : Prop :=
  ∀ n, P11286472054206772687.a n = A024180 (n + 1)

end A024180

/-!
# A024181: Integer part of ((4th elementary symmetric function of 2,3,...,n+4)/(2nd elementary symmetric function of 2,3,...,n+4)).

The programs for A024181, there is no canonical definition to state claims against.
-/

/-! ## A024181.P6001535752068362089

`∑[A323048(∑[A058183(2*(n+1))])]`
-/

namespace A024181.P6001535752068362089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024181.P6001535752068362089

/-! ## A024181.P11362903493649730620

`∑[A341534(a(n-1)+4)]` with `a(0)=1`
-/

namespace A024181.P11362903493649730620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A341534 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024181.P11362903493649730620

/-! ## A024181.P6470985213505256878

`A005041(A008492(n))+n`
-/

namespace A024181.P6470985213505256878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A008492 n).toNat + (n : ℤ)

end

end A024181.P6470985213505256878

/-!
# A024182: Integer part of ((4th elementary symmetric function of 2,3,...,n+4)/(3rd elementary symmetric function of 2,3,...,n+4)).

The programs for A024182, the canonical program `A024182.P11867921776913825500` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024182 has offset 1).

The definition of A024182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024182.P11867921776913825500

`floor((n+1)*(n+6)/8)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024182

/-- `floor((n+1)*(n+6)/8)` -/
def P11867921776913825500.Spec : Prop :=
  ∀ n, P11867921776913825500.a n = A024182 (n + 1)

theorem P11867921776913825500.correct : P11867921776913825500.Spec := by
  intro n
  simp only [A024182, Nat.add_sub_cancel]

end A024182

/-! ## A024182.P16957433340805445359

`ceil(C(n, 2)/4+n)`
-/

namespace A024182.P16957433340805445359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 4 + (n : ℚ)⌉

end

end A024182.P16957433340805445359

namespace A024182

/-- `ceil(C(n, 2)/4+n)` -/
def P16957433340805445359.Spec : Prop :=
  ∀ n, P16957433340805445359.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P14330121384576732538

`and(-4, ∑[n+3])/4`
-/

namespace A024182.P14330121384576732538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 4

end

end A024182.P14330121384576732538

namespace A024182

/-- `and(-4, ∑[n+3])/4` -/
def P14330121384576732538.Spec : Prop :=
  ∀ n, P14330121384576732538.a n = (A024182 (n + 1) : ℚ)

end A024182

/-! ## A024182.P18044790175879406659

`(or(3, ∑[n+3])-3)/4`
-/

namespace A024182.P18044790175879406659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3 : ℚ) / 4

end

end A024182.P18044790175879406659

namespace A024182

/-- `(or(3, ∑[n+3])-3)/4` -/
def P18044790175879406659.Spec : Prop :=
  ∀ n, P18044790175879406659.a n = (A024182 (n + 1) : ℚ)

end A024182

/-! ## A024182.P17244930706334655748

`floor((C(n, 2)+3)/4)+n`
-/

namespace A024182.P17244930706334655748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 + 3 : ℚ) / 4⌋ + (n : ℤ)

end

end A024182.P17244930706334655748

namespace A024182

/-- `floor((C(n, 2)+3)/4)+n` -/
def P17244930706334655748.Spec : Prop :=
  ∀ n, P17244930706334655748.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P17373025542670061127

`round((C(n+2, 2)+2*n)/4)`
-/

namespace A024182.P17373025542670061127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 + 2 * n : ℚ) / 4)

end

end A024182.P17373025542670061127

namespace A024182

/-- `round((C(n+2, 2)+2*n)/4)` -/
def P17373025542670061127.Spec : Prop :=
  ∀ n, P17373025542670061127.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P7915671416251803274

`ogf((x-x^3+2x^4-2x^5+2x^6-x^7)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`
-/

namespace A024182.P7915671416251803274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1, 2, -2, 2, -1] [1, -3, 4, -4, 4, -4, 4, -4, 3, -1] n

end

end A024182.P7915671416251803274

namespace A024182

/-- `ogf((x-x^3+2x^4-2x^5+2x^6-x^7)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P7915671416251803274.Spec : Prop :=
  ∀ n, P7915671416251803274.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P8604870847902131137

`A389318(n)+n`
-/

namespace A024182.P8604870847902131137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389318 n + (n : ℤ)

end

end A024182.P8604870847902131137

namespace A024182

/-- `A389318(n)+n` -/
def P8604870847902131137.Spec : Prop :=
  ∀ n, P8604870847902131137.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P7305219356301080748

`ceil(A055999(n)/4)`
-/

namespace A024182.P7305219356301080748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055999 n : ℚ) / 4⌉

end

end A024182.P7305219356301080748

namespace A024182

/-- `ceil(A055999(n)/4)` -/
def P7305219356301080748.Spec : Prop :=
  ∀ n, P7305219356301080748.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P16332615761342813414

`∑[n]-A389319(n)`
-/

namespace A024182.P16332615761342813414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A389319 n

end

end A024182.P16332615761342813414

namespace A024182

/-- `∑[n]-A389319(n)` -/
def P16332615761342813414.Spec : Prop :=
  ∀ n, P16332615761342813414.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P13616887487307024923

`ceil((A186353(n+1)-1)/2)`
-/

namespace A024182.P13616887487307024923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186353 (n + 1) - 1 : ℚ) / 2⌉

end

end A024182.P13616887487307024923

namespace A024182

/-- `ceil((A186353(n+1)-1)/2)` -/
def P13616887487307024923.Spec : Prop :=
  ∀ n, P13616887487307024923.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P2850391578946446162

`round(round(round(A028563(n)/2)/2)/2)`
-/

namespace A024182.P2850391578946446162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A028563 n : ℚ) / 2) : ℚ) / 2) : ℚ) / 2)

end

end A024182.P2850391578946446162

namespace A024182

/-- `round(round(round(A028563(n)/2)/2)/2)` -/
def P2850391578946446162.Spec : Prop :=
  ∀ n, P2850391578946446162.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P9360062663839420466

`round((ceil((A000217(n)+n)/2)+n)/2)`
-/

namespace A024182.P9360062663839420466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈(A000217 n + (n : ℤ) : ℚ) / 2⌉ + (n : ℤ) : ℚ) / 2)

end

end A024182.P9360062663839420466

namespace A024182

/-- `round((ceil((A000217(n)+n)/2)+n)/2)` -/
def P9360062663839420466.Spec : Prop :=
  ∀ n, P9360062663839420466.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P824183669644647707

`A001971(n)-A004526(A059169(n+1))+n`
-/

namespace A024182.P824183669644647707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n - A004526 (A059169 (n + 1)).toNat + (n : ℤ)

end

end A024182.P824183669644647707

namespace A024182

/-- `A001971(n)-A004526(A059169(n+1))+n` -/
def P824183669644647707.Spec : Prop :=
  ∀ n, P824183669644647707.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P432082254685283544

`record[ceil(∑[(n-3)/4])]`
-/

namespace A024182.P432082254685283544
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024182.P432082254685283544

namespace A024182

/-- `record[ceil(∑[(n-3)/4])]` -/
def P432082254685283544.Spec : Prop :=
  ∀ n, P432082254685283544.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P9618265363429392522

`∑[n-A004524(A004524(n)+n)]`
-/

namespace A024182.P9618265363429392522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (A004524 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024182.P9618265363429392522

namespace A024182

/-- `∑[n-A004524(A004524(n)+n)]` -/
def P9618265363429392522.Spec : Prop :=
  ∀ n, P9618265363429392522.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P12462436804574350272

`∑[n+1-A004525(A004525(n+1)+n)]`
-/

namespace A024182.P12462436804574350272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004525 (A004525 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024182.P12462436804574350272

namespace A024182

/-- `∑[n+1-A004525(A004525(n+1)+n)]` -/
def P12462436804574350272.Spec : Prop :=
  ∀ n, P12462436804574350272.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P13437554663461415361

`∑[n-A004524(A004524(3*n))]`
-/

namespace A024182.P13437554663461415361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004524 (A004524 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024182.P13437554663461415361

namespace A024182

/-- `∑[n-A004524(A004524(3*n))]` -/
def P13437554663461415361.Spec : Prop :=
  ∀ n, P13437554663461415361.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P7275408661274178047

`ceil(n/A001792(n)*A058396(n))`
-/

namespace A024182.P7275408661274178047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A001792 n : ℚ) * (A058396 n : ℚ)⌉

end

end A024182.P7275408661274178047

namespace A024182

/-- `ceil(n/A001792(n)*A058396(n))` -/
def P7275408661274178047.Spec : Prop :=
  ∀ n, P7275408661274178047.a n = A024182 (n + 1)

end A024182

/-! ## A024182.P2650178376984400866

`A004526(A054925(n)+1)+n`
-/

namespace A024182.P2650178376984400866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054925 n + 1).toNat + (n : ℤ)

end

end A024182.P2650178376984400866

namespace A024182

/-- `A004526(A054925(n)+1)+n` -/
def P2650178376984400866.Spec : Prop :=
  ∀ n, P2650178376984400866.a n = A024182 (n + 1)

end A024182

/-!
# A024183: Second elementary symmetric function of 3,4,...,n+3.

The programs for A024183, the canonical program `A024183.P12540659051691228871` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024183 has offset 1).

The definition of A024183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024183.P944011772988664934

`ogf((12-13x+4x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A024183.P944011772988664934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -13, 4] [1, -5, 10, -10, 5, -1] n

end

end A024183.P944011772988664934

namespace A024183

/-- `ogf((12-13x+4x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P944011772988664934.Spec : Prop :=
  ∀ n, P944011772988664934.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P10614149830363196257

`(n+1)*(n+2)*(3*(n+1)²+35*(n+1)+106)/24`
-/

namespace A024183.P10614149830363196257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (3 * (n + 1) ^ 2 + 35 * (n + 1) + 106) : ℚ) / 24

end

end A024183.P10614149830363196257

namespace A024183

/-- `(n+1)*(n+2)*(3*(n+1)²+35*(n+1)+106)/24` -/
def P10614149830363196257.Spec : Prop :=
  ∀ n, P10614149830363196257.a n = (A024183 (n + 1) : ℚ)

theorem P10614149830363196257.correct : P10614149830363196257.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A024183, Nat.add_sub_cancel, A024183.P10614149830363196257.a, A024183.P12540659051691228871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A024183, Nat.add_sub_cancel, A024183.P10614149830363196257.a, A024183.P12540659051691228871.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A024183

/-! ## A024183.P12540659051691228871

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=12, a(1)=47, a(2)=119, a(3)=245, a(4)=445`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024183

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12540659051691228871.Spec : Prop :=
  ∀ n, P12540659051691228871.a n = A024183 (n + 1)

theorem P12540659051691228871.correct : P12540659051691228871.Spec := by
  intro n
  simp only [A024183, Nat.add_sub_cancel]

end A024183

/-! ## A024183.P13590503968937447386

`∑[∑[A341740(n+3)]]`
-/

namespace A024183.P13590503968937447386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341740 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024183.P13590503968937447386

namespace A024183

/-- `∑[∑[A341740(n+3)]]` -/
def P13590503968937447386.Spec : Prop :=
  ∀ n, P13590503968937447386.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P4281453751704718213

`A111080(n)+A004255(n+1)`
-/

namespace A024183.P4281453751704718213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111080 n + A004255 (n + 1)

end

end A024183.P4281453751704718213

namespace A024183

/-- `A111080(n)+A004255(n+1)` -/
def P4281453751704718213.Spec : Prop :=
  ∀ n, P4281453751704718213.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P7097627210526432164

`A115129(n)-A051746(n+1)`
-/

namespace A024183.P7097627210526432164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 n - A051746 (n + 1)

end

end A024183.P7097627210526432164

namespace A024183

/-- `A115129(n)-A051746(n+1)` -/
def P7097627210526432164.Spec : Prop :=
  ∀ n, P7097627210526432164.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P8265271038653928184

`A005564(n+3)+∑[A005564(n+3)+n]`
-/

namespace A024183.P8265271038653928184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005564 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005564 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024183.P8265271038653928184

namespace A024183

/-- `A005564(n+3)+∑[A005564(n+3)+n]` -/
def P8265271038653928184.Spec : Prop :=
  ∀ n, P8265271038653928184.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P8490611829282871752

`A024191(n+1)+A024191(n+1)+A005582(n+1)`
-/

namespace A024183.P8490611829282871752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + (A024191 (n + 1) + A005582 (n + 1))

end

end A024183.P8490611829282871752

namespace A024183

/-- `A024191(n+1)+A024191(n+1)+A005582(n+1)` -/
def P8490611829282871752.Spec : Prop :=
  ∀ n, P8490611829282871752.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P9010990175588912436

`∑[A140091(n+1)]+∑[A005564(n+3)]`
-/

namespace A024183.P9010990175588912436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005564 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A024183.P9010990175588912436

namespace A024183

/-- `∑[A140091(n+1)]+∑[A005564(n+3)]` -/
def P9010990175588912436.Spec : Prop :=
  ∀ n, P9010990175588912436.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P948564822642562211

`A267370(n+1)+A267370(n+1)+A241765(n)`
-/

namespace A024183.P948564822642562211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 (n + 1) + (A267370 (n + 1) + A241765 n)

end

end A024183.P948564822642562211

namespace A024183

/-- `A267370(n+1)+A267370(n+1)+A241765(n)` -/
def P948564822642562211.Spec : Prop :=
  ∀ n, P948564822642562211.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P13342217218527759322

`A001701(n+2)+A005564(n+3)+A000217(n)`
-/

namespace A024183.P13342217218527759322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001701 (n + 2) + (A005564 (n + 3) + A000217 n)

end

end A024183.P13342217218527759322

namespace A024183

/-- `A001701(n+2)+A005564(n+3)+A000217(n)` -/
def P13342217218527759322.Spec : Prop :=
  ∀ n, P13342217218527759322.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P15626739636113216343

`A001701(n+2)+A001701(n+2)-A241765(n)`
-/

namespace A024183.P15626739636113216343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001701 (n + 2) + (A001701 (n + 2) - A241765 n)

end

end A024183.P15626739636113216343

namespace A024183

/-- `A001701(n+2)+A001701(n+2)-A241765(n)` -/
def P15626739636113216343.Spec : Prop :=
  ∀ n, P15626739636113216343.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P14848265901130600400

`A329598(∑[n+3])+1`
-/

namespace A024183.P14848265901130600400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329598 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A024183.P14848265901130600400

namespace A024183

/-- `A329598(∑[n+3])+1` -/
def P14848265901130600400.Spec : Prop :=
  ∀ n, P14848265901130600400.a n = A024183 (n + 1)

end A024183

/-! ## A024183.P2649475499340983509

`A027379(A027379(n+2))-A111396(n+2)`
-/

namespace A024183.P2649475499340983509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A027379 (n + 2)).toNat - A111396 (n + 2)

end

end A024183.P2649475499340983509

namespace A024183

/-- `A027379(A027379(n+2))-A111396(n+2)` -/
def P2649475499340983509.Spec : Prop :=
  ∀ n, P2649475499340983509.a n = A024183 (n + 1)

end A024183

/-!
# A024184: Third elementary symmetric function of 3,4,...,n+4.

The programs for A024184, the canonical program `A024184.P5283553196696303076` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024184 has offset 1).

The definition of A024184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024184.P10298911915825164648

`ogf((60-78x+41x^2-8x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A024184.P10298911915825164648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [60, -78, 41, -8] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A024184.P10298911915825164648

namespace A024184

/-- `ogf((60-78x+41x^2-8x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10298911915825164648.Spec : Prop :=
  ∀ n, P10298911915825164648.a n = A024184 (n + 1)

end A024184

/-! ## A024184.P5283553196696303076

`(n+1)*(n+2)*(n+3)*(n+8)*((n+1)²+13*(n+1)+46)/48`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024184

/-- `(n+1)*(n+2)*(n+3)*(n+8)*((n+1)²+13*(n+1)+46)/48` -/
def P5283553196696303076.Spec : Prop :=
  ∀ n, P5283553196696303076.a n = (A024184 (n + 1) : ℚ)

end A024184

/-! ## A024184.P13588254416580273035

`∑[(n+5)*A024183(n+1)]`
-/

namespace A024184.P13588254416580273035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A024183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024184.P13588254416580273035

namespace A024184

/-- `∑[(n+5)*A024183(n+1)]` -/
def P13588254416580273035.Spec : Prop :=
  ∀ n, P13588254416580273035.a n = A024184 (n + 1)

end A024184

/-! ## A024184.P14004131999205447279

`A196845(A167614(n+2))`
-/

namespace A024184.P14004131999205447279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A167614 (n + 2)).toNat

end

end A024184.P14004131999205447279

namespace A024184

/-- `A196845(A167614(n+2))` -/
def P14004131999205447279.Spec : Prop :=
  ∀ n, P14004131999205447279.a n = A024184 (n + 1)

end A024184

/-! ## A024184.P5353537337973983216

`A196845(A055999(n+2)-2*n)`
-/

namespace A024184.P5353537337973983216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A055999 (n + 2) - (2 * n : ℤ)).toNat

end

end A024184.P5353537337973983216

namespace A024184

/-- `A196845(A055999(n+2)-2*n)` -/
def P5353537337973983216.Spec : Prop :=
  ∀ n, P5353537337973983216.a n = A024184 (n + 1)

end A024184

/-! ## A024184.P16489583203273028397

`A196845(A052905(n+2)-(2*n+1))`
-/

namespace A024184.P16489583203273028397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A052905 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A024184.P16489583203273028397

namespace A024184

/-- `A196845(A052905(n+2)-(2*n+1))` -/
def P16489583203273028397.Spec : Prop :=
  ∀ n, P16489583203273028397.a n = A024184 (n + 1)

end A024184

/-!
# A024185: Fourth elementary symmetric function of 3,4,...,n+5.

The programs for A024185, the canonical program `A024185.P1210130069556380647` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024185 has offset 1).

The definition of A024185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024185.P1210130069556380647

`∑[(n+6)*A024184(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024185

/-- `∑[(n+6)*A024184(n+1)]` -/
def P1210130069556380647.Spec : Prop :=
  ∀ n, P1210130069556380647.a n = A024185 (n + 1)

theorem P1210130069556380647.correct : P1210130069556380647.Spec := by
  intro n
  simp only [A024185, Nat.add_sub_cancel]

end A024185

/-! ## A024185.P4422955304775860238

`∑[(n+6)*∑[(n+5)*A024183(n+1)]]`
-/

namespace A024185.P4422955304775860238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A024183 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024185.P4422955304775860238

namespace A024185

/-- `∑[(n+6)*∑[(n+5)*A024183(n+1)]]` -/
def P4422955304775860238.Spec : Prop :=
  ∀ n, P4422955304775860238.a n = A024185 (n + 1)

end A024185

/-! ## A024185.P1522142007448942468

`∑[(n+6)*A024191(n+1)*A055998(n+3)]`
-/

namespace A024185.P1522142007448942468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * (A024191 (n + 1) * A055998 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024185.P1522142007448942468

namespace A024185

/-- `∑[(n+6)*A024191(n+1)*A055998(n+3)]` -/
def P1522142007448942468.Spec : Prop :=
  ∀ n, P1522142007448942468.a n = A024185 (n + 1)

end A024185

/-! ## A024185.P565470703252253974

`A196845(A155212(n)+12)`
-/

namespace A024185.P565470703252253974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A155212 n + 12).toNat

end

end A024185.P565470703252253974

namespace A024185

/-- `A196845(A155212(n)+12)` -/
def P565470703252253974.Spec : Prop :=
  ∀ n, P565470703252253974.a n = A024185 (n + 1)

end A024185

/-! ## A024185.P3539026244053774843

`A049458(eq[4, A025581(n)])`
-/

namespace A024185.P3539026244053774843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024185.P3539026244053774843

namespace A024185

/-- `A049458(eq[4, A025581(n)])` -/
def P3539026244053774843.Spec : Prop :=
  ∀ n, P3539026244053774843.a n = A024185 (n + 1)

end A024185

/-! ## A024185.P13828997466597356368

`A049458(A046691(n+3)-1)`
-/

namespace A024185.P13828997466597356368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049458 (A046691 (n + 3) - 1).toNat

end

end A024185.P13828997466597356368

namespace A024185

/-- `A049458(A046691(n+3)-1)` -/
def P13828997466597356368.Spec : Prop :=
  ∀ n, P13828997466597356368.a n = A024185 (n + 1)

end A024185

/-! ## A024185.P10540059432467970250

`A049458(eq[5, A004736(n+1)])`
-/

namespace A024185.P10540059432467970250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024185.P10540059432467970250

namespace A024185

/-- `A049458(eq[5, A004736(n+1)])` -/
def P10540059432467970250.Spec : Prop :=
  ∀ n, P10540059432467970250.a n = A024185 (n + 1)

end A024185

/-!
# A024186: Expansion of Molien series for 8-dimensional real Clifford group 2^{1+6}.Alt_8.2 of genus 3 and order 5160960.

The programs for A024186, there is no canonical definition to state claims against.
-/

/-! ## A024186.P7398540725989934359

`A026814(n)+A020753(A069911(n))`
-/

namespace A024186.P7398540725989934359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n + A020753 (A069911 n).toNat

end

end A024186.P7398540725989934359

/-! ## A024186.P13101942403954272924

`A204553(A109763(n+1)*A117760(n))`
-/

namespace A024186.P13101942403954272924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A109763 (n + 1) * A117760 n).toNat

end

end A024186.P13101942403954272924

/-! ## A024186.P15568655040649660826

`A024792(A187829(n+1))+A001402(A004526(n))`
-/

namespace A024186.P15568655040649660826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (A187829 (n + 1)).toNat + A001402 (A004526 n).toNat

end

end A024186.P15568655040649660826

/-! ## A024186.P11654822229190149009

`A039883(A055647(n))`
-/

namespace A024186.P11654822229190149009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039883 (A055647 n).toNat

end

end A024186.P11654822229190149009

/-!
# A024187: n-th elementary symmetric function of 3,4,...,n+3.

The programs for A024187, there is no canonical definition to state claims against.
-/

/-! ## A024187.P4096570347873511774

`record[n!+(n+1)*a(n-1)]/2` with `a(0)=14, a(1)=0`
-/

namespace A024187.P4096570347873511774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 0] fun n f1 =>
  Nat.factorial n + (n + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A024187.P4096570347873511774

/-! ## A024187.P14397203383988583565

`Δ[floor(∑[(n+2)!/2+(n+3)*a(n-1)])]` with `a(0)=1`
-/

namespace A024187.P14397203383988583565
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.factorial (n + 2) : ℚ) / 2 + (n + 3 : ℚ) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024187.P14397203383988583565

/-! ## A024187.P9929253957805642236

`Δ[ceil(∑[(n+2)!/2+(n+3)*a(n-1)])]` with `a(0)=1`
-/

namespace A024187.P9929253957805642236
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.factorial (n + 2) : ℚ) / 2 + (n + 3 : ℚ) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024187.P9929253957805642236

/-! ## A024187.P12247851639997996250

`A001711(n+1)`
-/

namespace A024187.P12247851639997996250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001711 (n + 1)

end

end A024187.P12247851639997996250

/-! ## A024187.P15713805716472057103

`ratio[-∏[A001711(n)]]`
-/

namespace A024187.P15713805716472057103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A024187.P15713805716472057103

/-!
# A024188: a(n) = ((n+2)!/2)(1/3 - 1/4 + ... + c/(n+2)), where c = (-1)^(n+1).

The programs for A024188, there is no canonical definition to state claims against.
-/

/-! ## A024188.P2008624413529686774

`A024176(n+1)/2`
-/

namespace A024188.P2008624413529686774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024176 (n + 1) : ℚ) / 2

end

end A024188.P2008624413529686774

/-! ## A024188.P13431749911821073460

`∏[(n+2)²/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A024188.P13431749911821073460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n + 2) ^ 2 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024188.P13431749911821073460

/-! ## A024188.P14510505861052182874

`a(n-1)+(n+2)²*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A024188.P14510505861052182874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (n + 2) ^ 2 * a (n - 2)

end

end A024188.P14510505861052182874

/-! ## A024188.P9735177367316133212

`a(n-1)+(n+2)*(n+2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A024188.P9735177367316133212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (n + 2) * ((n + 2) * a (n - 2))

end

end A024188.P9735177367316133212

/-!
# A024189: a(n) = ((n+3)!/2)*Sum_{k=1..n} (-1)^(k+1)/(k+3).

The programs for A024189, there is no canonical definition to state claims against.
-/

/-! ## A024189.P14576798781451368636

`a(n-1)+(n+3)²*a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A024189.P14576798781451368636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) + (n + 3) ^ 2 * a (n - 2)

end

end A024189.P14576798781451368636

/-! ## A024189.P422758696586412021

`A335026(n+2)/3`
-/

namespace A024189.P422758696586412021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335026 (n + 2) : ℚ) / 3

end

end A024189.P422758696586412021

/-!
# A024190: [ (2nd elementary symmetric function of 3,4,...,n+3)/(3+4+...+n+3) ].

The programs for A024190, the canonical program `A024190.P671176225847773296` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024190 has offset 1).

The definition of A024190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024190.P15175764983695371229

`ogf((1+x+x^2-x^3-x^5+2x^6+2x^8-2x^9+x^10-2x^11+x^12)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))`
-/

namespace A024190.P15175764983695371229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1, 0, -1, 2, 0, 2, -2, 1, -2, 1] [1, -2, 1, -1, 2, -1, 1, -2, 1, -1, 2, -1] n

end

end A024190.P15175764983695371229

namespace A024190

/-- `ogf((1+x+x^2-x^3-x^5+2x^6+2x^8-2x^9+x^10-2x^11+x^12)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))` -/
def P15175764983695371229.Spec : Prop :=
  ∀ n, P15175764983695371229.a n = A024190 (n + 1)

end A024190

/-! ## A024190.P671176225847773296

`A014616(n+1)-A065033(A103221(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024190

/-- `A014616(n+1)-A065033(A103221(n))` -/
def P671176225847773296.Spec : Prop :=
  ∀ n, P671176225847773296.a n = A024190 (n + 1)

theorem P671176225847773296.correct : P671176225847773296.Spec := by
  intro n
  simp only [A024190, Nat.add_sub_cancel]

end A024190

/-! ## A024190.P16733375039017961982

`A014616(n+1)-A065033(A008615(n+2))`
-/

namespace A024190.P16733375039017961982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1) - A065033 (A008615 (n + 2)).toNat

end

end A024190.P16733375039017961982

namespace A024190

/-- `A014616(n+1)-A065033(A008615(n+2))` -/
def P16733375039017961982.Spec : Prop :=
  ∀ n, P16733375039017961982.a n = A024190 (n + 1)

end A024190

/-! ## A024190.P7956602592472260741

`floor(A024183(n+1)/A027379(n+2))`
-/

namespace A024190.P7956602592472260741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024183 (n + 1) : ℚ) / (A027379 (n + 2) : ℚ)⌋

end

end A024190.P7956602592472260741

namespace A024190

/-- `floor(A024183(n+1)/A027379(n+2))` -/
def P7956602592472260741.Spec : Prop :=
  ∀ n, P7956602592472260741.a n = A024190 (n + 1)

end A024190

/-! ## A024190.P14699571123755803302

`floor(A024183(n+1)/A055998(n+2))`
-/

namespace A024190.P14699571123755803302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024183 (n + 1) : ℚ) / (A055998 (n + 2) : ℚ)⌋

end

end A024190.P14699571123755803302

namespace A024190

/-- `floor(A024183(n+1)/A055998(n+2))` -/
def P14699571123755803302.Spec : Prop :=
  ∀ n, P14699571123755803302.a n = A024190 (n + 1)

end A024190

/-! ## A024190.P4798197220008396046

`∑[A065033(n+3)]-A065033(A008615(n+2))`
-/

namespace A024190.P4798197220008396046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065033 (A008615 (n + 2)).toNat

end

end A024190.P4798197220008396046

namespace A024190

/-- `∑[A065033(n+3)]-A065033(A008615(n+2))` -/
def P4798197220008396046.Spec : Prop :=
  ∀ n, P4798197220008396046.a n = A024190 (n + 1)

end A024190

/-!
# A024191: [ (3rd elementary symmetric function of 3,4,...,n+4)/(3+4+...+n+4) ].

The programs for A024191, the canonical program `A024191.P3255661465962514691` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024191 has offset 1).

The definition of A024191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024191.P16164625593550191682

`ogf((5-6x+2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A024191.P16164625593550191682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6, 2] [1, -5, 10, -10, 5, -1] n

end

end A024191.P16164625593550191682

namespace A024191

/-- `ogf((5-6x+2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16164625593550191682.Spec : Prop :=
  ∀ n, P16164625593550191682.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P13299895795388870554

`(n+1)*(n+2)*((n+1)²+13*(n+1)+46)/24`
-/

namespace A024191.P13299895795388870554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * ((n + 1) ^ 2 + 13 * (n + 1) + 46) : ℚ) / 24

end

end A024191.P13299895795388870554

namespace A024191

/-- `(n+1)*(n+2)*((n+1)²+13*(n+1)+46)/24` -/
def P13299895795388870554.Spec : Prop :=
  ∀ n, P13299895795388870554.a n = (A024191 (n + 1) : ℚ)

theorem P13299895795388870554.correct : P13299895795388870554.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A024191, Nat.add_sub_cancel, A024191.P13299895795388870554.a, A024191.P3255661465962514691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A024191, Nat.add_sub_cancel, A024191.P13299895795388870554.a, A024191.P3255661465962514691.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A024191

/-! ## A024191.P3255661465962514691

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=5, a(1)=19, a(2)=47, a(3)=95, a(4)=170`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024191

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3255661465962514691.Spec : Prop :=
  ∀ n, P3255661465962514691.a n = A024191 (n + 1)

theorem P3255661465962514691.correct : P3255661465962514691.Spec := by
  intro n
  simp only [A024191, Nat.add_sub_cancel]

end A024191

/-! ## A024191.P10398710626402366989

`a(n-1)+A005586(n+1)` with `a(0)=5`
-/

namespace A024191.P10398710626402366989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + A005586 (n + 1)

end

end A024191.P10398710626402366989

namespace A024191

/-- `a(n-1)+A005586(n+1)` -/
def P10398710626402366989.Spec : Prop :=
  ∀ n, P10398710626402366989.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P6644189454913453495

`floor(A024184(n+1)/A055998(n+3))`
-/

namespace A024191.P6644189454913453495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024184 (n + 1) : ℚ) / (A055998 (n + 3) : ℚ)⌋

end

end A024191.P6644189454913453495

namespace A024191

/-- `floor(A024184(n+1)/A055998(n+3))` -/
def P6644189454913453495.Spec : Prop :=
  ∀ n, P6644189454913453495.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P13346851561805338066

`record[C(n, 4)-C(n, 2)]+5`
-/

namespace A024191.P13346851561805338066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5

end

end A024191.P13346851561805338066

namespace A024191

/-- `record[C(n, 4)-C(n, 2)]+5` -/
def P13346851561805338066.Spec : Prop :=
  ∀ n, P13346851561805338066.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P16299494101274794157

`A005587(n)+5`
-/

namespace A024191.P16299494101274794157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n + 5

end

end A024191.P16299494101274794157

namespace A024191

/-- `A005587(n)+5` -/
def P16299494101274794157.Spec : Prop :=
  ∀ n, P16299494101274794157.a n = A024191 (n + 1)

theorem P16299494101274794157.correct : P16299494101274794157.Spec := by
  intro n
  simp only [A024191, Nat.add_sub_cancel, A024191.P16299494101274794157.a, A024191.P3255661465962514691.a, A005587, A005587.P12134575304824728595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024191

/-! ## A024191.P13510630255133777773

`A005287(n+4)-n`
-/

namespace A024191.P13510630255133777773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - (n : ℤ)

end

end A024191.P13510630255133777773

namespace A024191

/-- `A005287(n+4)-n` -/
def P13510630255133777773.Spec : Prop :=
  ∀ n, P13510630255133777773.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P353633288488356219

`∑[A008778(n+1)+n]`
-/

namespace A024191.P353633288488356219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024191.P353633288488356219

namespace A024191

/-- `∑[A008778(n+1)+n]` -/
def P353633288488356219.Spec : Prop :=
  ∀ n, P353633288488356219.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P10835370674995552056

`A095667(n)-∑[∑[n-1]]`
-/

namespace A024191.P10835370674995552056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024191.P10835370674995552056

namespace A024191

/-- `A095667(n)-∑[∑[n-1]]` -/
def P10835370674995552056.Spec : Prop :=
  ∀ n, P10835370674995552056.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P14420893801898000525

`A095661(n)+(n+1)*(n+2)`
-/

namespace A024191.P14420893801898000525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n + ((n + 1) * (n + 2) : ℤ)

end

end A024191.P14420893801898000525

namespace A024191

/-- `A095661(n)+(n+1)*(n+2)` -/
def P14420893801898000525.Spec : Prop :=
  ∀ n, P14420893801898000525.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P574900216976685640

`∑[A101853(n+1)-(n+1)²]`
-/

namespace A024191.P574900216976685640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024191.P574900216976685640

namespace A024191

/-- `∑[A101853(n+1)-(n+1)²]` -/
def P574900216976685640.Spec : Prop :=
  ∀ n, P574900216976685640.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P12776928757701833138

`A101854(n+1)-∑[(n+1)²]`
-/

namespace A024191.P12776928757701833138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024191.P12776928757701833138

namespace A024191

/-- `A101854(n+1)-∑[(n+1)²]` -/
def P12776928757701833138.Spec : Prop :=
  ∀ n, P12776928757701833138.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P7911413033147318950

`A063258(n)+A008778(n)`
-/

namespace A024191.P7911413033147318950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A008778 n

end

end A024191.P7911413033147318950

namespace A024191

/-- `A063258(n)+A008778(n)` -/
def P7911413033147318950.Spec : Prop :=
  ∀ n, P7911413033147318950.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P8056938006162022554

`A254749(n+1)+A095667(n)`
-/

namespace A024191.P8056938006162022554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 1) + A095667 n

end

end A024191.P8056938006162022554

namespace A024191

/-- `A254749(n+1)+A095667(n)` -/
def P8056938006162022554.Spec : Prop :=
  ∀ n, P8056938006162022554.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P9348716591177578493

`A394185(n)+A252814(n+1)`
-/

namespace A024191.P9348716591177578493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n + A252814 (n + 1)

end

end A024191.P9348716591177578493

namespace A024191

/-- `A394185(n)+A252814(n+1)` -/
def P9348716591177578493.Spec : Prop :=
  ∀ n, P9348716591177578493.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P2297301321043252083

`A006504(n+1)-A000292(n)`
-/

namespace A024191.P2297301321043252083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A000292 n

end

end A024191.P2297301321043252083

namespace A024191

/-- `A006504(n+1)-A000292(n)` -/
def P2297301321043252083.Spec : Prop :=
  ∀ n, P2297301321043252083.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P11214581370089224083

`A096942(n)-2*A000292(n)`
-/

namespace A024191.P11214581370089224083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - 2 * A000292 n

end

end A024191.P11214581370089224083

namespace A024191

/-- `A096942(n)-2*A000292(n)` -/
def P11214581370089224083.Spec : Prop :=
  ∀ n, P11214581370089224083.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P10054205461637220453

`A005286(n)+A063258(n)-n`
-/

namespace A024191.P10054205461637220453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n + (A063258 n - (n : ℤ))

end

end A024191.P10054205461637220453

namespace A024191

/-- `A005286(n)+A063258(n)-n` -/
def P10054205461637220453.Spec : Prop :=
  ∀ n, P10054205461637220453.a n = A024191 (n + 1)

end A024191

/-! ## A024191.P8116961944530579661

`A096942(n)-(A084990(n)+n)`
-/

namespace A024191.P8116961944530579661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - (A084990 n + (n : ℤ))

end

end A024191.P8116961944530579661

namespace A024191

/-- `A096942(n)-(A084990(n)+n)` -/
def P8116961944530579661.Spec : Prop :=
  ∀ n, P8116961944530579661.a n = A024191 (n + 1)

end A024191

/-!
# A024192: Integer part of (4th elementary symmetric function of 3,4,...,n+5)/(3+4+...+n+5).

The programs for A024192, the canonical program `A024192.P4759035746116519592` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024192 has offset 1).

The definition of A024192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024192.P4759035746116519592

`floor(A024185(n+1)/A055998(n+4))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024192

/-- `floor(A024185(n+1)/A055998(n+4))` -/
def P4759035746116519592.Spec : Prop :=
  ∀ n, P4759035746116519592.a n = A024192 (n + 1)

theorem P4759035746116519592.correct : P4759035746116519592.Spec := by
  intro n
  simp only [A024192, Nat.add_sub_cancel]

end A024192

/-!
# A024193: Integer part of (3rd elementary symmetric function of S(n))/(2nd elementary symmetric of S(n)), where S(n) = {3,4, ..., n+4}.

The programs for A024193, the canonical program `A024193.P17264618769303576686` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024193 has offset 1).

The definition of A024193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024193.P17264618769303576686

`floor(1/2*(n+1)*(7+n+1)*(46+13*(n+1)+(n+1)²)/(144+41*(n+1)+3*(n+1)²))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024193

/-- `floor(1/2*(n+1)*(7+n+1)*(46+13*(n+1)+(n+1)²)/(144+41*(n+1)+3*(n+1)²))` -/
def P17264618769303576686.Spec : Prop :=
  ∀ n, P17264618769303576686.a n = A024193 (n + 1)

theorem P17264618769303576686.correct : P17264618769303576686.Spec := by
  intro n
  simp only [A024193, Nat.add_sub_cancel]

end A024193

/-! ## A024193.P9063815291825126485

`A034856(n+1)-A024204(n+1)%A347506(n)`
-/

namespace A024193.P9063815291825126485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - Int.tmod (A024204 (n + 1)) (A347506 n)

end

end A024193.P9063815291825126485

namespace A024193

/-- `A034856(n+1)-A024204(n+1)%A347506(n)` -/
def P9063815291825126485.Spec : Prop :=
  ∀ n, P9063815291825126485.a n = A024193 (n + 1)

end A024193

/-! ## A024193.P2960120036316875570

`A051889(A016754(n))-∑[n]`
-/

namespace A024193.P2960120036316875570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A016754 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024193.P2960120036316875570

namespace A024193

/-- `A051889(A016754(n))-∑[n]` -/
def P2960120036316875570.Spec : Prop :=
  ∀ n, P2960120036316875570.a n = A024193 (n + 1)

end A024193

/-! ## A024193.P4296859129600773144

`A117385(record[A007599(∑[n])])`
-/

namespace A024193.P4296859129600773144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024193.P4296859129600773144

namespace A024193

/-- `A117385(record[A007599(∑[n])])` -/
def P4296859129600773144.Spec : Prop :=
  ∀ n, P4296859129600773144.a n = A024193 (n + 1)

end A024193

/-! ## A024193.P731054949068784775

`A024417(A345731(n+2))+n`
-/

namespace A024193.P731054949068784775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A345731 (n + 2)).toNat + (n : ℤ)

end

end A024193.P731054949068784775

namespace A024193

/-- `A024417(A345731(n+2))+n` -/
def P731054949068784775.Spec : Prop :=
  ∀ n, P731054949068784775.a n = A024193 (n + 1)

end A024193

/-!
# A024194: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric of S(n)) ], where S(n) = {3,4, ..., n+5}.

The programs for A024194, the canonical program `A024194.P15620669044121865782` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024194 has offset 1).

The definition of A024194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024194.P15620669044121865782

`floor(A024185(n+1)/A024183(n+3))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024194

/-- `floor(A024185(n+1)/A024183(n+3))` -/
def P15620669044121865782.Spec : Prop :=
  ∀ n, P15620669044121865782.a n = A024194 (n + 1)

theorem P15620669044121865782.correct : P15620669044121865782.Spec := by
  intro n
  simp only [A024194, Nat.add_sub_cancel]

end A024194

/-! ## A024194.P11463294615780696837

`A233583(ceil(A024185(n+1)/A024183(n+3)))`
-/

namespace A024194.P11463294615780696837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌈(A024185 (n + 1) : ℚ) / (A024183 (n + 3) : ℚ)⌉.toNat

end

end A024194.P11463294615780696837

namespace A024194

/-- `A233583(ceil(A024185(n+1)/A024183(n+3)))` -/
def P11463294615780696837.Spec : Prop :=
  ∀ n, P11463294615780696837.a n = A024194 (n + 1)

end A024194

/-!
# A024195: Integer part of (4th elementary symmetric function of S(n))/(3rd elementary symmetric of S(n)), where S(n) = {3,4, ..., n+5}.

The programs for A024195, the canonical program `A024195.P11848161262201570892` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024195 has offset 1).

The definition of A024195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024195.P11848161262201570892

`round(sqrt(∑[n/4+1]²-n))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024195

/-- `round(sqrt(∑[n/4+1]²-n))` -/
def P11848161262201570892.Spec : Prop :=
  ∀ n, P11848161262201570892.a n = A024195 (n + 1)

theorem P11848161262201570892.correct : P11848161262201570892.Spec := by
  intro n
  simp only [A024195, Nat.add_sub_cancel]

end A024195

/-! ## A024195.P12798415212311901481

`ogf((1-x+x^2+x^6-x^7+x^10-3x^11+4x^12-3x^13+x^14)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`
-/

namespace A024195.P12798415212311901481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 0, 0, 0, 1, -1, 0, 0, 1, -3, 4, -3, 1] [1, -3, 4, -4, 4, -4, 4, -4, 3, -1] n

end

end A024195.P12798415212311901481

namespace A024195

/-- `ogf((1-x+x^2+x^6-x^7+x^10-3x^11+4x^12-3x^13+x^14)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P12798415212311901481.Spec : Prop :=
  ∀ n, P12798415212311901481.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P12438213907113787714

`floor(A024185(n+1)/A024184(n+2))`
-/

namespace A024195.P12438213907113787714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024185 (n + 1) : ℚ) / (A024184 (n + 2) : ℚ)⌋

end

end A024195.P12438213907113787714

namespace A024195

/-- `floor(A024185(n+1)/A024184(n+2))` -/
def P12438213907113787714.Spec : Prop :=
  ∀ n, P12438213907113787714.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P12533717628500850960

`floor(A024192(n+1)/A024191(n+2))`
-/

namespace A024195.P12533717628500850960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024192 (n + 1) : ℚ) / (A024191 (n + 2) : ℚ)⌋

end

end A024195.P12533717628500850960

namespace A024195

/-- `floor(A024192(n+1)/A024191(n+2))` -/
def P12533717628500850960.Spec : Prop :=
  ∀ n, P12533717628500850960.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P9363471232815982754

`floor(∑[(n+6)*A024184(n+1)]/A024184(n+2))`
-/

namespace A024195.P9363471232815982754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A024184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A024184 (n + 2) : ℚ)⌋

end

end A024195.P9363471232815982754

namespace A024195

/-- `floor(∑[(n+6)*A024184(n+1)]/A024184(n+2))` -/
def P9363471232815982754.Spec : Prop :=
  ∀ n, P9363471232815982754.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P15206906689286410048

`floor(A144516(n+2)/A027778(n+3))`
-/

namespace A024195.P15206906689286410048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144516 (n + 2) : ℚ) / (A027778 (n + 3) : ℚ)⌋

end

end A024195.P15206906689286410048

namespace A024195

/-- `floor(A144516(n+2)/A027778(n+3))` -/
def P15206906689286410048.Spec : Prop :=
  ∀ n, P15206906689286410048.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P1368052388845167140

`A065033(A299231(n+1)+∑[A004525(n)])`
-/

namespace A024195.P1368052388845167140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A299231 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024195.P1368052388845167140

namespace A024195

/-- `A065033(A299231(n+1)+∑[A004525(n)])` -/
def P1368052388845167140.Spec : Prop :=
  ∀ n, P1368052388845167140.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P15757121183308139146

`A065033(A299231(n+1)+A065033(∑[n]))`
-/

namespace A024195.P15757121183308139146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A299231 (n + 1) + A065033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024195.P15757121183308139146

namespace A024195

/-- `A065033(A299231(n+1)+A065033(∑[n]))` -/
def P15757121183308139146.Spec : Prop :=
  ∀ n, P15757121183308139146.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P11108056780756237002

`A008621(A185119(n)+A056000(n))`
-/

namespace A024195.P11108056780756237002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A185119 n + A056000 n).toNat

end

end A024195.P11108056780756237002

namespace A024195

/-- `A008621(A185119(n)+A056000(n))` -/
def P11108056780756237002.Spec : Prop :=
  ∀ n, P11108056780756237002.a n = A024195 (n + 1)

end A024195

/-! ## A024195.P9416090321524524530

`A008621(A155212(n)-A244328(n+1))`
-/

namespace A024195.P9416090321524524530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A155212 n - A244328 (n + 1)).toNat

end

end A024195.P9416090321524524530

namespace A024195

/-- `A008621(A155212(n)-A244328(n+1))` -/
def P9416090321524524530.Spec : Prop :=
  ∀ n, P9416090321524524530.a n = A024195 (n + 1)

end A024195

/-!
# A024196: a(n) = 2nd elementary symmetric function of the first n+1 odd positive integers.

The programs for A024196, the canonical program `A024196.P477963712234717001` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024196 has offset 1).

The definition of A024196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024196.P11726476352573033667

`ogf((3+8x+x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A024196.P11726476352573033667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, 1] [1, -5, 10, -10, 5, -1] n

end

end A024196.P11726476352573033667

namespace A024196

/-- `ogf((3+8x+x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11726476352573033667.Spec : Prop :=
  ∀ n, P11726476352573033667.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P6053135256099506895

`(n+1)*(n+2)*(3*(n+1)²+5*(n+1)+1)/6`
-/

namespace A024196.P6053135256099506895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (3 * (n + 1) ^ 2 + 5 * (n + 1) + 1) : ℚ) / 6

end

end A024196.P6053135256099506895

namespace A024196

/-- `(n+1)*(n+2)*(3*(n+1)²+5*(n+1)+1)/6` -/
def P6053135256099506895.Spec : Prop :=
  ∀ n, P6053135256099506895.a n = (A024196 (n + 1) : ℚ)

theorem P6053135256099506895.correct : P6053135256099506895.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A024196, Nat.add_sub_cancel, A024196.P6053135256099506895.a, A024196.P477963712234717001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A024196, Nat.add_sub_cancel, A024196.P6053135256099506895.a, A024196.P477963712234717001.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A024196

/-! ## A024196.P477963712234717001

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=23, a(2)=86, a(3)=230, a(4)=505`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024196

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P477963712234717001.Spec : Prop :=
  ∀ n, P477963712234717001.a n = A024196 (n + 1)

theorem P477963712234717001.correct : P477963712234717001.Spec := by
  intro n
  simp only [A024196, Nat.add_sub_cancel]

end A024196

/-! ## A024196.P15708879221029079893

`∑[(n+1)*∑[record[xor(3, n)]]]`
-/

namespace A024196.P15708879221029079893
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P15708879221029079893

namespace A024196

/-- `∑[(n+1)*∑[record[xor(3, n)]]]` -/
def P15708879221029079893.Spec : Prop :=
  ∀ n, (P15708879221029079893.a n : ℤ) = A024196 (n + 1)

end A024196

/-! ## A024196.P3931779267170431145

`∑[(n+1)*∑[a(n-1)+4]]` with `a(0)=3`
-/

namespace A024196.P3931779267170431145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P3931779267170431145

namespace A024196

/-- `∑[(n+1)*∑[a(n-1)+4]]` -/
def P3931779267170431145.Spec : Prop :=
  ∀ n, (P3931779267170431145.a n : ℤ) = A024196 (n + 1)

end A024196

/-! ## A024196.P9366068185266719993

`∑[lcm(n+2, (n+1)²)]+∑[n+1]²`
-/

namespace A024196.P9366068185266719993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A024196.P9366068185266719993

namespace A024196

/-- `∑[lcm(n+2, (n+1)²)]+∑[n+1]²` -/
def P9366068185266719993.Spec : Prop :=
  ∀ n, (P9366068185266719993.a n : ℤ) = A024196 (n + 1)

end A024196

/-! ## A024196.P7585348251098259822

`∑[n+1]+∑[lcm(n+1, (2*n+1)*(n+2))]`
-/

namespace A024196.P7585348251098259822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((2 * n + 1) * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A024196.P7585348251098259822

namespace A024196

/-- `∑[n+1]+∑[lcm(n+1, (2*n+1)*(n+2))]` -/
def P7585348251098259822.Spec : Prop :=
  ∀ n, (P7585348251098259822.a n : ℤ) = A024196 (n + 1)

end A024196

/-! ## A024196.P18191333280216432980

`∑[∑[A126587(n+1)]]`
-/

namespace A024196.P18191333280216432980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P18191333280216432980

namespace A024196

/-- `∑[∑[A126587(n+1)]]` -/
def P18191333280216432980.Spec : Prop :=
  ∀ n, P18191333280216432980.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P12977217970380136074

`∑[A089207(n+1)/2]`
-/

namespace A024196.P12977217970380136074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089207 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P12977217970380136074

namespace A024196

/-- `∑[A089207(n+1)/2]` -/
def P12977217970380136074.Spec : Prop :=
  ∀ n, P12977217970380136074.a n = (A024196 (n + 1) : ℚ)

end A024196

/-! ## A024196.P16897757136074616666

`∑[A213820(n+1)+n+1]`
-/

namespace A024196.P16897757136074616666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213820 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P16897757136074616666

namespace A024196

/-- `∑[A213820(n+1)+n+1]` -/
def P16897757136074616666.Spec : Prop :=
  ∀ n, P16897757136074616666.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P12067866045619484133

`∑[(n+1)*A014105(n+1)]`
-/

namespace A024196.P12067866045619484133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P12067866045619484133

namespace A024196

/-- `∑[(n+1)*A014105(n+1)]` -/
def P12067866045619484133.Spec : Prop :=
  ∀ n, P12067866045619484133.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P1319930297546310144

`∑[A033431(n+1)+(n+1)²]`
-/

namespace A024196.P1319930297546310144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P1319930297546310144

namespace A024196

/-- `∑[A033431(n+1)+(n+1)²]` -/
def P1319930297546310144.Spec : Prop :=
  ∀ n, P1319930297546310144.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P4405704065580509795

`∑[(n+1)²*A144396(n+1)]`
-/

namespace A024196.P4405704065580509795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P4405704065580509795

namespace A024196

/-- `∑[(n+1)²*A144396(n+1)]` -/
def P4405704065580509795.Spec : Prop :=
  ∀ n, P4405704065580509795.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P6280554418347474618

`A055268(n)+A051744(n+1)`
-/

namespace A024196.P6280554418347474618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 n + A051744 (n + 1)

end

end A024196.P6280554418347474618

namespace A024196

/-- `A055268(n)+A051744(n+1)` -/
def P6280554418347474618.Spec : Prop :=
  ∀ n, P6280554418347474618.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P7614256032997408694

`A153057(n)+n*A127873(n+1)`
-/

namespace A024196.P7614256032997408694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 n + (n : ℤ) * A127873 (n + 1)

end

end A024196.P7614256032997408694

namespace A024196

/-- `A153057(n)+n*A127873(n+1)` -/
def P7614256032997408694.Spec : Prop :=
  ∀ n, P7614256032997408694.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P3861058192439329978

`A100177(n+1)+A051662(n)+A050509(n)`
-/

namespace A024196.P3861058192439329978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100177 (n + 1) + (A051662 n + A050509 n)

end

end A024196.P3861058192439329978

namespace A024196

/-- `A100177(n+1)+A051662(n)+A050509(n)` -/
def P3861058192439329978.Spec : Prop :=
  ∀ n, P3861058192439329978.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P6436359173761554412

`A000217(n+1)+A002419(n+1)+A002419(n+1)`
-/

namespace A024196.P6436359173761554412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A002419 (n + 1) + A002419 (n + 1))

end

end A024196.P6436359173761554412

namespace A024196

/-- `A000217(n+1)+A002419(n+1)+A002419(n+1)` -/
def P6436359173761554412.Spec : Prop :=
  ∀ n, P6436359173761554412.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P5748303034928130752

`A176060(n+1)+A176060(n+1)-A000217(n+1)`
-/

namespace A024196.P5748303034928130752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 (n + 1) + A176060 (n + 1) - A000217 (n + 1)

end

end A024196.P5748303034928130752

namespace A024196

/-- `A176060(n+1)+A176060(n+1)-A000217(n+1)` -/
def P5748303034928130752.Spec : Prop :=
  ∀ n, P5748303034928130752.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P5300301746353290484

`A132117(n+1)+A000096(n+1)*A000217(n+1)`
-/

namespace A024196.P5300301746353290484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1) + A000096 (n + 1) * A000217 (n + 1)

end

end A024196.P5300301746353290484

namespace A024196

/-- `A132117(n+1)+A000096(n+1)*A000217(n+1)` -/
def P5300301746353290484.Spec : Prop :=
  ∀ n, P5300301746353290484.a n = A024196 (n + 1)

end A024196

/-! ## A024196.P13889419001831622196

`∑[A099721(n+1)]`
-/

namespace A024196.P13889419001831622196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024196.P13889419001831622196

namespace A024196

/-- `∑[A099721(n+1)]` -/
def P13889419001831622196.Spec : Prop :=
  ∀ n, P13889419001831622196.a n = A024196 (n + 1)

end A024196

/-!
# A024197: a(n) = 3rd elementary symmetric function of the first n+2 odd positive integers.

The programs for A024197, the canonical program `A024197.P962166605197728149` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024197 has offset 1).

The definition of A024197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024197.P8336557120514989471

`ogf((15+71x+33x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A024197.P8336557120514989471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 71, 33, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A024197.P8336557120514989471

namespace A024197

/-- `ogf((15+71x+33x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8336557120514989471.Spec : Prop :=
  ∀ n, P8336557120514989471.a n = A024197 (n + 1)

end A024197

/-! ## A024197.P3712447510319434055

`(n+1)*(n+2)*(n+3)²*((n+1)²+3*(n+1)+1)/6`
-/

namespace A024197.P3712447510319434055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) ^ 2 * ((n + 1) ^ 2 + 3 * (n + 1) + 1) : ℚ) / 6

end

end A024197.P3712447510319434055

namespace A024197

/-- `(n+1)*(n+2)*(n+3)²*((n+1)²+3*(n+1)+1)/6` -/
def P3712447510319434055.Spec : Prop :=
  ∀ n, P3712447510319434055.a n = (A024197 (n + 1) : ℚ)

end A024197

/-! ## A024197.P962166605197728149

`A004320(n+1)*A028387(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A024197

/-- `A004320(n+1)*A028387(n+1)` -/
def P962166605197728149.Spec : Prop :=
  ∀ n, P962166605197728149.a n = A024197 (n + 1)

theorem P962166605197728149.correct : P962166605197728149.Spec := by
  intro n
  simp only [A024197, Nat.add_sub_cancel]

end A024197

/-! ## A024197.P9047302393441854240

`∑[(2*n+5)*A024196(n+1)]`
-/

namespace A024197.P9047302393441854240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A024196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024197.P9047302393441854240

namespace A024197

/-- `∑[(2*n+5)*A024196(n+1)]` -/
def P9047302393441854240.Spec : Prop :=
  ∀ n, P9047302393441854240.a n = A024197 (n + 1)

end A024197

/-! ## A024197.P3883530230994970188

`A109692(A167614(n+2))`
-/

namespace A024197.P3883530230994970188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A167614 (n + 2)).toNat

end

end A024197.P3883530230994970188

namespace A024197

/-- `A109692(A167614(n+2))` -/
def P3883530230994970188.Spec : Prop :=
  ∀ n, P3883530230994970188.a n = A024197 (n + 1)

end A024197

/-! ## A024197.P5547829310558096112

`A109692(A052905(n)+8)`
-/

namespace A024197.P5547829310558096112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A052905 n + 8).toNat

end

end A024197.P5547829310558096112

namespace A024197

/-- `A109692(A052905(n)+8)` -/
def P5547829310558096112.Spec : Prop :=
  ∀ n, P5547829310558096112.a n = A024197 (n + 1)

end A024197

/-! ## A024197.P7535271008757428132

`A109692(eq[2, A141169(n)])`
-/

namespace A024197.P7535271008757428132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024197.P7535271008757428132

namespace A024197

/-- `A109692(eq[2, A141169(n)])` -/
def P7535271008757428132.Spec : Prop :=
  ∀ n, P7535271008757428132.a n = A024197 (n + 1)

end A024197

/-! ## A024197.P11504167751847261706

`A028338(∑[n+4]+2)`
-/

namespace A024197.P11504167751847261706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A024197.P11504167751847261706

namespace A024197

/-- `A028338(∑[n+4]+2)` -/
def P11504167751847261706.Spec : Prop :=
  ∀ n, P11504167751847261706.a n = A024197 (n + 1)

end A024197

/-!
# A024198: 4th elementary symmetric function of the first n+3 odd positive integers.

The programs for A024198, the canonical program `A024198.P17444069839274153440` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024198 has offset 1).

The definition of A024198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024198.P17444069839274153440

`A000332(n+4)*(15*(n+1)^4+150*(n+1)^3+515*(n+1)²+672*(n+1)+223)/15`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A024198

/-- `A000332(n+4)*(15*(n+1)^4+150*(n+1)^3+515*(n+1)²+672*(n+1)+223)/15` -/
def P17444069839274153440.Spec : Prop :=
  ∀ n, P17444069839274153440.a n = (A024198 (n + 1) : ℚ)

end A024198

/-! ## A024198.P852627829329082295

`∑[(2*n+7)*C((n+1)*(n+3)²+1, 2)/3]`
-/

namespace A024198.P852627829329082295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 7 : ℚ) * ((Nat.choose ((n + 1) * (n + 3) ^ 2 + 1) 2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024198.P852627829329082295

namespace A024198

/-- `∑[(2*n+7)*C((n+1)*(n+3)²+1, 2)/3]` -/
def P852627829329082295.Spec : Prop :=
  ∀ n, P852627829329082295.a n = (A024198 (n + 1) : ℚ)

end A024198

/-! ## A024198.P3775819519423537865

`∑[A020742(n)*A024197(n+1)]`
-/

namespace A024198.P3775819519423537865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n * A024197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024198.P3775819519423537865

namespace A024198

/-- `∑[A020742(n)*A024197(n+1)]` -/
def P3775819519423537865.Spec : Prop :=
  ∀ n, P3775819519423537865.a n = A024198 (n + 1)

end A024198

/-! ## A024198.P7342910928879259406

`∑[Δ[A028560(n)]*A024197(n+1)]`
-/

namespace A024198.P7342910928879259406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A024197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024198.P7342910928879259406

namespace A024198

/-- `∑[Δ[A028560(n)]*A024197(n+1)]` -/
def P7342910928879259406.Spec : Prop :=
  ∀ n, P7342910928879259406.a n = A024198 (n + 1)

end A024198

/-! ## A024198.P14568641949584244849

`A109692(eq[3, A141169(n)])`
-/

namespace A024198.P14568641949584244849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024198.P14568641949584244849

namespace A024198

/-- `A109692(eq[3, A141169(n)])` -/
def P14568641949584244849.Spec : Prop :=
  ∀ n, P14568641949584244849.a n = A024198 (n + 1)

end A024198

/-! ## A024198.P6134769502214429509

`A028338(A052905(n+2))`
-/

namespace A024198.P6134769502214429509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A052905 (n + 2)).toNat

end

end A024198.P6134769502214429509

namespace A024198

/-- `A028338(A052905(n+2))` -/
def P6134769502214429509.Spec : Prop :=
  ∀ n, P6134769502214429509.a n = A024198 (n + 1)

end A024198

/-! ## A024198.P5424761248298724056

`A039757(eq[4, A025581(n)])`
-/

namespace A024198.P5424761248298724056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024198.P5424761248298724056

namespace A024198

/-- `A039757(eq[4, A025581(n)])` -/
def P5424761248298724056.Spec : Prop :=
  ∀ n, P5424761248298724056.a n = A024198 (n + 1)

end A024198

/-!
# A024199: a(n) = (2n-1)!! * Sum_{k=0..n-1}(-1)^k/(2k+1).

The programs for A024199, the canonical program `A024199.P15482529585792424584` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024199 has offset 0).

The definition of A024199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024199.P15482529585792424584

`2*a(n-1)+(2*n-3)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024199

/-- `2*a(n-1)+(2*n-3)²*a(n-2)` -/
def P15482529585792424584.Spec : Prop :=
  ∀ n, P15482529585792424584.a n = A024199 n

theorem P15482529585792424584.correct : P15482529585792424584.Spec := by
  intro n
  simp only [A024199]

end A024199

/-! ## A024199.P19903175134914861

`∏[abs(1-2*n)]-A024200(n)`
-/

namespace A024199.P19903175134914861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A024200 n

end

end A024199.P19903175134914861

namespace A024199

/-- `∏[abs(1-2*n)]-A024200(n)` -/
def P19903175134914861.Spec : Prop :=
  ∀ n, P19903175134914861.a n = A024199 n

end A024199

/-! ## A024199.P5539022258992220964

`A330797(n)+(2*n-1)*a(n-1)` with `a(0)=0`
-/

namespace A024199.P5539022258992220964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A330797 n + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A024199.P5539022258992220964

namespace A024199

/-- `A330797(n)+(2*n-1)*a(n-1)` -/
def P5539022258992220964.Spec : Prop :=
  ∀ n, P5539022258992220964.a n = A024199 n

end A024199

/-! ## A024199.P8838726983125278639

`A072371(n)-A001147(n)`
-/

namespace A024199.P8838726983125278639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072371 n - A001147 n

end

end A024199.P8838726983125278639

namespace A024199

/-- `A072371(n)-A001147(n)` -/
def P8838726983125278639.Spec : Prop :=
  ∀ n, P8838726983125278639.a n = A024199 n

end A024199

/-! ## A024199.P2781017918984571172

`abs(A001147(n)-A024200(n))`
-/

namespace A024199.P2781017918984571172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001147 n - A024200 n|

end

end A024199.P2781017918984571172

namespace A024199

/-- `abs(A001147(n)-A024200(n))` -/
def P2781017918984571172.Spec : Prop :=
  ∀ n, P2781017918984571172.a n = A024199 n

end A024199

/-! ## A024199.P2815568820428295155

`A330797(n)+a(n-1)*A004273(n)` with `a(0)=0`
-/

namespace A024199.P2815568820428295155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A330797 n + a (n - 1) * A004273 n

end

end A024199.P2815568820428295155

namespace A024199

/-- `A330797(n)+a(n-1)*A004273(n)` -/
def P2815568820428295155.Spec : Prop :=
  ∀ n, P2815568820428295155.a n = A024199 n

end A024199

/-! ## A024199.P4890323787690618915

`A330797(n)+a(n-1)*record[A006257(n)]` with `a(0)=0`
-/

namespace A024199.P4890323787690618915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A330797 n + a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024199.P4890323787690618915

namespace A024199

/-- `A330797(n)+a(n-1)*record[A006257(n)]` -/
def P4890323787690618915.Spec : Prop :=
  ∀ n, P4890323787690618915.a n = A024199 n

end A024199

/-! ## A024199.P11924239517287773315

`A330797(n)+a(n-1)*A109613(A004275(n))` with `a(0)=0`
-/

namespace A024199.P11924239517287773315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A330797 n + a (n - 1) * A109613 (A004275 n).toNat

end

end A024199.P11924239517287773315

namespace A024199

/-- `A330797(n)+a(n-1)*A109613(A004275(n))` -/
def P11924239517287773315.Spec : Prop :=
  ∀ n, P11924239517287773315.a n = A024199 n

end A024199

/-! ## A024199.P6566556425572690159

`A135457(n+1)/Δ[n²]`
-/

namespace A024199.P6566556425572690159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135457 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A024199.P6566556425572690159

namespace A024199

/-- `A135457(n+1)/Δ[n²]` -/
def P6566556425572690159.Spec : Prop :=
  ∀ n, P6566556425572690159.a n = (A024199 n : ℚ)

end A024199

