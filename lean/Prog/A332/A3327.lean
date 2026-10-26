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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A332700: A(n, k) = Sum_{j=0..n} j!*Stirling2(n, j)*(k-1)^(n-j), for n >= 0 and k >= 0, read by ascending antidiagonals.

The programs for A332700, there is no canonical definition to state claims against.
-/

/-! ## A332700.P12998572315419680724

`A326323(A061579(n%A141596(n)))`
-/

namespace A332700.P12998572315419680724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (A061579 (Int.tmod (n : ℤ) (A141596 n)).toNat).toNat

end

end A332700.P12998572315419680724

/-! ## A332700.P16451942541422125966

`A326323(∑[2*n]%comp[∑[n]])`
-/

namespace A332700.P16451942541422125966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A332700.P16451942541422125966

/-! ## A332700.P8754024830472432066

`A326323(∑[char[∑[n]]]²-(n+1))`
-/

namespace A332700.P8754024830472432066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A332700.P8754024830472432066

/-! ## A332700.P18163580861065133375

`or(A010054(n), A326323(A061579(n)))`
-/

namespace A332700.P18163580861065133375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A326323 (A061579 n).toNat)

end

end A332700.P18163580861065133375

/-! ## A332700.P11174601316082362082

`A326323(A061579(n))%A022388(n)`
-/

namespace A332700.P11174601316082362082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326323 (A061579 n).toNat) (A022388 n)

end

end A332700.P11174601316082362082

/-!
# A332701: Lexicographically earliest sequence of distinct positive terms such that the digitsum of a(n) is the length of a(n+1).

The programs for A332701, there is no canonical definition to state claims against.
-/

/-! ## A332701.P14110744865403495104

`A245062(lt[A006649(n), A113389(n)])`
-/

namespace A332701.P14110744865403495104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332701.P14110744865403495104

/-!
# A332704: Record indices of the ratio A280008(n) / A002375(n) (Goldbach conjecture related).

The programs for A332704, there is no canonical definition to state claims against.
-/

/-! ## A332704.P9612661695519802939

`∑[A279508((2^n+4)*(2^n-1)/6)+1]`
-/

namespace A332704.P9612661695519802939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279508 (SequenceMachineLib.roundAway ((2 ^ n + 4 : ℚ) * (((2 ^ n : ℤ) - 1 : ℚ) / 6))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332704.P9612661695519802939

/-!
# A332705: Number of unit square faces (or surface area) of a stage-n Menger sponge.

The programs for A332705, the canonical program `A332705.P7985966596760899598` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332705 has offset 0).

The definition of A332705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332705.P7985966596760899598

`2*20^n+4*8^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332705

/-- `2*20^n+4*8^n` -/
def P7985966596760899598.Spec : Prop :=
  ∀ n, (P7985966596760899598.a n : ℤ) = A332705 n

theorem P7985966596760899598.correct : P7985966596760899598.Spec := by
  intro n
  simp only [A332705]

end A332705

/-! ## A332705.P9621563989625624632

`2*(A013730(n)+A009964(n))`
-/

namespace A332705.P9621563989625624632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A013730 n + A009964 n)

end

end A332705.P9621563989625624632

namespace A332705

/-- `2*(A013730(n)+A009964(n))` -/
def P9621563989625624632.Spec : Prop :=
  ∀ n, P9621563989625624632.a n = A332705 n

end A332705

/-! ## A332705.P8532119776679913519

`lcm(A011557(n)+A004171(n), A004171(n))`
-/

namespace A332705.P8532119776679913519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011557 n + A004171 n) (A004171 n)

end

end A332705.P8532119776679913519

namespace A332705

/-- `lcm(A011557(n)+A004171(n), A004171(n))` -/
def P8532119776679913519.Spec : Prop :=
  ∀ n, (P8532119776679913519.a n : ℤ) = A332705 n

end A332705

/-! ## A332705.P13427955161016866581

`(A004643(2*n)+2*A000079(n)²)*A000079(n+1)`
-/

namespace A332705.P13427955161016866581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004643 (2 * n) + 2 * A000079 n ^ 2) * A000079 (n + 1)

end

end A332705.P13427955161016866581

namespace A332705

/-- `(A004643(2*n)+2*A000079(n)²)*A000079(n+1)` -/
def P13427955161016866581.Spec : Prop :=
  ∀ n, P13427955161016866581.a n = A332705 n

end A332705

/-! ## A332705.P4532210108370383315

`(A026383(2*n)+A000079(n+1))*2*A000079(n)²`
-/

namespace A332705.P4532210108370383315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026383 (2 * n) + A000079 (n + 1)) * (2 * A000079 n ^ 2)

end

end A332705.P4532210108370383315

namespace A332705

/-- `(A026383(2*n)+A000079(n+1))*2*A000079(n)²` -/
def P4532210108370383315.Spec : Prop :=
  ∀ n, P4532210108370383315.a n = A332705 n

end A332705

/-! ## A332705.P12431883294021057328

`(A056451(2*n)+A000079(n+1))*2*A000079(n)²`
-/

namespace A332705.P12431883294021057328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056451 (2 * n) + A000079 (n + 1)) * (2 * A000079 n ^ 2)

end

end A332705.P12431883294021057328

namespace A332705

/-- `(A056451(2*n)+A000079(n+1))*2*A000079(n)²` -/
def P12431883294021057328.Spec : Prop :=
  ∀ n, P12431883294021057328.a n = A332705 n

end A332705

/-! ## A332705.P9985150908351199264

`(A286508(2*n)+2*A000079(n)²)*A000079(n+1)`
-/

namespace A332705.P9985150908351199264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286508 (2 * n) + 2 * A000079 n ^ 2) * A000079 (n + 1)

end

end A332705.P9985150908351199264

namespace A332705

/-- `(A286508(2*n)+2*A000079(n)²)*A000079(n+1)` -/
def P9985150908351199264.Spec : Prop :=
  ∀ n, P9985150908351199264.a n = A332705 n

end A332705

/-! ## A332705.P10951458313285765533

`(A004643(2*n)+A000079(2*n+1))*A000079(n+1)`
-/

namespace A332705.P10951458313285765533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004643 (2 * n) + A000079 (2 * n + 1)) * A000079 (n + 1)

end

end A332705.P10951458313285765533

namespace A332705

/-- `(A004643(2*n)+A000079(2*n+1))*A000079(n+1)` -/
def P10951458313285765533.Spec : Prop :=
  ∀ n, P10951458313285765533.a n = A332705 n

end A332705

/-! ## A332705.P4573788534371046691

`(A026383(2*n)+A000079(n+1))*A000079(2*n+1)`
-/

namespace A332705.P4573788534371046691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026383 (2 * n) + A000079 (n + 1)) * A000079 (2 * n + 1)

end

end A332705.P4573788534371046691

namespace A332705

/-- `(A026383(2*n)+A000079(n+1))*A000079(2*n+1)` -/
def P4573788534371046691.Spec : Prop :=
  ∀ n, P4573788534371046691.a n = A332705 n

end A332705

/-! ## A332705.P15616556528427393909

`(A056451(2*n)+A000079(n+1))*A000079(2*n+1)`
-/

namespace A332705.P15616556528427393909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056451 (2 * n) + A000079 (n + 1)) * A000079 (2 * n + 1)

end

end A332705.P15616556528427393909

namespace A332705

/-- `(A056451(2*n)+A000079(n+1))*A000079(2*n+1)` -/
def P15616556528427393909.Spec : Prop :=
  ∀ n, P15616556528427393909.a n = A332705 n

end A332705

/-!
# A332706: Index position of {2}^n within the list of partitions of 2n in canonical ordering.

The programs for A332706, there is no canonical definition to state claims against.
-/

/-! ## A332706.P3271528056160696289

`A058984(2*n)`
-/

namespace A332706.P3271528056160696289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 (2 * n)

end

end A332706.P3271528056160696289

/-! ## A332706.P12740152288520188208

`A000041(2*n)-n`
-/

namespace A332706.P12740152288520188208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - (n : ℤ)

end

end A332706.P12740152288520188208

/-! ## A332706.P11923217493917825483

`A058696(n)-n`
-/

namespace A332706.P11923217493917825483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - (n : ℤ)

end

end A332706.P11923217493917825483

/-! ## A332706.P17330628706746221996

`∑[A027336(2*n)]-n`
-/

namespace A332706.P17330628706746221996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A332706.P17330628706746221996

/-! ## A332706.P9129446280567887731

`A000065(2*n)+1-n`
-/

namespace A332706.P9129446280567887731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) + (1 - (n : ℤ))

end

end A332706.P9129446280567887731

/-! ## A332706.P10975992464001925801

`abs(A000041(Δ[(n-1)²]+1)-n)`
-/

namespace A332706.P10975992464001925801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 (f1 (n + 1) - f1 n + 1).toNat - (n : ℤ)|

end

end A332706.P10975992464001925801

/-! ## A332706.P7744458955366252800

`record[A000041(A014681(n))]-n`
-/

namespace A332706.P7744458955366252800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A332706.P7744458955366252800

/-! ## A332706.P17031403932378143597

`record[A000041(A029578(n))]-n`
-/

namespace A332706.P17031403932378143597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A332706.P17031403932378143597

/-! ## A332706.P10495655304775607100

`record[A000041(A083220(n))]-n`
-/

namespace A332706.P10495655304775607100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A332706.P10495655304775607100

/-! ## A332706.P7261883388564440464

`record[A000041(A131452(n))]-n`
-/

namespace A332706.P7261883388564440464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A131452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A332706.P7261883388564440464

/-! ## A332706.P17908328267367641641

`A004250(A300576(n+2))+1`
-/

namespace A332706.P17908328267367641641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A300576 (n + 2)).toNat + 1

end

end A332706.P17908328267367641641

/-! ## A332706.P13758085432398516534

`A004250(A028310(2*n))+1`
-/

namespace A332706.P13758085432398516534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A028310 (2 * n)).toNat + 1

end

end A332706.P13758085432398516534

/-! ## A332706.P13847226323839161136

`A004250(A028310(n)+n)+1`
-/

namespace A332706.P13847226323839161136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A028310 n + (n : ℤ)).toNat + 1

end

end A332706.P13847226323839161136

/-! ## A332706.P15784343517732822118

`A001489(n)+A000041(2*n)`
-/

namespace A332706.P15784343517732822118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000041 (2 * n)

end

end A332706.P15784343517732822118

/-! ## A332706.P18079719816594406127

`A024000(n)+A000065(2*n)`
-/

namespace A332706.P18079719816594406127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A000065 (2 * n)

end

end A332706.P18079719816594406127

/-! ## A332706.P1499704282119279728

`record[A000041(A026200(n+1))]-n`
-/

namespace A332706.P1499704282119279728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A026200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A332706.P1499704282119279728

/-! ## A332706.P12653530198301474855

`A001057(2*n)+A000041(2*n)`
-/

namespace A332706.P12653530198301474855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + A000041 (2 * n)

end

end A332706.P12653530198301474855

/-! ## A332706.P2725361233562962396

`abs(n+1-A000041(A004277(n)))+1`
-/

namespace A332706.P2725361233562962396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A000041 (A004277 n).toNat| + 1

end

end A332706.P2725361233562962396

/-! ## A332706.P11783474586122303298

`A139582(2*n)/2-n`
-/

namespace A332706.P11783474586122303298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (2 * n) : ℚ) / 2 - (n : ℚ)

end

end A332706.P11783474586122303298

/-! ## A332706.P13240897864069139689

`A000070(2*n+1)-(A120452(2*(n+1))+n)`
-/

namespace A332706.P13240897864069139689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (2 * n + 1) - (A120452 (2 * (n + 1)) + (n : ℤ))

end

end A332706.P13240897864069139689

/-!
# A332707: Factors k > 2 such that the polynomial x^2 + k*x + 1 produces a new minimum of its Hardy-Littlewood constant.

The programs for A332707, there is no canonical definition to state claims against.
-/

/-! ## A332707.P15299362082535449200

`A206914(A003182(n))+A040976(n+1)`
-/

namespace A332707.P15299362082535449200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A003182 n).toNat + A040976 (n + 1)

end

end A332707.P15299362082535449200

/-! ## A332707.P11810384379424448754

`A000032(A334017(n+1))+p?[A059450(n)]`
-/

namespace A332707.P11810384379424448754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A334017 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332707.P11810384379424448754

/-!
# A332710: Maximum value in n-th row of A332709.

The programs for A332710, there is no canonical definition to state claims against.
-/

/-! ## A332710.P2319424834097325633

`A078480(n+2)-and(1, n)`
-/

namespace A332710.P2319424834097325633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 (n + 2) - (Nat.land 1 n : ℤ)

end

end A332710.P2319424834097325633

/-! ## A332710.P9513369442112826252

`∑[A000271(n+2)]+(n+1)%2`
-/

namespace A332710.P9513369442112826252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n + 1) % 2 : ℕ) : ℤ)

end

end A332710.P9513369442112826252

/-! ## A332710.P11578036394473618827

`A078480(n+2)-A059841(n+1)`
-/

namespace A332710.P11578036394473618827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 (n + 2) - A059841 (n + 1)

end

end A332710.P11578036394473618827

/-! ## A332710.P8135760979686242654

`A000035(n+1)+∑[A000271(n+2)]`
-/

namespace A332710.P8135760979686242654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332710.P8135760979686242654

/-! ## A332710.P12843877998386525908

`A332709(A105343(n+1))`
-/

namespace A332710.P12843877998386525908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332709 (A105343 (n + 1)).toNat

end

end A332710.P12843877998386525908

/-! ## A332710.P10890114693648508388

`A332709(A330357(n+1))`
-/

namespace A332710.P10890114693648508388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332709 (A330357 (n + 1)).toNat

end

end A332710.P10890114693648508388

/-! ## A332710.P3105367608583136017

`A332709(A194274(n)+3)`
-/

namespace A332710.P3105367608583136017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332709 (A194274 n + 3).toNat

end

end A332710.P3105367608583136017

/-! ## A332710.P12519341989277645616

`A332709(A007590(n+1)+3)`
-/

namespace A332710.P12519341989277645616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332709 (A007590 (n + 1) + 3).toNat

end

end A332710.P12519341989277645616

/-!
# A332711: Sum of all numbers in bijective base-n numeration with digit sum n.

The programs for A332711, there is no canonical definition to state claims against.
-/

/-! ## A332711.P3639699110842338260

`A172474(∑[A279553(n)]²)`
-/

namespace A332711.P3639699110842338260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A332711.P3639699110842338260

/-! ## A332711.P6044956779073065227

`A172474(∑[A337522(n)]²)`
-/

namespace A332711.P6044956779073065227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A332711.P6044956779073065227

/-!
# A332712: a(n) = Sum_{d|n} mu(d/gcd(d, n/d)).

The programs for A332712, the canonical program `A332712.P7227450806952922240` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332712 has offset 1).

The definition of A332712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332712.P11263257585322346788

`abs(A389887(n+1))`
-/

namespace A332712.P11263257585322346788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A389887 (n + 1)|

end

end A332712.P11263257585322346788

namespace A332712

/-- `abs(A389887(n+1))` -/
def P11263257585322346788.Spec : Prop :=
  ∀ n, P11263257585322346788.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P7227450806952922240

`∏{e}[n+1, A028242(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A332712

/-- `∏{e}[n+1, A028242(#)]` -/
def P7227450806952922240.Spec : Prop :=
  ∀ n, P7227450806952922240.a n = A332712 (n + 1)

theorem P7227450806952922240.correct : P7227450806952922240.Spec := by
  intro n
  simp only [A332712, Nat.add_sub_cancel]

end A332712

/-! ## A332712.P691777156879319936

`∏{e}[n+1, A030451(#-1)]`
-/

namespace A332712.P691777156879319936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A030451 (Nat.factorization (f1 n) p - 1)

end

end A332712.P691777156879319936

namespace A332712

/-- `∏{e}[n+1, A030451(#-1)]` -/
def P691777156879319936.Spec : Prop :=
  ∀ n, P691777156879319936.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P15038248972532449074

`∏{e}[n+1, ceil(A097062(#)/2)]`
-/

namespace A332712.P15038248972532449074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(A097062 (Nat.factorization (f1 n) p) : ℚ) / 2⌉

end

end A332712.P15038248972532449074

namespace A332712

/-- `∏{e}[n+1, ceil(A097062(#)/2)]` -/
def P15038248972532449074.Spec : Prop :=
  ∀ n, P15038248972532449074.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P4984973542846871288

`∏{e}[n+1, A008619(#)-#%2]`
-/

namespace A332712.P4984973542846871288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A008619 (Nat.factorization (f1 n) p) - ((Nat.factorization (f1 n) p % 2 : ℕ) : ℤ))

end

end A332712.P4984973542846871288

namespace A332712

/-- `∏{e}[n+1, A008619(#)-#%2]` -/
def P4984973542846871288.Spec : Prop :=
  ∀ n, P4984973542846871288.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P2541789636877727989

`∏{e}[n+1, A047216(#+1)-2*#]`
-/

namespace A332712.P2541789636877727989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A047216 (Nat.factorization (f1 n) p + 1) - (2 * Nat.factorization (f1 n) p : ℤ))

end

end A332712.P2541789636877727989

namespace A332712

/-- `∏{e}[n+1, A047216(#+1)-2*#]` -/
def P2541789636877727989.Spec : Prop :=
  ∀ n, P2541789636877727989.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P11529512698635730332

`A369308(A056192(n+1))`
-/

namespace A332712.P11529512698635730332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369308 (A056192 (n + 1)).toNat

end

end A332712.P11529512698635730332

namespace A332712

/-- `A369308(A056192(n+1))` -/
def P11529512698635730332.Spec : Prop :=
  ∀ n, P11529512698635730332.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P14685855035139740031

`gcd(A000038(n), A389887(n+1))`
-/

namespace A332712.P14685855035139740031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A389887 (n + 1))

end

end A332712.P14685855035139740031

namespace A332712

/-- `gcd(A000038(n), A389887(n+1))` -/
def P14685855035139740031.Spec : Prop :=
  ∀ n, (P14685855035139740031.a n : ℤ) = A332712 (n + 1)

end A332712

/-! ## A332712.P8006779701606386885

`A008836(n+1)*A389887(n+1)`
-/

namespace A332712.P8006779701606386885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A389887 (n + 1)

end

end A332712.P8006779701606386885

namespace A332712

/-- `A008836(n+1)*A389887(n+1)` -/
def P8006779701606386885.Spec : Prop :=
  ∀ n, P8006779701606386885.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P8726439517917499432

`A307423(n+1)*A389887(n+1)`
-/

namespace A332712.P8726439517917499432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307423 (n + 1) * A389887 (n + 1)

end

end A332712.P8726439517917499432

namespace A332712

/-- `A307423(n+1)*A389887(n+1)` -/
def P8726439517917499432.Spec : Prop :=
  ∀ n, P8726439517917499432.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P3529835759686677900

`∑{d}[n+1, A005361(#)*A008836((n+1)/#)]`
-/

namespace A332712.P3529835759686677900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332712.P3529835759686677900

namespace A332712

/-- `∑{d}[n+1, A005361(#)*A008836((n+1)/#)]` -/
def P3529835759686677900.Spec : Prop :=
  ∀ n, P3529835759686677900.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P12085168847032551292

`∑{d}[n+1, A010052(#)*A112526((n+1)/#)]`
-/

namespace A332712.P12085168847032551292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332712.P12085168847032551292

namespace A332712

/-- `∑{d}[n+1, A010052(#)*A112526((n+1)/#)]` -/
def P12085168847032551292.Spec : Prop :=
  ∀ n, P12085168847032551292.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P12018376888171108200

`∑{d}[n+1, A046951(#)*A363551((n+1)/#)]`
-/

namespace A332712.P12018376888171108200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332712.P12018376888171108200

namespace A332712

/-- `∑{d}[n+1, A046951(#)*A363551((n+1)/#)]` -/
def P12018376888171108200.Spec : Prop :=
  ∀ n, P12018376888171108200.a n = A332712 (n + 1)

