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
import Seq.B000.C040
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A151902: a(n) = wt(k) + f(j) if n = 6k+j, 0 <= j < 6, where wt() = A000120(), f() = A151899().

The programs for A151902, the canonical program `A151902.P9395804359895518622` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151902 has offset 0).

The definition of A151902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151902.P7704681107165413596

`log2(A060632(comp[or(3, n)]))`
-/

namespace A151902.P7704681107165413596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A151902.P7704681107165413596

namespace A151902

/-- `log2(A060632(comp[or(3, n)]))` -/
def P7704681107165413596.Spec : Prop :=
  ∀ n, P7704681107165413596.a n = (A151902 n : ℝ)

end A151902

/-! ## A151902.P9395804359895518622

`A000120(floor(2*n/3))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A151902

/-- `A000120(floor(2*n/3))` -/
def P9395804359895518622.Spec : Prop :=
  ∀ n, P9395804359895518622.a n = A151902 n

theorem P9395804359895518622.correct : P9395804359895518622.Spec := by
  intro n
  simp only [A151902]

end A151902

/-! ## A151902.P15063955600594956085

`log2(A001316(floor(2*n/3)))`
-/

namespace A151902.P15063955600594956085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 ⌊2 * ((n : ℚ) / 3)⌋.toNat : ℝ)

end

end A151902.P15063955600594956085

namespace A151902

/-- `log2(A001316(floor(2*n/3)))` -/
def P15063955600594956085.Spec : Prop :=
  ∀ n, P15063955600594956085.a n = (A151902 n : ℝ)

end A151902

/-! ## A151902.P3189691417154306216

`log2(A060632(round(4*n/3)))`
-/

namespace A151902.P3189691417154306216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat : ℝ)

end

end A151902.P3189691417154306216

namespace A151902

/-- `log2(A060632(round(4*n/3)))` -/
def P3189691417154306216.Spec : Prop :=
  ∀ n, P3189691417154306216.a n = (A151902 n : ℝ)

end A151902

/-! ## A151902.P6290527558430251248

`∑{digits}[A007088(floor(2*n/3)), #]`
-/

namespace A151902.P6290527558430251248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊2 * ((n : ℚ) / 3)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A151902.P6290527558430251248

namespace A151902

/-- `∑{digits}[A007088(floor(2*n/3)), #]` -/
def P6290527558430251248.Spec : Prop :=
  ∀ n, (P6290527558430251248.a n : ℤ) = A151902 n

end A151902

/-! ## A151902.P11517260939719103685

`log2(A048896(comp[or(3, n)]))`
-/

namespace A151902.P11517260939719103685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A048896 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A151902.P11517260939719103685

namespace A151902

/-- `log2(A048896(comp[or(3, n)]))` -/
def P11517260939719103685.Spec : Prop :=
  ∀ n, P11517260939719103685.a n = (A151902 n : ℝ)

end A151902

/-! ## A151902.P11911628945030250002

`A048881(comp[or(3, n)])`
-/

namespace A151902.P11911628945030250002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A151902.P11911628945030250002

namespace A151902

/-- `A048881(comp[or(3, n)])` -/
def P11911628945030250002.Spec : Prop :=
  ∀ n, P11911628945030250002.a n = A151902 n

end A151902

/-! ## A151902.P18235641862024265300

`A048881(comp[record[xor(3, n)]])`
-/

namespace A151902.P18235641862024265300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A151902.P18235641862024265300

namespace A151902

/-- `A048881(comp[record[xor(3, n)]])` -/
def P18235641862024265300.Spec : Prop :=
  ∀ n, P18235641862024265300.a n = A151902 n

end A151902

/-! ## A151902.P9360856974771404260

`A048881(floor(4*n/3))`
-/

namespace A151902.P9360856974771404260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 ⌊4 * ((n : ℚ) / 3)⌋.toNat

end

end A151902.P9360856974771404260

namespace A151902

/-- `A048881(floor(4*n/3))` -/
def P9360856974771404260.Spec : Prop :=
  ∀ n, P9360856974771404260.a n = A151902 n

end A151902

/-! ## A151902.P7533193970095714072

`A000120(comp[4*n])-1`
-/

namespace A151902.P7533193970095714072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A151902.P7533193970095714072

namespace A151902

/-- `A000120(comp[4*n])-1` -/
def P7533193970095714072.Spec : Prop :=
  ∀ n, P7533193970095714072.a n = A151902 n

end A151902

/-! ## A151902.P5945062174637680846

`A274009(or(1, comp[or(3, n)]))`
-/

namespace A151902.P5945062174637680846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A151902.P5945062174637680846

namespace A151902

/-- `A274009(or(1, comp[or(3, n)]))` -/
def P5945062174637680846.Spec : Prop :=
  ∀ n, P5945062174637680846.a n = A151902 n

end A151902

/-! ## A151902.P5234740701371570083

`A274009(A168056(n))`
-/

namespace A151902.P5234740701371570083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A168056 n).toNat

end

end A151902.P5234740701371570083

namespace A151902

/-- `A274009(A168056(n))` -/
def P5234740701371570083.Spec : Prop :=
  ∀ n, P5234740701371570083.a n = A151902 n

end A151902

/-! ## A151902.P386018432780278122

`A005812(A151904(n))`
-/

namespace A151902.P386018432780278122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A151904 n).toNat

end

end A151902.P386018432780278122

namespace A151902

/-- `A005812(A151904(n))` -/
def P386018432780278122.Spec : Prop :=
  ∀ n, P386018432780278122.a n = A151902 n

end A151902

/-! ## A151902.P6143604490070172163

`A000989(A196747(n+1))`
-/

namespace A151902.P6143604490070172163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A196747 (n + 1)).toNat

end

end A151902.P6143604490070172163

namespace A151902

/-- `A000989(A196747(n+1))` -/
def P6143604490070172163.Spec : Prop :=
  ∀ n, P6143604490070172163.a n = A151902 n

end A151902

/-! ## A151902.P2151675712152493047

`A092779(A047240(n+1))`
-/

namespace A151902.P2151675712152493047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092779 (A047240 (n + 1)).toNat

end

end A151902.P2151675712152493047

namespace A151902

/-- `A092779(A047240(n+1))` -/
def P2151675712152493047.Spec : Prop :=
  ∀ n, P2151675712152493047.a n = A151902 n

end A151902

/-! ## A151902.P11404591536432610872

`A004523(n)-A073750(n)`
-/

namespace A151902.P11404591536432610872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n - A073750 n

end

end A151902.P11404591536432610872

namespace A151902

/-- `A004523(n)-A073750(n)` -/
def P11404591536432610872.Spec : Prop :=
  ∀ n, P11404591536432610872.a n = A151902 n

end A151902

/-! ## A151902.P7769230329375099048

`A139355(A338888(n+1))`
-/

namespace A151902.P7769230329375099048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A338888 (n + 1)).toNat

end

end A151902.P7769230329375099048

namespace A151902

/-- `A139355(A338888(n+1))` -/
def P7769230329375099048.Spec : Prop :=
  ∀ n, P7769230329375099048.a n = A151902 n

end A151902

/-! ## A151902.P14135778877704687704

`val(A000108(comp[or(3, n)]), 2)`
-/

namespace A151902.P14135778877704687704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A151902.P14135778877704687704

namespace A151902

/-- `val(A000108(comp[or(3, n)]), 2)` -/
def P14135778877704687704.Spec : Prop :=
  ∀ n, (P14135778877704687704.a n : ℤ) = A151902 n

end A151902

/-! ## A151902.P11921675565496550837

`val(A000108(floor(4*n/3)), 2)`
-/

namespace A151902.P11921675565496550837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000108 ⌊4 * ((n : ℚ) / 3)⌋.toNat).toNat 2

end

end A151902.P11921675565496550837

namespace A151902

/-- `val(A000108(floor(4*n/3)), 2)` -/
def P11921675565496550837.Spec : Prop :=
  ∀ n, (P11921675565496550837.a n : ℤ) = A151902 n

end A151902

/-! ## A151902.P16269777744907056854

`val(A347304(2*n), 4)`
-/

namespace A151902.P16269777744907056854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A347304 (2 * n)).toNat 4

end

end A151902.P16269777744907056854

namespace A151902

/-- `val(A347304(2*n), 4)` -/
def P16269777744907056854.Spec : Prop :=
  ∀ n, (P16269777744907056854.a n : ℤ) = A151902 n

end A151902

/-!
# A151903: a(n) = smallest number k such that n! + k-th prime after n is prime.

The programs for A151903, there is no canonical definition to state claims against.
-/

/-! ## A151903.P18371089077428625694

`A000720(A037153(n+1))-A000720(n+1)`
-/

namespace A151903.P18371089077428625694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037153 (n + 1)).toNat - A000720 (n + 1)

end

end A151903.P18371089077428625694

/-! ## A151903.P12184628486888065890

`A036234(A037153(n+1))-A036234(n+1)`
-/

namespace A151903.P12184628486888065890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A037153 (n + 1)).toNat - A036234 (n + 1)

end

end A151903.P12184628486888065890

/-! ## A151903.P7507016810824743656

`A000720(A090786(n+1)+2+n)-A000720(n+1)`
-/

namespace A151903.P7507016810824743656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090786 (n + 1) + 2 + (n : ℤ)).toNat - A000720 (n + 1)

end

end A151903.P7507016810824743656

/-! ## A151903.P4572224001555826155

`A000720(A037152(n+1)-A000142(n+1))-A000720(n+1)`
-/

namespace A151903.P4572224001555826155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037152 (n + 1) - A000142 (n + 1)).toNat - A000720 (n + 1)

end

end A151903.P4572224001555826155

/-! ## A151903.P11297181096531778175

`A000720(A343593(n+1)+1+n)-A000720(n+1)`
-/

namespace A151903.P11297181096531778175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A343593 (n + 1) + 1 + (n : ℤ)).toNat - A000720 (n + 1)

end

end A151903.P11297181096531778175

/-!
# A151904: a(n) = (3^(wt(k)+f(j))-1)/2 if n = 6k+j, 0 <= j < 6, where wt = A000120, f = A151899.

The programs for A151904, the canonical program `A151904.P13386682430961133461` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151904 has offset 0).

The definition of A151904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151902, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151904.P13386682430961133461

`(3^A151902(n)-1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151904

/-- `(3^A151902(n)-1)/2` -/
def P13386682430961133461.Spec : Prop :=
  ∀ n, P13386682430961133461.a n = (A151904 n : ℚ)

end A151904

/-! ## A151904.P15770607820015742412

`A003462(A151902(n))`
-/

namespace A151904.P15770607820015742412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A151902 n).toNat

end

end A151904.P15770607820015742412

namespace A151904

/-- `A003462(A151902(n))` -/
def P15770607820015742412.Spec : Prop :=
  ∀ n, P15770607820015742412.a n = A151904 n

end A151904

/-! ## A151904.P2329239563645946507

`A128975(A047410(n+1))`
-/

namespace A151904.P2329239563645946507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A047410 (n + 1)).toNat

end

end A151904.P2329239563645946507

namespace A151904

/-- `A128975(A047410(n+1))` -/
def P2329239563645946507.Spec : Prop :=
  ∀ n, P2329239563645946507.a n = A151904 n

end A151904

/-! ## A151904.P12493966503220917178

`A162784(A004523(n))-1`
-/

namespace A151904.P12493966503220917178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (A004523 n).toNat - 1

end

end A151904.P12493966503220917178

namespace A151904

/-- `A162784(A004523(n))-1` -/
def P12493966503220917178.Spec : Prop :=
  ∀ n, P12493966503220917178.a n = A151904 n

end A151904

/-! ## A151904.P13078315429984716943

`A162784(A009947(n))-1`
-/

namespace A151904.P13078315429984716943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (A009947 n).toNat - 1

end

end A151904.P13078315429984716943

namespace A151904

/-- `A162784(A009947(n))-1` -/
def P13078315429984716943.Spec : Prop :=
  ∀ n, P13078315429984716943.a n = A151904 n

end A151904

/-! ## A151904.P15853943927669804273

`A128975(A301694(n)+2)`
-/

namespace A151904.P15853943927669804273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A301694 n + 2).toNat

end

end A151904.P15853943927669804273

namespace A151904

/-- `A128975(A301694(n)+2)` -/
def P15853943927669804273.Spec : Prop :=
  ∀ n, P15853943927669804273.a n = A151904 n

end A151904

/-! ## A151904.P6146255100910657404

`A128975(2*A168056(n))`
-/

namespace A151904.P6146255100910657404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (2 * A168056 n).toNat

end

end A151904.P6146255100910657404

namespace A151904

/-- `A128975(2*A168056(n))` -/
def P6146255100910657404.Spec : Prop :=
  ∀ n, P6146255100910657404.a n = A151904 n

end A151904

/-! ## A151904.P16695118978456001240

`A128975(lcm(2, A168056(n)))`
-/

namespace A151904.P16695118978456001240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (Int.lcm 2 (A168056 n))

end

end A151904.P16695118978456001240

namespace A151904

/-- `A128975(lcm(2, A168056(n)))` -/
def P16695118978456001240.Spec : Prop :=
  ∀ n, P16695118978456001240.a n = A151904 n

end A151904

/-! ## A151904.P10949994215815242213

`A128975(A173855(n+1)/2)`
-/

namespace A151904.P10949994215815242213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (SequenceMachineLib.roundAway ((A173855 (n + 1) : ℚ) / 2)).toNat

end

end A151904.P10949994215815242213

namespace A151904

/-- `A128975(A173855(n+1)/2)` -/
def P10949994215815242213.Spec : Prop :=
  ∀ n, P10949994215815242213.a n = A151904 n

end A151904

/-! ## A151904.P5700644209505051475

`A128975(Δ[A147623(n)])`
-/

namespace A151904.P5700644209505051475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (f1 (n + 1) - f1 n).toNat

end

end A151904.P5700644209505051475

namespace A151904

/-- `A128975(Δ[A147623(n)])` -/
def P5700644209505051475.Spec : Prop :=
  ∀ n, P5700644209505051475.a n = A151904 n

end A151904

/-! ## A151904.P1349914851930880738

`A128975(A173855(n+1))`
-/

namespace A151904.P1349914851930880738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A173855 (n + 1)).toNat

end

end A151904.P1349914851930880738

namespace A151904

/-- `A128975(A173855(n+1))` -/
def P1349914851930880738.Spec : Prop :=
  ∀ n, P1349914851930880738.a n = A151904 n

end A151904

/-! ## A151904.P9700058781503126609

`A128975(2*A008611(4*n))`
-/

namespace A151904.P9700058781503126609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (2 * A008611 (4 * n)).toNat

end

end A151904.P9700058781503126609

namespace A151904

/-- `A128975(2*A008611(4*n))` -/
def P9700058781503126609.Spec : Prop :=
  ∀ n, P9700058781503126609.a n = A151904 n

end A151904

/-! ## A151904.P16747274078351783878

`A152467(3^A000120(comp[4*n]))`
-/

namespace A151904.P16747274078351783878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ))).toNat

end

end A151904.P16747274078351783878

namespace A151904

/-- `A152467(3^A000120(comp[4*n]))` -/
def P16747274078351783878.Spec : Prop :=
  ∀ n, P16747274078351783878.a n = A151904 n

end A151904

/-!
# A151905: a(0) = a(2) = 0, a(1) = 1; for n >= 3, n = 3*2^k+j, 0 <= j < 3*2^k, a(n) = A151904(j).

The programs for A151905, there is no canonical definition to state claims against.
-/

/-! ## A151905.P12626642845769436255

`A002264(A151904(n))+char[1]`
-/

namespace A151905.P12626642845769436255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A151904 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151905.P12626642845769436255

/-! ## A151905.P14942608199546213166

`A008611(A151904(abs(1-n)+1))`
-/

namespace A151905.P14942608199546213166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151904 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A151905.P14942608199546213166

/-! ## A151905.P5535237890107404015

`A008611(A151904(n)+A000007(n))`
-/

namespace A151905.P5535237890107404015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151904 n + A000007 n).toNat

end

end A151905.P5535237890107404015

/-! ## A151905.P10403933273001265252

`A008611(A151904(n))%A000070(n)`
-/

namespace A151905.P10403933273001265252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A151904 n).toNat) (A000070 n)

end

end A151905.P10403933273001265252

/-! ## A151905.P7398062237535825308

`and(A000225(n), A008611(A151904(n)))`
-/

namespace A151905.P7398062237535825308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A008611 (A151904 n).toNat)

end

end A151905.P7398062237535825308

/-! ## A151905.P2496155051138960850

`A000045(ceil(n/63))*A008611(A151904(n))`
-/

namespace A151905.P2496155051138960850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / 63⌉.toNat * A008611 (A151904 n).toNat

end

end A151905.P2496155051138960850

/-! ## A151905.P9225047877387140113

`A000040(n+1)%2*A008611(A151904(n))`
-/

namespace A151905.P9225047877387140113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A008611 (A151904 n).toNat

end

end A151905.P9225047877387140113

/-! ## A151905.P18016912906623663265

`A008611(A151904(n))+A008683(2*(n+1)²)`
-/

namespace A151905.P18016912906623663265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151904 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A151905.P18016912906623663265

/-! ## A151905.P1494923494952092848

`A008611(A151904(n))-A001221(ceil(2/(n+1)))`
-/

namespace A151905.P1494923494952092848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151904 n).toNat - A001221 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A151905.P1494923494952092848

/-!
# A151906: a(0) = 0, a(1) = 1; for n>1, a(n) = 8*A151905(n) + 4.

The programs for A151906, there is no canonical definition to state claims against.
-/

/-! ## A151906.P2592162184711279659

`A147582(n+1-ceil(n/3))-floor(acot(n))`
-/

namespace A151906.P2592162184711279659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 ((n + 1 : ℤ) - ⌈(n : ℚ) / 3⌉).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A151906.P2592162184711279659

/-! ## A151906.P12077543890061948298

`A173457(A061891(n))-floor(acot(n))`
-/

namespace A151906.P12077543890061948298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (A061891 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A151906.P12077543890061948298

/-! ## A151906.P18154873963150714868

`A173457(A061891(n)%(3*n+1))`
-/

namespace A151906.P18154873963150714868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (Int.tmod (A061891 n) (3 * n + 1 : ℤ)).toNat

end

end A151906.P18154873963150714868

/-! ## A151906.P12890466925526864922

`A147582(A004396(n+1))%(n+1)²`
-/

namespace A151906.P12890466925526864922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147582 (A004396 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A151906.P12890466925526864922

/-! ## A151906.P16486689136169461537

`A147582(A008611(4*n))%(n+1)²`
-/

namespace A151906.P16486689136169461537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147582 (A008611 (4 * n)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A151906.P16486689136169461537

/-! ## A151906.P9113560066889734543

`A147582(A008611(n)+n)%(n+1)²`
-/

namespace A151906.P9113560066889734543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147582 (A008611 n + (n : ℤ)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A151906.P9113560066889734543

/-! ## A151906.P16471747915192189772

`A057427(n)*A147582(A168056(n))`
-/

namespace A151906.P16471747915192189772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A147582 (A168056 n).toNat

end

end A151906.P16471747915192189772

/-! ## A151906.P9420504579168830289

`A147582(A168056(n))*A178334(n)`
-/

namespace A151906.P9420504579168830289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A168056 n).toNat * A178334 n

end

end A151906.P9420504579168830289

/-! ## A151906.P7160347864373454637

`lcm(A001221(n+1), A147582(A168056(n)))`
-/

namespace A151906.P7160347864373454637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A147582 (A168056 n).toNat)

end

end A151906.P7160347864373454637

/-! ## A151906.P3964729654134063624

`A147582(A168056(n))%∑[A018252(n+1)]`
-/

namespace A151906.P3964729654134063624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147582 (A168056 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151906.P3964729654134063624

/-!
# A151907: Partial sums of A151906.

The programs for A151907, there is no canonical definition to state claims against.
-/

/-! ## A151907.P18188809936370195496

`∑[A151906(n)]`
-/

namespace A151907.P18188809936370195496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151907.P18188809936370195496

/-! ## A151907.P4331287738642755926

`∑[A147582(ceil(Δ[n²]/3))]-1`
-/

namespace A151907.P4331287738642755926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 ⌈((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A151907.P4331287738642755926

/-! ## A151907.P662084741773619618

`∑[A173457(A061891(n))]-1`
-/

namespace A151907.P662084741773619618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (A061891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A151907.P662084741773619618

/-! ## A151907.P2977359995591642090

`xor(2, ∑[A147582(A168056(n))]+1)`
-/

namespace A151907.P2977359995591642090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A168056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151907.P2977359995591642090

/-! ## A151907.P11380289407727578525

`abs(∑[A147582(A004396(n+1))]-1)`
-/

namespace A151907.P11380289407727578525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A004396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A151907.P11380289407727578525

/-! ## A151907.P555287904647979003

`∑[A173457(A061891(n)%(3*n+1))]`
-/

namespace A151907.P555287904647979003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (Int.tmod (A061891 n) (3 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151907.P555287904647979003

/-! ## A151907.P6473173039700509892

`∑[A147582(A008611(4*n))%(n+1)²]`
-/

namespace A151907.P6473173039700509892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147582 (A008611 (4 * n)).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151907.P6473173039700509892

/-! ## A151907.P471130187246086537

`∑[A057427(n)*A147582(A168056(n))]`
-/

namespace A151907.P471130187246086537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A147582 (A168056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151907.P471130187246086537

/-! ## A151907.P14683537344924847835

`∑[A147582(A168056(n))*A178334(n)]`
-/

namespace A151907.P14683537344924847835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A168056 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151907.P14683537344924847835

/-! ## A151907.P3919784102449425631

`∑[A000040(n+1)%2*A147582(A168056(n))]`
-/

namespace A151907.P3919784102449425631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A147582 (A168056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151907.P3919784102449425631

/-!
# A151909: Weight distribution of [255,45,87] primitive binary BCH code.

The programs for A151909, there is no canonical definition to state claims against.
-/

/-! ## A151909.P6109765680590250664

`A151933(gcd(2*n, and(3*n+2, -3)))`
-/

namespace A151909.P6109765680590250664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.gcd (2 * n : ℤ) (Int.land (3 * n + 2 : ℤ) (-3)))

end

end A151909.P6109765680590250664

/-! ## A151909.P13109416003780210627

`A151933(gcd(char[1]+n, ∑[n]%2+2*n))`
-/

namespace A151909.P13109416003780210627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Nat.gcd ((if ∃ j, f1 j = n then 1 else 0) + n) ((∑ j ∈ Finset.range (n + 1), f2 j) % 2 + 2 * n))

end

end A151909.P13109416003780210627

/-! ## A151909.P5106959016016225387

`A151933(gcd(n, A003815(n)))`
-/

namespace A151909.P5106959016016225387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.gcd (n : ℤ) (A003815 n))

end

end A151909.P5106959016016225387

/-! ## A151909.P7975911591621324518

`A151933(gcd(n², A080412(n)))`
-/

namespace A151909.P7975911591621324518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.gcd (n ^ 2 : ℤ) (A080412 n))

end

end A151909.P7975911591621324518

/-! ## A151909.P6542771641120606828

`A151933(n^∑[A163805(n)])`
-/

namespace A151909.P6542771641120606828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A151909.P6542771641120606828

/-! ## A151909.P16362814964095780264

`A151933(n^Δ[A004525(n)])`
-/

namespace A151909.P16362814964095780264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A151909.P16362814964095780264

/-! ## A151909.P16460927333626413941

`A151933(n^(A000124(n)%2))`
-/

namespace A151909.P16460927333626413941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A000124 n) 2 : ℤ))).toNat

end

end A151909.P16460927333626413941

/-! ## A151909.P1357267528085988626

`A151933(gcd(char[1]+n, A047430(n+1)))`
-/

namespace A151909.P1357267528085988626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.gcd (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A047430 (n + 1)))

end

end A151909.P1357267528085988626

/-! ## A151909.P15821473405304421064

`A151933(gcd(A005843(n), A072833(n)))`
-/

namespace A151909.P15821473405304421064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.gcd (A005843 n) (A072833 n))

end

end A151909.P15821473405304421064

/-!
# A151910: First differences of A001682.

The programs for A151910, there is no canonical definition to state claims against.
-/

/-! ## A151910.P6636976409874809016

`Δ[A001682(n+1)]`
-/

namespace A151910.P6636976409874809016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151910.P6636976409874809016

/-! ## A151910.P11841257616341384201

`Δ[record[A001682(A158416(n))]]`
-/

namespace A151910.P11841257616341384201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151910.P11841257616341384201

/-! ## A151910.P14842197807423961119

`Δ[record[A001682(A328397(n))]]`
-/

namespace A151910.P14842197807423961119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151910.P14842197807423961119

/-! ## A151910.P13736555207855429797

`A001682(n+2)-A001682(n+1)`
-/

namespace A151910.P13736555207855429797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (n + 2) - A001682 (n + 1)

end

end A151910.P13736555207855429797

/-! ## A151910.P1637858886443957691

`A118759(Δ[A001682(n-log2(1/2))])`
-/

namespace A151910.P1637858886443957691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (n + 1) - f1 n).toNat

end

end A151910.P1637858886443957691

/-! ## A151910.P3570905024651432101

`Δ[record[A001682(A286543(n))]]`
-/

namespace A151910.P3570905024651432101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (A286543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151910.P3570905024651432101

/-!
# A151911: Abs(square of n-th prime minus cube of n-1).

The programs for A151911, the canonical program `A151911.P11560494643447591644` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151911 has offset 1).

The definition of A151911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151911.P11560494643447591644

`abs(A000040(n+1)²-n^3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151911

/-- `abs(A000040(n+1)²-n^3)` -/
def P11560494643447591644.Spec : Prop :=
  ∀ n, P11560494643447591644.a n = A151911 (n + 1)

theorem P11560494643447591644.correct : P11560494643447591644.Spec := by
  intro n
  simp only [A151911, Nat.add_sub_cancel]

end A151911

/-! ## A151911.P1467386097525297783

`abs(A001248(n+1)-A000578(n))`
-/

namespace A151911.P1467386097525297783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001248 (n + 1) - A000578 n|

end

end A151911.P1467386097525297783

namespace A151911

/-- `abs(A001248(n+1)-A000578(n))` -/
def P1467386097525297783.Spec : Prop :=
  ∀ n, P1467386097525297783.a n = A151911 (n + 1)

theorem P1467386097525297783.correct : P1467386097525297783.Spec := by
  intro n
  simp only [A151911, Nat.add_sub_cancel, A151911.P1467386097525297783.a, A151911.P11560494643447591644.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000578, A000578.P12162961755414704816.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A151911

/-! ## A151911.P15173565807376256468

`abs(A000578(n)-Δ[A007504(n)]²)`
-/

namespace A151911.P15173565807376256468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - (f1 (n + 1) - f1 n) ^ 2|

end

end A151911.P15173565807376256468

namespace A151911

/-- `abs(A000578(n)-Δ[A007504(n)]²)` -/
def P15173565807376256468.Spec : Prop :=
  ∀ n, P15173565807376256468.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P12242801446516410273

`abs(A000578(n)-Δ[A022837(n)]²)`
-/

namespace A151911.P12242801446516410273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - (f1 (n + 1) - f1 n) ^ 2|

end

end A151911.P12242801446516410273

namespace A151911

/-- `abs(A000578(n)-Δ[A022837(n)]²)` -/
def P12242801446516410273.Spec : Prop :=
  ∀ n, P12242801446516410273.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P7931080987051151436

`abs(A000578(n)-Δ[A024525(n)])`
-/

namespace A151911.P7931080987051151436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - (f1 (n + 1) - f1 n)|

end

end A151911.P7931080987051151436

namespace A151911

/-- `abs(A000578(n)-Δ[A024525(n)])` -/
def P7931080987051151436.Spec : Prop :=
  ∀ n, P7931080987051151436.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P2597060114076235788

`abs(record[A006530(n+2)²]-n^3)`
-/

namespace A151911.P2597060114076235788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 3 : ℤ)|

end

end A151911.P2597060114076235788

namespace A151911

/-- `abs(record[A006530(n+2)²]-n^3)` -/
def P2597060114076235788.Spec : Prop :=
  ∀ n, P2597060114076235788.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P16688494895761376705

`abs(record[A020639(n+2)²]-n^3)`
-/

namespace A151911.P16688494895761376705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 3 : ℤ)|

end

end A151911.P16688494895761376705

namespace A151911

/-- `abs(record[A020639(n+2)²]-n^3)` -/
def P16688494895761376705.Spec : Prop :=
  ∀ n, P16688494895761376705.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P10937219181873578950

`abs(A000578(n)-p?[A007989(n)]²)`
-/

namespace A151911.P10937219181873578950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2|

end

end A151911.P10937219181873578950

namespace A151911

/-- `abs(A000578(n)-p?[A007989(n)]²)` -/
def P10937219181873578950.Spec : Prop :=
  ∀ n, P10937219181873578950.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P9809888789219191782

`abs(n^3-p?[comp[n²]]²)`
-/

namespace A151911.P9809888789219191782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ)|

end

end A151911.P9809888789219191782

namespace A151911

/-- `abs(n^3-p?[comp[n²]]²)` -/
def P9809888789219191782.Spec : Prop :=
  ∀ n, P9809888789219191782.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P10697113924305745442

`abs(record[A039649(n+1)²]-n^3)`
-/

namespace A151911.P10697113924305745442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 3 : ℤ)|

end

end A151911.P10697113924305745442

namespace A151911

/-- `abs(record[A039649(n+1)²]-n^3)` -/
def P10697113924305745442.Spec : Prop :=
  ∀ n, P10697113924305745442.a n = A151911 (n + 1)

end A151911

/-! ## A151911.P12197696989904579697

`abs(record[A014963(n+2)²]-n^3)`
-/

namespace A151911.P12197696989904579697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 3 : ℤ)|

end

end A151911.P12197696989904579697

namespace A151911

/-- `abs(record[A014963(n+2)²]-n^3)` -/
def P12197696989904579697.Spec : Prop :=
  ∀ n, P12197696989904579697.a n = A151911 (n + 1)

end A151911

/-!
# A151912: Expansion of (1-8x-8x^3)/(1-2x+4x^2)^2.

The programs for A151912, the canonical program `A151912.P6899281180441259542` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151912 has offset 0).

The definition of A151912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x-8x^3)/(1-4x+12x^2-16x^3+16x^4))` (program `A151912.P6899281180441259542`, by `A151912.P6899281180441259542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A151912.P6899281180441259542

