import SequenceMachineLib
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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A262800: Number of (5+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262800, there is no canonical definition to state claims against.
-/

/-! ## A262800.P16850762772826422028

`A262795(A167614(n+3)+2)`
-/

namespace A262800.P16850762772826422028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A167614 (n + 3) + 2).toNat

end

end A262800.P16850762772826422028

/-! ## A262800.P1328066476834276494

`A262795(A141214(n+1)+8)`
-/

namespace A262800.P1328066476834276494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A141214 (n + 1) + 8).toNat

end

end A262800.P1328066476834276494

/-! ## A262800.P6127638666130718733

`A262795(eq[6, A131818(n+1)])`
-/

namespace A262800.P6127638666130718733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262800.P6127638666130718733

/-! ## A262800.P15003926936176431825

`A262795(Δ[A008778(n+1)]+7)`
-/

namespace A262800.P15003926936176431825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (f1 (n + 1) - f1 n + 7).toNat

end

end A262800.P15003926936176431825

/-! ## A262800.P9439060229552356220

`A262795(A000124(n+5)-(n+1))`
-/

namespace A262800.P9439060229552356220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A262800.P9439060229552356220

/-!
# A262801: Number of (6+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262801, there is no canonical definition to state claims against.
-/

/-! ## A262801.P12144251435292853882

`A262795(A056115(n)+21)`
-/

namespace A262801.P12144251435292853882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A056115 n + 21).toNat

end

end A262801.P12144251435292853882

/-! ## A262801.P16429233945498157137

`A262795(eq[6, A256910(n)])`
-/

namespace A262801.P16429233945498157137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262801.P16429233945498157137

/-! ## A262801.P12475953041696443818

`A262795(A167614(n+4)+3)`
-/

namespace A262801.P12475953041696443818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A167614 (n + 4) + 3).toNat

end

end A262801.P12475953041696443818

/-!
# A262802: Number of (7+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262802, there is no canonical definition to state claims against.
-/

/-! ## A262802.P4344161623648406744

`A262795(A167487(n+5))`
-/

namespace A262802.P4344161623648406744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A167487 (n + 5)).toNat

end

end A262802.P4344161623648406744

/-! ## A262802.P16623893065784026415

`A262795(A056119(n)+28)`
-/

namespace A262802.P16623893065784026415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A056119 n + 28).toNat

end

end A262802.P16623893065784026415

/-!
# A262803: Expansion of Product_{k>=1} (1 + x^k) / (1 - x^k)^k.

The programs for A262803, there is no canonical definition to state claims against.
-/

/-! ## A262803.P5556751246129690635

`A273926(A164236(n+1))`
-/

namespace A262803.P5556751246129690635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273926 (A164236 (n + 1)).toNat

end

end A262803.P5556751246129690635

/-! ## A262803.P3243156525503023837

`A273926(A164259(n+1))`
-/

namespace A262803.P3243156525503023837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273926 (A164259 (n + 1)).toNat

end

end A262803.P3243156525503023837

/-! ## A262803.P1246067971134614203

`∑[A008757(∑[A032551(n+1)])]`
-/

namespace A262803.P1246067971134614203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008757 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262803.P1246067971134614203

/-! ## A262803.P2628124784104460797

`A326774(A101268(n))+A000225(n)`
-/

namespace A262803.P2628124784104460797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A101268 n).toNat + A000225 n

end

end A262803.P2628124784104460797

/-!
# A262804: a(n) = 2*b(n), where b(n) is defined by the condition that Product_{d|n} (b(d) + 1) = 1, n > 1 and b(1) = 1.

The programs for A262804, the canonical program `A262804.P8094052880299619454` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262804 has offset 1).

The definition of A262804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262804.P8469962731734225213

`ceil(tan(A008683(n+1)))`
-/

namespace A262804.P8469962731734225213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (A008683 (n + 1) : ℝ)⌉

end

end A262804.P8469962731734225213

namespace A262804

/-- `ceil(tan(A008683(n+1)))` -/
def P8469962731734225213.Spec : Prop :=
  ∀ n, P8469962731734225213.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P18280231393024668524

`2^A007423(n+1)-2`
-/

namespace A262804.P18280231393024668524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007423 (n + 1) : ℤ) - 2

end

end A262804.P18280231393024668524

namespace A262804

/-- `2^A007423(n+1)-2` -/
def P18280231393024668524.Spec : Prop :=
  ∀ n, P18280231393024668524.a n = (A262804 (n + 1) : ℚ)

end A262804

/-! ## A262804.P4055809462302459786

`(2*A226177(n+1))%3`
-/

namespace A262804.P4055809462302459786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A226177 (n + 1)) 3

end

end A262804.P4055809462302459786

namespace A262804

/-- `(2*A226177(n+1))%3` -/
def P4055809462302459786.Spec : Prop :=
  ∀ n, P4055809462302459786.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P10334188487537933088

`ceil(asin(A008683(C(n+1, n))))`
-/

namespace A262804.P10334188487537933088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (A008683 (Nat.choose (n + 1) n) : ℝ)⌉

end

end A262804.P10334188487537933088

namespace A262804

/-- `ceil(asin(A008683(C(n+1, n))))` -/
def P10334188487537933088.Spec : Prop :=
  ∀ n, P10334188487537933088.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P15125694458838990171

`ceil(ϕ*A328502(n+1)%2)`
-/

namespace A262804.P15125694458838990171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Int.tmod (A328502 (n + 1)) 2 : ℝ)⌉

end

end A262804.P15125694458838990171

namespace A262804

/-- `ceil(ϕ*A328502(n+1)%2)` -/
def P15125694458838990171.Spec : Prop :=
  ∀ n, P15125694458838990171.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P15993358461695053414

`ceil(asin(A008683(2*n+1-n)))`
-/

namespace A262804.P15993358461695053414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (A008683 (2 * n + 1 - n) : ℝ)⌉

end

end A262804.P15993358461695053414

namespace A262804

/-- `ceil(asin(A008683(2*n+1-n)))` -/
def P15993358461695053414.Spec : Prop :=
  ∀ n, P15993358461695053414.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P7787216615454795555

`ceil(sinh(A008683(sqrt(∑[2*n+1]))))`
-/

namespace A262804.P7787216615454795555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (A008683 (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))).toNat : ℝ)⌉

end

end A262804.P7787216615454795555

namespace A262804

/-- `ceil(sinh(A008683(sqrt(∑[2*n+1]))))` -/
def P7787216615454795555.Spec : Prop :=
  ∀ n, P7787216615454795555.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P3032418912200250537

`ceil(3*A162512(n+1)%2/2)`
-/

namespace A262804.P3032418912200250537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * Int.tmod (A162512 (n + 1)) 2 : ℚ) / 2⌉

end

end A262804.P3032418912200250537

namespace A262804

/-- `ceil(3*A162512(n+1)%2/2)` -/
def P3032418912200250537.Spec : Prop :=
  ∀ n, P3032418912200250537.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P11432065317562949823

`ceil(ϕ*A008683(2*n-(n-1)))`
-/

namespace A262804.P11432065317562949823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ)⌉

end

end A262804.P11432065317562949823

namespace A262804

/-- `ceil(ϕ*A008683(2*n-(n-1)))` -/
def P11432065317562949823.Spec : Prop :=
  ∀ n, P11432065317562949823.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P10753098076582210409

`A353629(n+1)+A008683(n+1)`
-/

namespace A262804.P10753098076582210409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (n + 1) + A008683 (n + 1)

end

end A262804.P10753098076582210409

namespace A262804

/-- `A353629(n+1)+A008683(n+1)` -/
def P10753098076582210409.Spec : Prop :=
  ∀ n, P10753098076582210409.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P16232021799849975063

`A007421(n+1)*A008683(n+1)`
-/

namespace A262804.P16232021799849975063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1) * A008683 (n + 1)

end

end A262804.P16232021799849975063

namespace A262804

/-- `A007421(n+1)*A008683(n+1)` -/
def P16232021799849975063.Spec : Prop :=
  ∀ n, P16232021799849975063.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P1999467856441472587

`(A065043(n+1)+1)*A008683(n+1)`
-/

namespace A262804.P1999467856441472587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065043 (n + 1) + 1) * A008683 (n + 1)

end

end A262804.P1999467856441472587

namespace A262804

/-- `(A065043(n+1)+1)*A008683(n+1)` -/
def P1999467856441472587.Spec : Prop :=
  ∀ n, P1999467856441472587.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P6621760553038549296

`A252233(n+1)+2*A008683(n+1)`
-/

namespace A262804.P6621760553038549296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (n + 1) + 2 * A008683 (n + 1)

end

end A262804.P6621760553038549296

namespace A262804

/-- `A252233(n+1)+2*A008683(n+1)` -/
def P6621760553038549296.Spec : Prop :=
  ∀ n, P6621760553038549296.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P25191673608609355

`(2-A268387(n+1))*A008683(n+1)`
-/

namespace A262804.P25191673608609355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A268387 (n + 1)) * A008683 (n + 1)

end

end A262804.P25191673608609355

namespace A262804

/-- `(2-A268387(n+1))*A008683(n+1)` -/
def P25191673608609355.Spec : Prop :=
  ∀ n, P25191673608609355.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P4049163163473159082

`2*A353629(n+1)-A252233(n+1)`
-/

namespace A262804.P4049163163473159082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353629 (n + 1) - A252233 (n + 1)

end

end A262804.P4049163163473159082

namespace A262804

/-- `2*A353629(n+1)-A252233(n+1)` -/
def P4049163163473159082.Spec : Prop :=
  ∀ n, P4049163163473159082.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P3344993376179728913

`2*A008683(n+1)/A096826(n+1)`
-/

namespace A262804.P3344993376179728913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A008683 (n + 1) : ℚ) / (A096826 (n + 1) : ℚ))

end

end A262804.P3344993376179728913

namespace A262804

/-- `2*A008683(n+1)/A096826(n+1)` -/
def P3344993376179728913.Spec : Prop :=
  ∀ n, P3344993376179728913.a n = (A262804 (n + 1) : ℚ)

end A262804

/-! ## A262804.P13678981508398110227

`gcd(2, A001222(n+1))*A008683(n+1)`
-/

namespace A262804.P13678981508398110227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001222 (n + 1)) : ℤ) * A008683 (n + 1)

end

end A262804.P13678981508398110227

namespace A262804

/-- `gcd(2, A001222(n+1))*A008683(n+1)` -/
def P13678981508398110227.Spec : Prop :=
  ∀ n, P13678981508398110227.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P8094052880299619454

`C(A231821(n+1), 2)-A231821(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262804

/-- `C(A231821(n+1), 2)-A231821(n+1)` -/
def P8094052880299619454.Spec : Prop :=
  ∀ n, P8094052880299619454.a n = A262804 (n + 1)

theorem P8094052880299619454.correct : P8094052880299619454.Spec := by
  intro n
  simp only [A262804, Nat.add_sub_cancel]

end A262804

/-! ## A262804.P3797230131032982217

`floor(exp(A140664(n+1))*A140664(n+1))`
-/

namespace A262804.P3797230131032982217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A140664 (n + 1) : ℝ) * (A140664 (n + 1) : ℝ)⌋

end

end A262804.P3797230131032982217

namespace A262804

/-- `floor(exp(A140664(n+1))*A140664(n+1))` -/
def P3797230131032982217.Spec : Prop :=
  ∀ n, P3797230131032982217.a n = A262804 (n + 1)

end A262804

/-! ## A262804.P4950171392236036808

`ceil(atan((A000203(n+1)+1)*A008683(n+1)))`
-/

namespace A262804.P4950171392236036808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((A000203 (n + 1) + 1) * A008683 (n + 1) : ℝ)⌉

end

end A262804.P4950171392236036808

namespace A262804

/-- `ceil(atan((A000203(n+1)+1)*A008683(n+1)))` -/
def P4950171392236036808.Spec : Prop :=
  ∀ n, P4950171392236036808.a n = A262804 (n + 1)

end A262804

/-!
# A262805: Triangle read by rows giving successive states of cellular automaton generated by "Rule 145" initiated with a single ON (black) cell.

The programs for A262805, there is no canonical definition to state claims against.
-/

/-! ## A262805.P14157920390845528298

`A267418(A020703(n+1)-1)`
-/

namespace A262805.P14157920390845528298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267418 (A020703 (n + 1) - 1).toNat

end

end A262805.P14157920390845528298

/-! ## A262805.P1552630398449540732

`A267418(A020703(n+2))`
-/

namespace A262805.P1552630398449540732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267418 (A020703 (n + 2)).toNat

end

end A262805.P1552630398449540732

/-! ## A262805.P10734686710237196571

`A267418(A122196(n+1)+n)`
-/

namespace A262805.P10734686710237196571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267418 (A122196 (n + 1) + (n : ℤ)).toNat

end

end A262805.P10734686710237196571

/-! ## A262805.P3788083525998252615

`ceil(A373429(n+2)/A353405(n))`
-/

namespace A262805.P3788083525998252615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A373429 (n + 2) : ℚ) / (A353405 n : ℚ)⌉

end

end A262805.P3788083525998252615

/-! ## A262805.P16494019091903976414

`A373549(A100437(n+1))`
-/

namespace A262805.P16494019091903976414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373549 (A100437 (n + 1)).toNat

end

end A262805.P16494019091903976414

/-!
# A262806: a(n) = A065447(n) / A002275(floor((n+1)/2)).

The programs for A262806, there is no canonical definition to state claims against.
-/

/-! ## A262806.P15427798527096026364

`A065447(n+1)/A002275(floor((n+2)/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262806.P15427798527096026364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065447 (n + 1) : ℚ) / (A002275 ⌊(n + 2 : ℚ) / 2⌋.toNat : ℚ)

end

end A262806.P15427798527096026364

/-!
# A262807: a(n) = (Product_{k=1..n} prime(k+1)) mod (Sum_{k=1..n} prime(k+1)) where prime(k) is the k-th prime number.

The programs for A262807, there is no canonical definition to state claims against.
-/

/-! ## A262807.P17933719168152490348

`∏[p?[2*n+1]]%∑[p?[2*n+1]]`
-/

namespace A262807.P17933719168152490348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A262807.P17933719168152490348

/-! ## A262807.P16352456163924308376

`∏[A095320(n+2)]%∑[p?[2*n+1]]`
-/

namespace A262807.P16352456163924308376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262807.P16352456163924308376

/-! ## A262807.P6826093581370652690

`∏[A065091(n+1)]%A071148(n+1)`
-/

namespace A262807.P6826093581370652690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A071148 (n + 1))

end

end A262807.P6826093581370652690

/-! ## A262807.P2762729208234808860

`∏[A000040(n+2)]%∑[A000040(n+2)]`
-/

namespace A262807.P2762729208234808860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A262807.P2762729208234808860

/-! ## A262807.P3102041921560716806

`∏[A006093(n+2)+1]%∑[A065091(n+1)]`
-/

namespace A262807.P3102041921560716806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A262807.P3102041921560716806

/-!
# A262808: Triangle read by rows giving successive states of cellular automaton generated by "Rule 147" initiated with a single ON (black) cell.

The programs for A262808, the canonical program `A262808.P9571554599653427594` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262808 has offset 0).

The definition of A262808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262808.P13701264816874689937

`and(n, A266666(n))^and(3, n)`
-/

namespace A262808.P13701264816874689937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A266666 n) ^ Nat.land 3 n

end

end A262808.P13701264816874689937

namespace A262808

/-- `and(n, A266666(n))^and(3, n)` -/
def P13701264816874689937.Spec : Prop :=
  ∀ n, P13701264816874689937.a n = A262808 n

end A262808

/-! ## A262808.P9571554599653427594