end A332712

/-! ## A332712.P2686299329719193217

`A046951(n+1)/A325837(n+1)*A365550(n+1)`
-/

namespace A332712.P2686299329719193217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) / (A325837 (n + 1) : ℚ) * (A365550 (n + 1) : ℚ)

end

end A332712.P2686299329719193217

namespace A332712

/-- `A046951(n+1)/A325837(n+1)*A365550(n+1)` -/
def P2686299329719193217.Spec : Prop :=
  ∀ n, P2686299329719193217.a n = (A332712 (n + 1) : ℚ)

end A332712

/-! ## A332712.P8816874980595849961

`∏{e}[(n+1)², A110659(#)]`
-/

namespace A332712.P8816874980595849961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A110659 (Nat.factorization (f1 n) p)

end

end A332712.P8816874980595849961

namespace A332712

/-- `∏{e}[(n+1)², A110659(#)]` -/
def P8816874980595849961.Spec : Prop :=
  ∀ n, P8816874980595849961.a n = A332712 (n + 1)

end A332712

/-!
# A332713: a(n) = Sum_{d|n} phi(d/gcd(d, n/d)).

The programs for A332713, the canonical program `A332713.P16432043159449943199` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332713 has offset 1).

The definition of A332713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332713.P16432043159449943199

`∑{d}[n+1, A000010((n+1)/gcd(n+1, #²))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332713

/-- `∑{d}[n+1, A000010((n+1)/gcd(n+1, #²))]` -/
def P16432043159449943199.Spec : Prop :=
  ∀ n, P16432043159449943199.a n = A332713 (n + 1)

theorem P16432043159449943199.correct : P16432043159449943199.Spec := by
  intro n
  simp only [A332713, Nat.add_sub_cancel]

end A332713

/-! ## A332713.P13410663179025398362

`∑{d}[n+1, A010052(#)*A055653((n+1)/#)]`
-/

namespace A332713.P13410663179025398362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A055653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332713.P13410663179025398362

namespace A332713

/-- `∑{d}[n+1, A010052(#)*A055653((n+1)/#)]` -/
def P13410663179025398362.Spec : Prop :=
  ∀ n, P13410663179025398362.a n = A332713 (n + 1)

end A332713

/-! ## A332713.P17424258502132475637

`∑{d}[n+1, A046951(#)*A114810((n+1)/#)]`
-/

namespace A332713.P17424258502132475637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A114810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332713.P17424258502132475637

namespace A332713

/-- `∑{d}[n+1, A046951(#)*A114810((n+1)/#)]` -/
def P17424258502132475637.Spec : Prop :=
  ∀ n, P17424258502132475637.a n = A332713 (n + 1)

end A332713

/-! ## A332713.P7358086875125668987

`∑{d}[n+1, A008836(#)*A360522((n+1)/#)]`
-/

namespace A332713.P7358086875125668987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A360522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332713.P7358086875125668987

namespace A332713

/-- `∑{d}[n+1, A008836(#)*A360522((n+1)/#)]` -/
def P7358086875125668987.Spec : Prop :=
  ∀ n, P7358086875125668987.a n = A332713 (n + 1)

end A332713

/-! ## A332713.P15418515930008233025

`∑{d}[n+1, A076752(#)*A395496((n+1)/#)]`
-/

namespace A332713.P15418515930008233025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A395496 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332713.P15418515930008233025

namespace A332713

/-- `∑{d}[n+1, A076752(#)*A395496((n+1)/#)]` -/
def P15418515930008233025.Spec : Prop :=
  ∀ n, P15418515930008233025.a n = A332713 (n + 1)

end A332713

/-!
# A332716: Number of compositions of n^2 where each part is less than or equal to n.

The programs for A332716, there is no canonical definition to state claims against.
-/

/-! ## A332716.P10122858924856062082

`A364526(n²)`
-/

namespace A332716.P10122858924856062082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364526 (n ^ 2)

end

end A332716.P10122858924856062082

/-! ## A332716.P4803649579913718848

`or(1, A364526(A000290(n)))`
-/

namespace A332716.P4803649579913718848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A364526 (A000290 n).toNat)

end

end A332716.P4803649579913718848

/-!
# A332718: Number of possible eventual periods of cellular automaton rule 110 in a cyclic universe of width n.

The programs for A332718, there is no canonical definition to state claims against.
-/

/-! ## A332718.P15488623059353372628

`Δ[eq[1, A332717(n+1)]]`
-/

namespace A332718.P15488623059353372628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A332718.P15488623059353372628

/-! ## A332718.P17737095587464789161

`Δ[record[n-A332717(A000027(n+1))]]`
-/

namespace A332718.P17737095587464789161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A332717 (A000027 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332718.P17737095587464789161

/-! ## A332718.P3357453686306967993

`Δ[record[A023443(n)-A332717(n+1)]]`
-/

namespace A332718.P3357453686306967993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A332717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332718.P3357453686306967993

/-! ## A332718.P13285838532993650115

`A053165(Δ[record[n-A332717(n+1)]])`
-/

namespace A332718.P13285838532993650115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A332717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (f1 (n + 1) - f1 n).toNat

end

end A332718.P13285838532993650115

/-! ## A332718.P4320211905320966254

`A000027(Δ[record[n/A332717(n+1)]])`
-/

namespace A332718.P4320211905320966254
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A332717 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A332718.P4320211905320966254

/-!
# A332719: Index position of {n}^3 within the list of partitions of 3n in canonical ordering.

The programs for A332719, there is no canonical definition to state claims against.
-/

/-! ## A332719.P4070555695692706311

`A330661(A152949(3*n+1)%A000070(3*n+1))`
-/

namespace A332719.P4070555695692706311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330661 (Int.tmod (A152949 (3 * n + 1)) (A000070 (3 * n + 1))).toNat

end

end A332719.P4070555695692706311

/-! ## A332719.P12028502673663894123

`A262689(A073391(n)-n)`
-/

namespace A332719.P12028502673663894123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A073391 n - (n : ℤ)).toNat

end

end A332719.P12028502673663894123

/-! ## A332719.P9178414878142335961

`∑[A342525(∑[A077285(n)])]`
-/

namespace A332719.P9178414878142335961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332719.P9178414878142335961

/-!
# A332720: Index position of {3}^n within the list of partitions of 3n in canonical ordering.

The programs for A332720, there is no canonical definition to state claims against.
-/

/-! ## A332720.P16264684766916247576

`A000041(3*n)-A331952(n+1)`
-/

namespace A332720.P16264684766916247576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n) - A331952 (n + 1)

end

end A332720.P16264684766916247576

/-! ## A332720.P1837216987734531901

`A000041(3*n)+1-A077043(n+1)`
-/

namespace A332720.P1837216987734531901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n) + 1 - A077043 (n + 1)

end

end A332720.P1837216987734531901

/-! ## A332720.P16267630376520863231

`A000041(3*n)+1-A001399(3*n)`
-/

namespace A332720.P16267630376520863231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n) + (1 - A001399 (3 * n))

end

end A332720.P16267630376520863231

/-! ## A332720.P4701365981114373660

`A000065(3*n)+2-A001399(3*n)`
-/

namespace A332720.P4701365981114373660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (3 * n) + (2 - A001399 (3 * n))

end

end A332720.P4701365981114373660

/-! ## A332720.P12882656418527661862

`A000041(3*n)-(A211540(3*(n+1))+n)`
-/

namespace A332720.P12882656418527661862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n) - (A211540 (3 * (n + 1)) + (n : ℤ))

end

end A332720.P12882656418527661862

/-! ## A332720.P7868074709930067712

`A000041(3*n)-A057353(A135276(2*n))`
-/

namespace A332720.P7868074709930067712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n) - A057353 (A135276 (2 * n)).toNat

end

end A332720.P7868074709930067712

/-!
# A332721: Number of compositions of n^2 with parts <= n, such that each element of [n] is used at least once.

The programs for A332721, there is no canonical definition to state claims against.
-/

/-! ## A332721.P10265863710516155134

`A128741(A369982(n))`
-/

namespace A332721.P10265863710516155134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128741 (A369982 n).toNat

end

end A332721.P10265863710516155134

/-!
# A332722: Index position of [2n-1, 2n-3, ..., 3, 1] within the list of partitions of n^2 in canonical ordering.

The programs for A332722, there is no canonical definition to state claims against.
-/

/-! ## A332722.P16560143180697957990

`A195120(A218679(n))`
-/

namespace A332722.P16560143180697957990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A218679 n).toNat

end

end A332722.P16560143180697957990

/-! ## A332722.P14648686262506316025

`A276797(A228714(n))+1`
-/

namespace A332722.P14648686262506316025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A228714 n).toNat + 1

end

end A332722.P14648686262506316025

/-!
# A332724: Number of length n - 1 ordered set partitions of {1..n} where no element of any block is greater than any element of a non-adjacent consecutive block.

The programs for A332724, the canonical program `A332724.P7717163579128536045` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332724 has offset 0).

The definition of A332724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332724.P7717163579128536045

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=14`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332724

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P7717163579128536045.Spec : Prop :=
  ∀ n, P7717163579128536045.a n = A332724 n

theorem P7717163579128536045.correct : P7717163579128536045.Spec := by
  intro n
  simp only [A332724]

end A332724

/-! ## A332724.P3699010480785396166

`ogf((x^2+4x^3+x^4)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A332724.P3699010480785396166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 4, 1] [1, -2, -1, 2, 1] n

end

end A332724.P3699010480785396166

namespace A332724

/-- `ogf((x^2+4x^3+x^4)/(1-2x-x^2+2x^3+x^4))` -/
def P3699010480785396166.Spec : Prop :=
  ∀ n, P3699010480785396166.a n = A332724 n

end A332724

/-! ## A332724.P8248479252546563668

`A006478(n)+A057428(n)+A045925(n)`
-/

namespace A332724.P8248479252546563668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + (A057428 n + A045925 n)

end

end A332724.P8248479252546563668

namespace A332724

/-- `A006478(n)+A057428(n)+A045925(n)` -/
def P8248479252546563668.Spec : Prop :=
  ∀ n, P8248479252546563668.a n = A332724 n

end A332724

/-! ## A332724.P4390647699674183783

`(n*record[A000032(n)])%A023610(n)`
-/

namespace A332724.P4390647699674183783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A023610 n)

end

end A332724.P4390647699674183783

namespace A332724

/-- `(n*record[A000032(n)])%A023610(n)` -/
def P4390647699674183783.Spec : Prop :=
  ∀ n, P4390647699674183783.a n = A332724 n

end A332724

/-! ## A332724.P13985045058034888106

`(n*A000032(n+1))%A023610(n)`
-/

namespace A332724.P13985045058034888106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A000032 (n + 1)) (A023610 n)

end

end A332724.P13985045058034888106

namespace A332724

/-- `(n*A000032(n+1))%A023610(n)` -/
def P13985045058034888106.Spec : Prop :=
  ∀ n, P13985045058034888106.a n = A332724 n

end A332724

/-! ## A332724.P14423153623021065487

`(n*A000204(n+1))%A023610(n)`
-/

namespace A332724.P14423153623021065487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A000204 (n + 1)) (A023610 n)

end

end A332724.P14423153623021065487

namespace A332724

/-- `(n*A000204(n+1))%A023610(n)` -/
def P14423153623021065487.Spec : Prop :=
  ∀ n, P14423153623021065487.a n = A332724 n

end A332724

/-! ## A332724.P793796209103916897

`A004799(n+1)%(A004798(n+1)-A045925(n))`
-/

namespace A332724.P793796209103916897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004799 (n + 1)) (A004798 (n + 1) - A045925 n)

end

end A332724.P793796209103916897

namespace A332724

/-- `A004799(n+1)%(A004798(n+1)-A045925(n))` -/
def P793796209103916897.Spec : Prop :=
  ∀ n, P793796209103916897.a n = A332724 n

end A332724

/-!
# A332725: Heinz numbers of integer partitions whose negated first differences are not unimodal.

The programs for A332725, there is no canonical definition to state claims against.
-/

/-! ## A332725.P16722660149909812221

`3*A091454(A032555(n+1))`
-/

namespace A332725.P16722660149909812221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A091454 (A032555 (n + 1)).toNat

end

end A332725.P16722660149909812221

/-! ## A332725.P17616511750348076635

`3*A091454(A082217(n+1))`
-/

namespace A332725.P17616511750348076635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A091454 (A082217 (n + 1)).toNat

end

end A332725.P17616511750348076635

/-! ## A332725.P8252879311005091896

`18*A059485(A077739(n+1))`
-/

namespace A332725.P8252879311005091896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A059485 (A077739 (n + 1)).toNat

end

end A332725.P8252879311005091896

/-! ## A332725.P14733032419383352602

`A091454(n+1)*A165024(n²+3)`
-/

namespace A332725.P14733032419383352602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091454 (n + 1) * A165024 (n ^ 2 + 3)

end

end A332725.P14733032419383352602

/-! ## A332725.P7344655253750024517

`A091454(n+1)*A215885(A061134(n+1))`
-/

namespace A332725.P7344655253750024517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091454 (n + 1) * A215885 (A061134 (n + 1)).toNat

end

end A332725.P7344655253750024517

/-!
# A332726: Number of compositions of n whose run-lengths are unimodal.

The programs for A332726, there is no canonical definition to state claims against.
-/

/-! ## A332726.P6940729364577557193

`A011782(n)-A332727(n)`
-/

namespace A332726.P6940729364577557193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A332727 n

end

end A332726.P6940729364577557193

/-! ## A332726.P1778236032544831118

`∑[A034008(n)]-A332727(n)`
-/

namespace A332726.P1778236032544831118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332727 n

end

end A332726.P1778236032544831118

/-! ## A332726.P11397266981333876711

`A001523(n)+A115981(n)-A332727(n)`
-/

namespace A332726.P11397266981333876711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n + (A115981 n - A332727 n)

end

end A332726.P11397266981333876711

/-! ## A332726.P9353069948693177488

`A332836(n)+A332871(n)-A332727(n)`
-/

namespace A332726.P9353069948693177488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332836 n + (A332871 n - A332727 n)

end

end A332726.P9353069948693177488

/-! ## A332726.P6790378918007803963

`Δ[A056469(n)]-A332727(n)`
-/

namespace A332726.P6790378918007803963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332727 n

end

end A332726.P6790378918007803963

/-! ## A332726.P2518281700010419221

`Δ[A094373(n)]-A332727(n)`
-/

namespace A332726.P2518281700010419221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332727 n

end

end A332726.P2518281700010419221

/-! ## A332726.P2552352210319114999

`Δ[A131577(n)]-A332727(n)`
-/

namespace A332726.P2552352210319114999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332727 n

end

end A332726.P2552352210319114999

/-! ## A332726.P4465853907996214585

`A130321(A161680(n))-A332727(n)`
-/

namespace A332726.P4465853907996214585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A161680 n).toNat - A332727 n

end

end A332726.P4465853907996214585

/-!
# A332727: Number of compositions of n whose run-lengths are not unimodal.

The programs for A332727, there is no canonical definition to state claims against.
-/

/-! ## A332727.P13690431561548206015

`ceil(2^(n-1))-A332726(round(sqrt(n²+1)))`
-/

namespace A332727.P13690431561548206015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A332726 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A332727.P13690431561548206015

/-! ## A332727.P13339661482512890609

`abs(A011782(n)-A332726(n))`
-/

namespace A332727.P13339661482512890609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A332726 n|

end

end A332727.P13339661482512890609

/-! ## A332727.P537165691744456003

`A001523(n)+A115981(n)-A332726(n)`
-/

namespace A332727.P537165691744456003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n + (A115981 n - A332726 n)

end

end A332727.P537165691744456003

/-! ## A332727.P9184730273425367846

`A011782(n)-A332726(n)-val(A007090(2*n)+1, 2)`
-/

namespace A332727.P9184730273425367846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A332726 n - (SequenceMachineLib.valuation (A007090 (2 * n) + 1).toNat 2 : ℤ)

end

end A332727.P9184730273425367846

/-! ## A332727.P9379127334658531400

`A011782(n)-A332726(n)%A199772(n+2)`
-/

namespace A332727.P9379127334658531400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - Int.tmod (A332726 n) (A199772 (n + 2))

end

end A332727.P9379127334658531400

/-! ## A332727.P2580303885576094571

`A011782(n)-A332726(n)-A000007(A111398(17*(n+1)))`
-/

namespace A332727.P2580303885576094571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A332726 n - A000007 (A111398 (17 * (n + 1))).toNat

end

end A332727.P2580303885576094571

/-! ## A332727.P12889401591869713416

`(A011782(n)-A332726(n))*A134540(A000217(2*(n+1)))`
-/

namespace A332727.P12889401591869713416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - A332726 n) * A134540 (A000217 (2 * (n + 1))).toNat

end

end A332727.P12889401591869713416

/-!
# A332728: Number of integer partitions of n whose negated first differences (assuming the last part is zero) are unimodal.

The programs for A332728, there is no canonical definition to state claims against.
-/

/-! ## A332728.P15778514100508382257

`A000041(n)-A332744(n)`
-/

namespace A332728.P15778514100508382257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332744 n

end

end A332728.P15778514100508382257

/-! ## A332728.P14345288259628229390

`∑[A002865(n)]-A332744(n)`
-/

namespace A332728.P14345288259628229390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332744 n

end

end A332728.P14345288259628229390

/-! ## A332728.P2531299713660721880

`A035363(2*n)-A332744(n)`
-/

namespace A332728.P2531299713660721880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A332744 n

end

end A332728.P2531299713660721880

/-! ## A332728.P451868536249818414

`A133041(n)-(A332744(n)+n)`
-/

namespace A332728.P451868536249818414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A332744 n + (n : ℤ))

end

end A332728.P451868536249818414

/-! ## A332728.P2697506440802416450

`A332283(n)+A332284(n)-A332744(n)`
-/

namespace A332728.P2697506440802416450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A332744 n)

end

end A332728.P2697506440802416450

/-! ## A332728.P699509878221641275

`A284592(A000096(n))-A332744(n)`
-/

namespace A332728.P699509878221641275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A000096 n).toNat - A332744 n

end

end A332728.P699509878221641275

/-! ## A332728.P16464357769525431287

`A284592(A000217(n))-A332744(n)`
-/

namespace A332728.P16464357769525431287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A000217 n).toNat - A332744 n

end

end A332728.P16464357769525431287

/-! ## A332728.P10099624202454554863

`A299769(A000124(n))-A332744(n)`
-/

namespace A332728.P10099624202454554863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299769 (A000124 n).toNat - A332744 n

end

end A332728.P10099624202454554863

/-!
# A332729: Number of nonnegative integer n X n matrices with row and column sums 2 and sum of entries below the main diagonal n - 1.

The programs for A332729, there is no canonical definition to state claims against.
-/

/-! ## A332729.P5892909411534180255

`A269742((n+1)²-(n+1)+1)`
-/

namespace A332729.P5892909411534180255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269742 (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 1).toNat

end

end A332729.P5892909411534180255

/-!
# A332730: a(n) = Sum_{d|n} tau(d/gcd(d, n/d)), where tau = A000005.

The programs for A332730, the canonical program `A332730.P8572861949830629075` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332730 has offset 1).

The definition of A332730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332730.P8572861949830629075

