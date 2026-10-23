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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
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
# A120100: Integers n for which the period of the decimal expansion of 1/n is 6.

The programs for A120100, there is no canonical definition to state claims against.
-/

/-! ## A120100.P9898125137416594463

`eq[6, A007732(n+1)]+1`
-/

namespace A120100.P9898125137416594463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120100.P9898125137416594463

/-! ## A120100.P12343839798541898499

`eq[6, A051626(n+1)]+1`
-/

namespace A120100.P12343839798541898499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120100.P12343839798541898499

/-! ## A120100.P18234774318087284789

`eq[6, A007732(A004277(n))]`
-/

namespace A120100.P18234774318087284789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P18234774318087284789

/-! ## A120100.P10675725614263373821

`eq[6, A007732(A008574(n))]`
-/

namespace A120100.P10675725614263373821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P10675725614263373821

/-! ## A120100.P3232710792887206329

`eq[6, A007732(A008706(n))]`
-/

namespace A120100.P3232710792887206329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P3232710792887206329

/-! ## A120100.P3530468200751147125

`eq[6, A007732(A022144(n))]`
-/

namespace A120100.P3530468200751147125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P3530468200751147125

/-! ## A120100.P971958462536498538

`eq[6, A007732(A028310(n))]`
-/

namespace A120100.P971958462536498538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P971958462536498538

/-! ## A120100.P13906140533624770684

`eq[6, A051626(A234275(n))]`
-/

namespace A120100.P13906140533624770684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P13906140533624770684

/-! ## A120100.P12629555394962021973

`eq[6, A007732(A233583(n+1))]`
-/

namespace A120100.P12629555394962021973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120100.P12629555394962021973

/-!
# A120101: Triangle T(n,k) = lcm(1,...,2*n+2)/((k+1)*binomial(2*k+2,k+1)).

The programs for A120101, there is no canonical definition to state claims against.
-/

/-! ## A120101.P17264266359551401173

`A068553(A002260(n+1))*A120105(n)`
-/

namespace A120101.P17264266359551401173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (A002260 (n + 1)).toNat * A120105 n

end

end A120101.P17264266359551401173

/-! ## A120101.P9862204273272555188

`A068553(A002260(n+1))*A120108(A185869(n+1))`
-/

namespace A120101.P9862204273272555188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (A002260 (n + 1)).toNat * A120108 (A185869 (n + 1)).toNat

end

end A120101.P9862204273272555188

/-! ## A120101.P5499863222310060439

`A068553(A002262(n)+1)*A120108(A185869(n+1))`
-/

namespace A120101.P5499863222310060439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (A002262 n + 1).toNat * A120108 (A185869 (n + 1)).toNat

end

end A120101.P5499863222310060439

/-! ## A120101.P14026558468693212117

`A068553(A002260(n+1))*A120108(A093995(n+1)+2*n+1)`
-/

namespace A120101.P14026558468693212117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (A002260 (n + 1)).toNat * A120108 (A093995 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A120101.P14026558468693212117

/-! ## A120101.P10662374295163794175

`A068553(A002260(n+1))*A120108(A002024(n+1)²+2*n+1)`
-/

namespace A120101.P10662374295163794175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (A002260 (n + 1)).toNat * A120108 (A002024 (n + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A120101.P10662374295163794175

/-!
# A120105: Number triangle T(n,k) = lcm(1,..,2*n+2)/lcm(1,..,2*k+2).

The programs for A120105, there is no canonical definition to state claims against.
-/

/-! ## A120105.P8752464301328007510

`A120101(n)/A068553(A002260(n+1))`
-/

namespace A120105.P8752464301328007510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120101 n : ℚ) / (A068553 (A002260 (n + 1)).toNat : ℚ)

end

end A120105.P8752464301328007510

/-! ## A120105.P5634116149030140392

`A120108(A185869(n+1))`
-/

namespace A120105.P5634116149030140392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A185869 (n + 1)).toNat

end

end A120105.P5634116149030140392

/-! ## A120105.P1898160390426622224

`A120108(A007607(Δ[n²]))`
-/

namespace A120105.P1898160390426622224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A007607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A120105.P1898160390426622224

/-! ## A120105.P16442439253420468541

`A120108(A093995(n+1)+2*n+1)`
-/

namespace A120105.P16442439253420468541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A093995 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A120105.P16442439253420468541

/-! ## A120105.P13534352589302421358

`A120108(A002024(n+1)²+2*n+1)`
-/

namespace A120105.P13534352589302421358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A002024 (n + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A120105.P13534352589302421358

/-! ## A120105.P609481567982013701

`A120108(A061579(n)+A016789(n))`
-/

namespace A120105.P609481567982013701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A061579 n + A016789 n).toNat

end

end A120105.P609481567982013701

/-! ## A120105.P15116862773945417804

`A120108(A038722(n+1)+A016777(n))`
-/

namespace A120105.P15116862773945417804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A038722 (n + 1) + A016777 n).toNat

end

end A120105.P15116862773945417804

/-!
# A120106: a(n) = Sum_{k=0..n} lcm(1..2n+2)/lcm(1..2k+2).

The programs for A120106, the canonical program `A120106.P17285156561798854868` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120106 has offset 0).

The definition of A120106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120106.P17285156561798854868

`a(n-1)*A120114(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120106

/-- `a(n-1)*A120114(n-1)+1` -/
def P17285156561798854868.Spec : Prop :=
  ∀ n, P17285156561798854868.a n = A120106 n

theorem P17285156561798854868.correct : P17285156561798854868.Spec := by
  intro n
  simp only [A120106]

end A120106

/-!
# A120108: Number triangle T(n,k) = lcm(1,..,n+1)/lcm(1,..,k+1).

The programs for A120108, the canonical program `A120108.P13431050358684570806` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120108 has offset 0).

The definition of A120108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120108.P11819969395882008911

`A120435(n+1)/A002944(A002260(n+1))`
-/

namespace A120108.P11819969395882008911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120435 (n + 1) : ℚ) / (A002944 (A002260 (n + 1)).toNat : ℚ)

end

end A120108.P11819969395882008911

namespace A120108

/-- `A120435(n+1)/A002944(A002260(n+1))` -/
def P11819969395882008911.Spec : Prop :=
  ∀ n, P11819969395882008911.a n = (A120108 n : ℚ)

end A120108

/-! ## A120108.P13431050358684570806

`A003418(A002024(n+1))/a(A112367(n))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120108

/-- `A003418(A002024(n+1))/a(A112367(n))` -/
def P13431050358684570806.Spec : Prop :=
  ∀ n, P13431050358684570806.a n = (A120108 n : ℚ)

end A120108

/-! ## A120108.P244294434301720703

`A003418(A002024(n+1))/A003418(A002260(n+1))`
-/

namespace A120108.P244294434301720703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A002024 (n + 1)).toNat : ℚ) / (A003418 (A002260 (n + 1)).toNat : ℚ)

end

end A120108.P244294434301720703

namespace A120108

/-- `A003418(A002024(n+1))/A003418(A002260(n+1))` -/
def P244294434301720703.Spec : Prop :=
  ∀ n, P244294434301720703.a n = (A120108 n : ℚ)

end A120108

/-! ## A120108.P4956265666747559431

`∏{p}[A096334(n), A014963(A249728(#))]`
-/

namespace A120108.P4956265666747559431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (A249728 p).toNat

end

end A120108.P4956265666747559431

namespace A120108

/-- `∏{p}[A096334(n), A014963(A249728(#))]` -/
def P4956265666747559431.Spec : Prop :=
  ∀ n, P4956265666747559431.a n = A120108 n

end A120108

/-! ## A120108.P433766212955124877

`A019554(A173333(n+1)^A056926(n))`
-/

namespace A120108.P433766212955124877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A173333 (n + 1) : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A120108.P433766212955124877

namespace A120108

/-- `A019554(A173333(n+1)^A056926(n))` -/
def P433766212955124877.Spec : Prop :=
  ∀ n, P433766212955124877.a n = A120108 n

end A120108

/-!
# A120109: Row sums of number triangle A120108.

The programs for A120109, the canonical program `A120109.P2478641561327394692` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120109 has offset 0).

The definition of A120109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120109.P2478641561327394692

`ceil((n+1)/∏{p}[n+1, (n+1)/#])*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120109

/-- `ceil((n+1)/∏{p}[n+1, (n+1)/#])*a(n-1)+1` -/
def P2478641561327394692.Spec : Prop :=
  ∀ n, P2478641561327394692.a n = A120109 n

theorem P2478641561327394692.correct : P2478641561327394692.Spec := by
  intro n
  simp only [A120109]

end A120109

/-! ## A120109.P5216581241911869202

`a(n-1)*A014963(n+1)+1` with `a(0)=1`
-/

namespace A120109.P5216581241911869202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (n + 1) + 1

end

end A120109.P5216581241911869202

namespace A120109

/-- `a(n-1)*A014963(n+1)+1` -/
def P5216581241911869202.Spec : Prop :=
  ∀ n, P5216581241911869202.a n = A120109 n

end A120109

/-! ## A120109.P9092316607619511411

`a(n-1)*A020500(n+1)+1` with `a(0)=1`
-/

namespace A120109.P9092316607619511411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020500 (n + 1) + 1

end

end A120109.P9092316607619511411

namespace A120109

/-- `a(n-1)*A020500(n+1)+1` -/
def P9092316607619511411.Spec : Prop :=
  ∀ n, P9092316607619511411.a n = A120109 n

end A120109

/-! ## A120109.P17173582249051991561

`∑[1/A003418(n+1)]*A003418(n+1)`
-/

namespace A120109.P17173582249051991561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A003418 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A003418 (n + 1) : ℚ)

end

end A120109.P17173582249051991561

namespace A120109

/-- `∑[1/A003418(n+1)]*A003418(n+1)` -/
def P17173582249051991561.Spec : Prop :=
  ∀ n, P17173582249051991561.a n = (A120109 n : ℚ)

end A120109

/-! ## A120109.P15668431516273385141

`∑[1/A051426(n+1)]*A051426(n+1)`
-/

namespace A120109.P15668431516273385141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A051426 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A051426 (n + 1) : ℚ)

end

end A120109.P15668431516273385141

namespace A120109

/-- `∑[1/A051426(n+1)]*A051426(n+1)` -/
def P15668431516273385141.Spec : Prop :=
  ∀ n, P15668431516273385141.a n = (A120109 n : ℚ)

end A120109

/-! ## A120109.P17629073128116618821

`a(n-1)*A014973(A007947(n+1))+1` with `a(0)=1`
-/

namespace A120109.P17629073128116618821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014973 (A007947 (n + 1)).toNat + 1

end

end A120109.P17629073128116618821

namespace A120109

/-- `a(n-1)*A014973(A007947(n+1))+1` -/
def P17629073128116618821.Spec : Prop :=
  ∀ n, P17629073128116618821.a n = A120109 n

end A120109

/-! ## A120109.P9314983479171771516

`a(n-1)*A014973(A015053(n+1))+1` with `a(0)=1`
-/

namespace A120109.P9314983479171771516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014973 (A015053 (n + 1)).toNat + 1

end

end A120109.P9314983479171771516

namespace A120109

/-- `a(n-1)*A014973(A015053(n+1))+1` -/
def P9314983479171771516.Spec : Prop :=
  ∀ n, P9314983479171771516.a n = A120109 n

end A120109

/-! ## A120109.P17373654077030656964

`A003418(n+1)/A064858(n+1)*A064857(n+1)`
-/

namespace A120109.P17373654077030656964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A064858 (n + 1) : ℚ) * (A064857 (n + 1) : ℚ)

end

end A120109.P17373654077030656964

namespace A120109

/-- `A003418(n+1)/A064858(n+1)*A064857(n+1)` -/
def P17373654077030656964.Spec : Prop :=
  ∀ n, P17373654077030656964.a n = (A120109 n : ℚ)

end A120109

/-!
# A120111: Bi-diagonal inverse matrix of A120108.

The programs for A120111, the canonical program `A120111.P13519720952501436584` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120111 has offset 0).

The definition of A120111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120111.P13519720952501436584

`char[∑[n-1]]-A140579(n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A120111

/-- `char[∑[n-1]]-A140579(n+2)` -/
def P13519720952501436584.Spec : Prop :=
  ∀ n, P13519720952501436584.a n = A120111 n

theorem P13519720952501436584.correct : P13519720952501436584.Spec := by
  intro n
  simp only [A120111]

end A120111

/-! ## A120111.P11126239313970043861

`A093430(n+1)*A167374(n)`
-/

namespace A120111.P11126239313970043861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (n + 1) * A167374 n

end

end A120111.P11126239313970043861

namespace A120111

/-- `A093430(n+1)*A167374(n)` -/
def P11126239313970043861.Spec : Prop :=
  ∀ n, P11126239313970043861.a n = A120111 n

end A120111

/-! ## A120111.P5621045475167217533

`A120108(n)*A167374(n)`
-/

namespace A120111.P5621045475167217533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 n * A167374 n

end

end A120111.P5621045475167217533

namespace A120111

/-- `A120108(n)*A167374(n)` -/
def P5621045475167217533.Spec : Prop :=
  ∀ n, P5621045475167217533.a n = A120111 n

end A120111

/-! ## A120111.P1000487978444103868

`A120108(n)/A120105(n)*A120113(n)`
-/

namespace A120111.P1000487978444103868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 n : ℚ) / (A120105 n : ℚ) * (A120113 n : ℚ)

end

end A120111.P1000487978444103868

namespace A120111

/-- `A120108(n)/A120105(n)*A120113(n)` -/
def P1000487978444103868.Spec : Prop :=
  ∀ n, P1000487978444103868.a n = (A120111 n : ℚ)

end A120111

/-! ## A120111.P17947761249851405077

`A014963(A036838(n))*A167374(n)`
-/

namespace A120111.P17947761249851405077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036838 n).toNat * A167374 n

end

end A120111.P17947761249851405077

namespace A120111

/-- `A014963(A036838(n))*A167374(n)` -/
def P17947761249851405077.Spec : Prop :=
  ∀ n, P17947761249851405077.a n = A120111 n

end A120111

/-! ## A120111.P605365923420340192

`A008683(A130321(n))*A120108(n)`
-/

namespace A120111.P605365923420340192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130321 n).toNat * A120108 n

end

end A120111.P605365923420340192

namespace A120111

/-- `A008683(A130321(n))*A120108(n)` -/
def P605365923420340192.Spec : Prop :=
  ∀ n, P605365923420340192.a n = A120111 n

end A120111

/-! ## A120111.P3657250565161664449

`A014963(A029653(n))*A167374(n)`
-/

namespace A120111.P3657250565161664449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A029653 n).toNat * A167374 n

end

end A120111.P3657250565161664449

namespace A120111

/-- `A014963(A029653(n))*A167374(n)` -/
def P3657250565161664449.Spec : Prop :=
  ∀ n, P3657250565161664449.a n = A120111 n

end A120111

/-! ## A120111.P6332038509697441607

`A014963(A055248(n))*A167374(n)`
-/

namespace A120111.P6332038509697441607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A055248 n).toNat * A167374 n

end

end A120111.P6332038509697441607

namespace A120111

/-- `A014963(A055248(n))*A167374(n)` -/
def P6332038509697441607.Spec : Prop :=
  ∀ n, P6332038509697441607.a n = A120111 n

end A120111

/-! ## A120111.P17521755913009577673

`A008683(A140303(n))*A120108(n)`
-/

namespace A120111.P17521755913009577673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A140303 n).toNat * A120108 n

end

end A120111.P17521755913009577673

namespace A120111

/-- `A008683(A140303(n))*A120108(n)` -/
def P17521755913009577673.Spec : Prop :=
  ∀ n, P17521755913009577673.a n = A120111 n

end A120111

/-! ## A120111.P6211432445085775085

`A014963(A038622(n))*A167374(n)`
-/

namespace A120111.P6211432445085775085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038622 n).toNat * A167374 n

end

end A120111.P6211432445085775085

namespace A120111

/-- `A014963(A038622(n))*A167374(n)` -/
def P6211432445085775085.Spec : Prop :=
  ∀ n, P6211432445085775085.a n = A120111 n

end A120111

/-!
# A120112: Row sums of number triangle A120111.

The programs for A120112, the canonical program `A120112.P14661727368300187479` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120112 has offset 0).

The definition of A120112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120112.P14661727368300187479

`1-A020500(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120112

/-- `1-A020500(n+1)` -/
def P14661727368300187479.Spec : Prop :=
  ∀ n, P14661727368300187479.a n = A120112 n

theorem P14661727368300187479.correct : P14661727368300187479.Spec := by
  intro n
  simp only [A120112]

end A120112

/-! ## A120112.P12915368232026684399

`ceil(acot(n)-A014963(n+1))`
-/

namespace A120112.P12915368232026684399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) - (A014963 (n + 1) : ℝ)⌉

end

end A120112.P12915368232026684399

namespace A120112

/-- `ceil(acot(n)-A014963(n+1))` -/
def P12915368232026684399.Spec : Prop :=
  ∀ n, P12915368232026684399.a n = A120112 n

end A120112

/-! ## A120112.P12093594153787698188

`1-Δ[A014963(n)+a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A120112.P12093594153787698188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A014963 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A120112.P12093594153787698188

namespace A120112

/-- `1-Δ[A014963(n)+a(n-1)]` -/
def P12093594153787698188.Spec : Prop :=
  ∀ n, P12093594153787698188.a n = A120112 n

end A120112

/-! ## A120112.P5345490139107864663

`1-∏{d}[n+1, (n/#)^A008683(#)]`
-/

namespace A120112.P5345490139107864663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∏ d ∈ Nat.divisors (f1 n), ((n : ℚ) / (d : ℚ)) ^ (A008683 d : ℤ)

end

end A120112.P5345490139107864663

namespace A120112

/-- `1-∏{d}[n+1, (n/#)^A008683(#)]` -/
def P5345490139107864663.Spec : Prop :=
  ∀ n, P5345490139107864663.a n = (A120112 n : ℚ)

end A120112

/-! ## A120112.P5511896356423405770

`A024000(A020500(n+1))`
-/

namespace A120112.P5511896356423405770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A020500 (n + 1)).toNat

end

end A120112.P5511896356423405770

namespace A120112

/-- `A024000(A020500(n+1))` -/
def P5511896356423405770.Spec : Prop :=
  ∀ n, P5511896356423405770.a n = A120112 n

end A120112

/-! ## A120112.P5859196113332523687

`A054977(n)-A014963(n+1)`
-/

namespace A120112.P5859196113332523687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A014963 (n + 1)

end

end A120112.P5859196113332523687

namespace A120112

/-- `A054977(n)-A014963(n+1)` -/
def P5859196113332523687.Spec : Prop :=
  ∀ n, P5859196113332523687.a n = A120112 n

end A120112

/-! ## A120112.P2710151044569100742

`A000007(n)+1-A014963(n+1)`
-/

namespace A120112.P2710151044569100742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A014963 (n + 1))

end

end A120112.P2710151044569100742

namespace A120112

/-- `A000007(n)+1-A014963(n+1)` -/
def P2710151044569100742.Spec : Prop :=
  ∀ n, P2710151044569100742.a n = A120112 n

end A120112

/-! ## A120112.P7963290975121443155

`A010055(n+1)-A120007(n+1)`
-/

namespace A120112.P7963290975121443155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) - A120007 (n + 1)

end

end A120112.P7963290975121443155

namespace A120112

/-- `A010055(n+1)-A120007(n+1)` -/
def P7963290975121443155.Spec : Prop :=
  ∀ n, P7963290975121443155.a n = A120112 n

end A120112

/-! ## A120112.P3032505364959540347

`A010055(n+1)*A023900(n+1)`
-/

namespace A120112.P3032505364959540347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A023900 (n + 1)

end

end A120112.P3032505364959540347

namespace A120112

/-- `A010055(n+1)*A023900(n+1)` -/
def P3032505364959540347.Spec : Prop :=
  ∀ n, P3032505364959540347.a n = A120112 n

end A120112

/-! ## A120112.P3608060639621262320

`2-(A057427(n)+A014963(n+1))`
-/

namespace A120112.P3608060639621262320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A057427 n + A014963 (n + 1))

end

end A120112.P3608060639621262320

namespace A120112

/-- `2-(A057427(n)+A014963(n+1))` -/
def P3608060639621262320.Spec : Prop :=
  ∀ n, P3608060639621262320.a n = A120112 n

end A120112

/-! ## A120112.P6407292666902938559

`A014963(n+1)*A057428(n)+1`
-/

namespace A120112.P6407292666902938559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A057428 n + 1

end

end A120112.P6407292666902938559

namespace A120112

/-- `A014963(n+1)*A057428(n)+1` -/
def P6407292666902938559.Spec : Prop :=
  ∀ n, P6407292666902938559.a n = A120112 n

end A120112

/-! ## A120112.P13118968122810827725

`A010055(n+1)*A174941(n+1)`
-/

namespace A120112.P13118968122810827725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A174941 (n + 1)

end

end A120112.P13118968122810827725

namespace A120112

/-- `A010055(n+1)*A174941(n+1)` -/
def P13118968122810827725.Spec : Prop :=
  ∀ n, P13118968122810827725.a n = A120112 n

end A120112

/-! ## A120112.P17350693763541680225

`A010055(n+1)*A295127(n+1)`
-/

namespace A120112.P17350693763541680225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A295127 (n + 1)

end

end A120112.P17350693763541680225

namespace A120112

/-- `A010055(n+1)*A295127(n+1)` -/
def P17350693763541680225.Spec : Prop :=
  ∀ n, P17350693763541680225.a n = A120112 n

end A120112

/-! ## A120112.P14581234938802998116

`1-gcd(A131738(n), A182936(n+1))`
-/

namespace A120112.P14581234938802998116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.gcd (A131738 n) (A182936 (n + 1)) : ℤ)

end

end A120112.P14581234938802998116

namespace A120112

/-- `1-gcd(A131738(n), A182936(n+1))` -/
def P14581234938802998116.Spec : Prop :=
  ∀ n, P14581234938802998116.a n = A120112 n

end A120112

/-! ## A120112.P11148323164885213884

`A297382(2*n+1)-A014963(n+1)`
-/

namespace A120112.P11148323164885213884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (2 * n + 1) - A014963 (n + 1)

end

end A120112.P11148323164885213884

namespace A120112

/-- `A297382(2*n+1)-A014963(n+1)` -/
def P11148323164885213884.Spec : Prop :=
  ∀ n, P11148323164885213884.a n = A120112 n

end A120112

/-! ## A120112.P111658964795312591

`A369010(2*n+1)-A014963(n+1)`
-/

namespace A120112.P111658964795312591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 (2 * n + 1) - A014963 (n + 1)

end

end A120112.P111658964795312591

namespace A120112

/-- `A369010(2*n+1)-A014963(n+1)` -/
def P111658964795312591.Spec : Prop :=
  ∀ n, P111658964795312591.a n = A120112 n

end A120112

/-! ## A120112.P992653669155209346

`(1-A014963(n+1))^A001221(n+1)`
-/

namespace A120112.P992653669155209346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A014963 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A120112.P992653669155209346

namespace A120112

/-- `(1-A014963(n+1))^A001221(n+1)` -/
def P992653669155209346.Spec : Prop :=
  ∀ n, P992653669155209346.a n = (A120112 n : ℚ)

end A120112

/-!
# A120113: Bi-diagonal inverse of number triangle A120101.

The programs for A120113, there is no canonical definition to state claims against.
-/

/-! ## A120113.P3545117597275412024

`A120105(n)*A167374(n)`
-/

namespace A120113.P3545117597275412024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120105 n * A167374 n

end

end A120113.P3545117597275412024

/-! ## A120113.P7957591639780408760

`Δ[A023532(n)]*A120105(n)`
-/

namespace A120113.P7957591639780408760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A120105 n

end

end A120113.P7957591639780408760

/-! ## A120113.P2453021744118821190

`A120105(n)/A120108(n)*A120111(n)`
-/

namespace A120113.P2453021744118821190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120105 n : ℚ) / (A120108 n : ℚ) * (A120111 n : ℚ)

end

end A120113.P2453021744118821190

/-! ## A120113.P6929261895056455107

`A120101(n)/A068553(A002260(n+1))*A167374(n)`
-/

namespace A120113.P6929261895056455107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120101 n : ℚ) / (A068553 (A002260 (n + 1)).toNat : ℚ) * (A167374 n : ℚ)

end

end A120113.P6929261895056455107

/-! ## A120113.P2046342670128238824

`A120108(A185869(n+1))*A167374(n)`
-/

namespace A120113.P2046342670128238824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A185869 (n + 1)).toNat * A167374 n

end

end A120113.P2046342670128238824

/-! ## A120113.P7687254290505573477

`A120108(A007607(Δ[n²]))*A167374(n)`
-/

namespace A120113.P7687254290505573477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A007607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A167374 n

end

end A120113.P7687254290505573477

/-! ## A120113.P13523757248509985114

`A008683(A130321(n))*A120105(n)`
-/

namespace A120113.P13523757248509985114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130321 n).toNat * A120105 n

end

end A120113.P13523757248509985114

/-! ## A120113.P14990961733360211438

`A008683(sqrt(A262616(n)))*A120105(n)`
-/

namespace A120113.P14990961733360211438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat * A120105 n

end

end A120113.P14990961733360211438

/-! ## A120113.P2094008962097158846

`A008683(A140303(n))*A120105(n)`
-/

namespace A120113.P2094008962097158846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A140303 n).toNat * A120105 n

end

end A120113.P2094008962097158846

/-!
# A120114: a(n) = lcm(1, ..., 2n+4)/lcm(1, ..., 2n+2).

The programs for A120114, the canonical program `A120114.P382930504862310490` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120114 has offset 0).

The definition of A120114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120114.P382930504862310490

