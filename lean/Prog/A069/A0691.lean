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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A069100: n-th n-digit prime number.

The programs for A069100, there is no canonical definition to state claims against.
-/

/-! ## A069100.P5818543532210956262

`A178500(n)+A107108(n+1)`
-/

namespace A069100.P5818543532210956262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + A107108 (n + 1)

end

end A069100.P5818543532210956262

/-! ## A069100.P16147003527346900304

`A011557(n)+A000265(A107108(n+1))`
-/

namespace A069100.P16147003527346900304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A000265 (A107108 (n + 1)).toNat

end

end A069100.P16147003527346900304

/-! ## A069100.P16086700160950140520

`A107108(n+1)+A011557(n)-A000007(n)`
-/

namespace A069100.P16086700160950140520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107108 (n + 1) + (A011557 n - A000007 n)

end

end A069100.P16086700160950140520

/-! ## A069100.P8573274909433284853

`A073914(∑[n]+n)`
-/

namespace A069100.P8573274909433284853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A069100.P8573274909433284853

/-! ## A069100.P14820243244104438110

`A093178(A107108(n+1))+A017934(A005843(n))`
-/

namespace A069100.P14820243244104438110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A107108 (n + 1)).toNat + A017934 (A005843 n).toNat

end

end A069100.P14820243244104438110

/-! ## A069100.P8336557942497798948

`A133265(A107108(n+1))+A002283(n)`
-/

namespace A069100.P8336557942497798948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A107108 (n + 1)).toNat + A002283 n

end

end A069100.P8336557942497798948

/-!
# A069101: a(1) = 2; a(2) = 2; a(n) = Prime[a(n-1) + a(n-2)] if n > 2.

The programs for A069101, there is no canonical definition to state claims against.
-/

/-! ## A069101.P8530610785892229812

`A069103(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A069101.P8530610785892229812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A069103 (n + 2) - a (n - 1)

end

end A069101.P8530610785892229812

/-! ## A069101.P8829909892652969884

`A000040(a(n-1)+a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A069101.P8829909892652969884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A000040 (a (n - 1) + a (n - 2)).toNat

end

end A069101.P8829909892652969884

/-! ## A069101.P2054150583937328557

`A006005(a(n-1)+a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A069101.P2054150583937328557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A006005 (a (n - 1) + a (n - 2)).toNat

end

end A069101.P2054150583937328557

/-! ## A069101.P664788459172909592

`abs(A273960(a(n-1)+a(n-2)))` with `a(0)=2, a(1)=2`
-/

namespace A069101.P664788459172909592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  |A273960 (a (n - 1) + a (n - 2)).toNat|

end

end A069101.P664788459172909592

/-!
# A069102: a(1) = 1; a(2) = 1; a(n) = Prime[n-1] + Prime[n-2] if n > 2.

The programs for A069102, the canonical program `A069102.P15863805427309956499` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069102 has offset 1).

The definition of A069102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069102.P11321913648219581195

`A164653(1-char[1]+n)`
-/

namespace A069102.P11321913648219581195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A069102.P11321913648219581195

namespace A069102

/-- `A164653(1-char[1]+n)` -/
def P11321913648219581195.Spec : Prop :=
  ∀ n, P11321913648219581195.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P14162556900208551608

`A164653(n+1)^floor(atan(n))`
-/

namespace A069102.P14162556900208551608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164653 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A069102.P14162556900208551608

namespace A069102

/-- `A164653(n+1)^floor(atan(n))` -/
def P14162556900208551608.Spec : Prop :=
  ∀ n, P14162556900208551608.a n = (A069102 (n + 1) : ℚ)

end A069102

/-! ## A069102.P8150464447714775090

`A076273(n)-C(2, n²)+1`
-/

namespace A069102.P8150464447714775090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n - (Nat.choose 2 (n ^ 2) : ℤ) + 1

end

end A069102.P8150464447714775090

namespace A069102

/-- `A076273(n)-C(2, n²)+1` -/
def P8150464447714775090.Spec : Prop :=
  ∀ n, P8150464447714775090.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P925221078453196377

`A001043(n-a(floor(acot(n))))` with `a(0)=1, a(1)=1`
-/

namespace A069102.P925221078453196377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001043 ((n : ℤ) - a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A069102.P925221078453196377

namespace A069102

/-- `A001043(n-a(floor(acot(n))))` -/
def P925221078453196377.Spec : Prop :=
  ∀ n, P925221078453196377.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P16877980748418332505

`A076273(n-char[1])+floor(atan(n))`
-/

namespace A069102.P16877980748418332505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n - (if ∃ j, f1 j = n then 1 else 0)) + ⌊Real.arctan (n : ℝ)⌋

end

end A069102.P16877980748418332505

namespace A069102

/-- `A076273(n-char[1])+floor(atan(n))` -/
def P16877980748418332505.Spec : Prop :=
  ∀ n, P16877980748418332505.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P12554713142972234544

`A076273(n)-A134824(n)`
-/

namespace A069102.P12554713142972234544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n - A134824 n

end

end A069102.P12554713142972234544

namespace A069102

/-- `A076273(n)-A134824(n)` -/
def P12554713142972234544.Spec : Prop :=
  ∀ n, P12554713142972234544.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P2947862446937523415

`A164653(n+1)%A014220(n)`
-/

namespace A069102.P2947862446937523415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164653 (n + 1)) (A014220 n)

end

end A069102.P2947862446937523415

namespace A069102

/-- `A164653(n+1)%A014220(n)` -/
def P2947862446937523415.Spec : Prop :=
  ∀ n, P2947862446937523415.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P15863805427309956499

`gcd(A130706(n), A164653(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069102

/-- `gcd(A130706(n), A164653(n+1))` -/
def P15863805427309956499.Spec : Prop :=
  ∀ n, (P15863805427309956499.a n : ℤ) = A069102 (n + 1)

theorem P15863805427309956499.correct : P15863805427309956499.Spec := by
  intro n
  simp only [A069102, Nat.add_sub_cancel]

end A069102

/-! ## A069102.P11666270564067125284

`and(A164653(n+1), A260196(n))`
-/

namespace A069102.P11666270564067125284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164653 (n + 1)) (A260196 n)

end

end A069102.P11666270564067125284

namespace A069102

/-- `and(A164653(n+1), A260196(n))` -/
def P11666270564067125284.Spec : Prop :=
  ∀ n, P11666270564067125284.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P7330085836676953352

`A171526(A164653(n+1))`
-/

namespace A069102.P7330085836676953352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A164653 (n + 1)).toNat

end

end A069102.P7330085836676953352

namespace A069102

/-- `A171526(A164653(n+1))` -/
def P7330085836676953352.Spec : Prop :=
  ∀ n, P7330085836676953352.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P1609229567458595603

`and(A164653(n+1), A290199(n))`
-/

namespace A069102.P1609229567458595603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164653 (n + 1)) (A290199 n)

end

end A069102.P1609229567458595603

namespace A069102

/-- `and(A164653(n+1), A290199(n))` -/
def P1609229567458595603.Spec : Prop :=
  ∀ n, P1609229567458595603.a n = A069102 (n + 1)

end A069102

/-! ## A069102.P11729708992118617649

`and(A164653(n+1), A267938(n))`
-/

namespace A069102.P11729708992118617649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164653 (n + 1)) (A267938 n)

end

end A069102.P11729708992118617649

namespace A069102

/-- `and(A164653(n+1), A267938(n))` -/
def P11729708992118617649.Spec : Prop :=
  ∀ n, P11729708992118617649.a n = A069102 (n + 1)

end A069102

/-!
# A069103: a(1) = 1; a(2) = 1; a(n) = prime(a(n-1)) + prime(a(n-2)) if n > 2.

The programs for A069103, there is no canonical definition to state claims against.
-/

/-! ## A069103.P13910785219173557923

`A000040(a(n-1))+A000040(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A069103.P13910785219173557923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 1)).toNat + A000040 (a (n - 2)).toNat

end

end A069103.P13910785219173557923

/-! ## A069103.P4752674775683988014

`A000720(A069101(n+1))`
-/

namespace A069103.P4752674775683988014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069101 (n + 1)).toNat

end

end A069103.P4752674775683988014

/-! ## A069103.P10895959404572180113

`A061395(p?[A069101(n+1)])`
-/

namespace A069103.P10895959404572180113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A069103.P10895959404572180113

/-! ## A069103.P14460482396665110132

`∑{d}[A069101(n+1), A061395(#)]`
-/

namespace A069103.P14460482396665110132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A069103.P14460482396665110132

/-!
# A069104: Numbers m such that m divides Fibonacci(m+1).

The programs for A069104, there is no canonical definition to state claims against.
-/

/-! ## A069104.P2035723450147334101

`A100993(n+1)-1`
-/

namespace A069104.P2035723450147334101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100993 (n + 1) - 1

end

end A069104.P2035723450147334101

/-! ## A069104.P7359800858085763185

`∩[A074215(n+1), A140971(n+1)]`
-/

namespace A069104.P7359800858085763185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069104.P7359800858085763185

/-! ## A069104.P2860844860766084047

`record[gcd(n+1, A002726(n+1))]`
-/

namespace A069104.P2860844860766084047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002726 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069104.P2860844860766084047

/-! ## A069104.P7108002021189886798

`A023443(A100993(n+1))`
-/

namespace A069104.P7108002021189886798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100993 (n + 1)).toNat

end

end A069104.P7108002021189886798

/-! ## A069104.P15689620190439256428

`eq[1, A103495(a(A002726(n)))]` with `a(0)=2`
-/

namespace A069104.P15689620190439256428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A103495 (f2 (A002726 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069104.P15689620190439256428

/-! ## A069104.P6247847962991000450

`eq[2, A006375(a(A002726(n))²)]` with `a(0)=1`
-/

namespace A069104.P6247847962991000450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A006375 (f2 (A002726 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069104.P6247847962991000450

/-! ## A069104.P3924535588447934124

`record[A260228(n+1)/A260222(n+1)]`
-/

namespace A069104.P3924535588447934124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260228 (n + 1) : ℚ) / (A260222 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069104.P3924535588447934124

/-! ## A069104.P5577590840949239738

`eq[1, A023172(A002726(n+1)+1)]+1`
-/

namespace A069104.P5577590840949239738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (A002726 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069104.P5577590840949239738

/-! ## A069104.P17647003913179321227

`record[(1-A002726(n+1))*A000027(n+1)]`
-/

namespace A069104.P17647003913179321227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002726 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069104.P17647003913179321227

/-! ## A069104.P11503343700377497851

`eq[1, A297573(n+1)]+1`
-/

namespace A069104.P11503343700377497851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069104.P11503343700377497851

/-!
# A069105: 1/n has period 3 in base 10.

The programs for A069105, there is no canonical definition to state claims against.
-/

/-! ## A069105.P4602925633467879298

`eq[3, A007732(n+1)]+1`
-/

namespace A069105.P4602925633467879298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069105.P4602925633467879298

/-! ## A069105.P2659690377703781151

`eq[3, A051626(n+1)]+1`
-/

namespace A069105.P2659690377703781151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069105.P2659690377703781151

/-! ## A069105.P8794350944680140184

`eq[3, A007732(A028310(n))]`
-/

namespace A069105.P8794350944680140184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069105.P8794350944680140184

/-! ## A069105.P9088169845791303191

`A020725(eq[3, A007732(n+1)])`
-/

namespace A069105.P9088169845791303191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069105.P9088169845791303191

/-! ## A069105.P7768804582858490791

`A020725(eq[3, A051626(n+1)])`
-/

namespace A069105.P7768804582858490791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069105.P7768804582858490791

/-! ## A069105.P10956455021441501944

`A065475(eq[3, A007732(n+1)])`
-/

namespace A069105.P10956455021441501944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069105.P10956455021441501944

/-! ## A069105.P13643559347718454163

`A065475(eq[3, A051626(n+1)])`
-/

namespace A069105.P13643559347718454163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069105.P13643559347718454163

/-! ## A069105.P2037796757770592827

`eq[3, A007732(A004277(n))]`
-/

namespace A069105.P2037796757770592827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069105.P2037796757770592827

/-! ## A069105.P12855927721647801228

`eq[3, A007732(A257088(n))]`
-/

namespace A069105.P12855927721647801228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069105.P12855927721647801228

/-!
# A069106: Composite numbers k such that k divides F(k-1) where F(j) are the Fibonacci numbers.

The programs for A069106, there is no canonical definition to state claims against.
-/

/-! ## A069106.P3192989798294443967

`∪[A094401(n+1), A094410(n+1)]`
-/

namespace A069106.P3192989798294443967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069106.P3192989798294443967

/-!
# A069107: Composite numbers k that divide Fibonacci(k+1).

The programs for A069107, there is no canonical definition to state claims against.
-/

/-! ## A069107.P3458240478093963788

`filter[A182554(n+1), A356982(#)]`
-/

namespace A069107.P3458240478093963788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356982 (f1 j).toNat = 1) n)

end

end A069107.P3458240478093963788

/-! ## A069107.P3740914289894420851

`A060791(∪[A094395(n+1), A094412(n+1)])`
-/

namespace A069107.P3740914289894420851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094412 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069107.P3740914289894420851

/-!
# A069108: Primes of the form F(k)+k where F(k) is the k-th Fibonacci number.

The programs for A069108, there is no canonical definition to state claims against.
-/

/-! ## A069108.P13960326095052064856

`A002062(A175404(n+1))`
-/

namespace A069108.P13960326095052064856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (A175404 (n + 1)).toNat

end

end A069108.P13960326095052064856

/-! ## A069108.P15735052828977637721

`A000045(A175404(n+1))+A193592(A116827(n+1))+n`
-/

namespace A069108.P15735052828977637721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A175404 (n + 1)).toNat + (A193592 (A116827 (n + 1)).toNat + (n : ℤ))

end

end A069108.P15735052828977637721

/-! ## A069108.P18010076738383626543

`p?[A002062(n)]`
-/

namespace A069108.P18010076738383626543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069108.P18010076738383626543

/-!
# A069109: Primes of the form F(k)-k where F(k) is the k-th Fibonacci number.

The programs for A069109, there is no canonical definition to state claims against.
-/

/-! ## A069109.P18167192174468066375

`A065220(A270821(n+1))`
-/

namespace A069109.P18167192174468066375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (A270821 (n + 1)).toNat

end

end A069109.P18167192174468066375

/-!
# A069110: Squarefree part of F(n) (the Fibonacci numbers): the smallest number such that a(n)*F(n) is a square.

The programs for A069110, there is no canonical definition to state claims against.
-/

/-! ## A069110.P5284607033603771306

`A007913(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A069110.P5284607033603771306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat

end

end A069110.P5284607033603771306

/-! ## A069110.P2178310477348219729

`A007913(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A069110.P2178310477348219729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat

end

end A069110.P2178310477348219729

/-! ## A069110.P16411455840630647892

`A007913(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A069110.P16411455840630647892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069110.P16411455840630647892

/-! ## A069110.P4251468582265528136

`A007913(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A069110.P4251468582265528136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069110.P4251468582265528136

/-! ## A069110.P512140736475952653

`A007913(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8`
-/

namespace A069110.P512140736475952653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 8] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069110.P512140736475952653

/-!
# A069111: Squarefree part of 2^n+1 : the smallest number such that a(n)*(2^n+1) is a square.

The programs for A069111, the canonical program `A069111.P12631494153249817284` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069111 has offset 0).

The definition of A069111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069111.P12631494153249817284

`A007913(2^n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069111

/-- `A007913(2^n+1)` -/
def P12631494153249817284.Spec : Prop :=
  ∀ n, P12631494153249817284.a n = A069111 n

theorem P12631494153249817284.correct : P12631494153249817284.Spec := by
  intro n
  simp only [A069111]

end A069111

/-! ## A069111.P8149587738153059643

`ceil(acot(n))*A007913(or(1, 2^n))`
-/

namespace A069111.P8149587738153059643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A007913 (Nat.lor 1 (2 ^ n))

end

end A069111.P8149587738153059643

namespace A069111

/-- `ceil(acot(n))*A007913(or(1, 2^n))` -/
def P8149587738153059643.Spec : Prop :=
  ∀ n, P8149587738153059643.a n = A069111 n

end A069111

/-! ## A069111.P343956882791614489

`(2^n+1)/A008833(2^n+1)`
-/

namespace A069111.P343956882791614489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℚ) / (A008833 (2 ^ n + 1) : ℚ)

end

end A069111.P343956882791614489

namespace A069111

/-- `(2^n+1)/A008833(2^n+1)` -/
def P343956882791614489.Spec : Prop :=
  ∀ n, P343956882791614489.a n = (A069111 n : ℚ)

end A069111

/-! ## A069111.P4656605460013092840

`∏{p}[A007913(A000051(n)), #]`
-/

namespace A069111.P4656605460013092840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A069111.P4656605460013092840

namespace A069111

/-- `∏{p}[A007913(A000051(n)), #]` -/
def P4656605460013092840.Spec : Prop :=
  ∀ n, (P4656605460013092840.a n : ℤ) = A069111 n

end A069111

/-! ## A069111.P16144748417593851167

`∏{p}[A007913(A000079(n)+1), #]`
-/

namespace A069111.P16144748417593851167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000079 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A069111.P16144748417593851167

namespace A069111

/-- `∏{p}[A007913(A000079(n)+1), #]` -/
def P16144748417593851167.Spec : Prop :=
  ∀ n, (P16144748417593851167.a n : ℤ) = A069111 n

end A069111

/-!
# A069112: Squarefree part of 2^n-1 : the smallest number such that a(n)*(2^n-1) is a square.

The programs for A069112, the canonical program `A069112.P18352756249834380075` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069112 has offset 1).

The definition of A069112 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069112.P18352756249834380075

`A007913(A000225(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069112

/-- `A007913(A000225(n+1))` -/
def P18352756249834380075.Spec : Prop :=
  ∀ n, P18352756249834380075.a n = A069112 (n + 1)

theorem P18352756249834380075.correct : P18352756249834380075.Spec := by
  intro n
  simp only [A069112, Nat.add_sub_cancel]

end A069112

/-! ## A069112.P118574728692497422

`A126646(n)/A272334(n+1)²`
-/

namespace A069112.P118574728692497422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A272334 (n + 1) ^ 2 : ℚ)

end

end A069112.P118574728692497422

namespace A069112

/-- `A126646(n)/A272334(n+1)²` -/
def P118574728692497422.Spec : Prop :=
  ∀ n, P118574728692497422.a n = (A069112 (n + 1) : ℚ)

end A069112

/-! ## A069112.P14425336439559798961

`∑[A000079(n)]/A272334(n+1)²`
-/

namespace A069112.P14425336439559798961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A272334 (n + 1) ^ 2 : ℚ)

end

end A069112.P14425336439559798961

namespace A069112

/-- `∑[A000079(n)]/A272334(n+1)²` -/
def P14425336439559798961.Spec : Prop :=
  ∀ n, P14425336439559798961.a n = (A069112 (n + 1) : ℚ)

end A069112

/-! ## A069112.P1835902893343612240

`A000225(n+1)/A272334(n+1)²`
-/

namespace A069112.P1835902893343612240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (A272334 (n + 1) ^ 2 : ℚ)

end

end A069112.P1835902893343612240

namespace A069112

/-- `A000225(n+1)/A272334(n+1)²` -/
def P1835902893343612240.Spec : Prop :=
  ∀ n, P1835902893343612240.a n = (A069112 (n + 1) : ℚ)

end A069112

/-! ## A069112.P1782923190189345693

`A090633(n+1)/A007913(A014491(n+1))`
-/

namespace A069112.P1782923190189345693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090633 (n + 1) : ℚ) / (A007913 (A014491 (n + 1)).toNat : ℚ)

end

end A069112.P1782923190189345693

namespace A069112

/-- `A090633(n+1)/A007913(A014491(n+1))` -/
def P1782923190189345693.Spec : Prop :=
  ∀ n, P1782923190189345693.a n = (A069112 (n + 1) : ℚ)

end A069112

/-! ## A069112.P4310376041321054200

`A090633(n+1)/A336643(A087966(n+1))`
-/

namespace A069112.P4310376041321054200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090633 (n + 1) : ℚ) / (A336643 (A087966 (n + 1)).toNat : ℚ)

end

end A069112.P4310376041321054200

namespace A069112

/-- `A090633(n+1)/A336643(A087966(n+1))` -/
def P4310376041321054200.Spec : Prop :=
  ∀ n, P4310376041321054200.a n = (A069112 (n + 1) : ℚ)

end A069112

/-! ## A069112.P8141785409161727109

`A090633(n+1)/gcd(A007913(n+1), A090633(n+1))`
-/

namespace A069112.P8141785409161727109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090633 (n + 1) : ℚ) / (Int.gcd (A007913 (n + 1)) (A090633 (n + 1)) : ℚ)

end

end A069112.P8141785409161727109

namespace A069112

/-- `A090633(n+1)/gcd(A007913(n+1), A090633(n+1))` -/
def P8141785409161727109.Spec : Prop :=
  ∀ n, P8141785409161727109.a n = (A069112 (n + 1) : ℚ)

end A069112

/-!
# A069113: Squarefree part of C(2n,n), the central binomial numbers: the smallest number such that a(n)*C(2n,n) is a square.

The programs for A069113, the canonical program `A069113.P8105437494189770969` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069113 has offset 0).

The definition of A069113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069113.P8105437494189770969

`A007913(A000984(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069113

/-- `A007913(A000984(n))` -/
def P8105437494189770969.Spec : Prop :=
  ∀ n, P8105437494189770969.a n = A069113 n

theorem P8105437494189770969.correct : P8105437494189770969.Spec := by
  intro n
  simp only [A069113]

end A069113

/-! ## A069113.P15311436820994486471

`A056058(round(sqrt(n²+1))+n)`
-/

namespace A069113.P15311436820994486471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056058 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (n : ℤ)).toNat

end

end A069113.P15311436820994486471

namespace A069113

/-- `A056058(round(sqrt(n²+1))+n)` -/
def P15311436820994486471.Spec : Prop :=
  ∀ n, P15311436820994486471.a n = A069113 n

end A069113

/-! ## A069113.P803256318900006923

`A055204(A004277(n))`
-/

namespace A069113.P803256318900006923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A004277 n).toNat

end

end A069113.P803256318900006923

namespace A069113

/-- `A055204(A004277(n))` -/
def P803256318900006923.Spec : Prop :=
  ∀ n, P803256318900006923.a n = A069113 n

end A069113

/-! ## A069113.P15528074884254014106

`A055204(A004275(n+1))`
-/

namespace A069113.P15528074884254014106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A004275 (n + 1)).toNat

end

end A069113.P15528074884254014106

namespace A069113

/-- `A055204(A004275(n+1))` -/
def P15528074884254014106.Spec : Prop :=
  ∀ n, P15528074884254014106.a n = A069113 n

end A069113

/-! ## A069113.P10462358761261643649

`A055204(A004273(n)+1)`
-/

namespace A069113.P10462358761261643649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A004273 n + 1).toNat

end

end A069113.P10462358761261643649

namespace A069113

/-- `A055204(A004273(n)+1)` -/
def P10462358761261643649.Spec : Prop :=
  ∀ n, P10462358761261643649.a n = A069113 n

end A069113

/-! ## A069113.P1408904258513940857

`A055204(A163985(n)+1)`
-/

namespace A069113.P1408904258513940857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A163985 n + 1).toNat

end

end A069113.P1408904258513940857

namespace A069113

/-- `A055204(A163985(n)+1)` -/
def P1408904258513940857.Spec : Prop :=
  ∀ n, P1408904258513940857.a n = A069113 n

end A069113

/-! ## A069113.P14576132889664466580

`A055204(A316571(n+1))`
-/

namespace A069113.P14576132889664466580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A316571 (n + 1)).toNat

end

end A069113.P14576132889664466580

namespace A069113

/-- `A055204(A316571(n+1))` -/
def P14576132889664466580.Spec : Prop :=
  ∀ n, P14576132889664466580.a n = A069113 n

end A069113

/-! ## A069113.P7100926544690662707

`A055204(A028310(2*n))`
-/

namespace A069113.P7100926544690662707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A028310 (2 * n)).toNat

end

end A069113.P7100926544690662707

namespace A069113

/-- `A055204(A028310(2*n))` -/
def P7100926544690662707.Spec : Prop :=
  ∀ n, P7100926544690662707.a n = A069113 n

end A069113

/-! ## A069113.P1231233964838798823

`A055204(A065033(4*n))`
-/

namespace A069113.P1231233964838798823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A065033 (4 * n)).toNat

end

end A069113.P1231233964838798823

namespace A069113

/-- `A055204(A065033(4*n))` -/
def P1231233964838798823.Spec : Prop :=
  ∀ n, P1231233964838798823.a n = A069113 n

end A069113

/-! ## A069113.P8734953756048096595

`A055204(A028310(n)+n)`
-/

namespace A069113.P8734953756048096595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A028310 n + (n : ℤ)).toNat

end

end A069113.P8734953756048096595

namespace A069113

/-- `A055204(A028310(n)+n)` -/
def P8734953756048096595.Spec : Prop :=
  ∀ n, P8734953756048096595.a n = A069113 n

end A069113

/-! ## A069113.P9402557960858854031

`A055204(A008486(n)-n)`
-/

namespace A069113.P9402557960858854031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A008486 n - (n : ℤ)).toNat

end

end A069113.P9402557960858854031

namespace A069113

/-- `A055204(A008486(n)-n)` -/
def P9402557960858854031.Spec : Prop :=
  ∀ n, P9402557960858854031.a n = A069113 n

end A069113

/-! ## A069113.P4683385114179320086

`A055204(A000007(n)+2*n)`
-/

namespace A069113.P4683385114179320086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A000007 n + (2 * n : ℤ)).toNat

end

end A069113.P4683385114179320086

namespace A069113

/-- `A055204(A000007(n)+2*n)` -/
def P4683385114179320086.Spec : Prop :=
  ∀ n, P4683385114179320086.a n = A069113 n

end A069113

/-! ## A069113.P13025514402487117476

`A055204(A000007(n)+n+n)`
-/

namespace A069113.P13025514402487117476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A069113.P13025514402487117476

namespace A069113

/-- `A055204(A000007(n)+n+n)` -/
def P13025514402487117476.Spec : Prop :=
  ∀ n, P13025514402487117476.a n = A069113 n

end A069113

/-! ## A069113.P14352279952859007481

`A055204(gcd(n, A003418(n))+n)`
-/

namespace A069113.P14352279952859007481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (Int.gcd (n : ℤ) (A003418 n) + n)

end

end A069113.P14352279952859007481

namespace A069113

/-- `A055204(gcd(n, A003418(n))+n)` -/
def P14352279952859007481.Spec : Prop :=
  ∀ n, P14352279952859007481.a n = A069113 n

end A069113

/-! ## A069113.P6129446415395986022

`A055204(A010052(2*n+1)+2*n)`
-/

namespace A069113.P6129446415395986022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (A010052 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A069113.P6129446415395986022

namespace A069113

/-- `A055204(A010052(2*n+1)+2*n)` -/
def P6129446415395986022.Spec : Prop :=
  ∀ n, P6129446415395986022.a n = A069113 n

end A069113

/-! ## A069113.P12474532779132629895

`A000984(n)/A292442(n)`
-/

namespace A069113.P12474532779132629895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A292442 n : ℚ)

end

end A069113.P12474532779132629895

namespace A069113

/-- `A000984(n)/A292442(n)` -/
def P12474532779132629895.Spec : Prop :=
  ∀ n, P12474532779132629895.a n = (A069113 n : ℚ)

end A069113

/-! ## A069113.P14201912200529375355

`A000984(n)/A292441(n)²`
-/

namespace A069113.P14201912200529375355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A292441 n ^ 2 : ℚ)

end

end A069113.P14201912200529375355

namespace A069113

/-- `A000984(n)/A292441(n)²` -/
def P14201912200529375355.Spec : Prop :=
  ∀ n, P14201912200529375355.a n = (A069113 n : ℚ)

end A069113

/-! ## A069113.P7250429806574981972

`A126869(2*n)/A292442(n)`
-/

namespace A069113.P7250429806574981972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 (2 * n) : ℚ) / (A292442 n : ℚ)

end

end A069113.P7250429806574981972

namespace A069113

/-- `A126869(2*n)/A292442(n)` -/
def P7250429806574981972.Spec : Prop :=
  ∀ n, P7250429806574981972.a n = (A069113 n : ℚ)

end A069113

/-!
# A069114: Squarefree part of prime(n)-1 : the smallest number such that a(n)*(prime(n)-1) is a square.

The programs for A069114, the canonical program `A069114.P11265781668908461192` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069114 has offset 1).

The definition of A069114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069114.P11265781668908461192

`A007913(A006093(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069114

/-- `A007913(A006093(n+1))` -/
def P11265781668908461192.Spec : Prop :=
  ∀ n, P11265781668908461192.a n = A069114 (n + 1)

theorem P11265781668908461192.correct : P11265781668908461192.Spec := by
  intro n
  simp only [A069114, Nat.add_sub_cancel]

end A069114

/-! ## A069114.P10247713105705048497

`A007913(Δ[A007504(n)]-1)`
-/

namespace A069114.P10247713105705048497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n - 1).toNat

end

end A069114.P10247713105705048497

namespace A069114

/-- `A007913(Δ[A007504(n)]-1)` -/
def P10247713105705048497.Spec : Prop :=
  ∀ n, P10247713105705048497.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P10663294073402440649

`A007913(record[A000010(n+1)])`
-/

namespace A069114.P10663294073402440649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069114.P10663294073402440649

namespace A069114

/-- `A007913(record[A000010(n+1)])` -/
def P10663294073402440649.Spec : Prop :=
  ∀ n, P10663294073402440649.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P10925606062892355059

`A007913(record[A003958(n+1)])`
-/

namespace A069114.P10925606062892355059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069114.P10925606062892355059

namespace A069114

/-- `A007913(record[A003958(n+1)])` -/
def P10925606062892355059.Spec : Prop :=
  ∀ n, P10925606062892355059.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P3519409022334112255

`A007913(record[A192133(n+1)])`
-/

namespace A069114.P3519409022334112255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069114.P3519409022334112255

namespace A069114

/-- `A007913(record[A192133(n+1)])` -/
def P3519409022334112255.Spec : Prop :=
  ∀ n, P3519409022334112255.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P7798063901544456468

`A007913(A040976(n+1)+1)`
-/

namespace A069114.P7798063901544456468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A040976 (n + 1) + 1).toNat

end

end A069114.P7798063901544456468

namespace A069114

/-- `A007913(A040976(n+1)+1)` -/
def P7798063901544456468.Spec : Prop :=
  ∀ n, P7798063901544456468.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P14603325952726786356

`A007913(A000040(n+1)-1)`
-/

namespace A069114.P14603325952726786356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000040 (n + 1) - 1).toNat

end

end A069114.P14603325952726786356

namespace A069114

/-- `A007913(A000040(n+1)-1)` -/
def P14603325952726786356.Spec : Prop :=
  ∀ n, P14603325952726786356.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P12713075583459414536

`A007913(A086801(n+1)+2)`
-/

namespace A069114.P12713075583459414536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A086801 (n + 1) + 2).toNat

end

end A069114.P12713075583459414536

namespace A069114

/-- `A007913(A086801(n+1)+2)` -/
def P12713075583459414536.Spec : Prop :=
  ∀ n, P12713075583459414536.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P17466483908113056663

`A007913(A008578(n+2)-1)`
-/

namespace A069114.P17466483908113056663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008578 (n + 2) - 1).toNat

end

end A069114.P17466483908113056663

namespace A069114

/-- `A007913(A008578(n+2)-1)` -/
def P17466483908113056663.Spec : Prop :=
  ∀ n, P17466483908113056663.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P14582892085044301596

`A007913(A008864(n+1)-2)`
-/

namespace A069114.P14582892085044301596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008864 (n + 1) - 2).toNat

end

end A069114.P14582892085044301596

namespace A069114

/-- `A007913(A008864(n+1)-2)` -/
def P14582892085044301596.Spec : Prop :=
  ∀ n, P14582892085044301596.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P4349224828375076335

`A007913(A028815(n+1)-2)`
-/

namespace A069114.P4349224828375076335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028815 (n + 1) - 2).toNat

end

end A069114.P4349224828375076335

namespace A069114

/-- `A007913(A028815(n+1)-2)` -/
def P4349224828375076335.Spec : Prop :=
  ∀ n, P4349224828375076335.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P15102640064885178129

`A007913(A182986(n+2)-1)`
-/

namespace A069114.P15102640064885178129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A182986 (n + 2) - 1).toNat

end

end A069114.P15102640064885178129

namespace A069114

/-- `A007913(A182986(n+2)-1)` -/
def P15102640064885178129.Spec : Prop :=
  ∀ n, P15102640064885178129.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P1003211232764484859

`A007913(A299763(n+2)-2)`
-/

namespace A069114.P1003211232764484859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A299763 (n + 2) - 2).toNat

end

end A069114.P1003211232764484859

namespace A069114

/-- `A007913(A299763(n+2)-2)` -/
def P1003211232764484859.Spec : Prop :=
  ∀ n, P1003211232764484859.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P8370028247554252433

`A007913(A014689(n+1)+n)`
-/

namespace A069114.P8370028247554252433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A069114.P8370028247554252433

namespace A069114

/-- `A007913(A014689(n+1)+n)` -/
def P8370028247554252433.Spec : Prop :=
  ∀ n, P8370028247554252433.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P5154829311497421652

`A007913(∑[A125266(n+1)]-2)`
-/

namespace A069114.P5154829311497421652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A069114.P5154829311497421652

namespace A069114

/-- `A007913(∑[A125266(n+1)]-2)` -/
def P5154829311497421652.Spec : Prop :=
  ∀ n, P5154829311497421652.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P18200526717108003765

`A007913(record[A006530(n+2)-1])`
-/

namespace A069114.P18200526717108003765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069114.P18200526717108003765

namespace A069114

/-- `A007913(record[A006530(n+2)-1])` -/
def P18200526717108003765.Spec : Prop :=
  ∀ n, P18200526717108003765.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P7928508018051829830

`A007913(record[A020639(n+2)-1])`
-/

namespace A069114.P7928508018051829830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069114.P7928508018051829830

namespace A069114

/-- `A007913(record[A020639(n+2)-1])` -/
def P7928508018051829830.Spec : Prop :=
  ∀ n, P7928508018051829830.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P16637694388706235846

`A007913(A014688(n+1)-(n+2))`
-/

namespace A069114.P16637694388706235846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014688 (n + 1) - (n + 2 : ℤ)).toNat

end

end A069114.P16637694388706235846

namespace A069114

/-- `A007913(A014688(n+1)-(n+2))` -/
def P16637694388706235846.Spec : Prop :=
  ∀ n, P16637694388706235846.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P10715744097947886241

`A007913(A000010(A008578(n+2)))`
-/

namespace A069114.P10715744097947886241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A069114.P10715744097947886241

namespace A069114

/-- `A007913(A000010(A008578(n+2)))` -/
def P10715744097947886241.Spec : Prop :=
  ∀ n, P10715744097947886241.a n = A069114 (n + 1)

end A069114

/-! ## A069114.P14289934470360459210

`A007913(A084920(n+1)/A008864(n+1))`
-/

namespace A069114.P14289934470360459210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A084920 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ))).toNat

end

end A069114.P14289934470360459210

namespace A069114

/-- `A007913(A084920(n+1)/A008864(n+1))` -/
def P14289934470360459210.Spec : Prop :=
  ∀ n, P14289934470360459210.a n = A069114 (n + 1)

end A069114

/-!
# A069115: Squarefree part of prime(n)+1 : the smallest number such that a(n)*(prime(n)+1) is a square.

The programs for A069115, the canonical program `A069115.P13502381392976731434` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069115 has offset 1).

The definition of A069115 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069115.P13502381392976731434

`A007913(A008864(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069115

/-- `A007913(A008864(n+1))` -/
def P13502381392976731434.Spec : Prop :=
  ∀ n, P13502381392976731434.a n = A069115 (n + 1)

theorem P13502381392976731434.correct : P13502381392976731434.Spec := by
  intro n
  simp only [A069115, Nat.add_sub_cancel]

end A069115

/-! ## A069115.P5045229692219827612

`A008864(n+1)/A160696(n+1)²`
-/

namespace A069115.P5045229692219827612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) / (A160696 (n + 1) ^ 2 : ℚ)

end

end A069115.P5045229692219827612

namespace A069115

/-- `A008864(n+1)/A160696(n+1)²` -/
def P5045229692219827612.Spec : Prop :=
  ∀ n, P5045229692219827612.a n = (A069115 (n + 1) : ℚ)

end A069115

/-! ## A069115.P13209962094630634119

`A007913(A028815(n+1))`
-/

namespace A069115.P13209962094630634119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028815 (n + 1)).toNat