`ogf((1-8x-8x^3)/(1-4x+12x^2-16x^3+16x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151912

/-- `ogf((1-8x-8x^3)/(1-4x+12x^2-16x^3+16x^4))` -/
def P6899281180441259542.Spec : Prop :=
  ∀ n, P6899281180441259542.a n = A151912 n

theorem P6899281180441259542.correct : P6899281180441259542.Spec := by
  intro n
  simp only [A151912]

end A151912

/-! ## A151912.P5950944141531879659

`2^n*A138341(n)`
-/

namespace A151912.P5950944141531879659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A138341 n

end

end A151912.P5950944141531879659

namespace A151912

/-- `2^n*A138341(n)` -/
def P5950944141531879659.Spec : Prop :=
  ∀ n, P5950944141531879659.a n = A151912 n

end A151912

/-! ## A151912.P9240706185198745091

`2^n*∑[Δ[n²]*A163810(n)]`
-/

namespace A151912.P9240706185198745091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151912.P9240706185198745091

namespace A151912

/-- `2^n*∑[Δ[n²]*A163810(n)]` -/
def P9240706185198745091.Spec : Prop :=
  ∀ n, P9240706185198745091.a n = A151912 n

end A151912

/-! ## A151912.P824984468945009363

`2^n*∑[A106510(n)*A157142(n)]`
-/

namespace A151912.P824984468945009363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 n * A157142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151912.P824984468945009363

namespace A151912

/-- `2^n*∑[A106510(n)*A157142(n)]` -/
def P824984468945009363.Spec : Prop :=
  ∀ n, P824984468945009363.a n = A151912 n

end A151912

/-! ## A151912.P6541783754627093941

`∑[Δ[n²]*A163810(n)]*A000079(n)`
-/

namespace A151912.P6541783754627093941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A151912.P6541783754627093941

namespace A151912

/-- `∑[Δ[n²]*A163810(n)]*A000079(n)` -/
def P6541783754627093941.Spec : Prop :=
  ∀ n, P6541783754627093941.a n = A151912 n

end A151912

/-! ## A151912.P12910037741852696423

`A138341(n)%A240530(n)*A000079(n)`
-/

namespace A151912.P12910037741852696423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138341 n) (A240530 n) * A000079 n

end

end A151912.P12910037741852696423

namespace A151912

/-- `A138341(n)%A240530(n)*A000079(n)` -/
def P12910037741852696423.Spec : Prop :=
  ∀ n, P12910037741852696423.a n = A151912 n

end A151912

/-!
# A151914: a(0)=0, a(1)=4; for n>=2, a(n) = (8/3)*(Sum_{i=1..n-1} 3^wt(i)) + 4, where wt() = A000120().

The programs for A151914, the canonical program `A151914.P6792254600135524529` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151914 has offset 0).

The definition of A151914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079315, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151914.P5424177329595826239

`4*A151917(n)`
-/

namespace A151914.P5424177329595826239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A151917 n

end

end A151914.P5424177329595826239

namespace A151914

/-- `4*A151917(n)` -/
def P5424177329595826239.Spec : Prop :=
  ∀ n, P5424177329595826239.a n = A151914 n

end A151914

/-! ## A151914.P6792254600135524529

`A079315(2*n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A151914

/-- `A079315(2*n)` -/
def P6792254600135524529.Spec : Prop :=
  ∀ n, P6792254600135524529.a n = A151914 n

theorem P6792254600135524529.correct : P6792254600135524529.Spec := by
  intro n
  simp only [A151914]

end A151914

/-! ## A151914.P10608517848870703857

`4*ceil(A147562(n)/2)`
-/

namespace A151914.P10608517848870703857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(A147562 n : ℚ) / 2⌉

end

end A151914.P10608517848870703857

namespace A151914

/-- `4*ceil(A147562(n)/2)` -/
def P10608517848870703857.Spec : Prop :=
  ∀ n, P10608517848870703857.a n = A151914 n

end A151914

/-! ## A151914.P11026607743099950838

`lcm(A040002(n), A151917(n))`
-/

namespace A151914.P11026607743099950838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040002 n) (A151917 n)

end

end A151914.P11026607743099950838

namespace A151914

/-- `lcm(A040002(n), A151917(n))` -/
def P11026607743099950838.Spec : Prop :=
  ∀ n, (P11026607743099950838.a n : ℤ) = A151914 n

end A151914

/-! ## A151914.P941532305354496584

`A151921(2*n)`
-/

namespace A151914.P941532305354496584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 (2 * n)

end

end A151914.P941532305354496584

namespace A151914

/-- `A151921(2*n)` -/
def P941532305354496584.Spec : Prop :=
  ∀ n, P941532305354496584.a n = A151914 n

end A151914

/-! ## A151914.P9878759591264968781

`record[lcm(4, A151921(n))]`
-/

namespace A151914.P9878759591264968781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A151921 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151914.P9878759591264968781

namespace A151914

/-- `record[lcm(4, A151921(n))]` -/
def P9878759591264968781.Spec : Prop :=
  ∀ n, (P9878759591264968781.a n : ℤ) = A151914 n

end A151914

/-! ## A151914.P12711523608755646896

`abs(A151921(n+n))`
-/

namespace A151914.P12711523608755646896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151921 (n + n)|

end

end A151914.P12711523608755646896

namespace A151914

/-- `abs(A151921(n+n))` -/
def P12711523608755646896.Spec : Prop :=
  ∀ n, P12711523608755646896.a n = A151914 n

end A151914

/-! ## A151914.P12055215755262695665

`record[A151921(abs(3-n))]`
-/

namespace A151914.P12055215755262695665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151914.P12055215755262695665

namespace A151914

/-- `record[A151921(abs(3-n))]` -/
def P12055215755262695665.Spec : Prop :=
  ∀ n, P12055215755262695665.a n = A151914 n

end A151914

/-! ## A151914.P7127626901285380526

`A008586(A151917(n))`
-/

namespace A151914.P7127626901285380526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A151917 n).toNat

end

end A151914.P7127626901285380526

namespace A151914

/-- `A008586(A151917(n))` -/
def P7127626901285380526.Spec : Prop :=
  ∀ n, P7127626901285380526.a n = A151914 n

end A151914

/-! ## A151914.P14809319593299187952

`A066104(A147562(n))`
-/

namespace A151914.P14809319593299187952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 (A147562 n).toNat

end

end A151914.P14809319593299187952

namespace A151914

/-- `A066104(A147562(n))` -/
def P14809319593299187952.Spec : Prop :=
  ∀ n, P14809319593299187952.a n = A151914 n

end A151914

/-!
# A151915: Wythoff AAAA numbers.

The programs for A151915, the canonical program `A151915.P9233811335574019184` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151915 has offset 1).

The definition of A151915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151915.P9233811335574019184

`3*floor((n+1)*ϕ)+2*(n+1)-4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151915

/-- `3*floor((n+1)*ϕ)+2*(n+1)-4` -/
def P9233811335574019184.Spec : Prop :=
  ∀ n, P9233811335574019184.a n = A151915 (n + 1)

theorem P9233811335574019184.correct : P9233811335574019184.Spec := by
  intro n
  simp only [A151915, Nat.add_sub_cancel]

end A151915

/-! ## A151915.P2443850390051179010

`and(3*floor(n*ϕ²+ϕ)-n-2, -1)`
-/

namespace A151915.P2443850390051179010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ) - 2) (-1)

end

end A151915.P2443850390051179010

namespace A151915

/-- `and(3*floor(n*ϕ²+ϕ)-n-2, -1)` -/
def P2443850390051179010.Spec : Prop :=
  ∀ n, P2443850390051179010.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P2314101399609280676

`floor(ϕ*xor(-(2*floor(ϕ*(n+1))+n), -1))`
-/

namespace A151915.P2314101399609280676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Int.xor (-(2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))) (-1) : ℝ)⌋

end

end A151915.P2314101399609280676

namespace A151915

/-- `floor(ϕ*xor(-(2*floor(ϕ*(n+1))+n), -1))` -/
def P2314101399609280676.Spec : Prop :=
  ∀ n, P2314101399609280676.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P17310513089141184951

`A134859(A000201(n+1))`
-/

namespace A151915.P17310513089141184951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A000201 (n + 1)).toNat

end

end A151915.P17310513089141184951

namespace A151915

/-- `A134859(A000201(n+1))` -/
def P17310513089141184951.Spec : Prop :=
  ∀ n, P17310513089141184951.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P9606505486172716391

`A134859(A066096(n+1))`
-/

namespace A151915.P9606505486172716391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A066096 (n + 1)).toNat

end

end A151915.P9606505486172716391

namespace A151915

/-- `A134859(A066096(n+1))` -/
def P9606505486172716391.Spec : Prop :=
  ∀ n, P9606505486172716391.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P18436133686578490300

`A134859(A022342(n+1)+1)`
-/

namespace A151915.P18436133686578490300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A022342 (n + 1) + 1).toNat

end

end A151915.P18436133686578490300

namespace A151915

/-- `A134859(A022342(n+1)+1)` -/
def P18436133686578490300.Spec : Prop :=
  ∀ n, P18436133686578490300.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P8762468055307680048

`A134859(A019446(n+1)+n)`
-/

namespace A151915.P8762468055307680048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A019446 (n + 1) + (n : ℤ)).toNat

end

end A151915.P8762468055307680048

namespace A151915

/-- `A134859(A019446(n+1)+n)` -/
def P8762468055307680048.Spec : Prop :=
  ∀ n, P8762468055307680048.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P8275816346598980947

`A134859(A003622(n+1)-n)`
-/

namespace A151915.P8275816346598980947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A151915.P8275816346598980947

namespace A151915

/-- `A134859(A003622(n+1)-n)` -/
def P8275816346598980947.Spec : Prop :=
  ∀ n, P8275816346598980947.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P751670455592933045

`A035339(n)%A134863(n+1)`
-/

namespace A151915.P751670455592933045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035339 n) (A134863 (n + 1))

end

end A151915.P751670455592933045

namespace A151915

/-- `A035339(n)%A134863(n+1)` -/
def P751670455592933045.Spec : Prop :=
  ∀ n, P751670455592933045.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P18129013774353075972

`A035340(n)%A372302(n+1)`
-/

namespace A151915.P18129013774353075972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035340 n) (A372302 (n + 1))

end

end A151915.P18129013774353075972

namespace A151915

/-- `A035340(n)%A372302(n+1)` -/
def P18129013774353075972.Spec : Prop :=
  ∀ n, P18129013774353075972.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P13363358779833103964

`A003622(A003622(n+1))`
-/

namespace A151915.P13363358779833103964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003622 (n + 1)).toNat

end

end A151915.P13363358779833103964

namespace A151915

/-- `A003622(A003622(n+1))` -/
def P13363358779833103964.Spec : Prop :=
  ∀ n, P13363358779833103964.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P14430491559065956749

`A003622(A307295(2*n)-1)`
-/

namespace A151915.P14430491559065956749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A307295 (2 * n) - 1).toNat

end

end A151915.P14430491559065956749

namespace A151915

/-- `A003622(A307295(2*n)-1)` -/
def P14430491559065956749.Spec : Prop :=
  ∀ n, P14430491559065956749.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P15420253210116161320

`A003622(eq[1, A003849(n)])`
-/

namespace A151915.P15420253210116161320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151915.P15420253210116161320

namespace A151915

/-- `A003622(eq[1, A003849(n)])` -/
def P15420253210116161320.Spec : Prop :=
  ∀ n, P15420253210116161320.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P9621490591870510470

`A003622(eq[2, A003842(n)])`
-/

namespace A151915.P9621490591870510470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151915.P9621490591870510470

namespace A151915

/-- `A003622(eq[2, A003842(n)])` -/
def P9621490591870510470.Spec : Prop :=
  ∀ n, P9621490591870510470.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P15032303557828769996

`A003259(A001950(n+1)-1)`
-/

namespace A151915.P15032303557828769996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (A001950 (n + 1) - 1).toNat

end

end A151915.P15032303557828769996

namespace A151915

/-- `A003259(A001950(n+1)-1)` -/
def P15032303557828769996.Spec : Prop :=
  ∀ n, P15032303557828769996.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P14581868257702049538

`A007064(A001950(n+1)-1)`
-/

namespace A151915.P14581868257702049538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A001950 (n + 1) - 1).toNat

end

end A151915.P14581868257702049538

namespace A151915

/-- `A007064(A001950(n+1)-1)` -/
def P14581868257702049538.Spec : Prop :=
  ∀ n, P14581868257702049538.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P1500657621975149393

`A007064(A057843(n+1)+2)`
-/

namespace A151915.P1500657621975149393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A057843 (n + 1) + 2).toNat

end

end A151915.P1500657621975149393

namespace A151915

/-- `A007064(A057843(n+1)+2)` -/
def P1500657621975149393.Spec : Prop :=
  ∀ n, P1500657621975149393.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P15164720172741080484

`A003259(A000201(n+1)+n)`
-/

namespace A151915.P15164720172741080484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A151915.P15164720172741080484

namespace A151915

/-- `A003259(A000201(n+1)+n)` -/
def P15164720172741080484.Spec : Prop :=
  ∀ n, P15164720172741080484.a n = A151915 (n + 1)

end A151915

/-! ## A151915.P6067492473123103980

`A007064(A000201(n+1)+n)`
-/

namespace A151915.P6067492473123103980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A151915.P6067492473123103980

namespace A151915

/-- `A007064(A000201(n+1)+n)` -/
def P6067492473123103980.Spec : Prop :=
  ∀ n, P6067492473123103980.a n = A151915 (n + 1)

end A151915

/-!
# A151916: Numbers n such that A108197(n) = 0.

The programs for A151916, there is no canonical definition to state claims against.
-/

/-! ## A151916.P5272380759329081148

`eq[0, A179939(n+1)]+1`
-/

namespace A151916.P5272380759329081148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151916.P5272380759329081148

/-! ## A151916.P1595570742818912148

`lt[A175040(n+1), 2*n]`
-/

namespace A151916.P1595570742818912148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A151916.P1595570742818912148

/-! ## A151916.P5841968895057164387

`lt[A179939(abs(1-n)+1), 1]`
-/

namespace A151916.P5841968895057164387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179939 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A151916.P5841968895057164387

/-! ## A151916.P1648541211083526622

`eq[1, A065516(abs(2-n)+2)]`
-/

namespace A151916.P1648541211083526622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151916.P1648541211083526622

/-! ## A151916.P12466889865912843419

`eq[n, n*A065516(n+1)]+1`
-/

namespace A151916.P12466889865912843419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151916.P12466889865912843419

/-! ## A151916.P8850914525805989325

`record[A058933(A045920(n+1))]`
-/

namespace A151916.P8850914525805989325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A045920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151916.P8850914525805989325

/-! ## A151916.P15634547985770409376

`record[A058933(A242466(n+1))]`
-/

namespace A151916.P15634547985770409376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A242466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151916.P15634547985770409376

/-! ## A151916.P8881918277841453286

`eq[1, A303337(A186621(n+1))]`
-/

namespace A151916.P8881918277841453286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303337 (A186621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151916.P8881918277841453286

/-! ## A151916.P716885387617811272

`eq[A028310(n), A175040(n+1)]`
-/

namespace A151916.P716885387617811272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151916.P716885387617811272

/-! ## A151916.P6486456345447632989

`eq[A000010(C(n, n²)+2), A065516(n+1)]+1`
-/

namespace A151916.P6486456345447632989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose n (n ^ 2) + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A151916.P6486456345447632989

/-!
# A151917: a(0)=0, a(1)=1; for n>=2, a(n) = (2/3)*(Sum_{i=1..n-1} 3^wt(i)) + 1, where wt() = A000120().

The programs for A151917, the canonical program `A151917.P4918562184165158230` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151917 has offset 0).

The definition of A151917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151914, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151917.P4918562184165158230

`A151914(n)/4`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A151917

/-- `A151914(n)/4` -/
def P4918562184165158230.Spec : Prop :=
  ∀ n, P4918562184165158230.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P7439293557655821285

`A079315(2*n)/4`
-/

namespace A151917.P7439293557655821285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079315 (2 * n) : ℚ) / 4

end

end A151917.P7439293557655821285

namespace A151917

/-- `A079315(2*n)/4` -/
def P7439293557655821285.Spec : Prop :=
  ∀ n, P7439293557655821285.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P17112379755040770976

`ceil(A147562(n)/2)`
-/

namespace A151917.P17112379755040770976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A147562 n : ℚ) / 2⌉

end

end A151917.P17112379755040770976

namespace A151917

/-- `ceil(A147562(n)/2)` -/
def P17112379755040770976.Spec : Prop :=
  ∀ n, P17112379755040770976.a n = A151917 n

end A151917

/-! ## A151917.P3248817407438605740

`ceil(A160410(n)/6)`
-/

namespace A151917.P3248817407438605740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160410 n : ℚ) / 6⌉

end

end A151917.P3248817407438605740

namespace A151917

/-- `ceil(A160410(n)/6)` -/
def P3248817407438605740.Spec : Prop :=
  ∀ n, P3248817407438605740.a n = A151917 n

end A151917

/-! ## A151917.P6678750964065718255

`A160410(n)/2-A147562(n)`
-/

namespace A151917.P6678750964065718255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 n : ℚ) / 2 - (A147562 n : ℚ)

end

end A151917.P6678750964065718255

namespace A151917

/-- `A160410(n)/2-A147562(n)` -/
def P6678750964065718255.Spec : Prop :=
  ∀ n, P6678750964065718255.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P6586014338570575251

`(A185114(n+3)+A147562(n))/2`
-/

namespace A151917.P6586014338570575251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185114 (n + 3) + A147562 n : ℚ) / 2

end

end A151917.P6586014338570575251

namespace A151917

/-- `(A185114(n+3)+A147562(n))/2` -/
def P6586014338570575251.Spec : Prop :=
  ∀ n, P6586014338570575251.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P16407165931542124371

`round(A147562(2*n)/8)`
-/

namespace A151917.P16407165931542124371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147562 (2 * n) : ℚ) / 8)

end

end A151917.P16407165931542124371

namespace A151917

/-- `round(A147562(2*n)/8)` -/
def P16407165931542124371.Spec : Prop :=
  ∀ n, P16407165931542124371.a n = A151917 n

end A151917

/-! ## A151917.P15053138261459428732

`record[A048883(n)/3-a(n-1)]` with `a(0)=0`
-/

namespace A151917.P15053138261459428732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (A048883 n : ℚ) / 3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151917.P15053138261459428732

namespace A151917

/-- `record[A048883(n)/3-a(n-1)]` -/
def P15053138261459428732.Spec : Prop :=
  ∀ n, P15053138261459428732.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P993626395500627265

`A183060(n)+1-A028310(n)`
-/

namespace A151917.P993626395500627265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 n + (1 - A028310 n)

end

end A151917.P993626395500627265

namespace A151917

/-- `A183060(n)+1-A028310(n)` -/
def P993626395500627265.Spec : Prop :=
  ∀ n, P993626395500627265.a n = A151917 n

end A151917

/-! ## A151917.P10194542835264324469

`A147562(n)+n-A183060(n)`
-/

namespace A151917.P10194542835264324469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n + ((n : ℤ) - A183060 n)

end

end A151917.P10194542835264324469

namespace A151917

/-- `A147562(n)+n-A183060(n)` -/
def P10194542835264324469.Spec : Prop :=
  ∀ n, P10194542835264324469.a n = A151917 n

end A151917

/-! ## A151917.P13442447321411142059

`A183060(A005843(n))/2-A183060(n)`
-/

namespace A151917.P13442447321411142059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183060 (A005843 n).toNat : ℚ) / 2 - (A183060 n : ℚ)

end

end A151917.P13442447321411142059

namespace A151917

/-- `A183060(A005843(n))/2-A183060(n)` -/
def P13442447321411142059.Spec : Prop :=
  ∀ n, P13442447321411142059.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P12161503025396643734

`A151921(2*n)/4`
-/

namespace A151917.P12161503025396643734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151921 (2 * n) : ℚ) / 4

end

end A151917.P12161503025396643734

namespace A151917

/-- `A151921(2*n)/4` -/
def P12161503025396643734.Spec : Prop :=
  ∀ n, P12161503025396643734.a n = (A151917 n : ℚ)

end A151917

/-! ## A151917.P16398709766344718759

`A183060(n)-log2(A011782(n))`
-/

namespace A151917.P16398709766344718759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183060 n : ℝ) - Real.logb 2 (A011782 n : ℝ)

end

end A151917.P16398709766344718759

namespace A151917

/-- `A183060(n)-log2(A011782(n))` -/
def P16398709766344718759.Spec : Prop :=
  ∀ n, P16398709766344718759.a n = (A151917 n : ℝ)

end A151917

/-! ## A151917.P2274221215469177823

`∑{d}[A147562(n), A004525(A000010(#))]`
-/

namespace A151917.P2274221215469177823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004525 (A000010 d).toNat

end

end A151917.P2274221215469177823

namespace A151917

/-- `∑{d}[A147562(n), A004525(A000010(#))]` -/
def P2274221215469177823.Spec : Prop :=
  ∀ n, P2274221215469177823.a n = A151917 n

end A151917

/-! ## A151917.P16606240990502508563

`xor(1, A026741(xor(1, A147562(n))))`
-/

namespace A151917.P16606240990502508563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A026741 (Int.xor 1 (A147562 n)).toNat)

end

end A151917.P16606240990502508563

namespace A151917

/-- `xor(1, A026741(xor(1, A147562(n))))` -/
def P16606240990502508563.Spec : Prop :=
  ∀ n, P16606240990502508563.a n = A151917 n

end A151917

/-! ## A151917.P5768733812096603474

`A110654(n)+A110654(A147562(n)-n)`
-/

namespace A151917.P5768733812096603474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A110654 (A147562 n - (n : ℤ)).toNat

end

end A151917.P5768733812096603474

namespace A151917

/-- `A110654(n)+A110654(A147562(n)-n)` -/
def P5768733812096603474.Spec : Prop :=
  ∀ n, P5768733812096603474.a n = A151917 n

end A151917

/-! ## A151917.P893722080547672845

`A001057(A147562(n))`
-/

namespace A151917.P893722080547672845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A147562 n).toNat

end

end A151917.P893722080547672845

namespace A151917

/-- `A001057(A147562(n))` -/
def P893722080547672845.Spec : Prop :=
  ∀ n, P893722080547672845.a n = A151917 n

end A151917

/-! ## A151917.P8485654061333163970

`A004526(A147562(n)+1)`
-/

namespace A151917.P8485654061333163970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147562 n + 1).toNat

end

end A151917.P8485654061333163970

namespace A151917

/-- `A004526(A147562(n)+1)` -/
def P8485654061333163970.Spec : Prop :=
  ∀ n, P8485654061333163970.a n = A151917 n

end A151917

/-! ## A151917.P16812860296270755880

`A025480(A147562(n)+1)`
-/

namespace A151917.P16812860296270755880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A147562 n + 1).toNat

end

end A151917.P16812860296270755880

namespace A151917

/-- `A025480(A147562(n)+1)` -/
def P16812860296270755880.Spec : Prop :=
  ∀ n, P16812860296270755880.a n = A151917 n

end A151917

/-! ## A151917.P10687528401795292471

`A060681(A147562(n)+1)`
-/

namespace A151917.P10687528401795292471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A147562 n + 1).toNat

end

end A151917.P10687528401795292471

namespace A151917

/-- `A060681(A147562(n)+1)` -/
def P10687528401795292471.Spec : Prop :=
  ∀ n, P10687528401795292471.a n = A151917 n

end A151917

/-!
# A151918: a(n) = k! - prime(n) where k is the smallest number for which prime(n) <= k!.

The programs for A151918, there is no canonical definition to state claims against.
-/

/-! ## A151918.P9477186600507866972

`∑{d}[p?[A007989(n)], A048765(#)-#]`
-/

namespace A151918.P9477186600507866972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A048765 d - (d : ℤ))

end

end A151918.P9477186600507866972

/-! ## A151918.P14942222917084831948

`∑{d}[p?[A077127(n)], A048765(#)-#]`
-/

namespace A151918.P14942222917084831948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077127 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A048765 d - (d : ℤ))

end

end A151918.P14942222917084831948

/-! ## A151918.P10361485996657242081

`∑{d}[p?[A259153(n)], A048765(#)-#]`
-/

namespace A151918.P10361485996657242081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A048765 d - (d : ℤ))

end

end A151918.P10361485996657242081

/-! ## A151918.P11864274028953942745

`∑{d}[A000040(n+1), A048765(#)-#]`
-/

namespace A151918.P11864274028953942745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A048765 d - (d : ℤ))

end

end A151918.P11864274028953942745

/-! ## A151918.P9012506989091642814

`∏{p}[A008578(n+2), A048765(#)-#]`
-/

namespace A151918.P9012506989091642814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A048765 p - (p : ℤ))

end

end A151918.P9012506989091642814

/-! ## A151918.P17035405762268638018

`∑{d}[record[A014963(n+2)], A048765(#)-#]`
-/

namespace A151918.P17035405762268638018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A048765 d - (d : ℤ))

end

end A151918.P17035405762268638018

/-! ## A151918.P2662883863635753424

`A048765(A000040(n+1))-Δ[A007504(n)]`
-/

namespace A151918.P2662883863635753424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048765 (A000040 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A151918.P2662883863635753424

/-! ## A151918.P5849093902421309597

`A048765(A000040(n+1))-record[A020639(n+2)]`
-/

namespace A151918.P5849093902421309597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048765 (A000040 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151918.P5849093902421309597

/-!
# A151920: a(n) = (Sum_{i=1..n+1} 3^wt(i))/3, where wt() = A000120().

The programs for A151920, the canonical program `A151920.P12681159998700896708` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151920 has offset 0).

The definition of A151920 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151920.P12681159998700896708

`(A130665(n+1)-1)/3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151920

/-- `(A130665(n+1)-1)/3` -/
def P12681159998700896708.Spec : Prop :=
  ∀ n, P12681159998700896708.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P13060388729872527076

`a(n-1)+3^A000120(n+1)/3` with `a(0)=1`
-/

namespace A151920.P13060388729872527076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 : ℚ) ^ (A000120 (n + 1) : ℤ) / 3

end

end A151920.P13060388729872527076

namespace A151920

/-- `a(n-1)+3^A000120(n+1)/3` -/
def P13060388729872527076.Spec : Prop :=
  ∀ n, P13060388729872527076.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P16798169977000506211

`(A151917(n+2)-1)/2`
-/

namespace A151920.P16798169977000506211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151917 (n + 2) - 1 : ℚ) / 2

end

end A151920.P16798169977000506211

namespace A151920

/-- `(A151917(n+2)-1)/2` -/
def P16798169977000506211.Spec : Prop :=
  ∀ n, P16798169977000506211.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P6423486196996791605

`(A147562(n+2)-1)/4`
-/

namespace A151920.P6423486196996791605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 (n + 2) - 1 : ℚ) / 4

end

end A151920.P6423486196996791605

namespace A151920

/-- `(A147562(n+2)-1)/4` -/
def P6423486196996791605.Spec : Prop :=
  ∀ n, P6423486196996791605.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P8974351944865648114

`∑[3^(n-∑[val(n+1, 2)])]`
-/

namespace A151920.P8974351944865648114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P8974351944865648114

namespace A151920

/-- `∑[3^(n-∑[val(n+1, 2)])]` -/
def P8974351944865648114.Spec : Prop :=
  ∀ n, P8974351944865648114.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P10836755800026112540

`∑[A147610(n+2)]`
-/

namespace A151920.P10836755800026112540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P10836755800026112540

namespace A151920

/-- `∑[A147610(n+2)]` -/
def P10836755800026112540.Spec : Prop :=
  ∀ n, P10836755800026112540.a n = A151920 n

end A151920

/-! ## A151920.P10362172202099599176

`∑[3^A048881(n)]`
-/

namespace A151920.P10362172202099599176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A048881 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P10362172202099599176

namespace A151920

/-- `∑[3^A048881(n)]` -/
def P10362172202099599176.Spec : Prop :=
  ∀ n, P10362172202099599176.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P4598259645260156171

`floor(A130665(n+1)/3)`
-/

namespace A151920.P4598259645260156171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130665 (n + 1) : ℚ) / 3⌋

end

end A151920.P4598259645260156171

namespace A151920

/-- `floor(A130665(n+1)/3)` -/
def P4598259645260156171.Spec : Prop :=
  ∀ n, P4598259645260156171.a n = A151920 n

end A151920

/-! ## A151920.P5973936910418612797

`∑[A079314(n+1)-1]`
-/

namespace A151920.P5973936910418612797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079314 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P5973936910418612797

namespace A151920

/-- `∑[A079314(n+1)-1]` -/
def P5973936910418612797.Spec : Prop :=
  ∀ n, P5973936910418612797.a n = A151920 n

end A151920

/-! ## A151920.P12340979073161583582

`∑[A048883(n+1)/3]`
-/

namespace A151920.P12340979073161583582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048883 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P12340979073161583582

namespace A151920

/-- `∑[A048883(n+1)/3]` -/
def P12340979073161583582.Spec : Prop :=
  ∀ n, P12340979073161583582.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P1010690152062847846

`A151922(n+1)-(n+2)`
-/

namespace A151920.P1010690152062847846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151922 (n + 1) - (n + 2 : ℤ)

end

end A151920.P1010690152062847846

namespace A151920

/-- `A151922(n+1)-(n+2)` -/
def P1010690152062847846.Spec : Prop :=
  ∀ n, P1010690152062847846.a n = A151920 n

end A151920

/-! ## A151920.P1655689168260432043

`∑[3^(A000120(n+1)-1)]`
-/

namespace A151920.P1655689168260432043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P1655689168260432043

namespace A151920

/-- `∑[3^(A000120(n+1)-1)]` -/
def P1655689168260432043.Spec : Prop :=
  ∀ n, P1655689168260432043.a n = (A151920 n : ℚ)

end A151920

/-! ## A151920.P17412524842829454802

`∑[A003959(A048896(n))]`
-/

namespace A151920.P17412524842829454802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A048896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P17412524842829454802

namespace A151920

/-- `∑[A003959(A048896(n))]` -/
def P17412524842829454802.Spec : Prop :=
  ∀ n, P17412524842829454802.a n = A151920 n

end A151920

/-! ## A151920.P6595483840950949166

`∑[A048883(A025480(n))]`
-/

namespace A151920.P6595483840950949166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P6595483840950949166

namespace A151920

/-- `∑[A048883(A025480(n))]` -/
def P6595483840950949166.Spec : Prop :=
  ∀ n, P6595483840950949166.a n = A151920 n

end A151920

/-! ## A151920.P5079452193258836327

`∑[A048883(A071055(n))]`
-/

namespace A151920.P5079452193258836327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A071055 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P5079452193258836327

namespace A151920

/-- `∑[A048883(A071055(n))]` -/
def P5079452193258836327.Spec : Prop :=
  ∀ n, P5079452193258836327.a n = A151920 n

end A151920

/-! ## A151920.P12368511563996365474

`∑[A006046(Δ[A193494(n)])]`
-/

namespace A151920.P12368511563996365474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P12368511563996365474

namespace A151920

/-- `∑[A006046(Δ[A193494(n)])]` -/
def P12368511563996365474.Spec : Prop :=
  ∀ n, P12368511563996365474.a n = A151920 n

end A151920

/-! ## A151920.P11530942289014425302

`∑[A006874(A001316(n+1))]`
-/

namespace A151920.P11530942289014425302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006874 (A001316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P11530942289014425302

namespace A151920

/-- `∑[A006874(A001316(n+1))]` -/
def P11530942289014425302.Spec : Prop :=
  ∀ n, P11530942289014425302.a n = A151920 n

end A151920

/-! ## A151920.P6402426761578346614

`∑[A005836(A048896(n)+1)]`
-/

namespace A151920.P6402426761578346614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A048896 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P6402426761578346614

namespace A151920

/-- `∑[A005836(A048896(n)+1)]` -/
def P6402426761578346614.Spec : Prop :=
  ∀ n, P6402426761578346614.a n = A151920 n

end A151920

/-! ## A151920.P1993482641782853809

`∑[A048883(A030109(n+1))]`
-/

namespace A151920.P1993482641782853809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A030109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P1993482641782853809

namespace A151920

/-- `∑[A048883(A030109(n+1))]` -/
def P1993482641782853809.Spec : Prop :=
  ∀ n, P1993482641782853809.a n = A151920 n

end A151920

/-! ## A151920.P3790241485202093030

`∑[A000244(A000120(n+1)-1)]`
-/

namespace A151920.P3790241485202093030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A000120 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151920.P3790241485202093030

namespace A151920

/-- `∑[A000244(A000120(n+1)-1)]` -/
def P3790241485202093030.Spec : Prop :=
  ∀ n, P3790241485202093030.a n = A151920 n

end A151920

/-!
# A151921: Net gain in number of ON cells at stage n of the cellular automaton described in A079317.

The programs for A151921, the canonical program `A151921.P9708646044920363871` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151921 has offset 0).

The definition of A151921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151921.P9708646044920363871

`A147582(n)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151921

/-- `A147582(n)-a(n-1)` -/
def P9708646044920363871.Spec : Prop :=
  ∀ n, P9708646044920363871.a n = A151921 n

theorem P9708646044920363871.correct : P9708646044920363871.Spec := by
  intro n
  simp only [A151921]

end A151921

/-! ## A151921.P15598398572984037955

`A079315(n)-n%2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A151921.P15598398572984037955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A079315 n - ((n % 2 : ℕ) : ℤ) * a (n - 1)

end

end A151921.P15598398572984037955

namespace A151921

/-- `A079315(n)-n%2*a(n-1)` -/
def P15598398572984037955.Spec : Prop :=
  ∀ n, P15598398572984037955.a n = A151921 n

end A151921

/-! ## A151921.P7856351580209274331

`A079315(n)-a(A093178(n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A151921.P7856351580209274331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A079315 n - a (A093178 n - 1).toNat

end

end A151921.P7856351580209274331

namespace A151921

/-- `A079315(n)-a(A093178(n)-1)` -/
def P7856351580209274331.Spec : Prop :=
  ∀ n, P7856351580209274331.a n = A151921 n

end A151921

/-! ## A151921.P6747886073939823121

`A079315(n)-A079315(A093178(n)-1)`
-/

namespace A151921.P6747886073939823121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079315 n - A079315 (A093178 n - 1).toNat

end

end A151921.P6747886073939823121

namespace A151921

/-- `A079315(n)-A079315(A093178(n)-1)` -/
def P6747886073939823121.Spec : Prop :=
  ∀ n, P6747886073939823121.a n = A151921 n

end A151921

/-! ## A151921.P7649735572633497420

`Δ[A079317(abs(2-n))%A001333(n)]`
-/

namespace A151921.P7649735572633497420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079317 |2 - (n : ℤ)|.toNat) (A001333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151921.P7649735572633497420

namespace A151921

/-- `Δ[A079317(abs(2-n))%A001333(n)]` -/
def P7649735572633497420.Spec : Prop :=
  ∀ n, P7649735572633497420.a n = A151921 n

end A151921

/-!
# A151922: Number of first-quadrant cells (including the two boundaries) that are "ON" after n-th stage of the Holladay-Ulam cellular automaton.

The programs for A151922, the canonical program `A151922.P1912274686757086494` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151922 has offset 0).

The definition of A151922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151922.P1912274686757086494

`A079316(2*n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A151922

/-- `A079316(2*n)` -/
def P1912274686757086494.Spec : Prop :=
  ∀ n, P1912274686757086494.a n = A151922 n

theorem P1912274686757086494.correct : P1912274686757086494.Spec := by
  intro n
  simp only [A151922]

end A151922

/-! ## A151922.P13700998945044294528

`∑[lcm(2, 2-3*a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A151922.P13700998945044294528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm 2 (2 - (3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151922.P13700998945044294528

namespace A151922

/-- `∑[lcm(2, 2-3*a(and(n, n-1)))]` -/
def P13700998945044294528.Spec : Prop :=
  ∀ n, (P13700998945044294528.a n : ℤ) = A151922 n

end A151922

/-! ## A151922.P9402438243213996714

`∑[and(3*a(and(n, n-1))-1, -2)]` with `a(0)=1`
-/

namespace A151922.P9402438243213996714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151922.P9402438243213996714

namespace A151922

/-- `∑[and(3*a(and(n, n-1))-1, -2)]` -/
def P9402438243213996714.Spec : Prop :=
  ∀ n, P9402438243213996714.a n = A151922 n

end A151922

/-! ## A151922.P11561682262802155699

`∑[A079314(n)]`
-/

namespace A151922.P11561682262802155699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151922.P11561682262802155699

namespace A151922

/-- `∑[A079314(n)]` -/
def P11561682262802155699.Spec : Prop :=
  ∀ n, P11561682262802155699.a n = A151922 n

end A151922

/-! ## A151922.P11131502642164911877

`∑[ceil(A151712(n)/3)]`
-/

namespace A151922.P11131502642164911877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151712 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151922.P11131502642164911877

namespace A151922

/-- `∑[ceil(A151712(n)/3)]` -/
def P11131502642164911877.Spec : Prop :=
  ∀ n, P11131502642164911877.a n = A151922 n

end A151922

/-! ## A151922.P10135691428530912548

`∑[2*A079318(n)]-1`
-/

namespace A151922.P10135691428530912548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A151922.P10135691428530912548

namespace A151922

/-- `∑[2*A079318(n)]-1` -/
def P10135691428530912548.Spec : Prop :=
  ∀ n, P10135691428530912548.a n = A151922 n

end A151922

/-! ## A151922.P7195174144642038294

`∑[A094388(A000120(n))]`
-/

namespace A151922.P7195174144642038294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151922.P7195174144642038294

namespace A151922

/-- `∑[A094388(A000120(n))]` -/
def P7195174144642038294.Spec : Prop :=
  ∀ n, P7195174144642038294.a n = A151922 n

end A151922

/-! ## A151922.P16913774281079978059

`∑[A006874(A001316(n))]+n`
-/

namespace A151922.P16913774281079978059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006874 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A151922.P16913774281079978059

namespace A151922

/-- `∑[A006874(A001316(n))]+n` -/
def P16913774281079978059.Spec : Prop :=
  ∀ n, P16913774281079978059.a n = A151922 n

end A151922

/-! ## A151922.P11419711709299025352

`(A183060(n+1)+n+1)/2`
-/

namespace A151922.P11419711709299025352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183060 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A151922.P11419711709299025352

namespace A151922

/-- `(A183060(n+1)+n+1)/2` -/
def P11419711709299025352.Spec : Prop :=
  ∀ n, P11419711709299025352.a n = (A151922 n : ℚ)

end A151922

/-! ## A151922.P16076595593793951640

`A183060(n+1)+A147610(n+2)-A151920(n)`
-/

namespace A151922.P16076595593793951640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 (n + 1) + (A147610 (n + 2) - A151920 n)

end

end A151922.P16076595593793951640

namespace A151922

/-- `A183060(n+1)+A147610(n+2)-A151920(n)` -/
def P16076595593793951640.Spec : Prop :=
  ∀ n, P16076595593793951640.a n = A151922 n

end A151922

/-! ## A151922.P7500852803504243788

`∑[A008620(A160797(2*n+1))]`
-/

namespace A151922.P7500852803504243788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A160797 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151922.P7500852803504243788

namespace A151922

/-- `∑[A008620(A160797(2*n+1))]` -/
def P7500852803504243788.Spec : Prop :=
  ∀ n, P7500852803504243788.a n = A151922 n

end A151922

/-! ## A151922.P16772394158097412995

`A008619(A151917(n+1))+n`
-/

namespace A151922.P16772394158097412995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A151917 (n + 1)).toNat + (n : ℤ)

end

end A151922.P16772394158097412995

namespace A151922

/-- `A008619(A151917(n+1))+n` -/
def P16772394158097412995.Spec : Prop :=
  ∀ n, P16772394158097412995.a n = A151922 n

end A151922

/-! ## A151922.P5412193165389393399

`A008619(A183060(n+1)+n)`
-/

namespace A151922.P5412193165389393399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A183060 (n + 1) + (n : ℤ)).toNat

end

end A151922.P5412193165389393399

namespace A151922

/-- `A008619(A183060(n+1)+n)` -/
def P5412193165389393399.Spec : Prop :=
  ∀ n, P5412193165389393399.a n = A151922 n

end A151922

/-! ## A151922.P13309145634438482083

`A004526(A151917(n+1)+A004273(n+1))`
-/

namespace A151922.P13309145634438482083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151917 (n + 1) + A004273 (n + 1)).toNat

end

end A151922.P13309145634438482083

namespace A151922

/-- `A004526(A151917(n+1)+A004273(n+1))` -/
def P13309145634438482083.Spec : Prop :=
  ∀ n, P13309145634438482083.a n = A151922 n

end A151922

/-! ## A151922.P2304478974347991492

`A008621(A079317(2*n))+n`
-/

namespace A151922.P2304478974347991492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A079317 (2 * n)).toNat + (n : ℤ)

end

end A151922.P2304478974347991492

namespace A151922

/-- `A008621(A079317(2*n))+n` -/
def P2304478974347991492.Spec : Prop :=
  ∀ n, P2304478974347991492.a n = A151922 n

end A151922

/-! ## A151922.P16337017363185230874

`A025480(A147562(n+1))+n+1`
-/

namespace A151922.P16337017363185230874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A147562 (n + 1)).toNat + (n + 1 : ℤ)

end

end A151922.P16337017363185230874

namespace A151922

/-- `A025480(A147562(n+1))+n+1` -/
def P16337017363185230874.Spec : Prop :=
  ∀ n, P16337017363185230874.a n = A151922 n

end A151922

/-! ## A151922.P2732870084121237945

`A080513(2*n)+A025480(A079317(2*n))`
-/

namespace A151922.P2732870084121237945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n) + A025480 (A079317 (2 * n)).toNat

