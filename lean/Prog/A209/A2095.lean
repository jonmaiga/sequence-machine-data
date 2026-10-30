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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A209500: Number of nX5 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209500, there is no canonical definition to state claims against.
-/

/-! ## A209500.P1694954818426647705

`A209503(A374005(n+1))`
-/

namespace A209500.P1694954818426647705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A374005 (n + 1)).toNat

end

end A209500.P1694954818426647705

/-! ## A209500.P16581140389087258116

`A209503(Δ[A264443(n)])`
-/

namespace A209500.P16581140389087258116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (f1 (n + 1) - f1 n).toNat

end

end A209500.P16581140389087258116

/-! ## A209500.P2957647914129604715

`A209503(eq[8, A140996(n)])`
-/

namespace A209500.P2957647914129604715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209500.P2957647914129604715

/-! ## A209500.P12788845476809312964

`A209503(A052905(n+2)+1)`
-/

namespace A209500.P12788845476809312964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A052905 (n + 2) + 1).toNat

end

end A209500.P12788845476809312964

/-! ## A209500.P9478553644782201531

`A209503(A264443(n+1)-A264443(n))`
-/

namespace A209500.P9478553644782201531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A264443 (n + 1) - A264443 n).toNat

end

end A209500.P9478553644782201531

/-!
# A209501: Number of nX6 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209501, there is no canonical definition to state claims against.
-/

/-! ## A209501.P11522436354153290759

`A209503(A374007(n+1))`
-/

namespace A209501.P11522436354153290759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A374007 (n + 1)).toNat

end

end A209501.P11522436354153290759

/-! ## A209501.P15311837592404439217

`A209503(A055998(n+3)+9)`
-/

namespace A209501.P15311837592404439217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A055998 (n + 3) + 9).toNat

end

end A209501.P15311837592404439217

/-! ## A209501.P2545000276933534211

`A209503(eq[5, A193592(n)])`
-/

namespace A209501.P2545000276933534211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209501.P2545000276933534211

/-! ## A209501.P7626526040181093323

`A209503(A141214(n+3)-2)`
-/

namespace A209501.P7626526040181093323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A141214 (n + 3) - 2).toNat

end

end A209501.P7626526040181093323

/-! ## A209501.P17997260047704700909

`A209503(Δ[A264443(n+1)]-1)`
-/

namespace A209501.P17997260047704700909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (f1 (n + 1) - f1 n - 1).toNat

end

end A209501.P17997260047704700909

/-!
# A209502: Number of nX7 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209502, there is no canonical definition to state claims against.
-/

/-! ## A209502.P7755698727427425777

`A209503(A141214(n+3)+10)`
-/

namespace A209502.P7755698727427425777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A141214 (n + 3) + 10).toNat

end

end A209502.P7755698727427425777

/-!
# A209503: T(n,k)=Number of nXk 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209503, there is no canonical definition to state claims against.
-/

/-! ## A209503.P558151059137276139

`A209465(n+1)-A321936(A347975(n))`
-/

namespace A209503.P558151059137276139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) - A321936 (A347975 n).toNat

end

end A209503.P558151059137276139

/-! ## A209503.P16309574606072669565

`A209527(n+1)-A321936(A347975(n))`
-/

namespace A209503.P16309574606072669565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (n + 1) - A321936 (A347975 n).toNat

end

end A209503.P16309574606072669565

/-! ## A209503.P15773489198781011593

`A209744(n+1)-A321936(A347975(n))`
-/

namespace A209503.P15773489198781011593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (n + 1) - A321936 (A347975 n).toNat

end

end A209503.P15773489198781011593

/-!
# A209504: Half the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209504, there is no canonical definition to state claims against.
-/

/-! ## A209504.P11874970053242235430

`3*A207993(n+2)`
-/

namespace A209504.P11874970053242235430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A207993 (n + 2)

end

end A209504.P11874970053242235430

/-! ## A209504.P9326396443073006398

`A209511(∑[4*n]+1)`
-/

namespace A209504.P9326396443073006398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209504.P9326396443073006398

/-! ## A209504.P13139889981325765865

`3/2*A068253(n+2)`
-/

namespace A209504.P13139889981325765865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A068253 (n + 2) : ℚ)

end

end A209504.P13139889981325765865

/-! ## A209504.P13450689341176691349

`3/4*A203372(n+1)`
-/

namespace A209504.P13450689341176691349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203372 (n + 1) : ℚ)

end

end A209504.P13450689341176691349

/-! ## A209504.P13132449232406280715

`lcm(3, A209511(A001844(n)))`
-/

namespace A209504.P13132449232406280715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A209511 (A001844 n).toNat)

end

end A209504.P13132449232406280715

/-!
# A209505: Half the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having two or four distinct clockwise edge differences.

The programs for A209505, the canonical program `A209505.P9767395262311496271` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209505 has offset 1).

The definition of A209505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209505.P8349083270103223791

`ogf((27-12x)/(1-5x+2x^2))`
-/

namespace A209505.P8349083270103223791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -12] [1, -5, 2] n

end

end A209505.P8349083270103223791

namespace A209505

/-- `ogf((27-12x)/(1-5x+2x^2))` -/
def P8349083270103223791.Spec : Prop :=
  ∀ n, P8349083270103223791.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P9767395262311496271

`5*a(n-1)-2*a(n-2)` with `a(0)=27, a(1)=123`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209505

/-- `5*a(n-1)-2*a(n-2)` -/
def P9767395262311496271.Spec : Prop :=
  ∀ n, P9767395262311496271.a n = A209505 (n + 1)

theorem P9767395262311496271.correct : P9767395262311496271.Spec := by
  intro n
  simp only [A209505, Nat.add_sub_cancel]

end A209505

/-! ## A209505.P13021462524299180670

`3*A020698(n+1)`
-/

namespace A209505.P13021462524299180670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020698 (n + 1)

end

end A209505.P13021462524299180670

namespace A209505

/-- `3*A020698(n+1)` -/
def P13021462524299180670.Spec : Prop :=
  ∀ n, P13021462524299180670.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P8070302177780413899

`A396257(n+2)/2`
-/

namespace A209505.P8070302177780413899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396257 (n + 2) : ℚ) / 2

end

end A209505.P8070302177780413899

namespace A209505

/-- `A396257(n+2)/2` -/
def P8070302177780413899.Spec : Prop :=
  ∀ n, P8070302177780413899.a n = (A209505 (n + 1) : ℚ)

end A209505

/-! ## A209505.P9933490222188399083

`Δ[3*∑[A020698(n)]]`
-/

namespace A209505.P9933490222188399083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209505.P9933490222188399083

namespace A209505

/-- `Δ[3*∑[A020698(n)]]` -/
def P9933490222188399083.Spec : Prop :=
  ∀ n, P9933490222188399083.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P4465424739636483957

`3/2*A052913(n+2)`
-/

namespace A209505.P4465424739636483957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A052913 (n + 2) : ℚ)

end

end A209505.P4465424739636483957

namespace A209505

/-- `3/2*A052913(n+2)` -/
def P4465424739636483957.Spec : Prop :=
  ∀ n, P4465424739636483957.a n = (A209505 (n + 1) : ℚ)

end A209505

/-! ## A209505.P1337292205581146744

`3*A384611(2*n+3)`
-/

namespace A209505.P1337292205581146744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A384611 (2 * n + 3)

end

end A209505.P1337292205581146744

namespace A209505

/-- `3*A384611(2*n+3)` -/
def P1337292205581146744.Spec : Prop :=
  ∀ n, P1337292205581146744.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P7206422679680337586

`∑{#}[n+1, C(n+1, #)*A200249(#+1)]`
-/

namespace A209505.P7206422679680337586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A200249 (k + 1)

end

end A209505.P7206422679680337586

namespace A209505

/-- `∑{#}[n+1, C(n+1, #)*A200249(#+1)]` -/
def P7206422679680337586.Spec : Prop :=
  ∀ n, P7206422679680337586.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P13550453604615253949

`A052913(n+2)+A020698(n+1)`
-/

namespace A209505.P13550453604615253949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 (n + 2) + A020698 (n + 1)

end

end A209505.P13550453604615253949

namespace A209505

/-- `A052913(n+2)+A020698(n+1)` -/
def P13550453604615253949.Spec : Prop :=
  ∀ n, P13550453604615253949.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P2448093759170683364

`A107839(n+2)+A052913(n+1)`
-/

namespace A209505.P2448093759170683364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 2) + A052913 (n + 1)

end

end A209505.P2448093759170683364

namespace A209505

/-- `A107839(n+2)+A052913(n+1)` -/
def P2448093759170683364.Spec : Prop :=
  ∀ n, P2448093759170683364.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P2851575643681699722

`A060801(n+2)+A052984(n+2)`
-/

namespace A209505.P2851575643681699722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 (n + 2) + A052984 (n + 2)

end

end A209505.P2851575643681699722

namespace A209505

/-- `A060801(n+2)+A052984(n+2)` -/
def P2851575643681699722.Spec : Prop :=
  ∀ n, P2851575643681699722.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P15259790313824691361

`A107839(n+2)+A079162(2*n+3)`
-/

namespace A209505.P15259790313824691361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 2) + A079162 (2 * n + 3)

end

end A209505.P15259790313824691361

namespace A209505

/-- `A107839(n+2)+A079162(2*n+3)` -/
def P15259790313824691361.Spec : Prop :=
  ∀ n, P15259790313824691361.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P16460999061667747013

`Δ[Δ[A109165(2*n+1)]]-A109165(2*n)`
-/

namespace A209505.P16460999061667747013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109165 (2 * n)

end

end A209505.P16460999061667747013

namespace A209505

/-- `Δ[Δ[A109165(2*n+1)]]-A109165(2*n)` -/
def P16460999061667747013.Spec : Prop :=
  ∀ n, P16460999061667747013.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P6107083761316470566

`A107839(n+1)+A159289(n+1)+A107839(n)`
-/

namespace A209505.P6107083761316470566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 1) + (A159289 (n + 1) + A107839 n)

end

end A209505.P6107083761316470566

namespace A209505

/-- `A107839(n+1)+A159289(n+1)+A107839(n)` -/
def P6107083761316470566.Spec : Prop :=
  ∀ n, P6107083761316470566.a n = A209505 (n + 1)

end A209505

/-! ## A209505.P13208866700276015396

`A020698(n+1)+A159289(n+1)-A052984(n+1)`
-/

namespace A209505.P13208866700276015396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 (n + 1) + (A159289 (n + 1) - A052984 (n + 1))

end

end A209505.P13208866700276015396

namespace A209505

/-- `A020698(n+1)+A159289(n+1)-A052984(n+1)` -/
def P13208866700276015396.Spec : Prop :=
  ∀ n, P13208866700276015396.a n = A209505 (n + 1)

end A209505

/-!
# A209506: Half the number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having two or four distinct clockwise edge differences.

The programs for A209506, the canonical program `A209506.P4136747061925479875` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209506 has offset 1).

The definition of A209506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209506.P4136747061925479875

`3*A078100(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209506

/-- `3*A078100(n+2)` -/
def P4136747061925479875.Spec : Prop :=
  ∀ n, P4136747061925479875.a n = A209506 (n + 1)

theorem P4136747061925479875.correct : P4136747061925479875.Spec := by
  intro n
  simp only [A209506, Nat.add_sub_cancel]

end A209506

/-! ## A209506.P8745653619485406390

`3/4*A203373(n+1)`
-/

namespace A209506.P8745653619485406390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203373 (n + 1) : ℚ)

end

end A209506.P8745653619485406390

namespace A209506

/-- `3/4*A203373(n+1)` -/
def P8745653619485406390.Spec : Prop :=
  ∀ n, P8745653619485406390.a n = (A209506 (n + 1) : ℚ)

theorem P8745653619485406390.correct : P8745653619485406390.Spec := by
  intro n
  simp only [A209506, Nat.add_sub_cancel, A209506.P8745653619485406390.a, A209506.P4136747061925479875.a, A078100, A078100.P2117606517684963015.a, A203373, A203373.P1730496361970884052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209506

/-! ## A209506.P7867498807401760031

`A205250(n+1)-4-A078100(n+2)`
-/

namespace A209506.P7867498807401760031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205250 (n + 1) - 4 - A078100 (n + 2)

end

end A209506.P7867498807401760031

namespace A209506

/-- `A205250(n+1)-4-A078100(n+2)` -/
def P7867498807401760031.Spec : Prop :=
  ∀ n, P7867498807401760031.a n = A209506 (n + 1)

theorem P7867498807401760031.correct : P7867498807401760031.Spec := by
  intro n
  simp only [A209506, Nat.add_sub_cancel, A209506.P7867498807401760031.a, A209506.P4136747061925479875.a, A078100, A078100.P2117606517684963015.a, A205250, A205250.P15255777719180569004.a, A203373, A203373.P1730496361970884052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209506

/-! ## A209506.P7489107599337741679

`A206145(n+1)/2`
-/

namespace A209506.P7489107599337741679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206145 (n + 1) : ℚ) / 2

end

end A209506.P7489107599337741679

namespace A209506

/-- `A206145(n+1)/2` -/
def P7489107599337741679.Spec : Prop :=
  ∀ n, P7489107599337741679.a n = (A209506 (n + 1) : ℚ)

theorem P7489107599337741679.correct : P7489107599337741679.Spec := by
  intro n
  simp only [A209506, Nat.add_sub_cancel, A209506.P7489107599337741679.a, A209506.P4136747061925479875.a, A078100, A078100.P2117606517684963015.a, A206145, A206145.P15711629955676474029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209506

/-! ## A209506.P2026868836168253159

`A209511(∑[n+2]+4)`
-/

namespace A209506.P2026868836168253159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209511 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209506.P2026868836168253159

namespace A209506

/-- `A209511(∑[n+2]+4)` -/
def P2026868836168253159.Spec : Prop :=
  ∀ n, P2026868836168253159.a n = A209506 (n + 1)

end A209506

/-!
# A209507: Half the number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having two or four distinct clockwise edge differences.

The programs for A209507, there is no canonical definition to state claims against.
-/

/-! ## A209507.P6123294779504281237

`A206146(n+1)/2`
-/

namespace A209507.P6123294779504281237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206146 (n + 1) : ℚ) / 2

end

end A209507.P6123294779504281237

/-! ## A209507.P10949595383803841627

`3*A207994(n+2)`
-/

namespace A209507.P10949595383803841627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A207994 (n + 2)

end

end A209507.P10949595383803841627

/-! ## A209507.P2536173375098174923

`3/4*A203374(n+1)`
-/

namespace A209507.P2536173375098174923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203374 (n + 1) : ℚ)

end

end A209507.P2536173375098174923

/-! ## A209507.P5606100924131630855

`3*(A205251(n+1)-4)/4`
-/

namespace A209507.P5606100924131630855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205251 (n + 1) - 4 : ℚ) / 4)

end

end A209507.P5606100924131630855

/-! ## A209507.P15633684722198220449

`A209511(A374004(n+1))`
-/

namespace A209507.P15633684722198220449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209511 (A374004 (n + 1)).toNat

end

end A209507.P15633684722198220449

/-!
# A209508: Half the number of (n+1)X6 0..2 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209508, there is no canonical definition to state claims against.
-/

/-! ## A209508.P11612637349708638681

`A206147(n+1)/2`
-/

namespace A209508.P11612637349708638681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206147 (n + 1) : ℚ) / 2

end

end A209508.P11612637349708638681

/-! ## A209508.P7510403440422501803

`3*A207995(n+2)`
-/

namespace A209508.P7510403440422501803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A207995 (n + 2)

end

end A209508.P7510403440422501803

/-! ## A209508.P17161112180956065739

`3/4*A203375(n+1)`
-/

namespace A209508.P17161112180956065739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203375 (n + 1) : ℚ)

end

end A209508.P17161112180956065739

/-! ## A209508.P13954685018201344887

`3*(A205315(n+1)-2)/2`
-/

namespace A209508.P13954685018201344887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205315 (n + 1) - 2 : ℚ) / 2)

end

end A209508.P13954685018201344887

/-! ## A209508.P13916330154945228936

`3*(A205252(n+1)-4)/4`
-/

namespace A209508.P13916330154945228936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205252 (n + 1) - 4 : ℚ) / 4)

end

end A209508.P13916330154945228936

/-!
# A209509: Half the number of (n+1)X7 0..2 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209509, there is no canonical definition to state claims against.
-/

/-! ## A209509.P5914840011868706958

`3*A207996(n+2)`
-/

namespace A209509.P5914840011868706958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A207996 (n + 2)

end

end A209509.P5914840011868706958

/-! ## A209509.P2801385699664474174

`3*(A205316(n+1)-2)/2`
-/

namespace A209509.P2801385699664474174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205316 (n + 1) - 2 : ℚ) / 2)

end

end A209509.P2801385699664474174

/-! ## A209509.P3993931376031180309

`A206148(n+1)/2`
-/

namespace A209509.P3993931376031180309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206148 (n + 1) : ℚ) / 2

end

end A209509.P3993931376031180309

/-! ## A209509.P11887501112831749152

`3/4*A203376(n+1)`
-/

namespace A209509.P11887501112831749152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203376 (n + 1) : ℚ)

end

end A209509.P11887501112831749152

/-! ## A209509.P9065814687227161707

`3*(A205253(n+1)-4)/4`
-/

namespace A209509.P9065814687227161707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205253 (n + 1) - 4 : ℚ) / 4)

end

end A209509.P9065814687227161707

/-!
# A209510: Half the number of (n+1)X8 0..2 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209510, there is no canonical definition to state claims against.
-/

/-! ## A209510.P3203088002984703684

`A206149(n+1)/2`
-/

namespace A209510.P3203088002984703684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206149 (n + 1) : ℚ) / 2

end

end A209510.P3203088002984703684

/-! ## A209510.P13120351276939346649

`3/4*A203377(n+1)`
-/

namespace A209510.P13120351276939346649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203377 (n + 1) : ℚ)

end

end A209510.P13120351276939346649

/-! ## A209510.P17904547294628840976

`(A205317(n+1)-2)*3/2`
-/

namespace A209510.P17904547294628840976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205317 (n + 1) - 2 : ℚ) * ((3 : ℚ) / 2)

end

end A209510.P17904547294628840976

/-! ## A209510.P13493683221601923805

`3*(A205254(n+1)-4)/4`
-/

namespace A209510.P13493683221601923805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205254 (n + 1) - 4 : ℚ) / 4)

end

end A209510.P13493683221601923805

/-! ## A209510.P12256495271109343425

`A209511(A374008(n+1))`
-/

namespace A209510.P12256495271109343425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209511 (A374008 (n + 1)).toNat

end

end A209510.P12256495271109343425

/-!
# A209511: T(n,k)=Half the number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having two or four distinct clockwise edge differences.

The programs for A209511, there is no canonical definition to state claims against.
-/

/-! ## A209511.P11332513474633262711

`3/4*A203378(n+1)`
-/

namespace A209511.P11332513474633262711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A203378 (n + 1) : ℚ)

end

end A209511.P11332513474633262711

/-! ## A209511.P5573330840534380104

`3*(A205318(n+1)/2-1)`
-/

namespace A209511.P5573330840534380104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205318 (n + 1) : ℚ) / 2 - 1)

end

end A209511.P5573330840534380104

/-! ## A209511.P6023197683330384117

`3*(A205255(n+1)-4)/4`
-/

namespace A209511.P6023197683330384117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205255 (n + 1) - 4 : ℚ) / 4)

end

end A209511.P6023197683330384117

/-! ## A209511.P6065069168557882403

`A203378(n+1)-(A205255(n+1)-4)/4`
-/

namespace A209511.P6065069168557882403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203378 (n + 1) : ℚ) - (A205255 (n + 1) - 4 : ℚ) / 4

end

end A209511.P6065069168557882403

/-! ## A209511.P16279146240790427707

`A205318(char[1]+1+n)+A205318(n+1)-4-A203378(n+1)/4`
-/

namespace A209511.P16279146240790427707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205318 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A205318 (n + 1) - 4 : ℚ) - (A203378 (n + 1) : ℚ) / 4

end

end A209511.P16279146240790427707

/-!
# A209512: Number of (n+1) X (n+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A209512, there is no canonical definition to state claims against.
-/

/-! ## A209512.P6770640015348240513

`3/4*A234778(n+1)`
-/

namespace A209512.P6770640015348240513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A234778 (n + 1) : ℚ)

end

end A209512.P6770640015348240513

/-! ## A209512.P17314459732183019610

`A209517((n+1)²+n²)`
-/

namespace A209512.P17314459732183019610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209517 ((n + 1) ^ 2 + n ^ 2)

end

end A209512.P17314459732183019610

/-! ## A209512.P10422445914982308320

`3*A068748(n+2)`
-/

namespace A209512.P10422445914982308320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A068748 (n + 2)

end

end A209512.P10422445914982308320

/-!
# A209513: Number of (n+1) X 5 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A209513, there is no canonical definition to state claims against.
-/

/-! ## A209513.P6549564027858904277

`3*A222166(n+2)`
-/

namespace A209513.P6549564027858904277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A222166 (n + 2)

end

end A209513.P6549564027858904277

/-! ## A209513.P3784440965109316705

`3/4*A234782(n+1)`
-/

namespace A209513.P3784440965109316705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A234782 (n + 1) : ℚ)

end

end A209513.P3784440965109316705

/-! ## A209513.P13092407321631937214

`3*(A206133(n+1)-8)/4`
-/

namespace A209513.P13092407321631937214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A206133 (n + 1) - 8 : ℚ) / 4)

end

end A209513.P13092407321631937214

/-! ## A209513.P8468836806772083404

`A209517(A374004(n+1))`
-/

namespace A209513.P8468836806772083404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209517 (A374004 (n + 1)).toNat

end

end A209513.P8468836806772083404

/-! ## A209513.P4651803965877235638

`A209517(A167614(n+2)+1)`
-/

namespace A209513.P4651803965877235638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209517 (A167614 (n + 2) + 1).toNat

end

end A209513.P4651803965877235638

/-!
# A209514: Number of (n+1) X 6 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A209514, there is no canonical definition to state claims against.
-/

/-! ## A209514.P14417256350801275110

`3*A222167(n+2)`
-/

namespace A209514.P14417256350801275110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A222167 (n + 2)

end

end A209514.P14417256350801275110

/-! ## A209514.P18071907878714695964

`3/4*A234783(n+1)`
-/

namespace A209514.P18071907878714695964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A234783 (n + 1) : ℚ)

end

end A209514.P18071907878714695964

/-! ## A209514.P14093197649880618873

`3*(A206134(n+1)-8)/4`
-/

namespace A209514.P14093197649880618873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A206134 (n + 1) - 8 : ℚ) / 4)

end

end A209514.P14093197649880618873

/-! ## A209514.P3560548661355241269

`A234783(n+1)-A222167(n+2)`
-/

namespace A209514.P3560548661355241269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234783 (n + 1) - A222167 (n + 2)

end

end A209514.P3560548661355241269

/-! ## A209514.P7439296248510240413

`A206134(n+1)-(A222167(n+2)+8)`
-/

namespace A209514.P7439296248510240413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206134 (n + 1) - (A222167 (n + 2) + 8)

end

end A209514.P7439296248510240413

/-!
# A209515: Number of (n+1) X 7 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A209515, there is no canonical definition to state claims against.
-/

/-! ## A209515.P6853513789627633380

`3*A222168(n+2)`
-/

namespace A209515.P6853513789627633380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A222168 (n + 2)

end

end A209515.P6853513789627633380

/-! ## A209515.P4314214794615283101

`3/4*A234784(n+1)`
-/

namespace A209515.P4314214794615283101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A234784 (n + 1) : ℚ)

end

end A209515.P4314214794615283101

/-! ## A209515.P7019450817334510392

`A209517(A374007(n+1))`
-/

namespace A209515.P7019450817334510392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209517 (A374007 (n + 1)).toNat

end

end A209515.P7019450817334510392

/-!
# A209516: Number of (n+1) X 8 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A209516, there is no canonical definition to state claims against.
-/

/-! ## A209516.P1609498133557844270

`3/4*A234785(n+1)`
-/

namespace A209516.P1609498133557844270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A234785 (n + 1) : ℚ)

end

end A209516.P1609498133557844270

/-! ## A209516.P913343581773765924

`A209517(A000124(n+7)-7)`
-/

namespace A209516.P913343581773765924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209517 (A000124 (n + 7) - 7).toNat

end

end A209516.P913343581773765924

/-!
# A209517: T(n,k) = Number of (n+1) X (k+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A209517, there is no canonical definition to state claims against.
-/

/-! ## A209517.P9581917631842109073

`3/4*A234786(n+1)`
-/

namespace A209517.P9581917631842109073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A234786 (n + 1) : ℚ)

end

end A209517.P9581917631842109073

/-! ## A209517.P18349151732442708346

`A234786(n+1)-A000265(A234786(n+1)/2)`
-/

namespace A209517.P18349151732442708346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (n + 1) - A000265 (SequenceMachineLib.roundAway ((A234786 (n + 1) : ℚ) / 2)).toNat

end

end A209517.P18349151732442708346

/-! ## A209517.P13134413776791514369

`3*A000265(A234786(n+1))`
-/

namespace A209517.P13134413776791514369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000265 (A234786 (n + 1)).toNat

end

end A209517.P13134413776791514369

/-! ## A209517.P10889458637295971574

`∑{d}[A234786(n+1), A000010(A000265(#))]`
-/

namespace A209517.P10889458637295971574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (A000265 d).toNat

end

end A209517.P10889458637295971574

/-!
# A209518: Triangle by rows, reversal of A104712.

The programs for A209518, the canonical program `A209518.P15211053160365626883` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209518 has offset 0).

The definition of A209518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209518.P12933815344584894922

`C(row(n)+2, col(n))`
-/

namespace A209518.P12933815344584894922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n)

end

end A209518.P12933815344584894922

namespace A209518

/-- `C(row(n)+2, col(n))` -/
def P12933815344584894922.Spec : Prop :=
  ∀ n, (P12933815344584894922.a n : ℤ) = A209518 n

end A209518

/-! ## A209518.P1248847130167671861

`C(comp[∑[n]]-n, col(n))`
-/

namespace A209518.P1248847130167671861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat (SequenceMachineLib.triCol n)

end

end A209518.P1248847130167671861

namespace A209518

/-- `C(comp[∑[n]]-n, col(n))` -/
def P1248847130167671861.Spec : Prop :=
  ∀ n, (P1248847130167671861.a n : ℤ) = A209518 n

end A209518

/-! ## A209518.P5082710525245947947

`T(n-1,k-1)+C(∑[abs(T(n-1,k))], col(n))` with `a(0)=1`
-/

namespace A209518.P5082710525245947947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triCol n)