`∑{d}[n+1, A322483(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332730

/-- `∑{d}[n+1, A322483(#)]` -/
def P8572861949830629075.Spec : Prop :=
  ∀ n, P8572861949830629075.a n = A332730 (n + 1)

theorem P8572861949830629075.correct : P8572861949830629075.Spec := by
  intro n
  simp only [A332730, Nat.add_sub_cancel]

end A332730

/-! ## A332730.P15568740088891474695

`∑{d}[n+1, A000005(A019554(#))]`
-/

namespace A332730.P15568740088891474695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A019554 d).toNat

end

end A332730.P15568740088891474695

namespace A332730

/-- `∑{d}[n+1, A000005(A019554(#))]` -/
def P15568740088891474695.Spec : Prop :=
  ∀ n, P15568740088891474695.a n = A332730 (n + 1)

end A332730

/-! ## A332730.P10523381774753905955

`∑{d}[n+1, A000005(sqrt(A053143(#)))]`
-/

namespace A332730.P10523381774753905955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (SequenceMachineLib.roundAway (Real.sqrt (A053143 d : ℝ))).toNat

end

end A332730.P10523381774753905955

namespace A332730

/-- `∑{d}[n+1, A000005(sqrt(A053143(#)))]` -/
def P10523381774753905955.Spec : Prop :=
  ∀ n, P10523381774753905955.a n = A332730 (n + 1)

end A332730

/-! ## A332730.P11170084323067947931

`∑{d}[n+1, A046951(#)*A056671((n+1)/#)]`
-/

namespace A332730.P11170084323067947931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A056671 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332730.P11170084323067947931

namespace A332730

/-- `∑{d}[n+1, A046951(#)*A056671((n+1)/#)]` -/
def P11170084323067947931.Spec : Prop :=
  ∀ n, P11170084323067947931.a n = A332730 (n + 1)

end A332730

/-! ## A332730.P1541946449900924562

`∑{d}[n+1, A000005(#)*A295316((n+1)/#)]`
-/

namespace A332730.P1541946449900924562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332730.P1541946449900924562

namespace A332730

/-- `∑{d}[n+1, A000005(#)*A295316((n+1)/#)]` -/
def P1541946449900924562.Spec : Prop :=
  ∀ n, P1541946449900924562.a n = A332730 (n + 1)

end A332730

/-! ## A332730.P15092084377822034231

`∑{d}[n+1, A124315(#)*A189021((n+1)/#)]`
-/

namespace A332730.P15092084377822034231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A189021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332730.P15092084377822034231

namespace A332730

/-- `∑{d}[n+1, A124315(#)*A189021((n+1)/#)]` -/
def P15092084377822034231.Spec : Prop :=
  ∀ n, P15092084377822034231.a n = A332730 (n + 1)

end A332730

/-! ## A332730.P819609697610877596

`∑{d}[n+1, A130054(#)*A385135((n+1)/#)]`
-/

namespace A332730.P819609697610877596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A385135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332730.P819609697610877596

namespace A332730

/-- `∑{d}[n+1, A130054(#)*A385135((n+1)/#)]` -/
def P819609697610877596.Spec : Prop :=
  ∀ n, P819609697610877596.a n = A332730 (n + 1)

end A332730

/-!
# A332732: Dirichlet g.f.: zeta(6*s) / (zeta(s) * zeta(2*s) * zeta(3*s)).

The programs for A332732, the canonical program `A332732.P2456103261483867088` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332732 has offset 1).

The definition of A332732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332732.P15050668708877381029

`∏{e}[n+1, A163810(#)]`
-/

namespace A332732.P15050668708877381029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A163810 (Nat.factorization (f1 n) p)

end

end A332732.P15050668708877381029

namespace A332732

/-- `∏{e}[n+1, A163810(#)]` -/
def P15050668708877381029.Spec : Prop :=
  ∀ n, P15050668708877381029.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P2456103261483867088

`∏{e}[n+1, A000484(#+2)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A332732

/-- `∏{e}[n+1, A000484(#+2)]` -/
def P2456103261483867088.Spec : Prop :=
  ∀ n, P2456103261483867088.a n = A332732 (n + 1)

theorem P2456103261483867088.correct : P2456103261483867088.Spec := by
  intro n
  simp only [A332732, Nat.add_sub_cancel]

end A332732

/-! ## A332732.P3715952501865161868

`∏{e}[n+1, 1-A164965(#)]`
-/

namespace A332732.P3715952501865161868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - A164965 (Nat.factorization (f1 n) p))

end

end A332732.P3715952501865161868

namespace A332732

/-- `∏{e}[n+1, 1-A164965(#)]` -/
def P3715952501865161868.Spec : Prop :=
  ∀ n, P3715952501865161868.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P13155881420907588163

`∏{e}[n+1, 1-A026394(#+3)%3]`
-/

namespace A332732.P13155881420907588163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - Int.tmod (A026394 (Nat.factorization (f1 n) p + 3)) 3)

end

end A332732.P13155881420907588163

namespace A332732

/-- `∏{e}[n+1, 1-A026394(#+3)%3]` -/
def P13155881420907588163.Spec : Prop :=
  ∀ n, P13155881420907588163.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P10418591956356455209

`A076479(n+1)*A387298(n+1)`
-/

namespace A332732.P10418591956356455209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A387298 (n + 1)

end

end A332732.P10418591956356455209

namespace A332732

/-- `A076479(n+1)*A387298(n+1)` -/
def P10418591956356455209.Spec : Prop :=
  ∀ n, P10418591956356455209.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P17155879823776408695

`A307427(n+1)*A387298(n+1)`
-/

namespace A332732.P17155879823776408695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (n + 1) * A387298 (n + 1)

end

end A332732.P17155879823776408695

namespace A332732

/-- `A307427(n+1)*A387298(n+1)` -/
def P17155879823776408695.Spec : Prop :=
  ∀ n, P17155879823776408695.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P6880365181925481891

`∑{d}[n+1, A007427(#)*A299406((n+1)/#)]`
-/

namespace A332732.P6880365181925481891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A299406 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332732.P6880365181925481891

namespace A332732

/-- `∑{d}[n+1, A007427(#)*A299406((n+1)/#)]` -/
def P6880365181925481891.Spec : Prop :=
  ∀ n, P6880365181925481891.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P6828674963817318574

`∑{d}[n+1, A355837(#)*A387298((n+1)/#)]`
-/

namespace A332732.P6828674963817318574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A387298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332732.P6828674963817318574

namespace A332732

/-- `∑{d}[n+1, A355837(#)*A387298((n+1)/#)]` -/
def P6828674963817318574.Spec : Prop :=
  ∀ n, P6828674963817318574.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P12501318087961956285

`A008836(n+1)*A210826(A003557(n+1))`
-/

namespace A332732.P12501318087961956285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A210826 (A003557 (n + 1)).toNat

end

end A332732.P12501318087961956285

namespace A332732

/-- `A008836(n+1)*A210826(A003557(n+1))` -/
def P12501318087961956285.Spec : Prop :=
  ∀ n, P12501318087961956285.a n = A332732 (n + 1)

end A332732

/-! ## A332732.P17809771759404186833

`∏{e}[(n+1)², A280261(#)]`
-/

namespace A332732.P17809771759404186833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A280261 (Nat.factorization (f1 n) p)

end

end A332732.P17809771759404186833

namespace A332732

/-- `∏{e}[(n+1)², A280261(#)]` -/
def P17809771759404186833.Spec : Prop :=
  ∀ n, P17809771759404186833.a n = A332732 (n + 1)

end A332732

/-!
# A332735: Numbers of graphs which are double triangle descendants of K_5 with four more vertices than triangles.

The programs for A332735, there is no canonical definition to state claims against.
-/

/-! ## A332735.P15313726121681744025

`A104739(A317186(n+1))-1`
-/

namespace A332735.P15313726121681744025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (A317186 (n + 1)).toNat - 1

end

end A332735.P15313726121681744025

/-! ## A332735.P15557880878727220554

`A064412(n+1)+A001221(A309056(2*n+1))`
-/

namespace A332735.P15557880878727220554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 1) + A001221 (A309056 (2 * n + 1)).toNat

end

end A332735.P15557880878727220554

/-!
# A332737: Composite terms of A181659, where the sum of the iterated totient function attains a record.

The programs for A332737, there is no canonical definition to state claims against.
-/

/-! ## A332737.P11424642119502440138

`∩[A181659(n+1), A286322(n+1)]`
-/

namespace A332737.P11424642119502440138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332737.P11424642119502440138

/-!
# A332739: Numbers k such that usigma(x) = k has a unique solution, where usigma(k) is the sum of unitary divisors of k (A034448).

The programs for A332739, there is no canonical definition to state claims against.
-/

/-! ## A332739.P8317839097327948034

`eq[1, A063974(n+1)]+1`
-/

namespace A332739.P8317839097327948034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332739.P8317839097327948034

/-! ## A332739.P1217958114546434705

`eq[1, A063974(A000038(n)+n)]`
-/

namespace A332739.P1217958114546434705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332739.P1217958114546434705

/-! ## A332739.P18038346850773320353

`eq[A057427(n), A063974(A028310(n))]`
-/

namespace A332739.P18038346850773320353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332739.P18038346850773320353

/-! ## A332739.P9348236884013359466

`record[A000027(n+1)/A000032(A063974(n+1))]`
-/

namespace A332739.P9348236884013359466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000032 (A063974 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332739.P9348236884013359466

/-! ## A332739.P16883371974908731768

`eq[A057427(n), A063974(A065033(2*n))]`
-/

namespace A332739.P16883371974908731768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332739.P16883371974908731768

/-!
# A332741: Number of unimodal negated permutations of a multiset whose multiplicities are the prime indices of n.

The programs for A332741, there is no canonical definition to state claims against.
-/

/-! ## A332741.P3574794895368776551

`A064553(A052126(n+1))`
-/

namespace A332741.P3574794895368776551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A052126 (n + 1)).toNat

end

end A332741.P3574794895368776551

/-! ## A332741.P4544898320065728179

`A332294(2*A052126(n+1))`
-/

namespace A332741.P4544898320065728179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (2 * A052126 (n + 1)).toNat

end

end A332741.P4544898320065728179

/-! ## A332741.P17865791421327446564

`A332294(A130065(2*(n+1))/2)`
-/

namespace A332741.P17865791421327446564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (SequenceMachineLib.roundAway ((A130065 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A332741.P17865791421327446564

/-! ## A332741.P16920783891264197557

`A064553((n+1)/A006530(n+1))`
-/

namespace A332741.P16920783891264197557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A332741.P16920783891264197557

/-! ## A332741.P13079836561131274731

`A184160((n+1)/A006530(n+1))`
-/

namespace A332741.P13079836561131274731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A332741.P13079836561131274731

/-! ## A332741.P15353847009343339569

`A064553(n+1)/A159081(n+1)`
-/

namespace A332741.P15353847009343339569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064553 (n + 1) : ℚ) / (A159081 (n + 1) : ℚ)

end

end A332741.P15353847009343339569

/-! ## A332741.P1649046838400880349

`A064553(n+1)/(A061395(n+1)+1)`
-/

namespace A332741.P1649046838400880349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064553 (n + 1) : ℚ) / (A061395 (n + 1) + 1 : ℚ)

end

end A332741.P1649046838400880349

/-! ## A332741.P4267056343803410963

`A332294(2*(n+1)/A006530(n+1))`
-/

namespace A332741.P4267056343803410963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A332741.P4267056343803410963

/-! ## A332741.P7643440907472216653

`A000005(A124859(A331188(n+1)))`
-/

namespace A332741.P7643440907472216653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A124859 (A331188 (n + 1)).toNat).toNat

end

end A332741.P7643440907472216653

/-! ## A332741.P3425321298296766500

`A064553(A130065(n+1)/A020639(n+1))`
-/

namespace A332741.P3425321298296766500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (SequenceMachineLib.roundAway ((A130065 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A332741.P3425321298296766500

/-!
# A332742: Number of non-unimodal negated permutations of a multiset whose multiplicities are the prime indices of n.

The programs for A332742, there is no canonical definition to state claims against.
-/

/-! ## A332742.P393402574281145277

`A318762(n+1)-A332741(n+1)`
-/

namespace A332742.P393402574281145277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) - A332741 (n + 1)

end

end A332742.P393402574281145277

/-! ## A332742.P6117768116954095778

`A318762(n+1)-A064553(A052126(n+1))`
-/

namespace A332742.P6117768116954095778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) - A064553 (A052126 (n + 1)).toNat

end

end A332742.P6117768116954095778

/-! ## A332742.P17945019154312204605

`A112624(n+1)*A124794(n+1)-A332294(2*A052126(n+1))`
-/

namespace A332742.P17945019154312204605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1) * A124794 (n + 1) - A332294 (2 * A052126 (n + 1)).toNat

end

end A332742.P17945019154312204605

/-! ## A332742.P2834833070988501972

`A333146(A181821(n+1))`
-/

namespace A332742.P2834833070988501972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A181821 (n + 1)).toNat

end

end A332742.P2834833070988501972

/-! ## A332742.P1089780924132600653

`A318762(n+1)-A333145(A181821(n+1))`
-/

namespace A332742.P1089780924132600653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) - A333145 (A181821 (n + 1)).toNat

end

end A332742.P1089780924132600653

/-!
# A332743: Number of non-unimodal compositions of n covering an initial interval of positive integers.

The programs for A332743, there is no canonical definition to state claims against.
-/

/-! ## A332743.P9228842307152950597

`A107429(A233583(n+1))-A227038(n)`
-/

namespace A332743.P9228842307152950597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107429 (A233583 (n + 1)).toNat - A227038 n

end

end A332743.P9228842307152950597

/-! ## A332743.P244691723787167742

`∑[A341839(A147114(n+1))-1]`
-/

namespace A332743.P244691723787167742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 (A147114 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332743.P244691723787167742

/-! ## A332743.P132100138148345971

`A338430(or(A000111(n), A322280(n)))`
-/

namespace A332743.P132100138148345971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (Int.lor (A000111 n) (A322280 n)).toNat

end

end A332743.P132100138148345971

/-! ## A332743.P3411751707693627708

`A338430(A287240(n+1)+A000111(n))`
-/

namespace A332743.P3411751707693627708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (A287240 (n + 1) + A000111 n).toNat

end

end A332743.P3411751707693627708

/-! ## A332743.P6148344031534413419

`A090618(A234933(n))%A253297(n+1)`
-/

namespace A332743.P6148344031534413419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090618 (A234933 n).toNat) (A253297 (n + 1))

end

end A332743.P6148344031534413419

/-!
# A332744: Number of integer partitions of n whose negated first differences (assuming the last part is zero) are not unimodal.

The programs for A332744, there is no canonical definition to state claims against.
-/

/-! ## A332744.P1331472397266635886

`A000041(n)-A332728(n)`
-/

namespace A332744.P1331472397266635886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332728 n

end

end A332744.P1331472397266635886

/-! ## A332744.P362841453529205323

`∑[A002865(n)]-A332728(n)`
-/

namespace A332744.P362841453529205323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332728 n

end

end A332744.P362841453529205323

/-! ## A332744.P13815733876580637893

`A000065(n)+1-A332728(n)`
-/

namespace A332744.P13815733876580637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A332728 n)

end

end A332744.P13815733876580637893

/-! ## A332744.P11158690778444246701

`A035363(2*n)-A332728(n)`
-/

namespace A332744.P11158690778444246701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A332728 n

end

end A332744.P11158690778444246701

/-! ## A332744.P9202520674658849917

`A027187(n)+A027193(n)-A332728(n)`
-/

namespace A332744.P9202520674658849917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A332728 n)

end

end A332744.P9202520674658849917

/-! ## A332744.P11690132757584130357

`A102425(n)+A102437(n)-A332728(n)`
-/

namespace A332744.P11690132757584130357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102425 n + (A102437 n - A332728 n)

end

end A332744.P11690132757584130357

/-! ## A332744.P11942743658274508727

`A124227(n)+A124228(n)-A332728(n)`
-/

namespace A332744.P11942743658274508727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124227 n + (A124228 n - A332728 n)

end

end A332744.P11942743658274508727

/-! ## A332744.P15257751168480351722

`A171979(n)+A240302(n)-A332728(n)`
-/

namespace A332744.P15257751168480351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171979 n + (A240302 n - A332728 n)

end

end A332744.P15257751168480351722

/-! ## A332744.P9998780245604505573

`A183011(n)/A183010(n)-A332728(n)`
-/

namespace A332744.P9998780245604505573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183011 n : ℚ) / (A183010 n : ℚ) - (A332728 n : ℚ)

end

end A332744.P9998780245604505573

/-! ## A332744.P11113161043819672937

`A182713(n+1)+A240056(n+1)-A332728(n)`
-/

namespace A332744.P11113161043819672937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1) + (A240056 (n + 1) - A332728 n)

end

end A332744.P11113161043819672937

/-! ## A332744.P3623754043572284577

`A332283(n)+A332284(n)-A332728(n)`
-/

namespace A332744.P3623754043572284577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A332728 n)

end

end A332744.P3623754043572284577

/-! ## A332744.P11788327116023483470

`A369696(n)-(A369697(n)+A332728(n))`
-/

namespace A332744.P11788327116023483470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369696 n - (A369697 n + A332728 n)

end

end A332744.P11788327116023483470

/-! ## A332744.P13776540229102993821

`A000079(n)-(A332728(n)+A208739(n))`
-/

namespace A332744.P13776540229102993821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A332728 n + A208739 n)

end

end A332744.P13776540229102993821

/-! ## A332744.P13544577893875361573

`A208738(n)-(A332728(n)+A208740(n+1))`
-/

namespace A332744.P13544577893875361573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208738 n - (A332728 n + A208740 (n + 1))

end

end A332744.P13544577893875361573

/-! ## A332744.P15614193495728258981

`A284592(A000096(n))-A332728(n)`
-/

namespace A332744.P15614193495728258981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A000096 n).toNat - A332728 n

end

end A332744.P15614193495728258981

/-! ## A332744.P7820547059638855852

`A284592(A000217(n))-A332728(n)`
-/

namespace A332744.P7820547059638855852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A000217 n).toNat - A332728 n

end

end A332744.P7820547059638855852

/-! ## A332744.P9744208705983881101

`A299769(A000124(n))-A332728(n)`
-/

namespace A332744.P9744208705983881101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299769 (A000124 n).toNat - A332728 n

end

end A332744.P9744208705983881101

/-!
# A332745: Number of integer partitions of n whose run-lengths are either weakly increasing or weakly decreasing.

The programs for A332745, there is no canonical definition to state claims against.
-/

/-! ## A332745.P6818556138715444552

`A000041(n)-A332641(n)`
-/

namespace A332745.P6818556138715444552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332641 n

end

end A332745.P6818556138715444552

/-! ## A332745.P10146392571484674768

`A213598(n)-A332641(n)`
-/

namespace A332745.P10146392571484674768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A332641 n

end

end A332745.P10146392571484674768

/-! ## A332745.P2873109034932438113

`sqrt(A001255(n))-A332641(n)`
-/

namespace A332745.P2873109034932438113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A332641 n : ℝ)

end

end A332745.P2873109034932438113

/-! ## A332745.P770668036289785809

`∑[A002865(n)]-A332641(n)`
-/

namespace A332745.P770668036289785809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332641 n

end

end A332745.P770668036289785809

/-! ## A332745.P13976904828346797196

`A194543(∑[n])-A332641(n)`
-/

namespace A332745.P13976904828346797196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (∑ j ∈ Finset.range (n + 1), f1 j) - A332641 n

end

end A332745.P13976904828346797196

/-!
# A332746: Number of integer partitions of n such that either the run-lengths or the negated run-lengths are unimodal.

The programs for A332746, there is no canonical definition to state claims against.
-/

/-! ## A332746.P16347292395100941108

`A000041(n)-A332640(n)`
-/

namespace A332746.P16347292395100941108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332640 n

end

end A332746.P16347292395100941108

/-! ## A332746.P1948614448692675448

`A213598(n)-A332640(n)`
-/

namespace A332746.P1948614448692675448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A332640 n

end

end A332746.P1948614448692675448

/-! ## A332746.P14628973776800856023

`sqrt(A001255(n))-A332640(n)`
-/

namespace A332746.P14628973776800856023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A332640 n : ℝ)

end

end A332746.P14628973776800856023

/-! ## A332746.P9933458896176937482

`∑[A002865(n)]-A332640(n)`
-/

namespace A332746.P9933458896176937482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332640 n

end

end A332746.P9933458896176937482