end

end A069115.P13209962094630634119

namespace A069115

/-- `A007913(A028815(n+1))` -/
def P13209962094630634119.Spec : Prop :=
  ∀ n, P13209962094630634119.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P1447233000022699653

`A007913(A299763(n+2))`
-/

namespace A069115.P1447233000022699653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A299763 (n + 2)).toNat

end

end A069115.P1447233000022699653

namespace A069115

/-- `A007913(A299763(n+2))` -/
def P1447233000022699653.Spec : Prop :=
  ∀ n, P1447233000022699653.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P18272859189995057475

`A007913(∑[A125266(n+1)])`
-/

namespace A069115.P18272859189995057475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069115.P18272859189995057475

namespace A069115

/-- `A007913(∑[A125266(n+1)])` -/
def P18272859189995057475.Spec : Prop :=
  ∀ n, P18272859189995057475.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P218889751995173025

`A007913(Δ[A007504(n)]+1)`
-/

namespace A069115.P218889751995173025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n + 1).toNat

end

end A069115.P218889751995173025

namespace A069115

/-- `A007913(Δ[A007504(n)]+1)` -/
def P218889751995173025.Spec : Prop :=
  ∀ n, P218889751995173025.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P5023737238734556143

`A007913(A000040(n+1)+1)`
-/

namespace A069115.P5023737238734556143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000040 (n + 1) + 1).toNat

end

end A069115.P5023737238734556143

namespace A069115

/-- `A007913(A000040(n+1)+1)` -/
def P5023737238734556143.Spec : Prop :=
  ∀ n, P5023737238734556143.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P4970813813470512043

`A007913(A006093(n+1)+2)`
-/

namespace A069115.P4970813813470512043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A006093 (n + 1) + 2).toNat

end

end A069115.P4970813813470512043

namespace A069115

/-- `A007913(A006093(n+1)+2)` -/
def P4970813813470512043.Spec : Prop :=
  ∀ n, P4970813813470512043.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P17923384262476088865

`A007913(A008578(n+2)+1)`
-/

namespace A069115.P17923384262476088865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008578 (n + 2) + 1).toNat

end

end A069115.P17923384262476088865

namespace A069115

/-- `A007913(A008578(n+2)+1)` -/
def P17923384262476088865.Spec : Prop :=
  ∀ n, P17923384262476088865.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P4261888652189317489

`A007913(A182986(n+2)+1)`
-/

namespace A069115.P4261888652189317489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A182986 (n + 2) + 1).toNat

end

end A069115.P4261888652189317489

namespace A069115

/-- `A007913(A182986(n+2)+1)` -/
def P4261888652189317489.Spec : Prop :=
  ∀ n, P4261888652189317489.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P2112776880304387769

`A007913(A014688(n+1)-n)`
-/

namespace A069115.P2112776880304387769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014688 (n + 1) - (n : ℤ)).toNat

end

end A069115.P2112776880304387769

namespace A069115

/-- `A007913(A014688(n+1)-n)` -/
def P2112776880304387769.Spec : Prop :=
  ∀ n, P2112776880304387769.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P6137497922805694674

`A007913(record[A000010(n+1)+2])`
-/

namespace A069115.P6137497922805694674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069115.P6137497922805694674

namespace A069115

/-- `A007913(record[A000010(n+1)+2])` -/
def P6137497922805694674.Spec : Prop :=
  ∀ n, P6137497922805694674.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P2796418364938360530

`A007913(record[A003958(n+1)+2])`
-/

namespace A069115.P2796418364938360530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069115.P2796418364938360530

namespace A069115

/-- `A007913(record[A003958(n+1)+2])` -/
def P2796418364938360530.Spec : Prop :=
  ∀ n, P2796418364938360530.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P16488180860947626133

`A007913(record[A006530(n+2)+1])`
-/

namespace A069115.P16488180860947626133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069115.P16488180860947626133

namespace A069115

/-- `A007913(record[A006530(n+2)+1])` -/
def P16488180860947626133.Spec : Prop :=
  ∀ n, P16488180860947626133.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P6401307399756343413

`A007913(record[A020639(n+2)+1])`
-/

namespace A069115.P6401307399756343413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069115.P6401307399756343413

namespace A069115

/-- `A007913(record[A020639(n+2)+1])` -/
def P6401307399756343413.Spec : Prop :=
  ∀ n, P6401307399756343413.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P2315556431586227196

`A007913(record[A192133(n+1)+2])`
-/

namespace A069115.P2315556431586227196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069115.P2315556431586227196

namespace A069115

/-- `A007913(record[A192133(n+1)+2])` -/
def P2315556431586227196.Spec : Prop :=
  ∀ n, P2315556431586227196.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P14800082895635383254

`A007913((A072055(n+1)+1)/2)`
-/

namespace A069115.P14800082895635383254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A072055 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A069115.P14800082895635383254

namespace A069115

/-- `A007913((A072055(n+1)+1)/2)` -/
def P14800082895635383254.Spec : Prop :=
  ∀ n, P14800082895635383254.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P16524787309802369574

`A007913(A014689(n+1)+2+n)`
-/

namespace A069115.P16524787309802369574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014689 (n + 1) + 2 + (n : ℤ)).toNat

end

end A069115.P16524787309802369574

namespace A069115

/-- `A007913(A014689(n+1)+2+n)` -/
def P16524787309802369574.Spec : Prop :=
  ∀ n, P16524787309802369574.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P17527560930423464192

`A007913(A000203(A008578(n+2)))`
-/

namespace A069115.P17527560930423464192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (A008578 (n + 2)).toNat).toNat

end

end A069115.P17527560930423464192

namespace A069115

/-- `A007913(A000203(A008578(n+2)))` -/
def P17527560930423464192.Spec : Prop :=
  ∀ n, P17527560930423464192.a n = A069115 (n + 1)

end A069115

/-! ## A069115.P13853444399286918467

`A007913(A065091(n+1)+1-A001223(n+1))`
-/

namespace A069115.P13853444399286918467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A065091 (n + 1) + (1 - A001223 (n + 1))).toNat

end

end A069115.P13853444399286918467

namespace A069115

/-- `A007913(A065091(n+1)+1-A001223(n+1))` -/
def P13853444399286918467.Spec : Prop :=
  ∀ n, P13853444399286918467.a n = A069115 (n + 1)

end A069115

/-!
# A069116: Composite k such that the squarefree part of k is greater than sqrt(k).

The programs for A069116, there is no canonical definition to state claims against.
-/

/-! ## A069116.P16156705487481200324

`lt[A360068(n)+1, A032741(n)]`
-/

namespace A069116.P16156705487481200324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069116.P16156705487481200324

/-! ## A069116.P14792120765802845007

`lt[A360068(n)+1, A323436(n)]`
-/

namespace A069116.P14792120765802845007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069116.P14792120765802845007

/-! ## A069116.P9820298195827982925

`lt[A360068(n), A000045(A007920(n))]`
-/

namespace A069116.P9820298195827982925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069116.P9820298195827982925

/-! ## A069116.P2615931851932807519

`lt[A360068(n), A032741(A074206(n))]`
-/

namespace A069116.P2615931851932807519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069116.P2615931851932807519

/-! ## A069116.P9074288212685663544

`lt[A360068(n), A135767(A004277(n))]`
-/

namespace A069116.P9074288212685663544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069116.P9074288212685663544

/-!
# A069117: Numbers n such that A068589(n) is a perfect square.

The programs for A069117, there is no canonical definition to state claims against.
-/

/-! ## A069117.P10186923001217769849

`∑[A031242(A007956(n+1))²]`
-/