`A071028(gcd(n, A027656(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262808

/-- `A071028(gcd(n, A027656(n)))` -/
def P9571554599653427594.Spec : Prop :=
  ∀ n, P9571554599653427594.a n = A262808 n

theorem P9571554599653427594.correct : P9571554599653427594.Spec := by
  intro n
  simp only [A262808]

end A262808

/-! ## A262808.P2159146108870362408

`A266434(gcd(n², A014681(n+1)))`
-/

namespace A262808.P2159146108870362408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (Int.gcd (n ^ 2 : ℤ) (A014681 (n + 1)))

end

end A262808.P2159146108870362408

namespace A262808

/-- `A266434(gcd(n², A014681(n+1)))` -/
def P2159146108870362408.Spec : Prop :=
  ∀ n, P2159146108870362408.a n = A262808 n

end A262808

/-! ## A262808.P3075193001993726118

`A266434(and(4, A266434(n)-n²))`
-/

namespace A262808.P3075193001993726118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (Int.land 4 (A266434 n - (n ^ 2 : ℤ))).toNat

end

end A262808.P3075193001993726118

namespace A262808

/-- `A266434(and(4, A266434(n)-n²))` -/
def P3075193001993726118.Spec : Prop :=
  ∀ n, P3075193001993726118.a n = A262808 n

end A262808

/-! ## A262808.P6605012150620344681

`A267272(A086112(n+2))`
-/

namespace A262808.P6605012150620344681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (A086112 (n + 2)).toNat

end

end A262808.P6605012150620344681

namespace A262808

/-- `A267272(A086112(n+2))` -/
def P6605012150620344681.Spec : Prop :=
  ∀ n, P6605012150620344681.a n = A262808 n

end A262808

/-! ## A262808.P8941857940596248000

`A267272(A003815(n+1)+1)`
-/

namespace A262808.P8941857940596248000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (A003815 (n + 1) + 1).toNat

end

end A262808.P8941857940596248000

namespace A262808

/-- `A267272(A003815(n+1)+1)` -/
def P8941857940596248000.Spec : Prop :=
  ∀ n, P8941857940596248000.a n = A262808 n

end A262808

/-! ## A262808.P14716466912194913293

`and(1, A000125(n+1)+A000124(A053186(n)))`
-/

namespace A262808.P14716466912194913293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000125 (n + 1) + A000124 (A053186 n).toNat)

end

end A262808.P14716466912194913293

namespace A262808

/-- `and(1, A000125(n+1)+A000124(A053186(n)))` -/
def P14716466912194913293.Spec : Prop :=
  ∀ n, P14716466912194913293.a n = A262808 n

end A262808

/-! ## A262808.P17937840277712241897

`and(A071037(A009531(n)+1+n), A071054(n))`
-/

namespace A262808.P17937840277712241897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071037 (A009531 n + 1 + (n : ℤ)).toNat) (A071054 n)

end

end A262808.P17937840277712241897

namespace A262808

/-- `and(A071037(A009531(n)+1+n), A071054(n))` -/
def P17937840277712241897.Spec : Prop :=
  ∀ n, P17937840277712241897.a n = A262808 n

end A262808

/-! ## A262808.P16294930063899720306

`A059841(or(n+1, A006218(n))-A003557(n+2))`
-/

namespace A262808.P16294930063899720306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.lor (n + 1 : ℤ) (A006218 n) - A003557 (n + 2)).toNat

end

end A262808.P16294930063899720306

namespace A262808

/-- `A059841(or(n+1, A006218(n))-A003557(n+2))` -/
def P16294930063899720306.Spec : Prop :=
  ∀ n, P16294930063899720306.a n = A262808 n

end A262808

/-! ## A262808.P13570697107981704865

`A059841(A003557(n+2)+or(n+1, A006218(n)))`
-/

namespace A262808.P13570697107981704865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003557 (n + 2) + Int.lor (n + 1 : ℤ) (A006218 n)).toNat

end

end A262808.P13570697107981704865

namespace A262808

/-- `A059841(A003557(n+2)+or(n+1, A006218(n)))` -/
def P13570697107981704865.Spec : Prop :=
  ∀ n, P13570697107981704865.a n = A262808 n

end A262808

/-! ## A262808.P3002872392433074479

`A000196(A079097(xor(1, n)))%2`
-/

namespace A262808.P3002872392433074479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A079097 (Nat.xor 1 n)).toNat) 2

end

end A262808.P3002872392433074479

namespace A262808

/-- `A000196(A079097(xor(1, n)))%2` -/
def P3002872392433074479.Spec : Prop :=
  ∀ n, P3002872392433074479.a n = A262808 n

end A262808

/-! ## A262808.P17441479659914213949

`A266434(∑[A001057(n+1)]²+n)`
-/

namespace A262808.P17441479659914213949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)).toNat

end

end A262808.P17441479659914213949

namespace A262808

/-- `A266434(∑[A001057(n+1)]²+n)` -/
def P17441479659914213949.Spec : Prop :=
  ∀ n, P17441479659914213949.a n = A262808 n

end A262808

/-! ## A262808.P10450467882003553190

`A266253(and(n, A266255(n)))`
-/

namespace A262808.P10450467882003553190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 (Int.land (n : ℤ) (A266255 n)).toNat

end

end A262808.P10450467882003553190

namespace A262808

/-- `A266253(and(n, A266255(n)))` -/
def P10450467882003553190.Spec : Prop :=
  ∀ n, P10450467882003553190.a n = A262808 n

end A262808

/-! ## A262808.P18060329729052794672

`A071030(n*(A008619(n+1)-A001057(n)))`
-/

namespace A262808.P18060329729052794672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 ((n : ℤ) * (A008619 (n + 1) - A001057 n)).toNat

end

end A262808.P18060329729052794672

namespace A262808

/-- `A071030(n*(A008619(n+1)-A001057(n)))` -/
def P18060329729052794672.Spec : Prop :=
  ∀ n, P18060329729052794672.a n = A262808 n

end A262808

/-! ## A262808.P6573346696196754044

`A071030(n*(A123684(n+1)-A004526(n)))`
-/

namespace A262808.P6573346696196754044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 ((n : ℤ) * (A123684 (n + 1) - A004526 n)).toNat

end

end A262808.P6573346696196754044

namespace A262808

/-- `A071030(n*(A123684(n+1)-A004526(n)))` -/
def P6573346696196754044.Spec : Prop :=
  ∀ n, P6573346696196754044.a n = A262808 n

end A262808

/-! ## A262808.P6072600908755182342

`A071030(lcm(n, A014682(n+1)+A004526(n)))`
-/

namespace A262808.P6072600908755182342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (Int.lcm (n : ℤ) (A014682 (n + 1) + A004526 n))

end

end A262808.P6072600908755182342

namespace A262808

/-- `A071030(lcm(n, A014682(n+1)+A004526(n)))` -/
def P6072600908755182342.Spec : Prop :=
  ∀ n, P6072600908755182342.a n = A262808 n

end A262808

/-!
# A262809: Number A(n,k) of lattice paths from {n}^k to {0}^k using steps that decrement one or more components by one; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A262809, there is no canonical definition to state claims against.
-/

/-! ## A262809.P16259431909693226502

`A316674(n)/A331315(n)*A330942(n)`
-/

namespace A262809.P16259431909693226502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316674 n : ℚ) / (A331315 n : ℚ) * (A330942 n : ℚ)

end

end A262809.P16259431909693226502

/-! ## A262809.P9002148526393245569

`A316674(n)/gcd(A011782(n), A316674(n))`
-/

namespace A262809.P9002148526393245569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316674 n : ℚ) / (Int.gcd (A011782 n) (A316674 n) : ℚ)

end

end A262809.P9002148526393245569

/-! ## A262809.P150532093910182176

`A000265(A316674(n))`
-/

namespace A262809.P150532093910182176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A316674 n).toNat

end

end A262809.P150532093910182176

/-! ## A262809.P5178140588408473259

`A171435(2*A316674(n))`
-/

namespace A262809.P5178140588408473259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A316674 n).toNat

end

end A262809.P5178140588408473259

/-! ## A262809.P9916078020910417614

`A028234(2*A316674(n))`
-/

namespace A262809.P9916078020910417614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A316674 n).toNat

end

end A262809.P9916078020910417614

/-!
# A262810: Number of lattice paths from {n}^n to {0}^n using steps that decrement one or more components by one.

The programs for A262810, there is no canonical definition to state claims against.
-/

/-! ## A262810.P10690032685635131137

`A262809(∑[4*n])`
-/

namespace A262810.P10690032685635131137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262810.P10690032685635131137

/-! ## A262810.P5652780739093604181

`A316677(n)/A011782(n)`
-/

namespace A262810.P5652780739093604181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316677 n : ℚ) / (A011782 n : ℚ)

end

end A262810.P5652780739093604181

/-! ## A262810.P7165391256660723219

`A316677(n)/A000010(2^n)`
-/

namespace A262810.P7165391256660723219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316677 n : ℚ) / (A000010 (2 ^ n) : ℚ)

end

end A262810.P7165391256660723219

/-! ## A262810.P17393790642142359355

`A316674(∑[4*n])/A011782(n)`
-/

namespace A262810.P17393790642142359355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316674 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A011782 n : ℚ)

end

end A262810.P17393790642142359355

/-! ## A262810.P7033108299405221485

`A316674(∑[4*n])/A000010(2^n)`
-/

namespace A262810.P7033108299405221485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316674 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000010 (2 ^ n) : ℚ)

end

end A262810.P7033108299405221485

/-!
# A262811: Expansion of Product_{k>=1} 1/(1-x^(2*k-1))^(2*k-1).

The programs for A262811, there is no canonical definition to state claims against.
-/

/-! ## A262811.P6727132366206376667

`abs(A284628(n))`
-/

namespace A262811.P6727132366206376667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284628 n|

end

end A262811.P6727132366206376667

/-! ## A262811.P2963882062496333666

`∑[A263199(n)]`
-/

namespace A262811.P2963882062496333666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262811.P2963882062496333666

/-! ## A262811.P1430701798646597339

`A033999(n)*A284628(n)`
-/

namespace A262811.P1430701798646597339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284628 n

end

end A262811.P1430701798646597339

/-! ## A262811.P15433729372591443631

`gcd(A000038(n), A284628(n))`
-/

namespace A262811.P15433729372591443631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284628 n)

end

end A262811.P15433729372591443631

/-! ## A262811.P12291801060677599207

`lcm(A020985(n), A284628(n))`
-/

namespace A262811.P12291801060677599207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A284628 n)

end

end A262811.P12291801060677599207

/-! ## A262811.P3389207690746928295

`A284628(n)/A285048(n)*A285287(n)`
-/

namespace A262811.P3389207690746928295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284628 n : ℚ) / (A285048 n : ℚ) * (A285287 n : ℚ)

end

end A262811.P3389207690746928295

/-!
# A262813: Number of ordered ways to write n as x^3 + y^2 + z*(z+1)/2 with x >= 0, y >=0 and z > 0.

The programs for A262813, there is no canonical definition to state claims against.
-/

/-! ## A262813.P17531567008130718489

`A262954(n+1)+A206499(A053012(n+1))`
-/

namespace A262813.P17531567008130718489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262954 (n + 1) + A206499 (A053012 (n + 1)).toNat

end

end A262813.P17531567008130718489

/-!
# A262815: Number of ordered ways to write n as x^3 + y*(y+1)/2 + z*(3*z+1)/2, where x, y and z are nonnegative integers.

The programs for A262815, there is no canonical definition to state claims against.
-/

/-! ## A262815.P13471888224232074249

`A001221(A165097(n+1)-A351309(n+1))`
-/

namespace A262815.P13471888224232074249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A165097 (n + 1) - A351309 (n + 1)).toNat

end

end A262815.P13471888224232074249

/-! ## A262815.P9871426597939367969

`A124763(or(A116621(2*n+3), A124794(2*n+5)))`
-/

namespace A262815.P9871426597939367969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (Int.lor (A116621 (2 * n + 3)) (A124794 (2 * n + 5))).toNat

end

end A262815.P9871426597939367969

/-! ## A262815.P146293136885150717

`A341675(A100698(n+1)+A060442(n+4))`
-/

namespace A262815.P146293136885150717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A100698 (n + 1) + A060442 (n + 4)).toNat

end

end A262815.P146293136885150717

/-! ## A262815.P12877335051178207582

`A001221(A343177(2*n+3)+A270890(3*n+1))`
-/

namespace A262815.P12877335051178207582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A343177 (2 * n + 3) + A270890 (3 * n + 1)).toNat

end

end A262815.P12877335051178207582

/-!
# A262816: Number of ordered ways to write n as x^3 + y^2 + z*(3*z-1)/2, where x and y are nonnegative integers, and z is a nonzero integer.

The programs for A262816, there is no canonical definition to state claims against.
-/

/-! ## A262816.P8573788162975625731

`∑{e}[A000010(3*n+2)+∑[A002522(n)]²-n, #]`
-/

namespace A262816.P8573788162975625731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2) + ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A262816.P8573788162975625731

/-! ## A262816.P11952663163254315507

`A070939(A011554(n+1)%(n+4))`
-/

namespace A262816.P11952663163254315507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A011554 (n + 1)) (n + 4 : ℤ)).toNat

end

end A262816.P11952663163254315507

/-! ## A262816.P11079150799324168583

`A077774(n+1)+A010873(A245733(2*(n+1)))`
-/

namespace A262816.P11079150799324168583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077774 (n + 1) + A010873 (A245733 (2 * (n + 1))).toNat

end

end A262816.P11079150799324168583

/-! ## A262816.P14872935526240303469

`A256790(A186682(2*(n+1))+A002865(2*(n+2)))`
-/

namespace A262816.P14872935526240303469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256790 (A186682 (2 * (n + 1)) + A002865 (2 * (n + 2))).toNat

end

end A262816.P14872935526240303469

/-!
# A262817: Number of (n+3)X(3+3) 0..1 arrays with each row divisible by 9 and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262817, the canonical program `A262817.P8370062309369754135` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262817 has offset 1).

The definition of A262817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262817.P8370062309369754135