end

end A209518.P5082710525245947947

namespace A209518

/-- `T(n-1,k-1)+C(∑[abs(T(n-1,k))], col(n))` -/
def P5082710525245947947.Spec : Prop :=
  ∀ n, (P5082710525245947947.a n : ℤ) = A209518 n

end A209518

/-! ## A209518.P11053054521703317114

`1-Δ[col(n)]+T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A209518.P11053054521703317114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)

end

end A209518.P11053054521703317114

namespace A209518

/-- `1-Δ[col(n)]+T(n-1,k)+T(n-1,k-1)` -/
def P11053054521703317114.Spec : Prop :=
  ∀ n, P11053054521703317114.a n = A209518 n

end A209518

/-! ## A209518.P5988693760414871816

`T(n-1,k-1)+T(n-1,k)+(col(n)+1)*T(col(n), T(n-1,k))` with `a(0)=1`
-/

namespace A209518.P5988693760414871816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A209518.P5988693760414871816

namespace A209518

/-- `T(n-1,k-1)+T(n-1,k)+(col(n)+1)*T(col(n), T(n-1,k))` -/
def P5988693760414871816.Spec : Prop :=
  ∀ n, (P5988693760414871816.a n : ℤ) = A209518 n

end A209518

/-! ## A209518.P1261695945168034717

`A074909(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A209518.P1261695945168034717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074909 n + SequenceMachineLib.triUpLeft a n

end

end A209518.P1261695945168034717

namespace A209518

/-- `A074909(n)+T(n-1,k-1)` -/
def P1261695945168034717.Spec : Prop :=
  ∀ n, P1261695945168034717.a n = A209518 n

end A209518

/-! ## A209518.P15211053160365626883

`A074909(comp[∑[n-1]])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209518

/-- `A074909(comp[∑[n-1]])` -/
def P15211053160365626883.Spec : Prop :=
  ∀ n, P15211053160365626883.a n = A209518 n

theorem P15211053160365626883.correct : P15211053160365626883.Spec := by
  intro n
  simp only [A209518]

end A209518

/-! ## A209518.P540144377858316140

`A062196(n)/A007318(n)`
-/

namespace A209518.P540144377858316140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062196 n : ℚ) / (A007318 n : ℚ)

end

end A209518.P540144377858316140

namespace A209518

/-- `A062196(n)/A007318(n)` -/
def P540144377858316140.Spec : Prop :=
  ∀ n, P540144377858316140.a n = (A209518 n : ℚ)

end A209518

/-! ## A209518.P1678871076563908355

`A194118(n)-A104712(n+2)`
-/

namespace A209518.P1678871076563908355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - A104712 (n + 2)

end

end A209518.P1678871076563908355

namespace A209518

/-- `A194118(n)-A104712(n+2)` -/
def P1678871076563908355.Spec : Prop :=
  ∀ n, P1678871076563908355.a n = A209518 n

end A209518

/-! ## A209518.P6573288531429228461

`A194121(n)-A168577(n+2)`
-/

namespace A209518.P6573288531429228461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A168577 (n + 2)

end

end A209518.P6573288531429228461

namespace A209518

/-- `A194121(n)-A168577(n+2)` -/
def P6573288531429228461.Spec : Prop :=
  ∀ n, P6573288531429228461.a n = A209518 n

end A209518

/-! ## A209518.P13189695230036486806

`A348539(n)/A104712(n+2)`
-/

namespace A209518.P13189695230036486806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348539 n : ℚ) / (A104712 (n + 2) : ℚ)

end

end A209518.P13189695230036486806

namespace A209518

/-- `A348539(n)/A104712(n+2)` -/
def P13189695230036486806.Spec : Prop :=
  ∀ n, P13189695230036486806.a n = (A209518 n : ℚ)

end A209518

/-! ## A209518.P8600087216777440071

`A007318(lt[col(n)+1, row(n)])`
-/

namespace A209518.P8600087216777440071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209518.P8600087216777440071

namespace A209518

/-- `A007318(lt[col(n)+1, row(n)])` -/
def P8600087216777440071.Spec : Prop :=
  ∀ n, P8600087216777440071.a n = A209518 n

end A209518

/-! ## A209518.P12350396227768362668

`A007318(lt[1, row(n)-col(n)])`
-/

namespace A209518.P12350396227768362668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A209518.P12350396227768362668

namespace A209518

/-- `A007318(lt[1, row(n)-col(n)])` -/
def P12350396227768362668.Spec : Prop :=
  ∀ n, P12350396227768362668.a n = A209518 n

end A209518

/-! ## A209518.P15117422667703801547

`A007318(lt[1, 2*T(n-1,k)+T(n-1,k-1)])` with `a(0)=0, a(1)=1`
-/

namespace A209518.P15117422667703801547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * SequenceMachineLib.triUp f2 n + SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209518.P15117422667703801547

namespace A209518

/-- `A007318(lt[1, 2*T(n-1,k)+T(n-1,k-1)])` -/
def P15117422667703801547.Spec : Prop :=
  ∀ n, P15117422667703801547.a n = A209518 n

end A209518

/-! ## A209518.P13197976063616660447

`A104712(A061579(n)+2)`
-/

namespace A209518.P13197976063616660447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (A061579 n + 2).toNat

end

end A209518.P13197976063616660447

namespace A209518

/-- `A104712(A061579(n)+2)` -/
def P13197976063616660447.Spec : Prop :=
  ∀ n, P13197976063616660447.a n = A209518 n

end A209518

/-! ## A209518.P3631124345712741234

`A007318(lt[1, A242378(n)])`
-/

namespace A209518.P3631124345712741234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A209518.P3631124345712741234

namespace A209518

/-- `A007318(lt[1, A242378(n)])` -/
def P3631124345712741234.Spec : Prop :=
  ∀ n, P3631124345712741234.a n = A209518 n

end A209518

/-! ## A209518.P17947089390258985158

`A007318(eq[1, A131843(n+1)])`
-/

namespace A209518.P17947089390258985158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209518.P17947089390258985158

namespace A209518

/-- `A007318(eq[1, A131843(n+1)])` -/
def P17947089390258985158.Spec : Prop :=
  ∀ n, P17947089390258985158.a n = A209518 n

end A209518

/-! ## A209518.P5553392226806250110

`A007318(lt[1, A007318(n+1)])`
-/

namespace A209518.P5553392226806250110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A209518.P5553392226806250110

namespace A209518

/-- `A007318(lt[1, A007318(n+1)])` -/
def P5553392226806250110.Spec : Prop :=
  ∀ n, P5553392226806250110.a n = A209518 n

end A209518

/-! ## A209518.P1167285510039326361

`A007318(lt[1, A007318(n)]-1)`
-/

namespace A209518.P1167285510039326361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A209518.P1167285510039326361

namespace A209518

/-- `A007318(lt[1, A007318(n)]-1)` -/
def P1167285510039326361.Spec : Prop :=
  ∀ n, P1167285510039326361.a n = A209518 n

end A209518

/-! ## A209518.P9649144640541561518

`A007318(A131507(n)+2+n)`
-/

namespace A209518.P9649144640541561518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A131507 n + 2 + (n : ℤ)).toNat

end

end A209518.P9649144640541561518

namespace A209518

/-- `A007318(A131507(n)+2+n)` -/
def P9649144640541561518.Spec : Prop :=
  ∀ n, P9649144640541561518.a n = A209518 n

end A209518

/-!
# A209520: Number of n X n 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209520, there is no canonical definition to state claims against.
-/

/-! ## A209520.P1930786904727355219

`A209527((n+1)²+n²)`
-/

namespace A209520.P1930786904727355219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 ((n + 1) ^ 2 + n ^ 2)

end

end A209520.P1930786904727355219

/-!
# A209521: Number of nX2 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209521, there is no canonical definition to state claims against.
-/

/-! ## A209521.P6167067594124416081

`A209527(∑[n+1]+2)`
-/

namespace A209521.P6167067594124416081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209521.P6167067594124416081

/-! ## A209521.P18110498131205077025

`A140356(n)*A209527(A055998(n)+2)`
-/

namespace A209521.P18110498131205077025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n * A209527 (A055998 n + 2).toNat

end

end A209521.P18110498131205077025

/-! ## A209521.P9842987183780390803

`A209527(A055998(n)+2)+A152691(n)%2`
-/

namespace A209521.P9842987183780390803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A055998 n + 2).toNat + Int.tmod (A152691 n) 2

end

end A209521.P9842987183780390803

/-! ## A209521.P14668136682138443220

`Δ[n²]+A209527(A055998(n)+2)-A005408(n)`
-/

namespace A209521.P14668136682138443220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A209527 (A055998 n + 2).toNat - A005408 n)

end

end A209521.P14668136682138443220

/-!
# A209522: Number of nX3 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209522, there is no canonical definition to state claims against.
-/

/-! ## A209522.P6384480291078649671

`A209527(∑[n+2]+4)`
-/

namespace A209522.P6384480291078649671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209522.P6384480291078649671

/-! ## A209522.P6803086570927134423

`A326460(n)+A209527(A167614(n+1))`
-/

namespace A209522.P6803086570927134423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n + A209527 (A167614 (n + 1)).toNat

end

end A209522.P6803086570927134423

/-! ## A209522.P4635801314790130285

`lcm(A033999(n), A209527(A167614(n+1)))`
-/

namespace A209522.P4635801314790130285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209527 (A167614 (n + 1)).toNat)

end

end A209522.P4635801314790130285

/-! ## A209522.P4193798081934964271

`or(A028606(n), A209527(A167614(n+1)))`
-/

namespace A209522.P4193798081934964271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028606 n) (A209527 (A167614 (n + 1)).toNat)

end

end A209522.P4193798081934964271

/-! ## A209522.P3647565122738838512

`or(A130779(n), A209527(A167614(n+1)))`
-/

namespace A209522.P3647565122738838512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130779 n) (A209527 (A167614 (n + 1)).toNat)

end

end A209522.P3647565122738838512

/-!
# A209523: Number of nX4 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209523, there is no canonical definition to state claims against.
-/

/-! ## A209523.P15330260110266617873

`A209527(A141214(n)+7)`
-/

namespace A209523.P15330260110266617873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A141214 n + 7).toNat

end

end A209523.P15330260110266617873

/-! ## A209523.P8548173735896617378

`A209527(A052905(n)+9)`
-/

namespace A209523.P8548173735896617378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A052905 n + 9).toNat

end

end A209523.P8548173735896617378

/-! ## A209523.P11948839869420060605

`A209527(A055999(n)+10)`
-/

namespace A209523.P11948839869420060605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A055999 n + 10).toNat

end

end A209523.P11948839869420060605

/-! ## A209523.P13965585821964856779

`A209527(A167614(n+2)+1)`
-/

namespace A209523.P13965585821964856779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A167614 (n + 2) + 1).toNat

end

end A209523.P13965585821964856779

/-! ## A209523.P18230186239860578018

`A209527(A155212(n)+5)`
-/

namespace A209523.P18230186239860578018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A155212 n + 5).toNat

end

end A209523.P18230186239860578018

/-!
# A209524: Number of nX5 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209524, there is no canonical definition to state claims against.
-/

/-! ## A209524.P10972734168718371999

`A209527(A374005(n+1))`
-/

namespace A209524.P10972734168718371999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A374005 (n + 1)).toNat

end

end A209524.P10972734168718371999

/-! ## A209524.P5814681281874663157

`A209527(eq[7, A066657(n)])`
-/

namespace A209524.P5814681281874663157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209524.P5814681281874663157

/-! ## A209524.P10608827695378491596

`A209527(Δ[A264443(n)])`
-/

namespace A209524.P10608827695378491596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (f1 (n + 1) - f1 n).toNat

end

end A209524.P10608827695378491596

/-! ## A209524.P10669052997236146892

`A209527(A056115(n)+11)`
-/

namespace A209524.P10669052997236146892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A056115 n + 11).toNat

end

end A209524.P10669052997236146892

/-!
# A209525: Number of nX6 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209525, there is no canonical definition to state claims against.
-/

/-! ## A209525.P13233837579501311179

`A209527(eq[7, A123229(n+1)])`
-/

namespace A209525.P13233837579501311179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209525.P13233837579501311179

/-! ## A209525.P605525611327576455

`A209527(A141214(n+3)-2)`
-/

namespace A209525.P605525611327576455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A141214 (n + 3) - 2).toNat

end

end A209525.P605525611327576455

/-! ## A209525.P3937896850667073066

`A209527(eq[16, A057728(n+1)])`
-/

namespace A209525.P3937896850667073066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209525.P3937896850667073066

/-!
# A209526: Number of nX7 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209526, there is no canonical definition to state claims against.
-/

/-! ## A209526.P14697950850134332872

`A209527(A141214(n+3)+10)`
-/

namespace A209526.P14697950850134332872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (A141214 (n + 3) + 10).toNat

end

end A209526.P14697950850134332872

/-!
# A209527: T(n,k)=Number of nXk 0..7 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..7 introduced in row major order.

The programs for A209527, there is no canonical definition to state claims against.
-/

/-! ## A209527.P1150545906948515647

`A209465(n+1)+A010051(A022171(n))`
-/

namespace A209527.P1150545906948515647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) + A010051 (A022171 n).toNat

end

end A209527.P1150545906948515647

/-! ## A209527.P14274137361693654489

`A209465(n+1)+A025465(A069466(n))`
-/

namespace A209527.P14274137361693654489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) + A025465 (A069466 n).toNat

end

end A209527.P14274137361693654489

/-! ## A209527.P10994502653008703399

`A209465(n+1)+A001878(A102400(n))`
-/

namespace A209527.P10994502653008703399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) + A001878 (A102400 n).toNat

end

end A209527.P10994502653008703399

/-! ## A209527.P2725844316763590866

`A209465(n+1)+A133010(A008459(n))`
-/

namespace A209527.P2725844316763590866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) + A133010 (A008459 n).toNat

end

end A209527.P2725844316763590866

/-!
# A209528: The number of length n ternary sequences in which no symbol appears exactly once.

The programs for A209528, there is no canonical definition to state claims against.
-/

/-! ## A209528.P8397173583320669560

`A131103(C(ceil(acot(n))+n+1, 2)+n)`
-/

namespace A209528.P8397173583320669560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (Nat.choose (⌈SequenceMachineLib.acot (n : ℝ)⌉ + (n + 1 : ℤ)).toNat 2 + n)

end

end A209528.P8397173583320669560

/-! ## A209528.P11563172061946322283

`A131103(eq[2, A193739(n)])`
-/

namespace A209528.P11563172061946322283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209528.P11563172061946322283

/-! ## A209528.P1922136918721651341

`A131103(eq[2, A121484(n+1)])`
-/

namespace A209528.P1922136918721651341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209528.P1922136918721651341

/-! ## A209528.P6499584362672595131

`A131103(eq[3, A127119(n+1)])`
-/

namespace A209528.P6499584362672595131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209528.P6499584362672595131

/-! ## A209528.P12519488586790424334

`A131103(A034856(n+1))+C(2, n+2)`
-/

namespace A209528.P12519488586790424334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (A034856 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A209528.P12519488586790424334

/-!
# A209529: Half the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209529, there is no canonical definition to state claims against.
-/

/-! ## A209529.P17243362196319237761

`A029744((n+2)²)+1`
-/

namespace A209529.P17243362196319237761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 ((n + 2) ^ 2) + 1

end

end A209529.P17243362196319237761

/-! ## A209529.P594433003028977552

`A078621((n+2)²-2)`
-/

namespace A209529.P594433003028977552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078621 ((n + 2) ^ 2 - 2)

end

end A209529.P594433003028977552

/-! ## A209529.P3516985883255358059

`A209534(∑[4*n]+1)`
-/

namespace A209529.P3516985883255358059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209529.P3516985883255358059

/-! ## A209529.P5415411718321244433

`A209721((n+1)*(n+3))`
-/

namespace A209529.P5415411718321244433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 ((n + 1) * (n + 3))

end

end A209529.P5415411718321244433

/-! ## A209529.P3369184606917911207

`A164090((n+1)*(n+3))+1`
-/

namespace A209529.P3369184606917911207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 ((n + 1) * (n + 3)) + 1

end

end A209529.P3369184606917911207

/-!
# A209530: Half the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

The programs for A209530, the canonical program `A209530.P9279751461220515330` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209530 has offset 1).

The definition of A209530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209530.P7613853924077862768

`ogf((9+16x-32x^2)/(1-x-8x^2+8x^3))`
-/

namespace A209530.P7613853924077862768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 16, -32] [1, -1, -8, 8] n

end

end A209530.P7613853924077862768

namespace A209530

/-- `ogf((9+16x-32x^2)/(1-x-8x^2+8x^3))` -/
def P7613853924077862768.Spec : Prop :=
  ∀ n, P7613853924077862768.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P9279751461220515330

`a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=9, a(1)=25, a(2)=65`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209530

/-- `a(n-1)+8*a(n-2)-8*a(n-3)` -/
def P9279751461220515330.Spec : Prop :=
  ∀ n, P9279751461220515330.a n = A209530 (n + 1)

theorem P9279751461220515330.correct : P9279751461220515330.Spec := by
  intro n
  simp only [A209530, Nat.add_sub_cancel]

end A209530

/-! ## A209530.P8686991980866999366

`A096886(n+2)+1`
-/

namespace A209530.P8686991980866999366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096886 (n + 2) + 1

end

end A209530.P8686991980866999366

namespace A209530

/-- `A096886(n+2)+1` -/
def P8686991980866999366.Spec : Prop :=
  ∀ n, P8686991980866999366.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P12249279172831608215

`A209721(3*n+5)`
-/

namespace A209530.P12249279172831608215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (3 * n + 5)

end

end A209530.P12249279172831608215

namespace A209530

/-- `A209721(3*n+5)` -/
def P12249279172831608215.Spec : Prop :=
  ∀ n, P12249279172831608215.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P16724343172530664785

`A090989(3*(n+1))+1`
-/

namespace A209530.P16724343172530664785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (3 * (n + 1)) + 1

end

end A209530.P16724343172530664785

namespace A209530

/-- `A090989(3*(n+1))+1` -/
def P16724343172530664785.Spec : Prop :=
  ∀ n, P16724343172530664785.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P13224666772898291058

`A029744(3*(n+2))+1`
-/

namespace A209530.P13224666772898291058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (3 * (n + 2)) + 1

end

end A209530.P13224666772898291058

namespace A209530

/-- `A029744(3*(n+2))+1` -/
def P13224666772898291058.Spec : Prop :=
  ∀ n, P13224666772898291058.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P8045677200611560899

`A157176(3*(n+2))+1`
-/

namespace A209530.P8045677200611560899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157176 (3 * (n + 2)) + 1

end

end A209530.P8045677200611560899

namespace A209530

/-- `A157176(3*(n+2))+1` -/
def P8045677200611560899.Spec : Prop :=
  ∀ n, P8045677200611560899.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P1835788879836583289

`A027383(3*(n+1))+3`
-/

namespace A209530.P1835788879836583289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (3 * (n + 1)) + 3

end

end A209530.P1835788879836583289

namespace A209530

/-- `A027383(3*(n+1))+3` -/
def P1835788879836583289.Spec : Prop :=
  ∀ n, P1835788879836583289.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P10570827639985130800

`A163978(3*n+4)+1`
-/

namespace A209530.P10570827639985130800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (3 * n + 4) + 1

end

end A209530.P10570827639985130800

namespace A209530

/-- `A163978(3*n+4)+1` -/
def P10570827639985130800.Spec : Prop :=
  ∀ n, P10570827639985130800.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P12144052318176463580

`A052955(3*n+4)+2`
-/

namespace A209530.P12144052318176463580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (3 * n + 4) + 2

end

end A209530.P12144052318176463580

namespace A209530

/-- `A052955(3*n+4)+2` -/
def P12144052318176463580.Spec : Prop :=
  ∀ n, P12144052318176463580.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P8707584359950776957

`A347789(3*(n+1))+5`
-/

namespace A209530.P8707584359950776957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (3 * (n + 1)) + 5

end

end A209530.P8707584359950776957

namespace A209530

/-- `A347789(3*(n+1))+5` -/
def P8707584359950776957.Spec : Prop :=
  ∀ n, P8707584359950776957.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P10272341209171268623

`A209724(3*n+5)-5`
-/

namespace A209530.P10272341209171268623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (3 * n + 5) - 5

end

end A209530.P10272341209171268623

namespace A209530

/-- `A209724(3*n+5)-5` -/
def P10272341209171268623.Spec : Prop :=
  ∀ n, P10272341209171268623.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P18428644372726349909

`A288732(A008588(n))+7`
-/

namespace A209530.P18428644372726349909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288732 (A008588 n).toNat + 7

end

end A209530.P18428644372726349909

namespace A209530

/-- `A288732(A008588(n))+7` -/
def P18428644372726349909.Spec : Prop :=
  ∀ n, P18428644372726349909.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P3091012379121098794

`∑[A198633(n)*A228305(n+1)]`
-/

namespace A209530.P3091012379121098794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n * A228305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209530.P3091012379121098794

namespace A209530

/-- `∑[A198633(n)*A228305(n+1)]` -/
def P3091012379121098794.Spec : Prop :=
  ∀ n, P3091012379121098794.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P5207375589879476492

`A070875(3*n+2)-A052551(3*n)`
-/

namespace A209530.P5207375589879476492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (3 * n + 2) - A052551 (3 * n)

end

end A209530.P5207375589879476492

namespace A209530

/-- `A070875(3*n+2)-A052551(3*n)` -/
def P5207375589879476492.Spec : Prop :=
  ∀ n, P5207375589879476492.a n = A209530 (n + 1)

end A209530

/-! ## A209530.P4028578222122348569

`2*A070875(3*n)-A052551(3*n)`
-/

namespace A209530.P4028578222122348569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070875 (3 * n) - A052551 (3 * n)

end

end A209530.P4028578222122348569

namespace A209530

/-- `2*A070875(3*n)-A052551(3*n)` -/
def P4028578222122348569.Spec : Prop :=
  ∀ n, P4028578222122348569.a n = A209530 (n + 1)

end A209530

/-!
# A209531: Half the number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

The programs for A209531, the canonical program `A209531.P7059025710424165999` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209531 has offset 1).

The definition of A209531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209531.P7059025710424165999

`A029744(5*(n+2))+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209531

/-- `A029744(5*(n+2))+1` -/
def P7059025710424165999.Spec : Prop :=
  ∀ n, P7059025710424165999.a n = A209531 (n + 1)

theorem P7059025710424165999.correct : P7059025710424165999.Spec := by
  intro n
  simp only [A209531, Nat.add_sub_cancel]

end A209531

/-! ## A209531.P10875476790033428680

`A060482(5*n+8)+4`
-/

namespace A209531.P10875476790033428680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (5 * n + 8) + 4

end

end A209531.P10875476790033428680

namespace A209531

/-- `A060482(5*n+8)+4` -/
def P10875476790033428680.Spec : Prop :=
  ∀ n, P10875476790033428680.a n = A209531 (n + 1)

end A209531

/-! ## A209531.P10446654570583614669

`2*A090989(5*(n+1))+1`
-/

namespace A209531.P10446654570583614669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090989 (5 * (n + 1)) + 1

end

end A209531.P10446654570583614669

namespace A209531

/-- `2*A090989(5*(n+1))+1` -/
def P10446654570583614669.Spec : Prop :=
  ∀ n, P10446654570583614669.a n = A209531 (n + 1)

end A209531

/-! ## A209531.P4968261122970303769

`A078621(A016885(n+1))`
-/

namespace A209531.P4968261122970303769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078621 (A016885 (n + 1)).toNat

end

end A209531.P4968261122970303769

namespace A209531

/-- `A078621(A016885(n+1))` -/
def P4968261122970303769.Spec : Prop :=
  ∀ n, P4968261122970303769.a n = A209531 (n + 1)

end A209531

/-! ## A209531.P3070200987741149696

`A209721(A016897(n+1))`
-/

namespace A209531.P3070200987741149696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (A016897 (n + 1)).toNat

end

end A209531.P3070200987741149696

namespace A209531

/-- `A209721(A016897(n+1))` -/
def P3070200987741149696.Spec : Prop :=
  ∀ n, P3070200987741149696.a n = A209531 (n + 1)

end A209531

/-! ## A209531.P9913811161850434116

`A020707(n)²/2*A163978(n+2)+1`
-/

namespace A209531.P9913811161850434116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n ^ 2 : ℚ) / 2 * (A163978 (n + 2) : ℚ) + 1