end

end A151922.P2732870084121237945

namespace A151922

/-- `A080513(2*n)+A025480(A079317(2*n))` -/
def P2732870084121237945.Spec : Prop :=
  ∀ n, P2732870084121237945.a n = A151922 n

end A151922

/-!
# A151923: a(n) = A079316(2n+1).

The programs for A151923, the canonical program `A151923.P3934618073960995862` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151923 has offset 0).

The definition of A151923 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151923.P3934618073960995862

`A079316(2*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A151923

/-- `A079316(2*n+1)` -/
def P3934618073960995862.Spec : Prop :=
  ∀ n, P3934618073960995862.a n = A151923 n

theorem P3934618073960995862.correct : P3934618073960995862.Spec := by
  intro n
  simp only [A151923]

end A151923

/-! ## A151923.P17141961928962751765

`∑[3*a(and(n, n-1))-2]+1` with `a(0)=2`
-/

namespace A151923.P17141961928962751765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A151923.P17141961928962751765

namespace A151923

/-- `∑[3*a(and(n, n-1))-2]+1` -/
def P17141961928962751765.Spec : Prop :=
  ∀ n, P17141961928962751765.a n = A151923 n

end A151923

/-! ## A151923.P7921576605878593101

`∑[lcm(3, a(and(n, n-1)))-2]+1` with `a(0)=2`
-/

namespace A151923.P7921576605878593101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (Int.lcm 3 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A151923.P7921576605878593101

namespace A151923

/-- `∑[lcm(3, a(and(n, n-1)))-2]+1` -/
def P7921576605878593101.Spec : Prop :=
  ∀ n, P7921576605878593101.a n = A151923 n

end A151923

/-! ## A151923.P15885341227282226373

`xor(1, ∑[3*a(and(n, n-1))-2])` with `a(0)=2`
-/

namespace A151923.P15885341227282226373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151923.P15885341227282226373

namespace A151923

/-- `xor(1, ∑[3*a(and(n, n-1))-2])` -/
def P15885341227282226373.Spec : Prop :=
  ∀ n, P15885341227282226373.a n = A151923 n

end A151923

/-! ## A151923.P9885773783871717676

`∑[A151712(n)]+1`
-/

namespace A151923.P9885773783871717676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A151923.P9885773783871717676

namespace A151923

/-- `∑[A151712(n)]+1` -/
def P9885773783871717676.Spec : Prop :=
  ∀ n, P9885773783871717676.a n = A151923 n

end A151923

/-! ## A151923.P231327840430185262

`A130665(n)+2+n`
-/

namespace A151923.P231327840430185262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n + 2 + (n : ℤ)

end

end A151923.P231327840430185262

namespace A151923

/-- `A130665(n)+2+n` -/
def P231327840430185262.Spec : Prop :=
  ∀ n, P231327840430185262.a n = A151923 n

end A151923

/-! ## A151923.P11411494381803808559

`∑[A005836(A001316(n)+2)]`
-/

namespace A151923.P11411494381803808559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A001316 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151923.P11411494381803808559

namespace A151923

/-- `∑[A005836(A001316(n)+2)]` -/
def P11411494381803808559.Spec : Prop :=
  ∀ n, P11411494381803808559.a n = A151923 n

end A151923

/-! ## A151923.P16890613963914922588

`∑[A079314(2*n+1)]+1`
-/

namespace A151923.P16890613963914922588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079314 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A151923.P16890613963914922588

namespace A151923

/-- `∑[A079314(2*n+1)]+1` -/
def P16890613963914922588.Spec : Prop :=
  ∀ n, P16890613963914922588.a n = A151923 n

end A151923

/-! ## A151923.P18411629908357899874

`∑[A048883(n)+A027642(2*n+1)]`
-/

namespace A151923.P18411629908357899874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + A027642 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151923.P18411629908357899874

namespace A151923

/-- `∑[A048883(n)+A027642(2*n+1)]` -/
def P18411629908357899874.Spec : Prop :=
  ∀ n, P18411629908357899874.a n = A151923 n

end A151923

/-! ## A151923.P12520180425638092751

`record[A079316(n+1)]`
-/

namespace A151923.P12520180425638092751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151923.P12520180425638092751

namespace A151923

/-- `record[A079316(n+1)]` -/
def P12520180425638092751.Spec : Prop :=
  ∀ n, P12520180425638092751.a n = A151923 n

end A151923

/-! ## A151923.P16027581796802869198

`A374800(A000217(n+1))+n+2`
-/

namespace A151923.P16027581796802869198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374800 (A000217 (n + 1)).toNat + (n + 2 : ℤ)

end

end A151923.P16027581796802869198

namespace A151923

/-- `A374800(A000217(n+1))+n+2` -/
def P16027581796802869198.Spec : Prop :=
  ∀ n, P16027581796802869198.a n = A151923 n

end A151923

/-!
# A151925: Write n as a sum of positive squares a^2+b^2+c^2+... with gcd(a,b,...) = 1; a(n) = minimal number of squares needed.

The programs for A151925, there is no canonical definition to state claims against.
-/

/-! ## A151925.P14603515703003131056

`floor(A227781(n+1)+sqrt(A227781(n+2)))`
-/

namespace A151925.P14603515703003131056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227781 (n + 1) : ℝ) + Real.sqrt (A227781 (n + 2) : ℝ)⌋

end

end A151925.P14603515703003131056

/-! ## A151925.P12114832355349875854

`A227781(n+1)+A227774(A227784(2*(n+2)))`
-/

namespace A151925.P12114832355349875854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (n + 1) + A227774 (A227784 (2 * (n + 2))).toNat

end

end A151925.P12114832355349875854

/-! ## A151925.P4783837199051963800

`A227781(n+1)+A003649(A227784(2*(n+2))+2)`
-/

namespace A151925.P4783837199051963800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (n + 1) + A003649 (A227784 (2 * (n + 2)) + 2).toNat

end

end A151925.P4783837199051963800

/-! ## A151925.P3803044997471716349

`A020985(A156960(n))+A002828(n)`
-/

namespace A151925.P3803044997471716349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A156960 n).toNat + A002828 n

end

end A151925.P3803044997471716349

/-! ## A151925.P6964502401360796274

`A020985(A156960(n))+n-A255131(n)`
-/

namespace A151925.P6964502401360796274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A156960 n).toNat + ((n : ℤ) - A255131 n)

end

end A151925.P6964502401360796274

/-!
# A151926: Numbers n such that A151925(n) = 3.

The programs for A151926, there is no canonical definition to state claims against.
-/

/-! ## A151926.P17214841251459419954

`eq[3, A151925(n+1)]+1`
-/

namespace A151926.P17214841251459419954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151926.P17214841251459419954

/-! ## A151926.P1466470090200953425

`∩[a(n-5)+8, A187811(n+1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6`
-/

namespace A151926.P1466470090200953425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 6] fun n f1 =>
  f1 (n - 5) + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151926.P1466470090200953425

/-! ## A151926.P8147023501245190614

`eq[3, A151925(A028310(n))]`
-/

namespace A151926.P8147023501245190614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151926.P8147023501245190614

/-! ## A151926.P10680700270355081676

`eq[A008423(n), A295819(n)]`
-/

namespace A151926.P10680700270355081676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151926.P10680700270355081676

/-! ## A151926.P10151527564306362792

`A020725(eq[3, A151925(n+1)])`
-/

namespace A151926.P10151527564306362792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151926.P10151527564306362792

/-! ## A151926.P2323685321407237100

`A065475(eq[3, A151925(n+1)])`
-/

namespace A151926.P2323685321407237100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151926.P2323685321407237100

/-! ## A151926.P3388652207364286799

`A153152(eq[3, A151925(n+1)])`
-/

namespace A151926.P3388652207364286799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151926.P3388652207364286799

/-! ## A151926.P641508605942746635

`eq[3, A151925(A233583(n+1))]`
-/

namespace A151926.P641508605942746635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151926.P641508605942746635

/-! ## A151926.P11219069045319298841

`eq[3, A151925(A065033(2*n))]`
-/

namespace A151926.P11219069045319298841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151926.P11219069045319298841

/-! ## A151926.P10605056558022559499

`eq[3, A151925(A123108(2*n))]`
-/

namespace A151926.P10605056558022559499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151926.P10605056558022559499

/-!
# A151929: First differences of A070952.

The programs for A151929, there is no canonical definition to state claims against.
-/

/-! ## A151929.P7133039754711516712

`A070952(n)-A265703(n)`
-/

namespace A151929.P7133039754711516712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n - A265703 n

end

end A151929.P7133039754711516712

/-! ## A151929.P384767736879834057

`A265701(n)-A070951(n)`
-/

namespace A151929.P384767736879834057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n - A070951 n

end

end A151929.P384767736879834057

/-! ## A151929.P12415410115952059354

`Δ[A265703(n)]`
-/

namespace A151929.P12415410115952059354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151929.P12415410115952059354

/-! ## A151929.P17703780105928965042

`A265703(n+1)-A265703(n)`
-/

namespace A151929.P17703780105928965042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1) - A265703 n

end

end A151929.P17703780105928965042

/-! ## A151929.P8442114805134580772

`A265701(n)+2-A265701(n+1)`
-/

namespace A151929.P8442114805134580772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n + (2 - A265701 (n + 1))

end

end A151929.P8442114805134580772

/-! ## A151929.P6675463438787453476

`A265701(n)-A023444(A265701(n+1))`
-/

namespace A151929.P6675463438787453476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n - A023444 (A265701 (n + 1)).toNat

end

end A151929.P6675463438787453476

/-!
# A151930: First differences of A001316.

The programs for A151930, the canonical program `A151930.P14483355005946851546` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151930 has offset 0).

The definition of A151930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151930.P14483355005946851546

`Δ[2*a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151930

/-- `Δ[2*a(and(n, n-1))]` -/
def P14483355005946851546.Spec : Prop :=
  ∀ n, P14483355005946851546.a n = A151930 n

theorem P14483355005946851546.correct : P14483355005946851546.Spec := by
  intro n
  simp only [A151930]

end A151930

/-! ## A151930.P3082259059274500576

`Δ[2*lcm(n, a(n-1))/n]` with `a(0)=1`
-/

namespace A151930.P3082259059274500576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P3082259059274500576

namespace A151930

/-- `Δ[2*lcm(n, a(n-1))/n]` -/
def P3082259059274500576.Spec : Prop :=
  ∀ n, P3082259059274500576.a n = (A151930 n : ℚ)

end A151930

/-! ## A151930.P1925332949214952493

`Δ[4/abs(2/a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A151930.P1925332949214952493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 / |2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P1925332949214952493

namespace A151930

/-- `Δ[4/abs(2/a(and(n, n-1)))]` -/
def P1925332949214952493.Spec : Prop :=
  ∀ n, P1925332949214952493.a n = (A151930 n : ℚ)

end A151930

/-! ## A151930.P12769396828007418055

`Δ[a(floor(n/2))*a(n%2)]` with `a(0)=1, a(1)=2`
-/

namespace A151930.P12769396828007418055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A151930.P12769396828007418055

namespace A151930

/-- `Δ[a(floor(n/2))*a(n%2)]` -/
def P12769396828007418055.Spec : Prop :=
  ∀ n, P12769396828007418055.a n = A151930 n

end A151930

/-! ## A151930.P11815352584455317506

`Δ[2*a(n-gcd(n, a(n-1)))]` with `a(0)=1`
-/

namespace A151930.P11815352584455317506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - Nat.gcd n (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A151930.P11815352584455317506

namespace A151930

/-- `Δ[2*a(n-gcd(n, a(n-1)))]` -/
def P11815352584455317506.Spec : Prop :=
  ∀ n, P11815352584455317506.a n = A151930 n

end A151930

/-! ## A151930.P1645521226391577996

`Δ[A001316(n)]`
-/

namespace A151930.P1645521226391577996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P1645521226391577996

namespace A151930

/-- `Δ[A001316(n)]` -/
def P1645521226391577996.Spec : Prop :=
  ∀ n, P1645521226391577996.a n = A151930 n

end A151930

/-! ## A151930.P9015664184931949200

`Δ[sqrt(A102376(n))]`
-/

namespace A151930.P9015664184931949200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P9015664184931949200

namespace A151930

/-- `Δ[sqrt(A102376(n))]` -/
def P9015664184931949200.Spec : Prop :=
  ∀ n, P9015664184931949200.a n = (A151930 n : ℝ)

end A151930

/-! ## A151930.P1115295403767229478

`1-Δ[A048967(n)]`
-/

namespace A151930.P1115295403767229478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A151930.P1115295403767229478

namespace A151930

/-- `1-Δ[A048967(n)]` -/
def P1115295403767229478.Spec : Prop :=
  ∀ n, P1115295403767229478.a n = A151930 n

end A151930

/-! ## A151930.P11361242675829332327

`Δ[A060632(2*n)]`
-/

namespace A151930.P11361242675829332327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P11361242675829332327

namespace A151930

/-- `Δ[A060632(2*n)]` -/
def P11361242675829332327.Spec : Prop :=
  ∀ n, P11361242675829332327.a n = A151930 n

end A151930

/-! ## A151930.P11885649470965718395

`Δ[2^A000120(n)]`
-/

namespace A151930.P11885649470965718395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P11885649470965718395

namespace A151930

/-- `Δ[2^A000120(n)]` -/
def P11885649470965718395.Spec : Prop :=
  ∀ n, P11885649470965718395.a n = (A151930 n : ℚ)

end A151930

/-! ## A151930.P8144382781723093680

`Δ[A000203(a(and(n, n-1))+1)]` with `a(0)=0`
-/

namespace A151930.P8144382781723093680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000203 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P8144382781723093680

namespace A151930

/-- `Δ[A000203(a(and(n, n-1))+1)]` -/
def P8144382781723093680.Spec : Prop :=
  ∀ n, P8144382781723093680.a n = A151930 n

end A151930

/-! ## A151930.P9683439365694584573

`Δ[A000203(a(n-2^floor(log2(n)))+1)]` with `a(0)=0`
-/

namespace A151930.P9683439365694584573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000203 (f1 (n - 2 ^ Nat.log 2 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P9683439365694584573

namespace A151930

/-- `Δ[A000203(a(n-2^floor(log2(n)))+1)]` -/
def P9683439365694584573.Spec : Prop :=
  ∀ n, P9683439365694584573.a n = A151930 n

end A151930

/-! ## A151930.P13032234066812354932

`Δ[A000051(A000120(n))]`
-/

namespace A151930.P13032234066812354932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P13032234066812354932

namespace A151930

/-- `Δ[A000051(A000120(n))]` -/
def P13032234066812354932.Spec : Prop :=
  ∀ n, P13032234066812354932.a n = A151930 n

end A151930

/-! ## A151930.P17027561127877005487

`Δ[A094373(A000120(n)+1)]`
-/

namespace A151930.P17027561127877005487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A000120 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P17027561127877005487

namespace A151930

/-- `Δ[A094373(A000120(n)+1)]` -/
def P17027561127877005487.Spec : Prop :=
  ∀ n, P17027561127877005487.a n = A151930 n

end A151930

/-! ## A151930.P5909247919067395213

`Δ[A131577(A000120(n)+1)]`
-/

namespace A151930.P5909247919067395213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000120 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151930.P5909247919067395213

namespace A151930

/-- `Δ[A131577(A000120(n)+1)]` -/
def P5909247919067395213.Spec : Prop :=
  ∀ n, P5909247919067395213.a n = A151930 n

end A151930

/-! ## A151930.P14784700822876839615

`A001316(n+1)-A001316(n)`
-/

namespace A151930.P14784700822876839615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) - A001316 n

end

end A151930.P14784700822876839615

namespace A151930

/-- `A001316(n+1)-A001316(n)` -/
def P14784700822876839615.Spec : Prop :=
  ∀ n, P14784700822876839615.a n = A151930 n

end A151930

/-! ## A151930.P7039693595943799066

`A105321(n+1)-A117973(n)`
-/

namespace A151930.P7039693595943799066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (n + 1) - A117973 n

end

end A151930.P7039693595943799066

namespace A151930

/-- `A105321(n+1)-A117973(n)` -/
def P7039693595943799066.Spec : Prop :=
  ∀ n, P7039693595943799066.a n = A151930 n

end A151930

/-! ## A151930.P4270840635994289163

`A131136(A048896(n))-A001316(n)`
-/

namespace A151930.P4270840635994289163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 (A048896 n).toNat - A001316 n

end

end A151930.P4270840635994289163

namespace A151930

/-- `A131136(A048896(n))-A001316(n)` -/
def P4270840635994289163.Spec : Prop :=
  ∀ n, P4270840635994289163.a n = A151930 n

end A151930

/-! ## A151930.P1494499071711867829

`A064405(A038573(n))+A001316(n+1)`
-/

namespace A151930.P1494499071711867829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064405 (A038573 n).toNat + A001316 (n + 1)

end

end A151930.P1494499071711867829

namespace A151930

/-- `A064405(A038573(n))+A001316(n+1)` -/
def P1494499071711867829.Spec : Prop :=
  ∀ n, P1494499071711867829.a n = A151930 n

end A151930

/-! ## A151930.P16846234109295029600

`A116593(n)-A006046(n+1)-A006046(n+1)`
-/

namespace A151930.P16846234109295029600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116593 n - A006046 (n + 1) - A006046 (n + 1)

end

end A151930.P16846234109295029600

namespace A151930

/-- `A116593(n)-A006046(n+1)-A006046(n+1)` -/
def P16846234109295029600.Spec : Prop :=
  ∀ n, P16846234109295029600.a n = A151930 n

end A151930

/-!
# A151931: First differences of A071049.

The programs for A151931, there is no canonical definition to state claims against.
-/

/-! ## A151931.P4883217789160409401

`1-Δ[A071048(abs(1-n))]`
-/

namespace A151931.P4883217789160409401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071048 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A151931.P4883217789160409401

/-! ## A151931.P4196025126055800074

`A071048(abs(1-n))-A246027(n)`
-/

namespace A151931.P4196025126055800074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071048 |1 - (n : ℤ)|.toNat - A246027 n

end

end A151931.P4196025126055800074

/-!
# A151934: Weight distribution of [255,55,63] primitive binary BCH code.

The programs for A151934, there is no canonical definition to state claims against.
-/

/-! ## A151934.P5755637738080822619

`C(A151935(n), A219347(n+2)!)`
-/

namespace A151934.P5755637738080822619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151935 n).toNat (Nat.factorial (A219347 (n + 2)).toNat)

end

end A151934.P5755637738080822619

/-! ## A151934.P6046216091349727931

`C(A151935(n), A236830(∏{p}[n+1, #]))`
-/

namespace A151934.P6046216091349727931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151935 n).toNat (A236830 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A151934.P6046216091349727931

/-! ## A151934.P9199220415803336199

`A041004(A008000(n))*A151935(n)`
-/

namespace A151934.P9199220415803336199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 (A008000 n).toNat * A151935 n

end

end A151934.P9199220415803336199

/-! ## A151934.P8457919305317771090

`and(A008683(A086620(n)), A151935(n))`
-/

namespace A151934.P8457919305317771090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A086620 n).toNat) (A151935 n)

end

end A151934.P8457919305317771090

/-! ## A151934.P15643557536695226602

`A008683(A194109(n+1))*A151935(n)`
-/

namespace A151934.P15643557536695226602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A194109 (n + 1)).toNat * A151935 n

end

end A151934.P15643557536695226602

/-! ## A151934.P12462689987281399774

`A008683(A280814(n+1))*A151935(n)`
-/

namespace A151934.P12462689987281399774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A280814 (n + 1)).toNat * A151935 n

end

end A151934.P12462689987281399774

/-! ## A151934.P3869294303299746164

`lcm(A008683(A338190(n+1)), A151935(n))`
-/

namespace A151934.P3869294303299746164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A338190 (n + 1)).toNat) (A151935 n)

end

end A151934.P3869294303299746164

/-! ## A151934.P5879479993413886683

`and(A008683(A036048(n+1)), A151935(n))`
-/

namespace A151934.P5879479993413886683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A036048 (n + 1)).toNat) (A151935 n)

end

end A151934.P5879479993413886683

/-!
# A151940: Weight distribution of [255,239,5] primitive binary BCH code.

The programs for A151940, there is no canonical definition to state claims against.
-/

/-! ## A151940.P10632664255406841774

`A212770(9*(a(n-1)+n))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A151940.P10632664255406841774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A212770 (9 * (a (n - 1) + (n : ℤ))).toNat

end

end A151940.P10632664255406841774

/-! ## A151940.P12046400542108626887

`A024941(n)*A212770(9*(a(n-1)+n))` with `a(0)=1`
-/

namespace A151940.P12046400542108626887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024941 n * A212770 (9 * (a (n - 1) + (n : ℤ))).toNat

end

end A151940.P12046400542108626887

/-!
# A151941: 

The programs for A151941, there is no canonical definition to state claims against.
-/

/-! ## A151941.P11524844858738205622

`A151932(2^n)`
-/

namespace A151941.P11524844858738205622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151932 (2 ^ n)

end

end A151941.P11524844858738205622

/-!
# A151942: Table of Self / Colombian numbers and their descendents.

The programs for A151942, there is no canonical definition to state claims against.
-/

/-! ## A151942.P1023019861282289713

`A257797(n+1)-A059108(A237270(n+4))`
-/

namespace A151942.P1023019861282289713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257797 (n + 1) - A059108 (A237270 (n + 4)).toNat

end

end A151942.P1023019861282289713

/-!
# A151943: Maximal number of moves required for the 2 X n generalization of the sliding block 15-puzzle (or fifteen-puzzle).

The programs for A151943, there is no canonical definition to state claims against.
-/

/-! ## A151943.P11679694993336636797

`A090288(n)-A283365(A158824(n+1))`
-/

namespace A151943.P11679694993336636797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - A283365 (A158824 (n + 1)).toNat

end

end A151943.P11679694993336636797

/-! ## A151943.P8863129653499691464

`A065515(n+1)*A285590(A285601(n+1))`
-/

namespace A151943.P8863129653499691464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) * A285590 (A285601 (n + 1)).toNat

end

end A151943.P8863129653499691464

/-! ## A151943.P12317585503843617677

`A151944(∑[n+1]+2)`
-/

namespace A151943.P12317585503843617677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151944 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A151943.P12317585503843617677

/-!
# A151944: Square array read by antidiagonals: T(m,n) = maximal number of moves required for the m X n generalization of the sliding block 15-puzzle (or fifteen-puzzle).

The programs for A151944, there is no canonical definition to state claims against.
-/

/-! ## A151944.P10977060157214939274

`A000120(A022185(n))*A003056(n)`
-/

namespace A151944.P10977060157214939274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022185 n).toNat * A003056 n

end

end A151944.P10977060157214939274

/-! ## A151944.P13040635610858011701

`A005599(A003056(n)^A174546(n))`
-/

namespace A151944.P13040635610858011701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (SequenceMachineLib.roundAway ((A003056 n : ℚ) ^ (A174546 n : ℤ))).toNat

end

end A151944.P13040635610858011701

/-! ## A151944.P5360389819936653683

`lcm(A003056(n), A055238(A022166(n)))`
-/

namespace A151944.P5360389819936653683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003056 n) (A055238 (A022166 n).toNat)

end

end A151944.P5360389819936653683

/-! ## A151944.P6666294033641608901

`A132812(n+1)-A111804(A156584(n))`
-/

namespace A151944.P6666294033641608901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132812 (n + 1) - A111804 (A156584 n).toNat

end

end A151944.P6666294033641608901

/-!
# A151945: Denomination sequence. Start with the 0th and first coins of value 1 cent: a(0)=a(1)=1. Thereafter a(n), the value of the n-th coin (n>=2), is the number of ways to make change for n cents in earlier coins. The two one-cent coins are considered distinct.

The programs for A151945, there is no canonical definition to state claims against.
-/

/-! ## A151945.P13554215304301969251

`A024317(A015723(3*(n+1))+2)`
-/

namespace A151945.P13554215304301969251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A015723 (3 * (n + 1)) + 2).toNat

end

end A151945.P13554215304301969251

/-! ## A151945.P409369486469717733

`A209900(A042953(n)+n)`
-/

namespace A151945.P409369486469717733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A042953 n + (n : ℤ)).toNat

end

end A151945.P409369486469717733

/-! ## A151945.P13006157757250587985

`A209900(A332745(n)+n)`
-/

namespace A151945.P13006157757250587985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A332745 n + (n : ℤ)).toNat

end

end A151945.P13006157757250587985

/-! ## A151945.P7167152214234556958

`A259899(A028310(n*A003410(n)))`
-/

namespace A151945.P7167152214234556958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A028310 ((n : ℤ) * A003410 n).toNat).toNat

end

end A151945.P7167152214234556958

/-! ## A151945.P11709640980603161185

`A209900(A209900(n+1)+A008631(n))`
-/

namespace A151945.P11709640980603161185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A209900 (n + 1) + A008631 n).toNat

end

end A151945.P11709640980603161185

/-!
# A151947: a(1) = 113; thereafter a(n) = (a(n-1) with digits sorted into descending order) - (a(n-1) with digits sorted into ascending order) (see the Kaprekar map, A151949).

The programs for A151947, the canonical program `A151947.P18082159346435913667` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151947 has offset 1).

The definition of A151947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A151947.P18082159346435913667`, by `A151947.P18082159346435913667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A151947.P18082159346435913667

`a(n-1)` with `a(0)=113, a(1)=198, a(2)=792, a(3)=693, a(4)=594, a(5)=495`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151947

/-- `a(n-1)` -/
def P18082159346435913667.Spec : Prop :=
  ∀ n, (P18082159346435913667.a n : ℤ) = A151947 (n + 1)

theorem P18082159346435913667.correct : P18082159346435913667.Spec := by
  intro n
  simp only [A151947, Nat.add_sub_cancel]

end A151947

/-!
# A151948: a(n) = tau(sigma(phi(n))).

The programs for A151948, the canonical program `A151948.P4452451718552002337` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151948 has offset 1).

The definition of A151948 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151948.P16953978545541845890

`A062068(A000010(n+1))`
-/

namespace A151948.P16953978545541845890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A000010 (n + 1)).toNat

end

end A151948.P16953978545541845890

namespace A151948

/-- `A062068(A000010(n+1))` -/
def P16953978545541845890.Spec : Prop :=
  ∀ n, P16953978545541845890.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P7561616037466402958

`A000005(A062402(n+1))`
-/

namespace A151948.P7561616037466402958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062402 (n + 1)).toNat

end

end A151948.P7561616037466402958

namespace A151948

/-- `A000005(A062402(n+1))` -/
def P7561616037466402958.Spec : Prop :=
  ∀ n, P7561616037466402958.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P4452451718552002337

`A000005(A000203(A000010(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151948

/-- `A000005(A000203(A000010(n+1)))` -/
def P4452451718552002337.Spec : Prop :=
  ∀ n, P4452451718552002337.a n = A151948 (n + 1)

theorem P4452451718552002337.correct : P4452451718552002337.Spec := by
  intro n
  simp only [A151948, Nat.add_sub_cancel]

end A151948

/-! ## A151948.P14260597731677794925

`A000005(∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])`
-/

namespace A151948.P14260597731677794925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A151948.P14260597731677794925

namespace A151948

/-- `A000005(∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])` -/
def P14260597731677794925.Spec : Prop :=
  ∀ n, P14260597731677794925.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P11800530288407106297

`A062068(A109606(n+1)+1)`
-/

namespace A151948.P11800530288407106297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A109606 (n + 1) + 1).toNat

end

end A151948.P11800530288407106297

namespace A151948

/-- `A062068(A109606(n+1)+1)` -/
def P11800530288407106297.Spec : Prop :=
  ∀ n, P11800530288407106297.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P2841514016858868330

`A062068(A039649(n+1)-1)`
-/

namespace A151948.P2841514016858868330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A039649 (n + 1) - 1).toNat

end

end A151948.P2841514016858868330

namespace A151948

/-- `A062068(A039649(n+1)-1)` -/
def P2841514016858868330.Spec : Prop :=
  ∀ n, P2841514016858868330.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P8394562121817774696

`A000005(∑{d}[A000010(n+1), #])`
-/

namespace A151948.P8394562121817774696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151948.P8394562121817774696

namespace A151948

/-- `A000005(∑{d}[A000010(n+1), #])` -/
def P8394562121817774696.Spec : Prop :=
  ∀ n, P8394562121817774696.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P14294142195573589006

`A000005(A295302(n+1)+1+n)`
-/

namespace A151948.P14294142195573589006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295302 (n + 1) + 1 + (n : ℤ)).toNat

