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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A034100: Fractional part of square root of a(n) starts with digit 4.

The programs for A034100, the canonical program `A034100.P14856790414300655202` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034100 has offset 1).

The definition of A034100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034100.P10717743242325970350

`eq[2, A327898(n+1)]+1`
-/

namespace A034100.P10717743242325970350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034100.P10717743242325970350

namespace A034100

/-- `eq[2, A327898(n+1)]+1` -/
def P10717743242325970350.Spec : Prop :=
  ∀ n, (P10717743242325970350.a n : ℤ) = A034100 (n + 1)

end A034100

/-! ## A034100.P14856790414300655202

`eq[4, A023961(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034100

/-- `eq[4, A023961(n+1)]+1` -/
def P14856790414300655202.Spec : Prop :=
  ∀ n, (P14856790414300655202.a n : ℤ) = A034100 (n + 1)

theorem P14856790414300655202.correct : P14856790414300655202.Spec := by
  intro n
  simp only [A034100, Nat.add_sub_cancel]

end A034100

/-! ## A034100.P16460807886569104173

`eq[4, A023961(A028310(n))]`
-/

namespace A034100.P16460807886569104173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034100.P16460807886569104173

namespace A034100

/-- `eq[4, A023961(A028310(n))]` -/
def P16460807886569104173.Spec : Prop :=
  ∀ n, (P16460807886569104173.a n : ℤ) = A034100 (n + 1)

end A034100

/-! ## A034100.P17922025714055153852

`eq[4, A023961(A000007(n)+n)]`
-/

namespace A034100.P17922025714055153852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034100.P17922025714055153852

namespace A034100

/-- `eq[4, A023961(A000007(n)+n)]` -/
def P17922025714055153852.Spec : Prop :=
  ∀ n, (P17922025714055153852.a n : ℤ) = A034100 (n + 1)

end A034100

/-! ## A034100.P15914832542431540519

`A063656(lt[A262616(n)², A059268(n)])`
-/

namespace A034100.P15914832542431540519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034100.P15914832542431540519

namespace A034100

/-- `A063656(lt[A262616(n)², A059268(n)])` -/
def P15914832542431540519.Spec : Prop :=
  ∀ n, P15914832542431540519.a n = A034100 (n + 1)

end A034100

/-! ## A034100.P39139796815440660

`eq[4, A023961(A065033(2*n))]`
-/

namespace A034100.P39139796815440660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034100.P39139796815440660

namespace A034100

/-- `eq[4, A023961(A065033(2*n))]` -/
def P39139796815440660.Spec : Prop :=
  ∀ n, (P39139796815440660.a n : ℤ) = A034100 (n + 1)

end A034100

/-! ## A034100.P10258667965879785034

`eq[4, A023961(A123108(2*n))]`
-/

namespace A034100.P10258667965879785034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034100.P10258667965879785034

namespace A034100

/-- `eq[4, A023961(A123108(2*n))]` -/
def P10258667965879785034.Spec : Prop :=
  ∀ n, (P10258667965879785034.a n : ℤ) = A034100 (n + 1)

end A034100

/-!
# A034101: Numbers whose fractional part of square root starts with digit 5.

The programs for A034101, the canonical program `A034101.P14672097297852077103` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034101 has offset 1).

The definition of A034101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034101.P14672097297852077103

`eq[5, A023961(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034101

/-- `eq[5, A023961(n+1)]+1` -/
def P14672097297852077103.Spec : Prop :=
  ∀ n, (P14672097297852077103.a n : ℤ) = A034101 (n + 1)

theorem P14672097297852077103.correct : P14672097297852077103.Spec := by
  intro n
  simp only [A034101, Nat.add_sub_cancel]

end A034101

/-! ## A034101.P5094519381789561310

`eq[5, A023961(A000007(n)+n)]`
-/

namespace A034101.P5094519381789561310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034101.P5094519381789561310

namespace A034101

/-- `eq[5, A023961(A000007(n)+n)]` -/
def P5094519381789561310.Spec : Prop :=
  ∀ n, (P5094519381789561310.a n : ℤ) = A034101 (n + 1)

end A034101

/-! ## A034101.P6410155039585655315

`A034096(n+1)-A000196(A034096(n+1)-1)`
-/

namespace A034101.P6410155039585655315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034096 (n + 1) - A000196 (A034096 (n + 1) - 1).toNat

end

end A034101.P6410155039585655315

namespace A034101

/-- `A034096(n+1)-A000196(A034096(n+1)-1)` -/
def P6410155039585655315.Spec : Prop :=
  ∀ n, P6410155039585655315.a n = A034101 (n + 1)

end A034101

/-! ## A034101.P10661453986088979412

`A028391(A034096(n+1))`
-/

namespace A034101.P10661453986088979412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A034096 (n + 1)).toNat

end

end A034101.P10661453986088979412

namespace A034101

/-- `A028391(A034096(n+1))` -/
def P10661453986088979412.Spec : Prop :=
  ∀ n, P10661453986088979412.a n = A034101 (n + 1)

end A034101

/-! ## A034101.P2397745224794755448

`A056847(A034096(n+1)%A197905(n+1))`
-/

namespace A034101.P2397745224794755448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (Int.tmod (A034096 (n + 1)) (A197905 (n + 1))).toNat

end

end A034101.P2397745224794755448

namespace A034101

/-- `A056847(A034096(n+1)%A197905(n+1))` -/
def P2397745224794755448.Spec : Prop :=
  ∀ n, P2397745224794755448.a n = A034101 (n + 1)

end A034101

/-!
# A034102: Fractional part of square root of a(n) starts with digit 6.

The programs for A034102, the canonical program `A034102.P5014734774195026149` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034102 has offset 1).

The definition of A034102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034102.P5014734774195026149

`A034097(n+1)-floor(sqrt(A034097(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034102

/-- `A034097(n+1)-floor(sqrt(A034097(n+1)))` -/
def P5014734774195026149.Spec : Prop :=
  ∀ n, P5014734774195026149.a n = A034102 (n + 1)

theorem P5014734774195026149.correct : P5014734774195026149.Spec := by
  intro n
  simp only [A034102, Nat.add_sub_cancel]

end A034102

/-! ## A034102.P14716990877710725460

`A034097(n+1)-A002024(A016897(n))`
-/

namespace A034102.P14716990877710725460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) - A002024 (A016897 n).toNat

end

end A034102.P14716990877710725460

namespace A034102

/-- `A034097(n+1)-A002024(A016897(n))` -/
def P14716990877710725460.Spec : Prop :=
  ∀ n, P14716990877710725460.a n = A034102 (n + 1)

end A034102

/-! ## A034102.P18090291976973111417

`eq[6, A023961(n+1)]+1`
-/

namespace A034102.P18090291976973111417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034102.P18090291976973111417

namespace A034102

/-- `eq[6, A023961(n+1)]+1` -/
def P18090291976973111417.Spec : Prop :=
  ∀ n, (P18090291976973111417.a n : ℤ) = A034102 (n + 1)

end A034102

/-! ## A034102.P2843104939872134378

`eq[6, A023961(A028310(n))]`
-/

namespace A034102.P2843104939872134378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034102.P2843104939872134378

namespace A034102

/-- `eq[6, A023961(A028310(n))]` -/
def P2843104939872134378.Spec : Prop :=
  ∀ n, (P2843104939872134378.a n : ℤ) = A034102 (n + 1)

end A034102

/-! ## A034102.P10058200175818677570

`A028391(A034097(n+1))`
-/

namespace A034102.P10058200175818677570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A034097 (n + 1)).toNat

end

end A034102.P10058200175818677570

namespace A034102

/-- `A028391(A034097(n+1))` -/
def P10058200175818677570.Spec : Prop :=
  ∀ n, P10058200175818677570.a n = A034102 (n + 1)

end A034102

/-! ## A034102.P5938282102915646129

`eq[1, A023961(A078358(n+1))]`
-/

namespace A034102.P5938282102915646129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A078358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034102.P5938282102915646129

namespace A034102

/-- `eq[1, A023961(A078358(n+1))]` -/
def P5938282102915646129.Spec : Prop :=
  ∀ n, (P5938282102915646129.a n : ℤ) = A034102 (n + 1)

end A034102

/-! ## A034102.P2603100081073898754

`eq[6, A023961(A233583(n+1))]`
-/

namespace A034102.P2603100081073898754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034102.P2603100081073898754

namespace A034102

/-- `eq[6, A023961(A233583(n+1))]` -/
def P2603100081073898754.Spec : Prop :=
  ∀ n, (P2603100081073898754.a n : ℤ) = A034102 (n + 1)

end A034102

/-!
# A034103: Fractional part of square root of a(n) starts with digit 7.

The programs for A034103, the canonical program `A034103.P13525611423669296742` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034103 has offset 1).

The definition of A034103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034103.P13525611423669296742

`A153152(eq[7, A023961(n+1)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034103

/-- `A153152(eq[7, A023961(n+1)])` -/
def P13525611423669296742.Spec : Prop :=
  ∀ n, P13525611423669296742.a n = A034103 (n + 1)

theorem P13525611423669296742.correct : P13525611423669296742.Spec := by
  intro n
  simp only [A034103, Nat.add_sub_cancel]

end A034103

/-! ## A034103.P5853495889480728778

`A028391(A034098(n+1))`
-/

namespace A034103.P5853495889480728778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A034098 (n + 1)).toNat

end

end A034103.P5853495889480728778

namespace A034103

/-- `A028391(A034098(n+1))` -/
def P5853495889480728778.Spec : Prop :=
  ∀ n, P5853495889480728778.a n = A034103 (n + 1)

end A034103

/-! ## A034103.P11634774008933746681

`eq[2, A023961(A078358(n+1))]`
-/

namespace A034103.P11634774008933746681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A078358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034103.P11634774008933746681

namespace A034103

/-- `eq[2, A023961(A078358(n+1))]` -/
def P11634774008933746681.Spec : Prop :=
  ∀ n, (P11634774008933746681.a n : ℤ) = A034103 (n + 1)

end A034103

/-! ## A034103.P12676365514034887808

`A056847(or(char[3], A034098(n+1)))`
-/

namespace A034103.P12676365514034887808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A034098 (n + 1))).toNat

end

end A034103.P12676365514034887808

namespace A034103

/-- `A056847(or(char[3], A034098(n+1)))` -/
def P12676365514034887808.Spec : Prop :=
  ∀ n, P12676365514034887808.a n = A034103 (n + 1)

end A034103

/-! ## A034103.P14688215633276030058

`eq[2, A023961(A000037(n+1))]+1`
-/

namespace A034103.P14688215633276030058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A000037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034103.P14688215633276030058

namespace A034103

/-- `eq[2, A023961(A000037(n+1))]+1` -/
def P14688215633276030058.Spec : Prop :=
  ∀ n, (P14688215633276030058.a n : ℤ) = A034103 (n + 1)

end A034103

/-! ## A034103.P8383509701313929548

`A056847(A034098(n+1)%A034098(n+1)²)`
-/

namespace A034103.P8383509701313929548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (Int.tmod (A034098 (n + 1)) (A034098 (n + 1) ^ 2)).toNat

end

end A034103.P8383509701313929548

namespace A034103

/-- `A056847(A034098(n+1)%A034098(n+1)²)` -/
def P8383509701313929548.Spec : Prop :=
  ∀ n, P8383509701313929548.a n = A034103 (n + 1)

end A034103

/-! ## A034103.P9334528817499595663

`A056847(A034098(n+1))+A000007(A034887(n))`
-/

namespace A034103.P9334528817499595663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A034098 (n + 1)).toNat + A000007 (A034887 n).toNat

end

end A034103.P9334528817499595663

namespace A034103

/-- `A056847(A034098(n+1))+A000007(A034887(n))` -/
def P9334528817499595663.Spec : Prop :=
  ∀ n, P9334528817499595663.a n = A034103 (n + 1)

end A034103

/-! ## A034103.P8419295180528855229

`eq[7, A023961(A233583(n+1))]`
-/

namespace A034103.P8419295180528855229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034103.P8419295180528855229

namespace A034103

/-- `eq[7, A023961(A233583(n+1))]` -/
def P8419295180528855229.Spec : Prop :=
  ∀ n, (P8419295180528855229.a n : ℤ) = A034103 (n + 1)

end A034103

/-!
# A034104: Fractional part of square root of a(n) starts with digit 8.

The programs for A034104, the canonical program `A034104.P12814070935055898263` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034104 has offset 1).

The definition of A034104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034104.P12814070935055898263

`A034099(n+1)-A002024(A016897(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034104

/-- `A034099(n+1)-A002024(A016897(n))` -/
def P12814070935055898263.Spec : Prop :=
  ∀ n, P12814070935055898263.a n = A034104 (n + 1)

theorem P12814070935055898263.correct : P12814070935055898263.Spec := by
  intro n
  simp only [A034104, Nat.add_sub_cancel]

end A034104

/-! ## A034104.P1728146049568247266

`eq[8, A023961(n+1)]+1`
-/

namespace A034104.P1728146049568247266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034104.P1728146049568247266

namespace A034104

/-- `eq[8, A023961(n+1)]+1` -/
def P1728146049568247266.Spec : Prop :=
  ∀ n, (P1728146049568247266.a n : ℤ) = A034104 (n + 1)

end A034104

/-! ## A034104.P4152110864163478077

`A034099(n+1)-A000194(A017353(n))`
-/

namespace A034104.P4152110864163478077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - A000194 (A017353 n).toNat

end

end A034104.P4152110864163478077

namespace A034104

/-- `A034099(n+1)-A000194(A017353(n))` -/
def P4152110864163478077.Spec : Prop :=
  ∀ n, P4152110864163478077.a n = A034104 (n + 1)

end A034104

/-! ## A034104.P1909633251196142113

`A034099(n+1)-A000194(A017365(n))`
-/

namespace A034104.P1909633251196142113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - A000194 (A017365 n).toNat

end

end A034104.P1909633251196142113

namespace A034104

/-- `A034099(n+1)-A000194(A017365(n))` -/
def P1909633251196142113.Spec : Prop :=
  ∀ n, P1909633251196142113.a n = A034104 (n + 1)

end A034104

/-! ## A034104.P12592846524419435480

`A034099(n+1)-A000194(A017377(n))`
-/

namespace A034104.P12592846524419435480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - A000194 (A017377 n).toNat

end

end A034104.P12592846524419435480

namespace A034104

/-- `A034099(n+1)-A000194(A017377(n))` -/
def P12592846524419435480.Spec : Prop :=
  ∀ n, P12592846524419435480.a n = A034104 (n + 1)

end A034104

/-! ## A034104.P13285064443971646022

`A028391(A034099(n+1))`
-/

namespace A034104.P13285064443971646022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A034099 (n + 1)).toNat

end

end A034104.P13285064443971646022

namespace A034104

/-- `A028391(A034099(n+1))` -/
def P13285064443971646022.Spec : Prop :=
  ∀ n, P13285064443971646022.a n = A034104 (n + 1)

end A034104

/-! ## A034104.P14793620836530618800

`eq[3, A023961(A078358(n+1))]`
-/

namespace A034104.P14793620836530618800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A078358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034104.P14793620836530618800

namespace A034104

/-- `eq[3, A023961(A078358(n+1))]` -/
def P14793620836530618800.Spec : Prop :=
  ∀ n, (P14793620836530618800.a n : ℤ) = A034104 (n + 1)

end A034104

/-! ## A034104.P16008535972423439904

`A034099(n+1)-A000194(A034099(n+1)+1)`
-/

namespace A034104.P16008535972423439904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - A000194 (A034099 (n + 1) + 1).toNat

end

end A034104.P16008535972423439904

namespace A034104

/-- `A034099(n+1)-A000194(A034099(n+1)+1)` -/
def P16008535972423439904.Spec : Prop :=
  ∀ n, P16008535972423439904.a n = A034104 (n + 1)

end A034104

/-!
# A034105: Numbers n such that fractional part of square root of n starts with digit 9.

The programs for A034105, the canonical program `A034105.P4830823344881872781` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034105 has offset 1).

The definition of A034105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034105.P15387522490278990012

`A020725(eq[9, floor(10*sqrt(n+1))%10])`
-/

namespace A034105.P15387522490278990012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊10 * Real.sqrt (n + 1 : ℝ)⌋ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034105.P15387522490278990012

namespace A034105

/-- `A020725(eq[9, floor(10*sqrt(n+1))%10])` -/
def P15387522490278990012.Spec : Prop :=
  ∀ n, P15387522490278990012.a n = A034105 (n + 1)

end A034105

/-! ## A034105.P4830823344881872781

`eq[9, A023961(A028310(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034105

/-- `eq[9, A023961(A028310(n))]` -/
def P4830823344881872781.Spec : Prop :=
  ∀ n, (P4830823344881872781.a n : ℤ) = A034105 (n + 1)

theorem P4830823344881872781.correct : P4830823344881872781.Spec := by
  intro n
  simp only [A034105, Nat.add_sub_cancel]

end A034105

/-! ## A034105.P10091955635507132299

`A020725(eq[9, A023961(n+1)])`
-/

namespace A034105.P10091955635507132299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034105.P10091955635507132299

namespace A034105

/-- `A020725(eq[9, A023961(n+1)])` -/
def P10091955635507132299.Spec : Prop :=
  ∀ n, P10091955635507132299.a n = A034105 (n + 1)

end A034105

/-! ## A034105.P5903545276556853039

`A065475(eq[9, A023961(n+1)])`
-/

namespace A034105.P5903545276556853039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034105.P5903545276556853039

namespace A034105

/-- `A065475(eq[9, A023961(n+1)])` -/
def P5903545276556853039.Spec : Prop :=
  ∀ n, P5903545276556853039.a n = A034105 (n + 1)

end A034105

/-! ## A034105.P15294131383693608334

`A153152(eq[9, A023961(n+1)])`
-/

namespace A034105.P15294131383693608334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034105.P15294131383693608334

namespace A034105

/-- `A153152(eq[9, A023961(n+1)])` -/
def P15294131383693608334.Spec : Prop :=
  ∀ n, P15294131383693608334.a n = A034105 (n + 1)

end A034105

/-! ## A034105.P2241200772711338860

`eq[A000122(n), A023961(A020703(n+1))]`
-/

namespace A034105.P2241200772711338860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A020703 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034105.P2241200772711338860

namespace A034105

/-- `eq[A000122(n), A023961(A020703(n+1))]` -/
def P2241200772711338860.Spec : Prop :=
  ∀ n, (P2241200772711338860.a n : ℤ) = A034105 (n + 1)

end A034105

/-! ## A034105.P11976140185418695289

`eq[4, A023961(A078358(n+1))]`
-/

namespace A034105.P11976140185418695289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A078358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034105.P11976140185418695289

namespace A034105

/-- `eq[4, A023961(A078358(n+1))]` -/
def P11976140185418695289.Spec : Prop :=
  ∀ n, (P11976140185418695289.a n : ℤ) = A034105 (n + 1)

end A034105

/-! ## A034105.P9180503967288640498

`eq[9, A023961(A138153(n+1))]`
-/

namespace A034105.P9180503967288640498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034105.P9180503967288640498

namespace A034105

/-- `eq[9, A023961(A138153(n+1))]` -/
def P9180503967288640498.Spec : Prop :=
  ∀ n, (P9180503967288640498.a n : ℤ) = A034105 (n + 1)

end A034105

/-! ## A034105.P15026244633506712644

`eq[9, A023961(A233583(n+1))]`
-/

namespace A034105.P15026244633506712644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034105.P15026244633506712644

namespace A034105

/-- `eq[9, A023961(A233583(n+1))]` -/
def P15026244633506712644.Spec : Prop :=
  ∀ n, (P15026244633506712644.a n : ℤ) = A034105 (n + 1)

end A034105

/-!
# A034106: Fractional part of square root of n starts with 0: first term of runs (squares excluded).

The programs for A034106, the canonical program `A034106.P14528470251754507863` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034106 has offset 1).

The definition of A034106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034106.P14528470251754507863

`1+(n+5)²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034106

/-- `1+(n+5)²` -/
def P14528470251754507863.Spec : Prop :=
  ∀ n, (P14528470251754507863.a n : ℤ) = A034106 (n + 1)

theorem P14528470251754507863.correct : P14528470251754507863.Spec := by
  intro n
  simp only [A034106, Nat.add_sub_cancel]

end A034106

/-! ## A034106.P11303567100381742839

`record[(5-n)^2+1]`
-/

namespace A034106.P11303567100381742839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (n : ℤ)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034106.P11303567100381742839

namespace A034106

/-- `record[(5-n)^2+1]` -/
def P11303567100381742839.Spec : Prop :=
  ∀ n, P11303567100381742839.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P11561144398110489262

`∑[a(n-1)+2]` with `a(0)=26, a(1)=11`
-/

namespace A034106.P11561144398110489262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [26, 11] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034106.P11561144398110489262

namespace A034106

/-- `∑[a(n-1)+2]` -/
def P11561144398110489262.Spec : Prop :=
  ∀ n, (P11561144398110489262.a n : ℤ) = A034106 (n + 1)

end A034106

/-! ## A034106.P18199503880716774289

`A002522(n+5)`
-/

namespace A034106.P18199503880716774289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 5)

end

end A034106.P18199503880716774289

namespace A034106

/-- `A002522(n+5)` -/
def P18199503880716774289.Spec : Prop :=
  ∀ n, P18199503880716774289.a n = A034106 (n + 1)

theorem P18199503880716774289.correct : P18199503880716774289.Spec := by
  intro n
  simp only [A034106, Nat.add_sub_cancel, A034106.P18199503880716774289.a, A034106.P14528470251754507863.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034106

/-! ## A034106.P5210638782012027879

`A098748(n+5)`
-/

namespace A034106.P5210638782012027879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098748 (n + 5)

end

end A034106.P5210638782012027879

namespace A034106

/-- `A098748(n+5)` -/
def P5210638782012027879.Spec : Prop :=
  ∀ n, P5210638782012027879.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P12066110609525490435

`A098749(n+6)`
-/

namespace A034106.P12066110609525490435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (n + 6)

end

end A034106.P12066110609525490435

namespace A034106

/-- `A098749(n+6)` -/
def P12066110609525490435.Spec : Prop :=
  ∀ n, P12066110609525490435.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P8531709886080913090

`A160457(n+6)`
-/

namespace A034106.P8531709886080913090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (n + 6)

end

end A034106.P8531709886080913090

namespace A034106

/-- `A160457(n+6)` -/
def P8531709886080913090.Spec : Prop :=
  ∀ n, P8531709886080913090.a n = A034106 (n + 1)

theorem P8531709886080913090.correct : P8531709886080913090.Spec := by
  intro n
  simp only [A034106, Nat.add_sub_cancel, A034106.P8531709886080913090.a, A034106.P14528470251754507863.a, A160457, A160457.P13231799295759563819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034106

/-! ## A034106.P16034257724854968914

`sqrt(A082044(n+5))`
-/

namespace A034106.P16034257724854968914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082044 (n + 5) : ℝ)

end

end A034106.P16034257724854968914

namespace A034106

/-- `sqrt(A082044(n+5))` -/
def P16034257724854968914.Spec : Prop :=
  ∀ n, P16034257724854968914.a n = (A034106 (n + 1) : ℝ)

end A034106

/-! ## A034106.P1327709447930821325

`Δ[A131820(n+4)]`
-/

namespace A034106.P1327709447930821325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131820 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034106.P1327709447930821325

namespace A034106

/-- `Δ[A131820(n+4)]` -/
def P1327709447930821325.Spec : Prop :=
  ∀ n, P1327709447930821325.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P6549039667676057835

`Δ[A145066(n+4)]`
-/

namespace A034106.P6549039667676057835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034106.P6549039667676057835

namespace A034106

/-- `Δ[A145066(n+4)]` -/
def P6549039667676057835.Spec : Prop :=
  ∀ n, P6549039667676057835.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P13230346370885710987

`Δ[A081489(n+5)]`
-/

namespace A034106.P13230346370885710987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034106.P13230346370885710987

namespace A034106

/-- `Δ[A081489(n+5)]` -/
def P13230346370885710987.Spec : Prop :=
  ∀ n, P13230346370885710987.a n = A034106 (n + 1)

theorem P13230346370885710987.correct : P13230346370885710987.Spec := by
  intro n
  simp only [A034106, Nat.add_sub_cancel, A034106.P13230346370885710987.f1, A034106.P13230346370885710987.a, A034106.P14528470251754507863.a, A081489, A081489.P7362555526480766211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034106

/-! ## A034106.P4323619155898480950

`A005893(n+5)/2`
-/

namespace A034106.P4323619155898480950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005893 (n + 5) : ℚ) / 2

end

end A034106.P4323619155898480950

namespace A034106

/-- `A005893(n+5)/2` -/
def P4323619155898480950.Spec : Prop :=
  ∀ n, P4323619155898480950.a n = (A034106 (n + 1) : ℚ)

end A034106

/-! ## A034106.P3141699176263293983

`abs(A139576(n+2)-n*(n+7))`
-/

namespace A034106.P3141699176263293983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139576 (n + 2) - (n * (n + 7) : ℤ)|

end

end A034106.P3141699176263293983

namespace A034106

/-- `abs(A139576(n+2)-n*(n+7))` -/
def P3141699176263293983.Spec : Prop :=
  ∀ n, P3141699176263293983.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P1977706751782970362

`or(A005563(n+4)+2, sqrt(A177499(2*(n+1))))`
-/

namespace A034106.P1977706751782970362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005563 (n + 4) + 2) (SequenceMachineLib.roundAway (Real.sqrt (A177499 (2 * (n + 1)) : ℝ)))

end

end A034106.P1977706751782970362

namespace A034106

/-- `or(A005563(n+4)+2, sqrt(A177499(2*(n+1))))` -/
def P1977706751782970362.Spec : Prop :=
  ∀ n, P1977706751782970362.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P18423941506829575907

`A055524(2*(n+5))`
-/

namespace A034106.P18423941506829575907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055524 (2 * (n + 5))

end

end A034106.P18423941506829575907

namespace A034106

/-- `A055524(2*(n+5))` -/
def P18423941506829575907.Spec : Prop :=
  ∀ n, P18423941506829575907.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P1336977019986850268

`A013945(2*(n+5))`
-/

namespace A034106.P1336977019986850268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (2 * (n + 5))

end

end A034106.P1336977019986850268

namespace A034106

/-- `A013945(2*(n+5))` -/
def P1336977019986850268.Spec : Prop :=
  ∀ n, P1336977019986850268.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P13251170585366214217

`A033638(2*(n+5))`
-/

namespace A034106.P13251170585366214217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * (n + 5))

end

end A034106.P13251170585366214217

namespace A034106

/-- `A033638(2*(n+5))` -/
def P13251170585366214217.Spec : Prop :=
  ∀ n, P13251170585366214217.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P12699353278701497096

`A087279(2*(n+5))`
-/

namespace A034106.P12699353278701497096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * (n + 5))

end

end A034106.P12699353278701497096

namespace A034106

/-- `A087279(2*(n+5))` -/
def P12699353278701497096.Spec : Prop :=
  ∀ n, P12699353278701497096.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P12382389898405962443

`A097066(2*(n+5))`
-/

namespace A034106.P12382389898405962443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 (2 * (n + 5))

end

end A034106.P12382389898405962443

namespace A034106

/-- `A097066(2*(n+5))` -/
def P12382389898405962443.Spec : Prop :=
  ∀ n, P12382389898405962443.a n = A034106 (n + 1)

end A034106

/-! ## A034106.P260010411060497863

`A261327(2*(n+5))`
-/

namespace A034106.P260010411060497863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (2 * (n + 5))

end

end A034106.P260010411060497863

namespace A034106

/-- `A261327(2*(n+5))` -/
def P260010411060497863.Spec : Prop :=
  ∀ n, P260010411060497863.a n = A034106 (n + 1)

end A034106

/-!
# A034107: Fractional part of square root of a(n) starts with 1: first term of runs.

The programs for A034107, the canonical program `A034107.P10897991379751370644` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034107 has offset 1).

The definition of A034107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034107.P10897991379751370644

`ceil((31/10+n)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034107

/-- `ceil((31/10+n)²)` -/
def P10897991379751370644.Spec : Prop :=
  ∀ n, P10897991379751370644.a n = A034107 (n + 1)

theorem P10897991379751370644.correct : P10897991379751370644.Spec := by
  intro n
  simp only [A034107, Nat.add_sub_cancel]

end A034107

/-! ## A034107.P14560534475146062305

`Δ[A008732(n+2)]+(n+3)²`
-/

namespace A034107.P14560534475146062305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 3) ^ 2 : ℤ)

end

end A034107.P14560534475146062305

namespace A034107

/-- `Δ[A008732(n+2)]+(n+3)²` -/
def P14560534475146062305.Spec : Prop :=
  ∀ n, P14560534475146062305.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P16238615463766141732

`A047252(n+1)+A027689(n+2)`
-/

namespace A034107.P16238615463766141732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1) + A027689 (n + 2)

