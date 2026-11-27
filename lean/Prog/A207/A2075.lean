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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C046
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207500: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207500, there is no canonical definition to state claims against.
-/

/-! ## A207500.P6104985587881958980

`A207242(n+1)+A185264(A000931(n))`
-/

namespace A207500.P6104985587881958980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (n + 1) + A185264 (A000931 n).toNat

end

end A207500.P6104985587881958980

/-! ## A207500.P14085774072714974378

`A207242(n+1)+A185264(A324362(n))`
-/

namespace A207500.P14085774072714974378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (n + 1) + A185264 (A324362 n).toNat

end

end A207500.P14085774072714974378

/-!
# A207501: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207501, there is no canonical definition to state claims against.
-/

/-! ## A207501.P7532337513947349518

`A207500(A141214(n)+7)`
-/

namespace A207501.P7532337513947349518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A141214 n + 7).toNat

end

end A207501.P7532337513947349518

/-!
# A207502: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207502, there is no canonical definition to state claims against.
-/

/-! ## A207502.P6467413468545965683

`A207500(A167499(n+3))`
-/

namespace A207502.P6467413468545965683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A167499 (n + 3)).toNat

end

end A207502.P6467413468545965683

/-!
# A207503: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207503, there is no canonical definition to state claims against.
-/

/-! ## A207503.P15255765031881926717

`A207500(A166136(n+4))`
-/

namespace A207503.P15255765031881926717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A166136 (n + 4)).toNat

end

end A207503.P15255765031881926717

/-!
# A207504: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207504, there is no canonical definition to state claims against.
-/

/-! ## A207504.P17612286075026760633

`A207500(A167499(n+5)+2)`
-/

namespace A207504.P17612286075026760633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A167499 (n + 5) + 2).toNat

end

end A207504.P17612286075026760633

/-!
# A207506: Indices for which A207505(n) = 0.

The programs for A207506, there is no canonical definition to state claims against.
-/

/-! ## A207506.P6625073703973637348

`eq[0, A207505(n)]`
-/

namespace A207506.P6625073703973637348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A207506.P6625073703973637348

/-! ## A207506.P4169358170405581527

`lt[A008585(n)*A207505(n), 1]`
-/

namespace A207506.P4169358170405581527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P4169358170405581527

/-! ## A207506.P6910071017625356757

`lt[A004526(n)*A207505(n), 3]`
-/

namespace A207506.P6910071017625356757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P6910071017625356757

/-! ## A207506.P4583062000567069490

`lt[A132768(n)*A207505(n), 3]`
-/

namespace A207506.P4583062000567069490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132768 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P4583062000567069490

/-! ## A207506.P17888691848750207643

`lt[A207505(n)*A209862(n), 3]`
-/

namespace A207506.P17888691848750207643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n * A209862 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P17888691848750207643

/-! ## A207506.P13771144755737527908

`lt[A207505(n)*A250120(n), 3]`
-/

namespace A207506.P13771144755737527908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n * A250120 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P13771144755737527908

/-! ## A207506.P2556698343416681687

`lt[A000040(n+1)*A207505(n), 3]`
-/

namespace A207506.P2556698343416681687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P2556698343416681687

/-! ## A207506.P12562722410026911369

`lt[A038446(n+1)*A207505(n), 3]`
-/

namespace A207506.P12562722410026911369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038446 (n + 1) * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P12562722410026911369

/-! ## A207506.P12255419953003777174

`lt[A207505(n)*A374040(n+1), 3]`
-/

namespace A207506.P12255419953003777174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n * A374040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P12255419953003777174

/-! ## A207506.P9641933371363754054

`lt[A052335(n)*A207505(n), 3]`
-/

namespace A207506.P9641933371363754054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052335 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P9641933371363754054

/-! ## A207506.P9965768583360403342

`lt[A008585(n*A207505(n)), 1]`
-/

namespace A207506.P9965768583360403342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 ((n : ℤ) * A207505 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P9965768583360403342

/-!
# A207507: Diameters of quadratic unitary Cayley graphs on the integers modulo n.

The programs for A207507, there is no canonical definition to state claims against.
-/

/-! ## A207507.P4924510191220466468

`A001222(A133632(n+1)+A001317(n))`
-/

namespace A207507.P4924510191220466468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133632 (n + 1) + A001317 n).toNat

end

end A207507.P4924510191220466468

/-! ## A207507.P17636012767588954547

`A350067(n+2)-A275601(A276086(n+2))`
-/

namespace A207507.P17636012767588954547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350067 (n + 2) - A275601 (A276086 (n + 2)).toNat

end

end A207507.P17636012767588954547

/-! ## A207507.P16931087398051999688

`A055457(A329662(n))`
-/

namespace A207507.P16931087398051999688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A329662 n).toNat

end

end A207507.P16931087398051999688

/-! ## A207507.P15270181222161425282

`A160385(A285843(n+1))`
-/

namespace A207507.P15270181222161425282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A285843 (n + 1)).toNat

end

end A207507.P15270181222161425282

/-! ## A207507.P7028015275376268614

`A250068(A289939(n+1))`
-/

namespace A207507.P7028015275376268614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A289939 (n + 1)).toNat

end

end A207507.P7028015275376268614

/-!
# A207508: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207508, there is no canonical definition to state claims against.
-/

/-! ## A207508.P842818929344239818

`A207514(∑[4*n]+1)`
-/

namespace A207508.P842818929344239818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207508.P842818929344239818

/-! ## A207508.P2590281102574851542

`record[A207514(A152271(n²))]`
-/

namespace A207508.P2590281102574851542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207508.P2590281102574851542

/-! ## A207508.P15635948716051942202

`record[A207514(Δ[A235355(n)])]`
-/

namespace A207508.P15635948716051942202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207508.P15635948716051942202

/-! ## A207508.P17538828955459965109

`record[A207514(A330613(n+1))]`
-/

namespace A207508.P17538828955459965109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207508.P17538828955459965109

/-!
# A207509: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207509, the canonical program `A207509.P18253269279690552883` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207509 has offset 1).

The definition of A207509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207509.P18253269279690552883