end

end A151948.P14294142195573589006

namespace A151948

/-- `A000005(A295302(n+1)+1+n)` -/
def P14294142195573589006.Spec : Prop :=
  ∀ n, P14294142195573589006.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P10318671921487990023

`A000005(∑{d}[A109606(n+1)+1, #])`
-/

namespace A151948.P10318671921487990023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151948.P10318671921487990023

namespace A151948

/-- `A000005(∑{d}[A109606(n+1)+1, #])` -/
def P10318671921487990023.Spec : Prop :=
  ∀ n, P10318671921487990023.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P977815562391393628

`A000005(∑{d}[1-A039649(n+1), #])`
-/

namespace A151948.P977815562391393628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151948.P977815562391393628

namespace A151948

/-- `A000005(∑{d}[1-A039649(n+1), #])` -/
def P977815562391393628.Spec : Prop :=
  ∀ n, P977815562391393628.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P8088558638783449057

`A000005(∑{d}[A219428(n+1)-n, #])`
-/

namespace A151948.P8088558638783449057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151948.P8088558638783449057

namespace A151948

/-- `A000005(∑{d}[A219428(n+1)-n, #])` -/
def P8088558638783449057.Spec : Prop :=
  ∀ n, P8088558638783449057.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P4669035161572399281

`∏{e}[A000203(A109606(n+1)+1), #+1]`
-/

namespace A151948.P4669035161572399281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A151948.P4669035161572399281

namespace A151948

/-- `∏{e}[A000203(A109606(n+1)+1), #+1]` -/
def P4669035161572399281.Spec : Prop :=
  ∀ n, (P4669035161572399281.a n : ℤ) = A151948 (n + 1)

end A151948

/-! ## A151948.P18038170981404978700

`A000005(∑{d}[1-A051953(n+1)+n, #])`
-/

namespace A151948.P18038170981404978700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151948.P18038170981404978700

namespace A151948

/-- `A000005(∑{d}[1-A051953(n+1)+n, #])` -/
def P18038170981404978700.Spec : Prop :=
  ∀ n, P18038170981404978700.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P11835297668719757396

`A000005(∑{d}[∏{p}[n+1, #-1]*A003557(n+1), #])`
-/

namespace A151948.P11835297668719757396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) * A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151948.P11835297668719757396

namespace A151948

/-- `A000005(∑{d}[∏{p}[n+1, #-1]*A003557(n+1), #])` -/
def P11835297668719757396.Spec : Prop :=
  ∀ n, P11835297668719757396.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P10007110933302117247

`A000005(∑{d}[(n+1)/∏{p}[n+1, #]*A173557(n+1), #])`
-/

namespace A151948.P10007110933302117247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A151948.P10007110933302117247

namespace A151948

/-- `A000005(∑{d}[(n+1)/∏{p}[n+1, #]*A173557(n+1), #])` -/
def P10007110933302117247.Spec : Prop :=
  ∀ n, P10007110933302117247.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P15945946743432691883

`A000005(A000203((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A151948.P15945946743432691883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A151948.P15945946743432691883

namespace A151948

/-- `A000005(A000203((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P15945946743432691883.Spec : Prop :=
  ∀ n, P15945946743432691883.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P14051706093439257041

`A000005(A000203(A349137(2*n+1)))`
-/

namespace A151948.P14051706093439257041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (A349137 (2 * n + 1)).toNat).toNat

end

end A151948.P14051706093439257041

namespace A151948

/-- `A000005(A000203(A349137(2*n+1)))` -/
def P14051706093439257041.Spec : Prop :=
  ∀ n, P14051706093439257041.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P52412848158505526

`A000005(A065395(n+1)+A062401(n+1))`
-/

namespace A151948.P52412848158505526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065395 (n + 1) + A062401 (n + 1)).toNat

end

end A151948.P52412848158505526

namespace A151948

/-- `A000005(A065395(n+1)+A062401(n+1))` -/
def P52412848158505526.Spec : Prop :=
  ∀ n, P52412848158505526.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P3814304006030591466

`A000005(A000203(n+1-A051953(n+1)))`
-/

namespace A151948.P3814304006030591466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 ((n + 1 : ℤ) - A051953 (n + 1)).toNat).toNat

end

end A151948.P3814304006030591466

namespace A151948

/-- `A000005(A000203(n+1-A051953(n+1)))` -/
def P3814304006030591466.Spec : Prop :=
  ∀ n, P3814304006030591466.a n = A151948 (n + 1)

end A151948

/-! ## A151948.P2499678261851566597

`A000005(A000203(A002618(n+1)/(n+1)))`
-/

namespace A151948.P2499678261851566597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A151948.P2499678261851566597

namespace A151948

/-- `A000005(A000203(A002618(n+1)/(n+1)))` -/
def P2499678261851566597.Spec : Prop :=
  ∀ n, P2499678261851566597.a n = A151948 (n + 1)

end A151948

/-!
# A151949: a(n) = image of n under the Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A151949, there is no canonical definition to state claims against.
-/

/-! ## A151949.P12862018775809390590

`9*A151950(n)`
-/

namespace A151949.P12862018775809390590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A151950 n

end

end A151949.P12862018775809390590

/-! ## A151949.P1025997530936264078

`A056965(A004186(n))`
-/

namespace A151949.P1025997530936264078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A004186 n).toNat

end

end A151949.P1025997530936264078

/-! ## A151949.P10443276990515456339

`A008591(A151950(n))`
-/

namespace A151949.P10443276990515456339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A151950 n).toNat

end

end A151949.P10443276990515456339

/-! ## A151949.P5676514112340668389

`A056965(A108782(n)+n)`
-/

namespace A151949.P5676514112340668389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A108782 n + (n : ℤ)).toNat

end

end A151949.P5676514112340668389

/-! ## A151949.P1580688146976965874

`A193581(A108782(n)+n)`
-/

namespace A151949.P1580688146976965874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A108782 n + (n : ℤ)).toNat

end

end A151949.P1580688146976965874

/-! ## A151949.P6316685460695589191

`A004186(n)-A004185(n)`
-/

namespace A151949.P6316685460695589191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - A004185 n

end

end A151949.P6316685460695589191

/-! ## A151949.P12709852240153281994

`2*A004186(n)-A052008(n)`
-/

namespace A151949.P12709852240153281994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004186 n - A052008 n

end

end A151949.P12709852240153281994

/-! ## A151949.P12173433407618881256

`A052008(n)-2*A004185(n)`
-/

namespace A151949.P12173433407618881256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - 2 * A004185 n

end

end A151949.P12173433407618881256

/-! ## A151949.P13285412226468826240

`A004186(n)+n-A070196(n)`
-/

namespace A151949.P13285412226468826240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n + ((n : ℤ) - A070196 n)

end

end A151949.P13285412226468826240

/-! ## A151949.P4940171233158480506

`A108782(n)+n-A004185(n)`
-/

namespace A151949.P4940171233158480506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + ((n : ℤ) - A004185 n)

end

end A151949.P4940171233158480506

/-! ## A151949.P6355164723183931313

`A193581(A193581(A061601(n))+n)`
-/

namespace A151949.P6355164723183931313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A193581 (A061601 n).toNat + (n : ℤ)).toNat

end

end A151949.P6355164723183931313

/-! ## A151949.P12640118790216987153

`A193581(A052008(n)-A004185(n))`
-/

namespace A151949.P12640118790216987153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A052008 n - A004185 n).toNat

end

end A151949.P12640118790216987153

/-! ## A151949.P10672922905957502597

`A004186(n)-A004086(A004186(n))%(A004086(n)+1)`
-/

namespace A151949.P10672922905957502597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - Int.tmod (A004086 (A004186 n).toNat) (A004086 n + 1)

end

end A151949.P10672922905957502597

/-! ## A151949.P12972557262011899678

`A347688(n)+A056965(A347689(n))`
-/

namespace A151949.P12972557262011899678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347688 n + A056965 (A347689 n).toNat

end

end A151949.P12972557262011899678

/-! ## A151949.P4149129288173694672

`∑{d}[n+1, A245794(#-1)*A347688((n+1)/#-1)]`
-/

namespace A151949.P4149129288173694672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245794 (d - 1) * A347688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A151949.P4149129288173694672

/-! ## A151949.P18432430050951208880

`gcd(A056965(n), A277516(n²))`
-/

namespace A151949.P18432430050951208880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056965 n) (A277516 (n ^ 2))

end

end A151949.P18432430050951208880

/-! ## A151949.P12772522748281652697

`lcm(A005102(n²), A056965(n))`
-/

namespace A151949.P12772522748281652697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005102 (n ^ 2)) (A056965 n)

end

end A151949.P12772522748281652697

/-!
# A151950: a(n) = A151949(n)/9.

The programs for A151950, there is no canonical definition to state claims against.
-/

/-! ## A151950.P14527222846739994865

`A151949(n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151950.P14527222846739994865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151949 n : ℚ) / 9

end

end A151950.P14527222846739994865

/-! ## A151950.P15806401469538382379

`A056965(A004186(n))/9`
-/

namespace A151950.P15806401469538382379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056965 (A004186 n).toNat : ℚ) / 9

end

end A151950.P15806401469538382379

/-! ## A151950.P7991206155924544774

`A193581(A108782(n)+n)/9`
-/

namespace A151950.P7991206155924544774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193581 (A108782 n + (n : ℤ)).toNat : ℚ) / 9

end

end A151950.P7991206155924544774

/-! ## A151950.P11065384356721052837

`(A004186(n)-A004185(n))/9`
-/

namespace A151950.P11065384356721052837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004186 n - A004185 n : ℚ) / 9

end

end A151950.P11065384356721052837

/-! ## A151950.P17856837882055904531

`(A004186(n)+n-A070196(n))/9`
-/

namespace A151950.P17856837882055904531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004186 n + ((n : ℤ) - A070196 n) : ℚ) / 9

end

end A151950.P17856837882055904531

/-! ## A151950.P13968972727947824058

`A063942(abs(A063942(A151949(n))))`
-/

namespace A151950.P13968972727947824058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 |A063942 (A151949 n).toNat|.toNat

end

end A151950.P13968972727947824058

/-! ## A151950.P11939260670972475419

`A002264(A002264(A151949(n)+1))`
-/

namespace A151950.P11939260670972475419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A151949 n + 1).toNat).toNat

end

end A151950.P11939260670972475419

/-! ## A151950.P790529216051229931

`A347689(n)+A347689(A347689(n))`
-/

namespace A151950.P790529216051229931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A347689 (A347689 n).toNat

end

end A151950.P790529216051229931

/-! ## A151950.P434009267257906895

`A001222(2^A347689(n))`
-/

namespace A151950.P434009267257906895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A347689 n : ℤ))).toNat

end

end A151950.P434009267257906895

/-! ## A151950.P15314580944035370225

`A347689(10*A347689(n))`
-/

namespace A151950.P15314580944035370225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (10 * A347689 n).toNat

end

end A151950.P15314580944035370225

/-! ## A151950.P13046943498927657720

`A347689(A108782(n)+n)`
-/

namespace A151950.P13046943498927657720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A108782 n + (n : ℤ)).toNat

end

end A151950.P13046943498927657720

/-! ## A151950.P12272572437967251050

`A347689(n)-A276689((1-n)²)`
-/

namespace A151950.P12272572437967251050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n - A276689 ((1 - (n : ℤ)) ^ 2).toNat

end

end A151950.P12272572437967251050

/-! ## A151950.P18363231144296763364

`A001222(A000079(A347689(n)))`
-/

namespace A151950.P18363231144296763364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 (A347689 n).toNat).toNat

end

end A151950.P18363231144296763364

/-! ## A151950.P3719780444151981423

`A347689(n)^A038573(2^A347689(n))`
-/

namespace A151950.P3719780444151981423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347689 n : ℚ) ^ (A038573 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A347689 n : ℤ))).toNat : ℤ)

end

end A151950.P3719780444151981423

/-!
# A151952: Palindromes that are the sum of a positive square and a positive cube.

The programs for A151952, there is no canonical definition to state claims against.
-/

/-! ## A151952.P6809894110345190541

`∩[A002113(n+1), A055394(n+1)]`
-/

namespace A151952.P6809894110345190541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151952.P6809894110345190541

/-! ## A151952.P2403381126999292932

`∩[A055394(n+1), A083158(n+1)]`
-/

namespace A151952.P2403381126999292932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151952.P2403381126999292932

/-! ## A151952.P778509999149359142

`record[A055483(A055394(n+1))]`
-/

namespace A151952.P778509999149359142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A055394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151952.P778509999149359142

/-! ## A151952.P12695874789210435763

`filter[A055394(n+1), A136522(#)]`
-/

namespace A151952.P12695874789210435763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A151952.P12695874789210435763

/-! ## A151952.P10783934176605992742

`record[A047813(A055394(A008619(n)))]`
-/

namespace A151952.P10783934176605992742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A055394 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151952.P10783934176605992742

/-!
# A151953: Primes of the form 6*n^2+17.

The programs for A151953, there is no canonical definition to state claims against.
-/

/-! ## A151953.P9133144626106867049

`A033581(A128829(n+1))+17`
-/

namespace A151953.P9133144626106867049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (A128829 (n + 1)).toNat + 17

end

end A151953.P9133144626106867049

/-! ## A151953.P14127847357069198421

`p?[6*n²+17]`
-/

namespace A151953.P14127847357069198421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2 + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A151953.P14127847357069198421

/-! ## A151953.P13452527582696723851

`or(p?[n*6*n+17], char[2])`
-/

namespace A151953.P13452527582696723851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (if ∃ j, f2 j = n then 1 else 0)

end

end A151953.P13452527582696723851

/-! ## A151953.P2504624358464504514

`or(1, p?[A033581(n)+17])`
-/

namespace A151953.P2504624358464504514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A151953.P2504624358464504514

/-! ## A151953.P1681803639810180564

`A000007(n+1)+p?[A033581(n)+17]`
-/

namespace A151953.P1681803639810180564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P1681803639810180564

/-! ## A151953.P14379029313554936089

`A000038(n+1)+p?[A033581(n)+17]`
-/

namespace A151953.P14379029313554936089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P14379029313554936089

/-! ## A151953.P12414978380916235788

`p?[A033581(n)+17]*A057427(n+1)`
-/

namespace A151953.P12414978380916235788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (n + 1)

end

end A151953.P12414978380916235788

/-! ## A151953.P15656258735461634391

`p?[A033581(n)+17]*A000034(2*n)`
-/

namespace A151953.P15656258735461634391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A151953.P15656258735461634391

/-! ## A151953.P17426943779563255379

`p?[A033581(n)+17]%A001015(n+2)`
-/

namespace A151953.P17426943779563255379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001015 (n + 2))

end

end A151953.P17426943779563255379

/-! ## A151953.P162091444004563496

`A007318(C(2, n))*p?[A033581(n)+17]`
-/

namespace A151953.P162091444004563496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P162091444004563496

/-! ## A151953.P15724478950360581529

`A007318(and(1, -n))*p?[A033581(n)+17]`
-/

namespace A151953.P15724478950360581529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P15724478950360581529

/-! ## A151953.P10907133813529531861

`(A007318(n)%2)!*p?[A033581(n)+17]`
-/

namespace A151953.P10907133813529531861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P10907133813529531861

/-! ## A151953.P9689154734233038995

`char[A025934(n+2)]+p?[A033581(n)+17]`
-/

namespace A151953.P9689154734233038995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025934 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A151953.P9689154734233038995

/-! ## A151953.P6650247103334416077

`A015985(2*n+1)+p?[A033581(n)+17]`
-/

namespace A151953.P6650247103334416077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P6650247103334416077

/-! ## A151953.P3977582611143300443

`A014963(6*(n+1))*p?[A033581(n)+17]`
-/

namespace A151953.P3977582611143300443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P3977582611143300443

/-! ## A151953.P5294298224896902568

`p?[A033581(n)+17]+A008683(8*n+4)`
-/

namespace A151953.P5294298224896902568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * n + 4)

end

end A151953.P5294298224896902568

/-! ## A151953.P3982888998860854704

`A000041(C(2, n+2))*p?[A033581(n)+17]`
-/

namespace A151953.P3982888998860854704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P3982888998860854704

/-! ## A151953.P18232857538601066654

`gcd(3, A006530(3*n+2))*p?[A033581(n)+17]`
-/

namespace A151953.P18232857538601066654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A006530 (3 * n + 2)) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151953.P18232857538601066654

/-!
# A151955: a(1) = 102; thereafter a(n) = (a(n-1) with digits sorted into descending order) - (a(n-1) with digits sorted into ascending order) (see the Kaprekar map, A151949).

The programs for A151955, the canonical program `A151955.P3748824632997062469` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151955 has offset 1).

The definition of A151955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A151955.P3748824632997062469`, by `A151955.P3748824632997062469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A151955.P3748824632997062469

`a(n-1)` with `a(0)=102, a(1)=198, a(2)=792, a(3)=693, a(4)=594, a(5)=495`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151955

/-- `a(n-1)` -/
def P3748824632997062469.Spec : Prop :=
  ∀ n, (P3748824632997062469.a n : ℤ) = A151955 (n + 1)

theorem P3748824632997062469.correct : P3748824632997062469.Spec := by
  intro n
  simp only [A151955, Nat.add_sub_cancel]

end A151955

/-!
# A151957: Iterate the Kaprekar map of A151949 starting at the n-digit number 100...02; sequence gives the lowest number in the resulting cycle.

The programs for A151957, there is no canonical definition to state claims against.
-/

/-! ## A151957.P13985153125083279768

`record[A151965(A328390(2*(n+1)))]`
-/

namespace A151957.P13985153125083279768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151965 (A328390 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151957.P13985153125083279768

/-! ## A151957.P16537442586698678043

`A151965(lt[A283086(n), A008589(n)])`
-/

namespace A151957.P16537442586698678043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151965 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A151957.P16537442586698678043

/-!
# A151959: Consider the Kaprekar map x->K(x) described in A151949. Sequence gives the smallest number that belongs to a cycle of length n under repeated iteration of this map, or -1 if there is no cycle of length n.

The programs for A151959, there is no canonical definition to state claims against.
-/

/-! ## A151959.P17673895752967754901

`A151965(A271093(n)%A054406(3*n+1))`
-/

namespace A151959.P17673895752967754901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151965 (Int.tmod (A271093 n) (A054406 (3 * n + 1))).toNat

end

end A151959.P17673895752967754901

/-!
# A151961: Semiperimeter of the n-th Heronian triangle.

The programs for A151961, the canonical program `A151961.P18438859074737648308` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151961 has offset 1).

The definition of A151961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151961.P18438859074737648308

`4*a(n-1)-a(n-2)` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151961

/-- `4*a(n-1)-a(n-2)` -/
def P18438859074737648308.Spec : Prop :=
  ∀ n, P18438859074737648308.a n = A151961 (n + 1)

theorem P18438859074737648308.correct : P18438859074737648308.Spec := by
  intro n
  simp only [A151961, Nat.add_sub_cancel]

end A151961

/-! ## A151961.P11138998635882502716

`3*A001075(n)`
-/

namespace A151961.P11138998635882502716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001075 n

end

end A151961.P11138998635882502716

namespace A151961

/-- `3*A001075(n)` -/
def P11138998635882502716.Spec : Prop :=
  ∀ n, P11138998635882502716.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P13262952654328452100

`3*A003500(n)/2`
-/

namespace A151961.P13262952654328452100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A003500 n : ℚ) / 2

end

end A151961.P13262952654328452100

namespace A151961

/-- `3*A003500(n)/2` -/
def P13262952654328452100.Spec : Prop :=
  ∀ n, P13262952654328452100.a n = (A151961 (n + 1) : ℚ)

end A151961

/-! ## A151961.P7638719234862889428

`3*(A016064(n)+1)/2`
-/

namespace A151961.P7638719234862889428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (A016064 n + 1) : ℚ) / 2

end

end A151961.P7638719234862889428

namespace A151961

/-- `3*(A016064(n)+1)/2` -/
def P7638719234862889428.Spec : Prop :=
  ∀ n, P7638719234862889428.a n = (A151961 (n + 1) : ℚ)

end A151961

/-! ## A151961.P7282485485320881009

`3*((2+sqrt(3))*(2-sqrt(3))^(n+1)+(2-sqrt(3))*(2+sqrt(3))^(n+1))/2`
-/

namespace A151961.P7282485485320881009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((2 + Real.sqrt (3 : ℝ)) * (2 - Real.sqrt (3 : ℝ)) ^ (n + 1) + (2 - Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ (n + 1)) / 2

end

end A151961.P7282485485320881009

namespace A151961

/-- `3*((2+sqrt(3))*(2-sqrt(3))^(n+1)+(2-sqrt(3))*(2+sqrt(3))^(n+1))/2` -/
def P7282485485320881009.Spec : Prop :=
  ∀ n, P7282485485320881009.a n = (A151961 (n + 1) : ℝ)

theorem P7282485485320881009.correct : P7282485485320881009.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A151961, Nat.add_sub_cancel, A151961.P7282485485320881009.a, A151961.P18438859074737648308.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A151961, Nat.add_sub_cancel, A151961.P7282485485320881009.a, A151961.P18438859074737648308.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A151961

/-! ## A151961.P570952634361039331

`ogf((3-6x)/(1-4x+x^2))`
-/

namespace A151961.P570952634361039331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6] [1, -4, 1] n

end

end A151961.P570952634361039331

namespace A151961

/-- `ogf((3-6x)/(1-4x+x^2))` -/
def P570952634361039331.Spec : Prop :=
  ∀ n, P570952634361039331.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P10494644460913996119

`lcm(3, (floor((sqrt(3)+2)^n)+1)/2)`
-/

namespace A151961.P10494644460913996119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1 : ℚ) / 2))

end

end A151961.P10494644460913996119

namespace A151961

/-- `lcm(3, (floor((sqrt(3)+2)^n)+1)/2)` -/
def P10494644460913996119.Spec : Prop :=
  ∀ n, (P10494644460913996119.a n : ℤ) = A151961 (n + 1)

end A151961

/-! ## A151961.P7680770622604399069

`3*(A092184(n)+1)`
-/

namespace A151961.P7680770622604399069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A092184 n + 1)

end

end A151961.P7680770622604399069

namespace A151961

/-- `3*(A092184(n)+1)` -/
def P7680770622604399069.Spec : Prop :=
  ∀ n, P7680770622604399069.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P302350274733237362

`3*(A121401(n)-1)`
-/

namespace A151961.P302350274733237362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A121401 n - 1)

end

end A151961.P302350274733237362

namespace A151961

/-- `3*(A121401(n)-1)` -/
def P302350274733237362.Spec : Prop :=
  ∀ n, P302350274733237362.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P245605911498536973

`3*A002531(2*n)`
-/

namespace A151961.P245605911498536973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002531 (2 * n)

end

end A151961.P245605911498536973

namespace A151961

/-- `3*A002531(2*n)` -/
def P245605911498536973.Spec : Prop :=
  ∀ n, P245605911498536973.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P9856150634622996095

`3*A005246(Δ[n²])`
-/

namespace A151961.P9856150634622996095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A151961.P9856150634622996095

namespace A151961

/-- `3*A005246(Δ[n²])` -/
def P9856150634622996095.Spec : Prop :=
  ∀ n, P9856150634622996095.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P13766669915974379401

`A003500(n)+A001075(n)`
-/

namespace A151961.P13766669915974379401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + A001075 n

end

end A151961.P13766669915974379401

namespace A151961

/-- `A003500(n)+A001075(n)` -/
def P13766669915974379401.Spec : Prop :=
  ∀ n, P13766669915974379401.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P2492189950115137729

`A121401(n)+A016064(n)`
-/

namespace A151961.P2492189950115137729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n + A016064 n

end

end A151961.P2492189950115137729

namespace A151961

/-- `A121401(n)+A016064(n)` -/
def P2492189950115137729.Spec : Prop :=
  ∀ n, P2492189950115137729.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P1389538907099981284

`A144721(n)+A001835(n)`
-/

namespace A151961.P1389538907099981284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n + A001835 n

end

end A151961.P1389538907099981284

namespace A151961

/-- `A144721(n)+A001835(n)` -/
def P1389538907099981284.Spec : Prop :=
  ∀ n, P1389538907099981284.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P7356923558726807888

`A257487(n)+A082840(n)`
-/

namespace A151961.P7356923558726807888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257487 n + A082840 n

end

end A151961.P7356923558726807888

namespace A151961

/-- `A257487(n)+A082840(n)` -/
def P7356923558726807888.Spec : Prop :=
  ∀ n, P7356923558726807888.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P1380685244485605289

`A077236(n)-A001834(n)`
-/

namespace A151961.P1380685244485605289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n - A001834 n

end

end A151961.P1380685244485605289

namespace A151961

/-- `A077236(n)-A001834(n)` -/
def P1380685244485605289.Spec : Prop :=
  ∀ n, P1380685244485605289.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P6684365622039535900

`A082841(n)-A005320(n)`
-/

namespace A151961.P6684365622039535900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n - A005320 n

end

end A151961.P6684365622039535900

namespace A151961

/-- `A082841(n)-A005320(n)` -/
def P6684365622039535900.Spec : Prop :=
  ∀ n, P6684365622039535900.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P7472349882641881249

`A001075(n)+A016064(n)+1`
-/

namespace A151961.P7472349882641881249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + (A016064 n + 1)

end

end A151961.P7472349882641881249

namespace A151961

/-- `A001075(n)+A016064(n)+1` -/
def P7472349882641881249.Spec : Prop :=
  ∀ n, P7472349882641881249.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P12254567106328891699

`A003500(n)+A092184(n)+1`
-/

namespace A151961.P12254567106328891699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + (A092184 n + 1)

end

end A151961.P12254567106328891699

namespace A151961

/-- `A003500(n)+A092184(n)+1` -/
def P12254567106328891699.Spec : Prop :=
  ∀ n, P12254567106328891699.a n = A151961 (n + 1)

end A151961

/-! ## A151961.P16337469637900678279

`A144720(n)+A079935(n+1)`
-/

namespace A151961.P16337469637900678279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144720 n + A079935 (n + 1)

end

end A151961.P16337469637900678279

namespace A151961

/-- `A144720(n)+A079935(n+1)` -/
def P16337469637900678279.Spec : Prop :=
  ∀ n, P16337469637900678279.a n = A151961 (n + 1)

end A151961

/-!
# A151962: Length of preperiodic part of trajectory of n under iteration of the Kaprekar map in A151949.

The programs for A151962, there is no canonical definition to state claims against.
-/

/-! ## A151962.P12012892999971007492

`A151963(n)-1`
-/

namespace A151962.P12012892999971007492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151963 n - 1

end

end A151962.P12012892999971007492

/-! ## A151962.P4680268954577689135

`A260196(n+2)+A151963(n)`
-/

namespace A151962.P4680268954577689135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A151963 n

end

end A151962.P4680268954577689135

/-! ## A151962.P12232299572400276190

`A127229(n+5)%A151963(n)`
-/

namespace A151962.P12232299572400276190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A151963 n)

end

end A151962.P12232299572400276190

/-! ## A151962.P5511197284630936760

`A033999(2*n+1)+A151963(n)`
-/

namespace A151962.P5511197284630936760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A151963 n

end

end A151962.P5511197284630936760

/-! ## A151962.P3196483822406411275

`A023443(gcd(n, n+1)*A151963(n))`
-/

namespace A151962.P3196483822406411275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((Nat.gcd n (n + 1) : ℤ) * A151963 n).toNat

end

end A151962.P3196483822406411275

/-! ## A151962.P7915328942112904319

`(A151963(n)+2*n)%-A005408(n)`
-/

namespace A151962.P7915328942112904319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151963 n + (2 * n : ℤ)) (-A005408 n)

end

end A151962.P7915328942112904319

/-! ## A151962.P17989139162635839205

`(A158485(n+1)+A151963(n))%(n+1)`
-/

namespace A151962.P17989139162635839205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158485 (n + 1) + A151963 n) (n + 1 : ℤ)

end

end A151962.P17989139162635839205

/-! ## A151962.P13892345924894530332

`A151963(A151949(n))%A151963(n)`
-/

namespace A151962.P13892345924894530332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151963 (A151949 n).toNat) (A151963 n)

end

end A151962.P13892345924894530332

/-! ## A151962.P2054552118285119925

`A158210(A000040(n+1))+A151963(n)`
-/

namespace A151962.P2054552118285119925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A000040 (n + 1)).toNat + A151963 n

end

end A151962.P2054552118285119925

/-! ## A151962.P7355754176176905851

`∑[A054481(n+2)]%A151963(n)`
-/

namespace A151962.P7355754176176905851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A151963 n)

end

end A151962.P7355754176176905851

/-! ## A151962.P14732540768735051724

`A083800(n+1)%A151963(n)`
-/

namespace A151962.P14732540768735051724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A151963 n)

end