end

end A034107.P16238615463766141732

namespace A034107

/-- `A047252(n+1)+A027689(n+2)` -/
def P16238615463766141732.Spec : Prop :=
  ∀ n, P16238615463766141732.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P12935968500167966441

`A034112(n+1)+3+n`
-/

namespace A034107.P12935968500167966441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034112 (n + 1) + 3 + (n : ℤ)

end

end A034107.P12935968500167966441

namespace A034107

/-- `A034112(n+1)+3+n` -/
def P12935968500167966441.Spec : Prop :=
  ∀ n, P12935968500167966441.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P13324504941583084188

`(n+2)*(n+5)-A004525(A047412(n+1))`
-/

namespace A034107.P13324504941583084188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 5) : ℤ) - A004525 (A047412 (n + 1)).toNat

end

end A034107.P13324504941583084188

namespace A034107

/-- `(n+2)*(n+5)-A004525(A047412(n+1))` -/
def P13324504941583084188.Spec : Prop :=
  ∀ n, P13324504941583084188.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P5639785543984669778

`A008616(2*(n+3))+(n+3)²`
-/

namespace A034107.P5639785543984669778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * (n + 3)) + ((n + 3) ^ 2 : ℤ)

end

end A034107.P5639785543984669778

namespace A034107

/-- `A008616(2*(n+3))+(n+3)²` -/
def P5639785543984669778.Spec : Prop :=
  ∀ n, P5639785543984669778.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P13554375520615859483

`A047252(n+1)+A004275(A167614(n+1))`
-/

namespace A034107.P13554375520615859483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1) + A004275 (A167614 (n + 1)).toNat

end

end A034107.P13554375520615859483

namespace A034107

/-- `A047252(n+1)+A004275(A167614(n+1))` -/
def P13554375520615859483.Spec : Prop :=
  ∀ n, P13554375520615859483.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P8080848619912002162

`A000037(A034112(n+1))`
-/

namespace A034107.P8080848619912002162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034112 (n + 1)).toNat

end

end A034107.P8080848619912002162

namespace A034107

/-- `A000037(A034112(n+1))` -/
def P8080848619912002162.Spec : Prop :=
  ∀ n, P8080848619912002162.a n = A034107 (n + 1)

end A034107

/-! ## A034107.P6371575071574653544

`A078358(A034112(n+1)+1)`
-/

namespace A034107.P6371575071574653544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034112 (n + 1) + 1).toNat

end

end A034107.P6371575071574653544

namespace A034107

/-- `A078358(A034112(n+1)+1)` -/
def P6371575071574653544.Spec : Prop :=
  ∀ n, P6371575071574653544.a n = A034107 (n + 1)

end A034107

/-!
# A034108: Fractional part of square root of a(n) starts with 2: first term of runs.

The programs for A034108, the canonical program `A034108.P8067775828640607782` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034108 has offset 1).

The definition of A034108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034108.P8067775828640607782

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=5, a(1)=18, a(2)=28, a(3)=39, a(4)=52, a(5)=68, a(6)=85, a(7)=105`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034108

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P8067775828640607782.Spec : Prop :=
  ∀ n, P8067775828640607782.a n = A034108 (n + 1)

theorem P8067775828640607782.correct : P8067775828640607782.Spec := by
  intro n
  simp only [A034108, Nat.add_sub_cancel]

end A034108

/-! ## A034108.P13834985223614773712

`A034113(n+1)+A065475(n+1)+1`
-/

namespace A034108.P13834985223614773712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034113 (n + 1) + (A065475 (n + 1) + 1)

end

end A034108.P13834985223614773712

namespace A034108

/-- `A034113(n+1)+A065475(n+1)+1` -/
def P13834985223614773712.Spec : Prop :=
  ∀ n, P13834985223614773712.a n = A034108 (n + 1)

theorem P13834985223614773712.correct : P13834985223614773712.Spec := by
  intro n
  simp only [A034108, Nat.add_sub_cancel, A034108.P13834985223614773712.a, A034108.P8067775828640607782.a, A034113, A034113.P7145487810517545129.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034108

/-! ## A034108.P2620995442364018616

`A319701(2*(n+1))+A034113(n+1)`
-/

namespace A034108.P2620995442364018616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (2 * (n + 1)) + A034113 (n + 1)

end

end A034108.P2620995442364018616

namespace A034108

/-- `A319701(2*(n+1))+A034113(n+1)` -/
def P2620995442364018616.Spec : Prop :=
  ∀ n, P2620995442364018616.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P10908860120554562052

`A000040(n+1)%2+A034113(n+1)+n+2`
-/

namespace A034108.P10908860120554562052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + (A034113 (n + 1) + (n + 2 : ℤ))

end

end A034108.P10908860120554562052

namespace A034108

/-- `A000040(n+1)%2+A034113(n+1)+n+2` -/
def P10908860120554562052.Spec : Prop :=
  ∀ n, P10908860120554562052.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P18342800175547800899

`A034113(n+1)+A020725(A065475(n+1))`
-/

namespace A034108.P18342800175547800899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034113 (n + 1) + A020725 (A065475 (n + 1)).toNat

end

end A034108.P18342800175547800899

namespace A034108

/-- `A034113(n+1)+A020725(A065475(n+1))` -/
def P18342800175547800899.Spec : Prop :=
  ∀ n, P18342800175547800899.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P9445106287428975321

`A034113(n+1)+A008619(A005818(n+1)-1)`
-/

namespace A034108.P9445106287428975321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034113 (n + 1) + A008619 (A005818 (n + 1) - 1).toNat

end

end A034108.P9445106287428975321

namespace A034108

/-- `A034113(n+1)+A008619(A005818(n+1)-1)` -/
def P9445106287428975321.Spec : Prop :=
  ∀ n, P9445106287428975321.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P9865200875838051940

`A034113(n+1)+A008619(A005818(n+1))`
-/

namespace A034108.P9865200875838051940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034113 (n + 1) + A008619 (A005818 (n + 1)).toNat

end

end A034108.P9865200875838051940

namespace A034108

/-- `A034113(n+1)+A008619(A005818(n+1))` -/
def P9865200875838051940.Spec : Prop :=
  ∀ n, P9865200875838051940.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P12849077198451034538

`A000037(A034113(n+1))`
-/

namespace A034108.P12849077198451034538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034113 (n + 1)).toNat

end

end A034108.P12849077198451034538

namespace A034108

/-- `A000037(A034113(n+1))` -/
def P12849077198451034538.Spec : Prop :=
  ∀ n, P12849077198451034538.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P17288642672839286089

`A078358(A034113(n+1)+1)`
-/

namespace A034108.P17288642672839286089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034113 (n + 1) + 1).toNat

end

end A034108.P17288642672839286089

namespace A034108

/-- `A078358(A034113(n+1)+1)` -/
def P17288642672839286089.Spec : Prop :=
  ∀ n, P17288642672839286089.a n = A034108 (n + 1)

end A034108

/-! ## A034108.P17876365576683063375

`A028392(A034113(n+1))+A000041(C(2, n+2))`
-/

namespace A034108.P17876365576683063375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034113 (n + 1)).toNat + A000041 (Nat.choose 2 (n + 2))

end

end A034108.P17876365576683063375

namespace A034108

/-- `A028392(A034113(n+1))+A000041(C(2, n+2))` -/
def P17876365576683063375.Spec : Prop :=
  ∀ n, P17876365576683063375.a n = A034108 (n + 1)

end A034108

/-!
# A034109: Fractional part of square root of a(n) starts with 3: first term of runs.

The programs for A034109, the canonical program `A034109.P8926590697814807842` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034109 has offset 1).

The definition of A034109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8691 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034109.P8926590697814807842

`ceil((33/10+n)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034109

/-- `ceil((33/10+n)²)` -/
def P8926590697814807842.Spec : Prop :=
  ∀ n, P8926590697814807842.a n = A034109 (n + 1)

theorem P8926590697814807842.correct : P8926590697814807842.Spec := by
  intro n
  simp only [A034109, Nat.add_sub_cancel]

end A034109

/-! ## A034109.P16508713709610872253

`A034114(n+1)+3+n`
-/

namespace A034109.P16508713709610872253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034114 (n + 1) + 3 + (n : ℤ)

end

end A034109.P16508713709610872253

namespace A034109

/-- `A034114(n+1)+3+n` -/
def P16508713709610872253.Spec : Prop :=
  ∀ n, P16508713709610872253.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P17924845338056401773

`(n+4)²-A047332(n+4)`
-/

namespace A034109.P17924845338056401773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A047332 (n + 4)

end

end A034109.P17924845338056401773

namespace A034109

/-- `(n+4)²-A047332(n+4)` -/
def P17924845338056401773.Spec : Prop :=
  ∀ n, P17924845338056401773.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P9636398386253916013

`Δ[A186494(n+2)]+(n+3)²`
-/

namespace A034109.P9636398386253916013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 3) ^ 2 : ℤ)

end

end A034109.P9636398386253916013

namespace A034109

/-- `Δ[A186494(n+2)]+(n+3)²` -/
def P9636398386253916013.Spec : Prop :=
  ∀ n, P9636398386253916013.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P9482975144118642356

`A028387(n+2)-A057354(n)`
-/

namespace A034109.P9482975144118642356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (n + 2) - A057354 n

end

end A034109.P9482975144118642356

namespace A034109

/-- `A028387(n+2)-A057354(n)` -/
def P9482975144118642356.Spec : Prop :=
  ∀ n, P9482975144118642356.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P2519983067595664967

`A028387(n+2)-A002266(2*n)`
-/

namespace A034109.P2519983067595664967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (n + 2) - A002266 (2 * n)

end

end A034109.P2519983067595664967

namespace A034109

/-- `A028387(n+2)-A002266(2*n)` -/
def P2519983067595664967.Spec : Prop :=
  ∀ n, P2519983067595664967.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P15187874335785991805

`A090223(2*n+1)+A027690(n+2)`
-/

namespace A034109.P15187874335785991805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (2 * n + 1) + A027690 (n + 2)

end

end A034109.P15187874335785991805

namespace A034109

/-- `A090223(2*n+1)+A027690(n+2)` -/
def P15187874335785991805.Spec : Prop :=
  ∀ n, P15187874335785991805.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P15532925547019780483

`A000037(A034114(n+1))`
-/

namespace A034109.P15532925547019780483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034114 (n + 1)).toNat

end

end A034109.P15532925547019780483

namespace A034109

/-- `A000037(A034114(n+1))` -/
def P15532925547019780483.Spec : Prop :=
  ∀ n, P15532925547019780483.a n = A034109 (n + 1)

end A034109

/-! ## A034109.P2163139384425092567

`A078358(A034114(n+1)+1)`
-/

namespace A034109.P2163139384425092567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034114 (n + 1) + 1).toNat

end

end A034109.P2163139384425092567

namespace A034109

/-- `A078358(A034114(n+1)+1)` -/
def P2163139384425092567.Spec : Prop :=
  ∀ n, P2163139384425092567.a n = A034109 (n + 1)

end A034109

/-!
# A034110: Fractional part of square root of a(n) starts with 4: first term of runs.

The programs for A034110, the canonical program `A034110.P3181133878637248306` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034110 has offset 1).

The definition of A034110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034110.P3181133878637248306

`ceil((7/5+n)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034110

/-- `ceil((7/5+n)²)` -/
def P3181133878637248306.Spec : Prop :=
  ∀ n, P3181133878637248306.a n = A034110 (n + 1)

theorem P3181133878637248306.correct : P3181133878637248306.Spec := by
  intro n
  simp only [A034110, Nat.add_sub_cancel]

end A034110

/-! ## A034110.P2225959165474016772

`(n+2)²-∑[gcd(5, n)%3]`
-/

namespace A034110.P2225959165474016772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034110.P2225959165474016772

namespace A034110

/-- `(n+2)²-∑[gcd(5, n)%3]` -/
def P2225959165474016772.Spec : Prop :=
  ∀ n, P2225959165474016772.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P17753823488164786891

`lcm(n+1, n+2)-floor(n/5)`
-/

namespace A034110.P17753823488164786891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℤ) - ⌊(n : ℚ) / 5⌋

end

end A034110.P17753823488164786891

namespace A034110

/-- `lcm(n+1, n+2)-floor(n/5)` -/
def P17753823488164786891.Spec : Prop :=
  ∀ n, P17753823488164786891.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P867894362224109103

`∑[a(n-1)+2]-floor(n/5)` with `a(0)=2`
-/

namespace A034110.P867894362224109103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 5⌋

end

end A034110.P867894362224109103

namespace A034110

/-- `∑[a(n-1)+2]-floor(n/5)` -/
def P867894362224109103.Spec : Prop :=
  ∀ n, P867894362224109103.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P550930522490728630

`(n+2)²-A047248(n+2)`
-/

namespace A034110.P550930522490728630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A047248 (n + 2)

end

end A034110.P550930522490728630

namespace A034110

/-- `(n+2)²-A047248(n+2)` -/
def P550930522490728630.Spec : Prop :=
  ∀ n, P550930522490728630.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P17066857685598055374

`(n+1)*(n+2)-A002266(n)`
-/

namespace A034110.P17066857685598055374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A002266 n

end

end A034110.P17066857685598055374

namespace A034110

/-- `(n+1)*(n+2)-A002266(n)` -/
def P17066857685598055374.Spec : Prop :=
  ∀ n, P17066857685598055374.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P18188260251363964272

`(n+2)²-∑[A130782(n+2)]`
-/

namespace A034110.P18188260251363964272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034110.P18188260251363964272

namespace A034110

/-- `(n+2)²-∑[A130782(n+2)]` -/
def P18188260251363964272.Spec : Prop :=
  ∀ n, P18188260251363964272.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P3568604057590870184

`(n+1)²+A090223(n+1)+1`
-/

namespace A034110.P3568604057590870184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A090223 (n + 1) + 1)

end

end A034110.P3568604057590870184

namespace A034110

/-- `(n+1)²+A090223(n+1)+1` -/
def P3568604057590870184.Spec : Prop :=
  ∀ n, P3568604057590870184.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P6716503594491510261

`(n+1)*(n+3)-A047253(n+1)`
-/

namespace A034110.P6716503594491510261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 3) : ℤ) - A047253 (n + 1)

end

end A034110.P6716503594491510261

namespace A034110

/-- `(n+1)*(n+3)-A047253(n+1)` -/
def P6716503594491510261.Spec : Prop :=
  ∀ n, P6716503594491510261.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P7341960102429863657

`A028387(n)+1-A002266(n)`
-/

namespace A034110.P7341960102429863657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A002266 n)

end

end A034110.P7341960102429863657

namespace A034110

/-- `A028387(n)+1-A002266(n)` -/
def P7341960102429863657.Spec : Prop :=
  ∀ n, P7341960102429863657.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P1676046467963763830

`A090223(n+1)+A002522(n+1)`
-/

namespace A034110.P1676046467963763830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) + A002522 (n + 1)

end

end A034110.P1676046467963763830

namespace A034110

/-- `A090223(n+1)+A002522(n+1)` -/
def P1676046467963763830.Spec : Prop :=
  ∀ n, P1676046467963763830.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P9557794373178271910

`n²+A004767(n)-A047253(n+1)`
-/

namespace A034110.P9557794373178271910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A004767 n - A047253 (n + 1))

end

end A034110.P9557794373178271910

namespace A034110

/-- `n²+A004767(n)-A047253(n+1)` -/
def P9557794373178271910.Spec : Prop :=
  ∀ n, P9557794373178271910.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P9204003551528863395

`A090223(n+1)+A005893(n+1)/2`
-/

namespace A034110.P9204003551528863395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090223 (n + 1) : ℚ) + (A005893 (n + 1) : ℚ) / 2

end

end A034110.P9204003551528863395

namespace A034110

/-- `A090223(n+1)+A005893(n+1)/2` -/
def P9204003551528863395.Spec : Prop :=
  ∀ n, P9204003551528863395.a n = (A034110 (n + 1) : ℚ)

end A034110

/-! ## A034110.P5700774069650010942

`A000096(n+1)+A000217(n)-A002266(n)`
-/

namespace A034110.P5700774069650010942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (A000217 n - A002266 n)

end

end A034110.P5700774069650010942

namespace A034110

/-- `A000096(n+1)+A000217(n)-A002266(n)` -/
def P5700774069650010942.Spec : Prop :=
  ∀ n, P5700774069650010942.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P1783785513751529019

`A000217(n+1)+A000217(n+1)-A002266(n)`
-/

namespace A034110.P1783785513751529019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A002266 n)

end

end A034110.P1783785513751529019

namespace A034110

/-- `A000217(n+1)+A000217(n+1)-A002266(n)` -/
def P1783785513751529019.Spec : Prop :=
  ∀ n, P1783785513751529019.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P2817065089518867226

`A001859(n+1)+A002620(n+1)-A002266(n)`
-/

namespace A034110.P2817065089518867226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 (n + 1) + (A002620 (n + 1) - A002266 n)

end

end A034110.P2817065089518867226

namespace A034110

/-- `A001859(n+1)+A002620(n+1)-A002266(n)` -/
def P2817065089518867226.Spec : Prop :=
  ∀ n, P2817065089518867226.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P17605096037482052446

`A005475(n+1)-(A002266(n)+A000326(n+1))`
-/

namespace A034110.P17605096037482052446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 (n + 1) - (A002266 n + A000326 (n + 1))

end

end A034110.P17605096037482052446

namespace A034110

/-- `A005475(n+1)-(A002266(n)+A000326(n+1))` -/
def P17605096037482052446.Spec : Prop :=
  ∀ n, P17605096037482052446.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P16629408245634975002

`A008619(A047412(n+2))+(n+1)²`
-/

namespace A034110.P16629408245634975002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047412 (n + 2)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A034110.P16629408245634975002

namespace A034110

/-- `A008619(A047412(n+2))+(n+1)²` -/
def P16629408245634975002.Spec : Prop :=
  ∀ n, P16629408245634975002.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P322906282844301416

`A008619(A047446(n+2))+(n+1)²`
-/

namespace A034110.P322906282844301416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047446 (n + 2)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A034110.P322906282844301416

namespace A034110

/-- `A008619(A047446(n+2))+(n+1)²` -/
def P322906282844301416.Spec : Prop :=
  ∀ n, P322906282844301416.a n = A034110 (n + 1)

end A034110

/-! ## A034110.P504320343013208416

`A002378(n+1)-A059995(2*n)`
-/

namespace A034110.P504320343013208416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - A059995 (2 * n)

end

end A034110.P504320343013208416

namespace A034110

/-- `A002378(n+1)-A059995(2*n)` -/
def P504320343013208416.Spec : Prop :=
  ∀ n, P504320343013208416.a n = A034110 (n + 1)

end A034110

/-!
# A034111: Fractional part of square root of a(n) starts with 5: first term of runs.

The programs for A034111, the canonical program `A034111.P12627641465690712598` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034111 has offset 1).

The definition of A034111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034111.P12627641465690712598

`(n+1)²+7*(n+1)+13`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034111

/-- `(n+1)²+7*(n+1)+13` -/
def P12627641465690712598.Spec : Prop :=
  ∀ n, (P12627641465690712598.a n : ℤ) = A034111 (n + 1)

theorem P12627641465690712598.correct : P12627641465690712598.Spec := by
  intro n
  simp only [A034111, Nat.add_sub_cancel]

end A034111

/-! ## A034111.P11557089666577058180

`∑[a(n-1)+2]` with `a(0)=21, a(1)=10`
-/

namespace A034111.P11557089666577058180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 10] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034111.P11557089666577058180

namespace A034111

/-- `∑[a(n-1)+2]` -/
def P11557089666577058180.Spec : Prop :=
  ∀ n, (P11557089666577058180.a n : ℤ) = A034111 (n + 1)

end A034111

/-! ## A034111.P9796431777831290696

`record[(5-n)²+n-4]`
-/

namespace A034111.P9796431777831290696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (n : ℤ)) ^ 2 + ((n : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034111.P9796431777831290696

namespace A034111

/-- `record[(5-n)²+n-4]` -/
def P9796431777831290696.Spec : Prop :=
  ∀ n, P9796431777831290696.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P10799631678380792316

`ceil((A020742(n+1)/2)²)`
-/

namespace A034111.P10799631678380792316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A020742 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A034111.P10799631678380792316

namespace A034111

/-- `ceil((A020742(n+1)/2)²)` -/
def P10799631678380792316.Spec : Prop :=
  ∀ n, P10799631678380792316.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P18104040024806817652

`Δ[A264444(n)+A000292(n)]`
-/

namespace A034111.P18104040024806817652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P18104040024806817652

namespace A034111

/-- `Δ[A264444(n)+A000292(n)]` -/
def P18104040024806817652.Spec : Prop :=
  ∀ n, P18104040024806817652.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P11058857901978108943

`A038865(n+3)/9`
-/

namespace A034111.P11058857901978108943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038865 (n + 3) : ℚ) / 9

end

end A034111.P11058857901978108943

namespace A034111

/-- `A038865(n+3)/9` -/
def P11058857901978108943.Spec : Prop :=
  ∀ n, P11058857901978108943.a n = (A034111 (n + 1) : ℚ)

theorem P11058857901978108943.correct : P11058857901978108943.Spec := by
  intro n
  simp only [A034111, Nat.add_sub_cancel, A034111.P11058857901978108943.a, A034111.P12627641465690712598.a, A038865, A038865.P7752552124364458632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034111

/-! ## A034111.P5016489019400229528

`floor(sqrt(A094793(n+3)))`
-/

namespace A034111.P5016489019400229528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A094793 (n + 3))

end

end A034111.P5016489019400229528

namespace A034111

/-- `floor(sqrt(A094793(n+3)))` -/
def P5016489019400229528.Spec : Prop :=
  ∀ n, P5016489019400229528.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P14360730602330697333

`Δ[Δ[A005701(n+1)]-A000096(n+1)]`
-/

namespace A034111.P14360730602330697333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P14360730602330697333

namespace A034111

/-- `Δ[Δ[A005701(n+1)]-A000096(n+1)]` -/
def P14360730602330697333.Spec : Prop :=
  ∀ n, P14360730602330697333.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P14140691266377296497

`Δ[Δ[A005701(n+1)]-A167487(n+1)]`
-/

namespace A034111.P14140691266377296497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A167487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P14140691266377296497

namespace A034111

/-- `Δ[Δ[A005701(n+1)]-A167487(n+1)]` -/
def P14140691266377296497.Spec : Prop :=
  ∀ n, P14140691266377296497.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P17136323246332742108

`A002061(n+5)`
-/

namespace A034111.P17136323246332742108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 5)

end

end A034111.P17136323246332742108

namespace A034111

/-- `A002061(n+5)` -/
def P17136323246332742108.Spec : Prop :=
  ∀ n, P17136323246332742108.a n = A034111 (n + 1)

theorem P17136323246332742108.correct : P17136323246332742108.Spec := by
  intro n
  simp only [A034111, Nat.add_sub_cancel, A034111.P17136323246332742108.a, A034111.P12627641465690712598.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034111

/-! ## A034111.P16888649922480095716

`Δ[A145069(n+3)]`
-/

namespace A034111.P16888649922480095716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P16888649922480095716

namespace A034111

/-- `Δ[A145069(n+3)]` -/
def P16888649922480095716.Spec : Prop :=
  ∀ n, P16888649922480095716.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P13243383390394838790

`Δ[A167875(n+3)]`
-/

namespace A034111.P13243383390394838790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P13243383390394838790

namespace A034111

/-- `Δ[A167875(n+3)]` -/
def P13243383390394838790.Spec : Prop :=
  ∀ n, P13243383390394838790.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P11098623669562223509

`or(1, A002378(n+4))`
-/

namespace A034111.P11098623669562223509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002378 (n + 4))

end

end A034111.P11098623669562223509

namespace A034111

/-- `or(1, A002378(n+4))` -/
def P11098623669562223509.Spec : Prop :=
  ∀ n, P11098623669562223509.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P4606784930733024783

`Δ[Δ[A014629(n+3)]]`
-/

namespace A034111.P4606784930733024783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014629 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P4606784930733024783

namespace A034111

/-- `Δ[Δ[A014629(n+3)]]` -/
def P4606784930733024783.Spec : Prop :=
  ∀ n, P4606784930733024783.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P16324468376546137380

`abs(3-A027689(n+4))`
-/

namespace A034111.P16324468376546137380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A027689 (n + 4)|

end

end A034111.P16324468376546137380

namespace A034111

/-- `abs(3-A027689(n+4))` -/
def P16324468376546137380.Spec : Prop :=
  ∀ n, P16324468376546137380.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P12945002848610869691

`sqrt(A058031(n+5))`
-/

namespace A034111.P12945002848610869691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058031 (n + 5) : ℝ)

end

end A034111.P12945002848610869691

namespace A034111

/-- `sqrt(A058031(n+5))` -/
def P12945002848610869691.Spec : Prop :=
  ∀ n, P12945002848610869691.a n = (A034111 (n + 1) : ℝ)

end A034111

/-! ## A034111.P2292062737768226349

`Δ[A006527(n+4)]`
-/

namespace A034111.P2292062737768226349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P2292062737768226349

namespace A034111

/-- `Δ[A006527(n+4)]` -/
def P2292062737768226349.Spec : Prop :=
  ∀ n, P2292062737768226349.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P12172875347779462734

`Δ[A116731(n+5)]`
-/

namespace A034111.P12172875347779462734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P12172875347779462734

namespace A034111

/-- `Δ[A116731(n+5)]` -/
def P12172875347779462734.Spec : Prop :=
  ∀ n, P12172875347779462734.a n = A034111 (n + 1)

end A034111

/-! ## A034111.P6378728798894660306

`A051890(n+5)/2`
-/

namespace A034111.P6378728798894660306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051890 (n + 5) : ℚ) / 2

end

end A034111.P6378728798894660306

namespace A034111

/-- `A051890(n+5)/2` -/
def P6378728798894660306.Spec : Prop :=
  ∀ n, P6378728798894660306.a n = (A034111 (n + 1) : ℚ)

theorem P6378728798894660306.correct : P6378728798894660306.Spec := by
  intro n
  simp only [A034111, Nat.add_sub_cancel, A034111.P6378728798894660306.a, A034111.P12627641465690712598.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034111

/-! ## A034111.P3700084642009261505

`Δ[Δ[A006007(n+3)]]`
-/

namespace A034111.P3700084642009261505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034111.P3700084642009261505

namespace A034111

/-- `Δ[Δ[A006007(n+3)]]` -/
def P3700084642009261505.Spec : Prop :=
  ∀ n, P3700084642009261505.a n = A034111 (n + 1)

end A034111

/-!
# A034112: Fractional part of square root of a(n) starts with 6: first term of runs.

The programs for A034112, the canonical program `A034112.P10496871866684969466` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034112 has offset 1).

The definition of A034112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034112.P10496871866684969466

`ceil((13/5+n)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034112

/-- `ceil((13/5+n)²)` -/
def P10496871866684969466.Spec : Prop :=
  ∀ n, P10496871866684969466.a n = A034112 (n + 1)

theorem P10496871866684969466.correct : P10496871866684969466.Spec := by
  intro n
  simp only [A034112, Nat.add_sub_cancel]

end A034112

/-! ## A034112.P12817595381596775565

`A034107(n+1)-(n+3)`
-/

namespace A034112.P12817595381596775565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034107 (n + 1) - (n + 3 : ℤ)

end

end A034112.P12817595381596775565

namespace A034112

/-- `A034107(n+1)-(n+3)` -/
def P12817595381596775565.Spec : Prop :=
  ∀ n, P12817595381596775565.a n = A034112 (n + 1)

end A034112

/-! ## A034112.P4293885598482467976

`A047263(n+2)+(n+2)²+2`
-/

namespace A034112.P4293885598482467976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 2) + ((n + 2) ^ 2 + 2 : ℤ)