`ogf((6+24x+10x^3-14x^4-30x^5-12x^6-32x^7+24x^8-12x^9+4x^10)/(1-2x-2x^3+5x^4-x^5+4x^6-5x^7+x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207509

/-- `ogf((6+24x+10x^3-14x^4-30x^5-12x^6-32x^7+24x^8-12x^9+4x^10)/(1-2x-2x^3+5x^4-x^5+4x^6-5x^7+x^8-2x^9+x^10))` -/
def P18253269279690552883.Spec : Prop :=
  ∀ n, P18253269279690552883.a n = A207509 (n + 1)

theorem P18253269279690552883.correct : P18253269279690552883.Spec := by
  intro n
  simp only [A207509, Nat.add_sub_cancel]

end A207509

/-! ## A207509.P12840099722878777768

`A207514(∑[n+2]+4)`
-/

namespace A207509.P12840099722878777768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207509.P12840099722878777768

namespace A207509

/-- `A207514(∑[n+2]+4)` -/
def P12840099722878777768.Spec : Prop :=
  ∀ n, P12840099722878777768.a n = A207509 (n + 1)

end A207509

/-! ## A207509.P12979630496201083930

`A207682(A034856(n+2))`
-/

namespace A207509.P12979630496201083930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A034856 (n + 2)).toNat

end

end A207509.P12979630496201083930

namespace A207509

/-- `A207682(A034856(n+2))` -/
def P12979630496201083930.Spec : Prop :=
  ∀ n, P12979630496201083930.a n = A207509 (n + 1)

end A207509

/-!
# A207510: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207510, there is no canonical definition to state claims against.
-/

/-! ## A207510.P6196928432860753755

`A207514(∑[n+3]+7)`
-/

namespace A207510.P6196928432860753755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207510.P6196928432860753755

/-!
# A207511: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207511, there is no canonical definition to state claims against.
-/

/-! ## A207511.P14348562524751257662

`A207514(C(n+6, 2)-n)`
-/

namespace A207511.P14348562524751257662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (Nat.choose (n + 6) 2 - n)

end

end A207511.P14348562524751257662

/-!
# A207512: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207512, there is no canonical definition to state claims against.
-/

/-! ## A207512.P708118477916856257

`A207514(C(2*n+7-n, 2)-n)`
-/

namespace A207512.P708118477916856257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (Nat.choose ((2 * n + 7 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A207512.P708118477916856257

/-!
# A207513: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207513, there is no canonical definition to state claims against.
-/

/-! ## A207513.P9839826820589425598

`A207514(A167487(n+5))`
-/

namespace A207513.P9839826820589425598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167487 (n + 5)).toNat

end

end A207513.P9839826820589425598

/-! ## A207513.P17856373758795185899

`A207514(A374008(n+1))`
-/

namespace A207513.P17856373758795185899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A374008 (n + 1)).toNat

end

end A207513.P17856373758795185899

/-!
# A207515: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207515, there is no canonical definition to state claims against.
-/

/-! ## A207515.P2336410082846786820

`A207519(∑[4*n]+1)`
-/

namespace A207515.P2336410082846786820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207515.P2336410082846786820

/-! ## A207515.P8662948518103021485

`record[A207519(Δ[A235355(n)])]`
-/

namespace A207515.P8662948518103021485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P8662948518103021485

/-! ## A207515.P16817596813793976552

`record[A207519(A330613(n+1))]`
-/

namespace A207515.P16817596813793976552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P16817596813793976552

/-! ## A207515.P16639990017804256790

`record[A207519(Δ[A079824(n+1)])]`
-/

namespace A207515.P16639990017804256790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P16639990017804256790

/-! ## A207515.P9988097453240039526

`record[A003982(n)*A207519(n+1)]`
-/

namespace A207515.P9988097453240039526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P9988097453240039526

/-!
# A207516: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207516, there is no canonical definition to state claims against.
-/

/-! ## A207516.P1259910231897850864

`A207519(A046691(n+3))`
-/

namespace A207516.P1259910231897850864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A046691 (n + 3)).toNat

end

end A207516.P1259910231897850864

/-!
# A207517: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207517, there is no canonical definition to state claims against.
-/

/-! ## A207517.P16599864605122500278

`A207519(A052905(n+3))`
-/

namespace A207517.P16599864605122500278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A052905 (n + 3)).toNat

end

end A207517.P16599864605122500278

/-!
# A207518: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207518, there is no canonical definition to state claims against.
-/

/-! ## A207518.P9447139037679579379

`A207519(A055999(n+4))`
-/

namespace A207518.P9447139037679579379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A055999 (n + 4)).toNat

end

end A207518.P9447139037679579379

/-!
# A207519: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207519, there is no canonical definition to state claims against.
-/

/-! ## A207519.P9887424743165698224

`A208698(n+1)-A016389(A119502(n))`
-/

namespace A207519.P9887424743165698224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) - A016389 (A119502 n).toNat

end

end A207519.P9887424743165698224

/-! ## A207519.P13643264360529863455

`A208698(n+1)-A016389(A152656(n))`
-/

namespace A207519.P13643264360529863455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) - A016389 (A152656 n).toNat

end

end A207519.P13643264360529863455

/-! ## A207519.P7214673899086421980

`A208698(n+1)-A070204(A126331(n))`
-/

namespace A207519.P7214673899086421980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) - A070204 (A126331 n).toNat

end

end A207519.P7214673899086421980

/-! ## A207519.P18051921655886712259

`A208698(n+1)+A016389(A067747(3*n+1))`
-/

namespace A207519.P18051921655886712259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) + A016389 (A067747 (3 * n + 1)).toNat

end

end A207519.P18051921655886712259

/-! ## A207519.P16685871168039357200

`A208698(A242474(n+1))-A014083(n)`
-/

namespace A207519.P16685871168039357200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A242474 (n + 1)).toNat - A014083 n

end

end A207519.P16685871168039357200

/-!
# A207520: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207520, there is no canonical definition to state claims against.
-/

/-! ## A207520.P1595589170751276914

`A207519(A141214(n)+7)`
-/

namespace A207520.P1595589170751276914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A141214 n + 7).toNat

end

end A207520.P1595589170751276914

/-!
# A207521: Number of 5 X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207521, there is no canonical definition to state claims against.
-/

/-! ## A207521.P17305371087433905165

`A207519(A167499(n+3))`
-/

namespace A207521.P17305371087433905165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A167499 (n + 3)).toNat

end

end A207521.P17305371087433905165

/-!
# A207522: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207522, there is no canonical definition to state claims against.
-/

/-! ## A207522.P1713935301182088931

`A207519(A166136(n+4))`
-/

namespace A207522.P1713935301182088931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A166136 (n + 4)).toNat

end

end A207522.P1713935301182088931

/-!
# A207523: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207523, there is no canonical definition to state claims against.
-/

/-! ## A207523.P1567571452898830401

`A207519(A000124(n+6)+6)`
-/

namespace A207523.P1567571452898830401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000124 (n + 6) + 6).toNat

end

end A207523.P1567571452898830401

/-!
# A207524: Number of rational numbers p/q such that 0<p<q<=n and p/q<=(greatest quotient of consecutive Fibonacci numbers having denominator <= n).

The programs for A207524, there is no canonical definition to state claims against.
-/

/-! ## A207524.P18322380092150340759

`A340275(n+2)+A046657(n+2)`
-/

namespace A207524.P18322380092150340759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 2) + A046657 (n + 2)

end

end A207524.P18322380092150340759

/-! ## A207524.P9342444176333258460

`A340275(n+2)+∑[A023022(n+2)]`
-/

namespace A207524.P9342444176333258460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207524.P9342444176333258460

/-! ## A207524.P13503697084671332185

`∑[A000010(n+2)-A133755(n+2)]`
-/

namespace A207524.P13503697084671332185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A133755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207524.P13503697084671332185

/-! ## A207524.P436380150588967257

`A004396(A015614(n+2)+A015161(n)!)`
-/

namespace A207524.P436380150588967257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A015614 (n + 2) + (Nat.factorial (A015161 n).toNat : ℤ)).toNat

end

end A207524.P436380150588967257

/-! ## A207524.P15817620752121897457

`floor(A049644(2*n+4)/A058965(A008292(n+1)))`
-/

namespace A207524.P15817620752121897457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049644 (2 * n + 4) : ℚ) / (A058965 (A008292 (n + 1)).toNat : ℚ)⌋

end

end A207524.P15817620752121897457

/-!
# A207526: Primes p such that p-2 or p+2 are semiprimes.

The programs for A207526, there is no canonical definition to state claims against.
-/

/-! ## A207526.P12919937300069613607

`∪[A063637(n+1), A063638(n+1)]`
-/

namespace A207526.P12919937300069613607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P12919937300069613607

/-! ## A207526.P14844712876820671975

`∪[A062721(n+1)-2, A063638(n+1)]`
-/

namespace A207526.P14844712876820671975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P14844712876820671975

/-! ## A207526.P8083932619501351100

`∪[A063638(n+1), p?[A157931(n+1)-2]]`
-/

namespace A207526.P8083932619501351100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P8083932619501351100

/-! ## A207526.P1180528528577136398

`∪[A062721(n+1)-2, A241809(n+1)+2]`
-/

namespace A207526.P1180528528577136398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P1180528528577136398

/-! ## A207526.P8961424261361103269

`p?[record[A115561((n+2)²-1)]]`
-/

namespace A207526.P8961424261361103269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 ((n + 2) ^ 2 - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207526.P8961424261361103269

/-!
# A207529: Number of n X n 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207529, there is no canonical definition to state claims against.
-/

/-! ## A207529.P2556402360167020859

`A207535((n+1)²+n²)`
-/

namespace A207529.P2556402360167020859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 ((n + 1) ^ 2 + n ^ 2)

end

end A207529.P2556402360167020859

/-!
# A207530: Number of nX3 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207530, there is no canonical definition to state claims against.
-/

/-! ## A207530.P18305797359403539128

`A207535(∑[n+2]+4)`
-/

namespace A207530.P18305797359403539128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207530.P18305797359403539128

/-!
# A207531: Number of nX4 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207531, there is no canonical definition to state claims against.
-/

/-! ## A207531.P12639485156896294482

`A207535(A141214(n)+7)`
-/

namespace A207531.P12639485156896294482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A141214 n + 7).toNat

end

end A207531.P12639485156896294482

/-!
# A207532: Number of nX5 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207532, there is no canonical definition to state claims against.
-/

/-! ## A207532.P2909115641097089169

`A207535(eq[7, A066657(n)])`
-/

namespace A207532.P2909115641097089169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207532.P2909115641097089169

/-! ## A207532.P1156310238300889901

`A207535(A374005(n+1))`
-/

namespace A207532.P1156310238300889901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A374005 (n + 1)).toNat

end

end A207532.P1156310238300889901

/-!
# A207536: Triangle of coefficients of polynomials u(n,x) jointly generated with A105070; see Formula section.

The programs for A207536, the canonical program `A207536.P11378481812331935203` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207536 has offset 1).

The definition of A207536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207536.P11378481812331935203

`A034839(n+1)/A034867(n+1)*A105070(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A207536

/-- `A034839(n+1)/A034867(n+1)*A105070(n+2)` -/
def P11378481812331935203.Spec : Prop :=
  ∀ n, P11378481812331935203.a n = (A207536 (n + 1) : ℚ)

end A207536

/-! ## A207536.P774558478727283018

`A034839(n+1)*A059268(A091018(n+1))`
-/

namespace A207536.P774558478727283018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (n + 1) * A059268 (A091018 (n + 1)).toNat

end

end A207536.P774558478727283018

namespace A207536

/-- `A034839(n+1)*A059268(A091018(n+1))` -/
def P774558478727283018.Spec : Prop :=
  ∀ n, P774558478727283018.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P5490745505522365132

`A123519(A091018(1+n))`
-/

namespace A207536.P5490745505522365132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (A091018 (1 + n)).toNat

end

end A207536.P5490745505522365132

namespace A207536

/-- `A123519(A091018(1+n))` -/
def P5490745505522365132.Spec : Prop :=
  ∀ n, P5490745505522365132.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P16234822459723394872

`A208520(∑[A275437(n)]+1)`
-/

namespace A207536.P16234822459723394872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208520 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A207536.P16234822459723394872

namespace A207536

/-- `A208520(∑[A275437(n)]+1)` -/
def P16234822459723394872.Spec : Prop :=
  ∀ n, P16234822459723394872.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P195005256637057278

`A117919(A028391(n+1)+n+2)`
-/

namespace A207536.P195005256637057278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (A028391 (n + 1) + (n + 2 : ℤ)).toNat

end

end A207536.P195005256637057278

namespace A207536

/-- `A117919(A028391(n+1)+n+2)` -/
def P195005256637057278.Spec : Prop :=
  ∀ n, P195005256637057278.a n = A207536 (n + 1)

end A207536

/-!
# A207537: Triangle of coefficients of polynomials u(n,x) jointly generated with A207538; see Formula section.

The programs for A207537, the canonical program `A207537.P9241399492848314122` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207537 has offset 1).

The definition of A207537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207537.P14068310476255295649

`abs(A028297(1+n))`
-/

namespace A207537.P14068310476255295649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028297 (1 + n)|

end

end A207537.P14068310476255295649

namespace A207537

/-- `abs(A028297(1+n))` -/
def P14068310476255295649.Spec : Prop :=
  ∀ n, P14068310476255295649.a n = A207537 (n + 1)

end A207537

/-! ## A207537.P15323765751708066532

`∏[abs(ratio[A028297(n)])]`
-/

namespace A207537.P15323765751708066532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A207537.P15323765751708066532

namespace A207537

/-- `∏[abs(ratio[A028297(n)])]` -/
def P15323765751708066532.Spec : Prop :=
  ∀ n, P15323765751708066532.a n = (A207537 (n + 1) : ℚ)

end A207537

/-! ## A207537.P14075235020557529838

`gcd(A000038(n), A028297(n+1))`
-/

namespace A207537.P14075235020557529838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028297 (n + 1))

end

end A207537.P14075235020557529838

namespace A207537

/-- `gcd(A000038(n), A028297(n+1))` -/
def P14075235020557529838.Spec : Prop :=
  ∀ n, (P14075235020557529838.a n : ℤ) = A207537 (n + 1)

end A207537

/-! ## A207537.P3670394625213414736

`lcm(A028297(n+1), A057077(n))`
-/

namespace A207537.P3670394625213414736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028297 (n + 1)) (A057077 n)

end

end A207537.P3670394625213414736

namespace A207537