namespace A069117.P10186923001217769849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (A007956 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069117.P10186923001217769849

/-! ## A069117.P4379647303059630063

`∑[A042974(A130702(n+1))²]`
-/

namespace A069117.P4379647303059630063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (A130702 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069117.P4379647303059630063

/-! ## A069117.P72470911958422048

`∑[A181715(A052163(n+1))²]`
-/

namespace A069117.P72470911958422048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (A052163 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069117.P72470911958422048

/-!
# A069118: Let D(n,s) denotes the denominator of Sum_{k=1..n} 1/k^s; sequence gives values of n such that D(n,4)/D(n,2) is a perfect square.

The programs for A069118, there is no canonical definition to state claims against.
-/

/-! ## A069118.P10687789292869882976

`lt[A002620(A144643(n)), n]`
-/

namespace A069118.P10687789292869882976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A144643 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069118.P10687789292869882976

/-! ## A069118.P11516571761924515535

`∑[A061775(A331437(n)!)]`
-/

namespace A069118.P11516571761924515535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (Nat.factorial (A331437 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069118.P11516571761924515535

/-! ## A069118.P17797846566600795252

`∑[A285491(A124094(n)!)]`
-/

namespace A069118.P17797846566600795252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285491 (Nat.factorial (A124094 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069118.P17797846566600795252

/-! ## A069118.P4674489566615680671

`∑[A255121(A331437(n)!)]`
-/

namespace A069118.P4674489566615680671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (Nat.factorial (A331437 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069118.P4674489566615680671

/-! ## A069118.P4201028335737308130

`∑[A352911(A331437(n)!)]`
-/

namespace A069118.P4201028335737308130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (Nat.factorial (A331437 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069118.P4201028335737308130

/-!
# A069119: Numbers k such that k!*Sum_{i=1..k} 1/(i*2^i) is an integer.

The programs for A069119, there is no canonical definition to state claims against.
-/

/-! ## A069119.P4862846372284136379

`or(2*n+1, or(6, A261906(a(n-1))))` with `a(0)=3`
-/

namespace A069119.P4862846372284136379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (2 * n + 1 : ℤ) (Int.lor 6 (A261906 (a (n - 1)).toNat))

end

end A069119.P4862846372284136379

/-! ## A069119.P11765525236958993695

`lt[A224075(n+1), A064233(2^val(n+1, 2))]`
-/

namespace A069119.P11765525236958993695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069119.P11765525236958993695

/-! ## A069119.P2807442553494063164

`lt[A007953(A166136(n+1)), A006519(n+1)]`
-/

namespace A069119.P2807442553494063164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A166136 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069119.P2807442553494063164

/-! ## A069119.P14896814965643780862

`lt[A224075(n+1), A095939(A007814(n+1))]`
-/

namespace A069119.P14896814965643780862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069119.P14896814965643780862

/-! ## A069119.P15780363077604746083

`lt[A007734(A246161(n+1)), A318453(n+1)]`
-/

namespace A069119.P15780363077604746083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A246161 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069119.P15780363077604746083

/-!
# A069121: a(n) = n^4*binomial(2*n,n).

The programs for A069121, the canonical program `A069121.P16200525854911329356` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069121 has offset 0).

The definition of A069121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069121.P10234120091356146306

`n*A005429(n)`
-/

namespace A069121.P10234120091356146306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005429 n

end

end A069121.P10234120091356146306

namespace A069121

/-- `n*A005429(n)` -/
def P10234120091356146306.Spec : Prop :=
  ∀ n, P10234120091356146306.a n = A069121 n

end A069121

/-! ## A069121.P10312962368627074321

`n²*A002736(n)`
-/

namespace A069121.P10312962368627074321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002736 n

end

end A069121.P10312962368627074321

namespace A069121

/-- `n²*A002736(n)` -/
def P10312962368627074321.Spec : Prop :=
  ∀ n, P10312962368627074321.a n = A069121 n

end A069121

/-! ## A069121.P17854678336110940637

`n^3*A005430(n)`
-/

namespace A069121.P17854678336110940637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A005430 n

end

end A069121.P17854678336110940637

namespace A069121

/-- `n^3*A005430(n)` -/
def P17854678336110940637.Spec : Prop :=
  ∀ n, P17854678336110940637.a n = A069121 n

end A069121

/-! ## A069121.P16200525854911329356

`a(n-1)*(4*n-2)*n^3/(n-1)^4` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069121

/-- `a(n-1)*(4*n-2)*n^3/(n-1)^4` -/
def P16200525854911329356.Spec : Prop :=
  ∀ n, P16200525854911329356.a n = (A069121 n : ℚ)

end A069121

/-! ## A069121.P13965362199154877518

`n^4*A000984(n)`
-/

namespace A069121.P13965362199154877518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * A000984 n

end

end A069121.P13965362199154877518

namespace A069121

/-- `n^4*A000984(n)` -/
def P13965362199154877518.Spec : Prop :=
  ∀ n, P13965362199154877518.a n = A069121 n

end A069121

/-! ## A069121.P8412712244020773474

`n²²*record[A081668(n)]`
-/

namespace A069121.P8412712244020773474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069121.P8412712244020773474

namespace A069121

/-- `n²²*record[A081668(n)]` -/
def P8412712244020773474.Spec : Prop :=
  ∀ n, P8412712244020773474.a n = A069121 n

end A069121

/-! ## A069121.P18128045395718029964

`n²²*record[A126869(n)]`
-/

namespace A069121.P18128045395718029964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069121.P18128045395718029964

namespace A069121

/-- `n²²*record[A126869(n)]` -/
def P18128045395718029964.Spec : Prop :=
  ∀ n, P18128045395718029964.a n = A069121 n

end A069121

/-! ## A069121.P17139626128735739569

`n²²*record[A126930(n)]`
-/

namespace A069121.P17139626128735739569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069121.P17139626128735739569

namespace A069121

/-- `n²²*record[A126930(n)]` -/
def P17139626128735739569.Spec : Prop :=
  ∀ n, P17139626128735739569.a n = A069121 n

end A069121

/-! ## A069121.P18322139377678838232

`n²²*A001405(2*n)`
-/

namespace A069121.P18322139377678838232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A001405 (2 * n)

end

end A069121.P18322139377678838232

namespace A069121

/-- `n²²*A001405(2*n)` -/
def P18322139377678838232.Spec : Prop :=
  ∀ n, P18322139377678838232.a n = A069121 n

end A069121

/-! ## A069121.P9906184171633975197

`n²²*A056040(2*n)`
-/

namespace A069121.P9906184171633975197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A056040 (2 * n)

end

end A069121.P9906184171633975197

namespace A069121

/-- `n²²*A056040(2*n)` -/
def P9906184171633975197.Spec : Prop :=
  ∀ n, P9906184171633975197.a n = A069121 n

end A069121

/-! ## A069121.P15141441894508012372

`n²²*A063886(2*n)`
-/

namespace A069121.P15141441894508012372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A063886 (2 * n)

end

end A069121.P15141441894508012372

namespace A069121

/-- `n²²*A063886(2*n)` -/
def P15141441894508012372.Spec : Prop :=
  ∀ n, P15141441894508012372.a n = A069121 n

end A069121

/-! ## A069121.P641965908421708844

`n²²*A081668(2*n)`
-/

namespace A069121.P641965908421708844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A081668 (2 * n)

end

end A069121.P641965908421708844

namespace A069121

/-- `n²²*A081668(2*n)` -/
def P641965908421708844.Spec : Prop :=
  ∀ n, P641965908421708844.a n = A069121 n

end A069121

/-! ## A069121.P8637573306335221271

`n²²*A126869(2*n)`
-/

namespace A069121.P8637573306335221271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A126869 (2 * n)

end

end A069121.P8637573306335221271

namespace A069121

/-- `n²²*A126869(2*n)` -/
def P8637573306335221271.Spec : Prop :=
  ∀ n, P8637573306335221271.a n = A069121 n

end A069121

/-! ## A069121.P4009899237246351595

`n²²*A126930(2*n)`
-/

namespace A069121.P4009899237246351595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A126930 (2 * n)

end

end A069121.P4009899237246351595

namespace A069121

/-- `n²²*A126930(2*n)` -/
def P4009899237246351595.Spec : Prop :=
  ∀ n, P4009899237246351595.a n = A069121 n

end A069121

/-! ## A069121.P14382923977159605192

`n²²*A128014(2*n)`
-/

namespace A069121.P14382923977159605192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A128014 (2 * n)

end

end A069121.P14382923977159605192

namespace A069121

/-- `n²²*A128014(2*n)` -/
def P14382923977159605192.Spec : Prop :=
  ∀ n, P14382923977159605192.a n = A069121 n

end A069121

/-! ## A069121.P12343532832796655128

`n²²*A129383(2*n)`
-/

namespace A069121.P12343532832796655128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A129383 (2 * n)

end

end A069121.P12343532832796655128

namespace A069121

/-- `n²²*A129383(2*n)` -/
def P12343532832796655128.Spec : Prop :=
  ∀ n, P12343532832796655128.a n = A069121 n

end A069121

/-! ## A069121.P88505985968235431

`n*n²*A100071(2*n)`
-/

namespace A069121.P88505985968235431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) * A100071 (2 * n)

end

end A069121.P88505985968235431

namespace A069121

/-- `n*n²*A100071(2*n)` -/
def P88505985968235431.Spec : Prop :=
  ∀ n, P88505985968235431.a n = A069121 n

end A069121

/-! ## A069121.P8411484329661034392

`n²²*record[A226302(n+2)]`
-/

namespace A069121.P8411484329661034392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069121.P8411484329661034392

namespace A069121

/-- `n²²*record[A226302(n+2)]` -/
def P8411484329661034392.Spec : Prop :=
  ∀ n, P8411484329661034392.a n = A069121 n

end A069121

/-! ## A069121.P17100345452031151396

`(n+1)*n^4*A000108(n)`
-/

namespace A069121.P17100345452031151396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n ^ 4 : ℤ) * A000108 n)

end

end A069121.P17100345452031151396

namespace A069121

/-- `(n+1)*n^4*A000108(n)` -/
def P17100345452031151396.Spec : Prop :=
  ∀ n, P17100345452031151396.a n = A069121 n

end A069121

/-! ## A069121.P446428426172544221

`n²²*A047074(2*n+1)`
-/

namespace A069121.P446428426172544221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A047074 (2 * n + 1)

end

end A069121.P446428426172544221

namespace A069121

/-- `n²²*A047074(2*n+1)` -/
def P446428426172544221.Spec : Prop :=
  ∀ n, P446428426172544221.a n = A069121 n

end A069121

/-!
# A069122: Numbers k such that the squarefree part of k is greater than the squarefree part of (k+1).

The programs for A069122, the canonical program `A069122.P5368121479878641074` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069122 has offset 1).

The definition of A069122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069122.P5368121479878641074

`lt[A007913(n+2), A007913(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069122

/-- `lt[A007913(n+2), A007913(n+1)]+1` -/
def P5368121479878641074.Spec : Prop :=
  ∀ n, (P5368121479878641074.a n : ℤ) = A069122 (n + 1)

theorem P5368121479878641074.correct : P5368121479878641074.Spec := by
  intro n
  simp only [A069122, Nat.add_sub_cancel]

end A069122

/-! ## A069122.P10621746110004164713

`lt[A008833(n+1), A008833(n+2)]+1`
-/

namespace A069122.P10621746110004164713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069122.P10621746110004164713

namespace A069122

/-- `lt[A008833(n+1), A008833(n+2)]+1` -/
def P10621746110004164713.Spec : Prop :=
  ∀ n, (P10621746110004164713.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P6213528057957932227

`lt[A326055(n+2), A326055(n+1)]+1`
-/

namespace A069122.P6213528057957932227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069122.P6213528057957932227

namespace A069122

/-- `lt[A326055(n+2), A326055(n+1)]+1` -/
def P6213528057957932227.Spec : Prop :=
  ∀ n, (P6213528057957932227.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P6539150715918274686

`lt[Δ[A007913(n+1)], 1]+1`
-/

namespace A069122.P6539150715918274686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A069122.P6539150715918274686

namespace A069122

/-- `lt[Δ[A007913(n+1)], 1]+1` -/
def P6539150715918274686.Spec : Prop :=
  ∀ n, (P6539150715918274686.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P6624283076997360260

`lt[1, Δ[A008833(n+1)]]+1`
-/

namespace A069122.P6624283076997360260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069122.P6624283076997360260

namespace A069122

/-- `lt[1, Δ[A008833(n+1)]]+1` -/
def P6624283076997360260.Spec : Prop :=
  ∀ n, (P6624283076997360260.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P17577044556357127295

`lt[A000188(n+1), A000188(n+2)]+1`
-/

namespace A069122.P17577044556357127295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069122.P17577044556357127295

namespace A069122

/-- `lt[A000188(n+1), A000188(n+2)]+1` -/
def P17577044556357127295.Spec : Prop :=
  ∀ n, (P17577044556357127295.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P16276830122459449885

`lt[A019554(n+2), A019554(n+1)]+1`
-/

namespace A069122.P16276830122459449885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069122.P16276830122459449885

namespace A069122

/-- `lt[A019554(n+2), A019554(n+1)]+1` -/
def P16276830122459449885.Spec : Prop :=
  ∀ n, (P16276830122459449885.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P13971224675288452900

`lt[A007913(n+1), A007913(A008574(n))]`
-/

namespace A069122.P13971224675288452900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P13971224675288452900

namespace A069122

/-- `lt[A007913(n+1), A007913(A008574(n))]` -/
def P13971224675288452900.Spec : Prop :=
  ∀ n, (P13971224675288452900.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P5980262477185617314

`lt[A000188(A028310(n)), A000188(n+1)]`
-/

namespace A069122.P5980262477185617314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P5980262477185617314

namespace A069122

/-- `lt[A000188(A028310(n)), A000188(n+1)]` -/
def P5980262477185617314.Spec : Prop :=
  ∀ n, (P5980262477185617314.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P14285563937655934134

`lt[A007913(n+1), A007913(A028310(n))]`
-/

namespace A069122.P14285563937655934134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P14285563937655934134

namespace A069122

/-- `lt[A007913(n+1), A007913(A028310(n))]` -/
def P14285563937655934134.Spec : Prop :=
  ∀ n, (P14285563937655934134.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P6735843404115258906

`lt[A008833(A028310(n)), A008833(n+1)]`
-/

namespace A069122.P6735843404115258906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P6735843404115258906

namespace A069122

/-- `lt[A008833(A028310(n)), A008833(n+1)]` -/
def P6735843404115258906.Spec : Prop :=
  ∀ n, (P6735843404115258906.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P10473821699893318349

`lt[A019554(n+1), A019554(A028310(n))]`
-/

namespace A069122.P10473821699893318349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P10473821699893318349

namespace A069122

/-- `lt[A019554(n+1), A019554(A028310(n))]` -/
def P10473821699893318349.Spec : Prop :=
  ∀ n, (P10473821699893318349.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P8596919994860339541

`lt[A326128(A028310(n)), A326128(n+1)]`
-/

namespace A069122.P8596919994860339541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P8596919994860339541

namespace A069122

/-- `lt[A326128(A028310(n)), A326128(n+1)]` -/
def P8596919994860339541.Spec : Prop :=
  ∀ n, (P8596919994860339541.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P12707593502990589183

`lt[A351310(A028310(n)), A351310(n+1)]`
-/

namespace A069122.P12707593502990589183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P12707593502990589183

namespace A069122

/-- `lt[A351310(A028310(n)), A351310(n+1)]` -/
def P12707593502990589183.Spec : Prop :=
  ∀ n, (P12707593502990589183.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P17594128812664484270

`lt[A326128(A004277(n)-n), A326128(n+1)]`
-/

namespace A069122.P17594128812664484270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P17594128812664484270

namespace A069122

/-- `lt[A326128(A004277(n)-n), A326128(n+1)]` -/
def P17594128812664484270.Spec : Prop :=
  ∀ n, (P17594128812664484270.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P14185185225072523294

`lt[A067722(n+1), A067722(n)]`
-/

namespace A069122.P14185185225072523294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P14185185225072523294

namespace A069122

/-- `lt[A067722(n+1), A067722(n)]` -/
def P14185185225072523294.Spec : Prop :=
  ∀ n, (P14185185225072523294.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P6179004307056315297

`lt[A055491(n+1), A055491(A008574(n))]`
-/

namespace A069122.P6179004307056315297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P6179004307056315297

namespace A069122

/-- `lt[A055491(n+1), A055491(A008574(n))]` -/
def P6179004307056315297.Spec : Prop :=
  ∀ n, (P6179004307056315297.a n : ℤ) = A069122 (n + 1)

end A069122

/-! ## A069122.P342302561690987342

`lt[A008833(A233583(n+1)), A008833(n+1)]`
-/

namespace A069122.P342302561690987342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069122.P342302561690987342

namespace A069122

/-- `lt[A008833(A233583(n+1)), A008833(n+1)]` -/
def P342302561690987342.Spec : Prop :=
  ∀ n, (P342302561690987342.a n : ℤ) = A069122 (n + 1)

end A069122

/-!
# A069123: Triangle formed as follows: For n-th row, n >= 0, record the A000041(n) partitions of n; for each partition, write down number of ways to arrange the parts.

The programs for A069123, there is no canonical definition to state claims against.
-/

/-! ## A069123.P9140006682242460799

`A036042(n)!/A078760(n)`
-/

namespace A069123.P9140006682242460799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A078760 n : ℚ)

end

end A069123.P9140006682242460799

/-! ## A069123.P17730297405751943706

`A036042(n)!/abs(A133314(n)/A072811(n))`
-/

namespace A069123.P17730297405751943706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / |(A133314 n : ℚ) / (A072811 n : ℚ)|

end

end A069123.P17730297405751943706

/-! ## A069123.P8104681148591571340

`A000142(A036042(n))/A318810(2*A129129(n))`
-/

namespace A069123.P8104681148591571340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A036042 n).toNat : ℚ) / (A318810 (2 * A129129 n).toNat : ℚ)

end

end A069123.P8104681148591571340

/-! ## A069123.P11258625700466254671

`A321898(A129129(n))`
-/

namespace A069123.P11258625700466254671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A129129 n).toNat

end

end A069123.P11258625700466254671

/-! ## A069123.P11831109478886449582

`∏{e}[A063008(n), #!]`
-/

namespace A069123.P11831109478886449582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A069123.P11831109478886449582

/-! ## A069123.P14634374477454435530

`∏{e}[A063008(n), A000142(#)]`
-/

namespace A069123.P14634374477454435530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A069123.P14634374477454435530

/-! ## A069123.P10187541087961467212

`∏{e}[A063008(n), A033646(#)]`
-/

namespace A069123.P10187541087961467212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033646 (Nat.factorization (f1 n).natAbs p)

end

end A069123.P10187541087961467212

/-! ## A069123.P5759586758414020601

`A178801(n)/A078760(n)`
-/

namespace A069123.P5759586758414020601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A078760 n : ℚ)

end

end A069123.P5759586758414020601

/-!
# A069125: a(n) = (11*n^2 - 11*n + 2)/2.

The programs for A069125, the canonical program `A069125.P7085178367733847533` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069125 has offset 1).

The definition of A069125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*(n+1)²-11*(n+1)+2)/2` (program `A069125.P10502233020917627447`, by `A069125.P10502233020917627447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069125.P7085178367733847533

`11*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069125

/-- `11*n+a(n-1)` -/
def P7085178367733847533.Spec : Prop :=
  ∀ n, (P7085178367733847533.a n : ℤ) = A069125 (n + 1)

theorem P7085178367733847533.correct : P7085178367733847533.Spec := by
  intro n
  simp only [A069125, Nat.add_sub_cancel]

end A069125

/-! ## A069125.P10502233020917627447

`(11*(n+1)²-11*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069125.P10502233020917627447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * (n + 1) ^ 2 : ℤ) - (11 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069125.P10502233020917627447

namespace A069125

/-- `(11*(n+1)²-11*(n+1)+2)/2` -/
def P10502233020917627447.Spec : Prop :=
  ∀ n, P10502233020917627447.a n = (A069125 (n + 1) : ℚ)

theorem P10502233020917627447.correct : P10502233020917627447.Spec := by
  intro n
  induction n with
  | zero => simp [A069125, A069125.P10502233020917627447.a, A069125.P7085178367733847533.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069125, Nat.add_sub_cancel, A069125.P10502233020917627447.a, A069125.P7085178367733847533.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069125

/-! ## A069125.P9910741827272086542

`A152740(n)+1`
-/

namespace A069125.P9910741827272086542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n + 1

end

end A069125.P9910741827272086542

namespace A069125

/-- `A152740(n)+1` -/
def P9910741827272086542.Spec : Prop :=
  ∀ n, P9910741827272086542.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P5670451936235288918

`A003154(n+1)-A000217(n)`
-/

namespace A069125.P5670451936235288918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A000217 n

end

end A069125.P5670451936235288918

namespace A069125

/-- `A003154(n+1)-A000217(n)` -/
def P5670451936235288918.Spec : Prop :=
  ∀ n, P5670451936235288918.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P5118665033350256192

`abs(xor(∑[11*n], -1))`
-/

namespace A069125.P5118665033350256192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)|

end

end A069125.P5118665033350256192

namespace A069125

/-- `abs(xor(∑[11*n], -1))` -/
def P5118665033350256192.Spec : Prop :=
  ∀ n, P5118665033350256192.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P4836474366804718470

`∑[a(n-1)+11]` with `a(0)=1, a(1)=11`
-/

namespace A069125.P4836474366804718470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069125.P4836474366804718470

namespace A069125

/-- `∑[a(n-1)+11]` -/
def P4836474366804718470.Spec : Prop :=
  ∀ n, (P4836474366804718470.a n : ℤ) = A069125 (n + 1)

end A069125

/-! ## A069125.P1445948928022829275

`∑[or(11*n, char[n^14])]`
-/

namespace A069125.P1445948928022829275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (11 * n) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069125.P1445948928022829275

namespace A069125

/-- `∑[or(11*n, char[n^14])]` -/
def P1445948928022829275.Spec : Prop :=
  ∀ n, (P1445948928022829275.a n : ℤ) = A069125 (n + 1)

end A069125

/-! ## A069125.P9681203704413451496

`floor(12*n-(n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A069125.P9681203704413451496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (12 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A069125.P9681203704413451496

namespace A069125

/-- `floor(12*n-(n-a(n-1)))` -/
def P9681203704413451496.Spec : Prop :=
  ∀ n, P9681203704413451496.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P14961494596059689408

`∑[n*a(1-C(n, a(n-1)))]` with `a(0)=1, a(1)=11`
-/

namespace A069125.P14961494596059689408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  n * f1 (1 - Nat.choose n (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069125.P14961494596059689408

namespace A069125

/-- `∑[n*a(1-C(n, a(n-1)))]` -/
def P14961494596059689408.Spec : Prop :=
  ∀ n, (P14961494596059689408.a n : ℤ) = A069125 (n + 1)

end A069125

/-! ## A069125.P15750496568385597038

`floor(A006222(n)/2)`
-/

namespace A069125.P15750496568385597038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006222 n : ℚ) / 2⌋

end

end A069125.P15750496568385597038

namespace A069125

/-- `floor(A006222(n)/2)` -/
def P15750496568385597038.Spec : Prop :=
  ∀ n, P15750496568385597038.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P14762598935401528466

`11*A000217(n)+1`
-/

namespace A069125.P14762598935401528466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000217 n + 1

end

end A069125.P14762598935401528466

namespace A069125

/-- `11*A000217(n)+1` -/
def P14762598935401528466.Spec : Prop :=
  ∀ n, P14762598935401528466.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P12198236668275835385

`abs(∑[n+1-A017533(n)]-1)`
-/

namespace A069125.P12198236668275835385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A069125.P12198236668275835385

namespace A069125

/-- `abs(∑[n+1-A017533(n)]-1)` -/
def P12198236668275835385.Spec : Prop :=
  ∀ n, P12198236668275835385.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P6246290207740927040

`abs(∑[A008592(n)+1+n]-n)`
-/

namespace A069125.P6246290207740927040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A069125.P6246290207740927040

namespace A069125

/-- `abs(∑[A008592(n)+1+n]-n)` -/
def P6246290207740927040.Spec : Prop :=
  ∀ n, P6246290207740927040.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P17006829326058876598

`A164016(n)%A164015(n)`
-/

namespace A069125.P17006829326058876598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164016 n) (A164015 n)

end

end A069125.P17006829326058876598

namespace A069125

/-- `A164016(n)%A164015(n)` -/
def P17006829326058876598.Spec : Prop :=
  ∀ n, P17006829326058876598.a n = A069125 (n + 1)

end A069125

/-! ## A069125.P5155243853469376139

`∑[A022144(n)+A008585(n)]`
-/

namespace A069125.P5155243853469376139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069125.P5155243853469376139

namespace A069125

/-- `∑[A022144(n)+A008585(n)]` -/
def P5155243853469376139.Spec : Prop :=
  ∀ n, P5155243853469376139.a n = A069125 (n + 1)

end A069125

/-!
# A069126: Centered 13-gonal numbers.

The programs for A069126, the canonical program `A069126.P4423583929307567482` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069126 has offset 1).

The definition of A069126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069126.P4423583929307567482

`13*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069126

/-- `13*n+a(n-1)` -/
def P4423583929307567482.Spec : Prop :=
  ∀ n, (P4423583929307567482.a n : ℤ) = A069126 (n + 1)

theorem P4423583929307567482.correct : P4423583929307567482.Spec := by
  intro n
  simp only [A069126, Nat.add_sub_cancel]

end A069126

/-! ## A069126.P16670083742053814508

`13*(n+1)*n/2+1`
-/

namespace A069126.P16670083742053814508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  13 * ((n + 1 : ℚ) * ((n : ℚ) / 2)) + 1

end

end A069126.P16670083742053814508

namespace A069126

/-- `13*(n+1)*n/2+1` -/
def P16670083742053814508.Spec : Prop :=
  ∀ n, P16670083742053814508.a n = (A069126 (n + 1) : ℚ)

theorem P16670083742053814508.correct : P16670083742053814508.Spec := by
  intro n
  induction n with
  | zero => simp [A069126, A069126.P16670083742053814508.a, A069126.P4423583929307567482.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069126, Nat.add_sub_cancel, A069126.P16670083742053814508.a, A069126.P4423583929307567482.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069126

/-! ## A069126.P11245002835697402785

`∑[a(n-1)+13]` with `a(0)=1, a(1)=13`
-/

namespace A069126.P11245002835697402785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P11245002835697402785

namespace A069126

/-- `∑[a(n-1)+13]` -/
def P11245002835697402785.Spec : Prop :=
  ∀ n, (P11245002835697402785.a n : ℤ) = A069126 (n + 1)

end A069126

/-! ## A069126.P6077016493353437159

`(A173307(n)+2)/2`
-/

namespace A069126.P6077016493353437159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173307 n + 2 : ℚ) / 2

end

end A069126.P6077016493353437159

namespace A069126

/-- `(A173307(n)+2)/2` -/
def P6077016493353437159.Spec : Prop :=
  ∀ n, P6077016493353437159.a n = (A069126 (n + 1) : ℚ)

end A069126

/-! ## A069126.P4123368811677206028

`∑[xor(13*n, A000007(n))]`
-/

namespace A069126.P4123368811677206028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (13 * n : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P4123368811677206028

namespace A069126

/-- `∑[xor(13*n, A000007(n))]` -/
def P4123368811677206028.Spec : Prop :=
  ∀ n, P4123368811677206028.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P17644360916069777689

`∑[A028310(n)+A008594(n)]`
-/

namespace A069126.P17644360916069777689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A008594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P17644360916069777689

namespace A069126

/-- `∑[A028310(n)+A008594(n)]` -/
def P17644360916069777689.Spec : Prop :=
  ∀ n, P17644360916069777689.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P8304188383123225234

`A322043(n+1)%A016826(n)`
-/

namespace A069126.P8304188383123225234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322043 (n + 1)) (A016826 n)

end

end A069126.P8304188383123225234

namespace A069126

/-- `A322043(n+1)%A016826(n)` -/
def P8304188383123225234.Spec : Prop :=
  ∀ n, P8304188383123225234.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P17628547018212669382

`A338795(n+1)%A001513(n)`
-/

namespace A069126.P17628547018212669382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338795 (n + 1)) (A001513 n)

end

end A069126.P17628547018212669382

namespace A069126

/-- `A338795(n+1)%A001513(n)` -/
def P17628547018212669382.Spec : Prop :=
  ∀ n, P17628547018212669382.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P6822668940313424878

`A365206(n+1)%A001539(n)`
-/

namespace A069126.P6822668940313424878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365206 (n + 1)) (A001539 n)

end

end A069126.P6822668940313424878

namespace A069126

/-- `A365206(n+1)%A001539(n)` -/
def P6822668940313424878.Spec : Prop :=
  ∀ n, P6822668940313424878.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P9897795895610674461

`ceil(A069127(n+1)-sqrt(A000537(n)))`
-/

namespace A069126.P9897795895610674461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069127 (n + 1) : ℝ) - Real.sqrt (A000537 n : ℝ)⌉

end

end A069126.P9897795895610674461

namespace A069126

/-- `ceil(A069127(n+1)-sqrt(A000537(n)))` -/
def P9897795895610674461.Spec : Prop :=
  ∀ n, P9897795895610674461.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P2371832432997664715

`Δ[A062025(n)]`
-/

namespace A069126.P2371832432997664715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069126.P2371832432997664715

namespace A069126

/-- `Δ[A062025(n)]` -/
def P2371832432997664715.Spec : Prop :=
  ∀ n, P2371832432997664715.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P63046605260725769

`abs(A051867(n+1)-n)`
-/

namespace A069126.P63046605260725769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051867 (n + 1) - (n : ℤ)|

end

end A069126.P63046605260725769

namespace A069126

/-- `abs(A051867(n+1)-n)` -/
def P63046605260725769.Spec : Prop :=
  ∀ n, P63046605260725769.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P1848063136988425680

`(A161935(n+1)-(n-1))/2`
-/

namespace A069126.P1848063136988425680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161935 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A069126.P1848063136988425680

namespace A069126

/-- `(A161935(n+1)-(n-1))/2` -/
def P1848063136988425680.Spec : Prop :=
  ∀ n, P1848063136988425680.a n = (A069126 (n + 1) : ℚ)

end A069126

/-! ## A069126.P2905139254011140390

`∑[record[A176593(n+1)]]`
-/

namespace A069126.P2905139254011140390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176593 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P2905139254011140390

namespace A069126

/-- `∑[record[A176593(n+1)]]` -/
def P2905139254011140390.Spec : Prop :=
  ∀ n, P2905139254011140390.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P14517062150882246010

`∑[record[A317313(n+1)]]`
-/

namespace A069126.P14517062150882246010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P14517062150882246010

namespace A069126

/-- `∑[record[A317313(n+1)]]` -/
def P14517062150882246010.Spec : Prop :=
  ∀ n, P14517062150882246010.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P8134282350530781330

`∑[A312926(3*n)]`
-/

namespace A069126.P8134282350530781330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P8134282350530781330

namespace A069126

/-- `∑[A312926(3*n)]` -/
def P8134282350530781330.Spec : Prop :=
  ∀ n, P8134282350530781330.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P7835405739333491530

`∑[A312938(3*n)]`
-/

namespace A069126.P7835405739333491530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312938 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P7835405739333491530

namespace A069126

/-- `∑[A312938(3*n)]` -/
def P7835405739333491530.Spec : Prop :=
  ∀ n, P7835405739333491530.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P2525582388550146264

`∑[A314677(3*n)]`
-/

namespace A069126.P2525582388550146264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P2525582388550146264

namespace A069126

/-- `∑[A314677(3*n)]` -/
def P2525582388550146264.Spec : Prop :=
  ∀ n, P2525582388550146264.a n = A069126 (n + 1)

end A069126

/-! ## A069126.P14929926217396488752

`∑[A314706(3*n)]`
-/

namespace A069126.P14929926217396488752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069126.P14929926217396488752

namespace A069126

/-- `∑[A314706(3*n)]` -/
def P14929926217396488752.Spec : Prop :=
  ∀ n, P14929926217396488752.a n = A069126 (n + 1)

end A069126

/-!
# A069127: Centered 14-gonal numbers.

The programs for A069127, the canonical program `A069127.P17805209540756871466` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069127 has offset 1).

The definition of A069127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069127.P17805209540756871466

`14*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069127

/-- `14*n+a(n-1)` -/
def P17805209540756871466.Spec : Prop :=
  ∀ n, (P17805209540756871466.a n : ℤ) = A069127 (n + 1)

theorem P17805209540756871466.correct : P17805209540756871466.Spec := by
  intro n
  simp only [A069127, Nat.add_sub_cancel]

end A069127

/-! ## A069127.P7947334691479486111

`7*(n+1)²-7*(n+1)+1`
-/

namespace A069127.P7947334691479486111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 1

end

end A069127.P7947334691479486111

namespace A069127

/-- `7*(n+1)²-7*(n+1)+1` -/
def P7947334691479486111.Spec : Prop :=
  ∀ n, P7947334691479486111.a n = A069127 (n + 1)

theorem P7947334691479486111.correct : P7947334691479486111.Spec := by
  intro n
  induction n with
  | zero => simp [A069127, A069127.P7947334691479486111.a, A069127.P17805209540756871466.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069127, Nat.add_sub_cancel, A069127.P7947334691479486111.a, A069127.P17805209540756871466.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069127

/-! ## A069127.P8503113076252108717

`or(1, ∑[14*n])`
-/

namespace A069127.P8503113076252108717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069127.P8503113076252108717

namespace A069127

/-- `or(1, ∑[14*n])` -/
def P8503113076252108717.Spec : Prop :=
  ∀ n, (P8503113076252108717.a n : ℤ) = A069127 (n + 1)

end A069127

/-! ## A069127.P9690761119518232955

`xor(1, ∑[14*n])`
-/

namespace A069127.P9690761119518232955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069127.P9690761119518232955

namespace A069127

/-- `xor(1, ∑[14*n])` -/
def P9690761119518232955.Spec : Prop :=
  ∀ n, (P9690761119518232955.a n : ℤ) = A069127 (n + 1)

end A069127

/-! ## A069127.P15024627162312469563

`∑[a(n-1)+14]` with `a(0)=1, a(1)=14`
-/

namespace A069127.P15024627162312469563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069127.P15024627162312469563

namespace A069127

/-- `∑[a(n-1)+14]` -/
def P15024627162312469563.Spec : Prop :=
  ∀ n, (P15024627162312469563.a n : ℤ) = A069127 (n + 1)

end A069127

/-! ## A069127.P6784276653433946457

`ceil((n+1)/acot(7*n))`
-/

namespace A069127.P6784276653433946457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (7 * n : ℝ)⌉

end

end A069127.P6784276653433946457

namespace A069127

/-- `ceil((n+1)/acot(7*n))` -/
def P6784276653433946457.Spec : Prop :=
  ∀ n, P6784276653433946457.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P9146702321110519357

`(A195314(n+1)+1)/2`
-/

namespace A069127.P9146702321110519357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195314 (n + 1) + 1 : ℚ) / 2

end

end A069127.P9146702321110519357

namespace A069127

/-- `(A195314(n+1)+1)/2` -/
def P9146702321110519357.Spec : Prop :=
  ∀ n, P9146702321110519357.a n = (A069127 (n + 1) : ℚ)

end A069127

/-! ## A069127.P13902888479381390115

`ceil(A069126(n+1)+(n²+n)/2)`
-/

namespace A069127.P13902888479381390115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069126 (n + 1) : ℚ) + (n ^ 2 + n : ℚ) / 2⌉

end

end A069127.P13902888479381390115

namespace A069127

/-- `ceil(A069126(n+1)+(n²+n)/2)` -/
def P13902888479381390115.Spec : Prop :=
  ∀ n, P13902888479381390115.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P3892163621864787760

`A001539(n)%A001504(n)`
-/

namespace A069127.P3892163621864787760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001539 n) (A001504 n)

end

end A069127.P3892163621864787760

namespace A069127

/-- `A001539(n)%A001504(n)` -/
def P3892163621864787760.Spec : Prop :=
  ∀ n, P3892163621864787760.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P12504402192748405898

`A022523(n)%A174994(n)`
-/

namespace A069127.P12504402192748405898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022523 n) (A174994 n)

end

end A069127.P12504402192748405898

namespace A069127

/-- `A022523(n)%A174994(n)` -/
def P12504402192748405898.Spec : Prop :=
  ∀ n, P12504402192748405898.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P13623371315418993364

`A016838(n)%A154516(n+1)`
-/

namespace A069127.P13623371315418993364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016838 n) (A154516 (n + 1))

end

end A069127.P13623371315418993364

namespace A069127

/-- `A016838(n)%A154516(n+1)` -/
def P13623371315418993364.Spec : Prop :=
  ∀ n, P13623371315418993364.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P469047339880432151

`A016995(n)%A157368(n+1)`
-/

namespace A069127.P469047339880432151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016995 n) (A157368 (n + 1))

end

end A069127.P469047339880432151

namespace A069127

/-- `A016995(n)%A157368(n+1)` -/
def P469047339880432151.Spec : Prop :=
  ∀ n, P469047339880432151.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P2165488461933233993

`ceil(A069128(n+1)-sqrt(A000537(n)))`
-/

namespace A069127.P2165488461933233993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069128 (n + 1) : ℝ) - Real.sqrt (A000537 n : ℝ)⌉

end

end A069127.P2165488461933233993

namespace A069127

/-- `ceil(A069128(n+1)-sqrt(A000537(n)))` -/
def P2165488461933233993.Spec : Prop :=
  ∀ n, P2165488461933233993.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P14897876361552482243

`Δ[A063521(n)]`
-/

namespace A069127.P14897876361552482243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069127.P14897876361552482243

namespace A069127

/-- `Δ[A063521(n)]` -/
def P14897876361552482243.Spec : Prop :=
  ∀ n, P14897876361552482243.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P13103349717266124453

`A195041(Δ[n²])`
-/

namespace A069127.P13103349717266124453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069127.P13103349717266124453

namespace A069127

/-- `A195041(Δ[n²])` -/
def P13103349717266124453.Spec : Prop :=
  ∀ n, P13103349717266124453.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P10675286260632333569

`∑[record[A317314(n+1)]]`
-/

namespace A069127.P10675286260632333569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069127.P10675286260632333569

namespace A069127

/-- `∑[record[A317314(n+1)]]` -/
def P10675286260632333569.Spec : Prop :=
  ∀ n, P10675286260632333569.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P443148959182142831

`∑[A298024(3*n)]`
-/

namespace A069127.P443148959182142831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069127.P443148959182142831

namespace A069127

/-- `∑[A298024(3*n)]` -/
def P443148959182142831.Spec : Prop :=
  ∀ n, P443148959182142831.a n = A069127 (n + 1)

end A069127

/-! ## A069127.P13064918835722807510

`∑[A301298(3*n)]`
-/

namespace A069127.P13064918835722807510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069127.P13064918835722807510

namespace A069127

/-- `∑[A301298(3*n)]` -/
def P13064918835722807510.Spec : Prop :=
  ∀ n, P13064918835722807510.a n = A069127 (n + 1)

end A069127

/-!
# A069128: Centered 15-gonal numbers: a(n) = (15*n^2 - 15*n + 2)/2.

The programs for A069128, the canonical program `A069128.P2666364132664357027` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069128 has offset 1).

The definition of A069128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15*(n+1)²-15*(n+1)+2)/2` (program `A069128.P3824391422216030582`, by `A069128.P3824391422216030582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069128.P2666364132664357027

`15*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069128

/-- `15*n+a(n-1)` -/
def P2666364132664357027.Spec : Prop :=
  ∀ n, (P2666364132664357027.a n : ℤ) = A069128 (n + 1)

theorem P2666364132664357027.correct : P2666364132664357027.Spec := by
  intro n
  simp only [A069128, Nat.add_sub_cancel]

end A069128

/-! ## A069128.P2499100860043647309

`15*(n+1)*n/2+1`
-/

namespace A069128.P2499100860043647309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * ((n + 1 : ℚ) * ((n : ℚ) / 2)) + 1

end

end A069128.P2499100860043647309

namespace A069128

/-- `15*(n+1)*n/2+1` -/
def P2499100860043647309.Spec : Prop :=
  ∀ n, P2499100860043647309.a n = (A069128 (n + 1) : ℚ)

theorem P2499100860043647309.correct : P2499100860043647309.Spec := by
  intro n
  induction n with
  | zero => simp [A069128, A069128.P2499100860043647309.a, A069128.P2666364132664357027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069128, Nat.add_sub_cancel, A069128.P2499100860043647309.a, A069128.P2666364132664357027.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069128

/-! ## A069128.P3824391422216030582

`(15*(n+1)²-15*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069128.P3824391422216030582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 * (n + 1) ^ 2 : ℤ) - (15 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069128.P3824391422216030582

namespace A069128

/-- `(15*(n+1)²-15*(n+1)+2)/2` -/
def P3824391422216030582.Spec : Prop :=
  ∀ n, P3824391422216030582.a n = (A069128 (n + 1) : ℚ)

theorem P3824391422216030582.correct : P3824391422216030582.Spec := by
  intro n
  induction n with
  | zero => simp [A069128, A069128.P3824391422216030582.a, A069128.P2666364132664357027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069128, Nat.add_sub_cancel, A069128.P3824391422216030582.a, A069128.P2666364132664357027.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069128

/-! ## A069128.P17295430624854475351

`∑[a(n-1)+15]` with `a(0)=1, a(1)=15`
-/

namespace A069128.P17295430624854475351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P17295430624854475351

namespace A069128

/-- `∑[a(n-1)+15]` -/
def P17295430624854475351.Spec : Prop :=
  ∀ n, (P17295430624854475351.a n : ℤ) = A069128 (n + 1)

end A069128

/-! ## A069128.P5338169053855102518

`floor(4*4*n-(n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A069128.P5338169053855102518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (4 * n) : ℤ) - ((n : ℤ) - a (n - 1))

end

end A069128.P5338169053855102518

namespace A069128

/-- `floor(4*4*n-(n-a(n-1)))` -/
def P5338169053855102518.Spec : Prop :=
  ∀ n, P5338169053855102518.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P13120351506498396730

`∑[xor(15*n, A000007(n))]`
-/

namespace A069128.P13120351506498396730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (15 * n : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P13120351506498396730

namespace A069128

/-- `∑[xor(15*n, A000007(n))]` -/
def P13120351506498396730.Spec : Prop :=
  ∀ n, P13120351506498396730.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P13148034607734659422

`A193448(n+1)%A061793(n)`
-/

namespace A069128.P13148034607734659422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193448 (n + 1)) (A061793 n)

end

end A069128.P13148034607734659422

namespace A069128

/-- `A193448(n+1)%A061793(n)` -/
def P13148034607734659422.Spec : Prop :=
  ∀ n, P13148034607734659422.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P13256332417991683827

`A130748(n+1)%A153976(n)`
-/

namespace A069128.P13256332417991683827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130748 (n + 1)) (A153976 n)

end

end A069128.P13256332417991683827

namespace A069128

/-- `A130748(n+1)%A153976(n)` -/
def P13256332417991683827.Spec : Prop :=
  ∀ n, P13256332417991683827.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P7364701351488811218

`abs(A069131(n+1)-A045943(n))`
-/

namespace A069128.P7364701351488811218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069131 (n + 1) - A045943 n|

end

end A069128.P7364701351488811218

namespace A069128

/-- `abs(A069131(n+1)-A045943(n))` -/
def P7364701351488811218.Spec : Prop :=
  ∀ n, P7364701351488811218.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P15331904774505591610

`ceil(A069127(n+1)+sqrt(A000537(n)))`
-/

namespace A069128.P15331904774505591610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069127 (n + 1) : ℝ) + Real.sqrt (A000537 n : ℝ)⌉

end

end A069128.P15331904774505591610

namespace A069128

/-- `ceil(A069127(n+1)+sqrt(A000537(n)))` -/
def P15331904774505591610.Spec : Prop :=
  ∀ n, P15331904774505591610.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P1112438057480100059

`xor(A194715(n)+1, A000007(A007947(n+1)))`
-/

namespace A069128.P1112438057480100059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A194715 n + 1) (A000007 (A007947 (n + 1)).toNat)

end

end A069128.P1112438057480100059

namespace A069128

/-- `xor(A194715(n)+1, A000007(A007947(n+1)))` -/
def P1112438057480100059.Spec : Prop :=
  ∀ n, P1112438057480100059.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P2377685483671257899

`Δ[A063522(n)]`
-/

namespace A069128.P2377685483671257899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069128.P2377685483671257899

namespace A069128

/-- `Δ[A063522(n)]` -/
def P2377685483671257899.Spec : Prop :=
  ∀ n, P2377685483671257899.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P17868077100129542293

`Δ[(n-1)*A005891(n)]`
-/

namespace A069128.P17868077100129542293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069128.P17868077100129542293

namespace A069128

/-- `Δ[(n-1)*A005891(n)]` -/
def P17868077100129542293.Spec : Prop :=
  ∀ n, P17868077100129542293.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P15514585082130706679

`∑[A022144(2*n)-n]`
-/

namespace A069128.P15514585082130706679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P15514585082130706679

namespace A069128

/-- `∑[A022144(2*n)-n]` -/
def P15514585082130706679.Spec : Prop :=
  ∀ n, P15514585082130706679.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P15162158766667044881

`∑[record[A317315(n+1)]]`
-/

namespace A069128.P15162158766667044881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P15162158766667044881

namespace A069128

/-- `∑[record[A317315(n+1)]]` -/
def P15162158766667044881.Spec : Prop :=
  ∀ n, P15162158766667044881.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P9892955665026568133

`∑[A234275(2*n)-n]`
-/

namespace A069128.P9892955665026568133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P9892955665026568133

namespace A069128

/-- `∑[A234275(2*n)-n]` -/
def P9892955665026568133.Spec : Prop :=
  ∀ n, P9892955665026568133.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P11807706124550911923

`∑[A348231(2*n)-n]`
-/

namespace A069128.P11807706124550911923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348231 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P11807706124550911923

namespace A069128

/-- `∑[A348231(2*n)-n]` -/
def P11807706124550911923.Spec : Prop :=
  ∀ n, P11807706124550911923.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P7010353768492979439

`∑[A008706(3*n)]`
-/

namespace A069128.P7010353768492979439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069128.P7010353768492979439

namespace A069128

/-- `∑[A008706(3*n)]` -/
def P7010353768492979439.Spec : Prop :=
  ∀ n, P7010353768492979439.a n = A069128 (n + 1)

end A069128

/-! ## A069128.P6518874457353227599

`A194275(3*n+1)`
-/

namespace A069128.P6518874457353227599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 (3 * n + 1)

end

end A069128.P6518874457353227599

namespace A069128

/-- `A194275(3*n+1)` -/
def P6518874457353227599.Spec : Prop :=
  ∀ n, P6518874457353227599.a n = A069128 (n + 1)

end A069128

/-!
# A069129: Centered 16-gonal numbers.

The programs for A069129, the canonical program `A069129.P16591082131829992890` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069129 has offset 1).

The definition of A069129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069129.P16591082131829992890

`16*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069129

/-- `16*n+a(n-1)` -/
def P16591082131829992890.Spec : Prop :=
  ∀ n, (P16591082131829992890.a n : ℤ) = A069129 (n + 1)

theorem P16591082131829992890.correct : P16591082131829992890.Spec := by
  intro n
  simp only [A069129, Nat.add_sub_cancel]

end A069129

/-! ## A069129.P15737893686753817139

`8*(n+1)²-8*(n+1)+1`
-/

namespace A069129.P15737893686753817139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) ^ 2 : ℤ) - (8 * (n + 1) : ℤ) + 1

end

end A069129.P15737893686753817139

namespace A069129

/-- `8*(n+1)²-8*(n+1)+1` -/
def P15737893686753817139.Spec : Prop :=
  ∀ n, P15737893686753817139.a n = A069129 (n + 1)

theorem P15737893686753817139.correct : P15737893686753817139.Spec := by
  intro n
  induction n with
  | zero => simp [A069129, A069129.P15737893686753817139.a, A069129.P16591082131829992890.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069129, Nat.add_sub_cancel, A069129.P15737893686753817139.a, A069129.P16591082131829992890.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069129

/-! ## A069129.P12958433058958344362

`A056220(2*(n+1)-1)`
-/

namespace A069129.P12958433058958344362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (2 * (n + 1) - 1)

end

end A069129.P12958433058958344362

namespace A069129

/-- `A056220(2*(n+1)-1)` -/
def P12958433058958344362.Spec : Prop :=
  ∀ n, P12958433058958344362.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P2351892759421633491

`or(1, ∑[16*n])`
-/

namespace A069129.P2351892759421633491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069129.P2351892759421633491

namespace A069129

/-- `or(1, ∑[16*n])` -/
def P2351892759421633491.Spec : Prop :=
  ∀ n, (P2351892759421633491.a n : ℤ) = A069129 (n + 1)

end A069129

/-! ## A069129.P9883374619291400663

`xor(1, ∑[16*n])`
-/

namespace A069129.P9883374619291400663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069129.P9883374619291400663

namespace A069129

/-- `xor(1, ∑[16*n])` -/
def P9883374619291400663.Spec : Prop :=
  ∀ n, (P9883374619291400663.a n : ℤ) = A069129 (n + 1)

end A069129

/-! ## A069129.P15721470787281090105

`∑[a(n-1)+16]` with `a(0)=1, a(1)=16`
-/

namespace A069129.P15721470787281090105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069129.P15721470787281090105

namespace A069129

/-- `∑[a(n-1)+16]` -/
def P15721470787281090105.Spec : Prop :=
  ∀ n, (P15721470787281090105.a n : ℤ) = A069129 (n + 1)

end A069129

/-! ## A069129.P12845455829812993131

`ceil((n+1)/acot(8*n))`
-/

namespace A069129.P12845455829812993131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (8 * n : ℝ)⌉

end

end A069129.P12845455829812993131

namespace A069129

/-- `ceil((n+1)/acot(8*n))` -/
def P12845455829812993131.Spec : Prop :=
  ∀ n, P12845455829812993131.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P1161456760361664602

`abs(1-lcm(2, (2*n+1)²))`
-/

namespace A069129.P1161456760361664602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 2 ((2 * n + 1) ^ 2) : ℤ)|

end

end A069129.P1161456760361664602

namespace A069129

/-- `abs(1-lcm(2, (2*n+1)²))` -/
def P1161456760361664602.Spec : Prop :=
  ∀ n, P1161456760361664602.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P6059600173712310886

`abs(or(1, -2*(2*n+1)²))`
-/

namespace A069129.P6059600173712310886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(2 * (2 * n + 1) ^ 2 : ℤ))|

end

end A069129.P6059600173712310886

namespace A069129

/-- `abs(or(1, -2*(2*n+1)²))` -/
def P6059600173712310886.Spec : Prop :=
  ∀ n, P6059600173712310886.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P8783355187646862337

`-or(1, -2*(2*n+1)²)`
-/

namespace A069129.P8783355187646862337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 * (2 * n + 1) ^ 2 : ℤ))

end

end A069129.P8783355187646862337

namespace A069129

/-- `-or(1, -2*(2*n+1)²)` -/
def P8783355187646862337.Spec : Prop :=
  ∀ n, P8783355187646862337.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P6766976278892019322

`abs(xor(1, -2*(2*n+1)²))`
-/

namespace A069129.P6766976278892019322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(2 * (2 * n + 1) ^ 2 : ℤ))|

end

end A069129.P6766976278892019322

namespace A069129

/-- `abs(xor(1, -2*(2*n+1)²))` -/
def P6766976278892019322.Spec : Prop :=
  ∀ n, P6766976278892019322.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P10453349043866209265

`-xor(1, -2*(2*n+1)²)`
-/

namespace A069129.P10453349043866209265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(2 * (2 * n + 1) ^ 2 : ℤ))

end

end A069129.P10453349043866209265

namespace A069129

/-- `-xor(1, -2*(2*n+1)²)` -/
def P10453349043866209265.Spec : Prop :=
  ∀ n, P10453349043866209265.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P3271828585599716264

`Δ[2*C(2*n+1, 3)-n]`
-/

namespace A069129.P3271828585599716264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n + 1) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069129.P3271828585599716264

namespace A069129

/-- `Δ[2*C(2*n+1, 3)-n]` -/
def P3271828585599716264.Spec : Prop :=
  ∀ n, P3271828585599716264.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P16280877613921625281

`record[(n+1)*2*xor(1, n)-1]`
-/

namespace A069129.P16280877613921625281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * Nat.xor 1 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069129.P16280877613921625281

namespace A069129

/-- `record[(n+1)*2*xor(1, n)-1]` -/
def P16280877613921625281.Spec : Prop :=
  ∀ n, P16280877613921625281.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P16229841562360426520

`floor((4*n)²-(a(n-1)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A069129.P16229841562360426520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n) ^ 2 : ℤ) - (a (n - 1) - 2)

end

end A069129.P16229841562360426520

namespace A069129

/-- `floor((4*n)²-(a(n-1)-2))` -/
def P16229841562360426520.Spec : Prop :=
  ∀ n, P16229841562360426520.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P16135664757817946225

`((2*n+1)^4)%(4*(n+1))²`
-/

namespace A069129.P16135664757817946225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4 % (4 * (n + 1)) ^ 2

end

end A069129.P16135664757817946225

namespace A069129

/-- `((2*n+1)^4)%(4*(n+1))²` -/
def P16135664757817946225.Spec : Prop :=
  ∀ n, (P16135664757817946225.a n : ℤ) = A069129 (n + 1)

end A069129

/-! ## A069129.P12882684841143666552

`record[lcm(n-1, 2*n)+1-2*n]`
-/

namespace A069129.P12882684841143666552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069129.P12882684841143666552

namespace A069129

/-- `record[lcm(n-1, 2*n)+1-2*n]` -/
def P12882684841143666552.Spec : Prop :=
  ∀ n, P12882684841143666552.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P10759047340453617520

`C(2*(2*n+1)², 2)/(2*n+1)²`
-/