`floor(2^(n+7)/9)^3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262817

/-- `floor(2^(n+7)/9)^3` -/
def P8370062309369754135.Spec : Prop :=
  ∀ n, P8370062309369754135.a n = A262817 (n + 1)

theorem P8370062309369754135.correct : P8370062309369754135.Spec := by
  intro n
  simp only [A262817, Nat.add_sub_cancel]

end A262817

/-! ## A262817.P1110454209182495596

`A000578(eq[9, A053092(n+1)])`
-/

namespace A262817.P1110454209182495596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262817.P1110454209182495596

namespace A262817

/-- `A000578(eq[9, A053092(n+1)])` -/
def P1110454209182495596.Spec : Prop :=
  ∀ n, P1110454209182495596.a n = A262817 (n + 1)

end A262817

/-! ## A262817.P13964043295695983705

`A262819(∑[n+3]+1)`
-/

namespace A262817.P13964043295695983705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262817.P13964043295695983705

namespace A262817

/-- `A262819(∑[n+3]+1)` -/
def P13964043295695983705.Spec : Prop :=
  ∀ n, P13964043295695983705.a n = A262817 (n + 1)

end A262817

/-!
# A262818: Number of (n+3)X(4+3) 0..1 arrays with each row divisible by 9 and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262818, there is no canonical definition to state claims against.
-/

/-! ## A262818.P3215132355927646841

`A262819(∑[n+4]+3)`
-/

namespace A262818.P3215132355927646841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A262818.P3215132355927646841

/-! ## A262818.P18187585896796404174

`A335462(n+1)+A262819(A055998(n+2))`
-/

namespace A262818.P18187585896796404174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 1) + A262819 (A055998 (n + 2)).toNat

end

end A262818.P18187585896796404174

/-!
# A262819: T(n,k)=Number of (n+3)X(k+3) 0..1 arrays with each row divisible by 9 and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262819, there is no canonical definition to state claims against.
-/

/-! ## A262819.P4292299706140783158

`A262820(A004736(n+1)^A341494(n))`
-/

namespace A262819.P4292299706140783158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262820 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A341494 n : ℤ))).toNat

end

end A262819.P4292299706140783158

/-! ## A262819.P7333982553129362578

`A262820(A145390(n+1)^A293519(n))`
-/

namespace A262819.P7333982553129362578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262820 (SequenceMachineLib.roundAway ((A145390 (n + 1) : ℚ) ^ (A293519 n : ℤ))).toNat

end

end A262819.P7333982553129362578

/-! ## A262819.P13093820120629773825

`A262820(A193739(2*n+1)^A293519(n))`
-/

namespace A262819.P13093820120629773825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262820 (SequenceMachineLib.roundAway ((A193739 (2 * n + 1) : ℚ) ^ (A293519 n : ℤ))).toNat

end

end A262819.P13093820120629773825

/-!
# A262820: Number of (1+3)X(n+3) 0..1 arrays with each row divisible by 9 and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262820, there is no canonical definition to state claims against.
-/

/-! ## A262820.P7450597270987175207

`A262819(∑[n]+1)`
-/

namespace A262820.P7450597270987175207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262820.P7450597270987175207

/-! ## A262820.P7049398341629628277

`lcm(2, A262819(A000124(n)))`
-/

namespace A262820.P7049398341629628277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262819 (A000124 n).toNat)

end

end A262820.P7049398341629628277

/-! ## A262820.P480559882249260883

`A057427(n)*A262819(A000124(n))`
-/

namespace A262820.P480559882249260883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A262819 (A000124 n).toNat

end

end A262820.P480559882249260883

/-! ## A262820.P10929548321128239163

`∑[A055641(n)]*A262819(A000124(n))`
-/

namespace A262820.P10929548321128239163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A262819 (A000124 n).toNat

end

end A262820.P10929548321128239163

/-! ## A262820.P13799744112272342108

`char[A007318(n)]*A262819(A000124(n))`
-/

namespace A262820.P13799744112272342108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A262819 (A000124 n).toNat

end

end A262820.P13799744112272342108

/-!
# A262821: Number of (2+3)X(n+3) 0..1 arrays with each row divisible by 9 and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262821, there is no canonical definition to state claims against.
-/

/-! ## A262821.P4027407610849473760

`A262819(∑[n+1]+2)`
-/

namespace A262821.P4027407610849473760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262821.P4027407610849473760

/-!
# A262822: Number of (3+3)X(n+3) 0..1 arrays with each row divisible by 9 and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262822, there is no canonical definition to state claims against.
-/

/-! ## A262822.P13118583302953794565

`A262819(∑[n+2]+4)`
-/

namespace A262822.P13118583302953794565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262822.P13118583302953794565

/-! ## A262822.P8060945842188087140

`lcm(2, A262819(A167614(n+1)))`
-/

namespace A262822.P8060945842188087140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262819 (A167614 (n + 1)).toNat)

end

end A262822.P8060945842188087140

/-! ## A262822.P1539065574318995586

`A262819(A167614(n+1))+A014083(n)`
-/

namespace A262822.P1539065574318995586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (A167614 (n + 1)).toNat + A014083 n

end

end A262822.P1539065574318995586

/-! ## A262822.P18151919179994048785

`A262819(A167614(n+1))+A025438(n)`
-/

namespace A262822.P18151919179994048785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262819 (A167614 (n + 1)).toNat + A025438 n

end

end A262822.P18151919179994048785

/-!
# A262824: Number of ordered ways to write n as w^2 + x^3 + 2*y^3 + 3*z^3, where w, x, y and z are nonnegative integers.

The programs for A262824, there is no canonical definition to state claims against.
-/

/-! ## A262824.P11311844670285850430

`xor(A121358(n+1), A285383(A295081(n)))`
-/

namespace A262824.P11311844670285850430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121358 (n + 1)) (A285383 (A295081 n).toNat)

end

end A262824.P11311844670285850430

/-! ## A262824.P14097872505345456883

`A093429(A046086(n+1)+1)`
-/

namespace A262824.P14097872505345456883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093429 (A046086 (n + 1) + 1).toNat

end

end A262824.P14097872505345456883

/-! ## A262824.P1585149467213187680

`A000120(∑[A081743(A022383(n))])`
-/

namespace A262824.P1585149467213187680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A022383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262824.P1585149467213187680

/-! ## A262824.P7805964638526389903

`A001221(A029494(n+1)*A085131(n+1))`
-/

namespace A262824.P7805964638526389903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A029494 (n + 1) * A085131 (n + 1)).toNat

end

end A262824.P7805964638526389903

/-! ## A262824.P17647262762569448130

`A050361(A000041(3*n+2))+A007895(n)`
-/

namespace A262824.P17647262762569448130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A000041 (3 * n + 2)).toNat + A007895 n

end

end A262824.P17647262762569448130

/-!
# A262828: Numbers with more than one factorization (up to association) in Z[sqrt(-5)].

The programs for A262828, there is no canonical definition to state claims against.
-/

/-! ## A262828.P9823122302571177712

`lt[A053230(A280699(n+1)), A124233(n)]`
-/

namespace A262828.P9823122302571177712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A280699 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262828.P9823122302571177712

/-!
# A262829: (3,2)-primes (defined in Comments).

The programs for A262829, the canonical program `A262829.P5430725010381186726` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262829 has offset 1).

The definition of A262829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262829.P7549893374694387284

`p?[n*A328772(A065361(n))]`
-/

namespace A262829.P7549893374694387284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328772 (A065361 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262829.P7549893374694387284

namespace A262829

/-- `p?[n*A328772(A065361(n))]` -/
def P7549893374694387284.Spec : Prop :=
  ∀ n, P7549893374694387284.a n = A262829 (n + 1)

end A262829

/-! ## A262829.P4589061865270728932

`eq[A003415(n), A226378(A065361(n))]`
-/

namespace A262829.P4589061865270728932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A065361 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262829.P4589061865270728932

namespace A262829

/-- `eq[A003415(n), A226378(A065361(n))]` -/
def P4589061865270728932.Spec : Prop :=
  ∀ n, (P4589061865270728932.a n : ℤ) = A262829 (n + 1)

end A262829

/-! ## A262829.P5875652350795812136

`eq[A074206(A065361(n)), A210442(n)]`
-/

namespace A262829.P5875652350795812136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A065361 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262829.P5875652350795812136

namespace A262829

/-- `eq[A074206(A065361(n)), A210442(n)]` -/
def P5875652350795812136.Spec : Prop :=
  ∀ n, (P5875652350795812136.a n : ℤ) = A262829 (n + 1)

end A262829

/-! ## A262829.P11845909861221724899

`eq[A117545(A065361(n)+1), A210442(n)]`
-/

namespace A262829.P11845909861221724899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (A065361 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262829.P11845909861221724899

namespace A262829

/-- `eq[A117545(A065361(n)+1), A210442(n)]` -/
def P11845909861221724899.Spec : Prop :=
  ∀ n, (P11845909861221724899.a n : ℤ) = A262829 (n + 1)

end A262829

/-! ## A262829.P5430725010381186726

`p?[(n+1)*A085392(A065361(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A262829

/-- `p?[(n+1)*A085392(A065361(n+1))]` -/
def P5430725010381186726.Spec : Prop :=
  ∀ n, P5430725010381186726.a n = A262829 (n + 1)

theorem P5430725010381186726.correct : P5430725010381186726.Spec := by
  intro n
  simp only [A262829, Nat.add_sub_cancel]

end A262829

/-!
# A262830: {2,3}-primes (defined in Comments).

The programs for A262830, there is no canonical definition to state claims against.
-/

/-! ## A262830.P10588816125537815614

`∩[A235266(n+1), A262829(n+1)]`
-/

namespace A262830.P10588816125537815614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262830.P10588816125537815614

/-! ## A262830.P7855764304754672386

`∩[A065361(A235265(n+1)), A262829(n+1)]`
-/

namespace A262830.P7855764304754672386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A235265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262830.P7855764304754672386

/-! ## A262830.P5762120880872517493

`p?[A005875(n)+Δ[A103087(n+1)]]`
-/

namespace A262830.P5762120880872517493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262830.P5762120880872517493

/-!
# A262831: (5,2)-primes (defined in Comments).

The programs for A262831, there is no canonical definition to state claims against.
-/

/-! ## A262831.P13085655710225402200

`eq[A112713(n), A240235(n+1)]`
-/

namespace A262831.P13085655710225402200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262831.P13085655710225402200

/-! ## A262831.P13316981591859931679

`filter[A111689(2*n+1), A112713(#)]`
-/

namespace A262831.P13316981591859931679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111689 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A262831.P13316981591859931679

/-! ## A262831.P9685509781729122214

`filter[A308598(2*n+1), A112713(#)]`
-/

namespace A262831.P9685509781729122214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308598 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A262831.P9685509781729122214

/-! ## A262831.P4257742462557678068

`filter[A340202(2*n+1), A112713(#)]`
-/

namespace A262831.P4257742462557678068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340202 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A262831.P4257742462557678068

/-! ## A262831.P11332818474729602283

`filter[A360006(2*(n+1)), A112713(#)]`
-/

namespace A262831.P11332818474729602283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360006 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A262831.P11332818474729602283

/-!
# A262832: {2,5}-primes (defined in Comments).

The programs for A262832, there is no canonical definition to state claims against.
-/

/-! ## A262832.P16106613874163539355

`∩[A235475(n+1), A262831(n+1)]`
-/

namespace A262832.P16106613874163539355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262832.P16106613874163539355

/-! ## A262832.P10249354720407453822

`A235475(A126024(n)+A062934(n+1))`
-/

namespace A262832.P10249354720407453822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235475 (A126024 n + A062934 (n + 1)).toNat

end

end A262832.P10249354720407453822

/-!
# A262833: (7,2)-primes (defined in Comments).

The programs for A262833, there is no canonical definition to state claims against.
-/

/-! ## A262833.P14514522829885186049

`A097974(A051635(n+1)*A103384(n+1))`
-/

namespace A262833.P14514522829885186049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097974 (A051635 (n + 1) * A103384 (n + 1)).toNat

end

end A262833.P14514522829885186049

/-! ## A262833.P16465212640730015163

`A056813(A048398(n+1)*A181526(n+1))`
-/

namespace A262833.P16465212640730015163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A048398 (n + 1) * A181526 (n + 1)).toNat

end

end A262833.P16465212640730015163

/-! ## A262833.P16694658253732591765

`eq[A030341(A261678(3*n+2)), A326849(n)]`
-/

namespace A262833.P16694658253732591765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A261678 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262833.P16694658253732591765

/-!
# A262834: {2,7}-primes (defined in Comments).

The programs for A262834, there is no canonical definition to state claims against.
-/

/-! ## A262834.P3620478136955851865

`∩[A235477(n+1), A262833(n+1)]`
-/

namespace A262834.P3620478136955851865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262834.P3620478136955851865

/-! ## A262834.P7020003783102275964

`p?[C(A235477(n+1), A023128(n+1))]`
-/

namespace A262834.P7020003783102275964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A235477 (n + 1)).toNat (A023128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262834.P7020003783102275964

/-!
# A262835: (5,3)-primes (defined in Comments).

The programs for A262835, there is no canonical definition to state claims against.
-/

/-! ## A262835.P9844088147771356576

`A069682(lt[A109700(n), A341592(n+2)])`
-/

namespace A262835.P9844088147771356576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069682 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262835.P9844088147771356576

/-! ## A262835.P9721682555282037851

`p?[lt[A111633(n+2), 5]]`
-/

namespace A262835.P9721682555282037851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111633 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262835.P9721682555282037851

/-! ## A262835.P12978814947971200452

`p?[lt[log(A284119(n+1)), 9]]`
-/

namespace A262835.P12978814947971200452
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A284119 (n + 1) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262835.P12978814947971200452

/-! ## A262835.P14879249423370177984

`p?[lt[A313348(n), A313356(n+2)]]`
-/

namespace A262835.P14879249423370177984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313348 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313356 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262835.P14879249423370177984

/-!
# A262836: {3,5}-primes (defined in Comments).

The programs for A262836, there is no canonical definition to state claims against.
-/

/-! ## A262836.P1734935356408824937

`∩[A231474(n+1), A262835(n+1)]`
-/

namespace A262836.P1734935356408824937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262836.P1734935356408824937

/-! ## A262836.P4823494501287942306

`∩[A231474(n+1), A351290(n+1)]`
-/

namespace A262836.P4823494501287942306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262836.P4823494501287942306

/-! ## A262836.P4065523755987732535

`record[A125766(n+1)%A193803(n+1)]`
-/

namespace A262836.P4065523755987732535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125766 (n + 1)) (A193803 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262836.P4065523755987732535

/-! ## A262836.P8538313917862572257

`record[∑{p}[A379633(2*n+5), #]]`
-/

namespace A262836.P8538313917862572257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379633 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262836.P8538313917862572257

/-! ## A262836.P9714103840585043574

`record[A265576(A356754(n+1))]`
-/

namespace A262836.P9714103840585043574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265576 (A356754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262836.P9714103840585043574

/-!
# A262837: (3,7)-primes (defined in Comments).

The programs for A262837, there is no canonical definition to state claims against.
-/

/-! ## A262837.P4841678484871403885

`A042988(lt[A360243(3*n), A248068(n+1)+1])`
-/

namespace A262837.P4841678484871403885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360243 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262837.P4841678484871403885

/-! ## A262837.P5824770514314667304

`A042988(lt[A118034(2*(n+1)), A223495(n+1)])`
-/

namespace A262837.P5824770514314667304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118034 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262837.P5824770514314667304

/-!
# A262838: {3,7}-primes (defined in Comments).

The programs for A262838, there is no canonical definition to state claims against.
-/

/-! ## A262838.P1574456382615803120

`∩[A231477(n+1), A262837(n+1)]`
-/

namespace A262838.P1574456382615803120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262838.P1574456382615803120

/-! ## A262838.P17409808035426891463

`filter[A231477(n+1), A102609(#)]`
-/

namespace A262838.P17409808035426891463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A262838.P17409808035426891463

/-! ## A262838.P103060160655936765

`∩[A028805(n+1), A231477(n+1)]`
-/

namespace A262838.P103060160655936765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262838.P103060160655936765

/-!
# A262839: (5,7)-primes (defined in Comments).

The programs for A262839, there is no canonical definition to state claims against.
-/

/-! ## A262839.P18346804561825242521

`p?[lt[A354762(n), A064064(n)]]`
-/

namespace A262839.P18346804561825242521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354762 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064064 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262839.P18346804561825242521

/-! ## A262839.P17782583544582542897

`p?[lt[A354762(n), A120244(n+1)]]`
-/

namespace A262839.P17782583544582542897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354762 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120244 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262839.P17782583544582542897

/-! ## A262839.P9911689922238741871

`p?[lt[A354762(n), A120246(n+1)]]`
-/

namespace A262839.P9911689922238741871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354762 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120246 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262839.P9911689922238741871

/-! ## A262839.P15079654969910744253

`p?[∑[A195107(A009999(n))]]`
-/

namespace A262839.P15079654969910744253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (A009999 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262839.P15079654969910744253

/-! ## A262839.P11149896577567967222

`p?[∑[A260438(A110008(n+1))]]`
-/

namespace A262839.P11149896577567967222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (A110008 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262839.P11149896577567967222

/-!
# A262840: {5,7}-primes (defined in Comments).

The programs for A262840, there is no canonical definition to state claims against.
-/

/-! ## A262840.P9271574501952354842

`∩[A235635(n+1), A262839(n+1)]`
-/

namespace A262840.P9271574501952354842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262840.P9271574501952354842

/-! ## A262840.P8303810085248048149

`p?[A023443(A189019(n+1))-A127322(2*(n+2))]`
-/

namespace A262840.P8303810085248048149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189019 (n + 1)).toNat - A127322 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262840.P8303810085248048149

/-! ## A262840.P5538488927912495019

`p?[lt[A346420(n+4), 5]]`
-/

namespace A262840.P5538488927912495019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346420 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262840.P5538488927912495019

/-! ## A262840.P15594899218258863390

`p?[∑[A355368(3*n+7)]]`
-/

namespace A262840.P15594899218258863390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355368 (3 * n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262840.P15594899218258863390

/-!
# A262841: Number of irreducible polynomials occurring as the first component of a vertex in the Fibonacci zero tree, generated as in Comments.

The programs for A262841, there is no canonical definition to state claims against.
-/

/-! ## A262841.P10956380206594487322

`A191786(n)-A349841(A212804(n+1))`
-/

namespace A262841.P10956380206594487322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191786 n - A349841 (A212804 (n + 1)).toNat

end

end A262841.P10956380206594487322

/-! ## A262841.P7214712036419520759

`A191786(n)-A349841(A290689(n+1))`
-/

namespace A262841.P7214712036419520759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191786 n - A349841 (A290689 (n + 1)).toNat

end

end A262841.P7214712036419520759

/-! ## A262841.P6523860963950708143

`A191786(n)-A349841(A157725(n)-2)`
-/

namespace A262841.P6523860963950708143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191786 n - A349841 (A157725 n - 2).toNat

end

end A262841.P6523860963950708143

/-!
# A262842: G.f.: Product_{k>=1} (1 - x^k)^(-k^(k-2)).

The programs for A262842, there is no canonical definition to state claims against.
-/

/-! ## A262842.P12832028905945591739

`∑[A325335(2^n)]+1`
-/

namespace A262842.P12832028905945591739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325335 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262842.P12832028905945591739

/-! ## A262842.P11662165483086177621

`A001462(A181445(n))`
-/

namespace A262842.P11662165483086177621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A181445 n).toNat

end

end A262842.P11662165483086177621

/-!
# A262843: Inverse Moebius transform of n^(n-1).

The programs for A262843, the canonical program `A262843.P9060377653321210669` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262843 has offset 1).

The definition of A262843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262843.P9060377653321210669

`∑{d}[n+1, #^(#-1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262843

/-- `∑{d}[n+1, #^(#-1)]` -/
def P9060377653321210669.Spec : Prop :=
  ∀ n, P9060377653321210669.a n = (A262843 (n + 1) : ℚ)

end A262843

/-! ## A262843.P7775947587735212090

`record[∑{d}[n-1, #^(#-1)]]`
-/

namespace A262843.P7775947587735212090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262843.P7775947587735212090

namespace A262843

/-- `record[∑{d}[n-1, #^(#-1)]]` -/
def P7775947587735212090.Spec : Prop :=
  ∀ n, P7775947587735212090.a n = (A262843 (n + 1) : ℚ)

end A262843

/-! ## A262843.P7406000401482919893

`floor(∑{d}[n+1, #^#/#])`
-/

namespace A262843.P7406000401482919893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d ^ d : ℚ) / (d : ℚ)⌋

end

end A262843.P7406000401482919893

namespace A262843

/-- `floor(∑{d}[n+1, #^#/#])` -/
def P7406000401482919893.Spec : Prop :=
  ∀ n, P7406000401482919893.a n = A262843 (n + 1)

end A262843

/-! ## A262843.P11385205042305032473

`ceil(∑{d}[n+1, #^#/#])`
-/

namespace A262843.P11385205042305032473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d ^ d : ℚ) / (d : ℚ)⌉

end

end A262843.P11385205042305032473

namespace A262843

/-- `ceil(∑{d}[n+1, #^#/#])` -/
def P11385205042305032473.Spec : Prop :=
  ∀ n, P11385205042305032473.a n = A262843 (n + 1)

end A262843

/-! ## A262843.P3922536338648634584

`round(∑{d}[n+1, #^#/#])`
-/

namespace A262843.P3922536338648634584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d ^ d : ℚ) / (d : ℚ))

end

end A262843.P3922536338648634584

namespace A262843

/-- `round(∑{d}[n+1, #^#/#])` -/
def P3922536338648634584.Spec : Prop :=
  ∀ n, P3922536338648634584.a n = A262843 (n + 1)

end A262843

/-!
# A262844: Number of (n+2) X (2+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262844, there is no canonical definition to state claims against.
-/

/-! ## A262844.P10621265134633359705

`A262849(∑[n+2])`
-/

namespace A262844.P10621265134633359705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262844.P10621265134633359705

/-! ## A262844.P14159930261614332152

`record[A129186(n)*A262849(n+1)]`
-/

namespace A262844.P14159930261614332152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A262849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262844.P14159930261614332152

/-! ## A262844.P14198094320353321460

`record[root(A262849(n+1), A130266(n))]`
-/

namespace A262844.P14198094320353321460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262849 (n + 1) : ℝ) ^ (1 / (A130266 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262844.P14198094320353321460

/-! ## A262844.P16543278573762461658

`record[A262849(A000096(∏{digits}[n, #+1]))]`
-/

namespace A262844.P16543278573762461658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A000096 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262844.P16543278573762461658

/-! ## A262844.P17753263881087423066

`record[root(A262849(n+1), A209279(n+1))]`
-/

namespace A262844.P17753263881087423066
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262849 (n + 1) : ℝ) ^ (1 / (A209279 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262844.P17753263881087423066

/-!
# A262845: Number of (n+2)X(3+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262845, there is no canonical definition to state claims against.
-/

/-! ## A262845.P11456542703908498332

`A262849(∑[n+3]+1)`
-/

namespace A262845.P11456542703908498332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262845.P11456542703908498332

/-!
# A262846: Number of (n+2)X(4+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262846, there is no canonical definition to state claims against.
-/

/-! ## A262846.P8821702776480393905

`A262849(A141214(n+1))`
-/

namespace A262846.P8821702776480393905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A141214 (n + 1)).toNat

end

end A262846.P8821702776480393905

/-! ## A262846.P10150859926274803705

`A262849(A027379(n+2))`
-/

namespace A262846.P10150859926274803705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A027379 (n + 2)).toNat

end

end A262846.P10150859926274803705

/-! ## A262846.P1220261839394987117

`A262849(A055998(n+2))`
-/

namespace A262846.P1220261839394987117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A055998 (n + 2)).toNat

end

end A262846.P1220261839394987117

/-! ## A262846.P1603292409370496137

`A262849(A155212(n)+5)`
-/

namespace A262846.P1603292409370496137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A155212 n + 5).toNat

end

end A262846.P1603292409370496137

/-!
# A262847: Number of (n+2)X(5+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262847, there is no canonical definition to state claims against.
-/

/-! ## A262847.P2556655760906176343

`A262849(Δ[A264443(n)])`
-/

namespace A262847.P2556655760906176343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (f1 (n + 1) - f1 n).toNat

end

end A262847.P2556655760906176343

/-! ## A262847.P15903383268384321189

`A262849(A046691(n+3))`
-/

namespace A262847.P15903383268384321189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A046691 (n + 3)).toNat

end

end A262847.P15903383268384321189

/-! ## A262847.P3682968515733593878

`A262849(A056115(n)+11)`
-/

namespace A262847.P3682968515733593878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A056115 n + 11).toNat

end

end A262847.P3682968515733593878

/-!
# A262848: Number of (n+2)X(6+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262848, there is no canonical definition to state claims against.
-/

/-! ## A262848.P9441500773199865290

`A262849(A052905(n+3))`
-/

namespace A262848.P9441500773199865290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A052905 (n + 3)).toNat

end

end A262848.P9441500773199865290

/-! ## A262848.P510756407936066428

`A262849(A056119(n)+16)`
-/

namespace A262848.P510756407936066428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A056119 n + 16).toNat

end

end A262848.P510756407936066428

/-!
# A262850: Number of (1+2)X(n+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262850, there is no canonical definition to state claims against.
-/

/-! ## A262850.P13243705445510285438

`A262849(∑[n]+1)`
-/

namespace A262850.P13243705445510285438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262850.P13243705445510285438

/-! ## A262850.P11053074440771424261

`lcm(2, A262849(A000124(n)))`
-/

namespace A262850.P11053074440771424261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262849 (A000124 n).toNat)

end

end A262850.P11053074440771424261

/-! ## A262850.P13904388725572631220

`A262849(A000124(n))+A025439(n)`
-/

namespace A262850.P13904388725572631220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A000124 n).toNat + A025439 n

end

end A262850.P13904388725572631220

/-! ## A262850.P2249309199868325183

`A262849(A000124(n))+A165656(n)`
-/

namespace A262850.P2249309199868325183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A000124 n).toNat + A165656 n

end

end A262850.P2249309199868325183

/-! ## A262850.P10210739705959814332

`A277160(n)+A262849(A000124(n))`
-/

namespace A262850.P10210739705959814332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277160 n + A262849 (A000124 n).toNat

end

end A262850.P10210739705959814332

/-!
# A262851: Number of (2+2)X(n+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262851, there is no canonical definition to state claims against.
-/

/-! ## A262851.P11199104463306716501

`A262849(∑[n+1]+2)`
-/

namespace A262851.P11199104463306716501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262851.P11199104463306716501

/-! ## A262851.P23625077407993474

`record[root(A262849(n+3), A338864(n+1))]`
-/

namespace A262851.P23625077407993474
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262849 (n + 3) : ℝ) ^ (1 / (A338864 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262851.P23625077407993474

/-!
# A262852: Number of (3+2)X(n+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262852, there is no canonical definition to state claims against.
-/

/-! ## A262852.P10738289494120056401

`A262849(∑[n+2]+4)`
-/

namespace A262852.P10738289494120056401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262852.P10738289494120056401

/-! ## A262852.P1730969773365902507

`and(-1, A262849(A167614(n+1)))`
-/

namespace A262852.P1730969773365902507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A262849 (A167614 (n + 1)).toNat)

end

end A262852.P1730969773365902507

/-! ## A262852.P18288644802277077693

`A262849(A167614(n+1))+A059995(n)`
-/

namespace A262852.P18288644802277077693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A167614 (n + 1)).toNat + A059995 n

end

end A262852.P18288644802277077693

/-! ## A262852.P12499145765639333577

`A262849(A167614(n+1))+A061858(n)`
-/

namespace A262852.P12499145765639333577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A167614 (n + 1)).toNat + A061858 n

end

end A262852.P12499145765639333577

/-! ## A262852.P10517117298969019391

`A262849(A167614(n+1))+A064459(n)`
-/

namespace A262852.P10517117298969019391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A167614 (n + 1)).toNat + A064459 n

end

end A262852.P10517117298969019391

/-!
# A262853: Number of (4+2)X(n+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262853, there is no canonical definition to state claims against.
-/

/-! ## A262853.P15767194240990124652

`A262849(A141214(n)+7)`
-/

namespace A262853.P15767194240990124652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A141214 n + 7).toNat

end

end A262853.P15767194240990124652

/-! ## A262853.P13424457180715931263

`A262849(A052905(n)+9)`
-/

namespace A262853.P13424457180715931263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A052905 n + 9).toNat

end

end A262853.P13424457180715931263

/-! ## A262853.P735877056931097775

`A262849(A055999(n)+10)`
-/

namespace A262853.P735877056931097775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A055999 n + 10).toNat

end

end A262853.P735877056931097775

/-! ## A262853.P283234351374872047

`A262849(eq[5, A066657(n)])`
-/

namespace A262853.P283234351374872047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262853.P283234351374872047

/-! ## A262853.P4544584506940326559

`A262849(A167614(n+2)+1)`
-/

namespace A262853.P4544584506940326559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (A167614 (n + 2) + 1).toNat

end

end A262853.P4544584506940326559

/-!
# A262854: Number of (5+2)X(n+2) 0..1 arrays with each row divisible by 7 and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262854, there is no canonical definition to state claims against.
-/

/-! ## A262854.P2789608812693161457

`A262849(∑[n+4]+11)`
-/

