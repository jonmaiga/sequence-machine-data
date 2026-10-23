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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A124800: Let M be a diagonal matrix with A007442 on the diagonal and P = Pascal's triangle as an infinite lower triangular matrix. Now read the triangle P*M by rows.

The programs for A124800, there is no canonical definition to state claims against.
-/

/-! ## A124800.P15743391072591733580

`A007318(n)*A007442(A002260(n+1))`
-/

namespace A124800.P15743391072591733580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007442 (A002260 (n + 1)).toNat

end

end A124800.P15743391072591733580

/-! ## A124800.P1220379927372675332

`A277938(n)+A131554(A050344(n))`
-/

namespace A124800.P1220379927372675332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n + A131554 (A050344 n).toNat

end

end A124800.P1220379927372675332

/-! ## A124800.P1495131580415415824

`A295343(A322670(n))+A292783(n)`
-/

namespace A124800.P1495131580415415824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 (A322670 n).toNat + A292783 n

end

end A124800.P1495131580415415824

/-! ## A124800.P7334010307008285348

`A277938(n)+A114592(A059025(n+6))`
-/

namespace A124800.P7334010307008285348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n + A114592 (A059025 (n + 6)).toNat

end

end A124800.P7334010307008285348

/-!
# A124801: Triangle, row sums = Fibonacci numbers in two ways.

The programs for A124801, there is no canonical definition to state claims against.
-/

/-! ## A124801.P14524581997034621257

`A130595(A061579(n))%A299853(A266632(n+1))`
-/

namespace A124801.P14524581997034621257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130595 (A061579 n).toNat) (A299853 (A266632 (n + 1)).toNat)

end

end A124801.P14524581997034621257

/-! ## A124801.P1556903501530917622

`A119724(n)%A087123(A249026(n))`
-/

namespace A124801.P1556903501530917622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119724 n) (A087123 (A249026 n).toNat)

end

end A124801.P1556903501530917622

/-! ## A124801.P9364146218650639753

`(A119724(n)^A014963(59*n+23))%A061579(A166350(n+1))`
-/

namespace A124801.P9364146218650639753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A119724 n : ℚ) ^ (A014963 (59 * n + 23) : ℤ))) (A061579 (A166350 (n + 1)).toNat)

end

end A124801.P9364146218650639753

/-! ## A124801.P11287948094435301670

`-(A230861(n+1)%A046413(n+1))%A061579(A166350(n+1))`
-/

namespace A124801.P11287948094435301670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.tmod (A230861 (n + 1)) (A046413 (n + 1))) (A061579 (A166350 (n + 1)).toNat)

end

end A124801.P11287948094435301670

/-! ## A124801.P13576030082302282024

`A262964(n+1)-A335520(A325780(n+1))`
-/

namespace A124801.P13576030082302282024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262964 (n + 1) - A335520 (A325780 (n + 1)).toNat

end

end A124801.P13576030082302282024

/-!
# A124803: Number of base 31 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124803, there is no canonical definition to state claims against.
-/

/-! ## A124803.P10324263146673117062

`A000265(A124799(n)+A002426(n))`
-/

namespace A124803.P10324263146673117062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124799 n + A002426 n).toNat

end

end A124803.P10324263146673117062

/-! ## A124803.P13085257245142509044

`A000265(A124799(n)+A005213(2*n))`
-/

namespace A124803.P13085257245142509044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124799 n + A005213 (2 * n)).toNat

end

end A124803.P13085257245142509044

/-! ## A124803.P207873097272619522

`A000265(2*A124726(n)-A124716(n))`
-/

namespace A124803.P207873097272619522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A124726 n - A124716 n).toNat

end

end A124803.P207873097272619522

/-! ## A124803.P4536962347453361142

`A000265(A124799(n)+2*A097861(n)+1)`
-/

namespace A124803.P4536962347453361142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124799 n + (2 * A097861 n + 1)).toNat

end

end A124803.P4536962347453361142

/-! ## A124803.P8821853329341835360

`A000265(A124799(n)+2*A257520(n)-1)`
-/

namespace A124803.P8821853329341835360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124799 n + (2 * A257520 n - 1)).toNat

end

end A124803.P8821853329341835360

/-!
# A124804: Number of base 32 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124804, there is no canonical definition to state claims against.
-/

/-! ## A124804.P9377127460285768223

`A124803(n)+A014682(A124803(n)-A124784(n))`
-/

namespace A124804.P9377127460285768223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124803 n + A014682 (A124803 n - A124784 n).toNat

end

end A124804.P9377127460285768223

/-! ## A124804.P8762071059512783763

`A124783(n)+A014682(A124783(n)-A124713(n))`
-/

namespace A124804.P8762071059512783763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124783 n + A014682 (A124783 n - A124713 n).toNat

end

end A124804.P8762071059512783763

/-! ## A124804.P13402106915680227631

`A124784(n)+A014682(A124784(n)-A124716(n))`
-/

namespace A124804.P13402106915680227631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124784 n + A014682 (A124784 n - A124716 n).toNat

end

end A124804.P13402106915680227631

/-! ## A124804.P13891555953877078837

`A124799(n)+A014682(A124799(n)-A124719(n))`
-/

namespace A124804.P13891555953877078837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124799 n + A014682 (A124799 n - A124719 n).toNat

end

end A124804.P13891555953877078837

/-! ## A124804.P12287991928980054454

`A124719(n)+A014682(A124719(n)-A124707(n))`
-/

namespace A124804.P12287991928980054454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124719 n + A014682 (A124719 n - A124707 n).toNat

end

end A124804.P12287991928980054454

/-!
# A124805: Number of circular n-letter words over the alphabet {0,1,2,3} with adjacent letters differing by at most 2.

The programs for A124805, the canonical program `A124805.P5472377950496612053` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124805 has offset 0).

The definition of A124805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124805.P5472377950496612053

`4*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=46`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124805

/-- `4*a(n-1)-a(n-2)-2*a(n-3)` -/
def P5472377950496612053.Spec : Prop :=
  ∀ n, P5472377950496612053.a n = A124805 n

theorem P5472377950496612053.correct : P5472377950496612053.Spec := by
  intro n
  simp only [A124805]

end A124805

/-! ## A124805.P3534149297515027703

`∑[ogf((-1+x^2+4x^3)/(-1+3x+2x^2))]`
-/

namespace A124805.P3534149297515027703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -4] [1, -3, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124805.P3534149297515027703

namespace A124805

/-- `∑[ogf((-1+x^2+4x^3)/(-1+3x+2x^2))]` -/
def P3534149297515027703.Spec : Prop :=
  ∀ n, P3534149297515027703.a n = A124805 n

end A124805

/-! ## A124805.P14395191259715290583

`ogf((1-x^2-4x^3)/(1-4x+x^2+2x^3))`
-/

namespace A124805.P14395191259715290583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -4] [1, -4, 1, 2] n

end

end A124805.P14395191259715290583

namespace A124805

/-- `ogf((1-x^2-4x^3)/(1-4x+x^2+2x^3))` -/
def P14395191259715290583.Spec : Prop :=
  ∀ n, P14395191259715290583.a n = A124805 n

end A124805

/-! ## A124805.P1521580864254253885

`gcd(A206776(n)+1, floor(acot(n)))`
-/

namespace A124805.P1521580864254253885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206776 n + 1) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A124805.P1521580864254253885

namespace A124805

/-- `gcd(A206776(n)+1, floor(acot(n)))` -/
def P1521580864254253885.Spec : Prop :=
  ∀ n, (P1521580864254253885.a n : ℤ) = A124805 n

end A124805

/-! ## A124805.P18400246714386261907

`A206776(n)+A158388(n)`
-/

namespace A124805.P18400246714386261907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + A158388 n

end

end A124805.P18400246714386261907

namespace A124805

/-- `A206776(n)+A158388(n)` -/
def P18400246714386261907.Spec : Prop :=
  ∀ n, P18400246714386261907.a n = A124805 n

end A124805

/-! ## A124805.P6671550388963689074

`A007483(n)+1-A322940(n)`
-/

namespace A124805.P6671550388963689074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n + (1 - A322940 n)

end

end A124805.P6671550388963689074

namespace A124805

/-- `A007483(n)+1-A322940(n)` -/
def P6671550388963689074.Spec : Prop :=
  ∀ n, P6671550388963689074.a n = A124805 n

end A124805

/-! ## A124805.P16258679291980383847

`A206776(n)-A153881(n+1)`
-/

namespace A124805.P16258679291980383847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A153881 (n + 1)

end

end A124805.P16258679291980383847

namespace A124805

/-- `A206776(n)-A153881(n+1)` -/
def P16258679291980383847.Spec : Prop :=
  ∀ n, P16258679291980383847.a n = A124805 n

end A124805

/-! ## A124805.P4256220315727533557

`A206776(n)-A008683(A008578(n+1))`
-/

namespace A124805.P4256220315727533557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A008683 (A008578 (n + 1)).toNat

end

end A124805.P4256220315727533557

namespace A124805

/-- `A206776(n)-A008683(A008578(n+1))` -/
def P4256220315727533557.Spec : Prop :=
  ∀ n, P4256220315727533557.a n = A124805 n

end A124805

/-! ## A124805.P4977753867131135619

`A206776(n)+A033999(A008486(2*n))`
-/

namespace A124805.P4977753867131135619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + A033999 (A008486 (2 * n)).toNat

end

end A124805.P4977753867131135619

namespace A124805

/-- `A206776(n)+A033999(A008486(2*n))` -/
def P4977753867131135619.Spec : Prop :=
  ∀ n, P4977753867131135619.a n = A124805 n

end A124805

/-! ## A124805.P14360775293877667806

`A206776(n)+A033999(A008486(n)+n)`
-/

namespace A124805.P14360775293877667806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + A033999 (A008486 n + (n : ℤ)).toNat

end

end A124805.P14360775293877667806

namespace A124805

/-- `A206776(n)+A033999(A008486(n)+n)` -/
def P14360775293877667806.Spec : Prop :=
  ∀ n, P14360775293877667806.a n = A124805 n

end A124805

/-! ## A124805.P9897830222744884053

`A206776(n)-A033999(record[A006530(n+2)])`
-/

namespace A124805.P9897830222744884053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A033999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124805.P9897830222744884053

namespace A124805

/-- `A206776(n)-A033999(record[A006530(n+2)])` -/
def P9897830222744884053.Spec : Prop :=
  ∀ n, P9897830222744884053.a n = A124805 n

end A124805

/-! ## A124805.P16362787499816214528

`A206776(n)+A033999(record[A014963(n+2)-1])`
-/

namespace A124805.P16362787499816214528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + A033999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124805.P16362787499816214528

namespace A124805

/-- `A206776(n)+A033999(record[A014963(n+2)-1])` -/
def P16362787499816214528.Spec : Prop :=
  ∀ n, P16362787499816214528.a n = A124805 n

end A124805

/-! ## A124805.P1758773481047141743

`A206776(n)%A000079(n)²+1`
-/

namespace A124805.P1758773481047141743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206776 n) (A000079 n ^ 2) + 1

end

end A124805.P1758773481047141743

namespace A124805

/-- `A206776(n)%A000079(n)²+1` -/
def P1758773481047141743.Spec : Prop :=
  ∀ n, P1758773481047141743.a n = A124805 n

end A124805

/-! ## A124805.P7939994654298306704

`A206776(n)%A024055(n)+1`
-/

namespace A124805.P7939994654298306704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206776 n) (A024055 n) + 1

end

end A124805.P7939994654298306704

namespace A124805

/-- `A206776(n)%A024055(n)+1` -/
def P7939994654298306704.Spec : Prop :=
  ∀ n, P7939994654298306704.a n = A124805 n

end A124805

/-! ## A124805.P8629548721140024061

`A206776(n)+A033999(A242593(n))`
-/

namespace A124805.P8629548721140024061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + A033999 (A242593 n).toNat

end

end A124805.P8629548721140024061

namespace A124805

/-- `A206776(n)+A033999(A242593(n))` -/
def P8629548721140024061.Spec : Prop :=
  ∀ n, P8629548721140024061.a n = A124805 n

end A124805

/-! ## A124805.P1641369911523845266

`A206776(n)-A033999(A006530(n²+2))`
-/

namespace A124805.P1641369911523845266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A033999 (A006530 (n ^ 2 + 2)).toNat

end

end A124805.P1641369911523845266

namespace A124805

/-- `A206776(n)-A033999(A006530(n²+2))` -/
def P1641369911523845266.Spec : Prop :=
  ∀ n, P1641369911523845266.a n = A124805 n

end A124805

/-!
# A124806: Number of circular n-letter words over the alphabet {0,1,2,3,4} with adjacent letters differing by at most 2.

The programs for A124806, the canonical program `A124806.P2216853128771462071` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124806 has offset 0).

The definition of A124806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124806.P2216853128771462071

`5*a(n-1)-3*a(n-2)-5*a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=65, a(4)=247, a(5)=955`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124806

/-- `5*a(n-1)-3*a(n-2)-5*a(n-3)+a(n-4)+a(n-5)` -/
def P2216853128771462071.Spec : Prop :=
  ∀ n, P2216853128771462071.a n = A124806 n

theorem P2216853128771462071.correct : P2216853128771462071.Spec := by
  intro n
  simp only [A124806]

end A124806

/-! ## A124806.P17129708699138916358

`A285280(∑[n+1]+n+7)`
-/

namespace A124806.P17129708699138916358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A124806.P17129708699138916358

namespace A124806

/-- `A285280(∑[n+1]+n+7)` -/
def P17129708699138916358.Spec : Prop :=
  ∀ n, P17129708699138916358.a n = A124806 n

end A124806

/-! ## A124806.P17917132994418664686

`or(1, A285280(A167499(n+1)))`
-/

namespace A124806.P17917132994418664686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285280 (A167499 (n + 1)).toNat)

end

end A124806.P17917132994418664686

namespace A124806

/-- `or(1, A285280(A167499(n+1)))` -/
def P17917132994418664686.Spec : Prop :=
  ∀ n, P17917132994418664686.a n = A124806 n

end A124806

/-! ## A124806.P12340306038670560775

`record[gcd(A285280(n+3), A303913(n))]`
-/

namespace A124806.P12340306038670560775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285280 (n + 3)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124806.P12340306038670560775

namespace A124806

/-- `record[gcd(A285280(n+3), A303913(n))]` -/
def P12340306038670560775.Spec : Prop :=
  ∀ n, (P12340306038670560775.a n : ℤ) = A124806 n

end A124806

/-! ## A124806.P517019538404355800

`A285280(A167499(n+1))+A000007(n+1)`
-/

namespace A124806.P517019538404355800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167499 (n + 1)).toNat + A000007 (n + 1)

end

end A124806.P517019538404355800

namespace A124806

/-- `A285280(A167499(n+1))+A000007(n+1)` -/
def P517019538404355800.Spec : Prop :=
  ∀ n, P517019538404355800.a n = A124806 n

end A124806

/-!
# A124807: Number of base-6 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124807, there is no canonical definition to state claims against.
-/

/-! ## A124807.P5479367000730504377

`A285280(∑[n+3]+9)`
-/

namespace A124807.P5479367000730504377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A124807.P5479367000730504377

/-! ## A124807.P10791169678261114140

`A124949(n)%A008597(A005191(n))`
-/

namespace A124807.P10791169678261114140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124949 n) (A008597 (A005191 n).toNat)

end

end A124807.P10791169678261114140

/-! ## A124807.P15540813504869088485

`A028310(A124828(n)-A005191(n))`
-/

namespace A124807.P15540813504869088485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A124828 n - A005191 n).toNat

end

end A124807.P15540813504869088485

/-!
# A124808: Number of numbers k <= n such that k^2 + 1 is squarefree.

The programs for A124808, the canonical program `A124808.P6042525757287818510` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124808 has offset 0).

The definition of A124808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124808.P6251205189813984446

`∑[char[comp[A049532(n+1)]]]`
-/

namespace A124808.P6251205189813984446
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P6251205189813984446

namespace A124808

/-- `∑[char[comp[A049532(n+1)]]]` -/
def P6251205189813984446.Spec : Prop :=
  ∀ n, (P6251205189813984446.a n : ℤ) = A124808 n

end A124808

/-! ## A124808.P10375326422941773566

`∑[and(2, A278162(n))/2]+1`
-/

namespace A124808.P10375326422941773566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A278162 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124808.P10375326422941773566

namespace A124808

/-- `∑[and(2, A278162(n))/2]+1` -/
def P10375326422941773566.Spec : Prop :=
  ∀ n, P10375326422941773566.a n = (A124808 n : ℚ)

end A124808

/-! ## A124808.P6042525757287818510

`a(n-1)+A124897(n)²` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124808

/-- `a(n-1)+A124897(n)²` -/
def P6042525757287818510.Spec : Prop :=
  ∀ n, P6042525757287818510.a n = A124808 n

theorem P6042525757287818510.correct : P6042525757287818510.Spec := by
  intro n
  simp only [A124808]

end A124808

/-! ## A124808.P17552906889187115256

`∑[abs(A008683(A278162(n)))]`
-/

namespace A124808.P17552906889187115256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A278162 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P17552906889187115256

namespace A124808

/-- `∑[abs(A008683(A278162(n)))]` -/
def P17552906889187115256.Spec : Prop :=
  ∀ n, P17552906889187115256.a n = A124808 n

end A124808

/-! ## A124808.P1446133056124707141

`∑[abs(A240330(A059592(n)))]`
-/

namespace A124808.P1446133056124707141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A240330 (A059592 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P1446133056124707141

namespace A124808

/-- `∑[abs(A240330(A059592(n)))]` -/
def P1446133056124707141.Spec : Prop :=
  ∀ n, P1446133056124707141.a n = A124808 n

end A124808

/-! ## A124808.P2598880878648905641

`A289435(2*(n+1))-∑[char[A049532(n+1)]]`
-/

namespace A124808.P2598880878648905641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A124808.P2598880878648905641

namespace A124808

/-- `A289435(2*(n+1))-∑[char[A049532(n+1)]]` -/
def P2598880878648905641.Spec : Prop :=
  ∀ n, P2598880878648905641.a n = A124808 n

end A124808

/-! ## A124808.P6742903331032600852

`∑[floor((1/∏{e}[n²+1, #])²)]`
-/

namespace A124808.P6742903331032600852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P6742903331032600852

namespace A124808

/-- `∑[floor((1/∏{e}[n²+1, #])²)]` -/
def P6742903331032600852.Spec : Prop :=
  ∀ n, P6742903331032600852.a n = A124808 n

end A124808

/-! ## A124808.P12553344516301994688

`∑[A008966(n²+1)]`
-/

namespace A124808.P12553344516301994688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P12553344516301994688

namespace A124808

/-- `∑[A008966(n²+1)]` -/
def P12553344516301994688.Spec : Prop :=
  ∀ n, P12553344516301994688.a n = A124808 n

end A124808

/-! ## A124808.P2385759377287506400

`∑[A359377(n²+1)]`
-/

namespace A124808.P2385759377287506400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P2385759377287506400

namespace A124808

/-- `∑[A359377(n²+1)]` -/
def P2385759377287506400.Spec : Prop :=
  ∀ n, P2385759377287506400.a n = A124808 n

end A124808

/-! ## A124808.P5584879313759961833

`∑[A359834(n²+1)]`
-/

namespace A124808.P5584879313759961833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P5584879313759961833

namespace A124808

/-- `∑[A359834(n²+1)]` -/
def P5584879313759961833.Spec : Prop :=
  ∀ n, P5584879313759961833.a n = A124808 n

end A124808

/-! ## A124808.P13564102683183280055

`∑[abs(A008683(n²+1))]`
-/

namespace A124808.P13564102683183280055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n ^ 2 + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P13564102683183280055

namespace A124808

/-- `∑[abs(A008683(n²+1))]` -/
def P13564102683183280055.Spec : Prop :=
  ∀ n, P13564102683183280055.a n = A124808 n

end A124808

/-! ## A124808.P11115832091180556160

`∑[A008683(2-∑[1-2*n])²]`
-/

namespace A124808.P11115832091180556160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P11115832091180556160

namespace A124808

/-- `∑[A008683(2-∑[1-2*n])²]` -/
def P11115832091180556160.Spec : Prop :=
  ∀ n, P11115832091180556160.a n = A124808 n

end A124808

/-! ## A124808.P17298274099257652432

`∑[and(1, A008683((n+1)*(n-1)+2))]`
-/

namespace A124808.P17298274099257652432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008683 ((n + 1 : ℤ) * ((n : ℤ) - 1) + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P17298274099257652432

namespace A124808

/-- `∑[and(1, A008683((n+1)*(n-1)+2))]` -/
def P17298274099257652432.Spec : Prop :=
  ∀ n, P17298274099257652432.a n = A124808 n

end A124808

/-! ## A124808.P17590326495547245327

`a(n-1)+A008683((n+1)²-2*n)²` with `a(0)=1`
-/

namespace A124808.P17590326495547245327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008683 ((n + 1) ^ 2 - 2 * n) ^ 2

end

end A124808.P17590326495547245327

namespace A124808

/-- `a(n-1)+A008683((n+1)²-2*n)²` -/
def P17590326495547245327.Spec : Prop :=
  ∀ n, P17590326495547245327.a n = A124808 n

end A124808

/-! ## A124808.P9810957489481395025

`∑[A323154(n²+1)]`
-/

namespace A124808.P9810957489481395025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P9810957489481395025

namespace A124808

/-- `∑[A323154(n²+1)]` -/
def P9810957489481395025.Spec : Prop :=
  ∀ n, P9810957489481395025.a n = A124808 n

end A124808

/-! ## A124808.P5780360759373320900

`∑[A353559(n²+1)]`
-/

namespace A124808.P5780360759373320900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353559 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P5780360759373320900

namespace A124808

/-- `∑[A353559(n²+1)]` -/
def P5780360759373320900.Spec : Prop :=
  ∀ n, P5780360759373320900.a n = A124808 n

end A124808

/-! ## A124808.P10336907925071905015

`∑[A353627(n²+1)]`
-/

namespace A124808.P10336907925071905015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P10336907925071905015

namespace A124808

/-- `∑[A353627(n²+1)]` -/
def P10336907925071905015.Spec : Prop :=
  ∀ n, P10336907925071905015.a n = A124808 n

end A124808

/-! ## A124808.P4879706227073006892

`∑[A364250(n²+1)]`
-/

namespace A124808.P4879706227073006892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364250 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P4879706227073006892

namespace A124808

/-- `∑[A364250(n²+1)]` -/
def P4879706227073006892.Spec : Prop :=
  ∀ n, P4879706227073006892.a n = A124808 n

end A124808

/-! ## A124808.P12633113738988401770

`∑[A240330(A059592(n)²)²]`
-/

namespace A124808.P12633113738988401770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 (A059592 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P12633113738988401770

namespace A124808

/-- `∑[A240330(A059592(n)²)²]` -/
def P12633113738988401770.Spec : Prop :=
  ∀ n, P12633113738988401770.a n = A124808 n

end A124808

/-! ## A124808.P11996725809884148723

`∑[A384667(n²+1)]`
-/

namespace A124808.P11996725809884148723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124808.P11996725809884148723

namespace A124808

/-- `∑[A384667(n²+1)]` -/
def P11996725809884148723.Spec : Prop :=
  ∀ n, P11996725809884148723.a n = A124808 n

end A124808

/-!
# A124809: Numbers of the form (square + 1) that are not squarefree.

The programs for A124809, there is no canonical definition to state claims against.
-/

/-! ## A124809.P11905510922868219546

`A049532(n+1)²+1`
-/

namespace A124809.P11905510922868219546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1) ^ 2 + 1

end

end A124809.P11905510922868219546

/-! ## A124809.P2559968266122463480

`A002522(A049532(n+1))`
-/

namespace A124809.P2559968266122463480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A049532 (n + 1)).toNat

end

end A124809.P2559968266122463480

/-! ## A124809.P696528759278562703

`A002522(lt[A059591(n), n²])`
-/

namespace A124809.P696528759278562703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124809.P696528759278562703

/-! ## A124809.P15022749061362942649

`A002061(A049532(n+1)+1)-A049532(n+1)`
-/

namespace A124809.P15022749061362942649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A049532 (n + 1) + 1).toNat - A049532 (n + 1)