/-! ## A332746.P2574637711683202638

`A054225(∑[n])-A332640(n)`
-/

namespace A332746.P2574637711683202638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A332640 n

end

end A332746.P2574637711683202638

/-!
# A332747: Number of compositions of n^2, such that each element of [n] is used at least once as a part.

The programs for A332747, there is no canonical definition to state claims against.
-/

/-! ## A332747.P8777618899578413702

`A000203(A175772((1-2*n)²))`
-/

namespace A332747.P8777618899578413702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A175772 ((1 - (2 * n : ℤ)) ^ 2).toNat).toNat

end

end A332747.P8777618899578413702

/-!
# A332748: The number of permutations of {1,1,1,2,2,2,...,n,n,n} such that each triple of k's (k=1..n) is equally spaced with b(k) other elements in between and b(1) >= b(2) >= ... >= b(n).

The programs for A332748, there is no canonical definition to state claims against.
-/

/-! ## A332748.P533502712087194764

`A332762(∑[n+2]-1)`
-/

namespace A332748.P533502712087194764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A332748.P533502712087194764

/-! ## A332748.P17923322554712703897

`A332762(A034856(n+1))+char[19]`
-/

namespace A332748.P17923322554712703897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332748.P17923322554712703897

/-! ## A332748.P8257054212643614360

`A332762(A034856(n+1))%A037057(n)`
-/

namespace A332748.P8257054212643614360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332762 (A034856 (n + 1)).toNat) (A037057 n)

end

end A332748.P8257054212643614360

/-! ## A332748.P3789580701843742334

`lcm(A007318(n), A332762(A034856(n+1)))`
-/

namespace A332748.P3789580701843742334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A332762 (A034856 (n + 1)).toNat)

end

end A332748.P3789580701843742334

/-! ## A332748.P13260869231093092606

`or(A059108(n), A332762(A034856(n+1)))`
-/

namespace A332748.P13260869231093092606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059108 n) (A332762 (A034856 (n + 1)).toNat)

end

end A332748.P13260869231093092606

/-!
# A332752: The number of permutations of {1,1,1,1,2,2,2,2,...,n,n,n,n} such that each quadruple of k's (k=1..n) is equally spaced with b(k) other elements in between, and b(1) >= b(2) >= ... >= b(n).

The programs for A332752, there is no canonical definition to state claims against.
-/

/-! ## A332752.P14054944927537061358

`A332762(∑[n+3])`
-/

namespace A332752.P14054944927537061358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332752.P14054944927537061358

/-! ## A332752.P16985849861992715690

`A332762(A141214(n))+char[8]`
-/

namespace A332752.P16985849861992715690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332752.P16985849861992715690

/-! ## A332752.P10769476392899724125

`A332762(A141214(n))%A346862(n)`
-/

namespace A332752.P10769476392899724125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332762 (A141214 n).toNat) (A346862 n)

end

end A332752.P10769476392899724125

/-! ## A332752.P17625758468539314946

`or(A000007(n), A332762(A141214(n)))`
-/

namespace A332752.P17625758468539314946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A332762 (A141214 n).toNat)

end

end A332752.P17625758468539314946

/-!
# A332754: a(n) = Sum_{k=1..n-1} ((-1)^(k+n+1)*binomial(k,floor(k/2))).

The programs for A332754, the canonical program `A332754.P10825314309462176498` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332754 has offset 1).

The definition of A332754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332754.P10825314309462176498

`A191790(n)+A000035(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332754

/-- `A191790(n)+A000035(n)` -/
def P10825314309462176498.Spec : Prop :=
  ∀ n, P10825314309462176498.a n = A332754 (n + 1)

theorem P10825314309462176498.correct : P10825314309462176498.Spec := by
  intro n
  simp only [A332754, Nat.add_sub_cancel]

end A332754

/-! ## A332754.P12407230786861271677

`A086905(n)-A033999(n)`
-/

namespace A332754.P12407230786861271677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 n - A033999 n

end

end A332754.P12407230786861271677

namespace A332754

/-- `A086905(n)-A033999(n)` -/
def P12407230786861271677.Spec : Prop :=
  ∀ n, P12407230786861271677.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P14582325371971146081

`A191790(n)+A059841(n+1)`
-/

namespace A332754.P14582325371971146081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A059841 (n + 1)

end

end A332754.P14582325371971146081

namespace A332754

/-- `A191790(n)+A059841(n+1)` -/
def P14582325371971146081.Spec : Prop :=
  ∀ n, P14582325371971146081.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P2573053388936840214

`A191790(n)-(A059841(n)-1)`
-/

namespace A332754.P2573053388936840214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n - (A059841 n - 1)

end

end A332754.P2573053388936840214

namespace A332754

/-- `A191790(n)-(A059841(n)-1)` -/
def P2573053388936840214.Spec : Prop :=
  ∀ n, P2573053388936840214.a n = A332754 (n + 1)

theorem P2573053388936840214.correct : P2573053388936840214.Spec := by
  intro n
  simp only [A332754, Nat.add_sub_cancel, A332754.P2573053388936840214.a, A332754.P10825314309462176498.a, A000035, A000035.P2023072528413494694.a, A059841, A059841.P7264174615531153985.a, A191790, A191790.P8584163521288311520.f1, A191790.P8584163521288311520.a, A086905, A086905.P17367873536697088158.f1, A086905.P17367873536697088158.a, A174783, A174783.P12683386541777257962.f1, A174783.P12683386541777257962.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332754

/-! ## A332754.P79946089077751886

`Δ[A124642(n)]`
-/

namespace A332754.P79946089077751886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332754.P79946089077751886

namespace A332754

/-- `Δ[A124642(n)]` -/
def P79946089077751886.Spec : Prop :=
  ∀ n, P79946089077751886.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P15990911101716433394

`abs(1-∑[A126930(n)])`
-/

namespace A332754.P15990911101716433394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A332754.P15990911101716433394

namespace A332754

/-- `abs(1-∑[A126930(n)])` -/
def P15990911101716433394.Spec : Prop :=
  ∀ n, P15990911101716433394.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P9584706881807647815

`A001405(n)-a(n-1)` with `a(0)=0`
-/

namespace A332754.P9584706881807647815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001405 n - a (n - 1)

end

end A332754.P9584706881807647815

namespace A332754

/-- `A001405(n)-a(n-1)` -/
def P9584706881807647815.Spec : Prop :=
  ∀ n, P9584706881807647815.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P16216892573268581265

`A014495(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A332754.P16216892573268581265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014495 n + (1 - a (n - 1))

end

end A332754.P16216892573268581265

namespace A332754

/-- `A014495(n)+1-a(n-1)` -/
def P16216892573268581265.Spec : Prop :=
  ∀ n, P16216892573268581265.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P11007203014743573209

`A051920(n)-1-a(n-1)` with `a(0)=0`
-/

namespace A332754.P11007203014743573209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051920 n - 1 - a (n - 1)

end

end A332754.P11007203014743573209

namespace A332754

/-- `A051920(n)-1-a(n-1)` -/
def P11007203014743573209.Spec : Prop :=
  ∀ n, P11007203014743573209.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P2289110204233890379

`Δ[A174783(n)+A059841(n)]`
-/

namespace A332754.P2289110204233890379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n + A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332754.P2289110204233890379

namespace A332754

/-- `Δ[A174783(n)+A059841(n)]` -/
def P2289110204233890379.Spec : Prop :=
  ∀ n, P2289110204233890379.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P3625047865445636172

`Δ[A174783(n)-A000035(n)]`
-/

namespace A332754.P3625047865445636172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332754.P3625047865445636172

namespace A332754

/-- `Δ[A174783(n)-A000035(n)]` -/
def P3625047865445636172.Spec : Prop :=
  ∀ n, P3625047865445636172.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P16116868167872955058

`A124642(n+1)-A124642(n)`
-/

namespace A332754.P16116868167872955058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (n + 1) - A124642 n

end

end A332754.P16116868167872955058

namespace A332754

/-- `A124642(n+1)-A124642(n)` -/
def P16116868167872955058.Spec : Prop :=
  ∀ n, P16116868167872955058.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P1807691774445203656

`A138364(n)+A126869(n)-a(n-1)` with `a(0)=0`
-/

namespace A332754.P1807691774445203656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138364 n + A126869 n - a (n - 1)

end

end A332754.P1807691774445203656

namespace A332754

/-- `A138364(n)+A126869(n)-a(n-1)` -/
def P1807691774445203656.Spec : Prop :=
  ∀ n, P1807691774445203656.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P869391721183230780

`Δ[A072100(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A332754.P869391721183230780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A072100 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332754.P869391721183230780

namespace A332754

/-- `Δ[A072100(n+1)-a(n-1)]` -/
def P869391721183230780.Spec : Prop :=
  ∀ n, P869391721183230780.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P13194488178045339302

`Δ[a(n-2)+A063886(n)/2]` with `a(0)=1, a(1)=1`
-/

namespace A332754.P13194488178045339302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (A063886 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332754.P13194488178045339302

namespace A332754

/-- `Δ[a(n-2)+A063886(n)/2]` -/
def P13194488178045339302.Spec : Prop :=
  ∀ n, P13194488178045339302.a n = (A332754 (n + 1) : ℚ)

end A332754

/-! ## A332754.P6472157466969507755

`Δ[Δ[A000975(n)]-A191394(n)]`
-/

namespace A332754.P6472157466969507755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A191394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332754.P6472157466969507755

namespace A332754

/-- `Δ[Δ[A000975(n)]-A191394(n)]` -/
def P6472157466969507755.Spec : Prop :=
  ∀ n, P6472157466969507755.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P5082913555261915049

`C(n, floor(n/2))-a(n-1)` with `a(0)=0`
-/

namespace A332754.P5082913555261915049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - a (n - 1)

end

end A332754.P5082913555261915049

namespace A332754

/-- `C(n, floor(n/2))-a(n-1)` -/
def P5082913555261915049.Spec : Prop :=
  ∀ n, P5082913555261915049.a n = A332754 (n + 1)

end A332754

/-! ## A332754.P7765008096483243175

`A007318(floor((n+1)²/2))-a(n-1)` with `a(0)=0`
-/

namespace A332754.P7765008096483243175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007318 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A332754.P7765008096483243175

namespace A332754

/-- `A007318(floor((n+1)²/2))-a(n-1)` -/
def P7765008096483243175.Spec : Prop :=
  ∀ n, P7765008096483243175.a n = A332754 (n + 1)

end A332754

/-!
# A332755: Lapidary numbers.

The programs for A332755, there is no canonical definition to state claims against.
-/

/-! ## A332755.P17243242193577218389

`A000196(floor(sqrt(A148582(n))))`
-/

namespace A332755.P17243242193577218389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A148582 n)).toNat

end

end A332755.P17243242193577218389

/-! ## A332755.P15671695577599382866

`A000196(ceil(sqrt(A148582(n))))`
-/

namespace A332755.P15671695577599382866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈Real.sqrt (A148582 n : ℝ)⌉.toNat

end

end A332755.P15671695577599382866

/-! ## A332755.P1890740377555739405

`A000196(round(sqrt(A148582(n))))`
-/

namespace A332755.P1890740377555739405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A148582 n : ℝ))).toNat

end

end A332755.P1890740377555739405

/-! ## A332755.P17653341078731608399

`A000196(A051920(n)-A050253(n))`
-/

namespace A332755.P17653341078731608399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A051920 n - A050253 n).toNat

end

end A332755.P17653341078731608399

/-! ## A332755.P5115645832162248479

`or(A100617(A092483(n+1)), A165656(n))`
-/

namespace A332755.P5115645832162248479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100617 (A092483 (n + 1)).toNat) (A165656 n)

end

end A332755.P5115645832162248479

/-!
# A332756: A loop sequence within Pi. Let a(1) = 19. For n > 1, a(n+1) is the position of the first occurrence of a(n) after the decimal point in the decimal expansion of Pi.

The programs for A332756, the canonical program `A332756.P6828203272200601922` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332756 has offset 1).

The definition of A332756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332756.P6828203272200601922

`a(n-3)` with `a(0)=19, a(1)=37, a(2)=46`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332756

/-- `a(n-3)` -/
def P6828203272200601922.Spec : Prop :=
  ∀ n, (P6828203272200601922.a n : ℤ) = A332756 (n + 1)

theorem P6828203272200601922.correct : P6828203272200601922.Spec := by
  intro n
  simp only [A332756, Nat.add_sub_cancel]

end A332756

/-!
# A332757: Number of involutions (plus identity) in the n-fold iterated wreath product of C_2.

The programs for A332757, the canonical program `A332757.P8668049927164071442` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332757 has offset 0).

The definition of A332757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332757.P8668049927164071442

`a(n-1)²+2^(2^(n-1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332757

/-- `a(n-1)²+2^(2^(n-1)-1)` -/
def P8668049927164071442.Spec : Prop :=
  ∀ n, P8668049927164071442.a n = (A332757 n : ℝ)

end A332757

/-! ## A332757.P10002844956920050465

`A332868(Δ[2*a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A332757.P10002844956920050465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332868 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A332757.P10002844956920050465

namespace A332757

/-- `A332868(Δ[2*a(n-1)])` -/
def P10002844956920050465.Spec : Prop :=
  ∀ n, P10002844956920050465.a n = A332757 n

end A332757

/-! ## A332757.P13134585444401486422

`A058891(n)+a(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A332757.P13134585444401486422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058891 n + a (n - 1) * a (n - 1)

end

end A332757.P13134585444401486422

namespace A332757

/-- `A058891(n)+a(n-1)*a(n-1)` -/
def P13134585444401486422.Spec : Prop :=
  ∀ n, P13134585444401486422.a n = A332757 n

end A332757

/-! ## A332757.P17644214599872664899

`A332868(A131577(n))`
-/

namespace A332757.P17644214599872664899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332868 (A131577 n).toNat

end

end A332757.P17644214599872664899

namespace A332757

/-- `A332868(A131577(n))` -/
def P17644214599872664899.Spec : Prop :=
  ∀ n, P17644214599872664899.a n = A332757 n

end A332757

/-! ## A332757.P11481557576743321637

`A332868(A258800(n))`
-/

namespace A332757.P11481557576743321637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332868 (A258800 n).toNat

end

end A332757.P11481557576743321637

namespace A332757

/-- `A332868(A258800(n))` -/
def P11481557576743321637.Spec : Prop :=
  ∀ n, P11481557576743321637.a n = A332757 n

end A332757

/-!
# A332758: Number of fixed-point free involutions in the n-fold iterated wreath product of C_2.

The programs for A332758, the canonical program `A332758.P17966372168693364990` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332758 has offset 0).

The definition of A332758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332758.P17966372168693364990

`a(n-1)²+2^(2^(n-1)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332758

/-- `a(n-1)²+2^(2^(n-1)-1)` -/
def P17966372168693364990.Spec : Prop :=
  ∀ n, P17966372168693364990.a n = (A332758 n : ℝ)

end A332758

/-! ## A332758.P12280256766009222989

`A058891(n)+a(n-1)²` with `a(0)=0`
-/

namespace A332758.P12280256766009222989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A058891 n + a (n - 1) ^ 2

end

end A332758.P12280256766009222989

namespace A332758

/-- `A058891(n)+a(n-1)²` -/
def P12280256766009222989.Spec : Prop :=
  ∀ n, P12280256766009222989.a n = A332758 n

end A332758

/-! ## A332758.P7769016639753199180

`A303837(n+1)*A332869(A034008(n))`
-/

namespace A332758.P7769016639753199180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (n + 1) * A332869 (A034008 n).toNat

end

end A332758.P7769016639753199180

namespace A332758

/-- `A303837(n+1)*A332869(A034008(n))` -/
def P7769016639753199180.Spec : Prop :=
  ∀ n, P7769016639753199180.a n = A332758 n

end A332758

/-! ## A332758.P10898494528208489344

`char[A125121(n+1)]*A332840(A011782(n))`
-/

namespace A332758.P10898494528208489344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A332840 (A011782 n).toNat

end

end A332758.P10898494528208489344

namespace A332758

/-- `char[A125121(n+1)]*A332840(A011782(n))` -/
def P10898494528208489344.Spec : Prop :=
  ∀ n, P10898494528208489344.a n = A332758 n

end A332758

/-! ## A332758.P8770331153913175372

`char[A125121(n+1)]*A332840(A243088(n))`
-/

namespace A332758.P8770331153913175372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A332840 (A243088 n).toNat

end

end A332758.P8770331153913175372

namespace A332758

/-- `char[A125121(n+1)]*A332840(A243088(n))` -/
def P8770331153913175372.Spec : Prop :=
  ∀ n, P8770331153913175372.a n = A332758 n

end A332758

/-!
# A332759: Number of involutions (plus identity) in a fixed Sylow 2-subgroup of the symmetric group of degree n.

The programs for A332759, there is no canonical definition to state claims against.
-/

/-! ## A332759.P11560872840816877460

`A332868(floor(n/2))`
-/

namespace A332759.P11560872840816877460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332868 ⌊(n : ℚ) / 2⌋.toNat

end

end A332759.P11560872840816877460

/-! ## A332759.P3116889683833818192

`∏{e}[A016116(n), A332868(#)]`
-/

namespace A332759.P3116889683833818192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332868 (Nat.factorization (f1 n).natAbs p)

end

end A332759.P3116889683833818192

/-! ## A332759.P15933221906517893580

`and(-1, A332868(A004526(n)))`
-/

namespace A332759.P15933221906517893580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A332868 (A004526 n).toNat)

end

end A332759.P15933221906517893580

/-! ## A332759.P14773403185652159705

`A007318(∑[n])*A332868(A004526(n))`
-/

namespace A332759.P14773403185652159705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A332868 (A004526 n).toNat

end

end A332759.P14773403185652159705

/-! ## A332759.P16505193252787430298

`A332868(A004526(n))+A000038(n+4)`
-/

namespace A332759.P16505193252787430298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332868 (A004526 n).toNat + A000038 (n + 4)

end

end A332759.P16505193252787430298

/-!
# A332760: Triangle of number of connected graphs with n>=2 nodes and maximum degree 1<=k

The programs for A332760, there is no canonical definition to state claims against.
-/

/-! ## A332760.P6104031746238240140

`A241312(A135313(n))+A049600(n)`
-/

namespace A332760.P6104031746238240140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (A135313 n).toNat + A049600 n

end

end A332760.P6104031746238240140

/-! ## A332760.P492470930711012751

`A220527(A269948(n))+A079520(n)`
-/

namespace A332760.P492470930711012751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A269948 n).toNat + A079520 n

end

end A332760.P492470930711012751

/-!
# A332761: Exponents m such that the number of nonnegative k <= n, possessing the property that n + n*k - k is a square, is equal to 2^m.

The programs for A332761, there is no canonical definition to state claims against.
-/

/-! ## A332761.P7989299265279009047

`A072273((2*n)%(n+2)+1)`
-/

namespace A332761.P7989299265279009047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (2 * n % (n + 2) + 1)

end

end A332761.P7989299265279009047

/-! ## A332761.P3790510627751858327

`A072273(n-1)+a(C(n, n²))` with `a(0)=0, a(1)=1`
-/

namespace A332761.P3790510627751858327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A072273 (n - 1) + a (Nat.choose n (n ^ 2))

end

end A332761.P3790510627751858327

/-! ## A332761.P15662168524579445837

`A072273(A169585(n)+abs(1-n))`
-/

namespace A332761.P15662168524579445837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A169585 n + |1 - (n : ℤ)|).toNat

end

end A332761.P15662168524579445837

/-! ## A332761.P16888259142101118550

`A072273(n+1-A107393(2*n))`
-/

namespace A332761.P16888259142101118550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 ((n + 1 : ℤ) - A107393 (2 * n)).toNat

end

end A332761.P16888259142101118550

/-! ## A332761.P17568564816934460365

`and(A072273(n-1), A267437(a(n-2)+2))` with `a(0)=0, a(1)=1`
-/

namespace A332761.P17568564816934460365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (A072273 (n - 1)) (A267437 (a (n - 2) + 2).toNat)

end

end A332761.P17568564816934460365

/-! ## A332761.P2519620439362256579

`A072273(n-1)-a(n%2-A000035(n))` with `a(0)=0, a(1)=1`
-/

namespace A332761.P2519620439362256579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A072273 (n - 1) - a (((n % 2 : ℕ) : ℤ) - A000035 n).toNat

end

end A332761.P2519620439362256579

/-! ## A332761.P8498164390554388063

`A072273(n-1)+A104763(a(n-1)+1)-1` with `a(0)=0, a(1)=1`
-/

namespace A332761.P8498164390554388063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A072273 (n - 1) + (A104763 (a (n - 1) + 1).toNat - 1)

end

end A332761.P8498164390554388063

/-! ## A332761.P12811233030568904433

`A072273(A087507(record[A071054(n)]))`
-/

namespace A332761.P12811233030568904433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A087507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A332761.P12811233030568904433

/-! ## A332761.P218981516896423996

`A072273(A004736(∑[A233583(n+1)]))`
-/

namespace A332761.P218981516896423996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A332761.P218981516896423996

/-!
# A332762: Square array T(n,k), n >= 0, k >= 2, read by antidiagonals, where T(n,k) is the number of permutations of {k 1's, k 2's, ..., k n's} with the property that j's are equally spaced for j=1..n and the interval of j+1 is less than or equal to the interval of j for j=1..n-1.

The programs for A332762, there is no canonical definition to state claims against.
-/

/-! ## A332762.P12817090245804999148

`and(37, A084618(A120400(n)))`
-/

namespace A332762.P12817090245804999148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 37 (A084618 (A120400 n).toNat)

end

end A332762.P12817090245804999148

/-! ## A332762.P2790562515291742884

`and(37, A299321(A164140(n)))`
-/

namespace A332762.P2790562515291742884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 37 (A299321 (A164140 n).toNat)

end

end A332762.P2790562515291742884

/-! ## A332762.P867805383430705960

`A336096(C(n, A071055(n)))`
-/

namespace A332762.P867805383430705960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336096 (Nat.choose n (A071055 n).toNat)

end

end A332762.P867805383430705960

/-! ## A332762.P7922707100045186059

`A172119(A125135(n+1)+n)`
-/

namespace A332762.P7922707100045186059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 (A125135 (n + 1) + (n : ℤ)).toNat

end

end A332762.P7922707100045186059

/-! ## A332762.P639112676964250311

`gcd(A057335(A347668(n+1)), A342799(n+1))`
-/

namespace A332762.P639112676964250311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057335 (A347668 (n + 1)).toNat) (A342799 (n + 1))

end

end A332762.P639112676964250311

/-!
# A332764: 7-smooth numbers of the form (ab+1)*(ac+1), a > b > c > 0.

The programs for A332764, there is no canonical definition to state claims against.
-/

/-! ## A332764.P15070408722152304405

`∪[A320884(n+1), A320885(n+1)]`
-/

namespace A332764.P15070408722152304405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332764.P15070408722152304405

/-! ## A332764.P15123973672729351479

`∩[A002473(n+1), A180045(n+1)]`
-/

namespace A332764.P15123973672729351479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332764.P15123973672729351479

/-! ## A332764.P991847635154188661

`record[A071785(A180045(n+1))]`
-/

namespace A332764.P991847635154188661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A180045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332764.P991847635154188661

/-! ## A332764.P17799013857554303310

`filter[A180045(n+1), A086299(#)]`
-/

namespace A332764.P17799013857554303310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A332764.P17799013857554303310

/-! ## A332764.P16058574892400213011

`A020985(n)²*record[A262401(A180045(n+1))]`
-/

namespace A332764.P16058574892400213011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A180045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332764.P16058574892400213011

/-! ## A332764.P11274418947365564782

`record[A262401(A180045(n+1))%A044305(n+1)]`
-/

namespace A332764.P11274418947365564782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262401 (A180045 (n + 1)).toNat) (A044305 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332764.P11274418947365564782

/-! ## A332764.P18019396081709485685

`record[A262401(A180045(n+1))]%A320884(n+1)`
-/

namespace A332764.P18019396081709485685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A180045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A320884 (n + 1))