end A151962.P14732540768735051724

/-! ## A151962.P16838636795639008216

`A070198(n)%A151963(n)`
-/

namespace A151962.P16838636795639008216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A151963 n)

end

end A151962.P16838636795639008216

/-! ## A151962.P16610242593191729312

`A079782(n+1)%A151963(n)`
-/

namespace A151962.P16610242593191729312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A151963 n)

end

end A151962.P16610242593191729312

/-! ## A151962.P2399263033356955080

`A083685(n+1)%A151963(n)`
-/

namespace A151962.P2399263033356955080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A151963 n)

end

end A151962.P2399263033356955080

/-! ## A151962.P12632152367667062014

`A121934(n+1)%A151963(n)`
-/

namespace A151962.P12632152367667062014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A151963 n)

end

end A151962.P12632152367667062014

/-! ## A151962.P13144924726653399598

`A030494(n+1)%A151963(n)`
-/

namespace A151962.P13144924726653399598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A151963 n)

end

end A151962.P13144924726653399598

/-! ## A151962.P14099140531310509256

`A072828(n+1)%A151963(n)`
-/

namespace A151962.P14099140531310509256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A151963 n)

end

end A151962.P14099140531310509256

/-!
# A151963: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the Kaprekar map in A151949.

The programs for A151963, there is no canonical definition to state claims against.
-/

/-! ## A151963.P17886762161583009718

`A151962(n)+1`
-/

namespace A151963.P17886762161583009718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 n + 1

end

end A151963.P17886762161583009718

/-! ## A151963.P3305707210651578157

`1-A057428(n)*A151962(n)`
-/

namespace A151963.P3305707210651578157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A151962 n

end

end A151963.P3305707210651578157

/-! ## A151963.P10622530516261977940

`2-((3^A081603(n))%2-A151962(n))`
-/

namespace A151963.P10622530516261977940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A081603 n : ℤ))) 2 - A151962 n)

end

end A151963.P10622530516261977940

/-! ## A151963.P1351703503345231950

`A005408(n)-(A005843(n)-A151962(n))`
-/

namespace A151963.P1351703503345231950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A005843 n - A151962 n)

end

end A151963.P1351703503345231950

/-! ## A151963.P14335918442772616053

`A000005(p?[A072137(n)]^A151962(n))`
-/

namespace A151963.P14335918442772616053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A151962 n : ℤ))).toNat

end

end A151963.P14335918442772616053

/-! ## A151963.P8479569166431678819

`2-(A010054(∑[n])-A151962(n))`
-/

namespace A151963.P8479569166431678819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A010054 (∑ j ∈ Finset.range (n + 1), f1 j) - A151962 n)

end

end A151963.P8479569166431678819

/-! ## A151963.P7807803810659450359

`2-(A262553(A000217(n))-A151962(n))`
-/

namespace A151963.P7807803810659450359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A262553 (A000217 n).toNat - A151962 n)

end

end A151963.P7807803810659450359

/-! ## A151963.P12673451037566513205

`A266974(n²)+A072137(n)`
-/

namespace A151963.P12673451037566513205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (n ^ 2) + A072137 n

end

end A151963.P12673451037566513205

/-! ## A151963.P4372686735311046330

`A304042(A072137(n²))+A072137(n)`
-/

namespace A151963.P4372686735311046330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A072137 (n ^ 2)).toNat + A072137 n

end

end A151963.P4372686735311046330

/-!
# A151965: Smallest member of cycle corresponding to n-th term of A151964.

The programs for A151965, there is no canonical definition to state claims against.
-/

/-! ## A151965.P9334755864467677980

`A164718(A164699(n+1)+A055947(n))`
-/

namespace A151965.P9334755864467677980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (A164699 (n + 1) + A055947 n).toNat

end

end A151965.P9334755864467677980

/-!
# A151967: Iterate the Kaprekar map of A151949 starting at the n-digit number 100...01; sequence gives the lowest number in the resulting cycle.

The programs for A151967, there is no canonical definition to state claims against.
-/

/-! ## A151967.P7654444633759226751

`A151957(n+2)%∑[A112912(3*n)]`
-/

namespace A151967.P7654444633759226751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112912 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151957 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151967.P7654444633759226751

/-! ## A151967.P9400613142149172619

`A059841(A006216(n))*A151957(n+2)`
-/

namespace A151967.P9400613142149172619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A006216 n).toNat * A151957 (n + 2)

end

end A151967.P9400613142149172619

/-! ## A151967.P9543183362541213355

`A049347(A027818(n))*A151957(n+2)`
-/

namespace A151967.P9543183362541213355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A027818 n).toNat * A151957 (n + 2)

end

end A151967.P9543183362541213355

/-!
# A151969: a(n) = smallest integer >= n which has only prime factors 2 and 5.

The programs for A151969, there is no canonical definition to state claims against.
-/

/-! ## A151969.P14201915631722051991

`A003592(∑[char[A003592(n+1)]]+1)`
-/

namespace A151969.P14201915631722051991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151969.P14201915631722051991

/-! ## A151969.P4482227469064066308

`A003592(comp[A003592(n+1)+n]-n+1)`
-/

namespace A151969.P4482227469064066308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A151969.P4482227469064066308

/-! ## A151969.P800483345222999580

`A158911(∑[char[A158911(n+1)+1]]+1)+1`
-/

namespace A151969.P800483345222999580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A151969.P800483345222999580

/-!
# A151970: a(n) = smallest integer >= n which has only prime factors 3 and 5.

The programs for A151970, there is no canonical definition to state claims against.
-/

/-! ## A151970.P13711109366969323874

`A120027(∑[char[A120027(n)]])`
-/

namespace A151970.P13711109366969323874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151970.P13711109366969323874

/-! ## A151970.P14496496761222029622

`A003593(∑[char[A003593(n+1)]]+1)`
-/

namespace A151970.P14496496761222029622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151970.P14496496761222029622

/-! ## A151970.P11777159988773221988

`A015965(∑[char[A015965(n+1)]]+1)`
-/

namespace A151970.P11777159988773221988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151970.P11777159988773221988

/-! ## A151970.P6902776326082492954

`A056741(∑[char[A056741(n+1)]]+1)`
-/

namespace A151970.P6902776326082492954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056741 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151970.P6902776326082492954

/-! ## A151970.P9691623303689847262

`A057251(∑[char[A057251(n+1)]]+1)`
-/

namespace A151970.P9691623303689847262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057251 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057251 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151970.P9691623303689847262

/-! ## A151970.P8144623470615860088

`A057289(∑[char[A057289(n+1)]]+1)`
-/

namespace A151970.P8144623470615860088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057289 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057289 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151970.P8144623470615860088

/-! ## A151970.P14010422064359897643

`A057235(comp[A057235(n+1)+n]-n+1)`
-/

namespace A151970.P14010422064359897643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057235 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057235 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A151970.P14010422064359897643

/-!
# A151971: Numbers k such that k^2 - k is divisible by 21.

The programs for A151971, the canonical program `A151971.P18355582818002923005` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151971 has offset 1).

The definition of A151971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151971.P18355582818002923005

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=15, a(4)=21`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151971

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P18355582818002923005.Spec : Prop :=
  ∀ n, P18355582818002923005.a n = A151971 (n + 1)

theorem P18355582818002923005.correct : P18355582818002923005.Spec := by
  intro n
  simp only [A151971, Nat.add_sub_cancel]

end A151971

/-! ## A151971.P12473223231498315456

`a(n-4)+21` with `a(0)=0, a(1)=1, a(2)=7, a(3)=15`
-/

namespace A151971.P12473223231498315456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7, 15] fun n a =>
  a (n - 4) + 21

end

end A151971.P12473223231498315456

namespace A151971

/-- `a(n-4)+21` -/
def P12473223231498315456.Spec : Prop :=
  ∀ n, (P12473223231498315456.a n : ℤ) = A151971 (n + 1)

end A151971

/-! ## A151971.P2580626132915870676

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=6, a(3)=8, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A151971.P2580626132915870676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6, 8, 6] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151971.P2580626132915870676

namespace A151971

/-- `∑[floor(a(n-4))]` -/
def P2580626132915870676.Spec : Prop :=
  ∀ n, (P2580626132915870676.a n : ℤ) = A151971 (n + 1)

end A151971

/-! ## A151971.P8966968643040305484

`∑[∑[ogf((x+6x^2+8x^3+6x^4)/(1+x+x^2+x^3))]]`
-/

namespace A151971.P8966968643040305484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6, 8, 6] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151971.P8966968643040305484

namespace A151971

/-- `∑[∑[ogf((x+6x^2+8x^3+6x^4)/(1+x+x^2+x^3))]]` -/
def P8966968643040305484.Spec : Prop :=
  ∀ n, P8966968643040305484.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P15787564589508696409

`A047274(A047246(n+2))`
-/

namespace A151971.P15787564589508696409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A047246 (n + 2)).toNat

end

end A151971.P15787564589508696409

namespace A151971

/-- `A047274(A047246(n+2))` -/
def P15787564589508696409.Spec : Prop :=
  ∀ n, P15787564589508696409.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P7813679929349326414

`A047274(A047269(n+1)+1)`
-/

namespace A151971.P7813679929349326414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A047269 (n + 1) + 1).toNat

end

end A151971.P7813679929349326414

namespace A151971

/-- `A047274(A047269(n+1)+1)` -/
def P7813679929349326414.Spec : Prop :=
  ∀ n, P7813679929349326414.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P16962153452587622524

`A047274(A047250(n+3)-3)`
-/

namespace A151971.P16962153452587622524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A047250 (n + 3) - 3).toNat

end

end A151971.P16962153452587622524

namespace A151971

/-- `A047274(A047250(n+3)-3)` -/
def P16962153452587622524.Spec : Prop :=
  ∀ n, P16962153452587622524.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P9305363488129277731

`A047358(A047247(n+2)-2)-2`
-/

namespace A151971.P9305363488129277731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (A047247 (n + 2) - 2).toNat - 2

end

end A151971.P9305363488129277731

namespace A151971

/-- `A047358(A047247(n+2)-2)-2` -/
def P9305363488129277731.Spec : Prop :=
  ∀ n, P9305363488129277731.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P11917321488907991686

`A047275(A028836(n+1))`
-/

namespace A151971.P11917321488907991686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (A028836 (n + 1)).toNat

end

end A151971.P11917321488907991686

namespace A151971

/-- `A047275(A028836(n+1))` -/
def P11917321488907991686.Spec : Prop :=
  ∀ n, P11917321488907991686.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P4649803285927635911

`A047298(or(2, 3*n))-3`
-/

namespace A151971.P4649803285927635911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047298 (Nat.lor 2 (3 * n)) - 3

end

end A151971.P4649803285927635911

namespace A151971

/-- `A047298(or(2, 3*n))-3` -/
def P4649803285927635911.Spec : Prop :=
  ∀ n, P4649803285927635911.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P10980157621272733207

`A047279(A112652(n)+1)`
-/

namespace A151971.P10980157621272733207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047279 (A112652 n + 1).toNat

end

end A151971.P10980157621272733207

namespace A151971

/-- `A047279(A112652(n)+1)` -/
def P10980157621272733207.Spec : Prop :=
  ∀ n, P10980157621272733207.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P12123048296998090201

`A047351(A112652(n)+1)`
-/

namespace A151971.P12123048296998090201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (A112652 n + 1).toNat

end

end A151971.P12123048296998090201

namespace A151971

/-- `A047351(A112652(n)+1)` -/
def P12123048296998090201.Spec : Prop :=
  ∀ n, P12123048296998090201.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P5004557242740023454

`∩[A047275(n+1), A160545(n+1)-1]`
-/

namespace A151971.P5004557242740023454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151971.P5004557242740023454

namespace A151971

/-- `∩[A047275(n+1), A160545(n+1)-1]` -/
def P5004557242740023454.Spec : Prop :=
  ∀ n, (P5004557242740023454.a n : ℤ) = A151971 (n + 1)

end A151971

/-! ## A151971.P11336048082576366536

`∩[A047274(n+1), A032766(n)]`
-/

namespace A151971.P11336048082576366536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151971.P11336048082576366536

namespace A151971

/-- `∩[A047274(n+1), A032766(n)]` -/
def P11336048082576366536.Spec : Prop :=
  ∀ n, (P11336048082576366536.a n : ℤ) = A151971 (n + 1)

end A151971

/-! ## A151971.P9569279351091319328

`A032766(A032766(n)+A112652(n)-n)`
-/

namespace A151971.P9569279351091319328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A032766 n + (A112652 n - (n : ℤ))).toNat

end

end A151971.P9569279351091319328

namespace A151971

/-- `A032766(A032766(n)+A112652(n)-n)` -/
def P9569279351091319328.Spec : Prop :=
  ∀ n, P9569279351091319328.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P16505514636717625694

`A032766(A032766(n)-(n-A112652(n)))`
-/

namespace A151971.P16505514636717625694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A032766 n - ((n : ℤ) - A112652 n)).toNat

end

end A151971.P16505514636717625694

namespace A151971

/-- `A032766(A032766(n)-(n-A112652(n)))` -/
def P16505514636717625694.Spec : Prop :=
  ∀ n, P16505514636717625694.a n = A151971 (n + 1)

end A151971

/-! ## A151971.P9606877082793148135

`A004526(A130486(2*n))+A002265(A130486(2*n))`
-/

namespace A151971.P9606877082793148135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130486 (2 * n)).toNat + A002265 (A130486 (2 * n)).toNat

end

end A151971.P9606877082793148135

namespace A151971

/-- `A004526(A130486(2*n))+A002265(A130486(2*n))` -/
def P9606877082793148135.Spec : Prop :=
  ∀ n, P9606877082793148135.a n = A151971 (n + 1)

end A151971

/-!
# A151972: Numbers that are congruent to {0, 1, 6, 10} mod 15.

The programs for A151972, the canonical program `A151972.P467187047239391908` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151972 has offset 1).

The definition of A151972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151972.P467187047239391908

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=10, a(4)=15`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151972

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P467187047239391908.Spec : Prop :=
  ∀ n, P467187047239391908.a n = A151972 (n + 1)

theorem P467187047239391908.correct : P467187047239391908.Spec := by
  intro n
  simp only [A151972, Nat.add_sub_cancel]

end A151972

/-! ## A151972.P12949477050729307760

`a(n-4)+15` with `a(0)=0, a(1)=1, a(2)=6, a(3)=10`
-/

namespace A151972.P12949477050729307760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6, 10] fun n a =>
  a (n - 4) + 15

end

end A151972.P12949477050729307760

namespace A151972

/-- `a(n-4)+15` -/
def P12949477050729307760.Spec : Prop :=
  ∀ n, (P12949477050729307760.a n : ℤ) = A151972 (n + 1)

end A151972

/-! ## A151972.P16317907681027598709

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=4, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A151972.P16317907681027598709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 4, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151972.P16317907681027598709

namespace A151972

/-- `∑[floor(a(n-4))]` -/
def P16317907681027598709.Spec : Prop :=
  ∀ n, (P16317907681027598709.a n : ℤ) = A151972 (n + 1)

end A151972

/-! ## A151972.P7878029742786455825

`∑[5-a(n-2)%5]` with `a(0)=0, a(1)=1`
-/

namespace A151972.P7878029742786455825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 - Int.tmod (f1 (n - 2)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151972.P7878029742786455825

namespace A151972

/-- `∑[5-a(n-2)%5]` -/
def P7878029742786455825.Spec : Prop :=
  ∀ n, P7878029742786455825.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P16135720189843404157

`∑[∑[4/a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=-1`
-/

namespace A151972.P16135720189843404157
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4, -1] fun n f2 =>
  4 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151972.P16135720189843404157

namespace A151972

/-- `∑[∑[4/a(n-2)]]` -/
def P16135720189843404157.Spec : Prop :=
  ∀ n, P16135720189843404157.a n = (A151972 (n + 1) : ℚ)

end A151972

/-! ## A151972.P7175274825266011380

`∑[∑[ogf((x+5x^2+4x^3+5x^4)/(1+x+x^2+x^3))]]`
-/

namespace A151972.P7175274825266011380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 4, 5] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151972.P7175274825266011380

namespace A151972

/-- `∑[∑[ogf((x+5x^2+4x^3+5x^4)/(1+x+x^2+x^3))]]` -/
def P7175274825266011380.Spec : Prop :=
  ∀ n, P7175274825266011380.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P2052357272815716969

`lt[1, sin(a(n-1))/a(n-2)]` with `a(0)=11, a(1)=11`
-/

namespace A151972.P2052357272815716969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [11, 11] fun n f2 =>
  Real.sin (f2 (n - 1)) / f2 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A151972.P2052357272815716969

namespace A151972

/-- `lt[1, sin(a(n-1))/a(n-2)]` -/
def P2052357272815716969.Spec : Prop :=
  ∀ n, (P2052357272815716969.a n : ℤ) = A151972 (n + 1)

end A151972

/-! ## A151972.P14543867515584146141

`∑[a(n-4)^a(a(n-2))]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=4, a(4)=5`
-/

namespace A151972.P14543867515584146141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 4, 5] fun n f1 =>
  f1 (n - 4) ^ f1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151972.P14543867515584146141

namespace A151972

/-- `∑[a(n-4)^a(a(n-2))]` -/
def P14543867515584146141.Spec : Prop :=
  ∀ n, (P14543867515584146141.a n : ℤ) = A151972 (n + 1)

end A151972

/-! ## A151972.P10572852477666019562

`A242660(n+1)+A187326(n)`
-/

namespace A151972.P10572852477666019562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1) + A187326 n

end

end A151972.P10572852477666019562

namespace A151972

/-- `A242660(n+1)+A187326(n)` -/
def P10572852477666019562.Spec : Prop :=
  ∀ n, P10572852477666019562.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P8396671663379607607

`A047467(n+1)-A110657(n)`
-/

namespace A151972.P8396671663379607607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1) - A110657 n

end

end A151972.P8396671663379607607

namespace A151972

/-- `A047467(n+1)-A110657(n)` -/
def P8396671663379607607.Spec : Prop :=
  ∀ n, P8396671663379607607.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P4877394208508607741

`A032766(n)+A008585(A057353(n))`
-/

namespace A151972.P4877394208508607741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A008585 (A057353 n).toNat

end

end A151972.P4877394208508607741

namespace A151972

/-- `A032766(n)+A008585(A057353(n))` -/
def P4877394208508607741.Spec : Prop :=
  ∀ n, P4877394208508607741.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P5198972792975758780

`2*A042948(n)-A028242(A028242(n))`
-/

namespace A151972.P5198972792975758780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A042948 n - A028242 (A028242 n).toNat

end

end A151972.P5198972792975758780

namespace A151972

/-- `2*A042948(n)-A028242(A028242(n))` -/
def P5198972792975758780.Spec : Prop :=
  ∀ n, P5198972792975758780.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P17803365578476838995

`A379211(n+2)-7`
-/

namespace A151972.P17803365578476838995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 2) - 7

end

end A151972.P17803365578476838995

namespace A151972

/-- `A379211(n+2)-7` -/
def P17803365578476838995.Spec : Prop :=
  ∀ n, P17803365578476838995.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P10683371022023500938

`A130484(A032766(n))`
-/

namespace A151972.P10683371022023500938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (A032766 n).toNat

end

end A151972.P10683371022023500938

namespace A151972

/-- `A130484(A032766(n))` -/
def P10683371022023500938.Spec : Prop :=
  ∀ n, P10683371022023500938.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P13172620351462816647

`A008851(A001651(n+1))`
-/

namespace A151972.P13172620351462816647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A001651 (n + 1)).toNat

end

end A151972.P13172620351462816647

namespace A151972

/-- `A008851(A001651(n+1))` -/
def P13172620351462816647.Spec : Prop :=
  ∀ n, P13172620351462816647.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P7138109029923233300

`A008851(A032766(n)+1)`
-/

namespace A151972.P7138109029923233300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A032766 n + 1).toNat

end

end A151972.P7138109029923233300

namespace A151972

/-- `A008851(A032766(n)+1)` -/
def P7138109029923233300.Spec : Prop :=
  ∀ n, P7138109029923233300.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P6514527289384003104

`A130484(A004526(n)+n)`
-/

namespace A151972.P6514527289384003104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (A004526 n + (n : ℤ)).toNat

end

end A151972.P6514527289384003104

namespace A151972

/-- `A130484(A004526(n)+n)` -/
def P6514527289384003104.Spec : Prop :=
  ∀ n, P6514527289384003104.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P15372752162308579473

`A130484(A001651(n+1)-1)`
-/

namespace A151972.P15372752162308579473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (A001651 (n + 1) - 1).toNat

end

end A151972.P15372752162308579473

namespace A151972

/-- `A130484(A001651(n+1)-1)` -/
def P15372752162308579473.Spec : Prop :=
  ∀ n, P15372752162308579473.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P15358286478459473790

`A008851(A004526(n)+1+n)`
-/

namespace A151972.P15358286478459473790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A004526 n + 1 + (n : ℤ)).toNat

end

end A151972.P15358286478459473790

namespace A151972

/-- `A008851(A004526(n)+1+n)` -/
def P15358286478459473790.Spec : Prop :=
  ∀ n, P15358286478459473790.a n = A151972 (n + 1)

end A151972

/-! ## A151972.P4669544315576935597

`A130484(lt[n, A130508(n+1)])`
-/

namespace A151972.P4669544315576935597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A151972.P4669544315576935597

namespace A151972

/-- `A130484(lt[n, A130508(n+1)])` -/
def P4669544315576935597.Spec : Prop :=
  ∀ n, P4669544315576935597.a n = A151972 (n + 1)

end A151972

/-!
# A151973: Numbers k such that k^2 - k is divisible by 24.

The programs for A151973, the canonical program `A151973.P11257407474798250516` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151973 has offset 1).