end

end A124809.P15022749061362942649

/-! ## A124809.P14092133218922041805

`A005171(2*n+4)+A000290(A049532(n+1))`
-/

namespace A124809.P14092133218922041805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 4) + A000290 (A049532 (n + 1)).toNat

end

end A124809.P14092133218922041805

/-! ## A124809.P566846470255103880

`A000290(A049532(n+1)%A218562(n+1))+1`
-/

namespace A124809.P566846470255103880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A049532 (n + 1)) (A218562 (n + 1))).toNat + 1

end

end A124809.P566846470255103880

/-! ## A124809.P7570924472684036821

`A001511(n+n+1)+A000290(A049532(n+1))`
-/

namespace A124809.P7570924472684036821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + n + 1) + A000290 (A049532 (n + 1)).toNat

end

end A124809.P7570924472684036821

/-! ## A124809.P9405086066479533795

`A013945(2*A049532(n+1))`
-/

namespace A124809.P9405086066479533795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (2 * A049532 (n + 1)).toNat

end

end A124809.P9405086066479533795

/-! ## A124809.P10513248007070227763

`A087279(2*A049532(n+1))`
-/

namespace A124809.P10513248007070227763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * A049532 (n + 1)).toNat

end

end A124809.P10513248007070227763

/-! ## A124809.P6625010287841290869

`A013945(A049532(n+1)+A049532(n+1))`
-/

namespace A124809.P6625010287841290869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (A049532 (n + 1) + A049532 (n + 1)).toNat

end

end A124809.P6625010287841290869

/-! ## A124809.P15534659037586771773

`∩[A031397(n+1), n²+1]`
-/

namespace A124809.P15534659037586771773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A124809.P15534659037586771773

/-! ## A124809.P5781464605385882996

`∩[A002522(n), A031397(n+1)]`
-/

namespace A124809.P5781464605385882996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P5781464605385882996

/-! ## A124809.P2194640576712348681

`∩[A087278(n), A031397(n+1)]`
-/

namespace A124809.P2194640576712348681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P2194640576712348681

/-! ## A124809.P6248607050035639485

`∩[A050800(n+1), A031397(n+1)]`
-/

namespace A124809.P6248607050035639485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P6248607050035639485

/-! ## A124809.P14858983209201235198

`∩[A087279(n+1), A031397(n+1)]`
-/

namespace A124809.P14858983209201235198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P14858983209201235198

/-! ## A124809.P13683317709292752133

`∩[A134406(n+1), A031397(n+1)]`
-/

namespace A124809.P13683317709292752133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P13683317709292752133

/-! ## A124809.P10345708776169911190

`∩[A216765(n+1), A031397(n+1)]`
-/

namespace A124809.P10345708776169911190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P10345708776169911190

/-! ## A124809.P14860629505763344735

`∩[n²+1, A034025(n)]`
-/

namespace A124809.P14860629505763344735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P14860629505763344735

/-! ## A124809.P6589255320240049211

`∩[A034025(n), A002522(n)]`
-/

namespace A124809.P6589255320240049211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P6589255320240049211

/-! ## A124809.P7939479174219964096

`∩[A034025(n), A034106(n+1)]`
-/

namespace A124809.P7939479174219964096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124809.P7939479174219964096

/-!
# A124810: Number of 4-ary Lyndon words of length n with exactly two 1s.

The programs for A124810, there is no canonical definition to state claims against.
-/

/-! ## A124810.P1993570985314912871

`A124814(∑[n+3]+5)`
-/

namespace A124810.P1993570985314912871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124810.P1993570985314912871

/-! ## A124810.P13048320970184983649

`record[A124814(A133263(n))]`
-/

namespace A124810.P13048320970184983649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124810.P13048320970184983649

/-! ## A124810.P10962309267686738627

`record[A124814(A238531(n))]`
-/

namespace A124810.P10962309267686738627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124810.P10962309267686738627

/-! ## A124810.P6461178704744624246

`record[A124814(A022856(n+1))]`
-/

namespace A124810.P6461178704744624246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124810.P6461178704744624246

/-! ## A124810.P2962916864344920204

`record[A124814(A167487(n)-5)]`
-/

namespace A124810.P2962916864344920204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A167487 n - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124810.P2962916864344920204

/-!
# A124811: Number of 4-ary Lyndon words of length n with exactly three 1s.

The programs for A124811, there is no canonical definition to state claims against.
-/

/-! ## A124811.P9353288383945808796

`A124814(∑[n+4]+9)`
-/

namespace A124811.P9353288383945808796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A124811.P9353288383945808796

/-!
# A124812: Number of 4-ary Lyndon words of length n with exactly four 1s.

The programs for A124812, there is no canonical definition to state claims against.
-/

/-! ## A124812.P6873218388905056319

`A124814(A000217(n+5)+4)`
-/

namespace A124812.P6873218388905056319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A000217 (n + 5) + 4).toNat

end

end A124812.P6873218388905056319

/-! ## A124812.P3076521028805650150

`A124814(A052905(n+2)+9)`
-/

namespace A124812.P3076521028805650150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A052905 (n + 2) + 9).toNat

end

end A124812.P3076521028805650150

/-! ## A124812.P6504298500739509470

`A124814(A155212(n+1)+12)`
-/

namespace A124812.P6504298500739509470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A155212 (n + 1) + 12).toNat

end

end A124812.P6504298500739509470

/-!
# A124813: Number of 4-ary Lyndon words of length n with exactly five 1s.

The programs for A124813, there is no canonical definition to state claims against.
-/

/-! ## A124813.P4680994769659556083

`A124814(A000124(n+6)+4)`
-/

namespace A124813.P4680994769659556083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A000124 (n + 6) + 4).toNat

end

end A124813.P4680994769659556083

/-! ## A124813.P6050352363283258376

`A124814(A000096(n+5)+6)`
-/

namespace A124813.P6050352363283258376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A000096 (n + 5) + 6).toNat

end

end A124813.P6050352363283258376

/-! ## A124813.P6884085715229519565

`A124814(A000217(n+6)+5)`
-/

namespace A124813.P6884085715229519565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A000217 (n + 6) + 5).toNat

end

end A124813.P6884085715229519565

/-! ## A124813.P4889208999445933246

`A124814(A052905(n+3)+10)`
-/

namespace A124813.P4889208999445933246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (A052905 (n + 3) + 10).toNat

end

end A124813.P4889208999445933246

/-! ## A124813.P12043830384336661883

`A124814(eq[7, A002260(n+1)]-1)`
-/

namespace A124813.P12043830384336661883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A124813.P12043830384336661883

/-!
# A124815: Expansion of q * psi(q)^2 * psi(-q^3)^2 * phi(-q^6) / phi(-q^2) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A124815, the canonical program `A124815.P7342009755196343803` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124815 has offset 1).

The definition of A124815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124815.P9382443782218006820

`∑{d}[n+1, #*A110161((n+1)/#)]`
-/

namespace A124815.P9382443782218006820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A110161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P9382443782218006820

namespace A124815

/-- `∑{d}[n+1, #*A110161((n+1)/#)]` -/
def P9382443782218006820.Spec : Prop :=
  ∀ n, P9382443782218006820.a n = A124815 (n + 1)

end A124815

/-! ## A124815.P7856197277574103444

`lcm(A113421(n+1), A209613(n+1))`
-/

namespace A124815.P7856197277574103444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113421 (n + 1)) (A209613 (n + 1))

end

end A124815.P7856197277574103444

namespace A124815

/-- `lcm(A113421(n+1), A209613(n+1))` -/
def P7856197277574103444.Spec : Prop :=
  ∀ n, (P7856197277574103444.a n : ℤ) = A124815 (n + 1)

end A124815

/-! ## A124815.P5969176820166293700

`∑{d}[n+1, A000010(#)*A035194((n+1)/#)]`
-/

namespace A124815.P5969176820166293700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P5969176820166293700

namespace A124815

/-- `∑{d}[n+1, A000010(#)*A035194((n+1)/#)]` -/
def P5969176820166293700.Spec : Prop :=
  ∀ n, P5969176820166293700.a n = A124815 (n + 1)

end A124815

/-! ## A124815.P17538873356055610402

`∑{d}[n+1, A035186(#)*A126246((n+1)/#)]`
-/

namespace A124815.P17538873356055610402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035186 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P17538873356055610402

namespace A124815

/-- `∑{d}[n+1, A035186(#)*A126246((n+1)/#)]` -/
def P17538873356055610402.Spec : Prop :=
  ∀ n, P17538873356055610402.a n = A124815 (n + 1)

end A124815

/-! ## A124815.P7342009755196343803

`∑{d}[n+1, A080512(#)*A091338((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124815

/-- `∑{d}[n+1, A080512(#)*A091338((n+1)/#)]` -/
def P7342009755196343803.Spec : Prop :=
  ∀ n, P7342009755196343803.a n = A124815 (n + 1)

theorem P7342009755196343803.correct : P7342009755196343803.Spec := by
  intro n
  simp only [A124815, Nat.add_sub_cancel]

end A124815

/-! ## A124815.P11573643795131584914

`∑{d}[n+1, A129448(#)*A227128((n+1)/#)]`
-/

namespace A124815.P11573643795131584914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129448 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P11573643795131584914

namespace A124815

/-- `∑{d}[n+1, A129448(#)*A227128((n+1)/#)]` -/
def P11573643795131584914.Spec : Prop :=
  ∀ n, P11573643795131584914.a n = A124815 (n + 1)

end A124815

/-! ## A124815.P2531545376354465708

`∑{d}[n+1, A091338(#)*A257143((n+1)/#)]`
-/

namespace A124815.P2531545376354465708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091338 d * A257143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P2531545376354465708

namespace A124815

/-- `∑{d}[n+1, A091338(#)*A257143((n+1)/#)]` -/
def P2531545376354465708.Spec : Prop :=
  ∀ n, P2531545376354465708.a n = A124815 (n + 1)

end A124815

/-!
# A124816: Product of Riordan array (1,x(1-x^2))^(-1) and number triangle T(n,k)=C(floor(k/2),n-k).

The programs for A124816, there is no canonical definition to state claims against.
-/

/-! ## A124816.P1793345795796779006

`A124790(n)-A124761(A124730(n+1))`
-/

namespace A124816.P1793345795796779006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124790 n - A124761 (A124730 (n + 1)).toNat

end

end A124816.P1793345795796779006

/-! ## A124816.P4996801294033815027

`and(A105821(n+1), A332108(A335362(n+1)))`
-/

namespace A124816.P4996801294033815027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105821 (n + 1)) (A332108 (A335362 (n + 1)).toNat)

end

end A124816.P4996801294033815027

/-! ## A124816.P11865270816558220281

`and(A049820(A124363(n+4)), A105821(n+1))`
-/

namespace A124816.P11865270816558220281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049820 (A124363 (n + 4)).toNat) (A105821 (n + 1))

end

end A124816.P11865270816558220281

/-! ## A124816.P4131190166477058216

`A105821(n+1)%(A008683(A228969(n+2))+2)²`
-/

namespace A124816.P4131190166477058216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105821 (n + 1)) ((A008683 (A228969 (n + 2)).toNat + 2) ^ 2)

end

end A124816.P4131190166477058216

/-! ## A124816.P9936547693858940868

`A088205(A361954(n+1))`
-/

namespace A124816.P9936547693858940868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (A361954 (n + 1)).toNat

end

end A124816.P9936547693858940868

/-!
# A124817: Interpolation of A001764(n+1) and A006629(n).

The programs for A124817, there is no canonical definition to state claims against.
-/

/-! ## A124817.P15501750368104029945

`A370060(∑[n+2])`
-/

namespace A124817.P15501750368104029945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124817.P15501750368104029945

/-! ## A124817.P10715765036259256520

`A167763(∑[or(1, n+2)])`
-/

namespace A124817.P10715765036259256520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124817.P10715765036259256520

/-! ## A124817.P3937696394240885507

`record[A111373(3*(n+1))]+floor(acot(n))`
-/

namespace A124817.P3937696394240885507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111373 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A124817.P3937696394240885507

/-! ## A124817.P9695081713984330817

`A167763(∑[n+3]+1-floor(n/2))`
-/

namespace A124817.P9695081713984330817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A124817.P9695081713984330817

/-! ## A124817.P11094028462625595166

`A073147(eq[1, A277504(n)])`
-/

namespace A124817.P11094028462625595166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124817.P11094028462625595166

/-!
# A124818: Row sums of number triangle A124816.

The programs for A124818, there is no canonical definition to state claims against.
-/

/-! ## A124818.P4902941633840319298

`A003987(A275947(3*n)+A165545(n))`
-/

namespace A124818.P4902941633840319298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A275947 (3 * n) + A165545 n).toNat

end

end A124818.P4902941633840319298

/-!
# A124819: Number triangle T(n,k)=C(n+2k+1,3k+1).

The programs for A124819, the canonical program `A124819.P1078954329039168482` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124819 has offset 0).

The definition of A124819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124819.P1078954329039168482

`C(A005408(n)-A003056(n)², A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A124819

/-- `C(A005408(n)-A003056(n)², A025581(n))` -/
def P1078954329039168482.Spec : Prop :=
  ∀ n, (P1078954329039168482.a n : ℤ) = A124819 n

theorem P1078954329039168482.correct : P1078954329039168482.Spec := by
  intro n
  simp only [A124819]

end A124819

/-! ## A124819.P10383660514843074342

`A127893(n)-A206294(n+1)`
-/

namespace A124819.P10383660514843074342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 n - A206294 (n + 1)

end

end A124819.P10383660514843074342

namespace A124819

/-- `A127893(n)-A206294(n+1)` -/
def P10383660514843074342.Spec : Prop :=
  ∀ n, P10383660514843074342.a n = A124819 n

end A124819

/-! ## A124819.P17013447829594271415

`A102547(n+1+2*A061579(n))`
-/

namespace A124819.P17013447829594271415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 ((n + 1 : ℤ) + 2 * A061579 n).toNat

end

end A124819.P17013447829594271415

namespace A124819

/-- `A102547(n+1+2*A061579(n))` -/
def P17013447829594271415.Spec : Prop :=
  ∀ n, P17013447829594271415.a n = A124819 n

end A124819

/-! ## A124819.P8703263388979350307

`A102547(A061579(n)+∑[A198954(n)])`
-/

namespace A124819.P8703263388979350307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A061579 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124819.P8703263388979350307

namespace A124819

/-- `A102547(A061579(n)+∑[A198954(n)])` -/
def P8703263388979350307.Spec : Prop :=
  ∀ n, P8703263388979350307.a n = A124819 n

end A124819

/-! ## A124819.P562706789324179816

`A102547(A093995(n+1)+A061579(n))`
-/

namespace A124819.P562706789324179816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A093995 (n + 1) + A061579 n).toNat

end

end A124819.P562706789324179816

namespace A124819

/-- `A102547(A093995(n+1)+A061579(n))` -/
def P562706789324179816.Spec : Prop :=
  ∀ n, P562706789324179816.a n = A124819 n

end A124819

/-! ## A124819.P12810924843524569885

`A102547(A061579(n)+A002024(n+1)²)`
-/

namespace A124819.P12810924843524569885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A061579 n + A002024 (n + 1) ^ 2).toNat

end

end A124819.P12810924843524569885

namespace A124819

/-- `A102547(A061579(n)+A002024(n+1)²)` -/
def P12810924843524569885.Spec : Prop :=
  ∀ n, P12810924843524569885.a n = A124819 n

end A124819

/-! ## A124819.P18392977577463421593

`abs(A124019(n))`
-/

namespace A124819.P18392977577463421593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124019 n|

end

end A124819.P18392977577463421593

namespace A124819

/-- `abs(A124019(n))` -/
def P18392977577463421593.Spec : Prop :=
  ∀ n, P18392977577463421593.a n = A124819 n

end A124819

/-! ## A124819.P16296812453074758396

`A097807(n)*A124019(n)`
-/

namespace A124819.P16296812453074758396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A124019 n

end

end A124819.P16296812453074758396

namespace A124819

/-- `A097807(n)*A124019(n)` -/
def P16296812453074758396.Spec : Prop :=
  ∀ n, P16296812453074758396.a n = A124819 n

end A124819

/-! ## A124819.P11353719729760511257

`gcd(A000038(n), A124019(n))`
-/

namespace A124819.P11353719729760511257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124019 n)

end

end A124819.P11353719729760511257

namespace A124819

/-- `gcd(A000038(n), A124019(n))` -/
def P11353719729760511257.Spec : Prop :=
  ∀ n, (P11353719729760511257.a n : ℤ) = A124819 n

end A124819

/-! ## A124819.P2214012128748525545

`lcm(A020985(n), A124019(n))`
-/

namespace A124819.P2214012128748525545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124019 n)

end

end A124819.P2214012128748525545

namespace A124819

/-- `lcm(A020985(n), A124019(n))` -/
def P2214012128748525545.Spec : Prop :=
  ∀ n, (P2214012128748525545.a n : ℤ) = A124819 n

end A124819

/-!
# A124820: Expansion of (1-x)/(1-4*x+3*x^2-x^3).

The programs for A124820, the canonical program `A124820.P16344321044411149499` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124820 has offset 0).

The definition of A124820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x+3x^2-x^3))` (program `A124820.P16344321044411149499`, by `A124820.P16344321044411149499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124820.P16344321044411149499

`ogf((1-x)/(1-4x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124820

/-- `ogf((1-x)/(1-4x+3x^2-x^3))` -/
def P16344321044411149499.Spec : Prop :=
  ∀ n, P16344321044411149499.a n = A124820 n

theorem P16344321044411149499.correct : P16344321044411149499.Spec := by
  intro n
  simp only [A124820]

end A124820

/-! ## A124820.P3957814083853428060

`∑[A052544(n)]`
-/

namespace A124820.P3957814083853428060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124820.P3957814083853428060

namespace A124820

/-- `∑[A052544(n)]` -/
def P3957814083853428060.Spec : Prop :=
  ∀ n, P3957814083853428060.a n = A124820 n

end A124820

/-! ## A124820.P8948014307613946344

`A068921(3*n)`
-/

namespace A124820.P8948014307613946344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (3 * n)

end

end A124820.P8948014307613946344

namespace A124820

/-- `A068921(3*n)` -/
def P8948014307613946344.Spec : Prop :=
  ∀ n, P8948014307613946344.a n = A124820 n

end A124820

/-! ## A124820.P13217775042571039721

`∑[∑[A052529(n)]]`
-/

namespace A124820.P13217775042571039721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124820.P13217775042571039721

namespace A124820

/-- `∑[∑[A052529(n)]]` -/
def P13217775042571039721.Spec : Prop :=
  ∀ n, P13217775042571039721.a n = A124820 n

end A124820

/-! ## A124820.P11366625651308817196

`∑[A204200(n+2)]`
-/

namespace A124820.P11366625651308817196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204200 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124820.P11366625651308817196

namespace A124820

/-- `∑[A204200(n+2)]` -/
def P11366625651308817196.Spec : Prop :=
  ∀ n, P11366625651308817196.a n = A124820 n

end A124820

/-! ## A124820.P2724461223981192327

`∑[A000930(3*n)]`
-/

namespace A124820.P2724461223981192327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124820.P2724461223981192327

namespace A124820

/-- `∑[A000930(3*n)]` -/
def P2724461223981192327.Spec : Prop :=
  ∀ n, P2724461223981192327.a n = A124820 n

end A124820

/-! ## A124820.P17130028873453320822

`A000930(3*n+1)`
-/

namespace A124820.P17130028873453320822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n + 1)

end

end A124820.P17130028873453320822

namespace A124820

/-- `A000930(3*n+1)` -/
def P17130028873453320822.Spec : Prop :=
  ∀ n, P17130028873453320822.a n = A124820 n

end A124820

/-! ## A124820.P10153762642815965654

`A099560(3*(n+1))`
-/

namespace A124820.P10153762642815965654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099560 (3 * (n + 1))

end

end A124820.P10153762642815965654

namespace A124820

/-- `A099560(3*(n+1))` -/
def P10153762642815965654.Spec : Prop :=
  ∀ n, P10153762642815965654.a n = A124820 n

end A124820

/-! ## A124820.P360073904924647338

`A135851(3*(n+2))`
-/

namespace A124820.P360073904924647338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (3 * (n + 2))

end

end A124820.P360073904924647338

namespace A124820

/-- `A135851(3*(n+2))` -/
def P360073904924647338.Spec : Prop :=
  ∀ n, P360073904924647338.a n = A124820 n

end A124820

/-! ## A124820.P13786418765143301025

`A078012(3*n+4)`
-/

namespace A124820.P13786418765143301025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * n + 4)

end

end A124820.P13786418765143301025

namespace A124820

/-- `A078012(3*n+4)` -/
def P13786418765143301025.Spec : Prop :=
  ∀ n, P13786418765143301025.a n = A124820 n

end A124820

/-! ## A124820.P1374550409498266766

`A108104(6*n+2)`
-/

namespace A124820.P1374550409498266766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (6 * n + 2)

end

end A124820.P1374550409498266766

namespace A124820

/-- `A108104(6*n+2)` -/
def P1374550409498266766.Spec : Prop :=
  ∀ n, P1374550409498266766.a n = A124820 n

end A124820

/-! ## A124820.P4263468443799568507

`A226916(6*n+9)`
-/

namespace A124820.P4263468443799568507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (6 * n + 9)

end

end A124820.P4263468443799568507

namespace A124820

/-- `A226916(6*n+9)` -/
def P4263468443799568507.Spec : Prop :=
  ∀ n, P4263468443799568507.a n = A124820 n

end A124820

/-! ## A124820.P10019655660278808912

`Δ[Δ[A204200(n+1)]]`
-/

namespace A124820.P10019655660278808912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204200 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124820.P10019655660278808912

namespace A124820

/-- `Δ[Δ[A204200(n+1)]]` -/
def P10019655660278808912.Spec : Prop :=
  ∀ n, P10019655660278808912.a n = A124820 n

end A124820

/-! ## A124820.P6214540942597029517

`Δ[Δ[A078012(3*n)]]`
-/

namespace A124820.P6214540942597029517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124820.P6214540942597029517

namespace A124820

/-- `Δ[Δ[A078012(3*n)]]` -/
def P6214540942597029517.Spec : Prop :=
  ∀ n, P6214540942597029517.a n = A124820 n

end A124820

/-! ## A124820.P9585281912442676338

`record[A000930(A006368(n)+1)]`
-/

namespace A124820.P9585281912442676338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A006368 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124820.P9585281912442676338

namespace A124820

/-- `record[A000930(A006368(n)+1)]` -/
def P9585281912442676338.Spec : Prop :=
  ∀ n, P9585281912442676338.a n = A124820 n

end A124820

/-! ## A124820.P11176752287709961101

`record[A000930(A014682(n)+2)]`
-/

namespace A124820.P11176752287709961101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A014682 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124820.P11176752287709961101

namespace A124820

/-- `record[A000930(A014682(n)+2)]` -/
def P11176752287709961101.Spec : Prop :=
  ∀ n, P11176752287709961101.a n = A124820 n

end A124820

/-! ## A124820.P8845686583453418345

`Δ[A078012(A008486(n+1)-1)]`
-/

namespace A124820.P8845686583453418345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A008486 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124820.P8845686583453418345

namespace A124820

/-- `Δ[A078012(A008486(n+1)-1)]` -/
def P8845686583453418345.Spec : Prop :=
  ∀ n, P8845686583453418345.a n = A124820 n

end A124820

/-! ## A124820.P14327893970037798974

`∑[A078012(A005408(n+1)+n)]`
-/

namespace A124820.P14327893970037798974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A005408 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124820.P14327893970037798974

namespace A124820

/-- `∑[A078012(A005408(n+1)+n)]` -/
def P14327893970037798974.Spec : Prop :=
  ∀ n, P14327893970037798974.a n = A124820 n

end A124820

/-! ## A124820.P3811042031343290395

`A052529(n+1)+A204200(n+1)-A052544(n)`
-/

namespace A124820.P3811042031343290395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 (n + 1) + (A204200 (n + 1) - A052544 n)

end

end A124820.P3811042031343290395

namespace A124820

/-- `A052529(n+1)+A204200(n+1)-A052544(n)` -/
def P3811042031343290395.Spec : Prop :=
  ∀ n, P3811042031343290395.a n = A124820 n

end A124820

/-! ## A124820.P16016523149293892575

`A190090(n+1)+A190090(n)-A190154(n+1)`
-/

namespace A124820.P16016523149293892575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190090 (n + 1) + (A190090 n - A190154 (n + 1))

end

end A124820.P16016523149293892575

namespace A124820

/-- `A190090(n+1)+A190090(n)-A190154(n+1)` -/
def P16016523149293892575.Spec : Prop :=
  ∀ n, P16016523149293892575.a n = A124820 n

end A124820

/-!
# A124822: a(n) = the n-th integer from among those positive integers which are coprime to n(n+1).

The programs for A124822, there is no canonical definition to state claims against.
-/

/-! ## A124822.P599538423398469990

`A038566(A002088((n+1)²+n)+n+1)`
-/

namespace A124822.P599538423398469990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A002088 ((n + 1) ^ 2 + n) + (n + 1 : ℤ)).toNat