namespace A262854.P2789608812693161457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262849 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A262854.P2789608812693161457

/-!
# A262855: Triangle read by rows giving successive states of cellular automaton generated by "Rule 153" initiated with a single ON (black) cell.

The programs for A262855, the canonical program `A262855.P8894309601039071380` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262855 has offset 0).

The definition of A262855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262855.P2275179435212373806

`(1-A075439(n))^n`
-/

namespace A262855.P2275179435212373806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075439 n) ^ n

end

end A262855.P2275179435212373806

namespace A262855

/-- `(1-A075439(n))^n` -/
def P2275179435212373806.Spec : Prop :=
  ∀ n, P2275179435212373806.a n = A262855 n

end A262855

/-! ## A262855.P15659229936605044310

`A054977(n)-A075439(n)`
-/

namespace A262855.P15659229936605044310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A075439 n

end

end A262855.P15659229936605044310

namespace A262855

/-- `A054977(n)-A075439(n)` -/
def P15659229936605044310.Spec : Prop :=
  ∀ n, P15659229936605044310.a n = A262855 n

end A262855

/-! ## A262855.P5230186423933587876

`A000007(n*A075439(n))`
-/

namespace A262855.P5230186423933587876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A075439 n).toNat

end

end A262855.P5230186423933587876

namespace A262855

/-- `A000007(n*A075439(n))` -/
def P5230186423933587876.Spec : Prop :=
  ∀ n, P5230186423933587876.a n = A262855 n

end A262855

/-! ## A262855.P13863164143851242627

`xor(A057427(n), A075439(n))`
-/

namespace A262855.P13863164143851242627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A075439 n)

end

end A262855.P13863164143851242627

namespace A262855

/-- `xor(A057427(n), A075439(n))` -/
def P13863164143851242627.Spec : Prop :=
  ∀ n, P13863164143851242627.a n = A262855 n

end A262855

/-! ## A262855.P8894309601039071380

`A267673(A020703(n+1)-1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A262855

/-- `A267673(A020703(n+1)-1)` -/
def P8894309601039071380.Spec : Prop :=
  ∀ n, P8894309601039071380.a n = A262855 n

theorem P8894309601039071380.correct : P8894309601039071380.Spec := by
  intro n
  simp only [A262855]

end A262855

/-! ## A262855.P880815835860416005

`A000007(n)+1-A075439(n)`
-/

namespace A262855.P880815835860416005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A075439 n)

end

end A262855.P880815835860416005

namespace A262855

/-- `A000007(n)+1-A075439(n)` -/
def P880815835860416005.Spec : Prop :=
  ∀ n, P880815835860416005.a n = A262855 n

end A262855

/-! ## A262855.P7163052217474027383

`1-A057427(n*A075439(n))`
-/

namespace A262855.P7163052217474027383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A075439 n).toNat

end

end A262855.P7163052217474027383

namespace A262855

/-- `1-A057427(n*A075439(n))` -/
def P7163052217474027383.Spec : Prop :=
  ∀ n, P7163052217474027383.a n = A262855 n

end A262855

/-! ## A262855.P17290768189653351235

`A075439(a(n-1))-A075439(n)` with `a(0)=1`
-/

namespace A262855.P17290768189653351235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075439 (a (n - 1)).toNat - A075439 n

end

end A262855.P17290768189653351235

namespace A262855

/-- `A075439(a(n-1))-A075439(n)` -/
def P17290768189653351235.Spec : Prop :=
  ∀ n, P17290768189653351235.a n = A262855 n

end A262855

/-! ## A262855.P13325978750374999817

`A267673(A020703(n+2))`
-/

namespace A262855.P13325978750374999817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A020703 (n + 2)).toNat

end

end A262855.P13325978750374999817

namespace A262855

/-- `A267673(A020703(n+2))` -/
def P13325978750374999817.Spec : Prop :=
  ∀ n, P13325978750374999817.a n = A262855 n

end A262855

/-! ## A262855.P10906383116954654474

`A267673(A028392(n))`
-/

namespace A262855.P10906383116954654474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A028392 n).toNat

end

end A262855.P10906383116954654474

namespace A262855

/-- `A267673(A028392(n))` -/
def P10906383116954654474.Spec : Prop :=
  ∀ n, P10906383116954654474.a n = A262855 n

end A262855

/-! ## A262855.P1319082391554776059

`A267673(A183570(n))`
-/

namespace A262855.P1319082391554776059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A183570 n).toNat

end

end A262855.P1319082391554776059

namespace A262855

/-- `A267673(A183570(n))` -/
def P1319082391554776059.Spec : Prop :=
  ∀ n, P1319082391554776059.a n = A262855 n

end A262855

/-! ## A262855.P6985603960820583387

`A266754(A094761(n))`
-/

namespace A262855.P6985603960820583387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266754 (A094761 n).toNat

end

end A262855.P6985603960820583387

namespace A262855

/-- `A266754(A094761(n))` -/
def P6985603960820583387.Spec : Prop :=
  ∀ n, P6985603960820583387.a n = A262855 n

end A262855

/-! ## A262855.P17660088094328871517

`A267673(A164514(n+1))`
-/

namespace A262855.P17660088094328871517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A164514 (n + 1)).toNat

end

end A262855.P17660088094328871517

namespace A262855

/-- `A267673(A164514(n+1))` -/
def P17660088094328871517.Spec : Prop :=
  ∀ n, P17660088094328871517.a n = A262855 n

end A262855

/-! ## A262855.P6843232414846936849

`A266754(4*n)`
-/

namespace A262855.P6843232414846936849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266754 (4 * n)

end

end A262855.P6843232414846936849

namespace A262855

/-- `A266754(4*n)` -/
def P6843232414846936849.Spec : Prop :=
  ∀ n, P6843232414846936849.a n = A262855 n

end A262855

/-! ## A262855.P8006408736637097512

`A075439(∑[A075439(n)]²-A075439(n))`
-/

namespace A262855.P8006408736637097512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A075439 n).toNat

end

end A262855.P8006408736637097512

namespace A262855

/-- `A075439(∑[A075439(n)]²-A075439(n))` -/
def P8006408736637097512.Spec : Prop :=
  ∀ n, P8006408736637097512.a n = A262855 n

end A262855

/-! ## A262855.P12992253325248382364

`A070886(A070886(4*n)+n²)`
-/

namespace A262855.P12992253325248382364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A070886 (4 * n) + (n ^ 2 : ℤ)).toNat

end

end A262855.P12992253325248382364

namespace A262855

/-- `A070886(A070886(4*n)+n²)` -/
def P12992253325248382364.Spec : Prop :=
  ∀ n, P12992253325248382364.a n = A262855 n

end A262855

/-! ## A262855.P11392719461345946140

`A075439(A020703(n+1)²-A075439(n))`
-/

namespace A262855.P11392719461345946140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (A020703 (n + 1) ^ 2 - A075439 n).toNat

end

end A262855.P11392719461345946140

namespace A262855

/-- `A075439(A020703(n+1)²-A075439(n))` -/
def P11392719461345946140.Spec : Prop :=
  ∀ n, P11392719461345946140.a n = A262855 n

end A262855

/-!
# A262857: Number of ordered ways to write n as w^3 + 2*x^3 + y^2 + 2*z^2, where w, x, y and z are nonnegative integers.

The programs for A262857, there is no canonical definition to state claims against.
-/

/-! ## A262857.P17032265846070892716

`A333224(A387382(n+1)+A050367(n+1))`
-/

namespace A262857.P17032265846070892716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A387382 (n + 1) + A050367 (n + 1)).toNat

end

end A262857.P17032265846070892716

/-!
# A262859: Binary representation of the n-th iteration of the "Rule 145" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262859, there is no canonical definition to state claims against.
-/

/-! ## A262859.P3022787834988129864

`A007088(A262860(n))`
-/

namespace A262859.P3022787834988129864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A262860 n).toNat

end

end A262859.P3022787834988129864

/-! ## A262859.P9565593499006122874

`A185544(2*A262860(n))`
-/

namespace A262859.P9565593499006122874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A262860 n).toNat

end

end A262859.P9565593499006122874

/-! ## A262859.P7860487222241719743

`A185544(lcm(2, A262860(n)))`
-/

namespace A262859.P7860487222241719743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A262860 n))

end

end A262859.P7860487222241719743

/-! ## A262859.P7348233508342702947

`A185544(A262860(n)+A262860(n))`
-/

namespace A262859.P7348233508342702947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A262860 n + A262860 n).toNat

end

end A262859.P7348233508342702947

/-!
# A262860: Decimal representation of the n-th iteration of the "Rule 145" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262860, there is no canonical definition to state claims against.
-/

/-! ## A262860.P16949845717315133422

`A030101(A267450(n)/A054576(n+1))`
-/

namespace A262860.P16949845717315133422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A267450 n : ℚ) / (A054576 (n + 1) : ℚ))).toNat

end

end A262860.P16949845717315133422

/-! ## A262860.P5072729928811499815

`A030101(A267450(n)/A082061(n+1))`
-/

namespace A262860.P5072729928811499815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A267450 n : ℚ) / (A082061 (n + 1) : ℚ))).toNat

end

end A262860.P5072729928811499815

/-! ## A262860.P8876009469383548695

`A030101(A267450(n))`
-/

namespace A262860.P8876009469383548695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A267450 n).toNat

end

end A262860.P8876009469383548695

/-!
# A262861: Binary representation of the n-th iteration of the "Rule 147" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262861, there is no canonical definition to state claims against.
-/

/-! ## A262861.P5747835320284122451

`A342040(A283216(n))`
-/

namespace A262861.P5747835320284122451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342040 (A283216 n).toNat

end

end A262861.P5747835320284122451

/-! ## A262861.P1510992173673002202

`A007088(A262862(n))`
-/

namespace A262861.P1510992173673002202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A262862 n).toNat

end

end A262861.P1510992173673002202

/-! ## A262861.P11374614634558828596

`A007088(A267926(n)-2*A015521(n))`
-/

namespace A262861.P11374614634558828596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267926 n - 2 * A015521 n).toNat

end

end A262861.P11374614634558828596

/-! ## A262861.P5171044375122828636

`A007088(and(A126646(2*n), A283217(3*n+4)))`
-/

namespace A262861.P5171044375122828636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 (2 * n)) (A283217 (3 * n + 4))).toNat

end

end A262861.P5171044375122828636

/-!
# A262862: Decimal representation of the n-th iteration of the "Rule 147" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262862, the canonical program `A262862.P14418862743875080538` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262862 has offset 0).

The definition of A262862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262862.P14418862743875080538

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=93`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262862

/-- `17*a(n-2)-16*a(n-4)` -/
def P14418862743875080538.Spec : Prop :=
  ∀ n, P14418862743875080538.a n = A262862 n

theorem P14418862743875080538.correct : P14418862743875080538.Spec := by
  intro n
  simp only [A262862]

end A262862

/-! ## A262862.P13282685053371551437

`A007909(A014601(n))+A000975(2*n)`
-/

namespace A262862.P13282685053371551437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (A014601 n).toNat + A000975 (2 * n)

end

end A262862.P13282685053371551437

namespace A262862

/-- `A007909(A014601(n))+A000975(2*n)` -/
def P13282685053371551437.Spec : Prop :=
  ∀ n, P13282685053371551437.a n = A262862 n

end A262862

/-! ## A262862.P2783756949641508034

`A007583(n)+A000034(n)*A037481(n)`
-/

namespace A262862.P2783756949641508034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n + A000034 n * A037481 n

end

end A262862.P2783756949641508034

namespace A262862

/-- `A007583(n)+A000034(n)*A037481(n)` -/
def P2783756949641508034.Spec : Prop :=
  ∀ n, P2783756949641508034.a n = A262862 n

end A262862

/-! ## A262862.P17082795350775455016

`A267926(n)-2*A015521(n)`
-/

namespace A262862.P17082795350775455016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267926 n - 2 * A015521 n

end

end A262862.P17082795350775455016

namespace A262862

/-- `A267926(n)-2*A015521(n)` -/
def P17082795350775455016.Spec : Prop :=
  ∀ n, P17082795350775455016.a n = A262862 n

end A262862

/-! ## A262862.P10188419827251796371

`record[A118173(n)%Δ[A118173(n)]]`
-/

namespace A262862.P10188419827251796371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118173 n) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262862.P10188419827251796371

namespace A262862

/-- `record[A118173(n)%Δ[A118173(n)]]` -/
def P10188419827251796371.Spec : Prop :=
  ∀ n, P10188419827251796371.a n = A262862 n

end A262862

/-!
# A262863: Binary representation of the middle column of the "Rule 147" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262863, the canonical program `A262863.P6679284059625653501` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262863 has offset 0).

The definition of A262863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262863.P6679284059625653501

`A267623(n)-a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262863

/-- `A267623(n)-a(n-2)` -/
def P6679284059625653501.Spec : Prop :=
  ∀ n, P6679284059625653501.a n = A262863 n

theorem P6679284059625653501.correct : P6679284059625653501.Spec := by
  intro n
  simp only [A262863]

end A262863

/-! ## A262863.P15028105852215329623

`or(10*a(n-1), Δ[A004525(n)])` with `a(0)=1`
-/

namespace A262863.P15028105852215329623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A262863.P15028105852215329623

namespace A262863

/-- `or(10*a(n-1), Δ[A004525(n)])` -/
def P15028105852215329623.Spec : Prop :=
  ∀ n, P15028105852215329623.a n = A262863 n

end A262863

/-! ## A262863.P8432705620140843075

`or(10*a(n-1), char[A014601(n)])` with `a(0)=1`
-/

namespace A262863.P8432705620140843075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A262863.P8432705620140843075

namespace A262863

/-- `or(10*a(n-1), char[A014601(n)])` -/
def P8432705620140843075.Spec : Prop :=
  ∀ n, (P8432705620140843075.a n : ℤ) = A262863 n

end A262863

/-! ## A262863.P3123757292257762782

`or(10*a(n-1), A059841(A000217(n)))` with `a(0)=1`
-/

namespace A262863.P3123757292257762782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A059841 (A000217 n).toNat)

end

end A262863.P3123757292257762782

namespace A262863

/-- `or(10*a(n-1), A059841(A000217(n)))` -/
def P3123757292257762782.Spec : Prop :=
  ∀ n, P3123757292257762782.a n = A262863 n

end A262863

/-! ## A262863.P9706006759306919118

`xor(10*a(n-1), A000035(A000124(n)))` with `a(0)=1`
-/

namespace A262863.P9706006759306919118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A000035 (A000124 n).toNat)

end

end A262863.P9706006759306919118

namespace A262863

/-- `xor(10*a(n-1), A000035(A000124(n)))` -/
def P9706006759306919118.Spec : Prop :=
  ∀ n, P9706006759306919118.a n = A262863 n

end A262863

/-!
# A262864: Decimal representation of the middle column of the "Rule 147" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262864, the canonical program `A262864.P12534188343390947826` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262864 has offset 0).

The definition of A262864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262864.P12534188343390947826

`3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262864

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` -/
def P12534188343390947826.Spec : Prop :=
  ∀ n, P12534188343390947826.a n = A262864 n

theorem P12534188343390947826.correct : P12534188343390947826.Spec := by
  intro n
  simp only [A262864]

end A262864

/-! ## A262864.P14578393341355896894

`floor(6*2^n/5)`
-/

namespace A262864.P14578393341355896894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * 2 ^ n : ℚ) / 5⌋

end

end A262864.P14578393341355896894

namespace A262864

/-- `floor(6*2^n/5)` -/
def P14578393341355896894.Spec : Prop :=
  ∀ n, P14578393341355896894.a n = A262864 n

end A262864

/-! ## A262864.P12665459331373134033

`ogf((1-x+x^2)/(1-3x+3x^2-3x^3+2x^4))`
-/

namespace A262864.P12665459331373134033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 3, -3, 2] n

end

end A262864.P12665459331373134033

namespace A262864

/-- `ogf((1-x+x^2)/(1-3x+3x^2-3x^3+2x^4))` -/
def P12665459331373134033.Spec : Prop :=
  ∀ n, P12665459331373134033.a n = A262864 n

end A262864

/-! ## A262864.P15177502703081840132

`floor(a(n-1)/3)+2^n` with `a(0)=1`
-/

namespace A262864.P15177502703081840132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / 3⌋ + (2 ^ n : ℤ)

end

end A262864.P15177502703081840132

namespace A262864

/-- `floor(a(n-1)/3)+2^n` -/
def P15177502703081840132.Spec : Prop :=
  ∀ n, P15177502703081840132.a n = A262864 n

end A262864

/-! ## A262864.P17482469100239825404

`a(n-1)+round(3*2^n/5)` with `a(0)=1`
-/

namespace A262864.P17482469100239825404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (3 * ((2 ^ n : ℚ) / 5))

end

end A262864.P17482469100239825404

namespace A262864

/-- `a(n-1)+round(3*2^n/5)` -/
def P17482469100239825404.Spec : Prop :=
  ∀ n, P17482469100239825404.a n = A262864 n

end A262864

/-! ## A262864.P18239726978980880242

`xor(1, and(1, ∑[n])+2*a(n-1))` with `a(0)=1`
-/

namespace A262864.P18239726978980880242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * a (n - 1))

end

end A262864.P18239726978980880242

namespace A262864

/-- `xor(1, and(1, ∑[n])+2*a(n-1))` -/
def P18239726978980880242.Spec : Prop :=
  ∀ n, (P18239726978980880242.a n : ℤ) = A262864 n

end A262864

/-! ## A262864.P4190007975786585000

`(a(n-1)+n)%2+2*a(n-1)` with `a(0)=1`
-/

namespace A262864.P4190007975786585000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) % 2 + 2 * a (n - 1)

end

end A262864.P4190007975786585000

namespace A262864

/-- `(a(n-1)+n)%2+2*a(n-1)` -/
def P4190007975786585000.Spec : Prop :=
  ∀ n, (P4190007975786585000.a n : ℤ) = A262864 n

end A262864

/-! ## A262864.P12287878718752530806

`2*a(n-1)-(n-a(n-1))%2` with `a(0)=1`
-/

namespace A262864.P12287878718752530806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - Int.tmod ((n : ℤ) - a (n - 1)) 2

end

end A262864.P12287878718752530806

namespace A262864

/-- `2*a(n-1)-(n-a(n-1))%2` -/
def P12287878718752530806.Spec : Prop :=
  ∀ n, P12287878718752530806.a n = A262864 n

end A262864

/-! ## A262864.P7157056962046582853

`2*a(n-1)+gcd(2, a(n-2))-1` with `a(0)=1, a(1)=2`
-/

namespace A262864.P7157056962046582853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + ((Int.gcd 2 (a (n - 2)) : ℤ) - 1)

end

end A262864.P7157056962046582853

namespace A262864

/-- `2*a(n-1)+gcd(2, a(n-2))-1` -/
def P7157056962046582853.Spec : Prop :=
  ∀ n, P7157056962046582853.a n = A262864 n

end A262864

/-! ## A262864.P8448410641196130971

`a(n-1)-2*floor((n-a(n-1))/2)+n` with `a(0)=1`
-/

namespace A262864.P8448410641196130971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 * ⌊((n : ℤ) - a (n - 1) : ℚ) / 2⌋ + (n : ℤ)

end

end A262864.P8448410641196130971

namespace A262864

/-- `a(n-1)-2*floor((n-a(n-1))/2)+n` -/
def P8448410641196130971.Spec : Prop :=
  ∀ n, P8448410641196130971.a n = A262864 n

end A262864

/-! ## A262864.P7185577911741063149

`∑[A016029(n+1)]`
-/

namespace A262864.P7185577911741063149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262864.P7185577911741063149

namespace A262864

/-- `∑[A016029(n+1)]` -/
def P7185577911741063149.Spec : Prop :=
  ∀ n, P7185577911741063149.a n = A262864 n

end A262864

/-! ## A262864.P16652329619020324260

`∑[A100088(n+1)/2]`
-/

namespace A262864.P16652329619020324260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100088 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262864.P16652329619020324260

namespace A262864

/-- `∑[A100088(n+1)/2]` -/
def P16652329619020324260.Spec : Prop :=
  ∀ n, P16652329619020324260.a n = (A262864 n : ℚ)

end A262864

/-! ## A262864.P16678710399423042525

`A083329(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A262864.P16678710399423042525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A083329 n - a (n - 2)

end

end A262864.P16678710399423042525

namespace A262864

/-- `A083329(n)-a(n-2)` -/
def P16678710399423042525.Spec : Prop :=
  ∀ n, P16678710399423042525.a n = A262864 n

end A262864

/-! ## A262864.P16780705102637865030

`xor(a(n-2), A266550(n+2))` with `a(0)=1, a(1)=2`
-/

namespace A262864.P16780705102637865030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (a (n - 2)) (A266550 (n + 2))

end

end A262864.P16780705102637865030

namespace A262864

/-- `xor(a(n-2), A266550(n+2))` -/
def P16780705102637865030.Spec : Prop :=
  ∀ n, P16780705102637865030.a n = A262864 n

end A262864

/-! ## A262864.P18136988587047949207

`A028242(n)%2+2*a(n-1)` with `a(0)=1`
-/

namespace A262864.P18136988587047949207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A028242 n) 2 + 2 * a (n - 1)