`A099996(n+2)/A099996(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120114

/-- `A099996(n+2)/A099996(n+1)` -/
def P382930504862310490.Spec : Prop :=
  ∀ n, P382930504862310490.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P15181354437664560321

`A051543(2*(n+1))*A051543(2*n+1)`
-/

namespace A120114.P15181354437664560321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (2 * (n + 1)) * A051543 (2 * n + 1)

end

end A120114.P15181354437664560321

namespace A120114

/-- `A051543(2*(n+1))*A051543(2*n+1)` -/
def P15181354437664560321.Spec : Prop :=
  ∀ n, P15181354437664560321.a n = A120114 n

end A120114

/-! ## A120114.P18375302128973987400

`A328202(2*(n+2))`
-/

namespace A120114.P18375302128973987400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328202 (2 * (n + 2))

end

end A120114.P18375302128973987400

namespace A120114

/-- `A328202(2*(n+2))` -/
def P18375302128973987400.Spec : Prop :=
  ∀ n, P18375302128973987400.a n = A120114 n

end A120114

/-! ## A120114.P5397445466679470029

`A020500(2*(n+2))*A051417(n+1)`
-/

namespace A120114.P5397445466679470029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (2 * (n + 2)) * A051417 (n + 1)

end

end A120114.P5397445466679470029

namespace A120114

/-- `A020500(2*(n+2))*A051417(n+1)` -/
def P5397445466679470029.Spec : Prop :=
  ∀ n, P5397445466679470029.a n = A120114 n

end A120114

/-! ## A120114.P5490648613816828901

`A014963(2*(n+2))*A014963(2*n+3)`
-/

namespace A120114.P5490648613816828901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 2)) * A014963 (2 * n + 3)

end

end A120114.P5490648613816828901

namespace A120114

/-- `A014963(2*(n+2))*A014963(2*n+3)` -/
def P5490648613816828901.Spec : Prop :=
  ∀ n, P5490648613816828901.a n = A120114 n

end A120114

/-! ## A120114.P4175232405773292727

`A020500(2*n+3)*A020500(2*(n+2))`
-/

namespace A120114.P4175232405773292727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (2 * n + 3) * A020500 (2 * (n + 2))

end

end A120114.P4175232405773292727

namespace A120114

/-- `A020500(2*n+3)*A020500(2*(n+2))` -/
def P4175232405773292727.Spec : Prop :=
  ∀ n, P4175232405773292727.a n = A120114 n

end A120114

/-! ## A120114.P5439371946901473216

`A014963(A020705(2*n))*A051543(2*n+1)`
-/

namespace A120114.P5439371946901473216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020705 (2 * n)).toNat * A051543 (2 * n + 1)

end

end A120114.P5439371946901473216

namespace A120114

/-- `A014963(A020705(2*n))*A051543(2*n+1)` -/
def P5439371946901473216.Spec : Prop :=
  ∀ n, P5439371946901473216.a n = A120114 n

end A120114

/-! ## A120114.P2678688986572396188

`A020513(A020739(2*n+1))*A020513(A020739(2*n))`
-/

namespace A120114.P2678688986572396188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A020739 (2 * n + 1)).toNat * A020513 (A020739 (2 * n)).toNat

end

end A120114.P2678688986572396188

namespace A120114

/-- `A020513(A020739(2*n+1))*A020513(A020739(2*n))` -/
def P2678688986572396188.Spec : Prop :=
  ∀ n, P2678688986572396188.a n = A120114 n

end A120114

/-! ## A120114.P1598889152206213143

`A119636(n)/A068553(n+1)`
-/

namespace A120114.P1598889152206213143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 n : ℚ) / (A068553 (n + 1) : ℚ)

end

end A120114.P1598889152206213143

namespace A120114

/-- `A119636(n)/A068553(n+1)` -/
def P1598889152206213143.Spec : Prop :=
  ∀ n, P1598889152206213143.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P4850958405811468812

`A119636(n)/A048619(2*n+1)`
-/

namespace A120114.P4850958405811468812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 n : ℚ) / (A048619 (2 * n + 1) : ℚ)

end

end A120114.P4850958405811468812

namespace A120114

/-- `A119636(n)/A048619(2*n+1)` -/
def P4850958405811468812.Spec : Prop :=
  ∀ n, P4850958405811468812.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P5110224616670136032

`A119636(n)/gcd(A099946(n+2), A119636(n))`
-/

namespace A120114.P5110224616670136032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 n : ℚ) / (Int.gcd (A099946 (n + 2)) (A119636 n) : ℚ)

end

end A120114.P5110224616670136032

namespace A120114

/-- `A119636(n)/gcd(A099946(n+2), A119636(n))` -/
def P5110224616670136032.Spec : Prop :=
  ∀ n, P5110224616670136032.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P1649587893143909264

`ratio[lcm(C(2*(n+1), 2), a(n-1))]` with `a(0)=1`
-/

namespace A120114.P1649587893143909264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (Nat.choose (2 * (n + 1)) 2) (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120114.P1649587893143909264

namespace A120114

/-- `ratio[lcm(C(2*(n+1), 2), a(n-1))]` -/
def P1649587893143909264.Spec : Prop :=
  ∀ n, P1649587893143909264.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P688805641055769911

`ratio[A119634(n)]`
-/

namespace A120114.P688805641055769911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119634 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120114.P688805641055769911

namespace A120114

/-- `ratio[A119634(n)]` -/
def P688805641055769911.Spec : Prop :=
  ∀ n, P688805641055769911.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P12895421119795946572

`ratio[A099996(n+1)]`
-/

namespace A120114.P12895421119795946572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099996 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120114.P12895421119795946572

namespace A120114

/-- `ratio[A099996(n+1)]` -/
def P12895421119795946572.Spec : Prop :=
  ∀ n, P12895421119795946572.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P5635714361101748086

`floor(ratio[n-A120106(n)])`
-/

namespace A120114.P5635714361101748086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A120106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A120114.P5635714361101748086

namespace A120114

/-- `floor(ratio[n-A120106(n)])` -/
def P5635714361101748086.Spec : Prop :=
  ∀ n, P5635714361101748086.a n = A120114 n

end A120114

/-! ## A120114.P2692336635156843738

`ratio[A025552(2*n+1)]`
-/

namespace A120114.P2692336635156843738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025552 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120114.P2692336635156843738

namespace A120114

/-- `ratio[A025552(2*n+1)]` -/
def P2692336635156843738.Spec : Prop :=
  ∀ n, P2692336635156843738.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P232174153068353639

`ratio[A025555(2*n+1)]`
-/

namespace A120114.P232174153068353639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025555 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120114.P232174153068353639

namespace A120114

/-- `ratio[A025555(2*n+1)]` -/
def P232174153068353639.Spec : Prop :=
  ∀ n, P232174153068353639.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P11079530131039289644

`ratio[A051426(2*(n+1))]`
-/

namespace A120114.P11079530131039289644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120114.P11079530131039289644

namespace A120114

/-- `ratio[A051426(2*(n+1))]` -/
def P11079530131039289644.Spec : Prop :=
  ∀ n, P11079530131039289644.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P10611025410564470541

`A119634(n+1)/A119634(n)`
-/

namespace A120114.P10611025410564470541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 (n + 1) : ℚ) / (A119634 n : ℚ)

end

end A120114.P10611025410564470541

namespace A120114

/-- `A119634(n+1)/A119634(n)` -/
def P10611025410564470541.Spec : Prop :=
  ∀ n, P10611025410564470541.a n = (A120114 n : ℚ)

end A120114

/-! ## A120114.P7532465398451862601

`ratio[ratio[A099996(n)]*A099996(n)]`
-/

namespace A120114.P7532465398451862601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099996 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A099996 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A120114.P7532465398451862601

namespace A120114

/-- `ratio[ratio[A099996(n)]*A099996(n)]` -/
def P7532465398451862601.Spec : Prop :=
  ∀ n, P7532465398451862601.a n = (A120114 n : ℚ)

end A120114

/-!
# A120115: Primes p that divide some Euler number E(k) for even k < p-1, but p does not divide E(p-1).

The programs for A120115, there is no canonical definition to state claims against.
-/

/-! ## A120115.P17127654880287032386

`filter[A120337(n+1), A347871(#)]`
-/

namespace A120115.P17127654880287032386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A120115.P17127654880287032386

/-! ## A120115.P15451086755127189919

`filter[A120337(n+1), A354028(#)]`
-/

namespace A120115.P15451086755127189919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A120115.P15451086755127189919

/-! ## A120115.P1886187438729778536

`filter[A120337(n+1), A354029(#)]`
-/

namespace A120115.P1886187438729778536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A120115.P1886187438729778536

/-! ## A120115.P13236386567366562913

`filter[A120337(n+1), A354033(#)]`
-/

namespace A120115.P13236386567366562913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A120115.P13236386567366562913

/-! ## A120115.P5933112957023537395

`filter[A120337(n+1), A354036(#)]`
-/

namespace A120115.P5933112957023537395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A120115.P5933112957023537395

/-! ## A120115.P12369431313637457544

`filter[A120337(n+1), A359152(#)]`
-/

namespace A120115.P12369431313637457544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A120115.P12369431313637457544

/-! ## A120115.P12497760194633032264

`∩[A004767(n), A120337(n+1)]`
-/

namespace A120115.P12497760194633032264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P12497760194633032264

/-! ## A120115.P10223895102060968378

`∩[A120337(n+1), A217585(n)]`
-/

namespace A120115.P10223895102060968378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P10223895102060968378

/-! ## A120115.P17077174627995453288

`∩[A002145(n+1), A120337(n+1)]`
-/

namespace A120115.P17077174627995453288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P17077174627995453288

/-! ## A120115.P7114088215004452521

`∩[A003657(n+1), A120337(n+1)]`
-/

namespace A120115.P7114088215004452521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P7114088215004452521

/-! ## A120115.P1297036711103999440

`∩[A004144(n+1), A120337(n+1)]`
-/

namespace A120115.P1297036711103999440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P1297036711103999440

/-! ## A120115.P17650964286596364380

`∩[A004614(n+1), A120337(n+1)]`
-/

namespace A120115.P17650964286596364380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P17650964286596364380

/-! ## A120115.P16644334401779583944

`∩[A039957(n+1), A120337(n+1)]`
-/

namespace A120115.P16644334401779583944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P16644334401779583944

/-! ## A120115.P3331842789666007049

`∩[A045326(n+1), A120337(n+1)]`
-/

namespace A120115.P3331842789666007049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P3331842789666007049

/-! ## A120115.P9464304579787122395

`∩[A047528(n+1), A120337(n+1)]`
-/

namespace A120115.P9464304579787122395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P9464304579787122395

/-! ## A120115.P17976657005621244750

`∩[A047531(n+1), A120337(n+1)]`
-/

namespace A120115.P17976657005621244750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P17976657005621244750

/-! ## A120115.P10358123463388763411

`∩[A047543(n+1), A120337(n+1)]`
-/

namespace A120115.P10358123463388763411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P10358123463388763411

/-! ## A120115.P12756810913037315240

`∩[A047556(n+1), A120337(n+1)]`
-/

namespace A120115.P12756810913037315240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P12756810913037315240

/-! ## A120115.P4346537853502742928

`∩[A049645(n+1), A120337(n+1)]`
-/

namespace A120115.P4346537853502742928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P4346537853502742928

/-! ## A120115.P5579773972501224305

`∩[A055050(n+1), A120337(n+1)]`
-/

namespace A120115.P5579773972501224305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120115.P5579773972501224305

/-!
# A120116: Numbers n such that sigma(uphi(n)) = n where uphi is the unitary totient (or unitary phi) function (see A047994).

The programs for A120116, there is no canonical definition to state claims against.
-/

/-! ## A120116.P12002087826540440925

`eq[n, A039653(A047994(n+1))]+1`
-/

namespace A120116.P12002087826540440925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A047994 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120116.P12002087826540440925

/-! ## A120116.P13338906639270148293

`record[A124758(∑[A130262(n)])]`
-/

namespace A120116.P13338906639270148293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120116.P13338906639270148293

/-! ## A120116.P12932254506106835388

`A281624(A281624(n+1)+A277193(n))`
-/

namespace A120116.P12932254506106835388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281624 (A281624 (n + 1) + A277193 n).toNat

end

end A120116.P12932254506106835388

/-! ## A120116.P6002580729131561807

`record[A000005(A310244(n)+A302728(n+1))]`
-/

namespace A120116.P6002580729131561807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A310244 n + A302728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120116.P6002580729131561807

/-!
# A120117: Number of 2-anisohedral polyhexes of order n.

The programs for A120117, there is no canonical definition to state claims against.
-/

/-! ## A120117.P7172257910734842958

`A051889(C(floor(n*root(e, e)), 7))`
-/

namespace A120117.P7172257910734842958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Nat.choose ⌊(n : ℝ) * Real.exp 1 ^ (1 / Real.exp 1)⌋.toNat 7)

end

end A120117.P7172257910734842958

/-! ## A120117.P16735536607009808662

`A277416(A137359(n))`
-/

namespace A120117.P16735536607009808662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277416 (A137359 n).toNat

end

end A120117.P16735536607009808662

/-! ## A120117.P8205196771548262911

`A277416(A101552(n+1))`
-/

namespace A120117.P8205196771548262911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277416 (A101552 (n + 1)).toNat

end

end A120117.P8205196771548262911

/-! ## A120117.P16782107877002562971

`A025437(xor(6, A086991(n+1)))`
-/

namespace A120117.P16782107877002562971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (Int.xor 6 (A086991 (n + 1))).toNat

end

end A120117.P16782107877002562971

/-! ## A120117.P804302794908864636

`A056370(n+1)%A047679(A030186(n))`
-/

namespace A120117.P804302794908864636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056370 (n + 1)) (A047679 (A030186 n).toNat)

end

end A120117.P804302794908864636

/-!
# A120118: a(n) is the number of binary strings of length n such that no subsequence of length 5 or less contains 3 or more ones.

The programs for A120118, the canonical program `A120118.P16307991113263491801` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120118 has offset 0).

The definition of A120118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120118.P16307991113263491801

`a(n-1)+a(n-3)+2*a(n-5)-a(n-8)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11, a(5)=16, a(6)=26, a(7)=43, a(8)=71, a(9)=116`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120118

/-- `a(n-1)+a(n-3)+2*a(n-5)-a(n-8)-a(n-10)` -/
def P16307991113263491801.Spec : Prop :=
  ∀ n, P16307991113263491801.a n = A120118 n

theorem P16307991113263491801.correct : P16307991113263491801.Spec := by
  intro n
  simp only [A120118]

end A120118

/-! ## A120118.P4389697392401192752

`2^n-A131283(A028310(n))`
-/

namespace A120118.P4389697392401192752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A131283 (A028310 n).toNat

end

end A120118.P4389697392401192752

namespace A120118

/-- `2^n-A131283(A028310(n))` -/
def P4389697392401192752.Spec : Prop :=
  ∀ n, P4389697392401192752.a n = A120118 n

end A120118

/-! ## A120118.P4692902762111471666

`2^n-A131283(A000007(n)+n)`
-/

namespace A120118.P4692902762111471666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A131283 (A000007 n + (n : ℤ)).toNat

end

end A120118.P4692902762111471666

namespace A120118

/-- `2^n-A131283(A000007(n)+n)` -/
def P4692902762111471666.Spec : Prop :=
  ∀ n, P4692902762111471666.a n = A120118 n

end A120118

/-! ## A120118.P17477596732860184709

`A000079(n)-A131283(A233583(n+1))`
-/

namespace A120118.P17477596732860184709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A131283 (A233583 (n + 1)).toNat

end

end A120118.P17477596732860184709

namespace A120118

/-- `A000079(n)-A131283(A233583(n+1))` -/
def P17477596732860184709.Spec : Prop :=
  ∀ n, P17477596732860184709.a n = A120118 n

end A120118

/-! ## A120118.P787747495272326588

`A000295(n)+n+1-A131283(A028310(n))`
-/

namespace A120118.P787747495272326588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + ((n + 1 : ℤ) - A131283 (A028310 n).toNat)

end

end A120118.P787747495272326588

namespace A120118

/-- `A000295(n)+n+1-A131283(A028310(n))` -/
def P787747495272326588.Spec : Prop :=
  ∀ n, P787747495272326588.a n = A120118 n

end A120118

/-! ## A120118.P17233232418059669752

`record[A056672(n+1)]-A131283(A233583(n+1))`
-/

namespace A120118.P17233232418059669752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A131283 (A233583 (n + 1)).toNat

end

end A120118.P17233232418059669752

namespace A120118

/-- `record[A056672(n+1)]-A131283(A233583(n+1))` -/
def P17233232418059669752.Spec : Prop :=
  ∀ n, P17233232418059669752.a n = A120118 n

end A120118

/-!
# A120119: Multiplicative function from integers to sums of two squares.

The programs for A120119, there is no canonical definition to state claims against.
-/

/-! ## A120119.P11045082797897006045

`∏{e}[A181821(n+1), A055025(#)]`
-/

namespace A120119.P11045082797897006045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055025 (Nat.factorization (f1 n).natAbs p)

end

end A120119.P11045082797897006045

/-! ## A120119.P12241372032346861256

`∏{e}[A304660(n+1), A055025(#)]`
-/

namespace A120119.P12241372032346861256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055025 (Nat.factorization (f1 n).natAbs p)

end

end A120119.P12241372032346861256

/-! ## A120119.P12169767719921779034

`A001333(A309778(2*(n+1)))*A267099(n+1)`
-/

namespace A120119.P12169767719921779034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A309778 (2 * (n + 1))).toNat * A267099 (n + 1)

end

end A120119.P12169767719921779034

/-!
# A120120: Number of n-digit prime quadruplets.

The programs for A120120, there is no canonical definition to state claims against.
-/

/-! ## A120120.P10372675492135522565

`Δ[abs(1-A055738(n+1))]`
-/

namespace A120120.P10372675492135522565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A055738 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120120.P10372675492135522565

/-! ## A120120.P2874646597050025257

`Δ[or(C(2, n), A050258(n+1))]`
-/

namespace A120120.P2874646597050025257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A050258 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120120.P2874646597050025257

/-! ## A120120.P1807385269349672807

`Δ[A050258(n+1)+A000007(n)]`
-/

namespace A120120.P1807385269349672807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050258 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120120.P1807385269349672807

/-! ## A120120.P14432846720317312227

`Δ[A055738(n+1)+A000038(n)]`
-/

namespace A120120.P14432846720317312227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055738 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120120.P14432846720317312227

/-! ## A120120.P16083277961678983605

`Δ[A050258(n+1)+A023933(n)]`
-/

namespace A120120.P16083277961678983605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050258 (n + 1) + A023933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120120.P16083277961678983605

/-!
# A120121: Numbers m such that m=phi((d_1*d_2*...*d_k)*(d_1+d_2+...+d_k)) where d_1 d_2... d_k is the decimal expansion of m.

The programs for A120121, there is no canonical definition to state claims against.
-/

/-! ## A120121.P3807475593111000998

`A054842(∑[A070198(n)])`
-/

namespace A120121.P3807475593111000998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120121.P3807475593111000998

/-!
# A120125: Smallest positive integer not already in the sequence such that digits used are balanced: no digit appears more than 1 times more than any other.

The programs for A120125, there is no canonical definition to state claims against.
-/

/-! ## A120125.P5170439949274895852

`A118759(A345227(n+1))`
-/

namespace A120125.P5170439949274895852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A345227 (n + 1)).toNat

end

end A120125.P5170439949274895852

/-! ## A120125.P5461952688688421130

`A349797(A328673(n))+A345227(n+1)`
-/

namespace A120125.P5461952688688421130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A328673 n).toNat + A345227 (n + 1)

end

end A120125.P5461952688688421130

/-! ## A120125.P15827312328093367994

`A345227(n+1)%A004034(A032741(n))`
-/

namespace A120125.P15827312328093367994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345227 (n + 1)) (A004034 (A032741 n).toNat)

end

end A120125.P15827312328093367994

/-! ## A120125.P16532107843451334841

`A345227(n+1)+A010051(A020239(n+1))`
-/

namespace A120125.P16532107843451334841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345227 (n + 1) + A010051 (A020239 (n + 1)).toNat

end

end A120125.P16532107843451334841

/-! ## A120125.P14290345751606033542

`A345227(n+1)+A056594(A023271(n+1))`
-/

namespace A120125.P14290345751606033542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345227 (n + 1) + A056594 (A023271 (n + 1)).toNat

end

end A120125.P14290345751606033542

/-!
# A120126: Index of first occurrence of n in A120125, or 0 if not present.

The programs for A120126, there is no canonical definition to state claims against.
-/

/-! ## A120126.P12965793464900138714

`n*A118187(A184983(n))`
-/

namespace A120126.P12965793464900138714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118187 (A184983 n).toNat

end

end A120126.P12965793464900138714

/-! ## A120126.P8059594917867724668

`lcm(n, A142460(n+1)^A327117(A176152(n)))`
-/

namespace A120126.P8059594917867724668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((A142460 (n + 1) : ℚ) ^ (A327117 (A176152 n).toNat : ℤ)))

end

end A120126.P8059594917867724668

/-! ## A120126.P18201897633067863665

`A048323(A048308(A048323(A048323(A048308(n)))))`
-/

namespace A120126.P18201897633067863665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 (A048308 (A048323 (A048323 (A048308 n).toNat).toNat).toNat).toNat

end

end A120126.P18201897633067863665

/-!
# A120127: Numbers that are never the longest side of a primitive Heronian triangle.

The programs for A120127, there is no canonical definition to state claims against.
-/

/-! ## A120127.P11448805240168020155

`eq[0, A239246(n+1)]+1`
-/

namespace A120127.P11448805240168020155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120127.P11448805240168020155

/-! ## A120127.P13542647656275884029

`lt[n*A239246(A028310(n)), n]`
-/

namespace A120127.P13542647656275884029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A239246 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A120127.P13542647656275884029

/-! ## A120127.P3427395247639926783

`eq[char[A096467(n+1)], A000007(n)]`
-/

namespace A120127.P3427395247639926783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A120127.P3427395247639926783

/-! ## A120127.P14320038438895125459

`eq[char[A096467(n+1)], A000038(n)]`
-/

namespace A120127.P14320038438895125459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A120127.P14320038438895125459

/-! ## A120127.P6921443755107039658

`record[gcd(A000027(n+1), A239246(n+1))]`
-/

namespace A120127.P6921443755107039658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A239246 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120127.P6921443755107039658

/-! ## A120127.P14330853987035512119

`eq[A000007(n), A239246(A065033(2*n))]`
-/

namespace A120127.P14330853987035512119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120127.P14330853987035512119

/-! ## A120127.P5702096140595838309

`record[A239246(A239246(n+1)+A120130(n+1))]`
-/

namespace A120127.P5702096140595838309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A239246 (n + 1) + A120130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120127.P5702096140595838309

/-!
# A120128: Longest side of exactly one primitive Heronian triangle.

The programs for A120128, there is no canonical definition to state claims against.
-/

/-! ## A120128.P4749154063132854015

`eq[1, A239246(n+1)]+1`
-/

namespace A120128.P4749154063132854015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120128.P4749154063132854015

/-! ## A120128.P15746741215430068013

`eq[1, A239246(A000007(n)+n)]`
-/

namespace A120128.P15746741215430068013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120128.P15746741215430068013

/-! ## A120128.P14313320514300720112

`eq[1, A239246(A000038(n)+n)]`
-/

namespace A120128.P14313320514300720112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120128.P14313320514300720112

/-! ## A120128.P12759950293807820001

`eq[1, A239246(gcd(n, A008458(n)))]`
-/

namespace A120128.P12759950293807820001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120128.P12759950293807820001

/-! ## A120128.P8865942574764493187

`eq[1, A239246(or(n, A000038(n)))]`
-/

namespace A120128.P8865942574764493187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120128.P8865942574764493187

/-! ## A120128.P12835246470519365102

`eq[1, A239246(A065033(2*n))]`
-/

namespace A120128.P12835246470519365102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120128.P12835246470519365102

/-! ## A120128.P15977001553720014429

`eq[1, A239246(A233583(n+1))]`
-/

namespace A120128.P15977001553720014429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120128.P15977001553720014429

/-!
# A120129: Longest side common to more than one primitive Heronian triangle.

The programs for A120129, there is no canonical definition to state claims against.
-/

/-! ## A120129.P5881076308746745201

`∩[A096467(n+1), comp[A120128(n+1)]]`
-/

namespace A120129.P5881076308746745201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096467 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120128 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A120129.P5881076308746745201

/-! ## A120129.P11127312175327557719

`lt[1, A239246(n+1)]+1`
-/

namespace A120129.P11127312175327557719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120129.P11127312175327557719

/-! ## A120129.P5606911809753718706

`lt[1, A239246(A028310(n))]`
-/

namespace A120129.P5606911809753718706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120129.P5606911809753718706

/-! ## A120129.P14153610442012201136

`A020725(lt[1, A239246(n+1)])`
-/

namespace A120129.P14153610442012201136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120129.P14153610442012201136

/-! ## A120129.P6322306675388754263

`A065475(lt[1, A239246(n+1)])`
-/

namespace A120129.P6322306675388754263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120129.P6322306675388754263

/-! ## A120129.P4155742029358897874

`lt[1, A239246(A000007(n)+n)]`
-/

namespace A120129.P4155742029358897874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120129.P4155742029358897874

/-! ## A120129.P13902663090057829993

`record[gcd(A120131(n+4), A120131(n+5))]`
-/

namespace A120129.P13902663090057829993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120131 (n + 4)) (A120131 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120129.P13902663090057829993

/-!
# A120131: Longest side of primitive Heronian triangles, sorted.

The programs for A120131, there is no canonical definition to state claims against.
-/

/-! ## A120131.P15186377201274212721

`comp[∑[A239246(n+1)]+n]-n+1`
-/

namespace A120131.P15186377201274212721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A120131.P15186377201274212721

/-! ## A120131.P14444791711167883891

`comp[∑[A239246(A028310(n))]+n]-n`
-/

namespace A120131.P14444791711167883891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A120131.P14444791711167883891

/-! ## A120131.P5430897562259026754

`comp[∑[A239246(A065033(2*n))]+n]-n`
-/

namespace A120131.P5430897562259026754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A120131.P5430897562259026754

/-! ## A120131.P7750816404807780538

`comp[∑[A239246(A000007(n)+n)]+n]-n`
-/

namespace A120131.P7750816404807780538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A120131.P7750816404807780538

/-!
# A120134: a(n) = 4 + floor(Sum_{k=1..n-1} a(k) / 2).

The programs for A120134, the canonical program `A120134.P12588754615780152016` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120134 has offset 1).

The definition of A120134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120134.P12588754615780152016

`Δ[ceil(3/2*a(n-1))]` with `a(0)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120134

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P12588754615780152016.Spec : Prop :=
  ∀ n, P12588754615780152016.a n = A120134 (n + 1)

theorem P12588754615780152016.correct : P12588754615780152016.Spec := by
  intro n
  simp only [A120134, Nat.add_sub_cancel]

end A120134

/-! ## A120134.P16908152963018907985

`Δ[floor(3/2*a(n-1))]` with `a(0)=8`
-/

namespace A120134.P16908152963018907985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120134.P16908152963018907985

namespace A120134

/-- `Δ[floor(3/2*a(n-1))]` -/
def P16908152963018907985.Spec : Prop :=
  ∀ n, P16908152963018907985.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P12116467603146080989

`Δ[round(3/2*a(n-1))]` with `a(0)=7`
-/

namespace A120134.P12116467603146080989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120134.P12116467603146080989

namespace A120134

/-- `Δ[round(3/2*a(n-1))]` -/
def P12116467603146080989.Spec : Prop :=
  ∀ n, P12116467603146080989.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P8230167206569223910

`Δ[ceil(a(n-1)/2+a(n-1)+3)]` with `a(0)=1`
-/

namespace A120134.P8230167206569223910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) / 2 + (f1 (n - 1) + 3 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120134.P8230167206569223910

namespace A120134

/-- `Δ[ceil(a(n-1)/2+a(n-1)+3)]` -/
def P8230167206569223910.Spec : Prop :=
  ∀ n, P8230167206569223910.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P5422421225597083172

`Δ[floor(a(n-1)/2+a(n-1)+3)]` with `a(0)=2`
-/

namespace A120134.P5422421225597083172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) / 2 + (f1 (n - 1) + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120134.P5422421225597083172

namespace A120134

/-- `Δ[floor(a(n-1)/2+a(n-1)+3)]` -/
def P5422421225597083172.Spec : Prop :=
  ∀ n, P5422421225597083172.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P1893686990833172715

`Δ[A302748(n)]`
-/

namespace A120134.P1893686990833172715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120134.P1893686990833172715

namespace A120134

/-- `Δ[A302748(n)]` -/
def P1893686990833172715.Spec : Prop :=
  ∀ n, P1893686990833172715.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P16751364271279124382

`Δ[A386792(n)]`
-/

namespace A120134.P16751364271279124382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120134.P16751364271279124382

namespace A120134

/-- `Δ[A386792(n)]` -/
def P16751364271279124382.Spec : Prop :=
  ∀ n, P16751364271279124382.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P4684161796296055164

`A302748(n+1)-A302748(n)`
-/

namespace A120134.P4684161796296055164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302748 (n + 1) - A302748 n

end

end A120134.P4684161796296055164

namespace A120134

/-- `A302748(n+1)-A302748(n)` -/
def P4684161796296055164.Spec : Prop :=
  ∀ n, P4684161796296055164.a n = A120134 (n + 1)

end A120134

/-! ## A120134.P15987592791735052311

`A386792(n+1)-A386792(n)`
-/

namespace A120134.P15987592791735052311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386792 (n + 1) - A386792 n

end

end A120134.P15987592791735052311

namespace A120134

/-- `A386792(n+1)-A386792(n)` -/
def P15987592791735052311.Spec : Prop :=
  ∀ n, P15987592791735052311.a n = A120134 (n + 1)

end A120134

/-!
# A120135: a(n) = 5 + floor((1 + Sum_{j=1..n-1} a(j)) / 2).

The programs for A120135, the canonical program `A120135.P14872413267183942715` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120135 has offset 1).

The definition of A120135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120135.P14872413267183942715

`Δ[ceil(3/2*a(n-1))]` with `a(0)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120135

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P14872413267183942715.Spec : Prop :=
  ∀ n, P14872413267183942715.a n = A120135 (n + 1)

theorem P14872413267183942715.correct : P14872413267183942715.Spec := by
  intro n
  simp only [A120135, Nat.add_sub_cancel]

end A120135

/-! ## A120135.P13292438706807399791

`Δ[floor(3/2*a(n-1))]` with `a(0)=11`
-/

namespace A120135.P13292438706807399791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120135.P13292438706807399791

namespace A120135

/-- `Δ[floor(3/2*a(n-1))]` -/
def P13292438706807399791.Spec : Prop :=
  ∀ n, P13292438706807399791.a n = A120135 (n + 1)

end A120135

/-! ## A120135.P5141181545001852242

`Δ[round(3/2*a(n-1))]` with `a(0)=10`
-/

namespace A120135.P5141181545001852242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120135.P5141181545001852242

namespace A120135

/-- `Δ[round(3/2*a(n-1))]` -/
def P5141181545001852242.Spec : Prop :=
  ∀ n, P5141181545001852242.a n = A120135 (n + 1)

end A120135

/-! ## A120135.P14822283284010347742

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=10`
-/

namespace A120135.P14822283284010347742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120135.P14822283284010347742

namespace A120135

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P14822283284010347742.Spec : Prop :=
  ∀ n, P14822283284010347742.a n = A120135 (n + 1)

theorem P14822283284010347742.correct : P14822283284010347742.Spec := by
  intro n
  simp only [A120135, Nat.add_sub_cancel, A120135.P14822283284010347742.f1, A120135.P14822283284010347742.a, A120135.P14872413267183942715.f1, A120135.P14872413267183942715.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120135

/-! ## A120135.P7548024648708246514

`Δ[a(n-1)+floor(a(n-1)/2)]` with `a(0)=11`
-/

namespace A120135.P7548024648708246514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + ⌊(f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120135.P7548024648708246514

namespace A120135

/-- `Δ[a(n-1)+floor(a(n-1)/2)]` -/
def P7548024648708246514.Spec : Prop :=
  ∀ n, P7548024648708246514.a n = A120135 (n + 1)

end A120135

/-!
# A120136: a(n) = 7 + floor(Sum_{j=1..n-1} a(j) / 2).

The programs for A120136, the canonical program `A120136.P5409319258040445014` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120136 has offset 1).

The definition of A120136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120136.P5409319258040445014

`Δ[ceil(3/2*a(n-1))]` with `a(0)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120136

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P5409319258040445014.Spec : Prop :=
  ∀ n, P5409319258040445014.a n = A120136 (n + 1)