end

end A124822.P599538423398469990

/-! ## A124822.P9713842477593830209

`A020652(A002088(A165900(n+2))+n)`
-/

namespace A124822.P9713842477593830209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A002088 (A165900 (n + 2)).toNat + (n : ℤ)).toNat

end

end A124822.P9713842477593830209

/-! ## A124822.P16710035913209692133

`A020652(A015614(A165900(n+2))+n+1)`
-/

namespace A124822.P16710035913209692133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A015614 (A165900 (n + 2)).toNat + (n + 1 : ℤ)).toNat

end

end A124822.P16710035913209692133

/-!
# A124823: a(n) = n-th integer from among those positive integers which are coprime to n(n+1)/2.

The programs for A124823, there is no canonical definition to state claims against.
-/

/-! ## A124823.P3232222680558305569

`A129321(∑[n+1])`
-/

namespace A124823.P3232222680558305569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124823.P3232222680558305569

/-! ## A124823.P465168772424320053

`A077581(∑[∑[∑[3*n]]+1])`
-/

namespace A124823.P465168772424320053
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124823.P465168772424320053

/-!
# A124824: LambertW analog of the Bell numbers: a(n) = (1/e)*Sum_{k>=0} k*(n+k)^(n-1)/k! for n > 0 with a(0)=1.

The programs for A124824, there is no canonical definition to state claims against.
-/

/-! ## A124824.P9229200136248330576

`A108087((n+1)²+n²)`
-/

namespace A124824.P9229200136248330576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 ((n + 1) ^ 2 + n ^ 2)

end

end A124824.P9229200136248330576

/-! ## A124824.P11611497086739532835

`A108087(A001844(n))+A025439(n)`
-/

namespace A124824.P11611497086739532835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A001844 n).toNat + A025439 n

end

end A124824.P11611497086739532835

/-! ## A124824.P4252514652705088401

`gcd(A000038(n), A108087(A001844(n)))`
-/

namespace A124824.P4252514652705088401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108087 (A001844 n).toNat)

end

end A124824.P4252514652705088401

/-! ## A124824.P14340189273425426883

`lcm(A033999(n), A108087(A001844(n)))`
-/

namespace A124824.P14340189273425426883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A108087 (A001844 n).toNat)

end

end A124824.P14340189273425426883

/-! ## A124824.P7975483240222208886

`A108087(A001844(n))+A010052(3*n+2)`
-/

namespace A124824.P7975483240222208886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A001844 n).toNat + A010052 (3 * n + 2)

end

end A124824.P7975483240222208886

/-!
# A124825: Numbers k such that 10k + 7 and 7k + 10 are primes.

The programs for A124825, the canonical program `A124825.P846435702103164471` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124825 has offset 1).

The definition of A124825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124825.P846435702103164471

`∩[A102342(n+1), A111250(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A124825

/-- `∩[A102342(n+1), A111250(n+1)]` -/
def P846435702103164471.Spec : Prop :=
  ∀ n, (P846435702103164471.a n : ℤ) = A124825 (n + 1)

theorem P846435702103164471.correct : P846435702103164471.Spec := by
  intro n
  simp only [A124825, Nat.add_sub_cancel]

end A124825

/-! ## A124825.P14006486303050794851

`∩[A024914(n+1)-1, A111250(n+1)]`
-/

namespace A124825.P14006486303050794851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P14006486303050794851

namespace A124825

/-- `∩[A024914(n+1)-1, A111250(n+1)]` -/
def P14006486303050794851.Spec : Prop :=
  ∀ n, (P14006486303050794851.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P17048633375640482626

`∩[A089033(n+1)-1, A102342(n+1)]`
-/

namespace A124825.P17048633375640482626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P17048633375640482626

namespace A124825

/-- `∩[A089033(n+1)-1, A102342(n+1)]` -/
def P17048633375640482626.Spec : Prop :=
  ∀ n, (P17048633375640482626.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P4642460168736775588

`∩[A024903(n+1)-2, A102342(n+1)]`
-/

namespace A124825.P4642460168736775588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P4642460168736775588

namespace A124825

/-- `∩[A024903(n+1)-2, A102342(n+1)]` -/
def P4642460168736775588.Spec : Prop :=
  ∀ n, (P4642460168736775588.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P13179734221040755501

`∩[A033868(n+2)-3, A102342(n+1)]`
-/

namespace A124825.P13179734221040755501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033868 (n + 2) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P13179734221040755501

namespace A124825

/-- `∩[A033868(n+2)-3, A102342(n+1)]` -/
def P13179734221040755501.Spec : Prop :=
  ∀ n, (P13179734221040755501.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P15295145582044688319

`∩[2*A090614(n+2)-1, A102342(n+1)]`
-/

namespace A124825.P15295145582044688319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090614 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P15295145582044688319

namespace A124825

/-- `∩[2*A090614(n+2)-1, A102342(n+1)]` -/
def P15295145582044688319.Spec : Prop :=
  ∀ n, (P15295145582044688319.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P12971672849821872813

`∩[A004273(A090614(n+2)), A102342(n+1)]`
-/

namespace A124825.P12971672849821872813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A090614 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P12971672849821872813

namespace A124825

/-- `∩[A004273(A090614(n+2)), A102342(n+1)]` -/
def P12971672849821872813.Spec : Prop :=
  ∀ n, (P12971672849821872813.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P14091024689137880990

`∩[A004273(A089033(n+2)/2), A102342(n+1)]`
-/

namespace A124825.P14091024689137880990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A089033 (n + 2) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P14091024689137880990

namespace A124825

/-- `∩[A004273(A089033(n+2)/2), A102342(n+1)]` -/
def P14091024689137880990.Spec : Prop :=
  ∀ n, (P14091024689137880990.a n : ℤ) = A124825 (n + 1)

end A124825

/-! ## A124825.P5748451683457187

`∩[A185322(A049509(n+1)), A089033(n+1)]-1`
-/

namespace A124825.P5748451683457187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049509 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A124825.P5748451683457187

namespace A124825

/-- `∩[A185322(A049509(n+1)), A089033(n+1)]-1` -/
def P5748451683457187.Spec : Prop :=
  ∀ n, P5748451683457187.a n = A124825 (n + 1)

end A124825

/-! ## A124825.P6558390922667909352

`∩[eq[2, A000005(10*n+7)], A089033(n+2)-1]`
-/

namespace A124825.P6558390922667909352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A124825.P6558390922667909352

namespace A124825

/-- `∩[eq[2, A000005(10*n+7)], A089033(n+2)-1]` -/
def P6558390922667909352.Spec : Prop :=
  ∀ n, (P6558390922667909352.a n : ℤ) = A124825 (n + 1)

end A124825

/-!
# A124826: Primes congruent to 1 mod 21.

The programs for A124826, the canonical program `A124826.P12452158747081727353` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124826 has offset 1).

The definition of A124826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124826.P12452158747081727353

`p?[21*n+1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124826

/-- `p?[21*n+1]` -/
def P12452158747081727353.Spec : Prop :=
  ∀ n, (P12452158747081727353.a n : ℤ) = A124826 (n + 1)

theorem P12452158747081727353.correct : P12452158747081727353.Spec := by
  intro n
  simp only [A124826, Nat.add_sub_cancel]

end A124826

/-! ## A124826.P14502419806716357936

`or(1, p?[or(1, 21*n)])`
-/

namespace A124826.P14502419806716357936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (21 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A124826.P14502419806716357936

namespace A124826

/-- `or(1, p?[or(1, 21*n)])` -/
def P14502419806716357936.Spec : Prop :=
  ∀ n, (P14502419806716357936.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P13749577894942777940

`or(1, p?[a(n-1)+21])` with `a(0)=1`
-/

namespace A124826.P13749577894942777940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A124826.P13749577894942777940

namespace A124826

/-- `or(1, p?[a(n-1)+21])` -/
def P13749577894942777940.Spec : Prop :=
  ∀ n, (P13749577894942777940.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P15537367160940277592

`∏{d}[p?[a(n-1)+21], #]` with `a(0)=1`
-/

namespace A124826.P15537367160940277592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A124826.P15537367160940277592

namespace A124826

/-- `∏{d}[p?[a(n-1)+21], #]` -/
def P15537367160940277592.Spec : Prop :=
  ∀ n, (P15537367160940277592.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P12404067954760870983

`∑{p}[p?[a(n-1)+21], #]` with `a(0)=1`
-/

namespace A124826.P12404067954760870983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A124826.P12404067954760870983

namespace A124826

/-- `∑{p}[p?[a(n-1)+21], #]` -/
def P12404067954760870983.Spec : Prop :=
  ∀ n, (P12404067954760870983.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P5105236674332294681

`∏{p}[p?[a(n-1)+21], #]` with `a(0)=1`
-/

namespace A124826.P5105236674332294681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A124826.P5105236674332294681

namespace A124826

/-- `∏{p}[p?[a(n-1)+21], #]` -/
def P5105236674332294681.Spec : Prop :=
  ∀ n, (P5105236674332294681.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P17575723174084832344

`∩[A004619(n+1), A139492(n+1)]`
-/

namespace A124826.P17575723174084832344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P17575723174084832344

namespace A124826

/-- `∩[A004619(n+1), A139492(n+1)]` -/
def P17575723174084832344.Spec : Prop :=
  ∀ n, (P17575723174084832344.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P4571973406333396381

`∩[A140444(n+1), A139492(n+1)]`
-/

namespace A124826.P4571973406333396381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P4571973406333396381

namespace A124826

/-- `∩[A140444(n+1), A139492(n+1)]` -/
def P4571973406333396381.Spec : Prop :=
  ∀ n, (P4571973406333396381.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P4039222547204572594

`∩[A045456(n+1), A139492(n+1)]`
-/

namespace A124826.P4039222547204572594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P4039222547204572594

namespace A124826

/-- `∩[A045456(n+1), A139492(n+1)]` -/
def P4039222547204572594.Spec : Prop :=
  ∀ n, (P4039222547204572594.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P7086011756947354006

`∩[A045436(n+1), A139492(n+1)]`
-/

namespace A124826.P7086011756947354006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P7086011756947354006

namespace A124826

/-- `∩[A045436(n+1), A139492(n+1)]` -/
def P7086011756947354006.Spec : Prop :=
  ∀ n, (P7086011756947354006.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P3993195832976179629

`∩[A045472(n+1), A139492(n+1)]`
-/

namespace A124826.P3993195832976179629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P3993195832976179629

namespace A124826

/-- `∩[A045472(n+1), A139492(n+1)]` -/
def P3993195832976179629.Spec : Prop :=
  ∀ n, (P3993195832976179629.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P8552799086317150754

`∩[A002476(n+1), A004619(n+1)]`
-/

namespace A124826.P8552799086317150754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P8552799086317150754

namespace A124826

/-- `∩[A002476(n+1), A004619(n+1)]` -/
def P8552799086317150754.Spec : Prop :=
  ∀ n, (P8552799086317150754.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P17328956751280435880

`∩[A004619(n+1), A007645(n+1)]`
-/

namespace A124826.P17328956751280435880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P17328956751280435880

namespace A124826

/-- `∩[A004619(n+1), A007645(n+1)]` -/
def P17328956751280435880.Spec : Prop :=
  ∀ n, (P17328956751280435880.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P12806329753215819460

`∩[A004619(n+1), A045375(n+1)]`
-/

namespace A124826.P12806329753215819460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P12806329753215819460

namespace A124826

/-- `∩[A004619(n+1), A045375(n+1)]` -/
def P12806329753215819460.Spec : Prop :=
  ∀ n, (P12806329753215819460.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P1713551460636766685

`∩[A002476(n+1), A140444(n+1)]`
-/

namespace A124826.P1713551460636766685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P1713551460636766685

namespace A124826

/-- `∩[A002476(n+1), A140444(n+1)]` -/
def P1713551460636766685.Spec : Prop :=
  ∀ n, (P1713551460636766685.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P8122589422002018081

`∩[A007645(n+1), A140444(n+1)]`
-/

namespace A124826.P8122589422002018081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P8122589422002018081

namespace A124826

/-- `∩[A007645(n+1), A140444(n+1)]` -/
def P8122589422002018081.Spec : Prop :=
  ∀ n, (P8122589422002018081.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P4485734243113891201

`∩[A045375(n+1), A140444(n+1)]`
-/

namespace A124826.P4485734243113891201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P4485734243113891201

namespace A124826

/-- `∩[A045375(n+1), A140444(n+1)]` -/
def P4485734243113891201.Spec : Prop :=
  ∀ n, (P4485734243113891201.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P10145083481618090338

`∩[A123365(n+1), A140444(n+1)]`
-/

namespace A124826.P10145083481618090338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P10145083481618090338

namespace A124826

/-- `∩[A123365(n+1), A140444(n+1)]` -/
def P10145083481618090338.Spec : Prop :=
  ∀ n, (P10145083481618090338.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P13024759745812967727

`∩[A004619(n+1), A045331(n+1)]`
-/

namespace A124826.P13024759745812967727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P13024759745812967727

namespace A124826

/-- `∩[A004619(n+1), A045331(n+1)]` -/
def P13024759745812967727.Spec : Prop :=
  ∀ n, (P13024759745812967727.a n : ℤ) = A124826 (n + 1)

end A124826

/-! ## A124826.P2442482205923930380

`∩[A045433(n+1), A139492(n+1)]`
-/

namespace A124826.P2442482205923930380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124826.P2442482205923930380

namespace A124826

/-- `∩[A045433(n+1), A139492(n+1)]` -/
def P2442482205923930380.Spec : Prop :=
  ∀ n, (P2442482205923930380.a n : ℤ) = A124826 (n + 1)

end A124826

/-!
# A124827: Order of Galois groups of irreducible Chebyshev polynomials of order n.

The programs for A124827, there is no canonical definition to state claims against.
-/

/-! ## A124827.P3736586376442719379

`(n+1)*∏{p}[n+1, #-1]*∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A124827.P3736586376442719379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ))

end

end A124827.P3736586376442719379

/-! ## A124827.P1572879091613514185

`(n+1)*A127835(n+1)`
-/

namespace A124827.P1572879091613514185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127835 (n + 1)

end

end A124827.P1572879091613514185

/-! ## A124827.P5000511276160393299

`(n+1)*A390753((n+1)²)`
-/

namespace A124827.P5000511276160393299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390753 ((n + 1) ^ 2)

end

end A124827.P5000511276160393299

/-! ## A124827.P9732562788597845902

`(n+1)*A000010(gcd(n+1, lcm(4, ∑[n])))`
-/

namespace A124827.P9732562788597845902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (Nat.gcd (n + 1) (Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A124827.P9732562788597845902

/-! ## A124827.P8184148493211082346

`(n+1)*A000010(and(n, or(11, n+1))+1)`
-/

namespace A124827.P8184148493211082346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (Nat.land n (Nat.lor 11 (n + 1)) + 1)

end

end A124827.P8184148493211082346

/-!
# A124828: Number of base 7 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124828, there is no canonical definition to state claims against.
-/

/-! ## A124828.P7257455313643417155

`A285280(A167487(n+3))`
-/

namespace A124828.P7257455313643417155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167487 (n + 3)).toNat

end

end A124828.P7257455313643417155

/-! ## A124828.P5234644237498126175

`A285280(A000217(n+4)+7)`
-/

namespace A124828.P5234644237498126175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000217 (n + 4) + 7).toNat

end

end A124828.P5234644237498126175

/-! ## A124828.P3610221776555671880

`A285280(A152947(n+7)-(n-1))`
-/

namespace A124828.P3610221776555671880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A152947 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A124828.P3610221776555671880

/-! ## A124828.P15277292406669146671

`A285280(Δ[A027965(n+5)]-2*(n+1))`
-/

namespace A124828.P15277292406669146671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)).toNat

end

end A124828.P15277292406669146671

/-! ## A124828.P13834139833376576702

`A285280(A167614(n+1)+A020744(n)+3)`
-/

namespace A124828.P13834139833376576702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167614 (n + 1) + A020744 n + 3).toNat

end

end A124828.P13834139833376576702

/-!
# A124829: Table of exponents of prime factorizations in A055932.

The programs for A124829, there is no canonical definition to state claims against.
-/

/-! ## A124829.P9666525438502714724

`gcd(A062312(n+1), A297290(A054231(n)))`
-/

namespace A124829.P9666525438502714724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062312 (n + 1)) (A297290 (A054231 n).toNat)

end

end A124829.P9666525438502714724

/-! ## A124829.P13086405699118538950

`gcd(n+5, A221716(A221944(n)))`
-/

namespace A124829.P13086405699118538950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A221716 (A221944 n).toNat)

end

end A124829.P13086405699118538950

/-! ## A124829.P483994818008986201

`gcd(A008804(A259939(n)), A078644(n+1))`
-/

namespace A124829.P483994818008986201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008804 (A259939 n).toNat) (A078644 (n + 1))

end

end A124829.P483994818008986201

/-! ## A124829.P466553317020136971

`gcd(11*n+7, A195936(A000040(n+2)))`
-/

namespace A124829.P466553317020136971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (11 * n + 7 : ℤ) (A195936 (A000040 (n + 2)).toNat)

end

end A124829.P466553317020136971

/-! ## A124829.P410829928395712931

`A340035(A076618(n+1)+A004148(n))`
-/

namespace A124829.P410829928395712931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (A076618 (n + 1) + A004148 n).toNat

end

end A124829.P410829928395712931

/-!
# A124830: Number of distinct prime factors of A055932(n).

The programs for A124830, there is no canonical definition to state claims against.
-/

/-! ## A124830.P10978406139824189994

`A001221(A055932(n+1))`
-/

namespace A124830.P10978406139824189994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055932 (n + 1)).toNat

end

end A124830.P10978406139824189994

/-! ## A124830.P5179397945201823577

`∑{p}[A055932(n+1), A001222(#)]`
-/

namespace A124830.P5179397945201823577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A124830.P5179397945201823577

/-! ## A124830.P5935988042389075283

`∑{p}[A055932(n+1), A032741(#)]`
-/

namespace A124830.P5935988042389075283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032741 p

end

end A124830.P5935988042389075283

/-! ## A124830.P18260720618888474575

`∑{e}[A055932(n+1), A112316(#)+1]`
-/

namespace A124830.P18260720618888474575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A112316 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A124830.P18260720618888474575

/-! ## A124830.P14500889044810070946

`∑{e}[A055932(n+1), A112316(A112316(#))]`
-/

namespace A124830.P14500889044810070946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112316 (A112316 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A124830.P14500889044810070946

/-! ## A124830.P7940445170904904777

`A001222(∏{p}[A055932(n+1), #])`
-/

namespace A124830.P7940445170904904777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A124830.P7940445170904904777

/-! ## A124830.P5290598659191848876

`A001222(gcd(A055932(n+1), A319865(n+1)))`
-/

namespace A124830.P5290598659191848876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A055932 (n + 1)) (A319865 (n + 1)))

end

end A124830.P5290598659191848876

/-! ## A124830.P14834469976848942326

`A061395(A124833(n+1))`
-/

namespace A124830.P14834469976848942326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A124833 (n + 1)).toNat

end

end A124830.P14834469976848942326

/-! ## A124830.P16826770119308796347

`A001221(record[A071364(n+1)])`
-/

namespace A124830.P16826770119308796347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124830.P16826770119308796347

/-! ## A124830.P16552694574931544891

`A061395(record[A071364(n+1)])`
-/

namespace A124830.P16552694574931544891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124830.P16552694574931544891

/-! ## A124830.P10113168973632203689

`A061395(A055932(2*n+1-n))`
-/

namespace A124830.P10113168973632203689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A055932 (2 * n + 1 - n)).toNat

end

end A124830.P10113168973632203689

/-! ## A124830.P14759956398537893578

`A001221(∩[A005153(n+1), A073491(n+1)])`
-/

namespace A124830.P14759956398537893578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A124830.P14759956398537893578

/-! ## A124830.P9474083078096617476

`A001221(eq[A001221(n+1), A061395(n+1)]+1)`
-/

namespace A124830.P9474083078096617476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A124830.P9474083078096617476

/-! ## A124830.P15716261780173218958

`A001221(lt[A079067(n+1), 1]+1)`
-/

namespace A124830.P15716261780173218958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124830.P15716261780173218958

/-! ## A124830.P2606768655642290477

`A001221(record[A083259(n+1)])`
-/

namespace A124830.P2606768655642290477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124830.P2606768655642290477

/-! ## A124830.P3562652765185790514

`A005811(A377834(n+1))`
-/

namespace A124830.P3562652765185790514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A377834 (n + 1)).toNat

end

end A124830.P3562652765185790514

/-! ## A124830.P13709168247728559833

`A005811(A377836(n+1))`
-/

namespace A124830.P13709168247728559833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A377836 (n + 1)).toNat

end

end A124830.P13709168247728559833

/-! ## A124830.P6007942450781830231

`A276084(A055932(A064989(A003961(n+1))))`
-/

namespace A124830.P6007942450781830231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A055932 (A064989 (A003961 (n + 1)).toNat).toNat).toNat

end

end A124830.P6007942450781830231

/-! ## A124830.P95345914279940054

`A276084(A003961(n+1))+A276084(A055932(n+1))`
-/

namespace A124830.P95345914279940054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A003961 (n + 1)).toNat + A276084 (A055932 (n + 1)).toNat

end

end A124830.P95345914279940054

/-! ## A124830.P8922030080619121692

`A001221(record[A340346(n+1)])`
-/

namespace A124830.P8922030080619121692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124830.P8922030080619121692

/-!
# A124831: Number of prime factors of A055932(n) with repetition.

The programs for A124831, there is no canonical definition to state claims against.
-/

/-! ## A124831.P15361297170645875517

`∑{e}[A055932(n+1), #]`
-/

namespace A124831.P15361297170645875517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A124831.P15361297170645875517

/-! ## A124831.P15190710103929181164

`A001222(A055932(n+1))`
-/

namespace A124831.P15190710103929181164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055932 (n + 1)).toNat

end

end A124831.P15190710103929181164

/-! ## A124831.P11138639692391080969

`A001222(record[A071364(n+1)])`
-/

namespace A124831.P11138639692391080969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124831.P11138639692391080969

/-! ## A124831.P16257297118224505499

`∑{d}[A055932(n+1), A069513(#)]`
-/

namespace A124831.P16257297118224505499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A124831.P16257297118224505499

/-! ## A124831.P11007396629783576839

`A001222(∩[A005153(n+1), A073491(n+1)])`
-/

namespace A124831.P11007396629783576839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A124831.P11007396629783576839

/-! ## A124831.P9253041500051996389

`A001222(lt[n, A071364(n+1)]+1)`
-/

namespace A124831.P9253041500051996389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A124831.P9253041500051996389

/-! ## A124831.P18060931786640908779

`∑{d}[A263297(A055932(n+1)), A000010(#)]`
-/

namespace A124831.P18060931786640908779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A124831.P18060931786640908779

/-! ## A124831.P9164980232121213103

`A263297(A055932(n+1))%A000040(n+1)`
-/

namespace A124831.P9164980232121213103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263297 (A055932 (n + 1)).toNat) (A000040 (n + 1))

end

end A124831.P9164980232121213103

/-! ## A124831.P13309223410304049300

`A263297(A055932(n+1)%A072274(n+1))`
-/

namespace A124831.P13309223410304049300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (Int.tmod (A055932 (n + 1)) (A072274 (n + 1))).toNat

end

end A124831.P13309223410304049300

/-! ## A124831.P15971560685837907791

`or(A000007(n+1), A263297(A055932(n+1)))`
-/

namespace A124831.P15971560685837907791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (n + 1)) (A263297 (A055932 (n + 1)).toNat)

end

end A124831.P15971560685837907791

/-! ## A124831.P14603174406549676047

`A001222(record[A083259(n+1)])`
-/

namespace A124831.P14603174406549676047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124831.P14603174406549676047

/-! ## A124831.P7558668195594997111

`A252464(A124833(n+1))`
-/

namespace A124831.P7558668195594997111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A124833 (n + 1)).toNat

end

end A124831.P7558668195594997111

/-! ## A124831.P7774864337103617510

`∑{d}[A055932(n+1), A001221(A014963(#))]`
-/

namespace A124831.P7774864337103617510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A124831.P7774864337103617510

/-! ## A124831.P4078029807919521697

`A001222(record[A340346(n+1)])`
-/

namespace A124831.P4078029807919521697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124831.P4078029807919521697

/-!
# A124832: Table of exponents of prime factorizations in A025487.

The programs for A124832, there is no canonical definition to state claims against.
-/

/-! ## A124832.P14366611676621152291

`A124829(∑[A307847(n)^A124796(n+1)])`
-/

namespace A124832.P14366611676621152291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307847 n : ℚ) ^ (A124796 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124829 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A124832.P14366611676621152291

/-! ## A124832.P9020515158267572503

`A091255(eq[2, A333381(2*n+1)])`
-/

namespace A124832.P9020515158267572503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124832.P9020515158267572503

/-! ## A124832.P11048352694263046568

`A228369(A056624(n+1)+A020873(n))`
-/

namespace A124832.P11048352694263046568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A056624 (n + 1) + A020873 n).toNat

end

end A124832.P11048352694263046568

/-!
# A124833: A055932(n) divided by product of all primes less than the greatest prime factor of A055932(n).

The programs for A124833, there is no canonical definition to state claims against.
-/

/-! ## A124833.P6263699147418353470

`A055932(n+1)/A034386(A006530(A055932(n+1))-1)`
-/

namespace A124833.P6263699147418353470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (n + 1) : ℚ) / (A034386 (A006530 (A055932 (n + 1)).toNat - 1).toNat : ℚ)

end

end A124833.P6263699147418353470

/-! ## A124833.P5598940718776238364

`A055932(n+1)/A083720(A006530(A055932(n+1)))`
-/

namespace A124833.P5598940718776238364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (n + 1) : ℚ) / (A083720 (A006530 (A055932 (n + 1)).toNat).toNat : ℚ)

end

end A124833.P5598940718776238364

/-! ## A124833.P13157807562802591251

`A075157(A377836(n+1))+1`
-/

namespace A124833.P13157807562802591251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A377836 (n + 1)).toNat + 1

end

end A124833.P13157807562802591251

/-! ## A124833.P9901559390483645451

`A055932(n+1)/A293810(A055932(n+1))`
-/

namespace A124833.P9901559390483645451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (n + 1) : ℚ) / (A293810 (A055932 (n + 1)).toNat : ℚ)

end

end A124833.P9901559390483645451

/-! ## A124833.P6412645857630975769

`A217434(A055932(n+1))`
-/

namespace A124833.P6412645857630975769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A055932 (n + 1)).toNat

end

end A124833.P6412645857630975769

/-! ## A124833.P16100407551765501152

`A217434(record[A071364(n+1)])`
-/

namespace A124833.P16100407551765501152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124833.P16100407551765501152

/-! ## A124833.P4216162544310295535

`A217434(record[A083259(n+1)])`
-/

namespace A124833.P4216162544310295535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124833.P4216162544310295535

/-! ## A124833.P1772058130691617133

`A217434(record[(n+1)/A335286(n+1)])`
-/

namespace A124833.P1772058130691617133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A335286 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A124833.P1772058130691617133

/-! ## A124833.P17678630161997131103

`A217434(record[A340346(n+1)])`
-/

namespace A124833.P17678630161997131103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124833.P17678630161997131103

/-! ## A124833.P321846852575424069

`A003557(A006530(A055932(n+1))*A055932(n+1))`
-/

namespace A124833.P321846852575424069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A006530 (A055932 (n + 1)).toNat * A055932 (n + 1)).toNat

end

end A124833.P321846852575424069

/-!
# A124834: Triangle, read by rows, where the g.f. of column k, C_k(x), is equal to the product: C_k(x) = Product_{k=0..n} 1/(1 - binomial(n,k)*x).

The programs for A124834, there is no canonical definition to state claims against.
-/

/-! ## A124834.P3271056471250601216

`xor(A137153(n), A307891(A156354(n)))`
-/

namespace A124834.P3271056471250601216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A137153 n) (A307891 (A156354 n).toNat)

end

end A124834.P3271056471250601216

/-! ## A124834.P4337483813357949059

`A056556(A056939(n)*A187783(n))`
-/

namespace A124834.P4337483813357949059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A056939 n * A187783 n).toNat

end

end A124834.P4337483813357949059

/-! ## A124834.P5806231173174632522

`A316866(A292783(n)²)+A111669(n)`
-/

namespace A124834.P5806231173174632522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A292783 n ^ 2).toNat + A111669 n