end

end A262864.P18136988587047949207

namespace A262864

/-- `A028242(n)%2+2*a(n-1)` -/
def P18136988587047949207.Spec : Prop :=
  ∀ n, P18136988587047949207.a n = A262864 n

end A262864

/-! ## A262864.P12346151834004843856

`A000045(and(2, n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A262864.P12346151834004843856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (Int.land 2 ((n : ℤ) - 1)).toNat + 2 * a (n - 1)

end

end A262864.P12346151834004843856

namespace A262864

/-- `A000045(and(2, n-1))+2*a(n-1)` -/
def P12346151834004843856.Spec : Prop :=
  ∀ n, P12346151834004843856.a n = A262864 n

end A262864

/-! ## A262864.P8894176574786277326

`A115451(n)+A000975(n)`
-/

namespace A262864.P8894176574786277326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 n + A000975 n

end

end A262864.P8894176574786277326

namespace A262864

/-- `A115451(n)+A000975(n)` -/
def P8894176574786277326.Spec : Prop :=
  ∀ n, P8894176574786277326.a n = A262864 n

end A262864

/-! ## A262864.P2051909407336010986

`xor(A000975(n), A077854(n))`
-/

namespace A262864.P2051909407336010986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A077854 n)

end

end A262864.P2051909407336010986

namespace A262864

/-- `xor(A000975(n), A077854(n))` -/
def P2051909407336010986.Spec : Prop :=
  ∀ n, P2051909407336010986.a n = A262864 n

end A262864

/-! ## A262864.P8932766699941849387

`xor(A000225(n), A151754(n+1))`
-/

namespace A262864.P8932766699941849387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A151754 (n + 1))

end

end A262864.P8932766699941849387

namespace A262864

/-- `xor(A000225(n), A151754(n+1))` -/
def P8932766699941849387.Spec : Prop :=
  ∀ n, P8932766699941849387.a n = A262864 n

end A262864

/-! ## A262864.P5555346712296807436

`∑[A007910(n+1)-A000079(n)]`
-/

namespace A262864.P5555346712296807436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262864.P5555346712296807436

namespace A262864

/-- `∑[A007910(n+1)-A000079(n)]` -/
def P5555346712296807436.Spec : Prop :=
  ∀ n, P5555346712296807436.a n = A262864 n

end A262864

/-!
# A262865: Binary representation of the n-th iteration of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262865, there is no canonical definition to state claims against.
-/

/-! ## A262865.P4037578643562456303

`A007088(A262866(n))`
-/

namespace A262865.P4037578643562456303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A262866 n).toNat

end

end A262865.P4037578643562456303

/-! ## A262865.P17336940002883808088

`A185544(2*A262866(n))`
-/

namespace A262865.P17336940002883808088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A262866 n).toNat

end

end A262865.P17336940002883808088

/-! ## A262865.P4006764261477255190

`A185544(lcm(2, A262866(n)))`
-/

namespace A262865.P4006764261477255190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A262866 n))

end

end A262865.P4006764261477255190

/-! ## A262865.P1493474618209029442

`A305989(∏{p}[A267675(n), #])`
-/

namespace A262865.P1493474618209029442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A262865.P1493474618209029442

/-!
# A262866: Decimal representation of the n-th iteration of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262866, the canonical program `A262866.P18281721116564885018` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262866 has offset 0).

The definition of A262866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262866.P18281721116564885018

`A290682(A004277(n))-A001317(n)*A016116(2*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262866

/-- `A290682(A004277(n))-A001317(n)*A016116(2*n)` -/
def P18281721116564885018.Spec : Prop :=
  ∀ n, P18281721116564885018.a n = A262866 n

theorem P18281721116564885018.correct : P18281721116564885018.Spec := by
  intro n
  simp only [A262866]

end A262866

/-! ## A262866.P8930947664265690512

`A030101(∏{p}[A267675(n), #])`
-/

namespace A262866.P8930947664265690512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A262866.P8930947664265690512

namespace A262866

/-- `A030101(∏{p}[A267675(n), #])` -/
def P8930947664265690512.Spec : Prop :=
  ∀ n, P8930947664265690512.a n = A262866 n

end A262866

/-! ## A262866.P12602003099659299323

`A325401(∏{p}[A267675(n), #])`
-/

namespace A262866.P12602003099659299323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A262866.P12602003099659299323

namespace A262866

/-- `A325401(∏{p}[A267675(n), #])` -/
def P12602003099659299323.Spec : Prop :=
  ∀ n, P12602003099659299323.a n = A262866 n

end A262866

/-!
# A262867: Total number of ON (black) cells after n iterations of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262867, the canonical program `A262867.P11260331152945562372` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262867 has offset 0).

The definition of A262867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262867.P13243262525626231049

`∑[1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n+n]+1`
-/

namespace A262867.P13243262525626231049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) + (n : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262867.P13243262525626231049

namespace A262867

/-- `∑[1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n+n]+1` -/
def P13243262525626231049.Spec : Prop :=
  ∀ n, P13243262525626231049.a n = (A262867 n : ℚ)

end A262867

/-! ## A262867.P11260331152945562372

`A171378(n)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262867

/-- `A171378(n)+1` -/
def P11260331152945562372.Spec : Prop :=
  ∀ n, P11260331152945562372.a n = A262867 n

theorem P11260331152945562372.correct : P11260331152945562372.Spec := by
  intro n
  simp only [A262867]

end A262867

/-! ## A262867.P11446313756976762365

`∑[A071042(n)]+1`
-/

namespace A262867.P11446313756976762365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262867.P11446313756976762365

namespace A262867

/-- `∑[A071042(n)]+1` -/
def P11446313756976762365.Spec : Prop :=
  ∀ n, P11446313756976762365.a n = A262867 n

end A262867

/-! ## A262867.P16038931083784748288

`∑[A048967(n)+n]+1`
-/

namespace A262867.P16038931083784748288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262867.P16038931083784748288

namespace A262867

/-- `∑[A048967(n)+n]+1` -/
def P16038931083784748288.Spec : Prop :=
  ∀ n, P16038931083784748288.a n = A262867 n

end A262867

/-! ## A262867.P4012277306863239262

`∑[n]+A051679(n)+1`
-/

namespace A262867.P4012277306863239262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A051679 n + 1)

end

end A262867.P4012277306863239262

namespace A262867

/-- `∑[n]+A051679(n)+1` -/
def P4012277306863239262.Spec : Prop :=
  ∀ n, P4012277306863239262.a n = A262867 n

end A262867

/-! ## A262867.P15018691207987713770

`(n+1)²-2*A193494(n)`
-/

namespace A262867.P15018691207987713770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A193494 n

end

end A262867.P15018691207987713770

namespace A262867

/-- `(n+1)²-2*A193494(n)` -/
def P15018691207987713770.Spec : Prop :=
  ∀ n, P15018691207987713770.a n = A262867 n

end A262867

/-! ## A262867.P11308252798918890313

`∑[Δ[n²]-A001316(n)]+1`
-/

namespace A262867.P11308252798918890313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262867.P11308252798918890313

namespace A262867

/-- `∑[Δ[n²]-A001316(n)]+1` -/
def P11308252798918890313.Spec : Prop :=
  ∀ n, P11308252798918890313.a n = A262867 n

end A262867

/-! ## A262867.P580505699503657829

`(n+1)²+1-A006046(n+1)`
-/

namespace A262867.P580505699503657829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (1 - A006046 (n + 1))

end

end A262867.P580505699503657829

namespace A262867

/-- `(n+1)²+1-A006046(n+1)` -/
def P580505699503657829.Spec : Prop :=
  ∀ n, P580505699503657829.a n = A262867 n

end A262867

/-! ## A262867.P2091459854255599851

`(n+1)²+1-∑[2^A000120(n)]`
-/

namespace A262867.P2091459854255599851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262867.P2091459854255599851

namespace A262867

/-- `(n+1)²+1-∑[2^A000120(n)]` -/
def P2091459854255599851.Spec : Prop :=
  ∀ n, P2091459854255599851.a n = (A262867 n : ℚ)

end A262867

/-! ## A262867.P15436798856266107611

`A051679(n)+A000124(n)`
-/

namespace A262867.P15436798856266107611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051679 n + A000124 n

end

end A262867.P15436798856266107611

namespace A262867

/-- `A051679(n)+A000124(n)` -/
def P15436798856266107611.Spec : Prop :=
  ∀ n, P15436798856266107611.a n = A262867 n

end A262867

/-! ## A262867.P15697950560497945917

`A267583(n)-A038573(n)`
-/

namespace A262867.P15697950560497945917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267583 n - A038573 n

end

end A262867.P15697950560497945917

namespace A262867

/-- `A267583(n)-A038573(n)` -/
def P15697950560497945917.Spec : Prop :=
  ∀ n, P15697950560497945917.a n = A262867 n

end A262867

/-! ## A262867.P12785677682426538214

`A267583(n)+1-A001316(n)`
-/

namespace A262867.P12785677682426538214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267583 n + (1 - A001316 n)

end

end A262867.P12785677682426538214

namespace A262867

/-- `A267583(n)+1-A001316(n)` -/
def P12785677682426538214.Spec : Prop :=
  ∀ n, P12785677682426538214.a n = A262867 n

end A262867

/-! ## A262867.P4727556347095708538

`A002378(n)+1-A267700(n)`
-/

namespace A262867.P4727556347095708538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (1 - A267700 n)

end

end A262867.P4727556347095708538

namespace A262867

/-- `A002378(n)+1-A267700(n)` -/
def P4727556347095708538.Spec : Prop :=
  ∀ n, P4727556347095708538.a n = A262867 n

end A262867

/-! ## A262867.P12445541942043833351

`n²-∑[A000918(A000120(n))]`
-/

namespace A262867.P12445541942043833351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262867.P12445541942043833351

namespace A262867

/-- `n²-∑[A000918(A000120(n))]` -/
def P12445541942043833351.Spec : Prop :=
  ∀ n, P12445541942043833351.a n = A262867 n

end A262867

/-! ## A262867.P3691454046853288888

`∑[A004277(n)+1-A001316(n)]`
-/

namespace A262867.P3691454046853288888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (1 - A001316 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262867.P3691454046853288888

namespace A262867

/-- `∑[A004277(n)+1-A001316(n)]` -/
def P3691454046853288888.Spec : Prop :=
  ∀ n, P3691454046853288888.a n = A262867 n

end A262867

/-! ## A262867.P8901043790321032160

`∑[A004273(n)+1-A038573(n)]`
-/

namespace A262867.P8901043790321032160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (1 - A038573 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262867.P8901043790321032160

namespace A262867

/-- `∑[A004273(n)+1-A038573(n)]` -/
def P8901043790321032160.Spec : Prop :=
  ∀ n, P8901043790321032160.a n = A262867 n

end A262867

/-! ## A262867.P1563610830534192332

`∑[A004273(n)+2-A001316(n)]`
-/

namespace A262867.P1563610830534192332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (2 - A001316 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262867.P1563610830534192332

namespace A262867

/-- `∑[A004273(n)+2-A001316(n)]` -/
def P1563610830534192332.Spec : Prop :=
  ∀ n, P1563610830534192332.a n = A262867 n

end A262867

/-! ## A262867.P14625442131609032921

`∑[A005408(n)-A038573(n)]-n`
-/

namespace A262867.P14625442131609032921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A262867.P14625442131609032921

namespace A262867

/-- `∑[A005408(n)-A038573(n)]-n` -/
def P14625442131609032921.Spec : Prop :=
  ∀ n, P14625442131609032921.a n = A262867 n

end A262867

/-! ## A262867.P16803078671354035529

`A267583(n+1)-2*(n+1)`
-/

namespace A262867.P16803078671354035529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267583 (n + 1) - (2 * (n + 1) : ℤ)

end

end A262867.P16803078671354035529

namespace A262867

/-- `A267583(n+1)-2*(n+1)` -/
def P16803078671354035529.Spec : Prop :=
  ∀ n, P16803078671354035529.a n = A262867 n

end A262867

/-! ## A262867.P5244365621516724990

`∑[A267582(n+1)]-(2*n+1)`
-/

namespace A262867.P5244365621516724990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A262867.P5244365621516724990

namespace A262867

/-- `∑[A267582(n+1)]-(2*n+1)` -/
def P5244365621516724990.Spec : Prop :=
  ∀ n, P5244365621516724990.a n = A262867 n

end A262867

/-!
# A262868: Number of squarefree numbers appearing among the larger parts of the partitions of n into two parts.

The programs for A262868, the canonical program `A262868.P4949295510980563824` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262868 has offset 1).

The definition of A262868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262868.P604066519933156926

`A262991(n+1)-A262869(n+1)`
-/

namespace A262868.P604066519933156926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - A262869 (n + 1)

end

end A262868.P604066519933156926

namespace A262868

/-- `A262991(n+1)-A262869(n+1)` -/
def P604066519933156926.Spec : Prop :=
  ∀ n, P604066519933156926.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P7655017793496243561

`A110654(n)-A294235(n+1)`
-/

namespace A262868.P7655017793496243561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A294235 (n + 1)

end

end A262868.P7655017793496243561

namespace A262868

/-- `A110654(n)-A294235(n+1)` -/
def P7655017793496243561.Spec : Prop :=
  ∀ n, P7655017793496243561.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P11466241835263665408

`A294233(n+1)+A071068(n+1)`
-/

namespace A262868.P11466241835263665408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (n + 1) + A071068 (n + 1)

end

end A262868.P11466241835263665408

namespace A262868

/-- `A294233(n+1)+A071068(n+1)` -/
def P11466241835263665408.Spec : Prop :=
  ∀ n, P11466241835263665408.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P1556271274747356941

`A351833(n+1)-A294232(n+1)`
-/

namespace A262868.P1556271274747356941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (n + 1) - A294232 (n + 1)

end

end A262868.P1556271274747356941

namespace A262868

/-- `A351833(n+1)-A294232(n+1)` -/
def P1556271274747356941.Spec : Prop :=
  ∀ n, P1556271274747356941.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P15115537594150850671

`A013928(n+1)-A013928(floor(n/2)+1)`
-/

namespace A262868.P15115537594150850671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A013928 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A262868.P15115537594150850671

namespace A262868

/-- `A013928(n+1)-A013928(floor(n/2)+1)` -/
def P15115537594150850671.Spec : Prop :=
  ∀ n, P15115537594150850671.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P10884345513864257269

`A107079(n+1)-A107079(∑[and(1, n+1)])`
-/

namespace A262868.P10884345513864257269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A107079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262868.P10884345513864257269

namespace A262868

/-- `A107079(n+1)-A107079(∑[and(1, n+1)])` -/
def P10884345513864257269.Spec : Prop :=
  ∀ n, P10884345513864257269.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P15747852648046122659

`A107079(n+1)-A107079(A008619(n))`
-/

namespace A262868.P15747852648046122659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A107079 (A008619 n).toNat

end

end A262868.P15747852648046122659

namespace A262868

/-- `A107079(n+1)-A107079(A008619(n))` -/
def P15747852648046122659.Spec : Prop :=
  ∀ n, P15747852648046122659.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P10144820326744284386

`abs(A013928(n+1)-A013928(A008619(n)))`
-/

namespace A262868.P10144820326744284386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013928 (n + 1) - A013928 (A008619 n).toNat|

end

end A262868.P10144820326744284386

namespace A262868

/-- `abs(A013928(n+1)-A013928(A008619(n)))` -/
def P10144820326744284386.Spec : Prop :=
  ∀ n, P10144820326744284386.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P5397868100478073600

`A107079(n+1)-A107079(∑[A059841(n)])`
-/

namespace A262868.P5397868100478073600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A107079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262868.P5397868100478073600

namespace A262868

/-- `A107079(n+1)-A107079(∑[A059841(n)])` -/
def P5397868100478073600.Spec : Prop :=
  ∀ n, P5397868100478073600.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P4949295510980563824

`A110654(n)-∑[A000035(n-A007431(n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262868

/-- `A110654(n)-∑[A000035(n-A007431(n))]` -/
def P4949295510980563824.Spec : Prop :=
  ∀ n, P4949295510980563824.a n = A262868 (n + 1)

theorem P4949295510980563824.correct : P4949295510980563824.Spec := by
  intro n
  simp only [A262868, Nat.add_sub_cancel]

end A262868

/-! ## A262868.P5501187670293418456

`A107079(n+1)-A107079(A004526(n)+1)`
-/

namespace A262868.P5501187670293418456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A107079 (A004526 n + 1).toNat

end

end A262868.P5501187670293418456

namespace A262868

/-- `A107079(n+1)-A107079(A004526(n)+1)` -/
def P5501187670293418456.Spec : Prop :=
  ∀ n, P5501187670293418456.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P18336625900079984165

`A262991(n+1)-(A294232(n+1)+A071068(n+1))`
-/

namespace A262868.P18336625900079984165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - (A294232 (n + 1) + A071068 (n + 1))

end

end A262868.P18336625900079984165

namespace A262868

/-- `A262991(n+1)-(A294232(n+1)+A071068(n+1))` -/
def P18336625900079984165.Spec : Prop :=
  ∀ n, P18336625900079984165.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P8945356638005033309

`A071068(n+1)+A294101(n+1)-A294232(n+1)`
-/

namespace A262868.P8945356638005033309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (n + 1) + (A294101 (n + 1) - A294232 (n + 1))

end

end A262868.P8945356638005033309

namespace A262868

/-- `A071068(n+1)+A294101(n+1)-A294232(n+1)` -/
def P8945356638005033309.Spec : Prop :=
  ∀ n, P8945356638005033309.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P4612636770984278123

`A262991(n+1)+A294060(n+1)-A294060(n+2)`
-/

namespace A262868.P4612636770984278123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) + (A294060 (n + 1) - A294060 (n + 2))

end

end A262868.P4612636770984278123

namespace A262868

/-- `A262991(n+1)+A294060(n+1)-A294060(n+2)` -/
def P4612636770984278123.Spec : Prop :=
  ∀ n, P4612636770984278123.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P6442963560089943047

`A262991(n+1)+A294146(n+1)-A294283(n+2)`
-/

namespace A262868.P6442963560089943047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) + (A294146 (n + 1) - A294283 (n + 2))

end

end A262868.P6442963560089943047

namespace A262868

/-- `A262991(n+1)+A294146(n+1)-A294283(n+2)` -/
def P6442963560089943047.Spec : Prop :=
  ∀ n, P6442963560089943047.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P16999513176202826278

`A262869(2*n+1)-A262869(A028310(n))`
-/

namespace A262868.P16999513176202826278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A262869 (A028310 n).toNat

end

end A262868.P16999513176202826278

namespace A262868

/-- `A262869(2*n+1)-A262869(A028310(n))` -/
def P16999513176202826278.Spec : Prop :=
  ∀ n, P16999513176202826278.a n = A262868 (n + 1)

end A262868

/-! ## A262868.P3447204090477863661

`A262869(2*n+1)-A262869(A004525(2*n+1))`
-/

namespace A262868.P3447204090477863661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A262869 (A004525 (2 * n + 1)).toNat

end

end A262868.P3447204090477863661

namespace A262868

/-- `A262869(2*n+1)-A262869(A004525(2*n+1))` -/
def P3447204090477863661.Spec : Prop :=
  ∀ n, P3447204090477863661.a n = A262868 (n + 1)

end A262868

/-!
# A262869: Number of squarefree numbers appearing among the smaller parts of the partitions of n into two parts.

The programs for A262869, the canonical program `A262869.P10644154218626239048` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262869 has offset 1).

The definition of A262869 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262869.P10644154218626239048

`A013928(floor((n+1)/2)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262869

/-- `A013928(floor((n+1)/2)+1)` -/
def P10644154218626239048.Spec : Prop :=
  ∀ n, P10644154218626239048.a n = A262869 (n + 1)

theorem P10644154218626239048.correct : P10644154218626239048.Spec := by
  intro n
  simp only [A262869, Nat.add_sub_cancel]

end A262869

/-! ## A262869.P17835964491310865955

`A262991(n+1)-A262868(n+1)`
-/

namespace A262869.P17835964491310865955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - A262868 (n + 1)

end

end A262869.P17835964491310865955

namespace A262869

/-- `A262991(n+1)-A262868(n+1)` -/
def P17835964491310865955.Spec : Prop :=
  ∀ n, P17835964491310865955.a n = A262869 (n + 1)

end A262869

/-! ## A262869.P555435340643038057

`∑[char[2*∏{p}[n, #]-1]]`
-/

namespace A262869.P555435340643038057
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P555435340643038057

namespace A262869

/-- `∑[char[2*∏{p}[n, #]-1]]` -/
def P555435340643038057.Spec : Prop :=
  ∀ n, (P555435340643038057.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P5430496451613933888

`∑[char[record[∏{p}[n+1, #]+n]]]`
-/

namespace A262869.P5430496451613933888
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P5430496451613933888

namespace A262869

/-- `∑[char[record[∏{p}[n+1, #]+n]]]` -/
def P5430496451613933888.Spec : Prop :=
  ∀ n, (P5430496451613933888.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P3061593009990012148

`∑[C(val(n+1, 2), ∏{e}[n+1, #!])]`
-/

namespace A262869.P3061593009990012148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P3061593009990012148

namespace A262869

/-- `∑[C(val(n+1, 2), ∏{e}[n+1, #!])]` -/
def P3061593009990012148.Spec : Prop :=
  ∀ n, (P3061593009990012148.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P8258872300840566064

`∑[C(val(n+1, 2)%3, ∏{e}[n+1, #])]`
-/

namespace A262869.P8258872300840566064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2 % 3) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P8258872300840566064

namespace A262869

/-- `∑[C(val(n+1, 2)%3, ∏{e}[n+1, #])]` -/
def P8258872300840566064.Spec : Prop :=
  ∀ n, (P8258872300840566064.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P1770595419628870104

`∑[char[∏{p}[n+1, #]+∏{p}[n+1, #]-1]]`
-/

namespace A262869.P1770595419628870104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) + (((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P1770595419628870104

namespace A262869

/-- `∑[char[∏{p}[n+1, #]+∏{p}[n+1, #]-1]]` -/
def P1770595419628870104.Spec : Prop :=
  ∀ n, (P1770595419628870104.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P9182017424174059613

`∑[A098235(n+1)%2]`
-/

namespace A262869.P9182017424174059613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098235 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P9182017424174059613

namespace A262869

/-- `∑[A098235(n+1)%2]` -/
def P9182017424174059613.Spec : Prop :=
  ∀ n, P9182017424174059613.a n = A262869 (n + 1)

end A262869

/-! ## A262869.P12570185612902560097

`∑[and(1, A333471(n+1))]`
-/

namespace A262869.P12570185612902560097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A333471 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P12570185612902560097

namespace A262869

/-- `∑[and(1, A333471(n+1))]` -/
def P12570185612902560097.Spec : Prop :=
  ∀ n, P12570185612902560097.a n = A262869 (n + 1)

end A262869

/-! ## A262869.P16598756233519862732

`∑[char[A064549(n+1)-n²]]`
-/

namespace A262869.P16598756233519862732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) - (n ^ 2 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P16598756233519862732

namespace A262869

/-- `∑[char[A064549(n+1)-n²]]` -/
def P16598756233519862732.Spec : Prop :=
  ∀ n, (P16598756233519862732.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P4334657871501742028

`∑[char[A087320(n+1)-n²]]`
-/

namespace A262869.P4334657871501742028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (n + 1) - (n ^ 2 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P4334657871501742028

namespace A262869

/-- `∑[char[A087320(n+1)-n²]]` -/
def P4334657871501742028.Spec : Prop :=
  ∀ n, (P4334657871501742028.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P12411763861584079195

`∑[char[A197863(n+1)-n²]]`
-/

namespace A262869.P12411763861584079195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197863 (n + 1) - (n ^ 2 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P12411763861584079195

namespace A262869

/-- `∑[char[A197863(n+1)-n²]]` -/
def P12411763861584079195.Spec : Prop :=
  ∀ n, (P12411763861584079195.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P16570682177683080315

`∑[char[2*A005117(n+1)-1]]`
-/

namespace A262869.P16570682177683080315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P16570682177683080315

namespace A262869

/-- `∑[char[2*A005117(n+1)-1]]` -/
def P16570682177683080315.Spec : Prop :=
  ∀ n, (P16570682177683080315.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P9800616260713926493

`∑[char[2*A007913(n+1)-1]]`
-/

namespace A262869.P9800616260713926493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007913 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P9800616260713926493

namespace A262869

/-- `∑[char[2*A007913(n+1)-1]]` -/
def P9800616260713926493.Spec : Prop :=
  ∀ n, (P9800616260713926493.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P18351063095405433905

`∑[char[2*A007947(n+1)-1]]`
-/

namespace A262869.P18351063095405433905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P18351063095405433905

namespace A262869

/-- `∑[char[2*A007947(n+1)-1]]` -/
def P18351063095405433905.Spec : Prop :=
  ∀ n, (P18351063095405433905.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P10548787076625691079

`∑[char[2*A083346(n+1)-1]]`
-/

namespace A262869.P10548787076625691079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083346 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P10548787076625691079

namespace A262869

/-- `∑[char[2*A083346(n+1)-1]]` -/
def P10548787076625691079.Spec : Prop :=
  ∀ n, (P10548787076625691079.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P17750179515112535390

`∑[char[2*n*A008966(n+1)+1]]`
-/

namespace A262869.P17750179515112535390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A008966 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P17750179515112535390

namespace A262869

/-- `∑[char[2*n*A008966(n+1)+1]]` -/
def P17750179515112535390.Spec : Prop :=
  ∀ n, (P17750179515112535390.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P11013006553965889

`∑[char[2*n*abs(A008683(n+1))+1]]`
-/

namespace A262869.P11013006553965889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * |A008683 (n + 1)| + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P11013006553965889

namespace A262869

/-- `∑[char[2*n*abs(A008683(n+1))+1]]` -/
def P11013006553965889.Spec : Prop :=
  ∀ n, (P11013006553965889.a n : ℤ) = A262869 (n + 1)

end A262869

/-! ## A262869.P15135707278105099671

`a(n-2)+A008683(∑[a(n-2)²])²` with `a(0)=0, a(1)=1`
-/

namespace A262869.P15135707278105099671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A008683 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A262869.P15135707278105099671

namespace A262869

/-- `a(n-2)+A008683(∑[a(n-2)²])²` -/
def P15135707278105099671.Spec : Prop :=
  ∀ n, P15135707278105099671.a n = A262869 (n + 1)

end A262869

/-! ## A262869.P17502442432058062279

`∑[char[A038387(2*(n+1))-1]]`
-/

namespace A262869.P17502442432058062279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (2 * (n + 1)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262869.P17502442432058062279

namespace A262869

/-- `∑[char[A038387(2*(n+1))-1]]` -/
def P17502442432058062279.Spec : Prop :=
  ∀ n, (P17502442432058062279.a n : ℤ) = A262869 (n + 1)

end A262869

/-!
# A262870: Sum of the squarefree numbers appearing among the larger parts of the partitions of n into two parts.

The programs for A262870, the canonical program `A262870.P16818378714008051339` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262870 has offset 1).

The definition of A262870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262870.P17795258549832009199

`A262992(n+1)-A262871(n+1)`
-/

namespace A262870.P17795258549832009199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - A262871 (n + 1)

end

end A262870.P17795258549832009199

namespace A262870

/-- `A262992(n+1)-A262871(n+1)` -/
def P17795258549832009199.Spec : Prop :=
  ∀ n, P17795258549832009199.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P1754527881371192122

`A294145(n+1)+A294061(n+1)`
-/

namespace A262870.P1754527881371192122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (n + 1) + A294061 (n + 1)

end

end A262870.P1754527881371192122

namespace A262870

/-- `A294145(n+1)+A294061(n+1)` -/
def P1754527881371192122.Spec : Prop :=
  ∀ n, P1754527881371192122.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P18385140757103088747

`(n+1)*A262868(n+1)-A294145(n+1)`
-/

namespace A262870.P18385140757103088747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262868 (n + 1) - A294145 (n + 1)

end

end A262870.P18385140757103088747

namespace A262870

/-- `(n+1)*A262868(n+1)-A294145(n+1)` -/
def P18385140757103088747.Spec : Prop :=
  ∀ n, P18385140757103088747.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P16587777674487334346

`A262992(n+1)-∑[C(A038387(n+1)+1, n)%(n+1)]`
-/

namespace A262870.P16587777674487334346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038387 (n + 1) + 1).toNat n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A262870.P16587777674487334346

namespace A262870

/-- `A262992(n+1)-∑[C(A038387(n+1)+1, n)%(n+1)]` -/
def P16587777674487334346.Spec : Prop :=
  ∀ n, P16587777674487334346.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P741098978818509124

`A294145(n+1)+A294285(n+1)-A294284(n+1)`
-/

namespace A262870.P741098978818509124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (n + 1) + (A294285 (n + 1) - A294284 (n + 1))

end

end A262870.P741098978818509124

namespace A262870

/-- `A294145(n+1)+A294285(n+1)-A294284(n+1)` -/
def P741098978818509124.Spec : Prop :=
  ∀ n, P741098978818509124.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P16818378714008051339

`A294146(n+1)+A294285(n+1)-A294283(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A262870

/-- `A294146(n+1)+A294285(n+1)-A294283(n+1)` -/
def P16818378714008051339.Spec : Prop :=
  ∀ n, P16818378714008051339.a n = A262870 (n + 1)

theorem P16818378714008051339.correct : P16818378714008051339.Spec := by
  intro n
  simp only [A262870, Nat.add_sub_cancel]

end A262870

/-! ## A262870.P14075608125257815721

`A294061(n+1)+A000217(ceil(n/2))-A294236(n+1)`
-/

namespace A262870.P14075608125257815721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294061 (n + 1) + (A000217 ⌈(n : ℚ) / 2⌉.toNat - A294236 (n + 1))

end

end A262870.P14075608125257815721

namespace A262870

/-- `A294061(n+1)+A000217(ceil(n/2))-A294236(n+1)` -/
def P14075608125257815721.Spec : Prop :=
  ∀ n, P14075608125257815721.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P13391776738438698564

`∑[A013928(n+1)]+A294061(n+1)-A294283(n+1)`
-/

namespace A262870.P13391776738438698564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A294061 (n + 1) - A294283 (n + 1))

end

end A262870.P13391776738438698564

namespace A262870

/-- `∑[A013928(n+1)]+A294061(n+1)-A294283(n+1)` -/
def P13391776738438698564.Spec : Prop :=
  ∀ n, P13391776738438698564.a n = A262870 (n + 1)

end A262870

/-! ## A262870.P1946290709492624204

`A262992(n+1)-∑[lcm(4, n+1)/4*A114643(2*(n+1))]`
-/

namespace A262870.P1946290709492624204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4 * (A114643 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262992 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262870.P1946290709492624204

namespace A262870

/-- `A262992(n+1)-∑[lcm(4, n+1)/4*A114643(2*(n+1))]` -/
def P1946290709492624204.Spec : Prop :=
  ∀ n, P1946290709492624204.a n = (A262870 (n + 1) : ℚ)

end A262870

/-! ## A262870.P9689425256885943021

`A262992(n+1)-∑[A180322(n+1)%(n+1)]`
-/

namespace A262870.P9689425256885943021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180322 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262870.P9689425256885943021

namespace A262870

/-- `A262992(n+1)-∑[A180322(n+1)%(n+1)]` -/
def P9689425256885943021.Spec : Prop :=
  ∀ n, P9689425256885943021.a n = A262870 (n + 1)

end A262870

/-!
# A262871: Sum of the squarefree numbers appearing among the smaller parts of the partitions of n into two parts.

The programs for A262871, the canonical program `A262871.P5571121125344339502` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262871 has offset 1).

The definition of A262871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262871.P11329734957225154313

`A262992(n+1)-A262870(n+1)`
-/

namespace A262871.P11329734957225154313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - A262870 (n + 1)

end

end A262871.P11329734957225154313

namespace A262871

/-- `A262992(n+1)-A262870(n+1)` -/
def P11329734957225154313.Spec : Prop :=
  ∀ n, P11329734957225154313.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P5571121125344339502

`∑[C(A038387(n+1)+1, n)%(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262871

/-- `∑[C(A038387(n+1)+1, n)%(n+1)]` -/
def P5571121125344339502.Spec : Prop :=
  ∀ n, (P5571121125344339502.a n : ℤ) = A262871 (n + 1)

theorem P5571121125344339502.correct : P5571121125344339502.Spec := by
  intro n
  simp only [A262871, Nat.add_sub_cancel]

end A262871

/-! ## A262871.P4342197489387928778

`∑[∑[n]%(n+1)-A105570(∑[n]%(n+1))]`
-/

namespace A262871.P4342197489387928778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ) - A105570 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P4342197489387928778

namespace A262871

/-- `∑[∑[n]%(n+1)-A105570(∑[n]%(n+1))]` -/
def P4342197489387928778.Spec : Prop :=
  ∀ n, P4342197489387928778.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P16856349086544184648

`A294146(n+1)-A294060(n+1)`
-/

namespace A262871.P16856349086544184648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) - A294060 (n + 1)

end

end A262871.P16856349086544184648

namespace A262871

/-- `A294146(n+1)-A294060(n+1)` -/
def P16856349086544184648.Spec : Prop :=
  ∀ n, P16856349086544184648.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P8530492197223130379

`A066779(A065033(n))-A000007(n)`
-/

namespace A262871.P8530492197223130379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (A065033 n).toNat - A000007 n

end

end A262871.P8530492197223130379

namespace A262871

/-- `A066779(A065033(n))-A000007(n)` -/
def P8530492197223130379.Spec : Prop :=
  ∀ n, P8530492197223130379.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P267985243315715641

`A057427(n)*A066779(A065033(n))`
-/

namespace A262871.P267985243315715641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A066779 (A065033 n).toNat

end

end A262871.P267985243315715641

namespace A262871

/-- `A057427(n)*A066779(A065033(n))` -/
def P267985243315715641.Spec : Prop :=
  ∀ n, P267985243315715641.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P1334951672984244419

`A066779(n+1)-A262870(n+2)`
-/

namespace A262871.P1334951672984244419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (n + 1) - A262870 (n + 2)

end

end A262871.P1334951672984244419

namespace A262871

/-- `A066779(n+1)-A262870(n+2)` -/
def P1334951672984244419.Spec : Prop :=
  ∀ n, P1334951672984244419.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P1189887567001452718

`A294283(n+2)-A294060(n+2)`
-/

namespace A262871.P1189887567001452718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294283 (n + 2) - A294060 (n + 2)

end

end A262871.P1189887567001452718

namespace A262871

/-- `A294283(n+2)-A294060(n+2)` -/
def P1189887567001452718.Spec : Prop :=
  ∀ n, P1189887567001452718.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P11587434054629119692

`∑[lcm(4, n+1)/4*A114643(2*(n+1))]`
-/

namespace A262871.P11587434054629119692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4 * (A114643 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P11587434054629119692

namespace A262871

/-- `∑[lcm(4, n+1)/4*A114643(2*(n+1))]` -/
def P11587434054629119692.Spec : Prop :=
  ∀ n, P11587434054629119692.a n = (A262871 (n + 1) : ℚ)

end A262871

/-! ## A262871.P11762527164976192007

`∑[(n+1)/A000010(xor(n, n+1)+1)*A114643(2*(n+1))]`
-/

namespace A262871.P11762527164976192007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ) * (A114643 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P11762527164976192007

namespace A262871

/-- `∑[(n+1)/A000010(xor(n, n+1)+1)*A114643(2*(n+1))]` -/
def P11762527164976192007.Spec : Prop :=
  ∀ n, P11762527164976192007.a n = (A262871 (n + 1) : ℚ)

end A262871

/-! ## A262871.P4359106060318706165

`∑[A180322(n+1)%(n+1)]`
-/

namespace A262871.P4359106060318706165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180322 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P4359106060318706165

namespace A262871

/-- `∑[A180322(n+1)%(n+1)]` -/
def P4359106060318706165.Spec : Prop :=
  ∀ n, P4359106060318706165.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P10554590360897858600

`∑[A000740(n+1)%(n+1)]`
-/

namespace A262871.P10554590360897858600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000740 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P10554590360897858600

namespace A262871

/-- `∑[A000740(n+1)%(n+1)]` -/
def P10554590360897858600.Spec : Prop :=
  ∀ n, P10554590360897858600.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P758648020825854124

`∑[A056278(n+1)%(n+1)]`
-/

namespace A262871.P758648020825854124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056278 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P758648020825854124

namespace A262871

/-- `∑[A056278(n+1)%(n+1)]` -/
def P758648020825854124.Spec : Prop :=
  ∀ n, P758648020825854124.a n = A262871 (n + 1)

end A262871

/-! ## A262871.P12546869908257967853

`∑[(2^n-A178472(n+1))%(n+1)]`
-/

namespace A262871.P12546869908257967853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n : ℤ) - A178472 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262871.P12546869908257967853

namespace A262871

/-- `∑[(2^n-A178472(n+1))%(n+1)]` -/
def P12546869908257967853.Spec : Prop :=
  ∀ n, P12546869908257967853.a n = A262871 (n + 1)

end A262871

/-!
# A262872: Expansion of (Sum_{i>=0} x^(i^2)) * (Sum_{j>=0} x^(j^3)) / (1-x).

The programs for A262872, there is no canonical definition to state claims against.
-/

/-! ## A262872.P2255951289847836213

`∑[A045634(n)]`
-/

namespace A262872.P2255951289847836213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262872.P2255951289847836213

/-!
# A262874: Expansion of (Sum_{i>=0} x^(i^2)) * (Sum_{j>=0} x^(j^3)) * (Sum_{k>=0} x^(k^4)) / (1-x).

The programs for A262874, there is no canonical definition to state claims against.
-/

/-! ## A262874.P1167203826355299014

`∑[A135910(n)]`
-/

namespace A262874.P1167203826355299014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262874.P1167203826355299014

/-!
# A262875: Number of equal-sized disjoint subset combinations from a set of n items.

The programs for A262875, there is no canonical definition to state claims against.
-/

/-! ## A262875.P9970244134408195709

`A262320(n+1)-2^(n+1)`
-/

namespace A262875.P9970244134408195709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262320 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A262875.P9970244134408195709

/-! ## A262875.P14129849818054466528

`∑[Δ[A262280(n)]-A000079(n)]`
-/

namespace A262875.P14129849818054466528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262875.P14129849818054466528

/-! ## A262875.P11135797847444664604

`∑[Δ[A262320(n)]-A000079(n)]`
-/

namespace A262875.P11135797847444664604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262875.P11135797847444664604

/-! ## A262875.P10052857787499653588

`A262280(n+1)-∑[A000079(n)]`
-/

namespace A262875.P10052857787499653588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262875.P10052857787499653588

/-! ## A262875.P10449259968209037391

`A262280(n+1)-record[A094024(n)]`
-/

namespace A262875.P10449259968209037391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262875.P10449259968209037391

/-! ## A262875.P4664330009743149573

`A262280(n+1)+1-A000079(n+1)`
-/

namespace A262875.P4664330009743149573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 (n + 1) + (1 - A000079 (n + 1))

end

end A262875.P4664330009743149573

/-! ## A262875.P15497037697404591174

`A262280(n+1)-A094024(2*n+1)`
-/

namespace A262875.P15497037697404591174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 (n + 1) - A094024 (2 * n + 1)

end

end A262875.P15497037697404591174

/-!
# A262876: Expansion of Product_{k>=1} 1/(1-x^(3*k-1))^k.

The programs for A262876, there is no canonical definition to state claims against.
-/

/-! ## A262876.P5517107851655437275

`A263143(lt[A098332(n), A057704(n+1)])`
-/

namespace A262876.P5517107851655437275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263143 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262876.P5517107851655437275

/-! ## A262876.P5401853149595146522

`A263143(lt[A014540(n+4), A226852(n+1)])`
-/

namespace A262876.P5401853149595146522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014540 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263143 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262876.P5401853149595146522

/-! ## A262876.P12736342140580700305

`A023416(A097683(n+1)/A145515(n))`
-/

namespace A262876.P12736342140580700305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A097683 (n + 1) : ℚ) / (A145515 n : ℚ))).toNat

end

end A262876.P12736342140580700305

/-! ## A262876.P9131572409011719150

`A263143(eq[A064895(n+1), A291769(n)])`
-/

namespace A262876.P9131572409011719150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263143 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262876.P9131572409011719150

/-! ## A262876.P16617326879734577262

`A263143(A047269(n+1)%A081244(n))`
-/

namespace A262876.P16617326879734577262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263143 (Int.tmod (A047269 (n + 1)) (A081244 n)).toNat

end

end A262876.P16617326879734577262

/-!
# A262877: Expansion of Product_{k>=1} 1/(1-x^(3*k-2))^k.

The programs for A262877, there is no canonical definition to state claims against.
-/

/-! ## A262877.P18354916514450793464

`A263137(A047201(n+1)%A118386(n+1))`
-/

namespace A262877.P18354916514450793464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263137 (Int.tmod (A047201 (n + 1)) (A118386 (n + 1))).toNat

end

end A262877.P18354916514450793464

/-! ## A262877.P4283675035950566621

`A263137(A047201(n+1))%A259813(n+1)`
-/

namespace A262877.P4283675035950566621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263137 (A047201 (n + 1)).toNat) (A259813 (n + 1))

end

end A262877.P4283675035950566621

/-! ## A262877.P17239432829745883975

`A263137(A325457(n+1)%A118386(n+1))`
-/

namespace A262877.P17239432829745883975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263137 (Int.tmod (A325457 (n + 1)) (A118386 (n + 1))).toNat

end

end A262877.P17239432829745883975

/-! ## A262877.P5831081513199529569

`A263137(A325457(n+1))%A259813(n+1)`
-/

namespace A262877.P5831081513199529569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263137 (A325457 (n + 1)).toNat) (A259813 (n + 1))

end

end A262877.P5831081513199529569

/-! ## A262877.P2167453447557683260

`A263137(A325457(n+1))+A000007(A262923(n))`
-/

namespace A262877.P2167453447557683260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263137 (A325457 (n + 1)).toNat + A000007 (A262923 n).toNat

end

end A262877.P2167453447557683260

/-!
# A262878: Expansion of Product_{k>=1} (1+x^(3*k-1))^k.

The programs for A262878, there is no canonical definition to state claims against.
-/

/-! ## A262878.P14243903311156108793

`A263146(A061402(n)%A360528(3*n+4))`
-/

namespace A262878.P14243903311156108793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263146 (Int.tmod (A061402 n) (A360528 (3 * n + 4))).toNat

end

end A262878.P14243903311156108793

/-! ## A262878.P15282426529357550843

`A263138(A329974(n+1)%A118386(n+1))`
-/

namespace A262878.P15282426529357550843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263138 (Int.tmod (A329974 (n + 1)) (A118386 (n + 1))).toNat

end

end A262878.P15282426529357550843

/-! ## A262878.P266464437544971019

`A263138(A329974(n+1)%A053406(n))`
-/

namespace A262878.P266464437544971019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263138 (Int.tmod (A329974 (n + 1)) (A053406 n)).toNat

end

end A262878.P266464437544971019

/-! ## A262878.P13210627000585998159

`and(A010702(A052949(n)), A127255(n))`
-/

namespace A262878.P13210627000585998159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A052949 n).toNat) (A127255 n)

end

end A262878.P13210627000585998159

/-! ## A262878.P2928673604882591374

`and(A043560(A050344(n)), A328624(n))`
-/

namespace A262878.P2928673604882591374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043560 (A050344 n).toNat) (A328624 n)

end

end A262878.P2928673604882591374

/-!
# A262879: Expansion of Product_{k>=1} (1+x^(3*k-2))^k.

The programs for A262879, there is no canonical definition to state claims against.
-/

/-! ## A262879.P12778139301420665217

`A263139(A140102(n)%A175931(n+4))`
-/

namespace A262879.P12778139301420665217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263139 (Int.tmod (A140102 n) (A175931 (n + 4))).toNat

end

end A262879.P12778139301420665217

/-! ## A262879.P7987063398348594330

`A263139(A140102(n))%A213895(3*n+5)`
-/

namespace A262879.P7987063398348594330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263139 (A140102 n).toNat) (A213895 (3 * n + 5))

end

end A262879.P7987063398348594330

/-! ## A262879.P8038318942487266017

`A263139(A140102(n))+A213358(A007670(n+1))`
-/

namespace A262879.P8038318942487266017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263139 (A140102 n).toNat + A213358 (A007670 (n + 1)).toNat

end

end A262879.P8038318942487266017

/-! ## A262879.P16453987367407508857

`A263139(A140102(n))%A125855(A057829(n+1))`
-/

namespace A262879.P16453987367407508857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263139 (A140102 n).toNat) (A125855 (A057829 (n + 1)).toNat)

end

end A262879.P16453987367407508857

/-!
# A262880: Number of ordered ways to write n as w*(w+1)/2 + x^3 + y^3 + 2*z^3 with w > 0, 0 <= x <= y and z >= 0.

The programs for A262880, there is no canonical definition to state claims against.
-/

/-! ## A262880.P15124523630412294792

`A271058(gcd(A271009(n), A271011(2*(n+2))))`
-/

namespace A262880.P15124523630412294792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271058 (Int.gcd (A271009 n) (A271011 (2 * (n + 2))))

end

end A262880.P15124523630412294792

/-! ## A262880.P6584983786162823559

`A001222(A008467(p?[A037027(n)]))`
-/

namespace A262880.P6584983786162823559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008467 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A262880.P6584983786162823559

/-! ## A262880.P4403810367342302777

`A001221(xor(A211971(n), A248448(n+1)))`
-/

namespace A262880.P4403810367342302777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A211971 n) (A248448 (n + 1))).toNat

end

end A262880.P4403810367342302777

/-! ## A262880.P11006760949422160089

`A353835(A094565(2*(n+1))*A195208(3*n+2)+2)`
-/

namespace A262880.P11006760949422160089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A094565 (2 * (n + 1)) * A195208 (3 * n + 2) + 2).toNat

end

end A262880.P11006760949422160089

/-!
# A262881: Regular triangle where the n-th row lists the integers k between 0 and n ordered by increasing value of the Hamming weight of k, and if equal by increasing value of k.

The programs for A262881, there is no canonical definition to state claims against.
-/

/-! ## A262881.P7003696912968423197

`A177804(n+1)%A119585(n+1)`
-/

namespace A262881.P7003696912968423197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177804 (n + 1)) (A119585 (n + 1))

end

end A262881.P7003696912968423197

/-! ## A262881.P3265452747637107040

`A249511(n+1)%A119585(n+1)`
-/

namespace A262881.P3265452747637107040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249511 (n + 1)) (A119585 (n + 1))

end

end A262881.P3265452747637107040

/-! ## A262881.P9146452424260784998

`A278932(n+1)%A119585(n+1)`
-/

namespace A262881.P9146452424260784998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278932 (n + 1)) (A119585 (n + 1))

end

end A262881.P9146452424260784998

/-! ## A262881.P1366683410545297128

`A119585(n+1)-A254046(A060665(n+1))`
-/

namespace A262881.P1366683410545297128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (n + 1) - A254046 (A060665 (n + 1)).toNat

end

end A262881.P1366683410545297128

/-! ## A262881.P15670846136864401931

`A119585(n+1)-A267845(A085622(2*(n+1)))`
-/

namespace A262881.P15670846136864401931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (n + 1) - A267845 (A085622 (2 * (n + 1))).toNat

end

end A262881.P15670846136864401931

/-!
# A262882: Right diagonal of A262881.

The programs for A262882, there is no canonical definition to state claims against.
-/

/-! ## A262882.P16959230792243368565

`A342126(n+1)-1`
-/

namespace A262882.P16959230792243368565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (n + 1) - 1

end

end A262882.P16959230792243368565

/-! ## A262882.P15841605768939470173

`n-A087734(n+1)`
-/

namespace A262882.P15841605768939470173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A087734 (n + 1)

end

end A262882.P15841605768939470173

/-! ## A262882.P14580857444856063904

`Δ[∑[A342126(n)]-n]`
-/

namespace A262882.P14580857444856063904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262882.P14580857444856063904

/-! ## A262882.P16317401365811370831

`∑[-Δ[A087734(n)]]+n`
-/

namespace A262882.P16317401365811370831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A262882.P16317401365811370831

/-! ## A262882.P10248657204319811526

`Δ[n²]-A266341(2*(n+1))`
-/

namespace A262882.P10248657204319811526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266341 (2 * (n + 1))

end

end A262882.P10248657204319811526

/-! ## A262882.P8606794326909552594

`A023443(A342126(n+1))`
-/

namespace A262882.P8606794326909552594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342126 (n + 1)).toNat

end

end A262882.P8606794326909552594

/-! ## A262882.P18049229000246397591

`A089633(∑[char[A089633(n+1)]])`
-/

namespace A262882.P18049229000246397591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262882.P18049229000246397591

/-! ## A262882.P8271096429531766781

`A089633(∑[char[A089633(n)]]-1)`
-/

namespace A262882.P8271096429531766781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A262882.P8271096429531766781

/-! ## A262882.P18209543262791805745

`A089633(∑[A340375(n+1)]-1)`
-/

namespace A262882.P18209543262791805745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A262882.P18209543262791805745

/-! ## A262882.P7018647451487017150

`-(A087734(n+1)+A001489(n))`
-/

namespace A262882.P7018647451487017150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A087734 (n + 1) + A001489 n)

end

end A262882.P7018647451487017150

/-!
# A262883: Expansion of Product_{k>=1} 1/((1-x^(3*k-1))*(1-x^(3*k-2)))^k.

The programs for A262883, there is no canonical definition to state claims against.
-/

/-! ## A262883.P10193542020226316020

`A023604(or(n, A026599(n)))`
-/

namespace A262883.P10193542020226316020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (Int.lor (n : ℤ) (A026599 n)).toNat

end

end A262883.P10193542020226316020

/-! ## A262883.P3654160959978732105

`A123580(A070550(n))-n%2`
-/

namespace A262883.P3654160959978732105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A070550 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A262883.P3654160959978732105

/-! ## A262883.P1396153370601576172

`A123580(A070550(n))-A000035(n)`
-/

namespace A262883.P1396153370601576172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A070550 n).toNat - A000035 n

end

end A262883.P1396153370601576172

/-!
# A262885: Irregular triangle T(n,k) read by rows: T(n,k) = number of partitions of n into at least two distinct parts, where the largest part is n-k.

The programs for A262885, there is no canonical definition to state claims against.
-/

/-! ## A262885.P14209427350011465984

`A302790(or(A276921(2*(n+2)), A352783(n)))`
-/

namespace A262885.P14209427350011465984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 (Int.lor (A276921 (2 * (n + 2))) (A352783 n)).toNat

end

end A262885.P14209427350011465984

/-! ## A262885.P18005247394936060770

`A091304(A002260(n+1)*A094587(n))`
-/

namespace A262885.P18005247394936060770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A002260 (n + 1) * A094587 n).toNat

end

end A262885.P18005247394936060770

/-! ## A262885.P11048915440779981934

`a(A060953(A238874(n)))+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A262885.P11048915440779981934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A060953 (A238874 n).toNat).toNat + 1

end

end A262885.P11048915440779981934

/-!
# A262888: a(n) = total number of nodes in the finite subtrees branching "left" (to the "smaller side") from node n in the infinite trunk (A259934) of the tree generated by edge-relation A049820(child) = parent.

The programs for A262888, there is no canonical definition to state claims against.
-/

/-! ## A262888.P4596274058080123631

`A262894(n)+A262889(n)`
-/

namespace A262888.P4596274058080123631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262894 n + A262889 n

end

end A262888.P4596274058080123631

/-! ## A262888.P1512140941411308854

`A262890(n)-A262889(n)`
-/

namespace A262888.P1512140941411308854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - A262889 n

end

end A262888.P1512140941411308854

/-! ## A262888.P9860501854078082184

`(A262894(n)+A262890(n))/2`
-/

namespace A262888.P9860501854078082184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262894 n + A262890 n : ℚ) / 2

end

end A262888.P9860501854078082184

/-! ## A262888.P11536182148240259431

`A025480(A262894(n)+A262890(n))`
-/

namespace A262888.P11536182148240259431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A262894 n + A262890 n).toNat

end

end A262888.P11536182148240259431

/-! ## A262888.P18262301248053172999

`A142150(A262894(n)+A262890(n))`
-/

namespace A262888.P18262301248053172999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A262894 n + A262890 n).toNat

end

end A262888.P18262301248053172999

/-! ## A262888.P16545803372783319025

`A262890(n)-A142150(A262890(n)-A262894(n))`
-/

namespace A262888.P16545803372783319025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - A142150 (A262890 n - A262894 n).toNat

end

end A262888.P16545803372783319025

/-! ## A262888.P10036106633346095955

`A262889(n)-(A262697(A259934(n))-A262894(n))`
-/

namespace A262888.P10036106633346095955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 n - (A262697 (A259934 n).toNat - A262894 n)

end

end A262888.P10036106633346095955

/-!
# A262889: a(n) = total number of nodes in the finite subtrees branching "right" (to the "larger side") from node n in the infinite trunk (A259934) of the tree generated by edge-relation A049820(child) = parent.

The programs for A262889, there is no canonical definition to state claims against.
-/

/-! ## A262889.P14391010377080840329

`A262888(n)-A262894(n)`
-/

namespace A262889.P14391010377080840329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262888 n - A262894 n

end

end A262889.P14391010377080840329

/-! ## A262889.P16857186365008934326

`A262890(n)-A262888(n)`
-/

namespace A262889.P16857186365008934326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - A262888 n

end

end A262889.P16857186365008934326

/-! ## A262889.P17288481722904131040

`(A262890(n)-A262894(n))/2`
-/

namespace A262889.P17288481722904131040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262890 n - A262894 n : ℚ) / 2

end

end A262889.P17288481722904131040

/-! ## A262889.P14062313669897300946

`A262890(n)-A025480(A262894(n)+A262890(n))`
-/

namespace A262889.P14062313669897300946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - A025480 (A262894 n + A262890 n).toNat

end

end A262889.P14062313669897300946

/-! ## A262889.P4793349191042213030

`A262890(n)-A142150(A262894(n)+A262890(n))`
-/

namespace A262889.P4793349191042213030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - A142150 (A262894 n + A262890 n).toNat

end

end A262889.P4793349191042213030

/-! ## A262889.P9317605854050456987

`A025480(A262890(n)-A262894(n))`
-/

namespace A262889.P9317605854050456987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A262890 n - A262894 n).toNat

end

end A262889.P9317605854050456987

/-! ## A262889.P11228283809909870281

`A142150(A262890(n)-A262894(n))`
-/

namespace A262889.P11228283809909870281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A262890 n - A262894 n).toNat

end

end A262889.P11228283809909870281

/-!
# A262890: a(n) = total number of nodes in the finite subtrees branching from node n in the infinite trunk (A259934) of the tree generated by edge-relation A049820(child) = parent.

The programs for A262890, there is no canonical definition to state claims against.
-/

/-! ## A262890.P17638742644540595275

`A262888(n)+A262889(n)`
-/

namespace A262890.P17638742644540595275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262888 n + A262889 n

end

end A262890.P17638742644540595275

/-! ## A262890.P3621464113105602581

`A262894(n)+2*A262889(n)`
-/

namespace A262890.P3621464113105602581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262894 n + 2 * A262889 n

end

end A262890.P3621464113105602581

/-! ## A262890.P2910223933551562255

`2*A262888(n)-A262894(n)`
-/

namespace A262890.P2910223933551562255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262888 n - A262894 n

end

end A262890.P2910223933551562255

/-! ## A262890.P4409491297514555268

`A262894(n)+A005843(A262889(n))`
-/

namespace A262890.P4409491297514555268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262894 n + A005843 (A262889 n).toNat

end

end A262890.P4409491297514555268

/-! ## A262890.P14697441322739957599

`A005843(A262888(n))-A262894(n)`
-/

namespace A262890.P14697441322739957599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A262888 n).toNat - A262894 n

end

end A262890.P14697441322739957599

/-! ## A262890.P15039103973658417888

`A262888(n)-(A000007(n)*A163351(n)-A262889(n))`
-/

namespace A262890.P15039103973658417888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262888 n - (A000007 n * A163351 n - A262889 n)

end

end A262890.P15039103973658417888

/-!
# A262891: a(n) = A060990(A259934(n)); branching degree of node n in the infinite trunk of the tree generated by edge-relation A049820(child) = parent.

The programs for A262891, there is no canonical definition to state claims against.
-/

/-! ## A262891.P695383026216911248

`A060990(A259934(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262891.P695383026216911248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A259934 n).toNat

end

end A262891.P695383026216911248

/-! ## A262891.P9867681859594930213

`A060990(record[A262679(n)])`
-/

namespace A262891.P9867681859594930213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262891.P9867681859594930213

/-! ## A262891.P14089269927843224841

`A060990(record[n*A262693(n)])`
-/

namespace A262891.P14089269927843224841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A262693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262891.P14089269927843224841

/-! ## A262891.P16418703236505082760

`A060990(A262679(A262896(n)))`
-/

namespace A262891.P16418703236505082760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A262679 (A262896 n).toNat).toNat

end

end A262891.P16418703236505082760

/-! ## A262891.P13712431449809840741

`A060990(eq[1, A262693(n)])`
-/

namespace A262891.P13712431449809840741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262891.P13712431449809840741

/-! ## A262891.P15120655731541113164

`A060990(eq[0, A262696(n)])`
-/

namespace A262891.P15120655731541113164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262891.P15120655731541113164

/-! ## A262891.P16711258679729339998

`A060990(eq[0, A262697(n)])`
-/

namespace A262891.P16711258679729339998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262891.P16711258679729339998

/-! ## A262891.P132949990936312114

`A060990(record[n-A262522(n)])`
-/

namespace A262891.P132949990936312114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262891.P132949990936312114

/-!
# A262892: Indices of nonbranching nodes in the infinite trunk (A259934) of the tree generated by edge-relation A049820(child) = parent.

The programs for A262892, there is no canonical definition to state claims against.
-/

/-! ## A262892.P155959049410188820

`eq[1, A262891(n)]`
-/

namespace A262892.P155959049410188820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262892.P155959049410188820

/-! ## A262892.P330050642940003853

`eq[A259934(n), A262896(n)]`
-/

namespace A262892.P330050642940003853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262892.P330050642940003853

/-! ## A262892.P6610883087038883601

`lt[A262891(n), A000005(A020483(n))]`
-/

namespace A262892.P6610883087038883601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020483 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262892.P6610883087038883601

/-! ## A262892.P13772036085610087746

`lt[A262891(n), A000005(A006530(n+1))]`
-/

namespace A262892.P13772036085610087746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262892.P13772036085610087746

/-! ## A262892.P14399615277850824124

`lt[A262891(n), A000005(A060395(n))]`
-/

namespace A262892.P14399615277850824124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060395 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262892.P14399615277850824124

/-! ## A262892.P4543076057951535778

`lt[A262891(n), A001222(A006881(n+1))]`
-/

namespace A262892.P4543076057951535778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006881 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262892.P4543076057951535778

/-! ## A262892.P6771517918889440875

`lt[A262891(n), A000005(A214834(n+2))]`
-/

namespace A262892.P6771517918889440875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A214834 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262892.P6771517918889440875

/-! ## A262892.P12660608868089527142

`A155043(A262897(n+1))`
-/

namespace A262892.P12660608868089527142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A262897 (n + 1)).toNat

end

end A262892.P12660608868089527142

/-! ## A262892.P16626997853503407687

`eq[0, A262890(n)]`
-/

namespace A262892.P16626997853503407687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262892.P16626997853503407687

/-! ## A262892.P7345690928795171620

`lt[Δ[A262893(n)], 1]+1`
-/

namespace A262892.P7345690928795171620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A262892.P7345690928795171620

/-! ## A262892.P481523083466699112

`eq[0, A262889(n)+A262888(n)]`
-/

namespace A262892.P481523083466699112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 n + A262888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262892.P481523083466699112

/-! ## A262892.P7025814283367904839

`A262694(A262897(n+1)+1)`
-/

namespace A262892.P7025814283367904839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262694 (A262897 (n + 1) + 1).toNat

end

end A262892.P7025814283367904839

/-! ## A262892.P12163658310682748596

`eq[1, A060990(eq[1, A262693(n)])]`
-/

namespace A262892.P12163658310682748596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262892.P12163658310682748596

/-! ## A262892.P1932245424956576316

`A262904(A262897(2*n+1-n))`
-/

namespace A262892.P1932245424956576316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 (A262897 (2 * n + 1 - n)).toNat

end

end A262892.P1932245424956576316

/-!
# A262893: Partial sums of A262890.

The programs for A262893, there is no canonical definition to state claims against.
-/

/-! ## A262893.P11911610471179346420

`a(n-1)+A262890(n)` with `a(0)=6`
-/

namespace A262893.P11911610471179346420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + A262890 n

end

end A262893.P11911610471179346420

/-! ## A262893.P11650521650866838697

`∑[A262890(n)]`
-/

namespace A262893.P11650521650866838697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262893.P11650521650866838697

/-! ## A262893.P4026538916232497860

`∑[A262889(n)+A262888(n)]`
-/

namespace A262893.P4026538916232497860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 n + A262888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262893.P4026538916232497860

/-! ## A262893.P9526180820804717920

`∑[A262894(n)+2*A262889(n)]`
-/

namespace A262893.P9526180820804717920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262894 n + 2 * A262889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262893.P9526180820804717920

/-! ## A262893.P17924594251575843925

`∑[2*A262888(n)-A262894(n)]`
-/

namespace A262893.P17924594251575843925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262888 n - A262894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262893.P17924594251575843925

/-! ## A262893.P17994725262084325143

`∑[A262894(n)+A005843(A262889(n))]`
-/

namespace A262893.P17994725262084325143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262894 n + A005843 (A262889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262893.P17994725262084325143

/-! ## A262893.P14202423385292286996

`∑[A005843(A262888(n))-A262894(n)]`
-/

namespace A262893.P14202423385292286996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A262888 n).toNat - A262894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262893.P14202423385292286996

/-!
# A262894: a(n) = A262888(n) - A262889(n).

The programs for A262894, there is no canonical definition to state claims against.
-/

/-! ## A262894.P17854034404158959503

`A262888(n)-A262889(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262894.P17854034404158959503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262888 n - A262889 n

end

end A262894.P17854034404158959503

/-! ## A262894.P10808883396459513227

`2*A262888(n)-A262890(n)`
-/

namespace A262894.P10808883396459513227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262888 n - A262890 n

end

end A262894.P10808883396459513227

/-! ## A262894.P12380360787340407878

`A262890(n)-2*A262889(n)`
-/

namespace A262894.P12380360787340407878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - 2 * A262889 n

end

end A262894.P12380360787340407878

/-! ## A262894.P17631825457338565727

`A005843(A262888(n))-A262890(n)`
-/

namespace A262894.P17631825457338565727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A262888 n).toNat - A262890 n

end

end A262894.P17631825457338565727

/-! ## A262894.P2877600882405013131

`A262890(n)-A005843(A262889(n))`
-/

namespace A262894.P2877600882405013131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - A005843 (A262889 n).toNat

end

end A262894.P2877600882405013131

/-!
# A262895: Partial sums of A262894.

The programs for A262895, there is no canonical definition to state claims against.
-/

/-! ## A262895.P9964751578492797048

`a(n-1)+A262894(n)` with `a(0)=6`
-/

namespace A262895.P9964751578492797048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + A262894 n

end

end A262895.P9964751578492797048

/-! ## A262895.P13799834178403630701

`∑[A262894(n)]`
-/

namespace A262895.P13799834178403630701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262895.P13799834178403630701

/-! ## A262895.P10767511365384947683

`∑[A262888(n)-A262889(n)]`
-/

namespace A262895.P10767511365384947683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262888 n - A262889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262895.P10767511365384947683

/-! ## A262895.P8989287649872451668

`∑[2*A262888(n)-A262890(n)]`
-/

namespace A262895.P8989287649872451668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262888 n - A262890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262895.P8989287649872451668

/-! ## A262895.P3419041819793919756

`∑[A262890(n)-2*A262889(n)]`
-/

namespace A262895.P3419041819793919756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n - 2 * A262889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262895.P3419041819793919756

/-! ## A262895.P8313063646087675875

`∑[A005843(A262888(n))-A262890(n)]`
-/

namespace A262895.P8313063646087675875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A262888 n).toNat - A262890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262895.P8313063646087675875

/-!
# A262897: Nonbranching nodes in the infinite trunk (A259934) of the tree generated by edge-relation A049820(child) = parent: a(n) = A259934(A262892(n)).

The programs for A262897, there is no canonical definition to state claims against.
-/

/-! ## A262897.P11038574606081755747

`A259934(A262892(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262897.P11038574606081755747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A262892 (n + 1)).toNat

end

end A262897.P11038574606081755747

/-! ## A262897.P2230220889525524521

`A259934(eq[1, A262891(n)])`
-/

namespace A262897.P2230220889525524521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262897.P2230220889525524521

/-! ## A262897.P479008609788531579

`A262896(eq[1, A262891(n)])`
-/

namespace A262897.P479008609788531579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262897.P479008609788531579

/-! ## A262897.P3455166059555236548

`A262896(A262892(2*n+1-n))`
-/

namespace A262897.P3455166059555236548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (A262892 (2 * n + 1 - n)).toNat

end

end A262897.P3455166059555236548

/-! ## A262897.P10139315536474552409

`A259934(eq[A259934(n), A262896(n)])`
-/

namespace A262897.P10139315536474552409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262897.P10139315536474552409

/-! ## A262897.P8918166951478004776

`A262896(A262892(n+1)%A008586(n+1))`
-/

namespace A262897.P8918166951478004776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (Int.tmod (A262892 (n + 1)) (A008586 (n + 1))).toNat

end

end A262897.P8918166951478004776

/-! ## A262897.P10205179111748201566

`A262896(A262892(n+1))%A120054(n+1)`
-/

namespace A262897.P10205179111748201566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262896 (A262892 (n + 1)).toNat) (A120054 (n + 1))

end

end A262897.P10205179111748201566

/-! ## A262897.P17874019947799204918

`A262896(A262892(n+1)+A063524(2*(n+2)))`
-/

namespace A262897.P17874019947799204918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (A262892 (n + 1) + A063524 (2 * (n + 2))).toNat

end

end A262897.P17874019947799204918

/-! ## A262897.P4824325865953828599

`A262896(A262892(n+1)+A099894(2*(n+2)))`
-/

namespace A262897.P4824325865953828599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (A262892 (n + 1) + A099894 (2 * (n + 2))).toNat

end

end A262897.P4824325865953828599

/-! ## A262897.P16260736402973243051

`A262896(A262892(n+1))+A262693(A045765(n+1))`
-/

namespace A262897.P16260736402973243051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (A262892 (n + 1)).toNat + A262693 (A045765 (n + 1)).toNat

end

end A262897.P16260736402973243051

/-! ## A262897.P15985132885626415482

`∩[A262511(n+1), A259934(n)]`
-/

namespace A262897.P15985132885626415482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262897.P15985132885626415482

/-! ## A262897.P8709623465826639713

`A259934(lt[A262890(n), 1])`
-/

namespace A262897.P8709623465826639713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A262897.P8709623465826639713

/-! ## A262897.P2934885230824216176

`A262679(A262896(A262892(A262904(A262896(n+1)))))`
-/

namespace A262897.P2934885230824216176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 (A262896 (A262892 (A262904 (A262896 (n + 1)).toNat).toNat).toNat).toNat

end

end A262897.P2934885230824216176

/-! ## A262897.P8817576252939843897

`filter[A262896(n), A262693(#)]`
-/

namespace A262897.P8817576252939843897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262693 (f1 j).toNat = 1) n)