end

end A209531.P9913811161850434116

namespace A209531

/-- `A020707(n)²/2*A163978(n+2)+1` -/
def P9913811161850434116.Spec : Prop :=
  ∀ n, P9913811161850434116.a n = (A209531 (n + 1) : ℚ)

end A209531

/-! ## A209531.P2409172196633007887

`A020707(2*n+1)*A163978(n+2)+1`
-/

namespace A209531.P2409172196633007887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (2 * n + 1) * A163978 (n + 2) + 1

end

end A209531.P2409172196633007887

namespace A209531

/-- `A020707(2*n+1)*A163978(n+2)+1` -/
def P2409172196633007887.Spec : Prop :=
  ∀ n, P2409172196633007887.a n = A209531 (n + 1)

end A209531

/-!
# A209532: Half the number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

The programs for A209532, there is no canonical definition to state claims against.
-/

/-! ## A209532.P5964382440039711120

`or(1, A029744(7*(n+2)))`
-/

namespace A209532.P5964382440039711120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A029744 (7 * (n + 2)))

end

end A209532.P5964382440039711120

/-! ## A209532.P7255516769604199772

`A078621(A017041(1+n))`
-/

namespace A209532.P7255516769604199772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078621 (A017041 (1 + n)).toNat

end

end A209532.P7255516769604199772

/-! ## A209532.P16676380298331229070

`A209721(A017053(1+n))`
-/

namespace A209532.P16676380298331229070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (A017053 (1 + n)).toNat

end

end A209532.P16676380298331229070

/-! ## A209532.P17118113093684740854

`A078621(A017029(n)+8)`
-/

namespace A209532.P17118113093684740854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078621 (A017029 n + 8).toNat

end

end A209532.P17118113093684740854

/-! ## A209532.P13775423376258417086

`A209534(A374007(n+1))`
-/

namespace A209532.P13775423376258417086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209534 (A374007 (n + 1)).toNat

end

end A209532.P13775423376258417086

/-!
# A209533: Half the number of (n+1)X8 0..2 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209533, there is no canonical definition to state claims against.
-/

/-! ## A209533.P12356569128423929507

`1+16^(n+2)`
-/

namespace A209533.P12356569128423929507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 16 ^ (n + 2)

end

end A209533.P12356569128423929507

/-! ## A209533.P8939931020455874351

`or(1, (8*2^(n-1))²²)`
-/

namespace A209533.P8939931020455874351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((8 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2) ^ 2))

end

end A209533.P8939931020455874351

/-! ## A209533.P15126510182969679379

`xor(1, ∑[2*a(n-1)]²²)` with `a(0)=4, a(1)=4`
-/

namespace A209533.P15126510182969679379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2)

end

end A209533.P15126510182969679379

/-! ## A209533.P10729832109952095077

`xor(1, ∑[a(n-1)/(1-1/2)]²²)` with `a(0)=4, a(1)=4`
-/

namespace A209533.P10729832109952095077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2))

end

end A209533.P10729832109952095077

/-! ## A209533.P1313271841341200553

`A052539(2*(n+2))`
-/

namespace A209533.P1313271841341200553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 (2 * (n + 2))

end

end A209533.P1313271841341200553

/-! ## A209533.P2576424354217017400

`A201455(2*(n+2))`
-/

namespace A209533.P2576424354217017400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201455 (2 * (n + 2))

end

end A209533.P2576424354217017400

/-! ## A209533.P18330018740378567966

`A000051(4*(n+2))`
-/

namespace A209533.P18330018740378567966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (4 * (n + 2))

end

end A209533.P18330018740378567966

/-! ## A209533.P1594603878175198062

`A014551(4*(n+2))`
-/

namespace A209533.P1594603878175198062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (4 * (n + 2))

end

end A209533.P1594603878175198062

/-! ## A209533.P11345883338108226310

`A049332(4*(n+2))`
-/

namespace A209533.P11345883338108226310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 (4 * (n + 2))

end

end A209533.P11345883338108226310

/-! ## A209533.P17331979620477881820

`A052531(4*(n+2))`
-/

namespace A209533.P17331979620477881820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 (4 * (n + 2))

end

end A209533.P17331979620477881820

/-!
# A209534: T(n,k)=Half the number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209534, the canonical program `A209534.P9858660404653803592` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209534 has offset 1).

The definition of A209534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209534.P9858660404653803592