end

end A332764.P18019396081709485685

/-!
# A332765: Consider all permutations p_i of the first n primes; a(n) is the minimum over p_i of the maximal product of two adjacent primes in the permutation.

The programs for A332765, there is no canonical definition to state claims against.
-/

/-! ## A332765.P911659409252335097

`A338905(A290743(n+2))`
-/

namespace A332765.P911659409252335097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338905 (A290743 (n + 2)).toNat

end

end A332765.P911659409252335097

/-! ## A332765.P8045167702664012230

`A338905(A213706(n)+3)`
-/

namespace A332765.P8045167702664012230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338905 (A213706 n + 3).toNat

end

end A332765.P8045167702664012230

/-! ## A332765.P1334468248218780789

`A338905(A087811(n+1)+2)`
-/

namespace A332765.P1334468248218780789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338905 (A087811 (n + 1) + 2).toNat

end

end A332765.P1334468248218780789

/-! ## A332765.P18220094270663928608

`A338905(A002620(n+2)+2)`
-/

namespace A332765.P18220094270663928608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338905 (A002620 (n + 2) + 2).toNat

end

end A332765.P18220094270663928608

/-! ## A332765.P2879867146059892369

`A338905(A024206(n+1)+3)`
-/

namespace A332765.P2879867146059892369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338905 (A024206 (n + 1) + 3).toNat

end

end A332765.P2879867146059892369

/-!
# A332766: Numbers k for which there exists a group of order k that cannot be generated by A051903(k) elements.

The programs for A332766, there is no canonical definition to state claims against.
-/

/-! ## A332766.P7795011886771282328

`eq[A059829(2*(n+1)), A059829(n+1)]+1`
-/

namespace A332766.P7795011886771282328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332766.P7795011886771282328

/-! ## A332766.P14102912304483488367

`∩[A069209(n+1), A329138(n+1)]`
-/

namespace A332766.P14102912304483488367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332766.P14102912304483488367

/-! ## A332766.P7681178599842127881

`∩[A051234(n+1), A230766(n+1)]`
-/

namespace A332766.P7681178599842127881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332766.P7681178599842127881

/-! ## A332766.P14368539475674552468

`lt[A130126(A002322(3*n+2)), A226637(n+1)]`
-/

namespace A332766.P14368539475674552468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130126 (A002322 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332766.P14368539475674552468

/-! ## A332766.P10544206834979738920

`lt[A192537(A360005(n+6)), A120070(n+2)]`
-/

namespace A332766.P10544206834979738920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192537 (A360005 (n + 6)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332766.P10544206834979738920

/-!
# A332768: a(n) is the greatest prime factor of A180045(n).

The programs for A332768, there is no canonical definition to state claims against.
-/

/-! ## A332768.P12642975235617197045

`A006530(A180045(n+1))`
-/

namespace A332768.P12642975235617197045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A180045 (n + 1)).toNat

end

end A332768.P12642975235617197045

/-! ## A332768.P1677841684895893895

`A034699(∏{p}[A180045(n+1), #])`
-/

namespace A332768.P1677841684895893895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A332768.P1677841684895893895

/-! ## A332768.P16955016022084990251

`A025492(∏{p}[A180045(n+1), #])`
-/

namespace A332768.P16955016022084990251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A332768.P16955016022084990251

/-! ## A332768.P7423792199497245570

`or(A064911(n+1), A111089(A180045(n+1)))`
-/

namespace A332768.P7423792199497245570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064911 (n + 1)) (A111089 (A180045 (n + 1)).toNat)

end

end A332768.P7423792199497245570

/-! ## A332768.P878149151271156584

`A111089(2*A180045(n+1))`
-/

namespace A332768.P878149151271156584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * A180045 (n + 1)).toNat

end

end A332768.P878149151271156584

/-! ## A332768.P14269704608376467253

`A299766(2*A180045(n+1))`
-/

namespace A332768.P14269704608376467253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (2 * A180045 (n + 1)).toNat

end

end A332768.P14269704608376467253

/-! ## A332768.P14235815762346030387

`A111089(lcm(2, A180045(n+1)))`
-/

namespace A332768.P14235815762346030387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (Int.lcm 2 (A180045 (n + 1)))

end

end A332768.P14235815762346030387

/-!
# A332769: Permutation of the positive integers: a(n) = A258996(A054429(n)) = A054429(A258996(n)).

The programs for A332769, the canonical program `A332769.P9976973925860660972` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332769 has offset 1).

The definition of A332769 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332769.P9976973925860660972

`A258996(A054429(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A332769

/-- `A258996(A054429(n+1))` -/
def P9976973925860660972.Spec : Prop :=
  ∀ n, P9976973925860660972.a n = A332769 (n + 1)

theorem P9976973925860660972.correct : P9976973925860660972.Spec := by
  intro n
  simp only [A332769, Nat.add_sub_cancel]

end A332769

/-! ## A332769.P6932546899070080070

`A054429(A258996(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332769.P6932546899070080070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A258996 (n + 1)).toNat

end

end A332769.P6932546899070080070

namespace A332769

/-- `A054429(A258996(n+1))` -/
def P6932546899070080070.Spec : Prop :=
  ∀ n, P6932546899070080070.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P18186361640812638408

`A284447(A065190(n+1))`
-/

namespace A332769.P18186361640812638408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A065190 (n + 1)).toNat

end

end A332769.P18186361640812638408

namespace A332769

/-- `A284447(A065190(n+1))` -/
def P18186361640812638408.Spec : Prop :=
  ∀ n, P18186361640812638408.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P15915528186214345250

`A258996(2*(n+1))/2`
-/

namespace A332769.P15915528186214345250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258996 (2 * (n + 1)) : ℚ) / 2

end

end A332769.P15915528186214345250

namespace A332769

/-- `A258996(2*(n+1))/2` -/
def P15915528186214345250.Spec : Prop :=
  ∀ n, P15915528186214345250.a n = (A332769 (n + 1) : ℚ)

end A332769

/-! ## A332769.P16402310088424160503

`A284447(A014681(n)+1)`
-/

namespace A332769.P16402310088424160503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A014681 n + 1).toNat

end

end A332769.P16402310088424160503

namespace A332769

/-- `A284447(A014681(n)+1)` -/
def P16402310088424160503.Spec : Prop :=
  ∀ n, P16402310088424160503.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P3576213376303828657

`A154437(A231550(n+1))`
-/

namespace A332769.P3576213376303828657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A231550 (n + 1)).toNat

end

end A332769.P3576213376303828657

namespace A332769

/-- `A154437(A231550(n+1))` -/
def P3576213376303828657.Spec : Prop :=
  ∀ n, P3576213376303828657.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P8406420913602360334

`A284447(n+1)+A062157(n)`
-/

namespace A332769.P8406420913602360334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (n + 1) + A062157 n

end

end A332769.P8406420913602360334

namespace A332769

/-- `A284447(n+1)+A062157(n)` -/
def P8406420913602360334.Spec : Prop :=
  ∀ n, P8406420913602360334.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P1001819216660726784

`A284447(xor(1, A057427(n)+n))`
-/

namespace A332769.P1001819216660726784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A332769.P1001819216660726784

namespace A332769

/-- `A284447(xor(1, A057427(n)+n))` -/
def P1001819216660726784.Spec : Prop :=
  ∀ n, P1001819216660726784.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P31078039000399633

`A284447(2*A054429(n+1))/2`
-/

namespace A332769.P31078039000399633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284447 (2 * A054429 (n + 1)).toNat : ℚ) / 2

end

end A332769.P31078039000399633

namespace A332769

/-- `A284447(2*A054429(n+1))/2` -/
def P31078039000399633.Spec : Prop :=
  ∀ n, P31078039000399633.a n = (A332769 (n + 1) : ℚ)

end A332769

/-! ## A332769.P2921129746590156140

`A231551(A284460(2*(n+1))/2)`
-/

namespace A332769.P2921129746590156140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (SequenceMachineLib.roundAway ((A284460 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A332769.P2921129746590156140

namespace A332769

/-- `A231551(A284460(2*(n+1))/2)` -/
def P2921129746590156140.Spec : Prop :=
  ∀ n, P2921129746590156140.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P5371093406480163364

`xor(A092323(n+1), A258996(n+1))`
-/

namespace A332769.P5371093406480163364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092323 (n + 1)) (A258996 (n + 1))

end

end A332769.P5371093406480163364

namespace A332769

/-- `xor(A092323(n+1), A258996(n+1))` -/
def P5371093406480163364.Spec : Prop :=
  ∀ n, P5371093406480163364.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P2306604489456353259

`xor(n-A053645(n+1), A258996(n+1))`
-/

namespace A332769.P2306604489456353259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A053645 (n + 1)) (A258996 (n + 1))

end

end A332769.P2306604489456353259

namespace A332769

/-- `xor(n-A053645(n+1), A258996(n+1))` -/
def P2306604489456353259.Spec : Prop :=
  ∀ n, P2306604489456353259.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P17552956893511334960

`A258996(A092569(A014681(n)+1))`
-/

namespace A332769.P17552956893511334960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A092569 (A014681 n + 1).toNat).toNat

end

end A332769.P17552956893511334960

namespace A332769

/-- `A258996(A092569(A014681(n)+1))` -/
def P17552956893511334960.Spec : Prop :=
  ∀ n, P17552956893511334960.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P3087682613455116480

`A258996(A065190(A092569(n+1)))`
-/

namespace A332769.P3087682613455116480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A065190 (A092569 (n + 1)).toNat).toNat

end

end A332769.P3087682613455116480

namespace A332769

/-- `A258996(A065190(A092569(n+1)))` -/
def P3087682613455116480.Spec : Prop :=
  ∀ n, P3087682613455116480.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P11176271776535801836

`A092569(A054429(A284447(n+1)))`
-/

namespace A332769.P11176271776535801836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A054429 (A284447 (n + 1)).toNat).toNat

end

end A332769.P11176271776535801836

namespace A332769

/-- `A092569(A054429(A284447(n+1)))` -/
def P11176271776535801836.Spec : Prop :=
  ∀ n, P11176271776535801836.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P8224829442711018777

`A258996(A117120(A063946(n+1)))`
-/

namespace A332769.P8224829442711018777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A117120 (A063946 (n + 1)).toNat).toNat

end

end A332769.P8224829442711018777

namespace A332769

/-- `A258996(A117120(A063946(n+1)))` -/
def P8224829442711018777.Spec : Prop :=
  ∀ n, P8224829442711018777.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P1675721833844707557

`A258996(A006068(A233280(n+1)))`
-/

namespace A332769.P1675721833844707557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A006068 (A233280 (n + 1)).toNat).toNat

end

end A332769.P1675721833844707557

namespace A332769

/-- `A258996(A006068(A233280(n+1)))` -/
def P1675721833844707557.Spec : Prop :=
  ∀ n, P1675721833844707557.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P6309481814397090592

`A154437(n+1)+A284459(n+1)-A258996(n+1)`
-/

namespace A332769.P6309481814397090592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (n + 1) + (A284459 (n + 1) - A258996 (n + 1))

end

end A332769.P6309481814397090592

namespace A332769

/-- `A154437(n+1)+A284459(n+1)-A258996(n+1)` -/
def P6309481814397090592.Spec : Prop :=
  ∀ n, P6309481814397090592.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P10635362189062325588

`A059893(A258746(A054429(A059893(n+1))))`
-/

namespace A332769.P10635362189062325588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A258746 (A054429 (A059893 (n + 1)).toNat).toNat).toNat

end

end A332769.P10635362189062325588

namespace A332769

/-- `A059893(A258746(A054429(A059893(n+1))))` -/
def P10635362189062325588.Spec : Prop :=
  ∀ n, P10635362189062325588.a n = A332769 (n + 1)

end A332769

/-! ## A332769.P14156437276067756717

`A284447(A092569(A063946(A117120(n+1))))`
-/

namespace A332769.P14156437276067756717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A092569 (A063946 (A117120 (n + 1)).toNat).toNat).toNat

end

end A332769.P14156437276067756717

namespace A332769

/-- `A284447(A092569(A063946(A117120(n+1))))` -/
def P14156437276067756717.Spec : Prop :=
  ∀ n, P14156437276067756717.a n = A332769 (n + 1)

end A332769

/-!
# A332770: a(n) is the number of ways to write A180045(n) as (x*y+1)*(x*z+1) with x > y > z > 1.

The programs for A332770, there is no canonical definition to state claims against.
-/

/-! ## A332770.P14708506853226942240

`A154325(A325137(n)%A032741(2*(n+2)))`
-/

namespace A332770.P14708506853226942240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (Int.tmod (A325137 n) (A032741 (2 * (n + 2)))).toNat

end

end A332770.P14708506853226942240

/-! ## A332770.P2628917062690710549

`A025142(gcd(A236679(n+5), A362142(2*n+1)))`
-/

namespace A332770.P2628917062690710549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (Int.gcd (A236679 (n + 5)) (A362142 (2 * n + 1)))

end

end A332770.P2628917062690710549

/-! ## A332770.P10760087937703310784

`A256067(and(A101048(2*(n+1)), A118514(2*n+5)))`
-/

namespace A332770.P10760087937703310784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256067 (Int.land (A101048 (2 * (n + 1))) (A118514 (2 * n + 5))).toNat

end

end A332770.P10760087937703310784

/-! ## A332770.P14871412366240635557

`A007318(and(A006968(n+1), A326255(n+1)))`
-/

namespace A332770.P14871412366240635557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (A006968 (n + 1)) (A326255 (n + 1))).toNat

end

end A332770.P14871412366240635557

/-! ## A332770.P4659861001079856060

`gcd(A135010(A055922(n)), A279071(3*n+5))`
-/

namespace A332770.P4659861001079856060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135010 (A055922 n).toNat) (A279071 (3 * n + 5))

end

end A332770.P4659861001079856060

/-!
# A332771: Positions of the Dirichlet inverse of the Euler totient function expansion of the partial sums of the Möbius inverse of the Harmonic numbers in the set of the sorted tuples that have upper and lower bounds -(k-1) and +(k-1).

The programs for A332771, there is no canonical definition to state claims against.
-/

/-! ## A332771.P13784971696031672619

`A052333(n!)-2`
-/

namespace A332771.P13784971696031672619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (Nat.factorial n) - 2

end

end A332771.P13784971696031672619

/-!
# A332772: Numbers k > 0 such that 30k +- 7 is prime.

The programs for A332772, there is no canonical definition to state claims against.
-/

/-! ## A332772.P8005329351254154385

`∩[A158573(n+1), A158791(n+1)+1]`
-/

namespace A332772.P8005329351254154385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158791 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332772.P8005329351254154385

/-!
# A332773: The number of permutations of {1,1,1,1,1,2,2,2,2,2,...,n,n,n,n,n} with the property that b(1) >= b(2) >= ... >= b(n), where five k's are skipped by b(k) for k=1..n.

The programs for A332773, there is no canonical definition to state claims against.
-/

/-! ## A332773.P11834461919011186301

`A332762(∑[n+4]+2)`
-/

namespace A332773.P11834461919011186301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332773.P11834461919011186301

/-! ## A332773.P1970916981450589208

`A154448(A325557(n²))`
-/

namespace A332773.P1970916981450589208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A325557 (n ^ 2)).toNat

end

end A332773.P1970916981450589208

/-!
# A332774: Given n line segments, the k-th of which is drawn from (k,0) to (x_k,1) where {x_1,x_2,...,x_n} is a permutation of {1,2,...,n}, a(n) is the maximum number of distinct points at which line segments intersect.

The programs for A332774, there is no canonical definition to state claims against.
-/

/-! ## A332774.P2241897066193815313

`∑[val(n!, 2)]+n-char[2*(n+1)]`
-/

namespace A332774.P2241897066193815313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332774.P2241897066193815313

/-! ## A332774.P2215455169950774981