end

end A124834.P5806231173174632522

/-! ## A124834.P5848794909854516401

`A316866(A292783(n)²)+A137596(n)`
-/

namespace A124834.P5848794909854516401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A292783 n ^ 2).toNat + A137596 n

end

end A124834.P5848794909854516401

/-!
# A124835: Row sums of triangle A124834.

The programs for A124835, there is no canonical definition to state claims against.
-/

/-! ## A124835.P3704525887934751482

`∑[A001462(A218672(n))]`
-/

namespace A124835.P3704525887934751482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A218672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124835.P3704525887934751482

/-! ## A124835.P7596995183311200302

`A319629(A238395(n))+A002104(n)`
-/

namespace A124835.P7596995183311200302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319629 (A238395 n).toNat + A002104 n

end

end A124835.P7596995183311200302

/-! ## A124835.P15439541377981777382

`A337515(A275312(n))+A002104(n)`
-/

namespace A124835.P15439541377981777382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337515 (A275312 n).toNat + A002104 n

end

end A124835.P15439541377981777382

/-!
# A124836: Central terms of even-indexed rows in triangle A124834.

The programs for A124836, there is no canonical definition to state claims against.
-/

/-! ## A124836.P11560028748354155047

`A124834(∑[4*n])`
-/

namespace A124836.P11560028748354155047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124836.P11560028748354155047

/-! ## A124836.P931942032550250744

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A124834(n))]`
-/

namespace A124836.P931942032550250744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A124834 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124836.P931942032550250744

/-!
# A124837: Numerators of third-order harmonic numbers (defined by Conway and Guy, 1996).

The programs for A124837, there is no canonical definition to state claims against.
-/

/-! ## A124837.P3698756644726798321

`A213998(∑[n+4]+2)`
-/

namespace A124837.P3698756644726798321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124837.P3698756644726798321

/-! ## A124837.P10693238065064658057

`or(1, A213998(A046691(n+2)))`
-/

namespace A124837.P10693238065064658057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A213998 (A046691 (n + 2)).toNat)

end

end A124837.P10693238065064658057

/-! ## A124837.P6535757554208613998

`gcd(A057428(n)+1, A213998(A046691(n+2)))`
-/

namespace A124837.P6535757554208613998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057428 n + 1) (A213998 (A046691 (n + 2)).toNat)

end

end A124837.P6535757554208613998

/-! ## A124837.P11173588439517014041

`A213998(A046691(n+2))-A005843(n)/2+n`
-/

namespace A124837.P11173588439517014041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213998 (A046691 (n + 2)).toNat : ℚ) - (A005843 n : ℚ) / 2 + (n : ℚ)

end

end A124837.P11173588439517014041

/-! ## A124837.P4209174763787013306

`round(2/(A043282(n+1)+1))*A213998(A046691(n+2))`
-/

namespace A124837.P4209174763787013306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A043282 (n + 1) + 1 : ℚ)) * A213998 (A046691 (n + 2)).toNat

end

end A124837.P4209174763787013306

/-! ## A124837.P2063260900768312561

`A213998(A046691(n+2))+C(A256915(4*n+3), n+2)`
-/

namespace A124837.P2063260900768312561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A046691 (n + 2)).toNat + (Nat.choose (A256915 (4 * n + 3)).toNat (n + 2) : ℤ)

end

end A124837.P2063260900768312561

/-!
# A124838: Denominators of third-order harmonic numbers (defined by Conway and Guy, 1996).

The programs for A124838, there is no canonical definition to state claims against.
-/

/-! ## A124838.P13799691116673953966

`A213999(∑[n+4]+2)`
-/

namespace A124838.P13799691116673953966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124838.P13799691116673953966

/-! ## A124838.P17813323223066092304

`A213999(A046691(n+2))+A000038(n+1)`
-/

namespace A124838.P17813323223066092304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (A046691 (n + 2)).toNat + A000038 (n + 1)

end

end A124838.P17813323223066092304

/-! ## A124838.P15844665603961322460

`A213999(A046691(n+2))%A269673(n+1)`
-/

namespace A124838.P15844665603961322460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213999 (A046691 (n + 2)).toNat) (A269673 (n + 1))

end

end A124838.P15844665603961322460

/-! ## A124838.P16159386100371042817

`A213999(A046691(n+2))+C(2, A000045(n+4))`
-/

namespace A124838.P16159386100371042817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (A046691 (n + 2)).toNat + (Nat.choose 2 (A000045 (n + 4)).toNat : ℤ)

end

end A124838.P16159386100371042817

/-!
# A124839: Inverse binomial transform of the Moebius sequence {mu(k), k >= 1}, A008683.

The programs for A124839, there is no canonical definition to state claims against.
-/

/-! ## A124839.P10525663482241840968

`A124840(∑[n+1])`
-/

namespace A124839.P10525663482241840968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124839.P10525663482241840968

/-!
# A124840: Triangle, row sums = A008683, the Mobius sequence.

The programs for A124840, there is no canonical definition to state claims against.
-/

/-! ## A124840.P18329428891675448412

`A049705(A086323(n+1)+1)*A130595(A061579(n))`
-/

namespace A124840.P18329428891675448412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A086323 (n + 1) + 1).toNat * A130595 (A061579 n).toNat

end

end A124840.P18329428891675448412

/-!
# A124841: Inverse binomial transform of A005614, the rabbit sequence: (1, 0, 1, 1, 0, ...).

The programs for A124841, there is no canonical definition to state claims against.
-/

/-! ## A124841.P14455612266442978490

`A325745(n+2)+A325745(n+1)%A000079(n)`
-/

namespace A124841.P14455612266442978490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 2) + Int.tmod (A325745 (n + 1)) (A000079 n)

end

end A124841.P14455612266442978490

/-! ## A124841.P15687532336809854085

`A325745(n+2)+and(A325745(n+1), A325747(n+1))`
-/

namespace A124841.P15687532336809854085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 2) + Int.land (A325745 (n + 1)) (A325747 (n + 1))

end

end A124841.P15687532336809854085

/-! ## A124841.P3530604240338580351

`A124842(∑[n+1])`
-/

namespace A124841.P3530604240338580351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124842 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124841.P3530604240338580351

/-! ## A124841.P4211108113092338511

`A124842(A000217(n+1))%A051960(n)`
-/

namespace A124841.P4211108113092338511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124842 (A000217 (n + 1)).toNat) (A051960 n)

end

end A124841.P4211108113092338511

/-! ## A124841.P11152164033057123312

`A297232(n+1)+A124842(A000217(n+1))`
-/

namespace A124841.P11152164033057123312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (n + 1) + A124842 (A000217 (n + 1)).toNat

end

end A124841.P11152164033057123312

/-!
# A124842: Triangle, row sums = A005614, the rabbit sequence.

The programs for A124842, there is no canonical definition to state claims against.
-/

/-! ## A124842.P3348697157674215441

`A007318(n)*A124841(A002262(n))`
-/

namespace A124842.P3348697157674215441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A124841 (A002262 n).toNat

end

end A124842.P3348697157674215441

/-! ## A124842.P2800642939513750877

`A292861(A245300(n))*A295343(A000217(n))`
-/

namespace A124842.P2800642939513750877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (A245300 n).toNat * A295343 (A000217 n).toNat

end

end A124842.P2800642939513750877

/-! ## A124842.P8284044559787889829

`A159830(A114327(n)+A062003(n))`
-/

namespace A124842.P8284044559787889829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159830 (A114327 n + A062003 n).toNat

end

end A124842.P8284044559787889829

/-! ## A124842.P6246118179723786886

`A159830(A061579(n*A061906(n)))`
-/

namespace A124842.P6246118179723786886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159830 (A061579 ((n : ℤ) * A061906 n).toNat).toNat

end

end A124842.P6246118179723786886

/-! ## A124842.P5056524343757821932

`A159830(A061579(n)^A061906(n))`
-/

namespace A124842.P5056524343757821932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159830 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A124842.P5056524343757821932

/-!
# A124843: Number of base 8 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124843, there is no canonical definition to state claims against.
-/

/-! ## A124843.P5968314133818876567

`A285280(A027379(n+3)+11)`
-/

namespace A124843.P5968314133818876567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A027379 (n + 3) + 11).toNat

end

end A124843.P5968314133818876567

/-! ## A124843.P3466405344024234575

`A285280(Δ[A023545(n+1)]+12)`
-/

namespace A124843.P3466405344024234575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (f1 (n + 1) - f1 n + 12).toNat

end

end A124843.P3466405344024234575

/-! ## A124843.P10962923079177218818

`A285280(A000124(n+6)-(n-1))`
-/

namespace A124843.P10962923079177218818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000124 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A124843.P10962923079177218818

/-! ## A124843.P17218258136586744351

`A285280(A000217(n+6)+2-n)`
-/

namespace A124843.P17218258136586744351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000217 (n + 6) + (2 - (n : ℤ))).toNat

end

end A124843.P17218258136586744351

/-! ## A124843.P3074162570320742102

`A285280(A052905(n+4)-2*n)`
-/

namespace A124843.P3074162570320742102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A052905 (n + 4) - (2 * n : ℤ)).toNat

end

end A124843.P3074162570320742102

/-!
# A124844: Triangle T(n,k)=binomial(n,k)*A061084(k), 0<=k<=n, read by rows.

The programs for A124844, the canonical program `A124844.P4151249500096215908` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124844 has offset 0).

The definition of A124844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124844.P6400790560520283581

`A396583(n)-A113020(n)`
-/

namespace A124844.P6400790560520283581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396583 n - A113020 n

end

end A124844.P6400790560520283581

namespace A124844

/-- `A396583(n)-A113020(n)` -/
def P6400790560520283581.Spec : Prop :=
  ∀ n, P6400790560520283581.a n = A124844 n

end A124844

/-! ## A124844.P10072235335771771680

`A007318(n)*A061084(A002262(n))`
-/

namespace A124844.P10072235335771771680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A061084 (A002262 n).toNat

end

end A124844.P10072235335771771680

namespace A124844

/-- `A007318(n)*A061084(A002262(n))` -/
def P10072235335771771680.Spec : Prop :=
  ∀ n, P10072235335771771680.a n = A124844 n

end A124844

/-! ## A124844.P2847921348558806040

`Δ[A102363(n)]*A061084(A002262(n))`
-/

namespace A124844.P2847921348558806040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A061084 (A002262 n).toNat

end

end A124844.P2847921348558806040

namespace A124844

/-- `Δ[A102363(n)]*A061084(A002262(n))` -/
def P2847921348558806040.Spec : Prop :=
  ∀ n, P2847921348558806040.a n = A124844 n

end A124844

/-! ## A124844.P1231000830359101306

`A007318(n)*A061084(n-A057944(n))`
-/

namespace A124844.P1231000830359101306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A061084 ((n : ℤ) - A057944 n).toNat

end

end A124844.P1231000830359101306

namespace A124844

/-- `A007318(n)*A061084(n-A057944(n))` -/
def P1231000830359101306.Spec : Prop :=
  ∀ n, P1231000830359101306.a n = A124844 n

end A124844

/-! ## A124844.P4866676634360771248

`A028326(n)/2*A061084(n-A057944(n))`
-/

namespace A124844.P4866676634360771248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A061084 ((n : ℤ) - A057944 n).toNat : ℚ)

end

end A124844.P4866676634360771248

namespace A124844

/-- `A028326(n)/2*A061084(n-A057944(n))` -/
def P4866676634360771248.Spec : Prop :=
  ∀ n, P4866676634360771248.a n = (A124844 n : ℚ)

end A124844

/-! ## A124844.P4151249500096215908

`A061084(A002262(n))*A074909(A083920(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124844

/-- `A061084(A002262(n))*A074909(A083920(n))` -/
def P4151249500096215908.Spec : Prop :=
  ∀ n, P4151249500096215908.a n = A124844 n

theorem P4151249500096215908.correct : P4151249500096215908.Spec := by
  intro n
  simp only [A124844]

end A124844

/-!
# A124845: Triangle read by rows: T(n,k) = (3 - (-1)^k)*binomial(n,k)/2 (0 <= k <= n).

The programs for A124845, the canonical program `A124845.P14093019755134807887` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124845 has offset 0).

The definition of A124845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124845.P6419512285421687396

`gcd(2, comp[2*n²])*A007318(n)`
-/

namespace A124845.P6419512285421687396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A007318 n

end

end A124845.P6419512285421687396

namespace A124845

/-- `gcd(2, comp[2*n²])*A007318(n)` -/
def P6419512285421687396.Spec : Prop :=
  ∀ n, P6419512285421687396.a n = A124845 n

end A124845

/-! ## A124845.P14093019755134807887

`gcd(A028326(n), A103406(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124845

/-- `gcd(A028326(n), A103406(n))` -/
def P14093019755134807887.Spec : Prop :=
  ∀ n, (P14093019755134807887.a n : ℤ) = A124845 n

theorem P14093019755134807887.correct : P14093019755134807887.Spec := by
  intro n
  simp only [A124845]

end A124845

/-! ## A124845.P7833634528012595878

`gcd(A124927(n), A125092(n))`
-/

namespace A124845.P7833634528012595878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A125092 n)

end

end A124845.P7833634528012595878

namespace A124845

/-- `gcd(A124927(n), A125092(n))` -/
def P7833634528012595878.Spec : Prop :=
  ∀ n, (P7833634528012595878.a n : ℤ) = A124845 n

end A124845

/-! ## A124845.P12908581495551016322

`(A060510(n)+1)*A007318(n)`
-/

namespace A124845.P12908581495551016322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060510 n + 1) * A007318 n

end

end A124845.P12908581495551016322

namespace A124845

/-- `(A060510(n)+1)*A007318(n)` -/
def P12908581495551016322.Spec : Prop :=
  ∀ n, P12908581495551016322.a n = A124845 n

end A124845

/-! ## A124845.P3530102400213237060

`A028326(n)/(2-A060510(n))`
-/

namespace A124845.P3530102400213237060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (2 - A060510 n : ℚ)

end

end A124845.P3530102400213237060

namespace A124845

/-- `A028326(n)/(2-A060510(n))` -/
def P3530102400213237060.Spec : Prop :=
  ∀ n, P3530102400213237060.a n = (A124845 n : ℚ)

end A124845

/-! ## A124845.P15274696070446128109

`gcd(A134417(n), A208765(n+1))`
-/

namespace A124845.P15274696070446128109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134417 n) (A208765 (n + 1))

end

end A124845.P15274696070446128109

namespace A124845

/-- `gcd(A134417(n), A208765(n+1))` -/
def P15274696070446128109.Spec : Prop :=
  ∀ n, (P15274696070446128109.a n : ℤ) = A124845 n

end A124845

/-! ## A124845.P1334096507411642590

`A013609(n)%(3*A007318(n))`
-/

namespace A124845.P1334096507411642590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013609 n) (3 * A007318 n)

end

end A124845.P1334096507411642590

namespace A124845

/-- `A013609(n)%(3*A007318(n))` -/
def P1334096507411642590.Spec : Prop :=
  ∀ n, P1334096507411642590.a n = A124845 n

end A124845

/-! ## A124845.P9850994132490039161

`A013609(n)/A016116(A002262(n))²`
-/

namespace A124845.P9850994132490039161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A016116 (A002262 n).toNat ^ 2 : ℚ)

end

end A124845.P9850994132490039161

namespace A124845

/-- `A013609(n)/A016116(A002262(n))²` -/
def P9850994132490039161.Spec : Prop :=
  ∀ n, P9850994132490039161.a n = (A124845 n : ℚ)

end A124845

/-! ## A124845.P13799592136213814955

`A135837(n+1)/A117919(n+1)*A007318(n)`
-/

namespace A124845.P13799592136213814955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135837 (n + 1) : ℚ) / (A117919 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A124845.P13799592136213814955

namespace A124845

/-- `A135837(n+1)/A117919(n+1)*A007318(n)` -/
def P13799592136213814955.Spec : Prop :=
  ∀ n, P13799592136213814955.a n = (A124845 n : ℚ)

end A124845

/-! ## A124845.P12273888301246624867

`A155998(n)+A119467(n)`
-/

namespace A124845.P12273888301246624867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n + A119467 n

end

end A124845.P12273888301246624867

namespace A124845

/-- `A155998(n)+A119467(n)` -/
def P12273888301246624867.Spec : Prop :=
  ∀ n, P12273888301246624867.a n = A124845 n

end A124845

/-! ## A124845.P10858073428889644998

`A028326(n)-abs(A141665(n))`
-/

namespace A124845.P10858073428889644998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - |A141665 n|

end

end A124845.P10858073428889644998

namespace A124845

/-- `A028326(n)-abs(A141665(n))` -/
def P10858073428889644998.Spec : Prop :=
  ∀ n, P10858073428889644998.a n = A124845 n

end A124845

/-! ## A124845.P13337376541176757429

`gcd(A103406(n)+A098825(n), A098825(n))`
-/

namespace A124845.P13337376541176757429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103406 n + A098825 n) (A098825 n)

end

end A124845.P13337376541176757429

namespace A124845

/-- `gcd(A103406(n)+A098825(n), A098825(n))` -/
def P13337376541176757429.Spec : Prop :=
  ∀ n, (P13337376541176757429.a n : ℤ) = A124845 n

end A124845

/-! ## A124845.P14266887163639994120

`gcd(A134417(n), A139524(n))`
-/

namespace A124845.P14266887163639994120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134417 n) (A139524 n)

end

end A124845.P14266887163639994120

namespace A124845

/-- `gcd(A134417(n), A139524(n))` -/
def P14266887163639994120.Spec : Prop :=
  ∀ n, (P14266887163639994120.a n : ℤ) = A124845 n

end A124845

/-!
# A124846: Triangle read by rows: T(n,k) = (2 - (-1)^k)*binomial(n,k) (0 <= k <= n).

The programs for A124846, the canonical program `A124846.P10905854118473259616` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124846 has offset 0).

The definition of A124846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124846.P10905854118473259616

`2*A124845(n)-A007318(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124846

/-- `2*A124845(n)-A007318(n)` -/
def P10905854118473259616.Spec : Prop :=
  ∀ n, P10905854118473259616.a n = A124846 n

theorem P10905854118473259616.correct : P10905854118473259616.Spec := by
  intro n
  simp only [A124846]

end A124846

/-! ## A124846.P9679201291047007417

`gcd(A124929(n+1), A134059(n))`
-/

namespace A124846.P9679201291047007417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124929 (n + 1)) (A134059 n)

end

end A124846.P9679201291047007417

namespace A124846

/-- `gcd(A124929(n+1), A134059(n))` -/
def P9679201291047007417.Spec : Prop :=
  ∀ n, (P9679201291047007417.a n : ℤ) = A124846 n

end A124846

/-! ## A124846.P18356707744859815053

`A013610(n)%(4*A007318(n))`
-/

namespace A124846.P18356707744859815053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013610 n) (4 * A007318 n)