end

end A034112.P4293885598482467976

namespace A034112

/-- `A047263(n+2)+(n+2)²+2` -/
def P4293885598482467976.Spec : Prop :=
  ∀ n, P4293885598482467976.a n = A034112 (n + 1)

end A034112

/-! ## A034112.P7985256658984064402

`A117950(n+2)+comp[6*n+2]`
-/

namespace A034112.P7985256658984064402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A034112.P7985256658984064402

namespace A034112

/-- `A117950(n+2)+comp[6*n+2]` -/
def P7985256658984064402.Spec : Prop :=
  ∀ n, P7985256658984064402.a n = A034112 (n + 1)

end A034112

/-! ## A034112.P17659897164106223650

`A102305(n+1)+A047263(n+2)`
-/

namespace A034112.P17659897164106223650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (n + 1) + A047263 (n + 2)

end

end A034112.P17659897164106223650

namespace A034112

/-- `A102305(n+1)+A047263(n+2)` -/
def P17659897164106223650.Spec : Prop :=
  ∀ n, P17659897164106223650.a n = A034112 (n + 1)

end A034112

/-! ## A034112.P1564056246199299032

`A047497(2*(n+1))+(n+1)²+4`
-/

namespace A034112.P1564056246199299032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (2 * (n + 1)) + ((n + 1) ^ 2 + 4 : ℤ)

end

end A034112.P1564056246199299032

namespace A034112

/-- `A047497(2*(n+1))+(n+1)²+4` -/
def P1564056246199299032.Spec : Prop :=
  ∀ n, P1564056246199299032.a n = A034112 (n + 1)

end A034112

/-! ## A034112.P4404071565617408684

`A008616(2*n+1)+A028387(n+1)+2`
-/

namespace A034112.P4404071565617408684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n + 1) + (A028387 (n + 1) + 2)

end

end A034112.P4404071565617408684

namespace A034112

/-- `A008616(2*n+1)+A028387(n+1)+2` -/
def P4404071565617408684.Spec : Prop :=
  ∀ n, P4404071565617408684.a n = A034112 (n + 1)

end A034112

/-! ## A034112.P636932383557585460

`A028391(A034107(n+1))`
-/

namespace A034112.P636932383557585460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A034107 (n + 1)).toNat

end

end A034112.P636932383557585460

namespace A034112

/-- `A028391(A034107(n+1))` -/
def P636932383557585460.Spec : Prop :=
  ∀ n, P636932383557585460.a n = A034112 (n + 1)

end A034112

/-!
# A034113: Fractional part of square root of a(n) starts with 7: first term of runs.

The programs for A034113, the canonical program `A034113.P7145487810517545129` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034113 has offset 1).

The definition of A034113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034113.P7145487810517545129

`A034108(n+1)-(A065475(n+1)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034113

/-- `A034108(n+1)-(A065475(n+1)+1)` -/
def P7145487810517545129.Spec : Prop :=
  ∀ n, P7145487810517545129.a n = A034113 (n + 1)

theorem P7145487810517545129.correct : P7145487810517545129.Spec := by
  intro n
  simp only [A034113, Nat.add_sub_cancel]

end A034113

/-! ## A034113.P10704286751740804945

`A034108(n+1)-A319701(2*(n+1))`
-/

namespace A034113.P10704286751740804945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) - A319701 (2 * (n + 1))

end

end A034113.P10704286751740804945

namespace A034113

/-- `A034108(n+1)-A319701(2*(n+1))` -/
def P10704286751740804945.Spec : Prop :=
  ∀ n, P10704286751740804945.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P2759775374320377398

`A034108(n+1)+A028310(n)-(2*n+3)`
-/

namespace A034113.P2759775374320377398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) + (A028310 n - (2 * n + 3 : ℤ))

end

end A034113.P2759775374320377398

namespace A034113

/-- `A034108(n+1)+A028310(n)-(2*n+3)` -/
def P2759775374320377398.Spec : Prop :=
  ∀ n, P2759775374320377398.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P17360546189077662221

`A034108(n+1)-A020725(A065475(n+1))`
-/

namespace A034113.P17360546189077662221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) - A020725 (A065475 (n + 1)).toNat

end

end A034113.P17360546189077662221

namespace A034113

/-- `A034108(n+1)-A020725(A065475(n+1))` -/
def P17360546189077662221.Spec : Prop :=
  ∀ n, P17360546189077662221.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P11294008662808880980

`A034108(n+1)-(A176591(2*n+1)+n+1)`
-/

namespace A034113.P11294008662808880980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) - (A176591 (2 * n + 1) + (n + 1 : ℤ))

end

end A034113.P11294008662808880980

namespace A034113

/-- `A034108(n+1)-(A176591(2*n+1)+n+1)` -/
def P11294008662808880980.Spec : Prop :=
  ∀ n, P11294008662808880980.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P11355631042704838286

`A034108(n+1)-A008619(A005818(n+1)-1)`
-/

namespace A034113.P11355631042704838286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) - A008619 (A005818 (n + 1) - 1).toNat

end

end A034113.P11355631042704838286

namespace A034113

/-- `A034108(n+1)-A008619(A005818(n+1)-1)` -/
def P11355631042704838286.Spec : Prop :=
  ∀ n, P11355631042704838286.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P1581711494995399053

`A034108(n+1)-A008619(A005818(n+1))`
-/

namespace A034113.P1581711494995399053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) - A008619 (A005818 (n + 1)).toNat

end

end A034113.P1581711494995399053

namespace A034113

/-- `A034108(n+1)-A008619(A005818(n+1))` -/
def P1581711494995399053.Spec : Prop :=
  ∀ n, P1581711494995399053.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P9936305007512887337

`A000037(A034108(n+1)-A005818(n+1))`
-/

namespace A034113.P9936305007512887337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034108 (n + 1) - A005818 (n + 1)).toNat

end

end A034113.P9936305007512887337

namespace A034113

/-- `A000037(A034108(n+1)-A005818(n+1))` -/
def P9936305007512887337.Spec : Prop :=
  ∀ n, P9936305007512887337.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P5370658084246379764

`A028392(A034108(n+1)-A005818(n+1))`
-/

namespace A034113.P5370658084246379764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034108 (n + 1) - A005818 (n + 1)).toNat

end

end A034113.P5370658084246379764

namespace A034113

/-- `A028392(A034108(n+1)-A005818(n+1))` -/
def P5370658084246379764.Spec : Prop :=
  ∀ n, P5370658084246379764.a n = A034113 (n + 1)

end A034113

/-! ## A034113.P17718045747660292263

`A078358(A034108(n+1)-A005818(n+1))`
-/

namespace A034113.P17718045747660292263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A034108 (n + 1) - A005818 (n + 1)).toNat

end

end A034113.P17718045747660292263

namespace A034113

/-- `A078358(A034108(n+1)-A005818(n+1))` -/
def P17718045747660292263.Spec : Prop :=
  ∀ n, P17718045747660292263.a n = A034113 (n + 1)

end A034113

/-!
# A034114: Fractional part of square root of a(n) starts with 8: first term of runs.

The programs for A034114, the canonical program `A034114.P16735787600543166370` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034114 has offset 1).

The definition of A034114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034114.P16735787600543166370

`ceil((14/5+n)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034114

/-- `ceil((14/5+n)²)` -/
def P16735787600543166370.Spec : Prop :=
  ∀ n, P16735787600543166370.a n = A034114 (n + 1)

theorem P16735787600543166370.correct : P16735787600543166370.Spec := by
  intro n
  simp only [A034114, Nat.add_sub_cancel]

end A034114

/-! ## A034114.P9756432344300067473

`floor(record[(n-3)²]-(2*n+1)/5)`
-/

namespace A034114.P9756432344300067473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (2 * n + 1 : ℚ) / 5⌋

end

end A034114.P9756432344300067473

namespace A034114

/-- `floor(record[(n-3)²]-(2*n+1)/5)` -/
def P9756432344300067473.Spec : Prop :=
  ∀ n, P9756432344300067473.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P15136849923464707495

`(n+3)²-A173276(n)`
-/

namespace A034114.P15136849923464707495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A173276 n

end

end A034114.P15136849923464707495

namespace A034114

/-- `(n+3)²-A173276(n)` -/
def P15136849923464707495.Spec : Prop :=
  ∀ n, P15136849923464707495.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P10382665455532866811

`(n+3)²-∑[A232990(n)]`
-/

namespace A034114.P10382665455532866811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034114.P10382665455532866811

namespace A034114

/-- `(n+3)²-∑[A232990(n)]` -/
def P10382665455532866811.Spec : Prop :=
  ∀ n, P10382665455532866811.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P1772202920771709952

`(n+3)²-(A057354(n)+1)`
-/

namespace A034114.P1772202920771709952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (A057354 n + 1)

end

end A034114.P1772202920771709952

namespace A034114

/-- `(n+3)²-(A057354(n)+1)` -/
def P1772202920771709952.Spec : Prop :=
  ∀ n, P1772202920771709952.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P890986614600838300

`(n+3)²-A288156(n+2)`
-/

namespace A034114.P890986614600838300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A288156 (n + 2)

end

end A034114.P890986614600838300

namespace A034114

/-- `(n+3)²-A288156(n+2)` -/
def P890986614600838300.Spec : Prop :=
  ∀ n, P890986614600838300.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P13756806739981569850

`(n+3)²-Δ[A008738(n+1)]`
-/

namespace A034114.P13756806739981569850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A034114.P13756806739981569850

namespace A034114

/-- `(n+3)²-Δ[A008738(n+1)]` -/
def P13756806739981569850.Spec : Prop :=
  ∀ n, P13756806739981569850.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P3661727158654649011

`(n+3)²-∑[A198517(n+2)]`
-/

namespace A034114.P3661727158654649011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034114.P3661727158654649011

namespace A034114

/-- `(n+3)²-∑[A198517(n+2)]` -/
def P3661727158654649011.Spec : Prop :=
  ∀ n, P3661727158654649011.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P7835422465294372705

`A005563(n+2)-A057354(n)`
-/

namespace A034114.P7835422465294372705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 2) - A057354 n

end

end A034114.P7835422465294372705

namespace A034114

/-- `A005563(n+2)-A057354(n)` -/
def P7835422465294372705.Spec : Prop :=
  ∀ n, P7835422465294372705.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P12710678829536442219

`A034109(n+1)-(n+3)`
-/

namespace A034114.P12710678829536442219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034109 (n + 1) - (n + 3 : ℤ)

end

end A034114.P12710678829536442219

namespace A034114

/-- `A034109(n+1)-(n+3)` -/
def P12710678829536442219.Spec : Prop :=
  ∀ n, P12710678829536442219.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P5500139741436869165

`A090223(2*(n+3))+(n+2)²`
-/

namespace A034114.P5500139741436869165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (2 * (n + 3)) + ((n + 2) ^ 2 : ℤ)

end

end A034114.P5500139741436869165

namespace A034114

/-- `A090223(2*(n+3))+(n+2)²` -/
def P5500139741436869165.Spec : Prop :=
  ∀ n, P5500139741436869165.a n = A034114 (n + 1)

end A034114

/-! ## A034114.P5095374447880568346

`(n+3)²-A008616(4*n)`
-/

namespace A034114.P5095374447880568346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A008616 (4 * n)

end

end A034114.P5095374447880568346

namespace A034114

/-- `(n+3)²-A008616(4*n)` -/
def P5095374447880568346.Spec : Prop :=
  ∀ n, P5095374447880568346.a n = A034114 (n + 1)

end A034114

/-!
# A034115: Fractional part of square root of a(n) starts with 9: first term of runs.

The programs for A034115, the canonical program `A034115.P9964271745836139359` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034115 has offset 1).

The definition of A034115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034115.P9964271745836139359