/-- `lcm(A028297(n+1), A057077(n))` -/
def P3670394625213414736.Spec : Prop :=
  ∀ n, (P3670394625213414736.a n : ℤ) = A207537 (n + 1)

end A207537

/-! ## A207537.P14011650973198929456

`A201701(lt[1, 2*T(n-1,k)+T(n-2,k-1)])` with `a(0)=2, a(1)=1`
-/

namespace A207537.P14011650973198929456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  2 * SequenceMachineLib.triUp f2 n + SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207537.P14011650973198929456

namespace A207537

/-- `A201701(lt[1, 2*T(n-1,k)+T(n-2,k-1)])` -/
def P14011650973198929456.Spec : Prop :=
  ∀ n, P14011650973198929456.a n = A207537 (n + 1)

end A207537

/-! ## A207537.P9241399492848314122

`A200139(A091018(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A207537

/-- `A200139(A091018(n+1))` -/
def P9241399492848314122.Spec : Prop :=
  ∀ n, P9241399492848314122.a n = A207537 (n + 1)

theorem P9241399492848314122.correct : P9241399492848314122.Spec := by
  intro n
  simp only [A207537, Nat.add_sub_cancel]

end A207537

/-! ## A207537.P874876899208093060

`gcd(C(2, n), A028297(A110514(2*n)))`
-/

namespace A207537.P874876899208093060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A028297 (A110514 (2 * n)).toNat)

end

end A207537.P874876899208093060

namespace A207537

/-- `gcd(C(2, n), A028297(A110514(2*n)))` -/
def P874876899208093060.Spec : Prop :=
  ∀ n, (P874876899208093060.a n : ℤ) = A207537 (n + 1)

end A207537

/-!
# A207538: Triangle of coefficients of polynomials v(n,x) jointly generated with A207537; see Formula section.

The programs for A207538, the canonical program `A207538.P3362735136045177086` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207538 has offset 1).

The definition of A207538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207538.P12336122118697086797

`abs(A133156(n))`
-/

namespace A207538.P12336122118697086797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133156 n|

end

end A207538.P12336122118697086797

namespace A207538

/-- `abs(A133156(n))` -/
def P12336122118697086797.Spec : Prop :=
  ∀ n, P12336122118697086797.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P4942406258911586024

`gcd(A000038(n), A133156(n))`
-/

namespace A207538.P4942406258911586024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A133156 n)

end

end A207538.P4942406258911586024

namespace A207538

/-- `gcd(A000038(n), A133156(n))` -/
def P4942406258911586024.Spec : Prop :=
  ∀ n, (P4942406258911586024.a n : ℤ) = A207538 (n + 1)

end A207538

/-! ## A207538.P4539803716275395707

`lcm(A011973(n), A133156(n))`
-/

namespace A207538.P4539803716275395707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011973 n) (A133156 n)

end

end A207538.P4539803716275395707

namespace A207538

/-- `lcm(A011973(n), A133156(n))` -/
def P4539803716275395707.Spec : Prop :=
  ∀ n, (P4539803716275395707.a n : ℤ) = A207538 (n + 1)

end A207538

/-! ## A207538.P3362735136045177086

`A000079(A082375(n))*A011973(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A207538

/-- `A000079(A082375(n))*A011973(n)` -/
def P3362735136045177086.Spec : Prop :=
  ∀ n, P3362735136045177086.a n = A207538 (n + 1)

theorem P3362735136045177086.correct : P3362735136045177086.Spec := by
  intro n
  simp only [A207538, Nat.add_sub_cancel]

end A207538

/-! ## A207538.P15671528030745929138

`A051288(n)/A034868(n)`
-/

namespace A207538.P15671528030745929138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051288 n : ℚ) / (A034868 n : ℚ)

end

end A207538.P15671528030745929138

namespace A207538

/-- `A051288(n)/A034868(n)` -/
def P15671528030745929138.Spec : Prop :=
  ∀ n, P15671528030745929138.a n = (A207538 (n + 1) : ℚ)

end A207538

/-! ## A207538.P18290593522665285188

`A213343(n+1)/A257241(n+1)`
-/

namespace A207538.P18290593522665285188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213343 (n + 1) : ℚ) / (A257241 (n + 1) : ℚ)

end

end A207538.P18290593522665285188

namespace A207538

/-- `A213343(n+1)/A257241(n+1)` -/
def P18290593522665285188.Spec : Prop :=
  ∀ n, P18290593522665285188.a n = (A207538 (n + 1) : ℚ)

end A207538

/-! ## A207538.P12394745778497918047

`A038207(A091018(n))`
-/

namespace A207538.P12394745778497918047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A091018 n).toNat

end

end A207538.P12394745778497918047

namespace A207538

/-- `A038207(A091018(n))` -/
def P12394745778497918047.Spec : Prop :=
  ∀ n, P12394745778497918047.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P312007447858902625

`abs(A053118(eq[1, A132728(n)]))`
-/

namespace A207538.P312007447858902625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A207538.P312007447858902625

namespace A207538

/-- `abs(A053118(eq[1, A132728(n)]))` -/
def P312007447858902625.Spec : Prop :=
  ∀ n, P312007447858902625.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P14039076374745605098

`abs(A053118(A028391(n)+n))`
-/

namespace A207538.P14039076374745605098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053118 (A028391 n + (n : ℤ)).toNat|

end

end A207538.P14039076374745605098

namespace A207538

/-- `abs(A053118(A028391(n)+n))` -/
def P14039076374745605098.Spec : Prop :=
  ∀ n, P14039076374745605098.a n = A207538 (n + 1)

end A207538

/-!
# A207539: Dodecanacci numbers (12th-order Fibonacci sequence): a(n) = a(n-1) +...+ a(n-12) with a(0)=...=a(11)=1.

The programs for A207539, the canonical program `A207539.P5110956875265074399` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207539 has offset 0).

The definition of A207539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207539.P5110956875265074399

`ogf((1-x-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11+10x^12)/(1-2x+x^13))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207539

/-- `ogf((1-x-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11+10x^12)/(1-2x+x^13))` -/
def P5110956875265074399.Spec : Prop :=
  ∀ n, P5110956875265074399.a n = A207539 n

theorem P5110956875265074399.correct : P5110956875265074399.Spec := by
  intro n
  simp only [A207539]

end A207539

/-! ## A207539.P4041878418387634564

`A319409(A163551(n+2))`
-/

namespace A207539.P4041878418387634564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 (A163551 (n + 2)).toNat

end

end A207539.P4041878418387634564

namespace A207539

/-- `A319409(A163551(n+2))` -/
def P4041878418387634564.Spec : Prop :=
  ∀ n, P4041878418387634564.a n = A207539 n

end A207539

/-! ## A207539.P11124585477496326890

`A094280(A163551(n+2))`
-/

namespace A207539.P11124585477496326890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A163551 (n + 2)).toNat

end

end A207539.P11124585477496326890

namespace A207539

/-- `A094280(A163551(n+2))` -/
def P11124585477496326890.Spec : Prop :=
  ∀ n, P11124585477496326890.a n = A207539 n

end A207539

/-! ## A207539.P6173638841070835861

`C(A091205(n), A333381(A217152(n+1)))`
-/

namespace A207539.P6173638841070835861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091205 n).toNat (A333381 (A217152 (n + 1)).toNat).toNat

end

end A207539.P6173638841070835861

namespace A207539

/-- `C(A091205(n), A333381(A217152(n+1)))` -/
def P6173638841070835861.Spec : Prop :=
  ∀ n, (P6173638841070835861.a n : ℤ) = A207539 n

end A207539

/-!
# A207540: Degrees (with multiplicity) of simple surface singularities (ADE singularities, Du Val singularities, double rational points, Gorenstein quotient singularities, Klein singularities).

The programs for A207540, there is no canonical definition to state claims against.
-/

/-! ## A207540.P13320423804655162120

`A113724(A008676(A018252(∑[n+1]))+n+1)`
-/

namespace A207540.P13320423804655162120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (A008676 (A018252 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n + 1 : ℤ)).toNat

end

end A207540.P13320423804655162120

/-! ## A207540.P16009685608548055981

`∑[A028953(A005408(A101410(n+1)))]`
-/

namespace A207540.P16009685608548055981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A005408 (A101410 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207540.P16009685608548055981

/-!
# A207541: Expansion of phi(q)^3 * phi(-q) in powers of q where phi() is a Ramanujan theta function.

The programs for A207541, there is no canonical definition to state claims against.
-/

/-! ## A207541.P18025358354697096261

`(-1)^n*A208451(n)`
-/

namespace A207541.P18025358354697096261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208451 n

end

end A207541.P18025358354697096261

/-! ## A207541.P6217590489150675339

`2*A236923(n)-A000118(n)`
-/

namespace A207541.P6217590489150675339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236923 n - A000118 n

end

end A207541.P6217590489150675339

/-! ## A207541.P5525035199587471394

`2*A236922(n)-A097057(n)`
-/

namespace A207541.P5525035199587471394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236922 n - A097057 n

end

end A207541.P5525035199587471394

/-! ## A207541.P11692015032766593155

`2*A236922(n)-abs(A133690(n))`
-/

namespace A207541.P11692015032766593155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236922 n - |A133690 n|

end

end A207541.P11692015032766593155

/-! ## A207541.P5555727169110847203

`2*A320130(2*n)-A000118(n)`
-/

namespace A207541.P5555727169110847203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320130 (2 * n) - A000118 n

end

end A207541.P5555727169110847203

/-! ## A207541.P10095879046224343497

`2*A236922(n)-A236922(2*n)`
-/

namespace A207541.P10095879046224343497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236922 n - A236922 (2 * n)

end

end A207541.P10095879046224343497

/-! ## A207541.P1614241831003155996

`A005843(A236922(n))-A236922(A005843(n))`
-/

namespace A207541.P1614241831003155996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A236922 n).toNat - A236922 (A005843 n).toNat

end

end A207541.P1614241831003155996

/-! ## A207541.P11302096811285576864

`∑{#}[n, A139093(#)*A139093(n-#)]`
-/

namespace A207541.P11302096811285576864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A139093 k * A139093 (n - k)

end

end A207541.P11302096811285576864

/-! ## A207541.P11047144626963118213

`A005843(A236923(n))-A000118(n)`
-/

namespace A207541.P11047144626963118213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A236923 n).toNat - A000118 n