The definition of A151973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151973.P11257407474798250516

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=16, a(4)=24`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151973

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11257407474798250516.Spec : Prop :=
  ∀ n, P11257407474798250516.a n = A151973 (n + 1)

theorem P11257407474798250516.correct : P11257407474798250516.Spec := by
  intro n
  simp only [A151973, Nat.add_sub_cancel]

end A151973

/-! ## A151973.P8783299965449779983

`a(n-4)+24` with `a(0)=0, a(1)=1, a(2)=9, a(3)=16`
-/

namespace A151973.P8783299965449779983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9, 16] fun n a =>
  a (n - 4) + 24

end

end A151973.P8783299965449779983

namespace A151973

/-- `a(n-4)+24` -/
def P8783299965449779983.Spec : Prop :=
  ∀ n, (P8783299965449779983.a n : ℤ) = A151973 (n + 1)

end A151973

/-! ## A151973.P1441138761456783427

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=7, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A151973.P1441138761456783427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 7, 8] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151973.P1441138761456783427

namespace A151973

/-- `∑[floor(a(n-4))]` -/
def P1441138761456783427.Spec : Prop :=
  ∀ n, (P1441138761456783427.a n : ℤ) = A151973 (n + 1)

end A151973

/-! ## A151973.P5382634665823876825

`∑[8-a(n-2)%8]` with `a(0)=0, a(1)=1`
-/

namespace A151973.P5382634665823876825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  8 - Int.tmod (f1 (n - 2)) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151973.P5382634665823876825

namespace A151973

/-- `∑[8-a(n-2)%8]` -/
def P5382634665823876825.Spec : Prop :=
  ∀ n, P5382634665823876825.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P16301435497382139350

`∑[∑[ogf((x+8x^2+7x^3+8x^4)/(1+x+x^2+x^3))]]`
-/

namespace A151973.P16301435497382139350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8, 7, 8] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151973.P16301435497382139350

namespace A151973

/-- `∑[∑[ogf((x+8x^2+7x^3+8x^4)/(1+x+x^2+x^3))]]` -/
def P16301435497382139350.Spec : Prop :=
  ∀ n, P16301435497382139350.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P2666466301389555910

`record[n%2+8*ceil((n-gcd(3, n+1))/2)]`
-/

namespace A151973.P2666466301389555910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + 8 * ⌈((n : ℤ) - (Nat.gcd 3 (n + 1) : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151973.P2666466301389555910

namespace A151973

/-- `record[n%2+8*ceil((n-gcd(3, n+1))/2)]` -/
def P2666466301389555910.Spec : Prop :=
  ∀ n, P2666466301389555910.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P3122519390203536815

`A032766(n)+6*A057353(n)`
-/

namespace A151973.P3122519390203536815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + 6 * A057353 n

end

end A151973.P3122519390203536815

namespace A151973

/-- `A032766(n)+6*A057353(n)` -/
def P3122519390203536815.Spec : Prop :=
  ∀ n, P3122519390203536815.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P10324625091057495793

`2*A151972(n+1)-A032766(n)`
-/

namespace A151973.P10324625091057495793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151972 (n + 1) - A032766 n

end

end A151973.P10324625091057495793

namespace A151973

/-- `2*A151972(n+1)-A032766(n)` -/
def P10324625091057495793.Spec : Prop :=
  ∀ n, P10324625091057495793.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P5476337993885677978

`A008587(A057353(n))+A187322(n)+n`
-/

namespace A151973.P5476337993885677978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A057353 n).toNat + (A187322 n + (n : ℤ))

end

end A151973.P5476337993885677978

namespace A151973

/-- `A008587(A057353(n))+A187322(n)+n` -/
def P5476337993885677978.Spec : Prop :=
  ∀ n, P5476337993885677978.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P1958075089656957910

`A151971(n+1)+A151972(n+1)-A112652(n)`
-/

namespace A151973.P1958075089656957910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151971 (n + 1) + (A151972 (n + 1) - A112652 n)

end

end A151973.P1958075089656957910

namespace A151973

/-- `A151971(n+1)+A151972(n+1)-A112652(n)` -/
def P1958075089656957910.Spec : Prop :=
  ∀ n, P1958075089656957910.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P4960799864750662034

`A047393(A001651(n+1))`
-/

namespace A151973.P4960799864750662034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A001651 (n + 1)).toNat

end

end A151973.P4960799864750662034

namespace A151973

/-- `A047393(A001651(n+1))` -/
def P4960799864750662034.Spec : Prop :=
  ∀ n, P4960799864750662034.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P14474797414098838123

`A047393(A032766(n)+1)`
-/

namespace A151973.P14474797414098838123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A032766 n + 1).toNat

end

end A151973.P14474797414098838123

namespace A151973

/-- `A047393(A032766(n)+1)` -/
def P14474797414098838123.Spec : Prop :=
  ∀ n, P14474797414098838123.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P6450059628051214969

`A228137(A001651(n+1))-A047241(n+1)`
-/

namespace A151973.P6450059628051214969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (A001651 (n + 1)).toNat - A047241 (n + 1)

end

end A151973.P6450059628051214969

namespace A151973

/-- `A228137(A001651(n+1))-A047241(n+1)` -/
def P6450059628051214969.Spec : Prop :=
  ∀ n, P6450059628051214969.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P17373675311869694046

`A112652(A047401(n+1))`
-/

namespace A151973.P17373675311869694046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A047401 (n + 1)).toNat

end

end A151973.P17373675311869694046

namespace A151973

/-- `A112652(A047401(n+1))` -/
def P17373675311869694046.Spec : Prop :=
  ∀ n, P17373675311869694046.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P15310188890650193795

`A112652((A112652(n)+n)/2)`
-/

namespace A151973.P15310188890650193795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (SequenceMachineLib.roundAway ((A112652 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A151973.P15310188890650193795

namespace A151973

/-- `A112652((A112652(n)+n)/2)` -/
def P15310188890650193795.Spec : Prop :=
  ∀ n, P15310188890650193795.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P7654337075069908068

`∩[A047393(n+1), A112652(n)]`
-/

namespace A151973.P7654337075069908068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151973.P7654337075069908068

namespace A151973

/-- `∩[A047393(n+1), A112652(n)]` -/
def P7654337075069908068.Spec : Prop :=
  ∀ n, (P7654337075069908068.a n : ℤ) = A151973 (n + 1)

end A151973

/-! ## A151973.P4676295142639176903

`A112652(2*n-A021913(n+1))`
-/

namespace A151973.P4676295142639176903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 ((2 * n : ℤ) - A021913 (n + 1)).toNat

end

end A151973.P4676295142639176903

namespace A151973

/-- `A112652(2*n-A021913(n+1))` -/
def P4676295142639176903.Spec : Prop :=
  ∀ n, P4676295142639176903.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P2054786187722289129

`A057353(2*n)+A008588(A057353(n))`
-/

namespace A151973.P2054786187722289129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n) + A008588 (A057353 n).toNat

end

end A151973.P2054786187722289129

namespace A151973

/-- `A057353(2*n)+A008588(A057353(n))` -/
def P2054786187722289129.Spec : Prop :=
  ∀ n, P2054786187722289129.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P13703682156580257541

`A047394(A214068(n)+1)`
-/

namespace A151973.P13703682156580257541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047394 (A214068 n + 1).toNat

end

end A151973.P13703682156580257541

namespace A151973

/-- `A047394(A214068(n)+1)` -/
def P13703682156580257541.Spec : Prop :=
  ∀ n, P13703682156580257541.a n = A151973 (n + 1)

end A151973

/-! ## A151973.P18242486814659774652

`A047462(A214068(n)+1)`
-/

namespace A151973.P18242486814659774652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (A214068 n + 1).toNat

end

end A151973.P18242486814659774652

namespace A151973

/-- `A047462(A214068(n)+1)` -/
def P18242486814659774652.Spec : Prop :=
  ∀ n, P18242486814659774652.a n = A151973 (n + 1)

end A151973

/-!
# A151974: a(n) = n*(n+1)*(n+2)*(n+3)*(n+4)/8.

The programs for A151974, the canonical program `A151974.P10190100127795550298` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151974 has offset 0).

The definition of A151974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(n+3)*(n+4)/8` (program `A151974.P4051838916361663268`, by `A151974.P4051838916361663268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A151974.P10190100127795550298

`15*C(n+4, 5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151974

/-- `15*C(n+4, 5)` -/
def P10190100127795550298.Spec : Prop :=
  ∀ n, (P10190100127795550298.a n : ℤ) = A151974 n

theorem P10190100127795550298.correct : P10190100127795550298.Spec := by
  intro n
  simp only [A151974]

end A151974

/-! ## A151974.P4051838916361663268

`n*(n+1)*(n+2)*(n+3)*(n+4)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151974.P4051838916361663268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) * (n + 4) : ℚ) / 8

end

end A151974.P4051838916361663268

namespace A151974

/-- `n*(n+1)*(n+2)*(n+3)*(n+4)/8` -/
def P4051838916361663268.Spec : Prop :=
  ∀ n, P4051838916361663268.a n = (A151974 n : ℚ)

theorem P4051838916361663268.correct : P4051838916361663268.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P4051838916361663268.a, A151974.P10190100127795550298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P2018269491899216097

`3*A174002(n)`
-/

namespace A151974.P2018269491899216097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A174002 n

end

end A151974.P2018269491899216097

namespace A151974

/-- `3*A174002(n)` -/
def P2018269491899216097.Spec : Prop :=
  ∀ n, P2018269491899216097.a n = A151974 n

theorem P2018269491899216097.correct : P2018269491899216097.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P2018269491899216097.a, A151974.P10190100127795550298.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P4041088820137666146

`3/2*A266732(n)`
-/

namespace A151974.P4041088820137666146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A266732 n : ℚ)

end

end A151974.P4041088820137666146

namespace A151974

/-- `3/2*A266732(n)` -/
def P4041088820137666146.Spec : Prop :=
  ∀ n, P4041088820137666146.a n = (A151974 n : ℚ)

theorem P4041088820137666146.correct : P4041088820137666146.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P4041088820137666146.a, A151974.P10190100127795550298.a, A266732, A266732.P1525120879752990614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P12150523017799500209

`n/4*A112415(n)`
-/

namespace A151974.P12150523017799500209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A112415 n : ℚ)

end

end A151974.P12150523017799500209

namespace A151974

/-- `n/4*A112415(n)` -/
def P12150523017799500209.Spec : Prop :=
  ∀ n, P12150523017799500209.a n = (A151974 n : ℚ)

theorem P12150523017799500209.correct : P12150523017799500209.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P12150523017799500209.a, A151974.P10190100127795550298.a, A112415, A112415.P17226039057874977949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P18437290363268085428

`A266732(n)+A174002(n)`
-/

namespace A151974.P18437290363268085428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 n + A174002 n

end

end A151974.P18437290363268085428

namespace A151974

/-- `A266732(n)+A174002(n)` -/
def P18437290363268085428.Spec : Prop :=
  ∀ n, P18437290363268085428.a n = A151974 n

theorem P18437290363268085428.correct : P18437290363268085428.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P18437290363268085428.a, A151974.P10190100127795550298.a, A174002, A174002.P7699814237944664298.a, A266732, A266732.P1525120879752990614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P17744372854081616981

`A293475(n)+A162668(n)`
-/

namespace A151974.P17744372854081616981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293475 n + A162668 n

end

end A151974.P17744372854081616981

namespace A151974

/-- `A293475(n)+A162668(n)` -/
def P17744372854081616981.Spec : Prop :=
  ∀ n, P17744372854081616981.a n = A151974 n

end A151974

/-! ## A151974.P6062656117573482517

`A174002(n)+lcm(A174002(n), A277935(n+1))`
-/

namespace A151974.P6062656117573482517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + (Int.lcm (A174002 n) (A277935 (n + 1)) : ℤ)

end

end A151974.P6062656117573482517

namespace A151974

/-- `A174002(n)+lcm(A174002(n), A277935(n+1))` -/
def P6062656117573482517.Spec : Prop :=
  ∀ n, P6062656117573482517.a n = A151974 n

end A151974

/-! ## A151974.P8054321766006062169

`Δ[A240440(n+1)]`
-/

namespace A151974.P8054321766006062169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151974.P8054321766006062169

namespace A151974

/-- `Δ[A240440(n+1)]` -/
def P8054321766006062169.Spec : Prop :=
  ∀ n, P8054321766006062169.a n = A151974 n

theorem P8054321766006062169.correct : P8054321766006062169.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P8054321766006062169.f1, A151974.P8054321766006062169.a, A151974.P10190100127795550298.a, A240440, A240440.P13847665072072513550.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P17943793099654361060

`n*∑[A027480(n+1)]`
-/

namespace A151974.P17943793099654361060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151974.P17943793099654361060

namespace A151974

/-- `n*∑[A027480(n+1)]` -/
def P17943793099654361060.Spec : Prop :=
  ∀ n, P17943793099654361060.a n = A151974 n

end A151974

/-! ## A151974.P4519055437343511508

`n/2*A033487(n+1)`
-/

namespace A151974.P4519055437343511508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A033487 (n + 1) : ℚ)

end

end A151974.P4519055437343511508

namespace A151974

/-- `n/2*A033487(n+1)` -/
def P4519055437343511508.Spec : Prop :=
  ∀ n, P4519055437343511508.a n = (A151974 n : ℚ)

theorem P4519055437343511508.correct : P4519055437343511508.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P4519055437343511508.a, A151974.P10190100127795550298.a, A033487, A033487.P180010041112617206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P7556924624947491851

`A240440(n+2)-A240440(n+1)`
-/

namespace A151974.P7556924624947491851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 2) - A240440 (n + 1)

end

end A151974.P7556924624947491851

namespace A151974

/-- `A240440(n+2)-A240440(n+1)` -/
def P7556924624947491851.Spec : Prop :=
  ∀ n, P7556924624947491851.a n = A151974 n

theorem P7556924624947491851.correct : P7556924624947491851.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P7556924624947491851.a, A151974.P10190100127795550298.a, A240440, A240440.P13847665072072513550.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P11845284538869145437

`A102741(n+1)/A027468(n+1)*A000292(n)`
-/

namespace A151974.P11845284538869145437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102741 (n + 1) : ℚ) / (A027468 (n + 1) : ℚ) * (A000292 n : ℚ)

end

end A151974.P11845284538869145437

namespace A151974

/-- `A102741(n+1)/A027468(n+1)*A000292(n)` -/
def P11845284538869145437.Spec : Prop :=
  ∀ n, P11845284538869145437.a n = (A151974 n : ℚ)

end A151974

/-! ## A151974.P12278347741672904558

`5*A253942(n+3)`
-/

namespace A151974.P12278347741672904558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A253942 (n + 3)

end

end A151974.P12278347741672904558

namespace A151974

/-- `5*A253942(n+3)` -/
def P12278347741672904558.Spec : Prop :=
  ∀ n, P12278347741672904558.a n = A151974 n

theorem P12278347741672904558.correct : P12278347741672904558.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P12278347741672904558.a, A151974.P10190100127795550298.a, A253942, A253942.P11522209056307406865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P9367803638449297641

`n*A050534(n+3)`
-/

namespace A151974.P9367803638449297641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050534 (n + 3)

end

end A151974.P9367803638449297641

namespace A151974

/-- `n*A050534(n+3)` -/
def P9367803638449297641.Spec : Prop :=
  ∀ n, P9367803638449297641.a n = A151974 n

theorem P9367803638449297641.correct : P9367803638449297641.Spec := by
  intro n
  simp only [A151974, Nat.add_sub_cancel, A151974.P9367803638449297641.a, A151974.P10190100127795550298.a, A050534, A050534.P12216670126680451922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151974

/-! ## A151974.P9965548217463728920

`∑[A266395(n+4)]`
-/

namespace A151974.P9965548217463728920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266395 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151974.P9965548217463728920

namespace A151974

/-- `∑[A266395(n+4)]` -/
def P9965548217463728920.Spec : Prop :=
  ∀ n, P9965548217463728920.a n = A151974 n

end A151974

/-! ## A151974.P15908372909483394905

`n*A000217(A000096(n+1))`
-/

namespace A151974.P15908372909483394905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A000096 (n + 1)).toNat

end

end A151974.P15908372909483394905

namespace A151974

/-- `n*A000217(A000096(n+1))` -/
def P15908372909483394905.Spec : Prop :=
  ∀ n, P15908372909483394905.a n = A151974 n

end A151974

/-! ## A151974.P14479001583677494837

`n*A000217(A212342(n+2))`
-/

namespace A151974.P14479001583677494837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A212342 (n + 2)).toNat

end

end A151974.P14479001583677494837

namespace A151974

/-- `n*A000217(A212342(n+2))` -/
def P14479001583677494837.Spec : Prop :=
  ∀ n, P14479001583677494837.a n = A151974 n

end A151974

/-! ## A151974.P16733418998688834863

`n*A000217(A101881(2*n+1))`
-/

namespace A151974.P16733418998688834863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A101881 (2 * n + 1)).toNat

end

end A151974.P16733418998688834863

namespace A151974

/-- `n*A000217(A101881(2*n+1))` -/
def P16733418998688834863.Spec : Prop :=
  ∀ n, P16733418998688834863.a n = A151974 n

end A151974

/-! ## A151974.P15014141275274402221

`n*A000217(A193974(A000217(n)))`
-/

namespace A151974.P15014141275274402221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A193974 (A000217 n).toNat).toNat

end

end A151974.P15014141275274402221

namespace A151974

/-- `n*A000217(A193974(A000217(n)))` -/
def P15014141275274402221.Spec : Prop :=
  ∀ n, P15014141275274402221.a n = A151974 n

end A151974

/-!
# A151975: The number of ways one can flip seven consecutive tails (or heads) when flipping a coin n times.

The programs for A151975, the canonical program `A151975.P13230785918572859469` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151975 has offset 0).

The definition of A151975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151975.P13230785918572859469

`A000079(n)-A066178(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151975

/-- `A000079(n)-A066178(n+1)` -/
def P13230785918572859469.Spec : Prop :=
  ∀ n, P13230785918572859469.a n = A151975 n

theorem P13230785918572859469.correct : P13230785918572859469.Spec := by
  intro n
  simp only [A151975]

end A151975

/-! ## A151975.P5820568302519283685

`2^n-Δ[A172317(n)]`
-/

namespace A151975.P5820568302519283685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A151975.P5820568302519283685

namespace A151975

/-- `2^n-Δ[A172317(n)]` -/
def P5820568302519283685.Spec : Prop :=
  ∀ n, P5820568302519283685.a n = A151975 n

end A151975

/-! ## A151975.P8734706025302314890

`A011782(n+1)-A066178(n+1)`
-/

namespace A151975.P8734706025302314890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A066178 (n + 1)

end

end A151975.P8734706025302314890

namespace A151975

/-- `A011782(n+1)-A066178(n+1)` -/
def P8734706025302314890.Spec : Prop :=
  ∀ n, P8734706025302314890.a n = A151975 n

end A151975

/-! ## A151975.P9536669078498414253

`A166444(n+2)-A066178(n+1)`
-/

namespace A151975.P9536669078498414253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 2) - A066178 (n + 1)

end

end A151975.P9536669078498414253

namespace A151975

/-- `A166444(n+2)-A066178(n+1)` -/
def P9536669078498414253.Spec : Prop :=
  ∀ n, P9536669078498414253.a n = A151975 n

end A151975

/-! ## A151975.P2193794007573217288

`A000079(n)-A066178(n)-Δ[A066178(n)]`
-/

namespace A151975.P2193794007573217288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A066178 n - (f1 (n + 1) - f1 n)

end

end A151975.P2193794007573217288

namespace A151975

/-- `A000079(n)-A066178(n)-Δ[A066178(n)]` -/
def P2193794007573217288.Spec : Prop :=
  ∀ n, P2193794007573217288.a n = A151975 n

theorem P2193794007573217288.correct : P2193794007573217288.Spec := by
  intro n
  simp only [A151975, Nat.add_sub_cancel, A151975.P2193794007573217288.f1, A151975.P2193794007573217288.a, A151975.P13230785918572859469.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A151975

/-! ## A151975.P7197022395543116820

`A000079(n)+A172317(n)-A172317(n+1)`
-/

namespace A151975.P7197022395543116820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A172317 n - A172317 (n + 1))

end

end A151975.P7197022395543116820

namespace A151975

/-- `A000079(n)+A172317(n)-A172317(n+1)` -/
def P7197022395543116820.Spec : Prop :=
  ∀ n, P7197022395543116820.a n = A151975 n

end A151975

/-! ## A151975.P9176408448410991664

`Δ[A000225(n)-A172317(n)]`
-/

namespace A151975.P9176408448410991664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A172317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151975.P9176408448410991664

namespace A151975

/-- `Δ[A000225(n)-A172317(n)]` -/
def P9176408448410991664.Spec : Prop :=
  ∀ n, P9176408448410991664.a n = A151975 n

end A151975

/-! ## A151975.P3206060344490490647

`Δ[A000079(n)-∑[A066178(n)]]`
-/

namespace A151975.P3206060344490490647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151975.P3206060344490490647

namespace A151975

/-- `Δ[A000079(n)-∑[A066178(n)]]` -/
def P3206060344490490647.Spec : Prop :=
  ∀ n, P3206060344490490647.a n = A151975 n

end A151975

/-! ## A151975.P663015133438721111

`A089633(∑[n])+1-A066178(n+1)`
-/

namespace A151975.P663015133438721111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j) + (1 - A066178 (n + 1))

end

end A151975.P663015133438721111

namespace A151975

/-- `A089633(∑[n])+1-A066178(n+1)` -/
def P663015133438721111.Spec : Prop :=
  ∀ n, P663015133438721111.a n = A151975 n

end A151975

/-!
# A151976: Minimal recursive sequence beginning with 5 similar to N with respect to property of integer to be or not to be in A079523.

The programs for A151976, there is no canonical definition to state claims against.
-/

/-! ## A151976.P7369101656075781907

`or(n, val(n+2, 2))+4+n`
-/

namespace A151976.P7369101656075781907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2) + 4 + n

end

end A151976.P7369101656075781907

/-! ## A151976.P12551263351221560277

`val(n+2, 2)%2+2*(n+2)`
-/

namespace A151976.P12551263351221560277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2 % 2 + 2 * (n + 2)

end

end A151976.P12551263351221560277

/-! ## A151976.P5602193874933248856

`2*(n+3)-gcd(2, val(n+2, 2))`
-/

namespace A151976.P5602193874933248856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - (Nat.gcd 2 (SequenceMachineLib.valuation (n + 2) 2) : ℤ)

end

end A151976.P5602193874933248856

/-! ## A151976.P8132736453920140365

`∑[Δ[val(n+1, 2)%2]+2]+2`
-/

namespace A151976.P8132736453920140365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A151976.P8132736453920140365

/-! ## A151976.P354743743728418645

`∑[Δ[and(1, val(n+1, 2))]+2]+2`
-/

namespace A151976.P354743743728418645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A151976.P354743743728418645

/-!
# A151977: Numbers that are congruent to {0, 1} mod 16.

The programs for A151977, the canonical program `A151977.P8516907949527745725` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151977 has offset 1).

The definition of A151977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151977.P8516907949527745725

`a(n-2)+16` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151977

/-- `a(n-2)+16` -/
def P8516907949527745725.Spec : Prop :=
  ∀ n, (P8516907949527745725.a n : ℤ) = A151977 (n + 1)

theorem P8516907949527745725.correct : P8516907949527745725.Spec := by
  intro n
  simp only [A151977, Nat.add_sub_cancel]

end A151977

/-! ## A151977.P1869428693705208280

`(16*(n+1)-7*(-1)^(n+1)-23)/2`
-/

namespace A151977.P1869428693705208280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 23 : ℚ) / 2

end

end A151977.P1869428693705208280

namespace A151977

/-- `(16*(n+1)-7*(-1)^(n+1)-23)/2` -/
def P1869428693705208280.Spec : Prop :=
  ∀ n, P1869428693705208280.a n = (A151977 (n + 1) : ℚ)

theorem P1869428693705208280.correct : P1869428693705208280.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A151977, Nat.add_sub_cancel, A151977.P1869428693705208280.a, A151977.P8516907949527745725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A151977, Nat.add_sub_cancel, A151977.P1869428693705208280.a, A151977.P8516907949527745725.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A151977

/-! ## A151977.P6797593278961603252

`A321212(n+1)-2`
-/

namespace A151977.P6797593278961603252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321212 (n + 1) - 2

end

end A151977.P6797593278961603252

namespace A151977

/-- `A321212(n+1)-2` -/
def P6797593278961603252.Spec : Prop :=
  ∀ n, P6797593278961603252.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P16512963460586664673

`record[and(n, -15)]`
-/

namespace A151977.P16512963460586664673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151977.P16512963460586664673

namespace A151977

/-- `record[and(n, -15)]` -/
def P16512963460586664673.Spec : Prop :=
  ∀ n, P16512963460586664673.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P52580401502802309

`record[xor(14, n)-14]`
-/

namespace A151977.P52580401502802309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 14 n : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151977.P52580401502802309

namespace A151977

/-- `record[xor(14, n)-14]` -/
def P52580401502802309.Spec : Prop :=
  ∀ n, P52580401502802309.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P18384619887629054888

`record[or(14, n)-12]-2`
-/

namespace A151977.P18384619887629054888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 14 n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A151977.P18384619887629054888

namespace A151977

/-- `record[or(14, n)-12]-2` -/
def P18384619887629054888.Spec : Prop :=
  ∀ n, P18384619887629054888.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P17503305750984473601

`∑[C(15, a(n-1))]` with `a(0)=0`
-/

namespace A151977.P17503305750984473601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 15 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151977.P17503305750984473601

namespace A151977

/-- `∑[C(15, a(n-1))]` -/
def P17503305750984473601.Spec : Prop :=
  ∀ n, (P17503305750984473601.a n : ℤ) = A151977 (n + 1)

end A151977

/-! ## A151977.P11588406927076898057

`∑[16-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A151977.P11588406927076898057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  16 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151977.P11588406927076898057

namespace A151977

/-- `∑[16-a(n-1)]` -/
def P11588406927076898057.Spec : Prop :=
  ∀ n, P11588406927076898057.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P7404877968543628269

`8*n-7*n%2`
-/

namespace A151977.P7404877968543628269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - ((7 * (n % 2) : ℕ) : ℤ)

end

end A151977.P7404877968543628269

namespace A151977

/-- `8*n-7*n%2` -/
def P7404877968543628269.Spec : Prop :=
  ∀ n, P7404877968543628269.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P3027593741465911708

`7*(n-and(1, n))+n`
-/

namespace A151977.P3027593741465911708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) - (Nat.land 1 n : ℤ)) + (n : ℤ)

end

end A151977.P3027593741465911708

namespace A151977

/-- `7*(n-and(1, n))+n` -/
def P3027593741465911708.Spec : Prop :=
  ∀ n, P3027593741465911708.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P15616047338744480827

`8-xor(7, -a(n-1))` with `a(0)=0`
-/

namespace A151977.P15616047338744480827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  8 - Int.xor 7 (-a (n - 1))

end

end A151977.P15616047338744480827

namespace A151977

/-- `8-xor(7, -a(n-1))` -/
def P15616047338744480827.Spec : Prop :=
  ∀ n, P15616047338744480827.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P17697594438778178036

`7*(n+1-gcd(2, n+1))+n`
-/

namespace A151977.P17697594438778178036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n + 1 : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)) + (n : ℤ)

end

end A151977.P17697594438778178036

namespace A151977

/-- `7*(n+1-gcd(2, n+1))+n` -/
def P17697594438778178036.Spec : Prop :=
  ∀ n, P17697594438778178036.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P12871767204400939695

`2*∑[∑[ogf((x+8x^2)/(1+x))]]-n`
-/

namespace A151977.P12871767204400939695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A151977.P12871767204400939695

namespace A151977

/-- `2*∑[∑[ogf((x+8x^2)/(1+x))]]-n` -/
def P12871767204400939695.Spec : Prop :=
  ∀ n, P12871767204400939695.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P16403032315952559257

`7*A052928(n)+n`
-/

namespace A151977.P16403032315952559257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A052928 n + (n : ℤ)

end

end A151977.P16403032315952559257

namespace A151977

/-- `7*A052928(n)+n` -/
def P16403032315952559257.Spec : Prop :=
  ∀ n, P16403032315952559257.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P11614198771548311212

`ceil(A151983(n+1)/2)`
-/

namespace A151977.P11614198771548311212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151983 (n + 1) : ℚ) / 2⌉

end

end A151977.P11614198771548311212

namespace A151977

/-- `ceil(A151983(n+1)/2)` -/
def P11614198771548311212.Spec : Prop :=
  ∀ n, P11614198771548311212.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P6461402305817634568

`∑[A010931(a(n-1))]` with `a(0)=0`
-/

namespace A151977.P6461402305817634568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010931 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151977.P6461402305817634568

namespace A151977

/-- `∑[A010931(a(n-1))]` -/
def P6461402305817634568.Spec : Prop :=
  ∀ n, P6461402305817634568.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P17810738973876554529

`∑[A166031(a(n-1))]` with `a(0)=0`
-/

namespace A151977.P17810738973876554529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A166031 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151977.P17810738973876554529

namespace A151977

/-- `∑[A166031(a(n-1))]` -/
def P17810738973876554529.Spec : Prop :=
  ∀ n, P17810738973876554529.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P1933043693041736075

`∑[A387612(a(n-1))]` with `a(0)=0`
-/

namespace A151977.P1933043693041736075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A387612 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151977.P1933043693041736075

namespace A151977

/-- `∑[A387612(a(n-1))]` -/
def P1933043693041736075.Spec : Prop :=
  ∀ n, P1933043693041736075.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P18171057689718869804

`∑[2*A021059(n)]-n`
-/

namespace A151977.P18171057689718869804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A151977.P18171057689718869804

namespace A151977

/-- `∑[2*A021059(n)]-n` -/
def P18171057689718869804.Spec : Prop :=
  ∀ n, P18171057689718869804.a n = A151977 (n + 1)

end A151977

/-! ## A151977.P15515440746523662134

`2*A090570(n+1)-n`
-/

namespace A151977.P15515440746523662134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090570 (n + 1) - (n : ℤ)

end

end A151977.P15515440746523662134

namespace A151977

/-- `2*A090570(n+1)-n` -/
def P15515440746523662134.Spec : Prop :=
  ∀ n, P15515440746523662134.a n = A151977 (n + 1)

end A151977

/-!
# A151978: Numbers that are congruent to {0, 1} mod 17.

The programs for A151978, the canonical program `A151978.P4042139470299513859` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151978 has offset 1).

The definition of A151978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151978.P4042139470299513859

`a(n-2)+17` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151978

/-- `a(n-2)+17` -/
def P4042139470299513859.Spec : Prop :=
  ∀ n, (P4042139470299513859.a n : ℤ) = A151978 (n + 1)

theorem P4042139470299513859.correct : P4042139470299513859.Spec := by
  intro n
  simp only [A151978, Nat.add_sub_cancel]

end A151978

/-! ## A151978.P2187832061681210139

`(34*(n+1)-15*(-1)^(n+1)-49)/4`
-/

namespace A151978.P2187832061681210139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((34 * (n + 1) : ℤ) - 15 * (-1) ^ (n + 1) - 49 : ℚ) / 4

end

end A151978.P2187832061681210139

namespace A151978

/-- `(34*(n+1)-15*(-1)^(n+1)-49)/4` -/
def P2187832061681210139.Spec : Prop :=
  ∀ n, P2187832061681210139.a n = (A151978 (n + 1) : ℚ)

theorem P2187832061681210139.correct : P2187832061681210139.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A151978, Nat.add_sub_cancel, A151978.P2187832061681210139.a, A151978.P4042139470299513859.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A151978, Nat.add_sub_cancel, A151978.P2187832061681210139.a, A151978.P4042139470299513859.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A151978

/-! ## A151978.P12852700116212744733

`∑[C(16, a(n-1))]` with `a(0)=0`
-/

namespace A151978.P12852700116212744733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 16 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P12852700116212744733

namespace A151978

/-- `∑[C(16, a(n-1))]` -/
def P12852700116212744733.Spec : Prop :=
  ∀ n, (P12852700116212744733.a n : ℤ) = A151978 (n + 1)

end A151978

/-! ## A151978.P16913431086161142449

`∑[17-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A151978.P16913431086161142449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  17 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P16913431086161142449

namespace A151978

/-- `∑[17-a(n-1)]` -/
def P16913431086161142449.Spec : Prop :=
  ∀ n, P16913431086161142449.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P10014871404801767320

`∑[((n-1)%2+1)^4]`
-/

namespace A151978.P10014871404801767320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 2 + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P10014871404801767320

namespace A151978

/-- `∑[((n-1)%2+1)^4]` -/
def P10014871404801767320.Spec : Prop :=
  ∀ n, P10014871404801767320.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P3545460383737045393

`∑[(1-(1-n)%2)^4]`
-/

namespace A151978.P3545460383737045393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (1 - (n : ℤ)) 2) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P3545460383737045393

namespace A151978

/-- `∑[(1-(1-n)%2)^4]` -/
def P3545460383737045393.Spec : Prop :=
  ∀ n, P3545460383737045393.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P15169447814405759111

`∑[((n²-1)%4+1)²]`
-/

namespace A151978.P15169447814405759111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 1) 4 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P15169447814405759111

namespace A151978

/-- `∑[((n²-1)%4+1)²]` -/
def P15169447814405759111.Spec : Prop :=
  ∀ n, P15169447814405759111.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P16019888176897138349

`∑[(1-(1-n²)%4)²]`
-/

namespace A151978.P16019888176897138349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (1 - (n ^ 2 : ℤ)) 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P16019888176897138349

namespace A151978

/-- `∑[(1-(1-n²)%4)²]` -/
def P16019888176897138349.Spec : Prop :=
  ∀ n, P16019888176897138349.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P5433234119881143253

`∑[gcd(n, 2%(n+1))^4]`
-/

namespace A151978.P5433234119881143253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 % (n + 1)) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P5433234119881143253

namespace A151978

/-- `∑[gcd(n, 2%(n+1))^4]` -/
def P5433234119881143253.Spec : Prop :=
  ∀ n, (P5433234119881143253.a n : ℤ) = A151978 (n + 1)

end A151978

/-! ## A151978.P2059529805338437992

`∑[gcd(n², 4%(n+2))²]`
-/