`(n+1)²+9*(n+1)+25+floor(4*(n+1)/5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034115

/-- `(n+1)²+9*(n+1)+25+floor(4*(n+1)/5)` -/
def P9964271745836139359.Spec : Prop :=
  ∀ n, P9964271745836139359.a n = A034115 (n + 1)

theorem P9964271745836139359.correct : P9964271745836139359.Spec := by
  intro n
  simp only [A034115, Nat.add_sub_cancel]

end A034115

/-! ## A034115.P7829293689606694634

`A020703(A034107(n+3))`
-/

namespace A034115.P7829293689606694634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A034107 (n + 3)).toNat

end

end A034115.P7829293689606694634

namespace A034115

/-- `A020703(A034107(n+3))` -/
def P7829293689606694634.Spec : Prop :=
  ∀ n, P7829293689606694634.a n = A034115 (n + 1)

end A034115

/-!
# A034116: Fractional part of cube root of a(n) starts with digit 0 (cubes excluded).

The programs for A034116, the canonical program `A034116.P10121614997286246648` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034116 has offset 1).

The definition of A034116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034116.P10121614997286246648

`eq[A010057(n), A023962(A028310(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034116

/-- `eq[A010057(n), A023962(A028310(n))]` -/
def P10121614997286246648.Spec : Prop :=
  ∀ n, (P10121614997286246648.a n : ℤ) = A034116 (n + 1)

theorem P10121614997286246648.correct : P10121614997286246648.Spec := by
  intro n
  simp only [A034116, Nat.add_sub_cancel]

end A034116

/-! ## A034116.P16968558608970586712

`eq[A010057(n), A023962(A010057(n)+n)]`
-/

namespace A034116.P16968558608970586712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A010057 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034116.P16968558608970586712

namespace A034116

/-- `eq[A010057(n), A023962(A010057(n)+n)]` -/
def P16968558608970586712.Spec : Prop :=
  ∀ n, (P16968558608970586712.a n : ℤ) = A034116 (n + 1)

end A034116

/-! ## A034116.P12983836551061154408

`record[A356233(2*n+1)+A100499(2*(n+1))]`
-/

namespace A034116.P12983836551061154408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (2 * n + 1) + A100499 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034116.P12983836551061154408

namespace A034116

/-- `record[A356233(2*n+1)+A100499(2*(n+1))]` -/
def P12983836551061154408.Spec : Prop :=
  ∀ n, P12983836551061154408.a n = A034116 (n + 1)

end A034116

/-!
# A034117: Fractional part of cube root of a(n) starts with digit 1.

The programs for A034117, the canonical program `A034117.P5906547258211583866` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034117 has offset 1).

The definition of A034117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034117.P5906547258211583866

`eq[1, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034117

/-- `eq[1, A023962(n+1)]+1` -/
def P5906547258211583866.Spec : Prop :=
  ∀ n, (P5906547258211583866.a n : ℤ) = A034117 (n + 1)

theorem P5906547258211583866.correct : P5906547258211583866.Spec := by
  intro n
  simp only [A034117, Nat.add_sub_cancel]

end A034117

/-! ## A034117.P4493758909999477678

`eq[1, A023962(A028310(n))]`
-/

namespace A034117.P4493758909999477678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P4493758909999477678

namespace A034117

/-- `eq[1, A023962(A028310(n))]` -/
def P4493758909999477678.Spec : Prop :=
  ∀ n, (P4493758909999477678.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P5923391667240459800

`A020725(eq[1, A023962(n+1)])`
-/

namespace A034117.P5923391667240459800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034117.P5923391667240459800

namespace A034117

/-- `A020725(eq[1, A023962(n+1)])` -/
def P5923391667240459800.Spec : Prop :=
  ∀ n, P5923391667240459800.a n = A034117 (n + 1)

end A034117

/-! ## A034117.P6211835613055461295

`eq[1, A023962(A000007(n)+n)]`
-/

namespace A034117.P6211835613055461295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P6211835613055461295

namespace A034117

/-- `eq[1, A023962(A000007(n)+n)]` -/
def P6211835613055461295.Spec : Prop :=
  ∀ n, (P6211835613055461295.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P4125797945261463434

`eq[1, A023962(A000038(n)+n)]`
-/

namespace A034117.P4125797945261463434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P4125797945261463434

namespace A034117

/-- `eq[1, A023962(A000038(n)+n)]` -/
def P4125797945261463434.Spec : Prop :=
  ∀ n, (P4125797945261463434.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P11604998938775352379

`eq[1, A023962(A010057(n)+n)]`
-/

namespace A034117.P11604998938775352379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A010057 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P11604998938775352379

namespace A034117

/-- `eq[1, A023962(A010057(n)+n)]` -/
def P11604998938775352379.Spec : Prop :=
  ∀ n, (P11604998938775352379.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P9070802940903091469

`eq[1, A023962(A036987(n)+n)]`
-/

namespace A034117.P9070802940903091469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P9070802940903091469

namespace A034117

/-- `eq[1, A023962(A036987(n)+n)]` -/
def P9070802940903091469.Spec : Prop :=
  ∀ n, (P9070802940903091469.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P10727864158661017900

`eq[1, A023962(xor(n, A000007(n)))]`
-/

namespace A034117.P10727864158661017900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P10727864158661017900

namespace A034117

/-- `eq[1, A023962(xor(n, A000007(n)))]` -/
def P10727864158661017900.Spec : Prop :=
  ∀ n, (P10727864158661017900.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P2192835959155209393

`eq[1, A023962(A065033(2*n))]`
-/

namespace A034117.P2192835959155209393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P2192835959155209393

namespace A034117

/-- `eq[1, A023962(A065033(2*n))]` -/
def P2192835959155209393.Spec : Prop :=
  ∀ n, (P2192835959155209393.a n : ℤ) = A034117 (n + 1)

end A034117

/-! ## A034117.P410729105245023486

`eq[1, A023962(A123108(2*n))]`
-/

namespace A034117.P410729105245023486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034117.P410729105245023486

namespace A034117

/-- `eq[1, A023962(A123108(2*n))]` -/
def P410729105245023486.Spec : Prop :=
  ∀ n, (P410729105245023486.a n : ℤ) = A034117 (n + 1)

end A034117

/-!
# A034118: Fractional part of cube root of a(n) starts with digit 2.

The programs for A034118, the canonical program `A034118.P6320064680366215771` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034118 has offset 1).

The definition of A034118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034118.P6320064680366215771

`eq[2, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034118

/-- `eq[2, A023962(n+1)]+1` -/
def P6320064680366215771.Spec : Prop :=
  ∀ n, (P6320064680366215771.a n : ℤ) = A034118 (n + 1)

theorem P6320064680366215771.correct : P6320064680366215771.Spec := by
  intro n
  simp only [A034118, Nat.add_sub_cancel]

end A034118

/-! ## A034118.P8203007514719952213

`eq[2, A023962(A028310(n))]`
-/

namespace A034118.P8203007514719952213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034118.P8203007514719952213

namespace A034118

/-- `eq[2, A023962(A028310(n))]` -/
def P8203007514719952213.Spec : Prop :=
  ∀ n, (P8203007514719952213.a n : ℤ) = A034118 (n + 1)

end A034118

/-! ## A034118.P15326759347206606996

`A020725(eq[2, A023962(n+1)])`
-/

namespace A034118.P15326759347206606996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034118.P15326759347206606996

namespace A034118

/-- `A020725(eq[2, A023962(n+1)])` -/
def P15326759347206606996.Spec : Prop :=
  ∀ n, P15326759347206606996.a n = A034118 (n + 1)

end A034118

/-! ## A034118.P2255716539798004964

`eq[2, A023962(A000007(n)+n)]`
-/

namespace A034118.P2255716539798004964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034118.P2255716539798004964

namespace A034118

/-- `eq[2, A023962(A000007(n)+n)]` -/
def P2255716539798004964.Spec : Prop :=
  ∀ n, (P2255716539798004964.a n : ℤ) = A034118 (n + 1)

end A034118

/-! ## A034118.P6327325819297412094

`eq[2, A023962(xor(n, A000007(n)))]`
-/

namespace A034118.P6327325819297412094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034118.P6327325819297412094

namespace A034118

/-- `eq[2, A023962(xor(n, A000007(n)))]` -/
def P6327325819297412094.Spec : Prop :=
  ∀ n, (P6327325819297412094.a n : ℤ) = A034118 (n + 1)

end A034118

/-! ## A034118.P12031066189970932869

`eq[2, A023962(A065033(2*n))]`
-/

namespace A034118.P12031066189970932869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034118.P12031066189970932869

namespace A034118

/-- `eq[2, A023962(A065033(2*n))]` -/
def P12031066189970932869.Spec : Prop :=
  ∀ n, (P12031066189970932869.a n : ℤ) = A034118 (n + 1)

end A034118

/-! ## A034118.P3905370191915301576

`eq[2, A023962(A123108(2*n))]`
-/

namespace A034118.P3905370191915301576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034118.P3905370191915301576

namespace A034118

/-- `eq[2, A023962(A123108(2*n))]` -/
def P3905370191915301576.Spec : Prop :=
  ∀ n, (P3905370191915301576.a n : ℤ) = A034118 (n + 1)

end A034118

/-!
# A034119: Fractional part of cube root of a(n) starts with digit 3.

The programs for A034119, the canonical program `A034119.P16253224531342429159` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034119 has offset 1).

The definition of A034119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1043 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034119.P16253224531342429159

`eq[3, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034119

/-- `eq[3, A023962(n+1)]+1` -/
def P16253224531342429159.Spec : Prop :=
  ∀ n, (P16253224531342429159.a n : ℤ) = A034119 (n + 1)

theorem P16253224531342429159.correct : P16253224531342429159.Spec := by
  intro n
  simp only [A034119, Nat.add_sub_cancel]

end A034119

/-! ## A034119.P18100371693131364020

`eq[3, A023962(A028310(n))]`
-/

namespace A034119.P18100371693131364020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034119.P18100371693131364020

namespace A034119

/-- `eq[3, A023962(A028310(n))]` -/
def P18100371693131364020.Spec : Prop :=
  ∀ n, (P18100371693131364020.a n : ℤ) = A034119 (n + 1)

end A034119

/-! ## A034119.P17449352622005163110

`eq[3, A023962(A000007(n)+n)]`
-/

namespace A034119.P17449352622005163110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034119.P17449352622005163110

namespace A034119

/-- `eq[3, A023962(A000007(n)+n)]` -/
def P17449352622005163110.Spec : Prop :=
  ∀ n, (P17449352622005163110.a n : ℤ) = A034119 (n + 1)

end A034119

/-! ## A034119.P10698344914439844881

`eq[3, A023962(A036987(n)+n)]`
-/

namespace A034119.P10698344914439844881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034119.P10698344914439844881

namespace A034119

/-- `eq[3, A023962(A036987(n)+n)]` -/
def P10698344914439844881.Spec : Prop :=
  ∀ n, (P10698344914439844881.a n : ℤ) = A034119 (n + 1)

end A034119

/-! ## A034119.P9775715965176272524

`eq[3, A023962(A065033(2*n))]`
-/

namespace A034119.P9775715965176272524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034119.P9775715965176272524

namespace A034119

/-- `eq[3, A023962(A065033(2*n))]` -/
def P9775715965176272524.Spec : Prop :=
  ∀ n, (P9775715965176272524.a n : ℤ) = A034119 (n + 1)

end A034119

/-! ## A034119.P6293636765093053724

`eq[3, A023962(A233583(n+1))]`
-/

namespace A034119.P6293636765093053724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034119.P6293636765093053724

namespace A034119

/-- `eq[3, A023962(A233583(n+1))]` -/
def P6293636765093053724.Spec : Prop :=
  ∀ n, (P6293636765093053724.a n : ℤ) = A034119 (n + 1)

end A034119

/-!
# A034120: Fractional part of cube root of a(n) starts with digit 4.

The programs for A034120, the canonical program `A034120.P11182899447975063192` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034120 has offset 1).

The definition of A034120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034120.P11182899447975063192

`eq[4, A023962(n+2)]+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034120

/-- `eq[4, A023962(n+2)]+2` -/
def P11182899447975063192.Spec : Prop :=
  ∀ n, (P11182899447975063192.a n : ℤ) = A034120 (n + 1)

theorem P11182899447975063192.correct : P11182899447975063192.Spec := by
  intro n
  simp only [A034120, Nat.add_sub_cancel]

end A034120

/-! ## A034120.P675348000071237581

`eq[4, A023962(A028310(n))]`
-/

namespace A034120.P675348000071237581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034120.P675348000071237581

namespace A034120

/-- `eq[4, A023962(A028310(n))]` -/
def P675348000071237581.Spec : Prop :=
  ∀ n, (P675348000071237581.a n : ℤ) = A034120 (n + 1)

end A034120

/-! ## A034120.P1636978883676490526

`A020725(eq[4, A023962(n+1)])`
-/

namespace A034120.P1636978883676490526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034120.P1636978883676490526

namespace A034120

/-- `A020725(eq[4, A023962(n+1)])` -/
def P1636978883676490526.Spec : Prop :=
  ∀ n, P1636978883676490526.a n = A034120 (n + 1)

end A034120

/-! ## A034120.P18272800890260265688

`A153152(eq[4, A023962(n+1)])`
-/

namespace A034120.P18272800890260265688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034120.P18272800890260265688

namespace A034120

/-- `A153152(eq[4, A023962(n+1)])` -/
def P18272800890260265688.Spec : Prop :=
  ∀ n, P18272800890260265688.a n = A034120 (n + 1)

end A034120

/-! ## A034120.P4530460775511557602

`eq[4, A023962(A000007(n)+n)]`
-/

namespace A034120.P4530460775511557602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034120.P4530460775511557602

namespace A034120

/-- `eq[4, A023962(A000007(n)+n)]` -/
def P4530460775511557602.Spec : Prop :=
  ∀ n, (P4530460775511557602.a n : ℤ) = A034120 (n + 1)

end A034120

/-! ## A034120.P15345337919410272124

`eq[4, A023962(xor(n, A000007(n)))]`
-/

namespace A034120.P15345337919410272124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034120.P15345337919410272124

namespace A034120

/-- `eq[4, A023962(xor(n, A000007(n)))]` -/
def P15345337919410272124.Spec : Prop :=
  ∀ n, (P15345337919410272124.a n : ℤ) = A034120 (n + 1)

end A034120

/-! ## A034120.P75145930174313250

`eq[4, A023962(A233583(n+1))]`
-/

namespace A034120.P75145930174313250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034120.P75145930174313250

namespace A034120

/-- `eq[4, A023962(A233583(n+1))]` -/
def P75145930174313250.Spec : Prop :=
  ∀ n, (P75145930174313250.a n : ℤ) = A034120 (n + 1)

end A034120

/-!
# A034121: Fractional part of cube root of a(n) starts with digit 5.

The programs for A034121, the canonical program `A034121.P11511500395363921303` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034121 has offset 1).

The definition of A034121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034121.P11511500395363921303

`eq[5, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034121

/-- `eq[5, A023962(n+1)]+1` -/
def P11511500395363921303.Spec : Prop :=
  ∀ n, (P11511500395363921303.a n : ℤ) = A034121 (n + 1)

theorem P11511500395363921303.correct : P11511500395363921303.Spec := by
  intro n
  simp only [A034121, Nat.add_sub_cancel]

end A034121

/-! ## A034121.P1557201541710461601

`eq[5, A023962(A000038(n)+n)]`
-/

namespace A034121.P1557201541710461601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034121.P1557201541710461601

namespace A034121

/-- `eq[5, A023962(A000038(n)+n)]` -/
def P1557201541710461601.Spec : Prop :=
  ∀ n, (P1557201541710461601.a n : ℤ) = A034121 (n + 1)

end A034121

/-! ## A034121.P3348830954139711312

`eq[5, A023962(A000007(n)+n)]`
-/

namespace A034121.P3348830954139711312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034121.P3348830954139711312

namespace A034121

/-- `eq[5, A023962(A000007(n)+n)]` -/
def P3348830954139711312.Spec : Prop :=
  ∀ n, (P3348830954139711312.a n : ℤ) = A034121 (n + 1)

end A034121

/-! ## A034121.P13275502805938119856

`eq[5, A023962(xor(n, A000007(n)))]`
-/

namespace A034121.P13275502805938119856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034121.P13275502805938119856

namespace A034121

/-- `eq[5, A023962(xor(n, A000007(n)))]` -/
def P13275502805938119856.Spec : Prop :=
  ∀ n, (P13275502805938119856.a n : ℤ) = A034121 (n + 1)

end A034121

/-! ## A034121.P16664885978933314674

`eq[5, A023962(A065033(2*n))]`
-/

namespace A034121.P16664885978933314674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034121.P16664885978933314674

namespace A034121

/-- `eq[5, A023962(A065033(2*n))]` -/
def P16664885978933314674.Spec : Prop :=
  ∀ n, (P16664885978933314674.a n : ℤ) = A034121 (n + 1)

end A034121

/-! ## A034121.P16931231906821384332

`eq[5, A023962(A233583(n+1))]`
-/

namespace A034121.P16931231906821384332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034121.P16931231906821384332

namespace A034121

/-- `eq[5, A023962(A233583(n+1))]` -/
def P16931231906821384332.Spec : Prop :=
  ∀ n, (P16931231906821384332.a n : ℤ) = A034121 (n + 1)

end A034121

/-!
# A034122: Fractional part of cube root of a(n) starts with digit 6.

The programs for A034122, the canonical program `A034122.P303215718965264971` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034122 has offset 1).

The definition of A034122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034122.P303215718965264971

`eq[6, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034122

/-- `eq[6, A023962(n+1)]+1` -/
def P303215718965264971.Spec : Prop :=
  ∀ n, (P303215718965264971.a n : ℤ) = A034122 (n + 1)

theorem P303215718965264971.correct : P303215718965264971.Spec := by
  intro n
  simp only [A034122, Nat.add_sub_cancel]

end A034122

/-! ## A034122.P17116128680685312630

`eq[6, A023962(A000007(n)+n)]`
-/

namespace A034122.P17116128680685312630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034122.P17116128680685312630

namespace A034122

/-- `eq[6, A023962(A000007(n)+n)]` -/
def P17116128680685312630.Spec : Prop :=
  ∀ n, (P17116128680685312630.a n : ℤ) = A034122 (n + 1)

end A034122

/-! ## A034122.P11052761701381995529

`eq[6, A023962(A036987(n)+n)]`
-/

namespace A034122.P11052761701381995529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034122.P11052761701381995529

namespace A034122

/-- `eq[6, A023962(A036987(n)+n)]` -/
def P11052761701381995529.Spec : Prop :=
  ∀ n, (P11052761701381995529.a n : ℤ) = A034122 (n + 1)

end A034122

/-! ## A034122.P13846341912056643052

`eq[6, A023962(xor(n, A000007(n)))]`
-/

namespace A034122.P13846341912056643052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034122.P13846341912056643052

namespace A034122

/-- `eq[6, A023962(xor(n, A000007(n)))]` -/
def P13846341912056643052.Spec : Prop :=
  ∀ n, (P13846341912056643052.a n : ℤ) = A034122 (n + 1)

end A034122

/-! ## A034122.P14689268217816768146

`eq[6, A023962(A065033(2*n))]`
-/

namespace A034122.P14689268217816768146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034122.P14689268217816768146

namespace A034122

/-- `eq[6, A023962(A065033(2*n))]` -/
def P14689268217816768146.Spec : Prop :=
  ∀ n, (P14689268217816768146.a n : ℤ) = A034122 (n + 1)

end A034122

/-! ## A034122.P11526794232591150804

`eq[6, A023962(A233583(n+1))]`
-/

namespace A034122.P11526794232591150804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034122.P11526794232591150804

namespace A034122

/-- `eq[6, A023962(A233583(n+1))]` -/
def P11526794232591150804.Spec : Prop :=
  ∀ n, (P11526794232591150804.a n : ℤ) = A034122 (n + 1)

end A034122

/-!
# A034123: Fractional part of cube root of a(n) starts with digit 7.

The programs for A034123, the canonical program `A034123.P4075099621232858078` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034123 has offset 1).

The definition of A034123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034123.P4075099621232858078

`1+eq[7, A023962(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034123

/-- `1+eq[7, A023962(n+1)]` -/
def P4075099621232858078.Spec : Prop :=
  ∀ n, (P4075099621232858078.a n : ℤ) = A034123 (n + 1)

theorem P4075099621232858078.correct : P4075099621232858078.Spec := by
  intro n
  simp only [A034123, Nat.add_sub_cancel]

end A034123

/-! ## A034123.P9042271357217990716

`A153152(eq[7, A023962(n+1)])`
-/

namespace A034123.P9042271357217990716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034123.P9042271357217990716

namespace A034123

/-- `A153152(eq[7, A023962(n+1)])` -/
def P9042271357217990716.Spec : Prop :=
  ∀ n, P9042271357217990716.a n = A034123 (n + 1)

end A034123

/-! ## A034123.P533282170607868852

`eq[7, A023962(A000007(n)+n)]`
-/

namespace A034123.P533282170607868852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P533282170607868852

namespace A034123

/-- `eq[7, A023962(A000007(n)+n)]` -/
def P533282170607868852.Spec : Prop :=
  ∀ n, (P533282170607868852.a n : ℤ) = A034123 (n + 1)

end A034123

/-! ## A034123.P1328001173731209279

`eq[7, A023962(A000038(n)+n)]`
-/

namespace A034123.P1328001173731209279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P1328001173731209279

namespace A034123

/-- `eq[7, A023962(A000038(n)+n)]` -/
def P1328001173731209279.Spec : Prop :=
  ∀ n, (P1328001173731209279.a n : ℤ) = A034123 (n + 1)

end A034123

/-! ## A034123.P11849328926811909798

`eq[7, A023962(A036987(n)+n)]`
-/

namespace A034123.P11849328926811909798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P11849328926811909798

namespace A034123

/-- `eq[7, A023962(A036987(n)+n)]` -/
def P11849328926811909798.Spec : Prop :=
  ∀ n, (P11849328926811909798.a n : ℤ) = A034123 (n + 1)

end A034123

/-! ## A034123.P6293148092121886577

`eq[7, A023962(xor(n, A000007(n)))]`
-/

namespace A034123.P6293148092121886577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P6293148092121886577

namespace A034123

/-- `eq[7, A023962(xor(n, A000007(n)))]` -/
def P6293148092121886577.Spec : Prop :=
  ∀ n, (P6293148092121886577.a n : ℤ) = A034123 (n + 1)

end A034123

/-! ## A034123.P7333481317637568249

`eq[7, A023962(A065033(2*n))]`
-/

namespace A034123.P7333481317637568249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P7333481317637568249

namespace A034123

/-- `eq[7, A023962(A065033(2*n))]` -/
def P7333481317637568249.Spec : Prop :=
  ∀ n, (P7333481317637568249.a n : ℤ) = A034123 (n + 1)

end A034123

/-! ## A034123.P15628578053553066428

`eq[7, A023962(A233583(n+1))]`
-/

namespace A034123.P15628578053553066428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P15628578053553066428

namespace A034123

/-- `eq[7, A023962(A233583(n+1))]` -/
def P15628578053553066428.Spec : Prop :=
  ∀ n, (P15628578053553066428.a n : ℤ) = A034123 (n + 1)

end A034123

/-!
# A034124: Numbers whose fractional part of the cube root starts with digit 8.

The programs for A034124, the canonical program `A034124.P8066930743423646155` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034124 has offset 1).

The definition of A034124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034124.P8066930743423646155

`eq[8, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034124

/-- `eq[8, A023962(n+1)]+1` -/
def P8066930743423646155.Spec : Prop :=
  ∀ n, (P8066930743423646155.a n : ℤ) = A034124 (n + 1)

theorem P8066930743423646155.correct : P8066930743423646155.Spec := by
  intro n
  simp only [A034124, Nat.add_sub_cancel]

end A034124

/-! ## A034124.P6840472018377120432

`A153152(eq[8, A023962(n+1)])`
-/

namespace A034124.P6840472018377120432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034124.P6840472018377120432

namespace A034124

/-- `A153152(eq[8, A023962(n+1)])` -/
def P6840472018377120432.Spec : Prop :=
  ∀ n, P6840472018377120432.a n = A034124 (n + 1)

end A034124

/-! ## A034124.P14303805972139284632

`eq[8, A023962(A000007(n)+n)]`
-/

namespace A034124.P14303805972139284632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034124.P14303805972139284632

namespace A034124

/-- `eq[8, A023962(A000007(n)+n)]` -/
def P14303805972139284632.Spec : Prop :=
  ∀ n, (P14303805972139284632.a n : ℤ) = A034124 (n + 1)

end A034124

/-! ## A034124.P11157808643547881916

`eq[8, A023962(xor(n, A000007(n)))]`
-/

namespace A034124.P11157808643547881916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034124.P11157808643547881916

namespace A034124

/-- `eq[8, A023962(xor(n, A000007(n)))]` -/
def P11157808643547881916.Spec : Prop :=
  ∀ n, (P11157808643547881916.a n : ℤ) = A034124 (n + 1)

end A034124

/-! ## A034124.P14324102878498776775

`eq[8, A023962(A060000(n+1))]`
-/

namespace A034124.P14324102878498776775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034124.P14324102878498776775

namespace A034124

/-- `eq[8, A023962(A060000(n+1))]` -/
def P14324102878498776775.Spec : Prop :=
  ∀ n, (P14324102878498776775.a n : ℤ) = A034124 (n + 1)

end A034124

/-! ## A034124.P15779639964082478337

`eq[2, A023962(A065033(2*n))-6]`
-/

namespace A034124.P15779639964082478337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat - 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034124.P15779639964082478337

namespace A034124

/-- `eq[2, A023962(A065033(2*n))-6]` -/
def P15779639964082478337.Spec : Prop :=
  ∀ n, (P15779639964082478337.a n : ℤ) = A034124 (n + 1)

end A034124

/-! ## A034124.P8584856075375672686

`eq[8, A023962(A233583(n+1))]`
-/

namespace A034124.P8584856075375672686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034124.P8584856075375672686

namespace A034124

/-- `eq[8, A023962(A233583(n+1))]` -/
def P8584856075375672686.Spec : Prop :=
  ∀ n, (P8584856075375672686.a n : ℤ) = A034124 (n + 1)

end A034124

/-!
# A034125: Decimal part of cube root of n starts with digit 9.

The programs for A034125, the canonical program `A034125.P3477155785435770857` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034125 has offset 1).

The definition of A034125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034125.P3477155785435770857

`eq[9, A023962(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034125

/-- `eq[9, A023962(n+1)]+1` -/
def P3477155785435770857.Spec : Prop :=
  ∀ n, (P3477155785435770857.a n : ℤ) = A034125 (n + 1)

theorem P3477155785435770857.correct : P3477155785435770857.Spec := by
  intro n
  simp only [A034125, Nat.add_sub_cancel]

end A034125

/-! ## A034125.P5941626323564604601

`A153152(eq[9, A023962(n+1)])`
-/

namespace A034125.P5941626323564604601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034125.P5941626323564604601

namespace A034125

/-- `A153152(eq[9, A023962(n+1)])` -/
def P5941626323564604601.Spec : Prop :=
  ∀ n, P5941626323564604601.a n = A034125 (n + 1)

end A034125

/-! ## A034125.P3832256280383550829

`eq[9, A023962(A000007(n)+n)]`
-/

namespace A034125.P3832256280383550829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034125.P3832256280383550829

namespace A034125

/-- `eq[9, A023962(A000007(n)+n)]` -/
def P3832256280383550829.Spec : Prop :=
  ∀ n, (P3832256280383550829.a n : ℤ) = A034125 (n + 1)

end A034125

/-! ## A034125.P582924633527093847

`eq[9, A023962(xor(n, A000007(n)))]`
-/

namespace A034125.P582924633527093847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034125.P582924633527093847

namespace A034125

/-- `eq[9, A023962(xor(n, A000007(n)))]` -/
def P582924633527093847.Spec : Prop :=
  ∀ n, (P582924633527093847.a n : ℤ) = A034125 (n + 1)

end A034125

/-! ## A034125.P9122573034807889867

`eq[9, A023962(A060000(n+1))]`
-/

namespace A034125.P9122573034807889867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034125.P9122573034807889867

namespace A034125

/-- `eq[9, A023962(A060000(n+1))]` -/
def P9122573034807889867.Spec : Prop :=
  ∀ n, (P9122573034807889867.a n : ℤ) = A034125 (n + 1)

end A034125

/-! ## A034125.P9651869087780723769

`eq[9, A023962(A065033(2*n))]`
-/

namespace A034125.P9651869087780723769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034125.P9651869087780723769

namespace A034125

/-- `eq[9, A023962(A065033(2*n))]` -/
def P9651869087780723769.Spec : Prop :=
  ∀ n, (P9651869087780723769.a n : ℤ) = A034125 (n + 1)

end A034125

/-! ## A034125.P5227871350105261398

`eq[9, A023962(A233583(n+1))]`
-/

namespace A034125.P5227871350105261398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034125.P5227871350105261398

namespace A034125

/-- `eq[9, A023962(A233583(n+1))]` -/
def P5227871350105261398.Spec : Prop :=
  ∀ n, (P5227871350105261398.a n : ℤ) = A034125 (n + 1)

end A034125

/-!
# A034126: Decimal part of cube root of a(n) starts with 0: first term of runs (cubes excluded).

The programs for A034126, the canonical program `A034126.P5696431555187497959` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034126 has offset 1).

The definition of A034126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034126.P5696431555187497959

`1+(2+n)^3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034126

/-- `1+(2+n)^3` -/
def P5696431555187497959.Spec : Prop :=
  ∀ n, (P5696431555187497959.a n : ℤ) = A034126 (n + 1)

theorem P5696431555187497959.correct : P5696431555187497959.Spec := by
  intro n
  simp only [A034126, Nat.add_sub_cancel]

end A034126

/-! ## A034126.P16083919811633765428

`Δ[C(n+2, 2)²+n]`
-/

namespace A034126.P16083919811633765428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034126.P16083919811633765428

namespace A034126

/-- `Δ[C(n+2, 2)²+n]` -/
def P16083919811633765428.Spec : Prop :=
  ∀ n, P16083919811633765428.a n = A034126 (n + 1)

theorem P16083919811633765428.correct : P16083919811633765428.Spec := by
  intro n
  simp only [A034126, Nat.add_sub_cancel, A034126.P16083919811633765428.f1, A034126.P16083919811633765428.a, A034126.P5696431555187497959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034126

/-! ## A034126.P8905170966581839959

`ceil(2*cosh(3*log(n+2)))`
-/

namespace A034126.P8905170966581839959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.cosh (3 * Real.log (n + 2 : ℝ))⌉

end

end A034126.P8905170966581839959

namespace A034126

/-- `ceil(2*cosh(3*log(n+2)))` -/
def P8905170966581839959.Spec : Prop :=
  ∀ n, P8905170966581839959.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P7882363172975021046

`ceil((n+2)/acot((n+2)²))`
-/

namespace A034126.P7882363172975021046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ)⌉

end

end A034126.P7882363172975021046

namespace A034126

/-- `ceil((n+2)/acot((n+2)²))` -/
def P7882363172975021046.Spec : Prop :=
  ∀ n, P7882363172975021046.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P15409072741253497674

`floor((n+3)/Δ[atan(n+1)])`
-/

namespace A034126.P15409072741253497674
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A034126.P15409072741253497674

namespace A034126

/-- `floor((n+3)/Δ[atan(n+1)])` -/
def P15409072741253497674.Spec : Prop :=
  ∀ n, P15409072741253497674.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P4603904104280174334

`round((n+3)/Δ[atan(n+1)])`
-/

namespace A034126.P4603904104280174334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / (f1 (n + 1) - f1 n))