`A029744(A173395(n+1))+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A209534

/-- `A029744(A173395(n+1))+1` -/
def P9858660404653803592.Spec : Prop :=
  ∀ n, P9858660404653803592.a n = A209534 (n + 1)

theorem P9858660404653803592.correct : P9858660404653803592.Spec := by
  intro n
  simp only [A209534, Nat.add_sub_cancel]

end A209534

/-! ## A209534.P14450489597675532757

`A209721(A173395(1+n)-1)`
-/

namespace A209534.P14450489597675532757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (A173395 (1 + n) - 1).toNat

end

end A209534.P14450489597675532757

namespace A209534

/-- `A209721(A173395(1+n)-1)` -/
def P14450489597675532757.Spec : Prop :=
  ∀ n, P14450489597675532757.a n = A209534 (n + 1)

end A209534

/-! ## A209534.P2151082283115967127

`A163978(A173395(n+1)-2)+1`
-/

namespace A209534.P2151082283115967127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (A173395 (n + 1) - 2).toNat + 1

end

end A209534.P2151082283115967127

namespace A209534

/-- `A163978(A173395(n+1)-2)+1` -/
def P2151082283115967127.Spec : Prop :=
  ∀ n, P2151082283115967127.a n = A209534 (n + 1)

end A209534

/-! ## A209534.P10508741687486149707

`A328399(A163978(A173395(n+1)))`
-/

namespace A209534.P10508741687486149707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A163978 (A173395 (n + 1)).toNat).toNat

end

end A209534.P10508741687486149707

namespace A209534

/-- `A328399(A163978(A173395(n+1)))` -/
def P10508741687486149707.Spec : Prop :=
  ∀ n, P10508741687486149707.a n = A209534 (n + 1)

end A209534

/-!
# A209535: Number of partitions of 0 of the form [x(1)+x(2)+...+x (j)] - [y(1)+y(2)+...+y(k)] where the x(i) are distinct positive integers <=n and the y(i) are distinct positive integers <= n.

The programs for A209535, there is no canonical definition to state claims against.
-/

/-! ## A209535.P5813400563259254346

`∑[A304990(n+1)]`
-/

namespace A209535.P5813400563259254346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209535.P5813400563259254346

/-! ## A209535.P5310151613274539286

`∑[abs(Δ[A265093(n)])]`
-/

namespace A209535.P5310151613274539286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209535.P5310151613274539286

/-! ## A209535.P8270873310669638711

`∑[Δ[A036469(n)]²]`
-/

namespace A209535.P8270873310669638711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209535.P8270873310669638711

/-! ## A209535.P12805271916633618740

`A265093(n+1)-1`
-/

namespace A209535.P12805271916633618740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265093 (n + 1) - 1

end

end A209535.P12805271916633618740

/-! ## A209535.P14908203710633319169

`∑[A000009(n+1)²]`
-/

namespace A209535.P14908203710633319169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209535.P14908203710633319169

/-!
# A209536: Number of partitions of 0 having positive part-sum <= n.

The programs for A209536, there is no canonical definition to state claims against.
-/

/-! ## A209536.P13454931147576092765

`A000041(n+1)²+a(n-1)` with `a(0)=1`
-/

namespace A209536.P13454931147576092765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000041 (n + 1) ^ 2 + a (n - 1)

end

end A209536.P13454931147576092765

/-! ## A209536.P15399367460017768387

`∑[A001255(n+1)]`
-/

namespace A209536.P15399367460017768387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P15399367460017768387

/-! ## A209536.P12811604736628393880

`∑[abs(Δ[A259399(n)])]`
-/

namespace A209536.P12811604736628393880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P12811604736628393880

/-! ## A209536.P12100796943662109134

`∑[Δ[A000070(n)]²]`
-/

namespace A209536.P12100796943662109134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P12100796943662109134

/-! ## A209536.P8701551310848361515

`∑[record[A035363(n)²]]`
-/

namespace A209536.P8701551310848361515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P8701551310848361515

/-! ## A209536.P3959993836473748799

`∑[record[A035377(n)²]]`
-/

namespace A209536.P3959993836473748799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P3959993836473748799

/-! ## A209536.P2593823598672652114

`∑[record[A035444(n)²]]`
-/

namespace A209536.P2593823598672652114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P2593823598672652114

/-! ## A209536.P4632015653886120367

`A259399(n+1)-1`
-/

namespace A209536.P4632015653886120367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259399 (n + 1) - 1

end

end A209536.P4632015653886120367

/-! ## A209536.P5638117277071156448

`∑[A000041(n+1)²]`
-/

namespace A209536.P5638117277071156448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P5638117277071156448

/-! ## A209536.P14628437835706574943

`∑[∏[ratio[A000041(n)]²]]`
-/

namespace A209536.P14628437835706574943
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℚ) / (f3 n : ℚ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P14628437835706574943

/-! ## A209536.P17156667118572316172

`∑[∑[A187219(n+1)]²]`
-/

namespace A209536.P17156667118572316172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P17156667118572316172

/-! ## A209536.P10243480263614193727

`∑[(Δ[A058682(n)]+1)²]`
-/

namespace A209536.P10243480263614193727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P10243480263614193727

/-! ## A209536.P8942280461697388719

`∑[Δ[A216053(n+1)]²]`
-/

namespace A209536.P8942280461697388719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P8942280461697388719

/-! ## A209536.P18405317415251102131

`∑[Δ[A025065(2*n)]²]`
-/

namespace A209536.P18405317415251102131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P18405317415251102131

/-! ## A209536.P5070325634717804566

`∑[(A000065(n+1)+1)²]`
-/

namespace A209536.P5070325634717804566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P5070325634717804566

/-! ## A209536.P2954085437939780083

`∑[(1-A052810(n+1))²]`
-/

namespace A209536.P2954085437939780083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A052810 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P2954085437939780083

/-! ## A209536.P6548680815570487005

`∑[A035363(2*(n+1))²]`
-/

namespace A209536.P6548680815570487005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P6548680815570487005

/-! ## A209536.P11185535388270490727

`∑[A066639(2*(n+1))²]`
-/

namespace A209536.P11185535388270490727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066639 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P11185535388270490727

/-! ## A209536.P13291432889041116478

`∑[A119620(2*(n+1))²]`
-/

namespace A209536.P13291432889041116478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P13291432889041116478

/-! ## A209536.P13794789118224485504

`∑[A194451(2*n+1)²]`
-/

namespace A209536.P13794789118224485504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209536.P13794789118224485504

/-!
# A209537: Number of n X n array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209537, there is no canonical definition to state claims against.
-/

/-! ## A209537.P5239506150388935500

`A209543(∑[4*n]+1)`
-/

namespace A209537.P5239506150388935500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209537.P5239506150388935500

/-! ## A209537.P18098921945348090775

`A209543(A001844(n))+char[18]`
-/

namespace A209537.P18098921945348090775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209537.P18098921945348090775

/-! ## A209537.P15173018454135844960

`A326542(n)+A209543(A001844(n))`
-/

namespace A209537.P15173018454135844960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A209543 (A001844 n).toNat

end

end A209537.P15173018454135844960

/-! ## A209537.P3714436211860065634

`A333321(n)+A209543(A001844(n))`
-/

namespace A209537.P3714436211860065634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 n + A209543 (A001844 n).toNat

end

end A209537.P3714436211860065634

/-!
# A209538: Number of n X 3 array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209538, there is no canonical definition to state claims against.
-/

/-! ## A209538.P11641080203937747287

`A209435(A052905(3*n))`
-/

namespace A209538.P11641080203937747287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A052905 (3 * n)).toNat

end

end A209538.P11641080203937747287

/-! ## A209538.P8342430189820399148

`A209435(A178977(n)-4)`
-/

namespace A209538.P8342430189820399148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A178977 n - 4).toNat

end

end A209538.P8342430189820399148

/-! ## A209538.P4299099044426360103

`A209435(A082109(n)+A055998(n))`
-/

namespace A209538.P4299099044426360103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A082109 n + A055998 n).toNat

end

end A209538.P4299099044426360103

/-! ## A209538.P10473414403286972907

`A209543(∑[n+2]+4)`
-/

namespace A209538.P10473414403286972907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209538.P10473414403286972907

/-! ## A209538.P16700442044731443004

`gcd(C(2, n+2), A209543(A167614(n+1)))`
-/

namespace A209538.P16700442044731443004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A209543 (A167614 (n + 1)).toNat)

end

end A209538.P16700442044731443004

/-!
# A209539: Number of nX4 array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209539, there is no canonical definition to state claims against.
-/

/-! ## A209539.P1185674046338607501

`A209543(A374004(n+1))`
-/

namespace A209539.P1185674046338607501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A374004 (n + 1)).toNat

end

end A209539.P1185674046338607501

/-! ## A209539.P12521716261028560133

`A209543(A141214(n)+7)`
-/

namespace A209539.P12521716261028560133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A141214 n + 7).toNat

end

end A209539.P12521716261028560133

/-! ## A209539.P6225094669427507204

`A209543(A052905(n)+9)`
-/

namespace A209539.P6225094669427507204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A052905 n + 9).toNat

end

end A209539.P6225094669427507204

/-! ## A209539.P2267051374944764493

`A209543(A167614(n+2)+1)`
-/

namespace A209539.P2267051374944764493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A167614 (n + 2) + 1).toNat

end

end A209539.P2267051374944764493

/-! ## A209539.P4984235070973085924

`A209543(Δ[A264443(n)-n²])`
-/

namespace A209539.P4984235070973085924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (f1 (n + 1) - f1 n).toNat

end

end A209539.P4984235070973085924

/-!
# A209540: Number of nX5 array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209540, there is no canonical definition to state claims against.
-/

/-! ## A209540.P10635988343633068607

`A209543(A374005(n+1))`
-/

namespace A209540.P10635988343633068607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A374005 (n + 1)).toNat

end

end A209540.P10635988343633068607

/-! ## A209540.P14524296556976979847

`A209543(A155212(n)+13)`
-/

namespace A209540.P14524296556976979847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A155212 n + 13).toNat

end

end A209540.P14524296556976979847

/-! ## A209540.P14463546348747093587

`A209543(A056000(n)+15)`
-/

namespace A209540.P14463546348747093587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A056000 n + 15).toNat

end

end A209540.P14463546348747093587

/-! ## A209540.P13928159611214093553

`A209543(eq[6, A131818(n+1)])`
-/

namespace A209540.P13928159611214093553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209540.P13928159611214093553

/-! ## A209540.P5168660577818252974

`A209543(eq[6, A135223(n+1)])`
-/

namespace A209540.P5168660577818252974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209540.P5168660577818252974

/-!
# A209541: Number of nX6 array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209541, there is no canonical definition to state claims against.
-/

/-! ## A209541.P5404145641798225795

`A209543(A374007(n+1))`
-/

namespace A209541.P5404145641798225795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A374007 (n + 1)).toNat

end

end A209541.P5404145641798225795

/-! ## A209541.P4481136656050706394

`A209543(eq[7, A131818(n+1)])`
-/

namespace A209541.P4481136656050706394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209541.P4481136656050706394

/-! ## A209541.P16250251011704138170

`A209543(Δ[A023545(n+1)]+10)`
-/

namespace A209541.P16250251011704138170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (f1 (n + 1) - f1 n + 10).toNat

end

end A209541.P16250251011704138170

/-! ## A209541.P3482575664402318957

`A209543(A052905(n+3))`
-/

namespace A209541.P3482575664402318957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A052905 (n + 3)).toNat

end

end A209541.P3482575664402318957

/-! ## A209541.P2526217767989540453

`A209543(eq[3, A219347(n)])`
-/

namespace A209541.P2526217767989540453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209541.P2526217767989540453

/-!
# A209542: Number of nX7 array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209542, there is no canonical definition to state claims against.
-/

/-! ## A209542.P8835340524876549334

`A209543(A374008(n+1))`
-/

namespace A209542.P8835340524876549334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (A374008 (n + 1)).toNat

end

end A209542.P8835340524876549334

/-! ## A209542.P29513685742152556

`A209543(eq[4, A219347(n)])`
-/

namespace A209542.P29513685742152556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209542.P29513685742152556

/-! ## A209542.P1778121484682090932

`A209543(eq[6, A193592(n)])`
-/

namespace A209542.P1778121484682090932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209542.P1778121484682090932

/-! ## A209542.P10962287791313330027

`A209543(eq[7, A152157(n)])`
-/

namespace A209542.P10962287791313330027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209542.P10962287791313330027

/-! ## A209542.P10624682365529211272

`A209543(eq[3, A316074(n+1)])`
-/

namespace A209542.P10624682365529211272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209542.P10624682365529211272

/-!
# A209543: T(n,k)=Number of nXk array permutations with every element making zero or one right-handed knight moves (out 2, right 1).

The programs for A209543, there is no canonical definition to state claims against.
-/

/-! ## A209543.P16209788391686536661

`A137413(A331406(n))`
-/

namespace A209543.P16209788391686536661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137413 (A331406 n).toNat

end

end A209543.P16209788391686536661

/-! ## A209543.P7235163477073351913

`A106476(C(A331406(n), 2))`
-/

namespace A209543.P7235163477073351913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (Nat.choose (A331406 n).toNat 2)

end

end A209543.P7235163477073351913

/-! ## A209543.P5188306753155271958

`A372673(∑{#}[A331406(n), #])`
-/

namespace A209543.P5188306753155271958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372673 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A209543.P5188306753155271958

/-! ## A209543.P4128577101094047992

`A000010(A331406(n))%A024782(n+1)`
-/

namespace A209543.P4128577101094047992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A331406 n).toNat) (A024782 (n + 1))

end

end A209543.P4128577101094047992

/-!
# A209544: Primes not expressed in form n<+>2, where operation <+> defined in A206853.

The programs for A209544, the canonical program `A209544.P1462047121807744531` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209544 has offset 1).

The definition of A209544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209544.P13905375486602113823

`p?[ceil(4/acot(2*n))]`
-/

namespace A209544.P13905375486602113823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / SequenceMachineLib.acot (2 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209544.P13905375486602113823

namespace A209544

/-- `p?[ceil(4/acot(2*n))]` -/
def P13905375486602113823.Spec : Prop :=
  ∀ n, P13905375486602113823.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P1462047121807744531

`p?[a(n-1)+8]` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209544

/-- `p?[a(n-1)+8]` -/
def P1462047121807744531.Spec : Prop :=
  ∀ n, (P1462047121807744531.a n : ℤ) = A209544 (n + 1)

theorem P1462047121807744531.correct : P1462047121807744531.Spec := by
  intro n
  simp only [A209544, Nat.add_sub_cancel]

end A209544

/-! ## A209544.P1851109252100556367

`p?[abs(1-8*n)+2]`
-/

namespace A209544.P1851109252100556367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (8 * n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209544.P1851109252100556367

namespace A209544

/-- `p?[abs(1-8*n)+2]` -/
def P1851109252100556367.Spec : Prop :=
  ∀ n, P1851109252100556367.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P15431086993508256022

`or(1, A045390(n+1))`
-/

namespace A209544.P15431086993508256022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045390 (n + 1))

end

end A209544.P15431086993508256022

namespace A209544

/-- `or(1, A045390(n+1))` -/
def P15431086993508256022.Spec : Prop :=
  ∀ n, P15431086993508256022.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P5340327307949591093

`A045390(n+1)+A000007(n)`
-/

namespace A209544.P5340327307949591093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1) + A000007 n

end

end A209544.P5340327307949591093

namespace A209544

/-- `A045390(n+1)+A000007(n)` -/
def P5340327307949591093.Spec : Prop :=
  ∀ n, P5340327307949591093.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P9479871004626945302

`∪[A007519(n+1), A163430(n+1)]`
-/

namespace A209544.P9479871004626945302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P9479871004626945302

namespace A209544

/-- `∪[A007519(n+1), A163430(n+1)]` -/
def P9479871004626945302.Spec : Prop :=
  ∀ n, (P9479871004626945302.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P2750220103982527397

`∪[A007519(n+1), A176586(n+1)]`
-/

namespace A209544.P2750220103982527397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P2750220103982527397

namespace A209544

/-- `∪[A007519(n+1), A176586(n+1)]` -/
def P2750220103982527397.Spec : Prop :=
  ∀ n, (P2750220103982527397.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P11299631788295435890

`∪[A209554(n+1), A007519(n+1)]`
-/

namespace A209544.P11299631788295435890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P11299631788295435890

namespace A209544

/-- `∪[A209554(n+1), A007519(n+1)]` -/
def P11299631788295435890.Spec : Prop :=
  ∀ n, (P11299631788295435890.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P12023228135800516786

`∩[A033200(n+1), A097958(n+1)]`
-/

namespace A209544.P12023228135800516786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P12023228135800516786

namespace A209544

/-- `∩[A033200(n+1), A097958(n+1)]` -/
def P12023228135800516786.Spec : Prop :=
  ∀ n, (P12023228135800516786.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P14773015342136877683

`∩[A033203(n+1), A097958(n+1)]`
-/

namespace A209544.P14773015342136877683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P14773015342136877683

namespace A209544

/-- `∩[A033203(n+1), A097958(n+1)]` -/
def P14773015342136877683.Spec : Prop :=
  ∀ n, (P14773015342136877683.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P4198105621818140369

`∩[A097958(n+1), A341784(n+1)]`
-/

namespace A209544.P4198105621818140369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P4198105621818140369

namespace A209544

/-- `∩[A097958(n+1), A341784(n+1)]` -/
def P4198105621818140369.Spec : Prop :=
  ∀ n, (P4198105621818140369.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P16481058925363749595

`∩[A097958(n+1), A365082(n+1)]`
-/

namespace A209544.P16481058925363749595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P16481058925363749595

namespace A209544

/-- `∩[A097958(n+1), A365082(n+1)]` -/
def P16481058925363749595.Spec : Prop :=
  ∀ n, (P16481058925363749595.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P13835105285544493294

`∩[A085317(n+1), A097958(n+1)]`
-/

namespace A209544.P13835105285544493294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P13835105285544493294

namespace A209544

/-- `∩[A085317(n+1), A097958(n+1)]` -/
def P13835105285544493294.Spec : Prop :=
  ∀ n, (P13835105285544493294.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P17030258645831492411

`∩[A042998(n+1), A097958(n+1)]`
-/

namespace A209544.P17030258645831492411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P17030258645831492411

namespace A209544

/-- `∩[A042998(n+1), A097958(n+1)]` -/
def P17030258645831492411.Spec : Prop :=
  ∀ n, (P17030258645831492411.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P7825270656014578427

`∩[A045403(n+1), A097958(n+1)]`
-/

namespace A209544.P7825270656014578427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P7825270656014578427

namespace A209544

/-- `∩[A045403(n+1), A097958(n+1)]` -/
def P7825270656014578427.Spec : Prop :=
  ∀ n, (P7825270656014578427.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P15087756491226511661

`p?[lcm(8, n)-(n+3)]`
-/

namespace A209544.P15087756491226511661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209544.P15087756491226511661

namespace A209544

/-- `p?[lcm(8, n)-(n+3)]` -/
def P15087756491226511661.Spec : Prop :=
  ∀ n, P15087756491226511661.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P13115015320307565534

`record[A006530(8*n+9)]`
-/

namespace A209544.P13115015320307565534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209544.P13115015320307565534

namespace A209544

/-- `record[A006530(8*n+9)]` -/
def P13115015320307565534.Spec : Prop :=
  ∀ n, P13115015320307565534.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P354596327851528027

`record[A020639(8*n+9)]`
-/

namespace A209544.P354596327851528027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209544.P354596327851528027

namespace A209544

/-- `record[A020639(8*n+9)]` -/
def P354596327851528027.Spec : Prop :=
  ∀ n, P354596327851528027.a n = A209544 (n + 1)

end A209544

/-! ## A209544.P23125450518076781

`record[∑{p}[8*n+9, #]]`
-/

namespace A209544.P23125450518076781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209544.P23125450518076781

namespace A209544

/-- `record[∑{p}[8*n+9, #]]` -/
def P23125450518076781.Spec : Prop :=
  ∀ n, (P23125450518076781.a n : ℤ) = A209544 (n + 1)

end A209544

/-! ## A209544.P5802494080740989976

`∩[A034031(n+1), A097958(n+1)]`
-/

namespace A209544.P5802494080740989976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209544.P5802494080740989976

namespace A209544

/-- `∩[A034031(n+1), A097958(n+1)]` -/
def P5802494080740989976.Spec : Prop :=
  ∀ n, (P5802494080740989976.a n : ℤ) = A209544 (n + 1)

end A209544

/-!
# A209545: 1/4 the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209545, there is no canonical definition to state claims against.
-/

/-! ## A209545.P10875519542591082687

`A184188(n+1)+1`
-/

namespace A209545.P10875519542591082687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184188 (n + 1) + 1

end

end A209545.P10875519542591082687

/-! ## A209545.P6628892844934129205

`A209553(∑[4*n]+1)`
-/

namespace A209545.P6628892844934129205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209545.P6628892844934129205

/-! ## A209545.P7895523980791744357

`A259516(n+1)/2+1`
-/

namespace A209545.P7895523980791744357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259516 (n + 1) : ℚ) / 2 + 1

end

end A209545.P7895523980791744357

/-! ## A209545.P7237075517043166474

`A184197(A001844(n))+1`
-/

namespace A209545.P7237075517043166474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A001844 n).toNat + 1

end

end A209545.P7237075517043166474

/-! ## A209545.P9634975337165525016

`record[A003982(n)*A209553(n+1)]`
-/

namespace A209545.P9634975337165525016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A209553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209545.P9634975337165525016

/-!
# A209546: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

The programs for A209546, the canonical program `A209546.P6236227493662315964` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209546 has offset 1).

The definition of A209546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209546.P9940212017476106576

`ogf((7-15x+3x^2+6x^3)/(1-5x+6x^2-2x^4))`
-/

namespace A209546.P9940212017476106576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -15, 3, 6] [1, -5, 6, 0, -2] n

end

end A209546.P9940212017476106576

namespace A209546

/-- `ogf((7-15x+3x^2+6x^3)/(1-5x+6x^2-2x^4))` -/
def P9940212017476106576.Spec : Prop :=
  ∀ n, P9940212017476106576.a n = A209546 (n + 1)

end A209546

/-! ## A209546.P6236227493662315964

`A184189(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209546

/-- `A184189(n+1)+1` -/
def P6236227493662315964.Spec : Prop :=
  ∀ n, P6236227493662315964.a n = A209546 (n + 1)

theorem P6236227493662315964.correct : P6236227493662315964.Spec := by
  intro n
  simp only [A209546, Nat.add_sub_cancel]

end A209546

/-! ## A209546.P8243002123512403631

`5*a(n-1)-6*a(n-2)+2*a(n-4)` with `a(0)=7, a(1)=20, a(2)=61, a(3)=191`
-/

namespace A209546.P8243002123512403631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 20, 61, 191] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2) + 2 * a (n - 4)

end

end A209546.P8243002123512403631

namespace A209546

/-- `5*a(n-1)-6*a(n-2)+2*a(n-4)` -/
def P8243002123512403631.Spec : Prop :=
  ∀ n, P8243002123512403631.a n = A209546 (n + 1)

end A209546

/-! ## A209546.P12943470998140977994

`A259517(n+1)/2+1`
-/

namespace A209546.P12943470998140977994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259517 (n + 1) : ℚ) / 2 + 1

end

end A209546.P12943470998140977994

namespace A209546

/-- `A259517(n+1)/2+1` -/
def P12943470998140977994.Spec : Prop :=
  ∀ n, P12943470998140977994.a n = (A209546 (n + 1) : ℚ)

end A209546

/-! ## A209546.P3784912250199017183

`Δ[Δ[A302146(n+3)]/2]+1`
-/

namespace A209546.P3784912250199017183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302146 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A209546.P3784912250199017183

namespace A209546

/-- `Δ[Δ[A302146(n+3)]/2]+1` -/
def P3784912250199017183.Spec : Prop :=
  ∀ n, P3784912250199017183.a n = (A209546 (n + 1) : ℚ)

end A209546

/-!
# A209547: 1/4 the number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

The programs for A209547, the canonical program `A209547.P8432838189331020229` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209547 has offset 1).

The definition of A209547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209547.P8432838189331020229

`A184190(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209547

/-- `A184190(n+1)+1` -/
def P8432838189331020229.Spec : Prop :=
  ∀ n, P8432838189331020229.a n = A209547 (n + 1)

theorem P8432838189331020229.correct : P8432838189331020229.Spec := by
  intro n
  simp only [A209547, Nat.add_sub_cancel]

end A209547

/-! ## A209547.P1610037608870786664

`A259518(1+n)/2+1`
-/

namespace A209547.P1610037608870786664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259518 (1 + n) : ℚ) / 2 + 1

end

end A209547.P1610037608870786664

namespace A209547

/-- `A259518(1+n)/2+1` -/
def P1610037608870786664.Spec : Prop :=
  ∀ n, P1610037608870786664.a n = (A209547 (n + 1) : ℚ)

end A209547

/-! ## A209547.P6714007230412689393

`A184197(A000096(n)+3)+1`
-/

namespace A209547.P6714007230412689393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A000096 n + 3).toNat + 1

end

end A209547.P6714007230412689393

namespace A209547

/-- `A184197(A000096(n)+3)+1` -/
def P6714007230412689393.Spec : Prop :=
  ∀ n, P6714007230412689393.a n = A209547 (n + 1)

end A209547

/-! ## A209547.P8140319038115165920

`A184197(∑[n+2])+1`
-/

namespace A209547.P8140319038115165920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A209547.P8140319038115165920

namespace A209547

/-- `A184197(∑[n+2])+1` -/
def P8140319038115165920.Spec : Prop :=
  ∀ n, P8140319038115165920.a n = A209547 (n + 1)

end A209547

/-! ## A209547.P8195258775800632226

`A209553(∑[n+1]+2)`
-/

namespace A209547.P8195258775800632226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209547.P8195258775800632226

namespace A209547

/-- `A209553(∑[n+1]+2)` -/
def P8195258775800632226.Spec : Prop :=
  ∀ n, P8195258775800632226.a n = A209547 (n + 1)

end A209547

/-!
# A209548: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209548, there is no canonical definition to state claims against.
-/

/-! ## A209548.P1174137096115361352

`A184191(1+n)+1`
-/

namespace A209548.P1174137096115361352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184191 (1 + n) + 1

end

end A209548.P1174137096115361352

/-! ## A209548.P14973614812361436964

`A259519(n+1)/2+1`
-/

namespace A209548.P14973614812361436964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259519 (n + 1) : ℚ) / 2 + 1

end

end A209548.P14973614812361436964

/-! ## A209548.P1886620222231346334

`A184197(A167614(n+1))+1`
-/

namespace A209548.P1886620222231346334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A167614 (n + 1)).toNat + 1

end

end A209548.P1886620222231346334

/-! ## A209548.P13298463507394607047

`A184197(A167499(n)+n)+1`
-/

namespace A209548.P13298463507394607047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A167499 n + (n : ℤ)).toNat + 1

end

end A209548.P13298463507394607047

/-! ## A209548.P9530697659857058815

`A209553(∑[n+2]+4)`
-/

namespace A209548.P9530697659857058815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209548.P9530697659857058815

/-!
# A209549: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209549, there is no canonical definition to state claims against.
-/

/-! ## A209549.P10804622968693987876

`1+A184192(1+n)`
-/

namespace A209549.P10804622968693987876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A184192 (1 + n)

end

end A209549.P10804622968693987876

/-! ## A209549.P669104922027867338

`A259520(n+1)/2+1`
-/

namespace A209549.P669104922027867338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259520 (n + 1) : ℚ) / 2 + 1

end

end A209549.P669104922027867338

/-! ## A209549.P12079109895900295762

`A184197(A167614(n+2)+1)+1`
-/

namespace A209549.P12079109895900295762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A167614 (n + 2) + 1).toNat + 1