theorem P5409319258040445014.correct : P5409319258040445014.Spec := by
  intro n
  simp only [A120136, Nat.add_sub_cancel]

end A120136

/-! ## A120136.P15519974456330112924

`Δ[floor(3/2*a(n-1))]` with `a(0)=14`
-/

namespace A120136.P15519974456330112924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120136.P15519974456330112924

namespace A120136

/-- `Δ[floor(3/2*a(n-1))]` -/
def P15519974456330112924.Spec : Prop :=
  ∀ n, P15519974456330112924.a n = A120136 (n + 1)

end A120136

/-! ## A120136.P9052627131235908912

`Δ[round(3/2*a(n-1))]` with `a(0)=13`
-/

namespace A120136.P9052627131235908912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120136.P9052627131235908912

namespace A120136

/-- `Δ[round(3/2*a(n-1))]` -/
def P9052627131235908912.Spec : Prop :=
  ∀ n, P9052627131235908912.a n = A120136 (n + 1)

end A120136

/-! ## A120136.P18402301609023547985

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=13`
-/

namespace A120136.P18402301609023547985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120136.P18402301609023547985

namespace A120136

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P18402301609023547985.Spec : Prop :=
  ∀ n, P18402301609023547985.a n = A120136 (n + 1)

theorem P18402301609023547985.correct : P18402301609023547985.Spec := by
  intro n
  simp only [A120136, Nat.add_sub_cancel, A120136.P18402301609023547985.f1, A120136.P18402301609023547985.a, A120136.P5409319258040445014.f1, A120136.P5409319258040445014.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120136

/-! ## A120136.P15054158173749181543

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=14`
-/

namespace A120136.P15054158173749181543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120136.P15054158173749181543

namespace A120136

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P15054158173749181543.Spec : Prop :=
  ∀ n, P15054158173749181543.a n = A120136 (n + 1)

end A120136

/-!
# A120137: a(n) = 8 + floor( (1 + Sum_{j=1..n-1} a(j)) / 2).

The programs for A120137, the canonical program `A120137.P15880055963252166593` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120137 has offset 1).

The definition of A120137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120137.P15880055963252166593

`Δ[ceil(3/2*a(n-1))]` with `a(0)=16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120137

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P15880055963252166593.Spec : Prop :=
  ∀ n, P15880055963252166593.a n = A120137 (n + 1)

theorem P15880055963252166593.correct : P15880055963252166593.Spec := by
  intro n
  simp only [A120137, Nat.add_sub_cancel]

end A120137

/-! ## A120137.P17685977729138156071

`Δ[floor(3/2*a(n-1))]` with `a(0)=17`
-/

namespace A120137.P17685977729138156071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120137.P17685977729138156071

namespace A120137

/-- `Δ[floor(3/2*a(n-1))]` -/
def P17685977729138156071.Spec : Prop :=
  ∀ n, P17685977729138156071.a n = A120137 (n + 1)

end A120137

/-! ## A120137.P5378335926536669926

`Δ[round(3/2*a(n-1))]` with `a(0)=16`
-/

namespace A120137.P5378335926536669926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120137.P5378335926536669926

namespace A120137

/-- `Δ[round(3/2*a(n-1))]` -/
def P5378335926536669926.Spec : Prop :=
  ∀ n, P5378335926536669926.a n = A120137 (n + 1)

end A120137

/-! ## A120137.P7989571860305863705

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=16`
-/

namespace A120137.P7989571860305863705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120137.P7989571860305863705

namespace A120137

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P7989571860305863705.Spec : Prop :=
  ∀ n, P7989571860305863705.a n = A120137 (n + 1)

theorem P7989571860305863705.correct : P7989571860305863705.Spec := by
  intro n
  simp only [A120137, Nat.add_sub_cancel, A120137.P7989571860305863705.f1, A120137.P7989571860305863705.a, A120137.P15880055963252166593.f1, A120137.P15880055963252166593.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120137

/-!
# A120138: a(n) = 10 + floor(Sum_{j=1..n-1} a(j) / 2).

The programs for A120138, the canonical program `A120138.P9440077026592153786` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120138 has offset 1).

The definition of A120138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120138.P9440077026592153786

`Δ[floor(3/2*a(n-1))]` with `a(0)=20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120138

/-- `Δ[floor(3/2*a(n-1))]` -/
def P9440077026592153786.Spec : Prop :=
  ∀ n, P9440077026592153786.a n = A120138 (n + 1)

theorem P9440077026592153786.correct : P9440077026592153786.Spec := by
  intro n
  simp only [A120138, Nat.add_sub_cancel]

end A120138

/-! ## A120138.P10316768836220201124

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=19`
-/

namespace A120138.P10316768836220201124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120138.P10316768836220201124

namespace A120138

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P10316768836220201124.Spec : Prop :=
  ∀ n, P10316768836220201124.a n = A120138 (n + 1)

end A120138

/-! ## A120138.P11919906857964596501

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=20`
-/

namespace A120138.P11919906857964596501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120138.P11919906857964596501

namespace A120138

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P11919906857964596501.Spec : Prop :=
  ∀ n, P11919906857964596501.a n = A120138 (n + 1)

theorem P11919906857964596501.correct : P11919906857964596501.Spec := by
  intro n
  simp only [A120138, Nat.add_sub_cancel, A120138.P11919906857964596501.f1, A120138.P11919906857964596501.a, A120138.P9440077026592153786.f1, A120138.P9440077026592153786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120138

/-! ## A120138.P8770347071624501897

`Δ[ceil(3*a(n-1)/2)]` with `a(0)=19`
-/

namespace A120138.P8770347071624501897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  ⌈(3 * f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120138.P8770347071624501897

namespace A120138

/-- `Δ[ceil(3*a(n-1)/2)]` -/
def P8770347071624501897.Spec : Prop :=
  ∀ n, P8770347071624501897.a n = A120138 (n + 1)

end A120138

/-! ## A120138.P16841272581821940000

`Δ[(a(n-1)%2+3*a(n-1))/2]` with `a(0)=19`
-/

namespace A120138.P16841272581821940000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [19] fun n f1 =>
  ((Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 2 : ℚ) + 3 * f1 (n - 1)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120138.P16841272581821940000

namespace A120138

/-- `Δ[(a(n-1)%2+3*a(n-1))/2]` -/
def P16841272581821940000.Spec : Prop :=
  ∀ n, P16841272581821940000.a n = (A120138 (n + 1) : ℚ)

end A120138

/-!
# A120139: a(n) = 11 + floor( (1 + Sum_{j=1..n-1} a(j)) / 2).

The programs for A120139, the canonical program `A120139.P7860810956258412853` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120139 has offset 1).

The definition of A120139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120139.P7860810956258412853

`Δ[ceil(3/2*a(n-1))]` with `a(0)=22`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120139

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P7860810956258412853.Spec : Prop :=
  ∀ n, P7860810956258412853.a n = A120139 (n + 1)

theorem P7860810956258412853.correct : P7860810956258412853.Spec := by
  intro n
  simp only [A120139, Nat.add_sub_cancel]

end A120139

/-! ## A120139.P12220729637653140820

`Δ[floor(3/2*a(n-1))]` with `a(0)=23`
-/

namespace A120139.P12220729637653140820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120139.P12220729637653140820

namespace A120139

/-- `Δ[floor(3/2*a(n-1))]` -/
def P12220729637653140820.Spec : Prop :=
  ∀ n, P12220729637653140820.a n = A120139 (n + 1)

end A120139

/-! ## A120139.P3399233205693544264

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=22`
-/

namespace A120139.P3399233205693544264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120139.P3399233205693544264

namespace A120139

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P3399233205693544264.Spec : Prop :=
  ∀ n, P3399233205693544264.a n = A120139 (n + 1)

theorem P3399233205693544264.correct : P3399233205693544264.Spec := by
  intro n
  simp only [A120139, Nat.add_sub_cancel, A120139.P3399233205693544264.f1, A120139.P3399233205693544264.a, A120139.P7860810956258412853.f1, A120139.P7860810956258412853.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120139

/-! ## A120139.P13722755954803255912

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=23`
-/

namespace A120139.P13722755954803255912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120139.P13722755954803255912

namespace A120139

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P13722755954803255912.Spec : Prop :=
  ∀ n, P13722755954803255912.a n = A120139 (n + 1)

end A120139

/-! ## A120139.P8811130140849670795

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=22`
-/

namespace A120139.P8811130140849670795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120139.P8811130140849670795

namespace A120139

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P8811130140849670795.Spec : Prop :=
  ∀ n, P8811130140849670795.a n = A120139 (n + 1)

end A120139

/-!
# A120140: a(n) = 13 + floor(Sum_{j=1..n-1} a(j)/2).

The programs for A120140, the canonical program `A120140.P10055700299683959637` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120140 has offset 1).

The definition of A120140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120140.P10055700299683959637

`Δ[ceil(3/2*a(n-1))]` with `a(0)=25`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120140

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P10055700299683959637.Spec : Prop :=
  ∀ n, P10055700299683959637.a n = A120140 (n + 1)

theorem P10055700299683959637.correct : P10055700299683959637.Spec := by
  intro n
  simp only [A120140, Nat.add_sub_cancel]

end A120140

/-! ## A120140.P14040902749963889828

`Δ[round(3/2*a(n-1))]` with `a(0)=25`
-/

namespace A120140.P14040902749963889828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120140.P14040902749963889828

namespace A120140

/-- `Δ[round(3/2*a(n-1))]` -/
def P14040902749963889828.Spec : Prop :=
  ∀ n, P14040902749963889828.a n = A120140 (n + 1)

end A120140

/-! ## A120140.P8839526116877984557

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=25`
-/

namespace A120140.P8839526116877984557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120140.P8839526116877984557

namespace A120140

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P8839526116877984557.Spec : Prop :=
  ∀ n, P8839526116877984557.a n = A120140 (n + 1)

theorem P8839526116877984557.correct : P8839526116877984557.Spec := by
  intro n
  simp only [A120140, Nat.add_sub_cancel, A120140.P8839526116877984557.f1, A120140.P8839526116877984557.a, A120140.P10055700299683959637.f1, A120140.P10055700299683959637.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120140

/-! ## A120140.P3943862683752757472

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=26`
-/

namespace A120140.P3943862683752757472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [26] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120140.P3943862683752757472

namespace A120140

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P3943862683752757472.Spec : Prop :=
  ∀ n, P3943862683752757472.a n = A120140 (n + 1)

end A120140

/-! ## A120140.P11733125872951271472

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=25`
-/

namespace A120140.P11733125872951271472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120140.P11733125872951271472

namespace A120140

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P11733125872951271472.Spec : Prop :=
  ∀ n, P11733125872951271472.a n = A120140 (n + 1)

end A120140

/-!
# A120141: a(n) = 14 + floor( (1 + Sum_{j=0..n-1} a(j)) / 2).

The programs for A120141, the canonical program `A120141.P12910514780718758860` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120141 has offset 1).

The definition of A120141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120141.P12910514780718758860

`Δ[ceil(3/2*a(n-1))]` with `a(0)=28`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120141

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P12910514780718758860.Spec : Prop :=
  ∀ n, P12910514780718758860.a n = A120141 (n + 1)

theorem P12910514780718758860.correct : P12910514780718758860.Spec := by
  intro n
  simp only [A120141, Nat.add_sub_cancel]

end A120141

/-! ## A120141.P15572887056183930987

`Δ[floor(3/2*a(n-1))]` with `a(0)=29`
-/

namespace A120141.P15572887056183930987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120141.P15572887056183930987

namespace A120141

/-- `Δ[floor(3/2*a(n-1))]` -/
def P15572887056183930987.Spec : Prop :=
  ∀ n, P15572887056183930987.a n = A120141 (n + 1)

end A120141

/-! ## A120141.P18106723453193576809

`Δ[round(3/2*a(n-1))]` with `a(0)=28`
-/

namespace A120141.P18106723453193576809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120141.P18106723453193576809

namespace A120141

/-- `Δ[round(3/2*a(n-1))]` -/
def P18106723453193576809.Spec : Prop :=
  ∀ n, P18106723453193576809.a n = A120141 (n + 1)

end A120141

/-! ## A120141.P2829620686555315583

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=28`
-/

namespace A120141.P2829620686555315583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120141.P2829620686555315583

namespace A120141

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P2829620686555315583.Spec : Prop :=
  ∀ n, P2829620686555315583.a n = A120141 (n + 1)