end

end A034126.P4603904104280174334

namespace A034126

/-- `round((n+3)/Δ[atan(n+1)])` -/
def P4603904104280174334.Spec : Prop :=
  ∀ n, P4603904104280174334.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P11725377705486880053

`Δ[(∑[n]+1)*C(n+3, 2)]`
-/

namespace A034126.P11725377705486880053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A034126.P11725377705486880053

namespace A034126

/-- `Δ[(∑[n]+1)*C(n+3, 2)]` -/
def P11725377705486880053.Spec : Prop :=
  ∀ n, P11725377705486880053.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P8207622817033415197

`(n+3)*or(1, ∑[2*(n+1)])`
-/

namespace A034126.P8207622817033415197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034126.P8207622817033415197

namespace A034126

/-- `(n+3)*or(1, ∑[2*(n+1)])` -/
def P8207622817033415197.Spec : Prop :=
  ∀ n, (P8207622817033415197.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P14440935167530902878

`(n+3)*xor(1, ∑[2*(n+1)])`
-/

namespace A034126.P14440935167530902878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034126.P14440935167530902878

namespace A034126

/-- `(n+3)*xor(1, ∑[2*(n+1)])` -/
def P14440935167530902878.Spec : Prop :=
  ∀ n, (P14440935167530902878.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P16563808103926023838

`(or(2, (n+1)²)+n)*(n+3)`
-/

namespace A034126.P16563808103926023838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((n + 1) ^ 2) + n) * (n + 3)

end

end A034126.P16563808103926023838

namespace A034126

/-- `(or(2, (n+1)²)+n)*(n+3)` -/
def P16563808103926023838.Spec : Prop :=
  ∀ n, (P16563808103926023838.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P6433598170421203686

`(xor(2, (n+1)²)+n)*(n+3)`
-/

namespace A034126.P6433598170421203686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((n + 1) ^ 2) + n) * (n + 3)

end

end A034126.P6433598170421203686

namespace A034126

/-- `(xor(2, (n+1)²)+n)*(n+3)` -/
def P6433598170421203686.Spec : Prop :=
  ∀ n, (P6433598170421203686.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P3548434144405120398

`(n+3)*record[n*(n-3)+3]`
-/

namespace A034126.P3548434144405120398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034126.P3548434144405120398

namespace A034126

/-- `(n+3)*record[n*(n-3)+3]` -/
def P3548434144405120398.Spec : Prop :=
  ∀ n, P3548434144405120398.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P3424028693402691588

`(n+3)*(∑[n+3]+C(n, 2))`
-/

namespace A034126.P3424028693402691588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2)

end

end A034126.P3424028693402691588

namespace A034126

/-- `(n+3)*(∑[n+3]+C(n, 2))` -/
def P3424028693402691588.Spec : Prop :=
  ∀ n, (P3424028693402691588.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P14609572656691169055

`ceil(or(2, (n+2)²²)/(n+2))`
-/

namespace A034126.P14609572656691169055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (((n + 2) ^ 2) ^ 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A034126.P14609572656691169055

namespace A034126

/-- `ceil(or(2, (n+2)²²)/(n+2))` -/
def P14609572656691169055.Spec : Prop :=
  ∀ n, P14609572656691169055.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P6087897926374527765

`ceil(xor(2, (n+2)²²)/(n+2))`
-/

namespace A034126.P6087897926374527765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (((n + 2) ^ 2) ^ 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A034126.P6087897926374527765

namespace A034126

/-- `ceil(xor(2, (n+2)²²)/(n+2))` -/
def P6087897926374527765.Spec : Prop :=
  ∀ n, P6087897926374527765.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P7234221888374633838

`(2*C(n+2, 2)+1)*(n+3)`
-/

namespace A034126.P7234221888374633838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 2 + 1) * (n + 3)

end

end A034126.P7234221888374633838

namespace A034126

/-- `(2*C(n+2, 2)+1)*(n+3)` -/
def P7234221888374633838.Spec : Prop :=
  ∀ n, (P7234221888374633838.a n : ℤ) = A034126 (n + 1)

theorem P7234221888374633838.correct : P7234221888374633838.Spec := by
  intro n
  simp only [A034126, Nat.add_sub_cancel, A034126.P7234221888374633838.a, A034126.P5696431555187497959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034126

/-! ## A034126.P13076191008144017926

`(n+3)*∑[a(n-1)+2]` with `a(0)=3, a(1)=4`
-/

namespace A034126.P13076191008144017926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034126.P13076191008144017926

namespace A034126

/-- `(n+3)*∑[a(n-1)+2]` -/
def P13076191008144017926.Spec : Prop :=
  ∀ n, (P13076191008144017926.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P1739106664055588692

`(lcm(n+1, n+2)+1)*(n+3)`
-/

namespace A034126.P1739106664055588692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) + 1) * (n + 3)

end

end A034126.P1739106664055588692

namespace A034126

/-- `(lcm(n+1, n+2)+1)*(n+3)` -/
def P1739106664055588692.Spec : Prop :=
  ∀ n, (P1739106664055588692.a n : ℤ) = A034126 (n + 1)

end A034126

/-! ## A034126.P12320358849785703306

`(n+3)*ceil((n+1)/acot(n+2))`
-/

namespace A034126.P12320358849785703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ)⌉

end

end A034126.P12320358849785703306

namespace A034126

/-- `(n+3)*ceil((n+1)/acot(n+2))` -/
def P12320358849785703306.Spec : Prop :=
  ∀ n, P12320358849785703306.a n = A034126 (n + 1)

end A034126

/-! ## A034126.P10268435657140105258

`(record[(n-2)²]²+n+2)/(n+2)`
-/

namespace A034126.P10268435657140105258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 + (n + 2 : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A034126.P10268435657140105258

namespace A034126

/-- `(record[(n-2)²]²+n+2)/(n+2)` -/
def P10268435657140105258.Spec : Prop :=
  ∀ n, P10268435657140105258.a n = (A034126 (n + 1) : ℚ)

end A034126

/-!
# A034127: Decimal part of cube root of a(n) starts with 1: first term of runs.

The programs for A034127, the canonical program `A034127.P17746853730717763161` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034127 has offset 1).

The definition of A034127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034127.P17746853730717763161

`ceil((21/10+n)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034127

/-- `ceil((21/10+n)^3)` -/
def P17746853730717763161.Spec : Prop :=
  ∀ n, P17746853730717763161.a n = A034127 (n + 1)

theorem P17746853730717763161.correct : P17746853730717763161.Spec := by
  intro n
  simp only [A034127, Nat.add_sub_cancel]

end A034127

/-!
# A034128: Decimal part of cube root of a(n) starts with 2: first term of runs.

The programs for A034128, the canonical program `A034128.P4607021986100968026` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034128 has offset 1).

The definition of A034128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034128.P4607021986100968026

`ceil((6/5+n)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034128

/-- `ceil((6/5+n)^3)` -/
def P4607021986100968026.Spec : Prop :=
  ∀ n, P4607021986100968026.a n = A034128 (n + 1)

theorem P4607021986100968026.correct : P4607021986100968026.Spec := by
  intro n
  simp only [A034128, Nat.add_sub_cancel]

end A034128

/-! ## A034128.P8444201722698312060

`floor((6/5+n)^3)+A007318(∑[n])`
-/

namespace A034128.P8444201722698312060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ 3⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034128.P8444201722698312060

namespace A034128

/-- `floor((6/5+n)^3)+A007318(∑[n])` -/
def P8444201722698312060.Spec : Prop :=
  ∀ n, P8444201722698312060.a n = A034128 (n + 1)

end A034128

/-! ## A034128.P8056379953802744999

`floor((6/5+n)^3)+∏[A087960(n)]²`
-/

namespace A034128.P8056379953802744999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ 3⌋ + (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A034128.P8056379953802744999

namespace A034128

/-- `floor((6/5+n)^3)+∏[A087960(n)]²` -/
def P8056379953802744999.Spec : Prop :=
  ∀ n, P8056379953802744999.a n = A034128 (n + 1)

end A034128

/-! ## A034128.P11371776549248509275

`floor((6/5+n)^3-A008683(A323504(n)))`
-/

namespace A034128.P11371776549248509275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ 3 - (A008683 (A323504 n).toNat : ℚ)⌋

end

end A034128.P11371776549248509275

namespace A034128

/-- `floor((6/5+n)^3-A008683(A323504(n)))` -/
def P11371776549248509275.Spec : Prop :=
  ∀ n, P11371776549248509275.a n = A034128 (n + 1)

end A034128

/-!
# A034129: Decimal part of cube root of a(n) starts with 3: first term of runs.

The programs for A034129, the canonical program `A034129.P2846270783544421952` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034129 has offset 1).

The definition of A034129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034129.P2846270783544421952

`ceil((23/10+n)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034129

/-- `ceil((23/10+n)^3)` -/
def P2846270783544421952.Spec : Prop :=
  ∀ n, P2846270783544421952.a n = A034129 (n + 1)

theorem P2846270783544421952.correct : P2846270783544421952.Spec := by
  intro n
  simp only [A034129, Nat.add_sub_cancel]

end A034129

/-! ## A034129.P9337687655556188471

`floor((23/10+n)^3-A153881(n+2))`
-/

namespace A034129.P9337687655556188471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((23 : ℚ) / 10 + (n : ℚ)) ^ 3 - (A153881 (n + 2) : ℚ)⌋

end

end A034129.P9337687655556188471

namespace A034129

/-- `floor((23/10+n)^3-A153881(n+2))` -/
def P9337687655556188471.Spec : Prop :=
  ∀ n, P9337687655556188471.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P13944127564858829912

`floor(A014963(12*n+6)+(23/10+n)^3)`
-/

namespace A034129.P13944127564858829912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (12 * n + 6) : ℚ) + ((23 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034129.P13944127564858829912

namespace A034129

/-- `floor(A014963(12*n+6)+(23/10+n)^3)` -/
def P13944127564858829912.Spec : Prop :=
  ∀ n, P13944127564858829912.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P8433785304960051008

`floor((23/10+n)^3-or(-1, A001221(n+1)))`
-/

namespace A034129.P8433785304960051008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((23 : ℚ) / 10 + (n : ℚ)) ^ 3 - (Int.lor (-1) (A001221 (n + 1)) : ℚ)⌋

end

end A034129.P8433785304960051008

namespace A034129

/-- `floor((23/10+n)^3-or(-1, A001221(n+1)))` -/
def P8433785304960051008.Spec : Prop :=
  ∀ n, P8433785304960051008.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P2293222783407026286

`floor(A238392(A000096(n))+(23/10+n)^3)`
-/

namespace A034129.P2293222783407026286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238392 (A000096 n).toNat : ℚ) + ((23 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034129.P2293222783407026286

namespace A034129

/-- `floor(A238392(A000096(n))+(23/10+n)^3)` -/
def P2293222783407026286.Spec : Prop :=
  ∀ n, P2293222783407026286.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P17103365321015784238

`floor(A003557(A014963(n+2))+(23/10+n)^3)`
-/

namespace A034129.P17103365321015784238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003557 (A014963 (n + 2)).toNat : ℚ) + ((23 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034129.P17103365321015784238

namespace A034129

/-- `floor(A003557(A014963(n+2))+(23/10+n)^3)` -/
def P17103365321015784238.Spec : Prop :=
  ∀ n, P17103365321015784238.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P3139223166088474443

`floor((23/10+n)^3-A008683(A047934(n+1)))`
-/

namespace A034129.P3139223166088474443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((23 : ℚ) / 10 + (n : ℚ)) ^ 3 - (A008683 (A047934 (n + 1)).toNat : ℚ)⌋

end

end A034129.P3139223166088474443

namespace A034129

/-- `floor((23/10+n)^3-A008683(A047934(n+1)))` -/
def P3139223166088474443.Spec : Prop :=
  ∀ n, P3139223166088474443.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P13664625205716437180

`floor((23/10+n)^3-A117568(A046691(n+3)))`
-/

namespace A034129.P13664625205716437180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((23 : ℚ) / 10 + (n : ℚ)) ^ 3 - (A117568 (A046691 (n + 3)).toNat : ℚ)⌋

end

end A034129.P13664625205716437180

namespace A034129

/-- `floor((23/10+n)^3-A117568(A046691(n+3)))` -/
def P13664625205716437180.Spec : Prop :=
  ∀ n, P13664625205716437180.a n = A034129 (n + 1)

end A034129

/-! ## A034129.P1715941399646724501

`floor(A001222(A341634(n))+(23/10+n)^3)`
-/

namespace A034129.P1715941399646724501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A341634 n).toNat : ℚ) + ((23 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034129.P1715941399646724501

namespace A034129

/-- `floor(A001222(A341634(n))+(23/10+n)^3)` -/
def P1715941399646724501.Spec : Prop :=
  ∀ n, P1715941399646724501.a n = A034129 (n + 1)

end A034129

/-!
# A034130: Decimal part of cube root of a(n) starts with 4: first term of runs.

The programs for A034130, the canonical program `A034130.P12060966931585883767` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034130 has offset 1).

The definition of A034130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034130.P12060966931585883767

`ceil((7/5+n)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034130

/-- `ceil((7/5+n)^3)` -/
def P12060966931585883767.Spec : Prop :=
  ∀ n, P12060966931585883767.a n = A034130 (n + 1)

theorem P12060966931585883767.correct : P12060966931585883767.Spec := by
  intro n
  simp only [A034130, Nat.add_sub_cancel]

end A034130

/-! ## A034130.P12157592856065400525

`floor((7/5+n)^3)+(A000041(n)%2)!`
-/

namespace A034130.P12157592856065400525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5 + (n : ℚ)) ^ 3⌋ + (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A034130.P12157592856065400525

namespace A034130

/-- `floor((7/5+n)^3)+(A000041(n)%2)!` -/
def P12157592856065400525.Spec : Prop :=
  ∀ n, P12157592856065400525.a n = A034130 (n + 1)

end A034130

/-! ## A034130.P451771035832805292

`floor(A014963(12*n+6)+(7/5+n)^3)`
-/

namespace A034130.P451771035832805292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (12 * n + 6) : ℚ) + ((7 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034130.P451771035832805292

namespace A034130

/-- `floor(A014963(12*n+6)+(7/5+n)^3)` -/
def P451771035832805292.Spec : Prop :=
  ∀ n, P451771035832805292.a n = A034130 (n + 1)

end A034130

/-! ## A034130.P5056086680249990788

`floor(A057427(A067049(n))+(7/5+n)^3)`
-/

namespace A034130.P5056086680249990788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (A067049 n).toNat : ℚ) + ((7 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034130.P5056086680249990788

namespace A034130

/-- `floor(A057427(A067049(n))+(7/5+n)^3)` -/
def P5056086680249990788.Spec : Prop :=
  ∀ n, P5056086680249990788.a n = A034130 (n + 1)

end A034130

/-! ## A034130.P13507421143126022356

`floor((7/5+n)^3-A309873(A016825(n)))`
-/

namespace A034130.P13507421143126022356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5 + (n : ℚ)) ^ 3 - (A309873 (A016825 n).toNat : ℚ)⌋

end

end A034130.P13507421143126022356

namespace A034130

/-- `floor((7/5+n)^3-A309873(A016825(n)))` -/
def P13507421143126022356.Spec : Prop :=
  ∀ n, P13507421143126022356.a n = A034130 (n + 1)

end A034130

/-! ## A034130.P17004591081719932618

`floor((7/5+n)^3+A164660(n)²)`
-/

namespace A034130.P17004591081719932618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5 + (n : ℚ)) ^ 3 + (A164660 n ^ 2 : ℚ)⌋

end

end A034130.P17004591081719932618

namespace A034130

/-- `floor((7/5+n)^3+A164660(n)²)` -/
def P17004591081719932618.Spec : Prop :=
  ∀ n, P17004591081719932618.a n = A034130 (n + 1)

end A034130

/-! ## A034130.P10417553603341584411

`floor((7/5+n)^3-A008683(A293194(n+1)))`
-/

namespace A034130.P10417553603341584411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 5 + (n : ℚ)) ^ 3 - (A008683 (A293194 (n + 1)).toNat : ℚ)⌋

end

end A034130.P10417553603341584411

namespace A034130

/-- `floor((7/5+n)^3-A008683(A293194(n+1)))` -/
def P10417553603341584411.Spec : Prop :=
  ∀ n, P10417553603341584411.a n = A034130 (n + 1)

end A034130

/-!
# A034131: a(n) = ceiling((n + 1/2)^3).

The programs for A034131, the canonical program `A034131.P1861838187104884455` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034131 has offset 1).

The definition of A034131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/2)^3)` (program `A034131.P1861838187104884455`, by `A034131.P1861838187104884455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034131.P1861838187104884455

`ceil((n+1+1/2)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034131

/-- `ceil((n+1+1/2)^3)` -/
def P1861838187104884455.Spec : Prop :=
  ∀ n, P1861838187104884455.a n = A034131 (n + 1)

theorem P1861838187104884455.correct : P1861838187104884455.Spec := by
  intro n
  simp only [A034131, Nat.add_sub_cancel]

end A034131

/-! ## A034131.P3674131590012672066

`A219085(n+1)+1`
-/

namespace A034131.P3674131590012672066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219085 (n + 1) + 1

end

end A034131.P3674131590012672066

namespace A034131

/-- `A219085(n+1)+1` -/
def P3674131590012672066.Spec : Prop :=
  ∀ n, P3674131590012672066.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P10685679801641088846

`record[floor((xor(1, n)/2+1)^3)+1]`
-/

namespace A034131.P10685679801641088846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 n : ℚ) / 2 + 1) ^ 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034131.P10685679801641088846

namespace A034131

/-- `record[floor((xor(1, n)/2+1)^3)+1]` -/
def P10685679801641088846.Spec : Prop :=
  ∀ n, P10685679801641088846.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P2396838659529606748

`∑[A058034(n+1)]+1`
-/

namespace A034131.P2396838659529606748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A034131.P2396838659529606748

namespace A034131

/-- `∑[A058034(n+1)]+1` -/
def P2396838659529606748.Spec : Prop :=
  ∀ n, P2396838659529606748.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P16325806070867149333

`A008621(n+1)+∑[3*(n+1)²]`
-/

namespace A034131.P16325806070867149333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034131.P16325806070867149333

namespace A034131

/-- `A008621(n+1)+∑[3*(n+1)²]` -/
def P16325806070867149333.Spec : Prop :=
  ∀ n, P16325806070867149333.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P1306946721118926126

`A212960(n+1)-A059169(n+1)`
-/

namespace A034131.P1306946721118926126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 (n + 1) - A059169 (n + 1)

end

end A034131.P1306946721118926126

namespace A034131

/-- `A212960(n+1)-A059169(n+1)` -/
def P1306946721118926126.Spec : Prop :=
  ∀ n, P1306946721118926126.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P6086216363467549080

`A002265(n+1)+A059270(n+1)+1`
-/

namespace A034131.P6086216363467549080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A059270 (n + 1) + 1)

end

end A034131.P6086216363467549080

namespace A034131

/-- `A002265(n+1)+A059270(n+1)+1` -/
def P6086216363467549080.Spec : Prop :=
  ∀ n, P6086216363467549080.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P16630888987086721721

`A027444(n+1)+A082644(n+1)+1`
-/

namespace A034131.P16630888987086721721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 (n + 1) + (A082644 (n + 1) + 1)

end

end A034131.P16630888987086721721

namespace A034131

/-- `A027444(n+1)+A082644(n+1)+1` -/
def P16630888987086721721.Spec : Prop :=
  ∀ n, P16630888987086721721.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P15755524450245517525

`A081276(2*n+3)+1`
-/

namespace A034131.P15755524450245517525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * n + 3) + 1

end

end A034131.P15755524450245517525

namespace A034131

/-- `A081276(2*n+3)+1` -/
def P15755524450245517525.Spec : Prop :=
  ∀ n, P15755524450245517525.a n = A034131 (n + 1)

end A034131

/-! ## A034131.P9141424684943666777

`floor((3/A020639(Δ[n^3]+1)+n)^3)+1`
-/

namespace A034131.P9141424684943666777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 / (A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) + (n : ℚ)) ^ 3⌋ + 1

end

end A034131.P9141424684943666777

namespace A034131

/-- `floor((3/A020639(Δ[n^3]+1)+n)^3)+1` -/
def P9141424684943666777.Spec : Prop :=
  ∀ n, P9141424684943666777.a n = A034131 (n + 1)

end A034131

/-!
# A034132: Decimal part of cube root of a(n) starts with 6: first term of runs.

The programs for A034132, the canonical program `A034132.P10568988092711729101` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034132 has offset 1).

The definition of A034132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034132.P10568988092711729101

`ceil((13/5+n)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034132

/-- `ceil((13/5+n)^3)` -/
def P10568988092711729101.Spec : Prop :=
  ∀ n, P10568988092711729101.a n = A034132 (n + 1)

theorem P10568988092711729101.correct : P10568988092711729101.Spec := by
  intro n
  simp only [A034132, Nat.add_sub_cancel]

end A034132

/-! ## A034132.P15994302663230864990

`floor(and(1, 2*n+1)+(13/5+n)^3)`
-/

namespace A034132.P15994302663230864990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (2 * n + 1) : ℚ) + ((13 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034132.P15994302663230864990

namespace A034132

/-- `floor(and(1, 2*n+1)+(13/5+n)^3)` -/
def P15994302663230864990.Spec : Prop :=
  ∀ n, P15994302663230864990.a n = A034132 (n + 1)

end A034132

/-! ## A034132.P12649154593826431485

`floor((13/5+n)^3+A033999(n)²)`
-/

namespace A034132.P12649154593826431485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((13 : ℚ) / 5 + (n : ℚ)) ^ 3 + (A033999 n ^ 2 : ℚ)⌋

end

end A034132.P12649154593826431485

namespace A034132

/-- `floor((13/5+n)^3+A033999(n)²)` -/
def P12649154593826431485.Spec : Prop :=
  ∀ n, P12649154593826431485.a n = A034132 (n + 1)

end A034132

/-! ## A034132.P14096687488335419589

`floor(gcd(3, A000034(n))+(13/5+n)^3)`
-/

namespace A034132.P14096687488335419589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd 3 (A000034 n) : ℚ) + ((13 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034132.P14096687488335419589

namespace A034132

/-- `floor(gcd(3, A000034(n))+(13/5+n)^3)` -/
def P14096687488335419589.Spec : Prop :=
  ∀ n, P14096687488335419589.a n = A034132 (n + 1)

end A034132

/-! ## A034132.P14590919233722569015

`floor(A007318(C(2, n))+(13/5+n)^3)`
-/

namespace A034132.P14590919233722569015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + ((13 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034132.P14590919233722569015

namespace A034132

/-- `floor(A007318(C(2, n))+(13/5+n)^3)` -/
def P14590919233722569015.Spec : Prop :=
  ∀ n, P14590919233722569015.a n = A034132 (n + 1)

end A034132

/-! ## A034132.P12939802295630584657

`floor(A033999(A005843(n))+(13/5+n)^3)`
-/

namespace A034132.P12939802295630584657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033999 (A005843 n).toNat : ℚ) + ((13 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034132.P12939802295630584657

namespace A034132

/-- `floor(A033999(A005843(n))+(13/5+n)^3)` -/
def P12939802295630584657.Spec : Prop :=
  ∀ n, P12939802295630584657.a n = A034132 (n + 1)

end A034132

/-! ## A034132.P4216701769020772936

`floor((13/5+n)^3-A008683(A002385(n+1)))`
-/

namespace A034132.P4216701769020772936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((13 : ℚ) / 5 + (n : ℚ)) ^ 3 - (A008683 (A002385 (n + 1)).toNat : ℚ)⌋

end

end A034132.P4216701769020772936

namespace A034132

/-- `floor((13/5+n)^3-A008683(A002385(n+1)))` -/
def P4216701769020772936.Spec : Prop :=
  ∀ n, P4216701769020772936.a n = A034132 (n + 1)

end A034132

/-! ## A034132.P12244174414342284766

`floor((13/5+n)^3)+A151810(n)!`
-/

namespace A034132.P12244174414342284766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((13 : ℚ) / 5 + (n : ℚ)) ^ 3⌋ + (Nat.factorial (A151810 n).toNat : ℤ)

end

end A034132.P12244174414342284766

namespace A034132

/-- `floor((13/5+n)^3)+A151810(n)!` -/
def P12244174414342284766.Spec : Prop :=
  ∀ n, P12244174414342284766.a n = A034132 (n + 1)

end A034132

/-!
# A034133: a(n) = ceiling((n + 7/10)^3).

The programs for A034133, the canonical program `A034133.P3976019179422265857` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034133 has offset 1).

The definition of A034133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+7/10)^3)` (program `A034133.P3976019179422265857`, by `A034133.P3976019179422265857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034133.P3976019179422265857

`ceil((n+1+7/10)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034133

/-- `ceil((n+1+7/10)^3)` -/
def P3976019179422265857.Spec : Prop :=
  ∀ n, P3976019179422265857.a n = A034133 (n + 1)

theorem P3976019179422265857.correct : P3976019179422265857.Spec := by
  intro n
  simp only [A034133, Nat.add_sub_cancel]

end A034133

/-! ## A034133.P13894747834071555789

`floor(C(2, n+2)!+(17/10+n)^3)`
-/

namespace A034133.P13894747834071555789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (Nat.choose 2 (n + 2)) : ℚ) + ((17 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034133.P13894747834071555789

namespace A034133

/-- `floor(C(2, n+2)!+(17/10+n)^3)` -/
def P13894747834071555789.Spec : Prop :=
  ∀ n, P13894747834071555789.a n = A034133 (n + 1)

end A034133

/-! ## A034133.P10363562924735617124

`floor(A007318(C(2, n))+(17/10+n)^3)`
-/

namespace A034133.P10363562924735617124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + ((17 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034133.P10363562924735617124

namespace A034133

/-- `floor(A007318(C(2, n))+(17/10+n)^3)` -/
def P10363562924735617124.Spec : Prop :=
  ∀ n, P10363562924735617124.a n = A034133 (n + 1)

end A034133

/-! ## A034133.P10132528033118034341

`floor(A135560(6*n+5)+(17/10+n)^3)`
-/

namespace A034133.P10132528033118034341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135560 (6 * n + 5) : ℚ) + ((17 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034133.P10132528033118034341

namespace A034133

/-- `floor(A135560(6*n+5)+(17/10+n)^3)` -/
def P10132528033118034341.Spec : Prop :=
  ∀ n, P10132528033118034341.a n = A034133 (n + 1)

end A034133

/-! ## A034133.P16219217952771077478

`floor(and(1, A093112(n+1))+(17/10+n)^3)`
-/

namespace A034133.P16219217952771077478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A093112 (n + 1)) : ℚ) + ((17 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034133.P16219217952771077478

namespace A034133

/-- `floor(and(1, A093112(n+1))+(17/10+n)^3)` -/
def P16219217952771077478.Spec : Prop :=
  ∀ n, P16219217952771077478.a n = A034133 (n + 1)

end A034133

/-! ## A034133.P695582017213657516

`floor(A000188(A139656(n+1))+(17/10+n)^3)`
-/

namespace A034133.P695582017213657516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (A139656 (n + 1)).toNat : ℚ) + ((17 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034133.P695582017213657516

namespace A034133

/-- `floor(A000188(A139656(n+1))+(17/10+n)^3)` -/
def P695582017213657516.Spec : Prop :=
  ∀ n, P695582017213657516.a n = A034133 (n + 1)

end A034133

/-!
# A034134: Decimal part of cube root of a(n) starts with 8: first term of runs.

The programs for A034134, the canonical program `A034134.P1948593362073543312` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034134 has offset 1).

The definition of A034134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034134.P1948593362073543312

`ceil((9/5+n)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034134

/-- `ceil((9/5+n)^3)` -/
def P1948593362073543312.Spec : Prop :=
  ∀ n, P1948593362073543312.a n = A034134 (n + 1)

theorem P1948593362073543312.correct : P1948593362073543312.Spec := by
  intro n
  simp only [A034134, Nat.add_sub_cancel]

end A034134

/-! ## A034134.P14116663171089310423

`floor(A007318(C(3, n))+(9/5+n)^3)`
-/

namespace A034134.P14116663171089310423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 3 n) : ℚ) + ((9 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034134.P14116663171089310423

namespace A034134

/-- `floor(A007318(C(3, n))+(9/5+n)^3)` -/
def P14116663171089310423.Spec : Prop :=
  ∀ n, P14116663171089310423.a n = A034134 (n + 1)

end A034134

/-! ## A034134.P17642187731198854751

`floor(A001222(A006567(n+1))+(9/5+n)^3)`
-/

namespace A034134.P17642187731198854751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A006567 (n + 1)).toNat : ℚ) + ((9 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034134.P17642187731198854751

namespace A034134

/-- `floor(A001222(A006567(n+1))+(9/5+n)^3)` -/
def P17642187731198854751.Spec : Prop :=
  ∀ n, P17642187731198854751.a n = A034134 (n + 1)

end A034134

/-! ## A034134.P18138120923174621107

`floor(A001511(A341215(n+1))+(9/5+n)^3)`
-/

namespace A034134.P18138120923174621107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001511 (A341215 (n + 1)).toNat : ℚ) + ((9 : ℚ) / 5 + (n : ℚ)) ^ 3⌋

end

end A034134.P18138120923174621107

namespace A034134

/-- `floor(A001511(A341215(n+1))+(9/5+n)^3)` -/
def P18138120923174621107.Spec : Prop :=
  ∀ n, P18138120923174621107.a n = A034134 (n + 1)

end A034134

/-! ## A034134.P8559320762073935669

`floor((9/5+n)^3)+A097479(n)!`
-/

namespace A034134.P8559320762073935669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 : ℚ) / 5 + (n : ℚ)) ^ 3⌋ + (Nat.factorial (A097479 n).toNat : ℤ)

end

end A034134.P8559320762073935669

namespace A034134

/-- `floor((9/5+n)^3)+A097479(n)!` -/
def P8559320762073935669.Spec : Prop :=
  ∀ n, P8559320762073935669.a n = A034134 (n + 1)

end A034134

/-!
# A034135: Decimal part of cube root of n starts with 9: first term of runs.

The programs for A034135, the canonical program `A034135.P11865997059044653479` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034135 has offset 1).