end

end A209549.P12079109895900295762

/-! ## A209549.P6235320819534935588

`A209553(A374004(n+1))`
-/

namespace A209549.P6235320819534935588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A374004 (n + 1)).toNat

end

end A209549.P6235320819534935588

/-! ## A209549.P15872308293991117746

`A209553(A141214(n)+7)`
-/

namespace A209549.P15872308293991117746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A141214 n + 7).toNat

end

end A209549.P15872308293991117746

/-!
# A209550: 1/4 the number of (n+1)X6 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209550, there is no canonical definition to state claims against.
-/

/-! ## A209550.P7189536222756746306

`A184193(n+1)+1`
-/

namespace A209550.P7189536222756746306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184193 (n + 1) + 1

end

end A209550.P7189536222756746306

/-! ## A209550.P3880009602640640457

`A259521(n+1)/2+1`
-/

namespace A209550.P3880009602640640457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259521 (n + 1) : ℚ) / 2 + 1

end

end A209550.P3880009602640640457

/-! ## A209550.P18366212108451621714

`A209553(A374005(n+1))`
-/

namespace A209550.P18366212108451621714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A374005 (n + 1)).toNat

end

end A209550.P18366212108451621714

/-! ## A209550.P2859197113438671060

`A209553(A167499(n+3))`
-/

namespace A209550.P2859197113438671060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A167499 (n + 3)).toNat

end

end A209550.P2859197113438671060

/-! ## A209550.P15562864640641730341

`A209553(A046691(n+3))`
-/

namespace A209550.P15562864640641730341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A046691 (n + 3)).toNat

end

end A209550.P15562864640641730341

/-!
# A209551: 1/4 the number of (n+1)X7 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209551, there is no canonical definition to state claims against.
-/

/-! ## A209551.P13355604530395379395

`A184194(n+1)+1`
-/

namespace A209551.P13355604530395379395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184194 (n + 1) + 1

end

end A209551.P13355604530395379395

/-! ## A209551.P2201796095917850235

`A259522(n+1)/2+1`
-/

namespace A209551.P2201796095917850235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259522 (n + 1) : ℚ) / 2 + 1

end

end A209551.P2201796095917850235

/-! ## A209551.P16357195237629829458

`A184197(A167499(n+4)+1)+1`
-/

namespace A209551.P16357195237629829458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A167499 (n + 4) + 1).toNat + 1

end

end A209551.P16357195237629829458

/-! ## A209551.P10296952397838295496

`A209553(A374007(n+1))`
-/

namespace A209551.P10296952397838295496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A374007 (n + 1)).toNat

end

end A209551.P10296952397838295496

/-! ## A209551.P651037880218994001

`A184197(A052905(n+3))+1`
-/

namespace A209551.P651037880218994001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A052905 (n + 3)).toNat + 1

end

end A209551.P651037880218994001

/-!
# A209552: 1/4 the number of (n+1)X8 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209552, there is no canonical definition to state claims against.
-/

/-! ## A209552.P5940194311642019074

`A184195(n+1)+1`
-/

namespace A209552.P5940194311642019074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184195 (n + 1) + 1

end

end A209552.P5940194311642019074

/-! ## A209552.P3317152642573057659

`A259523(n+1)/2+1`
-/

namespace A209552.P3317152642573057659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259523 (n + 1) : ℚ) / 2 + 1

end

end A209552.P3317152642573057659

/-! ## A209552.P5925881404679805704

`A209553(A374008(n+1))`
-/

namespace A209552.P5925881404679805704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A374008 (n + 1)).toNat

end

end A209552.P5925881404679805704

/-! ## A209552.P8209888631896229761

`A209553(A055999(n+4))`
-/

namespace A209552.P8209888631896229761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A055999 (n + 4)).toNat

end

end A209552.P8209888631896229761

/-! ## A209552.P16482391087850050852

`A209553(eq[4, A219347(n)])`
-/

namespace A209552.P16482391087850050852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209552.P16482391087850050852

/-!
# A209553: T(n,k)=1/4 the number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having exactly two distinct clockwise edge differences.

The programs for A209553, there is no canonical definition to state claims against.
-/

/-! ## A209553.P17138012338411030294

`A184197(1+n)+1`
-/

namespace A209553.P17138012338411030294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (1 + n) + 1

end

end A209553.P17138012338411030294

/-! ## A209553.P2237217068255514896

`A259524(1+n)/2+1`
-/

namespace A209553.P2237217068255514896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259524 (1 + n) : ℚ) / 2 + 1

end

end A209553.P2237217068255514896

/-! ## A209553.P14347618663174177686

`A305897(A259524(n+1))`
-/

namespace A209553.P14347618663174177686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A259524 (n + 1)).toNat

end

end A209553.P14347618663174177686

/-! ## A209553.P2432237073967631335

`A014682(A259524(n+1)+2)`
-/

namespace A209553.P2432237073967631335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A259524 (n + 1) + 2).toNat

end

end A209553.P2432237073967631335

/-! ## A209553.P4672821148897906516

`A273943(A259524(n+1)+2)`
-/

namespace A209553.P4672821148897906516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A259524 (n + 1) + 2).toNat

end

end A209553.P4672821148897906516

/-!
# A209554: Primes that expressed in none of the forms n<+>2 and n<+>3, where the operation <+> is defined in A206853.

The programs for A209554, there is no canonical definition to state claims against.
-/

/-! ## A209554.P16016398254797551328

`∪[A133870(n+1), A229092(n+1)]`
-/

namespace A209554.P16016398254797551328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209554.P16016398254797551328

/-! ## A209554.P14469962182064481762

`p?[ceil(4/acot(8*n))]`
-/

namespace A209554.P14469962182064481762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / SequenceMachineLib.acot (8 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209554.P14469962182064481762

/-! ## A209554.P2558739578417484957

`p?[a(n-1)+32]` with `a(0)=3, a(1)=1`
-/

namespace A209554.P2558739578417484957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209554.P2558739578417484957

/-! ## A209554.P2874351468936875268

`p?[∪[p?[32*n+1], ∑[n]]]`
-/

namespace A209554.P2874351468936875268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209554.P2874351468936875268

/-! ## A209554.P3020848914783971039

`p?[12-xor(18, a(n-1))]` with `a(0)=3, a(1)=1`
-/

namespace A209554.P3020848914783971039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  12 - Int.xor 18 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209554.P3020848914783971039

/-! ## A209554.P2359887780688753841

`p?[31*n+abs(1-n)+2]`
-/

namespace A209554.P2359887780688753841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) + (|1 - (n : ℤ)| + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209554.P2359887780688753841

/-! ## A209554.P17588336103584601817

`record[p?[A093544(A093544(2*n+1))]]`
-/

namespace A209554.P17588336103584601817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (A093544 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209554.P17588336103584601817

/-!
# A209555: Triangle of coefficients of polynomials u(n,x) jointly generated with A209556; see the Formula section.

The programs for A209555, the canonical program `A209555.P2028586303279155343` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209555 has offset 1).

The definition of A209555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209555.P8576444722033411419

`A029656(A038722(n+1))-A209556(n+1)`
-/

namespace A209555.P8576444722033411419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A038722 (n + 1)).toNat - A209556 (n + 1)

end

end A209555.P8576444722033411419

namespace A209555

/-- `A029656(A038722(n+1))-A209556(n+1)` -/
def P8576444722033411419.Spec : Prop :=
  ∀ n, P8576444722033411419.a n = A209555 (n + 1)

theorem P8576444722033411419.correct : P8576444722033411419.Spec := by
  intro n
  simp only [A209555, Nat.add_sub_cancel, A209555.P8576444722033411419.a, A209555.P2028586303279155343.a, A029656, A029656.P13202918215397249679.a, A038722, A038722.P244822054879230948.a, A119467, A119467.P14926337700131808705.a, A131047, A131047.P5365841357882953324.a, A131053, A131053.P3177050464718823727.a, A209556, A209556.P1743370844855814615.a, A007318, A007318.P11755526479805562006.a, A074909, A074909.P6402560185863182536.a, A128176, A128176.P3128641014163871211.a, A128621, A128621.P10653779951619394494.f1, A128621.P10653779951619394494.a, A010054, A010054.P18347828677204923252.a, A128174, A128174.P14153934219904323802.a, A129690, A129690.P14713627052820705592.a, A005369, A005369.P10796159359873341658.a, A103451, A103451.P17251400426813502791.f1, A103451.P17251400426813502791.a, A135230, A135230.P16654454892736620254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209555

/-! ## A209555.P12690763513151293303

`A029656(A061579(n)+1)-A209556(n+1)`
-/

namespace A209555.P12690763513151293303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A061579 n + 1).toNat - A209556 (n + 1)

end

end A209555.P12690763513151293303

namespace A209555

/-- `A029656(A061579(n)+1)-A209556(n+1)` -/
def P12690763513151293303.Spec : Prop :=
  ∀ n, P12690763513151293303.a n = A209555 (n + 1)

end A209555

/-! ## A209555.P15541869295968852972

`A119467(n)+∑[A131054(n)-A131047(n+1)]`
-/

namespace A209555.P15541869295968852972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 n - A131047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209555.P15541869295968852972

namespace A209555

/-- `A119467(n)+∑[A131054(n)-A131047(n+1)]` -/
def P15541869295968852972.Spec : Prop :=
  ∀ n, P15541869295968852972.a n = A209555 (n + 1)

end A209555

/-! ## A209555.P2028586303279155343

`A131053(n+1)+A119467(n)-A131047(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209555

/-- `A131053(n+1)+A119467(n)-A131047(n+1)` -/
def P2028586303279155343.Spec : Prop :=
  ∀ n, P2028586303279155343.a n = A209555 (n + 1)

theorem P2028586303279155343.correct : P2028586303279155343.Spec := by
  intro n
  simp only [A209555, Nat.add_sub_cancel]

end A209555

/-! ## A209555.P8178118628813923496

`A029635(A014132(n+1))-A209556(n+1)`
-/

namespace A209555.P8178118628813923496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A014132 (n + 1)).toNat - A209556 (n + 1)

end

end A209555.P8178118628813923496

namespace A209555

/-- `A029635(A014132(n+1))-A209556(n+1)` -/
def P8178118628813923496.Spec : Prop :=
  ∀ n, P8178118628813923496.a n = A209555 (n + 1)

end A209555

/-!
# A209556: Triangle of coefficients of polynomials v(n,x) jointly generated with A209555; see the Formula section.

The programs for A209556, the canonical program `A209556.P1743370844855814615` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209556 has offset 1).

The definition of A209556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209556.P1743370844855814615

`A029656(A038722(n+1))-A209555(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A209556

/-- `A029656(A038722(n+1))-A209555(n+1)` -/
def P1743370844855814615.Spec : Prop :=
  ∀ n, P1743370844855814615.a n = A209556 (n + 1)

theorem P1743370844855814615.correct : P1743370844855814615.Spec := by
  intro n
  simp only [A209556, Nat.add_sub_cancel]

end A209556

/-! ## A209556.P7603666122144529143

`A029656(n+1)+A214292(n)-A209555(n+1)`
-/

namespace A209556.P7603666122144529143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) + (A214292 n - A209555 (n + 1))

end

end A209556.P7603666122144529143

namespace A209556

/-- `A029656(n+1)+A214292(n)-A209555(n+1)` -/
def P7603666122144529143.Spec : Prop :=
  ∀ n, P7603666122144529143.a n = A209556 (n + 1)

end A209556

/-! ## A209556.P7704388905080587416

`A135278(n)-A173402(A057428(n)+A038722(n+1))`
-/

namespace A209556.P7704388905080587416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A173402 (A057428 n + A038722 (n + 1)).toNat

end

end A209556.P7704388905080587416

namespace A209556

/-- `A135278(n)-A173402(A057428(n)+A038722(n+1))` -/
def P7704388905080587416.Spec : Prop :=
  ∀ n, P7704388905080587416.a n = A209556 (n + 1)

end A209556

/-! ## A209556.P1770403827215248372

`A135278(n)-A173402(A038722(n+2))`
-/

namespace A209556.P1770403827215248372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A173402 (A038722 (n + 2)).toNat

end

end A209556.P1770403827215248372

namespace A209556

/-- `A135278(n)-A173402(A038722(n+2))` -/
def P1770403827215248372.Spec : Prop :=
  ∀ n, P1770403827215248372.a n = A209556 (n + 1)

end A209556

/-! ## A209556.P191714726225900384

`A029635(comp[∑[n]])-A209555(n+1)`
-/

namespace A209556.P191714726225900384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A209555 (n + 1)

end

end A209556.P191714726225900384

namespace A209556

/-- `A029635(comp[∑[n]])-A209555(n+1)` -/
def P191714726225900384.Spec : Prop :=
  ∀ n, P191714726225900384.a n = A209556 (n + 1)

end A209556

/-! ## A209556.P2950397827825724537

`A162590(n)+A131054(n)`
-/

namespace A209556.P2950397827825724537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 n + A131054 n

end

end A209556.P2950397827825724537

namespace A209556

/-- `A162590(n)+A131054(n)` -/
def P2950397827825724537.Spec : Prop :=
  ∀ n, P2950397827825724537.a n = A209556 (n + 1)

end A209556

/-!
# A209559: Triangle of coefficients of polynomials u(n,x) jointly generated with A209560; see the Formula section.

The programs for A209559, the canonical program `A209559.P11958152344171540533` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209559 has offset 1).

The definition of A209559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209559.P11958152344171540533

`A210214(n+1)+A094441(n)-A209560(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209559

/-- `A210214(n+1)+A094441(n)-A209560(n+1)` -/
def P11958152344171540533.Spec : Prop :=
  ∀ n, P11958152344171540533.a n = A209559 (n + 1)

theorem P11958152344171540533.correct : P11958152344171540533.Spec := by
  intro n
  simp only [A209559, Nat.add_sub_cancel]

end A209559

/-! ## A209559.P8220127771819497166

`A107230(n)+A014473(A187829(n+1))`
-/

namespace A209559.P8220127771819497166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n + A014473 (A187829 (n + 1)).toNat

end

end A209559.P8220127771819497166

namespace A209559

/-- `A107230(n)+A014473(A187829(n+1))` -/
def P8220127771819497166.Spec : Prop :=
  ∀ n, P8220127771819497166.a n = A209559 (n + 1)

end A209559

/-!
# A209560: Triangle of coefficients of polynomials v(n,x) jointly generated with A209559; see the Formula section.

The programs for A209560, the canonical program `A209560.P16347735957303814830` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209560 has offset 1).

The definition of A209560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209560.P16347735957303814830

`A210213(n+1)+A171731(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A209560

/-- `A210213(n+1)+A171731(n)` -/
def P16347735957303814830.Spec : Prop :=
  ∀ n, P16347735957303814830.a n = A209560 (n + 1)

theorem P16347735957303814830.correct : P16347735957303814830.Spec := by
  intro n
  simp only [A209560, Nat.add_sub_cancel]

end A209560

/-! ## A209560.P2742524822758474651

`A210213(n+1)+A094442(n)-A094441(n)`
-/

namespace A209560.P2742524822758474651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210213 (n + 1) + (A094442 n - A094441 n)

end

end A209560.P2742524822758474651

namespace A209560

/-- `A210213(n+1)+A094442(n)-A094441(n)` -/
def P2742524822758474651.Spec : Prop :=
  ∀ n, P2742524822758474651.a n = A209560 (n + 1)

end A209560

/-! ## A209560.P3763118648491752032

`A210214(n+1)+A094441(n)-A209559(n+1)`
-/

namespace A209560.P3763118648491752032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210214 (n + 1) + (A094441 n - A209559 (n + 1))

end

end A209560.P3763118648491752032

namespace A209560

/-- `A210214(n+1)+A094441(n)-A209559(n+1)` -/
def P3763118648491752032.Spec : Prop :=
  ∀ n, P3763118648491752032.a n = A209560 (n + 1)

theorem P3763118648491752032.correct : P3763118648491752032.Spec := by
  intro n
  simp only [A209560, Nat.add_sub_cancel, A209560.P3763118648491752032.a, A209560.P16347735957303814830.a, A094441, A094441.P9029945833128706087.a, A171731, A171731.P1671979048661376226.a, A209559, A209559.P11958152344171540533.a, A210213, A210213.P10624536917212306160.a, A210214, A210214.P3507125888465225323.a, A000045, A000045.P11838749114346432762.a, A094442, A094442.P17028242751529884763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209560

/-! ## A209560.P1631031806554138244

`A210213(n+1)+abs(A113020(A061579(n)))`
-/

namespace A209560.P1631031806554138244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210213 (n + 1) + |A113020 (A061579 n).toNat|

end

end A209560.P1631031806554138244

namespace A209560

/-- `A210213(n+1)+abs(A113020(A061579(n)))` -/
def P1631031806554138244.Spec : Prop :=
  ∀ n, P1631031806554138244.a n = A209560 (n + 1)

end A209560

/-! ## A209560.P1191451485848697662

`A261133(A210214(n+1))+A171731(n)`
-/

namespace A209560.P1191451485848697662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A210214 (n + 1)).toNat + A171731 n

end

end A209560.P1191451485848697662

namespace A209560

/-- `A261133(A210214(n+1))+A171731(n)` -/
def P1191451485848697662.Spec : Prop :=
  ∀ n, P1191451485848697662.a n = A209560 (n + 1)

end A209560

/-!
# A209561: Triangle of coefficients of polynomials u(n,x) jointly generated with A209562; see the Formula section.

The programs for A209561, the canonical program `A209561.P13297843710123169914` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209561 has offset 1).