namespace A069129.P10759047340453617520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (2 * n + 1) ^ 2) 2 : ℚ) / ((2 * n + 1) ^ 2 : ℚ)

end

end A069129.P10759047340453617520

namespace A069129

/-- `C(2*(2*n+1)², 2)/(2*n+1)²` -/
def P10759047340453617520.Spec : Prop :=
  ∀ n, P10759047340453617520.a n = (A069129 (n + 1) : ℚ)

end A069129

/-! ## A069129.P13498094520600770569

`A275543(Δ[n²])`
-/

namespace A069129.P13498094520600770569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069129.P13498094520600770569

namespace A069129

/-- `A275543(Δ[n²])` -/
def P13498094520600770569.Spec : Prop :=
  ∀ n, P13498094520600770569.a n = A069129 (n + 1)

end A069129

/-! ## A069129.P12576155788089160448

`sqrt(A322677(n)+1)`
-/

namespace A069129.P12576155788089160448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322677 n + 1 : ℝ)

end

end A069129.P12576155788089160448

namespace A069129

/-- `sqrt(A322677(n)+1)` -/
def P12576155788089160448.Spec : Prop :=
  ∀ n, P12576155788089160448.a n = (A069129 (n + 1) : ℝ)

end A069129

/-!
# A069130: Centered 17-gonal numbers: (17*n^2 - 17*n + 2)/2.

The programs for A069130, the canonical program `A069130.P10071785890437190694` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069130 has offset 1).

The definition of A069130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17*(n+1)²-17*(n+1)+2)/2` (program `A069130.P14382583759398379207`, by `A069130.P14382583759398379207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069130.P14380671781328180314

`17*C(n+1, 2)+1`
-/

namespace A069130.P14380671781328180314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * Nat.choose (n + 1) 2 + 1

end

end A069130.P14380671781328180314

namespace A069130

/-- `17*C(n+1, 2)+1` -/
def P14380671781328180314.Spec : Prop :=
  ∀ n, (P14380671781328180314.a n : ℤ) = A069130 (n + 1)

end A069130

/-! ## A069130.P10071785890437190694

`17*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069130

/-- `17*n+a(n-1)` -/
def P10071785890437190694.Spec : Prop :=
  ∀ n, (P10071785890437190694.a n : ℤ) = A069130 (n + 1)

theorem P10071785890437190694.correct : P10071785890437190694.Spec := by
  intro n
  simp only [A069130, Nat.add_sub_cancel]

end A069130

/-! ## A069130.P14382583759398379207

`(17*(n+1)²-17*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069130.P14382583759398379207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 * (n + 1) ^ 2 : ℤ) - (17 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069130.P14382583759398379207

namespace A069130

/-- `(17*(n+1)²-17*(n+1)+2)/2` -/
def P14382583759398379207.Spec : Prop :=
  ∀ n, P14382583759398379207.a n = (A069130 (n + 1) : ℚ)

theorem P14382583759398379207.correct : P14382583759398379207.Spec := by
  intro n
  induction n with
  | zero => simp [A069130, A069130.P14382583759398379207.a, A069130.P10071785890437190694.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069130, Nat.add_sub_cancel, A069130.P14382583759398379207.a, A069130.P10071785890437190694.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069130

/-! ## A069130.P5117899099901023103

`∑[a(n-1)+17]` with `a(0)=1, a(1)=17`
-/

namespace A069130.P5117899099901023103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P5117899099901023103

namespace A069130

/-- `∑[a(n-1)+17]` -/
def P5117899099901023103.Spec : Prop :=
  ∀ n, (P5117899099901023103.a n : ℤ) = A069130 (n + 1)

end A069130

/-! ## A069130.P3058505559719714844

`∑[abs(18*n-A028310(n))]`
-/

namespace A069130.P3058505559719714844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(18 * n : ℤ) - A028310 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P3058505559719714844

namespace A069130

/-- `∑[abs(18*n-A028310(n))]` -/
def P3058505559719714844.Spec : Prop :=
  ∀ n, P3058505559719714844.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P11968440542913386807

`abs(A194715(n)+(n+1)²-n)`
-/

namespace A069130.P11968440542913386807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194715 n + ((n + 1) ^ 2 : ℤ) - (n : ℤ)|

end

end A069130.P11968440542913386807

namespace A069130

/-- `abs(A194715(n)+(n+1)²-n)` -/
def P11968440542913386807.Spec : Prop :=
  ∀ n, P11968440542913386807.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P10973721683551775190

`abs(9*(n²+n)+1-A000217(n))`
-/

namespace A069130.P10973721683551775190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * (n ^ 2 + n) + 1 : ℤ) - A000217 n|

end

end A069130.P10973721683551775190

namespace A069130

/-- `abs(9*(n²+n)+1-A000217(n))` -/
def P10973721683551775190.Spec : Prop :=
  ∀ n, P10973721683551775190.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P12241809630929724369

`abs(3*(n+1)*3*n+2-A000124(n))`
-/

namespace A069130.P12241809630929724369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * (n + 1) * (3 * n) + 2 : ℤ) - A000124 n|

end

end A069130.P12241809630929724369

namespace A069130

/-- `abs(3*(n+1)*3*n+2-A000124(n))` -/
def P12241809630929724369.Spec : Prop :=
  ∀ n, P12241809630929724369.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P13550365739654944601

`∑[A008599(n)+A000007(n)]`
-/

namespace A069130.P13550365739654944601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P13550365739654944601

namespace A069130

/-- `∑[A008599(n)+A000007(n)]` -/
def P13550365739654944601.Spec : Prop :=
  ∀ n, P13550365739654944601.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P1406808469298190054

`∑[A008593(n)+A008458(n)]`
-/

namespace A069130.P1406808469298190054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P1406808469298190054

namespace A069130

/-- `∑[A008593(n)+A008458(n)]` -/
def P1406808469298190054.Spec : Prop :=
  ∀ n, P1406808469298190054.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P4878485237884068948

`A017510(n)%A178572(n+1)`
-/

namespace A069130.P4878485237884068948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017510 n) (A178572 (n + 1))

end

end A069130.P4878485237884068948

namespace A069130

/-- `A017510(n)%A178572(n+1)` -/
def P4878485237884068948.Spec : Prop :=
  ∀ n, P4878485237884068948.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P15996950739080019831

`Δ[A135503(n)+A063521(n)]`
-/

namespace A069130.P15996950739080019831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A063521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069130.P15996950739080019831

namespace A069130

/-- `Δ[A135503(n)+A063521(n)]` -/
def P15996950739080019831.Spec : Prop :=
  ∀ n, P15996950739080019831.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P18050203853661356190

`∑[record[Δ[A303298(n)]]]`
-/

namespace A069130.P18050203853661356190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P18050203853661356190

namespace A069130

/-- `∑[record[Δ[A303298(n)]]]` -/
def P18050203853661356190.Spec : Prop :=
  ∀ n, P18050203853661356190.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P5188511120376245905

`∑[record[A317317(n+1)]]`
-/

namespace A069130.P5188511120376245905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P5188511120376245905

namespace A069130

/-- `∑[record[A317317(n+1)]]` -/
def P5188511120376245905.Spec : Prop :=
  ∀ n, P5188511120376245905.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P1366258907547767387

`abs(A303813(2*n+1)-n)`
-/

namespace A069130.P1366258907547767387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303813 (2 * n + 1) - (n : ℤ)|

end

end A069130.P1366258907547767387

namespace A069130

/-- `abs(A303813(2*n+1)-n)` -/
def P1366258907547767387.Spec : Prop :=
  ∀ n, P1366258907547767387.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P1588854992213302816

`∑[A315693(3*n)]`
-/

namespace A069130.P1588854992213302816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P1588854992213302816

namespace A069130

/-- `∑[A315693(3*n)]` -/
def P1588854992213302816.Spec : Prop :=
  ∀ n, P1588854992213302816.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P17731377176214482095

`∑[A315703(3*n)]`
-/

namespace A069130.P17731377176214482095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P17731377176214482095

namespace A069130

/-- `∑[A315703(3*n)]` -/
def P17731377176214482095.Spec : Prop :=
  ∀ n, P17731377176214482095.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P17569954497998987182

`∑[A314240(3*n)]`
-/

namespace A069130.P17569954497998987182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P17569954497998987182

namespace A069130

/-- `∑[A314240(3*n)]` -/
def P17569954497998987182.Spec : Prop :=
  ∀ n, P17569954497998987182.a n = A069130 (n + 1)

end A069130

/-! ## A069130.P7071236031082616739

`∑[A314247(3*n)]`
-/

namespace A069130.P7071236031082616739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069130.P7071236031082616739

namespace A069130

/-- `∑[A314247(3*n)]` -/
def P7071236031082616739.Spec : Prop :=
  ∀ n, P7071236031082616739.a n = A069130 (n + 1)

end A069130

/-!
# A069131: Centered 18-gonal numbers.

The programs for A069131, the canonical program `A069131.P15314971307123032816` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069131 has offset 1).

The definition of A069131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069131.P15314971307123032816

`18*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069131

/-- `18*n+a(n-1)` -/
def P15314971307123032816.Spec : Prop :=
  ∀ n, (P15314971307123032816.a n : ℤ) = A069131 (n + 1)

theorem P15314971307123032816.correct : P15314971307123032816.Spec := by
  intro n
  simp only [A069131, Nat.add_sub_cancel]

end A069131

/-! ## A069131.P355410918352567623

`9*(n+1)²-9*(n+1)+1`
-/

namespace A069131.P355410918352567623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) ^ 2 : ℤ) - (9 * (n + 1) : ℤ) + 1

end

end A069131.P355410918352567623

namespace A069131

/-- `9*(n+1)²-9*(n+1)+1` -/
def P355410918352567623.Spec : Prop :=
  ∀ n, P355410918352567623.a n = A069131 (n + 1)

theorem P355410918352567623.correct : P355410918352567623.Spec := by
  intro n
  induction n with
  | zero => simp [A069131, A069131.P355410918352567623.a, A069131.P15314971307123032816.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069131, Nat.add_sub_cancel, A069131.P355410918352567623.a, A069131.P15314971307123032816.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069131

/-! ## A069131.P15197357150037702233

`or(1, ∑[18*n])`
-/

namespace A069131.P15197357150037702233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069131.P15197357150037702233

namespace A069131

/-- `or(1, ∑[18*n])` -/
def P15197357150037702233.Spec : Prop :=
  ∀ n, (P15197357150037702233.a n : ℤ) = A069131 (n + 1)

end A069131

/-! ## A069131.P9898765195368010399

`xor(1, ∑[18*n])`
-/

namespace A069131.P9898765195368010399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069131.P9898765195368010399

namespace A069131

/-- `xor(1, ∑[18*n])` -/
def P9898765195368010399.Spec : Prop :=
  ∀ n, (P9898765195368010399.a n : ℤ) = A069131 (n + 1)

end A069131

/-! ## A069131.P16335055072839022663

`∑[a(n-1)+18]` with `a(0)=1, a(1)=18`
-/

namespace A069131.P16335055072839022663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069131.P16335055072839022663

namespace A069131

/-- `∑[a(n-1)+18]` -/
def P16335055072839022663.Spec : Prop :=
  ∀ n, (P16335055072839022663.a n : ℤ) = A069131 (n + 1)

end A069131

/-! ## A069131.P15405435335843265777

`ceil((n+1)/acot(9*n))`
-/

namespace A069131.P15405435335843265777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (9 * n : ℝ)⌉

end

end A069131.P15405435335843265777

namespace A069131

/-- `ceil((n+1)/acot(9*n))` -/
def P15405435335843265777.Spec : Prop :=
  ∀ n, P15405435335843265777.a n = A069131 (n + 1)

end A069131

/-! ## A069131.P14098370476323040357

`(∑[n]/tan(acot(36))+2)/2`
-/

namespace A069131.P14098370476323040357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (36 : ℝ)) + 2) / 2

end

end A069131.P14098370476323040357

namespace A069131

/-- `(∑[n]/tan(acot(36))+2)/2` -/
def P14098370476323040357.Spec : Prop :=
  ∀ n, P14098370476323040357.a n = (A069131 (n + 1) : ℝ)

end A069131

/-! ## A069131.P7524867769886900580

`(A001513(n)-1)/4`
-/

namespace A069131.P7524867769886900580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001513 n - 1 : ℚ) / 4

end

end A069131.P7524867769886900580

namespace A069131

/-- `(A001513(n)-1)/4` -/
def P7524867769886900580.Spec : Prop :=
  ∀ n, P7524867769886900580.a n = (A069131 (n + 1) : ℚ)

end A069131

/-!
# A069132: Centered 19-gonal numbers.

The programs for A069132, the canonical program `A069132.P17810868112455853009` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069132 has offset 1).

The definition of A069132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069132.P7839784647518569374

`19*C(n+1, 2)+1`
-/

namespace A069132.P7839784647518569374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * Nat.choose (n + 1) 2 + 1

end

end A069132.P7839784647518569374

namespace A069132

/-- `19*C(n+1, 2)+1` -/
def P7839784647518569374.Spec : Prop :=
  ∀ n, (P7839784647518569374.a n : ℤ) = A069132 (n + 1)

end A069132

/-! ## A069132.P17810868112455853009

`19*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069132

/-- `19*n+a(n-1)` -/
def P17810868112455853009.Spec : Prop :=
  ∀ n, (P17810868112455853009.a n : ℤ) = A069132 (n + 1)

theorem P17810868112455853009.correct : P17810868112455853009.Spec := by
  intro n
  simp only [A069132, Nat.add_sub_cancel]

end A069132

/-! ## A069132.P4535226852095226299

`(19*(n+1)²-19*(n+1)+2)/2`
-/

namespace A069132.P4535226852095226299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 * (n + 1) ^ 2 : ℤ) - (19 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069132.P4535226852095226299

namespace A069132

/-- `(19*(n+1)²-19*(n+1)+2)/2` -/
def P4535226852095226299.Spec : Prop :=
  ∀ n, P4535226852095226299.a n = (A069132 (n + 1) : ℚ)

theorem P4535226852095226299.correct : P4535226852095226299.Spec := by
  intro n
  induction n with
  | zero => simp [A069132, A069132.P4535226852095226299.a, A069132.P17810868112455853009.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069132, Nat.add_sub_cancel, A069132.P4535226852095226299.a, A069132.P17810868112455853009.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069132

/-! ## A069132.P17535002002930306154

`∑[a(n-1)+19]` with `a(0)=1, a(1)=19`
-/

namespace A069132.P17535002002930306154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P17535002002930306154

namespace A069132

/-- `∑[a(n-1)+19]` -/
def P17535002002930306154.Spec : Prop :=
  ∀ n, (P17535002002930306154.a n : ℤ) = A069132 (n + 1)

end A069132

/-! ## A069132.P10906993775955459224

`abs(A069133(n+1)-∑[n])`
-/

namespace A069132.P10906993775955459224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069133 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A069132.P10906993775955459224

namespace A069132

/-- `abs(A069133(n+1)-∑[n])` -/
def P10906993775955459224.Spec : Prop :=
  ∀ n, P10906993775955459224.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P16179502997068423948

`∑[abs(21*n-A004277(n))]`
-/

namespace A069132.P16179502997068423948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(21 * n : ℤ) - A004277 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P16179502997068423948

namespace A069132

/-- `∑[abs(21*n-A004277(n))]` -/
def P16179502997068423948.Spec : Prop :=
  ∀ n, P16179502997068423948.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P13601518525256229746

`∑[A008598(n)+A008486(n)]`
-/

namespace A069132.P13601518525256229746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P13601518525256229746

namespace A069132

/-- `∑[A008598(n)+A008486(n)]` -/
def P13601518525256229746.Spec : Prop :=
  ∀ n, P13601518525256229746.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P12391285217760608344

`abs(1-(A226490(n+1)-2*n))`
-/

namespace A069132.P12391285217760608344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A226490 (n + 1) - (2 * n : ℤ))|

end

end A069132.P12391285217760608344

namespace A069132

/-- `abs(1-(A226490(n+1)-2*n))` -/
def P12391285217760608344.Spec : Prop :=
  ∀ n, P12391285217760608344.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P14490119421389260379

`∑[record[Δ[A303303(n)]]]`
-/

namespace A069132.P14490119421389260379
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P14490119421389260379

namespace A069132

/-- `∑[record[Δ[A303303(n)]]]` -/
def P14490119421389260379.Spec : Prop :=
  ∀ n, P14490119421389260379.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P10165155338077879849

`∑[record[A317319(n+1)]]`
-/

namespace A069132.P10165155338077879849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P10165155338077879849

namespace A069132

/-- `∑[record[A317319(n+1)]]` -/
def P10165155338077879849.Spec : Prop :=
  ∀ n, P10165155338077879849.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P16955438776219243285

`∑[A298040(2*n)-n]`
-/

namespace A069132.P16955438776219243285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298040 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P16955438776219243285

namespace A069132

/-- `∑[A298040(2*n)-n]` -/
def P16955438776219243285.Spec : Prop :=
  ∀ n, P16955438776219243285.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P12830792314337006372

`∑[A250120(5*n)-5*n]`
-/

namespace A069132.P12830792314337006372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (5 * n) - (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P12830792314337006372

namespace A069132

/-- `∑[A250120(5*n)-5*n]` -/
def P12830792314337006372.Spec : Prop :=
  ∀ n, P12830792314337006372.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P6743252794448346365

`∑[A008574(5*n)-n]`
-/

namespace A069132.P6743252794448346365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (5 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P6743252794448346365

namespace A069132

/-- `∑[A008574(5*n)-n]` -/
def P6743252794448346365.Spec : Prop :=
  ∀ n, P6743252794448346365.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P2413547396138703051

`∑[A312193(4*n)]`
-/

namespace A069132.P2413547396138703051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312193 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P2413547396138703051

namespace A069132

/-- `∑[A312193(4*n)]` -/
def P2413547396138703051.Spec : Prop :=
  ∀ n, P2413547396138703051.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P16452358328499736278

`∑[A313094(4*n)]`
-/

namespace A069132.P16452358328499736278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313094 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P16452358328499736278

namespace A069132

/-- `∑[A313094(4*n)]` -/
def P16452358328499736278.Spec : Prop :=
  ∀ n, P16452358328499736278.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P15847203098810245058

`∑[A315987(4*n)]`
-/

namespace A069132.P15847203098810245058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315987 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P15847203098810245058

namespace A069132

/-- `∑[A315987(4*n)]` -/
def P15847203098810245058.Spec : Prop :=
  ∀ n, P15847203098810245058.a n = A069132 (n + 1)

end A069132

/-! ## A069132.P9439274708820464772

`∑[A310397(4*n)]`
-/

namespace A069132.P9439274708820464772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069132.P9439274708820464772

namespace A069132

/-- `∑[A310397(4*n)]` -/
def P9439274708820464772.Spec : Prop :=
  ∀ n, P9439274708820464772.a n = A069132 (n + 1)

end A069132

/-!
# A069133: Centered 20-gonal (or icosagonal) numbers.

The programs for A069133, the canonical program `A069133.P13893462842116951769` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069133 has offset 1).

The definition of A069133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069133.P13893462842116951769

`10*(n+1)*n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069133

/-- `10*(n+1)*n+1` -/
def P13893462842116951769.Spec : Prop :=
  ∀ n, (P13893462842116951769.a n : ℤ) = A069133 (n + 1)

theorem P13893462842116951769.correct : P13893462842116951769.Spec := by
  intro n
  simp only [A069133, Nat.add_sub_cancel]

end A069133

/-! ## A069133.P10967818295303584003

`or(1, ∑[20*n])`
-/

namespace A069133.P10967818295303584003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069133.P10967818295303584003

namespace A069133

/-- `or(1, ∑[20*n])` -/
def P10967818295303584003.Spec : Prop :=
  ∀ n, (P10967818295303584003.a n : ℤ) = A069133 (n + 1)

end A069133

/-! ## A069133.P3887911871782693637

`xor(1, ∑[20*n])`
-/

namespace A069133.P3887911871782693637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069133.P3887911871782693637

namespace A069133

/-- `xor(1, ∑[20*n])` -/
def P3887911871782693637.Spec : Prop :=
  ∀ n, (P3887911871782693637.a n : ℤ) = A069133 (n + 1)

end A069133

/-! ## A069133.P633400079841683018

`∑[a(n-1)+20]` with `a(0)=1, a(1)=20`
-/

namespace A069133.P633400079841683018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069133.P633400079841683018

namespace A069133

/-- `∑[a(n-1)+20]` -/
def P633400079841683018.Spec : Prop :=
  ∀ n, (P633400079841683018.a n : ℤ) = A069133 (n + 1)

end A069133

/-! ## A069133.P9982972628310127248

`(A195317(n+1)+1)/2`
-/

namespace A069133.P9982972628310127248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195317 (n + 1) + 1 : ℚ) / 2

end

end A069133.P9982972628310127248

namespace A069133

/-- `(A195317(n+1)+1)/2` -/
def P9982972628310127248.Spec : Prop :=
  ∀ n, P9982972628310127248.a n = (A069133 (n + 1) : ℚ)

end A069133

/-! ## A069133.P14165447135745790084

`A332243(n)%A061793(n)`
-/

namespace A069133.P14165447135745790084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332243 n) (A061793 n)

end

end A069133.P14165447135745790084

namespace A069133

/-- `A332243(n)%A061793(n)` -/
def P14165447135745790084.Spec : Prop :=
  ∀ n, P14165447135745790084.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P11456271976250171676

`A016972(n)%A178574(n+1)`
-/

namespace A069133.P11456271976250171676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016972 n) (A178574 (n + 1))

end

end A069133.P11456271976250171676

namespace A069133

/-- `A016972(n)%A178574(n+1)` -/
def P11456271976250171676.Spec : Prop :=
  ∀ n, P11456271976250171676.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P4192307832707306308

`A017150(n)%A178574(n+1)`
-/

namespace A069133.P4192307832707306308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017150 n) (A178574 (n + 1))

end

end A069133.P4192307832707306308

namespace A069133

/-- `A017150(n)%A178574(n+1)` -/
def P4192307832707306308.Spec : Prop :=
  ∀ n, P4192307832707306308.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P1739950927529629633

`A017378(n)%A178574(n+1)`
-/

namespace A069133.P1739950927529629633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017378 n) (A178574 (n + 1))

end

end A069133.P1739950927529629633

namespace A069133

/-- `A017378(n)%A178574(n+1)` -/
def P1739950927529629633.Spec : Prop :=
  ∀ n, P1739950927529629633.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P13392064066930058825

`A017656(n)%A178574(n+1)`
-/

namespace A069133.P13392064066930058825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017656 n) (A178574 (n + 1))

end

end A069133.P13392064066930058825

namespace A069133

/-- `A017656(n)%A178574(n+1)` -/
def P13392064066930058825.Spec : Prop :=
  ∀ n, P13392064066930058825.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P2596970644631037402

`A195142(Δ[n²])`
-/

namespace A069133.P2596970644631037402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069133.P2596970644631037402

namespace A069133

/-- `A195142(Δ[n²])` -/
def P2596970644631037402.Spec : Prop :=
  ∀ n, P2596970644631037402.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P11250024586010152488

`∑[A298040(2*n)]`
-/

namespace A069133.P11250024586010152488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298040 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069133.P11250024586010152488

namespace A069133

/-- `∑[A298040(2*n)]` -/
def P11250024586010152488.Spec : Prop :=
  ∀ n, P11250024586010152488.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P14913214772012150539

`∑[record[A317320(n+1)]]`
-/

namespace A069133.P14913214772012150539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069133.P14913214772012150539

namespace A069133

/-- `∑[record[A317320(n+1)]]` -/
def P14913214772012150539.Spec : Prop :=
  ∀ n, P14913214772012150539.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P6323063338818098539

`∑[A008706(4*n)]`
-/

namespace A069133.P6323063338818098539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069133.P6323063338818098539

namespace A069133

/-- `∑[A008706(4*n)]` -/
def P6323063338818098539.Spec : Prop :=
  ∀ n, P6323063338818098539.a n = A069133 (n + 1)

end A069133

/-! ## A069133.P12236730936214430590

`A269132(A016861(n))`
-/

namespace A069133.P12236730936214430590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269132 (A016861 n).toNat

end

end A069133.P12236730936214430590

namespace A069133

/-- `A269132(A016861(n))` -/
def P12236730936214430590.Spec : Prop :=
  ∀ n, P12236730936214430590.a n = A069133 (n + 1)

end A069133

/-!
# A069134: (n!*(3*n))^2.

The programs for A069134, the canonical program `A069134.P14913592356176758804` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069134 has offset 0).

The definition of A069134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*3*n)²` (program `A069134.P14913592356176758804`, by `A069134.P14913592356176758804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069134.P14913592356176758804

`(n!*3*n)²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069134

/-- `(n!*3*n)²` -/
def P14913592356176758804.Spec : Prop :=
  ∀ n, (P14913592356176758804.a n : ℤ) = A069134 n

theorem P14913592356176758804.correct : P14913592356176758804.Spec := by
  intro n
  simp only [A069134]

end A069134

/-! ## A069134.P6776064612748124164

`Δ[3*n!]²`
-/

namespace A069134.P6776064612748124164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A069134.P6776064612748124164

namespace A069134

/-- `Δ[3*n!]²` -/
def P6776064612748124164.Spec : Prop :=
  ∀ n, P6776064612748124164.a n = A069134 n

theorem P6776064612748124164.correct : P6776064612748124164.Spec := by
  intro n
  simp only [A069134, Nat.add_sub_cancel, A069134.P6776064612748124164.f1, A069134.P6776064612748124164.a, A069134.P14913592356176758804.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A069134

/-! ## A069134.P5136754805917979328

`Δ[3*n!]^2`
-/

namespace A069134.P5136754805917979328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A069134.P5136754805917979328

namespace A069134

/-- `Δ[3*n!]^2` -/
def P5136754805917979328.Spec : Prop :=
  ∀ n, P5136754805917979328.a n = A069134 n

theorem P5136754805917979328.correct : P5136754805917979328.Spec := by
  intro n
  simp only [A069134, Nat.add_sub_cancel, A069134.P5136754805917979328.f1, A069134.P5136754805917979328.a, A069134.P14913592356176758804.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A069134

/-! ## A069134.P9771111258309592322

`(3*n*n!)^2`
-/

namespace A069134.P9771111258309592322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (n * Nat.factorial n)) ^ 2

end

end A069134.P9771111258309592322

namespace A069134

/-- `(3*n*n!)^2` -/
def P9771111258309592322.Spec : Prop :=
  ∀ n, (P9771111258309592322.a n : ℤ) = A069134 n

theorem P9771111258309592322.correct : P9771111258309592322.Spec := by
  intro n
  simp only [A069134, Nat.add_sub_cancel, A069134.P9771111258309592322.a, A069134.P14913592356176758804.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069134

/-! ## A069134.P7919575903031753178

`Δ[lcm(3, 1-n!)]²`
-/

namespace A069134.P7919575903031753178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A069134.P7919575903031753178

namespace A069134

/-- `Δ[lcm(3, 1-n!)]²` -/
def P7919575903031753178.Spec : Prop :=
  ∀ n, P7919575903031753178.a n = A069134 n

end A069134

/-!
# A069135: a(n) = (n!*(n+1)!)^2.

The programs for A069135, the canonical program `A069135.P18204192042065814080` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069135 has offset 0).

The definition of A069135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*(n+1)!)²` (program `A069135.P18204192042065814080`, by `A069135.P18204192042065814080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069135.P18204192042065814080

`(n!*(n+1)!)²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069135

/-- `(n!*(n+1)!)²` -/
def P18204192042065814080.Spec : Prop :=
  ∀ n, (P18204192042065814080.a n : ℤ) = A069135 n

theorem P18204192042065814080.correct : P18204192042065814080.Spec := by
  intro n
  simp only [A069135]

end A069135

/-! ## A069135.P15460286738391792215

`A010790(n)²`
-/

namespace A069135.P15460286738391792215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010790 n ^ 2

end

end A069135.P15460286738391792215

namespace A069135

/-- `A010790(n)²` -/
def P15460286738391792215.Spec : Prop :=
  ∀ n, P15460286738391792215.a n = A069135 n

end A069135

/-! ## A069135.P9246750411668732676

`(sqrt(n+1)*n!)^4`
-/

namespace A069135.P9246750411668732676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (n + 1 : ℝ) * (Nat.factorial n : ℝ)) ^ 4

end

end A069135.P9246750411668732676

namespace A069135

/-- `(sqrt(n+1)*n!)^4` -/
def P9246750411668732676.Spec : Prop :=
  ∀ n, P9246750411668732676.a n = (A069135 n : ℝ)

end A069135

/-! ## A069135.P8158369162698264691

`∏[n^ceil(atan(n))+n]²`
-/

namespace A069135.P8158369162698264691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069135.P8158369162698264691

namespace A069135

/-- `∏[n^ceil(atan(n))+n]²` -/
def P8158369162698264691.Spec : Prop :=
  ∀ n, P8158369162698264691.a n = (A069135 n : ℚ)

end A069135

/-! ## A069135.P7558208106549930897

`((n+1)!²/(n+1))²`
-/

namespace A069135.P7558208106549930897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A069135.P7558208106549930897

namespace A069135

/-- `((n+1)!²/(n+1))²` -/
def P7558208106549930897.Spec : Prop :=
  ∀ n, P7558208106549930897.a n = (A069135 n : ℚ)

end A069135

/-!
# A069136: Numbers that are not the sum of 5 nonnegative cubes.

The programs for A069136, there is no canonical definition to state claims against.
-/

/-! ## A069136.P12324959976489151081

`∩[A022566(n+1), A057906(n+1)]`
-/

namespace A069136.P12324959976489151081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069136.P12324959976489151081

/-! ## A069136.P1347690799746302325

`eq[0, A025449(n)]`
-/

namespace A069136.P1347690799746302325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069136.P1347690799746302325

/-! ## A069136.P5065986438079466732

`eq[0, A173679(n)]`
-/

namespace A069136.P5065986438079466732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069136.P5065986438079466732

/-! ## A069136.P9722033169045205883

`lt[5, A002376(n+1)]+1`
-/

namespace A069136.P9722033169045205883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069136.P9722033169045205883

/-! ## A069136.P7720981917311599560

`lt[A173679(A028310(n)), 1]`
-/

namespace A069136.P7720981917311599560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069136.P7720981917311599560

/-! ## A069136.P14679223581985234627

`eq[A025450(n), A025459(n)]`
-/

namespace A069136.P14679223581985234627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069136.P14679223581985234627

/-! ## A069136.P5626032504126932432

`eq[A025458(n), A175368(n)]`
-/

namespace A069136.P5626032504126932432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069136.P5626032504126932432

/-! ## A069136.P16545569057081423901

`eq[tanh(A025458(n)), A173678(n)]`
-/

namespace A069136.P16545569057081423901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A025458 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A069136.P16545569057081423901

/-! ## A069136.P2309639148579106428

`eq[A173678(n)+A025458(n), A025456(n)]`
-/

namespace A069136.P2309639148579106428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n + A025458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069136.P2309639148579106428

/-! ## A069136.P920284532472199913

`eq[A000096(n)*A025458(n), A173678(n)]`
-/

namespace A069136.P920284532472199913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A025458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069136.P920284532472199913

/-! ## A069136.P11477983956385032808

`eq[A002635(n)*A173678(n), A025458(n)]`
-/

namespace A069136.P11477983956385032808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n * A173678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069136.P11477983956385032808

/-! ## A069136.P13003462761323373082

`eq[A003327(n+1)*A025458(n), A173678(n)]`
-/

namespace A069136.P13003462761323373082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1) * A025458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069136.P13003462761323373082

/-!
# A069137: Numbers which are sums of neither 1, 2, 3, 4, 5 or 6 nonnegative cubes.

The programs for A069137, there is no canonical definition to state claims against.
-/

/-! ## A069137.P17863506941772853252

`eq[0, A025450(n)]`
-/

namespace A069137.P17863506941772853252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069137.P17863506941772853252

/-! ## A069137.P5163359729308958103

`eq[0, A173680(n)]`
-/

namespace A069137.P5163359729308958103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069137.P5163359729308958103

/-! ## A069137.P12622124910603329762

`eq[6, 6%A002376(n+1)]+1`
-/

namespace A069137.P12622124910603329762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A002376 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069137.P12622124910603329762

/-! ## A069137.P15148442914538076681

`eq[A025451(n), A025460(n)]`
-/

namespace A069137.P15148442914538076681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069137.P15148442914538076681

/-! ## A069137.P15623933102563430394

`eq[0, A025459(n)+A025449(n)]`
-/

namespace A069137.P15623933102563430394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n + A025449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069137.P15623933102563430394

/-! ## A069137.P1941786934313053615

`eq[A025461(n)+A025460(n), A025452(n)]`
-/

namespace A069137.P1941786934313053615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n + A025460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069137.P1941786934313053615

/-! ## A069137.P5163101389817192735

`eq[A025459(n)+A025458(n), A175368(n)]`
-/

namespace A069137.P5163101389817192735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n + A025458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069137.P5163101389817192735

/-! ## A069137.P8570428854522562984

`∩[A057907(n+1), A069136(n+1)]`
-/

namespace A069137.P8570428854522562984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069137.P8570428854522562984

/-! ## A069137.P12651511061061676298

`∩[A069136(n+1), A085334(n+1)]`
-/

namespace A069137.P12651511061061676298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069137.P12651511061061676298

/-!
# A069138: Triangle formed by multiplying Stirling numbers of 2nd kind S2(n,m) (A008277) by m+1.

The programs for A069138, there is no canonical definition to state claims against.
-/

/-! ## A069138.P12113740752596394586

`A321331(n)+A008277(n+1)`
-/

namespace A069138.P12113740752596394586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321331 n + A008277 (n + 1)

end

end A069138.P12113740752596394586

/-! ## A069138.P10850844304887053260

`A321331(n)+A048993(comp[∑[n]])`
-/

namespace A069138.P10850844304887053260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321331 n + A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A069138.P10850844304887053260

/-! ## A069138.P3801050767824312178

`A321331(n)+abs(A080417(n+1))`
-/

namespace A069138.P3801050767824312178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321331 n + |A080417 (n + 1)|

end

end A069138.P3801050767824312178

/-! ## A069138.P12285632493670532496

`(A002262(n)+2)*A008277(n+1)`
-/

namespace A069138.P12285632493670532496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * A008277 (n + 1)

end

end A069138.P12285632493670532496

/-! ## A069138.P12356430861923637222

`A008277(n+1)*A131818(n+2)`
-/

namespace A069138.P12356430861923637222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A131818 (n + 2)

end

end A069138.P12356430861923637222

/-! ## A069138.P4011925403513333518

`(A002262(n)+2)*A048993(comp[∑[n]])`
-/

namespace A069138.P4011925403513333518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A069138.P4011925403513333518

/-! ## A069138.P6940003335811702446

`(A002260(n+1)+1)*A008277(n+1)`
-/

namespace A069138.P6940003335811702446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * A008277 (n + 1)

end

end A069138.P6940003335811702446

/-! ## A069138.P16964518966590655698

`A321331(n)+A321331(n)/A002260(n+1)`
-/

namespace A069138.P16964518966590655698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321331 n : ℚ) + (A321331 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A069138.P16964518966590655698

/-! ## A069138.P9521869453901380895

`(A000005(A059268(n))+1)*A008277(n+1)`
-/

namespace A069138.P9521869453901380895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A059268 n).toNat + 1) * A008277 (n + 1)

end

end A069138.P9521869453901380895

/-!
# A069140: a(n) = (4*n-1)*4*n*(4*n+1).

The programs for A069140, the canonical program `A069140.P5151333609523772961` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069140 has offset 0).

The definition of A069140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n-1)*4*n*(4*n+1)` (program `A069140.P5151333609523772961`, by `A069140.P5151333609523772961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069140.P1943170801627661753

`64*n^3-4*n`
-/

namespace A069140.P1943170801627661753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n ^ 3 : ℤ) - (4 * n : ℤ)

end

end A069140.P1943170801627661753

namespace A069140

/-- `64*n^3-4*n` -/
def P1943170801627661753.Spec : Prop :=
  ∀ n, P1943170801627661753.a n = A069140 n

theorem P1943170801627661753.correct : P1943170801627661753.Spec := by
  intro n
  simp only [A069140, Nat.add_sub_cancel, A069140.P1943170801627661753.a, A069140.P5151333609523772961.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069140

/-! ## A069140.P5151333609523772961

`(4*n-1)*4*n*(4*n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069140

/-- `(4*n-1)*4*n*(4*n+1)` -/
def P5151333609523772961.Spec : Prop :=
  ∀ n, P5151333609523772961.a n = A069140 n

theorem P5151333609523772961.correct : P5151333609523772961.Spec := by
  intro n
  simp only [A069140]

end A069140

/-! ## A069140.P13715553559408946763

`lcm(A007742(n), A104188(n))`
-/

namespace A069140.P13715553559408946763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007742 n) (A104188 n)

end

end A069140.P13715553559408946763

namespace A069140

/-- `lcm(A007742(n), A104188(n))` -/
def P13715553559408946763.Spec : Prop :=
  ∀ n, (P13715553559408946763.a n : ℤ) = A069140 n

end A069140

/-!
# A069141: a(n) = n^2*(n+1)!/(n^tau(n)) where tau(n) is the number of divisors of n.

The programs for A069141, there is no canonical definition to state claims against.
-/

/-! ## A069141.P445201584384406563

`(n+2)!/A277169(n+1)`
-/

namespace A069141.P445201584384406563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (A277169 (n + 1) : ℚ)

end

end A069141.P445201584384406563

/-! ## A069141.P326263337881426494

`(n+2)!/A007956(n+1)²`
-/

namespace A069141.P326263337881426494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (A007956 (n + 1) ^ 2 : ℚ)

end

end A069141.P326263337881426494

/-! ## A069141.P5106719638591154497

`A000142(n+2)/A277169(n+1)`
-/

namespace A069141.P5106719638591154497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A277169 (n + 1) : ℚ)

end

end A069141.P5106719638591154497

/-! ## A069141.P2373546690081184987

`A000142(n+2)/A007956(n+1)²`
-/

namespace A069141.P2373546690081184987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A007956 (n + 1) ^ 2 : ℚ)

end

end A069141.P2373546690081184987

/-! ## A069141.P2899361086340250025

`∏[n+2]/A007956(A000027(n+1))²`
-/

namespace A069141.P2899361086340250025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A007956 (A000027 (n + 1)).toNat ^ 2 : ℚ)

end

end A069141.P2899361086340250025

/-!
# A069142: Primes p such that p+2, 2p+1, and 2p+3 are also prime.

The programs for A069142, there is no canonical definition to state claims against.
-/

/-! ## A069142.P18028501411462611869

`A066388(n+1)-1`
-/

namespace A069142.P18028501411462611869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066388 (n + 1) - 1

end

end A069142.P18028501411462611869

/-! ## A069142.P3902915811694658020

`A076504(n+1)/2-1`
-/

namespace A069142.P3902915811694658020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076504 (n + 1) : ℚ) / 2 - 1