The definition of A034135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034135.P11865997059044653479

`ceil((n+1+9/10)^3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034135

/-- `ceil((n+1+9/10)^3)` -/
def P11865997059044653479.Spec : Prop :=
  ∀ n, P11865997059044653479.a n = A034135 (n + 1)

theorem P11865997059044653479.correct : P11865997059044653479.Spec := by
  intro n
  simp only [A034135, Nat.add_sub_cancel]

end A034135

/-! ## A034135.P9045624890930880291

`floor((19/10+n)^3)+A007318(∑[n])`
-/

namespace A034135.P9045624890930880291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((19 : ℚ) / 10 + (n : ℚ)) ^ 3⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034135.P9045624890930880291

namespace A034135

/-- `floor((19/10+n)^3)+A007318(∑[n])` -/
def P9045624890930880291.Spec : Prop :=
  ∀ n, P9045624890930880291.a n = A034135 (n + 1)

end A034135

/-! ## A034135.P16888729396965191298

`floor((19/10+n)^3-A057428(n+1))`
-/

namespace A034135.P16888729396965191298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((19 : ℚ) / 10 + (n : ℚ)) ^ 3 - (A057428 (n + 1) : ℚ)⌋

end

end A034135.P16888729396965191298

namespace A034135

/-- `floor((19/10+n)^3-A057428(n+1))` -/
def P16888729396965191298.Spec : Prop :=
  ∀ n, P16888729396965191298.a n = A034135 (n + 1)

end A034135

/-! ## A034135.P17374287449055175110

`floor(A007318(C(2, n))+(19/10+n)^3)`
-/

namespace A034135.P17374287449055175110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + ((19 : ℚ) / 10 + (n : ℚ)) ^ 3⌋

end

end A034135.P17374287449055175110

namespace A034135

/-- `floor(A007318(C(2, n))+(19/10+n)^3)` -/
def P17374287449055175110.Spec : Prop :=
  ∀ n, P17374287449055175110.a n = A034135 (n + 1)

end A034135

/-! ## A034135.P860977071734796959

`floor((19/10+n)^3)+A000041(n²%(n+1))`
-/

namespace A034135.P860977071734796959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((19 : ℚ) / 10 + (n : ℚ)) ^ 3⌋ + A000041 (n ^ 2 % (n + 1))

end

end A034135.P860977071734796959

namespace A034135

/-- `floor((19/10+n)^3)+A000041(n²%(n+1))` -/
def P860977071734796959.Spec : Prop :=
  ∀ n, P860977071734796959.a n = A034135 (n + 1)

end A034135

/-! ## A034135.P16834695712618079319

`floor((19/10+n)^3)+A000041(and(n, -(n+1)))`
-/

namespace A034135.P16834695712618079319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((19 : ℚ) / 10 + (n : ℚ)) ^ 3⌋ + A000041 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat

end

end A034135.P16834695712618079319

namespace A034135

/-- `floor((19/10+n)^3)+A000041(and(n, -(n+1)))` -/
def P16834695712618079319.Spec : Prop :=
  ∀ n, P16834695712618079319.a n = A034135 (n + 1)

end A034135

/-!
# A034136: Number of partitions of n into distinct parts from [1, 6].

The programs for A034136, there is no canonical definition to state claims against.
-/

/-! ## A034136.P11446049690783713836

`A026836(A167487(n+5))`
-/

namespace A034136.P11446049690783713836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A167487 (n + 5)).toNat

end

end A034136.P11446049690783713836

/-!
# A034137: Number of partitions of n into distinct parts from [1, 7].

The programs for A034137, there is no canonical definition to state claims against.
-/

/-! ## A034137.P9983962715730056649

`A026836(A000096(n+6)+9)`
-/

namespace A034137.P9983962715730056649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A000096 (n + 6) + 9).toNat

end

end A034137.P9983962715730056649

/-!
# A034138: Number of partitions of n into distinct parts from [1, 8].

The programs for A034138, there is no canonical definition to state claims against.
-/

/-! ## A034138.P1570640439336748416

`A026836(A167487(n+7)+2)`
-/

namespace A034138.P1570640439336748416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A167487 (n + 7) + 2).toNat

end

end A034138.P1570640439336748416

/-!
# A034139: Number of partitions of n into distinct parts from [1, 9].

The programs for A034139, there is no canonical definition to state claims against.
-/

/-! ## A034139.P3340215271229595772

`A026836(A161680(n+12)-11-2*n)`
-/

namespace A034139.P3340215271229595772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A161680 (n + 12) - 11 - (2 * n : ℤ)).toNat

end

end A034139.P3340215271229595772

/-!
# A034140: Number of partitions of n into distinct parts from [1, 10].

The programs for A034140, there is no canonical definition to state claims against.
-/

/-! ## A034140.P11513663709048474782

`A026836(A000124(n+11)-(n+1))`
-/

namespace A034140.P11513663709048474782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A000124 (n + 11) - (n + 1 : ℤ)).toNat

end

end A034140.P11513663709048474782

/-!
# A034141: Number of partitions of n into distinct parts from [1, 11].

The programs for A034141, there is no canonical definition to state claims against.
-/

/-! ## A034141.P10029862406035584940

`A070936(A000217(n+12)-12)`
-/

namespace A034141.P10029862406035584940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A000217 (n + 12) - 12).toNat

end

end A034141.P10029862406035584940

/-!
# A034142: Number of partitions of n into distinct parts from [1, 12].

The programs for A034142, there is no canonical definition to state claims against.
-/

/-! ## A034142.P15751689192773963003

`A026836(A000217(n+13)+n-2*n)`
-/

namespace A034142.P15751689192773963003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A000217 (n + 13) + (n : ℤ) - (2 * n : ℤ)).toNat

end

end A034142.P15751689192773963003

/-!
# A034143: Number of partitions of n into distinct parts from [1, 13].

The programs for A034143, there is no canonical definition to state claims against.
-/

/-! ## A034143.P9136270587333524442

`A070936(A000217(n+13)+n)`
-/

namespace A034143.P9136270587333524442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A034143.P9136270587333524442

/-!
# A034144: Number of partitions of n into distinct parts from [1, 14].

The programs for A034144, there is no canonical definition to state claims against.
-/

/-! ## A034144.P4328743511536913995

`∑[A084558(A070198(A087897(n)))]`
-/

namespace A034144.P4328743511536913995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A070198 (A087897 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034144.P4328743511536913995

/-!
# A034145: Number of partitions of n into distinct parts from [1, 15].

The programs for A034145, there is no canonical definition to state claims against.
-/

/-! ## A034145.P1385621406916281893

`A070936(eq[15, A025581(n)])`
-/

namespace A034145.P1385621406916281893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034145.P1385621406916281893

/-!
# A034146: Number of partitions of n into distinct parts from [1, 16].

The programs for A034146, there is no canonical definition to state claims against.
-/

/-! ## A034146.P11359708289072601975

`A070936(eq[16, A025581(n)])`
-/

namespace A034146.P11359708289072601975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034146.P11359708289072601975

/-!
# A034147: Number of partitions of n into distinct parts from [1, 17].

The programs for A034147, there is no canonical definition to state claims against.
-/

/-! ## A034147.P11436434431524539490

`∑[A048766(A087897(n)*A122134(n))]`
-/

namespace A034147.P11436434431524539490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A087897 n * A122134 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034147.P11436434431524539490

/-!
# A034148: Number of partitions of n into distinct parts from [1, 18].

The programs for A034148, there is no canonical definition to state claims against.
-/

/-! ## A034148.P1667534979458831331

`A026836(eq[20, A131818(n+1)])`
-/

namespace A034148.P1667534979458831331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034148.P1667534979458831331

/-!
# A034149: Number of partitions of n into distinct parts from [1, 19].

The programs for A034149, there is no canonical definition to state claims against.
-/

/-! ## A034149.P12689219049815384579

`A000009(n)-∑[A327104(A006983(n+1))]`
-/

namespace A034149.P12689219049815384579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (A006983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034149.P12689219049815384579

/-!
# A034150: Number of partitions of n into distinct parts from [1, 20].

The programs for A034150, there is no canonical definition to state claims against.
-/

/-! ## A034150.P8526628700727481826

`A026836(eq[22, A131818(n+1)])`
-/

namespace A034150.P8526628700727481826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034150.P8526628700727481826

/-!
# A034151: Number of partitions of n into 3 distinct parts from [ 1,8 ].

The programs for A034151, there is no canonical definition to state claims against.
-/

/-! ## A034151.P12919055786287908716

`round(A010958(n)/A010972(n+3))`
-/

namespace A034151.P12919055786287908716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010958 n : ℚ) / (A010972 (n + 3 + 19) : ℚ))

end

end A034151.P12919055786287908716

/-!
# A034152: Number of partitions of n into 3 distinct parts from [ 1,9 ].

The programs for A034152, there is no canonical definition to state claims against.
-/

/-! ## A034152.P17839083645920208007

`A138774(n+7)%A260894(A047993(n+1))`
-/

namespace A034152.P17839083645920208007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138774 (n + 7)) (A260894 (A047993 (n + 1)).toNat)

end

end A034152.P17839083645920208007

/-!
# A034154: Number of partitions of n into 3 distinct parts from [ 1,11 ].

The programs for A034154, there is no canonical definition to state claims against.
-/

/-! ## A034154.P16250074562823135927

`∑[A279952(A000010(A203175(n+1)))]`
-/

namespace A034154.P16250074562823135927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A000010 (A203175 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034154.P16250074562823135927

/-!
# A034160: Number of partitions of n into 3 distinct parts from [ 1,17 ].

The programs for A034160, there is no canonical definition to state claims against.
-/

/-! ## A034160.P3128898033331622066

`∑[A037913(A024643(n+6))]`
-/

namespace A034160.P3128898033331622066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A024643 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034160.P3128898033331622066

/-!
# A034161: Number of partitions of n into 3 distinct parts from [ 1,18 ].

The programs for A034161, there is no canonical definition to state claims against.
-/

/-! ## A034161.P16433020387188621963

`A034162(n)-A185284(A109763(n+1))`
-/

namespace A034161.P16433020387188621963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034162 n - A185284 (A109763 (n + 1)).toNat

end

end A034161.P16433020387188621963

/-!
# A034162: Number of partitions of n into 3 distinct parts from [ 1,19 ].

The programs for A034162, there is no canonical definition to state claims against.
-/

/-! ## A034162.P8552842353000058433

`A185284(A109763(n+1))+A034161(n)`
-/

namespace A034162.P8552842353000058433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A109763 (n + 1)).toNat + A034161 n

end

end A034162.P8552842353000058433

/-!
# A034163: Number of partitions of n into 3 distinct parts from [ 1,20 ].

The programs for A034163, there is no canonical definition to state claims against.
-/

/-! ## A034163.P5103388939038509252

`A034092(n)-A033483(A185203(n))`
-/

namespace A034163.P5103388939038509252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034092 n - A033483 (A185203 n).toNat

end

end A034163.P5103388939038509252

/-!
# A034164: Related to triple factorial numbers 2*A034000(n+1).

The programs for A034164, the canonical program `A034164.P16391364556815372290` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034164 has offset 0).

The definition of A034164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034164.P16391364556815372290

`A108411(n)*A218540(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034164

/-- `A108411(n)*A218540(n+2)` -/
def P16391364556815372290.Spec : Prop :=
  ∀ n, P16391364556815372290.a n = A034164 n

theorem P16391364556815372290.correct : P16391364556815372290.Spec := by
  intro n
  simp only [A034164]

end A034164

/-! ## A034164.P3559236784700932208

`A111575(2*n)*A218540(n+2)`
-/

namespace A034164.P3559236784700932208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (2 * n) * A218540 (n + 2)

end

end A034164.P3559236784700932208

namespace A034164

/-- `A111575(2*n)*A218540(n+2)` -/
def P3559236784700932208.Spec : Prop :=
  ∀ n, P3559236784700932208.a n = A034164 n

theorem P3559236784700932208.correct : P3559236784700932208.Spec := by
  intro n
  simp only [A034164, Nat.add_sub_cancel, A034164.P3559236784700932208.a, A034164.P16391364556815372290.a, A108411, A108411.P9799689297515495700.a, A111575, A111575.P14114774631773575918.a, A218540, A218540.P16836144759603430934.a, A025748, A025748.P12390695211921138720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034164

/-! ## A034164.P14142847127101714863

`A097188(n+1)/3`
-/

namespace A034164.P14142847127101714863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097188 (n + 1) : ℚ) / 3

end

end A034164.P14142847127101714863

namespace A034164

/-- `A097188(n+1)/3` -/
def P14142847127101714863.Spec : Prop :=
  ∀ n, P14142847127101714863.a n = (A034164 n : ℚ)

end A034164

/-! ## A034164.P15719704899476212466

`A025748(n+2)/3`
-/

namespace A034164.P15719704899476212466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025748 (n + 2) : ℚ) / 3

end

end A034164.P15719704899476212466

namespace A034164

/-- `A025748(n+2)/3` -/
def P15719704899476212466.Spec : Prop :=
  ∀ n, P15719704899476212466.a n = (A034164 n : ℚ)

end A034164

/-! ## A034164.P18359169171010777112

`record[ceil(A048966(n+1)/3)]`
-/

namespace A034164.P18359169171010777112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048966 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034164.P18359169171010777112

namespace A034164

/-- `record[ceil(A048966(n+1)/3)]` -/
def P18359169171010777112.Spec : Prop :=
  ∀ n, P18359169171010777112.a n = A034164 n

end A034164

/-! ## A034164.P4045129628467477386

`A048966(∑[n+1]+1)/3`
-/

namespace A034164.P4045129628467477386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048966 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A034164.P4045129628467477386

namespace A034164

/-- `A048966(∑[n+1]+1)/3` -/
def P4045129628467477386.Spec : Prop :=
  ∀ n, P4045129628467477386.a n = (A034164 n : ℚ)

end A034164

/-! ## A034164.P15790376695588585759

`A004992(n)/∑[n+1]`
-/

namespace A034164.P15790376695588585759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004992 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A034164.P15790376695588585759

namespace A034164

/-- `A004992(n)/∑[n+1]` -/
def P15790376695588585759.Spec : Prop :=
  ∀ n, P15790376695588585759.a n = (A034164 n : ℚ)

end A034164

/-!
# A034165: Number of 'zig-zag' self-avoiding walks on an n X n lattice from a corner to opposite one.

The programs for A034165, there is no canonical definition to state claims against.
-/

/-! ## A034165.P17932444594642619502

`A309559(A001250(n+1)-A230823(n))`
-/

namespace A034165.P17932444594642619502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 (A001250 (n + 1) - A230823 n).toNat

end

end A034165.P17932444594642619502

/-! ## A034165.P17218942226018513755

`A086363(A324742(n+1))`
-/

namespace A034165.P17218942226018513755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086363 (A324742 (n + 1)).toNat

end

end A034165.P17218942226018513755

/-! ## A034165.P17562511849074051105

`A008617(A005465(n))+n`
-/

namespace A034165.P17562511849074051105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A005465 n).toNat + (n : ℤ)

end

end A034165.P17562511849074051105

/-!
# A034166: Maximum length of 'zig-zag' self avoiding walk on an n X n lattice from a corner to opposite one.

The programs for A034166, there is no canonical definition to state claims against.
-/

/-! ## A034166.P2996195533288023430

`2*A038191(n+1)`
-/

namespace A034166.P2996195533288023430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038191 (n + 1)

end

end A034166.P2996195533288023430

/-! ## A034166.P17109947821536725903

`2*(ceil(n²/2)-2%A007318(n)²)`
-/

namespace A034166.P17109947821536725903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌈(n ^ 2 : ℚ) / 2⌉ - Int.tmod 2 (A007318 n ^ 2))

end

end A034166.P17109947821536725903

/-! ## A034166.P6325405813198056356

`2*(A061925(n)-A046540(n+1))`
-/

namespace A034166.P6325405813198056356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061925 n - A046540 (n + 1))

end

end A034166.P6325405813198056356

/-! ## A034166.P13881214098165942669

`2*(ceil(n²/2)-A001221(A146766(n)))`
-/

namespace A034166.P13881214098165942669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌈(n ^ 2 : ℚ) / 2⌉ - A001221 (A146766 n).toNat)

end

end A034166.P13881214098165942669

/-! ## A034166.P18423556217026519570

`2*(ceil(n²/2)-A001221(A158116(n)))`
-/

namespace A034166.P18423556217026519570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌈(n ^ 2 : ℚ) / 2⌉ - A001221 (A158116 n).toNat)

end

end A034166.P18423556217026519570

/-!
# A034167: Product of primes == 1 (mod 7) and cubes of primes == 2 or 4 (mod 7).

The programs for A034167, there is no canonical definition to state claims against.
-/

/-! ## A034167.P5874454800625476015

`∩[A016993(A133184(n+1)), A329366(n+1)]`
-/

namespace A034167.P5874454800625476015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A133184 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034167.P5874454800625476015

/-! ## A034167.P2329082649201956863

`∩[7*n+1, A331912(n+1)]`
-/

namespace A034167.P2329082649201956863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034167.P2329082649201956863

/-! ## A034167.P7956243174538912021

`∩[7*n+1, A357861(n+1)]`
-/

namespace A034167.P7956243174538912021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034167.P7956243174538912021

/-! ## A034167.P1626689232066942492

`filter[A304497(3*n), A010055(#)]`
-/

namespace A034167.P1626689232066942492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A034167.P1626689232066942492

/-!
# A034168: Disjoint discriminants (one form per genus) of type 2 (doubled).

The programs for A034168, there is no canonical definition to state claims against.
-/

/-! ## A034168.P12207124806119736691

`A055745(n+2)`
-/

namespace A034168.P12207124806119736691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055745 (n + 2)

end

end A034168.P12207124806119736691

/-! ## A034168.P6847271090352700361

`record[∏{p}[A072843(n), #]]`
-/

namespace A034168.P6847271090352700361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072843 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034168.P6847271090352700361

/-! ## A034168.P93460970777639743

`2*A034169(n+1)`
-/

namespace A034168.P93460970777639743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034169 (n + 1)

end

end A034168.P93460970777639743

/-! ## A034168.P4245052671546817805

`record[∏{p}[A025052(n+2), #]]`
-/

namespace A034168.P4245052671546817805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034168.P4245052671546817805

/-! ## A034168.P16010302912996108085

`∩[2*n, A139826(n+1)]`
-/

namespace A034168.P16010302912996108085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034168.P16010302912996108085

/-!
# A034169: Disjoint discriminants (one form per genus) of type 2.

The programs for A034169, there is no canonical definition to state claims against.
-/

/-! ## A034169.P3534522809619899342

`A034168(n+1)/2`
-/