`abs(((n+20)%21)%2-(∑[val(n!, 2)]+n))`
-/

namespace A332774.P2215455169950774981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 20) % 21 % 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)|

end

end A332774.P2215455169950774981

/-! ## A332774.P9128859821331564952

`∑[a(n-1)+val(n, 2)]+(n%2)^n+n` with `a(0)=-1, a(1)=0`
-/

namespace A332774.P9128859821331564952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n % 2) ^ n + n : ℕ) : ℤ)

end

end A332774.P9128859821331564952

/-! ## A332774.P12769947413723718418

`A122248(n)-char[2*(n+1)]`
-/

namespace A332774.P12769947413723718418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122248 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332774.P12769947413723718418

/-! ## A332774.P12833186647781727185

`∑[A048621(n+1)+∑[n%2]]-n`
-/

namespace A332774.P12833186647781727185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A332774.P12833186647781727185

/-!
# A332775: a(n) = n + sopf(n) - omega(n).

The programs for A332775, the canonical program `A332775.P17459528584474244674` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332775 has offset 1).

The definition of A332775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332775.P9237626693656516043

`n+1+A055631(n+1)`
-/

namespace A332775.P9237626693656516043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A055631 (n + 1)

end

end A332775.P9237626693656516043

namespace A332775

/-- `n+1+A055631(n+1)` -/
def P9237626693656516043.Spec : Prop :=
  ∀ n, P9237626693656516043.a n = A332775 (n + 1)

theorem P9237626693656516043.correct : P9237626693656516043.Spec := by
  intro n
  simp only [A332775, Nat.add_sub_cancel, A332775.P9237626693656516043.a, A332775.P17459528584474244674.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055631, A055631.P8885936990558110793.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332775

/-! ## A332775.P17459528584474244674

`n+1+A008472(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A332775

/-- `n+1+A008472(n+1)-A001221(n+1)` -/
def P17459528584474244674.Spec : Prop :=
  ∀ n, P17459528584474244674.a n = A332775 (n + 1)

theorem P17459528584474244674.correct : P17459528584474244674.Spec := by
  intro n
  simp only [A332775, Nat.add_sub_cancel]

end A332775

/-! ## A332775.P18012947859685647328

`∑{p}[n+1, #-1]+1+n`
-/

namespace A332775.P18012947859685647328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + 1 + (n : ℤ)

end

end A332775.P18012947859685647328

namespace A332775

/-- `∑{p}[n+1, #-1]+1+n` -/
def P18012947859685647328.Spec : Prop :=
  ∀ n, P18012947859685647328.a n = A332775 (n + 1)

end A332775

/-! ## A332775.P1439915704854858941

`xor(1, ∑{p}[n+1, xor(1, #)])+n`
-/

namespace A332775.P1439915704854858941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.xor 1 p) + n

end

end A332775.P1439915704854858941

namespace A332775

/-- `xor(1, ∑{p}[n+1, xor(1, #)])+n` -/
def P1439915704854858941.Spec : Prop :=
  ∀ n, (P1439915704854858941.a n : ℤ) = A332775 (n + 1)

end A332775

/-! ## A332775.P2299800004508639041

`∑{p}[n+1, n%#]+n+1`
-/

namespace A332775.P2299800004508639041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), n % p + (n + 1)

end

end A332775.P2299800004508639041

namespace A332775

/-- `∑{p}[n+1, n%#]+n+1` -/
def P2299800004508639041.Spec : Prop :=
  ∀ n, (P2299800004508639041.a n : ℤ) = A332775 (n + 1)

end A332775

/-! ## A332775.P4895309101974070752

`∑{p}[xor(n, -1), #-1]-xor(n, -1)`
-/

namespace A332775.P4895309101974070752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1) - Int.xor (n : ℤ) (-1)

end

end A332775.P4895309101974070752

namespace A332775

/-- `∑{p}[xor(n, -1), #-1]-xor(n, -1)` -/
def P4895309101974070752.Spec : Prop :=
  ∀ n, P4895309101974070752.a n = A332775 (n + 1)

end A332775

/-! ## A332775.P8846136587053804483

`∑{p}[n+1, A008683(#)]+∑{p}[n+1, #]+1+n`
-/

namespace A332775.P8846136587053804483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 p + ((∑ p ∈ Nat.primeFactors (f2 n), p + 1 + n : ℕ) : ℤ)

end

end A332775.P8846136587053804483

namespace A332775

/-- `∑{p}[n+1, A008683(#)]+∑{p}[n+1, #]+1+n` -/
def P8846136587053804483.Spec : Prop :=
  ∀ n, P8846136587053804483.a n = A332775 (n + 1)

end A332775

/-! ## A332775.P3945676659744539873

`A075653(n+1)-A001221(n+1)`
-/

namespace A332775.P3945676659744539873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A001221 (n + 1)

end

end A332775.P3945676659744539873

namespace A332775

/-- `A075653(n+1)-A001221(n+1)` -/
def P3945676659744539873.Spec : Prop :=
  ∀ n, P3945676659744539873.a n = A332775 (n + 1)

end A332775

/-! ## A332775.P12686174993795904941

`A074372(n+1)-A001221(n+1)+n`
-/

namespace A332775.P12686174993795904941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) - A001221 (n + 1) + (n : ℤ)

end

end A332775.P12686174993795904941

namespace A332775

/-- `A074372(n+1)-A001221(n+1)+n` -/
def P12686174993795904941.Spec : Prop :=
  ∀ n, P12686174993795904941.a n = A332775 (n + 1)

theorem P12686174993795904941.correct : P12686174993795904941.Spec := by
  intro n
  simp only [A332775, Nat.add_sub_cancel, A332775.P12686174993795904941.a, A332775.P17459528584474244674.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332775

/-! ## A332775.P4803564752532275886

`A240086((n+1)²)+n+1`
-/

namespace A332775.P4803564752532275886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240086 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A332775.P4803564752532275886

namespace A332775

/-- `A240086((n+1)²)+n+1` -/
def P4803564752532275886.Spec : Prop :=
  ∀ n, P4803564752532275886.a n = A332775 (n + 1)

end A332775

/-!
# A332776: a(n) = 1 + Sum_{k=1..n-1} binomial(n-1,k) * a(k) * a(n-k-1).

The programs for A332776, there is no canonical definition to state claims against.
-/

/-! ## A332776.P201346334143491974

`n*a(n-1)-A240834(a(n-1))` with `a(0)=1`
-/

namespace A332776.P201346334143491974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A240834 (a (n - 1)).toNat

end

end A332776.P201346334143491974

/-! ## A332776.P9202202597797467386

`A195120(A131178(n+1))`
-/

namespace A332776.P9202202597797467386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A131178 (n + 1)).toNat

end

end A332776.P9202202597797467386

/-! ## A332776.P14253245975350313781

`A195120(A178119(n)+1)`
-/

namespace A332776.P14253245975350313781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A178119 n + 1).toNat

end

end A332776.P14253245975350313781

/-!
# A332777: a(n) = k^2 mod p where p is the n-th prime and of the form 6k-1 or 6k+1.

The programs for A332777, there is no canonical definition to state claims against.
-/

/-! ## A332777.P10868914460865967001

`round(p?[2*n+5]/6)²%A215848(n+1)`
-/

namespace A332777.P10868914460865967001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 6) ^ 2) (A215848 (n + 1))

end

end A332777.P10868914460865967001

/-! ## A332777.P2119298564460202816

`A084922(n+3)²%p?[A267872(n)]`
-/

namespace A332777.P2119298564460202816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084922 (n + 3) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A332777.P2119298564460202816

/-! ## A332777.P16621236237432315215

`A024699(n+1)²%A215848(n+1)`
-/

namespace A332777.P16621236237432315215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024699 (n + 1) ^ 2) (A215848 (n + 1))

end

end A332777.P16621236237432315215

/-! ## A332777.P5982863566159234176

`A307018(A000040(n+3))%A000040(n+3)`
-/

namespace A332777.P5982863566159234176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307018 (A000040 (n + 3)).toNat) (A000040 (n + 3))

end

end A332777.P5982863566159234176

/-! ## A332777.P17759837613053013342

`A062717(A181709(n+1))²%p?[A267872(n)]`
-/

namespace A332777.P17759837613053013342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062717 (A181709 (n + 1)).toNat ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A332777.P17759837613053013342

/-! ## A332777.P1064300452075984043

`A056827(A045344(n+2))²%p?[A091685(n)]`
-/

namespace A332777.P1064300452075984043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056827 (A045344 (n + 2)).toNat ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A332777.P1064300452075984043

/-! ## A332777.P9900705652060275725

`A143978(A005097(n+2))²%A000040(n+3)`
-/

namespace A332777.P9900705652060275725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143978 (A005097 (n + 2)).toNat ^ 2) (A000040 (n + 3))

end

end A332777.P9900705652060275725

/-! ## A332777.P1313011724399593993

`(A024700(n+1)*A081115(n+3))%A004139(n+1)`
-/

namespace A332777.P1313011724399593993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024700 (n + 1) * A081115 (n + 3)) (A004139 (n + 1))

end

end A332777.P1313011724399593993

/-!
# A332779: Number of simple labeled graphs on n nodes with at most one nontrivial acyclic component.

The programs for A332779, there is no canonical definition to state claims against.
-/

/-! ## A332779.P18070675590643551797

`A340828(A018086(n+1))`
-/

namespace A332779.P18070675590643551797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340828 (A018086 (n + 1)).toNat

end

end A332779.P18070675590643551797

/-! ## A332779.P8290141787438155973

`A000174(or(2, A175900(n)))`
-/

namespace A332779.P8290141787438155973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (Int.lor 2 (A175900 n)).toNat

end

end A332779.P8290141787438155973

/-!
# A332780: a(n) = (a(n-1) XOR a(n-3)) + 1, a(0) = a(1) = a(2) = 0.

The programs for A332780, the canonical program `A332780.P11770360183713831210` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332780 has offset 0).

The definition of A332780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332780.P11770360183713831210

`xor(a(n-1), a(n-3))+1` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332780

/-- `xor(a(n-1), a(n-3))+1` -/
def P11770360183713831210.Spec : Prop :=
  ∀ n, (P11770360183713831210.a n : ℤ) = A332780 n

theorem P11770360183713831210.correct : P11770360183713831210.Spec := by
  intro n
  simp only [A332780]

end A332780

/-!
# A332781: a(n) = (a(n-1) XOR a(n-4)) + 1, a(0) = a(1) = a(2) = a(3) = 0.

The programs for A332781, the canonical program `A332781.P5639024451482953447` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332781 has offset 0).

The definition of A332781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332781.P5639024451482953447

`xor(a(n-1), a(n-4))+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332781

/-- `xor(a(n-1), a(n-4))+1` -/
def P5639024451482953447.Spec : Prop :=
  ∀ n, (P5639024451482953447.a n : ℤ) = A332781 n

theorem P5639024451482953447.correct : P5639024451482953447.Spec := by
  intro n
  simp only [A332781]

end A332781

/-!
# A332782: a(n) = (a(n-1) XOR a(n-5)) + 1, a(0) = a(1) = a(2) = a(3) = a(4) = 0.

The programs for A332782, the canonical program `A332782.P15949199650055066195` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332782 has offset 0).

The definition of A332782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332782.P15949199650055066195

`xor(a(n-1), a(n-5))+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332782

/-- `xor(a(n-1), a(n-5))+1` -/
def P15949199650055066195.Spec : Prop :=
  ∀ n, (P15949199650055066195.a n : ℤ) = A332782 n

theorem P15949199650055066195.correct : P15949199650055066195.Spec := by
  intro n
  simp only [A332782]

end A332782

/-!
# A332783: The number of permutations of {(n+1) 1's, (n+1) 2's, ..., (n+1) n's} with the property that k's are equally spaced for k=1..n and the interval of k+1 is less than or equal to the interval of k for k=1..n-1.

The programs for A332783, there is no canonical definition to state claims against.
-/

/-! ## A332783.P11352954716276334931

`A332762(2*(n+1)²)`
-/

namespace A332783.P11352954716276334931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (2 * (n + 1) ^ 2)

end

end A332783.P11352954716276334931

/-!
# A332784: The number of permutations of {n 1's, n 2's,...,n n's} with the property that b(1) >= b(2) >= ... >= b(n), where n k's are skipped by b(k) for k=1..n.

The programs for A332784, there is no canonical definition to state claims against.
-/

/-! ## A332784.P14792522954006852096

`A332783(n+2)+(n+1)!`
-/

namespace A332784.P14792522954006852096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332783 (n + 2) + (Nat.factorial (n + 1) : ℤ)

end

end A332784.P14792522954006852096

/-! ## A332784.P16745707011029496859

`A332783(n+2)+record[A084938(n)]`
-/

namespace A332784.P16745707011029496859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332783 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332784.P16745707011029496859

/-! ## A332784.P13062192410484295251

`A332783(n+2)+A000142(n+1)`
-/

namespace A332784.P13062192410484295251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332783 (n + 2) + A000142 (n + 1)

end

end A332784.P13062192410484295251

/-! ## A332784.P11023582324369469514

`A332783(n+2)+∏[A000027(n+1)]`
-/

namespace A332784.P11023582324369469514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332783 (n + 2) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A332784.P11023582324369469514

/-! ## A332784.P5598690502756501443

`A332783(n+2)+∏[A028310(n+1)]`
-/

namespace A332784.P5598690502756501443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332783 (n + 2) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A332784.P5598690502756501443

/-!
# A332785: Nonsquarefree numbers that are not squareful.

The programs for A332785, the canonical program `A332785.P15938896357927830426` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332785 has offset 1).

The definition of A332785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332785.P9878751466493876780

`sqrt(A389947(n+1))`
-/

namespace A332785.P9878751466493876780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A389947 (n + 1) : ℝ)

end

end A332785.P9878751466493876780

namespace A332785

/-- `sqrt(A389947(n+1))` -/
def P9878751466493876780.Spec : Prop :=
  ∀ n, P9878751466493876780.a n = (A332785 (n + 1) : ℝ)

end A332785

/-! ## A332785.P8139871706241788144

`A392564(n+1)^(1/3)`
-/

namespace A332785.P8139871706241788144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A392564 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A332785.P8139871706241788144

namespace A332785

/-- `A392564(n+1)^(1/3)` -/
def P8139871706241788144.Spec : Prop :=
  ∀ n, P8139871706241788144.a n = (A332785 (n + 1) : ℝ)

end A332785

/-! ## A332785.P10632187364354496249

`filter[A013929(n+3), A389905(#)]`
-/

namespace A332785.P10632187364354496249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P10632187364354496249

namespace A332785

/-- `filter[A013929(n+3), A389905(#)]` -/
def P10632187364354496249.Spec : Prop :=
  ∀ n, P10632187364354496249.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P10936710916134954490

`A392564(n+1)/A389947(n+1)`
-/

namespace A332785.P10936710916134954490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392564 (n + 1) : ℚ) / (A389947 (n + 1) : ℚ)

end

end A332785.P10936710916134954490

namespace A332785

/-- `A392564(n+1)/A389947(n+1)` -/
def P10936710916134954490.Spec : Prop :=
  ∀ n, P10936710916134954490.a n = (A332785 (n + 1) : ℚ)

end A332785

/-! ## A332785.P11041536686096599947

`∪[A364702(n+1), A364996(n+1)]`
-/

namespace A332785.P11041536686096599947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332785.P11041536686096599947

namespace A332785

/-- `∪[A364702(n+1), A364996(n+1)]` -/
def P11041536686096599947.Spec : Prop :=
  ∀ n, (P11041536686096599947.a n : ℤ) = A332785 (n + 1)

end A332785

/-! ## A332785.P1580900979644525098

`filter[A317616(n+1), A389905(#)]`
-/

namespace A332785.P1580900979644525098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P1580900979644525098

namespace A332785

/-- `filter[A317616(n+1), A389905(#)]` -/
def P1580900979644525098.Spec : Prop :=
  ∀ n, P1580900979644525098.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P1031666951838540827

`filter[A303946(n+1), A389905(#)]`
-/

namespace A332785.P1031666951838540827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P1031666951838540827

namespace A332785

/-- `filter[A303946(n+1), A389905(#)]` -/
def P1031666951838540827.Spec : Prop :=
  ∀ n, P1031666951838540827.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P10336661525565528070

`filter[A051144(n+1), A389905(#)]`
-/

namespace A332785.P10336661525565528070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P10336661525565528070

namespace A332785

/-- `filter[A051144(n+1), A389905(#)]` -/
def P10336661525565528070.Spec : Prop :=
  ∀ n, P10336661525565528070.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P8727318304470214771

`filter[A059404(n+1), A389905(#)]`
-/

namespace A332785.P8727318304470214771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P8727318304470214771

namespace A332785

/-- `filter[A059404(n+1), A389905(#)]` -/
def P8727318304470214771.Spec : Prop :=
  ∀ n, P8727318304470214771.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P4988615984058305729

`filter[A126706(n+1), A389905(#)]`
-/

namespace A332785.P4988615984058305729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P4988615984058305729

namespace A332785

/-- `filter[A126706(n+1), A389905(#)]` -/
def P4988615984058305729.Spec : Prop :=
  ∀ n, P4988615984058305729.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P11101411928172397030

`filter[A080756(n+1), A389905(#)]`
-/

namespace A332785.P11101411928172397030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P11101411928172397030

namespace A332785

/-- `filter[A080756(n+1), A389905(#)]` -/
def P11101411928172397030.Spec : Prop :=
  ∀ n, P11101411928172397030.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P16518480260026286843

`filter[A162966(n+1), A389905(#)]`
-/

namespace A332785.P16518480260026286843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P16518480260026286843

namespace A332785

/-- `filter[A162966(n+1), A389905(#)]` -/
def P16518480260026286843.Spec : Prop :=
  ∀ n, P16518480260026286843.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P2390360048765739178

`filter[A354360(n+1), A389905(#)]`
-/

namespace A332785.P2390360048765739178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P2390360048765739178

namespace A332785

/-- `filter[A354360(n+1), A389905(#)]` -/
def P2390360048765739178.Spec : Prop :=
  ∀ n, P2390360048765739178.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P12893920894927474649

`filter[A389462(n+1), A389905(#)]`
-/

namespace A332785.P12893920894927474649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P12893920894927474649

namespace A332785

/-- `filter[A389462(n+1), A389905(#)]` -/
def P12893920894927474649.Spec : Prop :=
  ∀ n, P12893920894927474649.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P15938896357927830426