namespace A151978.P2059529805338437992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (4 % (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P2059529805338437992

namespace A151978

/-- `∑[gcd(n², 4%(n+2))²]` -/
def P2059529805338437992.Spec : Prop :=
  ∀ n, (P2059529805338437992.a n : ℤ) = A151978 (n + 1)

end A151978

/-! ## A151978.P6287374987788182818

`∑[(4^a((n+1)%2))²]` with `a(0)=0`
-/

namespace A151978.P6287374987788182818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 ^ f1 ((n + 1) % 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P6287374987788182818

namespace A151978

/-- `∑[(4^a((n+1)%2))²]` -/
def P6287374987788182818.Spec : Prop :=
  ∀ n, (P6287374987788182818.a n : ℤ) = A151978 (n + 1)

end A151978

/-! ## A151978.P5814660880233306403

`∑[A134451(n)^4]`
-/

namespace A151978.P5814660880233306403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P5814660880233306403

namespace A151978

/-- `∑[A134451(n)^4]` -/
def P5814660880233306403.Spec : Prop :=
  ∀ n, P5814660880233306403.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P5638170670437962245

`5*A168237(n)+n`
-/

namespace A151978.P5638170670437962245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A168237 n + (n : ℤ)

end

end A151978.P5638170670437962245

namespace A151978

/-- `5*A168237(n)+n` -/
def P5638170670437962245.Spec : Prop :=
  ∀ n, P5638170670437962245.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P16271138582239497220

`∑[(1-A115634(n))²]`
-/

namespace A151978.P16271138582239497220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A115634 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P16271138582239497220

namespace A151978

/-- `∑[(1-A115634(n))²]` -/
def P16271138582239497220.Spec : Prop :=
  ∀ n, P16271138582239497220.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P3572849418919736375

`∑[A010932(a(n-1))]` with `a(0)=0`
-/

namespace A151978.P3572849418919736375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010932 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P3572849418919736375

namespace A151978

/-- `∑[A010932(a(n-1))]` -/
def P3572849418919736375.Spec : Prop :=
  ∀ n, P3572849418919736375.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P15971239144566870509

`∑[A103922(a(n-1))]` with `a(0)=0`
-/

namespace A151978.P15971239144566870509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A103922 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P15971239144566870509

namespace A151978

/-- `∑[A103922(a(n-1))]` -/
def P15971239144566870509.Spec : Prop :=
  ∀ n, P15971239144566870509.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P12570677194211546045

`∑[A177499(a(n-1))]` with `a(0)=0`
-/

namespace A151978.P12570677194211546045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A177499 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P12570677194211546045

namespace A151978

/-- `∑[A177499(a(n-1))]` -/
def P12570677194211546045.Spec : Prop :=
  ∀ n, P12570677194211546045.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P2496941667264275023

`∑[(2-A040005(n))²²]`
-/

namespace A151978.P2496941667264275023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A040005 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P2496941667264275023

namespace A151978

/-- `∑[(2-A040005(n))²²]` -/
def P2496941667264275023.Spec : Prop :=
  ∀ n, P2496941667264275023.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P4792037081067985280

`∑[(1-A059855(n+1))²]`
-/

namespace A151978.P4792037081067985280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A059855 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P4792037081067985280

namespace A151978

/-- `∑[(1-A059855(n+1))²]` -/
def P4792037081067985280.Spec : Prop :=
  ∀ n, P4792037081067985280.a n = A151978 (n + 1)

end A151978

/-! ## A151978.P14152482820266021142

`∑[A176895(a(n-1))²]` with `a(0)=0`
-/

namespace A151978.P14152482820266021142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A176895 (f1 (n - 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151978.P14152482820266021142

namespace A151978

/-- `∑[A176895(a(n-1))²]` -/
def P14152482820266021142.Spec : Prop :=
  ∀ n, P14152482820266021142.a n = A151978 (n + 1)

end A151978

/-!
# A151979: Numbers congruent to {0, 1} (mod 19).

The programs for A151979, the canonical program `A151979.P3841012157346683137` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151979 has offset 1).

The definition of A151979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151979.P3841012157346683137

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151979

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P3841012157346683137.Spec : Prop :=
  ∀ n, P3841012157346683137.a n = A151979 (n + 1)

theorem P3841012157346683137.correct : P3841012157346683137.Spec := by
  intro n
  simp only [A151979, Nat.add_sub_cancel]

end A151979

/-! ## A151979.P10705292436778810667

`1/4*(38*(n+1)-55-17*(-1)^(n+1))`
-/

namespace A151979.P10705292436778810667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((38 * (n + 1) : ℤ) - 55 - 17 * (-1) ^ (n + 1) : ℚ)

end

end A151979.P10705292436778810667

namespace A151979

/-- `1/4*(38*(n+1)-55-17*(-1)^(n+1))` -/
def P10705292436778810667.Spec : Prop :=
  ∀ n, P10705292436778810667.a n = (A151979 (n + 1) : ℚ)

theorem P10705292436778810667.correct : P10705292436778810667.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A151979, Nat.add_sub_cancel, A151979.P10705292436778810667.a, A151979.P3841012157346683137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A151979, Nat.add_sub_cancel, A151979.P10705292436778810667.a, A151979.P3841012157346683137.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A151979

/-! ## A151979.P8818009295349700932

`record[n/(n%19)!]`
-/

namespace A151979.P8818009295349700932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 19) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151979.P8818009295349700932

namespace A151979

/-- `record[n/(n%19)!]` -/
def P8818009295349700932.Spec : Prop :=
  ∀ n, P8818009295349700932.a n = (A151979 (n + 1) : ℚ)

end A151979

/-! ## A151979.P528334563799543136

`19+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A151979.P528334563799543136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  19 + a (n - 2)

end

end A151979.P528334563799543136

namespace A151979

/-- `19+a(n-2)` -/
def P528334563799543136.Spec : Prop :=
  ∀ n, (P528334563799543136.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P13430525964330815188

`∑[C(18, a(n-1))]` with `a(0)=0`
-/

namespace A151979.P13430525964330815188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 18 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151979.P13430525964330815188

namespace A151979

/-- `∑[C(18, a(n-1))]` -/
def P13430525964330815188.Spec : Prop :=
  ∀ n, (P13430525964330815188.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P9721575542949813782

`∑[gcd(18, and(1, n))]-18`
-/

namespace A151979.P9721575542949813782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 18 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 18

end

end A151979.P9721575542949813782

namespace A151979

/-- `∑[gcd(18, and(1, n))]-18` -/
def P9721575542949813782.Spec : Prop :=
  ∀ n, P9721575542949813782.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P12519845655626740338

`∑[19-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A151979.P12519845655626740338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  19 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151979.P12519845655626740338

namespace A151979

/-- `∑[19-a(n-1)]` -/
def P12519845655626740338.Spec : Prop :=
  ∀ n, P12519845655626740338.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P3158526724390100421

`∑[A010934(a(n-1))]` with `a(0)=0`
-/

namespace A151979.P3158526724390100421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010934 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151979.P3158526724390100421

namespace A151979

/-- `∑[A010934(a(n-1))]` -/
def P3158526724390100421.Spec : Prop :=
  ∀ n, P3158526724390100421.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P17122653591076145974

`∪[A008601(n), A215144(n)]`
-/

namespace A151979.P17122653591076145974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151979.P17122653591076145974

namespace A151979

/-- `∪[A008601(n), A215144(n)]` -/
def P17122653591076145974.Spec : Prop :=
  ∀ n, (P17122653591076145974.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P5667561474617102920

`A151978(n+1)+A052928(n)`
-/

namespace A151979.P5667561474617102920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (n + 1) + A052928 n

end

end A151979.P5667561474617102920

namespace A151979

/-- `A151978(n+1)+A052928(n)` -/
def P5667561474617102920.Spec : Prop :=
  ∀ n, P5667561474617102920.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P7379622865304882568

`A168237(n)+A151977(n+1)`
-/

namespace A151979.P7379622865304882568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + A151977 (n + 1)

end

end A151979.P7379622865304882568

namespace A151979

/-- `A168237(n)+A151977(n+1)` -/
def P7379622865304882568.Spec : Prop :=
  ∀ n, P7379622865304882568.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P3618048241273083834

`A008594(n)-A168206(n+1)`
-/

namespace A151979.P3618048241273083834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n - A168206 (n + 1)

end

end A151979.P3618048241273083834

namespace A151979

/-- `A008594(n)-A168206(n+1)` -/
def P3618048241273083834.Spec : Prop :=
  ∀ n, P3618048241273083834.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P16836761873265635938

`A190991(n)-A166522(n+1)`
-/

namespace A151979.P16836761873265635938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - A166522 (n + 1)

end

end A151979.P16836761873265635938

namespace A151979

/-- `A190991(n)-A166522(n+1)` -/
def P16836761873265635938.Spec : Prop :=
  ∀ n, P16836761873265635938.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P17706022679684023345

`record[n*A014028(n)²]`
-/

namespace A151979.P17706022679684023345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014028 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151979.P17706022679684023345

namespace A151979

/-- `record[n*A014028(n)²]` -/
def P17706022679684023345.Spec : Prop :=
  ∀ n, P17706022679684023345.a n = A151979 (n + 1)

end A151979

/-! ## A151979.P11502345998545831890

`eq[n, n*A014047(n)²]`
-/

namespace A151979.P11502345998545831890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014047 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151979.P11502345998545831890

namespace A151979

/-- `eq[n, n*A014047(n)²]` -/
def P11502345998545831890.Spec : Prop :=
  ∀ n, (P11502345998545831890.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P3167381419931126012

`eq[A004086(n*A014028(n)²), A004086(n)]`
-/

namespace A151979.P3167381419931126012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * A014028 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151979.P3167381419931126012

namespace A151979

/-- `eq[A004086(n*A014028(n)²), A004086(n)]` -/
def P3167381419931126012.Spec : Prop :=
  ∀ n, (P3167381419931126012.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P8367055558411991135

`eq[A028897(n*A014028(n)²), A028897(n)]`
-/

namespace A151979.P8367055558411991135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 ((n : ℤ) * A014028 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151979.P8367055558411991135

namespace A151979

/-- `eq[A028897(n*A014028(n)²), A028897(n)]` -/
def P8367055558411991135.Spec : Prop :=
  ∀ n, (P8367055558411991135.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P2193654607399216614

`eq[A032741(n*A014028(n)²), A032741(n)]`
-/

namespace A151979.P2193654607399216614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) * A014028 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151979.P2193654607399216614

namespace A151979

/-- `eq[A032741(n*A014028(n)²), A032741(n)]` -/
def P2193654607399216614.Spec : Prop :=
  ∀ n, (P2193654607399216614.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P14026207238959861643

`eq[A078898(n*A014028(n)²), A078898(n)]`
-/

namespace A151979.P14026207238959861643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((n : ℤ) * A014028 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151979.P14026207238959861643

namespace A151979

/-- `eq[A078898(n*A014028(n)²), A078898(n)]` -/
def P14026207238959861643.Spec : Prop :=
  ∀ n, (P14026207238959861643.a n : ℤ) = A151979 (n + 1)

end A151979

/-! ## A151979.P16760806568798736859

`eq[A104725(n*A014028(n)²), A104725(n)]`
-/

namespace A151979.P16760806568798736859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 ((n : ℤ) * A014028 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151979.P16760806568798736859

namespace A151979

/-- `eq[A104725(n*A014028(n)²), A104725(n)]` -/
def P16760806568798736859.Spec : Prop :=
  ∀ n, (P16760806568798736859.a n : ℤ) = A151979 (n + 1)

end A151979

/-!
# A151980: Numbers k such that k^2 - k is divisible by 20.

The programs for A151980, the canonical program `A151980.P1925585840086865863` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151980 has offset 1).

The definition of A151980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151980.P1925585840086865863

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=16, a(4)=20`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151980

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P1925585840086865863.Spec : Prop :=
  ∀ n, P1925585840086865863.a n = A151980 (n + 1)

theorem P1925585840086865863.correct : P1925585840086865863.Spec := by
  intro n
  simp only [A151980, Nat.add_sub_cancel]

end A151980

/-! ## A151980.P16495509033960749664

`10*floor((n+1)/4)+4*(n+1)-3*floor((n+1)/2)-4`
-/

namespace A151980.P16495509033960749664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(n + 1 : ℚ) / 4⌋ + (4 * (n + 1) : ℤ) - 3 * ⌊(n + 1 : ℚ) / 2⌋ - 4

end

end A151980.P16495509033960749664

namespace A151980

/-- `10*floor((n+1)/4)+4*(n+1)-3*floor((n+1)/2)-4` -/
def P16495509033960749664.Spec : Prop :=
  ∀ n, P16495509033960749664.a n = A151980 (n + 1)

end A151980

/-! ## A151980.P12828341841666439450

`eq[lcm(10, C(n, 2)), C(n, 2)]`
-/

namespace A151980.P12828341841666439450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (Nat.choose n 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P12828341841666439450

namespace A151980

/-- `eq[lcm(10, C(n, 2)), C(n, 2)]` -/
def P12828341841666439450.Spec : Prop :=
  ∀ n, (P12828341841666439450.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P14288547573369446923

`lt[xor(n, n+2), (n+3)%5]`
-/

namespace A151980.P14288547573369446923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A151980.P14288547573369446923

namespace A151980

/-- `lt[xor(n, n+2), (n+3)%5]` -/
def P14288547573369446923.Spec : Prop :=
  ∀ n, (P14288547573369446923.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P16040784136011478424

`record[(and(2, n)+n)%(2-n%5+n)]`
-/

namespace A151980.P16040784136011478424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.land 2 n + n : ℤ) (2 - ((n % 5 : ℕ) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151980.P16040784136011478424

namespace A151980

/-- `record[(and(2, n)+n)%(2-n%5+n)]` -/
def P16040784136011478424.Spec : Prop :=
  ∀ n, P16040784136011478424.a n = A151980 (n + 1)

end A151980

/-! ## A151980.P17510017995070218475

`eq[n+2, or(n, n+2)+C(n, 2)%5]`
-/

namespace A151980.P17510017995070218475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 2) + Nat.choose n 2 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P17510017995070218475

namespace A151980

/-- `eq[n+2, or(n, n+2)+C(n, 2)%5]` -/
def P17510017995070218475.Spec : Prop :=
  ∀ n, (P17510017995070218475.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P4279628464083865778

`A008851(A047476(n+2))`
-/

namespace A151980.P4279628464083865778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A047476 (n + 2)).toNat

end

end A151980.P4279628464083865778

namespace A151980

/-- `A008851(A047476(n+2))` -/
def P4279628464083865778.Spec : Prop :=
  ∀ n, P4279628464083865778.a n = A151980 (n + 1)

end A151980

/-! ## A151980.P6141290395255397262

`∩[A008851(n+1), A042948(n)]`
-/

namespace A151980.P6141290395255397262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151980.P6141290395255397262

namespace A151980

/-- `∩[A008851(n+1), A042948(n)]` -/
def P6141290395255397262.Spec : Prop :=
  ∀ n, (P6141290395255397262.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P5913051985882326896

`filter[A008851(n+1), A133872(#)]`
-/

namespace A151980.P5913051985882326896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A151980.P5913051985882326896

namespace A151980

/-- `filter[A008851(n+1), A133872(#)]` -/
def P5913051985882326896.Spec : Prop :=
  ∀ n, P5913051985882326896.a n = A151980 (n + 1)

end A151980

/-! ## A151980.P14525042238261384934

`eq[A050603(n), A138019(n)]`
-/

namespace A151980.P14525042238261384934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P14525042238261384934

namespace A151980

/-- `eq[A050603(n), A138019(n)]` -/
def P14525042238261384934.Spec : Prop :=
  ∀ n, (P14525042238261384934.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P8764937202203918574

`eq[A014019(n)², A050603(n)]`
-/

namespace A151980.P8764937202203918574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P8764937202203918574

namespace A151980

/-- `eq[A014019(n)², A050603(n)]` -/
def P8764937202203918574.Spec : Prop :=
  ∀ n, (P8764937202203918574.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P16179499287153224078

`eq[A053386(n+1), A138019(n)]`
-/

namespace A151980.P16179499287153224078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P16179499287153224078

namespace A151980

/-- `eq[A053386(n+1), A138019(n)]` -/
def P16179499287153224078.Spec : Prop :=
  ∀ n, (P16179499287153224078.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P2646120984659698652

`eq[A053390(n+1), A138019(n)]`
-/

namespace A151980.P2646120984659698652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P2646120984659698652

namespace A151980

/-- `eq[A053390(n+1), A138019(n)]` -/
def P2646120984659698652.Spec : Prop :=
  ∀ n, (P2646120984659698652.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P5556637629682853099

`eq[A112049(n+1), A138019(n)]`
-/

namespace A151980.P5556637629682853099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P5556637629682853099

namespace A151980

/-- `eq[A112049(n+1), A138019(n)]` -/
def P5556637629682853099.Spec : Prop :=
  ∀ n, (P5556637629682853099.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P10298884560779576875

`eq[A138019(n), A228371(n+1)]`
-/

namespace A151980.P10298884560779576875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P10298884560779576875

namespace A151980

/-- `eq[A138019(n), A228371(n+1)]` -/
def P10298884560779576875.Spec : Prop :=
  ∀ n, (P10298884560779576875.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P1112929824901188415

`eq[A138019(n), A232096(n+1)]`
-/

namespace A151980.P1112929824901188415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P1112929824901188415

namespace A151980

/-- `eq[A138019(n), A232096(n+1)]` -/
def P1112929824901188415.Spec : Prop :=
  ∀ n, (P1112929824901188415.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P18406479719318333915

`eq[A085785(n+2), A138019(n)]`
-/

namespace A151980.P18406479719318333915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085785 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P18406479719318333915

namespace A151980

/-- `eq[A085785(n+2), A138019(n)]` -/
def P18406479719318333915.Spec : Prop :=
  ∀ n, (P18406479719318333915.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P16808553888791362918

`eq[A138019(n), A158572(n+2)]`
-/

namespace A151980.P16808553888791362918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158572 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P16808553888791362918

namespace A151980

/-- `eq[A138019(n), A158572(n+2)]` -/
def P16808553888791362918.Spec : Prop :=
  ∀ n, (P16808553888791362918.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P17330532914845483440

`eq[A053386(n+1), A175922(n+1)]`
-/

namespace A151980.P17330532914845483440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P17330532914845483440

namespace A151980

/-- `eq[A053386(n+1), A175922(n+1)]` -/
def P17330532914845483440.Spec : Prop :=
  ∀ n, (P17330532914845483440.a n : ℤ) = A151980 (n + 1)

end A151980

/-! ## A151980.P7564278937210733667

`eq[A061501(n+1), A274206(n+1)]`
-/

namespace A151980.P7564278937210733667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151980.P7564278937210733667

namespace A151980

/-- `eq[A061501(n+1), A274206(n+1)]` -/
def P7564278937210733667.Spec : Prop :=
  ∀ n, (P7564278937210733667.a n : ℤ) = A151980 (n + 1)

end A151980

/-!
# A151981: Numbers k such that k^2 - k is divisible by 48.

The programs for A151981, the canonical program `A151981.P8429629156261686333` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151981 has offset 1).

The definition of A151981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151981.P8429629156261686333

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=33, a(4)=48`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151981

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8429629156261686333.Spec : Prop :=
  ∀ n, P8429629156261686333.a n = A151981 (n + 1)

theorem P8429629156261686333.correct : P8429629156261686333.Spec := by
  intro n
  simp only [A151981, Nat.add_sub_cancel]

end A151981

/-! ## A151981.P15938647049339917402

`a(n-4)+48` with `a(0)=0, a(1)=1, a(2)=16, a(3)=33`
-/

namespace A151981.P15938647049339917402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 16, 33] fun n a =>
  a (n - 4) + 48

end

end A151981.P15938647049339917402

namespace A151981

/-- `a(n-4)+48` -/
def P15938647049339917402.Spec : Prop :=
  ∀ n, (P15938647049339917402.a n : ℤ) = A151981 (n + 1)

end A151981

/-! ## A151981.P1064849198300751788

`A008598(A057353(n))+Δ[floor(n/2)]`
-/

namespace A151981.P1064849198300751788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A057353 n).toNat + (f1 (n + 1) - f1 n)

end

end A151981.P1064849198300751788

namespace A151981

/-- `A008598(A057353(n))+Δ[floor(n/2)]` -/
def P1064849198300751788.Spec : Prop :=
  ∀ n, P1064849198300751788.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P7803629343167643921

`A151977(A047246(n+2))`
-/

namespace A151981.P7803629343167643921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A047246 (n + 2)).toNat

end

end A151981.P7803629343167643921

namespace A151981

/-- `A151977(A047246(n+2))` -/
def P7803629343167643921.Spec : Prop :=
  ∀ n, P7803629343167643921.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P12062412302186860891

`A151977(A047269(n+1)+1)`
-/

namespace A151981.P12062412302186860891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A047269 (n + 1) + 1).toNat

end

end A151981.P12062412302186860891

namespace A151981

/-- `A151977(A047269(n+1)+1)` -/
def P12062412302186860891.Spec : Prop :=
  ∀ n, P12062412302186860891.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P17591441968725783417

`A151973(A047541(n+1))`
-/

namespace A151981.P17591441968725783417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (A047541 (n + 1)).toNat

end

end A151981.P17591441968725783417

namespace A151981

/-- `A151973(A047541(n+1))` -/
def P17591441968725783417.Spec : Prop :=
  ∀ n, P17591441968725783417.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P5472357863099506510

`∩[A151973(n+1), A151977(n+1)]`
-/

namespace A151981.P5472357863099506510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151981.P5472357863099506510

namespace A151981

/-- `∩[A151973(n+1), A151977(n+1)]` -/
def P5472357863099506510.Spec : Prop :=
  ∀ n, (P5472357863099506510.a n : ℤ) = A151981 (n + 1)

end A151981

/-! ## A151981.P16717548190992938235

`A047393(A112652(n)+1)`
-/

namespace A151981.P16717548190992938235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A112652 n + 1).toNat

end

end A151981.P16717548190992938235

namespace A151981

/-- `A047393(A112652(n)+1)` -/
def P16717548190992938235.Spec : Prop :=
  ∀ n, P16717548190992938235.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P2764835622017680844

`or(10, A047470(A016777(n)))-10`
-/

namespace A151981.P2764835622017680844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 10 (A047470 (A016777 n).toNat) - 10

end

end A151981.P2764835622017680844

namespace A151981

/-- `or(10, A047470(A016777(n)))-10` -/
def P2764835622017680844.Spec : Prop :=
  ∀ n, P2764835622017680844.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P3569062005777245054

`∩[A151977(n+1), A112652(n)]`
-/

namespace A151981.P3569062005777245054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151981.P3569062005777245054

namespace A151981

/-- `∩[A151977(n+1), A112652(n)]` -/
def P3569062005777245054.Spec : Prop :=
  ∀ n, (P3569062005777245054.a n : ℤ) = A151981 (n + 1)

end A151981

/-! ## A151981.P16444342326019880567

`A112652(A122461(2*n)+A112652(n))`
-/

namespace A151981.P16444342326019880567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A122461 (2 * n) + A112652 n).toNat

end

end A151981.P16444342326019880567

namespace A151981

/-- `A112652(A122461(2*n)+A112652(n))` -/
def P16444342326019880567.Spec : Prop :=
  ∀ n, P16444342326019880567.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P11273444747692636606

`A112652(A042948(n)+A112652(n)-n)`
-/

namespace A151981.P11273444747692636606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A042948 n + (A112652 n - (n : ℤ))).toNat

end

end A151981.P11273444747692636606

namespace A151981

/-- `A112652(A042948(n)+A112652(n)-n)` -/
def P11273444747692636606.Spec : Prop :=
  ∀ n, P11273444747692636606.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P4182906170693283148

`A112652(A042948(n)-(n-A112652(n)))`
-/

namespace A151981.P4182906170693283148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A042948 n - ((n : ℤ) - A112652 n)).toNat

end

end A151981.P4182906170693283148

namespace A151981

/-- `A112652(A042948(n)-(n-A112652(n)))` -/
def P4182906170693283148.Spec : Prop :=
  ∀ n, P4182906170693283148.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P7711629755794157111

`A112652(2*A112652(n)-A047527(n+1))`
-/

namespace A151981.P7711629755794157111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (2 * A112652 n - A047527 (n + 1)).toNat

end

end A151981.P7711629755794157111

namespace A151981

/-- `A112652(2*A112652(n)-A047527(n+1))` -/
def P7711629755794157111.Spec : Prop :=
  ∀ n, P7711629755794157111.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P3346549139179852890

`A112652(A112652(n)+A112652(n)-A047527(n+1))`
-/

namespace A151981.P3346549139179852890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A112652 n + (A112652 n - A047527 (n + 1))).toNat

end

end A151981.P3346549139179852890

namespace A151981

/-- `A112652(A112652(n)+A112652(n)-A047527(n+1))` -/
def P3346549139179852890.Spec : Prop :=
  ∀ n, P3346549139179852890.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P13089138526396353505

`A042948(A042948(A112652(n)))`
-/

namespace A151981.P13089138526396353505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A042948 (A112652 n).toNat).toNat

end

end A151981.P13089138526396353505

namespace A151981

/-- `A042948(A042948(A112652(n)))` -/
def P13089138526396353505.Spec : Prop :=
  ∀ n, P13089138526396353505.a n = A151981 (n + 1)

end A151981

/-! ## A151981.P9543763625720490209

`∩[A047476(A047476(n+2)), A112652(n)]`
-/

namespace A151981.P9543763625720490209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (A047476 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151981.P9543763625720490209

namespace A151981

/-- `∩[A047476(A047476(n+2)), A112652(n)]` -/
def P9543763625720490209.Spec : Prop :=
  ∀ n, (P9543763625720490209.a n : ℤ) = A151981 (n + 1)

end A151981

/-! ## A151981.P3717390642124346505

`∩[A047527(A047527(n+2)), A112652(n)]`
-/

namespace A151981.P3717390642124346505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (A047527 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151981.P3717390642124346505

namespace A151981

/-- `∩[A047527(A047527(n+2)), A112652(n)]` -/
def P3717390642124346505.Spec : Prop :=
  ∀ n, (P3717390642124346505.a n : ℤ) = A151981 (n + 1)

end A151981

/-! ## A151981.P15570419101295560649

`∩[A047397(A047397(n+1)+1), A112652(n)]`
-/

namespace A151981.P15570419101295560649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (A047397 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151981.P15570419101295560649

namespace A151981

/-- `∩[A047397(A047397(n+1)+1), A112652(n)]` -/
def P15570419101295560649.Spec : Prop :=
  ∀ n, (P15570419101295560649.a n : ℤ) = A151981 (n + 1)

end A151981

/-! ## A151981.P6009118966129880634

`∩[A151977(n+1), A032766(n)]`
-/

namespace A151981.P6009118966129880634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151981.P6009118966129880634

namespace A151981

/-- `∩[A151977(n+1), A032766(n)]` -/
def P6009118966129880634.Spec : Prop :=
  ∀ n, (P6009118966129880634.a n : ℤ) = A151981 (n + 1)

end A151981

/-!
# A151982: Arrangement of Fibonacci-numbers in a centered triangular fashion, such that every number is the difference and/or sum of adjacent numbers.

The programs for A151982, there is no canonical definition to state claims against.
-/

/-! ## A151982.P6179949611335184107

`A000045(ceil(root(n+1, π-1)))`
-/

namespace A151982.P6179949611335184107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n + 1 : ℝ) ^ (1 / (Real.pi - 1))⌉.toNat

end

end A151982.P6179949611335184107

/-! ## A151982.P9742040189780906300

`A042581(round(sqrt(ceil(2*n/3))))`
-/

namespace A151982.P9742040189780906300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042581 (SequenceMachineLib.roundAway (Real.sqrt (⌈2 * ((n : ℚ) / 3)⌉ : ℝ))).toNat

end

end A151982.P9742040189780906300

/-! ## A151982.P14904614329646188350

`A005181(round(sqrt(round(2*n/3))))`
-/

namespace A151982.P14904614329646188350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℝ))).toNat

end

end A151982.P14904614329646188350

/-! ## A151982.P14302441528480463197

`A041101(round(sqrt(round(2*n/3))))`
-/

namespace A151982.P14302441528480463197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041101 (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℝ))).toNat

end

end A151982.P14302441528480463197

/-! ## A151982.P15869156095982712684

`A041247(round(sqrt(round(2*n/3))))`
-/

namespace A151982.P15869156095982712684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041247 (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℝ))).toNat

end

end A151982.P15869156095982712684

/-! ## A151982.P12559605985267778983

`A041809(round(sqrt(round(2*n/3))))`
-/

namespace A151982.P12559605985267778983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041809 (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℝ))).toNat

end

end A151982.P12559605985267778983

/-! ## A151982.P16454484241630689911

`A320356(round(sqrt(round(2*n/3))))`
-/

namespace A151982.P16454484241630689911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320356 (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℝ))).toNat

end

end A151982.P16454484241630689911

/-! ## A151982.P10476594996580807772

`A212804(ceil(Δ[(n+2)^sqrt(2)]))`
-/

namespace A151982.P10476594996580807772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ⌈f1 (n + 1) - f1 n⌉.toNat

end

end A151982.P10476594996580807772

/-! ## A151982.P5158409015273169632

`A045842(round(sqrt(A004396(n))))`
-/

namespace A151982.P5158409015273169632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045842 (SequenceMachineLib.roundAway (Real.sqrt (A004396 n : ℝ))).toNat

end

end A151982.P5158409015273169632

/-! ## A151982.P14272651424908280861

`A147660(round(sqrt(A004396(n))))`
-/

namespace A151982.P14272651424908280861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147660 (SequenceMachineLib.roundAway (Real.sqrt (A004396 n : ℝ))).toNat

end

end A151982.P14272651424908280861

/-!
# A151983: Numbers congruent to {0, 1} mod 32.

The programs for A151983, the canonical program `A151983.P5660979548842144929` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151983 has offset 1).

The definition of A151983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151983.P5660979548842144929

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151983

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P5660979548842144929.Spec : Prop :=
  ∀ n, P5660979548842144929.a n = A151983 (n + 1)

theorem P5660979548842144929.correct : P5660979548842144929.Spec := by
  intro n
  simp only [A151983, Nat.add_sub_cancel]

end A151983

/-! ## A151983.P2066984850654770416

`(32*(n+1)-15*(-1)^(n+1)-47)/2`
-/

namespace A151983.P2066984850654770416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((32 * (n + 1) : ℤ) - 15 * (-1) ^ (n + 1) - 47 : ℚ) / 2

end

end A151983.P2066984850654770416

namespace A151983

/-- `(32*(n+1)-15*(-1)^(n+1)-47)/2` -/
def P2066984850654770416.Spec : Prop :=
  ∀ n, P2066984850654770416.a n = (A151983 (n + 1) : ℚ)

theorem P2066984850654770416.correct : P2066984850654770416.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A151983, Nat.add_sub_cancel, A151983.P2066984850654770416.a, A151983.P5660979548842144929.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A151983, Nat.add_sub_cancel, A151983.P2066984850654770416.a, A151983.P5660979548842144929.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A151983

/-! ## A151983.P17659829142820703105

`32+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A151983.P17659829142820703105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  32 + a (n - 2)

end

end A151983.P17659829142820703105

namespace A151983

/-- `32+a(n-2)` -/
def P17659829142820703105.Spec : Prop :=
  ∀ n, (P17659829142820703105.a n : ℤ) = A151983 (n + 1)

end A151983

/-! ## A151983.P8615891559366580012

`∑[C(31, a(n-1))]` with `a(0)=0`
-/

namespace A151983.P8615891559366580012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 31 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151983.P8615891559366580012

namespace A151983

/-- `∑[C(31, a(n-1))]` -/
def P8615891559366580012.Spec : Prop :=
  ∀ n, (P8615891559366580012.a n : ℤ) = A151983 (n + 1)

end A151983

/-! ## A151983.P6816567538406218277

`∑[32-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A151983.P6816567538406218277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  32 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151983.P6816567538406218277

namespace A151983

/-- `∑[32-a(n-1)]` -/
def P6816567538406218277.Spec : Prop :=
  ∀ n, P6816567538406218277.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P8088020456660416621

`ceil(A151984(n+1)/2)`
-/

namespace A151983.P8088020456660416621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151984 (n + 1) : ℚ) / 2⌉

end

end A151983.P8088020456660416621

namespace A151983

/-- `ceil(A151984(n+1)/2)` -/
def P8088020456660416621.Spec : Prop :=
  ∀ n, P8088020456660416621.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P16522045626544526815

`∑[A010947(a(n-1))]` with `a(0)=0`
-/

namespace A151983.P16522045626544526815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010947 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151983.P16522045626544526815

namespace A151983

/-- `∑[A010947(a(n-1))]` -/
def P16522045626544526815.Spec : Prop :=
  ∀ n, P16522045626544526815.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P11746420674514632855

`2*A151978(n+1)-n`
-/

namespace A151983.P11746420674514632855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151978 (n + 1) - (n : ℤ)

end

end A151983.P11746420674514632855

namespace A151983

/-- `2*A151978(n+1)-n` -/
def P11746420674514632855.Spec : Prop :=
  ∀ n, P11746420674514632855.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P14177533989470458219

`∪[4*8*n, A158057(2*n)]`
-/

namespace A151983.P14177533989470458219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (8 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151983.P14177533989470458219

namespace A151983

/-- `∪[4*8*n, A158057(2*n)]` -/
def P14177533989470458219.Spec : Prop :=
  ∀ n, (P14177533989470458219.a n : ℤ) = A151983 (n + 1)

end A151983

/-! ## A151983.P10301887037108974257

`A267747(n+1)+A052928(n)`
-/

namespace A151983.P10301887037108974257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267747 (n + 1) + A052928 n

end

end A151983.P10301887037108974257

namespace A151983

/-- `A267747(n+1)+A052928(n)` -/
def P10301887037108974257.Spec : Prop :=
  ∀ n, P10301887037108974257.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P10261868740676738918

`∪[A008598(2*n)+1, A008598(2*n)]`
-/

namespace A151983.P10261868740676738918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151983.P10261868740676738918

namespace A151983

/-- `∪[A008598(2*n)+1, A008598(2*n)]` -/
def P10261868740676738918.Spec : Prop :=
  ∀ n, (P10261868740676738918.a n : ℤ) = A151983 (n + 1)

end A151983

/-! ## A151983.P4109246138393341686

`record[and(n, -31)]`
-/

namespace A151983.P4109246138393341686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151983.P4109246138393341686

namespace A151983

/-- `record[and(n, -31)]` -/
def P4109246138393341686.Spec : Prop :=
  ∀ n, P4109246138393341686.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P9545774513187521838

`A151977(A042948(n)+1)`
-/

namespace A151983.P9545774513187521838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A042948 n + 1).toNat

end

end A151983.P9545774513187521838

namespace A151983

/-- `A151977(A042948(n)+1)` -/
def P9545774513187521838.Spec : Prop :=
  ∀ n, P9545774513187521838.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P17102222209159952914

`A151977(A042963(n+1))`
-/

namespace A151983.P17102222209159952914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A042963 (n + 1)).toNat

end

end A151983.P17102222209159952914

namespace A151983

/-- `A151977(A042963(n+1))` -/
def P17102222209159952914.Spec : Prop :=
  ∀ n, P17102222209159952914.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P6041389974076177111

`A151977(A047467(n+1)/2+1)`
-/

namespace A151983.P6041389974076177111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (SequenceMachineLib.roundAway ((A047467 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A151983.P6041389974076177111

namespace A151983

/-- `A151977(A047467(n+1)/2+1)` -/
def P6041389974076177111.Spec : Prop :=
  ∀ n, P6041389974076177111.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P18384052813481209189

`A151977(A000035(n+1)+2*n)`
-/

namespace A151983.P18384052813481209189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A000035 (n + 1) + (2 * n : ℤ)).toNat

end

end A151983.P18384052813481209189

namespace A151983

/-- `A151977(A000035(n+1)+2*n)` -/
def P18384052813481209189.Spec : Prop :=
  ∀ n, P18384052813481209189.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P14376102509780380892

`A151977(A047246(2*(n+1))-n)`
-/

namespace A151983.P14376102509780380892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A047246 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A151983.P14376102509780380892

namespace A151983

/-- `A151977(A047246(2*(n+1))-n)` -/
def P14376102509780380892.Spec : Prop :=
  ∀ n, P14376102509780380892.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P10502606238048258834

`A151977(A047461(n+1)-2*n)`
-/

namespace A151983.P10502606238048258834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A047461 (n + 1) - (2 * n : ℤ)).toNat

end

end A151983.P10502606238048258834

namespace A151983

/-- `A151977(A047461(n+1)-2*n)` -/
def P10502606238048258834.Spec : Prop :=
  ∀ n, P10502606238048258834.a n = A151983 (n + 1)

end A151983

/-! ## A151983.P11956633240820712649

`eq[n-2, or(30, n-2)]`
-/

namespace A151983.P11956633240820712649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 30 ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151983.P11956633240820712649

namespace A151983

/-- `eq[n-2, or(30, n-2)]` -/
def P11956633240820712649.Spec : Prop :=
  ∀ n, (P11956633240820712649.a n : ℤ) = A151983 (n + 1)

end A151983

/-! ## A151983.P3922260282919440885

`eq[n, and(n+28, n+2)]`
-/

namespace A151983.P3922260282919440885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 28) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151983.P3922260282919440885

namespace A151983

/-- `eq[n, and(n+28, n+2)]` -/
def P3922260282919440885.Spec : Prop :=
  ∀ n, (P3922260282919440885.a n : ℤ) = A151983 (n + 1)

end A151983

/-!
# A151984: Numbers that are congruent to {0, 1} mod 64.

The programs for A151984, the canonical program `A151984.P7199186612031319229` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151984 has offset 1).

The definition of A151984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151984.P7199186612031319229

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=64`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151984

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7199186612031319229.Spec : Prop :=
  ∀ n, P7199186612031319229.a n = A151984 (n + 1)

theorem P7199186612031319229.correct : P7199186612031319229.Spec := by
  intro n
  simp only [A151984, Nat.add_sub_cancel]

end A151984

/-! ## A151984.P11309259760420173245

`64+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A151984.P11309259760420173245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  64 + a (n - 2)

end

end A151984.P11309259760420173245

namespace A151984

/-- `64+a(n-2)` -/
def P11309259760420173245.Spec : Prop :=
  ∀ n, (P11309259760420173245.a n : ℤ) = A151984 (n + 1)

end A151984

/-! ## A151984.P5740875311062048724

`∑[C(63, a(n-1))]` with `a(0)=0`
-/

namespace A151984.P5740875311062048724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 63 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151984.P5740875311062048724

namespace A151984

/-- `∑[C(63, a(n-1))]` -/
def P5740875311062048724.Spec : Prop :=
  ∀ n, (P5740875311062048724.a n : ℤ) = A151984 (n + 1)

end A151984

/-! ## A151984.P9598546916228616095

`31*and(n, -2)+n`
-/

namespace A151984.P9598546916228616095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * Int.land (n : ℤ) (-2) + (n : ℤ)

end

end A151984.P9598546916228616095

namespace A151984

/-- `31*and(n, -2)+n` -/
def P9598546916228616095.Spec : Prop :=
  ∀ n, P9598546916228616095.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P15958263933749934765

`∑[64-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A151984.P15958263933749934765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  64 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151984.P15958263933749934765

namespace A151984

/-- `∑[64-a(n-1)]` -/
def P15958263933749934765.Spec : Prop :=
  ∀ n, P15958263933749934765.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P8256390438232161158

`∪[64*n+1, 64*n]`
-/

namespace A151984.P8256390438232161158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A151984.P8256390438232161158

namespace A151984

/-- `∪[64*n+1, 64*n]` -/
def P8256390438232161158.Spec : Prop :=
  ∀ n, (P8256390438232161158.a n : ℤ) = A151984 (n + 1)

end A151984

/-! ## A151984.P7059415573657563130

`62*floor(or(3, 2*n)/4)+n`
-/

namespace A151984.P7059415573657563130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  62 * ⌊(Nat.lor 3 (2 * n) : ℚ) / 4⌋ + (n : ℤ)

end

end A151984.P7059415573657563130

namespace A151984

/-- `62*floor(or(3, 2*n)/4)+n` -/
def P7059415573657563130.Spec : Prop :=
  ∀ n, P7059415573657563130.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P17461056734037821897

`a(n-1)-(a(n-3)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=64`
-/

namespace A151984.P17461056734037821897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 64] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2))

end

end A151984.P17461056734037821897

namespace A151984

/-- `a(n-1)-(a(n-3)-a(n-2))` -/
def P17461056734037821897.Spec : Prop :=
  ∀ n, P17461056734037821897.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P4682754982577979225

`2*A151983(n+1)-A000035(n)`
-/

namespace A151984.P4682754982577979225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151983 (n + 1) - A000035 n

end

end A151984.P4682754982577979225

namespace A151984

/-- `2*A151983(n+1)-A000035(n)` -/
def P4682754982577979225.Spec : Prop :=
  ∀ n, P4682754982577979225.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P11237867572784549424

`A151983(or(1, n))+A151983(n+1)`
-/

namespace A151984.P11237867572784549424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (Nat.lor 1 n) + A151983 (n + 1)

end

end A151984.P11237867572784549424

namespace A151984

/-- `A151983(or(1, n))+A151983(n+1)` -/
def P11237867572784549424.Spec : Prop :=
  ∀ n, P11237867572784549424.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P7474824030695394992

`A151983(or(1, n)+n)`
-/

namespace A151984.P7474824030695394992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (Nat.lor 1 n + n)

end

end A151984.P7474824030695394992

namespace A151984

/-- `A151983(or(1, n)+n)` -/
def P7474824030695394992.Spec : Prop :=
  ∀ n, P7474824030695394992.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P3873838751914311859

`A151983(A042948(n)+1)`
-/

namespace A151984.P3873838751914311859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (A042948 n + 1).toNat

end

end A151984.P3873838751914311859

namespace A151984

/-- `A151983(A042948(n)+1)` -/
def P3873838751914311859.Spec : Prop :=
  ∀ n, P3873838751914311859.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P9441287859874978896

`A151983(A042963(n+1))`
-/

namespace A151984.P9441287859874978896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (A042963 (n + 1)).toNat

end

end A151984.P9441287859874978896

namespace A151984

/-- `A151983(A042963(n+1))` -/
def P9441287859874978896.Spec : Prop :=
  ∀ n, P9441287859874978896.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P4568188569463429868

`A151983(A052928(n)+1+n)`
-/

namespace A151984.P4568188569463429868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (A052928 n + 1 + (n : ℤ)).toNat

end

end A151984.P4568188569463429868

namespace A151984

/-- `A151983(A052928(n)+1+n)` -/
def P4568188569463429868.Spec : Prop :=
  ∀ n, P4568188569463429868.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P14244710721212204815

`A151983(A000035(n+1)+2*n)`
-/

namespace A151984.P14244710721212204815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (A000035 (n + 1) + (2 * n : ℤ)).toNat

end

end A151984.P14244710721212204815

namespace A151984

/-- `A151983(A000035(n+1)+2*n)` -/
def P14244710721212204815.Spec : Prop :=
  ∀ n, P14244710721212204815.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P14291809510439532496

`record[and(n, -63)]`
-/

namespace A151984.P14291809510439532496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-63)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151984.P14291809510439532496

namespace A151984

/-- `record[and(n, -63)]` -/
def P14291809510439532496.Spec : Prop :=
  ∀ n, P14291809510439532496.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P16165488110081437898

`A151977(A047468(n+1))`
-/

namespace A151984.P16165488110081437898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A047468 (n + 1)).toNat

end

end A151984.P16165488110081437898

namespace A151984

/-- `A151977(A047468(n+1))` -/
def P16165488110081437898.Spec : Prop :=
  ∀ n, P16165488110081437898.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P17678669096763968377

`A151977(A047393(n+1)+1)`
-/

namespace A151984.P17678669096763968377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A047393 (n + 1) + 1).toNat

end

end A151984.P17678669096763968377

namespace A151984

/-- `A151977(A047393(n+1)+1)` -/
def P17678669096763968377.Spec : Prop :=
  ∀ n, P17678669096763968377.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P5194518402915451030

`A321212(A047393(n+1)+1)-2`
-/

namespace A151984.P5194518402915451030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321212 (A047393 (n + 1) + 1).toNat - 2

end

end A151984.P5194518402915451030

namespace A151984

/-- `A321212(A047393(n+1)+1)-2` -/
def P5194518402915451030.Spec : Prop :=
  ∀ n, P5194518402915451030.a n = A151984 (n + 1)

end A151984

/-! ## A151984.P3809177555709194286

`filter[A151983(n+1), A320006(#)]`
-/

namespace A151984.P3809177555709194286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A151984.P3809177555709194286

namespace A151984

/-- `filter[A151983(n+1), A320006(#)]` -/
def P3809177555709194286.Spec : Prop :=
  ∀ n, P3809177555709194286.a n = A151984 (n + 1)

end A151984

/-!
# A151986: Maximal number of moves in the glass worms (or vers de verres) game with n glasses before detecting a cycle.

The programs for A151986, there is no canonical definition to state claims against.
-/

/-! ## A151986.P1682094313517733605

`A196241(A014847(n+1))`
-/

namespace A151986.P1682094313517733605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196241 (A014847 (n + 1)).toNat

end

end A151986.P1682094313517733605

/-! ## A151986.P8361415733464425430

`A352241(A165779(n+1))`
-/

namespace A151986.P8361415733464425430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A165779 (n + 1)).toNat

end

end A151986.P8361415733464425430

/-! ## A151986.P1430945449325730223

`lt[A210187(A342516(n)), A237270(n+1)]`
-/

namespace A151986.P1430945449325730223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210187 (A342516 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A151986.P1430945449325730223

/-! ## A151986.P6854453604911849181

`A087980(n+1)-A143974(A128458(n+1))`
-/

namespace A151986.P6854453604911849181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1) - A143974 (A128458 (n + 1)).toNat

end

end A151986.P6854453604911849181

/-! ## A151986.P612147180321616523

`A317015(A192374(n+1)-A284320(3*(n+1)))`
-/

namespace A151986.P612147180321616523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317015 (A192374 (n + 1) - A284320 (3 * (n + 1))).toNat

end

end A151986.P612147180321616523

/-!
# A151987: Number of legal starting configurations in the glass worms (or vers de verres) game with n glasses.

The programs for A151987, there is no canonical definition to state claims against.
-/

/-! ## A151987.P7204548425169685630

`A074794(A005346(n+1))`
-/

namespace A151987.P7204548425169685630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074794 (A005346 (n + 1)).toNat

end

end A151987.P7204548425169685630

/-! ## A151987.P13010493763250537874

`A060715(A135889(n)+2)`
-/

namespace A151987.P13010493763250537874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A135889 n + 2).toNat

end

end A151987.P13010493763250537874

/-!
# A151988: G.f.: (x*(x^4+1)*(x^2-x+1)*(x^2+x+1))/((x^4+x^3+x^2+x+1)*(x^4-x^3+x^2-x+1)*(x-1)^2).

The programs for A151988, the canonical program `A151988.P4586414179305095913` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151988 has offset 0).

The definition of A151988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151988.P4586414179305095913

`comp[xor(2, 6*n)+3]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151988

/-- `comp[xor(2, 6*n)+3]` -/
def P4586414179305095913.Spec : Prop :=
  ∀ n, (P4586414179305095913.a n : ℤ) = A151988 n

theorem P4586414179305095913.correct : P4586414179305095913.Spec := by
  intro n
  simp only [A151988]

end A151988

/-! ## A151988.P16480573688822393882

`comp[a(n-2)+12]` with `a(0)=19, a(1)=7, a(2)=5`
-/

namespace A151988.P16480573688822393882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19, 7, 5] fun n f1 =>
  f1 (n - 2) + 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A151988.P16480573688822393882

namespace A151988

/-- `comp[a(n-2)+12]` -/
def P16480573688822393882.Spec : Prop :=
  ∀ n, (P16480573688822393882.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P17988730167583210097

`comp[∑[12-a(n-1)]]` with `a(0)=5, a(1)=2`
-/

namespace A151988.P17988730167583210097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  12 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P17988730167583210097

namespace A151988

/-- `comp[∑[12-a(n-1)]]` -/
def P17988730167583210097.Spec : Prop :=
  ∀ n, (P17988730167583210097.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P9358864796967451987

`comp[or(5, 4*n)+2*n]`
-/

namespace A151988.P9358864796967451987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (4 * n) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A151988.P9358864796967451987

namespace A151988

/-- `comp[or(5, 4*n)+2*n]` -/
def P9358864796967451987.Spec : Prop :=
  ∀ n, (P9358864796967451987.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P9249799443001088586

`comp[12*n-a(n-1)]` with `a(0)=5`
-/

namespace A151988.P9249799443001088586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  (12 * n : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P9249799443001088586

namespace A151988

/-- `comp[12*n-a(n-1)]` -/
def P9249799443001088586.Spec : Prop :=
  ∀ n, (P9249799443001088586.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P14503738899260599764

`∪[2*n, 2*n-or(3, -(n+3))]`
-/

namespace A151988.P14503738899260599764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor 3 (-(n + 3 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151988.P14503738899260599764

namespace A151988

/-- `∪[2*n, 2*n-or(3, -(n+3))]` -/
def P14503738899260599764.Spec : Prop :=
  ∀ n, (P14503738899260599764.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P11360121110033700406

`∪[2*n, and(n+2, -4)+2*n+1]`
-/

namespace A151988.P11360121110033700406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-4) + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151988.P11360121110033700406

namespace A151988

/-- `∪[2*n, and(n+2, -4)+2*n+1]` -/
def P11360121110033700406.Spec : Prop :=
  ∀ n, (P11360121110033700406.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P13618423516131224525

`comp[A166639(n)]`
-/

namespace A151988.P13618423516131224525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P13618423516131224525

namespace A151988

/-- `comp[A166639(n)]` -/
def P13618423516131224525.Spec : Prop :=
  ∀ n, (P13618423516131224525.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P894236577639996517

`comp[A092242(n+1)]`
-/

namespace A151988.P894236577639996517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P894236577639996517

namespace A151988

/-- `comp[A092242(n+1)]` -/
def P894236577639996517.Spec : Prop :=
  ∀ n, (P894236577639996517.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P16189956514002149174

`comp[n-A134429(n+1)]`
-/

namespace A151988.P16189956514002149174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A134429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P16189956514002149174

namespace A151988

/-- `comp[n-A134429(n+1)]` -/
def P16189956514002149174.Spec : Prop :=
  ∀ n, (P16189956514002149174.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P1392532401651833678

`comp[abs(A228935(n+1)+2)]`
-/

namespace A151988.P1392532401651833678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228935 (n + 1) + 2|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P1392532401651833678

namespace A151988

/-- `comp[abs(A228935(n+1)+2)]` -/
def P1392532401651833678.Spec : Prop :=
  ∀ n, (P1392532401651833678.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P15245619238959205222

`comp[2*A047243(n+1)+1]`
-/

namespace A151988.P15245619238959205222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047243 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P15245619238959205222

namespace A151988

/-- `comp[2*A047243(n+1)+1]` -/
def P15245619238959205222.Spec : Prop :=
  ∀ n, (P15245619238959205222.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P15631034513046906783

`comp[2*A047230(n+1)-1]`
-/

namespace A151988.P15631034513046906783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047230 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P15631034513046906783

namespace A151988

/-- `comp[2*A047230(n+1)-1]` -/
def P15631034513046906783.Spec : Prop :=
  ∀ n, (P15631034513046906783.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P3330449307765078110

`comp[A086970(3*(n+1))-4]`
-/

namespace A151988.P3330449307765078110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 (3 * (n + 1)) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P3330449307765078110

namespace A151988

/-- `comp[A086970(3*(n+1))-4]` -/
def P3330449307765078110.Spec : Prop :=
  ∀ n, (P3330449307765078110.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P3421842585462925281

`comp[A168392(n+1)+2*n]`
-/

namespace A151988.P3421842585462925281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P3421842585462925281

namespace A151988

/-- `comp[A168392(n+1)+2*n]` -/
def P3421842585462925281.Spec : Prop :=
  ∀ n, (P3421842585462925281.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P3065166585025463774

`comp[A166519(A166519(n)+n)]`
-/

namespace A151988.P3065166585025463774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A166519 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151988.P3065166585025463774

namespace A151988

/-- `comp[A166519(A166519(n)+n)]` -/
def P3065166585025463774.Spec : Prop :=
  ∀ n, (P3065166585025463774.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P16327837512750838411

`∪[A003662(n+1), A047229(n+1)]`
-/

namespace A151988.P16327837512750838411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151988.P16327837512750838411

namespace A151988

/-- `∪[A003662(n+1), A047229(n+1)]` -/
def P16327837512750838411.Spec : Prop :=
  ∀ n, (P16327837512750838411.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P14345702466069954689

`∪[A047229(n+1), A060106(n+1)]`
-/

namespace A151988.P14345702466069954689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151988.P14345702466069954689

namespace A151988

/-- `∪[A047229(n+1), A060106(n+1)]` -/
def P14345702466069954689.Spec : Prop :=
  ∀ n, (P14345702466069954689.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P14787149746094283732

`∪[A047229(n+1), A060469(n+1)]`
-/

namespace A151988.P14787149746094283732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151988.P14787149746094283732

namespace A151988

/-- `∪[A047229(n+1), A060469(n+1)]` -/
def P14787149746094283732.Spec : Prop :=
  ∀ n, (P14787149746094283732.a n : ℤ) = A151988 n

end A151988

/-! ## A151988.P12287397792651003158

`∪[A047229(n+1), A074226(n+1)]`
-/

namespace A151988.P12287397792651003158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151988.P12287397792651003158

namespace A151988

/-- `∪[A047229(n+1), A074226(n+1)]` -/
def P12287397792651003158.Spec : Prop :=
  ∀ n, (P12287397792651003158.a n : ℤ) = A151988 n

end A151988

/-!
# A151989: a(n) = A001512(n)/24 = (5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)/24.

The programs for A151989, the canonical program `A151989.P532617368533083636` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151989 has offset 0).

The definition of A151989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)/24` (program `A151989.P6443179935232613861`, by `A151989.P6443179935232613861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A151989.P532617368533083636

`C(5*n+4, 4)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151989

/-- `C(5*n+4, 4)` -/
def P532617368533083636.Spec : Prop :=
  ∀ n, (P532617368533083636.a n : ℤ) = A151989 n

theorem P532617368533083636.correct : P532617368533083636.Spec := by
  intro n
  simp only [A151989]

end A151989

/-! ## A151989.P6443179935232613861

`(5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151989.P6443179935232613861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 1) * (5 * n + 2) * (5 * n + 3) * (5 * n + 4) : ℚ) / 24

end

end A151989.P6443179935232613861

namespace A151989

/-- `(5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)/24` -/
def P6443179935232613861.Spec : Prop :=
  ∀ n, P6443179935232613861.a n = (A151989 n : ℚ)

theorem P6443179935232613861.correct : P6443179935232613861.Spec := by
  intro n
  simp only [A151989, Nat.add_sub_cancel, A151989.P6443179935232613861.a, A151989.P532617368533083636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151989

/-! ## A151989.P3698359750745138721

`A001512(n)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151989.P3698359750745138721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001512 n : ℚ) / 24

end

end A151989.P3698359750745138721

namespace A151989

/-- `A001512(n)/24` -/
def P3698359750745138721.Spec : Prop :=
  ∀ n, P3698359750745138721.a n = (A151989 n : ℚ)

theorem P3698359750745138721.correct : P3698359750745138721.Spec := by
  intro n
  simp only [A151989, Nat.add_sub_cancel, A151989.P3698359750745138721.a, A151989.P532617368533083636.a, A001512, A001512.P9157317935228116840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151989

/-! ## A151989.P5512670091655445317

`A234042(5*n)`
-/

namespace A151989.P5512670091655445317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (5 * n)

end

end A151989.P5512670091655445317

namespace A151989

/-- `A234042(5*n)` -/
def P5512670091655445317.Spec : Prop :=
  ∀ n, P5512670091655445317.a n = A151989 n

end A151989

/-! ## A151989.P11702222230432472150

`record[A234042((n+1)²%5+n)]`
-/

namespace A151989.P11702222230432472150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 ((n + 1) ^ 2 % 5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151989.P11702222230432472150

namespace A151989

/-- `record[A234042((n+1)²%5+n)]` -/
def P11702222230432472150.Spec : Prop :=
  ∀ n, P11702222230432472150.a n = A151989 n

end A151989

/-! ## A151989.P12340278287389896993

`sqrt(A288876(5*n))`
-/

namespace A151989.P12340278287389896993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 (5 * n) : ℝ)

end

end A151989.P12340278287389896993

namespace A151989

/-- `sqrt(A288876(5*n))` -/
def P12340278287389896993.Spec : Prop :=
  ∀ n, P12340278287389896993.a n = (A151989 n : ℝ)

end A151989

/-! ## A151989.P4734562538887186504

`∑[A008487(5*n)]`
-/

namespace A151989.P4734562538887186504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008487 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151989.P4734562538887186504

namespace A151989

/-- `∑[A008487(5*n)]` -/
def P4734562538887186504.Spec : Prop :=
  ∀ n, P4734562538887186504.a n = A151989 n

end A151989

/-! ## A151989.P5648909011854974162

`A000332(5*n+4)`
-/

namespace A151989.P5648909011854974162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (5 * n + 4)

end

end A151989.P5648909011854974162

namespace A151989

/-- `A000332(5*n+4)` -/
def P5648909011854974162.Spec : Prop :=
  ∀ n, P5648909011854974162.a n = A151989 n

end A151989

/-! ## A151989.P9459925899739064512

`A189976(10*n+8)`
-/

namespace A151989.P9459925899739064512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (10 * n + 8)

end

end A151989.P9459925899739064512

namespace A151989

/-- `A189976(10*n+8)` -/
def P9459925899739064512.Spec : Prop :=
  ∀ n, P9459925899739064512.a n = A151989 n

end A151989

/-!
# A151990: If p and q are (odd) twin primes and q > p then p*q^2 + (p + q) + 1 is divisible by 6; a(n) = (p*q^2 + (p + q) + 1)/6.

The programs for A151990, the canonical program `A151990.P1661502081810729062` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151990 has offset 1).

The definition of A151990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151990.P2062920425369630649

`A164689(n+1)/2`
-/

namespace A151990.P2062920425369630649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164689 (n + 1) : ℚ) / 2

end

end A151990.P2062920425369630649

namespace A151990

/-- `A164689(n+1)/2` -/
def P2062920425369630649.Spec : Prop :=
  ∀ n, P2062920425369630649.a n = (A151990 (n + 1) : ℚ)

end A151990

/-! ## A151990.P1661502081810729062

`A110451(A040040(n+1))/3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A151990

/-- `A110451(A040040(n+1))/3` -/
def P1661502081810729062.Spec : Prop :=
  ∀ n, P1661502081810729062.a n = (A151990 (n + 1) : ℚ)

end A151990

/-! ## A151990.P11310605100434427135

`A027444(A014574(n+1))/6`
-/

namespace A151990.P11310605100434427135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027444 (A014574 (n + 1)).toNat : ℚ) / 6

end

end A151990.P11310605100434427135

namespace A151990

/-- `A027444(A014574(n+1))/6` -/
def P11310605100434427135.Spec : Prop :=
  ∀ n, P11310605100434427135.a n = (A151990 (n + 1) : ℚ)

end A151990

/-! ## A151990.P17832947831677763013

`A006325(A006512(n+1))/A006512(n+1)`
-/

namespace A151990.P17832947831677763013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006325 (A006512 (n + 1)).toNat : ℚ) / (A006512 (n + 1) : ℚ)

end

end A151990.P17832947831677763013

namespace A151990

/-- `A006325(A006512(n+1))/A006512(n+1)` -/
def P17832947831677763013.Spec : Prop :=
  ∀ n, P17832947831677763013.a n = (A151990 (n + 1) : ℚ)

end A151990

/-! ## A151990.P4873010493920426901

`A006325(A067829(n+2))/A067829(n+2)`
-/

namespace A151990.P4873010493920426901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006325 (A067829 (n + 2)).toNat : ℚ) / (A067829 (n + 2) : ℚ)

end

end A151990.P4873010493920426901

namespace A151990

/-- `A006325(A067829(n+2))/A067829(n+2)` -/
def P4873010493920426901.Spec : Prop :=
  ∀ n, P4873010493920426901.a n = (A151990 (n + 1) : ℚ)

end A151990

/-! ## A151990.P3666497222189319049

`A006325(A077800(2*(n+1)))/A077800(2*(n+1))`
-/

namespace A151990.P3666497222189319049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006325 (A077800 (2 * (n + 1))).toNat : ℚ) / (A077800 (2 * (n + 1)) : ℚ)

end

end A151990.P3666497222189319049

namespace A151990

/-- `A006325(A077800(2*(n+1)))/A077800(2*(n+1))` -/
def P3666497222189319049.Spec : Prop :=
  ∀ n, P3666497222189319049.a n = (A151990 (n + 1) : ℚ)

end A151990

/-!
# A151991: Numbers k with the property that (k-x)*(k-y)*(k-z) = x*y*z has no integer solutions 0 < x,y,z < k.

The programs for A151991, there is no canonical definition to state claims against.
-/

/-! ## A151991.P998835071995366899

`eq[0, A331423(n+1)]+1`
-/

namespace A151991.P998835071995366899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151991.P998835071995366899

/-! ## A151991.P7468688037168341511

`lt[A331423(abs(1-n)+1), 1]`
-/

namespace A151991.P7468688037168341511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A151991.P7468688037168341511

/-! ## A151991.P1318867176129582991

`2*eq[0, A331428(n+1)]+1`
-/

namespace A151991.P1318867176129582991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151991.P1318867176129582991

/-! ## A151991.P13796206020807299910

`eq[3*n², A091908(n+1)]+1`
-/

namespace A151991.P13796206020807299910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151991.P13796206020807299910

/-! ## A151991.P1868384160942918519

`record[gcd(n+1, 1-A092098(n+1))]`
-/

namespace A151991.P1868384160942918519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A092098 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151991.P1868384160942918519

/-! ## A151991.P2762889490814334629

`record[2*n+1-A331423(2*n+1)]`
-/

namespace A151991.P2762889490814334629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A331423 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151991.P2762889490814334629

/-! ## A151991.P3434924723509631006

`A004442(eq[0, A331423(n+1)])`
-/

namespace A151991.P3434924723509631006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151991.P3434924723509631006

/-! ## A151991.P15540945040586498466

`A005408(eq[0, A331428(n+1)])`
-/

namespace A151991.P15540945040586498466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151991.P15540945040586498466

/-! ## A151991.P5714930088070503981

`record[gcd(n+1, A331423(A000027(n+1)))]`
-/

namespace A151991.P5714930088070503981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A331423 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151991.P5714930088070503981

/-! ## A151991.P12980559796196190973

`eq[A035363(n), A331428(A008619(n))]`
-/

namespace A151991.P12980559796196190973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151991.P12980559796196190973

/-!
# A151993: Number of Honaker primes (A033548) less than 10^n.

The programs for A151993, there is no canonical definition to state claims against.
-/

/-! ## A151993.P17515827143919431270

`∑[A141330(A126473(n))]`
-/

namespace A151993.P17515827143919431270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141330 (A126473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151993.P17515827143919431270

/-!
# A151994: For k=A079523(n),n>=2, let {S_k} be the minimal recursive sequence beginning with k similar to N with respect to property of integer to be or not to be in A079523. Then a(n) is the point of confluence of {S_k} with {S_5}.

The programs for A151994, there is no canonical definition to state claims against.
-/

/-! ## A151994.P9907487265437511284

`or(lcm(8, n), a(n-1))` with `a(0)=5`
-/

namespace A151994.P9907487265437511284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor (Nat.lcm 8 n) (a (n - 1))

end

end A151994.P9907487265437511284

/-! ## A151994.P8753561938721424667

`p?[or(∑{p}[n, #]², a(n-1))]` with `a(0)=1`
-/

namespace A151994.P8753561938721424667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor ((∑ p ∈ Nat.primeFactors (f2 n), p) ^ 2) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A151994.P8753561938721424667

/-! ## A151994.P9966886541261992671

`p?[or(4*n+1, ∑{d}[4*n+3, #])]`
-/

namespace A151994.P9966886541261992671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * n + 1) (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A151994.P9966886541261992671

/-! ## A151994.P5859207847327448180

`A242349(n+3)-3`
-/

namespace A151994.P5859207847327448180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242349 (n + 3) - 3

end

end A151994.P5859207847327448180

/-!
# A151997: a(n) = (n 1's followed by a 3)^2.

The programs for A151997, the canonical program `A151997.P12509459391182809342` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151997 has offset 0).

The definition of A151997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151997.P12509459391182809342

`(100^(n+1)+340*10^n+289)/81`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151997

/-- `(100^(n+1)+340*10^n+289)/81` -/
def P12509459391182809342.Spec : Prop :=
  ∀ n, P12509459391182809342.a n = (A151997 n : ℚ)

end A151997

/-! ## A151997.P16909820781864760444

`floor(∑[10*a(n-1)]²)` with `a(0)=3, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A151997.P16909820781864760444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A151997.P16909820781864760444

namespace A151997

/-- `floor(∑[10*a(n-1)]²)` -/
def P16909820781864760444.Spec : Prop :=
  ∀ n, (P16909820781864760444.a n : ℤ) = A151997 n

end A151997

/-! ## A151997.P14994605141540249885

`A098406(n+1)²`
-/

namespace A151997.P14994605141540249885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (n + 1) ^ 2

end

end A151997.P14994605141540249885

namespace A151997

/-- `A098406(n+1)²` -/
def P14994605141540249885.Spec : Prop :=
  ∀ n, P14994605141540249885.a n = A151997 n

end A151997

/-! ## A151997.P5960593754449870038

`A034050(∑[n]+1)²`
-/

namespace A151997.P5960593754449870038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A151997.P5960593754449870038

namespace A151997

/-- `A034050(∑[n]+1)²` -/
def P5960593754449870038.Spec : Prop :=
  ∀ n, P5960593754449870038.a n = A151997 n

end A151997

/-! ## A151997.P5696151659974741596

`record[(A287468(n)+2)²]`
-/

namespace A151997.P5696151659974741596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A287468 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151997.P5696151659974741596

namespace A151997

/-- `record[(A287468(n)+2)²]` -/
def P5696151659974741596.Spec : Prop :=
  ∀ n, P5696151659974741596.a n = A151997 n

end A151997

/-! ## A151997.P7725780988773147403

`record[(A290416(n)+2)²]`
-/

namespace A151997.P7725780988773147403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290416 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151997.P7725780988773147403

namespace A151997

/-- `record[(A290416(n)+2)²]` -/
def P7725780988773147403.Spec : Prop :=
  ∀ n, P7725780988773147403.a n = A151997 n

end A151997

/-! ## A151997.P9947476026811573612

`record[(A290420(n)+2)²]`
-/

namespace A151997.P9947476026811573612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290420 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151997.P9947476026811573612

namespace A151997

/-- `record[(A290420(n)+2)²]` -/
def P9947476026811573612.Spec : Prop :=
  ∀ n, P9947476026811573612.a n = A151997 n

end A151997

/-! ## A151997.P15715696155091695785

`record[(A290671(n)+2)²]`
-/

namespace A151997.P15715696155091695785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290671 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151997.P15715696155091695785

namespace A151997

/-- `record[(A290671(n)+2)²]` -/
def P15715696155091695785.Spec : Prop :=
  ∀ n, P15715696155091695785.a n = A151997 n

end A151997

/-! ## A151997.P14822289122743126137

`record[(A290676(n)+2)²]`
-/

namespace A151997.P14822289122743126137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290676 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151997.P14822289122743126137

namespace A151997

/-- `record[(A290676(n)+2)²]` -/
def P14822289122743126137.Spec : Prop :=
  ∀ n, P14822289122743126137.a n = A151997 n

end A151997

/-! ## A151997.P17864291703358460106

`(A071762(∑[n+1])+2)²`
-/

namespace A151997.P17864291703358460106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071762 (∑ j ∈ Finset.range (n + 1), f1 j) + 2) ^ 2

end

end A151997.P17864291703358460106

namespace A151997

/-- `(A071762(∑[n+1])+2)²` -/
def P17864291703358460106.Spec : Prop :=
  ∀ n, P17864291703358460106.a n = A151997 n

end A151997

/-!
# A151998: Directed genus of the binary de Bruijn graph D_n.

The programs for A151998, the canonical program `A151998.P17606877049655075883` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151998 has offset 0).

The definition of A151998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151998.P17606877049655075883

`(A000051(n)-A008965(n+2))/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151998

/-- `(A000051(n)-A008965(n+2))/2` -/
def P17606877049655075883.Spec : Prop :=
  ∀ n, P17606877049655075883.a n = (A151998 n : ℚ)

end A151998

/-! ## A151998.P2014841418627190619

`A233864(A148398(n))`
-/

namespace A151998.P2014841418627190619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233864 (A148398 n).toNat

end

end A151998.P2014841418627190619

namespace A151998

/-- `A233864(A148398(n))` -/
def P2014841418627190619.Spec : Prop :=
  ∀ n, P2014841418627190619.a n = A151998 n

end A151998

/-! ## A151998.P14515884879613836491

`A348960(A054166(n+1))`
-/

namespace A151998.P14515884879613836491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A054166 (n + 1)).toNat

end

end A151998.P14515884879613836491

namespace A151998

/-- `A348960(A054166(n+1))` -/
def P14515884879613836491.Spec : Prop :=
  ∀ n, P14515884879613836491.a n = A151998 n

end A151998

/-! ## A151998.P6048501219485097681

`A102569(A202842(n))-1`
-/

namespace A151998.P6048501219485097681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A202842 n).toNat - 1

end

end A151998.P6048501219485097681

namespace A151998

/-- `A102569(A202842(n))-1` -/
def P6048501219485097681.Spec : Prop :=
  ∀ n, P6048501219485097681.a n = A151998 n

end A151998

/-! ## A151998.P643559965214512467

`A172152(A324408(n+2))`
-/

namespace A151998.P643559965214512467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A324408 (n + 2)).toNat

end

end A151998.P643559965214512467

namespace A151998

/-- `A172152(A324408(n+2))` -/
def P643559965214512467.Spec : Prop :=
  ∀ n, P643559965214512467.a n = A151998 n

end A151998

/-!
# A151999: Numbers k such that every prime that divides phi(k) also divides k.

The programs for A151999, there is no canonical definition to state claims against.
-/

/-! ## A151999.P16801314533072885518

`sqrt(∩[A055744(n+1), n²])`
-/

namespace A151999.P16801314533072885518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A151999.P16801314533072885518

/-! ## A151999.P7794497526525760565

`eq[0, (n+1)%A080400(n+1)]+1`
-/

namespace A151999.P7794497526525760565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A080400 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151999.P7794497526525760565

/-! ## A151999.P2021634697918441891

`eq[1, A113766(n+1)]+1`
-/

namespace A151999.P2021634697918441891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151999.P2021634697918441891

/-! ## A151999.P6750929554730600216

`A015906(eq[1, A113766(n+1)])`
-/

namespace A151999.P6750929554730600216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151999.P6750929554730600216

/-! ## A151999.P11264220909588259047

`record[A000027(n+1)/A113766(n+1)]`
-/

namespace A151999.P11264220909588259047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A113766 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151999.P11264220909588259047

/-! ## A151999.P7748450963391278622

`record[A327529(n+1)/A113766(n+1)]`
-/

namespace A151999.P7748450963391278622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327529 (n + 1) : ℚ) / (A113766 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151999.P7748450963391278622

/-! ## A151999.P1888603968813199336

`record[A008619(2*n)/A113766(n+1)]`
-/

namespace A151999.P1888603968813199336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A113766 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151999.P1888603968813199336

/-! ## A151999.P6700416553490903530

`lt[A000040(n+1)%A113766(n+1), 1]+1`
-/

namespace A151999.P6700416553490903530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A113766 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A151999.P6700416553490903530

/-! ## A151999.P16673286625117433368

`record[A008620(n)/A113766(A008620(n))]`
-/

namespace A151999.P16673286625117433368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A113766 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151999.P16673286625117433368

/-! ## A151999.P9935973183637680681

`record[A026233(n+1)/A113766(A026233(n+1))]`
-/

namespace A151999.P9935973183637680681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026233 (n + 1) : ℚ) / (A113766 (A026233 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151999.P9935973183637680681

/-! ## A151999.P13441849791409632086

`∪[A068997(n+1), A376639(n+1)]`
-/

namespace A151999.P13441849791409632086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151999.P13441849791409632086

/-! ## A151999.P15807763682767035848

`∪[A090778(n+1), A376639(n+1)]`
-/

namespace A151999.P15807763682767035848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151999.P15807763682767035848

/-! ## A151999.P17145018139916319747

`∪[A124240(n+1), A376639(n+1)]`
-/

namespace A151999.P17145018139916319747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151999.P17145018139916319747

/-! ## A151999.P16130656623921967925

`∪[A267817(n+1), A376639(n+1)]`
-/

namespace A151999.P16130656623921967925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151999.P16130656623921967925