end

end A207541.P11047144626963118213

/-! ## A207541.P10718126348907399066

`A261403(2*n)`
-/

namespace A207541.P10718126348907399066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261403 (2 * n)

end

end A207541.P10718126348907399066

/-!
# A207542: Number of solid standard Young tableaux with n cells.

The programs for A207542, there is no canonical definition to state claims against.
-/

/-! ## A207542.P3831721466067160372

`A215120(∑[n])`
-/

namespace A207542.P3831721466067160372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207542.P3831721466067160372

/-! ## A207542.P262761310261878234

`A215086(4*∑[n])`
-/

namespace A207542.P262761310261878234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A207542.P262761310261878234

/-! ## A207542.P15930108569104983339

`A379277(A255047(n))`
-/

namespace A207542.P15930108569104983339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A255047 n).toNat

end

end A207542.P15930108569104983339

/-! ## A207542.P7341512180845527110

`A389604(A179865(n+1))`
-/

namespace A207542.P7341512180845527110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389604 (A179865 (n + 1)).toNat

end

end A207542.P7341512180845527110

/-!
# A207543: Triangle read by rows, expansion of (1+y*x)/(1-2*y*x+y*(y-1)*x^2).

The programs for A207543, the canonical program `A207543.P8366721423641395493` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207543 has offset 0).

The definition of A207543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207543.P8366721423641395493