end

end A069142.P3902915811694658020

/-! ## A069142.P12463918095262006195

`A176890(A176889(2*n+1))+A066388(n+1)`
-/

namespace A069142.P12463918095262006195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176890 (A176889 (2 * n + 1)).toNat + A066388 (n + 1)

end

end A069142.P12463918095262006195

/-! ## A069142.P12990536176721330586

`A001359(A158866(n+1))`
-/

namespace A069142.P12990536176721330586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A158866 (n + 1)).toNat

end

end A069142.P12990536176721330586

/-! ## A069142.P14282635022048825217

`(A158870(n+1)-3)/2`
-/

namespace A069142.P14282635022048825217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158870 (n + 1) - 3 : ℚ) / 2

end

end A069142.P14282635022048825217

/-! ## A069142.P14472321009894229395

`A261463(n+2)`
-/

namespace A069142.P14472321009894229395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261463 (n + 2)

end

end A069142.P14472321009894229395

/-! ## A069142.P16398426941408801471

`A221310(n+4)-1`
-/

namespace A069142.P16398426941408801471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 4) - 1

end

end A069142.P16398426941408801471

/-! ## A069142.P16109032211805283106

`∩[A045536(n+1), A126107(n+1)]`
-/

namespace A069142.P16109032211805283106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P16109032211805283106

/-! ## A069142.P15145680866104721232

`∩[A045536(n+1), A329151(n+1)]`
-/

namespace A069142.P15145680866104721232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P15145680866104721232

/-! ## A069142.P16456592073057030102

`∩[A045536(n+1), A099349(n+1)]`
-/

namespace A069142.P16456592073057030102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P16456592073057030102

/-! ## A069142.P14181329332555982825

`∩[A176045(n+1), A351875(n+1)]-1`
-/

namespace A069142.P14181329332555982825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A069142.P14181329332555982825

/-! ## A069142.P14195783163909919784

`∩[A034937(n+1), A045536(n+1)]`
-/

namespace A069142.P14195783163909919784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P14195783163909919784

/-! ## A069142.P18126831607449112573

`∩[A001359(n+1), A099349(n+1)]`
-/

namespace A069142.P18126831607449112573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P18126831607449112573

/-! ## A069142.P15364977290793111014

`∩[A001359(n+1), A126107(n+1)]`
-/

namespace A069142.P15364977290793111014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P15364977290793111014

/-! ## A069142.P10581692434534478302

`∩[A054799(n+1), A099349(n+1)]`
-/

namespace A069142.P10581692434534478302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P10581692434534478302

/-! ## A069142.P942294054291383708

`∩[A063693(n+1), A099349(n+1)]`
-/

namespace A069142.P942294054291383708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P942294054291383708

/-! ## A069142.P4499998922001048834

`∩[A063700(n+1), A099349(n+1)]`
-/

namespace A069142.P4499998922001048834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P4499998922001048834

/-! ## A069142.P16854665454122334782

`∩[A054799(n+1), A126107(n+1)]`
-/

namespace A069142.P16854665454122334782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P16854665454122334782

/-! ## A069142.P4060336953918010748

`∩[A063693(n+1), A126107(n+1)]`
-/

namespace A069142.P4060336953918010748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P4060336953918010748

/-! ## A069142.P4827662448814291640

`∩[A063700(n+1), A126107(n+1)]`
-/

namespace A069142.P4827662448814291640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069142.P4827662448814291640

/-!
# A069143: a(1) = a(2) = 1; a(n) = sigma(a(n-1)+a(n-2)).

The programs for A069143, there is no canonical definition to state claims against.
-/

/-! ## A069143.P11919698679315919026

`A000458(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A069143.P11919698679315919026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000458 (n + 1) - a (n - 1)

end

end A069143.P11919698679315919026

/-! ## A069143.P14377243114673219664

`∑{d}[A000458(n), #]`
-/

namespace A069143.P14377243114673219664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A069143.P14377243114673219664

/-! ## A069143.P16961500574278429320

`A000203(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A069143.P16961500574278429320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000203 (a (n - 1) + a (n - 2)).toNat

end

end A069143.P16961500574278429320

/-! ## A069143.P11546477672212552603

`A000203(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A069143.P11546477672212552603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000203 (a (n - 1) - (-a (n - 2))).toNat

end

end A069143.P11546477672212552603

/-! ## A069143.P5079088496460832129

`A000203(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A069143.P5079088496460832129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000203 (a (n - 1) - (-a (n - 2))).toNat

end

end A069143.P5079088496460832129

/-!
# A069144: Numbers k such that A068976(k) divides k.

The programs for A069144, there is no canonical definition to state claims against.
-/

/-! ## A069144.P17862532946187477586

`lcm(A000005(ceil(10^n/9)), A129961(n+1))`
-/

namespace A069144.P17862532946187477586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 ⌈(10 ^ n : ℚ) / 9⌉.toNat) (A129961 (n + 1))

end

end A069144.P17862532946187477586

/-! ## A069144.P16896268241442691316

`A002260(A013519(n))*A006233(n)`
-/

namespace A069144.P16896268241442691316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A013519 n).toNat * A006233 n

end

end A069144.P16896268241442691316

/-!
# A069146: Numbers m such that m = sigma(abs(k)) - 3k, where k = sigma(m) - 3m.

The programs for A069146, there is no canonical definition to state claims against.
-/

/-! ## A069146.P13274398400656959256

`A114528(eq[A028310(n), A277195(n+1)])`
-/

namespace A069146.P13274398400656959256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114528 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069146.P13274398400656959256

/-! ## A069146.P12649910569560535075

`A114528(∑[A114512(C(n, 6))])`
-/

namespace A069146.P12649910569560535075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114512 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114528 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069146.P12649910569560535075

/-! ## A069146.P9860951990625521885

`A114528(∑[A114513(C(n, 6))])`
-/

namespace A069146.P9860951990625521885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114513 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114528 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069146.P9860951990625521885

/-!
# A069147: Numbers k such that tau_3(k) (the number of ordered factorizations of k as k = r*s*t) divides k.

The programs for A069147, there is no canonical definition to state claims against.
-/

/-! ## A069147.P4693429617316679506

`A093653(A327872(n))*A351003(n)`
-/

namespace A069147.P4693429617316679506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (A327872 n).toNat * A351003 n

end

end A069147.P4693429617316679506

/-! ## A069147.P12746218855021197251

`A007425(A000142(n)*A070889(n+1))`
-/

namespace A069147.P12746218855021197251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A000142 n * A070889 (n + 1)).toNat

end

end A069147.P12746218855021197251

/-!
# A069148: Numbers k such that k*k!/A062758(k) is not an integer where A062758(k) is the product of squares of divisors of k.

The programs for A069148, there is no canonical definition to state claims against.
-/

/-! ## A069148.P10115681870117828337

`eq[A011776(n+1), A070824(n+1)]+1`
-/

namespace A069148.P10115681870117828337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069148.P10115681870117828337

/-! ## A069148.P3079325372609312709

`A014681(eq[A011776(n+1), A070824(n+1)])`
-/

namespace A069148.P3079325372609312709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069148.P3079325372609312709

/-! ## A069148.P14616839232649125788

`A020725(eq[A011776(n+1), A070824(n+1)])`
-/

namespace A069148.P14616839232649125788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069148.P14616839232649125788

/-! ## A069148.P9714587871098374294

`A092486(eq[A011776(n+1), A070824(n+1)])`
-/

namespace A069148.P9714587871098374294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069148.P9714587871098374294

/-! ## A069148.P5259948880488198227

`A133265(eq[A011776(n+1), A070824(n+1)])`
-/

namespace A069148.P5259948880488198227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069148.P5259948880488198227

/-! ## A069148.P18392737662389783706

`lt[A011776(A233583(n+1)), A032741(n)]`
-/

namespace A069148.P18392737662389783706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069148.P18392737662389783706

/-!
# A069149: Numbers k such that k*k!/A062758(k) is an integer where A062758(k) is the product of squares of divisors of k.

The programs for A069149, there is no canonical definition to state claims against.
-/

/-! ## A069149.P13418095639236724752

`eq[char[A069148(n+1)], A185013(n+3)]`
-/

namespace A069149.P13418095639236724752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A069149.P13418095639236724752

/-! ## A069149.P17937190540840233382

`eq[char[A069148(n+1)], A151933(n)]`
-/

namespace A069149.P17937190540840233382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A069149.P17937190540840233382

/-! ## A069149.P9875827736733996277

`eq[0, A280712(A051874(n+2))]`
-/

namespace A069149.P9875827736733996277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (A051874 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069149.P9875827736733996277

/-! ## A069149.P1226166220621302270

`lt[A316431(A316429(3*n+2)), A316437(n+3)]`
-/

namespace A069149.P1226166220621302270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A316429 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069149.P1226166220621302270

/-! ## A069149.P17776786661585330396

`record[or(A111660(n), A259030(n+1))]`
-/

namespace A069149.P17776786661585330396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111660 n) (A259030 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069149.P17776786661585330396

/-!
# A069150: Integers of the form k*k!/A062758(k) in the order they appear in A069149, where A062758(k) is the product of squares of divisors of k.

The programs for A069150, there is no canonical definition to state claims against.
-/

/-! ## A069150.P13093193538668781015

`A119619(lt[A119619(n+1), A014137(n)])`
-/

namespace A069150.P13093193538668781015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069150.P13093193538668781015

/-! ## A069150.P15680039757841540687

`A067653(lt[A287192(n), A211118(n+1)])`
-/

namespace A069150.P15680039757841540687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069150.P15680039757841540687

/-! ## A069150.P13890367575585930487

`A279311(lt[A280527(n), A122241(n+1)])`
-/

namespace A069150.P13890367575585930487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069150.P13890367575585930487

/-!
# A069152: a(n) = (n-1)!-n^tau(n)/n^2.

The programs for A069152, there is no canonical definition to state claims against.
-/

/-! ## A069152.P14077076135293636688

`(n+1)!-A277169(n+2)`
-/

namespace A069152.P14077076135293636688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A277169 (n + 2)

end

end A069152.P14077076135293636688

/-! ## A069152.P17047223820651847813

`(n+1)!-A007956(n+2)²`
-/

namespace A069152.P17047223820651847813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A007956 (n + 2) ^ 2

end

end A069152.P17047223820651847813

/-! ## A069152.P11446629128716293832

`record[A047920(n)]-A277169(n+2)`
-/

namespace A069152.P11446629128716293832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A277169 (n + 2)

end

end A069152.P11446629128716293832

/-! ## A069152.P17971897491350529342

`A000142(n+1)-A277169(n+2)`
-/

namespace A069152.P17971897491350529342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A277169 (n + 2)

end

end A069152.P17971897491350529342

/-! ## A069152.P3374387749141168542

`A000142(n+1)-A007956(n+2)²`
-/

namespace A069152.P3374387749141168542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A007956 (n + 2) ^ 2

end

end A069152.P3374387749141168542

/-!
# A069153: a(n) = Sum_{d|n} d*(d-1)/2.

The programs for A069153, the canonical program `A069153.P8558030600684974679` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069153 has offset 1).

The definition of A069153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069153.P8558030600684974679

`∑{d}[n+1, C(#, 2)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069153

/-- `∑{d}[n+1, C(#, 2)]` -/
def P8558030600684974679.Spec : Prop :=
  ∀ n, (P8558030600684974679.a n : ℤ) = A069153 (n + 1)

theorem P8558030600684974679.correct : P8558030600684974679.Spec := by
  intro n
  simp only [A069153, Nat.add_sub_cancel]

end A069153

/-! ## A069153.P14418469720869107406

`∑{d}[n+1, (#²-#)/2]`
-/

namespace A069153.P14418469720869107406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (d : ℤ) : ℚ) / 2

end

end A069153.P14418469720869107406

namespace A069153

/-- `∑{d}[n+1, (#²-#)/2]` -/
def P14418469720869107406.Spec : Prop :=
  ∀ n, P14418469720869107406.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P9359409816454187202

`∑{d}[n+1, #*(#-1)]/2`
-/

namespace A069153.P9359409816454187202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d : ℤ) - 1) : ℤ) : ℚ) / 2

end

end A069153.P9359409816454187202

namespace A069153

/-- `∑{d}[n+1, #*(#-1)]/2` -/
def P9359409816454187202.Spec : Prop :=
  ∀ n, P9359409816454187202.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P3288476722645607522

`A086666(n+1)/2`
-/

namespace A069153.P3288476722645607522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086666 (n + 1) : ℚ) / 2

end

end A069153.P3288476722645607522

namespace A069153

/-- `A086666(n+1)/2` -/
def P3288476722645607522.Spec : Prop :=
  ∀ n, P3288476722645607522.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P10494204211928668468

`A363610(n+1)+A065608(n+1)`
-/

namespace A069153.P10494204211928668468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363610 (n + 1) + A065608 (n + 1)

end

end A069153.P10494204211928668468

namespace A069153

/-- `A363610(n+1)+A065608(n+1)` -/
def P10494204211928668468.Spec : Prop :=
  ∀ n, P10494204211928668468.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P8116211324290185246

`A007437(n+1)-A000203(n+1)`
-/

namespace A069153.P8116211324290185246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A000203 (n + 1)

end

end A069153.P8116211324290185246

namespace A069153

/-- `A007437(n+1)-A000203(n+1)` -/
def P8116211324290185246.Spec : Prop :=
  ∀ n, P8116211324290185246.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P6372994702930601910

`A001157(n+1)-A007437(n+1)`
-/

namespace A069153.P6372994702930601910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A007437 (n + 1)

end

end A069153.P6372994702930601910

namespace A069153

/-- `A001157(n+1)-A007437(n+1)` -/
def P6372994702930601910.Spec : Prop :=
  ∀ n, P6372994702930601910.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P9588566222269365911

`A116913(n+1)-A001157(n+1)`
-/

namespace A069153.P9588566222269365911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1) - A001157 (n + 1)

end

end A069153.P9588566222269365911

namespace A069153

/-- `A116913(n+1)-A001157(n+1)` -/
def P9588566222269365911.Spec : Prop :=
  ∀ n, P9588566222269365911.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P17490814696871575362

`A067692(n+1)-A184387(n+1)`
-/

namespace A069153.P17490814696871575362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (n + 1) - A184387 (n + 1)

end

end A069153.P17490814696871575362

namespace A069153

/-- `A067692(n+1)-A184387(n+1)` -/
def P17490814696871575362.Spec : Prop :=
  ∀ n, P17490814696871575362.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P2846097880594216689

`A278945(n+1)-A116913(n+1)`
-/

namespace A069153.P2846097880594216689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278945 (n + 1) - A116913 (n + 1)

end

end A069153.P2846097880594216689

namespace A069153

/-- `A278945(n+1)-A116913(n+1)` -/
def P2846097880594216689.Spec : Prop :=
  ∀ n, P2846097880594216689.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P9907723151478119653

`A278947(n+1)-A278945(n+1)`
-/

namespace A069153.P9907723151478119653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278947 (n + 1) - A278945 (n + 1)

end

end A069153.P9907723151478119653

namespace A069153

/-- `A278947(n+1)-A278945(n+1)` -/
def P9907723151478119653.Spec : Prop :=
  ∀ n, P9907723151478119653.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P18410292069978914116

`A363604(n+1)-A363607(n+1)`
-/

namespace A069153.P18410292069978914116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) - A363607 (n + 1)

end

end A069153.P18410292069978914116

namespace A069153

/-- `A363604(n+1)-A363607(n+1)` -/
def P18410292069978914116.Spec : Prop :=
  ∀ n, P18410292069978914116.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P16287616507363775032

`(A189835(n+1)+A094471(n+1))/2`
-/

namespace A069153.P16287616507363775032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189835 (n + 1) + A094471 (n + 1) : ℚ) / 2

end

end A069153.P16287616507363775032

namespace A069153

/-- `(A189835(n+1)+A094471(n+1))/2` -/
def P16287616507363775032.Spec : Prop :=
  ∀ n, P16287616507363775032.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P17383514602310620737

`(A235799(n+1)+A067558(n+1))/2`
-/

namespace A069153.P17383514602310620737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235799 (n + 1) + A067558 (n + 1) : ℚ) / 2

end

end A069153.P17383514602310620737

namespace A069153

/-- `(A235799(n+1)+A067558(n+1))/2` -/
def P17383514602310620737.Spec : Prop :=
  ∀ n, P17383514602310620737.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P6008481172796795334

`2*A346759(n+1)-A086670(n+1)`
-/

namespace A069153.P6008481172796795334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346759 (n + 1) - A086670 (n + 1)

end

end A069153.P6008481172796795334

namespace A069153

/-- `2*A346759(n+1)-A086670(n+1)` -/
def P6008481172796795334.Spec : Prop :=
  ∀ n, P6008481172796795334.a n = A069153 (n + 1)

end A069153

/-! ## A069153.P12183476515203702044

`(A001157(n+1)-A000203(n+1))/2`
-/

namespace A069153.P12183476515203702044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) - A000203 (n + 1) : ℚ) / 2

end

end A069153.P12183476515203702044

namespace A069153

/-- `(A001157(n+1)-A000203(n+1))/2` -/
def P12183476515203702044.Spec : Prop :=
  ∀ n, P12183476515203702044.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P17054552472126630892

`(A116913(n+1)-A007437(n+1))/2`
-/

namespace A069153.P17054552472126630892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116913 (n + 1) - A007437 (n + 1) : ℚ) / 2

end

end A069153.P17054552472126630892

namespace A069153

/-- `(A116913(n+1)-A007437(n+1))/2` -/
def P17054552472126630892.Spec : Prop :=
  ∀ n, P17054552472126630892.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P5447263969143706570

`(A092348(n+1)-A092349(n+1))/2`
-/

namespace A069153.P5447263969143706570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) - A092349 (n + 1) : ℚ) / 2

end

end A069153.P5447263969143706570

namespace A069153

/-- `(A092348(n+1)-A092349(n+1))/2` -/
def P5447263969143706570.Spec : Prop :=
  ∀ n, P5447263969143706570.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P5655254182041348291

`(A308047(n+1)-A272027(n+1))/2`
-/

namespace A069153.P5655254182041348291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308047 (n + 1) - A272027 (n + 1) : ℚ) / 2

end

end A069153.P5655254182041348291

namespace A069153

/-- `(A308047(n+1)-A272027(n+1))/2` -/
def P5655254182041348291.Spec : Prop :=
  ∀ n, P5655254182041348291.a n = (A069153 (n + 1) : ℚ)

end A069153

/-! ## A069153.P16567145330372782451

`(A334136(n+1)-A303384(n+1))/2`
-/

namespace A069153.P16567145330372782451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334136 (n + 1) - A303384 (n + 1) : ℚ) / 2

end

end A069153.P16567145330372782451

namespace A069153

/-- `(A334136(n+1)-A303384(n+1))/2` -/
def P16567145330372782451.Spec : Prop :=
  ∀ n, P16567145330372782451.a n = (A069153 (n + 1) : ℚ)

end A069153

/-!
# A069156: A certain class of stable matchings.

The programs for A069156, there is no canonical definition to state claims against.
-/

/-! ## A069156.P2196881063569518373

`A357271(A043316(n+1))`
-/

namespace A069156.P2196881063569518373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357271 (A043316 (n + 1)).toNat

end

end A069156.P2196881063569518373

/-! ## A069156.P3104425020439385873

`A357271(A044913(n+1))`
-/

namespace A069156.P3104425020439385873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357271 (A044913 (n + 1)).toNat

end

end A069156.P3104425020439385873

/-! ## A069156.P17878591870695982170

`A357271(A049872(n+1))`
-/

namespace A069156.P17878591870695982170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357271 (A049872 (n + 1)).toNat

end

end A069156.P17878591870695982170

/-! ## A069156.P6752001116741350988

`A357271(A061147(n+1))`
-/

namespace A069156.P6752001116741350988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357271 (A061147 (n + 1)).toNat

end

end A069156.P6752001116741350988

/-! ## A069156.P4595968040272069626

`A357271(A061497(n+1))`
-/

namespace A069156.P4595968040272069626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357271 (A061497 (n + 1)).toNat

end

end A069156.P4595968040272069626

/-!
# A069157: Number of positive divisors of n that are divisible by the smallest prime that divides n.

The programs for A069157, the canonical program `A069157.P2433626944177830795` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069157 has offset 1).

The definition of A069157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A067029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069157.P2433626944177830795

`A000005(n+1)*A067029(n+1)/(1+A067029(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A069157

/-- `A000005(n+1)*A067029(n+1)/(1+A067029(n+1))` -/
def P2433626944177830795.Spec : Prop :=
  ∀ n, P2433626944177830795.a n = (A069157 (n + 1) : ℚ)

end A069157

/-! ## A069157.P7834290669740227165

`A183063(A071364(n+1))`
-/

namespace A069157.P7834290669740227165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A071364 (n + 1)).toNat

end

end A069157.P7834290669740227165

namespace A069157

/-- `A183063(A071364(n+1))` -/
def P7834290669740227165.Spec : Prop :=
  ∀ n, P7834290669740227165.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P1305636076010187855

`A183063(A348717(n+1))`
-/

namespace A069157.P1305636076010187855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A348717 (n + 1)).toNat

end

end A069157.P1305636076010187855

namespace A069157

/-- `A183063(A348717(n+1))` -/
def P1305636076010187855.Spec : Prop :=
  ∀ n, P1305636076010187855.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P16215398667630543394

`Δ[A006218(n)]-A333145(n+1)`
-/

namespace A069157.P16215398667630543394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333145 (n + 1)

end

end A069157.P16215398667630543394

namespace A069157

/-- `Δ[A006218(n)]-A333145(n+1)` -/
def P16215398667630543394.Spec : Prop :=
  ∀ n, P16215398667630543394.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P7681186098683428285

`A000005(n+1)-A333145(n+1)`
-/

namespace A069157.P7681186098683428285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A333145 (n + 1)

end

end A069157.P7681186098683428285

namespace A069157

/-- `A000005(n+1)-A333145(n+1)` -/
def P7681186098683428285.Spec : Prop :=
  ∀ n, P7681186098683428285.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P10189148792178899242

`A067029(n+1)*A333145(n+1)`
-/

namespace A069157.P10189148792178899242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1) * A333145 (n + 1)

end

end A069157.P10189148792178899242

namespace A069157

/-- `A067029(n+1)*A333145(n+1)` -/
def P10189148792178899242.Spec : Prop :=
  ∀ n, P10189148792178899242.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P14265001163738309099

`A000005(A032742(n+1))%(n+1)`
-/

namespace A069157.P14265001163738309099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A032742 (n + 1)).toNat) (n + 1 : ℤ)

end

end A069157.P14265001163738309099

namespace A069157

/-- `A000005(A032742(n+1))%(n+1)` -/
def P14265001163738309099.Spec : Prop :=
  ∀ n, P14265001163738309099.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P6490835382644892744

`∑{d}[A246277(n+1), A000007(#)+1]`
-/

namespace A069157.P6490835382644892744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000007 d + 1)

end

end A069157.P6490835382644892744

namespace A069157

/-- `∑{d}[A246277(n+1), A000007(#)+1]` -/
def P6490835382644892744.Spec : Prop :=
  ∀ n, P6490835382644892744.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P10181435667298011670

`A000005((n+1)/A020639(n+1))%(n+1)`
-/

namespace A069157.P10181435667298011670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat) (n + 1 : ℤ)

end

end A069157.P10181435667298011670

namespace A069157

/-- `A000005((n+1)/A020639(n+1))%(n+1)` -/
def P10181435667298011670.Spec : Prop :=
  ∀ n, P10181435667298011670.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P18238460931639058579

`A000005(A032742(n+1))-A000007(n)`
-/

namespace A069157.P18238460931639058579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032742 (n + 1)).toNat - A000007 n

end

end A069157.P18238460931639058579

namespace A069157

/-- `A000005(A032742(n+1))-A000007(n)` -/
def P18238460931639058579.Spec : Prop :=
  ∀ n, P18238460931639058579.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P11903146847048076309

`A000005(A032742(n+1))*A057427(n)`
-/

namespace A069157.P11903146847048076309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032742 (n + 1)).toNat * A057427 n

end

end A069157.P11903146847048076309

namespace A069157

/-- `A000005(A032742(n+1))*A057427(n)` -/
def P11903146847048076309.Spec : Prop :=
  ∀ n, P11903146847048076309.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P7227401489663773128

`A000005(n+1)-A000005(A028234(n+1))`
-/

namespace A069157.P7227401489663773128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A028234 (n + 1)).toNat

end

end A069157.P7227401489663773128

namespace A069157

/-- `A000005(n+1)-A000005(A028234(n+1))` -/
def P7227401489663773128.Spec : Prop :=
  ∀ n, P7227401489663773128.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P18376775556214593700

`A334954(n+1)-A334954(A028234(n+1))`
-/

namespace A069157.P18376775556214593700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A334954 (A028234 (n + 1)).toNat

end

end A069157.P18376775556214593700

namespace A069157

/-- `A334954(n+1)-A334954(A028234(n+1))` -/
def P18376775556214593700.Spec : Prop :=
  ∀ n, P18376775556214593700.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P2999127840466300585

`A000005(A028234(n+1))*A067029(n+1)`
-/

namespace A069157.P2999127840466300585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028234 (n + 1)).toNat * A067029 (n + 1)

end

end A069157.P2999127840466300585

namespace A069157

/-- `A000005(A028234(n+1))*A067029(n+1)` -/
def P2999127840466300585.Spec : Prop :=
  ∀ n, P2999127840466300585.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P18090221605274857811

`A000005(A032742(n+1))-A010051(2*(n+1))`
-/

namespace A069157.P18090221605274857811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032742 (n + 1)).toNat - A010051 (2 * (n + 1))

end

end A069157.P18090221605274857811

namespace A069157

/-- `A000005(A032742(n+1))-A010051(2*(n+1))` -/
def P18090221605274857811.Spec : Prop :=
  ∀ n, P18090221605274857811.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P7390811174768162133

`val(A071364(n+1), 2)*A046524(A028234(n+1))`
-/

namespace A069157.P7390811174768162133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2 : ℤ) * A046524 (A028234 (n + 1)).toNat

end

end A069157.P7390811174768162133

namespace A069157

/-- `val(A071364(n+1), 2)*A046524(A028234(n+1))` -/
def P7390811174768162133.Spec : Prop :=
  ∀ n, P7390811174768162133.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P14041911811726975550

`val(A071364(n+1), 2)*A046524((n+1)/A028233(n+1))`
-/

namespace A069157.P14041911811726975550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2 : ℤ) * A046524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

end

end A069157.P14041911811726975550

namespace A069157