The definition of A209561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209561.P10322781245666758150

`T(1, T(n-1,k-1)+1)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A209561.P10322781245666758150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpLeft a n + 1 : ℤ) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A209561.P10322781245666758150

namespace A209561

/-- `T(1, T(n-1,k-1)+1)+T(n-1,k-1)+T(n-1,k)` -/
def P10322781245666758150.Spec : Prop :=
  ∀ n, (P10322781245666758150.a n : ℤ) = A209561 (n + 1)

end A209561

/-! ## A209561.P15088155676011906540

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A209561.P15088155676011906540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n

end

end A209561.P15088155676011906540

namespace A209561

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` -/
def P15088155676011906540.Spec : Prop :=
  ∀ n, P15088155676011906540.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P7634404204376878506

`round(sqrt(2*n+1))-round(sqrt(2*n))+T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A209561.P7634404204376878506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)

end

end A209561.P7634404204376878506

namespace A209561

/-- `round(sqrt(2*n+1))-round(sqrt(2*n))+T(n-1,k)+T(n-1,k-1)` -/
def P7634404204376878506.Spec : Prop :=
  ∀ n, P7634404204376878506.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P13297843710123169914

`A051597(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A209561

/-- `A051597(n)-a(n-1)` -/
def P13297843710123169914.Spec : Prop :=
  ∀ n, P13297843710123169914.a n = A209561 (n + 1)

theorem P13297843710123169914.correct : P13297843710123169914.Spec := by
  intro n
  simp only [A209561, Nat.add_sub_cancel]

end A209561

/-! ## A209561.P675453512292195041

`A259525(n)+A135226(n)`
-/

namespace A209561.P675453512292195041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259525 n + A135226 n

end

end A209561.P675453512292195041

namespace A209561

/-- `A259525(n)+A135226(n)` -/
def P675453512292195041.Spec : Prop :=
  ∀ n, P675453512292195041.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P12407641043972409782

`A029635(n)-A156644(n)`
-/

namespace A209561.P12407641043972409782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A156644 n

end

end A209561.P12407641043972409782

namespace A209561

/-- `A029635(n)-A156644(n)` -/
def P12407641043972409782.Spec : Prop :=
  ∀ n, P12407641043972409782.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P10580470688534710520

`A115241(n+1)+A008482(n)`
-/

namespace A209561.P10580470688534710520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (n + 1) + A008482 n

end

end A209561.P10580470688534710520

namespace A209561

/-- `A115241(n+1)+A008482(n)` -/
def P10580470688534710520.Spec : Prop :=
  ∀ n, P10580470688534710520.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P10006366482396858692

`A115241(n+1)-A037012(n)`
-/

namespace A209561.P10006366482396858692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (n + 1) - A037012 n

end

end A209561.P10006366482396858692

namespace A209561

/-- `A115241(n+1)-A037012(n)` -/
def P10006366482396858692.Spec : Prop :=
  ∀ n, P10006366482396858692.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P18008094149332620515

`A135278(n)-A097805(n+1)`
-/

namespace A209561.P18008094149332620515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A097805 (n + 1)

end

end A209561.P18008094149332620515

namespace A209561

/-- `A135278(n)-A097805(n+1)` -/
def P18008094149332620515.Spec : Prop :=
  ∀ n, P18008094149332620515.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P9968500737970384224

`A209562(n+1)-A073424(n)`
-/

namespace A209561.P9968500737970384224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209562 (n + 1) - A073424 n

end

end A209561.P9968500737970384224

namespace A209561

/-- `A209562(n+1)-A073424(n)` -/
def P9968500737970384224.Spec : Prop :=
  ∀ n, P9968500737970384224.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P14495841261269979447

`ceil((A110813(n)+A008482(n))/2)`
-/

namespace A209561.P14495841261269979447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110813 n + A008482 n : ℚ) / 2⌉

end

end A209561.P14495841261269979447

namespace A209561

/-- `ceil((A110813(n)+A008482(n))/2)` -/
def P14495841261269979447.Spec : Prop :=
  ∀ n, P14495841261269979447.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P5141881058310352037

`round((A110813(n)-A037012(n))/2)`
-/

namespace A209561.P5141881058310352037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110813 n - A037012 n : ℚ) / 2)

end

end A209561.P5141881058310352037

namespace A209561

/-- `round((A110813(n)-A037012(n))/2)` -/
def P5141881058310352037.Spec : Prop :=
  ∀ n, P5141881058310352037.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P4193805747972465707

`A074909(n+1)-A097805(n+1)`
-/

namespace A209561.P4193805747972465707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A097805 (n + 1)

end

end A209561.P4193805747972465707

namespace A209561

/-- `A074909(n+1)-A097805(n+1)` -/
def P4193805747972465707.Spec : Prop :=
  ∀ n, P4193805747972465707.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P1953007737311060765

`A007318(n+1)+A135226(n)-A007318(n)`
-/

namespace A209561.P1953007737311060765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135226 n - A007318 n)

end

end A209561.P1953007737311060765

namespace A209561

/-- `A007318(n+1)+A135226(n)-A007318(n)` -/
def P1953007737311060765.Spec : Prop :=
  ∀ n, P1953007737311060765.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P13393961664994386489

`A007318(n+1)+A007318(n)-A208891(n)`
-/

namespace A209561.P13393961664994386489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 n - A208891 n)

end

end A209561.P13393961664994386489

namespace A209561

/-- `A007318(n+1)+A007318(n)-A208891(n)` -/
def P13393961664994386489.Spec : Prop :=
  ∀ n, P13393961664994386489.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P9665359512948370297

`A007318(n+1)+A135225(n)-A103451(n)`
-/

namespace A209561.P9665359512948370297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135225 n - A103451 n)

end

end A209561.P9665359512948370297

namespace A209561

/-- `A007318(n+1)+A135225(n)-A103451(n)` -/
def P9665359512948370297.Spec : Prop :=
  ∀ n, P9665359512948370297.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P11432036436127568900

`A208510(n+1)+A209562(n+1)-A029653(n)`
-/

namespace A209561.P11432036436127568900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + (A209562 (n + 1) - A029653 n)

end

end A209561.P11432036436127568900

namespace A209561

/-- `A208510(n+1)+A209562(n+1)-A029653(n)` -/
def P11432036436127568900.Spec : Prop :=
  ∀ n, P11432036436127568900.a n = A209561 (n + 1)

theorem P11432036436127568900.correct : P11432036436127568900.Spec := by
  intro n
  simp only [A209561, Nat.add_sub_cancel, A209561.P11432036436127568900.a, A209561.P13297843710123169914.a, A029653, A029653.P15740320911286042854.a, A051597, A051597.P4383731425265306086.a, A208510, A208510.P9937072583222605301.a, A209562, A209562.P7373821784173499212.a, A014430, A014430.P2601729842851247134.a, A014473, A014473.P14186955903002457323.a, A028326, A028326.P7676793339942299677.a, A029655, A029655.P14912270738703485013.a, A083920, A083920.P13248752610546876947.a, A097805, A097805.P1755176267250853107.a, A007318, A007318.P11755526479805562006.a, A325191, A325191.P1948114789834443761.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209561

/-! ## A209561.P17305565425387362374

`A209555(n+1)+A209556(n+1)-A029653(n)`
-/

namespace A209561.P17305565425387362374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209555 (n + 1) + (A209556 (n + 1) - A029653 n)

end

end A209561.P17305565425387362374

namespace A209561

/-- `A209555(n+1)+A209556(n+1)-A029653(n)` -/
def P17305565425387362374.Spec : Prop :=
  ∀ n, P17305565425387362374.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P11102065499745119923

`A206735(n+1)+A097805(n)`
-/

namespace A209561.P11102065499745119923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A097805 n

end

end A209561.P11102065499745119923

namespace A209561

/-- `A206735(n+1)+A097805(n)` -/
def P11102065499745119923.Spec : Prop :=
  ∀ n, P11102065499745119923.a n = A209561 (n + 1)

end A209561

/-! ## A209561.P14568160211033230646

`A029638(n+2)-A029653(n)`
-/

namespace A209561.P14568160211033230646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (n + 2) - A029653 n

end

end A209561.P14568160211033230646

namespace A209561

/-- `A029638(n+2)-A029653(n)` -/
def P14568160211033230646.Spec : Prop :=
  ∀ n, P14568160211033230646.a n = A209561 (n + 1)

end A209561

/-!
# A209562: Triangle of coefficients of polynomials v(n,x) jointly generated with A209561; see the Formula section.

The programs for A209562, the canonical program `A209562.P7373821784173499212` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209562 has offset 1).

The definition of A209562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209562.P17751006394523515202

`A072405(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A209562.P17751006394523515202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072405 n + SequenceMachineLib.triUp a n

end

end A209562.P17751006394523515202

namespace A209562

/-- `A072405(n)+T(n-1,k)` -/
def P17751006394523515202.Spec : Prop :=
  ∀ n, P17751006394523515202.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P1919130799096786913

`A209561(n+1)+char[∑[n+1]]`
-/

namespace A209562.P1919130799096786913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209562.P1919130799096786913

namespace A209562

/-- `A209561(n+1)+char[∑[n+1]]` -/
def P1919130799096786913.Spec : Prop :=
  ∀ n, P1919130799096786913.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P7373821784173499212

`A209561(n+1)+A029653(n)-A208510(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209562

/-- `A209561(n+1)+A029653(n)-A208510(n+1)` -/
def P7373821784173499212.Spec : Prop :=
  ∀ n, P7373821784173499212.a n = A209562 (n + 1)

theorem P7373821784173499212.correct : P7373821784173499212.Spec := by
  intro n
  simp only [A209562, Nat.add_sub_cancel]

end A209562

/-! ## A209562.P11774579120227758501

`A133084(n+1)+A133567(n+1)-A208510(n+1)`
-/

namespace A209562.P11774579120227758501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) + (A133567 (n + 1) - A208510 (n + 1))

end

end A209562.P11774579120227758501

namespace A209562

/-- `A133084(n+1)+A133567(n+1)-A208510(n+1)` -/
def P11774579120227758501.Spec : Prop :=
  ∀ n, P11774579120227758501.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P5991856910119164036

`A209555(n+1)+A209556(n+1)-A208510(n+1)`
-/

namespace A209562.P5991856910119164036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209555 (n + 1) + (A209556 (n + 1) - A208510 (n + 1))

end

end A209562.P5991856910119164036

namespace A209562

/-- `A209555(n+1)+A209556(n+1)-A208510(n+1)` -/
def P5991856910119164036.Spec : Prop :=
  ∀ n, P5991856910119164036.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P13269515775824325468

`A029635(n)+Δ[A206735(n)]`
-/

namespace A209562.P13269515775824325468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (f1 (n + 1) - f1 n)

end

end A209562.P13269515775824325468

namespace A209562

/-- `A029635(n)+Δ[A206735(n)]` -/
def P13269515775824325468.Spec : Prop :=
  ∀ n, P13269515775824325468.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P11795911066905210510

`A206735(n+1)+A135225(n)`
-/

namespace A209562.P11795911066905210510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A135225 n

end

end A209562.P11795911066905210510

namespace A209562

/-- `A206735(n+1)+A135225(n)` -/
def P11795911066905210510.Spec : Prop :=
  ∀ n, P11795911066905210510.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P7652244412371725346

`A029638(n+2)-A208510(n+1)`
-/

namespace A209562.P7652244412371725346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (n + 2) - A208510 (n + 1)

end

end A209562.P7652244412371725346

namespace A209562

/-- `A029638(n+2)-A208510(n+1)` -/
def P7652244412371725346.Spec : Prop :=
  ∀ n, P7652244412371725346.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P14217433502188409520

`A209561(A066182(n+1)+1)`
-/

namespace A209562.P14217433502188409520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (A066182 (n + 1) + 1).toNat

end

end A209562.P14217433502188409520

namespace A209562

/-- `A209561(A066182(n+1)+1)` -/
def P14217433502188409520.Spec : Prop :=
  ∀ n, P14217433502188409520.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P12635693336259575046

`A209561(A089799(n)+A061579(n))`
-/

namespace A209562.P12635693336259575046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (A089799 n + A061579 n).toNat

end

end A209562.P12635693336259575046

namespace A209562

/-- `A209561(A089799(n)+A061579(n))` -/
def P12635693336259575046.Spec : Prop :=
  ∀ n, P12635693336259575046.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P8014058791384686580

`A029635(comp[∑[n]])-A208510(n+1)`
-/

namespace A209562.P8014058791384686580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A208510 (n + 1)

end

end A209562.P8014058791384686580

namespace A209562

/-- `A029635(comp[∑[n]])-A208510(n+1)` -/
def P8014058791384686580.Spec : Prop :=
  ∀ n, P8014058791384686580.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P8460061536298261926

`A135227(A080036(n))-A071919(n)`
-/

namespace A209562.P8460061536298261926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (A080036 n).toNat - A071919 n

end

end A209562.P8460061536298261926

namespace A209562

/-- `A135227(A080036(n))-A071919(n)` -/
def P8460061536298261926.Spec : Prop :=
  ∀ n, P8460061536298261926.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P4010139378252614238

`A135225(n)+A071919(∑[A035214(n)])`
-/

namespace A209562.P4010139378252614238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n + A071919 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209562.P4010139378252614238

namespace A209562

/-- `A135225(n)+A071919(∑[A035214(n)])` -/
def P4010139378252614238.Spec : Prop :=
  ∀ n, P4010139378252614238.a n = A209562 (n + 1)

end A209562

/-! ## A209562.P12012275551085667513

`A254667(A029635(n))-A156644(n)`
-/

namespace A209562.P12012275551085667513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A029635 n).toNat - A156644 n

end

end A209562.P12012275551085667513

namespace A209562

/-- `A254667(A029635(n))-A156644(n)` -/
def P12012275551085667513.Spec : Prop :=
  ∀ n, P12012275551085667513.a n = A209562 (n + 1)

end A209562

/-!
# A209563: Triangle of coefficients of polynomials u(n,x) jointly generated with A209564; see the Formula section.

The programs for A209563, the canonical program `A209563.P8397493159037725102` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209563 has offset 1).

The definition of A209563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209563.P8616998987964355383

`(A210872(n+1)+A210215(n+1))/2`
-/

namespace A209563.P8616998987964355383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210872 (n + 1) + A210215 (n + 1) : ℚ) / 2

end

end A209563.P8616998987964355383

namespace A209563

/-- `(A210872(n+1)+A210215(n+1))/2` -/
def P8616998987964355383.Spec : Prop :=
  ∀ n, P8616998987964355383.a n = (A209563 (n + 1) : ℚ)

end A209563

/-! ## A209563.P6619947069321331178

`(A027011(n+1)-A210873(n+1))/2`
-/

namespace A209563.P6619947069321331178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027011 (n + 1) - A210873 (n + 1) : ℚ) / 2

end

end A209563.P6619947069321331178

namespace A209563

/-- `(A027011(n+1)-A210873(n+1))/2` -/
def P6619947069321331178.Spec : Prop :=
  ∀ n, P6619947069321331178.a n = (A209563 (n + 1) : ℚ)

end A209563

/-! ## A209563.P8397493159037725102