namespace A034169.P3534522809619899342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034168 (n + 1) : ℚ) / 2

end

end A034169.P3534522809619899342

/-! ## A034169.P6074011341873605793

`A055745(n+2)/2`
-/

namespace A034169.P6074011341873605793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055745 (n + 2) : ℚ) / 2

end

end A034169.P6074011341873605793

/-! ## A034169.P3799930110525752259

`A000265(A034168(n+1))`
-/

namespace A034169.P3799930110525752259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034168 (n + 1)).toNat

end

end A034169.P3799930110525752259

/-! ## A034169.P15936773275569154449

`A000265(A055745(n+2))`
-/

namespace A034169.P15936773275569154449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055745 (n + 2)).toNat

end

end A034169.P15936773275569154449

/-! ## A034169.P10858689858452119619

`record[A302044(A139826(n+1))]`
-/

namespace A034169.P10858689858452119619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A139826 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034169.P10858689858452119619

/-!
# A034170: Disjoint discriminants (one form per genus) of type 1.

The programs for A034170, there is no canonical definition to state claims against.
-/

/-! ## A034170.P4669114187491534738

`filter[A139826(n+1), A231600(#)]`
-/

namespace A034170.P4669114187491534738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231600 (f1 j).toNat = 1) n)

end

end A034170.P4669114187491534738

/-! ## A034170.P11294759320788842219

`filter[A139826(n+2), A133872(#)]`
-/

namespace A034170.P11294759320788842219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A034170.P11294759320788842219

/-! ## A034170.P4076645689794986783

`filter[A139826(n+2), A290098(#)]`
-/

namespace A034170.P4076645689794986783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A034170.P4076645689794986783

/-! ## A034170.P3132470558476361344

`∩[A139826(n+2), record[A086970(n)]]`
-/

namespace A034170.P3132470558476361344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139826 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034170.P3132470558476361344

/-! ## A034170.P11083442819965670566

`∩[A004766(n+1), A139826(n+1)]`
-/

namespace A034170.P11083442819965670566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034170.P11083442819965670566

/-!
# A034171: Related to triple factorial numbers A007559(n+1).

The programs for A034171, the canonical program `A034171.P15156061293600012407` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034171 has offset 0).

The definition of A034171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034171.P1417526229685814813

`3^n*A007559(n+1)/(n+1)!`
-/

namespace A034171.P1417526229685814813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A007559 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A034171.P1417526229685814813

namespace A034171

/-- `3^n*A007559(n+1)/(n+1)!` -/
def P1417526229685814813.Spec : Prop :=
  ∀ n, P1417526229685814813.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P15156061293600012407

`(9-6/(n+1))*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034171

/-- `(9-6/(n+1))*a(n-1)` -/
def P15156061293600012407.Spec : Prop :=
  ∀ n, P15156061293600012407.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P6832341575462828203

`A035529(∑[n]+1)`
-/

namespace A034171.P6832341575462828203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035529 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034171.P6832341575462828203

namespace A034171

/-- `A035529(∑[n]+1)` -/
def P6832341575462828203.Spec : Prop :=
  ∀ n, P6832341575462828203.a n = A034171 n

end A034171

/-! ## A034171.P15537582731655904332

`(3*n+1)/2*A155579(n)`
-/

namespace A034171.P15537582731655904332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / 2 * (A155579 n : ℚ)

end

end A034171.P15537582731655904332

namespace A034171

/-- `(3*n+1)/2*A155579(n)` -/
def P15537582731655904332.Spec : Prop :=
  ∀ n, P15537582731655904332.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P9674714310193617054

`∏[9-6/(n+1)]/3`
-/

namespace A034171.P9674714310193617054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - 6 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 3

end

end A034171.P9674714310193617054

namespace A034171

/-- `∏[9-6/(n+1)]/3` -/
def P9674714310193617054.Spec : Prop :=
  ∀ n, P9674714310193617054.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P10988886054450166022

`floor(A004991(n)/(n+1))`
-/

namespace A034171.P10988886054450166022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004991 n : ℚ) / (n + 1 : ℚ)⌋

end

end A034171.P10988886054450166022

namespace A034171

/-- `floor(A004991(n)/(n+1))` -/
def P10988886054450166022.Spec : Prop :=
  ∀ n, P10988886054450166022.a n = A034171 n

end A034171

/-! ## A034171.P7756391054013044007

`or(1-A057427(n), A004991(n)/(n+1))`
-/

namespace A034171.P7756391054013044007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A057427 n) (SequenceMachineLib.roundAway ((A004991 n : ℚ) / (n + 1 : ℚ)))

end

end A034171.P7756391054013044007

namespace A034171

/-- `or(1-A057427(n), A004991(n)/(n+1))` -/
def P7756391054013044007.Spec : Prop :=
  ∀ n, P7756391054013044007.a n = A034171 n

end A034171

/-! ## A034171.P13218945475513231867

`or(A004991(n)/(n+1), A007283(n)%2)`
-/

namespace A034171.P13218945475513231867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A004991 n : ℚ) / (n + 1 : ℚ))) (Int.tmod (A007283 n) 2)

end

end A034171.P13218945475513231867

namespace A034171

/-- `or(A004991(n)/(n+1), A007283(n)%2)` -/
def P13218945475513231867.Spec : Prop :=
  ∀ n, P13218945475513231867.a n = A034171 n

end A034171

/-! ## A034171.P3201319810156518897

`(A004991(n)/(n+1))^(A000051(n+1)%2)`
-/

namespace A034171.P3201319810156518897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004991 n : ℚ) / (n + 1 : ℚ)) ^ (Int.tmod (A000051 (n + 1)) 2 : ℤ)

end

end A034171.P3201319810156518897

namespace A034171

/-- `(A004991(n)/(n+1))^(A000051(n+1)%2)` -/
def P3201319810156518897.Spec : Prop :=
  ∀ n, P3201319810156518897.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P5780207187805718934

`or(A004991(n)/(n+1), A007582(n+1)%2)`
-/

namespace A034171.P5780207187805718934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A004991 n : ℚ) / (n + 1 : ℚ))) (Int.tmod (A007582 (n + 1)) 2)

end

end A034171.P5780207187805718934

namespace A034171

/-- `or(A004991(n)/(n+1), A007582(n+1)%2)` -/
def P5780207187805718934.Spec : Prop :=
  ∀ n, P5780207187805718934.a n = A034171 n

end A034171

/-! ## A034171.P3411647129023325949

`A004991(n)/A004988(n)*A097188(n)`
-/

namespace A034171.P3411647129023325949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A004988 n : ℚ) * (A097188 n : ℚ)

end

end A034171.P3411647129023325949

namespace A034171

/-- `A004991(n)/A004988(n)*A097188(n)` -/
def P3411647129023325949.Spec : Prop :=
  ∀ n, P3411647129023325949.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P15469236435754846210

`1-(A001221(A007918(n))-A004991(n)/(n+1))`
-/

namespace A034171.P15469236435754846210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ((A001221 (A007918 n).toNat : ℚ) - (A004991 n : ℚ) / (n + 1 : ℚ))

end

end A034171.P15469236435754846210

namespace A034171

/-- `1-(A001221(A007918(n))-A004991(n)/(n+1))` -/
def P15469236435754846210.Spec : Prop :=
  ∀ n, P15469236435754846210.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P9733058604665219941

`A000244(n)²/A000244(2*n+1)*A004987(n+1)`
-/

namespace A034171.P9733058604665219941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 : ℚ) / (A000244 (2 * n + 1) : ℚ) * (A004987 (n + 1) : ℚ)

end

end A034171.P9733058604665219941

namespace A034171

/-- `A000244(n)²/A000244(2*n+1)*A004987(n+1)` -/
def P9733058604665219941.Spec : Prop :=
  ∀ n, P9733058604665219941.a n = (A034171 n : ℚ)

end A034171

/-! ## A034171.P9617143539667358146

`A000244(2*n)/A000244(2*n+1)*A004987(n+1)`
-/

namespace A034171.P9617143539667358146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n) : ℚ) / (A000244 (2 * n + 1) : ℚ) * (A004987 (n + 1) : ℚ)

end

end A034171.P9617143539667358146

namespace A034171

/-- `A000244(2*n)/A000244(2*n+1)*A004987(n+1)` -/
def P9617143539667358146.Spec : Prop :=
  ∀ n, P9617143539667358146.a n = (A034171 n : ℚ)

end A034171

/-!
# A034172: 

The programs for A034172, there is no canonical definition to state claims against.
-/

/-! ## A034172.P93420412149853006

`A000670(n)-A253669(A185236(n))`
-/

namespace A034172.P93420412149853006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A253669 (A185236 n).toNat

end

end A034172.P93420412149853006

/-!
# A034173: a(n) is minimal such that prime factorizations of a(n), ..., a(n)+n-1 have same exponents.

The programs for A034173, there is no canonical definition to state claims against.
-/

/-! ## A034173.P920124508854614294

`A034174(n+1)-n`
-/

namespace A034173.P920124508854614294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034174 (n + 1) - (n : ℤ)

end

end A034173.P920124508854614294

/-! ## A034173.P9881559055350775573

`A083785(∑[n]+1)`
-/

namespace A034173.P9881559055350775573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083785 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034173.P9881559055350775573

/-! ## A034173.P1703267279303088395

`A083785(A025747(n))-n`
-/

namespace A034173.P1703267279303088395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083785 (A025747 n).toNat - (n : ℤ)

end

end A034173.P1703267279303088395

/-!
# A034174: a(n) is minimal such that prime factorizations of a(n)-n+1, ..., a(n) have same exponents.

The programs for A034174, there is no canonical definition to state claims against.
-/

/-! ## A034174.P2225585695207316798

`A034173(n+1)+n`
-/

namespace A034174.P2225585695207316798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034173 (n + 1) + (n : ℤ)

end

end A034174.P2225585695207316798

/-! ## A034174.P17666067941422974440

`A083785(∑[n+1])`
-/

namespace A034174.P17666067941422974440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083785 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034174.P17666067941422974440

/-! ## A034174.P11006110498293227537

`record[A083785(A133825(n))]`
-/

namespace A034174.P11006110498293227537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083785 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034174.P11006110498293227537

/-!
# A034175: a(n) is minimal such that a(n)+a(n-1) is a square and a(n) is not in {a(0), ..., a(n-1)}.

The programs for A034175, there is no canonical definition to state claims against.
-/

/-! ## A034175.P15907111018694398480

`A064929(A064928(n))`
-/

namespace A034175.P15907111018694398480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064929 (A064928 n).toNat

end

end A034175.P15907111018694398480

/-!
# A034176: One third of quartic factorial numbers.

The programs for A034176, the canonical program `A034176.P8261132067949011157` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034176 has offset 1).

The definition of A034176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034176.P8261132067949011157

`(4*(n+1)-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034176

/-- `(4*(n+1)-1)*a(n-1)` -/
def P8261132067949011157.Spec : Prop :=
  ∀ n, P8261132067949011157.a n = A034176 (n + 1)

theorem P8261132067949011157.correct : P8261132067949011157.Spec := by
  intro n
  simp only [A034176, Nat.add_sub_cancel]

end A034176

/-! ## A034176.P8209027927250135620

`∏[record[xor(3, n+2)]]`
-/

namespace A034176.P8209027927250135620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034176.P8209027927250135620

namespace A034176

/-- `∏[record[xor(3, n+2)]]` -/
def P8209027927250135620.Spec : Prop :=
  ∀ n, (P8209027927250135620.a n : ℤ) = A034176 (n + 1)

end A034176

/-! ## A034176.P17251914526236030276

`∏[record[xor(3, n)]]/3`
-/

namespace A034176.P17251914526236030276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A034176.P17251914526236030276

namespace A034176

/-- `∏[record[xor(3, n)]]/3` -/
def P17251914526236030276.Spec : Prop :=
  ∀ n, P17251914526236030276.a n = (A034176 (n + 1) : ℚ)

end A034176

/-! ## A034176.P11255095682672867076

`∏[4*n+3]/3`
-/

namespace A034176.P11255095682672867076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A034176.P11255095682672867076

namespace A034176

/-- `∏[4*n+3]/3` -/
def P11255095682672867076.Spec : Prop :=
  ∀ n, P11255095682672867076.a n = (A034176 (n + 1) : ℚ)

end A034176

/-! ## A034176.P14160518949786299243

`∏[a(n-1)+4]` with `a(0)=1, a(1)=7`
-/

namespace A034176.P14160518949786299243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034176.P14160518949786299243

namespace A034176

/-- `∏[a(n-1)+4]` -/
def P14160518949786299243.Spec : Prop :=
  ∀ n, (P14160518949786299243.a n : ℤ) = A034176 (n + 1)

end A034176

/-! ## A034176.P13358627933252240802

`a(n-1)*record[xor(3, n)]` with `a(0)=1`
-/

namespace A034176.P13358627933252240802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034176.P13358627933252240802

namespace A034176

/-- `a(n-1)*record[xor(3, n)]` -/
def P13358627933252240802.Spec : Prop :=
  ∀ n, (P13358627933252240802.a n : ℤ) = A034176 (n + 1)

end A034176

/-! ## A034176.P15412370472037820102

`a(n-1)*Δ[n*Δ[n²]]` with `a(0)=1`
-/

namespace A034176.P15412370472037820102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034176.P15412370472037820102

namespace A034176

/-- `a(n-1)*Δ[n*Δ[n²]]` -/
def P15412370472037820102.Spec : Prop :=
  ∀ n, P15412370472037820102.a n = A034176 (n + 1)

end A034176

/-! ## A034176.P13767495137152476356

`A081407(4*n+2)`
-/

namespace A034176.P13767495137152476356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081407 (4 * n + 2)

end

end A034176.P13767495137152476356

namespace A034176

/-- `A081407(4*n+2)` -/
def P13767495137152476356.Spec : Prop :=
  ∀ n, P13767495137152476356.a n = A034176 (n + 1)

end A034176

/-! ## A034176.P16564830399369751976

`∏[Δ[A212342(2*n)]]`
-/

namespace A034176.P16564830399369751976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034176.P16564830399369751976

namespace A034176

/-- `∏[Δ[A212342(2*n)]]` -/
def P16564830399369751976.Spec : Prop :=
  ∀ n, P16564830399369751976.a n = A034176 (n + 1)

end A034176

/-! ## A034176.P908775058622630744

`∏[record[A166519(n+1)]]`
-/

namespace A034176.P908775058622630744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034176.P908775058622630744

namespace A034176

/-- `∏[record[A166519(n+1)]]` -/
def P908775058622630744.Spec : Prop :=
  ∀ n, P908775058622630744.a n = A034176 (n + 1)

end A034176

/-!
# A034177: a(n) is the n-th quartic factorial number divided by 4.

The programs for A034177, the canonical program `A034177.P17014864589582442131` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034177 has offset 1).

The definition of A034177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034177.P17014864589582442131

`4^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034177

/-- `4^n*(n+1)!` -/
def P17014864589582442131.Spec : Prop :=
  ∀ n, (P17014864589582442131.a n : ℤ) = A034177 (n + 1)

theorem P17014864589582442131.correct : P17014864589582442131.Spec := by
  intro n
  simp only [A034177, Nat.add_sub_cancel]

end A034177

/-! ## A034177.P15467289629579909259

`4*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034177.P15467289629579909259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * (n + 1) * a (n - 1)

end

end A034177.P15467289629579909259

namespace A034177

/-- `4*(n+1)*a(n-1)` -/
def P15467289629579909259.Spec : Prop :=
  ∀ n, (P15467289629579909259.a n : ℤ) = A034177 (n + 1)

end A034177

/-! ## A034177.P57198757257092487

`∏[4*(n+1)]/4`
-/

namespace A034177.P57198757257092487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A034177.P57198757257092487

namespace A034177

/-- `∏[4*(n+1)]/4` -/
def P57198757257092487.Spec : Prop :=
  ∀ n, P57198757257092487.a n = (A034177 (n + 1) : ℚ)

end A034177

/-! ## A034177.P3824947961712885455

`∏[a(n-1)+4]` with `a(0)=1, a(1)=8`
-/

namespace A034177.P3824947961712885455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034177.P3824947961712885455

namespace A034177

/-- `∏[a(n-1)+4]` -/
def P3824947961712885455.Spec : Prop :=
  ∀ n, (P3824947961712885455.a n : ℤ) = A034177 (n + 1)

end A034177

/-! ## A034177.P4375007721359417827

`∏[record[xor(3, n+3)]+1]`
-/

namespace A034177.P4375007721359417827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034177.P4375007721359417827

namespace A034177

/-- `∏[record[xor(3, n+3)]+1]` -/
def P4375007721359417827.Spec : Prop :=
  ∀ n, (P4375007721359417827.a n : ℤ) = A034177 (n + 1)

end A034177

/-! ## A034177.P6552665680426477726

`∏[(n+1)*gcd(12, 4^n)]`
-/

namespace A034177.P6552665680426477726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 12 (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034177.P6552665680426477726

namespace A034177

/-- `∏[(n+1)*gcd(12, 4^n)]` -/
def P6552665680426477726.Spec : Prop :=
  ∀ n, (P6552665680426477726.a n : ℤ) = A034177 (n + 1)

end A034177

/-! ## A034177.P9241396702281517346

`∏[record[6-xor(3, -n)]-2]`
-/

namespace A034177.P9241396702281517346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034177.P9241396702281517346

namespace A034177

/-- `∏[record[6-xor(3, -n)]-2]` -/
def P9241396702281517346.Spec : Prop :=
  ∀ n, P9241396702281517346.a n = A034177 (n + 1)

end A034177

/-! ## A034177.P1289416436184870997

`floor((n+1)!/4^-n)`
-/

namespace A034177.P1289416436184870997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)⌋

end

end A034177.P1289416436184870997

namespace A034177

/-- `floor((n+1)!/4^-n)` -/
def P1289416436184870997.Spec : Prop :=
  ∀ n, P1289416436184870997.a n = A034177 (n + 1)

end A034177

/-! ## A034177.P13476848859959958447

`ceil((n+1)!/4^-n)`
-/

namespace A034177.P13476848859959958447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)⌉

end

end A034177.P13476848859959958447

namespace A034177

/-- `ceil((n+1)!/4^-n)` -/
def P13476848859959958447.Spec : Prop :=
  ∀ n, P13476848859959958447.a n = A034177 (n + 1)

end A034177

/-! ## A034177.P5900872931451807555

`round((n+1)!/4^-n)`
-/

namespace A034177.P5900872931451807555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A034177.P5900872931451807555

namespace A034177

/-- `round((n+1)!/4^-n)` -/
def P5900872931451807555.Spec : Prop :=
  ∀ n, P5900872931451807555.a n = A034177 (n + 1)

end A034177

/-!
# A034178: Number of solutions to n = a^2 - b^2, a > b >= 0.

The programs for A034178, the canonical program `A034178.P3748445109450908079` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034178 has offset 1).

The definition of A034178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034178.P2681949593340557195

`ceil(A112329(n+1)/2)`
-/

namespace A034178.P2681949593340557195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112329 (n + 1) : ℚ) / 2⌉

end

end A034178.P2681949593340557195

namespace A034178

/-- `ceil(A112329(n+1)/2)` -/
def P2681949593340557195.Spec : Prop :=
  ∀ n, P2681949593340557195.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P10430605944717541088

`round(A094572(n+1)/4)`
-/

namespace A034178.P10430605944717541088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094572 (n + 1) : ℚ) / 4)

end

end A034178.P10430605944717541088

namespace A034178

/-- `round(A094572(n+1)/4)` -/
def P10430605944717541088.Spec : Prop :=
  ∀ n, P10430605944717541088.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P4475927281920150644

`A220400(n+1)+val(n²+2, 2)`
-/

namespace A034178.P4475927281920150644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (n + 1) + (SequenceMachineLib.valuation (n ^ 2 + 2) 2 : ℤ)

end

end A034178.P4475927281920150644

namespace A034178

/-- `A220400(n+1)+val(n²+2, 2)` -/
def P4475927281920150644.Spec : Prop :=
  ∀ n, P4475927281920150644.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P3748445109450908079

`round(A143520(n+1)/(2*n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034178

/-- `round(A143520(n+1)/(2*n+1))` -/
def P3748445109450908079.Spec : Prop :=
  ∀ n, P3748445109450908079.a n = A034178 (n + 1)

theorem P3748445109450908079.correct : P3748445109450908079.Spec := by
  intro n
  simp only [A034178, Nat.add_sub_cancel]

end A034178

/-! ## A034178.P1265327287853022626

`A110655(A094572(n+1))`
-/

namespace A034178.P1265327287853022626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A094572 (n + 1)).toNat

end

end A034178.P1265327287853022626

namespace A034178

/-- `A110655(A094572(n+1))` -/
def P1265327287853022626.Spec : Prop :=
  ∀ n, P1265327287853022626.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P17359543458322549836

`A004526(A112329(n+1)+1)`
-/

namespace A034178.P17359543458322549836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112329 (n + 1) + 1).toNat

end

end A034178.P17359543458322549836

namespace A034178

/-- `A004526(A112329(n+1)+1)` -/
def P17359543458322549836.Spec : Prop :=
  ∀ n, P17359543458322549836.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P6198167881958815020

`A002265(A094572(n+1)+2)`
-/

namespace A034178.P6198167881958815020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A094572 (n + 1) + 2).toNat

end

end A034178.P6198167881958815020

namespace A034178

/-- `A002265(A094572(n+1)+2)` -/
def P6198167881958815020.Spec : Prop :=
  ∀ n, P6198167881958815020.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P9648525111015895061

`A220400(n+1)+A059841(n)`
-/

namespace A034178.P9648525111015895061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (n + 1) + A059841 n

end

end A034178.P9648525111015895061

namespace A034178

/-- `A220400(n+1)+A059841(n)` -/
def P9648525111015895061.Spec : Prop :=
  ∀ n, P9648525111015895061.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P12494771870707772529

`A004526(abs(A048272(n+1))+1)`
-/

namespace A034178.P12494771870707772529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (|A048272 (n + 1)| + 1).toNat

end

end A034178.P12494771870707772529

namespace A034178

/-- `A004526(abs(A048272(n+1))+1)` -/
def P12494771870707772529.Spec : Prop :=
  ∀ n, P12494771870707772529.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P9557259836645655384

`A220400(n+1)+A056594(n)²`
-/

namespace A034178.P9557259836645655384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (n + 1) + A056594 n ^ 2

end

end A034178.P9557259836645655384

namespace A034178

/-- `A220400(n+1)+A056594(n)²` -/
def P9557259836645655384.Spec : Prop :=
  ∀ n, P9557259836645655384.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P13864917384233687337

`∑{digits}[A303818(n+1), A054973(#²)]`
-/

namespace A034178.P13864917384233687337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054973 (x ^ 2)).sum

end

end A034178.P13864917384233687337

namespace A034178

/-- `∑{digits}[A303818(n+1), A054973(#²)]` -/
def P13864917384233687337.Spec : Prop :=
  ∀ n, P13864917384233687337.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P12313179441575268465

`A100073(n+1)+A010052(n+1)`
-/

namespace A034178.P12313179441575268465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1) + A010052 (n + 1)

end

end A034178.P12313179441575268465

namespace A034178

/-- `A100073(n+1)+A010052(n+1)` -/
def P12313179441575268465.Spec : Prop :=
  ∀ n, P12313179441575268465.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P2187938876398595340

`A112329(n+1)-A100073(n+1)`
-/

namespace A034178.P2187938876398595340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) - A100073 (n + 1)

end

end A034178.P2187938876398595340

namespace A034178

/-- `A112329(n+1)-A100073(n+1)` -/
def P2187938876398595340.Spec : Prop :=
  ∀ n, P2187938876398595340.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P6724814529363039656

`A320111(n+1)-A056924(n+1)`
-/

namespace A034178.P6724814529363039656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - A056924 (n + 1)

end

end A034178.P6724814529363039656

namespace A034178

/-- `A320111(n+1)-A056924(n+1)` -/
def P6724814529363039656.Spec : Prop :=
  ∀ n, P6724814529363039656.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P2871425528517873960

`A220400(n+1)+A121262(2*n)`
-/

namespace A034178.P2871425528517873960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (n + 1) + A121262 (2 * n)

end

end A034178.P2871425528517873960

namespace A034178

/-- `A220400(n+1)+A121262(2*n)` -/
def P2871425528517873960.Spec : Prop :=
  ∀ n, P2871425528517873960.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P8560773816750022453

`∑{digits}[A303818(n+1), A054525(#²²)]`
-/

namespace A034178.P8560773816750022453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054525 ((x ^ 2) ^ 2)).sum

end

end A034178.P8560773816750022453

namespace A034178

/-- `∑{digits}[A303818(n+1), A054525(#²²)]` -/
def P8560773816750022453.Spec : Prop :=
  ∀ n, P8560773816750022453.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P5011597577540721365

`A220400(n+1)+2-A040001(n+1)`
-/