theorem P2829620686555315583.correct : P2829620686555315583.Spec := by
  intro n
  simp only [A120141, Nat.add_sub_cancel, A120141.P2829620686555315583.f1, A120141.P2829620686555315583.a, A120141.P12910514780718758860.f1, A120141.P12910514780718758860.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120141

/-! ## A120141.P4527570467414851101

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=29`
-/

namespace A120141.P4527570467414851101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120141.P4527570467414851101

namespace A120141

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P4527570467414851101.Spec : Prop :=
  ∀ n, P4527570467414851101.a n = A120141 (n + 1)

end A120141

/-! ## A120141.P15756268740776637377

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=28`
-/

namespace A120141.P15756268740776637377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120141.P15756268740776637377

namespace A120141

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P15756268740776637377.Spec : Prop :=
  ∀ n, P15756268740776637377.a n = A120141 (n + 1)

end A120141

/-! ## A120141.P5363995826808662432

`Δ[(a(n-1)%2+3*a(n-1))/2]` with `a(0)=28`
-/

namespace A120141.P5363995826808662432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [28] fun n f1 =>
  ((Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 2 : ℚ) + 3 * f1 (n - 1)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120141.P5363995826808662432

namespace A120141

/-- `Δ[(a(n-1)%2+3*a(n-1))/2]` -/
def P5363995826808662432.Spec : Prop :=
  ∀ n, P5363995826808662432.a n = (A120141 (n + 1) : ℚ)

end A120141

/-!
# A120142: a(n) = 16 + floor(Sum_{j=1..n-1} a(j)/2).

The programs for A120142, the canonical program `A120142.P13890958004437018788` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120142 has offset 1).

The definition of A120142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120142.P13890958004437018788

`Δ[ceil(3/2*a(n-1))]` with `a(0)=31`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120142

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P13890958004437018788.Spec : Prop :=
  ∀ n, P13890958004437018788.a n = A120142 (n + 1)

theorem P13890958004437018788.correct : P13890958004437018788.Spec := by
  intro n
  simp only [A120142, Nat.add_sub_cancel]

end A120142

/-! ## A120142.P14661878103706175687

`Δ[floor(3/2*a(n-1))]` with `a(0)=32`
-/

namespace A120142.P14661878103706175687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120142.P14661878103706175687

namespace A120142

/-- `Δ[floor(3/2*a(n-1))]` -/
def P14661878103706175687.Spec : Prop :=
  ∀ n, P14661878103706175687.a n = A120142 (n + 1)

end A120142

/-! ## A120142.P8329459131294499291

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=31`
-/

namespace A120142.P8329459131294499291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [31] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120142.P8329459131294499291

namespace A120142

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P8329459131294499291.Spec : Prop :=
  ∀ n, P8329459131294499291.a n = A120142 (n + 1)

theorem P8329459131294499291.correct : P8329459131294499291.Spec := by
  intro n
  simp only [A120142, Nat.add_sub_cancel, A120142.P8329459131294499291.f1, A120142.P8329459131294499291.a, A120142.P13890958004437018788.f1, A120142.P13890958004437018788.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120142

/-! ## A120142.P10993215018467221701

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=32`
-/

namespace A120142.P10993215018467221701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120142.P10993215018467221701

namespace A120142

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P10993215018467221701.Spec : Prop :=
  ∀ n, P10993215018467221701.a n = A120142 (n + 1)

end A120142

/-! ## A120142.P5057541880607647649

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=31`
-/

namespace A120142.P5057541880607647649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [31] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120142.P5057541880607647649

namespace A120142

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P5057541880607647649.Spec : Prop :=
  ∀ n, P5057541880607647649.a n = A120142 (n + 1)

end A120142

/-!
# A120143: a(n) = 17 + floor( (1 + Sum_{j=0..n-1} a(j))/2 ).

The programs for A120143, the canonical program `A120143.P1066220947197303015` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120143 has offset 1).

The definition of A120143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120143.P1066220947197303015

`Δ[ceil(3/2*a(n-1))]` with `a(0)=34`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120143

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P1066220947197303015.Spec : Prop :=
  ∀ n, P1066220947197303015.a n = A120143 (n + 1)

theorem P1066220947197303015.correct : P1066220947197303015.Spec := by
  intro n
  simp only [A120143, Nat.add_sub_cancel]

end A120143

/-! ## A120143.P8125556882345324671

`Δ[floor(3/2*a(n-1))]` with `a(0)=35`
-/

namespace A120143.P8125556882345324671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120143.P8125556882345324671

namespace A120143

/-- `Δ[floor(3/2*a(n-1))]` -/
def P8125556882345324671.Spec : Prop :=
  ∀ n, P8125556882345324671.a n = A120143 (n + 1)

end A120143

/-! ## A120143.P17421367946208402497

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=34`
-/

namespace A120143.P17421367946208402497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [34] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120143.P17421367946208402497

namespace A120143

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P17421367946208402497.Spec : Prop :=
  ∀ n, P17421367946208402497.a n = A120143 (n + 1)

theorem P17421367946208402497.correct : P17421367946208402497.Spec := by
  intro n
  simp only [A120143, Nat.add_sub_cancel, A120143.P17421367946208402497.f1, A120143.P17421367946208402497.a, A120143.P1066220947197303015.f1, A120143.P1066220947197303015.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120143

/-! ## A120143.P4443560529957917222

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=35`
-/

namespace A120143.P4443560529957917222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120143.P4443560529957917222

namespace A120143

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P4443560529957917222.Spec : Prop :=
  ∀ n, P4443560529957917222.a n = A120143 (n + 1)

end A120143

/-! ## A120143.P4598754447823760638

`Δ[(3*a(n-1)-gcd(2, a(n-1)))/2]` with `a(0)=36`
-/

namespace A120143.P4598754447823760638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [36] fun n f1 =>
  (3 * f1 (n - 1) - (Int.gcd 2 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120143.P4598754447823760638

namespace A120143

/-- `Δ[(3*a(n-1)-gcd(2, a(n-1)))/2]` -/
def P4598754447823760638.Spec : Prop :=
  ∀ n, P4598754447823760638.a n = (A120143 (n + 1) : ℚ)

end A120143

/-!
# A120144: a(n) = 19 + floor( Sum_{j=1..n-1} a(j) / 2 ).

The programs for A120144, the canonical program `A120144.P7343716795490026098` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120144 has offset 1).

The definition of A120144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120144.P7343716795490026098

`Δ[ceil(3/2*a(n-1))]` with `a(0)=37`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120144

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P7343716795490026098.Spec : Prop :=
  ∀ n, P7343716795490026098.a n = A120144 (n + 1)

theorem P7343716795490026098.correct : P7343716795490026098.Spec := by
  intro n
  simp only [A120144, Nat.add_sub_cancel]

end A120144

/-! ## A120144.P16966496104516421795

`Δ[floor(3/2*a(n-1))]` with `a(0)=38`
-/

namespace A120144.P16966496104516421795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [38] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120144.P16966496104516421795

namespace A120144

/-- `Δ[floor(3/2*a(n-1))]` -/
def P16966496104516421795.Spec : Prop :=
  ∀ n, P16966496104516421795.a n = A120144 (n + 1)

end A120144

/-! ## A120144.P7955911358722154302

`Δ[round(3/2*a(n-1))]` with `a(0)=37`
-/

namespace A120144.P7955911358722154302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120144.P7955911358722154302

namespace A120144

/-- `Δ[round(3/2*a(n-1))]` -/
def P7955911358722154302.Spec : Prop :=
  ∀ n, P7955911358722154302.a n = A120144 (n + 1)

end A120144

/-! ## A120144.P3631185101620359302

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=37`
-/

namespace A120144.P3631185101620359302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120144.P3631185101620359302

namespace A120144

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P3631185101620359302.Spec : Prop :=
  ∀ n, P3631185101620359302.a n = A120144 (n + 1)

theorem P3631185101620359302.correct : P3631185101620359302.Spec := by
  intro n
  simp only [A120144, Nat.add_sub_cancel, A120144.P3631185101620359302.f1, A120144.P3631185101620359302.a, A120144.P7343716795490026098.f1, A120144.P7343716795490026098.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120144

/-! ## A120144.P1308013132002311326

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=38`
-/

namespace A120144.P1308013132002311326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [38] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120144.P1308013132002311326

namespace A120144

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P1308013132002311326.Spec : Prop :=
  ∀ n, P1308013132002311326.a n = A120144 (n + 1)

end A120144

/-!
# A120145: a(n) = 20 + floor( (1 + Sum_{j=1..n-1} a(j)) / 2 ).

The programs for A120145, the canonical program `A120145.P7810557213126502684` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120145 has offset 1).

The definition of A120145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120145.P7810557213126502684

`Δ[ceil(3/2*a(n-1))]` with `a(0)=40`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120145

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P7810557213126502684.Spec : Prop :=
  ∀ n, P7810557213126502684.a n = A120145 (n + 1)

theorem P7810557213126502684.correct : P7810557213126502684.Spec := by
  intro n
  simp only [A120145, Nat.add_sub_cancel]

end A120145

/-! ## A120145.P6714338641726224541

`Δ[floor(3/2*a(n-1))]` with `a(0)=41`
-/

namespace A120145.P6714338641726224541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120145.P6714338641726224541

namespace A120145

/-- `Δ[floor(3/2*a(n-1))]` -/
def P6714338641726224541.Spec : Prop :=
  ∀ n, P6714338641726224541.a n = A120145 (n + 1)

end A120145

/-! ## A120145.P16874333051250990241

`Δ[round(3/2*a(n-1))]` with `a(0)=40`
-/

namespace A120145.P16874333051250990241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [40] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120145.P16874333051250990241

namespace A120145

/-- `Δ[round(3/2*a(n-1))]` -/
def P16874333051250990241.Spec : Prop :=
  ∀ n, P16874333051250990241.a n = A120145 (n + 1)

end A120145

/-! ## A120145.P9706301955804773556

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=40`
-/

namespace A120145.P9706301955804773556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [40] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120145.P9706301955804773556

namespace A120145

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P9706301955804773556.Spec : Prop :=
  ∀ n, P9706301955804773556.a n = A120145 (n + 1)

theorem P9706301955804773556.correct : P9706301955804773556.Spec := by
  intro n
  simp only [A120145, Nat.add_sub_cancel, A120145.P9706301955804773556.f1, A120145.P9706301955804773556.a, A120145.P7810557213126502684.f1, A120145.P7810557213126502684.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120145

/-! ## A120145.P545400253607729919

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=41`
-/

namespace A120145.P545400253607729919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120145.P545400253607729919

namespace A120145

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P545400253607729919.Spec : Prop :=
  ∀ n, P545400253607729919.a n = A120145 (n + 1)

end A120145

/-! ## A120145.P14450233812467040692

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=40`
-/

namespace A120145.P14450233812467040692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [40] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120145.P14450233812467040692

namespace A120145

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P14450233812467040692.Spec : Prop :=
  ∀ n, P14450233812467040692.a n = A120145 (n + 1)

end A120145

/-!
# A120146: a(n) = 22 + floor( Sum_{j=1..n-1} a(j)/2 ).

The programs for A120146, the canonical program `A120146.P13754317161688892535` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120146 has offset 1).

The definition of A120146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120146.P13754317161688892535

`Δ[ceil(3/2*a(n-1))]` with `a(0)=43`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120146

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P13754317161688892535.Spec : Prop :=
  ∀ n, P13754317161688892535.a n = A120146 (n + 1)

theorem P13754317161688892535.correct : P13754317161688892535.Spec := by
  intro n
  simp only [A120146, Nat.add_sub_cancel]

end A120146

/-! ## A120146.P11925162010945964787

`Δ[round(3/2*a(n-1))]` with `a(0)=43`
-/

namespace A120146.P11925162010945964787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [43] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120146.P11925162010945964787

namespace A120146

/-- `Δ[round(3/2*a(n-1))]` -/
def P11925162010945964787.Spec : Prop :=
  ∀ n, P11925162010945964787.a n = A120146 (n + 1)

end A120146

/-! ## A120146.P15168118253191671033

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=43`
-/

namespace A120146.P15168118253191671033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [43] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120146.P15168118253191671033

namespace A120146

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P15168118253191671033.Spec : Prop :=
  ∀ n, P15168118253191671033.a n = A120146 (n + 1)

theorem P15168118253191671033.correct : P15168118253191671033.Spec := by
  intro n
  simp only [A120146, Nat.add_sub_cancel, A120146.P15168118253191671033.f1, A120146.P15168118253191671033.a, A120146.P13754317161688892535.f1, A120146.P13754317161688892535.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120146

/-! ## A120146.P15798570149300900373

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=44`
-/

namespace A120146.P15798570149300900373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120146.P15798570149300900373

namespace A120146

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P15798570149300900373.Spec : Prop :=
  ∀ n, P15798570149300900373.a n = A120146 (n + 1)

end A120146

/-! ## A120146.P8156885480661409516

`Δ[(3*a(n-1)-gcd(2, a(n-1)))/2]` with `a(0)=45`
-/

namespace A120146.P8156885480661409516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [45] fun n f1 =>
  (3 * f1 (n - 1) - (Int.gcd 2 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120146.P8156885480661409516

namespace A120146

/-- `Δ[(3*a(n-1)-gcd(2, a(n-1)))/2]` -/
def P8156885480661409516.Spec : Prop :=
  ∀ n, P8156885480661409516.a n = (A120146 (n + 1) : ℚ)

end A120146

/-! ## A120146.P1375285234797970373

`Δ[floor(6*a(n-1)/4)]` with `a(0)=44`
-/

namespace A120146.P1375285234797970373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f1 =>
  ⌊(6 * f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120146.P1375285234797970373

namespace A120146

/-- `Δ[floor(6*a(n-1)/4)]` -/
def P1375285234797970373.Spec : Prop :=
  ∀ n, P1375285234797970373.a n = A120146 (n + 1)

end A120146

/-!
# A120147: a(n) = 23 + floor( 1 + Sum_{j=1..n-1} a(j)/2 ).

The programs for A120147, the canonical program `A120147.P5759028488001045764` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120147 has offset 1).

The definition of A120147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120147.P5759028488001045764

`Δ[ceil(3/2*a(n-1))]` with `a(0)=46`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120147

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P5759028488001045764.Spec : Prop :=
  ∀ n, P5759028488001045764.a n = A120147 (n + 1)

theorem P5759028488001045764.correct : P5759028488001045764.Spec := by
  intro n
  simp only [A120147, Nat.add_sub_cancel]

end A120147

/-! ## A120147.P18248738055483050915

`Δ[round(3/2*a(n-1))]` with `a(0)=46`
-/

namespace A120147.P18248738055483050915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120147.P18248738055483050915

namespace A120147

/-- `Δ[round(3/2*a(n-1))]` -/
def P18248738055483050915.Spec : Prop :=
  ∀ n, P18248738055483050915.a n = A120147 (n + 1)

end A120147

/-! ## A120147.P10123361592648306907

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=46`
-/

namespace A120147.P10123361592648306907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120147.P10123361592648306907

namespace A120147

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P10123361592648306907.Spec : Prop :=
  ∀ n, P10123361592648306907.a n = A120147 (n + 1)

theorem P10123361592648306907.correct : P10123361592648306907.Spec := by
  intro n
  simp only [A120147, Nat.add_sub_cancel, A120147.P10123361592648306907.f1, A120147.P10123361592648306907.a, A120147.P5759028488001045764.f1, A120147.P5759028488001045764.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120147

/-! ## A120147.P11272701603387176808

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=47`
-/

namespace A120147.P11272701603387176808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [47] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120147.P11272701603387176808

namespace A120147

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P11272701603387176808.Spec : Prop :=
  ∀ n, P11272701603387176808.a n = A120147 (n + 1)

end A120147

/-! ## A120147.P14101293265452512338

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=46`
-/

namespace A120147.P14101293265452512338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120147.P14101293265452512338

namespace A120147

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P14101293265452512338.Spec : Prop :=
  ∀ n, P14101293265452512338.a n = A120147 (n + 1)

end A120147

/-!
# A120148: a(n) = 25 + floor( Sum_{j=1..n-1} a(j)/2 ).

The programs for A120148, the canonical program `A120148.P12727748482383713290` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120148 has offset 1).

The definition of A120148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120148.P12727748482383713290

`Δ[floor(3/2*a(n-1))]` with `a(0)=50`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120148

/-- `Δ[floor(3/2*a(n-1))]` -/
def P12727748482383713290.Spec : Prop :=
  ∀ n, P12727748482383713290.a n = A120148 (n + 1)

theorem P12727748482383713290.correct : P12727748482383713290.Spec := by
  intro n
  simp only [A120148, Nat.add_sub_cancel]

end A120148

/-! ## A120148.P1849076224513555265

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=50`
-/

namespace A120148.P1849076224513555265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120148.P1849076224513555265

namespace A120148

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P1849076224513555265.Spec : Prop :=
  ∀ n, P1849076224513555265.a n = A120148 (n + 1)

theorem P1849076224513555265.correct : P1849076224513555265.Spec := by
  intro n
  simp only [A120148, Nat.add_sub_cancel, A120148.P1849076224513555265.f1, A120148.P1849076224513555265.a, A120148.P12727748482383713290.f1, A120148.P12727748482383713290.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120148

/-! ## A120148.P9649910267895279362

`Δ[round(a(n-1)+a(n-1)/2)]` with `a(0)=49`
-/

namespace A120148.P9649910267895279362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120148.P9649910267895279362

namespace A120148

/-- `Δ[round(a(n-1)+a(n-1)/2)]` -/
def P9649910267895279362.Spec : Prop :=
  ∀ n, P9649910267895279362.a n = A120148 (n + 1)

end A120148

/-! ## A120148.P9385131810956610961

`abs(Δ[ceil(3*a(n-1)/2)])` with `a(0)=49`
-/

namespace A120148.P9385131810956610961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  ⌈(3 * f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120148.P9385131810956610961

namespace A120148

/-- `abs(Δ[ceil(3*a(n-1)/2)])` -/
def P9385131810956610961.Spec : Prop :=
  ∀ n, P9385131810956610961.a n = A120148 (n + 1)

end A120148

/-! ## A120148.P5950575626304880403

`Δ[A114119(a(n-1))]` with `a(0)=46`
-/

namespace A120148.P5950575626304880403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  A114119 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120148.P5950575626304880403

namespace A120148

/-- `Δ[A114119(a(n-1))]` -/
def P5950575626304880403.Spec : Prop :=
  ∀ n, P5950575626304880403.a n = A120148 (n + 1)

end A120148

/-!
# A120149: a(n) = 2 + floor((1 + Sum_{j=1..n-1} a(j))/3).

The programs for A120149, the canonical program `A120149.P11453825093994377996` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120149 has offset 1).

The definition of A120149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120149.P11453825093994377996

`Δ[ceil(4/3*a(n-1))]` with `a(0)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120149

/-- `Δ[ceil(4/3*a(n-1))]` -/
def P11453825093994377996.Spec : Prop :=
  ∀ n, P11453825093994377996.a n = A120149 (n + 1)

theorem P11453825093994377996.correct : P11453825093994377996.Spec := by
  intro n
  simp only [A120149, Nat.add_sub_cancel]

end A120149

/-! ## A120149.P14734470003621910227

`Δ[floor(4/3*a(n-1))]` with `a(0)=7`
-/

namespace A120149.P14734470003621910227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  ⌊(4 : ℚ) / 3 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P14734470003621910227

namespace A120149

/-- `Δ[floor(4/3*a(n-1))]` -/
def P14734470003621910227.Spec : Prop :=
  ∀ n, P14734470003621910227.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P11690641019427245005

`Δ[round(4/3*a(n-1))]` with `a(0)=6`
-/

namespace A120149.P11690641019427245005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P11690641019427245005

namespace A120149

/-- `Δ[round(4/3*a(n-1))]` -/
def P11690641019427245005.Spec : Prop :=
  ∀ n, P11690641019427245005.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P13005966558094178002

`Δ[floor(a(n-1)/3+a(n-1)+2)]` with `a(0)=1`
-/

namespace A120149.P13005966558094178002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) / 3 + (f1 (n - 1) + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P13005966558094178002

namespace A120149

/-- `Δ[floor(a(n-1)/3+a(n-1)+2)]` -/
def P13005966558094178002.Spec : Prop :=
  ∀ n, P13005966558094178002.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P6956971201947238459

`Δ[ceil(a(n-1)/3+a(n-1)+1)]` with `a(0)=2`
-/

namespace A120149.P6956971201947238459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) / 3 + (f1 (n - 1) + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P6956971201947238459

namespace A120149

/-- `Δ[ceil(a(n-1)/3+a(n-1)+1)]` -/
def P6956971201947238459.Spec : Prop :=
  ∀ n, P6956971201947238459.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P3820969425311424447

`Δ[A191670(A000124(n+1)+1)]`
-/

namespace A120149.P3820969425311424447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P3820969425311424447

namespace A120149

/-- `Δ[A191670(A000124(n+1)+1)]` -/
def P3820969425311424447.Spec : Prop :=
  ∀ n, P3820969425311424447.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P6668155483479258596

`Δ[A191671(A000124(n+1)+1)]`
-/

namespace A120149.P6668155483479258596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P6668155483479258596

namespace A120149

/-- `Δ[A191671(A000124(n+1)+1)]` -/
def P6668155483479258596.Spec : Prop :=
  ∀ n, P6668155483479258596.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P6610594731113446605

`Δ[A191670(A000217(n+1)+2)]`
-/

namespace A120149.P6610594731113446605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P6610594731113446605

namespace A120149

/-- `Δ[A191670(A000217(n+1)+2)]` -/
def P6610594731113446605.Spec : Prop :=
  ∀ n, P6610594731113446605.a n = A120149 (n + 1)

end A120149

/-! ## A120149.P17193147190501049060

`Δ[A191671(A000217(n+1)+2)]`
-/

namespace A120149.P17193147190501049060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120149.P17193147190501049060

namespace A120149

/-- `Δ[A191671(A000217(n+1)+2)]` -/
def P17193147190501049060.Spec : Prop :=
  ∀ n, P17193147190501049060.a n = A120149 (n + 1)

end A120149

/-!
# A120150: a(n) = 3 + floor((2 + Sum_{j=1..n-1} a(j))/3).

The programs for A120150, the canonical program `A120150.P11854018462621248688` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120150 has offset 1).

The definition of A120150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120150.P11854018462621248688

`Δ[ceil(4/3*a(n-1))]` with `a(0)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120150

/-- `Δ[ceil(4/3*a(n-1))]` -/
def P11854018462621248688.Spec : Prop :=
  ∀ n, P11854018462621248688.a n = A120150 (n + 1)

theorem P11854018462621248688.correct : P11854018462621248688.Spec := by
  intro n
  simp only [A120150, Nat.add_sub_cancel]

end A120150

/-! ## A120150.P17924394228198035949

`Δ[floor(4/3*a(n-1))]` with `a(0)=11`
-/

namespace A120150.P17924394228198035949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  ⌊(4 : ℚ) / 3 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120150.P17924394228198035949

namespace A120150

/-- `Δ[floor(4/3*a(n-1))]` -/
def P17924394228198035949.Spec : Prop :=
  ∀ n, P17924394228198035949.a n = A120150 (n + 1)

end A120150

/-! ## A120150.P10805990019780826129

`Δ[round(4/3*a(n-1))]` with `a(0)=10`
-/

namespace A120150.P10805990019780826129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120150.P10805990019780826129

namespace A120150

/-- `Δ[round(4/3*a(n-1))]` -/
def P10805990019780826129.Spec : Prop :=
  ∀ n, P10805990019780826129.a n = A120150 (n + 1)

end A120150

/-! ## A120150.P6657768504433549000

`Δ[ceil(a(n-1)/3+a(n-1)+3)]` with `a(0)=0`
-/

namespace A120150.P6657768504433549000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) / 3 + (f1 (n - 1) + 3 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120150.P6657768504433549000

namespace A120150

/-- `Δ[ceil(a(n-1)/3+a(n-1)+3)]` -/
def P6657768504433549000.Spec : Prop :=
  ∀ n, P6657768504433549000.a n = A120150 (n + 1)

end A120150

/-! ## A120150.P17071829073148788677

`Δ[floor(a(n-1)/3+a(n-1)+3)]` with `a(0)=2`
-/

namespace A120150.P17071829073148788677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) / 3 + (f1 (n - 1) + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120150.P17071829073148788677

namespace A120150

/-- `Δ[floor(a(n-1)/3+a(n-1)+3)]` -/
def P17071829073148788677.Spec : Prop :=
  ∀ n, P17071829073148788677.a n = A120150 (n + 1)

end A120150

/-! ## A120150.P3123161879699594371

`Δ[A191672(A167614(n+1))]`
-/

namespace A120150.P3123161879699594371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191672 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120150.P3123161879699594371

namespace A120150

/-- `Δ[A191672(A167614(n+1))]` -/
def P3123161879699594371.Spec : Prop :=
  ∀ n, P3123161879699594371.a n = A120150 (n + 1)

end A120150

/-!
# A120151: a(n) = 5 + floor( Sum_{j=1..n-1} a(j)/3 ).

The programs for A120151, the canonical program `A120151.P10423610431758383697` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120151 has offset 1).

The definition of A120151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120151.P10423610431758383697

`Δ[floor(4/3*a(n-1))]` with `a(0)=15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120151

/-- `Δ[floor(4/3*a(n-1))]` -/
def P10423610431758383697.Spec : Prop :=
  ∀ n, P10423610431758383697.a n = A120151 (n + 1)

theorem P10423610431758383697.correct : P10423610431758383697.Spec := by
  intro n
  simp only [A120151, Nat.add_sub_cancel]

end A120151

/-! ## A120151.P8284699160061908551

`Δ[round(4/3*a(n-1))]` with `a(0)=14`
-/

namespace A120151.P8284699160061908551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P8284699160061908551

namespace A120151

/-- `Δ[round(4/3*a(n-1))]` -/
def P8284699160061908551.Spec : Prop :=
  ∀ n, P8284699160061908551.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P13344370045913821618

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=13`
-/

namespace A120151.P13344370045913821618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P13344370045913821618

namespace A120151

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P13344370045913821618.Spec : Prop :=
  ∀ n, P13344370045913821618.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P4703772288155550830

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=15`
-/

namespace A120151.P4703772288155550830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P4703772288155550830

namespace A120151

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P4703772288155550830.Spec : Prop :=
  ∀ n, P4703772288155550830.a n = A120151 (n + 1)

theorem P4703772288155550830.correct : P4703772288155550830.Spec := by
  intro n
  simp only [A120151, Nat.add_sub_cancel, A120151.P4703772288155550830.f1, A120151.P4703772288155550830.a, A120151.P10423610431758383697.f1, A120151.P10423610431758383697.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120151

/-! ## A120151.P6507278271874537686

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=14`
-/

namespace A120151.P6507278271874537686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P6507278271874537686

namespace A120151

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P6507278271874537686.Spec : Prop :=
  ∀ n, P6507278271874537686.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P2520591803962933322

`Δ[A191670(A055999(n)+10)]`
-/

namespace A120151.P2520591803962933322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P2520591803962933322

namespace A120151

/-- `Δ[A191670(A055999(n)+10)]` -/
def P2520591803962933322.Spec : Prop :=
  ∀ n, P2520591803962933322.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P7064984506833767497

`Δ[A191672(A167614(n+2)+1)]`
-/

namespace A120151.P7064984506833767497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191672 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P7064984506833767497

namespace A120151

/-- `Δ[A191672(A167614(n+2)+1)]` -/
def P7064984506833767497.Spec : Prop :=
  ∀ n, P7064984506833767497.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P13079527017386211932

`Δ[A191670(A000124(n+3)+3)]`
-/

namespace A120151.P13079527017386211932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A000124 (n + 3) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P13079527017386211932

namespace A120151

/-- `Δ[A191670(A000124(n+3)+3)]` -/
def P13079527017386211932.Spec : Prop :=
  ∀ n, P13079527017386211932.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P10357267139880839029

`Δ[A191673(A167487(n+2)-3)]`
-/

namespace A120151.P10357267139880839029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191673 (A167487 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P10357267139880839029

namespace A120151

/-- `Δ[A191673(A167487(n+2)-3)]` -/
def P10357267139880839029.Spec : Prop :=
  ∀ n, P10357267139880839029.a n = A120151 (n + 1)

end A120151

/-! ## A120151.P3744885843725104209

`Δ[A191671(A038722(∑[n+4]+3))]`
-/

namespace A120151.P3744885843725104209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A038722 (∑ j ∈ Finset.range (n + 1), f2 j + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120151.P3744885843725104209

namespace A120151

/-- `Δ[A191671(A038722(∑[n+4]+3))]` -/
def P3744885843725104209.Spec : Prop :=
  ∀ n, P3744885843725104209.a n = A120151 (n + 1)

end A120151

/-!
# A120152: a(n) = 6 + floor((1 + Sum_{j=1..n-1} a(j))/3).

The programs for A120152, the canonical program `A120152.P16941686523490439659` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120152 has offset 1).

The definition of A120152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120152.P16941686523490439659

`Δ[ceil(4/3*a(n-1))]` with `a(0)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120152

/-- `Δ[ceil(4/3*a(n-1))]` -/
def P16941686523490439659.Spec : Prop :=
  ∀ n, P16941686523490439659.a n = A120152 (n + 1)

theorem P16941686523490439659.correct : P16941686523490439659.Spec := by
  intro n
  simp only [A120152, Nat.add_sub_cancel]

end A120152

/-! ## A120152.P13147366839671692334

`Δ[floor(4/3*a(n-1))]` with `a(0)=19`
-/

namespace A120152.P13147366839671692334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  ⌊(4 : ℚ) / 3 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120152.P13147366839671692334

namespace A120152

/-- `Δ[floor(4/3*a(n-1))]` -/
def P13147366839671692334.Spec : Prop :=
  ∀ n, P13147366839671692334.a n = A120152 (n + 1)

end A120152

/-! ## A120152.P7295546652235025574

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=17`
-/

namespace A120152.P7295546652235025574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120152.P7295546652235025574

namespace A120152

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P7295546652235025574.Spec : Prop :=
  ∀ n, P7295546652235025574.a n = A120152 (n + 1)

theorem P7295546652235025574.correct : P7295546652235025574.Spec := by
  intro n
  simp only [A120152, Nat.add_sub_cancel, A120152.P7295546652235025574.f1, A120152.P7295546652235025574.a, A120152.P16941686523490439659.f1, A120152.P16941686523490439659.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120152

/-! ## A120152.P18249879189249067257

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=19`
-/

namespace A120152.P18249879189249067257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120152.P18249879189249067257

namespace A120152

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P18249879189249067257.Spec : Prop :=
  ∀ n, P18249879189249067257.a n = A120152 (n + 1)

end A120152

/-! ## A120152.P1475667847105216623

`Δ[round(a(n-1)+a(n-1)/3)]` with `a(0)=18`
-/

namespace A120152.P1475667847105216623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [18] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120152.P1475667847105216623

namespace A120152

/-- `Δ[round(a(n-1)+a(n-1)/3)]` -/
def P1475667847105216623.Spec : Prop :=
  ∀ n, P1475667847105216623.a n = A120152 (n + 1)

end A120152

/-!
# A120153: a(n) = 7 + floor((2 + Sum_{j=1..n-1} a(j))/3).

The programs for A120153, the canonical program `A120153.P7937385352143293883` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120153 has offset 1).

The definition of A120153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120153.P7937385352143293883

`Δ[ceil(4*a(n-1)/3)]` with `a(0)=21`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120153

/-- `Δ[ceil(4*a(n-1)/3)]` -/
def P7937385352143293883.Spec : Prop :=
  ∀ n, P7937385352143293883.a n = A120153 (n + 1)

theorem P7937385352143293883.correct : P7937385352143293883.Spec := by
  intro n
  simp only [A120153, Nat.add_sub_cancel]

end A120153

/-! ## A120153.P7003856255838178356

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=21`
-/

namespace A120153.P7003856255838178356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P7003856255838178356

namespace A120153

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P7003856255838178356.Spec : Prop :=
  ∀ n, P7003856255838178356.a n = A120153 (n + 1)

theorem P7003856255838178356.correct : P7003856255838178356.Spec := by
  intro n
  simp only [A120153, Nat.add_sub_cancel, A120153.P7003856255838178356.f1, A120153.P7003856255838178356.a, A120153.P7937385352143293883.f1, A120153.P7937385352143293883.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120153

/-! ## A120153.P8321283780045556116

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=23`
-/

namespace A120153.P8321283780045556116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P8321283780045556116

namespace A120153

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P8321283780045556116.Spec : Prop :=
  ∀ n, P8321283780045556116.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P9564944555157887402

`Δ[a(n-1)-floor(-(a(n-1)/3))]` with `a(0)=21`
-/

namespace A120153.P9564944555157887402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  f1 (n - 1) - ⌊-((f1 (n - 1) : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P9564944555157887402

namespace A120153

/-- `Δ[a(n-1)-floor(-(a(n-1)/3))]` -/
def P9564944555157887402.Spec : Prop :=
  ∀ n, P9564944555157887402.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P15273962236484122646

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=22`
-/

namespace A120153.P15273962236484122646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P15273962236484122646

namespace A120153

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P15273962236484122646.Spec : Prop :=
  ∀ n, P15273962236484122646.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P11263844448449233829

`Δ[floor(4*(a(n-1)+4)/3)]` with `a(0)=7`
-/

namespace A120153.P11263844448449233829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  ⌊(4 * (f1 (n - 1) + 4) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P11263844448449233829

namespace A120153

/-- `Δ[floor(4*(a(n-1)+4)/3)]` -/
def P11263844448449233829.Spec : Prop :=
  ∀ n, P11263844448449233829.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P8349366212973286123

`Δ[A191670(A056115(n)+21)]`
-/

namespace A120153.P8349366212973286123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A056115 n + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P8349366212973286123

namespace A120153

/-- `Δ[A191670(A056115(n)+21)]` -/
def P8349366212973286123.Spec : Prop :=
  ∀ n, P8349366212973286123.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P6566429233919893388

`Δ[A191670(A000124(n+5)+5)]`
-/

namespace A120153.P6566429233919893388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A000124 (n + 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P6566429233919893388

namespace A120153

/-- `Δ[A191670(A000124(n+5)+5)]` -/
def P6566429233919893388.Spec : Prop :=
  ∀ n, P6566429233919893388.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P6674408153914158763

`Δ[A191673(A000096(n+4)+7)]`
-/

namespace A120153.P6674408153914158763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191673 (A000096 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P6674408153914158763

namespace A120153

/-- `Δ[A191673(A000096(n+4)+7)]` -/
def P6674408153914158763.Spec : Prop :=
  ∀ n, P6674408153914158763.a n = A120153 (n + 1)

end A120153

/-! ## A120153.P9017505747753235923

`Δ[A191670(A000217(n+5)+6)]`
-/

namespace A120153.P9017505747753235923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A000217 (n + 5) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120153.P9017505747753235923

namespace A120153

/-- `Δ[A191670(A000217(n+5)+6)]` -/
def P9017505747753235923.Spec : Prop :=
  ∀ n, P9017505747753235923.a n = A120153 (n + 1)

end A120153

/-!
# A120154: a(n) = 9 + floor( Sum_{j=1..n-1} a(j)/3 ).

The programs for A120154, the canonical program `A120154.P10029418763436702761` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120154 has offset 1).

The definition of A120154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120154.P10029418763436702761

`Δ[ceil(4/3*a(n-1))]` with `a(0)=25`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120154

/-- `Δ[ceil(4/3*a(n-1))]` -/
def P10029418763436702761.Spec : Prop :=
  ∀ n, P10029418763436702761.a n = A120154 (n + 1)

theorem P10029418763436702761.correct : P10029418763436702761.Spec := by
  intro n
  simp only [A120154, Nat.add_sub_cancel]

end A120154

/-! ## A120154.P17362778916161074879

`Δ[floor((1/3+1)*a(n-1))]` with `a(0)=27`
-/

namespace A120154.P17362778916161074879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  ⌊((1 : ℚ) / 3 + 1) * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P17362778916161074879

namespace A120154

/-- `Δ[floor((1/3+1)*a(n-1))]` -/
def P17362778916161074879.Spec : Prop :=
  ∀ n, P17362778916161074879.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P17586854813517070926

`Δ[floor(2*2/3*a(n-1))]` with `a(0)=27`
-/

namespace A120154.P17586854813517070926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  ⌊2 * ((2 : ℚ) / 3 * (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P17586854813517070926

namespace A120154

/-- `Δ[floor(2*2/3*a(n-1))]` -/
def P17586854813517070926.Spec : Prop :=
  ∀ n, P17586854813517070926.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P11232596029272524253

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=25`
-/

namespace A120154.P11232596029272524253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P11232596029272524253

namespace A120154

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P11232596029272524253.Spec : Prop :=
  ∀ n, P11232596029272524253.a n = A120154 (n + 1)

theorem P11232596029272524253.correct : P11232596029272524253.Spec := by
  intro n
  simp only [A120154, Nat.add_sub_cancel, A120154.P11232596029272524253.f1, A120154.P11232596029272524253.a, A120154.P10029418763436702761.f1, A120154.P10029418763436702761.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120154

/-! ## A120154.P5387020782066932360

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=27`
-/

namespace A120154.P5387020782066932360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P5387020782066932360

namespace A120154

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P5387020782066932360.Spec : Prop :=
  ∀ n, P5387020782066932360.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P10983235725327766685

`ceil(A191671(A000217(n+6)+7)/3)`
-/

namespace A120154.P10983235725327766685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191671 (A000217 (n + 6) + 7).toNat : ℚ) / 3⌉

end

end A120154.P10983235725327766685

namespace A120154

/-- `ceil(A191671(A000217(n+6)+7)/3)` -/
def P10983235725327766685.Spec : Prop :=
  ∀ n, P10983235725327766685.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P6931674517420871802

`Δ[A191673(A167487(n+5))]`
-/

namespace A120154.P6931674517420871802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191673 (A167487 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P6931674517420871802

namespace A120154

/-- `Δ[A191673(A167487(n+5))]` -/
def P6931674517420871802.Spec : Prop :=
  ∀ n, P6931674517420871802.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P7687610616789417262

`Δ[A191672(A167614(n+5)+4)]`
-/

namespace A120154.P7687610616789417262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191672 (A167614 (n + 5) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P7687610616789417262

namespace A120154

/-- `Δ[A191672(A167614(n+5)+4)]` -/
def P7687610616789417262.Spec : Prop :=
  ∀ n, P7687610616789417262.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P6797567019848517535

`Δ[A191671(A000124(n+6)+6)]`
-/

namespace A120154.P6797567019848517535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A000124 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P6797567019848517535

namespace A120154

/-- `Δ[A191671(A000124(n+6)+6)]` -/
def P6797567019848517535.Spec : Prop :=
  ∀ n, P6797567019848517535.a n = A120154 (n + 1)

end A120154

/-! ## A120154.P1310502198653784072

`Δ[A191671(A000217(n+6)+7)]`
-/

namespace A120154.P1310502198653784072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A000217 (n + 6) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120154.P1310502198653784072

namespace A120154

/-- `Δ[A191671(A000217(n+6)+7)]` -/
def P1310502198653784072.Spec : Prop :=
  ∀ n, P1310502198653784072.a n = A120154 (n + 1)

end A120154

/-!
# A120155: a(n) = 10 + floor( (1 + Sum_{j=1..n-1} a(j) )/3 ).

The programs for A120155, the canonical program `A120155.P13666416558887966287` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120155 has offset 1).

The definition of A120155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120155.P13666416558887966287

`Δ[floor(4/3*a(n-1))]` with `a(0)=31`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120155

/-- `Δ[floor(4/3*a(n-1))]` -/
def P13666416558887966287.Spec : Prop :=
  ∀ n, P13666416558887966287.a n = A120155 (n + 1)

theorem P13666416558887966287.correct : P13666416558887966287.Spec := by
  intro n
  simp only [A120155, Nat.add_sub_cancel]

end A120155

/-! ## A120155.P4667291394507307948

`Δ[round(4*a(n-1)/3)]` with `a(0)=30`
-/

namespace A120155.P4667291394507307948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  SequenceMachineLib.roundAway (4 * ((f1 (n - 1) : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120155.P4667291394507307948

namespace A120155

/-- `Δ[round(4*a(n-1)/3)]` -/
def P4667291394507307948.Spec : Prop :=
  ∀ n, P4667291394507307948.a n = A120155 (n + 1)

end A120155

/-! ## A120155.P18439425315065913087

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=29`
-/

namespace A120155.P18439425315065913087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120155.P18439425315065913087

namespace A120155

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P18439425315065913087.Spec : Prop :=
  ∀ n, P18439425315065913087.a n = A120155 (n + 1)

end A120155

/-! ## A120155.P9297326976212728371

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=31`
-/

namespace A120155.P9297326976212728371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [31] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120155.P9297326976212728371

namespace A120155

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P9297326976212728371.Spec : Prop :=
  ∀ n, P9297326976212728371.a n = A120155 (n + 1)

theorem P9297326976212728371.correct : P9297326976212728371.Spec := by
  intro n
  simp only [A120155, Nat.add_sub_cancel, A120155.P9297326976212728371.f1, A120155.P9297326976212728371.a, A120155.P13666416558887966287.f1, A120155.P13666416558887966287.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120155

/-! ## A120155.P1855504380857274481

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=30`
-/

namespace A120155.P1855504380857274481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120155.P1855504380857274481

namespace A120155

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P1855504380857274481.Spec : Prop :=
  ∀ n, P1855504380857274481.a n = A120155 (n + 1)

end A120155

/-!
# A120156: a(n) = 11 + floor((2 + Sum_{j=1..n-1} a(j))/3).

The programs for A120156, the canonical program `A120156.P12518273106280114202` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120156 has offset 1).

The definition of A120156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120156.P12518273106280114202

`Δ[floor((1/3+1)*a(n-1))]` with `a(0)=35`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120156

/-- `Δ[floor((1/3+1)*a(n-1))]` -/
def P12518273106280114202.Spec : Prop :=
  ∀ n, P12518273106280114202.a n = A120156 (n + 1)

theorem P12518273106280114202.correct : P12518273106280114202.Spec := by
  intro n
  simp only [A120156, Nat.add_sub_cancel]

end A120156

/-! ## A120156.P4863178877997459116

`Δ[floor(2*2/3*a(n-1))]` with `a(0)=35`
-/

namespace A120156.P4863178877997459116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35] fun n f1 =>
  ⌊2 * ((2 : ℚ) / 3 * (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120156.P4863178877997459116

namespace A120156

/-- `Δ[floor(2*2/3*a(n-1))]` -/
def P4863178877997459116.Spec : Prop :=
  ∀ n, P4863178877997459116.a n = A120156 (n + 1)

theorem P4863178877997459116.correct : P4863178877997459116.Spec := by
  intro n
  simp only [A120156, Nat.add_sub_cancel, A120156.P4863178877997459116.f1, A120156.P4863178877997459116.a, A120156.P12518273106280114202.f1, A120156.P12518273106280114202.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120156

/-! ## A120156.P547765683749087293

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=33`
-/

namespace A120156.P547765683749087293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [33] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120156.P547765683749087293

namespace A120156

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P547765683749087293.Spec : Prop :=
  ∀ n, P547765683749087293.a n = A120156 (n + 1)

end A120156

/-! ## A120156.P13748468200457423928

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=35`
-/

namespace A120156.P13748468200457423928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120156.P13748468200457423928

namespace A120156

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P13748468200457423928.Spec : Prop :=
  ∀ n, P13748468200457423928.a n = A120156 (n + 1)

theorem P13748468200457423928.correct : P13748468200457423928.Spec := by
  intro n
  simp only [A120156, Nat.add_sub_cancel, A120156.P13748468200457423928.f1, A120156.P13748468200457423928.a, A120156.P12518273106280114202.f1, A120156.P12518273106280114202.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120156

/-! ## A120156.P15224210848727070322

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=34`
-/

namespace A120156.P15224210848727070322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [34] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120156.P15224210848727070322

namespace A120156

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P15224210848727070322.Spec : Prop :=
  ∀ n, P15224210848727070322.a n = A120156 (n + 1)

end A120156

/-!
# A120157: a(n) = 13 + floor(Sum_{j=1..n-1} a(j)/3).

The programs for A120157, the canonical program `A120157.P14834191283190154991` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120157 has offset 1).

The definition of A120157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120157.P14834191283190154991

`Δ[floor((1/3+1)*a(n-1))]` with `a(0)=39`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120157

/-- `Δ[floor((1/3+1)*a(n-1))]` -/
def P14834191283190154991.Spec : Prop :=
  ∀ n, P14834191283190154991.a n = A120157 (n + 1)

theorem P14834191283190154991.correct : P14834191283190154991.Spec := by
  intro n
  simp only [A120157, Nat.add_sub_cancel]

end A120157

/-! ## A120157.P16268287002143291695

`Δ[floor(2*2/3*a(n-1))]` with `a(0)=39`
-/

namespace A120157.P16268287002143291695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [39] fun n f1 =>
  ⌊2 * ((2 : ℚ) / 3 * (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120157.P16268287002143291695

namespace A120157

/-- `Δ[floor(2*2/3*a(n-1))]` -/
def P16268287002143291695.Spec : Prop :=
  ∀ n, P16268287002143291695.a n = A120157 (n + 1)

theorem P16268287002143291695.correct : P16268287002143291695.Spec := by
  intro n
  simp only [A120157, Nat.add_sub_cancel, A120157.P16268287002143291695.f1, A120157.P16268287002143291695.a, A120157.P14834191283190154991.f1, A120157.P14834191283190154991.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120157

/-! ## A120157.P694173802718304315

`Δ[a(n-1)+ceil(a(n-1)/3)]` with `a(0)=37`
-/

namespace A120157.P694173802718304315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  f1 (n - 1) + ⌈(f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120157.P694173802718304315

namespace A120157

/-- `Δ[a(n-1)+ceil(a(n-1)/3)]` -/
def P694173802718304315.Spec : Prop :=
  ∀ n, P694173802718304315.a n = A120157 (n + 1)

end A120157

/-! ## A120157.P3315625492275742600

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=39`
-/

namespace A120157.P3315625492275742600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [39] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120157.P3315625492275742600

namespace A120157

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P3315625492275742600.Spec : Prop :=
  ∀ n, P3315625492275742600.a n = A120157 (n + 1)

theorem P3315625492275742600.correct : P3315625492275742600.Spec := by
  intro n
  simp only [A120157, Nat.add_sub_cancel, A120157.P3315625492275742600.f1, A120157.P3315625492275742600.a, A120157.P14834191283190154991.f1, A120157.P14834191283190154991.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120157

/-! ## A120157.P12829352738879910175

`Δ[ceil(4*a(n-1)/3)]` with `a(0)=37`
-/

namespace A120157.P12829352738879910175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  ⌈(4 * f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120157.P12829352738879910175

namespace A120157

/-- `Δ[ceil(4*a(n-1)/3)]` -/
def P12829352738879910175.Spec : Prop :=
  ∀ n, P12829352738879910175.a n = A120157 (n + 1)

end A120157

/-!
# A120158: a(n) = 14 + floor((1 + Sum_{j=1..n-1} a(j))/3).

The programs for A120158, the canonical program `A120158.P5000689038653167065` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120158 has offset 1).

The definition of A120158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120158.P5000689038653167065

`Δ[floor((1/3+1)*a(n-1))]` with `a(0)=43`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120158

/-- `Δ[floor((1/3+1)*a(n-1))]` -/
def P5000689038653167065.Spec : Prop :=
  ∀ n, P5000689038653167065.a n = A120158 (n + 1)

theorem P5000689038653167065.correct : P5000689038653167065.Spec := by
  intro n
  simp only [A120158, Nat.add_sub_cancel]

end A120158

/-! ## A120158.P7669106467414038589

`Δ[floor(2*2/3*a(n-1))]` with `a(0)=43`
-/

namespace A120158.P7669106467414038589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [43] fun n f1 =>
  ⌊2 * ((2 : ℚ) / 3 * (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120158.P7669106467414038589

namespace A120158

/-- `Δ[floor(2*2/3*a(n-1))]` -/
def P7669106467414038589.Spec : Prop :=
  ∀ n, P7669106467414038589.a n = A120158 (n + 1)

theorem P7669106467414038589.correct : P7669106467414038589.Spec := by
  intro n
  simp only [A120158, Nat.add_sub_cancel, A120158.P7669106467414038589.f1, A120158.P7669106467414038589.a, A120158.P5000689038653167065.f1, A120158.P5000689038653167065.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120158

/-! ## A120158.P6592405114758101005

`Δ[a(n-1)+ceil(a(n-1)/3)]` with `a(0)=41`
-/

namespace A120158.P6592405114758101005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41] fun n f1 =>
  f1 (n - 1) + ⌈(f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120158.P6592405114758101005

namespace A120158

/-- `Δ[a(n-1)+ceil(a(n-1)/3)]` -/
def P6592405114758101005.Spec : Prop :=
  ∀ n, P6592405114758101005.a n = A120158 (n + 1)

end A120158

/-! ## A120158.P7559373985246094143

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=42`
-/

namespace A120158.P7559373985246094143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [42] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120158.P7559373985246094143

namespace A120158

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P7559373985246094143.Spec : Prop :=
  ∀ n, P7559373985246094143.a n = A120158 (n + 1)

end A120158

/-! ## A120158.P15157319820521890515

`A189726(2*a(n-1))` with `a(0)=14`
-/

namespace A120158.P15157319820521890515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A189726 (2 * a (n - 1)).toNat

end

end A120158.P15157319820521890515

namespace A120158

/-- `A189726(2*a(n-1))` -/
def P15157319820521890515.Spec : Prop :=
  ∀ n, P15157319820521890515.a n = A120158 (n + 1)

end A120158

/-!
# A120159: a(n) = 15 + floor((2 + Sum_{j=1..n-1} a(j))/3).

The programs for A120159, the canonical program `A120159.P1181771165825700638` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120159 has offset 1).

The definition of A120159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120159.P1181771165825700638

`Δ[floor((1/3+1)*a(n-1))]` with `a(0)=47`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120159

/-- `Δ[floor((1/3+1)*a(n-1))]` -/
def P1181771165825700638.Spec : Prop :=
  ∀ n, P1181771165825700638.a n = A120159 (n + 1)

theorem P1181771165825700638.correct : P1181771165825700638.Spec := by
  intro n
  simp only [A120159, Nat.add_sub_cancel]

end A120159

/-! ## A120159.P16044514730296536989

`Δ[ceil(a(n-1)+a(n-1)/3)]` with `a(0)=45`
-/

namespace A120159.P16044514730296536989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [45] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120159.P16044514730296536989

namespace A120159

/-- `Δ[ceil(a(n-1)+a(n-1)/3)]` -/
def P16044514730296536989.Spec : Prop :=
  ∀ n, P16044514730296536989.a n = A120159 (n + 1)

end A120159

/-! ## A120159.P5452941682423345728

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=47`
-/

namespace A120159.P5452941682423345728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [47] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120159.P5452941682423345728

namespace A120159

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P5452941682423345728.Spec : Prop :=
  ∀ n, P5452941682423345728.a n = A120159 (n + 1)

theorem P5452941682423345728.correct : P5452941682423345728.Spec := by
  intro n
  simp only [A120159, Nat.add_sub_cancel, A120159.P5452941682423345728.f1, A120159.P5452941682423345728.a, A120159.P1181771165825700638.f1, A120159.P1181771165825700638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120159

/-! ## A120159.P9766234943089519426

`Δ[round(a(n-1)+a(n-1)/3)]` with `a(0)=46`
-/

namespace A120159.P9766234943089519426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120159.P9766234943089519426

namespace A120159

/-- `Δ[round(a(n-1)+a(n-1)/3)]` -/
def P9766234943089519426.Spec : Prop :=
  ∀ n, P9766234943089519426.a n = A120159 (n + 1)

end A120159

/-! ## A120159.P4062826026580499048

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=46`
-/

namespace A120159.P4062826026580499048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120159.P4062826026580499048

namespace A120159

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P4062826026580499048.Spec : Prop :=
  ∀ n, P4062826026580499048.a n = A120159 (n + 1)

end A120159

/-!
# A120160: a(n) = ceiling(Sum_{i=1..n-1} a(i)/4) for n >= 2 starting with a(1) = 1.

The programs for A120160, the canonical program `A120160.P1881727546114171886` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120160 has offset 1).

The definition of A120160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120160.P1881727546114171886

`Δ[floor(5/4*a(n-1))]` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120160

/-- `Δ[floor(5/4*a(n-1))]` -/
def P1881727546114171886.Spec : Prop :=
  ∀ n, P1881727546114171886.a n = A120160 (n + 1)

theorem P1881727546114171886.correct : P1881727546114171886.Spec := by
  intro n
  simp only [A120160, Nat.add_sub_cancel]

end A120160

/-! ## A120160.P12811413396212670191

`Δ[round(a(n-1)+a(n-1)/4)]` with `a(0)=1, a(1)=2`
-/

namespace A120160.P12811413396212670191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120160.P12811413396212670191

namespace A120160

/-- `Δ[round(a(n-1)+a(n-1)/4)]` -/
def P12811413396212670191.Spec : Prop :=
  ∀ n, P12811413396212670191.a n = A120160 (n + 1)

end A120160

/-! ## A120160.P16199441166482051797

`A245357(n+1)/5`
-/

namespace A120160.P16199441166482051797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245357 (n + 1) : ℚ) / 5

end

end A120160.P16199441166482051797

namespace A120160

/-- `A245357(n+1)/5` -/
def P16199441166482051797.Spec : Prop :=
  ∀ n, P16199441166482051797.a n = (A120160 (n + 1) : ℚ)

end A120160

/-! ## A120160.P5140373934684329008

`round((A182305(n)-1)/5)`
-/

namespace A120160.P5140373934684329008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182305 n - 1 : ℚ) / 5)

end

end A120160.P5140373934684329008

namespace A120160

/-- `round((A182305(n)-1)/5)` -/
def P5140373934684329008.Spec : Prop :=
  ∀ n, P5140373934684329008.a n = A120160 (n + 1)

end A120160

/-! ## A120160.P11347408485041607585

`Δ[round(5*a(n-1)/4)]` with `a(0)=1, a(1)=2`
-/

namespace A120160.P11347408485041607585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((5 * f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120160.P11347408485041607585

namespace A120160

/-- `Δ[round(5*a(n-1)/4)]` -/
def P11347408485041607585.Spec : Prop :=
  ∀ n, P11347408485041607585.a n = A120160 (n + 1)

end A120160

/-!
# A120161: a(n) = 2 + floor((1 + Sum_{j=1..n-1} a(j))/4).

The programs for A120161, the canonical program `A120161.P10188913040541359829` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120161 has offset 1).

The definition of A120161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120161.P10188913040541359829

`Δ[ceil(5/4*a(n-1))]` with `a(0)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120161

/-- `Δ[ceil(5/4*a(n-1))]` -/
def P10188913040541359829.Spec : Prop :=
  ∀ n, P10188913040541359829.a n = A120161 (n + 1)

theorem P10188913040541359829.correct : P10188913040541359829.Spec := by
  intro n
  simp only [A120161, Nat.add_sub_cancel]

end A120161

/-! ## A120161.P16259856008858040364

`Δ[round(5/4*a(n-1))]` with `a(0)=7`
-/

namespace A120161.P16259856008858040364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 4 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P16259856008858040364

namespace A120161

/-- `Δ[round(5/4*a(n-1))]` -/
def P16259856008858040364.Spec : Prop :=
  ∀ n, P16259856008858040364.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P17772929632919064015

`Δ[floor(5/4*a(n-1))]` with `a(0)=9`
-/

namespace A120161.P17772929632919064015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  ⌊(5 : ℚ) / 4 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P17772929632919064015

namespace A120161

/-- `Δ[floor(5/4*a(n-1))]` -/
def P17772929632919064015.Spec : Prop :=
  ∀ n, P17772929632919064015.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P12742226948239531252

`Δ[ceil(a(n-1)+a(n-1)/4)]` with `a(0)=6`
-/

namespace A120161.P12742226948239531252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P12742226948239531252

namespace A120161

/-- `Δ[ceil(a(n-1)+a(n-1)/4)]` -/
def P12742226948239531252.Spec : Prop :=
  ∀ n, P12742226948239531252.a n = A120161 (n + 1)

theorem P12742226948239531252.correct : P12742226948239531252.Spec := by
  intro n
  simp only [A120161, Nat.add_sub_cancel, A120161.P12742226948239531252.f1, A120161.P12742226948239531252.a, A120161.P10188913040541359829.f1, A120161.P10188913040541359829.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120161

/-! ## A120161.P16820557492961745456

`Δ[round(a(n-1)+a(n-1)/4)]` with `a(0)=7`
-/

namespace A120161.P16820557492961745456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P16820557492961745456

namespace A120161

/-- `Δ[round(a(n-1)+a(n-1)/4)]` -/
def P16820557492961745456.Spec : Prop :=
  ∀ n, P16820557492961745456.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P1885907364696634194

`Δ[A191707(A000124(n+1)+1)]`
-/

namespace A120161.P1885907364696634194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P1885907364696634194

namespace A120161

/-- `Δ[A191707(A000124(n+1)+1)]` -/
def P1885907364696634194.Spec : Prop :=
  ∀ n, P1885907364696634194.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P2257994316185547879

`Δ[A191708(A000124(n+1)+1)]`
-/

namespace A120161.P2257994316185547879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P2257994316185547879

namespace A120161

/-- `Δ[A191708(A000124(n+1)+1)]` -/
def P2257994316185547879.Spec : Prop :=
  ∀ n, P2257994316185547879.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P7705870290504895935

`Δ[A191709(A000124(n+1)+1)]`
-/

namespace A120161.P7705870290504895935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P7705870290504895935

namespace A120161

/-- `Δ[A191709(A000124(n+1)+1)]` -/
def P7705870290504895935.Spec : Prop :=
  ∀ n, P7705870290504895935.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P16192437720485563702

`Δ[A191707(A000217(n+1)+2)]`
-/

namespace A120161.P16192437720485563702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P16192437720485563702

namespace A120161

/-- `Δ[A191707(A000217(n+1)+2)]` -/
def P16192437720485563702.Spec : Prop :=
  ∀ n, P16192437720485563702.a n = A120161 (n + 1)

end A120161

/-! ## A120161.P5516348174123244937

`Δ[A191708(A000217(n+1)+2)]`
-/

namespace A120161.P5516348174123244937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120161.P5516348174123244937

namespace A120161

/-- `Δ[A191708(A000217(n+1)+2)]` -/
def P5516348174123244937.Spec : Prop :=
  ∀ n, P5516348174123244937.a n = A120161 (n + 1)

end A120161

/-!
# A120162: a(n) = 3 + floor((2 + Sum_{j=1..n-1} a(j))/4).

The programs for A120162, the canonical program `A120162.P12859056132279063587` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120162 has offset 1).

The definition of A120162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120162.P12859056132279063587

`Δ[ceil(5/4*a(n-1))]` with `a(0)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120162

/-- `Δ[ceil(5/4*a(n-1))]` -/
def P12859056132279063587.Spec : Prop :=
  ∀ n, P12859056132279063587.a n = A120162 (n + 1)

theorem P12859056132279063587.correct : P12859056132279063587.Spec := by
  intro n
  simp only [A120162, Nat.add_sub_cancel]

end A120162

/-! ## A120162.P12553623339454020985

`Δ[ceil(a(n-1)+a(n-1)/4)]` with `a(0)=11`
-/

namespace A120162.P12553623339454020985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P12553623339454020985

namespace A120162

/-- `Δ[ceil(a(n-1)+a(n-1)/4)]` -/
def P12553623339454020985.Spec : Prop :=
  ∀ n, P12553623339454020985.a n = A120162 (n + 1)

theorem P12553623339454020985.correct : P12553623339454020985.Spec := by
  intro n
  simp only [A120162, Nat.add_sub_cancel, A120162.P12553623339454020985.f1, A120162.P12553623339454020985.a, A120162.P12859056132279063587.f1, A120162.P12859056132279063587.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120162

/-! ## A120162.P12539379277950235600

`Δ[round(a(n-1)+a(n-1)/4)]` with `a(0)=12`
-/

namespace A120162.P12539379277950235600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P12539379277950235600

namespace A120162

/-- `Δ[round(a(n-1)+a(n-1)/4)]` -/
def P12539379277950235600.Spec : Prop :=
  ∀ n, P12539379277950235600.a n = A120162 (n + 1)

end A120162

/-! ## A120162.P9807514391697472026

`Δ[floor(a(n-1)+a(n-1)/4)]` with `a(0)=14`
-/

namespace A120162.P9807514391697472026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P9807514391697472026

namespace A120162

/-- `Δ[floor(a(n-1)+a(n-1)/4)]` -/
def P9807514391697472026.Spec : Prop :=
  ∀ n, P9807514391697472026.a n = A120162 (n + 1)

end A120162

/-! ## A120162.P1691586108925503091

`Δ[round(5*a(n-1)/4)]` with `a(0)=12`
-/

namespace A120162.P1691586108925503091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  SequenceMachineLib.roundAway ((5 * f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P1691586108925503091

namespace A120162

/-- `Δ[round(5*a(n-1)/4)]` -/
def P1691586108925503091.Spec : Prop :=
  ∀ n, P1691586108925503091.a n = A120162 (n + 1)

end A120162

/-! ## A120162.P106775848514274544

`Δ[A191711(A167614(n+1))]`
-/

namespace A120162.P106775848514274544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P106775848514274544

namespace A120162

/-- `Δ[A191711(A167614(n+1))]` -/
def P106775848514274544.Spec : Prop :=
  ∀ n, P106775848514274544.a n = A120162 (n + 1)

end A120162

/-! ## A120162.P5884992454621529692

`Δ[A191707(A046691(n)+7)]`
-/

namespace A120162.P5884992454621529692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P5884992454621529692

namespace A120162

/-- `Δ[A191707(A046691(n)+7)]` -/
def P5884992454621529692.Spec : Prop :=
  ∀ n, P5884992454621529692.a n = A120162 (n + 1)

end A120162

/-! ## A120162.P3773527073672582202

`Δ[A191707(A167499(n)+n)]`
-/

namespace A120162.P3773527073672582202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P3773527073672582202

namespace A120162

/-- `Δ[A191707(A167499(n)+n)]` -/
def P3773527073672582202.Spec : Prop :=
  ∀ n, P3773527073672582202.a n = A120162 (n + 1)

end A120162

/-! ## A120162.P14477690173202040503

`Δ[A191709(A167499(n)+n)]`
-/

namespace A120162.P14477690173202040503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120162.P14477690173202040503

namespace A120162

/-- `Δ[A191709(A167499(n)+n)]` -/
def P14477690173202040503.Spec : Prop :=
  ∀ n, P14477690173202040503.a n = A120162 (n + 1)

end A120162

/-!
# A120163: a(n) = 4 + floor((3 + Sum_{j=1..n-1} a(j))/4).

The programs for A120163, the canonical program `A120163.P4559827336660014724` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120163 has offset 1).

The definition of A120163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120163.P4559827336660014724

`Δ[ceil(5/4*a(n-1))]` with `a(0)=16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120163

/-- `Δ[ceil(5/4*a(n-1))]` -/
def P4559827336660014724.Spec : Prop :=
  ∀ n, P4559827336660014724.a n = A120163 (n + 1)

theorem P4559827336660014724.correct : P4559827336660014724.Spec := by
  intro n
  simp only [A120163, Nat.add_sub_cancel]

end A120163

/-! ## A120163.P6194185050947064404

`Δ[floor(5/4*a(n-1))]` with `a(0)=19`
-/

namespace A120163.P6194185050947064404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  ⌊(5 : ℚ) / 4 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P6194185050947064404

namespace A120163

/-- `Δ[floor(5/4*a(n-1))]` -/
def P6194185050947064404.Spec : Prop :=
  ∀ n, P6194185050947064404.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P13610211052235596289

`Δ[ceil(a(n-1)+a(n-1)/4)]` with `a(0)=16`
-/

namespace A120163.P13610211052235596289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P13610211052235596289

namespace A120163

/-- `Δ[ceil(a(n-1)+a(n-1)/4)]` -/
def P13610211052235596289.Spec : Prop :=
  ∀ n, P13610211052235596289.a n = A120163 (n + 1)

theorem P13610211052235596289.correct : P13610211052235596289.Spec := by
  intro n
  simp only [A120163, Nat.add_sub_cancel, A120163.P13610211052235596289.f1, A120163.P13610211052235596289.a, A120163.P4559827336660014724.f1, A120163.P4559827336660014724.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120163

/-! ## A120163.P9035045991823045032

`Δ[floor(a(n-1)+a(n-1)/4)]` with `a(0)=19`
-/

namespace A120163.P9035045991823045032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P9035045991823045032

namespace A120163

/-- `Δ[floor(a(n-1)+a(n-1)/4)]` -/
def P9035045991823045032.Spec : Prop :=
  ∀ n, P9035045991823045032.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P8984643364270822006

`Δ[A191708(A055999(n)+10)]`
-/

namespace A120163.P8984643364270822006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P8984643364270822006

namespace A120163

/-- `Δ[A191708(A055999(n)+10)]` -/
def P8984643364270822006.Spec : Prop :=
  ∀ n, P8984643364270822006.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P2402391893348282648

`Δ[A191707(Δ[A005586(n)]+5)]`
-/

namespace A120163.P2402391893348282648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (f2 (n + 1) - f2 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P2402391893348282648

namespace A120163

/-- `Δ[A191707(Δ[A005586(n)]+5)]` -/
def P2402391893348282648.Spec : Prop :=
  ∀ n, P2402391893348282648.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P9659997978892611051

`Δ[A191711(A167614(n+2)+1)]`
-/

namespace A120163.P9659997978892611051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P9659997978892611051

namespace A120163

/-- `Δ[A191711(A167614(n+2)+1)]` -/
def P9659997978892611051.Spec : Prop :=
  ∀ n, P9659997978892611051.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P5974969199653117734

`Δ[A191707(A166136(n+2)-2)]`
-/

namespace A120163.P5974969199653117734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A166136 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P5974969199653117734

namespace A120163

/-- `Δ[A191707(A166136(n+2)-2)]` -/
def P5974969199653117734.Spec : Prop :=
  ∀ n, P5974969199653117734.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P8659307505845637931

`Δ[A191708(A167487(n+2)-3)]`
-/

namespace A120163.P8659307505845637931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A167487 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P8659307505845637931

namespace A120163

/-- `Δ[A191708(A167487(n+2)-3)]` -/
def P8659307505845637931.Spec : Prop :=
  ∀ n, P8659307505845637931.a n = A120163 (n + 1)

end A120163

/-! ## A120163.P11930484196598127450

`Δ[A191709(A167487(n+2)-3)]`
-/

namespace A120163.P11930484196598127450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A167487 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120163.P11930484196598127450

namespace A120163

/-- `Δ[A191709(A167487(n+2)-3)]` -/
def P11930484196598127450.Spec : Prop :=
  ∀ n, P11930484196598127450.a n = A120163 (n + 1)

end A120163

/-!
# A120164: a(n) = 6 + floor( Sum_{j=1..n-1} a(j)/4 ).

The programs for A120164, the canonical program `A120164.P8165299641346905898` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120164 has offset 1).

The definition of A120164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120164.P8165299641346905898

`Δ[round(5/4*a(n-1))]` with `a(0)=22`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120164

/-- `Δ[round(5/4*a(n-1))]` -/
def P8165299641346905898.Spec : Prop :=
  ∀ n, P8165299641346905898.a n = A120164 (n + 1)

theorem P8165299641346905898.correct : P8165299641346905898.Spec := by
  intro n
  simp only [A120164, Nat.add_sub_cancel]

end A120164

/-! ## A120164.P8218932550317958855

`Δ[floor(5/4*a(n-1))]` with `a(0)=24`
-/

namespace A120164.P8218932550317958855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  ⌊(5 : ℚ) / 4 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P8218932550317958855

namespace A120164

/-- `Δ[floor(5/4*a(n-1))]` -/
def P8218932550317958855.Spec : Prop :=
  ∀ n, P8218932550317958855.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P14717462972098534827

`Δ[ceil(a(n-1)+a(n-1)/4)]` with `a(0)=21`
-/

namespace A120164.P14717462972098534827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P14717462972098534827

namespace A120164

/-- `Δ[ceil(a(n-1)+a(n-1)/4)]` -/
def P14717462972098534827.Spec : Prop :=
  ∀ n, P14717462972098534827.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P13640163133544712993

`Δ[round(a(n-1)+a(n-1)/4)]` with `a(0)=22`
-/

namespace A120164.P13640163133544712993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P13640163133544712993

namespace A120164

/-- `Δ[round(a(n-1)+a(n-1)/4)]` -/
def P13640163133544712993.Spec : Prop :=
  ∀ n, P13640163133544712993.a n = A120164 (n + 1)

theorem P13640163133544712993.correct : P13640163133544712993.Spec := by
  intro n
  simp only [A120164, Nat.add_sub_cancel, A120164.P13640163133544712993.f1, A120164.P13640163133544712993.a, A120164.P8165299641346905898.f1, A120164.P8165299641346905898.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120164

/-! ## A120164.P14388492171475431875

`Δ[floor(a(n-1)+a(n-1)/4)]` with `a(0)=24`
-/

namespace A120164.P14388492171475431875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P14388492171475431875

namespace A120164

/-- `Δ[floor(a(n-1)+a(n-1)/4)]` -/
def P14388492171475431875.Spec : Prop :=
  ∀ n, P14388492171475431875.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P2848379793477939909

`ceil(A191708(A000096(n+3)+6)/4)`
-/

namespace A120164.P2848379793477939909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191708 (A000096 (n + 3) + 6).toNat : ℚ) / 4⌉

end

end A120164.P2848379793477939909

namespace A120164

/-- `ceil(A191708(A000096(n+3)+6)/4)` -/
def P2848379793477939909.Spec : Prop :=
  ∀ n, P2848379793477939909.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P12142227126235175153

`ceil(A191708(A000217(n+4)+5)/4)`
-/

namespace A120164.P12142227126235175153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191708 (A000217 (n + 4) + 5).toNat : ℚ) / 4⌉

end

end A120164.P12142227126235175153

namespace A120164

/-- `ceil(A191708(A000217(n+4)+5)/4)` -/
def P12142227126235175153.Spec : Prop :=
  ∀ n, P12142227126235175153.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P6259873583452261829

`Δ[A191709(A155212(n)+13)]`
-/

namespace A120164.P6259873583452261829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A155212 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P6259873583452261829

namespace A120164

/-- `Δ[A191709(A155212(n)+13)]` -/
def P6259873583452261829.Spec : Prop :=
  ∀ n, P6259873583452261829.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P10934857400033301884

`Δ[A191707(A145018(n+5)+1)]`
-/

namespace A120164.P10934857400033301884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A145018 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P10934857400033301884

namespace A120164

/-- `Δ[A191707(A145018(n+5)+1)]` -/
def P10934857400033301884.Spec : Prop :=
  ∀ n, P10934857400033301884.a n = A120164 (n + 1)

end A120164

/-! ## A120164.P3612382404380769034

`Δ[A191709(A145018(n+5)+1)]`
-/

namespace A120164.P3612382404380769034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A145018 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120164.P3612382404380769034

namespace A120164

/-- `Δ[A191709(A145018(n+5)+1)]` -/
def P3612382404380769034.Spec : Prop :=
  ∀ n, P3612382404380769034.a n = A120164 (n + 1)

end A120164

/-!
# A120165: a(n) = 7 + floor((1 + Sum_{j=1..n-1} a(j))/4).

The programs for A120165, the canonical program `A120165.P11561388189342774684` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120165 has offset 1).

The definition of A120165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120165.P11561388189342774684

`Δ[round(5/4*a(n-1))]` with `a(0)=27`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120165

/-- `Δ[round(5/4*a(n-1))]` -/
def P11561388189342774684.Spec : Prop :=
  ∀ n, P11561388189342774684.a n = A120165 (n + 1)

theorem P11561388189342774684.correct : P11561388189342774684.Spec := by
  intro n
  simp only [A120165, Nat.add_sub_cancel]

end A120165

/-! ## A120165.P5780680169824162310

`Δ[floor(5/4*a(n-1))]` with `a(0)=29`
-/

namespace A120165.P5780680169824162310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  ⌊(5 : ℚ) / 4 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P5780680169824162310

namespace A120165

/-- `Δ[floor(5/4*a(n-1))]` -/
def P5780680169824162310.Spec : Prop :=
  ∀ n, P5780680169824162310.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P383245904597283174

`Δ[round(a(n-1)+a(n-1)/4)]` with `a(0)=27`
-/

namespace A120165.P383245904597283174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P383245904597283174

namespace A120165

/-- `Δ[round(a(n-1)+a(n-1)/4)]` -/
def P383245904597283174.Spec : Prop :=
  ∀ n, P383245904597283174.a n = A120165 (n + 1)

theorem P383245904597283174.correct : P383245904597283174.Spec := by
  intro n
  simp only [A120165, Nat.add_sub_cancel, A120165.P383245904597283174.f1, A120165.P383245904597283174.a, A120165.P11561388189342774684.f1, A120165.P11561388189342774684.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120165

/-! ## A120165.P7420788329692784294

`Δ[floor(a(n-1)+a(n-1)/4)]` with `a(0)=29`
-/

namespace A120165.P7420788329692784294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P7420788329692784294

namespace A120165

/-- `Δ[floor(a(n-1)+a(n-1)/4)]` -/
def P7420788329692784294.Spec : Prop :=
  ∀ n, P7420788329692784294.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P8853102351983966767

`Δ[A191707(A166136(n+4))]`
-/

namespace A120165.P8853102351983966767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A166136 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P8853102351983966767

namespace A120165

/-- `Δ[A191707(A166136(n+4))]` -/
def P8853102351983966767.Spec : Prop :=
  ∀ n, P8853102351983966767.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P9538243396282455252

`Δ[A191707(A167499(n+4)+1)]`
-/

namespace A120165.P9538243396282455252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A167499 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P9538243396282455252

namespace A120165

/-- `Δ[A191707(A167499(n+4)+1)]` -/
def P9538243396282455252.Spec : Prop :=
  ∀ n, P9538243396282455252.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P5050912107216068394

`Δ[A191707(A000096(n+4)+7)]`
-/

namespace A120165.P5050912107216068394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A000096 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P5050912107216068394

namespace A120165

/-- `Δ[A191707(A000096(n+4)+7)]` -/
def P5050912107216068394.Spec : Prop :=
  ∀ n, P5050912107216068394.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P2338040538369507931

`Δ[A191708(A000096(n+4)+7)]`
-/

namespace A120165.P2338040538369507931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000096 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P2338040538369507931

namespace A120165

/-- `Δ[A191708(A000096(n+4)+7)]` -/
def P2338040538369507931.Spec : Prop :=
  ∀ n, P2338040538369507931.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P6682761017867455572

`Δ[A191709(A000096(n+4)+7)]`
-/

namespace A120165.P6682761017867455572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A000096 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P6682761017867455572

namespace A120165

/-- `Δ[A191709(A000096(n+4)+7)]` -/
def P6682761017867455572.Spec : Prop :=
  ∀ n, P6682761017867455572.a n = A120165 (n + 1)

end A120165

/-! ## A120165.P6424048883327107409

`Δ[A191707(A000217(n+5)+6)]`
-/

namespace A120165.P6424048883327107409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A000217 (n + 5) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120165.P6424048883327107409

namespace A120165

/-- `Δ[A191707(A000217(n+5)+6)]` -/
def P6424048883327107409.Spec : Prop :=
  ∀ n, P6424048883327107409.a n = A120165 (n + 1)

end A120165

/-!
# A120166: a(n) = 8 + floor((2 + Sum_{j=1..n-1} a(j))/4).

The programs for A120166, the canonical program `A120166.P16350543739283406` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120166 has offset 1).

The definition of A120166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120166.P16350543739283406

`Δ[ceil(a(n-1)+a(n-1)/4)]` with `a(0)=31`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120166

/-- `Δ[ceil(a(n-1)+a(n-1)/4)]` -/
def P16350543739283406.Spec : Prop :=
  ∀ n, P16350543739283406.a n = A120166 (n + 1)

theorem P16350543739283406.correct : P16350543739283406.Spec := by
  intro n
  simp only [A120166, Nat.add_sub_cancel]

end A120166

/-! ## A120166.P13479116765549592738

`ceil(A191708(A167487(n+5))/4)`
-/

namespace A120166.P13479116765549592738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191708 (A167487 (n + 5)).toNat : ℚ) / 4⌉

end

end A120166.P13479116765549592738

namespace A120166

/-- `ceil(A191708(A167487(n+5))/4)` -/
def P13479116765549592738.Spec : Prop :=
  ∀ n, P13479116765549592738.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P6929996839452519456

`Δ[A191708(A167487(n+5))]`
-/

namespace A120166.P6929996839452519456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A167487 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P6929996839452519456

namespace A120166

/-- `Δ[A191708(A167487(n+5))]` -/
def P6929996839452519456.Spec : Prop :=
  ∀ n, P6929996839452519456.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P13167043890253868777

`Δ[A191707(A167499(n+5)+2)]`
-/

namespace A120166.P13167043890253868777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A167499 (n + 5) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P13167043890253868777

namespace A120166

/-- `Δ[A191707(A167499(n+5)+2)]` -/
def P13167043890253868777.Spec : Prop :=
  ∀ n, P13167043890253868777.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P12876840489433405198

`Δ[A191709(A167499(n+5)+2)]`
-/

namespace A120166.P12876840489433405198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A167499 (n + 5) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P12876840489433405198

namespace A120166

/-- `Δ[A191709(A167499(n+5)+2)]` -/
def P12876840489433405198.Spec : Prop :=
  ∀ n, P12876840489433405198.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P3860543088821915341

`Δ[A191711(A167614(n+5)+4)]`
-/

namespace A120166.P3860543088821915341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A167614 (n + 5) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P3860543088821915341

namespace A120166

/-- `Δ[A191711(A167614(n+5)+4)]` -/
def P3860543088821915341.Spec : Prop :=
  ∀ n, P3860543088821915341.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P14970973253631292536

`Δ[A191707(A000124(n+6)+6)]`
-/

namespace A120166.P14970973253631292536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A000124 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P14970973253631292536

namespace A120166

/-- `Δ[A191707(A000124(n+6)+6)]` -/
def P14970973253631292536.Spec : Prop :=
  ∀ n, P14970973253631292536.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P8771986776329641284

`Δ[A191708(A000124(n+6)+6)]`
-/

namespace A120166.P8771986776329641284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000124 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P8771986776329641284

namespace A120166

/-- `Δ[A191708(A000124(n+6)+6)]` -/
def P8771986776329641284.Spec : Prop :=
  ∀ n, P8771986776329641284.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P15297233115525882040

`Δ[A191710(A000217(n+6)+7)]`
-/

namespace A120166.P15297233115525882040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191710 (A000217 (n + 6) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P15297233115525882040

namespace A120166

/-- `Δ[A191710(A000217(n+6)+7)]` -/
def P15297233115525882040.Spec : Prop :=
  ∀ n, P15297233115525882040.a n = A120166 (n + 1)

end A120166

/-! ## A120166.P7199461482333316102

`Δ[A191711(A000217(n+6)+7)]`
-/

namespace A120166.P7199461482333316102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A000217 (n + 6) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120166.P7199461482333316102

namespace A120166

/-- `Δ[A191711(A000217(n+6)+7)]` -/
def P7199461482333316102.Spec : Prop :=
  ∀ n, P7199461482333316102.a n = A120166 (n + 1)

end A120166

/-!
# A120167: a(n) = 9 + floor((3 + Sum_{j=1..n-1} a(j))/4).

The programs for A120167, there is no canonical definition to state claims against.
-/

/-! ## A120167.P5844549340769116353

`ceil(A191708(A000217(n+7)+8)/4)`
-/

namespace A120167.P5844549340769116353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191708 (A000217 (n + 7) + 8).toNat : ℚ) / 4⌉

end

end A120167.P5844549340769116353

/-! ## A120167.P336448394002905709

`Δ[A191710(A167487(n+6)+1)]`
-/

namespace A120167.P336448394002905709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191710 (A167487 (n + 6) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P336448394002905709

/-! ## A120167.P4753238670508913921

`Δ[A191711(A167487(n+6)+1)]`
-/

namespace A120167.P4753238670508913921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A167487 (n + 6) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P4753238670508913921

/-! ## A120167.P2782755372308905941

`Δ[A191711(A167614(n+6)+5)]`
-/

namespace A120167.P2782755372308905941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A167614 (n + 6) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P2782755372308905941

/-! ## A120167.P7430892157487956613

`Δ[A191707(A000217(n+7)+8)]`
-/

namespace A120167.P7430892157487956613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191707 (A000217 (n + 7) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P7430892157487956613

/-! ## A120167.P6290950439966190433

`Δ[A191708(A000217(n+7)+8)]`
-/

namespace A120167.P6290950439966190433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000217 (n + 7) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P6290950439966190433

/-! ## A120167.P3517930907779110634

`Δ[A191709(A000217(n+7)+8)]`
-/

namespace A120167.P3517930907779110634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A000217 (n + 7) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P3517930907779110634

/-! ## A120167.P2403370184031884381

`Δ[A191710(A000217(n+7)+8)]`
-/

namespace A120167.P2403370184031884381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191710 (A000217 (n + 7) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P2403370184031884381

/-! ## A120167.P12799006301044893291

`Δ[A191711(A000217(n+7)+8)]`
-/

namespace A120167.P12799006301044893291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A000217 (n + 7) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120167.P12799006301044893291

/-!
# A120168: a(n) = 11 + floor(Sum_{j-1..n-1} a(j)/4).

The programs for A120168, the canonical program `A120168.P1764532613790007650` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120168 has offset 1).

The definition of A120168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120168.P1764532613790007650

`Δ[abs(floor(5/4*a(n-1))+1)]` with `a(0)=40`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120168

/-- `Δ[abs(floor(5/4*a(n-1))+1)]` -/
def P1764532613790007650.Spec : Prop :=
  ∀ n, P1764532613790007650.a n = A120168 (n + 1)

theorem P1764532613790007650.correct : P1764532613790007650.Spec := by
  intro n
  simp only [A120168, Nat.add_sub_cancel]

end A120168

/-! ## A120168.P3170892835044185216

`Δ[A335155(a(n-1))]` with `a(0)=15`
-/

namespace A120168.P3170892835044185216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  A335155 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120168.P3170892835044185216

namespace A120168

/-- `Δ[A335155(a(n-1))]` -/
def P3170892835044185216.Spec : Prop :=
  ∀ n, P3170892835044185216.a n = A120168 (n + 1)

end A120168

/-! ## A120168.P47734872373169222

`Δ[A249031(a(n-1))]` with `a(0)=43`
-/

namespace A120168.P47734872373169222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [43] fun n f1 =>
  A249031 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120168.P47734872373169222

namespace A120168

/-- `Δ[A249031(a(n-1))]` -/
def P47734872373169222.Spec : Prop :=
  ∀ n, P47734872373169222.a n = A120168 (n + 1)

end A120168

/-! ## A120168.P5645489271100819427

`Δ[A001068(a(n-1))]` with `a(0)=44`
-/

namespace A120168.P5645489271100819427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f1 =>
  A001068 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120168.P5645489271100819427

namespace A120168

/-- `Δ[A001068(a(n-1))]` -/
def P5645489271100819427.Spec : Prop :=
  ∀ n, P5645489271100819427.a n = A120168 (n + 1)

end A120168

/-! ## A120168.P7360560883474572426

`Δ[A047201(a(n-1))]` with `a(0)=45`
-/

namespace A120168.P7360560883474572426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [45] fun n f1 =>
  A047201 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120168.P7360560883474572426

namespace A120168

/-- `Δ[A047201(a(n-1))]` -/
def P7360560883474572426.Spec : Prop :=
  ∀ n, P7360560883474572426.a n = A120168 (n + 1)

end A120168

/-!
# A120169: a(n) = 12 + floor((1 + Sum_{j=1..n-1} a(j))/4).

The programs for A120169, the canonical program `A120169.P15075611311026963845` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120169 has offset 1).

The definition of A120169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1014 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120169.P15075611311026963845

`Δ[a(n-1)+ceil(a(n-1)/4)]` with `a(0)=46`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120169

/-- `Δ[a(n-1)+ceil(a(n-1)/4)]` -/
def P15075611311026963845.Spec : Prop :=
  ∀ n, P15075611311026963845.a n = A120169 (n + 1)

theorem P15075611311026963845.correct : P15075611311026963845.Spec := by
  intro n
  simp only [A120169, Nat.add_sub_cancel]

end A120169

/-! ## A120169.P7407134910208301571

`Δ[a(n-1)+round(a(n-1)/4)]` with `a(0)=47`
-/

namespace A120169.P7407134910208301571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [47] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120169.P7407134910208301571

namespace A120169

/-- `Δ[a(n-1)+round(a(n-1)/4)]` -/
def P7407134910208301571.Spec : Prop :=
  ∀ n, P7407134910208301571.a n = A120169 (n + 1)

end A120169

/-! ## A120169.P7011126652934436749

`Δ[a(n-1)+floor(a(n-1)/4)]` with `a(0)=49`
-/

namespace A120169.P7011126652934436749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  f1 (n - 1) + ⌊(f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120169.P7011126652934436749

namespace A120169

/-- `Δ[a(n-1)+floor(a(n-1)/4)]` -/
def P7011126652934436749.Spec : Prop :=
  ∀ n, P7011126652934436749.a n = A120169 (n + 1)

end A120169

/-! ## A120169.P5336797122863030237

`Δ[A191709(A167487(n+8)+3)]`
-/

namespace A120169.P5336797122863030237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (A167487 (n + 8) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120169.P5336797122863030237

namespace A120169

/-- `Δ[A191709(A167487(n+8)+3)]` -/
def P5336797122863030237.Spec : Prop :=
  ∀ n, P5336797122863030237.a n = A120169 (n + 1)

end A120169

/-! ## A120169.P68058001458566524

`Δ[A191711(A167487(n+8)+3)]`
-/

namespace A120169.P68058001458566524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (A167487 (n + 8) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120169.P68058001458566524

namespace A120169

/-- `Δ[A191711(A167487(n+8)+3)]` -/
def P68058001458566524.Spec : Prop :=
  ∀ n, P68058001458566524.a n = A120169 (n + 1)

end A120169

/-!
# A120170: a(n) = ceiling( Sum_{i=1..n-1} a(i)/5 ), a(1)=1.

The programs for A120170, the canonical program `A120170.P1492649418581726010` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120170 has offset 1).

The definition of A120170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120170.P1492649418581726010

`Δ[round(a(n-1)+a(n-1)/5)]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120170

/-- `Δ[round(a(n-1)+a(n-1)/5)]` -/
def P1492649418581726010.Spec : Prop :=
  ∀ n, P1492649418581726010.a n = A120170 (n + 1)

theorem P1492649418581726010.correct : P1492649418581726010.Spec := by
  intro n
  simp only [A120170, Nat.add_sub_cancel]

end A120170

/-! ## A120170.P16432951102270149941

`Δ[a(n-1)+floor(a(n-1)/5)]` with `a(0)=4, a(1)=5`
-/

namespace A120170.P16432951102270149941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 1) + ⌊(f1 (n - 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120170.P16432951102270149941

namespace A120170

/-- `Δ[a(n-1)+floor(a(n-1)/5)]` -/
def P16432951102270149941.Spec : Prop :=
  ∀ n, P16432951102270149941.a n = A120170 (n + 1)

end A120170

/-! ## A120170.P15147502323356572704

`ceil(A279076(A028310(n))/6)`
-/

namespace A120170.P15147502323356572704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279076 (A028310 n).toNat : ℚ) / 6⌉

end

end A120170.P15147502323356572704

namespace A120170

/-- `ceil(A279076(A028310(n))/6)` -/
def P15147502323356572704.Spec : Prop :=
  ∀ n, P15147502323356572704.a n = A120170 (n + 1)

end A120170

/-! ## A120170.P5604490049240019709

`abs(A279076(abs(1-n))-A279076(n))`
-/

namespace A120170.P5604490049240019709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A279076 |1 - (n : ℤ)|.toNat - A279076 n)|

end

end A120170.P5604490049240019709

namespace A120170

/-- `abs(A279076(abs(1-n))-A279076(n))` -/
def P5604490049240019709.Spec : Prop :=
  ∀ n, P5604490049240019709.a n = A120170 (n + 1)

end A120170

/-! ## A120170.P8408875475770315207

`A245399(n+1)/6`
-/

namespace A120170.P8408875475770315207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245399 (n + 1) : ℚ) / 6

end

end A120170.P8408875475770315207

namespace A120170

/-- `A245399(n+1)/6` -/
def P8408875475770315207.Spec : Prop :=
  ∀ n, P8408875475770315207.a n = (A120170 (n + 1) : ℚ)

end A120170

/-! ## A120170.P17980531652713117509

`ceil(A279076(A233583(n+1))/6)`
-/

namespace A120170.P17980531652713117509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279076 (A233583 (n + 1)).toNat : ℚ) / 6⌉

end

end A120170.P17980531652713117509

namespace A120170

/-- `ceil(A279076(A233583(n+1))/6)` -/
def P17980531652713117509.Spec : Prop :=
  ∀ n, P17980531652713117509.a n = A120170 (n + 1)

end A120170

/-! ## A120170.P14833857959591792182

`A255591(A245399(n+1))`
-/

namespace A120170.P14833857959591792182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A245399 (n + 1)).toNat

end

end A120170.P14833857959591792182

namespace A120170

/-- `A255591(A245399(n+1))` -/
def P14833857959591792182.Spec : Prop :=
  ∀ n, P14833857959591792182.a n = A120170 (n + 1)

end A120170

/-!
# A120171: a(n) = 2 + floor((1 + Sum_{j=1..n-1} a(j))/5).

The programs for A120171, the canonical program `A120171.P7156740947817833902` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120171 has offset 1).

The definition of A120171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120171.P7156740947817833902

`Δ[round(6/5*a(n-1))]` with `a(0)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120171

/-- `Δ[round(6/5*a(n-1))]` -/
def P7156740947817833902.Spec : Prop :=
  ∀ n, P7156740947817833902.a n = A120171 (n + 1)

theorem P7156740947817833902.correct : P7156740947817833902.Spec := by
  intro n
  simp only [A120171, Nat.add_sub_cancel]

end A120171

/-! ## A120171.P4641640263562345246

`Δ[floor(6/5*a(n-1))]` with `a(0)=11`
-/

namespace A120171.P4641640263562345246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  ⌊(6 : ℚ) / 5 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120171.P4641640263562345246

namespace A120171

/-- `Δ[floor(6/5*a(n-1))]` -/
def P4641640263562345246.Spec : Prop :=
  ∀ n, P4641640263562345246.a n = A120171 (n + 1)

end A120171

/-! ## A120171.P16104780412240795084

`Δ[ceil(a(n-1)+a(n-1)/5)]` with `a(0)=7`
-/

namespace A120171.P16104780412240795084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120171.P16104780412240795084

namespace A120171

/-- `Δ[ceil(a(n-1)+a(n-1)/5)]` -/
def P16104780412240795084.Spec : Prop :=
  ∀ n, P16104780412240795084.a n = A120171 (n + 1)

end A120171

/-! ## A120171.P5020925157547297769

`Δ[round(a(n-1)+a(n-1)/5)]` with `a(0)=9`
-/

namespace A120171.P5020925157547297769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120171.P5020925157547297769

namespace A120171

/-- `Δ[round(a(n-1)+a(n-1)/5)]` -/
def P5020925157547297769.Spec : Prop :=
  ∀ n, P5020925157547297769.a n = A120171 (n + 1)

theorem P5020925157547297769.correct : P5020925157547297769.Spec := by
  intro n
  simp only [A120171, Nat.add_sub_cancel, A120171.P5020925157547297769.f1, A120171.P5020925157547297769.a, A120171.P7156740947817833902.f1, A120171.P7156740947817833902.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120171

/-! ## A120171.P642087505556994617

`Δ[floor(a(n-1)+a(n-1)/5)]` with `a(0)=11`
-/

namespace A120171.P642087505556994617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120171.P642087505556994617

namespace A120171

/-- `Δ[floor(a(n-1)+a(n-1)/5)]` -/
def P642087505556994617.Spec : Prop :=
  ∀ n, P642087505556994617.a n = A120171 (n + 1)

end A120171

/-!
# A120172: a(n) = 3 + floor((2 + Sum_{j=1..n-1} a(j))/5).

The programs for A120172, the canonical program `A120172.P655309871133093019` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120172 has offset 1).

The definition of A120172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120172.P655309871133093019

`Δ[ceil(a(n-1)+a(n-1)/5)]` with `a(0)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120172

/-- `Δ[ceil(a(n-1)+a(n-1)/5)]` -/
def P655309871133093019.Spec : Prop :=
  ∀ n, P655309871133093019.a n = A120172 (n + 1)

theorem P655309871133093019.correct : P655309871133093019.Spec := by
  intro n
  simp only [A120172, Nat.add_sub_cancel]

end A120172

/-! ## A120172.P17988243167914463675

`Δ[round(a(n-1)+a(n-1)/5)]` with `a(0)=15`
-/

namespace A120172.P17988243167914463675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120172.P17988243167914463675

namespace A120172

/-- `Δ[round(a(n-1)+a(n-1)/5)]` -/
def P17988243167914463675.Spec : Prop :=
  ∀ n, P17988243167914463675.a n = A120172 (n + 1)

end A120172

/-! ## A120172.P17678770245817909263

`Δ[a(n-1)+floor(a(n-1)/5)]` with `a(0)=17`
-/

namespace A120172.P17678770245817909263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) + ⌊(f1 (n - 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120172.P17678770245817909263

namespace A120172

/-- `Δ[a(n-1)+floor(a(n-1)/5)]` -/
def P17678770245817909263.Spec : Prop :=
  ∀ n, P17678770245817909263.a n = A120172 (n + 1)

end A120172

/-! ## A120172.P1772382477893166364

`Δ[A047253(a(n-1))]` with `a(0)=18`
-/

namespace A120172.P1772382477893166364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [18] fun n f1 =>
  A047253 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120172.P1772382477893166364

namespace A120172

/-- `Δ[A047253(a(n-1))]` -/
def P1772382477893166364.Spec : Prop :=
  ∀ n, P1772382477893166364.a n = A120172 (n + 1)

end A120172

/-! ## A120172.P8244205991140434548

`Δ[A047248(a(n-1))]` with `a(0)=19`
-/

namespace A120172.P8244205991140434548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  A047248 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120172.P8244205991140434548

namespace A120172

/-- `Δ[A047248(a(n-1))]` -/
def P8244205991140434548.Spec : Prop :=
  ∀ n, P8244205991140434548.a n = A120172 (n + 1)

end A120172

/-!
# A120173: a(n) = 4 + floor((3 + Sum_{j=1..n-1} a(j))/5).

The programs for A120173, the canonical program `A120173.P5816523446729280124` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120173 has offset 1).

The definition of A120173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120173.P5816523446729280124

`Δ[round(6/5*a(n-1))]%A120164(n+1)` with `a(0)=21`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120173

/-- `Δ[round(6/5*a(n-1))]%A120164(n+1)` -/
def P5816523446729280124.Spec : Prop :=
  ∀ n, P5816523446729280124.a n = A120173 (n + 1)

theorem P5816523446729280124.correct : P5816523446729280124.Spec := by
  intro n
  simp only [A120173, Nat.add_sub_cancel]

end A120173

/-! ## A120173.P2391351076668904992

`Δ[A047253(a(n-1))]` with `a(0)=24`
-/

namespace A120173.P2391351076668904992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  A047253 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120173.P2391351076668904992

namespace A120173

/-- `Δ[A047253(a(n-1))]` -/
def P2391351076668904992.Spec : Prop :=
  ∀ n, P2391351076668904992.a n = A120173 (n + 1)

end A120173

/-! ## A120173.P3552833048392606935

`Δ[A047248(a(n-1))]` with `a(0)=25`
-/

namespace A120173.P3552833048392606935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  A047248 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120173.P3552833048392606935

namespace A120173

/-- `Δ[A047248(a(n-1))]` -/
def P3552833048392606935.Spec : Prop :=
  ∀ n, P3552833048392606935.a n = A120173 (n + 1)

end A120173

/-! ## A120173.P10821078440475286059

`Δ[A047263(a(n-1))]` with `a(0)=27`
-/

namespace A120173.P10821078440475286059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  A047263 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120173.P10821078440475286059

namespace A120173

/-- `Δ[A047263(a(n-1))]` -/
def P10821078440475286059.Spec : Prop :=
  ∀ n, P10821078440475286059.a n = A120173 (n + 1)

end A120173

/-! ## A120173.P409066983218947528

`Δ[A057355(2*a(n-1)+1)]` with `a(0)=20`
-/

namespace A120173.P409066983218947528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  A057355 (2 * f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120173.P409066983218947528

namespace A120173

/-- `Δ[A057355(2*a(n-1)+1)]` -/
def P409066983218947528.Spec : Prop :=
  ∀ n, P409066983218947528.a n = A120173 (n + 1)

end A120173

/-!
# A120174: a(1)=5; a(n)=floor((29+sum(a(1) to a(n-1)))/5).

The programs for A120174, the canonical program `A120174.P2693200433327950770` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120174 has offset 1).

The definition of A120174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120174.P2693200433327950770

`Δ[ceil(a(n-1)+a(n-1)/5)]` with `a(0)=25`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120174

/-- `Δ[ceil(a(n-1)+a(n-1)/5)]` -/
def P2693200433327950770.Spec : Prop :=
  ∀ n, P2693200433327950770.a n = A120174 (n + 1)

theorem P2693200433327950770.correct : P2693200433327950770.Spec := by
  intro n
  simp only [A120174, Nat.add_sub_cancel]

end A120174

/-! ## A120174.P15265879362810142841

`Δ[floor(a(n-1)+a(n-1)/5)]` with `a(0)=29`
-/

namespace A120174.P15265879362810142841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120174.P15265879362810142841

namespace A120174

/-- `Δ[floor(a(n-1)+a(n-1)/5)]` -/
def P15265879362810142841.Spec : Prop :=
  ∀ n, P15265879362810142841.a n = A120174 (n + 1)

end A120174

/-! ## A120174.P342457076769266978

`Δ[round(6/5*a(n-1))]%A283559(2*n+3)` with `a(0)=27`
-/

namespace A120174.P342457076769266978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  SequenceMachineLib.roundAway ((6 : ℚ) / 5 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A283559 (2 * n + 3))

end

end A120174.P342457076769266978

namespace A120174

/-- `Δ[round(6/5*a(n-1))]%A283559(2*n+3)` -/
def P342457076769266978.Spec : Prop :=
  ∀ n, P342457076769266978.a n = A120174 (n + 1)

end A120174

/-! ## A120174.P2028784510029814940

`Δ[A047253(a(n-1))]` with `a(0)=30`
-/

namespace A120174.P2028784510029814940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  A047253 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120174.P2028784510029814940

namespace A120174

/-- `Δ[A047253(a(n-1))]` -/
def P2028784510029814940.Spec : Prop :=
  ∀ n, P2028784510029814940.a n = A120174 (n + 1)

end A120174

/-! ## A120174.P17541375934666902071

`Δ[A047252(a(n-1))]` with `a(0)=32`
-/

namespace A120174.P17541375934666902071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  A047252 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120174.P17541375934666902071

namespace A120174

/-- `Δ[A047252(a(n-1))]` -/
def P17541375934666902071.Spec : Prop :=
  ∀ n, P17541375934666902071.a n = A120174 (n + 1)

end A120174

/-!
# A120175: a(1)=7; a(n)=floor((35+sum(a(1) to a(n-1)))/5).

The programs for A120175, the canonical program `A120175.P6480145903855018895` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120175 has offset 1).

The definition of A120175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120175.P6480145903855018895

`Δ[round(a(n-1)+a(n-1)/5)]` with `a(0)=33`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120175

/-- `Δ[round(a(n-1)+a(n-1)/5)]` -/
def P6480145903855018895.Spec : Prop :=
  ∀ n, P6480145903855018895.a n = A120175 (n + 1)

theorem P6480145903855018895.correct : P6480145903855018895.Spec := by
  intro n
  simp only [A120175, Nat.add_sub_cancel]

end A120175

/-! ## A120175.P15020310965258258891

`Δ[floor(a(n-1)+a(n-1)/5)]` with `a(0)=35`
-/

namespace A120175.P15020310965258258891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120175.P15020310965258258891

namespace A120175

/-- `Δ[floor(a(n-1)+a(n-1)/5)]` -/
def P15020310965258258891.Spec : Prop :=
  ∀ n, P15020310965258258891.a n = A120175 (n + 1)

end A120175

/-! ## A120175.P12661998720269911387

`Δ[A047253(a(n-1))]` with `a(0)=36`
-/

namespace A120175.P12661998720269911387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36] fun n f1 =>
  A047253 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120175.P12661998720269911387

namespace A120175

/-- `Δ[A047253(a(n-1))]` -/
def P12661998720269911387.Spec : Prop :=
  ∀ n, P12661998720269911387.a n = A120175 (n + 1)

end A120175

/-! ## A120175.P3208277094709643216

`Δ[A047248(a(n-1))]` with `a(0)=37`
-/

namespace A120175.P3208277094709643216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  A047248 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120175.P3208277094709643216

namespace A120175

/-- `Δ[A047248(a(n-1))]` -/
def P3208277094709643216.Spec : Prop :=
  ∀ n, P3208277094709643216.a n = A120175 (n + 1)

end A120175

/-! ## A120175.P7052585815150630572

`Δ[A047252(a(n-1))]` with `a(0)=38`
-/

namespace A120175.P7052585815150630572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [38] fun n f1 =>
  A047252 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120175.P7052585815150630572

namespace A120175

/-- `Δ[A047252(a(n-1))]` -/
def P7052585815150630572.Spec : Prop :=
  ∀ n, P7052585815150630572.a n = A120175 (n + 1)

end A120175

/-!
# A120176: a(1)=8; a(n)=floor((41+sum(a(1) to a(n-1)))/5).

The programs for A120176, the canonical program `A120176.P2334612068196434841` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120176 has offset 1).

The definition of A120176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120176.P2334612068196434841

`Δ[round(a(n-1)+a(n-1)/5)]` with `a(0)=39`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120176

/-- `Δ[round(a(n-1)+a(n-1)/5)]` -/
def P2334612068196434841.Spec : Prop :=
  ∀ n, P2334612068196434841.a n = A120176 (n + 1)

theorem P2334612068196434841.correct : P2334612068196434841.Spec := by
  intro n
  simp only [A120176, Nat.add_sub_cancel]

end A120176

/-! ## A120176.P8628033341224348244

`Δ[A047252(a(n-1))]` with `a(0)=44`
-/

namespace A120176.P8628033341224348244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f1 =>
  A047252 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120176.P8628033341224348244

namespace A120176

/-- `Δ[A047252(a(n-1))]` -/
def P8628033341224348244.Spec : Prop :=
  ∀ n, P8628033341224348244.a n = A120176 (n + 1)

end A120176

/-! ## A120176.P10602014524026101098

`Δ[A047263(a(n-1))]` with `a(0)=45`
-/

namespace A120176.P10602014524026101098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [45] fun n f1 =>
  A047263 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120176.P10602014524026101098

namespace A120176

/-- `Δ[A047263(a(n-1))]` -/
def P10602014524026101098.Spec : Prop :=
  ∀ n, P10602014524026101098.a n = A120176 (n + 1)

end A120176

/-! ## A120176.P12975544080588677384

`Δ[A047253(a(n-1)+7)]` with `a(0)=0`
-/

namespace A120176.P12975544080588677384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A047253 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120176.P12975544080588677384

namespace A120176

/-- `Δ[A047253(a(n-1)+7)]` -/
def P12975544080588677384.Spec : Prop :=
  ∀ n, P12975544080588677384.a n = A120176 (n + 1)

end A120176

/-! ## A120176.P11708527159330993316

`Δ[A020719(floor(6/5*a(n-1)))]` with `a(0)=6`
-/

namespace A120176.P11708527159330993316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A020719 ⌊(6 : ℚ) / 5 * (f1 (n - 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120176.P11708527159330993316

namespace A120176

/-- `Δ[A020719(floor(6/5*a(n-1)))]` -/
def P11708527159330993316.Spec : Prop :=
  ∀ n, P11708527159330993316.a n = A120176 (n + 1)

end A120176

/-!
# A120177: a(1)=9; a(n)=floor((47+sum(a(1) to a(n-1)))/5).

The programs for A120177, the canonical program `A120177.P376106000476990091` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120177 has offset 1).

The definition of A120177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120177.P376106000476990091

`Δ[a(n-1)+floor(a(n-1)/5)]` with `a(0)=47`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120177

/-- `Δ[a(n-1)+floor(a(n-1)/5)]` -/
def P376106000476990091.Spec : Prop :=
  ∀ n, P376106000476990091.a n = A120177 (n + 1)

theorem P376106000476990091.correct : P376106000476990091.Spec := by
  intro n
  simp only [A120177, Nat.add_sub_cancel]

end A120177

/-! ## A120177.P2135937042643292929

`Δ[A047253(a(n-1))]` with `a(0)=48`
-/

namespace A120177.P2135937042643292929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [48] fun n f1 =>
  A047253 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120177.P2135937042643292929

namespace A120177

/-- `Δ[A047253(a(n-1))]` -/
def P2135937042643292929.Spec : Prop :=
  ∀ n, P2135937042643292929.a n = A120177 (n + 1)

end A120177

/-! ## A120177.P754748554212938387

`Δ[A047248(a(n-1))]` with `a(0)=49`
-/

namespace A120177.P754748554212938387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  A047248 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120177.P754748554212938387

namespace A120177

/-- `Δ[A047248(a(n-1))]` -/
def P754748554212938387.Spec : Prop :=
  ∀ n, P754748554212938387.a n = A120177 (n + 1)

end A120177

/-! ## A120177.P17052688704181772469

`Δ[A047252(a(n-1))]` with `a(0)=50`
-/

namespace A120177.P17052688704181772469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50] fun n f1 =>
  A047252 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120177.P17052688704181772469

namespace A120177

/-- `Δ[A047252(a(n-1))]` -/
def P17052688704181772469.Spec : Prop :=
  ∀ n, P17052688704181772469.a n = A120177 (n + 1)

end A120177

/-! ## A120177.P9817888616987384569

`Δ[A047263(a(n-1))]` with `a(0)=51`
-/

namespace A120177.P9817888616987384569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [51] fun n f1 =>
  A047263 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120177.P9817888616987384569

namespace A120177

/-- `Δ[A047263(a(n-1))]` -/
def P9817888616987384569.Spec : Prop :=
  ∀ n, P9817888616987384569.a n = A120177 (n + 1)

end A120177

/-!
# A120178: a(n)=ceiling( sum_{i=1..n-1} a(i)/6), a(1)=1.

The programs for A120178, the canonical program `A120178.P447218401063577657` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120178 has offset 1).

The definition of A120178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120178.P447218401063577657

`abs(7*Δ[ceil(a(n-1)+a(n-1)/6)])/7` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120178

/-- `abs(7*Δ[ceil(a(n-1)+a(n-1)/6)])/7` -/
def P447218401063577657.Spec : Prop :=
  ∀ n, P447218401063577657.a n = (A120178 (n + 1) : ℚ)

end A120178

/-! ## A120178.P15002752483382414106

`A000027(Δ[floor(7*a(n-1)/6)])` with `a(0)=5, a(1)=6`
-/

namespace A120178.P15002752483382414106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  ⌊7 * ((f1 (n - 1) : ℚ) / 6)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A120178.P15002752483382414106

namespace A120178

/-- `A000027(Δ[floor(7*a(n-1)/6)])` -/
def P15002752483382414106.Spec : Prop :=
  ∀ n, P15002752483382414106.a n = A120178 (n + 1)

end A120178

/-! ## A120178.P16529979339292239126

`A245402(n+1)/7`
-/

namespace A120178.P16529979339292239126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245402 (n + 1) : ℚ) / 7

end

end A120178.P16529979339292239126

namespace A120178

/-- `A245402(n+1)/7` -/
def P16529979339292239126.Spec : Prop :=
  ∀ n, P16529979339292239126.a n = (A120178 (n + 1) : ℚ)

end A120178

/-! ## A120178.P12369079586927457156

`Δ[A047304(a(n-1))]` with `a(0)=6, a(1)=7`
-/

namespace A120178.P12369079586927457156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n f1 =>
  A047304 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120178.P12369079586927457156

namespace A120178

/-- `Δ[A047304(a(n-1))]` -/
def P12369079586927457156.Spec : Prop :=
  ∀ n, P12369079586927457156.a n = A120178 (n + 1)

end A120178

/-! ## A120178.P16724601604629102894

`Δ[A047306(a(n-1))]` with `a(0)=7, a(1)=8`
-/

namespace A120178.P16724601604629102894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120178.P16724601604629102894

namespace A120178

/-- `Δ[A047306(a(n-1))]` -/
def P16724601604629102894.Spec : Prop :=
  ∀ n, P16724601604629102894.a n = A120178 (n + 1)

end A120178

/-! ## A120178.P3186814192749774799

`A106608(A245402(n+1))`
-/

namespace A120178.P3186814192749774799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A245402 (n + 1)).toNat

end

end A120178.P3186814192749774799

namespace A120178

/-- `A106608(A245402(n+1))` -/
def P3186814192749774799.Spec : Prop :=
  ∀ n, P3186814192749774799.a n = A120178 (n + 1)

end A120178

/-!
# A120179: a(1)=2; a(n)=floor((13+sum(a(1) to a(n-1)))/6).

The programs for A120179, the canonical program `A120179.P11417198070841215818` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120179 has offset 1).

The definition of A120179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120179.P11417198070841215818

`Δ[ceil(a(n-1)+a(n-1)/6)]` with `a(0)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120179

/-- `Δ[ceil(a(n-1)+a(n-1)/6)]` -/
def P11417198070841215818.Spec : Prop :=
  ∀ n, P11417198070841215818.a n = A120179 (n + 1)

theorem P11417198070841215818.correct : P11417198070841215818.Spec := by
  intro n
  simp only [A120179, Nat.add_sub_cancel]

end A120179

/-! ## A120179.P4790470285107809735

`Δ[floor(14*a(n-1)/6/2)]` with `a(0)=13`
-/

namespace A120179.P4790470285107809735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  ⌊14 * ((f1 (n - 1) : ℚ) / 6) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120179.P4790470285107809735

namespace A120179

/-- `Δ[floor(14*a(n-1)/6/2)]` -/
def P4790470285107809735.Spec : Prop :=
  ∀ n, P4790470285107809735.a n = A120179 (n + 1)

end A120179

/-! ## A120179.P16810410422723174136

`Δ[A304806(a(n-1))]` with `a(0)=3`
-/

namespace A120179.P16810410422723174136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A304806 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120179.P16810410422723174136

namespace A120179

/-- `Δ[A304806(a(n-1))]` -/
def P16810410422723174136.Spec : Prop :=
  ∀ n, P16810410422723174136.a n = A120179 (n + 1)

end A120179

/-! ## A120179.P11405369948159210008

`Δ[A047304(a(n-1))]` with `a(0)=14`
-/

namespace A120179.P11405369948159210008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14] fun n f1 =>
  A047304 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120179.P11405369948159210008

namespace A120179

/-- `Δ[A047304(a(n-1))]` -/
def P11405369948159210008.Spec : Prop :=
  ∀ n, P11405369948159210008.a n = A120179 (n + 1)

end A120179

/-! ## A120179.P7262785053569018405

`Δ[A047306(a(n-1))]` with `a(0)=15`
-/

namespace A120179.P7262785053569018405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120179.P7262785053569018405

namespace A120179

/-- `Δ[A047306(a(n-1))]` -/
def P7262785053569018405.Spec : Prop :=
  ∀ n, P7262785053569018405.a n = A120179 (n + 1)

end A120179

/-!
# A120180: a(1)=3; a(n)=floor((20+sum(a(1) to a(n-1)))/6).

The programs for A120180, the canonical program `A120180.P8891421717276500702` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120180 has offset 1).

The definition of A120180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120180.P8891421717276500702

`Δ[ceil(a(n-1)+a(n-1)/6)]` with `a(0)=15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120180

/-- `Δ[ceil(a(n-1)+a(n-1)/6)]` -/
def P8891421717276500702.Spec : Prop :=
  ∀ n, P8891421717276500702.a n = A120180 (n + 1)

theorem P8891421717276500702.correct : P8891421717276500702.Spec := by
  intro n
  simp only [A120180, Nat.add_sub_cancel]

end A120180

/-! ## A120180.P13337920184098183644

`Δ[floor(a(n-1)+a(n-1)/6)]` with `a(0)=20`
-/

namespace A120180.P13337920184098183644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120180.P13337920184098183644

namespace A120180

/-- `Δ[floor(a(n-1)+a(n-1)/6)]` -/
def P13337920184098183644.Spec : Prop :=
  ∀ n, P13337920184098183644.a n = A120180 (n + 1)

end A120180

/-! ## A120180.P13757874719630314919

`Δ[A047306(a(n-1))]` with `a(0)=22`
-/

namespace A120180.P13757874719630314919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120180.P13757874719630314919

namespace A120180

/-- `Δ[A047306(a(n-1))]` -/
def P13757874719630314919.Spec : Prop :=
  ∀ n, P13757874719630314919.a n = A120180 (n + 1)

end A120180

/-! ## A120180.P1484456910896546279

`Δ[A047310(a(n-1))]` with `a(0)=23`
-/

namespace A120180.P1484456910896546279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  A047310 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120180.P1484456910896546279

namespace A120180

/-- `Δ[A047310(a(n-1))]` -/
def P1484456910896546279.Spec : Prop :=
  ∀ n, P1484456910896546279.a n = A120180 (n + 1)

end A120180

/-! ## A120180.P11685968787156617819

`Δ[A047318(a(n-1))]` with `a(0)=24`
-/

namespace A120180.P11685968787156617819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  A047318 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120180.P11685968787156617819

namespace A120180

/-- `Δ[A047318(a(n-1))]` -/
def P11685968787156617819.Spec : Prop :=
  ∀ n, P11685968787156617819.a n = A120180 (n + 1)

end A120180

/-!
# A120181: a(1)=4; a(n)=floor((27+sum(a(1) to a(n-1)))/6).

The programs for A120181, the canonical program `A120181.P11729516205212447553` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120181 has offset 1).

The definition of A120181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120181.P11729516205212447553

`Δ[ceil(a(n-1)+a(n-1)/6)]` with `a(0)=22`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120181

/-- `Δ[ceil(a(n-1)+a(n-1)/6)]` -/
def P11729516205212447553.Spec : Prop :=
  ∀ n, P11729516205212447553.a n = A120181 (n + 1)

theorem P11729516205212447553.correct : P11729516205212447553.Spec := by
  intro n
  simp only [A120181, Nat.add_sub_cancel]

end A120181

/-! ## A120181.P13229969232997566347

`Δ[A276278(a(n-1))]` with `a(0)=8`
-/

namespace A120181.P13229969232997566347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A276278 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120181.P13229969232997566347

namespace A120181

/-- `Δ[A276278(a(n-1))]` -/
def P13229969232997566347.Spec : Prop :=
  ∀ n, P13229969232997566347.a n = A120181 (n + 1)

end A120181

/-! ## A120181.P1640358132678527427

`Δ[A047304(a(n-1))]` with `a(0)=28`
-/

namespace A120181.P1640358132678527427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  A047304 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120181.P1640358132678527427

namespace A120181

/-- `Δ[A047304(a(n-1))]` -/
def P1640358132678527427.Spec : Prop :=
  ∀ n, P1640358132678527427.a n = A120181 (n + 1)

end A120181

/-! ## A120181.P6421179749541108048

`Δ[A047306(a(n-1))]` with `a(0)=29`
-/

namespace A120181.P6421179749541108048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120181.P6421179749541108048

namespace A120181

/-- `Δ[A047306(a(n-1))]` -/
def P6421179749541108048.Spec : Prop :=
  ∀ n, P6421179749541108048.a n = A120181 (n + 1)

end A120181

/-! ## A120181.P8166303328050426163

`Δ[A047310(a(n-1))]` with `a(0)=30`
-/

namespace A120181.P8166303328050426163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  A047310 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120181.P8166303328050426163

namespace A120181

/-- `Δ[A047310(a(n-1))]` -/
def P8166303328050426163.Spec : Prop :=
  ∀ n, P8166303328050426163.a n = A120181 (n + 1)

end A120181

/-!
# A120182: a(1)=5; a(n)=floor((34+sum(a(1) to a(n-1)))/6).

The programs for A120182, the canonical program `A120182.P13962218164556368492` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120182 has offset 1).

The definition of A120182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120182.P13962218164556368492

`Δ[ceil(a(n-1)+a(n-1)/6)]` with `a(0)=29`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120182

/-- `Δ[ceil(a(n-1)+a(n-1)/6)]` -/
def P13962218164556368492.Spec : Prop :=
  ∀ n, P13962218164556368492.a n = A120182 (n + 1)

theorem P13962218164556368492.correct : P13962218164556368492.Spec := by
  intro n
  simp only [A120182, Nat.add_sub_cancel]

end A120182

/-! ## A120182.P996976139320304686

`Δ[A276278(a(n-1))]` with `a(0)=15`
-/

namespace A120182.P996976139320304686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  A276278 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120182.P996976139320304686

namespace A120182

/-- `Δ[A276278(a(n-1))]` -/
def P996976139320304686.Spec : Prop :=
  ∀ n, P996976139320304686.a n = A120182 (n + 1)

end A120182

/-! ## A120182.P17207736974318340745

`Δ[A304806(a(n-1))]` with `a(0)=24`
-/

namespace A120182.P17207736974318340745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  A304806 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120182.P17207736974318340745

namespace A120182

/-- `Δ[A304806(a(n-1))]` -/
def P17207736974318340745.Spec : Prop :=
  ∀ n, P17207736974318340745.a n = A120182 (n + 1)

end A120182

/-! ## A120182.P13185567851285866025

`Δ[A047304(a(n-1))]` with `a(0)=35`
-/

namespace A120182.P13185567851285866025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35] fun n f1 =>
  A047304 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120182.P13185567851285866025

namespace A120182

/-- `Δ[A047304(a(n-1))]` -/
def P13185567851285866025.Spec : Prop :=
  ∀ n, P13185567851285866025.a n = A120182 (n + 1)

end A120182

/-! ## A120182.P17960879288676641747

`Δ[A047306(a(n-1))]` with `a(0)=36`
-/

namespace A120182.P17960879288676641747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120182.P17960879288676641747

namespace A120182

/-- `Δ[A047306(a(n-1))]` -/
def P17960879288676641747.Spec : Prop :=
  ∀ n, P17960879288676641747.a n = A120182 (n + 1)

end A120182

/-!
# A120183: a(1)=6; a(n)=floor((41+sum(a(1) to a(n-1)))/6).

The programs for A120183, the canonical program `A120183.P15971756798665120494` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120183 has offset 1).

The definition of A120183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120183.P15971756798665120494

`Δ[floor(a(n-1)+a(n-1)/6)]` with `a(0)=41`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120183

/-- `Δ[floor(a(n-1)+a(n-1)/6)]` -/
def P15971756798665120494.Spec : Prop :=
  ∀ n, P15971756798665120494.a n = A120183 (n + 1)

theorem P15971756798665120494.correct : P15971756798665120494.Spec := by
  intro n
  simp only [A120183, Nat.add_sub_cancel]

end A120183

/-! ## A120183.P6429594280117118452

`Δ[A276278(a(n-1))]` with `a(0)=22`
-/

namespace A120183.P6429594280117118452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  A276278 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120183.P6429594280117118452

namespace A120183

/-- `Δ[A276278(a(n-1))]` -/
def P6429594280117118452.Spec : Prop :=
  ∀ n, P6429594280117118452.a n = A120183 (n + 1)

end A120183

/-! ## A120183.P11747504257794175932

`Δ[A047310(a(n-1))]` with `a(0)=44`
-/

namespace A120183.P11747504257794175932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f1 =>
  A047310 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120183.P11747504257794175932

namespace A120183

/-- `Δ[A047310(a(n-1))]` -/
def P11747504257794175932.Spec : Prop :=
  ∀ n, P11747504257794175932.a n = A120183 (n + 1)

end A120183

/-! ## A120183.P9761103348855545319

`Δ[A032775(a(n-1))]` with `a(0)=46`
-/

namespace A120183.P9761103348855545319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [46] fun n f1 =>
  A032775 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120183.P9761103348855545319

namespace A120183

/-- `Δ[A032775(a(n-1))]` -/
def P9761103348855545319.Spec : Prop :=
  ∀ n, P9761103348855545319.a n = A120183 (n + 1)

end A120183

/-! ## A120183.P10542427330271981805

`Δ[A047304(a(n-1)+5)]` with `a(0)=7`
-/

namespace A120183.P10542427330271981805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A047304 (f1 (n - 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120183.P10542427330271981805

namespace A120183

/-- `Δ[A047304(a(n-1)+5)]` -/
def P10542427330271981805.Spec : Prop :=
  ∀ n, P10542427330271981805.a n = A120183 (n + 1)

end A120183

/-!
# A120184: a(1)=8; a(n)=floor((48+sum(a(1) to a(n-1)))/6).

The programs for A120184, there is no canonical definition to state claims against.
-/

/-! ## A120184.P14268782939864752442

`Δ[A047304(a(n-1))]` with `a(0)=49`
-/

namespace A120184.P14268782939864752442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  A047304 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120184.P14268782939864752442

/-! ## A120184.P13133996015781294236

`Δ[A047306(a(n-1))]` with `a(0)=50`
-/

namespace A120184.P13133996015781294236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120184.P13133996015781294236

/-! ## A120184.P6995858427671512111

`Δ[A047310(a(n-1))]` with `a(0)=51`
-/

namespace A120184.P6995858427671512111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [51] fun n f1 =>
  A047310 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120184.P6995858427671512111

/-! ## A120184.P7990128281216555748

`Δ[A047318(a(n-1)+7)]` with `a(0)=3`
-/

namespace A120184.P7990128281216555748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A047318 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120184.P7990128281216555748

/-! ## A120184.P14864260411846156571

`Δ[A032775(a(n-1)+7)]` with `a(0)=4`
-/

namespace A120184.P14864260411846156571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A032775 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120184.P14864260411846156571

/-!
# A120185: a(1)=9; a(n)=floor((55+sum(a(1) to a(n-1)))/6).

The programs for A120185, the canonical program `A120185.P3694619911968088974` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120185 has offset 1).

The definition of A120185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120185.P3694619911968088974

`Δ[ceil(a(n-1)+a(n-1)/6)]` with `a(0)=50`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120185

/-- `Δ[ceil(a(n-1)+a(n-1)/6)]` -/
def P3694619911968088974.Spec : Prop :=
  ∀ n, P3694619911968088974.a n = A120185 (n + 1)

theorem P3694619911968088974.correct : P3694619911968088974.Spec := by
  intro n
  simp only [A120185, Nat.add_sub_cancel]

end A120185

/-! ## A120185.P2192513324095279910

`Δ[A047306(a(n-1))]` with `a(0)=57`
-/

namespace A120185.P2192513324095279910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [57] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120185.P2192513324095279910

namespace A120185

/-- `Δ[A047306(a(n-1))]` -/
def P2192513324095279910.Spec : Prop :=
  ∀ n, P2192513324095279910.a n = A120185 (n + 1)

end A120185

/-! ## A120185.P18268594138251778661

`Δ[A047310(a(n-1))]` with `a(0)=58`
-/

namespace A120185.P18268594138251778661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [58] fun n f1 =>
  A047310 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120185.P18268594138251778661

namespace A120185

/-- `Δ[A047310(a(n-1))]` -/
def P18268594138251778661.Spec : Prop :=
  ∀ n, P18268594138251778661.a n = A120185 (n + 1)

end A120185

/-! ## A120185.P9556823648323836517

`Δ[A047304(a(n-1)+7)]` with `a(0)=7`
-/

namespace A120185.P9556823648323836517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A047304 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120185.P9556823648323836517

namespace A120185

/-- `Δ[A047304(a(n-1)+7)]` -/
def P9556823648323836517.Spec : Prop :=
  ∀ n, P9556823648323836517.a n = A120185 (n + 1)

end A120185

/-! ## A120185.P3525993001059858780

`Δ[A032775(a(n-1)+7)]` with `a(0)=11`
-/

namespace A120185.P3525993001059858780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  A032775 (f1 (n - 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120185.P3525993001059858780

namespace A120185

/-- `Δ[A032775(a(n-1)+7)]` -/
def P3525993001059858780.Spec : Prop :=
  ∀ n, P3525993001059858780.a n = A120185 (n + 1)

end A120185

/-!
# A120186: a(n) = ceiling( Sum_{i=1..n-1} a(i)/7 ), a(1) = 1.

The programs for A120186, the canonical program `A120186.P8178298802899327407` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120186 has offset 1).

The definition of A120186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120186.P8178298802899327407

`Δ[floor(8/7*a(n-1))]` with `a(0)=6, a(1)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120186

/-- `Δ[floor(8/7*a(n-1))]` -/
def P8178298802899327407.Spec : Prop :=
  ∀ n, P8178298802899327407.a n = A120186 (n + 1)

theorem P8178298802899327407.correct : P8178298802899327407.Spec := by
  intro n
  simp only [A120186, Nat.add_sub_cancel]

end A120186

/-! ## A120186.P4828246409176211437

`Δ[ceil(a(n-1)+a(n-1)/7)]` with `a(0)=0, a(1)=1`
-/

namespace A120186.P4828246409176211437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120186.P4828246409176211437

namespace A120186

/-- `Δ[ceil(a(n-1)+a(n-1)/7)]` -/
def P4828246409176211437.Spec : Prop :=
  ∀ n, P4828246409176211437.a n = A120186 (n + 1)

end A120186

/-! ## A120186.P14863876954205185297

`floor(A182308(A233583(n+1))/8)`
-/

namespace A120186.P14863876954205185297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182308 (A233583 (n + 1)).toNat : ℚ) / 8⌋

end

end A120186.P14863876954205185297

namespace A120186

/-- `floor(A182308(A233583(n+1))/8)` -/
def P14863876954205185297.Spec : Prop :=
  ∀ n, P14863876954205185297.a n = A120186 (n + 1)

end A120186

/-! ## A120186.P11264941799472998864

`A245401(n+1)/8`
-/

namespace A120186.P11264941799472998864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245401 (n + 1) : ℚ) / 8

end

end A120186.P11264941799472998864

namespace A120186

/-- `A245401(n+1)/8` -/
def P11264941799472998864.Spec : Prop :=
  ∀ n, P11264941799472998864.a n = (A120186 (n + 1) : ℚ)

end A120186

/-! ## A120186.P15184411813844910383

`A006085(A245401(n+1))`
-/

namespace A120186.P15184411813844910383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A245401 (n + 1)).toNat

end

end A120186.P15184411813844910383

namespace A120186

/-- `A006085(A245401(n+1))` -/
def P15184411813844910383.Spec : Prop :=
  ∀ n, P15184411813844910383.a n = A120186 (n + 1)

end A120186

/-! ## A120186.P9202061493780840484

`A110656(A182308(n)-6)`
-/

namespace A120186.P9202061493780840484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A182308 n - 6).toNat

end

end A120186.P9202061493780840484

namespace A120186

/-- `A110656(A182308(n)-6)` -/
def P9202061493780840484.Spec : Prop :=
  ∀ n, P9202061493780840484.a n = A120186 (n + 1)

end A120186

/-! ## A120186.P5782812205637973413

`A110655(A065033(A279078(n)))`
-/

namespace A120186.P5782812205637973413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A065033 (A279078 n).toNat).toNat

end

end A120186.P5782812205637973413

namespace A120186

/-- `A110655(A065033(A279078(n)))` -/
def P5782812205637973413.Spec : Prop :=
  ∀ n, P5782812205637973413.a n = A120186 (n + 1)

end A120186

/-!
# A120187: a(1)=2; a(n) = floor((15 + Sum_{j=1..n-1} a(j))/7).

The programs for A120187, the canonical program `A120187.P2512886205676555408` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120187 has offset 1).

The definition of A120187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120187.P2512886205676555408

`Δ[ceil(a(n-1)+a(n-1)/7)]` with `a(0)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120187

/-- `Δ[ceil(a(n-1)+a(n-1)/7)]` -/
def P2512886205676555408.Spec : Prop :=
  ∀ n, P2512886205676555408.a n = A120187 (n + 1)

theorem P2512886205676555408.correct : P2512886205676555408.Spec := by
  intro n
  simp only [A120187, Nat.add_sub_cancel]

end A120187

/-! ## A120187.P94480464947355871

`Δ[round(a(n-1)+a(n-1)/7)]` with `a(0)=12`
-/

namespace A120187.P94480464947355871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P94480464947355871

namespace A120187

/-- `Δ[round(a(n-1)+a(n-1)/7)]` -/
def P94480464947355871.Spec : Prop :=
  ∀ n, P94480464947355871.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P6132207245303399425

`Δ[floor(8*a(n-1)/7)]` with `a(0)=15`
-/

namespace A120187.P6132207245303399425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  ⌊(8 * f1 (n - 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P6132207245303399425

namespace A120187

/-- `Δ[floor(8*a(n-1)/7)]` -/
def P6132207245303399425.Spec : Prop :=
  ∀ n, P6132207245303399425.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P13032772816536644489

`Δ[A047573(a(n-1))]` with `a(0)=19`
-/

namespace A120187.P13032772816536644489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  A047573 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P13032772816536644489

namespace A120187

/-- `Δ[A047573(a(n-1))]` -/
def P13032772816536644489.Spec : Prop :=
  ∀ n, P13032772816536644489.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P15931809576605690791

`Δ[A047588(a(n-1))]` with `a(0)=20`
-/

namespace A120187.P15931809576605690791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  A047588 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P15931809576605690791

namespace A120187

/-- `Δ[A047588(a(n-1))]` -/
def P15931809576605690791.Spec : Prop :=
  ∀ n, P15931809576605690791.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P9577528360341553690

`Δ[A004776(a(n-1))]` with `a(0)=21`
-/

namespace A120187.P9577528360341553690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  A004776 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P9577528360341553690

namespace A120187

/-- `Δ[A004776(a(n-1))]` -/
def P9577528360341553690.Spec : Prop :=
  ∀ n, P9577528360341553690.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P7264311487249411817

`Δ[A004775(a(n-1)+3)]` with `a(0)=3`
-/

namespace A120187.P7264311487249411817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A004775 (f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P7264311487249411817

namespace A120187

/-- `Δ[A004775(a(n-1)+3)]` -/
def P7264311487249411817.Spec : Prop :=
  ∀ n, P7264311487249411817.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P4002099169519914602

`Δ[A047592(a(n-1)+2)]` with `a(0)=0, a(1)=2`
-/

namespace A120187.P4002099169519914602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A047592 (f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P4002099169519914602

namespace A120187

/-- `Δ[A047592(a(n-1)+2)]` -/
def P4002099169519914602.Spec : Prop :=
  ∀ n, P4002099169519914602.a n = A120187 (n + 1)

end A120187

/-! ## A120187.P9253108420604901116

`Δ[A047594(a(A023443(n)))]` with `a(0)=17`
-/

namespace A120187.P9253108420604901116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  A047594 (f1 (A023443 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120187.P9253108420604901116

namespace A120187

/-- `Δ[A047594(a(A023443(n)))]` -/
def P9253108420604901116.Spec : Prop :=
  ∀ n, P9253108420604901116.a n = A120187 (n + 1)

end A120187

/-!
# A120188: a(1)=3; a(n)=floor((23+sum(a(1) to a(n-1)))/7).

The programs for A120188, the canonical program `A120188.P12423794023026540880` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120188 has offset 1).

The definition of A120188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120188.P12423794023026540880

`Δ[ceil(8/7*a(n-1))]` with `a(0)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120188

/-- `Δ[ceil(8/7*a(n-1))]` -/
def P12423794023026540880.Spec : Prop :=
  ∀ n, P12423794023026540880.a n = A120188 (n + 1)

theorem P12423794023026540880.correct : P12423794023026540880.Spec := by
  intro n
  simp only [A120188, Nat.add_sub_cancel]

end A120188

/-! ## A120188.P4685754620825624368

`Δ[ceil(a(n-1)+a(n-1)/7)]` with `a(0)=17`
-/

namespace A120188.P4685754620825624368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120188.P4685754620825624368

namespace A120188

/-- `Δ[ceil(a(n-1)+a(n-1)/7)]` -/
def P4685754620825624368.Spec : Prop :=
  ∀ n, P4685754620825624368.a n = A120188 (n + 1)

theorem P4685754620825624368.correct : P4685754620825624368.Spec := by
  intro n
  simp only [A120188, Nat.add_sub_cancel, A120188.P4685754620825624368.f1, A120188.P4685754620825624368.a, A120188.P12423794023026540880.f1, A120188.P12423794023026540880.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120188

/-! ## A120188.P293032786182487583

`Δ[round(a(n-1)+a(n-1)/7)]` with `a(0)=20`
-/

namespace A120188.P293032786182487583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120188.P293032786182487583

namespace A120188

/-- `Δ[round(a(n-1)+a(n-1)/7)]` -/
def P293032786182487583.Spec : Prop :=
  ∀ n, P293032786182487583.a n = A120188 (n + 1)

end A120188

/-! ## A120188.P13256964855496320785

`Δ[floor(8/7*a(n-1))]%A182305(n)` with `a(0)=23`
-/

namespace A120188.P13256964855496320785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  ⌊(8 : ℚ) / 7 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A182305 n)

end

end A120188.P13256964855496320785

namespace A120188

/-- `Δ[floor(8/7*a(n-1))]%A182305(n)` -/
def P13256964855496320785.Spec : Prop :=
  ∀ n, P13256964855496320785.a n = A120188 (n + 1)

end A120188

/-! ## A120188.P9977311819864180921

`Δ[A047592(a(n-1))]` with `a(0)=24`
-/

namespace A120188.P9977311819864180921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  A047592 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120188.P9977311819864180921

namespace A120188

/-- `Δ[A047592(a(n-1))]` -/
def P9977311819864180921.Spec : Prop :=
  ∀ n, P9977311819864180921.a n = A120188 (n + 1)

end A120188

/-!
# A120189: a(1)=4; a(n) = floor((31+Sum_{i=1..n-1} a(i))/7).

The programs for A120189, the canonical program `A120189.P15232528209714439978` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120189 has offset 1).

The definition of A120189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120189.P15232528209714439978

`Δ[floor(8/7*a(n-1))]` with `a(0)=31`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120189

/-- `Δ[floor(8/7*a(n-1))]` -/
def P15232528209714439978.Spec : Prop :=
  ∀ n, P15232528209714439978.a n = A120189 (n + 1)

theorem P15232528209714439978.correct : P15232528209714439978.Spec := by
  intro n
  simp only [A120189, Nat.add_sub_cancel]

end A120189

/-! ## A120189.P14797398028862393452

`Δ[ceil(a(n-1)+a(n-1)/7)]` with `a(0)=25`
-/

namespace A120189.P14797398028862393452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120189.P14797398028862393452

namespace A120189

/-- `Δ[ceil(a(n-1)+a(n-1)/7)]` -/
def P14797398028862393452.Spec : Prop :=
  ∀ n, P14797398028862393452.a n = A120189 (n + 1)

end A120189

/-! ## A120189.P541690249289443910

`Δ[floor(a(n-1)+a(n-1)/7)]` with `a(0)=31`
-/

namespace A120189.P541690249289443910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [31] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120189.P541690249289443910

namespace A120189

/-- `Δ[floor(a(n-1)+a(n-1)/7)]` -/
def P541690249289443910.Spec : Prop :=
  ∀ n, P541690249289443910.a n = A120189 (n + 1)

theorem P541690249289443910.correct : P541690249289443910.Spec := by
  intro n
  simp only [A120189, Nat.add_sub_cancel, A120189.P541690249289443910.f1, A120189.P541690249289443910.a, A120189.P15232528209714439978.f1, A120189.P15232528209714439978.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120189

/-! ## A120189.P7877963899463848230

`Δ[A047592(a(n-1)+4)]` with `a(0)=0`
-/

namespace A120189.P7877963899463848230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A047592 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120189.P7877963899463848230

namespace A120189

/-- `Δ[A047592(a(n-1)+4)]` -/
def P7877963899463848230.Spec : Prop :=
  ∀ n, P7877963899463848230.a n = A120189 (n + 1)

end A120189

/-! ## A120189.P5207489918333305412

`Δ[A047588(a(n-1)+4)]` with `a(0)=4`
-/

namespace A120189.P5207489918333305412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A047588 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120189.P5207489918333305412

namespace A120189

/-- `Δ[A047588(a(n-1)+4)]` -/
def P5207489918333305412.Spec : Prop :=
  ∀ n, P5207489918333305412.a n = A120189 (n + 1)

end A120189

/-!
# A120190: a(1)=5; a(n)=floor((39+sum(a(1) to a(n-1)))/7).

The programs for A120190, the canonical program `A120190.P2594834205371547550` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120190 has offset 1).

The definition of A120190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1697 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120190.P2594834205371547550

`Δ[floor(8/7*a(n-1))]` with `a(0)=39`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120190

/-- `Δ[floor(8/7*a(n-1))]` -/
def P2594834205371547550.Spec : Prop :=
  ∀ n, P2594834205371547550.a n = A120190 (n + 1)

theorem P2594834205371547550.correct : P2594834205371547550.Spec := by
  intro n
  simp only [A120190, Nat.add_sub_cancel]

end A120190

/-! ## A120190.P12349172972187546835

`Δ[A047594(a(n-1))]` with `a(0)=41`
-/

namespace A120190.P12349172972187546835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41] fun n f1 =>
  A047594 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120190.P12349172972187546835

namespace A120190

/-- `Δ[A047594(a(n-1))]` -/
def P12349172972187546835.Spec : Prop :=
  ∀ n, P12349172972187546835.a n = A120190 (n + 1)

end A120190

/-! ## A120190.P17500901907129665490

`Δ[A047573(a(n-1))]` with `a(0)=43`
-/

namespace A120190.P17500901907129665490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [43] fun n f1 =>
  A047573 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120190.P17500901907129665490

namespace A120190

/-- `Δ[A047573(a(n-1))]` -/
def P17500901907129665490.Spec : Prop :=
  ∀ n, P17500901907129665490.a n = A120190 (n + 1)

end A120190

/-! ## A120190.P4301788306906860156

`Δ[A004777(a(n-1)+5)]` with `a(0)=7`
-/

namespace A120190.P4301788306906860156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A004777 (f1 (n - 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120190.P4301788306906860156

namespace A120190

/-- `Δ[A004777(a(n-1)+5)]` -/
def P4301788306906860156.Spec : Prop :=
  ∀ n, P4301788306906860156.a n = A120190 (n + 1)

end A120190

/-! ## A120190.P11365287829241219925

`Δ[A047592(a(n-1)+4)]` with `a(0)=8`
-/

namespace A120190.P11365287829241219925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A047592 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120190.P11365287829241219925

namespace A120190

/-- `Δ[A047592(a(n-1)+4)]` -/
def P11365287829241219925.Spec : Prop :=
  ∀ n, P11365287829241219925.a n = A120190 (n + 1)

end A120190

/-!
# A120191: a(1)=6; a(n)=floor((47+sum(a(1) to a(n-1)))/7).

The programs for A120191, the canonical program `A120191.P9846810445603990854` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120191 has offset 1).

The definition of A120191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120191.P9846810445603990854

`Δ[floor(a(n-1)+a(n-1)/7)]` with `a(0)=47`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120191

/-- `Δ[floor(a(n-1)+a(n-1)/7)]` -/
def P9846810445603990854.Spec : Prop :=
  ∀ n, P9846810445603990854.a n = A120191 (n + 1)

theorem P9846810445603990854.correct : P9846810445603990854.Spec := by
  intro n
  simp only [A120191, Nat.add_sub_cancel]

end A120191

/-! ## A120191.P511103736268792447

`Δ[A047594(a(n-1))]` with `a(0)=49`
-/

namespace A120191.P511103736268792447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  A047594 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120191.P511103736268792447

namespace A120191

/-- `Δ[A047594(a(n-1))]` -/
def P511103736268792447.Spec : Prop :=
  ∀ n, P511103736268792447.a n = A120191 (n + 1)

end A120191

/-! ## A120191.P1950832492040965265

`A132914(A120157(n+2))`
-/

namespace A120191.P1950832492040965265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (A120157 (n + 2)).toNat

end

end A120191.P1950832492040965265

namespace A120191

/-- `A132914(A120157(n+2))` -/
def P1950832492040965265.Spec : Prop :=
  ∀ n, P1950832492040965265.a n = A120191 (n + 1)

end A120191

/-! ## A120191.P12224053418353921831

`A194847(A238545(2*n+5))+2`
-/

namespace A120191.P12224053418353921831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 (A238545 (2 * n + 5)).toNat + 2

end

end A120191.P12224053418353921831

namespace A120191

/-- `A194847(A238545(2*n+5))+2` -/
def P12224053418353921831.Spec : Prop :=
  ∀ n, P12224053418353921831.a n = A120191 (n + 1)

end A120191

/-! ## A120191.P9758887173196758566

`A360924(A325098(n)+A133041(n+3))`
-/

namespace A120191.P9758887173196758566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A325098 n + A133041 (n + 3)).toNat

end

end A120191.P9758887173196758566

namespace A120191

/-- `A360924(A325098(n)+A133041(n+3))` -/
def P9758887173196758566.Spec : Prop :=
  ∀ n, P9758887173196758566.a n = A120191 (n + 1)

end A120191

/-!
# A120192: a(1)=7; a(n)=floor((55+sum(a(1) to a(n-1)))/7).

The programs for A120192, the canonical program `A120192.P9412843305121768159` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120192 has offset 1).

The definition of A120192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1694 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120192.P9412843305121768159

`Δ[floor(8/7*a(n-1))]` with `a(0)=55`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120192

/-- `Δ[floor(8/7*a(n-1))]` -/
def P9412843305121768159.Spec : Prop :=
  ∀ n, P9412843305121768159.a n = A120192 (n + 1)

theorem P9412843305121768159.correct : P9412843305121768159.Spec := by
  intro n
  simp only [A120192, Nat.add_sub_cancel]

end A120192

/-! ## A120192.P5276954739856228484

`Δ[A047588(a(n-1))]` with `a(0)=60`
-/

namespace A120192.P5276954739856228484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [60] fun n f1 =>
  A047588 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120192.P5276954739856228484

namespace A120192

/-- `Δ[A047588(a(n-1))]` -/
def P5276954739856228484.Spec : Prop :=
  ∀ n, P5276954739856228484.a n = A120192 (n + 1)

end A120192

/-! ## A120192.P11711180551159226581

`Δ[A004775(a(n-1))]` with `a(0)=67`
-/

namespace A120192.P11711180551159226581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [67] fun n f1 =>
  A004775 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120192.P11711180551159226581

namespace A120192

/-- `Δ[A004775(a(n-1))]` -/
def P11711180551159226581.Spec : Prop :=
  ∀ n, P11711180551159226581.a n = A120192 (n + 1)

end A120192

/-! ## A120192.P8994474813115553442

`Δ[A004776(a(n-1)+3)]` with `a(0)=37`
-/

namespace A120192.P8994474813115553442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37] fun n f1 =>
  A004776 (f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120192.P8994474813115553442

namespace A120192

/-- `Δ[A004776(a(n-1)+3)]` -/
def P8994474813115553442.Spec : Prop :=
  ∀ n, P8994474813115553442.a n = A120192 (n + 1)

end A120192

/-! ## A120192.P1384929335263216780

`Δ[A047594(A020705(a(n-1)))]` with `a(0)=25`
-/

namespace A120192.P1384929335263216780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  A047594 (A020705 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120192.P1384929335263216780

namespace A120192

/-- `Δ[A047594(A020705(a(n-1)))]` -/
def P1384929335263216780.Spec : Prop :=
  ∀ n, P1384929335263216780.a n = A120192 (n + 1)

end A120192

/-!
# A120193: a(1)=9; a(n)=floor((63+sum(a(1) to a(n-1)))/7).

The programs for A120193, the canonical program `A120193.P11564290349573362498` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120193 has offset 1).

The definition of A120193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120193.P11564290349573362498

`Δ[floor(8/7*a(n-1))]` with `a(0)=63`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120193

/-- `Δ[floor(8/7*a(n-1))]` -/
def P11564290349573362498.Spec : Prop :=
  ∀ n, P11564290349573362498.a n = A120193 (n + 1)

theorem P11564290349573362498.correct : P11564290349573362498.Spec := by
  intro n
  simp only [A120193, Nat.add_sub_cancel]

end A120193

/-! ## A120193.P6069745371237166318

`Δ[a(n-1)+floor(a(n-1)/7)]` with `a(0)=63`
-/

namespace A120193.P6069745371237166318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [63] fun n f1 =>
  f1 (n - 1) + ⌊(f1 (n - 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120193.P6069745371237166318

namespace A120193

/-- `Δ[a(n-1)+floor(a(n-1)/7)]` -/
def P6069745371237166318.Spec : Prop :=
  ∀ n, P6069745371237166318.a n = A120193 (n + 1)

end A120193

/-! ## A120193.P8983592236710180559

`Δ[A004774(a(n-1)+9)]` with `a(0)=1`
-/

namespace A120193.P8983592236710180559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004774 (f1 (n - 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120193.P8983592236710180559

namespace A120193

/-- `Δ[A004774(a(n-1)+9)]` -/
def P8983592236710180559.Spec : Prop :=
  ∀ n, P8983592236710180559.a n = A120193 (n + 1)

end A120193

/-! ## A120193.P9532550666170215075

`Δ[A047588(a(n-1)+3)]` with `a(0)=44`
-/

namespace A120193.P9532550666170215075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f1 =>
  A047588 (f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120193.P9532550666170215075

namespace A120193

/-- `Δ[A047588(a(n-1)+3)]` -/
def P9532550666170215075.Spec : Prop :=
  ∀ n, P9532550666170215075.a n = A120193 (n + 1)

end A120193

/-! ## A120193.P16607653940368814736

`A004739(A120187(n+13)²)`
-/

namespace A120193.P16607653940368814736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A120187 (n + 13) ^ 2).toNat

end

end A120193.P16607653940368814736

namespace A120193

/-- `A004739(A120187(n+13)²)` -/
def P16607653940368814736.Spec : Prop :=
  ∀ n, P16607653940368814736.a n = A120193 (n + 1)

end A120193

/-!
# A120194: a(n) = ceiling( Sum_{i=1..n-1} a(i)/8 ), a(1)=1.

The programs for A120194, the canonical program `A120194.P17135692445762409874` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120194 has offset 1).

The definition of A120194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120194.P17135692445762409874

`Δ[floor(9/8*a(n-1))]` with `a(0)=7, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120194

/-- `Δ[floor(9/8*a(n-1))]` -/
def P17135692445762409874.Spec : Prop :=
  ∀ n, P17135692445762409874.a n = A120194 (n + 1)

theorem P17135692445762409874.correct : P17135692445762409874.Spec := by
  intro n
  simp only [A120194, Nat.add_sub_cancel]

end A120194

/-! ## A120194.P4150337095193562695

`Δ[floor(a(n-1)/(1-1/9))]` with `a(0)=7, a(1)=8`
-/

namespace A120194.P4150337095193562695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 9)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120194.P4150337095193562695

namespace A120194

/-- `Δ[floor(a(n-1)/(1-1/9))]` -/
def P4150337095193562695.Spec : Prop :=
  ∀ n, P4150337095193562695.a n = A120194 (n + 1)

theorem P4150337095193562695.correct : P4150337095193562695.Spec := by
  intro n
  simp only [A120194, Nat.add_sub_cancel, A120194.P4150337095193562695.f1, A120194.P4150337095193562695.a, A120194.P17135692445762409874.f1, A120194.P17135692445762409874.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120194

/-! ## A120194.P4658274213943748744

`floor(A279079(n)/9)+1`
-/

namespace A120194.P4658274213943748744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A279079 n : ℚ) / 9⌋ + 1

end

end A120194.P4658274213943748744

namespace A120194

/-- `floor(A279079(n)/9)+1` -/
def P4658274213943748744.Spec : Prop :=
  ∀ n, P4658274213943748744.a n = A120194 (n + 1)

end A120194

/-! ## A120194.P1668603113408921715

`ceil(A279079(A028310(n))/9)`
-/

namespace A120194.P1668603113408921715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279079 (A028310 n).toNat : ℚ) / 9⌉

end

end A120194.P1668603113408921715

namespace A120194

/-- `ceil(A279079(A028310(n))/9)` -/
def P1668603113408921715.Spec : Prop :=
  ∀ n, P1668603113408921715.a n = A120194 (n + 1)

end A120194

/-! ## A120194.P10284195380605239431

`ceil(A279079(A233583(n+1))/9)`
-/

namespace A120194.P10284195380605239431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279079 (A233583 (n + 1)).toNat : ℚ) / 9⌉

end

end A120194.P10284195380605239431

namespace A120194

/-- `ceil(A279079(A233583(n+1))/9)` -/
def P10284195380605239431.Spec : Prop :=
  ∀ n, P10284195380605239431.a n = A120194 (n + 1)

end A120194

/-! ## A120194.P10920309748184953782

`A245400(n+1)/9`
-/

namespace A120194.P10920309748184953782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245400 (n + 1) : ℚ) / 9

end

end A120194.P10920309748184953782

namespace A120194

/-- `A245400(n+1)/9` -/
def P10920309748184953782.Spec : Prop :=
  ∀ n, P10920309748184953782.a n = (A120194 (n + 1) : ℚ)

end A120194

/-! ## A120194.P2036916995296631803

`A106610(A245400(n+1))`
-/

namespace A120194.P2036916995296631803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A245400 (n + 1)).toNat

end

end A120194.P2036916995296631803

namespace A120194

/-- `A106610(A245400(n+1))` -/
def P2036916995296631803.Spec : Prop :=
  ∀ n, P2036916995296631803.a n = A120194 (n + 1)

end A120194

/-! ## A120194.P14238898324744857201

`A343609(A279079(n))+1`
-/

namespace A120194.P14238898324744857201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A279079 n).toNat + 1

end

end A120194.P14238898324744857201

namespace A120194

/-- `A343609(A279079(n))+1` -/
def P14238898324744857201.Spec : Prop :=
  ∀ n, P14238898324744857201.a n = A120194 (n + 1)

end A120194

/-!
# A120195: a(1)=2; a(n) = floor((17 + Sum_{j=1..n-1} a(j))/8).

The programs for A120195, the canonical program `A120195.P4834058026946265950` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120195 has offset 1).

The definition of A120195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120195.P4834058026946265950

`Δ[floor(9/8*a(n-1))]` with `a(0)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120195

/-- `Δ[floor(9/8*a(n-1))]` -/
def P4834058026946265950.Spec : Prop :=
  ∀ n, P4834058026946265950.a n = A120195 (n + 1)

theorem P4834058026946265950.correct : P4834058026946265950.Spec := by
  intro n
  simp only [A120195, Nat.add_sub_cancel]

end A120195

/-! ## A120195.P6198965694830151622

`Δ[ceil(a(n-1)+a(n-1)/8)]` with `a(0)=10`
-/

namespace A120195.P6198965694830151622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120195.P6198965694830151622

namespace A120195

/-- `Δ[ceil(a(n-1)+a(n-1)/8)]` -/
def P6198965694830151622.Spec : Prop :=
  ∀ n, P6198965694830151622.a n = A120195 (n + 1)

end A120195

/-! ## A120195.P6846133699356716026

`Δ[round(a(n-1)+a(n-1)/8)]` with `a(0)=13`
-/

namespace A120195.P6846133699356716026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120195.P6846133699356716026

namespace A120195

/-- `Δ[round(a(n-1)+a(n-1)/8)]` -/
def P6846133699356716026.Spec : Prop :=
  ∀ n, P6846133699356716026.a n = A120195 (n + 1)

end A120195

/-! ## A120195.P1203329065266648800

`Δ[floor(a(n-1)+a(n-1)/8)]` with `a(0)=17`
-/

namespace A120195.P1203329065266648800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120195.P1203329065266648800

namespace A120195

/-- `Δ[floor(a(n-1)+a(n-1)/8)]` -/
def P1203329065266648800.Spec : Prop :=
  ∀ n, P1203329065266648800.a n = A120195 (n + 1)

theorem P1203329065266648800.correct : P1203329065266648800.Spec := by
  intro n
  simp only [A120195, Nat.add_sub_cancel, A120195.P1203329065266648800.f1, A120195.P1203329065266648800.a, A120195.P4834058026946265950.f1, A120195.P4834058026946265950.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120195

/-! ## A120195.P12289457009231612531

`Δ[A248375(a(n-1))]` with `a(0)=17`
-/

namespace A120195.P12289457009231612531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  A248375 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120195.P12289457009231612531

namespace A120195

/-- `Δ[A248375(a(n-1))]` -/
def P12289457009231612531.Spec : Prop :=
  ∀ n, P12289457009231612531.a n = A120195 (n + 1)

end A120195

/-! ## A120195.P5223525344169278000

`Δ[A168183(a(n-1))]` with `a(0)=18`
-/

namespace A120195.P5223525344169278000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [18] fun n f1 =>
  A168183 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120195.P5223525344169278000

namespace A120195

/-- `Δ[A168183(a(n-1))]` -/
def P5223525344169278000.Spec : Prop :=
  ∀ n, P5223525344169278000.a n = A120195 (n + 1)

end A120195

/-!
# A120196: a(1)=3; a(n) = floor((26 + Sum_{j=1..n-1} a(j))/8).

The programs for A120196, the canonical program `A120196.P3128526105847888813` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120196 has offset 1).

The definition of A120196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120196.P3128526105847888813

`Δ[round(a(n-1)+a(n-1)/8)]` with `a(0)=22`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120196

/-- `Δ[round(a(n-1)+a(n-1)/8)]` -/
def P3128526105847888813.Spec : Prop :=
  ∀ n, P3128526105847888813.a n = A120196 (n + 1)

theorem P3128526105847888813.correct : P3128526105847888813.Spec := by
  intro n
  simp only [A120196, Nat.add_sub_cancel]

end A120196

/-! ## A120196.P3995082459867093656

`Δ[floor(a(n-1)+a(n-1)/8)]` with `a(0)=26`
-/

namespace A120196.P3995082459867093656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [26] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120196.P3995082459867093656

namespace A120196

/-- `Δ[floor(a(n-1)+a(n-1)/8)]` -/
def P3995082459867093656.Spec : Prop :=
  ∀ n, P3995082459867093656.a n = A120196 (n + 1)

end A120196

/-! ## A120196.P17992855725875436632

`Δ[A304814(a(n-1))]` with `a(0)=12`
-/

namespace A120196.P17992855725875436632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  A304814 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120196.P17992855725875436632

namespace A120196

/-- `Δ[A304814(a(n-1))]` -/
def P17992855725875436632.Spec : Prop :=
  ∀ n, P17992855725875436632.a n = A120196 (n + 1)

end A120196

/-! ## A120196.P7186958681399108995

`Δ[A248375(a(n-1))]` with `a(0)=26`
-/

namespace A120196.P7186958681399108995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [26] fun n f1 =>
  A248375 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120196.P7186958681399108995

namespace A120196

/-- `Δ[A248375(a(n-1))]` -/
def P7186958681399108995.Spec : Prop :=
  ∀ n, P7186958681399108995.a n = A120196 (n + 1)

end A120196

/-! ## A120196.P11639792068424810618

`Δ[A168183(a(n-1))]` with `a(0)=27`
-/

namespace A120196.P11639792068424810618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  A168183 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120196.P11639792068424810618

namespace A120196

/-- `Δ[A168183(a(n-1))]` -/
def P11639792068424810618.Spec : Prop :=
  ∀ n, P11639792068424810618.a n = A120196 (n + 1)

end A120196

/-!
# A120197: a(1)=4; a(n)=floor((35+sum(a(1) to a(n-1)))/8).

The programs for A120197, the canonical program `A120197.P15589720954269832484` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120197 has offset 1).

The definition of A120197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120197.P15589720954269832484

`Δ[round(a(n-1)+a(n-1)/8)]` with `a(0)=31`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120197

/-- `Δ[round(a(n-1)+a(n-1)/8)]` -/
def P15589720954269832484.Spec : Prop :=
  ∀ n, P15589720954269832484.a n = A120197 (n + 1)

theorem P15589720954269832484.correct : P15589720954269832484.Spec := by
  intro n
  simp only [A120197, Nat.add_sub_cancel]

end A120197

/-! ## A120197.P16115497159542059082

`Δ[A168183(a(n-1))]` with `a(0)=36`
-/

namespace A120197.P16115497159542059082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36] fun n f1 =>
  A168183 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120197.P16115497159542059082

namespace A120197

/-- `Δ[A168183(a(n-1))]` -/
def P16115497159542059082.Spec : Prop :=
  ∀ n, P16115497159542059082.a n = A120197 (n + 1)

end A120197

/-! ## A120197.P13895058401024568853

`Δ[A248375(a(n-1)+3)]` with `a(0)=8`
-/

namespace A120197.P13895058401024568853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A248375 (f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120197.P13895058401024568853

namespace A120197

/-- `Δ[A248375(a(n-1)+3)]` -/
def P13895058401024568853.Spec : Prop :=
  ∀ n, P13895058401024568853.a n = A120197 (n + 1)

end A120197

/-! ## A120197.P2224630589589808147

`Δ[a(n-1)+A110656(a(n-1))+3]` with `a(0)=4`
-/

namespace A120197.P2224630589589808147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + (A110656 (f1 (n - 1)).toNat + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120197.P2224630589589808147

namespace A120197

/-- `Δ[a(n-1)+A110656(a(n-1))+3]` -/
def P2224630589589808147.Spec : Prop :=
  ∀ n, P2224630589589808147.a n = A120197 (n + 1)

end A120197

/-! ## A120197.P1031896983148309031

`A056556(A120200(3*n+5)+A033627(2*n+5))`
-/

namespace A120197.P1031896983148309031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A120200 (3 * n + 5) + A033627 (2 * n + 5)).toNat

end

end A120197.P1031896983148309031

namespace A120197

/-- `A056556(A120200(3*n+5)+A033627(2*n+5))` -/
def P1031896983148309031.Spec : Prop :=
  ∀ n, P1031896983148309031.a n = A120197 (n + 1)

end A120197

/-!
# A120198: a(1)=5; a(n)=floor((44+sum(a(1) to a(n-1)))/8).

The programs for A120198, there is no canonical definition to state claims against.
-/

/-! ## A120198.P7972045953864233731

`Δ[A168183(a(n-1))]` with `a(0)=45`
-/

namespace A120198.P7972045953864233731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [45] fun n f1 =>
  A168183 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120198.P7972045953864233731

/-! ## A120198.P12131186248457911033

`Δ[a(n-1)+A110656(a(n-1))+3]` with `a(0)=13`
-/

namespace A120198.P12131186248457911033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + (A110656 (f1 (n - 1)).toNat + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120198.P12131186248457911033

/-! ## A120198.P15877564479866629112

`A056556(A241381(2*n))+5`
-/

namespace A120198.P15877564479866629112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A241381 (2 * n)).toNat + 5

end

end A120198.P15877564479866629112

/-! ## A120198.P5961446193265838349

`A120197(n+3)%A183208(2*n+1)`
-/

namespace A120198.P5961446193265838349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120197 (n + 3)) (A183208 (2 * n + 1))

end

end A120198.P5961446193265838349

/-! ## A120198.P9567398306577480688

`A120197(Δ[A046691(A008554(n+1))])`
-/

namespace A120198.P9567398306577480688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A008554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120197 (f1 (n + 1) - f1 n).toNat

end

end A120198.P9567398306577480688

/-!
# A120199: a(1)=6; a(n)=floor((53+sum(a(1) to a(n-1)))/8).

The programs for A120199, there is no canonical definition to state claims against.
-/

/-! ## A120199.P16752028192795525457

`Δ[A248375(a(n-1))]` with `a(0)=53`
-/

namespace A120199.P16752028192795525457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [53] fun n f1 =>
  A248375 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120199.P16752028192795525457

/-! ## A120199.P11721882536537406979

`Δ[a(n-1)+A110656(a(n-1))+3]` with `a(0)=22`
-/

namespace A120199.P11721882536537406979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22] fun n f1 =>
  f1 (n - 1) + (A110656 (f1 (n - 1)).toNat + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120199.P11721882536537406979

/-! ## A120199.P5257846400457002617

`A316843(A211856(2*(n+1)))+5`
-/

namespace A120199.P5257846400457002617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A211856 (2 * (n + 1))).toNat + 5

end

end A120199.P5257846400457002617

/-! ## A120199.P6589179392030224684

`A226189(n+1)+A061200(A226155(n+1))`
-/

namespace A120199.P6589179392030224684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226189 (n + 1) + A061200 (A226155 (n + 1)).toNat

end

end A120199.P6589179392030224684

/-! ## A120199.P6573516596087027886

`A007814(2*n+1)+A226189(n+1)+A226123(A226155(n+1))`
-/

namespace A120199.P6573516596087027886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + (A226189 (n + 1) + A226123 (A226155 (n + 1)).toNat)

end

end A120199.P6573516596087027886