`A027948(n)+A098158(n)%A027935(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A209563

/-- `A027948(n)+A098158(n)%A027935(n)` -/
def P8397493159037725102.Spec : Prop :=
  ∀ n, P8397493159037725102.a n = A209563 (n + 1)

theorem P8397493159037725102.correct : P8397493159037725102.Spec := by
  intro n
  simp only [A209563, Nat.add_sub_cancel]

end A209563

/-! ## A209563.P10909292527057524019

`A209564(A003057(n+2)+n+1)-A209564(n+1)`
-/

namespace A209563.P10909292527057524019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209564 (A003057 (n + 2) + (n : ℤ) + 1).toNat - A209564 (n + 1)

end

end A209563.P10909292527057524019

namespace A209563

/-- `A209564(A003057(n+2)+n+1)-A209564(n+1)` -/
def P10909292527057524019.Spec : Prop :=
  ∀ n, P10909292527057524019.a n = A209563 (n + 1)

end A209563

/-! ## A209563.P7007497934249705554

`A055801(A185871(n+1))`
-/

namespace A209563.P7007497934249705554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A185871 (n + 1)).toNat

end

end A209563.P7007497934249705554

namespace A209563

/-- `A055801(A185871(n+1))` -/
def P7007497934249705554.Spec : Prop :=
  ∀ n, P7007497934249705554.a n = A209563 (n + 1)

end A209563

/-! ## A209563.P17684162201805451631

`A055801(A140978(n+1)+2*n+1)`
-/

namespace A209563.P17684162201805451631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A140978 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A209563.P17684162201805451631

namespace A209563

/-- `A055801(A140978(n+1)+2*n+1)` -/
def P17684162201805451631.Spec : Prop :=
  ∀ n, P17684162201805451631.a n = A209563 (n + 1)

end A209563

/-! ## A209563.P1813943362276573824

`A055801(eq[A010816(n), A155998(n)])`
-/

namespace A209563.P1813943362276573824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209563.P1813943362276573824

namespace A209563

/-- `A055801(eq[A010816(n), A155998(n)])` -/
def P1813943362276573824.Spec : Prop :=
  ∀ n, P1813943362276573824.a n = A209563 (n + 1)

end A209563

/-! ## A209563.P18401606781437958340

`A055801(eq[A155998(n), A198954(n)])`
-/

namespace A209563.P18401606781437958340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209563.P18401606781437958340

namespace A209563

/-- `A055801(eq[A155998(n), A198954(n)])` -/
def P18401606781437958340.Spec : Prop :=
  ∀ n, P18401606781437958340.a n = A209563 (n + 1)

end A209563

/-! ## A209563.P2470551655955286928

`A055801(eq[A028326(n), A155998(n)]+1)`
-/

namespace A209563.P2470551655955286928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A209563.P2470551655955286928

namespace A209563

/-- `A055801(eq[A028326(n), A155998(n)]+1)` -/
def P2470551655955286928.Spec : Prop :=
  ∀ n, P2470551655955286928.a n = A209563 (n + 1)

end A209563

/-! ## A209563.P13111571422347581141

`A208245(A185869(A185869(n+1)-A016777(n)))`
-/

namespace A209563.P13111571422347581141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A185869 (A185869 (n + 1) - A016777 n).toNat).toNat

end

end A209563.P13111571422347581141

namespace A209563

/-- `A208245(A185869(A185869(n+1)-A016777(n)))` -/
def P13111571422347581141.Spec : Prop :=
  ∀ n, P13111571422347581141.a n = A209563 (n + 1)

end A209563

/-!
# A209564: Triangle of coefficients of polynomials v(n,x) jointly generated with A209559; see the Formula section.

The programs for A209564, there is no canonical definition to state claims against.
-/

/-! ## A209564.P6337612215828422875

`A055801(eq[0, A051159(n)])`
-/

namespace A209564.P6337612215828422875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209564.P6337612215828422875

/-! ## A209564.P12188034604223367298

`A055801(A185871(n+1)-1)`
-/

namespace A209564.P12188034604223367298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A185871 (n + 1) - 1).toNat

end

end A209564.P12188034604223367298

/-! ## A209564.P8331846049681950648

`A055801(A140978(n+1)+2*n)`
-/

namespace A209564.P8331846049681950648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A140978 (n + 1) + (2 * n : ℤ)).toNat

end

end A209564.P8331846049681950648

/-! ## A209564.P2000185696490723160

`A055801(A140978(n+1)+n+n)`
-/

namespace A209564.P2000185696490723160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A140978 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A209564.P2000185696490723160

/-! ## A209564.P10074788909998311932

`A055801(A060000(A185871(n+1)))`
-/

namespace A209564.P10074788909998311932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A060000 (A185871 (n + 1)).toNat).toNat

end

end A209564.P10074788909998311932

/-! ## A209564.P16651745119706048163

`A055801(eq[1, A010170(A004247(n))])`
-/

namespace A209564.P16651745119706048163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A004247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209564.P16651745119706048163

/-! ## A209564.P5385189930315810850

`A055801(eq[2, A141310(A004247(n))])`
-/

namespace A209564.P5385189930315810850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A004247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209564.P5385189930315810850

/-! ## A209564.P5571269945527215235

`A055801(eq[0, A155997(n)])`
-/

namespace A209564.P5571269945527215235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209564.P5571269945527215235

/-! ## A209564.P818297418415130483

`A055801(eq[A028326(n), A155998(n)])`
-/

namespace A209564.P818297418415130483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209564.P818297418415130483

/-! ## A209564.P13468875793632898588

`A055801(eq[A010816(n), A155998(n)]-1)`
-/

namespace A209564.P13468875793632898588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A209564.P13468875793632898588

/-! ## A209564.P400002973540504202

`A055801(eq[A155998(n), A198954(n)]-1)`
-/

namespace A209564.P400002973540504202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A209564.P400002973540504202

/-! ## A209564.P5018279934376784157

`A055801(eq[A010816(n+1), A155998(n+1)])`
-/

namespace A209564.P5018279934376784157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209564.P5018279934376784157

/-! ## A209564.P3266719213829705888

`A055801(eq[A155998(n+1), A198954(n+1)])`
-/

namespace A209564.P3266719213829705888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209564.P3266719213829705888

/-! ## A209564.P5362051122774886707

`A055801(eq[0, A319367(n+1)])`
-/

namespace A209564.P5362051122774886707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209564.P5362051122774886707

/-!
# A209565: Triangle of coefficients of polynomials u(n,x) jointly generated with A209566; see the Formula section.

The programs for A209565, there is no canonical definition to state claims against.
-/

/-! ## A209565.P8456327409766987991

`A117332(A140472(A137940(n+1)²))`
-/

namespace A209565.P8456327409766987991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A140472 (A137940 (n + 1) ^ 2).toNat).toNat

end

end A209565.P8456327409766987991

/-! ## A209565.P18182373217899222778

`A007606(A334548(n))%A347465(A065713(n))`
-/

namespace A209565.P18182373217899222778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007606 (A334548 n).toNat) (A347465 (A065713 n).toNat)

end

end A209565.P18182373217899222778

/-! ## A209565.P286363181433449575

`A007606(A334548(n))^A288638(A251558(n+1))`
-/

namespace A209565.P286363181433449575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007606 (A334548 n).toNat : ℚ) ^ (A288638 (A251558 (n + 1)).toNat : ℤ)

end

end A209565.P286363181433449575

/-! ## A209565.P13479018996526023364

`A007606(A334548(n))^A001221(A000079(n))`
-/

namespace A209565.P13479018996526023364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007606 (A334548 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A209565.P13479018996526023364

/-!
# A209566: Triangle of coefficients of polynomials v(n,x) jointly generated with A209565; see the Formula section.

The programs for A209566, there is no canonical definition to state claims against.
-/

/-! ## A209566.P8809453234613093583

`A130253(A062104(n)^5)`
-/

namespace A209566.P8809453234613093583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 (A062104 n ^ 5).toNat

end

end A209566.P8809453234613093583

/-! ## A209566.P893223164453994269

`A137512(A243641(n+1)-3)`
-/

namespace A209566.P893223164453994269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A243641 (n + 1) - 3).toNat

end

end A209566.P893223164453994269

/-! ## A209566.P7157756778043929196

`A276689(A226234(n))+A094250(n)`
-/

namespace A209566.P7157756778043929196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A226234 n).toNat + A094250 n

end

end A209566.P7157756778043929196

/-! ## A209566.P17358342993669285662

`A351831(A226441(n+1)+A212829(n+1))`
-/

namespace A209566.P17358342993669285662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A226441 (n + 1) + A212829 (n + 1)).toNat

end

end A209566.P17358342993669285662

/-! ## A209566.P15697015636584088927

`or(A001221(A124296(n)), A094250(n))`
-/

namespace A209566.P15697015636584088927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A124296 n).toNat) (A094250 n)

end

end A209566.P15697015636584088927

/-!
# A209567: Triangle of coefficients of polynomials u(n,x) jointly generated with A209568; see the Formula section.

The programs for A209567, there is no canonical definition to state claims against.
-/

/-! ## A209567.P11151725820042841536

`A210219(A054977(n)+n)-A071921(n)`
-/

namespace A209567.P11151725820042841536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A054977 n + (n : ℤ)).toNat - A071921 n

end

end A209567.P11151725820042841536

/-! ## A209567.P14603690907621165632

`A210219(n+1)+A000007(n)-A071921(n)`
-/

namespace A209567.P14603690907621165632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) + (A000007 n - A071921 n)

end

end A209567.P14603690907621165632

/-! ## A209567.P11081540729402255475

`A210219(n+1)+A057428(n)*A071921(n)`
-/

namespace A209567.P11081540729402255475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) + A057428 n * A071921 n

end

end A209567.P11081540729402255475

/-! ## A209567.P9045309684406399676

`gcd(A210219(n+1)-A071921(n), A130706(n))`
-/

namespace A209567.P9045309684406399676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210219 (n + 1) - A071921 n) (A130706 n)

end

end A209567.P9045309684406399676

/-! ## A209567.P12680027513059609908

`A210219(n+1)-and(A000225(n), A071921(n))`
-/

namespace A209567.P12680027513059609908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) - Int.land (A000225 n) (A071921 n)

end

end A209567.P12680027513059609908

/-!
# A209568: Triangle of coefficients of polynomials v(n,x) jointly generated with A209567; see the Formula section.

The programs for A209568, there is no canonical definition to state claims against.
-/

/-! ## A209568.P11863881912104177102

`A131335(A185869(n+1))-A185651(n)`
-/

namespace A209568.P11863881912104177102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131335 (A185869 (n + 1)).toNat - A185651 n

end

end A209568.P11863881912104177102

/-! ## A209568.P15994477192275255336

`A119485(A200763(n+1)-1)`
-/

namespace A209568.P15994477192275255336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119485 (A200763 (n + 1) - 1).toNat

end

end A209568.P15994477192275255336

/-! ## A209568.P17593455810670736029

`A047666(n+1)+val(A056718(2*(n+1)), 4)`
-/

namespace A209568.P17593455810670736029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) + (SequenceMachineLib.valuation (A056718 (2 * (n + 1))).toNat 4 : ℤ)

end

end A209568.P17593455810670736029

/-! ## A209568.P3897114125179226063

`A212951(A137896(n))+A085207(n)`
-/

namespace A209568.P3897114125179226063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212951 (A137896 n).toNat + A085207 n

end

end A209568.P3897114125179226063

/-!
# A209569: Triangle of coefficients of polynomials u(n,x) jointly generated with A209570; see the Formula section.

The programs for A209569, the canonical program `A209569.P5620803405068336530` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209569 has offset 1).

The definition of A209569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209569.P7228644146866512754

`round(sqrt(2*n+1))-round(sqrt(2*n))+T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A209569.P7228644146866512754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n)

end

end A209569.P7228644146866512754

namespace A209569

/-- `round(sqrt(2*n+1))-round(sqrt(2*n))+T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` -/
def P7228644146866512754.Spec : Prop :=
  ∀ n, P7228644146866512754.a n = A209569 (n + 1)

end A209569

/-! ## A209569.P1373423627548274054

`A010054(n)+T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A209569.P1373423627548274054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A010054 n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n)

end

end A209569.P1373423627548274054

namespace A209569

/-- `A010054(n)+T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` -/
def P1373423627548274054.Spec : Prop :=
  ∀ n, P1373423627548274054.a n = A209569 (n + 1)

end A209569

/-! ## A209569.P5620803405068336530

`A122542(n)+A266213(A014132(n+1))/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209569

/-- `A122542(n)+A266213(A014132(n+1))/2` -/
def P5620803405068336530.Spec : Prop :=
  ∀ n, P5620803405068336530.a n = (A209569 (n + 1) : ℚ)

end A209569

/-! ## A209569.P1523142784252097940

`A008288(n)+A004526(A266213(n+1))`
-/

namespace A209569.P1523142784252097940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + A004526 (A266213 (n + 1)).toNat

end

end A209569.P1523142784252097940

namespace A209569

/-- `A008288(n)+A004526(A266213(n+1))` -/
def P1523142784252097940.Spec : Prop :=
  ∀ n, P1523142784252097940.a n = A209569 (n + 1)

end A209569

/-!
# A209570: Triangle of coefficients of polynomials v(n,x) jointly generated with A209569; see the Formula section.

The programs for A209570, the canonical program `A209570.P10669092664139911102` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209570 has offset 1).

The definition of A209570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209570.P10669092664139911102

`A210222(n+1)+A010054(n)-A266213(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209570

/-- `A210222(n+1)+A010054(n)-A266213(n)` -/
def P10669092664139911102.Spec : Prop :=
  ∀ n, P10669092664139911102.a n = A209570 (n + 1)

theorem P10669092664139911102.correct : P10669092664139911102.Spec := by
  intro n
  simp only [A209570, Nat.add_sub_cancel]

end A209570

/-! ## A209570.P16727782102624015008

`A210222(n+1)-A266213(n)%A008288(n)`
-/

namespace A209570.P16727782102624015008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210222 (n + 1) - Int.tmod (A266213 n) (A008288 n)

end

end A209570.P16727782102624015008

namespace A209570

/-- `A210222(n+1)-A266213(n)%A008288(n)` -/
def P16727782102624015008.Spec : Prop :=
  ∀ n, P16727782102624015008.a n = A209570 (n + 1)

end A209570

/-! ## A209570.P234873195499959480

`A210222(n+1)-A052928(A266213(n))`
-/

namespace A209570.P234873195499959480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210222 (n + 1) - A052928 (A266213 n).toNat

end

end A209570.P234873195499959480

namespace A209570

/-- `A210222(n+1)-A052928(A266213(n))` -/
def P234873195499959480.Spec : Prop :=
  ∀ n, P234873195499959480.a n = A209570 (n + 1)

end A209570

/-! ## A209570.P7072568953683597245

`A260999(or(A029655(n), A218592(n+1)))`
-/

namespace A209570.P7072568953683597245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (Int.lor (A029655 n) (A218592 (n + 1))).toNat

end

end A209570.P7072568953683597245

namespace A209570

/-- `A260999(or(A029655(n), A218592(n+1)))` -/
def P7072568953683597245.Spec : Prop :=
  ∀ n, P7072568953683597245.a n = A209570 (n + 1)

end A209570

/-!
# A209571: Triangle of coefficients of polynomials u(n,x) jointly generated with A209572; see the Formula section.

The programs for A209571, there is no canonical definition to state claims against.
-/

/-! ## A209571.P16588224375596733254

`A002034(A128227(n)^A278483(n))`
-/

namespace A209571.P16588224375596733254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A128227 n : ℚ) ^ (A278483 n : ℤ))).toNat

end

end A209571.P16588224375596733254

/-! ## A209571.P10967278785736240268

`A053828(A128227(n)^A293377(n))`
-/

namespace A209571.P10967278785736240268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (SequenceMachineLib.roundAway ((A128227 n : ℚ) ^ (A293377 n : ℤ))).toNat

end

end A209571.P10967278785736240268

/-! ## A209571.P5822804022948400652

`A005245(A116855(n+1)^A128227(n))`
-/

namespace A209571.P5822804022948400652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (SequenceMachineLib.roundAway ((A116855 (n + 1) : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A209571.P5822804022948400652

/-! ## A209571.P15774194554531777890

`A053828(A002260(n+1)^A293377(n))`
-/

namespace A209571.P15774194554531777890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A293377 n : ℤ))).toNat

end

end A209571.P15774194554531777890

/-! ## A209571.P2083359070130411886

`A005245(A116855(n+1)^A002260(n+1))`
-/

namespace A209571.P2083359070130411886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (SequenceMachineLib.roundAway ((A116855 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A209571.P2083359070130411886

/-!
# A209572: Triangle of coefficients of polynomials v(n,x) jointly generated with A209571; see the Formula section.

The programs for A209572, there is no canonical definition to state claims against.
-/

/-! ## A209572.P1235544443950052821

`A118469(A336574(n))`
-/

namespace A209572.P1235544443950052821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118469 (A336574 n).toNat

end

end A209572.P1235544443950052821

/-! ## A209572.P10074635293326237572

`A326929(A263703(n+1))`
-/

namespace A209572.P10074635293326237572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326929 (A263703 (n + 1)).toNat

end

end A209572.P10074635293326237572

/-! ## A209572.P16199386950863790757

`A326929(A263714(n+1))`
-/

namespace A209572.P16199386950863790757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326929 (A263714 (n + 1)).toNat

end

end A209572.P16199386950863790757

/-! ## A209572.P3551694820212620451

`A014499(A263714(n+1)^5)`
-/

namespace A209572.P3551694820212620451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A263714 (n + 1) ^ 5).toNat

end

end A209572.P3551694820212620451

/-! ## A209572.P3450034725612519409

`A193404(A194540(n+1))`
-/

namespace A209572.P3450034725612519409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A194540 (n + 1)).toNat

end

end A209572.P3450034725612519409

/-!
# A209573: Triangle of coefficients of polynomials u(n,x) jointly generated with A209574; see the Formula section.

The programs for A209573, there is no canonical definition to state claims against.
-/

/-! ## A209573.P8231460295929433555

`A209414(n+1)+A101164(A187829(n+1))`
-/

namespace A209573.P8231460295929433555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209414 (n + 1) + A101164 (A187829 (n + 1)).toNat

end

end A209573.P8231460295929433555

/-! ## A209573.P17961333261388461710

`A114188(A061579(n))+A101164(A187829(n+1))`
-/

namespace A209573.P17961333261388461710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A061579 n).toNat + A101164 (A187829 (n + 1)).toNat

end

end A209573.P17961333261388461710

/-! ## A209573.P12512880912680972310

`A114188(A038722(n+2))+A101164(A187829(n+1))`
-/

namespace A209573.P12512880912680972310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A038722 (n + 2)).toNat + A101164 (A187829 (n + 1)).toNat

end

end A209573.P12512880912680972310

/-!
# A209574: Triangle of coefficients of polynomials v(n,x) jointly generated with A209573; see the Formula section.

The programs for A209574, there is no canonical definition to state claims against.
-/

/-! ## A209574.P9747566189873794906

`A210225(n+1)+A112351(n)-A209414(n+1)`
-/

namespace A209574.P9747566189873794906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210225 (n + 1) + (A112351 n - A209414 (n + 1))

end

end A209574.P9747566189873794906

/-!
# A209575: Triangle of coefficients of polynomials u(n,x) jointly generated with A209576; see the Formula section.

The programs for A209575, there is no canonical definition to state claims against.
-/

/-! ## A209575.P15034562497982420665

`and(A157446(A168547(n)), A168288(n))`
-/

namespace A209575.P15034562497982420665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157446 (A168547 n).toNat) (A168288 n)

end

end A209575.P15034562497982420665

/-! ## A209575.P12772048155991032303

`and(A168288(n), A179658(A337499(n)))`
-/

namespace A209575.P12772048155991032303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168288 n) (A179658 (A337499 n).toNat)

end

end A209575.P12772048155991032303

/-! ## A209575.P7879382053425257881

`and(A168288(n), A228255(A187829(n+1)))`
-/

namespace A209575.P7879382053425257881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168288 n) (A228255 (A187829 (n + 1)).toNat)

end

end A209575.P7879382053425257881

/-!
# A209577: Triangle of coefficients of polynomials u(n,x) jointly generated with A209578; see the Formula section.

The programs for A209577, the canonical program `A209577.P15172400404900940711` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209577 has offset 1).

The definition of A209577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209577.P128511477464967153

`round(sqrt(2*n+1))-round(sqrt(2*n))+T(n-1,k)+T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=1`
-/

namespace A209577.P128511477464967153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n)

end

end A209577.P128511477464967153

namespace A209577

/-- `round(sqrt(2*n+1))-round(sqrt(2*n))+T(n-1,k)+T(n-1,k-1)+T(n-2,k)` -/
def P128511477464967153.Spec : Prop :=
  ∀ n, P128511477464967153.a n = A209577 (n + 1)

end A209577

/-! ## A209577.P15172400404900940711

`or(T(n-1,k)+T(n-1,k-1)+T(n-2,k), A010054(n))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209577

/-- `or(T(n-1,k)+T(n-1,k-1)+T(n-2,k), A010054(n))` -/
def P15172400404900940711.Spec : Prop :=
  ∀ n, P15172400404900940711.a n = A209577 (n + 1)

theorem P15172400404900940711.correct : P15172400404900940711.Spec := by
  intro n
  simp only [A209577, Nat.add_sub_cancel]

end A209577

/-! ## A209577.P12610810104702425683

`2*A037027(n)-A091186(n)`
-/

namespace A209577.P12610810104702425683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037027 n - A091186 n

end

end A209577.P12610810104702425683

namespace A209577

/-- `2*A037027(n)-A091186(n)` -/
def P12610810104702425683.Spec : Prop :=
  ∀ n, P12610810104702425683.a n = A209577 (n + 1)

end A209577

/-! ## A209577.P10577262538477390394

`A210229(n+1)+A037027(n)-A122075(n)`
-/

namespace A209577.P10577262538477390394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (n + 1) + (A037027 n - A122075 n)

end

end A209577.P10577262538477390394

namespace A209577

/-- `A210229(n+1)+A037027(n)-A122075(n)` -/
def P10577262538477390394.Spec : Prop :=
  ∀ n, P10577262538477390394.a n = A209577 (n + 1)

end A209577

/-! ## A209577.P4275898151221490200

`A209747(n+1)+A209748(n+1)-A210199(n+1)`
-/

namespace A209577.P4275898151221490200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (n + 1) + (A209748 (n + 1) - A210199 (n + 1))

end

end A209577.P4275898151221490200

namespace A209577

/-- `A209747(n+1)+A209748(n+1)-A210199(n+1)` -/
def P4275898151221490200.Spec : Prop :=
  ∀ n, P4275898151221490200.a n = A209577 (n + 1)

end A209577

/-! ## A209577.P14065680441635215343

`A209747(n+1)+A210229(n+1)-A210200(n+1)`
-/

namespace A209577.P14065680441635215343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (n + 1) + (A210229 (n + 1) - A210200 (n + 1))

end

end A209577.P14065680441635215343

namespace A209577

/-- `A209747(n+1)+A210229(n+1)-A210200(n+1)` -/
def P14065680441635215343.Spec : Prop :=
  ∀ n, P14065680441635215343.a n = A209577 (n + 1)

end A209577

/-! ## A209577.P12457336593353088133

`A210229(n+1)-A155161(n+1)`
-/

namespace A209577.P12457336593353088133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (n + 1) - A155161 (n + 1)

end

end A209577.P12457336593353088133

namespace A209577

/-- `A210229(n+1)-A155161(n+1)` -/
def P12457336593353088133.Spec : Prop :=
  ∀ n, P12457336593353088133.a n = A209577 (n + 1)

end A209577

/-! ## A209577.P14410208274377739065

`A004277(A037027(n))-A091186(n)`
-/

namespace A209577.P14410208274377739065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A037027 n).toNat - A091186 n

end

end A209577.P14410208274377739065

namespace A209577

/-- `A004277(A037027(n))-A091186(n)` -/
def P14410208274377739065.Spec : Prop :=
  ∀ n, P14410208274377739065.a n = A209577 (n + 1)

end A209577

/-!
# A209578: Triangle of coefficients of polynomials v(n,x) jointly generated with A209577; see the Formula section.

The programs for A209578, the canonical program `A209578.P16425230439945804741` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209578 has offset 1).

The definition of A209578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209578.P16425230439945804741