`2*T(n-1,k-1)+T(n-2,k-1)-T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207543

/-- `2*T(n-1,k-1)+T(n-2,k-1)-T(row(n)-2, col(n)-2)` -/
def P8366721423641395493.Spec : Prop :=
  ∀ n, P8366721423641395493.a n = A207543 n

theorem P8366721423641395493.correct : P8366721423641395493.Spec := by
  intro n
  simp only [A207543]

end A207543

/-! ## A207543.P2222567261959713361

`2*A119900(n)-A098158(n)`
-/

namespace A207543.P2222567261959713361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119900 n - A098158 n

end

end A207543.P2222567261959713361

namespace A207543

/-- `2*A119900(n)-A098158(n)` -/
def P2222567261959713361.Spec : Prop :=
  ∀ n, P2222567261959713361.a n = A207543 n

end A207543

/-! ## A207543.P350295402939304458

`A091042(n)/A103327(n)*A098158(n)`
-/

namespace A207543.P350295402939304458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 n : ℚ) / (A103327 n : ℚ) * (A098158 n : ℚ)

end

end A207543.P350295402939304458

namespace A207543

/-- `A091042(n)/A103327(n)*A098158(n)` -/
def P350295402939304458.Spec : Prop :=
  ∀ n, P350295402939304458.a n = (A207543 n : ℚ)

end A207543

/-! ## A207543.P11825714936990402598

`A029637(A185180(n+1))*A101688(n)`
-/

namespace A207543.P11825714936990402598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A185180 (n + 1)).toNat * A101688 n

end

end A207543.P11825714936990402598

namespace A207543

/-- `A029637(A185180(n+1))*A101688(n)` -/
def P11825714936990402598.Spec : Prop :=
  ∀ n, P11825714936990402598.a n = A207543 n

end A207543

/-! ## A207543.P8333340680777577806

`A029635(A132118(n+1))*A101688(n)`
-/

namespace A207543.P8333340680777577806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A132118 (n + 1)).toNat * A101688 n

end

end A207543.P8333340680777577806

namespace A207543

/-- `A029635(A132118(n+1))*A101688(n)` -/
def P8333340680777577806.Spec : Prop :=
  ∀ n, P8333340680777577806.a n = A207543 n

end A207543

/-! ## A207543.P15646420809666021886

`A114525(A091995(2*(n+1)))`
-/

namespace A207543.P15646420809666021886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A091995 (2 * (n + 1))).toNat

end

end A207543.P15646420809666021886

namespace A207543

/-- `A114525(A091995(2*(n+1)))` -/
def P15646420809666021886.Spec : Prop :=
  ∀ n, P15646420809666021886.a n = A207543 n

end A207543

/-! ## A207543.P10419821502979430301

`A005843(A119900(n))-A098158(n)`
-/

namespace A207543.P10419821502979430301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A119900 n).toNat - A098158 n

end

end A207543.P10419821502979430301

namespace A207543

/-- `A005843(A119900(n))-A098158(n)` -/
def P10419821502979430301.Spec : Prop :=
  ∀ n, P10419821502979430301.a n = A207543 n

end A207543

/-!
# A207544: Number of n X n 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207544, there is no canonical definition to state claims against.
-/

/-! ## A207544.P16175536070616979667

`A207550((n+1)²+n²)`
-/

namespace A207544.P16175536070616979667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 ((n + 1) ^ 2 + n ^ 2)

end

end A207544.P16175536070616979667

/-!
# A207545: Number of nX3 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207545, there is no canonical definition to state claims against.
-/

/-! ## A207545.P837961911440076030

`A207550(∑[n+3]+1)`
-/

namespace A207545.P837961911440076030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207545.P837961911440076030

/-!
# A207546: Number of nX4 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207546, there is no canonical definition to state claims against.
-/

/-! ## A207546.P3982113504121837923

`A207550(A141214(n+1))`
-/

namespace A207546.P3982113504121837923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A141214 (n + 1)).toNat

end

end A207546.P3982113504121837923

/-!
# A207547: Number of nX5 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207547, there is no canonical definition to state claims against.
-/

/-! ## A207547.P7011869693472138518

`A207550(Δ[A264443(n)])`
-/

namespace A207547.P7011869693472138518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (f1 (n + 1) - f1 n).toNat

end

end A207547.P7011869693472138518

/-!
# A207548: Number of nX6 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207548, there is no canonical definition to state claims against.
-/

/-! ## A207548.P13592436178724229172

`A207550(A052905(n+3))`
-/

namespace A207548.P13592436178724229172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A052905 (n + 3)).toNat

end

end A207548.P13592436178724229172

/-!
# A207549: Number of nX7 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207549, there is no canonical definition to state claims against.
-/

/-! ## A207549.P16833826877628428071

`A207550(A055999(n+4))`
-/

namespace A207549.P16833826877628428071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A055999 (n + 4)).toNat

end

end A207549.P16833826877628428071

/-!
# A207551: Number of 3Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207551, there is no canonical definition to state claims against.
-/

/-! ## A207551.P12931616926571417683

`A207550(∑[n+2]+4)`
-/

namespace A207551.P12931616926571417683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207551.P12931616926571417683

/-!
# A207552: Number of 4Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207552, there is no canonical definition to state claims against.
-/

/-! ## A207552.P11419265263632131069

`A207550(A141214(n)+7)`
-/

namespace A207552.P11419265263632131069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A141214 n + 7).toNat

end

end A207552.P11419265263632131069

/-!
# A207553: Number of 5 X n 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207553, there is no canonical definition to state claims against.
-/

/-! ## A207553.P7889216812429715762

`A207550(A167499(n+3))`
-/

namespace A207553.P7889216812429715762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A167499 (n + 3)).toNat

end

end A207553.P7889216812429715762

/-!
# A207554: Number of 6Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207554, there is no canonical definition to state claims against.
-/

/-! ## A207554.P4803976405885394609

`A207550(A166136(n+4))`
-/

namespace A207554.P4803976405885394609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A166136 (n + 4)).toNat

end

end A207554.P4803976405885394609

/-!
# A207555: Number of 7Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207555, there is no canonical definition to state claims against.
-/

/-! ## A207555.P3898134809656411306

`A207550(C(n+7, 2)+7)`
-/

namespace A207555.P3898134809656411306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (Nat.choose (n + 7) 2 + 7)

end

end A207555.P3898134809656411306

/-!
# A207556: G.f.: Sum_{n>=0} (1+x)^n * Product_{k=1..n} ((1+x)^k - 1).

The programs for A207556, there is no canonical definition to state claims against.
-/

/-! ## A207556.P3466624609421332167

`2*A179525(n)-a(n-1)` with `a(0)=1`
-/

namespace A207556.P3466624609421332167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A179525 n - a (n - 1)

end

end A207556.P3466624609421332167

/-! ## A207556.P6921322877073659768

`A064736(A215522(n))-A275768(n)`
-/

namespace A207556.P6921322877073659768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A215522 n).toNat - A275768 n

end

end A207556.P6921322877073659768

/-! ## A207556.P14729001546342849892

`A064736(A215522(n))-A335447(n+1)`
-/

namespace A207556.P14729001546342849892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A215522 n).toNat - A335447 (n + 1)

end

end A207556.P14729001546342849892

/-!
# A207557: G.f.: Sum_{n>=0} 1/(1+x)^(n^2-n) * Product_{k=1..n} ((1+x)^(2*k-1) - 1).

The programs for A207557, there is no canonical definition to state claims against.
-/

/-! ## A207557.P9855361806518116773

`A060508((1-2*n)²*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A207557.P9855361806518116773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060508 ((1 - (2 * n : ℤ)) ^ 2 * a (n - 1) + 1).toNat

end

end A207557.P9855361806518116773

/-! ## A207557.P12887738138531868589

`A048486(A301594(n))`
-/

namespace A207557.P12887738138531868589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048486 (A301594 n).toNat

end

end A207557.P12887738138531868589

/-!
# A207558: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207558, there is no canonical definition to state claims against.
-/

/-! ## A207558.P10946149753927817516

`A207564(∑[4*n]+1)`
-/

namespace A207558.P10946149753927817516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207558.P10946149753927817516

/-! ## A207558.P6591756884644233699

`record[A003982(n)*A207564(n+1)]`
-/

namespace A207558.P6591756884644233699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207558.P6591756884644233699

/-! ## A207558.P13738621553231037445

`record[root(A207564(n+1), A027420(n))]`
-/

namespace A207558.P13738621553231037445
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207564 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207558.P13738621553231037445

/-! ## A207558.P4091185737253186699

`record[gcd(A114327(n), A207564(n+1))]`
-/

namespace A207558.P4091185737253186699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207564 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207558.P4091185737253186699

/-!
# A207559: Number of n X 3 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207559, the canonical program `A207559.P1623229490891523320` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207559 has offset 1).

The definition of A207559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207559.P1623229490891523320

`ogf((6-88x^2+11x^3+384x^4-128x^5-440x^6+160x^7+120x^8-45x^9)/(1-6x+6x^2+21x^3-36x^4-12x^5+39x^6-6x^7-10x^8+3x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207559

/-- `ogf((6-88x^2+11x^3+384x^4-128x^5-440x^6+160x^7+120x^8-45x^9)/(1-6x+6x^2+21x^3-36x^4-12x^5+39x^6-6x^7-10x^8+3x^9))` -/
def P1623229490891523320.Spec : Prop :=
  ∀ n, P1623229490891523320.a n = A207559 (n + 1)

theorem P1623229490891523320.correct : P1623229490891523320.Spec := by
  intro n
  simp only [A207559, Nat.add_sub_cancel]

end A207559

/-! ## A207559.P12592361152305169291

`A207564(∑[n+3]+1)`
-/

namespace A207559.P12592361152305169291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207559.P12592361152305169291

namespace A207559

/-- `A207564(∑[n+3]+1)` -/
def P12592361152305169291.Spec : Prop :=
  ∀ n, P12592361152305169291.a n = A207559 (n + 1)

end A207559

/-! ## A207559.P1264260303982261761

`A208007(∑[n+2]+4)`
-/

namespace A207559.P1264260303982261761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207559.P1264260303982261761

namespace A207559

/-- `A208007(∑[n+2]+4)` -/
def P1264260303982261761.Spec : Prop :=
  ∀ n, P1264260303982261761.a n = A207559 (n + 1)

end A207559

/-!
# A207560: Number of n X 4 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207560, there is no canonical definition to state claims against.
-/

/-! ## A207560.P5671310094888979554

`A207564(A141214(n+1))`
-/

namespace A207560.P5671310094888979554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A141214 (n + 1)).toNat

end

end A207560.P5671310094888979554

/-!
# A207561: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207561, there is no canonical definition to state claims against.
-/

/-! ## A207561.P5694185501831914528

`A207564(A046691(n+3))`
-/

namespace A207561.P5694185501831914528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A046691 (n + 3)).toNat

end

end A207561.P5694185501831914528

/-!
# A207562: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207562, there is no canonical definition to state claims against.
-/

/-! ## A207562.P14533059075238807227

`A207564(A052905(n+3))`
-/

namespace A207562.P14533059075238807227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A052905 (n + 3)).toNat

end

end A207562.P14533059075238807227

/-!
# A207563: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207563, there is no canonical definition to state claims against.
-/

/-! ## A207563.P17086443677005234983

`A207564(A055999(n+4))`
-/

namespace A207563.P17086443677005234983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A055999 (n + 4)).toNat

end

end A207563.P17086443677005234983

/-!
# A207565: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207565, there is no canonical definition to state claims against.
-/

/-! ## A207565.P16806681081305222702

`A207564(∑[n+3]+7)`
-/

namespace A207565.P16806681081305222702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207565.P16806681081305222702

/-!
# A207566: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207566, there is no canonical definition to state claims against.
-/

/-! ## A207566.P612404866354563205

`A207564(A167499(n+3))`
-/

namespace A207566.P612404866354563205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A167499 (n + 3)).toNat

end

end A207566.P612404866354563205

/-!
# A207567: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207567, there is no canonical definition to state claims against.
-/

/-! ## A207567.P4936000526353912075

`A207564(A166136(n+4))`
-/

namespace A207567.P4936000526353912075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A166136 (n + 4)).toNat

end

end A207567.P4936000526353912075

/-!
# A207568: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207568, there is no canonical definition to state claims against.
-/

/-! ## A207568.P8445836859601450355

`A207564(A000096(n+5)+8)`
-/

namespace A207568.P8445836859601450355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000096 (n + 5) + 8).toNat

end

end A207568.P8445836859601450355

/-!
# A207569: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(2*k-1) - 1).

The programs for A207569, there is no canonical definition to state claims against.
-/

/-! ## A207569.P9486008149152308049

`A048801(n)+A001065(A001147(n))`
-/

namespace A207569.P9486008149152308049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048801 n + A001065 (A001147 n).toNat

end

end A207569.P9486008149152308049

/-! ## A207569.P13939776777169621990

`A008619(A121323(n)+A020049(n))`
-/

namespace A207569.P13939776777169621990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A121323 n + A020049 n).toNat

end

end A207569.P13939776777169621990

/-!
# A207570: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(3*k-2) - 1).

The programs for A207570, there is no canonical definition to state claims against.
-/

/-! ## A207570.P9939354109921843740

`A087062(∑[(n+2)^(n+1)])`
-/

namespace A207570.P9939354109921843740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207570.P9939354109921843740

/-!
# A207571: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(3*k-1) - 1).

The programs for A207571, there is no canonical definition to state claims against.
-/

/-! ## A207571.P14603752837010100288

`∑[n*A106747(8*a(n-1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A207571.P14603752837010100288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) * A106747 (8 * f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207571.P14603752837010100288

/-!
# A207572: Least number k > 0 such that 3*prime(n)*2^k-1 is a prime number.

The programs for A207572, there is no canonical definition to state claims against.
-/

/-! ## A207572.P5343932494553786702

`A050412(3*p?[round(8*n/7)]-1)`
-/

namespace A207572.P5343932494553786702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A207572.P5343932494553786702

/-! ## A207572.P4970659105150267295

`A040081(C(2, n+2)+3*p?[round(8*n/7)])`
-/

namespace A207572.P4970659105150267295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 ((Nat.choose 2 (n + 2) : ℤ) + 3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A207572.P4970659105150267295

/-!
# A207573: a(1)=1, a(n+1) = prime(a(n)+1) - a(n).

The programs for A207573, there is no canonical definition to state claims against.
-/

/-! ## A207573.P9162209444138715404

`A001748(a(n-1)+1)/3-a(n-1)` with `a(0)=1`
-/

namespace A207573.P9162209444138715404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001748 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) / 3 - a (n - 1)

end

end A207573.P9162209444138715404

/-! ## A207573.P9302472846247259405

`record[A014692(T(n-1,k-1)+1)]` with `a(0)=1`
-/

namespace A207573.P9302472846247259405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A014692 (SequenceMachineLib.triUpLeft f1 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207573.P9302472846247259405

/-! ## A207573.P7599521993741655473

`record[A014692(T(n-1,k)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A207573.P7599521993741655473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A014692 (SequenceMachineLib.triUp f1 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207573.P7599521993741655473

/-! ## A207573.P864550861576911439

`record[A014692(T(n-2,k-1)+1)]` with `a(0)=1, a(1)=2`
-/

namespace A207573.P864550861576911439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A014692 (SequenceMachineLib.triUp2Left f1 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207573.P864550861576911439

/-! ## A207573.P14065530166025931480

`A014692(1+a(n-1))` with `a(0)=1`
-/

namespace A207573.P14065530166025931480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014692 (1 + a (n - 1)).toNat

end

end A207573.P14065530166025931480

/-!
# A207574: Numbers k such that phi(k)+2 divides k+2.

The programs for A207574, there is no canonical definition to state claims against.
-/

/-! ## A207574.P10893501391820863010

`gcd(2*A322394(n+1), floor(acot(n)))`
-/

namespace A207574.P10893501391820863010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A322394 (n + 1)) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A207574.P10893501391820863010

/-! ## A207574.P4148279613092509099

`A064680(A322394(1+n))`
-/

namespace A207574.P4148279613092509099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A322394 (1 + n)).toNat

end

end A207574.P4148279613092509099

/-! ## A207574.P10734554129279810434

`A007913(2*A322394(n+1))`
-/

namespace A207574.P10734554129279810434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A322394 (n + 1)).toNat

end

end A207574.P10734554129279810434

/-! ## A207574.P2121454000428061405

`A055231(2*A322394(n+1))`
-/

namespace A207574.P2121454000428061405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (2 * A322394 (n + 1)).toNat

end

end A207574.P2121454000428061405

/-! ## A207574.P7958426082661236782

`A071975(2*A322394(n+1))`
-/

namespace A207574.P7958426082661236782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (2 * A322394 (n + 1)).toNat

end

end A207574.P7958426082661236782

/-! ## A207574.P10743282842981123913

`A048671(lcm(2, A322394(n+1)))`
-/

namespace A207574.P10743282842981123913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (Int.lcm 2 (A322394 (n + 1)))

end

end A207574.P10743282842981123913

/-! ## A207574.P5628978499210427925

`(2*A322394(n+1))%A051227(n+1)`
-/

namespace A207574.P5628978499210427925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A322394 (n + 1)) (A051227 (n + 1))

end

end A207574.P5628978499210427925

/-! ## A207574.P12708138277458948123

`(2*A322394(n+1))^and(1, A000040(n+1))`
-/

namespace A207574.P12708138277458948123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A322394 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A207574.P12708138277458948123

/-! ## A207574.P4378519547617285810

`(2*A322394(n+1))^(n²%(n+1))^A000041(2*n)`
-/

namespace A207574.P4378519547617285810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A322394 (n + 1) : ℝ) ^ (((n ^ 2 % (n + 1) : ℕ) : ℚ) ^ (A000041 (2 * n) : ℤ) : ℝ)

end

end A207574.P4378519547617285810

/-!
# A207576: Number of n X n 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207576, there is no canonical definition to state claims against.
-/

/-! ## A207576.P12841383601331325842

`A207582(∑[4*n]+1)`
-/

namespace A207576.P12841383601331325842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207576.P12841383601331325842

/-!
# A207577: Number of nX3 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207577, there is no canonical definition to state claims against.
-/

/-! ## A207577.P14203016002001382166

`A207582(∑[n+2]+4)`
-/

namespace A207577.P14203016002001382166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207577.P14203016002001382166

/-!
# A207578: Number of nX4 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207578, there is no canonical definition to state claims against.
-/

/-! ## A207578.P3181910435726789262

`A207582(A167614(n+2)+1)`
-/

namespace A207578.P3181910435726789262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A167614 (n + 2) + 1).toNat

end

end A207578.P3181910435726789262

/-! ## A207578.P3008670853126752935

`A207582(∑[n+4]+3)`
-/

namespace A207578.P3008670853126752935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207578.P3008670853126752935

/-!
# A207579: Number of nX5 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207579, there is no canonical definition to state claims against.
-/

/-! ## A207579.P15600468513745500580

`A207582(A374005(n+1))`
-/

namespace A207579.P15600468513745500580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A374005 (n + 1)).toNat

end

end A207579.P15600468513745500580

/-!
# A207580: Number of nX6 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207580, there is no canonical definition to state claims against.
-/

/-! ## A207580.P15994468571059325722

`A207582(A167499(n+4)+1)`
-/

namespace A207580.P15994468571059325722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A167499 (n + 4) + 1).toNat

end

end A207580.P15994468571059325722

/-! ## A207580.P14384595601502078220

`A207582(A052905(n+3))`
-/

namespace A207580.P14384595601502078220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A052905 (n + 3)).toNat

end

end A207580.P14384595601502078220

/-!
# A207581: Number of nX7 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207581, there is no canonical definition to state claims against.
-/

/-! ## A207581.P14611117221004200545

`A207582(eq[6, A025581(n)]+1)`
-/

namespace A207581.P14611117221004200545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207581.P14611117221004200545

/-!
# A207582: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207582, there is no canonical definition to state claims against.
-/

/-! ## A207582.P5365377376765665435

`A209092(n+1)-A020987(A110148(n+1))`
-/

namespace A207582.P5365377376765665435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A020987 (A110148 (n + 1)).toNat

end

end A207582.P5365377376765665435

/-! ## A207582.P18163134619943701107

`A209092(n+1)-A010054(A207050(n+1))`
-/

namespace A207582.P18163134619943701107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A207582.P18163134619943701107

/-! ## A207582.P11793860671812360218

`A209092(n+1)-A101605(A000051(n))`
-/

namespace A207582.P11793860671812360218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A101605 (A000051 n).toNat

end

end A207582.P11793860671812360218

/-! ## A207582.P1299863087334425458

`A209092(n+1)-A206499(A000930(n))`
-/

namespace A207582.P1299863087334425458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A206499 (A000930 n).toNat

end

end A207582.P1299863087334425458

/-! ## A207582.P10112254408315840253

`A209092(n+1)-A206499(A347576(n))`
-/

namespace A207582.P10112254408315840253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A206499 (A347576 (n + 45)).toNat

end

end A207582.P10112254408315840253

/-!
# A207583: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207583, there is no canonical definition to state claims against.
-/

/-! ## A207583.P4812401227463971982

`A207589((n+1)²+n²)`
-/

namespace A207583.P4812401227463971982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 ((n + 1) ^ 2 + n ^ 2)

end

end A207583.P4812401227463971982

/-! ## A207583.P14040275639487572179

`record[root(A207589(n+1), A331886(n))]`
-/

namespace A207583.P14040275639487572179
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207589 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207583.P14040275639487572179

/-! ## A207583.P8386986673238326156

`record[gcd(A207589(n+1), A231713(n))]`
-/

namespace A207583.P8386986673238326156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207589 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207583.P8386986673238326156

/-! ## A207583.P9865788288151491064

`record[root(A207589(n+1), A072030(n+1))]`
-/

namespace A207583.P9865788288151491064
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207589 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207583.P9865788288151491064

/-!
# A207584: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207584, the canonical program `A207584.P2491220619540628830` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207584 has offset 1).

The definition of A207584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207584.P2491220619540628830

`ogf((6+30x+18x^2+24x^3-24x^4-6x^5-46x^6+36x^7-16x^8+30x^9-24x^10+6x^11-6x^12+4x^13)/(1-x-x^2-4x^3+2x^4+x^5+8x^6-x^7+3x^8-3x^9+2x^10+x^12))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207584

/-- `ogf((6+30x+18x^2+24x^3-24x^4-6x^5-46x^6+36x^7-16x^8+30x^9-24x^10+6x^11-6x^12+4x^13)/(1-x-x^2-4x^3+2x^4+x^5+8x^6-x^7+3x^8-3x^9+2x^10+x^12))` -/
def P2491220619540628830.Spec : Prop :=
  ∀ n, P2491220619540628830.a n = A207584 (n + 1)

theorem P2491220619540628830.correct : P2491220619540628830.Spec := by
  intro n
  simp only [A207584, Nat.add_sub_cancel]

end A207584

/-! ## A207584.P1112135358613563418

`(A167385(n)+1)*sqrt(A207689(n+1))`
-/

namespace A207584.P1112135358613563418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167385 n + 1 : ℝ) * Real.sqrt (A207689 (n + 1) : ℝ)

end

end A207584.P1112135358613563418

namespace A207584

/-- `(A167385(n)+1)*sqrt(A207689(n+1))` -/
def P1112135358613563418.Spec : Prop :=
  ∀ n, P1112135358613563418.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P11701632017165046923

`sqrt(A207025(n+1))*sqrt(A207689(n+1))`
-/

namespace A207584.P11701632017165046923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207689 (n + 1) : ℝ)

end

end A207584.P11701632017165046923

namespace A207584

/-- `sqrt(A207025(n+1))*sqrt(A207689(n+1))` -/
def P11701632017165046923.Spec : Prop :=
  ∀ n, P11701632017165046923.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P9418392940310682748

`sqrt(A207025(n+1)*A207689(n+1))`
-/

namespace A207584.P9418392940310682748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207689 (n + 1) : ℝ)

end

end A207584.P9418392940310682748

namespace A207584

/-- `sqrt(A207025(n+1)*A207689(n+1))` -/
def P9418392940310682748.Spec : Prop :=
  ∀ n, P9418392940310682748.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P17053395412893697130

`sqrt(A164315(n+1)²*A207689(n+1))`
-/

namespace A207584.P17053395412893697130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164315 (n + 1) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P17053395412893697130

namespace A207584

/-- `sqrt(A164315(n+1)²*A207689(n+1))` -/
def P17053395412893697130.Spec : Prop :=
  ∀ n, P17053395412893697130.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P17501766994282769508

`sqrt(record[(2-A023434(n))²]*A207689(n+1))`
-/

namespace A207584.P17501766994282769508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A023434 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A207689 (n + 1) : ℝ)

end

end A207584.P17501766994282769508

namespace A207584

/-- `sqrt(record[(2-A023434(n))²]*A207689(n+1))` -/
def P17501766994282769508.Spec : Prop :=
  ∀ n, P17501766994282769508.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P7708260107162512179

`sqrt((1-A054405(n+2))²*A207689(n+1))`
-/

namespace A207584.P7708260107162512179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((1 - A054405 (n + 2)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P7708260107162512179

namespace A207584

/-- `sqrt((1-A054405(n+2))²*A207689(n+1))` -/
def P7708260107162512179.Spec : Prop :=
  ∀ n, P7708260107162512179.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P16799839352944198387

`sqrt((3-A134816(n+8))²*A207689(n+1))`
-/

namespace A207584.P16799839352944198387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - A134816 (n + 8)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P16799839352944198387

namespace A207584

/-- `sqrt((3-A134816(n+8))²*A207689(n+1))` -/
def P16799839352944198387.Spec : Prop :=
  ∀ n, P16799839352944198387.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P4680788616019568387

`sqrt((∑[A134816(n+3)]+1)²*A207689(n+1))`
-/

namespace A207584.P4680788616019568387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 * A207689 (n + 1) : ℤ) : ℝ)

end

end A207584.P4680788616019568387

namespace A207584

/-- `sqrt((∑[A134816(n+3)]+1)²*A207689(n+1))` -/
def P4680788616019568387.Spec : Prop :=
  ∀ n, P4680788616019568387.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P10071207636640441569

`sqrt((3-Δ[A018917(n+3)])²*A207689(n+1))`
-/

namespace A207584.P10071207636640441569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P10071207636640441569

namespace A207584

/-- `sqrt((3-Δ[A018917(n+3)])²*A207689(n+1))` -/
def P10071207636640441569.Spec : Prop :=
  ∀ n, P10071207636640441569.a n = (A207584 (n + 1) : ℝ)

end A207584

/-! ## A207584.P14635427897105362172

`sqrt((3-Δ[A020720(n+3)])²*A207689(n+1))`
-/

namespace A207584.P14635427897105362172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P14635427897105362172

namespace A207584

/-- `sqrt((3-Δ[A020720(n+3)])²*A207689(n+1))` -/
def P14635427897105362172.Spec : Prop :=
  ∀ n, P14635427897105362172.a n = (A207584 (n + 1) : ℝ)

end A207584

/-!
# A207585: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207585, there is no canonical definition to state claims against.
-/

/-! ## A207585.P15415189672764466682

`A207025(n+1)/A207584(n+1)*A207690(n+1)`
-/

namespace A207585.P15415189672764466682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207025 (n + 1) : ℚ) / (A207584 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207585.P15415189672764466682

/-! ## A207585.P4277875563272138886

`A207584(n+1)/A207689(n+1)*A207690(n+1)`
-/

namespace A207585.P4277875563272138886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207689 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207585.P4277875563272138886

/-! ## A207585.P18220392941361432352

`sqrt(A207025(n+1))*sqrt(A207691(n+1))`
-/

namespace A207585.P18220392941361432352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207691 (n + 1) : ℝ)