/-- `val(A071364(n+1), 2)*A046524((n+1)/A028233(n+1))` -/
def P14041911811726975550.Spec : Prop :=
  ∀ n, P14041911811726975550.a n = A069157 (n + 1)

end A069157

/-! ## A069157.P18166919700930054977

`A000005(n+1)-A000005(n+1)/A000005(A028233(n+1))`
-/

namespace A069157.P18166919700930054977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ) / (A000005 (A028233 (n + 1)).toNat : ℚ)

end

end A069157.P18166919700930054977

namespace A069157

/-- `A000005(n+1)-A000005(n+1)/A000005(A028233(n+1))` -/
def P18166919700930054977.Spec : Prop :=
  ∀ n, P18166919700930054977.a n = (A069157 (n + 1) : ℚ)

end A069157

/-!
# A069158: a(n) = Product_{d|n} mu(d), product over positive divisors, d, of n, where mu(d) = Moebius function (A008683).

The programs for A069158, the canonical program `A069158.P10112105031369206397` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069158 has offset 1).

The definition of A069158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069158.P10112105031369206397

`A008966(n+1)-2*A010051(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069158

/-- `A008966(n+1)-2*A010051(n+1)` -/
def P10112105031369206397.Spec : Prop :=
  ∀ n, P10112105031369206397.a n = A069158 (n + 1)

theorem P10112105031369206397.correct : P10112105031369206397.Spec := by
  intro n
  simp only [A069158, Nat.add_sub_cancel]

end A069158

/-! ## A069158.P16660275980737012520

`∏{d}[n+1, A008683(#)]`
-/

namespace A069158.P16660275980737012520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008683 d

end

end A069158.P16660275980737012520

namespace A069158

/-- `∏{d}[n+1, A008683(#)]` -/
def P16660275980737012520.Spec : Prop :=
  ∀ n, P16660275980737012520.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P10873478241457642071

`∏{d}[n+1, A197774(#)]`
-/

namespace A069158.P10873478241457642071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A197774 d

end

end A069158.P10873478241457642071

namespace A069158

/-- `∏{d}[n+1, A197774(#)]` -/
def P10873478241457642071.Spec : Prop :=
  ∀ n, P10873478241457642071.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P8151999137744341864

`∏{d}[n+1, A210826(#)]`
-/

namespace A069158.P8151999137744341864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A210826 d

end

end A069158.P8151999137744341864

namespace A069158

/-- `∏{d}[n+1, A210826(#)]` -/
def P8151999137744341864.Spec : Prop :=
  ∀ n, P8151999137744341864.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P14767827292758608624

`∏{d}[n+1, A219009(#)]`
-/

namespace A069158.P14767827292758608624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A219009 d

end

end A069158.P14767827292758608624

namespace A069158

/-- `∏{d}[n+1, A219009(#)]` -/
def P14767827292758608624.Spec : Prop :=
  ∀ n, P14767827292758608624.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P17176359265311202124

`∏{d}[n+1, A253206(#)]`
-/

namespace A069158.P17176359265311202124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A253206 d

end

end A069158.P17176359265311202124

namespace A069158

/-- `∏{d}[n+1, A253206(#)]` -/
def P17176359265311202124.Spec : Prop :=
  ∀ n, P17176359265311202124.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P3684198992542194941

`∏{d}[n+1, A355819(#)]`
-/

namespace A069158.P3684198992542194941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A355819 d

end

end A069158.P3684198992542194941

namespace A069158

/-- `∏{d}[n+1, A355819(#)]` -/
def P3684198992542194941.Spec : Prop :=
  ∀ n, P3684198992542194941.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P13888750251876325779

`∏{d}[n+1, A355824(#)]`
-/

namespace A069158.P13888750251876325779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A355824 d

end

end A069158.P13888750251876325779

namespace A069158

/-- `∏{d}[n+1, A355824(#)]` -/
def P13888750251876325779.Spec : Prop :=
  ∀ n, P13888750251876325779.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P60465020050935838

`∏{d}[n+1, A355826(#)]`
-/

namespace A069158.P60465020050935838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A355826 d

end

end A069158.P60465020050935838

namespace A069158

/-- `∏{d}[n+1, A355826(#)]` -/
def P60465020050935838.Spec : Prop :=
  ∀ n, P60465020050935838.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P2148064744912874613

`A140700(n+1)/(n+1)`
-/

namespace A069158.P2148064744912874613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140700 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069158.P2148064744912874613

namespace A069158

/-- `A140700(n+1)/(n+1)` -/
def P2148064744912874613.Spec : Prop :=
  ∀ n, P2148064744912874613.a n = (A069158 (n + 1) : ℚ)

end A069158

/-! ## A069158.P8091891627674051392

`A013595(A074823(n+1))`
-/

namespace A069158.P8091891627674051392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013595 (A074823 (n + 1)).toNat

end

end A069158.P8091891627674051392

namespace A069158

/-- `A013595(A074823(n+1))` -/
def P8091891627674051392.Spec : Prop :=
  ∀ n, P8091891627674051392.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P1354129335638252780

`A354819(n+1)-A010051(n+1)`
-/

namespace A069158.P1354129335638252780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1) - A010051 (n + 1)

end

end A069158.P1354129335638252780

namespace A069158

/-- `A354819(n+1)-A010051(n+1)` -/
def P1354129335638252780.Spec : Prop :=
  ∀ n, P1354129335638252780.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P7115292269636180524

`A190902(n+1)/A061537(n+1)`
-/

namespace A069158.P7115292269636180524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190902 (n + 1) : ℚ) / (A061537 (n + 1) : ℚ)

end

end A069158.P7115292269636180524

namespace A069158

/-- `A190902(n+1)/A061537(n+1)` -/
def P7115292269636180524.Spec : Prop :=
  ∀ n, P7115292269636180524.a n = (A069158 (n + 1) : ℚ)

end A069158

/-! ## A069158.P13481499465205139372

`A008683(n+1)^A008480(n+1)`
-/

namespace A069158.P13481499465205139372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) ^ (A008480 (n + 1) : ℤ)

end

end A069158.P13481499465205139372

namespace A069158

/-- `A008683(n+1)^A008480(n+1)` -/
def P13481499465205139372.Spec : Prop :=
  ∀ n, P13481499465205139372.a n = (A069158 (n + 1) : ℚ)

end A069158

/-! ## A069158.P17802923150203984108

`A008683(n+1)^A038548(n+1)`
-/

namespace A069158.P17802923150203984108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) ^ (A038548 (n + 1) : ℤ)

end

end A069158.P17802923150203984108

namespace A069158

/-- `A008683(n+1)^A038548(n+1)` -/
def P17802923150203984108.Spec : Prop :=
  ∀ n, P17802923150203984108.a n = (A069158 (n + 1) : ℚ)

end A069158

/-! ## A069158.P6724307649278118648

`A008683(n+1)^A323599(n+1)`
-/

namespace A069158.P6724307649278118648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) ^ (A323599 (n + 1) : ℤ)

end

end A069158.P6724307649278118648

namespace A069158

/-- `A008683(n+1)^A323599(n+1)` -/
def P6724307649278118648.Spec : Prop :=
  ∀ n, P6724307649278118648.a n = (A069158 (n + 1) : ℚ)

end A069158

/-! ## A069158.P12557339978121082047

`xor(A005171(n+1), A106743(n+1))`
-/

namespace A069158.P12557339978121082047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005171 (n + 1)) (A106743 (n + 1))

end

end A069158.P12557339978121082047

namespace A069158

/-- `xor(A005171(n+1), A106743(n+1))` -/
def P12557339978121082047.Spec : Prop :=
  ∀ n, P12557339978121082047.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P13982108096025790532

`A008683(n+1)^A001221(n+1)!`
-/

namespace A069158.P13982108096025790532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ Nat.factorial (A001221 (n + 1)).toNat

end

end A069158.P13982108096025790532

namespace A069158

/-- `A008683(n+1)^A001221(n+1)!` -/
def P13982108096025790532.Spec : Prop :=
  ∀ n, P13982108096025790532.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P5542534732451842780

`A008683(n+1)^A001222(n+1)!`
-/

namespace A069158.P5542534732451842780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ Nat.factorial (A001222 (n + 1)).toNat

end

end A069158.P5542534732451842780

namespace A069158

/-- `A008683(n+1)^A001222(n+1)!` -/
def P5542534732451842780.Spec : Prop :=
  ∀ n, P5542534732451842780.a n = A069158 (n + 1)

end A069158

/-! ## A069158.P12710910787903794082

`2*A354819(n+1)-A008966(n+1)`
-/

namespace A069158.P12710910787903794082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354819 (n + 1) - A008966 (n + 1)

end

end A069158.P12710910787903794082

namespace A069158

/-- `2*A354819(n+1)-A008966(n+1)` -/
def P12710910787903794082.Spec : Prop :=
  ∀ n, P12710910787903794082.a n = A069158 (n + 1)

end A069158

/-!
# A069159: a(n) = d(1) - d(2) + d(3) - d(4) + ... + (-1)^(n+1) d(n), where d(k) denotes the k-th term of the digit sequence 3, 1, 4, 1, 5, 9,.... of Pi.

The programs for A069159, there is no canonical definition to state claims against.
-/

/-! ## A069159.P701645297926784329

`∑[(-1)^n*A000796(n)]`
-/

namespace A069159.P701645297926784329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P701645297926784329

/-! ## A069159.P9228754448879190027

`∑[A000796(n)*A033999(n)]`
-/

namespace A069159.P9228754448879190027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P9228754448879190027

/-! ## A069159.P6371651369902001450

`∑[A000796(n)*A009001(2*n)]`
-/

namespace A069159.P6371651369902001450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P6371651369902001450

/-! ## A069159.P1546231897631859402

`∑[(9-A030644(n))*A033999(n)]`
-/

namespace A069159.P1546231897631859402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P1546231897631859402

/-! ## A069159.P6962447439890894572

`∑[(A123152(n+1)-1)*A033999(n)]`
-/

namespace A069159.P6962447439890894572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123152 (n + 1) - 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P6962447439890894572

/-! ## A069159.P2252872785519642547

`∑[A065253(n+1)%10*A033999(n)]`
-/

namespace A069159.P2252872785519642547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P2252872785519642547

/-! ## A069159.P10978190546595561102

`∑[(A054249(n+1)+A033999(n))*A033999(n)]`
-/

namespace A069159.P10978190546595561102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054249 (n + 1) + A033999 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P10978190546595561102

/-! ## A069159.P12242252738898031393

`∑[A000796(n)*A057077(2*n)]`
-/

namespace A069159.P12242252738898031393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P12242252738898031393

/-! ## A069159.P13974506080234679887

`∑[A001355(2*n+1)*A034947(2*n+1)]`
-/

namespace A069159.P13974506080234679887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P13974506080234679887

/-! ## A069159.P14696946227020342799

`∑[A001355(2*n+1)*A209615(2*n+1)]`
-/

namespace A069159.P14696946227020342799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A209615 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069159.P14696946227020342799

/-!
# A069160: Number of primes p such that n^2 < p < n^2 + pi(n), where pi(n) is the number of primes less than n.

The programs for A069160, there is no canonical definition to state claims against.
-/

/-! ## A069160.P442449206780528958

`A220136(lt[A185204(3*n+2), A033879(n+1)]+1)`
-/

namespace A069160.P442449206780528958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185204 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A069160.P442449206780528958

/-! ## A069160.P11329616909628586964

`A357181(A180148(n)%A102225(n+3))`
-/

namespace A069160.P11329616909628586964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357181 (Int.tmod (A180148 n) (A102225 (n + 3))).toNat

end

end A069160.P11329616909628586964

/-! ## A069160.P18119017549140626443

`A284203(A052174(n+3)%A008776(n))`
-/

namespace A069160.P18119017549140626443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (Int.tmod (A052174 (n + 3)) (A008776 n)).toNat

end

end A069160.P18119017549140626443

/-! ## A069160.P9161484516858651471

`A089615(n+1)*A288386(A184955(n))`
-/

namespace A069160.P9161484516858651471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089615 (n + 1) * A288386 (A184955 n).toNat

end

end A069160.P9161484516858651471

/-! ## A069160.P2543720338719790242

`and(A033212(A036378(n)), A089615(n+1))`
-/

namespace A069160.P2543720338719790242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033212 (A036378 n).toNat) (A089615 (n + 1))

end

end A069160.P2543720338719790242

/-!
# A069161: Numbers n such that no group of order n can be a central factor.

The programs for A069161, there is no canonical definition to state claims against.
-/

/-! ## A069161.P13510553765404582864

`comp[∪[A060652(n+1), n²]]`
-/

namespace A069161.P13510553765404582864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A069161.P13510553765404582864

/-! ## A069161.P18030486067607501704

`comp[A051234(n+1)-1]+1`
-/

namespace A069161.P18030486067607501704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A069161.P18030486067607501704

/-! ## A069161.P11648912731606276466

`record[A059806(A007916(n+1))]`
-/

namespace A069161.P11648912731606276466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A007916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069161.P11648912731606276466

/-! ## A069161.P5379698833205218705

`record[A295126(A335433(n+2))]`
-/

namespace A069161.P5379698833205218705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (A335433 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069161.P5379698833205218705

/-! ## A069161.P8255933461293836974

`filter[A051532(n+1), A049240(#)]`
-/

namespace A069161.P8255933461293836974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A069161.P8255933461293836974

/-!
# A069162: a(1)=1, a(2)=2, a(n+2)=(a(n+1)+a(n))/2 if a(n+1)+a(n) is even, a(n+2)=(3*(a(n+1)+a(n))+1)/2 otherwise.

The programs for A069162, there is no canonical definition to state claims against.
-/

/-! ## A069162.P14199416448707153538

`A014682(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A069162.P14199416448707153538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014682 (a (n - 1) + a (n - 2)).toNat

end

end A069162.P14199416448707153538

/-! ## A069162.P9162527198315667616

`A014682(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A069162.P9162527198315667616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014682 (a (n - 1) - (-a (n - 2))).toNat

end

end A069162.P9162527198315667616

/-! ## A069162.P13841604761003327155

`A014682(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A069162.P13841604761003327155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014682 (a (n - 1) - (-a (n - 2))).toNat

end

end A069162.P13841604761003327155

/-! ## A069162.P14583000453423198608

`A014682(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A069162.P14583000453423198608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014682 (a (n - 1) - (-a (n - 2))).toNat

end

end A069162.P14583000453423198608

/-! ## A069162.P5727800226413346372

`A014682(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A069162.P5727800226413346372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014682 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A069162.P5727800226413346372

/-!
# A069163: Number of symmetric primes between n^2 and (n+2)^2. Two primes are termed symmetric in n^2 to (n+2)^2 if there is a k < 2n such that mid-k and mid+k are both prime, where mid =n(n+2).

The programs for A069163, there is no canonical definition to state claims against.
-/

/-! ## A069163.P3331110275784482677

`A001221(xor(A052921(n), A218442(n)))`
-/

namespace A069163.P3331110275784482677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A052921 n) (A218442 n)).toNat

end

end A069163.P3331110275784482677

/-! ## A069163.P3558056220773315852

`A001221(or(A001654(n), A290213(n)))`
-/

namespace A069163.P3558056220773315852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A001654 n) (A290213 n)).toNat

end

end A069163.P3558056220773315852

/-! ## A069163.P9146255415329040956

`gcd(A001221(A308988(n+1)), A037456(n))`
-/

namespace A069163.P9146255415329040956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A308988 (n + 1)).toNat) (A037456 n)

end

end A069163.P9146255415329040956

/-! ## A069163.P8311318069959448022

`gcd(A065361(n), A240496(A255774(n+1)))`
-/

namespace A069163.P8311318069959448022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065361 n) (A240496 (A255774 (n + 1)).toNat)

end

end A069163.P8311318069959448022

/-! ## A069163.P17279451961428773472

`A001222(eq[A025890(n+1), A325280(n)])`
-/

namespace A069163.P17279451961428773472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069163.P17279451961428773472

/-!
# A069164: Numbers k such that k*Sum_{d|k} 1/tau(d) is an integer.

The programs for A069164, there is no canonical definition to state claims against.
-/

/-! ## A069164.P5651098206417844793

`eq[A065770(val(n+1, 2)+1), A325169(n+1)]+1`
-/

namespace A069164.P5651098206417844793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069164.P5651098206417844793

/-! ## A069164.P96780929733982214

`∩[A329133(n+1), A387057(n+1)]`
-/

namespace A069164.P96780929733982214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069164.P96780929733982214

/-! ## A069164.P7175702440946105041

`∩[A329135(n+1), A387057(n+1)]`
-/

namespace A069164.P7175702440946105041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069164.P7175702440946105041

/-! ## A069164.P4431617507786699937

`A217319(n+1)%p?[A138135(n+1)]`
-/

namespace A069164.P4431617507786699937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217319 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A069164.P4431617507786699937

/-! ## A069164.P13027160200658463670

`A063790(A054359(n+1))²*comp[4*n]`
-/

namespace A069164.P13027160200658463670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063790 (A054359 (n + 1)).toNat ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A069164.P13027160200658463670

/-!
# A069166: Numbers k such that k*Sum_{d|k} 1/sigma(d) is an integer.

The programs for A069166, there is no canonical definition to state claims against.
-/

/-! ## A069166.P1395742196852864942

`∑[∑[A217296(A014741(n+1))]]`
-/

namespace A069166.P1395742196852864942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217296 (A014741 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069166.P1395742196852864942

/-!
# A069167: Numbers k such that k*Sum_{d|k} 1/phi(d) is an integer.

The programs for A069167, there is no canonical definition to state claims against.
-/

/-! ## A069167.P11886443651669864142

`record[A062821(A341392(3*n))]`
-/

namespace A069167.P11886443651669864142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A341392 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069167.P11886443651669864142

/-! ## A069167.P15798977186190456155

`record[A000005(A075157(2*n)+1)]`
-/

namespace A069167.P15798977186190456155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A075157 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069167.P15798977186190456155

/-! ## A069167.P5630111822466205422

`record[and(A167489(n), A185509(n+1))]`
-/

namespace A069167.P5630111822466205422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167489 n) (A185509 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069167.P5630111822466205422

/-! ## A069167.P580618106268237538

`eq[A006389(A126760(n)), A333381(n)]`
-/

namespace A069167.P580618106268237538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006389 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069167.P580618106268237538

/-! ## A069167.P7266093545882138057

`lt[A077608(n), A002262(2*A297420(n))²]`
-/

namespace A069167.P7266093545882138057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A297420 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069167.P7266093545882138057

/-!
# A069168: Numbers k such that sigma(k) * Sum_{d|k} (1/sigma(d)) is not an integer.

The programs for A069168, there is no canonical definition to state claims against.
-/

/-! ## A069168.P2649587993695798088

`∩[A002808(n+1), comp[A069169(n+1)]]`
-/

namespace A069168.P2649587993695798088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069168.P2649587993695798088

/-! ## A069168.P3345429175711295965

`eq[char[A069169(n+1)], A339579(n+1)]`
-/

namespace A069168.P3345429175711295965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A069168.P3345429175711295965

/-! ## A069168.P4190470746342066388

`A013929(comp[A098498(n+1)-A007504(3*n)]+1)`
-/

namespace A069168.P4190470746342066388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098498 (n + 1) - A007504 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A069168.P4190470746342066388

/-! ## A069168.P15108706855088304826

`A013929(lt[A244124(n+4), A131182(3*(n+1))])`
-/

namespace A069168.P15108706855088304826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244124 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131182 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069168.P15108706855088304826

/-! ## A069168.P5371494287057980670

`A013929(lt[A000931(n), A112500(3*n+2)])`
-/

namespace A069168.P5371494287057980670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069168.P5371494287057980670

/-!
# A069169: Nonprimes k such that sigma(k)*Sum_{d|k} 1/sigma(d) is an integer.

The programs for A069169, there is no canonical definition to state claims against.
-/

/-! ## A069169.P1164548680892640104

`lt[A106747(A010027(n+1)), A063698(n)]`
-/

namespace A069169.P1164548680892640104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A010027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069169.P1164548680892640104

/-!
# A069170: Values of phi(k)*Sum_{d|k} 1/phi(d) for nonprimes k.

The programs for A069170, the canonical program `A069170.P12605403305095502815` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069170 has offset 1).

The definition of A069170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A069208, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069170.P12605403305095502815

`A069208(A018252(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069170

/-- `A069208(A018252(n+1))` -/
def P12605403305095502815.Spec : Prop :=
  ∀ n, P12605403305095502815.a n = A069170 (n + 1)

theorem P12605403305095502815.correct : P12605403305095502815.Spec := by
  intro n
  simp only [A069170, Nat.add_sub_cancel]

end A069170

/-! ## A069170.P8927692347085288677

`A069208(Δ[A051349(n)])`
-/

namespace A069170.P8927692347085288677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (f1 (n + 1) - f1 n).toNat

end

end A069170.P8927692347085288677

namespace A069170

/-- `A069208(Δ[A051349(n)])` -/
def P8927692347085288677.Spec : Prop :=
  ∀ n, P8927692347085288677.a n = A069170 (n + 1)

end A069170

/-! ## A069170.P16739010839030824867

`A069208(A141468(n+2))`
-/

namespace A069170.P16739010839030824867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (A141468 (n + 2)).toNat

end

end A069170.P16739010839030824867

namespace A069170

/-- `A069208(A141468(n+2))` -/
def P16739010839030824867.Spec : Prop :=
  ∀ n, P16739010839030824867.a n = A069170 (n + 1)

end A069170

/-! ## A069170.P7431798526865432116

`A069208(A051349(n+1)-A051349(n))`
-/

namespace A069170.P7431798526865432116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (A051349 (n + 1) - A051349 n).toNat

end

end A069170.P7431798526865432116

namespace A069170

/-- `A069208(A051349(n+1)-A051349(n))` -/
def P7431798526865432116.Spec : Prop :=
  ∀ n, P7431798526865432116.a n = A069170 (n + 1)

end A069170

/-! ## A069170.P940735764231887011

`A069208(A127118(n+1)/A000040(n+1))`
-/

namespace A069170.P940735764231887011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (SequenceMachineLib.roundAway ((A127118 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A069170.P940735764231887011

namespace A069170

/-- `A069208(A127118(n+1)/A000040(n+1))` -/
def P940735764231887011.Spec : Prop :=
  ∀ n, P940735764231887011.a n = A069170 (n + 1)

end A069170

/-! ## A069170.P5151980677790664503

`A069208(A127118(n+1)/record[A020639(n+2)])`
-/

namespace A069170.P5151980677790664503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (SequenceMachineLib.roundAway ((A127118 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))).toNat

end

end A069170.P5151980677790664503

namespace A069170

/-- `A069208(A127118(n+1)/record[A020639(n+2)])` -/
def P5151980677790664503.Spec : Prop :=
  ∀ n, P5151980677790664503.a n = A069170 (n + 1)

end A069170

/-! ## A069170.P17559956372317733550

`A069208(eq[A000007(n), A055672(n)])`
-/

namespace A069170.P17559956372317733550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069170.P17559956372317733550

namespace A069170

/-- `A069208(eq[A000007(n), A055672(n)])` -/
def P17559956372317733550.Spec : Prop :=
  ∀ n, P17559956372317733550.a n = A069170 (n + 1)

end A069170

/-! ## A069170.P16787462738035697651

`A069208(record[A018252(A154958(n))])`
-/

namespace A069170.P16787462738035697651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069170.P16787462738035697651

namespace A069170

/-- `A069208(record[A018252(A154958(n))])` -/
def P16787462738035697651.Spec : Prop :=
  ∀ n, P16787462738035697651.a n = A069170 (n + 1)

end A069170

/-!
# A069171: Numbers k such that gcd(k, 2^k-1) = 3.

The programs for A069171, the canonical program `A069171.P16058303323936119467` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069171 has offset 1).

The definition of A069171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069171.P16058303323936119467

`A002808(eq[3, A260626(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069171

/-- `A002808(eq[3, A260626(n+1)])` -/
def P16058303323936119467.Spec : Prop :=
  ∀ n, P16058303323936119467.a n = A069171 (n + 1)

theorem P16058303323936119467.correct : P16058303323936119467.Spec := by
  intro n
  simp only [A069171, Nat.add_sub_cancel]

end A069171

/-! ## A069171.P17214908608636633550

`eq[3, A014491(A028310(n))]`
-/

namespace A069171.P17214908608636633550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069171.P17214908608636633550

namespace A069171

/-- `eq[3, A014491(A028310(n))]` -/
def P17214908608636633550.Spec : Prop :=
  ∀ n, (P17214908608636633550.a n : ℤ) = A069171 (n + 1)

end A069171

/-! ## A069171.P8951461292885378298

`A014681(eq[3, A014491(n+1)])`
-/

namespace A069171.P8951461292885378298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P8951461292885378298

namespace A069171

/-- `A014681(eq[3, A014491(n+1)])` -/
def P8951461292885378298.Spec : Prop :=
  ∀ n, P8951461292885378298.a n = A069171 (n + 1)

end A069171

/-! ## A069171.P2690161317529300476

`A020725(eq[3, A014491(n+1)])`
-/

namespace A069171.P2690161317529300476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P2690161317529300476

namespace A069171

/-- `A020725(eq[3, A014491(n+1)])` -/
def P2690161317529300476.Spec : Prop :=
  ∀ n, P2690161317529300476.a n = A069171 (n + 1)

end A069171

/-! ## A069171.P6262705742732252892

`A153152(eq[3, A014491(n+1)])`
-/

namespace A069171.P6262705742732252892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P6262705742732252892

namespace A069171

/-- `A153152(eq[3, A014491(n+1)])` -/
def P6262705742732252892.Spec : Prop :=
  ∀ n, P6262705742732252892.a n = A069171 (n + 1)

end A069171

/-! ## A069171.P18231669498487725526

`3*eq[3, A014491(A008486(n))]`
-/

namespace A069171.P18231669498487725526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069171.P18231669498487725526

namespace A069171

/-- `3*eq[3, A014491(A008486(n))]` -/
def P18231669498487725526.Spec : Prop :=
  ∀ n, (P18231669498487725526.a n : ℤ) = A069171 (n + 1)

end A069171

/-! ## A069171.P3440662383258825226

`A275365(eq[9, A087966(n+1)])`
-/

namespace A069171.P3440662383258825226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P3440662383258825226

namespace A069171

/-- `A275365(eq[9, A087966(n+1)])` -/
def P3440662383258825226.Spec : Prop :=
  ∀ n, P3440662383258825226.a n = A069171 (n + 1)

end A069171

/-! ## A069171.P13194019363688653827

`6*eq[3, A014491(A008458(n))]`
-/

namespace A069171.P13194019363688653827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069171.P13194019363688653827

namespace A069171

/-- `6*eq[3, A014491(A008458(n))]` -/
def P13194019363688653827.Spec : Prop :=
  ∀ n, (P13194019363688653827.a n : ℤ) = A069171 (n + 1)

end A069171

/-! ## A069171.P9050642305546601740

`A008458(eq[3, A014491(A008458(n))])`
-/

namespace A069171.P9050642305546601740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P9050642305546601740

namespace A069171

/-- `A008458(eq[3, A014491(A008458(n))])` -/
def P9050642305546601740.Spec : Prop :=
  ∀ n, P9050642305546601740.a n = A069171 (n + 1)

end A069171

/-! ## A069171.P8416273728991356440

`∩[A107037(n+1), A008588(n)]`
-/

namespace A069171.P8416273728991356440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069171.P8416273728991356440

namespace A069171

/-- `∩[A107037(n+1), A008588(n)]` -/
def P8416273728991356440.Spec : Prop :=
  ∀ n, (P8416273728991356440.a n : ℤ) = A069171 (n + 1)

end A069171

/-!
# A069173: Centered 22-gonal numbers.

The programs for A069173, the canonical program `A069173.P4099492214142924125` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069173 has offset 1).

The definition of A069173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069173.P4099492214142924125

`22*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069173

/-- `22*n+a(n-1)` -/
def P4099492214142924125.Spec : Prop :=
  ∀ n, (P4099492214142924125.a n : ℤ) = A069173 (n + 1)

theorem P4099492214142924125.correct : P4099492214142924125.Spec := by
  intro n
  simp only [A069173, Nat.add_sub_cancel]

end A069173

/-! ## A069173.P8144870894387162277

`11*(n+1)²-11*(n+1)+1`
-/

namespace A069173.P8144870894387162277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * (n + 1) ^ 2 : ℤ) - (11 * (n + 1) : ℤ) + 1

end

end A069173.P8144870894387162277

namespace A069173

/-- `11*(n+1)²-11*(n+1)+1` -/
def P8144870894387162277.Spec : Prop :=
  ∀ n, P8144870894387162277.a n = A069173 (n + 1)

theorem P8144870894387162277.correct : P8144870894387162277.Spec := by
  intro n
  induction n with
  | zero => simp [A069173, A069173.P8144870894387162277.a, A069173.P4099492214142924125.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069173, Nat.add_sub_cancel, A069173.P8144870894387162277.a, A069173.P4099492214142924125.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069173

/-! ## A069173.P2019970636374429477

`or(1, ∑[22*n])`
-/

namespace A069173.P2019970636374429477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069173.P2019970636374429477

namespace A069173

/-- `or(1, ∑[22*n])` -/
def P2019970636374429477.Spec : Prop :=
  ∀ n, (P2019970636374429477.a n : ℤ) = A069173 (n + 1)

end A069173

/-! ## A069173.P16858336123828515394

`xor(1, ∑[22*n])`
-/

namespace A069173.P16858336123828515394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069173.P16858336123828515394

namespace A069173

/-- `xor(1, ∑[22*n])` -/
def P16858336123828515394.Spec : Prop :=
  ∀ n, (P16858336123828515394.a n : ℤ) = A069173 (n + 1)

end A069173

/-! ## A069173.P14286889279528230505

`∑[a(n-1)+22]` with `a(0)=1, a(1)=22`
-/

namespace A069173.P14286889279528230505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n f1 =>
  f1 (n - 1) + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069173.P14286889279528230505

namespace A069173

/-- `∑[a(n-1)+22]` -/
def P14286889279528230505.Spec : Prop :=
  ∀ n, (P14286889279528230505.a n : ℤ) = A069173 (n + 1)

end A069173

/-! ## A069173.P15625309388822167946

`abs(or(1, 22*(n²-C(n, 2))))`
-/

namespace A069173.P15625309388822167946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (22 * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)))|

end

end A069173.P15625309388822167946

namespace A069173

/-- `abs(or(1, 22*(n²-C(n, 2))))` -/
def P15625309388822167946.Spec : Prop :=
  ∀ n, P15625309388822167946.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P6539661711491879816

`abs(xor(1, 22*(n²-C(n, 2))))`
-/

namespace A069173.P6539661711491879816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (22 * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)))|

end

end A069173.P6539661711491879816

namespace A069173

/-- `abs(xor(1, 22*(n²-C(n, 2))))` -/
def P6539661711491879816.Spec : Prop :=
  ∀ n, P6539661711491879816.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P15419868732828760798

`(A195318(n+1)+1)/2`
-/

namespace A069173.P15419868732828760798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195318 (n + 1) + 1 : ℚ) / 2

end

end A069173.P15419868732828760798

namespace A069173

/-- `(A195318(n+1)+1)/2` -/
def P15419868732828760798.Spec : Prop :=
  ∀ n, P15419868732828760798.a n = (A069173 (n + 1) : ℚ)

end A069173

/-! ## A069173.P8959283767749846078

`abs(or(1, 11*(A005563(n)-n)))`
-/

namespace A069173.P8959283767749846078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (11 * (A005563 n - (n : ℤ)))|

end

end A069173.P8959283767749846078

namespace A069173

/-- `abs(or(1, 11*(A005563(n)-n)))` -/
def P8959283767749846078.Spec : Prop :=
  ∀ n, P8959283767749846078.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P8255422510610922048

`abs(or(1, 22*(A000096(n)-n)))`
-/

namespace A069173.P8255422510610922048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (22 * (A000096 n - (n : ℤ)))|

end

end A069173.P8255422510610922048

namespace A069173

/-- `abs(or(1, 22*(A000096(n)-n)))` -/
def P8255422510610922048.Spec : Prop :=
  ∀ n, P8255422510610922048.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P3083235527020587909

`A001513(n)%A001545(n)`
-/

namespace A069173.P3083235527020587909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A001545 n)

end

end A069173.P3083235527020587909

namespace A069173

/-- `A001513(n)%A001545(n)` -/
def P3083235527020587909.Spec : Prop :=
  ∀ n, P3083235527020587909.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P17901465363938005591

`A332243(n)%A061792(n)`
-/

namespace A069173.P17901465363938005591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332243 n) (A061792 n)

end

end A069173.P17901465363938005591

namespace A069173

/-- `A332243(n)%A061792(n)` -/
def P17901465363938005591.Spec : Prop :=
  ∀ n, P17901465363938005591.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P686150271094160359