`A210230(n+1)+A010054(n)-A055830(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209578

/-- `A210230(n+1)+A010054(n)-A055830(n)` -/
def P16425230439945804741.Spec : Prop :=
  ∀ n, P16425230439945804741.a n = A209578 (n + 1)

theorem P16425230439945804741.correct : P16425230439945804741.Spec := by
  intro n
  simp only [A209578, Nat.add_sub_cancel]

end A209578

/-!
# A209581: Triangle of coefficients of polynomials u(n,x) jointly generated with A209582; see the Formula section.

The programs for A209581, there is no canonical definition to state claims against.
-/

/-! ## A209581.P10462369757489603752

`A208324(n)+A010054(n)-A209582(n+1)`
-/

namespace A209581.P10462369757489603752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 n + A010054 n - A209582 (n + 1)

end

end A209581.P10462369757489603752

/-! ## A209581.P4194282581252528482

`A209158(n+1)+A209159(n+1)-A209582(n+1)`
-/

namespace A209581.P4194282581252528482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + (A209159 (n + 1) - A209582 (n + 1))

end

end A209581.P4194282581252528482

/-! ## A209581.P14622613558694290247

`A207627(n+2)-A209582(n+1)`
-/

namespace A209581.P14622613558694290247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209582 (n + 1)

end

end A209581.P14622613558694290247

/-! ## A209581.P6092875066814543354

`A208324(A066182(n+1))-A209582(n+1)`
-/

namespace A209581.P6092875066814543354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A209582 (n + 1)

end

end A209581.P6092875066814543354

/-!
# A209582: Triangle of coefficients of polynomials v(n,x) jointly generated with A209581; see the Formula section.

The programs for A209582, there is no canonical definition to state claims against.
-/

/-! ## A209582.P12483331719607662690

`A208324(n)+A010054(n)-A209581(n+1)`
-/

namespace A209582.P12483331719607662690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 n + A010054 n - A209581 (n + 1)

end

end A209582.P12483331719607662690

/-! ## A209582.P2938963223801674463

`A207627(n+2)-A209581(n+1)`
-/

namespace A209582.P2938963223801674463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209581 (n + 1)

end

end A209582.P2938963223801674463

/-! ## A209582.P13700674107724125092

`A208324(A066182(n+1))-A209581(n+1)`
-/

namespace A209582.P13700674107724125092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A209581 (n + 1)

end

end A209582.P13700674107724125092

/-!
# A209583: Triangle of coefficients of polynomials u(n,x) jointly generated with A209584; see the Formula section.

The programs for A209583, there is no canonical definition to state claims against.
-/

/-! ## A209583.P2893550034958611293

`A209999(n+1)-A234713(n)`
-/

namespace A209583.P2893550034958611293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) - A234713 n

end

end A209583.P2893550034958611293

/-! ## A209583.P11301578959792775233

`A209419(n+1)+A209999(n+1)-A209420(n+1)`
-/

namespace A209583.P11301578959792775233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (n + 1) + (A209999 (n + 1) - A209420 (n + 1))

end

end A209583.P11301578959792775233

/-! ## A209583.P2986730353971569410

`A209999(n+1)+A210235(n+1)-A209584(n+1)`
-/

namespace A209583.P2986730353971569410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) + (A210235 (n + 1) - A209584 (n + 1))

end

end A209583.P2986730353971569410

/-! ## A209583.P15044977529425820642

`A209753(n+1)+A210235(n+1)-A209999(n+1)`
-/

namespace A209583.P15044977529425820642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209753 (n + 1) + (A210235 (n + 1) - A209999 (n + 1))

end

end A209583.P15044977529425820642

/-! ## A209583.P1572525434144931579

`A209999(n+1)+A202390(A061579(n))-A209420(n+1)`
-/

namespace A209583.P1572525434144931579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) + (A202390 (A061579 n).toNat - A209420 (n + 1))

end

end A209583.P1572525434144931579

/-!
# A209584: Triangle of coefficients of polynomials v(n,x) jointly generated with A209583; see the Formula section.

The programs for A209584, there is no canonical definition to state claims against.
-/

/-! ## A209584.P15847217120418694122

`A234713(n)+A210235(n+1)`
-/

namespace A209584.P15847217120418694122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234713 n + A210235 (n + 1)

end

end A209584.P15847217120418694122

/-! ## A209584.P11147187684366149529

`2*A209999(n+1)-A209753(n+1)`
-/

namespace A209584.P11147187684366149529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209999 (n + 1) - A209753 (n + 1)

end

end A209584.P11147187684366149529

/-! ## A209584.P2868607394638720052

`A209420(n+1)+A210235(n+1)-A209419(n+1)`
-/

namespace A209584.P2868607394638720052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (n + 1) + (A210235 (n + 1) - A209419 (n + 1))

end

end A209584.P2868607394638720052

/-! ## A209584.P1463441807243533232

`A209999(n+1)+A210235(n+1)-A209583(n+1)`
-/

namespace A209584.P1463441807243533232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) + (A210235 (n + 1) - A209583 (n + 1))

end

end A209584.P1463441807243533232

/-! ## A209584.P17229392924026575572

`A209420(n+1)+A210235(n+1)-A202390(A061579(n))`
-/

namespace A209584.P17229392924026575572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (n + 1) + (A210235 (n + 1) - A202390 (A061579 n).toNat)

end

end A209584.P17229392924026575572

/-! ## A209584.P14030371407445525760

`A005843(A209999(n+1))-A209753(n+1)`
-/

namespace A209584.P14030371407445525760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209999 (n + 1)).toNat - A209753 (n + 1)

end

end A209584.P14030371407445525760

/-!
# A209585: Number of n X n 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209585, there is no canonical definition to state claims against.
-/

/-! ## A209585.P17125802000418084726

`A209593((n+1)²+n²)`
-/

namespace A209585.P17125802000418084726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 ((n + 1) ^ 2 + n ^ 2)

end

end A209585.P17125802000418084726

/-!
# A209586: Number of n X n 0..1 arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209586, there is no canonical definition to state claims against.
-/

/-! ## A209586.P4449664737313061593

`∏[6*a(n-2)]` with `a(0)=2, a(1)=8`
-/

namespace A209586.P4449664737313061593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209586.P4449664737313061593

/-! ## A209586.P5094651908954760441

`∏[a(n-2)/(1-5/6)]` with `a(0)=2, a(1)=8`
-/

namespace A209586.P5094651908954760441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 2) / (1 - (5 : ℚ) / 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209586.P5094651908954760441

/-! ## A209586.P13690874548986049730

`∏[a(n-2)+lcm(5, a(n-2))]` with `a(0)=2, a(1)=8`
-/

namespace A209586.P13690874548986049730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 2) + Nat.lcm 5 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209586.P13690874548986049730

/-! ## A209586.P6322974132022302228

`∏[Δ[2*A026549(n)]]`
-/

namespace A209586.P6322974132022302228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209586.P6322974132022302228

/-! ## A209586.P9051426170648681869

`∏[2*A164532(n+1)]`
-/

namespace A209586.P9051426170648681869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209586.P9051426170648681869

/-!
# A209587: Number of n X n 0..2 arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209587, there is no canonical definition to state claims against.
-/

/-! ## A209587.P13954974127249641296

`A209593(∑[n+2])`
-/

namespace A209587.P13954974127249641296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209587.P13954974127249641296

/-!
# A209588: Number of n X n 0..3 arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209588, there is no canonical definition to state claims against.
-/

/-! ## A209588.P2577628405773423783

`A209593(∑[n+3]+1)`
-/

namespace A209588.P2577628405773423783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209588.P2577628405773423783

/-!
# A209589: Number of n X n 0..4 arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209589, there is no canonical definition to state claims against.
-/

/-! ## A209589.P5271756633268728050

`A209593(A141214(n+1))`
-/

namespace A209589.P5271756633268728050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (A141214 (n + 1)).toNat

end

end A209589.P5271756633268728050

/-! ## A209589.P5705750323670450319

`A209593(eq[4, A058399(n+1)])`
-/

namespace A209589.P5705750323670450319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209589.P5705750323670450319

/-! ## A209589.P14427160392788991913

`A209593(eq[4, A200370(n+1)])`
-/

namespace A209589.P14427160392788991913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209589.P14427160392788991913

/-! ## A209589.P3816067583490645188

`A209593(lt[A209593(n+4), n])`
-/

namespace A209589.P3816067583490645188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A209589.P3816067583490645188

/-!
# A209590: Number of n X n 0..5 arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209590, there is no canonical definition to state claims against.
-/

/-! ## A209590.P2564195655182574810

`A209593(∑[n+2]+3*(n+3))`
-/

namespace A209590.P2564195655182574810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 3))

end

end A209590.P2564195655182574810

/-!
# A209593: T(n,k)=Number of n X n 0..k arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209593, there is no canonical definition to state claims against.
-/

/-! ## A209593.P9046008615379357220

`A344296(A282071(n)+A075122(n+1))`
-/

namespace A209593.P9046008615379357220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A282071 n + A075122 (n + 1)).toNat

end

end A209593.P9046008615379357220

/-! ## A209593.P4128399219014104887

`A043276(A005329(n))*A195248(n+1)`
-/

namespace A209593.P4128399219014104887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A005329 n).toNat * A195248 (n + 1)

end

end A209593.P4128399219014104887

/-!
# A209594: Number of 3 X 3 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209594, the canonical program `A209594.P12479259556779563625` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209594 has offset 1).

The definition of A209594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209594.P12479259556779563625

`(2*(n+1)+1)*(n+2)^6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209594

/-- `(2*(n+1)+1)*(n+2)^6` -/
def P12479259556779563625.Spec : Prop :=
  ∀ n, (P12479259556779563625.a n : ℤ) = A209594 (n + 1)

theorem P12479259556779563625.correct : P12479259556779563625.Spec := by
  intro n
  simp only [A209594, Nat.add_sub_cancel]

end A209594

/-! ## A209594.P6127602956366116110

`lcm(2*n+3, (n+2)^6)`
-/

namespace A209594.P6127602956366116110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 3) ((n + 2) ^ 6)

end

end A209594.P6127602956366116110

namespace A209594

/-- `lcm(2*n+3, (n+2)^6)` -/
def P6127602956366116110.Spec : Prop :=
  ∀ n, (P6127602956366116110.a n : ℤ) = A209594 (n + 1)

end A209594

/-! ## A209594.P18281379932007366947

`A240930(n+2)+A001015(n+2)`
-/

namespace A209594.P18281379932007366947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240930 (n + 2) + A001015 (n + 2)

end

end A209594.P18281379932007366947

namespace A209594

/-- `A240930(n+2)+A001015(n+2)` -/
def P18281379932007366947.Spec : Prop :=
  ∀ n, P18281379932007366947.a n = A209594 (n + 1)

theorem P18281379932007366947.correct : P18281379932007366947.Spec := by
  intro n
  simp only [A209594, Nat.add_sub_cancel, A209594.P18281379932007366947.a, A209594.P12479259556779563625.a, A001015, A001015.P16876498052081657174.a, A240930, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209594

/-! ## A209594.P5714411747859551757

`A000584(n+2)*A002939(n+2)/2`
-/

namespace A209594.P5714411747859551757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 (n + 2) * A002939 (n + 2) : ℚ) / 2

end

end A209594.P5714411747859551757

namespace A209594

/-- `A000584(n+2)*A002939(n+2)/2` -/
def P5714411747859551757.Spec : Prop :=
  ∀ n, P5714411747859551757.a n = (A209594 (n + 1) : ℚ)

theorem P5714411747859551757.correct : P5714411747859551757.Spec := by
  intro n
  simp only [A209594, Nat.add_sub_cancel, A209594.P5714411747859551757.a, A209594.P12479259556779563625.a, A000584, A000584.P5477385692209315495.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209594

/-! ## A209594.P9287854740209896434

`A200256(2*(n+1))`
-/

namespace A209594.P9287854740209896434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200256 (2 * (n + 1))

end

end A209594.P9287854740209896434

namespace A209594

/-- `A200256(2*(n+1))` -/
def P9287854740209896434.Spec : Prop :=
  ∀ n, P9287854740209896434.a n = A209594 (n + 1)

end A209594

/-! ## A209594.P3376430567491786099

`record[A200256(A133265(n))]`
-/

namespace A209594.P3376430567491786099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200256 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209594.P3376430567491786099

namespace A209594

/-- `record[A200256(A133265(n))]` -/
def P3376430567491786099.Spec : Prop :=
  ∀ n, P3376430567491786099.a n = A209594 (n + 1)

end A209594

/-! ## A209594.P12514601566626946565

`record[A200256(A014681(n+1))]`
-/

namespace A209594.P12514601566626946565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200256 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209594.P12514601566626946565

namespace A209594

/-- `record[A200256(A014681(n+1))]` -/
def P12514601566626946565.Spec : Prop :=
  ∀ n, P12514601566626946565.a n = A209594 (n + 1)

end A209594

/-! ## A209594.P12695930701502248014

`A200255(2*(n+1))²/A200254(2*(n+1))`
-/

namespace A209594.P12695930701502248014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200255 (2 * (n + 1)) ^ 2 : ℚ) / (A200254 (2 * (n + 1)) : ℚ)

end

end A209594.P12695930701502248014

namespace A209594

/-- `A200255(2*(n+1))²/A200254(2*(n+1))` -/
def P12695930701502248014.Spec : Prop :=
  ∀ n, P12695930701502248014.a n = (A209594 (n + 1) : ℚ)

end A209594

/-!
# A209595: Number of 4X4 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209595, the canonical program `A209595.P2384146450508934291` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209595 has offset 1).

The definition of A209595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209595.P2384146450508934291

`(n+2)^8*((n+2)*(2*(n+1)+1))²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209595

/-- `(n+2)^8*((n+2)*(2*(n+1)+1))²` -/
def P2384146450508934291.Spec : Prop :=
  ∀ n, (P2384146450508934291.a n : ℤ) = A209595 (n + 1)

theorem P2384146450508934291.correct : P2384146450508934291.Spec := by
  intro n
  simp only [A209595, Nat.add_sub_cancel]

end A209595

/-! ## A209595.P5490529954347689442

`A209594(n+1)²/(n+2)²`
-/

namespace A209595.P5490529954347689442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209594 (n + 1) ^ 2 : ℚ) / ((n + 2) ^ 2 : ℚ)

end

end A209595.P5490529954347689442

namespace A209595

/-- `A209594(n+1)²/(n+2)²` -/
def P5490529954347689442.Spec : Prop :=
  ∀ n, P5490529954347689442.a n = (A209595 (n + 1) : ℚ)

end A209595

/-! ## A209595.P4334717606810283770

`(A000027(2*n+3)*A000584(n+2))²`
-/

namespace A209595.P4334717606810283770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * n + 3) * A000584 (n + 2)) ^ 2

end

end A209595.P4334717606810283770

namespace A209595

/-- `(A000027(2*n+3)*A000584(n+2))²` -/
def P4334717606810283770.Spec : Prop :=
  ∀ n, P4334717606810283770.a n = A209595 (n + 1)

theorem P4334717606810283770.correct : P4334717606810283770.Spec := by
  intro n
  simp only [A209595, Nat.add_sub_cancel, A209595.P4334717606810283770.a, A209595.P2384146450508934291.a, A000027, A000027.P10331202704469894836.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209595

/-! ## A209595.P11668362436096277881

`A200255(2*(n+1))²`
-/

namespace A209595.P11668362436096277881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200255 (2 * (n + 1)) ^ 2

end

end A209595.P11668362436096277881

namespace A209595

/-- `A200255(2*(n+1))²` -/
def P11668362436096277881.Spec : Prop :=
  ∀ n, P11668362436096277881.a n = A209595 (n + 1)

end A209595

/-!
# A209596: Number of 5X5 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209596, the canonical program `A209596.P524280004018710604` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209596 has offset 1).

The definition of A209596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209596.P524280004018710604

`(n+2)^9*((n+2)*(2*(n+1)+1))^4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209596

/-- `(n+2)^9*((n+2)*(2*(n+1)+1))^4` -/
def P524280004018710604.Spec : Prop :=
  ∀ n, (P524280004018710604.a n : ℤ) = A209596 (n + 1)

theorem P524280004018710604.correct : P524280004018710604.Spec := by
  intro n
  simp only [A209596, Nat.add_sub_cancel]

end A209596

/-!
# A209597: Number of 6X6 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209597, the canonical program `A209597.P12941975493686237374` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209597 has offset 1).

The definition of A209597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209597.P12941975493686237374

`A200253(2*n+2)^6`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209597

/-- `A200253(2*n+2)^6` -/
def P12941975493686237374.Spec : Prop :=
  ∀ n, P12941975493686237374.a n = A209597 (n + 1)

theorem P12941975493686237374.correct : P12941975493686237374.Spec := by
  intro n
  simp only [A209597, Nat.add_sub_cancel]

end A209597

/-!
# A209598: Number of 7X7 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

The programs for A209598, there is no canonical definition to state claims against.
-/

/-! ## A209598.P17090256213276508266

`A209593(A000124(n+6)+6)`
-/

namespace A209598.P17090256213276508266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209593 (A000124 (n + 6) + 6).toNat

end

end A209598.P17090256213276508266

/-!
# A209599: Triangle T(n,k), read by rows, given by (2, -1/2, -1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1/2, -1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A209599, the canonical program `A209599.P17861906589659458596` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209599 has offset 0).

The definition of A209599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209599.P17861906589659458596

`T(n-1,k)+T(n-2,k)+T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209599

/-- `T(n-1,k)+T(n-2,k)+T(n-2,k-1)` -/
def P17861906589659458596.Spec : Prop :=
  ∀ n, (P17861906589659458596.a n : ℤ) = A209599 n

theorem P17861906589659458596.correct : P17861906589659458596.Spec := by
  intro n
  simp only [A209599]

end A209599

/-! ## A209599.P10011776792882895314

`A236076(A061579(n))`
-/

namespace A209599.P10011776792882895314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A061579 n).toNat

end

end A209599.P10011776792882895314

namespace A209599

/-- `A236076(A061579(n))` -/
def P10011776792882895314.Spec : Prop :=
  ∀ n, P10011776792882895314.a n = A209599 n

end A209599

/-! ## A209599.P12673544864909496512

`A210869(A064789(n+1))`
-/

namespace A209599.P12673544864909496512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210869 (A064789 (n + 1)).toNat

end

end A209599.P12673544864909496512

namespace A209599

/-- `A210869(A064789(n+1))` -/
def P12673544864909496512.Spec : Prop :=
  ∀ n, P12673544864909496512.a n = A209599 n

end A209599

/-! ## A209599.P7000472859407811445

`A236076(A038722(n+1)-1)`
-/

namespace A209599.P7000472859407811445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A038722 (n + 1) - 1).toNat

end

end A209599.P7000472859407811445

namespace A209599

/-- `A236076(A038722(n+1)-1)` -/
def P7000472859407811445.Spec : Prop :=
  ∀ n, P7000472859407811445.a n = A209599 n

end A209599

/-! ## A209599.P1272012280966934129

`A236076(A093995(n+1)-(n+1))`
-/

namespace A209599.P1272012280966934129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A209599.P1272012280966934129

namespace A209599

/-- `A236076(A093995(n+1)-(n+1))` -/
def P1272012280966934129.Spec : Prop :=
  ∀ n, P1272012280966934129.a n = A209599 n

end A209599

/-! ## A209599.P8356225324832686592

`A236076(A002024(n+1)²-n-1)`
-/

namespace A209599.P8356225324832686592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A002024 (n + 1) ^ 2 - (n : ℤ) - 1).toNat

end

end A209599.P8356225324832686592

namespace A209599

/-- `A236076(A002024(n+1)²-n-1)` -/
def P8356225324832686592.Spec : Prop :=
  ∀ n, P8356225324832686592.a n = A209599 n

end A209599

/-! ## A209599.P15949952529734624921

`A236076((n²+n)%A014132(n+1))`
-/

namespace A209599.P15949952529734624921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (Int.tmod (n ^ 2 + n : ℤ) (A014132 (n + 1))).toNat

end

end A209599.P15949952529734624921

namespace A209599

/-- `A236076((n²+n)%A014132(n+1))` -/
def P15949952529734624921.Spec : Prop :=
  ∀ n, P15949952529734624921.a n = A209599 n

end A209599

/-! ## A209599.P2889485237922294798

`A236076(A000194(Δ[n²])²-(n+1))`
-/

namespace A209599.P2889485237922294798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A000194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 - (n + 1 : ℤ)).toNat

end

end A209599.P2889485237922294798

namespace A209599

/-- `A236076(A000194(Δ[n²])²-(n+1))` -/
def P2889485237922294798.Spec : Prop :=
  ∀ n, P2889485237922294798.a n = A209599 n

end A209599