end

end A207585.P18220392941361432352

/-! ## A207585.P12483581977796848567

`A207584(n+1)/A207690(n+1)*A207691(n+1)`
-/

namespace A207585.P12483581977796848567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207690 (n + 1) : ℚ) * (A207691 (n + 1) : ℚ)

end

end A207585.P12483581977796848567

/-! ## A207585.P9957804065333700237

`sqrt(A207025(n+1)*A207691(n+1))`
-/

namespace A207585.P9957804065333700237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207691 (n + 1) : ℝ)

end

end A207585.P9957804065333700237

/-!
# A207586: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207586, there is no canonical definition to state claims against.
-/

/-! ## A207586.P9788062680952691742

`A207584(n+1)/A207690(n+1)*A207692(n+1)`
-/

namespace A207586.P9788062680952691742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207690 (n + 1) : ℚ) * (A207692 (n + 1) : ℚ)

end

end A207586.P9788062680952691742

/-! ## A207586.P12607996392634422010

`A207589(A046691(n+3))`
-/

namespace A207586.P12607996392634422010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A046691 (n + 3)).toNat

end

end A207586.P12607996392634422010

/-!
# A207587: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207587, there is no canonical definition to state claims against.
-/

/-! ## A207587.P6145679449730668230

`A207589(A052905(n+3))`
-/

namespace A207587.P6145679449730668230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A052905 (n + 3)).toNat

end

end A207587.P6145679449730668230

/-!
# A207588: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207588, there is no canonical definition to state claims against.
-/