end

end A262897.P8817576252939843897

/-! ## A262897.P3008957496745796196

`eq[1, A060990(n*A262693(n))]`
-/

namespace A262897.P3008957496745796196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 ((n : ℤ) * A262693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262897.P3008957496745796196

/-! ## A262897.P6695088042196920088

`eq[2, A262693(n)+A060990(n)²]`
-/

namespace A262897.P6695088042196920088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n + A060990 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262897.P6695088042196920088

/-! ## A262897.P12887265788644514664

`filter[A262511(n+1), A262693(#)]`
-/

namespace A262897.P12887265788644514664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262693 (f1 j).toNat = 1) n)

end

end A262897.P12887265788644514664

/-! ## A262897.P12483063851908724043

`eq[A262696(n)+1, A060990(n)]`
-/

namespace A262897.P12483063851908724043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262897.P12483063851908724043

/-! ## A262897.P6160294172437647798

`eq[A262697(n)+1, A060990(n)]`
-/

namespace A262897.P6160294172437647798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262897.P6160294172437647798

/-! ## A262897.P2350968578418669053

`record[A259934(n+1)-A262522(A262896(n+1))]`
-/

namespace A262897.P2350968578418669053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (n + 1) - A262522 (A262896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262897.P2350968578418669053

/-!
# A262898: Square array A(row,col) read by antidiagonals: A(1,col) = A045765(col); for row > 1, if A(row-1,col) = 0 then A(row,col) = 0, otherwise A(row,col) = A049820(A(row-1,col)).

The programs for A262898, there is no canonical definition to state claims against.
-/

/-! ## A262898.P10829655140649049568

`A262899(∑[char[∑[n]]]²-n)`
-/

namespace A262898.P10829655140649049568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262899 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A262898.P10829655140649049568

/-! ## A262898.P16049514616983377472

`xor(1, xor(1, A262899(A038722(n+1))))`
-/

namespace A262898.P16049514616983377472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A262899 (A038722 (n + 1)).toNat))