`lt[gcd(n, A326186(n+1)), n]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332785

/-- `lt[gcd(n, A326186(n+1)), n]+1` -/
def P15938896357927830426.Spec : Prop :=
  ∀ n, (P15938896357927830426.a n : ℤ) = A332785 (n + 1)

theorem P15938896357927830426.correct : P15938896357927830426.Spec := by
  intro n
  simp only [A332785, Nat.add_sub_cancel]

end A332785

/-! ## A332785.P3856070524036258014

`record[A304776(A126706(n+1))]`
-/

namespace A332785.P3856070524036258014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (A126706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332785.P3856070524036258014

namespace A332785

/-- `record[A304776(A126706(n+1))]` -/
def P3856070524036258014.Spec : Prop :=
  ∀ n, P3856070524036258014.a n = A332785 (n + 1)

end A332785

/-! ## A332785.P5620352419827621317

`filter[A363597(n+1), A389905(#)]`
-/

namespace A332785.P5620352419827621317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A332785.P5620352419827621317

namespace A332785

/-- `filter[A363597(n+1), A389905(#)]` -/
def P5620352419827621317.Spec : Prop :=
  ∀ n, P5620352419827621317.a n = A332785 (n + 1)

end A332785

/-!
# A332786: a(n) = numerator(-1/n + Sum_{k=1..n} 2^(k-1)/k).

The programs for A332786, there is no canonical definition to state claims against.
-/

/-! ## A332786.P4908133345189836394

`A178334(n)*A212045(A179865(n+1)+n)`
-/

namespace A332786.P4908133345189836394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A212045 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A332786.P4908133345189836394

/-!
# A332787: Negative-pan primes (see Comments).

The programs for A332787, there is no canonical definition to state claims against.
-/

/-! ## A332787.P488624081053452993

`record[-A332341(n+1)]`
-/

namespace A332787.P488624081053452993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332787.P488624081053452993

/-! ## A332787.P12670340923915949327

`A000005(A076605(n+2))*p?[-A332341(n+1)]/2`
-/

namespace A332787.P12670340923915949327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332341 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A076605 (n + 2)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2

end

end A332787.P12670340923915949327

/-! ## A332787.P12787273303965203997

`A006530(2*p?[-A332341(n+1)])`
-/

namespace A332787.P12787273303965203997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A332787.P12787273303965203997

/-! ## A332787.P9312388047168187317

`A000005(A141303(n+1))*p?[-A332341(n+1)]/2`
-/

namespace A332787.P9312388047168187317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332341 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A141303 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2

end

end A332787.P9312388047168187317

/-! ## A332787.P13251919985719081331

`A014963(p?[-A332341(n+1)])`
-/

namespace A332787.P13251919985719081331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A332787.P13251919985719081331

/-!
# A332788: Positive-pan primes (see Comments).

The programs for A332788, there is no canonical definition to state claims against.
-/

/-! ## A332788.P5405371812225047792

`p?[A332341(n+1)]`
-/

namespace A332788.P5405371812225047792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332788.P5405371812225047792

/-!
# A332789: First differences of the iterated Beatty sequence A007069.

The programs for A332789, the canonical program `A332789.P9919765140023462536` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332789 has offset 1).

The definition of A332789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332789.P12374599570985663524

`A189687(n+1)+Δ[floor((n+1)*sqrt(2))]`
-/

namespace A332789.P12374599570985663524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189687 (n + 1) + (f1 (n + 1) - f1 n)

end

end A332789.P12374599570985663524

namespace A332789

/-- `A189687(n+1)+Δ[floor((n+1)*sqrt(2))]` -/
def P12374599570985663524.Spec : Prop :=
  ∀ n, P12374599570985663524.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P8983794930443546528

`A279620(n+1)+char[floor((n+1)*sqrt(2)+n)]`
-/

namespace A332789.P8983794930443546528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279620 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332789.P8983794930443546528

namespace A332789

/-- `A279620(n+1)+char[floor((n+1)*sqrt(2)+n)]` -/
def P8983794930443546528.Spec : Prop :=
  ∀ n, P8983794930443546528.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P11669304628466530790

`A159684(n)+A279620(n+1)`
-/

namespace A332789.P11669304628466530790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + A279620 (n + 1)

end

end A332789.P11669304628466530790

namespace A332789

/-- `A159684(n)+A279620(n+1)` -/
def P11669304628466530790.Spec : Prop :=
  ∀ n, P11669304628466530790.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P18193548844239317067

`A097509(n+1)-A004641(n+1)`
-/

namespace A332789.P18193548844239317067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (n + 1) - A004641 (n + 1)

end

end A332789.P18193548844239317067

namespace A332789

/-- `A097509(n+1)-A004641(n+1)` -/
def P18193548844239317067.Spec : Prop :=
  ∀ n, P18193548844239317067.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P17753521080806002246

`A276862(n+1)-A004641(n+1)`
-/

namespace A332789.P17753521080806002246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (n + 1) - A004641 (n + 1)

end

end A332789.P17753521080806002246

namespace A332789

/-- `A276862(n+1)-A004641(n+1)` -/
def P17753521080806002246.Spec : Prop :=
  ∀ n, P17753521080806002246.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P13963272259606729210

`A159684(n)+2-A004641(n+1)`
-/

namespace A332789.P13963272259606729210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + (2 - A004641 (n + 1))

end

end A332789.P13963272259606729210

namespace A332789

/-- `A159684(n)+2-A004641(n+1)` -/
def P13963272259606729210.Spec : Prop :=
  ∀ n, P13963272259606729210.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P4154700160859859395

`A159684(n)+3-A001030(n+1)`
-/

namespace A332789.P4154700160859859395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + (3 - A001030 (n + 1))

end

end A332789.P4154700160859859395

namespace A332789

/-- `A159684(n)+3-A001030(n+1)` -/
def P4154700160859859395.Spec : Prop :=
  ∀ n, P4154700160859859395.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P11245859064268627965

`A006337(n+1)+1-A004641(n+1)`
-/

namespace A332789.P11245859064268627965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1) + (1 - A004641 (n + 1))

end

end A332789.P11245859064268627965

namespace A332789

/-- `A006337(n+1)+1-A004641(n+1)` -/
def P11245859064268627965.Spec : Prop :=
  ∀ n, P11245859064268627965.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P10150198423930948443

`A006337(n+1)+2-A001030(n+1)`
-/

namespace A332789.P10150198423930948443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1) + (2 - A001030 (n + 1))

end

end A332789.P10150198423930948443

namespace A332789

/-- `A006337(n+1)+2-A001030(n+1)` -/
def P10150198423930948443.Spec : Prop :=
  ∀ n, P10150198423930948443.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P9919765140023462536

`Δ[A007069(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332789

/-- `Δ[A007069(n+1)]` -/
def P9919765140023462536.Spec : Prop :=
  ∀ n, P9919765140023462536.a n = A332789 (n + 1)

theorem P9919765140023462536.correct : P9919765140023462536.Spec := by
  intro n
  simp only [A332789, Nat.add_sub_cancel]

end A332789

/-! ## A332789.P12504479682627186295

`2-Δ[A059648(n+1)]`
-/

namespace A332789.P12504479682627186295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A332789.P12504479682627186295

namespace A332789

/-- `2-Δ[A059648(n+1)]` -/
def P12504479682627186295.Spec : Prop :=
  ∀ n, P12504479682627186295.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P498533050611631395

`2-Δ[A138330(n+1)]`
-/

namespace A332789.P498533050611631395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A332789.P498533050611631395

namespace A332789

/-- `2-Δ[A138330(n+1)]` -/
def P498533050611631395.Spec : Prop :=
  ∀ n, P498533050611631395.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P12611167726852350981

`Δ[A001952(n+1)-A001953(n)]`
-/

namespace A332789.P12611167726852350981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - A001953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332789.P12611167726852350981

namespace A332789

/-- `Δ[A001952(n+1)-A001953(n)]` -/
def P12611167726852350981.Spec : Prop :=
  ∀ n, P12611167726852350981.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P1624988903470056695

`A007069(n+2)-A007069(n+1)`
-/

namespace A332789.P1624988903470056695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 2) - A007069 (n + 1)

end

end A332789.P1624988903470056695

namespace A332789

/-- `A007069(n+2)-A007069(n+1)` -/
def P1624988903470056695.Spec : Prop :=
  ∀ n, P1624988903470056695.a n = A332789 (n + 1)

theorem P1624988903470056695.correct : P1624988903470056695.Spec := by
  intro n
  simp only [A332789, Nat.add_sub_cancel, A332789.P1624988903470056695.a, A332789.P9919765140023462536.f1, A332789.P9919765140023462536.a, SequenceMachineLib.memo_apply]

end A332789

/-! ## A332789.P428102422245343086

`Δ[A001952(n+1)]-A001030(n+1)`
-/

namespace A332789.P428102422245343086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001030 (n + 1)

end

end A332789.P428102422245343086

namespace A332789

/-- `Δ[A001952(n+1)]-A001030(n+1)` -/
def P428102422245343086.Spec : Prop :=
  ∀ n, P428102422245343086.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P1020986409280621123

`A003151(n+2)-(A004641(n+1)+A003151(n+1))`
-/

namespace A332789.P1020986409280621123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 2) - (A004641 (n + 1) + A003151 (n + 1))

end

end A332789.P1020986409280621123

namespace A332789

/-- `A003151(n+2)-(A004641(n+1)+A003151(n+1))` -/
def P1020986409280621123.Spec : Prop :=
  ∀ n, P1020986409280621123.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P3646993140085907883

`2-Δ[A159684(A001951(n))]`
-/

namespace A332789.P3646993140085907883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A001951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A332789.P3646993140085907883

namespace A332789

/-- `2-Δ[A159684(A001951(n))]` -/
def P3646993140085907883.Spec : Prop :=
  ∀ n, P3646993140085907883.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P17907194810740335138

`A159684(n)+A006337(A001951(n+1))`
-/

namespace A332789.P17907194810740335138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + A006337 (A001951 (n + 1)).toNat

end

end A332789.P17907194810740335138

namespace A332789

/-- `A159684(n)+A006337(A001951(n+1))` -/
def P17907194810740335138.Spec : Prop :=
  ∀ n, P17907194810740335138.a n = A332789 (n + 1)

end A332789

/-! ## A332789.P14327325805398218840

`A104521(A001951(n+1))+A006337(n+1)`
-/

namespace A332789.P14327325805398218840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 (A001951 (n + 1)).toNat + A006337 (n + 1)

end

end A332789.P14327325805398218840

namespace A332789

/-- `A104521(A001951(n+1))+A006337(n+1)` -/
def P14327325805398218840.Spec : Prop :=
  ∀ n, P14327325805398218840.a n = A332789 (n + 1)

end A332789

/-!
# A332790: Triangle read by rows: T(n,k) = 1 + 2*n + k + 5*k(n-k) for n >= 0, 0 <= k <= n.

The programs for A332790, the canonical program `A332790.P5329249181625158832` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332790 has offset 0).

The definition of A332790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*row(n)+col(n)+5*col(n)*(row(n)-col(n))` (program `A332790.P5329249181625158832`, by `A332790.P5329249181625158832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332790.P5329249181625158832

`1+2*row(n)+col(n)+5*col(n)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332790

/-- `1+2*row(n)+col(n)+5*col(n)*(row(n)-col(n))` -/
def P5329249181625158832.Spec : Prop :=
  ∀ n, P5329249181625158832.a n = A332790 n

theorem P5329249181625158832.correct : P5329249181625158832.Spec := by
  intro n
  simp only [A332790]

end A332790

/-! ## A332790.P8415048500789957359

`A101447(n)+A083381(n)`
-/

namespace A332790.P8415048500789957359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + A083381 n

end

end A332790.P8415048500789957359

namespace A332790

/-- `A101447(n)+A083381(n)` -/
def P8415048500789957359.Spec : Prop :=
  ∀ n, P8415048500789957359.a n = A332790 n

theorem P8415048500789957359.correct : P8415048500789957359.Spec := by
  intro n
  simp only [A332790, Nat.add_sub_cancel, A332790.P8415048500789957359.a, A332790.P5329249181625158832.a, A083381, A083381.P10137055261221379271.a, A101447, A101447.P4489853314784773764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332790

/-! ## A332790.P6259085672130416423

`3*A141387(n)+1-A094053(n+1)`
-/

namespace A332790.P6259085672130416423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A141387 n + (1 - A094053 (n + 1))

end

end A332790.P6259085672130416423

namespace A332790

/-- `3*A141387(n)+1-A094053(n+1)` -/
def P6259085672130416423.Spec : Prop :=
  ∀ n, P6259085672130416423.a n = A332790 n

theorem P6259085672130416423.correct : P6259085672130416423.Spec := by
  intro n
  simp only [A332790, Nat.add_sub_cancel, A332790.P6259085672130416423.a, A332790.P5329249181625158832.a, A094053, A094053.P7632435431613033853.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332790

/-! ## A332790.P12649449458834379609

`A098353(n+1)-A144216(n+1)+n`
-/

namespace A332790.P12649449458834379609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1) - A144216 (n + 1) + (n : ℤ)

end

end A332790.P12649449458834379609

namespace A332790

/-- `A098353(n+1)-A144216(n+1)+n` -/
def P12649449458834379609.Spec : Prop :=
  ∀ n, P12649449458834379609.a n = A332790 n

end A332790

/-! ## A332790.P3864062262020757684

`A004247(n)+A114327(n)+A101492(n)`
-/

namespace A332790.P3864062262020757684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A114327 n + A101492 n)

end

end A332790.P3864062262020757684

namespace A332790

/-- `A004247(n)+A114327(n)+A101492(n)` -/
def P3864062262020757684.Spec : Prop :=
  ∀ n, P3864062262020757684.a n = A332790 n

theorem P3864062262020757684.correct : P3864062262020757684.Spec := by
  intro n
  simp only [A332790, Nat.add_sub_cancel, A332790.P3864062262020757684.a, A332790.P5329249181625158832.a, A004247, A004247.P2751605162508615148.a, A101492, A101492.P4383159737431497936.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332790

/-! ## A332790.P18109051392634466314

`A094053(n+1)+A098353(n+1)-A114327(n)`
-/

namespace A332790.P18109051392634466314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A098353 (n + 1) - A114327 n)

end

end A332790.P18109051392634466314

namespace A332790

/-- `A094053(n+1)+A098353(n+1)-A114327(n)` -/
def P18109051392634466314.Spec : Prop :=
  ∀ n, P18109051392634466314.a n = A332790 n

theorem P18109051392634466314.correct : P18109051392634466314.Spec := by
  intro n
  simp only [A332790, Nat.add_sub_cancel, A332790.P18109051392634466314.a, A332790.P5329249181625158832.a, A094053, A094053.P7632435431613033853.a, A098353, A098353.P9158864954245503816.a, A114327, A114327.P12930942860764139837.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332790

/-! ## A332790.P2568697917050705292

`A098353(n+1)+A141387(n)-A094053(n+1)`
-/

namespace A332790.P2568697917050705292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1) + (A141387 n - A094053 (n + 1))

end

end A332790.P2568697917050705292

namespace A332790

/-- `A098353(n+1)+A141387(n)-A094053(n+1)` -/
def P2568697917050705292.Spec : Prop :=
  ∀ n, P2568697917050705292.a n = A332790 n

theorem P2568697917050705292.correct : P2568697917050705292.Spec := by
  intro n
  simp only [A332790, Nat.add_sub_cancel, A332790.P2568697917050705292.a, A332790.P5329249181625158832.a, A094053, A094053.P7632435431613033853.a, A098353, A098353.P9158864954245503816.a, A141387, A141387.P5238259369822402056.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332790

/-! ## A332790.P12529481452638491687

`A003991(n+1)+A098353(n+1)-A004736(n+1)`
-/

namespace A332790.P12529481452638491687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A098353 (n + 1) - A004736 (n + 1))

end

end A332790.P12529481452638491687

namespace A332790

/-- `A003991(n+1)+A098353(n+1)-A004736(n+1)` -/
def P12529481452638491687.Spec : Prop :=
  ∀ n, P12529481452638491687.a n = A332790 n

end A332790

/-! ## A332790.P16013546914454376426

`A098353(n+1)+A004247(A007401(n+1))`
-/

namespace A332790.P16013546914454376426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1) + A004247 (A007401 (n + 1)).toNat

end

end A332790.P16013546914454376426

namespace A332790

/-- `A098353(n+1)+A004247(A007401(n+1))` -/
def P16013546914454376426.Spec : Prop :=
  ∀ n, P16013546914454376426.a n = A332790 n

end A332790

/-! ## A332790.P9289878161670699067

`A334923(A185868(n+1))+A002262(n)`
-/

namespace A332790.P9289878161670699067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334923 (A185868 (n + 1)).toNat + A002262 n

end

end A332790.P9289878161670699067

namespace A332790

/-- `A334923(A185868(n+1))+A002262(n)` -/
def P9289878161670699067.Spec : Prop :=
  ∀ n, P9289878161670699067.a n = A332790 n

end A332790

/-!
# A332791: a(1) = 1; a(n+1) = Sum_{d|n} phi(d) * a(d).

The programs for A332791, there is no canonical definition to state claims against.
-/

/-! ## A332791.P16067192723050811773

`A093110(A072979(n+1))`
-/

namespace A332791.P16067192723050811773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A072979 (n + 1)).toNat

end

end A332791.P16067192723050811773

/-! ## A332791.P2151021415424641768

`filter[A306318(2*n+1), A050073(#)]`
-/

namespace A332791.P2151021415424641768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050073 (f1 j).toNat = 1) n)

end

end A332791.P2151021415424641768

/-! ## A332791.P3180542829317929655

`filter[A306318(2*n+1), A118009(#)]`
-/

namespace A332791.P3180542829317929655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118009 (f1 j).toNat = 1) n)

end

end A332791.P3180542829317929655

/-!
# A332792: a(1) = 1; a(n) = Sum_{d|n, d < n} phi(d) * a(d).

The programs for A332792, there is no canonical definition to state claims against.
-/

/-! ## A332792.P17942936798173087293

`A048766(A000009(4*A095112(n+1)))`
-/

namespace A332792.P17942936798173087293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000009 (4 * A095112 (n + 1)).toNat).toNat

end

end A332792.P17942936798173087293

/-! ## A332792.P8816701950392044802

`A001313(A043545(A018081(n))*A095112(n+1))`
-/

namespace A332792.P8816701950392044802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001313 (A043545 (A018081 n).toNat * A095112 (n + 1)).toNat

end

end A332792.P8816701950392044802

/-! ## A332792.P12689810430649001813

`A126246(A318325(n+1)+A151936(n))`
-/

namespace A332792.P12689810430649001813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126246 (A318325 (n + 1) + A151936 n).toNat

end

end A332792.P12689810430649001813

/-!
# A332793: a(1) = 1; a(n) = n * Sum_{d|n, d < n} (-1)^(n/d) * a(d) / d.

The programs for A332793, the canonical program `A332793.P2046662391934450926` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332793 has offset 1).

The definition of A332793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332793.P9290575628852726635

`∑{d}[n+1, A327268(#)]`
-/

namespace A332793.P9290575628852726635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327268 d

end

end A332793.P9290575628852726635

namespace A332793

/-- `∑{d}[n+1, A327268(#)]` -/
def P9290575628852726635.Spec : Prop :=
  ∀ n, P9290575628852726635.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P2046662391934450926

`(n+1)*A067856(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A332793

/-- `(n+1)*A067856(n+1)` -/
def P2046662391934450926.Spec : Prop :=
  ∀ n, P2046662391934450926.a n = A332793 (n + 1)

theorem P2046662391934450926.correct : P2046662391934450926.Spec := by
  intro n
  simp only [A332793, Nat.add_sub_cancel]

end A332793

/-! ## A332793.P2896160549992543412

`A361987(n+1)/(n+1)`
-/

namespace A332793.P2896160549992543412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361987 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A332793.P2896160549992543412

namespace A332793

/-- `A361987(n+1)/(n+1)` -/
def P2896160549992543412.Spec : Prop :=
  ∀ n, P2896160549992543412.a n = (A332793 (n + 1) : ℚ)

end A332793

/-! ## A332793.P16706086226873753379

`(n+1)*∑{d}[n+1, A327274(#)]`
-/

namespace A332793.P16706086226873753379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A327274 d)

end

end A332793.P16706086226873753379

namespace A332793

/-- `(n+1)*∑{d}[n+1, A327274(#)]` -/
def P16706086226873753379.Spec : Prop :=
  ∀ n, P16706086226873753379.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P4298487488508987414

`A102631(n+1)*A209635(n+1)`
-/

namespace A332793.P4298487488508987414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A209635 (n + 1)

end

end A332793.P4298487488508987414

namespace A332793

/-- `A102631(n+1)*A209635(n+1)` -/
def P4298487488508987414.Spec : Prop :=
  ∀ n, P4298487488508987414.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P13149896700397013285

`∑{d}[n+1, A046692(#)*A296306((n+1)/#)]`
-/

namespace A332793.P13149896700397013285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A296306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332793.P13149896700397013285

namespace A332793

/-- `∑{d}[n+1, A046692(#)*A296306((n+1)/#)]` -/
def P13149896700397013285.Spec : Prop :=
  ∀ n, P13149896700397013285.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P5210603275405458654

`∑{d}[n+1, A276391(#)*A327278((n+1)/#)]`
-/

namespace A332793.P5210603275405458654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276391 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332793.P5210603275405458654

namespace A332793

/-- `∑{d}[n+1, A276391(#)*A327278((n+1)/#)]` -/
def P5210603275405458654.Spec : Prop :=
  ∀ n, P5210603275405458654.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P532922548050881426

`∑{d}[n+1, A036987(#-1)*A361985((n+1)/#)]`
-/

namespace A332793.P532922548050881426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A361985 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332793.P532922548050881426

namespace A332793

/-- `∑{d}[n+1, A036987(#-1)*A361985((n+1)/#)]` -/
def P532922548050881426.Spec : Prop :=
  ∀ n, P532922548050881426.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P10265909347534152989

`(n+1)*∑{d}[n+1, A008683(#)*A099894((n+1)/#-1)]`
-/

namespace A332793.P10265909347534152989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat)