/-! ## A207588.P17639836494990019784

`A207589(A055999(n+4))`
-/

namespace A207588.P17639836494990019784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A055999 (n + 4)).toNat

end

end A207588.P17639836494990019784

/-!
# A207589: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207589, there is no canonical definition to state claims against.
-/

/-! ## A207589.P1468477601841098932

`A210709(A067747(n+1))+A208501(n+1)`
-/

namespace A207589.P1468477601841098932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A208501 (n + 1)

end

end A207589.P1468477601841098932

/-! ## A207589.P15123682052024233645

`A210709(n+11)+A208501(n+1)`
-/

namespace A207589.P15123682052024233645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (n + 11) + A208501 (n + 1)

end

end A207589.P15123682052024233645

/-! ## A207589.P4005277033681715290

`A208501(n+1-A185284(2*n+1))`
-/

namespace A207589.P4005277033681715290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 ((n + 1 : ℤ) - A185284 (2 * n + 1)).toNat

end

end A207589.P4005277033681715290

/-! ## A207589.P17402532035779739563

`A206987(A032555(n+1))`
-/

namespace A207589.P17402532035779739563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A032555 (n + 1)).toNat

end

end A207589.P17402532035779739563

/-!
# A207590: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207590, the canonical program `A207590.P5084477848894834414` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207590 has offset 1).

The definition of A207590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207590.P236276799602738957

`ogf((6+30x+6x^2-24x^3)/(1-x-3x^2))`
-/

namespace A207590.P236276799602738957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 30, 6, -24] [1, -1, -3] n

end

end A207590.P236276799602738957

namespace A207590

/-- `ogf((6+30x+6x^2-24x^3)/(1-x-3x^2))` -/
def P236276799602738957.Spec : Prop :=
  ∀ n, P236276799602738957.a n = A207590 (n + 1)

end A207590

/-! ## A207590.P5084477848894834414

`a(n-1)+3*a(n-2)` with `a(0)=6, a(1)=36, a(2)=60, a(3)=144`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207590

/-- `a(n-1)+3*a(n-2)` -/
def P5084477848894834414.Spec : Prop :=
  ∀ n, (P5084477848894834414.a n : ℤ) = A207590 (n + 1)

theorem P5084477848894834414.correct : P5084477848894834414.Spec := by
  intro n
  simp only [A207590, Nat.add_sub_cancel]

end A207590

/-! ## A207590.P5258083772063998616

`A208501(∑[n+2]+4)`
-/

namespace A207590.P5258083772063998616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207590.P5258083772063998616

namespace A207590

/-- `A208501(∑[n+2]+4)` -/
def P5258083772063998616.Spec : Prop :=
  ∀ n, P5258083772063998616.a n = A207590 (n + 1)

end A207590

/-! ## A207590.P18075202040247578794

`A207589(A167614(n+1))`
-/

namespace A207590.P18075202040247578794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167614 (n + 1)).toNat

end

end A207590.P18075202040247578794

namespace A207590

/-- `A207589(A167614(n+1))` -/
def P18075202040247578794.Spec : Prop :=
  ∀ n, P18075202040247578794.a n = A207590 (n + 1)

end A207590

/-!
# A207591: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207591, the canonical program `A207591.P12507010503593685186` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207591 has offset 1).

The definition of A207591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207591.P12507010503593685186

`ogf((9+81x+72x^2-234x^3-126x^4+216x^5+18x^6-36x^7)/(1-8x^2-2x^3+10x^4-2x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207591

/-- `ogf((9+81x+72x^2-234x^3-126x^4+216x^5+18x^6-36x^7)/(1-8x^2-2x^3+10x^4-2x^6))` -/
def P12507010503593685186.Spec : Prop :=
  ∀ n, P12507010503593685186.a n = A207591 (n + 1)

theorem P12507010503593685186.correct : P12507010503593685186.Spec := by
  intro n
  simp only [A207591, Nat.add_sub_cancel]

end A207591

/-! ## A207591.P958895778866118928

`A207589(A145018(n+4))`
-/

namespace A207591.P958895778866118928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A145018 (n + 4)).toNat

end

end A207591.P958895778866118928

namespace A207591

/-- `A207589(A145018(n+4))` -/
def P958895778866118928.Spec : Prop :=
  ∀ n, P958895778866118928.a n = A207591 (n + 1)

end A207591

/-!
# A207592: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207592, there is no canonical definition to state claims against.
-/

/-! ## A207592.P11526023017472394667

`A207589(A167499(n+3))`
-/

namespace A207592.P11526023017472394667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167499 (n + 3)).toNat

end

end A207592.P11526023017472394667

/-!
# A207593: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207593, there is no canonical definition to state claims against.
-/

/-! ## A207593.P15416290768688585378

`A207589(A167499(n+4)+1)`
-/

namespace A207593.P15416290768688585378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167499 (n + 4) + 1).toNat

end

end A207593.P15416290768688585378

/-!
# A207594: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207594, there is no canonical definition to state claims against.
-/

/-! ## A207594.P3626608467042578732

`A207589(A167499(n+5)+2)`
-/

namespace A207594.P3626608467042578732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167499 (n + 5) + 2).toNat

end

end A207594.P3626608467042578732

/-!
# A207595: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207595, there is no canonical definition to state claims against.
-/

/-! ## A207595.P11982276683780481049

`A207599((n+1)²+n²)`
-/

namespace A207595.P11982276683780481049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 ((n + 1) ^ 2 + n ^ 2)

end

end A207595.P11982276683780481049

/-! ## A207595.P11593985423455475098

`record[gcd(A003987(n), A207599(n+1))]`
-/

namespace A207595.P11593985423455475098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A207599 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207595.P11593985423455475098

/-!
# A207596: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207596, the canonical program `A207596.P12940979556610413563` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207596 has offset 1).

The definition of A207596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207596.P1408092475125274929

`ogf((15+165x+15x^2-15x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A207596.P1408092475125274929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 165, 15, -15] [1, -4, 6, -4, 1] n

end

end A207596.P1408092475125274929

namespace A207596

/-- `ogf((15+165x+15x^2-15x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P1408092475125274929.Spec : Prop :=
  ∀ n, P1408092475125274929.a n = A207596 (n + 1)

end A207596

/-! ## A207596.P12940979556610413563

`5*(6*n+3)*((n+1)²+n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207596

/-- `5*(6*n+3)*((n+1)²+n)` -/
def P12940979556610413563.Spec : Prop :=
  ∀ n, (P12940979556610413563.a n : ℤ) = A207596 (n + 1)

theorem P12940979556610413563.correct : P12940979556610413563.Spec := by
  intro n
  simp only [A207596, Nat.add_sub_cancel]

end A207596

/-! ## A207596.P5470013528915687285

`sqrt(A016946(n)*A207597(n+1))`
-/

namespace A207596.P5470013528915687285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016946 n * A207597 (n + 1) : ℝ)

end

end A207596.P5470013528915687285

namespace A207596

/-- `sqrt(A016946(n)*A207597(n+1))` -/
def P5470013528915687285.Spec : Prop :=
  ∀ n, P5470013528915687285.a n = (A207596 (n + 1) : ℝ)

end A207596

/-! ## A207596.P17801156026000477927

`sqrt((5*A028387(n))²*A016946(n))`
-/

namespace A207596.P17801156026000477927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 * A028387 n) ^ 2 * A016946 n : ℝ)

end

end A207596.P17801156026000477927

namespace A207596

/-- `sqrt((5*A028387(n))²*A016946(n))` -/
def P17801156026000477927.Spec : Prop :=
  ∀ n, P17801156026000477927.a n = (A207596 (n + 1) : ℝ)

end A207596

/-! ## A207596.P4108005678250392521

`sqrt(5*5*A062938(n)*A016946(n))`
-/

namespace A207596.P4108005678250392521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 * (5 * A062938 n) * A016946 n : ℝ)

end

end A207596.P4108005678250392521

namespace A207596

/-- `sqrt(5*5*A062938(n)*A016946(n))` -/
def P4108005678250392521.Spec : Prop :=
  ∀ n, P4108005678250392521.a n = (A207596 (n + 1) : ℝ)

end A207596

/-! ## A207596.P9484948831001786246

`A194715(2*n)+(n+1)*A194715(2*n+1)`
-/

namespace A207596.P9484948831001786246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 (2 * n) + (n + 1 : ℤ) * A194715 (2 * n + 1)

end

end A207596.P9484948831001786246

namespace A207596

/-- `A194715(2*n)+(n+1)*A194715(2*n+1)` -/
def P9484948831001786246.Spec : Prop :=
  ∀ n, P9484948831001786246.a n = A207596 (n + 1)

end A207596

/-! ## A207596.P12305295670070648549

`A000096(2*n+1)*A008597(n+1)-A008597(2*n+1)`
-/

namespace A207596.P12305295670070648549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * n + 1) * A008597 (n + 1) - A008597 (2 * n + 1)

end

end A207596.P12305295670070648549

namespace A207596

/-- `A000096(2*n+1)*A008597(n+1)-A008597(2*n+1)` -/
def P12305295670070648549.Spec : Prop :=
  ∀ n, P12305295670070648549.a n = A207596 (n + 1)