end

end A262898.P16049514616983377472

/-! ## A262898.P15688509854207638890

`or(A000007(n), A262899(A038722(n+1)))`
-/

namespace A262898.P15688509854207638890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262899 (A038722 (n + 1)).toNat)

end

end A262898.P15688509854207638890

/-! ## A262898.P11384915862225331633

`A020985(n)²*A262899(A038722(n+1))`
-/

namespace A262898.P11384915862225331633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A262899 (A038722 (n + 1)).toNat

end

end A262898.P11384915862225331633

/-! ## A262898.P3819828385854353101

`A033999(n)²*A262899(A038722(n+1))`
-/

namespace A262898.P3819828385854353101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A262899 (A038722 (n + 1)).toNat

end

end A262898.P3819828385854353101

/-! ## A262898.P416036907256128061

`A033999(2*n)*A262899(A038722(n+1))`
-/

namespace A262898.P416036907256128061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A262899 (A038722 (n + 1)).toNat

end

end A262898.P416036907256128061

/-! ## A262898.P14833474891310528776

`A262899(A038722(n+1))+char[A080195(n+1)²]`
-/

namespace A262898.P14833474891310528776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080195 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262899 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262898.P14833474891310528776

/-! ## A262898.P10404642258916806857

`A262899(A038722(n+1))+char[A143207(n+1)²]`
-/