end

end A124846.P18356707744859815053

namespace A124846

/-- `A013610(n)%(4*A007318(n))` -/
def P18356707744859815053.Spec : Prop :=
  ∀ n, P18356707744859815053.a n = A124846 n

end A124846

/-! ## A124846.P13771367196785937517

`(2-A118801(n)%2)*A007318(n)`
-/

namespace A124846.P13771367196785937517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.tmod (A118801 n) 2) * A007318 n

end

end A124846.P13771367196785937517

namespace A124846

/-- `(2-A118801(n)%2)*A007318(n)` -/
def P13771367196785937517.Spec : Prop :=
  ∀ n, P13771367196785937517.a n = A124846 n

end A124846

/-! ## A124846.P18007490015088069995

`A158405(n+1)%4*A007318(n)`
-/

namespace A124846.P18007490015088069995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158405 (n + 1)) 4 * A007318 n

end

end A124846.P18007490015088069995

namespace A124846

/-- `A158405(n+1)%4*A007318(n)` -/
def P18007490015088069995.Spec : Prop :=
  ∀ n, P18007490015088069995.a n = A124846 n

end A124846

/-! ## A124846.P9637157345799342209

`A162315(A061579(n))`
-/

namespace A124846.P9637157345799342209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162315 (A061579 n).toNat

end

end A124846.P9637157345799342209

namespace A124846

/-- `A162315(A061579(n))` -/
def P9637157345799342209.Spec : Prop :=
  ∀ n, P9637157345799342209.a n = A124846 n

end A124846

/-! ## A124846.P6956424273544499283

`A162315(A038722(n+1)-1)`
-/

namespace A124846.P6956424273544499283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162315 (A038722 (n + 1) - 1).toNat

end

end A124846.P6956424273544499283

namespace A124846

/-- `A162315(A038722(n+1)-1)` -/
def P6956424273544499283.Spec : Prop :=
  ∀ n, P6956424273544499283.a n = A124846 n

end A124846

/-! ## A124846.P15166279371756098025

`A162315(A038722(n+2))`
-/

namespace A124846.P15166279371756098025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162315 (A038722 (n + 2)).toNat

end

end A124846.P15166279371756098025

namespace A124846

/-- `A162315(A038722(n+2))` -/
def P15166279371756098025.Spec : Prop :=
  ∀ n, P15166279371756098025.a n = A124846 n

end A124846

/-! ## A124846.P920931497042981977

`gcd(A124928(n), A141665(n))`
-/

namespace A124846.P920931497042981977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124928 n) (A141665 n)

end

end A124846.P920931497042981977

namespace A124846

/-- `gcd(A124928(n), A141665(n))` -/
def P920931497042981977.Spec : Prop :=
  ∀ n, (P920931497042981977.a n : ℤ) = A124846 n

end A124846

/-! ## A124846.P5176648145444933810

`gcd(abs(A141665(n)), A134059(n))`
-/

namespace A124846.P5176648145444933810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A141665 n| (A134059 n)

end

end A124846.P5176648145444933810

namespace A124846

/-- `gcd(abs(A141665(n)), A134059(n))` -/
def P5176648145444933810.Spec : Prop :=
  ∀ n, (P5176648145444933810.a n : ℤ) = A124846 n

end A124846

/-! ## A124846.P5520362982510859650

`A130595(n)+2*A155998(n)`
-/

namespace A124846.P5520362982510859650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + 2 * A155998 n

end

end A124846.P5520362982510859650

namespace A124846

/-- `A130595(n)+2*A155998(n)` -/
def P5520362982510859650.Spec : Prop :=
  ∀ n, P5520362982510859650.a n = A124846 n

end A124846

/-! ## A124846.P12214683507764358957

`A013618(n)%(4*A007318(n))`
-/

namespace A124846.P12214683507764358957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013618 n) (4 * A007318 n)

end

end A124846.P12214683507764358957

namespace A124846

/-- `A013618(n)%(4*A007318(n))` -/
def P12214683507764358957.Spec : Prop :=
  ∀ n, P12214683507764358957.a n = A124846 n

end A124846

/-! ## A124846.P10123504246968900810

`gcd(3, A099884(n))*A007318(n)`
-/

namespace A124846.P10123504246968900810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A099884 n) : ℤ) * A007318 n

end

end A124846.P10123504246968900810

namespace A124846

/-- `gcd(3, A099884(n))*A007318(n)` -/
def P10123504246968900810.Spec : Prop :=
  ∀ n, P10123504246968900810.a n = A124846 n

end A124846

/-!
# A124847: Triangle read by rows: T(n,k) = k(k+1)*binomial(n-1, k-1)/2 (1 <= k <= n).

The programs for A124847, the canonical program `A124847.P18407072905812800664` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124847 has offset 1).

The definition of A124847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124847.P9880123865063116719

`A002260(n+1)/2*A128710(n)`
-/

namespace A124847.P9880123865063116719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2 * (A128710 n : ℚ)

end

end A124847.P9880123865063116719

namespace A124847

/-- `A002260(n+1)/2*A128710(n)` -/
def P9880123865063116719.Spec : Prop :=
  ∀ n, P9880123865063116719.a n = (A124847 (n + 1) : ℚ)

end A124847

/-! ## A124847.P11004481619415680422

`(A002262(n)+1)/2*A128710(n)`
-/

namespace A124847.P11004481619415680422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) / 2 * (A128710 n : ℚ)

end

end A124847.P11004481619415680422

namespace A124847

/-- `(A002262(n)+1)/2*A128710(n)` -/
def P11004481619415680422.Spec : Prop :=
  ∀ n, P11004481619415680422.a n = (A124847 (n + 1) : ℚ)

end A124847

/-! ## A124847.P18407072905812800664

`C(A002262(n)+2, 2)*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124847

/-- `C(A002262(n)+2, 2)*A007318(n)` -/
def P18407072905812800664.Spec : Prop :=
  ∀ n, P18407072905812800664.a n = A124847 (n + 1)

theorem P18407072905812800664.correct : P18407072905812800664.Spec := by
  intro n
  simp only [A124847, Nat.add_sub_cancel]

end A124847

/-! ## A124847.P11869173507389051550

`(1-A049780(n)+n)*A007318(n)`
-/

namespace A124847.P11869173507389051550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A007318 n

end

end A124847.P11869173507389051550

namespace A124847

/-- `(1-A049780(n)+n)*A007318(n)` -/
def P11869173507389051550.Spec : Prop :=
  ∀ n, P11869173507389051550.a n = A124847 (n + 1)

end A124847

/-! ## A124847.P24969172555463329

`C(A002260(n+1)+1, 2)*A007318(n)`
-/

namespace A124847.P24969172555463329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002260 (n + 1) + 1).toNat 2 : ℤ) * A007318 n

end

end A124847.P24969172555463329

namespace A124847

/-- `C(A002260(n+1)+1, 2)*A007318(n)` -/
def P24969172555463329.Spec : Prop :=
  ∀ n, P24969172555463329.a n = A124847 (n + 1)

end A124847

/-! ## A124847.P5959669799247689116

`A000217(A002260(n+1))*A007318(n)`
-/

namespace A124847.P5959669799247689116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A007318 n

end

end A124847.P5959669799247689116

namespace A124847

/-- `A000217(A002260(n+1))*A007318(n)` -/
def P5959669799247689116.Spec : Prop :=
  ∀ n, P5959669799247689116.a n = A124847 (n + 1)

end A124847

/-! ## A124847.P16801039645631969653

`C(A131818(n+2), 2)*A007318(n)`
-/

namespace A124847.P16801039645631969653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A131818 (n + 2)).toNat 2 : ℤ) * A007318 n

end

end A124847.P16801039645631969653

namespace A124847

/-- `C(A131818(n+2), 2)*A007318(n)` -/
def P16801039645631969653.Spec : Prop :=
  ∀ n, P16801039645631969653.a n = A124847 (n + 1)

end A124847

/-! ## A124847.P2021786475537143278

`A267849(n)/A233543(n)`
-/

namespace A124847.P2021786475537143278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267849 n : ℚ) / (A233543 n : ℚ)

end

end A124847.P2021786475537143278

namespace A124847

/-- `A267849(n)/A233543(n)` -/
def P2021786475537143278.Spec : Prop :=
  ∀ n, P2021786475537143278.a n = (A124847 (n + 1) : ℚ)

end A124847

/-! ## A124847.P900976830234694668

`A267849(n)/A002262(n)!`
-/

namespace A124847.P900976830234694668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267849 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A124847.P900976830234694668

namespace A124847

/-- `A267849(n)/A002262(n)!` -/
def P900976830234694668.Spec : Prop :=
  ∀ n, P900976830234694668.a n = (A124847 (n + 1) : ℚ)

end A124847

/-! ## A124847.P18309356509667436443

`A332496(n+1)+A127954(n+1)`
-/

namespace A124847.P18309356509667436443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332496 (n + 1) + A127954 (n + 1)

end

end A124847.P18309356509667436443

namespace A124847

/-- `A332496(n+1)+A127954(n+1)` -/
def P18309356509667436443.Spec : Prop :=
  ∀ n, P18309356509667436443.a n = A124847 (n + 1)

end A124847

/-!
# A124848: Triangle read by rows: T(n,k) = (k+1)*(k+2)*(k+3)*binomial(n,k)/6 (0 <= k <= n).

The programs for A124848, the canonical program `A124848.P892019051039301992` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124848 has offset 0).

The definition of A124848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124848.P892019051039301992

`A000292(A002260(n+1))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124848

/-- `A000292(A002260(n+1))*A007318(n)` -/
def P892019051039301992.Spec : Prop :=
  ∀ n, P892019051039301992.a n = A124848 n

theorem P892019051039301992.correct : P892019051039301992.Spec := by
  intro n
  simp only [A124848]

end A124848

/-! ## A124848.P17858951257748893845

`A000292(A002262(n)+1)*A007318(n)`
-/

namespace A124848.P17858951257748893845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002262 n + 1).toNat * A007318 n

end

end A124848.P17858951257748893845

namespace A124848

/-- `A000292(A002262(n)+1)*A007318(n)` -/
def P17858951257748893845.Spec : Prop :=
  ∀ n, P17858951257748893845.a n = A124848 n

end A124848

/-! ## A124848.P10576633672498065968

`A005232(A158405(n+1))*A007318(n)`
-/

namespace A124848.P10576633672498065968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A158405 (n + 1)).toNat * A007318 n

end

end A124848.P10576633672498065968

namespace A124848

/-- `A005232(A158405(n+1))*A007318(n)` -/
def P10576633672498065968.Spec : Prop :=
  ∀ n, P10576633672498065968.a n = A124848 n

end A124848

/-! ## A124848.P17227536221625312832

`Δ[A102363(n)]*A000292(A002260(n+1))`
-/

namespace A124848.P17227536221625312832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000292 (A002260 (n + 1)).toNat

end

end A124848.P17227536221625312832

namespace A124848

/-- `Δ[A102363(n)]*A000292(A002260(n+1))` -/
def P17227536221625312832.Spec : Prop :=
  ∀ n, P17227536221625312832.a n = A124848 n

end A124848

/-! ## A124848.P2064474589363519486

`A000292(A002260(n+1))*A097805(A014132(n+1))`
-/

namespace A124848.P2064474589363519486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A097805 (A014132 (n + 1)).toNat

end

end A124848.P2064474589363519486

namespace A124848

/-- `A000292(A002260(n+1))*A097805(A014132(n+1))` -/
def P2064474589363519486.Spec : Prop :=
  ∀ n, P2064474589363519486.a n = A124848 n

end A124848

/-! ## A124848.P16372251234474577453

`A007318(n)*A007426(A059268(n))`
-/

namespace A124848.P16372251234474577453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007426 (A059268 n).toNat

end

end A124848.P16372251234474577453

namespace A124848

/-- `A007318(n)*A007426(A059268(n))` -/
def P16372251234474577453.Spec : Prop :=
  ∀ n, P16372251234474577453.a n = A124848 n

end A124848

/-! ## A124848.P9455530116841111492

`A000292(A002260(n+1))*A008480(A036561(n))`
-/

namespace A124848.P9455530116841111492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A008480 (A036561 n).toNat

end

end A124848.P9455530116841111492

namespace A124848

/-- `A000292(A002260(n+1))*A008480(A036561(n))` -/
def P9455530116841111492.Spec : Prop :=
  ∀ n, P9455530116841111492.a n = A124848 n

end A124848

/-!
# A124849: Numbers k such that 7k + 3 and 3k + 7 are primes.

The programs for A124849, the canonical program `A124849.P5182331567433130283` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124849 has offset 1).

The definition of A124849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124849.P5182331567433130283

`record[A089033(n+1)/A245838(A033868(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124849

/-- `record[A089033(n+1)/A245838(A033868(n+1))]` -/
def P5182331567433130283.Spec : Prop :=
  ∀ n, P5182331567433130283.a n = (A124849 (n + 1) : ℚ)

end A124849

/-! ## A124849.P6788383931871109407

`∩[A089033(n+1), A089953(n+1)]`
-/

namespace A124849.P6788383931871109407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124849.P6788383931871109407

namespace A124849

/-- `∩[A089033(n+1), A089953(n+1)]` -/
def P6788383931871109407.Spec : Prop :=
  ∀ n, (P6788383931871109407.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P1923065559564692428

`∩[A024892(n+1)-2, A005843(A090614(n+1))]`
-/

namespace A124849.P1923065559564692428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A090614 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124849.P1923065559564692428

namespace A124849

/-- `∩[A024892(n+1)-2, A005843(A090614(n+1))]` -/
def P1923065559564692428.Spec : Prop :=
  ∀ n, (P1923065559564692428.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P7235703475477231994

`∩[A005843(A090614(n+1)), A153183(n+1)-3]`
-/

namespace A124849.P7235703475477231994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A090614 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124849.P7235703475477231994

namespace A124849

/-- `∩[A005843(A090614(n+1)), A153183(n+1)-3]` -/
def P7235703475477231994.Spec : Prop :=
  ∀ n, (P7235703475477231994.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P5402525584717468

`eq[A001222(A017017(n)), A156706(n+2)]`
-/

namespace A124849.P5402525584717468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017017 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124849.P5402525584717468

namespace A124849

/-- `eq[A001222(A017017(n)), A156706(n+2)]` -/
def P5402525584717468.Spec : Prop :=
  ∀ n, (P5402525584717468.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P12504871772323317604

`eq[A342086(7*n+3)², A062011(3*n+7)]`
-/

namespace A124849.P12504871772323317604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342086 (7 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124849.P12504871772323317604

namespace A124849

/-- `eq[A342086(7*n+3)², A062011(3*n+7)]` -/
def P12504871772323317604.Spec : Prop :=
  ∀ n, (P12504871772323317604.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P5264466491674699373

`eq[log2(A014673(7*n+3)), A070824(3*n+7)]`
-/

namespace A124849.P5264466491674699373
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014673 (7 * n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A124849.P5264466491674699373

namespace A124849

/-- `eq[log2(A014673(7*n+3)), A070824(3*n+7)]` -/
def P5264466491674699373.Spec : Prop :=
  ∀ n, (P5264466491674699373.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P14241109857825876363

`eq[A342086(7*n+3)², A238729(6*n+14)]`
-/

namespace A124849.P14241109857825876363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342086 (7 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238729 (6 * n + 14)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124849.P14241109857825876363

namespace A124849

/-- `eq[A342086(7*n+3)², A238729(6*n+14)]` -/
def P14241109857825876363.Spec : Prop :=
  ∀ n, (P14241109857825876363.a n : ℤ) = A124849 (n + 1)

end A124849

/-! ## A124849.P5432197651640585446

`eq[A025455(A034836(6*n+14)), A056924(7*n+3)]`
-/

namespace A124849.P5432197651640585446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A034836 (6 * n + 14)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124849.P5432197651640585446

namespace A124849

/-- `eq[A025455(A034836(6*n+14)), A056924(7*n+3)]` -/
def P5432197651640585446.Spec : Prop :=
  ∀ n, (P5432197651640585446.a n : ℤ) = A124849 (n + 1)

end A124849

/-!
# A124850: Primes p=n/2 such that 7n+3 and 3n+7 are primes.

The programs for A124850, the canonical program `A124850.P12264711281521083526` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124850 has offset 1).

The definition of A124850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124850.P12264711281521083526

`∩[A023222(n+1), A090614(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124850

/-- `∩[A023222(n+1), A090614(n+1)]` -/
def P12264711281521083526.Spec : Prop :=
  ∀ n, (P12264711281521083526.a n : ℤ) = A124850 (n + 1)

theorem P12264711281521083526.correct : P12264711281521083526.Spec := by
  intro n
  simp only [A124850, Nat.add_sub_cancel]

end A124850

/-! ## A124850.P11622616587291887268

`record[A006530(A124849(n+2))]`
-/

namespace A124850.P11622616587291887268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124849 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124850.P11622616587291887268

namespace A124850

/-- `record[A006530(A124849(n+2))]` -/
def P11622616587291887268.Spec : Prop :=
  ∀ n, P11622616587291887268.a n = A124850 (n + 1)

end A124850

/-! ## A124850.P3303654949965807075

`p?[A014682(A124849(n+1))]`
-/

namespace A124850.P3303654949965807075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124850.P3303654949965807075

namespace A124850

/-- `p?[A014682(A124849(n+1))]` -/
def P3303654949965807075.Spec : Prop :=
  ∀ n, P3303654949965807075.a n = A124850 (n + 1)

end A124850

/-! ## A124850.P1018042671320290389

`p?[A025480(A124849(n+3))]`
-/

namespace A124850.P1018042671320290389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A124849 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124850.P1018042671320290389

namespace A124850

/-- `p?[A025480(A124849(n+3))]` -/
def P1018042671320290389.Spec : Prop :=
  ∀ n, P1018042671320290389.a n = A124850 (n + 1)

end A124850

/-! ## A124850.P11692807339395899791

`p?[A028242(A124849(n+1)+1)]`
-/

namespace A124850.P11692807339395899791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A124849 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124850.P11692807339395899791

namespace A124850

/-- `p?[A028242(A124849(n+1)+1)]` -/
def P11692807339395899791.Spec : Prop :=
  ∀ n, P11692807339395899791.a n = A124850 (n + 1)

end A124850

/-! ## A124850.P15918083647552037252

`p?[A244325(A124849(n+1)+3)]`
-/

namespace A124850.P15918083647552037252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A124849 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124850.P15918083647552037252

namespace A124850

/-- `p?[A244325(A124849(n+1)+3)]` -/
def P15918083647552037252.Spec : Prop :=
  ∀ n, P15918083647552037252.a n = A124850 (n + 1)

end A124850

/-! ## A124850.P5705928222050661237

`p?[A110657(2*A124849(n+1))]`
-/

namespace A124850.P5705928222050661237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A124849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124850.P5705928222050661237

namespace A124850

/-- `p?[A110657(2*A124849(n+1))]` -/
def P5705928222050661237.Spec : Prop :=
  ∀ n, P5705928222050661237.a n = A124850 (n + 1)

end A124850

/-!
# A124851: Number of base 9 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124851, there is no canonical definition to state claims against.
-/

/-! ## A124851.P6978411410708743403

`A285280(A167487(n+5)+2)`
-/

namespace A124851.P6978411410708743403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167487 (n + 5) + 2).toNat

end

end A124851.P6978411410708743403

/-! ## A124851.P6039501160228358758

`A285280(A167499(n+5)+4)`
-/

namespace A124851.P6039501160228358758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167499 (n + 5) + 4).toNat

end

end A124851.P6039501160228358758

/-! ## A124851.P13059332446958712469

`A285280(A133263(n+6)+7)`
-/

namespace A124851.P13059332446958712469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A133263 (n + 6) + 7).toNat

end

end A124851.P13059332446958712469

/-! ## A124851.P1794046982442746333

`A285280(A000124(n+7)-(n-1))`
-/

namespace A124851.P1794046982442746333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000124 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A124851.P1794046982442746333

/-! ## A124851.P9889282527284985524

`A285280(A000217(n+7)-(n-2))`
-/

namespace A124851.P9889282527284985524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000217 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A124851.P9889282527284985524

/-!
# A124852: Number of base 10 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124852, there is no canonical definition to state claims against.
-/

/-! ## A124852.P12170443955299412894

`A285280(A167499(n+6)+5)`
-/

namespace A124852.P12170443955299412894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167499 (n + 6) + 5).toNat

end

end A124852.P12170443955299412894

/-! ## A124852.P17745060171662689531

`A285280(A133263(n+7)+8)`
-/

namespace A124852.P17745060171662689531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A133263 (n + 7) + 8).toNat

end

end A124852.P17745060171662689531

/-! ## A124852.P11222965624061296318

`A285280(eq[7, A002262(n)]+3)`
-/

namespace A124852.P11222965624061296318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A124852.P11222965624061296318

/-! ## A124852.P2114776367177173345

`A285280(A000124(n+8)-(n-1))`
-/

namespace A124852.P2114776367177173345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000124 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A124852.P2114776367177173345

/-! ## A124852.P8966054647334454695

`A285280(A055999(n+6)-(2*n+1))`
-/

namespace A124852.P8966054647334454695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A055999 (n + 6) - (2 * n + 1 : ℤ)).toNat

end

end A124852.P8966054647334454695

/-!
# A124853: Numbers k such that 5k + 3 and 3k + 5 are primes.

The programs for A124853, the canonical program `A124853.P6201558340224196537` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124853 has offset 1).