`A016970(n)%A157514(n+1)`
-/

namespace A069173.P686150271094160359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016970 n) (A157514 (n + 1))

end

end A069173.P686150271094160359

namespace A069173

/-- `A016970(n)%A157514(n+1)` -/
def P686150271094160359.Spec : Prop :=
  ∀ n, P686150271094160359.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P12851629072377942471

`abs(or(1, 22*(A089071(n+2)-2)))`
-/

namespace A069173.P12851629072377942471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (22 * (A089071 (n + 2) - 2))|

end

end A069173.P12851629072377942471

namespace A069173

/-- `abs(or(1, 22*(A089071(n+2)-2)))` -/
def P12851629072377942471.Spec : Prop :=
  ∀ n, P12851629072377942471.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P14300946190650171554

`A195043(Δ[n²])`
-/

namespace A069173.P14300946190650171554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069173.P14300946190650171554

namespace A069173

/-- `A195043(Δ[n²])` -/
def P14300946190650171554.Spec : Prop :=
  ∀ n, P14300946190650171554.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P16374799021155735022

`∑[record[A317322(n+1)]]`
-/

namespace A069173.P16374799021155735022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069173.P16374799021155735022

namespace A069173

/-- `∑[record[A317322(n+1)]]` -/
def P16374799021155735022.Spec : Prop :=
  ∀ n, P16374799021155735022.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P13686139616085819861

`ceil(A195149(2*n+1)/2)`
-/

namespace A069173.P13686139616085819861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195149 (2 * n + 1) : ℚ) / 2⌉

end

end A069173.P13686139616085819861

namespace A069173

/-- `ceil(A195149(2*n+1)/2)` -/
def P13686139616085819861.Spec : Prop :=
  ∀ n, P13686139616085819861.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P3093696426241881480

`∑[A310530(4*n)]`
-/

namespace A069173.P3093696426241881480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069173.P3093696426241881480

namespace A069173

/-- `∑[A310530(4*n)]` -/
def P3093696426241881480.Spec : Prop :=
  ∀ n, P3093696426241881480.a n = A069173 (n + 1)

end A069173

/-! ## A069173.P2845605173560502261

`∑[A315685(4*n)]`
-/

namespace A069173.P2845605173560502261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069173.P2845605173560502261

namespace A069173

/-- `∑[A315685(4*n)]` -/
def P2845605173560502261.Spec : Prop :=
  ∀ n, P2845605173560502261.a n = A069173 (n + 1)

end A069173

/-!
# A069174: Centered 23-gonal numbers.

The programs for A069174, the canonical program `A069174.P11742216319110211995` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069174 has offset 1).

The definition of A069174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069174.P11742216319110211995

`23*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069174

/-- `23*n+a(n-1)` -/
def P11742216319110211995.Spec : Prop :=
  ∀ n, (P11742216319110211995.a n : ℤ) = A069174 (n + 1)

theorem P11742216319110211995.correct : P11742216319110211995.Spec := by
  intro n
  simp only [A069174, Nat.add_sub_cancel]

end A069174

/-! ## A069174.P6904889949993555967

`(23*(n+1)²-23*(n+1)+2)/2`
-/

namespace A069174.P6904889949993555967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 * (n + 1) ^ 2 : ℤ) - (23 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069174.P6904889949993555967

namespace A069174

/-- `(23*(n+1)²-23*(n+1)+2)/2` -/
def P6904889949993555967.Spec : Prop :=
  ∀ n, P6904889949993555967.a n = (A069174 (n + 1) : ℚ)

theorem P6904889949993555967.correct : P6904889949993555967.Spec := by
  intro n
  induction n with
  | zero => simp [A069174, A069174.P6904889949993555967.a, A069174.P11742216319110211995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069174, Nat.add_sub_cancel, A069174.P6904889949993555967.a, A069174.P11742216319110211995.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069174

/-! ## A069174.P2456650856301540175

`∑[a(n-1)+23]` with `a(0)=1, a(1)=23`
-/

namespace A069174.P2456650856301540175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P2456650856301540175

namespace A069174

/-- `∑[a(n-1)+23]` -/
def P2456650856301540175.Spec : Prop :=
  ∀ n, (P2456650856301540175.a n : ℤ) = A069174 (n + 1)

end A069174

/-! ## A069174.P11206146041169039812

`∑[or(23*n, A000007(n))]`
-/

namespace A069174.P11206146041169039812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (23 * n : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P11206146041169039812

namespace A069174

/-- `∑[or(23*n, A000007(n))]` -/
def P11206146041169039812.Spec : Prop :=
  ∀ n, P11206146041169039812.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P1900682712302178397

`A177060(n)%A061793(n)`
-/

namespace A069174.P1900682712302178397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177060 n) (A061793 n)

end

end A069174.P1900682712302178397

namespace A069174

/-- `A177060(n)%A061793(n)` -/
def P1900682712302178397.Spec : Prop :=
  ∀ n, P1900682712302178397.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P2256778753433889730

`A260955(n)%A164015(n)`
-/

namespace A069174.P2256778753433889730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260955 n) (A164015 n)

end

end A069174.P2256778753433889730

namespace A069174

/-- `A260955(n)%A164015(n)` -/
def P2256778753433889730.Spec : Prop :=
  ∀ n, P2256778753433889730.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P3342331473205675462

`abs(A002378(n)-A262221(n))`
-/

namespace A069174.P3342331473205675462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002378 n - A262221 n|

end

end A069174.P3342331473205675462

namespace A069174

/-- `abs(A002378(n)-A262221(n))` -/
def P3342331473205675462.Spec : Prop :=
  ∀ n, P3342331473205675462.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P18396064757870897847

`abs(A069190(n+1)-A000217(n))`
-/

namespace A069174.P18396064757870897847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069190 (n + 1) - A000217 n|

end

end A069174.P18396064757870897847

namespace A069174

/-- `abs(A069190(n+1)-A000217(n))` -/
def P18396064757870897847.Spec : Prop :=
  ∀ n, P18396064757870897847.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P7091093313755118272

`(A255184(n+1)-n)%A000217(n+5)²`
-/

namespace A069174.P7091093313755118272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255184 (n + 1) - (n : ℤ)) (A000217 (n + 5) ^ 2)

end

end A069174.P7091093313755118272

namespace A069174

/-- `(A255184(n+1)-n)%A000217(n+5)²` -/
def P7091093313755118272.Spec : Prop :=
  ∀ n, P7091093313755118272.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P4518462041802952015

`∑[record[Δ[A316725(n)]]]`
-/

namespace A069174.P4518462041802952015
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P4518462041802952015

namespace A069174

/-- `∑[record[Δ[A316725(n)]]]` -/
def P4518462041802952015.Spec : Prop :=
  ∀ n, P4518462041802952015.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P13204781949533470226

`∑[record[A317323(n+1)]]`
-/

namespace A069174.P13204781949533470226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P13204781949533470226

namespace A069174

/-- `∑[record[A317323(n+1)]]` -/
def P13204781949533470226.Spec : Prop :=
  ∀ n, P13204781949533470226.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P4486242307797102344

`∑[A298038(2*n)-n]`
-/

namespace A069174.P4486242307797102344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P4486242307797102344

namespace A069174

/-- `∑[A298038(2*n)-n]` -/
def P4486242307797102344.Spec : Prop :=
  ∀ n, P4486242307797102344.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P17501530181030361333

`∑[record[A317322(n+1)]+n]`
-/

namespace A069174.P17501530181030361333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P17501530181030361333

namespace A069174

/-- `∑[record[A317322(n+1)]+n]` -/
def P17501530181030361333.Spec : Prop :=
  ∀ n, P17501530181030361333.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P17041489333349622455

`∑[A022144(3*n)-n]`
-/

namespace A069174.P17041489333349622455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (3 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P17041489333349622455

namespace A069174

/-- `∑[A022144(3*n)-n]` -/
def P17041489333349622455.Spec : Prop :=
  ∀ n, P17041489333349622455.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P18086304579123576063

`∑[A312948(5*n)]`
-/

namespace A069174.P18086304579123576063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P18086304579123576063

namespace A069174

/-- `∑[A312948(5*n)]` -/
def P18086304579123576063.Spec : Prop :=
  ∀ n, P18086304579123576063.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P15763584200686764637

`∑[A315704(4*n)]`
-/

namespace A069174.P15763584200686764637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P15763584200686764637

namespace A069174

/-- `∑[A315704(4*n)]` -/
def P15763584200686764637.Spec : Prop :=
  ∀ n, P15763584200686764637.a n = A069174 (n + 1)

end A069174

/-! ## A069174.P11975332624397966795

`∑[A315745(4*n)]`
-/

namespace A069174.P11975332624397966795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315745 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069174.P11975332624397966795

namespace A069174

/-- `∑[A315745(4*n)]` -/
def P11975332624397966795.Spec : Prop :=
  ∀ n, P11975332624397966795.a n = A069174 (n + 1)

end A069174

/-!
# A069175: Numbers k such that k-1, k+1, 2*k-1, 2*k+1, 4*k-1 and 4*k+1 are all prime.

The programs for A069175, there is no canonical definition to state claims against.
-/

/-! ## A069175.P15237030424496334809

`A178421(n+1)+1`
-/

namespace A069175.P15237030424496334809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178421 (n + 1) + 1

end

end A069175.P15237030424496334809

/-! ## A069175.P10787626352143954816

`∩[A076504(n+1), A221310(n+1)]/2`
-/

namespace A069175.P10787626352143954816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A069175.P10787626352143954816

/-!
# A069176: Numbers n such that n-1, n+1, 2n-1, 2n+1, 4n-1, 4n+1, 8n-1 and 8n+1 are all prime.

The programs for A069176, there is no canonical definition to state claims against.
-/

/-! ## A069176.P13024720186082570320

`A236443(n+1)+1`
-/

namespace A069176.P13024720186082570320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236443 (n + 1) + 1

end

end A069176.P13024720186082570320

/-!
# A069177: Maximal power of 2 that divides Phi(n), or the size of the Sylow 2-subgroup of the group of units mod n.

The programs for A069177, the canonical program `A069177.P13745944220105453533` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069177 has offset 1).

The definition of A069177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069177.P13745944220105453533

`2^A053574(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A069177

/-- `2^A053574(n+1)` -/
def P13745944220105453533.Spec : Prop :=
  ∀ n, P13745944220105453533.a n = (A069177 (n + 1) : ℚ)

end A069177

/-! ## A069177.P15700342052457591001

`2^val(A000010(n+1), 2)`
-/

namespace A069177.P15700342052457591001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000010 (n + 1)).toNat 2

end

end A069177.P15700342052457591001

namespace A069177

/-- `2^val(A000010(n+1), 2)` -/
def P15700342052457591001.Spec : Prop :=
  ∀ n, (P15700342052457591001.a n : ℤ) = A069177 (n + 1)

end A069177

/-! ## A069177.P6039755479124551105

`A006519(Δ[A002088(n)])`
-/

namespace A069177.P6039755479124551105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A069177.P6039755479124551105

namespace A069177

/-- `A006519(Δ[A002088(n)])` -/
def P6039755479124551105.Spec : Prop :=
  ∀ n, P6039755479124551105.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P14183824704063820967

`A006519(Δ[A005728(n)])`
-/

namespace A069177.P14183824704063820967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A069177.P14183824704063820967

namespace A069177

/-- `A006519(Δ[A005728(n)])` -/
def P14183824704063820967.Spec : Prop :=
  ∀ n, P14183824704063820967.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P8461853670467772922

`A028233(Δ[A002088(n)])`
-/

namespace A069177.P8461853670467772922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (f1 (n + 1) - f1 n).toNat

end

end A069177.P8461853670467772922

namespace A069177

/-- `A028233(Δ[A002088(n)])` -/
def P8461853670467772922.Spec : Prop :=
  ∀ n, P8461853670467772922.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P5156480403937551354

`A028233(Δ[A005728(n)])`
-/

namespace A069177.P5156480403937551354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (f1 (n + 1) - f1 n).toNat

end

end A069177.P5156480403937551354

namespace A069177

/-- `A028233(Δ[A005728(n)])` -/
def P5156480403937551354.Spec : Prop :=
  ∀ n, P5156480403937551354.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P8131802790549023223

`A006519(A000010(n+1))`
-/

namespace A069177.P8131802790549023223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000010 (n + 1)).toNat

end

end A069177.P8131802790549023223

namespace A069177

/-- `A006519(A000010(n+1))` -/
def P8131802790549023223.Spec : Prop :=
  ∀ n, P8131802790549023223.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P5552533561632335634

`A000079(A053574(n+1))`
-/

namespace A069177.P5552533561632335634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053574 (n + 1)).toNat

end

end A069177.P5552533561632335634

namespace A069177

/-- `A000079(A053574(n+1))` -/
def P5552533561632335634.Spec : Prop :=
  ∀ n, P5552533561632335634.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P1522009211431003555

`A006519(A087692(n+1))`
-/

namespace A069177.P1522009211431003555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A087692 (n + 1)).toNat

end

end A069177.P1522009211431003555

namespace A069177

/-- `A006519(A087692(n+1))` -/
def P1522009211431003555.Spec : Prop :=
  ∀ n, P1522009211431003555.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P11858225249578895154

`A006519(A115070(n+1))`
-/

namespace A069177.P11858225249578895154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A115070 (n + 1)).toNat

end

end A069177.P11858225249578895154

namespace A069177

/-- `A006519(A115070(n+1))` -/
def P11858225249578895154.Spec : Prop :=
  ∀ n, P11858225249578895154.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P3641074086917751563

`A006519(A293482(n+1))`
-/

namespace A069177.P3641074086917751563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A293482 (n + 1)).toNat

end

end A069177.P3641074086917751563

namespace A069177

/-- `A006519(A293482(n+1))` -/
def P3641074086917751563.Spec : Prop :=
  ∀ n, P3641074086917751563.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P16925137707079103677

`A006519(A293484(n+1))`
-/

namespace A069177.P16925137707079103677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A293484 (n + 1)).toNat

end

end A069177.P16925137707079103677

namespace A069177

/-- `A006519(A293484(n+1))` -/
def P16925137707079103677.Spec : Prop :=
  ∀ n, P16925137707079103677.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P10527077710705658283

`A248692(A364925(n+1))`
-/

namespace A069177.P10527077710705658283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248692 (A364925 (n + 1)).toNat

end

end A069177.P10527077710705658283

namespace A069177

/-- `A248692(A364925(n+1))` -/
def P10527077710705658283.Spec : Prop :=
  ∀ n, P10527077710705658283.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P9104994541389676537

`A006519(A109606(n+1)+1)`
-/

namespace A069177.P9104994541389676537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A109606 (n + 1) + 1).toNat

end

end A069177.P9104994541389676537

namespace A069177

/-- `A006519(A109606(n+1)+1)` -/
def P9104994541389676537.Spec : Prop :=
  ∀ n, P9104994541389676537.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P14843135044513375546

`A118824(2*A000010(n+1))`
-/

namespace A069177.P14843135044513375546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * A000010 (n + 1)).toNat

end

end A069177.P14843135044513375546

namespace A069177

/-- `A118824(2*A000010(n+1))` -/
def P14843135044513375546.Spec : Prop :=
  ∀ n, P14843135044513375546.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P16304711611216882390

`A006519(A349137(2*n+1))`
-/

namespace A069177.P16304711611216882390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A349137 (2 * n + 1)).toNat

end

end A069177.P16304711611216882390

namespace A069177

/-- `A006519(A349137(2*n+1))` -/
def P16304711611216882390.Spec : Prop :=
  ∀ n, P16304711611216882390.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P18042547109843559833

`A000079(val(A000010(n+1), 2))`
-/

namespace A069177.P18042547109843559833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000010 (n + 1)).toNat 2)

end

end A069177.P18042547109843559833

namespace A069177

/-- `A000079(val(A000010(n+1), 2))` -/
def P18042547109843559833.Spec : Prop :=
  ∀ n, P18042547109843559833.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P441190748243866389

`A000079(val(A087692(n+1), 2))`
-/

namespace A069177.P441190748243866389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A087692 (n + 1)).toNat 2)

end

end A069177.P441190748243866389

namespace A069177

/-- `A000079(val(A087692(n+1), 2))` -/
def P441190748243866389.Spec : Prop :=
  ∀ n, P441190748243866389.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P1378252934907166112

`A219615(val(A000010(n+1), 2))`
-/

namespace A069177.P1378252934907166112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 (SequenceMachineLib.valuation (A000010 (n + 1)).toNat 2)

end

end A069177.P1378252934907166112

namespace A069177

/-- `A219615(val(A000010(n+1), 2))` -/
def P1378252934907166112.Spec : Prop :=
  ∀ n, P1378252934907166112.a n = A069177 (n + 1)

end A069177

/-! ## A069177.P15116068113460376417

`gcd(A009262(n+1), A053644(n))`
-/

namespace A069177.P15116068113460376417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009262 (n + 1)) (A053644 n)

end

end A069177.P15116068113460376417

namespace A069177

/-- `gcd(A009262(n+1), A053644(n))` -/
def P15116068113460376417.Spec : Prop :=
  ∀ n, (P15116068113460376417.a n : ℤ) = A069177 (n + 1)

end A069177

/-!
# A069178: Centered 21-gonal numbers.

The programs for A069178, the canonical program `A069178.P2286736981591671008` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069178 has offset 1).

The definition of A069178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069178.P2286736981591671008

`21*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069178

/-- `21*n+a(n-1)` -/
def P2286736981591671008.Spec : Prop :=
  ∀ n, (P2286736981591671008.a n : ℤ) = A069178 (n + 1)

theorem P2286736981591671008.correct : P2286736981591671008.Spec := by
  intro n
  simp only [A069178, Nat.add_sub_cancel]

end A069178

/-! ## A069178.P17578157183933652654

`(21*(n+1)²-21*(n+1)+2)/2`
-/

namespace A069178.P17578157183933652654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069178.P17578157183933652654

namespace A069178

/-- `(21*(n+1)²-21*(n+1)+2)/2` -/
def P17578157183933652654.Spec : Prop :=
  ∀ n, P17578157183933652654.a n = (A069178 (n + 1) : ℚ)

theorem P17578157183933652654.correct : P17578157183933652654.Spec := by
  intro n
  induction n with
  | zero => simp [A069178, A069178.P17578157183933652654.a, A069178.P2286736981591671008.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069178, Nat.add_sub_cancel, A069178.P17578157183933652654.a, A069178.P2286736981591671008.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069178

/-! ## A069178.P4826994261316513776

`∑[a(n-1)+21]` with `a(0)=1, a(1)=21`
-/

namespace A069178.P4826994261316513776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P4826994261316513776

namespace A069178

/-- `∑[a(n-1)+21]` -/
def P4826994261316513776.Spec : Prop :=
  ∀ n, (P4826994261316513776.a n : ℤ) = A069178 (n + 1)

end A069178

/-! ## A069178.P13457226575407078387

`Δ[((2*n+1)²-C(n+1, 2))*(n-1)]`
-/

namespace A069178.P13457226575407078387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069178.P13457226575407078387

namespace A069178

/-- `Δ[((2*n+1)²-C(n+1, 2))*(n-1)]` -/
def P13457226575407078387.Spec : Prop :=
  ∀ n, P13457226575407078387.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P8649974978240002325

`abs(2-3*A069099(n+1))`
-/

namespace A069178.P8649974978240002325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * A069099 (n + 1)|

end

end A069178.P8649974978240002325

namespace A069178

/-- `abs(2-3*A069099(n+1))` -/
def P8649974978240002325.Spec : Prop :=
  ∀ n, P8649974978240002325.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P16712853914708053874

`abs((n+1)*11*n+2-A000124(n))`
-/

namespace A069178.P16712853914708053874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) * (11 * n) + 2 : ℤ) - A000124 n|

end

end A069178.P16712853914708053874

namespace A069178

/-- `abs((n+1)*11*n+2-A000124(n))` -/
def P16712853914708053874.Spec : Prop :=
  ∀ n, P16712853914708053874.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P1805409459068732450

`∑[record[Δ[A303304(n)]]]`
-/

namespace A069178.P1805409459068732450
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P1805409459068732450

namespace A069178

/-- `∑[record[Δ[A303304(n)]]]` -/
def P1805409459068732450.Spec : Prop :=
  ∀ n, P1805409459068732450.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P8179920626499145628

`∑[record[A317321(n+1)]]`
-/

namespace A069178.P8179920626499145628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P8179920626499145628

namespace A069178

/-- `∑[record[A317321(n+1)]]` -/
def P8179920626499145628.Spec : Prop :=
  ∀ n, P8179920626499145628.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P9112876675065347358

`abs(A303303(2*n+1)-n)`
-/

namespace A069178.P9112876675065347358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303303 (2 * n + 1) - (n : ℤ)|

end

end A069178.P9112876675065347358

namespace A069178

/-- `abs(A303303(2*n+1)-n)` -/
def P9112876675065347358.Spec : Prop :=
  ∀ n, P9112876675065347358.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P17715697172677596939

`Δ[A002411(2*n)-A002411(n+1)]`
-/

namespace A069178.P17715697172677596939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (2 * n) - A002411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069178.P17715697172677596939

namespace A069178

/-- `Δ[A002411(2*n)-A002411(n+1)]` -/
def P17715697172677596939.Spec : Prop :=
  ∀ n, P17715697172677596939.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P4851861614020763731

`Δ[A100119(2*n)-A100119(n+1)]`
-/

namespace A069178.P4851861614020763731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 (2 * n) - A100119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069178.P4851861614020763731

namespace A069178

/-- `Δ[A100119(2*n)-A100119(n+1)]` -/
def P4851861614020763731.Spec : Prop :=
  ∀ n, P4851861614020763731.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P5747134244632144639

`∑[A307201(4*n)]`
-/

namespace A069178.P5747134244632144639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307201 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P5747134244632144639

namespace A069178

/-- `∑[A307201(4*n)]` -/
def P5747134244632144639.Spec : Prop :=
  ∀ n, P5747134244632144639.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P11393318153279769903

`∑[A307202(4*n)]`
-/

namespace A069178.P11393318153279769903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307202 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P11393318153279769903

namespace A069178

/-- `∑[A307202(4*n)]` -/
def P11393318153279769903.Spec : Prop :=
  ∀ n, P11393318153279769903.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P7339222617166666859

`∑[A008486(7*n)]`
-/

namespace A069178.P7339222617166666859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P7339222617166666859

namespace A069178

/-- `∑[A008486(7*n)]` -/
def P7339222617166666859.Spec : Prop :=
  ∀ n, P7339222617166666859.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P985681372761439241

`A194226(A017029(n))`
-/

namespace A069178.P985681372761439241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194226 (A017029 n).toNat

end

end A069178.P985681372761439241

namespace A069178

/-- `A194226(A017029(n))` -/
def P985681372761439241.Spec : Prop :=
  ∀ n, P985681372761439241.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P11492861928598344874

`∑[A313292(4*n)]`
-/

namespace A069178.P11492861928598344874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P11492861928598344874

namespace A069178

/-- `∑[A313292(4*n)]` -/
def P11492861928598344874.Spec : Prop :=
  ∀ n, P11492861928598344874.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P5179401972350271824

`∑[A313777(4*n)]`
-/

namespace A069178.P5179401972350271824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P5179401972350271824

namespace A069178

/-- `∑[A313777(4*n)]` -/
def P5179401972350271824.Spec : Prop :=
  ∀ n, P5179401972350271824.a n = A069178 (n + 1)

end A069178

/-! ## A069178.P17369814917989774055

`∑[A313875(4*n)]`
-/

namespace A069178.P17369814917989774055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069178.P17369814917989774055

namespace A069178

/-- `∑[A313875(4*n)]` -/
def P17369814917989774055.Spec : Prop :=
  ∀ n, P17369814917989774055.a n = A069178 (n + 1)

end A069178

/-!
# A069179: Least number X such that for each k in (0 to n-1), 2^k*X-1 and 2^k*X+1 are primes. That is, there are N twin primes, each the "double" of the previous.

The programs for A069179, there is no canonical definition to state claims against.
-/

/-! ## A069179.P12296545093428952140

`A068635(n+1)+1`
-/

namespace A069179.P12296545093428952140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068635 (n + 1) + 1

end

end A069179.P12296545093428952140

/-!
# A069180: F(n) and n! are relatively prime where F(n) are the Fibonacci numbers.

The programs for A069180, there is no canonical definition to state claims against.
-/

/-! ## A069180.P16586707681015165107

`eq[1, A247193(n+1)]+1`
-/

namespace A069180.P16586707681015165107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069180.P16586707681015165107

/-! ## A069180.P8664224051278458314

`record[A000027(n+1)/A247193(n+1)]`
-/

namespace A069180.P8664224051278458314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A247193 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069180.P8664224051278458314

/-! ## A069180.P8584212996204235859

`record[A053165(n+1)/A247193(n+1)]`
-/

namespace A069180.P8584212996204235859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053165 (n + 1) : ℚ) / (A247193 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069180.P8584212996204235859

/-! ## A069180.P12967114290145131997

`record[gcd(n+1, A120839(n+1))]`
-/

namespace A069180.P12967114290145131997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A120839 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069180.P12967114290145131997

/-! ## A069180.P8564857072241395397

`A120839(record[n-(n+1)%A120839(n+1)]+1)`
-/

namespace A069180.P8564857072241395397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n + 1 : ℤ) (A120839 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A069180.P8564857072241395397

/-! ## A069180.P7931890814115046516

`A120839(record[or(n+1, n+1-A120839(n+1))])`
-/

namespace A069180.P7931890814115046516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((n + 1 : ℤ) - A120839 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069180.P7931890814115046516

/-! ## A069180.P18049584568053172350

`record[A008619(n)/A247193(A008619(n))]`
-/

namespace A069180.P18049584568053172350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A247193 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069180.P18049584568053172350

/-!
# A069183: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^6)).

The programs for A069183, the canonical program `A069183.P8600418834679217743` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069183 has offset 0).

The definition of A069183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069183.P8600418834679217743

`A029000(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069183

/-- `A029000(n)+a(n-2)` -/
def P8600418834679217743.Spec : Prop :=
  ∀ n, P8600418834679217743.a n = A069183 n

theorem P8600418834679217743.correct : P8600418834679217743.Spec := by
  intro n
  simp only [A069183]

end A069183

/-! ## A069183.P17350895946809713769

`∑[2*A029136(n)]-A008670(n)`
-/

namespace A069183.P17350895946809713769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008670 n

end

end A069183.P17350895946809713769

namespace A069183

/-- `∑[2*A029136(n)]-A008670(n)` -/
def P17350895946809713769.Spec : Prop :=
  ∀ n, P17350895946809713769.a n = A069183 n

end A069183

/-! ## A069183.P7723635340523318014

`∑[A008670(n)]-A307872(A052938(n))`
-/

namespace A069183.P7723635340523318014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307872 (A052938 n).toNat

end

end A069183.P7723635340523318014

namespace A069183

/-- `∑[A008670(n)]-A307872(A052938(n))` -/
def P7723635340523318014.Spec : Prop :=
  ∀ n, P7723635340523318014.a n = A069183 n

end A069183

/-! ## A069183.P9294489205151543914

`∑[A082146(A005408(A028242(n)))]`
-/

namespace A069183.P9294489205151543914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 (A005408 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069183.P9294489205151543914

namespace A069183

/-- `∑[A082146(A005408(A028242(n)))]` -/
def P9294489205151543914.Spec : Prop :=
  ∀ n, P9294489205151543914.a n = A069183 n

end A069183

/-! ## A069183.P3070061217713127081

`∑[A008612(n+8)*A025796(n)]`
-/

namespace A069183.P3070061217713127081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (n + 8) * A025796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069183.P3070061217713127081

namespace A069183

/-- `∑[A008612(n+8)*A025796(n)]` -/
def P3070061217713127081.Spec : Prop :=
  ∀ n, P3070061217713127081.a n = A069183 n

end A069183

/-! ## A069183.P1312271921842656937

`A008719(2*n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A069183.P1312271921842656937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008719 (2 * n) + a (n - 2)

end

end A069183.P1312271921842656937

namespace A069183

/-- `A008719(2*n)+a(n-2)` -/
def P1312271921842656937.Spec : Prop :=
  ∀ n, P1312271921842656937.a n = A069183 n

end A069183

/-! ## A069183.P11901677974036234630

`∑[A008670(n)]-A029265(2*n+1)`
-/

namespace A069183.P11901677974036234630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029265 (2 * n + 1)

end

end A069183.P11901677974036234630

namespace A069183

/-- `∑[A008670(n)]-A029265(2*n+1)` -/
def P11901677974036234630.Spec : Prop :=
  ∀ n, P11901677974036234630.a n = A069183 n

end A069183

/-! ## A069183.P11215494496402013726

`∑[A082146(A028242(4*A028242(n)))]`
-/

namespace A069183.P11215494496402013726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 (A028242 (4 * A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069183.P11215494496402013726

namespace A069183

/-- `∑[A082146(A028242(4*A028242(n)))]` -/
def P11215494496402013726.Spec : Prop :=
  ∀ n, P11215494496402013726.a n = A069183 n

end A069183

/-! ## A069183.P6000729340110833799

`∑[A005843(A029136(n))]-A008670(n)`
-/

namespace A069183.P6000729340110833799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A029136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008670 n

end

end A069183.P6000729340110833799

namespace A069183

/-- `∑[A005843(A029136(n))]-A008670(n)` -/
def P6000729340110833799.Spec : Prop :=
  ∀ n, P6000729340110833799.a n = A069183 n

end A069183

/-!
# A069184: Sum of divisors d of n such that d or n/d is odd.

The programs for A069184, the canonical program `A069184.P2731157817083231715` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069184 has offset 1).

The definition of A069184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069184.P2731157817083231715

`∑{d}[n+1, A186646(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069184

/-- `∑{d}[n+1, A186646(#)]` -/
def P2731157817083231715.Spec : Prop :=
  ∀ n, P2731157817083231715.a n = A069184 (n + 1)

theorem P2731157817083231715.correct : P2731157817083231715.Spec := by
  intro n
  simp only [A069184, Nat.add_sub_cancel]

end A069184

/-! ## A069184.P10590597876368703590

`∑{d}[n+1, #]/xor(n, n+1)*A083318(val(n+1, 2))`
-/

namespace A069184.P10590597876368703590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A083318 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A069184.P10590597876368703590

namespace A069184

/-- `∑{d}[n+1, #]/xor(n, n+1)*A083318(val(n+1, 2))` -/
def P10590597876368703590.Spec : Prop :=
  ∀ n, P10590597876368703590.a n = (A069184 (n + 1) : ℚ)

end A069184

/-! ## A069184.P15742618400064506019

`∑{d}[(n+1)/and(n+1, -(n+1)), #]*A065190(and(n+1, -(n+1)))`
-/

namespace A069184.P15742618400064506019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * A065190 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A069184.P15742618400064506019

namespace A069184

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), #]*A065190(and(n+1, -(n+1)))` -/
def P15742618400064506019.Spec : Prop :=
  ∀ n, P15742618400064506019.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P15446348809240727907

`A000593(n+1)*A385047(n+1)`
-/

namespace A069184.P15446348809240727907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A385047 (n + 1)

end

end A069184.P15446348809240727907

namespace A069184

/-- `A000593(n+1)*A385047(n+1)` -/
def P15446348809240727907.Spec : Prop :=
  ∀ n, P15446348809240727907.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P9999983463885900226

`(A046897(n+1)+A000203(n+1))/2`
-/

namespace A069184.P9999983463885900226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A069184.P9999983463885900226

namespace A069184

/-- `(A046897(n+1)+A000203(n+1))/2` -/
def P9999983463885900226.Spec : Prop :=
  ∀ n, P9999983463885900226.a n = (A069184 (n + 1) : ℚ)

end A069184

/-! ## A069184.P13704916734766987446

`2*A285895(n+1)-A000203(n+1)`
-/

namespace A069184.P13704916734766987446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285895 (n + 1) - A000203 (n + 1)

end

end A069184.P13704916734766987446

namespace A069184

/-- `2*A285895(n+1)-A000203(n+1)` -/
def P13704916734766987446.Spec : Prop :=
  ∀ n, P13704916734766987446.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P14797233967654483759

`2*A327095(n+1)-A115607(n+1)`
-/

namespace A069184.P14797233967654483759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327095 (n + 1) - A115607 (n + 1)

end

end A069184.P14797233967654483759

namespace A069184

/-- `2*A327095(n+1)-A115607(n+1)` -/
def P14797233967654483759.Spec : Prop :=
  ∀ n, P14797233967654483759.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P18276009286952838920

`∑{d}[n+1, A063659(#)*A344299((n+1)/#)]`
-/

namespace A069184.P18276009286952838920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A344299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069184.P18276009286952838920

namespace A069184

/-- `∑{d}[n+1, A063659(#)*A344299((n+1)/#)]` -/
def P18276009286952838920.Spec : Prop :=
  ∀ n, P18276009286952838920.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P3053844359568403574

`∑{d}[n+1, A193356(#)*A385047((n+1)/#)]`
-/

namespace A069184.P3053844359568403574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A385047 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069184.P3053844359568403574

namespace A069184

/-- `∑{d}[n+1, A193356(#)*A385047((n+1)/#)]` -/
def P3053844359568403574.Spec : Prop :=
  ∀ n, P3053844359568403574.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P7202756400347078658

`∑{d}[n+1, A254503(#)*A360163((n+1)/#)]`
-/

namespace A069184.P7202756400347078658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A360163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069184.P7202756400347078658

namespace A069184

/-- `∑{d}[n+1, A254503(#)*A360163((n+1)/#)]` -/
def P7202756400347078658.Spec : Prop :=
  ∀ n, P7202756400347078658.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P8457904486101795860

`A000593(n+1)*A026741(A006519(n+1)+1)`
-/

namespace A069184.P8457904486101795860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A026741 (A006519 (n + 1) + 1).toNat

end

end A069184.P8457904486101795860

namespace A069184

/-- `A000593(n+1)*A026741(A006519(n+1)+1)` -/
def P8457904486101795860.Spec : Prop :=
  ∀ n, P8457904486101795860.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P6750969890425100398

`(A000203(n+1)+A000203(A259445(n+1)))/2`
-/

namespace A069184.P6750969890425100398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A000203 (A259445 (n + 1)).toNat : ℚ) / 2

end

end A069184.P6750969890425100398

namespace A069184

/-- `(A000203(n+1)+A000203(A259445(n+1)))/2` -/
def P6750969890425100398.Spec : Prop :=
  ∀ n, P6750969890425100398.a n = (A069184 (n + 1) : ℚ)

end A069184

/-! ## A069184.P12600680365965799038

`A000593(n+1)+A000035(n)*A002131(n+1)`
-/

namespace A069184.P12600680365965799038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A000035 n * A002131 (n + 1)

end

end A069184.P12600680365965799038

namespace A069184

/-- `A000593(n+1)+A000035(n)*A002131(n+1)` -/
def P12600680365965799038.Spec : Prop :=
  ∀ n, P12600680365965799038.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P9282526855519276725

`(A006519(n+1)+A000035(n))*A000593(n+1)`
-/

namespace A069184.P9282526855519276725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) + A000035 n) * A000593 (n + 1)