namespace A034178.P5011597577540721365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (n + 1) + (2 - A040001 (n + 1))

end

end A034178.P5011597577540721365

namespace A034178

/-- `A220400(n+1)+2-A040001(n+1)` -/
def P5011597577540721365.Spec : Prop :=
  ∀ n, P5011597577540721365.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P17849013362742826004

`A320111(n+1)-floor(A000005(n+1)/2)`
-/

namespace A034178.P17849013362742826004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - ⌊(A000005 (n + 1) : ℚ) / 2⌋

end

end A034178.P17849013362742826004

namespace A034178

/-- `A320111(n+1)-floor(A000005(n+1)/2)` -/
def P17849013362742826004.Spec : Prop :=
  ∀ n, P17849013362742826004.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P3218534101193542810

`A320111(n+1)-A004526(∏{e}[n+1, #+1])`
-/

namespace A034178.P3218534101193542810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - A004526 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A034178.P3218534101193542810

namespace A034178

/-- `A320111(n+1)-A004526(∏{e}[n+1, #+1])` -/
def P3218534101193542810.Spec : Prop :=
  ∀ n, P3218534101193542810.a n = A034178 (n + 1)

end A034178

/-! ## A034178.P6551756801158535682

`∑{d}[n+1, A008836(#)*A176835((n+1)/#)]`
-/

namespace A034178.P6551756801158535682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A176835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034178.P6551756801158535682

namespace A034178

/-- `∑{d}[n+1, A008836(#)*A176835((n+1)/#)]` -/
def P6551756801158535682.Spec : Prop :=
  ∀ n, P6551756801158535682.a n = A034178 (n + 1)

end A034178

/-!
# A034179: Difference between two positive cubes in more than one way.

The programs for A034179, there is no canonical definition to state claims against.
-/

/-! ## A034179.P14332182107098713255

`∪[A014440(n+1), A265625(n+1)]`
-/

namespace A034179.P14332182107098713255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034179.P14332182107098713255

/-!
# A034182: Number of not-necessarily-symmetric n X 2 crossword puzzle grids.

The programs for A034182, the canonical program `A034182.P10462263895861616260` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034182 has offset 1).

The definition of A034182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034182.P10462263895861616260

`2*a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034182

/-- `2*a(n-1)+a(n-2)+4` -/
def P10462263895861616260.Spec : Prop :=
  ∀ n, (P10462263895861616260.a n : ℤ) = A034182 (n + 1)

theorem P10462263895861616260.correct : P10462263895861616260.Spec := by
  intro n
  simp only [A034182, Nat.add_sub_cancel]

end A034182

/-! ## A034182.P17096325468605170413

`A001333(n+2)-2`
-/

namespace A034182.P17096325468605170413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - 2

end

end A034182.P17096325468605170413

namespace A034182

/-- `A001333(n+2)-2` -/
def P17096325468605170413.Spec : Prop :=
  ∀ n, P17096325468605170413.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P1212594552334492575

`ogf((1+2x+x^2)/(1-3x+x^2+x^3))`
-/

namespace A034182.P1212594552334492575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 1, 1] n

end

end A034182.P1212594552334492575

namespace A034182

/-- `ogf((1+2x+x^2)/(1-3x+x^2+x^3))` -/
def P1212594552334492575.Spec : Prop :=
  ∀ n, P1212594552334492575.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P7617738987993181501

`∑[floor(∑[(sqrt(2)+1)^n])]+n`
-/

namespace A034182.P7617738987993181501
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) + 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A034182.P7617738987993181501

namespace A034182

/-- `∑[floor(∑[(sqrt(2)+1)^n])]+n` -/
def P7617738987993181501.Spec : Prop :=
  ∀ n, P7617738987993181501.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P2949862265949658052

`A098894(Δ[n²])`
-/

namespace A034182.P2949862265949658052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A034182.P2949862265949658052

namespace A034182

/-- `A098894(Δ[n²])` -/
def P2949862265949658052.Spec : Prop :=
  ∀ n, P2949862265949658052.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P8884823329725645939

`abs(2-A078057(n+1))`
-/

namespace A034182.P8884823329725645939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A078057 (n + 1)|

end

end A034182.P8884823329725645939

namespace A034182

/-- `abs(2-A078057(n+1))` -/
def P8884823329725645939.Spec : Prop :=
  ∀ n, P8884823329725645939.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P13154706562441593924

`∑[A143607(2*n+1)]`
-/

namespace A034182.P13154706562441593924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034182.P13154706562441593924

namespace A034182

/-- `∑[A143607(2*n+1)]` -/
def P13154706562441593924.Spec : Prop :=
  ∀ n, P13154706562441593924.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P13583028900941252877

`record[A189050(n+1)-2]`
-/

namespace A034182.P13583028900941252877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189050 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034182.P13583028900941252877

namespace A034182

/-- `record[A189050(n+1)-2]` -/
def P13583028900941252877.Spec : Prop :=
  ∀ n, P13583028900941252877.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P17406575165736466181

`∑[record[abs(A249577(n+1))]]`
-/

namespace A034182.P17406575165736466181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249577 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034182.P17406575165736466181

namespace A034182

/-- `∑[record[abs(A249577(n+1))]]` -/
def P17406575165736466181.Spec : Prop :=
  ∀ n, P17406575165736466181.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P2231299134345211327

`or(1, A113224(n+1)-2)`
-/

namespace A034182.P2231299134345211327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113224 (n + 1) - 2)

end

end A034182.P2231299134345211327

namespace A034182

/-- `or(1, A113224(n+1)-2)` -/
def P2231299134345211327.Spec : Prop :=
  ∀ n, P2231299134345211327.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P6832243290836263939

`abs(2-A135246(2*n+1))`
-/

namespace A034182.P6832243290836263939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A135246 (2 * n + 1)|

end

end A034182.P6832243290836263939

namespace A034182

/-- `abs(2-A135246(2*n+1))` -/
def P6832243290836263939.Spec : Prop :=
  ∀ n, P6832243290836263939.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P11730631062124126974

`abs(2-A143607(2*(n+1)))`
-/

namespace A034182.P11730631062124126974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A143607 (2 * (n + 1))|

end

end A034182.P11730631062124126974

namespace A034182

/-- `abs(2-A143607(2*(n+1)))` -/
def P11730631062124126974.Spec : Prop :=
  ∀ n, P11730631062124126974.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P10526807590041775212

`∑[A097564(3*(n+1))-A000007(n)]`
-/

namespace A034182.P10526807590041775212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (3 * (n + 1)) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034182.P10526807590041775212

namespace A034182

/-- `∑[A097564(3*(n+1))-A000007(n)]` -/
def P10526807590041775212.Spec : Prop :=
  ∀ n, P10526807590041775212.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P6439602951288446752

`∑[A001222(2*A006530(n+1))*A000129(n+1)]`
-/

namespace A034182.P6439602951288446752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034182.P6439602951288446752

namespace A034182

/-- `∑[A001222(2*A006530(n+1))*A000129(n+1)]` -/
def P6439602951288446752.Spec : Prop :=
  ∀ n, P6439602951288446752.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P15406688635212613870

`Δ[A129589(n+1)-n]`
-/

namespace A034182.P15406688635212613870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129589 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034182.P15406688635212613870

namespace A034182

/-- `Δ[A129589(n+1)-n]` -/
def P15406688635212613870.Spec : Prop :=
  ∀ n, P15406688635212613870.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P4736899394085138363

`(A100227(n+2)-3)/2`
-/

namespace A034182.P4736899394085138363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100227 (n + 2) - 3 : ℚ) / 2

end

end A034182.P4736899394085138363

namespace A034182

/-- `(A100227(n+2)-3)/2` -/
def P4736899394085138363.Spec : Prop :=
  ∀ n, P4736899394085138363.a n = (A034182 (n + 1) : ℚ)

end A034182

/-! ## A034182.P6702827552013452852

`Δ[∑[A265278(n+1)]-n]`
-/

namespace A034182.P6702827552013452852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034182.P6702827552013452852

namespace A034182

/-- `Δ[∑[A265278(n+1)]-n]` -/
def P6702827552013452852.Spec : Prop :=
  ∀ n, P6702827552013452852.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P10179737509754156645

`Δ[∑[A293004(n+1)]-n]`
-/

namespace A034182.P10179737509754156645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034182.P10179737509754156645

namespace A034182

/-- `Δ[∑[A293004(n+1)]-n]` -/
def P10179737509754156645.Spec : Prop :=
  ∀ n, P10179737509754156645.a n = A034182 (n + 1)

end A034182

/-! ## A034182.P12433352922544946240

`Δ[∑[A098894(2*n+1)]-A098894(2*n+1)]`
-/

namespace A034182.P12433352922544946240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098894 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A098894 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034182.P12433352922544946240

namespace A034182

/-- `Δ[∑[A098894(2*n+1)]-A098894(2*n+1)]` -/
def P12433352922544946240.Spec : Prop :=
  ∀ n, P12433352922544946240.a n = A034182 (n + 1)

end A034182

/-!
# A034184: Not necessarily symmetric n X 3 crossword puzzle grids.

The programs for A034184, there is no canonical definition to state claims against.
-/

/-! ## A034184.P8118200374195648987

`A292357(∑[n+3]+1)`
-/

namespace A034184.P8118200374195648987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034184.P8118200374195648987

/-! ## A034184.P14002599853421146294

`record[A292357(A347633(n+1))]`
-/

namespace A034184.P14002599853421146294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034184.P14002599853421146294

/-! ## A034184.P6213740284396692306

`or(1, A292357(A167614(n+1)))`
-/

namespace A034184.P6213740284396692306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A292357 (A167614 (n + 1)).toNat)

end

end A034184.P6213740284396692306

/-! ## A034184.P9096947774761063637

`A036225(n)*A292357(A167614(n+1))`
-/

namespace A034184.P9096947774761063637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A292357 (A167614 (n + 1)).toNat

end

end A034184.P9096947774761063637

/-! ## A034184.P1949968062063113205

`lcm(A033999(n), A292357(A167614(n+1)))`
-/

namespace A034184.P1949968062063113205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292357 (A167614 (n + 1)).toNat)

end

end A034184.P1949968062063113205

/-!
# A034185: Number of symmetric n X 3 crossword puzzle grids.

The programs for A034185, there is no canonical definition to state claims against.
-/

/-! ## A034185.P6803679934489484040

`∑[A018332(or(1, n)+n)]`
-/

namespace A034185.P6803679934489484040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018332 (Nat.lor 1 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034185.P6803679934489484040

/-! ## A034185.P13299268466151524085

`A176800(A153535(n))`
-/

namespace A034185.P13299268466151524085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (A153535 n).toNat

end

end A034185.P13299268466151524085

/-!
# A034186: Number of symmetric n X 4 crossword puzzle grids.

The programs for A034186, there is no canonical definition to state claims against.
-/

/-! ## A034186.P4206219468430833141

`eq[A023510(n+1), A205563(n+1)]`
-/

namespace A034186.P4206219468430833141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034186.P4206219468430833141

/-!
# A034187: Not necessarily symmetric n X 4 crossword puzzle grids.

The programs for A034187, there is no canonical definition to state claims against.
-/

/-! ## A034187.P5313061329319159279

`A292357(A141214(n+1))`
-/

namespace A034187.P5313061329319159279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A141214 (n + 1)).toNat

end

end A034187.P5313061329319159279

/-! ## A034187.P6579722101118869112

`A292357(A374004(n+1))`
-/

namespace A034187.P6579722101118869112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A374004 (n + 1)).toNat

end

end A034187.P6579722101118869112

/-! ## A034187.P13350622544550724786

`A292357(A155212(n)+5)`
-/

namespace A034187.P13350622544550724786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A155212 n + 5).toNat

end

end A034187.P13350622544550724786

/-! ## A034187.P4923807440340851349

`A292357(A056000(n)+7)`
-/

namespace A034187.P4923807440340851349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A056000 n + 7).toNat

end

end A034187.P4923807440340851349

/-! ## A034187.P13641041679658169583

`A292357(A052905(n)+9)`
-/

namespace A034187.P13641041679658169583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A052905 n + 9).toNat

end

end A034187.P13641041679658169583

/-!
# A034188: Number of binary codes of length 3 with n words.

The programs for A034188, there is no canonical definition to state claims against.
-/

/-! ## A034188.P9135930604557644069

`A106249(A126759(C(8, n)))`
-/

namespace A034188.P9135930604557644069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A126759 (Nat.choose 8 n)).toNat

end

end A034188.P9135930604557644069

/-!
# A034189: Number of binary codes of length 4 with n words.

The programs for A034189, there is no canonical definition to state claims against.
-/

/-! ## A034189.P6589108348520632837

`A039754(n+19)`
-/

namespace A034189.P6589108348520632837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (n + 19)

end

end A034189.P6589108348520632837

/-!
# A034190: Number of binary codes of length 5 with n words.

The programs for A034190, there is no canonical definition to state claims against.
-/

/-! ## A034190.P15740373738934216087

`A039754(n+36)`
-/

namespace A034190.P15740373738934216087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (n + 36)

end

end A034190.P15740373738934216087

/-! ## A034190.P15929182124090597183

`A171876(A044917(n+1)+14)`
-/

namespace A034190.P15929182124090597183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (A044917 (n + 1) + 14).toNat

end

end A034190.P15929182124090597183

/-! ## A034190.P2896057084751681704

`A171876(A187829(n+1)+14)`
-/

namespace A034190.P2896057084751681704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (A187829 (n + 1) + 14).toNat

end

end A034190.P2896057084751681704

/-! ## A034190.P2059143882848293758

`A171876(eq[2, A263110(n+1)])`
-/

namespace A034190.P2059143882848293758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034190.P2059143882848293758

/-! ## A034190.P18114586612653889878

`A171876(∪[A043066(n+1), A153826(n)+1])`
-/

namespace A034190.P18114586612653889878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153826 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A034190.P18114586612653889878

/-!
# A034191: Number of binary codes of length 6 with n words.

The programs for A034191, there is no canonical definition to state claims against.
-/

/-! ## A034191.P10221464327125690588

`A039754(n+69)`
-/

namespace A034191.P10221464327125690588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (n + 69)

end

end A034191.P10221464327125690588

/-! ## A034191.P4375903977036470727

`A171876(n+31)`
-/

namespace A034191.P4375903977036470727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (n + 31)

end

end A034191.P4375903977036470727

/-! ## A034191.P16687541415486875392

`A276777(A153826(n))`
-/

namespace A034191.P16687541415486875392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (A153826 n).toNat

end

end A034191.P16687541415486875392

/-!
# A034192: Number of binary codes of length 7 with n words.

The programs for A034192, there is no canonical definition to state claims against.
-/

/-! ## A034192.P2479770436952328826

`A276777(A043062(n+1))`
-/

namespace A034192.P2479770436952328826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (A043062 (n + 1)).toNat

end

end A034192.P2479770436952328826

/-! ## A034192.P2159565209632254208

`A276777(∑[A276777(n*gcd(7, n%2))])`
-/

namespace A034192.P2159565209632254208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (n * Nat.gcd 7 (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034192.P2159565209632254208

/-!
# A034193: Number of binary codes of length 8 with n words.

The programs for A034193, there is no canonical definition to state claims against.
-/

/-! ## A034193.P3087267917863976880

`A276777(A043075(n+1))`
-/

namespace A034193.P3087267917863976880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (A043075 (n + 1)).toNat

end

end A034193.P3087267917863976880

/-! ## A034193.P17669263743435235029

`A276777(A028310(n)+35)`
-/

namespace A034193.P17669263743435235029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (A028310 n + 35).toNat

end

end A034193.P17669263743435235029

/-! ## A034193.P9580535962004306852

`A276777(A043063(n+2))`
-/

namespace A034193.P9580535962004306852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (A043063 (n + 2)).toNat

end

end A034193.P9580535962004306852

/-!
# A034194: Number of binary codes of length 9 with n words.

The programs for A034194, there is no canonical definition to state claims against.
-/

/-! ## A034194.P17656320909153748787

`A325468(∑[∑[xor(n+1, 2*n)]])`
-/

namespace A034194.P17656320909153748787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034194.P17656320909153748787

/-!
# A034195: Number of binary codes of length 10 with n words.

The programs for A034195, there is no canonical definition to state claims against.
-/

/-! ## A034195.P8205348372643588658

`xor(3, A124204(A326883(n)))`
-/

namespace A034195.P8205348372643588658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A124204 (A326883 n).toNat)

end

end A034195.P8205348372643588658

/-!
# A034196: Number of binary codes of length 11 with n words.

The programs for A034196, there is no canonical definition to state claims against.
-/

/-! ## A034196.P10465981656550893234

`A091998(∏[n!])`
-/

namespace A034196.P10465981656550893234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034196.P10465981656550893234

/-!
# A034197: Number of binary codes of length 12 with n words.

The programs for A034197, there is no canonical definition to state claims against.
-/

/-! ## A034197.P12519059979619394492

`A051495(∑[A038107(n)^A066574(n+1)])`
-/

namespace A034197.P12519059979619394492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038107 n : ℚ) ^ (A066574 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051495 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A034197.P12519059979619394492

/-!
# A034198: Number of binary codes (not necessarily linear) of length n with 3 words.

The programs for A034198, the canonical program `A034198.P495696853797558583` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034198 has offset 1).

The definition of A034198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034198.P2950058127781553522

`floor((n+1)*(2*(n+1)²+21*(n+1)-6)/72)`
-/

namespace A034198.P2950058127781553522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 + 21 * (n + 1) : ℤ) - 6) : ℚ) / 72⌋

end

end A034198.P2950058127781553522

namespace A034198

/-- `floor((n+1)*(2*(n+1)²+21*(n+1)-6)/72)` -/
def P2950058127781553522.Spec : Prop :=
  ∀ n, P2950058127781553522.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P495696853797558583

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=16, a(6)=23`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034198

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P495696853797558583.Spec : Prop :=
  ∀ n, P495696853797558583.a n = A034198 (n + 1)

theorem P495696853797558583.correct : P495696853797558583.Spec := by
  intro n
  simp only [A034198, Nat.add_sub_cancel]

end A034198

/-! ## A034198.P13782121317693501790

`∑[floor(∑[a(n-2)+1]/3)]` with `a(0)=1, a(1)=3`
-/

namespace A034198.P13782121317693501790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034198.P13782121317693501790

namespace A034198

/-- `∑[floor(∑[a(n-2)+1]/3)]` -/
def P13782121317693501790.Spec : Prop :=
  ∀ n, P13782121317693501790.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P15778476207873991039

`∑[A211540(n)+n]`
-/

namespace A034198.P15778476207873991039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034198.P15778476207873991039

namespace A034198

/-- `∑[A211540(n)+n]` -/
def P15778476207873991039.Spec : Prop :=
  ∀ n, P15778476207873991039.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P9386085025704150962

`∑[∑[A011960(n+1)]]`
-/

namespace A034198.P9386085025704150962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034198.P9386085025704150962

namespace A034198

/-- `∑[∑[A011960(n+1)]]` -/
def P9386085025704150962.Spec : Prop :=
  ∀ n, P9386085025704150962.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P8106801853860841773

`∑[∑[A103221(n+1)]]`
-/

namespace A034198.P8106801853860841773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034198.P8106801853860841773

namespace A034198

/-- `∑[∑[A103221(n+1)]]` -/
def P8106801853860841773.Spec : Prop :=
  ∀ n, P8106801853860841773.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P17982931727665522766

`∑[A001399(n+1)-1]`
-/

namespace A034198.P17982931727665522766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034198.P17982931727665522766

namespace A034198

/-- `∑[A001399(n+1)-1]` -/
def P17982931727665522766.Spec : Prop :=
  ∀ n, P17982931727665522766.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P8793391385688922964

`A000601(n+1)-(n+2)`
-/

namespace A034198.P8793391385688922964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) - (n + 2 : ℤ)

end

end A034198.P8793391385688922964

namespace A034198

/-- `A000601(n+1)-(n+2)` -/
def P8793391385688922964.Spec : Prop :=
  ∀ n, P8793391385688922964.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P11988881646829582350

`A175831(n)+A000212(n)`
-/

namespace A034198.P11988881646829582350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175831 n + A000212 n

end

end A034198.P11988881646829582350

namespace A034198

/-- `A175831(n)+A000212(n)` -/
def P11988881646829582350.Spec : Prop :=
  ∀ n, P11988881646829582350.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P10353329628202636019

`A254874(n)-A070333(n)`
-/

namespace A034198.P10353329628202636019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n - A070333 n

end

end A034198.P10353329628202636019

namespace A034198

/-- `A254874(n)-A070333(n)` -/
def P10353329628202636019.Spec : Prop :=
  ∀ n, P10353329628202636019.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P4366005504155613756

`A370349(n)-A212983(n)`
-/

namespace A034198.P4366005504155613756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370349 n - A212983 n

end

end A034198.P4366005504155613756

namespace A034198

/-- `A370349(n)-A212983(n)` -/
def P4366005504155613756.Spec : Prop :=
  ∀ n, P4366005504155613756.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P8446587274794351832

`Δ[A057524(n)]-(n+2)`
-/

namespace A034198.P8446587274794351832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A034198.P8446587274794351832

namespace A034198

/-- `Δ[A057524(n)]-(n+2)` -/
def P8446587274794351832.Spec : Prop :=
  ∀ n, P8446587274794351832.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P3837639384490118313

`A181120(n)+A000212(n+1)`
-/

namespace A034198.P3837639384490118313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A000212 (n + 1)

end

end A034198.P3837639384490118313

namespace A034198

/-- `A181120(n)+A000212(n+1)` -/
def P3837639384490118313.Spec : Prop :=
  ∀ n, P3837639384490118313.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P18209811059998640058

`A181286(n+1)-A173196(n)`
-/

namespace A034198.P18209811059998640058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 (n + 1) - A173196 n

end

end A034198.P18209811059998640058

namespace A034198

/-- `A181286(n+1)-A173196(n)` -/
def P18209811059998640058.Spec : Prop :=
  ∀ n, P18209811059998640058.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P7918399352434521257

`A181120(n+1)+A002620(n+1)`
-/

namespace A034198.P7918399352434521257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 1) + A002620 (n + 1)

end

end A034198.P7918399352434521257

namespace A034198

/-- `A181120(n+1)+A002620(n+1)` -/
def P7918399352434521257.Spec : Prop :=
  ∀ n, P7918399352434521257.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P14276750654067356014

`A000212(n+1)+A175724(n+1)-A008724(n)`
-/

namespace A034198.P14276750654067356014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + (A175724 (n + 1) - A008724 n)

end

end A034198.P14276750654067356014

namespace A034198

/-- `A000212(n+1)+A175724(n+1)-A008724(n)` -/
def P14276750654067356014.Spec : Prop :=
  ∀ n, P14276750654067356014.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P3395250594408900795

`∑[∑[A008615(n+3)]]`
-/

namespace A034198.P3395250594408900795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034198.P3395250594408900795

namespace A034198

/-- `∑[∑[A008615(n+3)]]` -/
def P3395250594408900795.Spec : Prop :=
  ∀ n, P3395250594408900795.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P8458407661622961086

`A175724(n+3)+A174709(n+1)`
-/

namespace A034198.P8458407661622961086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 (n + 3) + A174709 (n + 1)

end

end A034198.P8458407661622961086

namespace A034198

/-- `A175724(n+3)+A174709(n+1)` -/
def P8458407661622961086.Spec : Prop :=
  ∀ n, P8458407661622961086.a n = A034198 (n + 1)

end A034198

/-! ## A034198.P9934848579161859465

`∑[A069905(n+4)]-(n+1)`
-/

namespace A034198.P9934848579161859465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A034198.P9934848579161859465

namespace A034198

/-- `∑[A069905(n+4)]-(n+1)` -/
def P9934848579161859465.Spec : Prop :=
  ∀ n, P9934848579161859465.a n = A034198 (n + 1)

end A034198

/-!
# A034199: Number of binary codes (not necessarily linear) of length n with 4 words.

The programs for A034199, there is no canonical definition to state claims against.
-/

/-! ## A034199.P1332123622672614295

`Δ[∑[A006380(n)]-A001752(n)]`
-/

namespace A034199.P1332123622672614295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006380 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034199.P1332123622672614295

/-! ## A034199.P8153922879748175680

`A006380(n+1)-Δ[A001752(n)]`
-/

namespace A034199.P8153922879748175680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006380 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034199.P8153922879748175680

/-! ## A034199.P12957285295102406091

`A006380(n+1)-A002623(n+1)`
-/

namespace A034199.P12957285295102406091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006380 (n + 1) - A002623 (n + 1)

end

end A034199.P12957285295102406091

/-! ## A034199.P216278876718754128

`A006380(n+1)+A001752(n)-A001752(n+1)`
-/

namespace A034199.P216278876718754128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006380 (n + 1) + (A001752 n - A001752 (n + 1))

end

end A034199.P216278876718754128