The definition of A124853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124853.P4189978962129365818

`∩[A087505(n+1), A088879(n+1)]`
-/

namespace A124853.P4189978962129365818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124853.P4189978962129365818

namespace A124853

/-- `∩[A087505(n+1), A088879(n+1)]` -/
def P4189978962129365818.Spec : Prop :=
  ∀ n, (P4189978962129365818.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P7163594399215797098

`∩[A024893(n+1), A024896(n+1)]-1`
-/

namespace A124853.P7163594399215797098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A124853.P7163594399215797098

namespace A124853

/-- `∩[A024893(n+1), A024896(n+1)]-1` -/
def P7163594399215797098.Spec : Prop :=
  ∀ n, P7163594399215797098.a n = A124853 (n + 1)

end A124853

/-! ## A124853.P6201558340224196537

`record[A075743(A024896(n+1))*A087505(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124853

/-- `record[A075743(A024896(n+1))*A087505(n+1)]` -/
def P6201558340224196537.Spec : Prop :=
  ∀ n, P6201558340224196537.a n = A124853 (n + 1)

theorem P6201558340224196537.correct : P6201558340224196537.Spec := by
  intro n
  simp only [A124853, Nat.add_sub_cancel]

end A124853

/-! ## A124853.P12190372649958475889

`eq[A001222(A016885(n)), A075743(n+1)]`
-/

namespace A124853.P12190372649958475889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016885 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P12190372649958475889

namespace A124853

/-- `eq[A001222(A016885(n)), A075743(n+1)]` -/
def P12190372649958475889.Spec : Prop :=
  ∀ n, (P12190372649958475889.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P15176282738104430022

`eq[A245839(n+1), A319695(A016885(n))]`
-/

namespace A124853.P15176282738104430022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P15176282738104430022

namespace A124853

/-- `eq[A245839(n+1), A319695(A016885(n))]` -/
def P15176282738104430022.Spec : Prop :=
  ∀ n, (P15176282738104430022.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P17670530194978257298

`eq[A010051(5*n+3), A034693(3*n+4)]`
-/

namespace A124853.P17670530194978257298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (5 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P17670530194978257298

namespace A124853

/-- `eq[A010051(5*n+3), A034693(3*n+4)]` -/
def P17670530194978257298.Spec : Prop :=
  ∀ n, (P17670530194978257298.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P2509418146298145108

`eq[A075743(n+1), A078896(5*n+3)]`
-/

namespace A124853.P2509418146298145108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P2509418146298145108

namespace A124853

/-- `eq[A075743(n+1), A078896(5*n+3)]` -/
def P2509418146298145108.Spec : Prop :=
  ∀ n, (P2509418146298145108.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P6472872184674515583

`eq[A010051(5*n+3), A103689(3*n+4)]`
-/

namespace A124853.P6472872184674515583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (5 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P6472872184674515583

namespace A124853

/-- `eq[A010051(5*n+3), A103689(3*n+4)]` -/
def P6472872184674515583.Spec : Prop :=
  ∀ n, (P6472872184674515583.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P7143132510379494153

`eq[A160596(3*n+5), A340073(5*n+3)]`
-/

namespace A124853.P7143132510379494153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160596 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340073 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P7143132510379494153

namespace A124853

/-- `eq[A160596(3*n+5), A340073(5*n+3)]` -/
def P7143132510379494153.Spec : Prop :=
  ∀ n, (P7143132510379494153.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P145558113158083297

`eq[A160596(3*n+5), A340082(5*n+3)]`
-/

namespace A124853.P145558113158083297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160596 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340082 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P145558113158083297

namespace A124853

/-- `eq[A160596(3*n+5), A340082(5*n+3)]` -/
def P145558113158083297.Spec : Prop :=
  ∀ n, (P145558113158083297.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P7433173575416412921

`eq[log2(A013632(3*(n+1))), A013632(5*n+2)]`
-/

namespace A124853.P7433173575416412921
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A013632 (3 * (n + 1)) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A124853.P7433173575416412921

namespace A124853

/-- `eq[log2(A013632(3*(n+1))), A013632(5*n+2)]` -/
def P7433173575416412921.Spec : Prop :=
  ∀ n, (P7433173575416412921.a n : ℤ) = A124853 (n + 1)

end A124853

/-! ## A124853.P13684268665485314955

`eq[A002033(A090772(n+1)), A245839(n+1)]`
-/

namespace A124853.P13684268665485314955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A090772 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124853.P13684268665485314955

namespace A124853

/-- `eq[A002033(A090772(n+1)), A245839(n+1)]` -/
def P13684268665485314955.Spec : Prop :=
  ∀ n, (P13684268665485314955.a n : ℤ) = A124853 (n + 1)

end A124853

/-!
# A124854: Primes p=n/2 such that 5n+3 and 3n+5 are primes.

The programs for A124854, there is no canonical definition to state claims against.
-/

/-! ## A124854.P9928211348289103167

`∩[A023221(n+1), A023238(n+1)]`
-/

namespace A124854.P9928211348289103167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124854.P9928211348289103167

/-! ## A124854.P7842759893622589744

`record[A006530(A124853(n+2))]`
-/

namespace A124854.P7842759893622589744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124853 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124854.P7842759893622589744

/-! ## A124854.P11068415350761904304

`p?[A014682(A124853(n+1))]`
-/

namespace A124854.P11068415350761904304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124854.P11068415350761904304

/-! ## A124854.P6756087961989551185

`∩[A023221(n+1), A102338(n+1)]`
-/

namespace A124854.P6756087961989551185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124854.P6756087961989551185

/-! ## A124854.P7257483754066958265

`∩[A023238(n+1), A059325(n+1)]`
-/

namespace A124854.P7257483754066958265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124854.P7257483754066958265

/-! ## A124854.P13784690621296649525

`p?[A075743(A024896(n+1))*A102338(n+1)]`
-/

namespace A124854.P13784690621296649525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A024896 (n + 1)).toNat * A102338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124854.P13784690621296649525

/-!
# A124855: Numbers k such that 3k + 4 and 4k + 3 are primes.

The programs for A124855, the canonical program `A124855.P3478222764738300840` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124855 has offset 1).

The definition of A124855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124855.P3478222764738300840

`∩[A034936(n+1), A095278(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A124855

/-- `∩[A034936(n+1), A095278(n+1)]` -/
def P3478222764738300840.Spec : Prop :=
  ∀ n, (P3478222764738300840.a n : ℤ) = A124855 (n + 1)

theorem P3478222764738300840.correct : P3478222764738300840.Spec := by
  intro n
  simp only [A124855, Nat.add_sub_cancel]

end A124855

/-! ## A124855.P12714164713655149992

`eq[A037034(n+1), A156706(n+1)]`
-/

namespace A124855.P12714164713655149992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P12714164713655149992

namespace A124855

/-- `eq[A037034(n+1), A156706(n+1)]` -/
def P12714164713655149992.Spec : Prop :=
  ∀ n, (P12714164713655149992.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P1243865833766820164

`eq[A078703(n+1), A156706(n+1)]`
-/

namespace A124855.P1243865833766820164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P1243865833766820164

namespace A124855

/-- `eq[A078703(n+1), A156706(n+1)]` -/
def P1243865833766820164.Spec : Prop :=
  ∀ n, (P1243865833766820164.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P13031236249802101552

`eq[A037034(n+1), A245838(n+1)]`
-/

namespace A124855.P13031236249802101552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P13031236249802101552

namespace A124855

/-- `eq[A037034(n+1), A245838(n+1)]` -/
def P13031236249802101552.Spec : Prop :=
  ∀ n, (P13031236249802101552.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P6406775362318172773

`eq[A078703(n+1), A245838(n+1)]`
-/

namespace A124855.P6406775362318172773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P6406775362318172773

namespace A124855

/-- `eq[A078703(n+1), A245838(n+1)]` -/
def P6406775362318172773.Spec : Prop :=
  ∀ n, (P6406775362318172773.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P533932605816481062

`eq[A156706(n+1), A363291(n+1)]`
-/

namespace A124855.P533932605816481062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P533932605816481062

namespace A124855

/-- `eq[A156706(n+1), A363291(n+1)]` -/
def P533932605816481062.Spec : Prop :=
  ∀ n, (P533932605816481062.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P10077698931252145242

`eq[A156706(n+1), A364082(n+1)]`
-/

namespace A124855.P10077698931252145242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P10077698931252145242

namespace A124855

/-- `eq[A156706(n+1), A364082(n+1)]` -/
def P10077698931252145242.Spec : Prop :=
  ∀ n, (P10077698931252145242.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P4174348472792443187

`eq[A001222(A004767(n)), A156706(n+1)]`
-/

namespace A124855.P4174348472792443187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004767 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P4174348472792443187

namespace A124855

/-- `eq[A001222(A004767(n)), A156706(n+1)]` -/
def P4174348472792443187.Spec : Prop :=
  ∀ n, (P4174348472792443187.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P74290344006304928

`eq[A001222(A004767(n)), A245838(n+1)]`
-/

namespace A124855.P74290344006304928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004767 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P74290344006304928

namespace A124855

/-- `eq[A001222(A004767(n)), A245838(n+1)]` -/
def P74290344006304928.Spec : Prop :=
  ∀ n, (P74290344006304928.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P6245899997585975315

`eq[A046067(n+1), A156706(n+1)]`
-/

namespace A124855.P6245899997585975315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P6245899997585975315

namespace A124855

/-- `eq[A046067(n+1), A156706(n+1)]` -/
def P6245899997585975315.Spec : Prop :=
  ∀ n, (P6245899997585975315.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P16896603710836357273

`eq[A046067(n+1), A245838(n+1)]`
-/

namespace A124855.P16896603710836357273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P16896603710836357273

namespace A124855

/-- `eq[A046067(n+1), A245838(n+1)]` -/
def P16896603710836357273.Spec : Prop :=
  ∀ n, (P16896603710836357273.a n : ℤ) = A124855 (n + 1)

end A124855

/-! ## A124855.P13446835732759103577

`eq[A032742(3*n+4), A032742(A004767(n))]`
-/

namespace A124855.P13446835732759103577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124855.P13446835732759103577

namespace A124855

/-- `eq[A032742(3*n+4), A032742(A004767(n))]` -/
def P13446835732759103577.Spec : Prop :=
  ∀ n, (P13446835732759103577.a n : ℤ) = A124855 (n + 1)

end A124855

/-!
# A124857: Number of base 11 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124857, there is no canonical definition to state claims against.
-/

/-! ## A124857.P8261550825598608373

`A285280(A000217(n+8)+11)`
-/

namespace A124857.P8261550825598608373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000217 (n + 8) + 11).toNat

end

end A124857.P8261550825598608373

/-! ## A124857.P1646433129138481063

`A000265(A124852(n)+A005191(n))`
-/

namespace A124857.P1646433129138481063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124852 n + A005191 n).toNat

end

end A124857.P1646433129138481063

/-! ## A124857.P1677147969488640977

`A000265(A324595(n)+A124852(n))`
-/

namespace A124857.P1677147969488640977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324595 n + A124852 n).toNat

end

end A124857.P1677147969488640977

/-! ## A124857.P14584828258596531027

`A000265(A124852(n)+A035343(n*Δ[n²]))`
-/

namespace A124857.P14584828258596531027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124852 n + A035343 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat).toNat

end

end A124857.P14584828258596531027

/-!
# A124858: Number of base 12 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124858, there is no canonical definition to state claims against.
-/

/-! ## A124858.P7631881031350805957

`A285280(A000217(n+10)-(n-2))`
-/

namespace A124858.P7631881031350805957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A000217 (n + 10) - ((n : ℤ) - 2)).toNat

end

end A124858.P7631881031350805957

/-! ## A124858.P15345789619310394729

`A285280(-xor(-xor(A133263(n+9)+8, -1), -1))`
-/

namespace A124858.P15345789619310394729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (-Int.xor (-Int.xor (A133263 (n + 9) + 8) (-1)) (-1)).toNat

end

end A124858.P15345789619310394729

/-! ## A124858.P14392846569263353739

`A124857(n)+A014682(A124864(n)-A124857(n))`
-/

namespace A124858.P14392846569263353739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124857 n + A014682 (A124864 n - A124857 n).toNat

end

end A124858.P14392846569263353739

/-! ## A124858.P16450232479685831125

`2*A000265(A324595(n)+A124852(n))-A124852(n)`
-/

namespace A124858.P16450232479685831125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A324595 n + A124852 n).toNat - A124852 n

end

end A124858.P16450232479685831125

/-!
# A124859: Multiplicative with p^e -> primorial(e), p prime and e > 0.

The programs for A124859, the canonical program `A124859.P14397477856790736102` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124859 has offset 1).

The definition of A124859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124859.P14397477856790736102

`A108951(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A124859

/-- `A108951(A181819(n+1))` -/
def P14397477856790736102.Spec : Prop :=
  ∀ n, P14397477856790736102.a n = A124859 (n + 1)

theorem P14397477856790736102.correct : P14397477856790736102.Spec := by
  intro n
  simp only [A124859, Nat.add_sub_cancel]

end A124859

/-! ## A124859.P18056688821948259094

`A002110(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A124859.P18056688821948259094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002110 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A124859.P18056688821948259094

namespace A124859

/-- `A002110(A067029(n+1))*a(A028234(n+1)-1)` -/
def P18056688821948259094.Spec : Prop :=
  ∀ n, P18056688821948259094.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P6437416470549404195

`A278159(A156552(n+1))`
-/

namespace A124859.P6437416470549404195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278159 (A156552 (n + 1)).toNat

end

end A124859.P6437416470549404195

namespace A124859

/-- `A278159(A156552(n+1))` -/
def P6437416470549404195.Spec : Prop :=
  ∀ n, P6437416470549404195.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P15920065209059808164

`∑{d}[n+1, A354358(#)]`
-/

namespace A124859.P15920065209059808164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354358 d

end

end A124859.P15920065209059808164

namespace A124859

/-- `∑{d}[n+1, A354358(#)]` -/
def P15920065209059808164.Spec : Prop :=
  ∀ n, P15920065209059808164.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P5298000146372502370

`∏{d}[n+1, A369031(#)]`
-/

namespace A124859.P5298000146372502370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A369031 d

end

end A124859.P5298000146372502370

namespace A124859

/-- `∏{d}[n+1, A369031(#)]` -/
def P5298000146372502370.Spec : Prop :=
  ∀ n, P5298000146372502370.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P8964096038986578029

`∏{e}[n+1, A002110(#)]`
-/

namespace A124859.P8964096038986578029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002110 (Nat.factorization (f1 n) p)

end

end A124859.P8964096038986578029

namespace A124859

/-- `∏{e}[n+1, A002110(#)]` -/
def P8964096038986578029.Spec : Prop :=
  ∀ n, P8964096038986578029.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P12588357165394822023

`A181822(A101296(n+1))`
-/

namespace A124859.P12588357165394822023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (A101296 (n + 1)).toNat

end

end A124859.P12588357165394822023

namespace A124859

/-- `A181822(A101296(n+1))` -/
def P12588357165394822023.Spec : Prop :=
  ∀ n, P12588357165394822023.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P4343264580300175171

`A108951(∏{e}[n+1, A095285(#)])`
-/

namespace A124859.P4343264580300175171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat

end

end A124859.P4343264580300175171

namespace A124859

/-- `A108951(∏{e}[n+1, A095285(#)])` -/
def P4343264580300175171.Spec : Prop :=
  ∀ n, P4343264580300175171.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P4987584507182005995

`A108951(∏{e}[n+1, A219697(#)])`
-/

namespace A124859.P4987584507182005995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat

end

end A124859.P4987584507182005995

namespace A124859

/-- `A108951(∏{e}[n+1, A219697(#)])` -/
def P4987584507182005995.Spec : Prop :=
  ∀ n, P4987584507182005995.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P16909247753844207132

`A108951(A329601(n+1)*A351944(n+1))`
-/

namespace A124859.P16909247753844207132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A124859.P16909247753844207132

namespace A124859

/-- `A108951(A329601(n+1)*A351944(n+1))` -/
def P16909247753844207132.Spec : Prop :=
  ∀ n, P16909247753844207132.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P9584026036077471214

`A181811(2*A181819(n+1))*A181819(n+1)`
-/

namespace A124859.P9584026036077471214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (2 * A181819 (n + 1)).toNat * A181819 (n + 1)

end

end A124859.P9584026036077471214

namespace A124859

/-- `A181811(2*A181819(n+1))*A181819(n+1)` -/
def P9584026036077471214.Spec : Prop :=
  ∀ n, P9584026036077471214.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P11764661962035988402

`A331188(A181819(n+1)²)/A331188(A181819(n+1))`
-/

namespace A124859.P11764661962035988402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A181819 (n + 1) ^ 2).toNat : ℚ) / (A331188 (A181819 (n + 1)).toNat : ℚ)

end

end A124859.P11764661962035988402

namespace A124859

/-- `A331188(A181819(n+1)²)/A331188(A181819(n+1))` -/
def P11764661962035988402.Spec : Prop :=
  ∀ n, P11764661962035988402.a n = (A124859 (n + 1) : ℚ)

end A124859

/-! ## A124859.P1834697729215370882

`∏{e}[A003961(n+1), A019565(A000079(#)-1)]`
-/

namespace A124859.P1834697729215370882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A019565 (A000079 (Nat.factorization (f1 n).natAbs p) - 1).toNat

end

end A124859.P1834697729215370882

namespace A124859

/-- `∏{e}[A003961(n+1), A019565(A000079(#)-1)]` -/
def P1834697729215370882.Spec : Prop :=
  ∀ n, P1834697729215370882.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P15333713259380318317

`A181821(A238745(n+1))`
-/

namespace A124859.P15333713259380318317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A238745 (n + 1)).toNat

end

end A124859.P15333713259380318317

namespace A124859

/-- `A181821(A238745(n+1))` -/
def P15333713259380318317.Spec : Prop :=
  ∀ n, P15333713259380318317.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P275460778526668877

`A181821(A122111(A181819(A071364(n+1))))`
-/

namespace A124859.P275460778526668877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A122111 (A181819 (A071364 (n + 1)).toNat).toNat).toNat

end

end A124859.P275460778526668877

namespace A124859

/-- `A181821(A122111(A181819(A071364(n+1))))` -/
def P275460778526668877.Spec : Prop :=
  ∀ n, P275460778526668877.a n = A124859 (n + 1)

end A124859

/-! ## A124859.P13300945629442851396

`A181821(A122111(A181819(A122111(A329607(n+1)))))`
-/

namespace A124859.P13300945629442851396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A122111 (A181819 (A122111 (A329607 (n + 1)).toNat).toNat).toNat).toNat

end

end A124859.P13300945629442851396

namespace A124859

/-- `A181821(A122111(A181819(A122111(A329607(n+1)))))` -/
def P13300945629442851396.Spec : Prop :=
  ∀ n, P13300945629442851396.a n = A124859 (n + 1)

end A124859

/-!
# A124860: A Jacobsthal-Pascal triangle.

The programs for A124860, the canonical program `A124860.P14852524666225097525` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124860 has offset 0).

The definition of A124860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124860.P13347127242384009514

`A007318(n)*A073370(A057944(n))`
-/

namespace A124860.P13347127242384009514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A073370 (A057944 n).toNat

end

end A124860.P13347127242384009514

namespace A124860

/-- `A007318(n)*A073370(A057944(n))` -/
def P13347127242384009514.Spec : Prop :=
  ∀ n, P13347127242384009514.a n = A124860 n

end A124860

/-! ## A124860.P14852524666225097525

`A007318(n)*A001045(∑[A010054(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124860

/-- `A007318(n)*A001045(∑[A010054(n)])` -/
def P14852524666225097525.Spec : Prop :=
  ∀ n, P14852524666225097525.a n = A124860 n

theorem P14852524666225097525.correct : P14852524666225097525.Spec := by
  intro n
  simp only [A124860]

end A124860

/-! ## A124860.P4962799785034285630

`A001045(A002024(n+1))*A007318(n)`
-/

namespace A124860.P4962799785034285630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002024 (n + 1)).toNat * A007318 n

end

end A124860.P4962799785034285630

namespace A124860

/-- `A001045(A002024(n+1))*A007318(n)` -/
def P4962799785034285630.Spec : Prop :=
  ∀ n, P4962799785034285630.a n = A124860 n

end A124860

/-! ## A124860.P12054676004152163856

`A001045(A003056(n)+1)*A007318(n)`
-/

namespace A124860.P12054676004152163856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A003056 n + 1).toNat * A007318 n

end

end A124860.P12054676004152163856

namespace A124860

/-- `A001045(A003056(n)+1)*A007318(n)` -/
def P12054676004152163856.Spec : Prop :=
  ∀ n, P12054676004152163856.a n = A124860 n

end A124860

/-! ## A124860.P12164329467884492551

`A007318(n)*A001045(∑[A073424(n)]+1)`
-/

namespace A124860.P12164329467884492551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A124860.P12164329467884492551

namespace A124860

/-- `A007318(n)*A001045(∑[A073424(n)]+1)` -/
def P12164329467884492551.Spec : Prop :=
  ∀ n, P12164329467884492551.a n = A124860 n

end A124860

/-! ## A124860.P12635834757930850858

`A001045(A002024(n+1))/A176346(n)*A176348(n)`
-/

namespace A124860.P12635834757930850858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (A002024 (n + 1)).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A124860.P12635834757930850858

namespace A124860

/-- `A001045(A002024(n+1))/A176346(n)*A176348(n)` -/
def P12635834757930850858.Spec : Prop :=
  ∀ n, P12635834757930850858.a n = (A124860 n : ℚ)

end A124860

/-! ## A124860.P15841639007876104738

`A007318(n)*A004396(A137688(n))`
-/

namespace A124860.P15841639007876104738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A004396 (A137688 n).toNat

end

end A124860.P15841639007876104738

namespace A124860

/-- `A007318(n)*A004396(A137688(n))` -/
def P15841639007876104738.Spec : Prop :=
  ∀ n, P15841639007876104738.a n = A124860 n

end A124860

/-! ## A124860.P17991290303539295340

`A007318(n)*A004396(Δ[A007664(n)])`
-/

namespace A124860.P17991290303539295340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A004396 (f1 (n + 1) - f1 n).toNat

end

end A124860.P17991290303539295340

namespace A124860

/-- `A007318(n)*A004396(Δ[A007664(n)])` -/
def P17991290303539295340.Spec : Prop :=
  ∀ n, P17991290303539295340.a n = A124860 n

end A124860

/-!
# A124861: Expansion of 1/(1-x-3*x^2-4*x^3-2*x^4).

The programs for A124861, the canonical program `A124861.P2291383026710852244` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124861 has offset 0).

The definition of A124861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-3x^2-4x^3-2x^4))` (program `A124861.P2291383026710852244`, by `A124861.P2291383026710852244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124861.P2291383026710852244

`ogf(1/(1-x-3x^2-4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124861

/-- `ogf(1/(1-x-3x^2-4x^3-2x^4))` -/
def P2291383026710852244.Spec : Prop :=
  ∀ n, P2291383026710852244.a n = A124861 n

theorem P2291383026710852244.correct : P2291383026710852244.Spec := by
  intro n
  simp only [A124861]

end A124861

/-! ## A124861.P6531575646734572060

`a(n-1)+3*a(n-2)+4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11`
-/

namespace A124861.P6531575646734572060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 11] fun n a =>
  a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3) + 2 * a (n - 4)

end

end A124861.P6531575646734572060

namespace A124861

/-- `a(n-1)+3*a(n-2)+4*a(n-3)+2*a(n-4)` -/
def P6531575646734572060.Spec : Prop :=
  ∀ n, (P6531575646734572060.a n : ℤ) = A124861 n

end A124861

/-! ## A124861.P2302234525284475252

`or(1, a(n-1)+a(n-2))+a(n-2)+xor(1, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A124861.P2302234525284475252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor 1 (a (n - 1) + a (n - 2)) + (a (n - 2) + Nat.xor 1 (a (n - 1)))

end

end A124861.P2302234525284475252

namespace A124861

/-- `or(1, a(n-1)+a(n-2))+a(n-2)+xor(1, a(n-1))` -/
def P2302234525284475252.Spec : Prop :=
  ∀ n, (P2302234525284475252.a n : ℤ) = A124861 n

end A124861

/-! ## A124861.P605465313221685980

`round(∑[A080040(n)/3])`
-/

namespace A124861.P605465313221685980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124861.P605465313221685980

namespace A124861

/-- `round(∑[A080040(n)/3])` -/
def P605465313221685980.Spec : Prop :=
  ∀ n, P605465313221685980.a n = A124861 n

end A124861

/-! ## A124861.P9142226976161466801

`A026150(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A124861.P9142226976161466801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A026150 n + a (n - 3)

end

end A124861.P9142226976161466801

namespace A124861

/-- `A026150(n)+a(n-3)` -/
def P9142226976161466801.Spec : Prop :=
  ∀ n, P9142226976161466801.a n = A124861 n

end A124861

/-! ## A124861.P1777737882022569309

`ceil(A108898(n+1)/3)`
-/

namespace A124861.P1777737882022569309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108898 (n + 1) : ℚ) / 3⌉

end

end A124861.P1777737882022569309

namespace A124861

/-- `ceil(A108898(n+1)/3)` -/
def P1777737882022569309.Spec : Prop :=
  ∀ n, P1777737882022569309.a n = A124861 n

end A124861

/-! ## A124861.P2489846747019846659

`round(A028860(n+3)/3)`
-/

namespace A124861.P2489846747019846659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028860 (n + 3) : ℚ) / 3)