theorem P12305295670070648549.correct : P12305295670070648549.Spec := by
  intro n
  simp only [A207596, Nat.add_sub_cancel, A207596.P12305295670070648549.a, A207596.P12940979556610413563.a, A000096, A000096.P6925830517264718723.a, A008597, A008597.P11564373174620697085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A207596

/-!
# A207597: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207597, the canonical program `A207597.P3134893209629327883` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207597 has offset 1).

The definition of A207597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207597.P3134893209629327883

`(5-∑[10*(n+1)])²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A207597

/-- `(5-∑[10*(n+1)])²` -/
def P3134893209629327883.Spec : Prop :=
  ∀ n, P3134893209629327883.a n = A207597 (n + 1)

theorem P3134893209629327883.correct : P3134893209629327883.Spec := by
  intro n
  simp only [A207597, Nat.add_sub_cancel]

end A207597

/-! ## A207597.P12755620423778296024

`∑[a(n-1)+10]²` with `a(0)=5, a(1)=20`
-/

namespace A207597.P12755620423778296024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 20] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207597.P12755620423778296024

namespace A207597

/-- `∑[a(n-1)+10]²` -/
def P12755620423778296024.Spec : Prop :=
  ∀ n, (P12755620423778296024.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P18126873182625108654

`25*or(1, n*(n+3))²`
-/

namespace A207597.P18126873182625108654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.lor 1 (n * (n + 3)) ^ 2

end

end A207597.P18126873182625108654

namespace A207597

/-- `25*or(1, n*(n+3))²` -/
def P18126873182625108654.Spec : Prop :=
  ∀ n, (P18126873182625108654.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P9292209988692614088

`25*xor(1, n*(n+3))²`
-/

namespace A207597.P9292209988692614088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.xor 1 (n * (n + 3)) ^ 2

end

end A207597.P9292209988692614088

namespace A207597

/-- `25*xor(1, n*(n+3))²` -/
def P9292209988692614088.Spec : Prop :=
  ∀ n, (P9292209988692614088.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P6481298134591172272

`∑[a(n-1)+10]^2` with `a(0)=5, a(1)=20`
-/

namespace A207597.P6481298134591172272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 20] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207597.P6481298134591172272

namespace A207597

/-- `∑[a(n-1)+10]^2` -/
def P6481298134591172272.Spec : Prop :=
  ∀ n, (P6481298134591172272.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P16002434497389578961

`(5*xor(1, n*(n+3)))^2`
-/

namespace A207597.P16002434497389578961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 (n * (n + 3))) ^ 2

end

end A207597.P16002434497389578961

namespace A207597

/-- `(5*xor(1, n*(n+3)))^2` -/
def P16002434497389578961.Spec : Prop :=
  ∀ n, (P16002434497389578961.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P832681761818109439

`lcm(5, (5*((n+1)²+n))²)`
-/

namespace A207597.P832681761818109439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 ((5 * ((n + 1) ^ 2 + n)) ^ 2)

end

end A207597.P832681761818109439

namespace A207597

/-- `lcm(5, (5*((n+1)²+n))²)` -/
def P832681761818109439.Spec : Prop :=
  ∀ n, (P832681761818109439.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P10528908489268300216

`and(-5, (5*((n+1)²+n))²)`
-/

namespace A207597.P10528908489268300216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) ((5 * ((n + 1) ^ 2 + n)) ^ 2 : ℤ)

end

end A207597.P10528908489268300216

namespace A207597

/-- `and(-5, (5*((n+1)²+n))²)` -/
def P10528908489268300216.Spec : Prop :=
  ∀ n, P10528908489268300216.a n = A207597 (n + 1)

end A207597

/-! ## A207597.P13120508160948217169

`25*(n%(n+1)+(n+1)²)²`
-/

namespace A207597.P13120508160948217169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * (n % (n + 1) + (n + 1) ^ 2) ^ 2

end

end A207597.P13120508160948217169

namespace A207597

/-- `25*(n%(n+1)+(n+1)²)²` -/
def P13120508160948217169.Spec : Prop :=
  ∀ n, (P13120508160948217169.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P13161555835748737737

`ogf((25+500x+150x^2-100x^3+25x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A207597.P13161555835748737737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, 500, 150, -100, 25] [1, -5, 10, -10, 5, -1] n

end

end A207597.P13161555835748737737

namespace A207597

/-- `ogf((25+500x+150x^2-100x^3+25x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13161555835748737737.Spec : Prop :=
  ∀ n, P13161555835748737737.a n = A207597 (n + 1)

end A207597

/-! ## A207597.P9095503315192174741

`25*A062938(n)`
-/

namespace A207597.P9095503315192174741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A062938 n

end

end A207597.P9095503315192174741

namespace A207597

/-- `25*A062938(n)` -/
def P9095503315192174741.Spec : Prop :=
  ∀ n, P9095503315192174741.a n = A207597 (n + 1)

end A207597

/-! ## A207597.P2916510354569988932

`A207596(n+1)²/A016946(n)`
-/

namespace A207597.P2916510354569988932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207596 (n + 1) ^ 2 : ℚ) / (A016946 n : ℚ)

end

end A207597.P2916510354569988932

namespace A207597

/-- `A207596(n+1)²/A016946(n)` -/
def P2916510354569988932.Spec : Prop :=
  ∀ n, P2916510354569988932.a n = (A207597 (n + 1) : ℚ)

end A207597

/-! ## A207597.P3430844840214327997

`A207449(n+1)/A016742(n+1)*A207449(n+1)`
-/

namespace A207597.P3430844840214327997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207449 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A207449 (n + 1) : ℚ)

end

end A207597.P3430844840214327997

namespace A207597

/-- `A207449(n+1)/A016742(n+1)*A207449(n+1)` -/
def P3430844840214327997.Spec : Prop :=
  ∀ n, P3430844840214327997.a n = (A207597 (n + 1) : ℚ)

end A207597

/-! ## A207597.P14909355888660433423

`A017330(∑[n]+n)`
-/

namespace A207597.P14909355888660433423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A207597.P14909355888660433423

namespace A207597

/-- `A017330(∑[n]+n)` -/
def P14909355888660433423.Spec : Prop :=
  ∀ n, P14909355888660433423.a n = A207597 (n + 1)

end A207597

/-!
# A207598: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207598, the canonical program `A207598.P4866717690251908741` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207598 has offset 1).

The definition of A207598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207598.P4325583708277193672

`120*(n+1)^4+40*(n+1)^3-200*(n+1)²+80*(n+1)`
-/

namespace A207598.P4325583708277193672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (120 * (n + 1) ^ 4 + 40 * (n + 1) ^ 3 : ℤ) - (200 * (n + 1) ^ 2 : ℤ) + (80 * (n + 1) : ℤ)

end

end A207598.P4325583708277193672

namespace A207598

/-- `120*(n+1)^4+40*(n+1)^3-200*(n+1)²+80*(n+1)` -/
def P4325583708277193672.Spec : Prop :=
  ∀ n, P4325583708277193672.a n = A207598 (n + 1)

theorem P4325583708277193672.correct : P4325583708277193672.Spec := by
  intro n
  simp only [A207598, Nat.add_sub_cancel, A207598.P4325583708277193672.a, A207598.P4866717690251908741.a, A207449, A207449.P6199236306568499930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207598

/-! ## A207598.P4866717690251908741

`(12*n+4)*A207449(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207598

/-- `(12*n+4)*A207449(n+1)` -/
def P4866717690251908741.Spec : Prop :=
  ∀ n, P4866717690251908741.a n = A207598 (n + 1)

theorem P4866717690251908741.correct : P4866717690251908741.Spec := by
  intro n
  simp only [A207598, Nat.add_sub_cancel]

end A207598

/-! ## A207598.P13783132043162338043

`10*A017569(n)*A081437(n)`
-/

namespace A207598.P13783132043162338043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A017569 n * A081437 n)

end

end A207598.P13783132043162338043

namespace A207598

/-- `10*A017569(n)*A081437(n)` -/
def P13783132043162338043.Spec : Prop :=
  ∀ n, P13783132043162338043.a n = A207598 (n + 1)

theorem P13783132043162338043.correct : P13783132043162338043.Spec := by
  intro n
  simp only [A207598, Nat.add_sub_cancel, A207598.P13783132043162338043.a, A207598.P4866717690251908741.a, A017569, A017569.P14340039372117997380.a, A081437, A081437.P14818767288704405254.a, A207449, A207449.P6199236306568499930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207598

/-! ## A207598.P8319698183588685561

`40*A016777(n)*A081437(n)`
-/

namespace A207598.P8319698183588685561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * (A016777 n * A081437 n)

end

end A207598.P8319698183588685561

namespace A207598

/-- `40*A016777(n)*A081437(n)` -/
def P8319698183588685561.Spec : Prop :=
  ∀ n, P8319698183588685561.a n = A207598 (n + 1)

theorem P8319698183588685561.correct : P8319698183588685561.Spec := by
  intro n
  simp only [A207598, Nat.add_sub_cancel, A207598.P8319698183588685561.a, A207598.P4866717690251908741.a, A016777, A016777.P9931792138852554157.a, A081437, A081437.P14818767288704405254.a, A207449, A207449.P6199236306568499930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207598

/-! ## A207598.P10855322080190640844

`4*A207449(n+1)*A016777(n)`
-/

namespace A207598.P10855322080190640844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A207449 (n + 1) * A016777 n

end

end A207598.P10855322080190640844

namespace A207598

/-- `4*A207449(n+1)*A016777(n)` -/
def P10855322080190640844.Spec : Prop :=
  ∀ n, P10855322080190640844.a n = A207598 (n + 1)

theorem P10855322080190640844.correct : P10855322080190640844.Spec := by
  intro n
  simp only [A207598, Nat.add_sub_cancel, A207598.P10855322080190640844.a, A207598.P4866717690251908741.a, A016777, A016777.P9931792138852554157.a, A207449, A207449.P6199236306568499930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207598

/-! ## A207598.P14046781806887394800

`A081437(n)*A317095(A016777(n))`
-/

namespace A207598.P14046781806887394800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n * A317095 (A016777 n).toNat

end

end A207598.P14046781806887394800

namespace A207598

/-- `A081437(n)*A317095(A016777(n))` -/
def P14046781806887394800.Spec : Prop :=
  ∀ n, P14046781806887394800.a n = A207598 (n + 1)

end A207598

/-!
# A207599: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207599, there is no canonical definition to state claims against.
-/

/-! ## A207599.P16121083148275350059

`A207024(n+1)+A067168(A067176(n))`
-/

namespace A207599.P16121083148275350059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A207599.P16121083148275350059

/-! ## A207599.P3619776934991188532

`A207169(n+1)+A067168(A067176(n))`
-/

namespace A207599.P3619776934991188532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A207599.P3619776934991188532

/-! ## A207599.P6369001190449519574

`A342376(A342342(n))+A207024(n+1)`
-/

namespace A207599.P6369001190449519574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A207024 (n + 1)

end

end A207599.P6369001190449519574

/-! ## A207599.P2312900254563747217

`A342376(A342342(n))+A207169(n+1)`
-/

namespace A207599.P2312900254563747217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A207169 (n + 1)

end

end A207599.P2312900254563747217

/-! ## A207599.P2472005652317572220

`A369054(A304266(n+1))+A207024(n+1)`
-/

namespace A207599.P2472005652317572220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A304266 (n + 1)).toNat + A207024 (n + 1)

end

end A207599.P2472005652317572220