end

end A332793.P10265909347534152989

namespace A332793

/-- `(n+1)*∑{d}[n+1, A008683(#)*A099894((n+1)/#-1)]` -/
def P10265909347534152989.Spec : Prop :=
  ∀ n, P10265909347534152989.a n = A332793 (n + 1)

end A332793

/-! ## A332793.P17459283804726464239

`(n+1)*A008683(A000265(n+1))*A162510(n+1)`
-/

namespace A332793.P17459283804726464239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (A000265 (n + 1)).toNat * A162510 (n + 1))

end

end A332793.P17459283804726464239

namespace A332793

/-- `(n+1)*A008683(A000265(n+1))*A162510(n+1)` -/
def P17459283804726464239.Spec : Prop :=
  ∀ n, P17459283804726464239.a n = A332793 (n + 1)

end A332793

/-!
# A332794: a(n) = Sum_{d|n} (-1)^(d + 1) * d * phi(n/d).

The programs for A332794, the canonical program `A332794.P344464151084610744` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332794 has offset 1).

The definition of A332794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332794.P3936885099577191796

`A062803(n+1)/(-2)^(n%2)`
-/

namespace A332794.P3936885099577191796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) : ℚ) / ((-2) ^ (n % 2) : ℚ)

end

end A332794.P3936885099577191796

namespace A332794

/-- `A062803(n+1)/(-2)^(n%2)` -/
def P3936885099577191796.Spec : Prop :=
  ∀ n, P3936885099577191796.a n = (A332794 (n + 1) : ℚ)

end A332794

/-! ## A332794.P3772373410754253863

`∑{d}[n+1, #*A325596((n+1)/#)]`
-/

namespace A332794.P3772373410754253863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332794.P3772373410754253863

namespace A332794

/-- `∑{d}[n+1, #*A325596((n+1)/#)]` -/
def P3772373410754253863.Spec : Prop :=
  ∀ n, P3772373410754253863.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P3300668909575163428

`A062803(n+1)/A327767(n+1)`
-/

namespace A332794.P3300668909575163428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) : ℚ) / (A327767 (n + 1) : ℚ)

end

end A332794.P3300668909575163428

namespace A332794

/-- `A062803(n+1)/A327767(n+1)` -/
def P3300668909575163428.Spec : Prop :=
  ∀ n, P3300668909575163428.a n = (A332794 (n + 1) : ℚ)

end A332794

/-! ## A332794.P344464151084610744

`2*A255655(n+1)-A018804(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A332794

/-- `2*A255655(n+1)-A018804(n+1)` -/
def P344464151084610744.Spec : Prop :=
  ∀ n, P344464151084610744.a n = A332794 (n + 1)

theorem P344464151084610744.correct : P344464151084610744.Spec := by
  intro n
  simp only [A332794, Nat.add_sub_cancel]

end A332794

/-! ## A332794.P6019538041914783562

`∑{d}[n+1, A002129(#)*A007431((n+1)/#)]`
-/

namespace A332794.P6019538041914783562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332794.P6019538041914783562

namespace A332794

/-- `∑{d}[n+1, A002129(#)*A007431((n+1)/#)]` -/
def P6019538041914783562.Spec : Prop :=
  ∀ n, P6019538041914783562.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P16748795359267585063

`∑{d}[n+1, A062570(#)*A186111((n+1)/#)]`
-/

namespace A332794.P16748795359267585063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A186111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332794.P16748795359267585063

namespace A332794

/-- `∑{d}[n+1, A062570(#)*A186111((n+1)/#)]` -/
def P16748795359267585063.Spec : Prop :=
  ∀ n, P16748795359267585063.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P9808395822658265911

`∑{d}[n+1, A007432(#)*A327242((n+1)/#)]`
-/

namespace A332794.P9808395822658265911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A327242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332794.P9808395822658265911

namespace A332794

/-- `∑{d}[n+1, A007432(#)*A327242((n+1)/#)]` -/
def P9808395822658265911.Spec : Prop :=
  ∀ n, P9808395822658265911.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P14725381675332143586

`∑{d}[n+1, A326305(#)*A328154((n+1)/#)]`
-/

namespace A332794.P14725381675332143586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A328154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332794.P14725381675332143586

namespace A332794

/-- `∑{d}[n+1, A326305(#)*A328154((n+1)/#)]` -/
def P14725381675332143586.Spec : Prop :=
  ∀ n, P14725381675332143586.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P8194598747000843538

`∑{d}[n+1, A326125(#)*A328502((n+1)/#)]`
-/

namespace A332794.P8194598747000843538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326125 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332794.P8194598747000843538

namespace A332794

/-- `∑{d}[n+1, A326125(#)*A328502((n+1)/#)]` -/
def P8194598747000843538.Spec : Prop :=
  ∀ n, P8194598747000843538.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P11057458288744545960

`(-1)^n*A344371(A066043(n+1))`
-/

namespace A332794.P11057458288744545960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A344371 (A066043 (n + 1)).toNat

end

end A332794.P11057458288744545960

namespace A332794

/-- `(-1)^n*A344371(A066043(n+1))` -/
def P11057458288744545960.Spec : Prop :=
  ∀ n, P11057458288744545960.a n = A332794 (n + 1)

end A332794

/-! ## A332794.P10730035540099891613

`A176447(A062803(n+1))`
-/

namespace A332794.P10730035540099891613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (A062803 (n + 1)).toNat

end

end A332794.P10730035540099891613

namespace A332794

/-- `A176447(A062803(n+1))` -/
def P10730035540099891613.Spec : Prop :=
  ∀ n, P10730035540099891613.a n = A332794 (n + 1)

end A332794

/-!
# A332795: Lexicographically earliest sequence of distinct positive terms such that a(n) and a(n+1) are substrings of their product.

The programs for A332795, there is no canonical definition to state claims against.
-/

/-! ## A332795.P9877102700237008811

`A178569(A051118(n)+1+n)`
-/

namespace A332795.P9877102700237008811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (A051118 n + 1 + (n : ℤ)).toNat

end

end A332795.P9877102700237008811

/-! ## A332795.P10169024141011228145

`A049345(A051117(n)+A019565(n))`
-/

namespace A332795.P10169024141011228145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A051117 n + A019565 n).toNat

end

end A332795.P10169024141011228145

/-!
# A332796: Number of compositions of n^2 into parts >= n.

The programs for A332796, there is no canonical definition to state claims against.
-/

/-! ## A332796.P3250171298694093454

`A099233(2*n²)`
-/

namespace A332796.P3250171298694093454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (2 * n ^ 2)

end

end A332796.P3250171298694093454

/-! ## A332796.P12570177104066528490

`A099233(A001105(n))%A165792(n+3)`
-/

namespace A332796.P12570177104066528490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099233 (A001105 n).toNat) (A165792 (n + 3))

end

end A332796.P12570177104066528490

/-! ## A332796.P4556735802196295357

`A001511(2*n+1)*A099233(A001105(n))`
-/

namespace A332796.P4556735802196295357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A099233 (A001105 n).toNat

end

end A332796.P4556735802196295357

/-! ## A332796.P11234676848008457107

`A074206(A006450(n+1))*A099233(A001105(n))`
-/

namespace A332796.P11234676848008457107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A006450 (n + 1)).toNat * A099233 (A001105 n).toNat

end

end A332796.P11234676848008457107

/-! ## A332796.P9015518780073402

`A099233(A001105(n))%A332179(n)`
-/

namespace A332796.P9015518780073402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099233 (A001105 n).toNat) (A332179 n)

end

end A332796.P9015518780073402

/-!
# A332797: Numbers whose smallest prime factor is 23.

The programs for A332797, the canonical program `A332797.P16202585435477466475` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332797 has offset 1).

The definition of A332797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166063, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332797.P16202585435477466475

`23*A166063(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A332797

/-- `23*A166063(n+1)` -/
def P16202585435477466475.Spec : Prop :=
  ∀ n, P16202585435477466475.a n = A332797 (n + 1)

theorem P16202585435477466475.correct : P16202585435477466475.Spec := by
  intro n
  simp only [A332797, Nat.add_sub_cancel]

end A332797

/-! ## A332797.P17948244421393341324

`A008605(A166063(n+1))`
-/

namespace A332797.P17948244421393341324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (A166063 (n + 1)).toNat

end

end A332797.P17948244421393341324

namespace A332797

/-- `A008605(A166063(n+1))` -/
def P17948244421393341324.Spec : Prop :=
  ∀ n, P17948244421393341324.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P1470192603413743553

`A317323(lcm(2, A166063(n+1)))`
-/

namespace A332797.P1470192603413743553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 (Int.lcm 2 (A166063 (n + 1)))

end

end A332797.P1470192603413743553

namespace A332797

/-- `A317323(lcm(2, A166063(n+1)))` -/
def P1470192603413743553.Spec : Prop :=
  ∀ n, P1470192603413743553.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P9548538344272952508

`A317323(A166063(n+1)+A166063(n+1))`
-/

namespace A332797.P9548538344272952508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 (A166063 (n + 1) + A166063 (n + 1)).toNat

end

end A332797.P9548538344272952508

namespace A332797

/-- `A317323(A166063(n+1)+A166063(n+1))` -/
def P9548538344272952508.Spec : Prop :=
  ∀ n, P9548538344272952508.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P16380399885355246578

`record[23*A052125(A332798(n+1))]`
-/

namespace A332797.P16380399885355246578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A052125 (A332798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332797.P16380399885355246578

namespace A332797

/-- `record[23*A052125(A332798(n+1))]` -/
def P16380399885355246578.Spec : Prop :=
  ∀ n, P16380399885355246578.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P5750285436171468699

`A269360(A332798(n+1))-1`
-/

namespace A332797.P5750285436171468699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A332798 (n + 1)).toNat - 1

end

end A332797.P5750285436171468699

namespace A332797

/-- `A269360(A332798(n+1))-1` -/
def P5750285436171468699.Spec : Prop :=
  ∀ n, P5750285436171468699.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P6672127890455517469

`A083140(C(n+9, 2)+n+2)`
-/

namespace A332797.P6672127890455517469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (Nat.choose (n + 9) 2 + n + 2)

end

end A332797.P6672127890455517469

namespace A332797

/-- `A083140(C(n+9, 2)+n+2)` -/
def P6672127890455517469.Spec : Prop :=
  ∀ n, P6672127890455517469.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P5189793074604130578

`A083140(A161680(n+10)-7)`
-/

namespace A332797.P5189793074604130578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A161680 (n + 10) - 7).toNat

end

end A332797.P5189793074604130578

namespace A332797

/-- `A083140(A161680(n+10)-7)` -/
def P5189793074604130578.Spec : Prop :=
  ∀ n, P5189793074604130578.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P12446636288002552752

`A083140(A000124(n+8)+n+1)`
-/

namespace A332797.P12446636288002552752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A000124 (n + 8) + (n + 1 : ℤ)).toNat

end

end A332797.P12446636288002552752

namespace A332797

/-- `A083140(A000124(n+8)+n+1)` -/
def P12446636288002552752.Spec : Prop :=
  ∀ n, P12446636288002552752.a n = A332797 (n + 1)

end A332797

/-! ## A332797.P1825646033242840812

`A083140(A167614(n+7)+n-1)`
-/

namespace A332797.P1825646033242840812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A167614 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A332797.P1825646033242840812

namespace A332797

/-- `A083140(A167614(n+7)+n-1)` -/
def P1825646033242840812.Spec : Prop :=
  ∀ n, P1825646033242840812.a n = A332797 (n + 1)

end A332797

/-!
# A332798: Numbers whose smallest prime factor is 19.

The programs for A332798, the canonical program `A332798.P10911018744368294634` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332798 has offset 1).

The definition of A332798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332798.P10911018744368294634

`19*A166061(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A332798

/-- `19*A166061(n+1)` -/
def P10911018744368294634.Spec : Prop :=
  ∀ n, P10911018744368294634.a n = A332798 (n + 1)

theorem P10911018744368294634.correct : P10911018744368294634.Spec := by
  intro n
  simp only [A332798, Nat.add_sub_cancel]

end A332798

/-! ## A332798.P12525823831381280951

`A008601(A166061(n+1))`
-/

namespace A332798.P12525823831381280951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (A166061 (n + 1)).toNat

end

end A332798.P12525823831381280951

namespace A332798

/-- `A008601(A166061(n+1))` -/
def P12525823831381280951.Spec : Prop :=
  ∀ n, P12525823831381280951.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P18107915326214137623

`19*record[A052125(A008367(n+1))]`
-/

namespace A332798.P18107915326214137623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A008367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332798.P18107915326214137623

namespace A332798

/-- `19*record[A052125(A008367(n+1))]` -/
def P18107915326214137623.Spec : Prop :=
  ∀ n, P18107915326214137623.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P3899178691515385475

`A268674(A332797(n+1))`
-/

namespace A332798.P3899178691515385475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A332797 (n + 1)).toNat

end

end A332798.P3899178691515385475

namespace A332798

/-- `A268674(A332797(n+1))` -/
def P3899178691515385475.Spec : Prop :=
  ∀ n, P3899178691515385475.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P17128005550729415137

`A268674(23*A166063(n+1))`
-/

namespace A332798.P17128005550729415137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (23 * A166063 (n + 1)).toNat

end

end A332798.P17128005550729415137

namespace A332798

/-- `A268674(23*A166063(n+1))` -/
def P17128005550729415137.Spec : Prop :=
  ∀ n, P17128005550729415137.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P4214059614814699145

`A269360(A332799(n+1))-1`
-/

namespace A332798.P4214059614814699145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A332799 (n + 1)).toNat - 1

end

end A332798.P4214059614814699145

namespace A332798

/-- `A269360(A332799(n+1))-1` -/
def P4214059614814699145.Spec : Prop :=
  ∀ n, P4214059614814699145.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P12702234817967598065

`A083140(A055999(n+5))`
-/

namespace A332798.P12702234817967598065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A055999 (n + 5)).toNat

end

end A332798.P12702234817967598065

namespace A332798

/-- `A083140(A055999(n+5))` -/
def P12702234817967598065.Spec : Prop :=
  ∀ n, P12702234817967598065.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P9139192027221457133

`A083140(Δ[A026054(n+5)])`
-/

namespace A332798.P9139192027221457133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (f1 (n + 1) - f1 n).toNat

end

end A332798.P9139192027221457133

namespace A332798

/-- `A083140(Δ[A026054(n+5)])` -/
def P9139192027221457133.Spec : Prop :=
  ∀ n, P9139192027221457133.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P14017163661784472976

`A083140(A000217(n+8)-6)`
-/

namespace A332798.P14017163661784472976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A000217 (n + 8) - 6).toNat

end

end A332798.P14017163661784472976

namespace A332798

/-- `A083140(A000217(n+8)-6)` -/
def P14017163661784472976.Spec : Prop :=
  ∀ n, P14017163661784472976.a n = A332798 (n + 1)

end A332798

/-! ## A332798.P12427316895215377257

`A250469(A332799(n+1))`
-/

namespace A332798.P12427316895215377257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A332799 (n + 1)).toNat

end

end A332798.P12427316895215377257

namespace A332798

/-- `A250469(A332799(n+1))` -/
def P12427316895215377257.Spec : Prop :=
  ∀ n, P12427316895215377257.a n = A332798 (n + 1)

end A332798

/-!
# A332799: Numbers whose smallest prime factor is 17.

The programs for A332799, the canonical program `A332799.P4620929770745415607` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332799 has offset 1).

The definition of A332799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332799.P4620929770745415607

`17*A008366(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A332799

/-- `17*A008366(n+1)` -/
def P4620929770745415607.Spec : Prop :=
  ∀ n, P4620929770745415607.a n = A332799 (n + 1)

theorem P4620929770745415607.correct : P4620929770745415607.Spec := by
  intro n
  simp only [A332799, Nat.add_sub_cancel]

end A332799

/-! ## A332799.P13163151951602288378

`A008599(A008366(n+1))`
-/

namespace A332799.P13163151951602288378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A008366 (n + 1)).toNat

end

end A332799.P13163151951602288378

namespace A332799

/-- `A008599(A008366(n+1))` -/
def P13163151951602288378.Spec : Prop :=
  ∀ n, P13163151951602288378.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P1535637961828381212

`A268674(A332798(n+1))`
-/

namespace A332799.P1535637961828381212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A332798 (n + 1)).toNat

end

end A332799.P1535637961828381212

namespace A332799

/-- `A268674(A332798(n+1))` -/
def P1535637961828381212.Spec : Prop :=
  ∀ n, P1535637961828381212.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P3451050147909012438

`A268674(19*A166061(n+1))`
-/

namespace A332799.P3451050147909012438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (19 * A166061 (n + 1)).toNat

end

end A332799.P3451050147909012438

namespace A332799

/-- `A268674(19*A166061(n+1))` -/
def P3451050147909012438.Spec : Prop :=
  ∀ n, P3451050147909012438.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P16436906609442151771

`A269360(A084970(n+1))-1`
-/

namespace A332799.P16436906609442151771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A084970 (n + 1)).toNat - 1

end

end A332799.P16436906609442151771

namespace A332799

/-- `A269360(A084970(n+1))-1` -/
def P16436906609442151771.Spec : Prop :=
  ∀ n, P16436906609442151771.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P6573130715147678055

`A269360(13*A008365(n+1))-1`
-/

namespace A332799.P6573130715147678055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (13 * A008365 (n + 1)).toNat - 1

end

end A332799.P6573130715147678055

namespace A332799

/-- `A269360(13*A008365(n+1))-1` -/
def P6573130715147678055.Spec : Prop :=
  ∀ n, P6573130715147678055.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P10133952153364992191

`A315711(lcm(3, A008366(n+1)))`
-/

namespace A332799.P10133952153364992191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315711 (Int.lcm 3 (A008366 (n + 1)))

end

end A332799.P10133952153364992191

namespace A332799

/-- `A315711(lcm(3, A008366(n+1)))` -/
def P10133952153364992191.Spec : Prop :=
  ∀ n, P10133952153364992191.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P9781070081687638746

`A083140(A052905(n+4))`
-/

namespace A332799.P9781070081687638746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A052905 (n + 4)).toNat

end

end A332799.P9781070081687638746

namespace A332799

/-- `A083140(A052905(n+4))` -/
def P9781070081687638746.Spec : Prop :=
  ∀ n, P9781070081687638746.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P6135837057151513197

`A083140(A000096(n+6)-4)`
-/

namespace A332799.P6135837057151513197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A000096 (n + 6) - 4).toNat

end

end A332799.P6135837057151513197

namespace A332799

/-- `A083140(A000096(n+6)-4)` -/
def P6135837057151513197.Spec : Prop :=
  ∀ n, P6135837057151513197.a n = A332799 (n + 1)

end A332799

/-! ## A332799.P2104162502094867643

`A287932(a(n-1))` with `a(0)=17`
-/

namespace A332799.P2104162502094867643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A287932 (a (n - 1)).toNat

end

end A332799.P2104162502094867643

namespace A332799

/-- `A287932(a(n-1))` -/
def P2104162502094867643.Spec : Prop :=
  ∀ n, P2104162502094867643.a n = A332799 (n + 1)

end A332799