end

end A124861.P2489846747019846659

namespace A124861

/-- `round(A028860(n+3)/3)` -/
def P2489846747019846659.Spec : Prop :=
  ∀ n, P2489846747019846659.a n = A124861 n

end A124861

/-! ## A124861.P10362947293679213422

`round(Δ[A052948(n+1)]/3)`
-/

namespace A124861.P10362947293679213422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 3)

end

end A124861.P10362947293679213422

namespace A124861

/-- `round(Δ[A052948(n+1)]/3)` -/
def P10362947293679213422.Spec : Prop :=
  ∀ n, P10362947293679213422.a n = A124861 n

end A124861

/-! ## A124861.P12889592068301343315

`round(A116556(n+1)/6)`
-/

namespace A124861.P12889592068301343315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116556 (n + 1) : ℚ) / 6)

end

end A124861.P12889592068301343315

namespace A124861

/-- `round(A116556(n+1)/6)` -/
def P12889592068301343315.Spec : Prop :=
  ∀ n, P12889592068301343315.a n = A124861 n

end A124861

/-!
# A124862: a(n) = J(2*n+1) * C(2*n,n), where J(n) = A001045(n).

The programs for A124862, the canonical program `A124862.P890811880891312165` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124862 has offset 0).

The definition of A124862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124862.P890811880891312165

`A007583(n)*A000984(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124862

/-- `A007583(n)*A000984(n)` -/
def P890811880891312165.Spec : Prop :=
  ∀ n, P890811880891312165.a n = A124862 n

theorem P890811880891312165.correct : P890811880891312165.Spec := by
  intro n
  simp only [A124862]

end A124862

/-! ## A124862.P3780679830003148764

`C(2*n, n)*(2^(2*n+1)+1)/3`
-/

namespace A124862.P3780679830003148764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * (2 ^ (2 * n + 1) + 1) : ℚ) / 3

end

end A124862.P3780679830003148764

namespace A124862

/-- `C(2*n, n)*(2^(2*n+1)+1)/3` -/
def P3780679830003148764.Spec : Prop :=
  ∀ n, P3780679830003148764.a n = (A124862 n : ℚ)

end A124862

/-! ## A124862.P14256424944437606306

`C(2*n, n)*∑[ceil(4^n/2)]`
-/

namespace A124862.P14256424944437606306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124862.P14256424944437606306

namespace A124862

/-- `C(2*n, n)*∑[ceil(4^n/2)]` -/
def P14256424944437606306.Spec : Prop :=
  ∀ n, P14256424944437606306.a n = A124862 n

end A124862

/-! ## A124862.P3245608693441656946

`record[∑[(-2)^n]*A001405(n)]`
-/

namespace A124862.P3245608693441656946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124862.P3245608693441656946

namespace A124862

/-- `record[∑[(-2)^n]*A001405(n)]` -/
def P3245608693441656946.Spec : Prop :=
  ∀ n, P3245608693441656946.a n = A124862 n

end A124862

/-! ## A124862.P11029398577308024376

`A001405(2*n)*A305750(2*n+1)`
-/

namespace A124862.P11029398577308024376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A305750 (2 * n + 1)

end

end A124862.P11029398577308024376

namespace A124862

/-- `A001405(2*n)*A305750(2*n+1)` -/
def P11029398577308024376.Spec : Prop :=
  ∀ n, P11029398577308024376.a n = A124862 n

end A124862

/-! ## A124862.P9925857327822726867

`A000984(n)+A000984(n)*A020988(n)`
-/

namespace A124862.P9925857327822726867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A000984 n * A020988 n

end

end A124862.P9925857327822726867

namespace A124862

/-- `A000984(n)+A000984(n)*A020988(n)` -/
def P9925857327822726867.Spec : Prop :=
  ∀ n, P9925857327822726867.a n = A124862 n

end A124862

/-! ## A124862.P17579204288704941653

`A124860(∑[4*n])`
-/

namespace A124862.P17579204288704941653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124860 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124862.P17579204288704941653

namespace A124862

/-- `A124860(∑[4*n])` -/
def P17579204288704941653.Spec : Prop :=
  ∀ n, P17579204288704941653.a n = A124862 n

end A124862

/-!
# A124863: Expansion of 1 / chi(q)^12 in powers of q where chi() is a Ramanujan theta function.

The programs for A124863, there is no canonical definition to state claims against.
-/

/-! ## A124863.P802200259884467521

`(-1)^n*A022577(n)`
-/

namespace A124863.P802200259884467521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A022577 n

end

end A124863.P802200259884467521

/-! ## A124863.P12892965702421420084

`A022577(n)*A033999(n)`
-/

namespace A124863.P12892965702421420084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022577 n * A033999 n

end

end A124863.P12892965702421420084

/-! ## A124863.P13073549169267816525

`A033999(n)*A107035(2*n+1)`
-/

namespace A124863.P13073549169267816525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107035 (2 * n + 1)

end

end A124863.P13073549169267816525

/-! ## A124863.P8967999142937737886

`A131126(2*n+1)/((1-6/2)*A280560(n+1))`
-/

namespace A124863.P8967999142937737886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 (2 * n + 1) : ℚ) / ((1 - (6 : ℚ) / 2) * (A280560 (n + 1) : ℚ))

end

end A124863.P8967999142937737886

/-! ## A124863.P8524325541195272916

`A022577(n)/A007096(n)*A189925(n)`
-/

namespace A124863.P8524325541195272916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022577 n : ℚ) / (A007096 n : ℚ) * (A189925 n : ℚ)

end

end A124863.P8524325541195272916

/-! ## A124863.P702311615608983929

`A033999(n)*A260145(2*n+1)`
-/

namespace A124863.P702311615608983929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A260145 (2 * n + 1)

end

end A124863.P702311615608983929

/-! ## A124863.P8172732206909197993

`A210066(2*n+1)/(2*A280560(n+1))`
-/

namespace A124863.P8172732206909197993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 (2 * n + 1) : ℚ) / (2 * A280560 (n + 1) : ℚ)

end

end A124863.P8172732206909197993

/-! ## A124863.P15818205585374543060

`A022577(n)*A107035(n+1)/A260145(n+1)`
-/

namespace A124863.P15818205585374543060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022577 n * A107035 (n + 1) : ℚ) / (A260145 (n + 1) : ℚ)

end

end A124863.P15818205585374543060

/-! ## A124863.P14117840510601509759

`A007249(n)*A022577(n)/A112142(n)`
-/

namespace A124863.P14117840510601509759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007249 n * A022577 n : ℚ) / (A112142 n : ℚ)

end

end A124863.P14117840510601509759

/-!
# A124864: Number of base 13 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124864, there is no canonical definition to state claims against.
-/

/-! ## A124864.P8027229496893172807

`A285280(eq[19, A066657(n)]+2)`
-/

namespace A124864.P8027229496893172807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A124864.P8027229496893172807

/-! ## A124864.P5995268089274992519

`A285280(A167614(n+10)-(n+1))`
-/

namespace A124864.P5995268089274992519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167614 (n + 10) - (n + 1 : ℤ)).toNat

end

end A124864.P5995268089274992519

/-! ## A124864.P4020646305799478291

`A000265(A124858(n)+A005191(n))`
-/

namespace A124864.P4020646305799478291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124858 n + A005191 n).toNat

end

end A124864.P4020646305799478291

/-! ## A124864.P3670478505580319446

`A000265(2*A124898(n)-A124949(n))`
-/

namespace A124864.P3670478505580319446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A124898 n - A124949 n).toNat

end

end A124864.P3670478505580319446

/-!
# A124865: Numbers of the form p^2 - q^2 with p > q prime.

The programs for A124865, there is no canonical definition to state claims against.
-/

/-! ## A124865.P132234074003777378

`record[A168469(ceil(lcm(2, n+1)/4))]`
-/

namespace A124865.P132234074003777378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168469 ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124865.P132234074003777378

/-! ## A124865.P10076805886415354275

`record[A168469(n+1)%(11*n+7)]`
-/

namespace A124865.P10076805886415354275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168469 (n + 1)) (11 * n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124865.P10076805886415354275

/-! ## A124865.P14463778372208740139

`record[A168469(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A124865.P14463778372208740139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168469 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124865.P14463778372208740139

/-! ## A124865.P8557667803532392002

`record[A168469(A065648(n))]`
-/

namespace A124865.P8557667803532392002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168469 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124865.P8557667803532392002

/-! ## A124865.P14919910254138077650

`record[A168469(A117910(n))]`
-/

namespace A124865.P14919910254138077650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168469 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124865.P14919910254138077650

/-!
# A124866: Numbers of the form (p^2-q^2)/8, p, q odd primes, p>q.

The programs for A124866, there is no canonical definition to state claims against.
-/

/-! ## A124866.P10578958203476346162

`record[A174571(A124865(n+1))/2]`
-/

namespace A124866.P10578958203476346162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174571 (A124865 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124866.P10578958203476346162

/-! ## A124866.P11940326577097149105

`A117358(∩[A124865(n+1), A234275(n)])`
-/

namespace A124866.P11940326577097149105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A124866.P11940326577097149105

/-! ## A124866.P5702347384995267179

`record[A174571(A168469(n+1))/2]`
-/

namespace A124866.P5702347384995267179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174571 (A168469 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124866.P5702347384995267179

/-! ## A124866.P12587116342755809703

`record[A054576(A168469(n+2))/2]`
-/

namespace A124866.P12587116342755809703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (A168469 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124866.P12587116342755809703

/-! ## A124866.P6050336178314644193

`A065033(record[A174571(A168469(n+1))])`
-/

namespace A124866.P6050336178314644193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A168469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124866.P6050336178314644193

/-!
# A124867: Numbers that are the sum of 3 distinct primes.

The programs for A124867, there is no canonical definition to state claims against.
-/

/-! ## A124867.P2956282517044371546

`round(∑[cosh(3/(n+1))])`
-/

namespace A124867.P2956282517044371546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (3 / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124867.P2956282517044371546

/-!
# A124870: Denominator of real part of (3*i - 1)^(-n).

The programs for A124870, there is no canonical definition to state claims against.
-/

/-! ## A124870.P17909054565469116733

`lcm(A156183(n), A204551(A156180(n)))`
-/

namespace A124870.P17909054565469116733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156183 n) (A204551 (A156180 n).toNat)

end

end A124870.P17909054565469116733

/-! ## A124870.P3661282104090207788

`10^n/A010874(A000307(n))`
-/

namespace A124870.P3661282104090207788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / (A010874 (A000307 n).toNat : ℚ)

end

end A124870.P3661282104090207788

/-!
# A124872: Denominator of imaginary part of (3*i - 1)^(-n).

The programs for A124872, there is no canonical definition to state claims against.
-/

/-! ## A124872.P18138142511675046869

`10^n/A061142(A259793(n))`
-/

namespace A124872.P18138142511675046869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / (A061142 (A259793 n).toNat : ℚ)

end

end A124872.P18138142511675046869

/-! ## A124872.P18283465118220588770

`A000351(n)*A117592(A247281(n))`
-/

namespace A124872.P18283465118220588770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A117592 (A247281 n).toNat

end

end A124872.P18283465118220588770

/-!
# A124874: Number of distinct primes dividing A007408(n).

The programs for A124874, there is no canonical definition to state claims against.
-/

/-! ## A124874.P6528888736961036149

`A053597(3*n+4)%p?[A079007(n)]`
-/

namespace A124874.P6528888736961036149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053597 (3 * n + 4)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A124874.P6528888736961036149

/-! ## A124874.P10664431101556816526

`A001222(∑[A167430(A009286(n+1))])`
-/

namespace A124874.P10664431101556816526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (A009286 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124874.P10664431101556816526

/-! ## A124874.P6585469258874260580

`A001221(∑[A077559(n+1)*A307447(n+1)])`
-/

namespace A124874.P6585469258874260580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077559 (n + 1) * A307447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124874.P6585469258874260580

/-! ## A124874.P11601539265596551677

`A001221(A024314(2*(n+2))%A051177(n+3))`
-/

namespace A124874.P11601539265596551677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A024314 (2 * (n + 2))) (A051177 (n + 3))).toNat

end

end A124874.P11601539265596551677

/-! ## A124874.P1114199444693438742

`A333766(A143862(n)*A151904(3*n))`
-/

namespace A124874.P1114199444693438742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A143862 n * A151904 (3 * n)).toNat

end

end A124874.P1114199444693438742

/-!
# A124876: Number of prime factors (counted with multiplicity) in factorization of A007408(n).

The programs for A124876, there is no canonical definition to state claims against.
-/

/-! ## A124876.P1228192828241580640

`A124763(A034444(2*n+1)+A001122(n+1))`
-/

namespace A124876.P1228192828241580640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A034444 (2 * n + 1) + A001122 (n + 1)).toNat

end

end A124876.P1228192828241580640

/-! ## A124876.P12963120231313298649

`∑{p}[A243208(2*(n+1)), A001221(#)]`
-/

namespace A124876.P12963120231313298649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243208 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A124876.P12963120231313298649

/-! ## A124876.P876853974442179051

`∑{p}[A243208(2*(n+1)), A001222(#)]`
-/

namespace A124876.P876853974442179051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243208 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A124876.P876853974442179051

/-! ## A124876.P5432265286132620012

`∑{e}[A243208(2*(n+1)), A000045(#)]`
-/

namespace A124876.P5432265286132620012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243208 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A124876.P5432265286132620012

/-! ## A124876.P15785763660358978366

`∑{e}[A243208(2*(n+1)), A001679(#)]`
-/

namespace A124876.P15785763660358978366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243208 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001679 (Nat.factorization (f1 n).natAbs p)

end

end A124876.P15785763660358978366

/-!
# A124877: Numbers k such that A007408(k) is prime.

The programs for A124877, there is no canonical definition to state claims against.
-/

/-! ## A124877.P17750817699688524294

`A333223(A239083(3*n+4)+A000110(n))`
-/

namespace A124877.P17750817699688524294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A239083 (3 * n + 4) + A000110 n).toNat

end

end A124877.P17750817699688524294

/-!
# A124878: Primes in A027612.

The programs for A124878, there is no canonical definition to state claims against.
-/

/-! ## A124878.P8443618324446432870

`A027612(A124879(n+1))`
-/

namespace A124878.P8443618324446432870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027612 (A124879 (n + 1)).toNat

end

end A124878.P8443618324446432870

/-! ## A124878.P1772168461720218725

`A064169(A124879(n+1)+1)`
-/

namespace A124878.P1772168461720218725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (A124879 (n + 1) + 1).toNat

end

end A124878.P1772168461720218725

/-! ## A124878.P13843991506386312967

`A027612(eq[1, A123369(n+1)]+1)`
-/

namespace A124878.P13843991506386312967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124878.P13843991506386312967

/-! ## A124878.P17326325777266283873

`A064169(eq[1, A123369(n+1)]+2)`
-/

namespace A124878.P17326325777266283873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A124878.P17326325777266283873

/-!
# A124879: Numbers k such that A027612(k) is prime.

The programs for A124879, there is no canonical definition to state claims against.
-/

/-! ## A124879.P10357180193813118352

`eq[1, A123369(n+1)]+1`
-/

namespace A124879.P10357180193813118352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124879.P10357180193813118352

/-! ## A124879.P9431867743503018571

`eq[1, A123369(A028310(n))]`
-/

namespace A124879.P9431867743503018571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124879.P9431867743503018571

/-! ## A124879.P751605008607917059

`A020725(eq[1, A123369(n+1)])`
-/

namespace A124879.P751605008607917059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124879.P751605008607917059

/-! ## A124879.P13879543380601425357

`eq[1, A123369(n^A178334(n))]`
-/

namespace A124879.P13879543380601425357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124879.P13879543380601425357

/-!
# A124880: Primes in A124837.

The programs for A124880, there is no canonical definition to state claims against.
-/

/-! ## A124880.P15965516679932344413

`A124837(A124881(n+1))`
-/

namespace A124880.P15965516679932344413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124837 (A124881 (n + 1)).toNat

end

end A124880.P15965516679932344413

/-!
# A124881: Numbers k such that A124837(k) is prime.

The programs for A124881, there is no canonical definition to state claims against.
-/

/-! ## A124881.P11276983402697722267

`A324698(A273663(n+1)+A059405(n+1))`
-/

namespace A124881.P11276983402697722267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (A273663 (n + 1) + A059405 (n + 1)).toNat

end

end A124881.P11276983402697722267

/-! ## A124881.P11556978451771685492

`A324698(lt[A133181(n+1), A106356(3*n+5)])`
-/

namespace A124881.P11556978451771685492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124881.P11556978451771685492

/-!
# A124882: Maximum number of distinct squares in arithmetic progression modulo prime(n).

The programs for A124882, there is no canonical definition to state claims against.
-/

/-! ## A124882.P687858676480632701

`A295784(A000040(3*n+2)*A000040(n+1))`
-/

namespace A124882.P687858676480632701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295784 (A000040 (3 * n + 2) * A000040 (n + 1)).toNat

end

end A124882.P687858676480632701

/-! ## A124882.P12954473321879193844

`A295784(A000040(n+1)*A001359(n+1))`
-/

namespace A124882.P12954473321879193844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295784 (A000040 (n + 1) * A001359 (n + 1)).toNat

end

end A124882.P12954473321879193844

/-! ## A124882.P9671549960060131102

`A295784(A000040(n+1)*A141176(n+1))`
-/

namespace A124882.P9671549960060131102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295784 (A000040 (n + 1) * A141176 (n + 1)).toNat

end

end A124882.P9671549960060131102

/-! ## A124882.P5142403198388008051

`A295784(record[A020639(n+2)]*A001359(n+1))`
-/

namespace A124882.P5142403198388008051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295784 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001359 (n + 1)).toNat

end

end A124882.P5142403198388008051

/-! ## A124882.P14527121658909044722

`A295784(A073065(n+1))`
-/

namespace A124882.P14527121658909044722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295784 (A073065 (n + 1)).toNat

end

end A124882.P14527121658909044722

/-!
# A124887: Least positive k such that n * 2^n + k is prime.

The programs for A124887, there is no canonical definition to state claims against.
-/

/-! ## A124887.P4390114495453581019

`A151800(A036289(n+1))-A036289(n+1)`
-/

namespace A124887.P4390114495453581019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A036289 (n + 1)).toNat - A036289 (n + 1)

end

end A124887.P4390114495453581019

/-! ## A124887.P3812407535596342043

`A151800(A097064(n+2))-A097064(n+2)`
-/

namespace A124887.P3812407535596342043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A097064 (n + 2)).toNat - A097064 (n + 2)

end

end A124887.P3812407535596342043

/-! ## A124887.P5172239617767595825

`A151800(A093968(2*(n+1)))-A093968(2*(n+1))`
-/

namespace A124887.P5172239617767595825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A093968 (2 * (n + 1))).toNat - A093968 (2 * (n + 1))

end

end A124887.P5172239617767595825

/-! ## A124887.P18339854856270737208

`A151800(A093968(2*n+2))%A093968(2*n+2)`
-/

namespace A124887.P18339854856270737208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A093968 (2 * n + 2)).toNat) (A093968 (2 * n + 2))

end

end A124887.P18339854856270737208

/-!
# A124888: Primes with prime number of only prime digits (i.e., 2, 3, 5, 7).

The programs for A124888, there is no canonical definition to state claims against.
-/

/-! ## A124888.P8276080204240597376

`∩[A019546(n+1), A120533(n+1)]`
-/

namespace A124888.P8276080204240597376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124888.P8276080204240597376

/-! ## A124888.P7456808757569030848

`∩[A046034(n+1), A120533(n+1)]`
-/

namespace A124888.P7456808757569030848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124888.P7456808757569030848

/-! ## A124888.P5487927476053044105

`∩[A062087(n+1), A120533(n+1)]`
-/

namespace A124888.P5487927476053044105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124888.P5487927476053044105

/-! ## A124888.P16227379177944036478

`p?[A113590(n+5)]`
-/

namespace A124888.P16227379177944036478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113590 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124888.P16227379177944036478

/-! ## A124888.P10844877388572808071

`∑{p}[A019546(n+5)², #]`
-/

namespace A124888.P10844877388572808071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A124888.P10844877388572808071

/-!
# A124889: Central terms of triangle A124328; a(n) = A124328(2n+1,n+1) for n>=0.

The programs for A124889, there is no canonical definition to state claims against.
-/

/-! ## A124889.P14343784455405466891

`(n+1)*A124890(n)`
-/

namespace A124889.P14343784455405466891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124890 n

end

end A124889.P14343784455405466891

/-! ## A124889.P2138733009663794579

`A124328((n+1)²+n²)`
-/

namespace A124889.P2138733009663794579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 ((n + 1) ^ 2 + n ^ 2)

end

end A124889.P2138733009663794579

/-! ## A124889.P1714280291266765709

`A124890(n)*A348553(n)`
-/

namespace A124889.P1714280291266765709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124890 n * A348553 n

end

end A124889.P1714280291266765709

/-! ## A124889.P4475167273597416938

`A124890(n)*A330393(2*n)`
-/

namespace A124889.P4475167273597416938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124890 n * A330393 (2 * n)

end

end A124889.P4475167273597416938

/-! ## A124889.P2627442810582238810

`lcm(n+1, A124328(A001844(n)))`
-/

namespace A124889.P2627442810582238810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A124328 (A001844 n).toNat)

end

end A124889.P2627442810582238810

/-!
# A124890: G.f.: A(x) = (1/x)*series_reversion(x^2/G124344(x)), where G124344(x) is the g.f. of A124344 and satisfies: A(x)^2 = (1/x)*G124344(x*A(x)).

The programs for A124890, there is no canonical definition to state claims against.
-/

/-! ## A124890.P558319148465777914

`A124889(n)/(n+1)`
-/