namespace A262898.P10404642258916806857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262899 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262898.P10404642258916806857

/-! ## A262898.P11377894194866539569

`A262899(A038722(n+1))+char[A044648(n+2)²]`
-/

namespace A262898.P11377894194866539569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044648 (n + 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262899 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262898.P11377894194866539569

/-! ## A262898.P2797006717288636821

`A262899(A038722(n+1))+1-(A000005(n+1)%2)!`
-/

namespace A262898.P2797006717288636821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262899 (A038722 (n + 1)).toNat + 1 - (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ)

end

end A262898.P2797006717288636821

/-! ## A262898.P17234400229801427985

`A000007(A001489(n)+n)*A262899(A038722(n+1))`
-/

namespace A262898.P17234400229801427985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001489 n + (n : ℤ)).toNat * A262899 (A038722 (n + 1)).toNat

end

end A262898.P17234400229801427985

/-!
# A262899: Transpose of square array A262898.

The programs for A262899, there is no canonical definition to state claims against.
-/

/-! ## A262899.P5142175060346360995

`A262898(∑[char[∑[n]]]²-n)`
-/

namespace A262899.P5142175060346360995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A262899.P5142175060346360995

/-! ## A262899.P6699675607884807775

`A262898(A038722(n+1))%51`
-/

namespace A262899.P6699675607884807775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262898 (A038722 (n + 1)).toNat) 51

end

end A262899.P6699675607884807775

/-! ## A262899.P2116825210416485766

`lcm(A033999(n), A262898(A038722(n+1)))`
-/

namespace A262899.P2116825210416485766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A262898 (A038722 (n + 1)).toNat)

end

end A262899.P2116825210416485766

/-! ## A262899.P12821068525823723182

`or(A000007(n), A262898(A038722(n+1)))`
-/

namespace A262899.P12821068525823723182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262898 (A038722 (n + 1)).toNat)

end

end A262899.P12821068525823723182

/-! ## A262899.P3205666744930824227

`or(A036987(n²), A262898(A038722(n+1)))`
-/

namespace A262899.P3205666744930824227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (n ^ 2)) (A262898 (A038722 (n + 1)).toNat)

end

end A262899.P3205666744930824227

/-! ## A262899.P5262595096087854284

`A262898(A038722(n+1))+A000007(n+1)`
-/

namespace A262899.P5262595096087854284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A262899.P5262595096087854284

/-! ## A262899.P15035911720331009249

`char[A079067(n+3)]*A262898(A038722(n+1))`
-/

namespace A262899.P15035911720331009249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A262898 (A038722 (n + 1)).toNat

end

end A262899.P15035911720331009249

/-! ## A262899.P14690527371288163153

`A262898(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A262899.P14690527371288163153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A262899.P14690527371288163153

/-! ## A262899.P6964765736812762248

`A014963(6*(n+1))*A262898(A038722(n+1))`
-/

namespace A262899.P6964765736812762248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A262898 (A038722 (n + 1)).toNat

end

end A262899.P6964765736812762248

/-! ## A262899.P7584015762454259917

`A007318(C(2, n+2))*A262898(A038722(n+1))`
-/

namespace A262899.P7584015762454259917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A262898 (A038722 (n + 1)).toNat

end

end A262899.P7584015762454259917

/-! ## A262899.P7948797665006416802

`∏{e}[A000040(n+1), A262898(A038722(n+1))^#]`
-/

namespace A262899.P7948797665006416802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A262898 (A038722 (n + 1)).toNat ^ Nat.factorization (f1 n).natAbs p

end

end A262899.P7948797665006416802

/-! ## A262899.P1507694326087359030

`log2(A020639(2*(n+1)))*A262898(A038722(n+1))`
-/

namespace A262899.P1507694326087359030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A262898 (A038722 (n + 1)).toNat : ℝ)

end

end A262899.P1507694326087359030

/-! ## A262899.P6009263329293124082

`A001222(((-1)^n)²+1)*A262898(A038722(n+1))`
-/

namespace A262899.P6009263329293124082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((-1) ^ n) ^ 2 + 1).toNat * A262898 (A038722 (n + 1)).toNat

end

end A262899.P6009263329293124082

/-! ## A262899.P11099373472523105650

`A350701(∑{p}[n+1, gcd(n, #)])+A262898(A038722(n+1))`
-/

namespace A262899.P11099373472523105650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350701 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) + A262898 (A038722 (n + 1)).toNat

end

end A262899.P11099373472523105650

/-! ## A262899.P17305452284202960046

`sqrt(A000010(((-1)^n)²+1))*A262898(A038722(n+1))`
-/

namespace A262899.P17305452284202960046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000010 (((-1) ^ n) ^ 2 + 1).toNat : ℝ) * (A262898 (A038722 (n + 1)).toNat : ℝ)

end

end A262899.P17305452284202960046

/-! ## A262899.P2000649024318300842

`A262898(A038722(n+1))-A007423(Δ[A117842(n)])`
-/

namespace A262899.P2000649024318300842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (A038722 (n + 1)).toNat - A007423 (f1 (n + 1) - f1 n).toNat

end

end A262899.P2000649024318300842

/-! ## A262899.P2572925273194153265

`A006519(A000265(n+1))*A262898(A038722(n+1))`
-/

namespace A262899.P2572925273194153265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000265 (n + 1)).toNat * A262898 (A038722 (n + 1)).toNat

end

end A262899.P2572925273194153265

/-! ## A262899.P150518086045276078

`A006519(A337238(n+1))*A262898(A038722(n+1))`
-/

namespace A262899.P150518086045276078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A337238 (n + 1)).toNat * A262898 (A038722 (n + 1)).toNat

end

end A262899.P150518086045276078

/-! ## A262899.P7622126879160849970

`A179953(A013634(n)-n)*A262898(A038722(n+1))`
-/

namespace A262899.P7622126879160849970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (A013634 n - (n : ℤ)).toNat * A262898 (A038722 (n + 1)).toNat

end

end A262899.P7622126879160849970