end

end A069184.P9282526855519276725

namespace A069184

/-- `(A006519(n+1)+A000035(n))*A000593(n+1)` -/
def P9282526855519276725.Spec : Prop :=
  ∀ n, P9282526855519276725.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P8267534403182568588

`A002131(n+1)-A000035(n)*A115607(n+1)`
-/

namespace A069184.P8267534403182568588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A000035 n * A115607 (n + 1)

end

end A069184.P8267534403182568588

namespace A069184

/-- `A002131(n+1)-A000035(n)*A115607(n+1)` -/
def P8267534403182568588.Spec : Prop :=
  ∀ n, P8267534403182568588.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P4973760451630376535

`A000593(n+1)+A285895(n+1)-A327095(n+1)`
-/

namespace A069184.P4973760451630376535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A285895 (n + 1) - A327095 (n + 1))

end

end A069184.P4973760451630376535

namespace A069184

/-- `A000593(n+1)+A285895(n+1)-A327095(n+1)` -/
def P4973760451630376535.Spec : Prop :=
  ∀ n, P4973760451630376535.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P17411844403268476022

`A000203(n+1)*A034448(n+1)/A107749(n+1)`
-/

namespace A069184.P17411844403268476022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A034448 (n + 1) : ℚ) / (A107749 (n + 1) : ℚ)

end

end A069184.P17411844403268476022

namespace A069184

/-- `A000203(n+1)*A034448(n+1)/A107749(n+1)` -/
def P17411844403268476022.Spec : Prop :=
  ∀ n, P17411844403268476022.a n = (A069184 (n + 1) : ℚ)

end A069184

/-! ## A069184.P4530665052247020108

`A000593(n+1)*A034448(n+1)/A192066(n+1)`
-/

namespace A069184.P4530665052247020108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) * A034448 (n + 1) : ℚ) / (A192066 (n + 1) : ℚ)

end

end A069184.P4530665052247020108

namespace A069184

/-- `A000593(n+1)*A034448(n+1)/A192066(n+1)` -/
def P4530665052247020108.Spec : Prop :=
  ∀ n, P4530665052247020108.a n = (A069184 (n + 1) : ℚ)

end A069184

/-! ## A069184.P18221082513774687790

`∑{d}[n+1, A001615(#)*A258998((n+1)/#)]`
-/

namespace A069184.P18221082513774687790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A258998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069184.P18221082513774687790

namespace A069184

/-- `∑{d}[n+1, A001615(#)*A258998((n+1)/#)]` -/
def P18221082513774687790.Spec : Prop :=
  ∀ n, P18221082513774687790.a n = A069184 (n + 1)

end A069184

/-! ## A069184.P10607717816216330581

`∑{d}[A022998(n+1), A026741(A026741(#))]`
-/

namespace A069184.P10607717816216330581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 (A026741 d).toNat

end

end A069184.P10607717816216330581

namespace A069184

/-- `∑{d}[A022998(n+1), A026741(A026741(#))]` -/
def P10607717816216330581.Spec : Prop :=
  ∀ n, P10607717816216330581.a n = A069184 (n + 1)

end A069184

/-!
# A069185: Numbers n such that n=phi(n)*core(n) where phi(x) is the Euler totient function and core(x) the squarefree part of x (the smallest integer such that x*core(x) is a square).

The programs for A069185, there is no canonical definition to state claims against.
-/

/-! ## A069185.P16790498345590529994

`∩[A039770(n+1), A083854(n)]`
-/

namespace A069185.P16790498345590529994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069185.P16790498345590529994

/-! ## A069185.P18280573360744820513

`∩[A003586(n+1), A039770(n+1)]`
-/

namespace A069185.P18280573360744820513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069185.P18280573360744820513

/-! ## A069185.P2324152854929668797

`∩[A007694(n+1), A039770(n+1)]`
-/

namespace A069185.P2324152854929668797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069185.P2324152854929668797

/-! ## A069185.P5971937493885342897

`record[A327171(n+1)/(A327171(n+1)-n)]`
-/

namespace A069185.P5971937493885342897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A327171 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069185.P5971937493885342897

/-! ## A069185.P4422501296984483251

`eq[n, A327171(A028310(n))]`
-/

namespace A069185.P4422501296984483251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069185.P4422501296984483251

/-!
# A069186: Numbers n such that core(n)=floor(sqrt(n)), where core(x)=A007913(x) is the squarefree part of x and floor(sqrt(x))=A000196(x).

The programs for A069186, there is no canonical definition to state claims against.
-/

/-! ## A069186.P10682918390703320797

`eq[A000196(n), A007913(A008574(n))]`
-/

namespace A069186.P10682918390703320797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069186.P10682918390703320797

/-! ## A069186.P15616602345315634840

`eq[A000196(n), A007913(A028310(n))]`
-/

namespace A069186.P15616602345315634840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069186.P15616602345315634840

/-! ## A069186.P12578121201374588740

`A130508(eq[A000196(n), A007913(n+1)])`
-/

namespace A069186.P12578121201374588740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069186.P12578121201374588740

/-! ## A069186.P3837846319047901146

`A130508(eq[A000196(n), A056135(n+1)])`
-/

namespace A069186.P3837846319047901146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069186.P3837846319047901146

/-! ## A069186.P18114072730745211743

`A130508(eq[1-A326128(n+1)+n, A000196(n)])`
-/

namespace A069186.P18114072730745211743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326128 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069186.P18114072730745211743

/-!
# A069187: Numbers k such that core(k) = ceiling(sqrt(k)) where core(k) is the squarefree part of k (the smallest integer such that k*core(k) is a square).

The programs for A069187, the canonical program `A069187.P10848046467755903059` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069187 has offset 1).

The definition of A069187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069187.P10848046467755903059

`record[A059591(n)*A253909(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069187

/-- `record[A059591(n)*A253909(n)]` -/
def P10848046467755903059.Spec : Prop :=
  ∀ n, P10848046467755903059.a n = A069187 (n + 1)

theorem P10848046467755903059.correct : P10848046467755903059.Spec := by
  intro n
  simp only [A069187, Nat.add_sub_cancel]

end A069187

/-! ## A069187.P2201546120700118807

`record[A065033(2*n)²*A007913(A002522(n))]`
-/

namespace A069187.P2201546120700118807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) ^ 2 * A007913 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069187.P2201546120700118807

namespace A069187

/-- `record[A065033(2*n)²*A007913(A002522(n))]` -/
def P2201546120700118807.Spec : Prop :=
  ∀ n, P2201546120700118807.a n = A069187 (n + 1)

end A069187

/-! ## A069187.P13684761067122550562

`A103505(record[A059591(n)])`
-/

namespace A069187.P13684761067122550562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069187.P13684761067122550562

namespace A069187

/-- `A103505(record[A059591(n)])` -/
def P13684761067122550562.Spec : Prop :=
  ∀ n, P13684761067122550562.a n = A069187 (n + 1)

end A069187

/-! ## A069187.P5751437453924132629

`A103505(record[A007947(n²+1)])`
-/

namespace A069187.P5751437453924132629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069187.P5751437453924132629

namespace A069187

/-- `A103505(record[A007947(n²+1)])` -/
def P5751437453924132629.Spec : Prop :=
  ∀ n, P5751437453924132629.a n = A069187 (n + 1)

end A069187

/-! ## A069187.P13838350780995973487

`A103505(record[A000026(A002522(n))])`
-/

namespace A069187.P13838350780995973487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069187.P13838350780995973487

namespace A069187

/-- `A103505(record[A000026(A002522(n))])` -/
def P13838350780995973487.Spec : Prop :=
  ∀ n, P13838350780995973487.a n = A069187 (n + 1)

end A069187

/-! ## A069187.P6424749552858377664

`A103505(record[A007913(A002522(n))])`
-/

namespace A069187.P6424749552858377664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069187.P6424749552858377664

namespace A069187

/-- `A103505(record[A007913(A002522(n))])` -/
def P6424749552858377664.Spec : Prop :=
  ∀ n, P6424749552858377664.a n = A069187 (n + 1)

end A069187

/-! ## A069187.P14032032557181002729

`A103505(record[A053166(A002522(n))])`
-/

namespace A069187.P14032032557181002729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069187.P14032032557181002729

namespace A069187

/-- `A103505(record[A053166(A002522(n))])` -/
def P14032032557181002729.Spec : Prop :=
  ∀ n, P14032032557181002729.a n = A069187 (n + 1)

end A069187

/-!
# A069188: Look at all numbers formed by multiplying the parts in a partition of n; a(n) = maximal such number which is divisible by n.

The programs for A069188, the canonical program `A069188.P15317970325774764994` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069188 has offset 1).

The definition of A069188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069188.P15317970325774764994

`(n+1)*A000792(n+1-A001414(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069188

/-- `(n+1)*A000792(n+1-A001414(n+1))` -/
def P15317970325774764994.Spec : Prop :=
  ∀ n, P15317970325774764994.a n = A069188 (n + 1)

theorem P15317970325774764994.correct : P15317970325774764994.Spec := by
  intro n
  simp only [A069188, Nat.add_sub_cancel]

end A069188

/-! ## A069188.P1682532915020918051

`(n+1)*A000792(A075255(n+1))`
-/

namespace A069188.P1682532915020918051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000792 (A075255 (n + 1)).toNat

end

end A069188.P1682532915020918051

namespace A069188

/-- `(n+1)*A000792(A075255(n+1))` -/
def P1682532915020918051.Spec : Prop :=
  ∀ n, P1682532915020918051.a n = A069188 (n + 1)

end A069188

/-! ## A069188.P3512209581042225153

`(n+1)*A000792(2-A036288(n+1)+n)`
-/

namespace A069188.P3512209581042225153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000792 (2 - A036288 (n + 1) + (n : ℤ)).toNat

end

end A069188.P3512209581042225153

namespace A069188

/-- `(n+1)*A000792(2-A036288(n+1)+n)` -/
def P3512209581042225153.Spec : Prop :=
  ∀ n, P3512209581042225153.a n = A069188 (n + 1)

end A069188

/-! ## A069188.P6422080921828149215

`(n+1)*A120653(A250266(n))`
-/

namespace A069188.P6422080921828149215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120653 (A250266 n).toNat

end

end A069188.P6422080921828149215

namespace A069188

/-- `(n+1)*A120653(A250266(n))` -/
def P6422080921828149215.Spec : Prop :=
  ∀ n, P6422080921828149215.a n = A069188 (n + 1)

end A069188

/-! ## A069188.P351415137758761751

`(n+1)*A109672(A268448(n+1))`
-/

namespace A069188.P351415137758761751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109672 (A268448 (n + 1)).toNat

end

end A069188.P351415137758761751

namespace A069188

/-- `(n+1)*A109672(A268448(n+1))` -/
def P351415137758761751.Spec : Prop :=
  ∀ n, P351415137758761751.a n = A069188 (n + 1)

end A069188

/-!
# A069189: Numbers k such that A007913(k) < sqrt(k).

The programs for A069189, there is no canonical definition to state claims against.
-/

/-! ## A069189.P13483231632279193718

`∪[A069265(n+1), A380168(n+1)]`
-/

namespace A069189.P13483231632279193718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069189.P13483231632279193718

/-! ## A069189.P12884963892812900140

`∪[A166402(n+1), A380168(n+1)]`
-/

namespace A069189.P12884963892812900140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069189.P12884963892812900140

/-! ## A069189.P10837451073244575740

`lt[A007913(n+1)², n]+1`
-/

namespace A069189.P10837451073244575740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069189.P10837451073244575740

/-! ## A069189.P13300756225256474300

`lt[n+2, A008833(n+1)²]+1`
-/

namespace A069189.P13300756225256474300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069189.P13300756225256474300

/-! ## A069189.P12378689822314142302

`lt[A007913(n+1), A008833(n+1)]+1`
-/

namespace A069189.P12378689822314142302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069189.P12378689822314142302

/-! ## A069189.P15286575169259065148

`lt[A055491(n+1), n]+1`
-/

namespace A069189.P15286575169259065148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069189.P15286575169259065148

/-! ## A069189.P15501602463740832907

`lt[A056135(n+1)², n]+1`
-/

namespace A069189.P15501602463740832907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069189.P15501602463740832907

/-! ## A069189.P3012693088493004977

`lt[A007913(A028310(n))², n]`
-/

namespace A069189.P3012693088493004977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069189.P3012693088493004977

/-! ## A069189.P1817451107728376721

`A020725(lt[A055491(n+1), n])`
-/

namespace A069189.P1817451107728376721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069189.P1817451107728376721

/-! ## A069189.P18004022936569267743

`A065475(lt[A055491(n+1), n])`
-/

namespace A069189.P18004022936569267743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069189.P18004022936569267743

/-! ## A069189.P8377404526640431735

`A020725(lt[A007913(n+1)², n])`
-/

namespace A069189.P8377404526640431735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069189.P8377404526640431735

/-! ## A069189.P10244486985111283991

`A065475(lt[A007913(n+1)², n])`
-/

namespace A069189.P10244486985111283991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069189.P10244486985111283991

/-! ## A069189.P1205442088856295660

`A020725(lt[A056135(n+1)², n])`
-/

namespace A069189.P1205442088856295660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069189.P1205442088856295660

/-! ## A069189.P16611898665553190946

`A326178(lt[A007913(n+1)², n])`
-/

namespace A069189.P16611898665553190946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069189.P16611898665553190946

/-! ## A069189.P10295290564790180729

`A020725(lt[n+2, A008833(n+1)²])`
-/

namespace A069189.P10295290564790180729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069189.P10295290564790180729

/-! ## A069189.P2261864235962768975

`A020725(lt[n+2, A000188(n+1)²²])`
-/

namespace A069189.P2261864235962768975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069189.P2261864235962768975

/-! ## A069189.P9919609320536664361

`A020725(lt[A007913(n+1), A008833(n+1)])`
-/

namespace A069189.P9919609320536664361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069189.P9919609320536664361

/-! ## A069189.P11021199956000026062

`A020725(lt[A007913(n+1), n/A007913(n+1)])`
-/

namespace A069189.P11021199956000026062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007913 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A069189.P11021199956000026062

/-! ## A069189.P2256065452300933832

`A065475(lt[A007913(n+1), n/A007913(n+1)])`
-/

namespace A069189.P2256065452300933832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007913 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A069189.P2256065452300933832

/-! ## A069189.P15278558565435189229

`A020725(lt[A056135(n+1), n/A056135(n+1)])`
-/

namespace A069189.P15278558565435189229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A056135 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A069189.P15278558565435189229

/-!
# A069190: Centered 24-gonal numbers.

The programs for A069190, the canonical program `A069190.P7174808803043212073` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069190 has offset 1).

The definition of A069190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069190.P7174808803043212073

`24*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069190

/-- `24*n+a(n-1)` -/
def P7174808803043212073.Spec : Prop :=
  ∀ n, (P7174808803043212073.a n : ℤ) = A069190 (n + 1)

theorem P7174808803043212073.correct : P7174808803043212073.Spec := by
  intro n
  simp only [A069190, Nat.add_sub_cancel]

end A069190

/-! ## A069190.P17189581174016231461

`12*(n+1)²-12*(n+1)+1`
-/

namespace A069190.P17189581174016231461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) ^ 2 : ℤ) - (12 * (n + 1) : ℤ) + 1

end

end A069190.P17189581174016231461

namespace A069190

/-- `12*(n+1)²-12*(n+1)+1` -/
def P17189581174016231461.Spec : Prop :=
  ∀ n, P17189581174016231461.a n = A069190 (n + 1)

theorem P17189581174016231461.correct : P17189581174016231461.Spec := by
  intro n
  induction n with
  | zero => simp [A069190, A069190.P17189581174016231461.a, A069190.P7174808803043212073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069190, Nat.add_sub_cancel, A069190.P17189581174016231461.a, A069190.P7174808803043212073.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069190

/-! ## A069190.P9971948474756612810

`or(1, ∑[24*n])`
-/

namespace A069190.P9971948474756612810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069190.P9971948474756612810

namespace A069190

/-- `or(1, ∑[24*n])` -/
def P9971948474756612810.Spec : Prop :=
  ∀ n, (P9971948474756612810.a n : ℤ) = A069190 (n + 1)

end A069190

/-! ## A069190.P11124007623426822645

`xor(1, ∑[24*n])`
-/

namespace A069190.P11124007623426822645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069190.P11124007623426822645

namespace A069190

/-- `xor(1, ∑[24*n])` -/
def P11124007623426822645.Spec : Prop :=
  ∀ n, (P11124007623426822645.a n : ℤ) = A069190 (n + 1)

end A069190

/-! ## A069190.P12882891257337282041

`∑[a(n-1)+24]` with `a(0)=1, a(1)=24`
-/

namespace A069190.P12882891257337282041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069190.P12882891257337282041

namespace A069190

/-- `∑[a(n-1)+24]` -/
def P12882891257337282041.Spec : Prop :=
  ∀ n, (P12882891257337282041.a n : ℤ) = A069190 (n + 1)

end A069190

/-! ## A069190.P2622332036304877765

`ceil((n+1)/acot(12*n))`
-/

namespace A069190.P2622332036304877765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (12 * n : ℝ)⌉

end

end A069190.P2622332036304877765

namespace A069190

/-- `ceil((n+1)/acot(12*n))` -/
def P2622332036304877765.Spec : Prop :=
  ∀ n, P2622332036304877765.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P16189251383192462677

`and(3*(2*n+1)², -3)`
-/

namespace A069190.P16189251383192462677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * (2 * n + 1) ^ 2 : ℤ) (-3)

end

end A069190.P16189251383192462677

namespace A069190

/-- `and(3*(2*n+1)², -3)` -/
def P16189251383192462677.Spec : Prop :=
  ∀ n, P16189251383192462677.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P17724035420079089536

`Δ[(n-1)*or(1, 2*n)²]`
-/

namespace A069190.P17724035420079089536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069190.P17724035420079089536

namespace A069190

/-- `Δ[(n-1)*or(1, 2*n)²]` -/
def P17724035420079089536.Spec : Prop :=
  ∀ n, P17724035420079089536.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P1671067266252482508

`Δ[(n-1)*xor(1, 2*n)²]`
-/

namespace A069190.P1671067266252482508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.xor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069190.P1671067266252482508

namespace A069190

/-- `Δ[(n-1)*xor(1, 2*n)²]` -/
def P1671067266252482508.Spec : Prop :=
  ∀ n, P1671067266252482508.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P16976680236089543438

`abs(or(2, -3*(2*n+1)²))`
-/

namespace A069190.P16976680236089543438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-(3 * (2 * n + 1) ^ 2 : ℤ))|

end

end A069190.P16976680236089543438

namespace A069190

/-- `abs(or(2, -3*(2*n+1)²))` -/
def P16976680236089543438.Spec : Prop :=
  ∀ n, P16976680236089543438.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P9838383326364888699

`-or(2, -3*(2*n+1)²)`
-/

namespace A069190.P9838383326364888699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(3 * (2 * n + 1) ^ 2 : ℤ))

end

end A069190.P9838383326364888699

namespace A069190

/-- `-or(2, -3*(2*n+1)²)` -/
def P9838383326364888699.Spec : Prop :=
  ∀ n, P9838383326364888699.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P10156922842528252300

`abs(xor(3*(2*n+1)², -4))`
-/

namespace A069190.P10156922842528252300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * (2 * n + 1) ^ 2 : ℤ) (-4)|

end

end A069190.P10156922842528252300

namespace A069190

/-- `abs(xor(3*(2*n+1)², -4))` -/
def P10156922842528252300.Spec : Prop :=
  ∀ n, P10156922842528252300.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P10695127622475753154

`-xor(3*(2*n+1)², -4)`
-/

namespace A069190.P10695127622475753154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (3 * (2 * n + 1) ^ 2 : ℤ) (-4)

end

end A069190.P10695127622475753154

namespace A069190

/-- `-xor(3*(2*n+1)², -4)` -/
def P10695127622475753154.Spec : Prop :=
  ∀ n, P10695127622475753154.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P17637081464686517079

`Δ[(n+1)*(1-lcm(2, 2*n))²]`
-/

namespace A069190.P17637081464686517079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - (Nat.lcm 2 (2 * n) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069190.P17637081464686517079

namespace A069190

/-- `Δ[(n+1)*(1-lcm(2, 2*n))²]` -/
def P17637081464686517079.Spec : Prop :=
  ∀ n, P17637081464686517079.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P12509151981468669044

`Δ[lcm(n, 1-(2*n)²)-2*n]`
-/

namespace A069190.P12509151981468669044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (1 - ((2 * n) ^ 2 : ℤ)) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069190.P12509151981468669044

namespace A069190

/-- `Δ[lcm(n, 1-(2*n)²)-2*n]` -/
def P12509151981468669044.Spec : Prop :=
  ∀ n, P12509151981468669044.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P2548323931328264984

`Δ[(1-2*n)²*C(n+1, n)]`
-/

namespace A069190.P2548323931328264984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * (Nat.choose (n + 1) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069190.P2548323931328264984

namespace A069190

/-- `Δ[(1-2*n)²*C(n+1, n)]` -/
def P2548323931328264984.Spec : Prop :=
  ∀ n, P2548323931328264984.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P8799753864652944765

`record[(2-n)²-lcm(n+3, n-1)]`
-/

namespace A069190.P8799753864652944765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (Int.lcm (n + 3 : ℤ) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069190.P8799753864652944765

namespace A069190

/-- `record[(2-n)²-lcm(n+3, n-1)]` -/
def P8799753864652944765.Spec : Prop :=
  ∀ n, P8799753864652944765.a n = A069190 (n + 1)

end A069190

/-! ## A069190.P4740224100720690243

`Δ[(2*n+1)*(C(2*n, 2)-1)]`
-/

namespace A069190.P4740224100720690243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069190.P4740224100720690243

namespace A069190

/-- `Δ[(2*n+1)*(C(2*n, 2)-1)]` -/
def P4740224100720690243.Spec : Prop :=
  ∀ n, P4740224100720690243.a n = A069190 (n + 1)

end A069190

/-!
# A069191: Determinant of n X n matrix defined by m(i,j)=1 if i+j is a prime, m(i,j)=0 otherwise.

The programs for A069191, there is no canonical definition to state claims against.
-/

/-! ## A069191.P9442472762023200307

`A228552(n+1)²*A087960(n)`
-/

namespace A069191.P9442472762023200307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228552 (n + 1) ^ 2 * A087960 n

end

end A069191.P9442472762023200307

/-! ## A069191.P15496297480309446967

`A228552(char[1]+1+n)²/A087960(n)`
-/

namespace A069191.P15496297480309446967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228552 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) ^ 2 : ℚ) / (A087960 n : ℚ)

end

end A069191.P15496297480309446967

/-! ## A069191.P5165914548845533448

`floor(A228552(A028310(n)+1)²/A087960(n))`
-/

namespace A069191.P5165914548845533448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228552 (A028310 n + 1).toNat ^ 2 : ℚ) / (A087960 n : ℚ)⌋

end

end A069191.P5165914548845533448

/-! ## A069191.P5211507683691490506

`floor(A228552(A023444(n+3))²/A087960(n))`
-/

namespace A069191.P5211507683691490506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228552 (A023444 (n + 3)).toNat ^ 2 : ℚ) / (A087960 n : ℚ)⌋

end

end A069191.P5211507683691490506

/-! ## A069191.P13546471512501212751

`floor(A228552(A054977(n)+n)²/A087960(n))`
-/

namespace A069191.P13546471512501212751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228552 (A054977 n + (n : ℤ)).toNat ^ 2 : ℚ) / (A087960 n : ℚ)⌋

end

end A069191.P13546471512501212751

/-! ## A069191.P2668277874679337096

`floor(A228552(A133636(n+1)%2+n)²/A087960(n))`
-/

namespace A069191.P2668277874679337096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228552 (Int.tmod (A133636 (n + 1)) 2 + (n : ℤ)).toNat ^ 2 : ℚ) / (A087960 n : ℚ)⌋

end

end A069191.P2668277874679337096

/-!
# A069192: Sum of the reversals of the divisors of n.

The programs for A069192, there is no canonical definition to state claims against.
-/

/-! ## A069192.P12836790254084211436

`∑{d}[n+1, A004086(#)]`
-/

namespace A069192.P12836790254084211436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004086 d

end

end A069192.P12836790254084211436

/-! ## A069192.P8823843818133621817

`∑{d}[n+1, #-A056965(#)]`
-/

namespace A069192.P8823843818133621817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A056965 d)

end

end A069192.P8823843818133621817

/-! ## A069192.P7530346573221304843

`∑{d}[n+1, A056964(#)-#]`
-/

namespace A069192.P7530346573221304843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A056964 d - (d : ℤ))

end

end A069192.P7530346573221304843

/-! ## A069192.P14530358599472033937

`A069250(n+1)+A004086(n+1)`
-/

namespace A069192.P14530358599472033937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069250 (n + 1) + A004086 (n + 1)

end

end A069192.P14530358599472033937

/-! ## A069192.P8912809094730005770

`A135020(2*(n+1))+A069250(n+1)`
-/

namespace A069192.P8912809094730005770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1)) + A069250 (n + 1)

end

end A069192.P8912809094730005770

/-!
# A069193: a(n) = Sum_{d|n} d*phi(n)/phi(d).

The programs for A069193, the canonical program `A069193.P1502617142194648967` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069193 has offset 1).

The definition of A069193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069193.P12935520512599301399

`∑{d}[n+1, #*A384050((n+1)/#)]`
-/

namespace A069193.P12935520512599301399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A384050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069193.P12935520512599301399

namespace A069193

/-- `∑{d}[n+1, #*A384050((n+1)/#)]` -/
def P12935520512599301399.Spec : Prop :=
  ∀ n, P12935520512599301399.a n = A069193 (n + 1)

end A069193

/-! ## A069193.P4631597999120460074

`∑{d}[n+1, A000010(#)*A057723((n+1)/#)]`
-/

namespace A069193.P4631597999120460074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069193.P4631597999120460074

namespace A069193

/-- `∑{d}[n+1, A000010(#)*A057723((n+1)/#)]` -/
def P4631597999120460074.Spec : Prop :=
  ∀ n, P4631597999120460074.a n = A069193 (n + 1)

end A069193

/-! ## A069193.P1502617142194648967

`∑{d}[n+1, A018804(#)*A397412((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A069193

/-- `∑{d}[n+1, A018804(#)*A397412((n+1)/#)]` -/
def P1502617142194648967.Spec : Prop :=
  ∀ n, P1502617142194648967.a n = A069193 (n + 1)

theorem P1502617142194648967.correct : P1502617142194648967.Spec := by
  intro n
  simp only [A069193, Nat.add_sub_cancel]

end A069193

/-! ## A069193.P14488777444002912645

`∑{d}[n+1, A000010(#*(n+1))/A000010(#)]`
-/

namespace A069193.P14488777444002912645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (d * (n + 1)) : ℚ) / (A000010 d : ℚ)

end

end A069193.P14488777444002912645

namespace A069193

/-- `∑{d}[n+1, A000010(#*(n+1))/A000010(#)]` -/
def P14488777444002912645.Spec : Prop :=
  ∀ n, P14488777444002912645.a n = (A069193 (n + 1) : ℚ)

end A069193

/-!
# A069194: a(n) = Sum_{d|n} (n/d)*phi(n)/phi(d).

The programs for A069194, the canonical program `A069194.P17220240621042062956` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069194 has offset 1).

The definition of A069194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069194.P17220240621042062956

`∑{d}[n+1, A002618(n+1)/A002618(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A069194

/-- `∑{d}[n+1, A002618(n+1)/A002618(#)]` -/
def P17220240621042062956.Spec : Prop :=
  ∀ n, P17220240621042062956.a n = (A069194 (n + 1) : ℚ)

end A069194

/-! ## A069194.P11469816806917089440

`∑{d}[n+1, A000010((n+1)²)/A000010(#²)]`
-/

namespace A069194.P11469816806917089440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 ((n + 1) ^ 2) : ℚ) / (A000010 (d ^ 2) : ℚ)

end

end A069194.P11469816806917089440

namespace A069194

/-- `∑{d}[n+1, A000010((n+1)²)/A000010(#²)]` -/
def P11469816806917089440.Spec : Prop :=
  ∀ n, P11469816806917089440.a n = (A069194 (n + 1) : ℚ)

end A069194

/-!
# A069199: a(1)=1 a(2)=7 a(n+2)=(a(n+1)+a(n))/3 if (a(n+1)+a(n)==0 (mod 3)); a(n+2)=(a(n+1)+a(n))/2 if (a(n+1)+a(n)==0 (mod 2)); a(n+2)=a(n+1)+a(n) otherwise.

The programs for A069199, there is no canonical definition to state claims against.
-/

/-! ## A069199.P10704080498694985206

`A069196(floor(acot(a(n-1))+n)+4)` with `a(0)=1`
-/

namespace A069199.P10704080498694985206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069196 (⌊SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ)⌋ + 4).toNat

end

end A069199.P10704080498694985206

/-! ## A069199.P2766975306398136116

`A069196(A062545(n)+1-n)`
-/

namespace A069199.P2766975306398136116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069196 (A062545 n + (1 - (n : ℤ))).toNat

end

end A069199.P2766975306398136116

/-! ## A069199.P1244520367039512145

`A069196(1-(n-A062545(n)))`
-/

namespace A069199.P1244520367039512145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069196 (1 - ((n : ℤ) - A062545 n)).toNat

end

end A069199.P1244520367039512145

/-! ## A069199.P7981862135014452058

`gcd(A000038(n), A069196(n+4))`
-/

namespace A069199.P7981862135014452058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A069196 (n + 4))

end

end A069199.P7981862135014452058

/-! ## A069199.P1913462102307841817

`A069196(n+4)^-A057428(n)`
-/

namespace A069199.P1913462102307841817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069196 (n + 4) : ℚ) ^ (-A057428 n : ℤ)

end

end A069199.P1913462102307841817

/-! ## A069199.P9104033554287262885

`A069196(n+4)^A062157(n)²`
-/

namespace A069199.P9104033554287262885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069196 (n + 4) : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A069199.P9104033554287262885

/-! ## A069199.P1301360154602527786

`A069196(n+4)^n^val(A000040(n+1), 2)`
-/

namespace A069199.P1301360154602527786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069196 (n + 4) ^ n ^ SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2

end

end A069199.P1301360154602527786

/-! ## A069199.P8203275667093167957

`A069196(n+4)^A001222(A008578(n+1))`
-/

namespace A069199.P8203275667093167957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069196 (n + 4) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A069199.P8203275667093167957