namespace A124890.P558319148465777914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124889 n : ℚ) / (n + 1 : ℚ)

end

end A124890.P558319148465777914

/-! ## A124890.P14423962700519337379

`A124328((n+1)²+n²)/(n+1)`
-/

namespace A124890.P14423962700519337379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124328 ((n + 1) ^ 2 + n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A124890.P14423962700519337379

/-! ## A124890.P6340553334890732544

`floor(A124328(A001844(n))/(n+1))`
-/

namespace A124890.P6340553334890732544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124328 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A124890.P6340553334890732544

/-! ## A124890.P1720037894872033405

`-(A124328(A001844(n))/A001489(n+1))`
-/

namespace A124890.P1720037894872033405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A124328 (A001844 n).toNat : ℚ) / (A001489 (n + 1) : ℚ))

end

end A124890.P1720037894872033405

/-! ## A124890.P13516980803923340122

`ceil(A124328(A001844(n))/A252463(2*(n+1)))`
-/

namespace A124890.P13516980803923340122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124328 (A001844 n).toNat : ℚ) / (A252463 (2 * (n + 1)) : ℚ)⌉

end

end A124890.P13516980803923340122

/-!
# A124891: L.g.f.: A(x) = log(G124890(x)) where G124890(x) is the g.f. of A124890.

The programs for A124891, there is no canonical definition to state claims against.
-/

/-! ## A124891.P13015072274411971250

`A124328(2*(n+1)²)`
-/

namespace A124891.P13015072274411971250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 (2 * (n + 1) ^ 2)

end

end A124891.P13015072274411971250

/-! ## A124891.P8083016245903829427

`record[A124328(∑[A014682(n+1)])]`
-/

namespace A124891.P8083016245903829427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124891.P8083016245903829427

/-! ## A124891.P4770004366873453567

`record[A124328(gcd(n, A093995(n+1)))]`
-/

namespace A124891.P4770004366873453567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 (Int.gcd (n : ℤ) (A093995 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124891.P4770004366873453567

/-! ## A124891.P10481828737181293405

`record[gcd(A124328(n+1), A156644(n))]`
-/

namespace A124891.P10481828737181293405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124328 (n + 1)) (A156644 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124891.P10481828737181293405

/-! ## A124891.P14073446463428725128

`record[A124328(A185869(n+1)+A025581(n))]`
-/

namespace A124891.P14073446463428725128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 (A185869 (n + 1) + A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124891.P14073446463428725128

/-!
# A124892: Number of base 14 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124892, there is no canonical definition to state claims against.
-/

/-! ## A124892.P4850350905685173714

`A285280(A167614(n+10)+11)`
-/

namespace A124892.P4850350905685173714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (A167614 (n + 10) + 11).toNat

end

end A124892.P4850350905685173714

/-! ## A124892.P13809458253885877561

`A124864(n)+A014682(A124864(n)-A124857(n))`
-/

namespace A124892.P13809458253885877561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124864 n + A014682 (A124864 n - A124857 n).toNat

end

end A124892.P13809458253885877561

/-! ## A124892.P3701475483934019569

`A124858(n)+A014682(A124894(n)-A124858(n))`
-/

namespace A124892.P3701475483934019569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124858 n + A014682 (A124894 n - A124858 n).toNat

end

end A124892.P3701475483934019569

/-!
# A124893: Number of base 15 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124893, there is no canonical definition to state claims against.
-/

/-! ## A124893.P3765408538839315803

`A000265(A124892(n)+A005191(n))`
-/

namespace A124893.P3765408538839315803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124892 n + A005191 n).toNat

end

end A124893.P3765408538839315803

/-! ## A124893.P14220647471013078339

`A000265(A324595(n)+A124892(n))`
-/

namespace A124893.P14220647471013078339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324595 n + A124892 n).toNat

end

end A124893.P14220647471013078339

/-! ## A124893.P8110553343256327765

`A000265(A124894(n)+A124892(n))`
-/

namespace A124893.P8110553343256327765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124894 n + A124892 n).toNat

end

end A124893.P8110553343256327765

/-!
# A124894: Number of base 16 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124894, there is no canonical definition to state claims against.
-/

/-! ## A124894.P10893692427178735493

`A124898(n)+A166486(A205971(n))-A005191(n)`
-/

namespace A124894.P10893692427178735493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124898 n + (A166486 (A205971 n).toNat - A005191 n)

end

end A124894.P10893692427178735493

/-! ## A124894.P11366805544913453396

`A014682(A124954(n)+A124807(n))`
-/

namespace A124894.P11366805544913453396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124954 n + A124807 n).toNat

end

end A124894.P11366805544913453396

/-! ## A124894.P7604337520525656766

`A014682(A124952(n)+A124843(n))`
-/

namespace A124894.P7604337520525656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124952 n + A124843 n).toNat

end

end A124894.P7604337520525656766

/-!
# A124895: Triangle read by rows, 1 <= k <= n: T(n,k) = mu(n^2 + k^2) with mu = A008683.

The programs for A124895, the canonical program `A124895.P818099447980255084` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124895 has offset 1).

The definition of A124895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A070216, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124895.P818099447980255084

`A008683(A070216(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A124895

/-- `A008683(A070216(n+1))` -/
def P818099447980255084.Spec : Prop :=
  ∀ n, P818099447980255084.a n = A124895 (n + 1)

theorem P818099447980255084.correct : P818099447980255084.Spec := by
  intro n
  simp only [A124895, Nat.add_sub_cancel]

end A124895

/-! ## A124895.P3770605495841997262

`A008683((n+1-C(∑[char[∑[n]]], 2))²+∑[char[∑[n]]]²)`
-/

namespace A124895.P3770605495841997262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2 + (((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ)).toNat

end

end A124895.P3770605495841997262

namespace A124895

/-- `A008683((n+1-C(∑[char[∑[n]]], 2))²+∑[char[∑[n]]]²)` -/
def P3770605495841997262.Spec : Prop :=
  ∀ n, P3770605495841997262.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P7364802218255378857

`A008683(A069011(comp[∑[n]]))`
-/

namespace A124895.P7364802218255378857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A069011 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A124895.P7364802218255378857

namespace A124895

/-- `A008683(A069011(comp[∑[n]]))` -/
def P7364802218255378857.Spec : Prop :=
  ∀ n, P7364802218255378857.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P18138920213250950042

`A157657(3*A070216(n+1))`
-/

namespace A124895.P18138920213250950042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (3 * A070216 (n + 1)).toNat

end

end A124895.P18138920213250950042

namespace A124895

/-- `A157657(3*A070216(n+1))` -/
def P18138920213250950042.Spec : Prop :=
  ∀ n, P18138920213250950042.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P2375003357926819147

`A157658(3*A070216(n+1))`
-/

namespace A124895.P2375003357926819147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (3 * A070216 (n + 1)).toNat

end

end A124895.P2375003357926819147

namespace A124895

/-- `A157658(3*A070216(n+1))` -/
def P2375003357926819147.Spec : Prop :=
  ∀ n, P2375003357926819147.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P14465398511736977038

`A092152(6*A070216(n+1))`
-/

namespace A124895.P14465398511736977038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (6 * A070216 (n + 1)).toNat

end

end A124895.P14465398511736977038

namespace A124895

/-- `A092152(6*A070216(n+1))` -/
def P14465398511736977038.Spec : Prop :=
  ∀ n, P14465398511736977038.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P13230546891940567909

`∑{d}[A070216(n+1), A007427(#)]`
-/

namespace A124895.P13230546891940567909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A124895.P13230546891940567909

namespace A124895

/-- `∑{d}[A070216(n+1), A007427(#)]` -/
def P13230546891940567909.Spec : Prop :=
  ∀ n, P13230546891940567909.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P5871037718258491974

`A008683(A093995(n+1)+(n+1-C(∑[char[∑[n]]], 2))²)`
-/

namespace A124895.P5871037718258491974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A093995 (n + 1) + ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2).toNat

end

end A124895.P5871037718258491974

namespace A124895

/-- `A008683(A093995(n+1)+(n+1-C(∑[char[∑[n]]], 2))²)` -/
def P5871037718258491974.Spec : Prop :=
  ∀ n, P5871037718258491974.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P2938168383556829841

`A008683(A289506(A087112(n+1)))`
-/

namespace A124895.P2938168383556829841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A289506 (A087112 (n + 1)).toNat).toNat

end

end A124895.P2938168383556829841

namespace A124895

/-- `A008683(A289506(A087112(n+1)))` -/
def P2938168383556829841.Spec : Prop :=
  ∀ n, P2938168383556829841.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P630840267134634146

`A008683(A195437(n)+A143844(n))`
-/

namespace A124895.P630840267134634146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A195437 n + A143844 n).toNat

end

end A124895.P630840267134634146

namespace A124895

/-- `A008683(A195437(n)+A143844(n))` -/
def P630840267134634146.Spec : Prop :=
  ∀ n, P630840267134634146.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P2282670677918831157

`A008683(A185910(n+1)+A004201(n+1))`
-/

namespace A124895.P2282670677918831157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A185910 (n + 1) + A004201 (n + 1)).toNat

end

end A124895.P2282670677918831157

namespace A124895

/-- `A008683(A185910(n+1)+A004201(n+1))` -/
def P2282670677918831157.Spec : Prop :=
  ∀ n, P2282670677918831157.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P12389861091693099560

`A008683(A133819(n+1)+A093995(n+1))`
-/

namespace A124895.P12389861091693099560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A133819 (n + 1) + A093995 (n + 1)).toNat

end

end A124895.P12389861091693099560

namespace A124895

/-- `A008683(A133819(n+1)+A093995(n+1))` -/
def P12389861091693099560.Spec : Prop :=
  ∀ n, P12389861091693099560.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P13986158609335383638

`A008683(A093995(n+1)+A002260(n+1)²)`
-/

namespace A124895.P13986158609335383638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A093995 (n + 1) + A002260 (n + 1) ^ 2).toNat

end

end A124895.P13986158609335383638

namespace A124895

/-- `A008683(A093995(n+1)+A002260(n+1)²)` -/
def P13986158609335383638.Spec : Prop :=
  ∀ n, P13986158609335383638.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P12867359839030175661

`A008683(A093995(n+1)+(A002262(n)+1)²)`
-/

namespace A124895.P12867359839030175661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A093995 (n + 1) + (A002262 n + 1) ^ 2).toNat

end

end A124895.P12867359839030175661

namespace A124895

/-- `A008683(A093995(n+1)+(A002262(n)+1)²)` -/
def P12867359839030175661.Spec : Prop :=
  ∀ n, P12867359839030175661.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P12086992825685008728

`A008683(A133819(n+1)+A002024(n+1)²)`
-/

namespace A124895.P12086992825685008728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A133819 (n + 1) + A002024 (n + 1) ^ 2).toNat

end

end A124895.P12086992825685008728

namespace A124895

/-- `A008683(A133819(n+1)+A002024(n+1)²)` -/
def P12086992825685008728.Spec : Prop :=
  ∀ n, P12086992825685008728.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P10885632396904464122

`A008683(A002024(n+1)²+A002260(n+1)²)`
-/

namespace A124895.P10885632396904464122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002024 (n + 1) ^ 2 + A002260 (n + 1) ^ 2).toNat

end

end A124895.P10885632396904464122

namespace A124895

/-- `A008683(A002024(n+1)²+A002260(n+1)²)` -/
def P10885632396904464122.Spec : Prop :=
  ∀ n, P10885632396904464122.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P12890549966490157369

`A008683(A002260(n+1)²+A123578(n+1)²)`
-/

namespace A124895.P12890549966490157369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1) ^ 2 + A123578 (n + 1) ^ 2).toNat

end

end A124895.P12890549966490157369

namespace A124895

/-- `A008683(A002260(n+1)²+A123578(n+1)²)` -/
def P12890549966490157369.Spec : Prop :=
  ∀ n, P12890549966490157369.a n = A124895 (n + 1)

end A124895

/-! ## A124895.P7761703598620263107

`A008683(A338895(3*(n+1))/2)`
-/

namespace A124895.P7761703598620263107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A338895 (3 * (n + 1)) : ℚ) / 2)).toNat

end

end A124895.P7761703598620263107

namespace A124895

/-- `A008683(A338895(3*(n+1))/2)` -/
def P7761703598620263107.Spec : Prop :=
  ∀ n, P7761703598620263107.a n = A124895 (n + 1)

end A124895

/-!
# A124896: Number of squarefree numbers of the form n^2 + k^2, 1<=k<=n.

The programs for A124896, there is no canonical definition to state claims against.
-/

/-! ## A124896.P3510170795258442516

`A000010(n+1)-A059841(A000970(n+5))`
-/

namespace A124896.P3510170795258442516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A059841 (A000970 (n + 5)).toNat

end

end A124896.P3510170795258442516

/-! ## A124896.P15465546873893178432

`A000010(n+1)-A082784(A108767(2*n+3))`
-/

namespace A124896.P15465546873893178432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A082784 (A108767 (2 * n + 3)).toNat

end

end A124896.P15465546873893178432

/-! ## A124896.P4018550660719108688

`A000010(A077168(n))-A316717(n)`
-/

namespace A124896.P4018550660719108688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A077168 n).toNat - A316717 n

end

end A124896.P4018550660719108688

/-! ## A124896.P16409738818705371034

`A000010(n+1)-A030308(A094536(n))`
-/

namespace A124896.P16409738818705371034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A030308 (A094536 n).toNat

end

end A124896.P16409738818705371034

/-! ## A124896.P16705990356817788184

`A000010(n+1)-A188436(A010786(n+1))`
-/

namespace A124896.P16705990356817788184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A188436 (A010786 (n + 1)).toNat

end

end A124896.P16705990356817788184

/-!
# A124897: a(n) = mu(n^2 + 1), mu = A008683.

The programs for A124897, the canonical program `A124897.P7185691001710528761` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124897 has offset 1).

The definition of A124897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124897.P7185691001710528761

`A008683(A002522(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A124897

/-- `A008683(A002522(n+1))` -/
def P7185691001710528761.Spec : Prop :=
  ∀ n, P7185691001710528761.a n = A124897 (n + 1)

theorem P7185691001710528761.correct : P7185691001710528761.Spec := by
  intro n
  simp only [A124897, Nat.add_sub_cancel]

end A124897

/-! ## A124897.P4808317815132849649

`A008683(A278162(n+1))`
-/

namespace A124897.P4808317815132849649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278162 (n + 1)).toNat

end

end A124897.P4808317815132849649

namespace A124897

/-- `A008683(A278162(n+1))` -/
def P4808317815132849649.Spec : Prop :=
  ∀ n, P4808317815132849649.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P17900531796371926724

`A008683((n+1)²+1)`
-/

namespace A124897.P17900531796371926724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2 + 1)

end

end A124897.P17900531796371926724

namespace A124897

/-- `A008683((n+1)²+1)` -/
def P17900531796371926724.Spec : Prop :=
  ∀ n, P17900531796371926724.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P13037771538984196082

`A156277((n+1)²+1)`
-/

namespace A124897.P13037771538984196082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 ((n + 1) ^ 2 + 1)

end

end A124897.P13037771538984196082

namespace A124897

/-- `A156277((n+1)²+1)` -/
def P13037771538984196082.Spec : Prop :=
  ∀ n, P13037771538984196082.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P8625202161562103810

`A355689((n+1)²+1)`
-/

namespace A124897.P8625202161562103810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 ((n + 1) ^ 2 + 1)

end

end A124897.P8625202161562103810

namespace A124897

/-- `A355689((n+1)²+1)` -/
def P8625202161562103810.Spec : Prop :=
  ∀ n, P8625202161562103810.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P1895936552784114527

`A359551((n+1)²+1)`
-/

namespace A124897.P1895936552784114527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 ((n + 1) ^ 2 + 1)

end

end A124897.P1895936552784114527

namespace A124897

/-- `A359551((n+1)²+1)` -/
def P1895936552784114527.Spec : Prop :=
  ∀ n, P1895936552784114527.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P6710252189230554365

`A008683((n+1)^2+1)^3`
-/

namespace A124897.P6710252189230554365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2 + 1) ^ 3

end

end A124897.P6710252189230554365

namespace A124897

/-- `A008683((n+1)^2+1)^3` -/
def P6710252189230554365.Spec : Prop :=
  ∀ n, P6710252189230554365.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P7803603986883085087

`A008683(n*(n+2)+2)%2`
-/

namespace A124897.P7803603986883085087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (n * (n + 2) + 2)) 2

end

end A124897.P7803603986883085087

namespace A124897

/-- `A008683(n*(n+2)+2)%2` -/
def P7803603986883085087.Spec : Prop :=
  ∀ n, P7803603986883085087.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P7764364913264626381

`round(A008683(∑[2*n]+n+2)/2)`
-/

namespace A124897.P7764364913264626381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)) : ℚ) / 2)

end

end A124897.P7764364913264626381

namespace A124897

/-- `round(A008683(∑[2*n]+n+2)/2)` -/
def P7764364913264626381.Spec : Prop :=
  ∀ n, P7764364913264626381.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P13183962317570670749

`A008683(∑[2*n+1]+1)+C(2, n+3)`
-/

namespace A124897.P13183962317570670749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (Nat.choose 2 (n + 3) : ℤ)

end

end A124897.P13183962317570670749

namespace A124897

/-- `A008683(∑[2*n+1]+1)+C(2, n+3)` -/
def P13183962317570670749.Spec : Prop :=
  ∀ n, P13183962317570670749.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P5484710098006074018

`A008683(∑[2*n+1]+1)+1-A177704(2*n)`
-/

namespace A124897.P5484710098006074018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1 - A177704 (2 * n)

end

end A124897.P5484710098006074018

namespace A124897

/-- `A008683(∑[2*n+1]+1)+1-A177704(2*n)` -/
def P5484710098006074018.Spec : Prop :=
  ∀ n, P5484710098006074018.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P4844945559224066364

`A008683(A005563(n)+2)*A166486(A166466(n+1))`
-/

namespace A124897.P4844945559224066364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005563 n + 2).toNat * A166486 (A166466 (n + 1)).toNat

end

end A124897.P4844945559224066364

namespace A124897

/-- `A008683(A005563(n)+2)*A166486(A166466(n+1))` -/
def P4844945559224066364.Spec : Prop :=
  ∀ n, P4844945559224066364.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P16942642165530702053

`A085097((n+1)²+1)`
-/

namespace A124897.P16942642165530702053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 ((n + 1) ^ 2 + 1)

end

end A124897.P16942642165530702053

namespace A124897

/-- `A085097((n+1)²+1)` -/
def P16942642165530702053.Spec : Prop :=
  ∀ n, P16942642165530702053.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P10756969736899511375

`A359432((n+1)²+1)`
-/

namespace A124897.P10756969736899511375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 ((n + 1) ^ 2 + 1)

end

end A124897.P10756969736899511375

namespace A124897

/-- `A359432((n+1)²+1)` -/
def P10756969736899511375.Spec : Prop :=
  ∀ n, P10756969736899511375.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P6317003740016722186

`A359833((n+1)²+1)`
-/

namespace A124897.P6317003740016722186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359833 ((n + 1) ^ 2 + 1)

end

end A124897.P6317003740016722186

namespace A124897

/-- `A359833((n+1)²+1)` -/
def P6317003740016722186.Spec : Prop :=
  ∀ n, P6317003740016722186.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P7786459820489675596

`A117997((n+1)²+1)`
-/

namespace A124897.P7786459820489675596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117997 ((n + 1) ^ 2 + 1)

end

end A124897.P7786459820489675596

namespace A124897

/-- `A117997((n+1)²+1)` -/
def P7786459820489675596.Spec : Prop :=
  ∀ n, P7786459820489675596.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P14710705022981246866

`-A008683(∑[6*n+3]+3)`
-/

namespace A124897.P14710705022981246866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A124897.P14710705022981246866

namespace A124897

/-- `-A008683(∑[6*n+3]+3)` -/
def P14710705022981246866.Spec : Prop :=
  ∀ n, P14710705022981246866.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P5949418673924673128

`A055132(∑[abs(1-n)])`
-/

namespace A124897.P5949418673924673128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124897.P5949418673924673128

namespace A124897

/-- `A055132(∑[abs(1-n)])` -/
def P5949418673924673128.Spec : Prop :=
  ∀ n, P5949418673924673128.a n = A124897 (n + 1)

end A124897

/-! ## A124897.P13688536069315822624

`A364249((n+1)²+1)`
-/

namespace A124897.P13688536069315822624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364249 ((n + 1) ^ 2 + 1)

end

end A124897.P13688536069315822624

namespace A124897

/-- `A364249((n+1)²+1)` -/
def P13688536069315822624.Spec : Prop :=
  ∀ n, P13688536069315822624.a n = A124897 (n + 1)

end A124897

/-!
# A124898: Number of base 17 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124898, there is no canonical definition to state claims against.
-/

/-! ## A124898.P519988195224426625

`∏{p}[A005191(n)-A124935(n), #]`
-/

namespace A124898.P519988195224426625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n - A124935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A124898.P519988195224426625

/-! ## A124898.P13357113179858436578

`(A124953(n)+A000265(A124851(n)))/2`
-/

namespace A124898.P13357113179858436578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124953 n + A000265 (A124851 n).toNat : ℚ) / 2

end

end A124898.P13357113179858436578

/-! ## A124898.P6496624922534335003

`A000265(A124894(n)+A005191(n))`
-/

namespace A124898.P6496624922534335003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124894 n + A005191 n).toNat

end

end A124898.P6496624922534335003

/-!
# A124899: Sierpinski quotient ((2n-1)^(2n-1) + 1)/(2n) = A014566(2n-1)/(2n).

The programs for A124899, the canonical program `A124899.P7772981976638167770` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124899 has offset 1).

The definition of A124899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124899.P7772981976638167770

`((2*(n+1)-1)^(2*(n+1)-1)+1)/(2*(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124899

/-- `((2*(n+1)-1)^(2*(n+1)-1)+1)/(2*(n+1))` -/
def P7772981976638167770.Spec : Prop :=
  ∀ n, P7772981976638167770.a n = (A124899 (n + 1) : ℚ)

end A124899

/-! ## A124899.P6318491977074681004

`A014566(2*(n+1)-1)/(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124899.P6318491977074681004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014566 (2 * (n + 1) - 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A124899.P6318491977074681004

namespace A124899

/-- `A014566(2*(n+1)-1)/(2*(n+1))` -/
def P6318491977074681004.Spec : Prop :=
  ∀ n, P6318491977074681004.a n = (A124899 (n + 1) : ℚ)

end A124899

/-! ## A124899.P15996658174690926153

`A056009(Δ[n²])`
-/

namespace A124899.P15996658174690926153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124899.P15996658174690926153

namespace A124899

/-- `A056009(Δ[n²])` -/
def P15996658174690926153.Spec : Prop :=
  ∀ n, P15996658174690926153.a n = A124899 (n + 1)

end A124899

/-! ## A124899.P16627497715642276837

`A081216(Δ[n²])`
-/

namespace A124899.P16627497715642276837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124899.P16627497715642276837

namespace A124899

/-- `A081216(Δ[n²])` -/
def P16627497715642276837.Spec : Prop :=
  ∀ n, P16627497715642276837.a n = A124899 (n + 1)

end A124899

/-! ## A124899.P11617916422736511985

`A215159(2*n+1)+1`
-/

namespace A124899.P11617916422736511985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215159 (2 * n + 1) + 1

end

end A124899.P11617916422736511985

namespace A124899

/-- `A215159(2*n+1)+1` -/
def P11617916422736511985.Spec : Prop :=
  ∀ n, P11617916422736511985.a n = A124899 (n + 1)

end A124899

