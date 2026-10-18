import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A161200: Numerators in expansion of (1-x)^(3/2).

The programs for A161200, the canonical program `A161200.P10289639632069729149` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161200 has offset 0).

The definition of A161200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161200.P10289639632069729149

`(n+1-7*n/5)*A161202(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161200

/-- `(n+1-7*n/5)*A161202(n)` -/
def P10289639632069729149.Spec : Prop :=
  ∀ n, P10289639632069729149.a n = (A161200 n : ℚ)

end A161200

/-! ## A161200.P8041107355885089956

`A002421(n)/A001316(n)`
-/

namespace A161200.P8041107355885089956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 n : ℚ) / (A001316 n : ℚ)

end

end A161200.P8041107355885089956

namespace A161200

/-- `A002421(n)/A001316(n)` -/
def P8041107355885089956.Spec : Prop :=
  ∀ n, P8041107355885089956.a n = (A161200 n : ℚ)

end A161200

/-! ## A161200.P6183658256787811980

`A002421(n)/Δ[A006046(n)]`
-/

namespace A161200.P6183658256787811980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161200.P6183658256787811980

namespace A161200

/-- `A002421(n)/Δ[A006046(n)]` -/
def P6183658256787811980.Spec : Prop :=
  ∀ n, P6183658256787811980.a n = (A161200 n : ℚ)

end A161200

/-! ## A161200.P9405478367176095231

`A002421(n)/(A038573(n)+1)`
-/

namespace A161200.P9405478367176095231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A161200.P9405478367176095231

namespace A161200

/-- `A002421(n)/(A038573(n)+1)` -/
def P9405478367176095231.Spec : Prop :=
  ∀ n, P9405478367176095231.a n = (A161200 n : ℚ)

end A161200

/-! ## A161200.P13317952226352958052

`A002421(n)/A000079(A000120(n))`
-/

namespace A161200.P13317952226352958052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A161200.P13317952226352958052

namespace A161200

/-- `A002421(n)/A000079(A000120(n))` -/
def P13317952226352958052.Spec : Prop :=
  ∀ n, P13317952226352958052.a n = (A161200 n : ℚ)

end A161200

/-!
# A161201: Numerators in expansion of (1-x)^(-7/2).

The programs for A161201, the canonical program `A161201.P10259147654263294185` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161201 has offset 0).

The definition of A161201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161201.P10259147654263294185

`A020918(n)/A001316(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161201

/-- `A020918(n)/A001316(n)` -/
def P10259147654263294185.Spec : Prop :=
  ∀ n, P10259147654263294185.a n = (A161201 n : ℚ)

end A161201

/-! ## A161201.P14163379712550517794

`A020918(n)/Δ[A006046(n)]`
-/

namespace A161201.P14163379712550517794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161201.P14163379712550517794

namespace A161201

/-- `A020918(n)/Δ[A006046(n)]` -/
def P14163379712550517794.Spec : Prop :=
  ∀ n, P14163379712550517794.a n = (A161201 n : ℚ)

end A161201

/-! ## A161201.P9940202615987940936

`A020918(n)/A000079(A000120(n))`
-/

namespace A161201.P9940202615987940936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A161201.P9940202615987940936

namespace A161201

/-- `A020918(n)/A000079(A000120(n))` -/
def P9940202615987940936.Spec : Prop :=
  ∀ n, P9940202615987940936.a n = (A161201 n : ℚ)

end A161201

/-! ## A161201.P17006415990517090754

`A072285(eq[5, A002262(n)])`
-/

namespace A161201.P17006415990517090754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161201.P17006415990517090754

namespace A161201

/-- `A072285(eq[5, A002262(n)])` -/
def P17006415990517090754.Spec : Prop :=
  ∀ n, P17006415990517090754.a n = A161201 n

end A161201

/-! ## A161201.P14007146610760851977

`A131440(∑[n+2]+3)`
-/

namespace A161201.P14007146610760851977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131440 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A161201.P14007146610760851977

namespace A161201

/-- `A131440(∑[n+2]+3)` -/
def P14007146610760851977.Spec : Prop :=
  ∀ n, P14007146610760851977.a n = A161201 n

end A161201

/-! ## A161201.P1756294232787387710

`A381059(A054000(n+2))`
-/

namespace A161201.P1756294232787387710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381059 (A054000 (n + 2)).toNat

end

end A161201.P1756294232787387710

namespace A161201

/-- `A381059(A054000(n+2))` -/
def P1756294232787387710.Spec : Prop :=
  ∀ n, P1756294232787387710.a n = A161201 n

end A161201

/-! ## A161201.P9949442990129989336

`A381059(2*A005563(n+1))`
-/

namespace A161201.P9949442990129989336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381059 (2 * A005563 (n + 1)).toNat

end

end A161201.P9949442990129989336

namespace A161201

/-- `A381059(2*A005563(n+1))` -/
def P9949442990129989336.Spec : Prop :=
  ∀ n, P9949442990129989336.a n = A161201 n

end A161201

/-!
# A161202: Numerators in expansion of (1-x)^(5/2).

The programs for A161202, the canonical program `A161202.P1779684718391485559` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161202 has offset 0).

The definition of A161202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161202.P1779684718391485559

`A002422(n)/A001316(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161202

/-- `A002422(n)/A001316(n)` -/
def P1779684718391485559.Spec : Prop :=
  ∀ n, P1779684718391485559.a n = (A161202 n : ℚ)

end A161202

/-! ## A161202.P9509948696955561366

`A002422(n)/sqrt(A102376(n))`
-/

namespace A161202.P9509948696955561366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002422 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A161202.P9509948696955561366

namespace A161202

/-- `A002422(n)/sqrt(A102376(n))` -/
def P9509948696955561366.Spec : Prop :=
  ∀ n, P9509948696955561366.a n = (A161202 n : ℝ)

end A161202

/-! ## A161202.P17321328752045100581

`A002422(n)/Δ[A006046(n)]`
-/

namespace A161202.P17321328752045100581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002422 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161202.P17321328752045100581

namespace A161202

/-- `A002422(n)/Δ[A006046(n)]` -/
def P17321328752045100581.Spec : Prop :=
  ∀ n, P17321328752045100581.a n = (A161202 n : ℚ)

end A161202

/-! ## A161202.P13242857109987278714

`A002422(n)/(A038573(n)+1)`
-/

namespace A161202.P13242857109987278714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002422 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A161202.P13242857109987278714

namespace A161202

/-- `A002422(n)/(A038573(n)+1)` -/
def P13242857109987278714.Spec : Prop :=
  ∀ n, P13242857109987278714.a n = (A161202 n : ℚ)

end A161202

/-! ## A161202.P10449649262287335466

`A002422(n)/A048896(2*n)`
-/

namespace A161202.P10449649262287335466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002422 n : ℚ) / (A048896 (2 * n) : ℚ)

end

end A161202.P10449649262287335466

namespace A161202

/-- `A002422(n)/A048896(2*n)` -/
def P10449649262287335466.Spec : Prop :=
  ∀ n, P10449649262287335466.a n = (A161202 n : ℚ)

end A161202

/-!
# A161203: n-th square plus n-th squarefree number.

The programs for A161203, the canonical program `A161203.P4346863006830516735` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161203 has offset 1).

The definition of A161203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161203.P2424508890754984712

`(n+1)²+A005117(n+1)`
-/

namespace A161203.P2424508890754984712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A005117 (n + 1)

end

end A161203.P2424508890754984712

namespace A161203

/-- `(n+1)²+A005117(n+1)` -/
def P2424508890754984712.Spec : Prop :=
  ∀ n, P2424508890754984712.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P2523619807720660094

`comp[A105570(n)]+(n+1)²`
-/

namespace A161203.P2523619807720660094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) ^ 2

end

end A161203.P2523619807720660094

namespace A161203

/-- `comp[A105570(n)]+(n+1)²` -/
def P2523619807720660094.Spec : Prop :=
  ∀ n, (P2523619807720660094.a n : ℤ) = A161203 (n + 1)

end A161203

/-! ## A161203.P15173809014506414909

`record[A003967(n+1)]+(n+1)²`
-/

namespace A161203.P15173809014506414909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P15173809014506414909

namespace A161203

/-- `record[A003967(n+1)]+(n+1)²` -/
def P15173809014506414909.Spec : Prop :=
  ∀ n, P15173809014506414909.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P16271228401497609826

`record[A007913(n+1)]+(n+1)²`
-/

namespace A161203.P16271228401497609826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P16271228401497609826

namespace A161203

/-- `record[A007913(n+1)]+(n+1)²` -/
def P16271228401497609826.Spec : Prop :=
  ∀ n, P16271228401497609826.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P5266689774587378227

`record[A007947(n+1)]+(n+1)²`
-/

namespace A161203.P5266689774587378227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P5266689774587378227

namespace A161203

/-- `record[A007947(n+1)]+(n+1)²` -/
def P5266689774587378227.Spec : Prop :=
  ∀ n, P5266689774587378227.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P4394583092505200413

`(n+1)²+record[A325978(n+1)]`
-/

namespace A161203.P4394583092505200413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161203.P4394583092505200413

namespace A161203

/-- `(n+1)²+record[A325978(n+1)]` -/
def P4394583092505200413.Spec : Prop :=
  ∀ n, P4394583092505200413.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P4346863006830516735

`record[abs(A055615(n+1))]+(n+1)²`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A161203

/-- `record[abs(A055615(n+1))]+(n+1)²` -/
def P4346863006830516735.Spec : Prop :=
  ∀ n, P4346863006830516735.a n = A161203 (n + 1)

theorem P4346863006830516735.correct : P4346863006830516735.Spec := by
  intro n
  simp only [A161203, Nat.add_sub_cancel]

end A161203

/-! ## A161203.P16060815280146299633

`A243348(n+1)+(n+2)*(n+1)`
-/

namespace A161203.P16060815280146299633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + ((n + 2) * (n + 1) : ℤ)

end

end A161203.P16060815280146299633

namespace A161203

/-- `A243348(n+1)+(n+2)*(n+1)` -/
def P16060815280146299633.Spec : Prop :=
  ∀ n, P16060815280146299633.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P9901599390631296202

`A005563(n)+A005117(n+1)+1`
-/

namespace A161203.P9901599390631296202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (A005117 (n + 1) + 1)

end

end A161203.P9901599390631296202

namespace A161203

/-- `A005563(n)+A005117(n+1)+1` -/
def P9901599390631296202.Spec : Prop :=
  ∀ n, P9901599390631296202.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P10203513844666235403

`A005117(n+1)+A002378(n)+1+n`
-/

namespace A161203.P10203513844666235403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A002378 n + 1 + (n : ℤ)

end

end A161203.P10203513844666235403

namespace A161203

/-- `A005117(n+1)+A002378(n)+1+n` -/
def P10203513844666235403.Spec : Prop :=
  ∀ n, P10203513844666235403.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P6290617734159502243

`A000217(n+1)+A005117(n+1)+A000217(n)`
-/

namespace A161203.P6290617734159502243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A005117 (n + 1) + A000217 n)

end

end A161203.P6290617734159502243

namespace A161203

/-- `A000217(n+1)+A005117(n+1)+A000217(n)` -/
def P6290617734159502243.Spec : Prop :=
  ∀ n, P6290617734159502243.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P15617310343404582087

`A000330(n+1)+A005117(n+1)-A000330(n)`
-/

namespace A161203.P15617310343404582087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A005117 (n + 1) - A000330 n)

end

end A161203.P15617310343404582087

namespace A161203

/-- `A000330(n+1)+A005117(n+1)-A000330(n)` -/
def P15617310343404582087.Spec : Prop :=
  ∀ n, P15617310343404582087.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P2074843925517515487

`record[∏{p}[n, #]]+(n+1)²`
-/

namespace A161203.P2074843925517515487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1) ^ 2

end

end A161203.P2074843925517515487

namespace A161203

/-- `record[∏{p}[n, #]]+(n+1)²` -/
def P2074843925517515487.Spec : Prop :=
  ∀ n, (P2074843925517515487.a n : ℤ) = A161203 (n + 1)

end A161203

/-! ## A161203.P2298522517057479456

`eq[n, ∏{p}[n, #]]+(n+1)²`
-/

namespace A161203.P2298522517057479456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1) ^ 2

end

end A161203.P2298522517057479456

namespace A161203

/-- `eq[n, ∏{p}[n, #]]+(n+1)²` -/
def P2298522517057479456.Spec : Prop :=
  ∀ n, (P2298522517057479456.a n : ℤ) = A161203 (n + 1)

end A161203

/-! ## A161203.P8238532354008126680

`record[A019555(n+1)]+(n+1)²`
-/

namespace A161203.P8238532354008126680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P8238532354008126680

namespace A161203

/-- `record[A019555(n+1)]+(n+1)²` -/
def P8238532354008126680.Spec : Prop :=
  ∀ n, P8238532354008126680.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P15600478064738736586

`(n+1)²+record[A056552(n+1)]`
-/

namespace A161203.P15600478064738736586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161203.P15600478064738736586

namespace A161203

/-- `(n+1)²+record[A056552(n+1)]` -/
def P15600478064738736586.Spec : Prop :=
  ∀ n, P15600478064738736586.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P4793197872073192044

`A088610(2*n+1)+(n+1)²`
-/

namespace A161203.P4793197872073192044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P4793197872073192044

namespace A161203

/-- `A088610(2*n+1)+(n+1)²` -/
def P4793197872073192044.Spec : Prop :=
  ∀ n, P4793197872073192044.a n = A161203 (n + 1)

end A161203

/-! ## A161203.P10676123514771049493

`A374600((n+1)²)+(n+1)²`
-/

namespace A161203.P10676123514771049493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374600 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P10676123514771049493

namespace A161203

/-- `A374600((n+1)²)+(n+1)²` -/
def P10676123514771049493.Spec : Prop :=
  ∀ n, P10676123514771049493.a n = A161203 (n + 1)

end A161203

/-!
# A161204: a(0)=2. a(n+1) = 2*a(n) + period 4: repeat -5,1,3,1.

The programs for A161204, the canonical program `A161204.P7572225781243277688` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161204 has offset 0).

The definition of A161204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161204.P10166923665660715091

`a(n-4)+2^(n-4)` with `a(0)=2, a(1)=-1, a(2)=-1, a(3)=1`
-/

namespace A161204.P10166923665660715091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, -1, -1, 1] fun n a =>
  a (n - 4) + (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)

end

end A161204.P10166923665660715091

namespace A161204

/-- `a(n-4)+2^(n-4)` -/
def P10166923665660715091.Spec : Prop :=
  ∀ n, P10166923665660715091.a n = (A161204 n : ℚ)

end A161204

/-! ## A161204.P7572225781243277688

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=2, a(1)=-1, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161204

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P7572225781243277688.Spec : Prop :=
  ∀ n, P7572225781243277688.a n = A161204 n

theorem P7572225781243277688.correct : P7572225781243277688.Spec := by
  intro n
  simp only [A161204]

end A161204

/-! ## A161204.P2731901164060759093

`ogf((-2+3x+2x^2-x^3)/(-1+x+x^2+x^3+2x^4))`
-/

namespace A161204.P2731901164060759093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -2, 1] [1, -1, -1, -1, -2] n

end

end A161204.P2731901164060759093

namespace A161204

/-- `ogf((-2+3x+2x^2-x^3)/(-1+x+x^2+x^3+2x^4))` -/
def P2731901164060759093.Spec : Prop :=
  ∀ n, P2731901164060759093.a n = A161204 n

end A161204

/-! ## A161204.P14974844195091043663

`A139800(n)+A087960(n)`
-/

namespace A161204.P14974844195091043663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 n + A087960 n

end

end A161204.P14974844195091043663

namespace A161204

/-- `A139800(n)+A087960(n)` -/
def P14974844195091043663.Spec : Prop :=
  ∀ n, P14974844195091043663.a n = A161204 n

end A161204

/-! ## A161204.P16516027542702953066

`A228826(n)+A181586(n)`
-/

namespace A161204.P16516027542702953066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n + A181586 n

end

end A161204.P16516027542702953066

namespace A161204

/-- `A228826(n)+A181586(n)` -/
def P16516027542702953066.Spec : Prop :=
  ∀ n, P16516027542702953066.a n = A161204 n

end A161204

/-! ## A161204.P12596512128661395257

`A180343(n)+A131800(n+3)`
-/

namespace A161204.P12596512128661395257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180343 n + A131800 (n + 3)

end

end A161204.P12596512128661395257

namespace A161204

/-- `A180343(n)+A131800(n+3)` -/
def P12596512128661395257.Spec : Prop :=
  ∀ n, P12596512128661395257.a n = A161204 n

end A161204

/-! ## A161204.P12688015894342265618

`A057077(n+1)+A181586(n)+A056594(n)`
-/

namespace A161204.P12688015894342265618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) + (A181586 n + A056594 n)

end

end A161204.P12688015894342265618

namespace A161204

/-- `A057077(n+1)+A181586(n)+A056594(n)` -/
def P12688015894342265618.Spec : Prop :=
  ∀ n, P12688015894342265618.a n = A161204 n

end A161204

/-! ## A161204.P9828432347011925556

`A139800(n)+A112030(n+1)/A010684(n)`
-/

namespace A161204.P9828432347011925556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139800 n : ℚ) + (A112030 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A161204.P9828432347011925556

namespace A161204

/-- `A139800(n)+A112030(n+1)/A010684(n)` -/
def P9828432347011925556.Spec : Prop :=
  ∀ n, P9828432347011925556.a n = (A161204 n : ℚ)

end A161204

/-! ## A161204.P9410470204108346641

`Δ[A180343(n)]`
-/

namespace A161204.P9410470204108346641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161204.P9410470204108346641

namespace A161204

/-- `Δ[A180343(n)]` -/
def P9410470204108346641.Spec : Prop :=
  ∀ n, P9410470204108346641.a n = A161204 n

end A161204

/-! ## A161204.P1332580979300558182

`A180343(n+1)-A180343(n)`
-/

namespace A161204.P1332580979300558182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180343 (n + 1) - A180343 n

end

end A161204.P1332580979300558182

namespace A161204

/-- `A180343(n+1)-A180343(n)` -/
def P1332580979300558182.Spec : Prop :=
  ∀ n, P1332580979300558182.a n = A161204 n

end A161204

/-!
# A161205: Triangle read by rows in which row n lists 2n-1 followed by 2n numbers 2n.

The programs for A161205, the canonical program `A161205.P11292021648703236225` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161205 has offset 1).

The definition of A161205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161205.P11292021648703236225

`floor(sqrt(n))+floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161205

/-- `floor(sqrt(n))+floor(sqrt(n+1))` -/
def P11292021648703236225.Spec : Prop :=
  ∀ n, (P11292021648703236225.a n : ℤ) = A161205 (n + 1)

theorem P11292021648703236225.correct : P11292021648703236225.Spec := by
  intro n
  simp only [A161205, Nat.add_sub_cancel]

end A161205

/-! ## A161205.P12023501012043098501

`∑[char[∑[gcd(n, n%2)]]]`
-/

namespace A161205.P12023501012043098501
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P12023501012043098501

namespace A161205

/-- `∑[char[∑[gcd(n, n%2)]]]` -/
def P12023501012043098501.Spec : Prop :=
  ∀ n, (P12023501012043098501.a n : ℤ) = A161205 (n + 1)

end A161205

/-! ## A161205.P15314415283497313467

`∑[char[∑[n^((n+1)%2)]]]`
-/

namespace A161205.P15314415283497313467
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P15314415283497313467

namespace A161205

/-- `∑[char[∑[n^((n+1)%2)]]]` -/
def P15314415283497313467.Spec : Prop :=
  ∀ n, (P15314415283497313467.a n : ℤ) = A161205 (n + 1)

end A161205

/-! ## A161205.P2448333908211895383

`∑[char[∑[n^and(1, n+1)]]]`
-/

namespace A161205.P2448333908211895383
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P2448333908211895383

namespace A161205

/-- `∑[char[∑[n^and(1, n+1)]]]` -/
def P2448333908211895383.Spec : Prop :=
  ∀ n, (P2448333908211895383.a n : ℤ) = A161205 (n + 1)

end A161205

/-! ## A161205.P15363896519816154403

`abs(2*n+1-∪[2*n+1, (n+1)*2*n])`
-/

namespace A161205.P15363896519816154403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)|

end

end A161205.P15363896519816154403

namespace A161205

/-- `abs(2*n+1-∪[2*n+1, (n+1)*2*n])` -/
def P15363896519816154403.Spec : Prop :=
  ∀ n, P15363896519816154403.a n = A161205 (n + 1)

end A161205

/-! ## A161205.P11991337952786839954

`∑[char[A131805(n)]]`
-/

namespace A161205.P11991337952786839954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P11991337952786839954

namespace A161205

/-- `∑[char[A131805(n)]]` -/
def P11991337952786839954.Spec : Prop :=
  ∀ n, (P11991337952786839954.a n : ℤ) = A161205 (n + 1)

end A161205

/-! ## A161205.P14777288283765327122

`∑[char[A135276(n)]]`
-/

namespace A161205.P14777288283765327122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P14777288283765327122

namespace A161205

/-- `∑[char[A135276(n)]]` -/
def P14777288283765327122.Spec : Prop :=
  ∀ n, (P14777288283765327122.a n : ℤ) = A161205 (n + 1)

end A161205

/-! ## A161205.P14167797363661958631

`∑[floor(1/A025564(n))]`
-/

namespace A161205.P14167797363661958631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A025564 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P14167797363661958631

namespace A161205

/-- `∑[floor(1/A025564(n))]` -/
def P14167797363661958631.Spec : Prop :=
  ∀ n, P14167797363661958631.a n = A161205 (n + 1)

end A161205

/-! ## A161205.P552926540575592400

`∑[char[A137224(n)-1]]`
-/

namespace A161205.P552926540575592400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P552926540575592400

namespace A161205

/-- `∑[char[A137224(n)-1]]` -/
def P552926540575592400.Spec : Prop :=
  ∀ n, (P552926540575592400.a n : ℤ) = A161205 (n + 1)

end A161205

/-! ## A161205.P13640537477698117653

`∑[floor(1/A004737(n+1))]`
-/

namespace A161205.P13640537477698117653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A004737 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P13640537477698117653

namespace A161205

/-- `∑[floor(1/A004737(n+1))]` -/
def P13640537477698117653.Spec : Prop :=
  ∀ n, P13640537477698117653.a n = A161205 (n + 1)

end A161205

/-! ## A161205.P8963154610250789363

`∑[floor(1/A097853(n+1))]`
-/

namespace A161205.P8963154610250789363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A097853 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P8963154610250789363

namespace A161205

/-- `∑[floor(1/A097853(n+1))]` -/
def P8963154610250789363.Spec : Prop :=
  ∀ n, P8963154610250789363.a n = A161205 (n + 1)

end A161205

/-! ## A161205.P11309382056701714954

`∑[floor(1/A124258(n+1))]`
-/

namespace A161205.P11309382056701714954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A124258 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161205.P11309382056701714954

namespace A161205

/-- `∑[floor(1/A124258(n+1))]` -/
def P11309382056701714954.Spec : Prop :=
  ∀ n, P11309382056701714954.a n = A161205 (n + 1)

end A161205

/-! ## A161205.P3992876759052909129

`A284359(A056847(n+1))`
-/

namespace A161205.P3992876759052909129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A056847 (n + 1)).toNat

end

end A161205.P3992876759052909129

namespace A161205

/-- `A284359(A056847(n+1))` -/
def P3992876759052909129.Spec : Prop :=
  ∀ n, P3992876759052909129.a n = A161205 (n + 1)

end A161205

/-! ## A161205.P396577463315301066

`A092038(A265359(n+1))`
-/

namespace A161205.P396577463315301066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A265359 (n + 1)).toNat

end

end A161205.P396577463315301066

namespace A161205

/-- `A092038(A265359(n+1))` -/
def P396577463315301066.Spec : Prop :=
  ∀ n, P396577463315301066.a n = A161205 (n + 1)

end A161205

/-!
# A161206: V-toothpick (or honeycomb) sequence (see Comments lines for definition).

The programs for A161206, there is no canonical definition to state claims against.
-/

/-! ## A161206.P8335522135236723255

`A161207(n)+a(n-1)` with `a(0)=0`
-/

namespace A161206.P8335522135236723255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161207 n + a (n - 1)

end

end A161206.P8335522135236723255

/-! ## A161206.P11892790681900493298

`∑[A161207(abs(1-n)+1)]-2`
-/

namespace A161206.P11892790681900493298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A161206.P11892790681900493298

/-! ## A161206.P15338856928006439976

`abs(1-∑[A161207(A028310(n))])`
-/

namespace A161206.P15338856928006439976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A161206.P15338856928006439976

/-! ## A161206.P7788843291545677340

`A161207(n)+floor(a(A023443(n)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A161206.P7788843291545677340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161207 n + a (A023443 n).toNat

end

end A161206.P7788843291545677340

/-! ## A161206.P8434553755378604535

`abs(2-∑[A161207(A000038(n)+n)])`
-/

namespace A161206.P8434553755378604535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A161206.P8434553755378604535

/-! ## A161206.P17533839154802989839

`∑[A057427(n)*A161207(A028310(n))]`
-/

namespace A161206.P17533839154802989839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A161207 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161206.P17533839154802989839

/-! ## A161206.P9195865853166088663

`∑[A161207(A028310(n))*A178334(n)]`
-/

namespace A161206.P9195865853166088663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161206.P9195865853166088663

/-! ## A161206.P9755597865237178807

`∑[A161207(A028310(n))%A000070(n)]`
-/

namespace A161206.P9755597865237178807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161207 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161206.P9755597865237178807

/-! ## A161206.P9489611858417668303

`∑[A002828(n²)*A161207(A028310(n))]`
-/

namespace A161206.P9489611858417668303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A161207 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161206.P9489611858417668303

/-! ## A161206.P6927660837120860420

`∑[A000040(n+1)%2*A161207(A028310(n))]`
-/

namespace A161206.P6927660837120860420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A161207 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161206.P6927660837120860420

/-!
# A161207: First differences of A161206.

The programs for A161207, there is no canonical definition to state claims against.
-/

/-! ## A161207.P8522158864688023957

`A036453(n+1)*A161209(A028310(n))`
-/

namespace A161207.P8522158864688023957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A161209 (A028310 n).toNat

end

end A161207.P8522158864688023957

/-! ## A161207.P118632019048552510

`(2-A000007(n))*A161209(A028310(n))`
-/

namespace A161207.P118632019048552510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A161209 (A028310 n).toNat

end

end A161207.P118632019048552510

/-! ## A161207.P7624835426864120265

`gcd(2, A000010(n+2))*A161209(A028310(n))`
-/

namespace A161207.P7624835426864120265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A161209 (A028310 n).toNat

end

end A161207.P7624835426864120265

/-! ## A161207.P2615424921320970989

`A000032(C(2, n+2))*A161209(A028310(n))`
-/

namespace A161207.P2615424921320970989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A161209 (A028310 n).toNat

end

end A161207.P2615424921320970989

/-! ## A161207.P14108116583251612904

`A020639(2*a(n-1))*A161209(A028310(n))` with `a(0)=1`
-/

namespace A161207.P14108116583251612904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (2 * a (n - 1)).toNat * A161209 (A028310 n).toNat

end

end A161207.P14108116583251612904

/-! ## A161207.P11162799635400426329

`A014963(A001316(n))*A161209(A028310(n))`
-/

namespace A161207.P11162799635400426329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A161209 (A028310 n).toNat

end

end A161207.P11162799635400426329

/-! ## A161207.P17673272650580298627

`A020639(A004277(n))*A161209(A028310(n))`
-/

namespace A161207.P17673272650580298627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A161209 (A028310 n).toNat

end

end A161207.P17673272650580298627

/-! ## A161207.P3239035753541891765

`A001222(2*A006530(n+1))*A161209(A028310(n))`
-/

namespace A161207.P3239035753541891765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A161209 (A028310 n).toNat

end

end A161207.P3239035753541891765

/-! ## A161207.P11072937838425584699

`A001222(2*A020639(n+1))*A161209(A028310(n))`
-/

namespace A161207.P11072937838425584699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A020639 (n + 1)).toNat * A161209 (A028310 n).toNat

end

end A161207.P11072937838425584699

/-!
# A161208: a(n) = (A161206(n+1)-1)/2.

The programs for A161208, there is no canonical definition to state claims against.
-/

/-! ## A161208.P2847560690841601191

`(A161206(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161208.P2847560690841601191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161206 (n + 1) - 1 : ℚ) / 2

end

end A161208.P2847560690841601191

/-! ## A161208.P13127581136806403575

`A161209(n)+a(n-1)` with `a(0)=0`
-/

namespace A161208.P13127581136806403575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161209 n + a (n - 1)

end

end A161208.P13127581136806403575

/-! ## A161208.P10818386379513605415

`∑[floor(A161207(n+1)/2)]`
-/

namespace A161208.P10818386379513605415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161207 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161208.P10818386379513605415

/-! ## A161208.P535676947103492674

`floor(∑[A161207(Δ[n²]-n)/2])`
-/

namespace A161208.P535676947103492674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161207 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A161208.P535676947103492674

/-! ## A161208.P4114423598135899349

`A004524(∑[A161207(n+1)])`
-/

namespace A161208.P4114423598135899349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161208.P4114423598135899349

/-! ## A161208.P429669289567634961

`A004526(∑[A161207(n+1)])`
-/

namespace A161208.P429669289567634961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161208.P429669289567634961

/-! ## A161208.P10426314617503758653

`A028242(∑[A161207(n+1)])`
-/

namespace A161208.P10426314617503758653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161208.P10426314617503758653

/-! ## A161208.P1195473402428635325

`A057979(∑[A161207(n+1)])`
-/

namespace A161208.P1195473402428635325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161208.P1195473402428635325

/-! ## A161208.P15372583495529951228

`A123108(∑[A161207(n+1)])`
-/

namespace A161208.P15372583495529951228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161208.P15372583495529951228

/-! ## A161208.P12050372309094501157

`∑[A161209(A028310(n))]-1`
-/

namespace A161208.P12050372309094501157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161209 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161208.P12050372309094501157

/-!
# A161209: a(n) = A161207(n+1)/2.

The programs for A161209, there is no canonical definition to state claims against.
-/

/-! ## A161209.P4175262654381935560

`A161207(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161209.P4175262654381935560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161207 (n + 2) : ℚ) / 2

end

end A161209.P4175262654381935560

/-! ## A161209.P2189771537882561449

`a(n-1)*ratio[A161207(n+1)]` with `a(0)=1`
-/

namespace A161209.P2189771537882561449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161209.P2189771537882561449

/-! ## A161209.P10944470241388221933

`floor(A161207(n-(log2(1/2)-1))/2)`
-/

namespace A161209.P10944470241388221933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161207 (SequenceMachineLib.roundAway ((n : ℝ) - (Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1))).toNat : ℚ) / 2⌋

end

end A161209.P10944470241388221933

/-! ## A161209.P9790174974313459554

`A001281(A161207(n+2))`
-/

namespace A161209.P9790174974313459554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161207 (n + 2)).toNat

end

end A161209.P9790174974313459554

/-! ## A161209.P7463614054922196075

`A004524(A161207(n+2)+1)`
-/

namespace A161209.P7463614054922196075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161207 (n + 2) + 1).toNat

end

end A161209.P7463614054922196075

/-! ## A161209.P11347852998977285709

`A004526(A161207(n+2)+1)`
-/

namespace A161209.P11347852998977285709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A161207 (n + 2) + 1).toNat

end

end A161209.P11347852998977285709

/-! ## A161209.P971341759669737738

`A028242(A161207(n+2)+1)`
-/

namespace A161209.P971341759669737738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A161207 (n + 2) + 1).toNat

end

end A161209.P971341759669737738

/-! ## A161209.P9824847990086360547

`A057979(A161207(n+2)+1)`
-/

namespace A161209.P9824847990086360547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A161207 (n + 2) + 1).toNat

end

end A161209.P9824847990086360547

/-! ## A161209.P13107513658265849916

`A123108(A161207(n+2)+1)`
-/

namespace A161209.P13107513658265849916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A161207 (n + 2) + 1).toNat

end

end A161209.P13107513658265849916

/-! ## A161209.P13893078279316038601

`A001057(A161207(n+2)-1)`
-/

namespace A161209.P13893078279316038601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A161207 (n + 2) - 1).toNat

end

end A161209.P13893078279316038601

/-!
# A161216: a(n) = A161210(n)*4.

The programs for A161216, there is no canonical definition to state claims against.
-/

/-! ## A161216.P1826845193937970843

`A161210(n)*4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161216.P1826845193937970843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161210 n * 4

end

end A161216.P1826845193937970843

/-! ## A161216.P12050110219393788521

`record[(n*(10*n-6))%Δ[floor(3*n/2)²]]`
-/

namespace A161216.P12050110219393788521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ((10 * n : ℤ) - 6)) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161216.P12050110219393788521

/-! ## A161216.P1776503400417076056

`2*A161212(n)`
-/

namespace A161216.P1776503400417076056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161212 n

end

end A161216.P1776503400417076056

/-!
# A161217: a(n) = Sum_{d|n} phi(n/d)^2*2^(d+1).

The programs for A161217, there is no canonical definition to state claims against.
-/

/-! ## A161217.P15689509946275692586

`2*A160620(n)`
-/

namespace A161217.P15689509946275692586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160620 n

end

end A161217.P15689509946275692586

/-! ## A161217.P6374944833898841318

`A160620(A005843(n)-n)/(1-1/2)`
-/

namespace A161217.P6374944833898841318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160620 (A005843 n - (n : ℤ)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A161217.P6374944833898841318

/-! ## A161217.P7504285316906531669

`A160620(A005843(n)/2)+A160620(n)`
-/

namespace A161217.P7504285316906531669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160620 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A160620 n

end

end A161217.P7504285316906531669

/-! ## A161217.P12020960830348997696

`A005843(A160620(n))`
-/

namespace A161217.P12020960830348997696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160620 n).toNat

end

end A161217.P12020960830348997696

/-! ## A161217.P15939587669271930679

`A346004(A160620(n)/(1-1/2))`
-/

namespace A161217.P15939587669271930679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 (SequenceMachineLib.roundAway ((A160620 n : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A161217.P15939587669271930679

/-!
# A161218: Primes in A161206.

The programs for A161218, there is no canonical definition to state claims against.
-/

/-! ## A161218.P11978768373075098700

`p?[A161206(n)]`
-/

namespace A161218.P11978768373075098700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161218.P11978768373075098700

/-! ## A161218.P10987519615846709623

`p?[∑[A161207(n+1)]]`
-/

namespace A161218.P10987519615846709623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161218.P10987519615846709623

/-! ## A161218.P2219395354553840323

`p?[2*A161208(n)+1]`
-/

namespace A161218.P2219395354553840323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161208 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161218.P2219395354553840323

/-! ## A161218.P13766666797867688582

`p?[A161207(n)+a(n-1)]` with `a(0)=0`
-/

namespace A161218.P13766666797867688582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A161207 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161218.P13766666797867688582

/-! ## A161218.P1920055602737445861

`record[A020639(A161206(n+2))]`
-/

namespace A161218.P1920055602737445861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161206 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161218.P1920055602737445861

/-!
# A161219: a(n) = (1/n) * Sum_{d|n} phi(n/d)*2^(d+1).

The programs for A161219, the canonical program `A161219.P4715218201372608573` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161219 has offset 1).

The definition of A161219 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161219.P4715218201372608573

`2*A000031(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A161219

/-- `2*A000031(n+1)` -/
def P4715218201372608573.Spec : Prop :=
  ∀ n, P4715218201372608573.a n = A161219 (n + 1)

theorem P4715218201372608573.correct : P4715218201372608573.Spec := by
  intro n
  simp only [A161219, Nat.add_sub_cancel]

end A161219

/-! ## A161219.P5583950190503608744

`2*(A008965(n+1)+1)`
-/

namespace A161219.P5583950190503608744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008965 (n + 1) + 1)

end

end A161219.P5583950190503608744

namespace A161219

/-- `2*(A008965(n+1)+1)` -/
def P5583950190503608744.Spec : Prop :=
  ∀ n, P5583950190503608744.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P5422031422038868174

`2*(A052823(n+1)+2)`
-/

namespace A161219.P5422031422038868174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052823 (n + 1) + 2)

end

end A161219.P5422031422038868174

namespace A161219

/-- `2*(A052823(n+1)+2)` -/
def P5422031422038868174.Spec : Prop :=
  ∀ n, P5422031422038868174.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P17943250481154156991

`2*(Δ[A052825(n+1)]+1)`
-/

namespace A161219.P17943250481154156991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A161219.P17943250481154156991

namespace A161219

/-- `2*(Δ[A052825(n+1)]+1)` -/
def P17943250481154156991.Spec : Prop :=
  ∀ n, P17943250481154156991.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P5518681144696963782

`2*(A000016(n+1)+A000013(n+1))`
-/

namespace A161219.P5518681144696963782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000016 (n + 1) + A000013 (n + 1))

end

end A161219.P5518681144696963782

namespace A161219

/-- `2*(A000016(n+1)+A000013(n+1))` -/
def P5518681144696963782.Spec : Prop :=
  ∀ n, P5518681144696963782.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P2182950595936719422

`2*(A059076(n+1)+A000029(n+1))`
-/

namespace A161219.P2182950595936719422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059076 (n + 1) + A000029 (n + 1))

end

end A161219.P2182950595936719422

namespace A161219

/-- `2*(A059076(n+1)+A000029(n+1))` -/
def P2182950595936719422.Spec : Prop :=
  ∀ n, P2182950595936719422.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P6456001533995293422

`2*(A066656(n+1)+A001037(n+1))`
-/

namespace A161219.P6456001533995293422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066656 (n + 1) + A001037 (n + 1))

end

end A161219.P6456001533995293422

namespace A161219

/-- `2*(A066656(n+1)+A001037(n+1))` -/
def P6456001533995293422.Spec : Prop :=
  ∀ n, P6456001533995293422.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P10097753730801773936

`2*(A266977(n+1)+A262232(n+1))`
-/

namespace A161219.P10097753730801773936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A266977 (n + 1) + A262232 (n + 1))

end

end A161219.P10097753730801773936

namespace A161219

/-- `2*(A266977(n+1)+A262232(n+1))` -/
def P10097753730801773936.Spec : Prop :=
  ∀ n, P10097753730801773936.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P17794516380091930869

`A000031(n+1)+A000031(A028310(n+1))`
-/

namespace A161219.P17794516380091930869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + A000031 (A028310 (n + 1)).toNat

end

end A161219.P17794516380091930869

namespace A161219

/-- `A000031(n+1)+A000031(A028310(n+1))` -/
def P17794516380091930869.Spec : Prop :=
  ∀ n, P17794516380091930869.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P15597634539601096772

`A000013(n+1)+A000031(n+1)+A000016(n+1)`
-/

namespace A161219.P15597634539601096772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A000031 (n + 1) + A000016 (n + 1))

end

end A161219.P15597634539601096772

namespace A161219

/-- `A000013(n+1)+A000031(n+1)+A000016(n+1)` -/
def P15597634539601096772.Spec : Prop :=
  ∀ n, P15597634539601096772.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P17287527038169824261

`A000013(n+1)+A063776(n+1)+A000013(n+1)`
-/

namespace A161219.P17287527038169824261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A063776 (n + 1) + A000013 (n + 1))

end

end A161219.P17287527038169824261

namespace A161219

/-- `A000013(n+1)+A063776(n+1)+A000013(n+1)` -/
def P17287527038169824261.Spec : Prop :=
  ∀ n, P17287527038169824261.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P494261558023342675

`A000031(n+1)+A066656(n+1)+A001037(n+1)`
-/

namespace A161219.P494261558023342675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + (A066656 (n + 1) + A001037 (n + 1))

end

end A161219.P494261558023342675

namespace A161219

/-- `A000031(n+1)+A066656(n+1)+A001037(n+1)` -/
def P494261558023342675.Spec : Prop :=
  ∀ n, P494261558023342675.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P3766953398346026264

`A000013(n+1)+A096010(n+1)+A008965(n+1)`
-/

namespace A161219.P3766953398346026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A096010 (n + 1) + A008965 (n + 1))

end

end A161219.P3766953398346026264

namespace A161219

/-- `A000013(n+1)+A096010(n+1)+A008965(n+1)` -/
def P3766953398346026264.Spec : Prop :=
  ∀ n, P3766953398346026264.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P2383294499758571403

`Δ[2*∑[A000031(n)]]`
-/

namespace A161219.P2383294499758571403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161219.P2383294499758571403

namespace A161219

/-- `Δ[2*∑[A000031(n)]]` -/
def P2383294499758571403.Spec : Prop :=
  ∀ n, P2383294499758571403.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P6562723531791296311

`4/(n+1)*A034738(n+1)`
-/

namespace A161219.P6562723531791296311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A034738 (n + 1) : ℚ)

end

end A161219.P6562723531791296311

namespace A161219

/-- `4/(n+1)*A034738(n+1)` -/
def P6562723531791296311.Spec : Prop :=
  ∀ n, P6562723531791296311.a n = (A161219 (n + 1) : ℚ)

end A161219

/-! ## A161219.P16609464558621550261

`2/(n+1)*A053635(n+1)`
-/

namespace A161219.P16609464558621550261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A053635 (n + 1) : ℚ)

end

end A161219.P16609464558621550261

namespace A161219

/-- `2/(n+1)*A053635(n+1)` -/
def P16609464558621550261.Spec : Prop :=
  ∀ n, P16609464558621550261.a n = (A161219 (n + 1) : ℚ)

end A161219

/-! ## A161219.P1473637004333628737

`2*(A000079(n+1)-A209970(n+1))`
-/

namespace A161219.P1473637004333628737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 (n + 1) - A209970 (n + 1))

end

end A161219.P1473637004333628737

namespace A161219

/-- `2*(A000079(n+1)-A209970(n+1))` -/
def P1473637004333628737.Spec : Prop :=
  ∀ n, P1473637004333628737.a n = A161219 (n + 1)

end A161219

/-! ## A161219.P527063948743263900

`A160619(n+1)/(n+1)`
-/

namespace A161219.P527063948743263900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160619 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A161219.P527063948743263900

namespace A161219

/-- `A160619(n+1)/(n+1)` -/
def P527063948743263900.Spec : Prop :=
  ∀ n, P527063948743263900.a n = (A161219 (n + 1) : ℚ)

end A161219

/-! ## A161219.P11249100544395320060

`2*A052313(∑[n+1])`
-/

namespace A161219.P11249100544395320060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161219.P11249100544395320060

namespace A161219

/-- `2*A052313(∑[n+1])` -/
def P11249100544395320060.Spec : Prop :=
  ∀ n, P11249100544395320060.a n = A161219 (n + 1)

end A161219

/-!
# A161220: The n-th member of a twin prime pair minus 2*n.

The programs for A161220, the canonical program `A161220.P17651123597370390187` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161220 has offset 1).

The definition of A161220 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161220.P17651123597370390187

`A001097(n+1)-A005843(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A161220

/-- `A001097(n+1)-A005843(n+1)` -/
def P17651123597370390187.Spec : Prop :=
  ∀ n, P17651123597370390187.a n = A161220 (n + 1)

theorem P17651123597370390187.correct : P17651123597370390187.Spec := by
  intro n
  simp only [A161220, Nat.add_sub_cancel]

end A161220

/-! ## A161220.P17512491758604416282

`A001097(n+1)-1-A005408(n)`
-/

namespace A161220.P17512491758604416282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - 1 - A005408 n

end

end A161220.P17512491758604416282

namespace A161220

/-- `A001097(n+1)-1-A005408(n)` -/
def P17512491758604416282.Spec : Prop :=
  ∀ n, P17512491758604416282.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P11865669254510571512

`A171821(n+2)-2*(n+1)`
-/

namespace A161220.P11865669254510571512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) - (2 * (n + 1) : ℤ)

end

end A161220.P11865669254510571512

namespace A161220

/-- `A171821(n+2)-2*(n+1)` -/
def P11865669254510571512.Spec : Prop :=
  ∀ n, P11865669254510571512.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P1900736594515368278

`∑[A097141(Δ[A171821(n+1)])]`
-/

namespace A161220.P1900736594515368278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161220.P1900736594515368278

namespace A161220

/-- `∑[A097141(Δ[A171821(n+1)])]` -/
def P1900736594515368278.Spec : Prop :=
  ∀ n, P1900736594515368278.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P8366901219624704967

`record[A077800(A293217(n+1))]-(A005408(n)+1)`
-/

namespace A161220.P8366901219624704967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A293217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A005408 n + 1)

end

end A161220.P8366901219624704967

namespace A161220

/-- `record[A077800(A293217(n+1))]-(A005408(n)+1)` -/
def P8366901219624704967.Spec : Prop :=
  ∀ n, P8366901219624704967.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P7115234760995248934

`record[A077800(A300827(n+1))]-(A005408(n)+1)`
-/

namespace A161220.P7115234760995248934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A300827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A005408 n + 1)

end

end A161220.P7115234760995248934

namespace A161220

/-- `record[A077800(A300827(n+1))]-(A005408(n)+1)` -/
def P7115234760995248934.Spec : Prop :=
  ∀ n, P7115234760995248934.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P5277007623658668962

`A077800(A181440(n+2))-A181440(A181440(2*(n+1)))`
-/

namespace A161220.P5277007623658668962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A181440 (n + 2)).toNat - A181440 (A181440 (2 * (n + 1))).toNat

end

end A161220.P5277007623658668962

namespace A161220

/-- `A077800(A181440(n+2))-A181440(A181440(2*(n+1)))` -/
def P5277007623658668962.Spec : Prop :=
  ∀ n, P5277007623658668962.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P9074520759461758739

`p?[A334141(n+1)]-(A005408(n)+1)`
-/

namespace A161220.P9074520759461758739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (A005408 n + 1)

end

end A161220.P9074520759461758739

namespace A161220

/-- `p?[A334141(n+1)]-(A005408(n)+1)` -/
def P9074520759461758739.Spec : Prop :=
  ∀ n, P9074520759461758739.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P1974140415072831262

`p?[A062505(n+1)]-2*(n+1)`
-/

namespace A161220.P1974140415072831262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (2 * (n + 1) : ℤ)

end

end A161220.P1974140415072831262

namespace A161220

/-- `p?[A062505(n+1)]-2*(n+1)` -/
def P1974140415072831262.Spec : Prop :=
  ∀ n, P1974140415072831262.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P9826507681870182368

`A006530(A278972(n+1))-2*(n+1)`
-/

namespace A161220.P9826507681870182368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278972 (n + 1)).toNat - (2 * (n + 1) : ℤ)

end

end A161220.P9826507681870182368

namespace A161220

/-- `A006530(A278972(n+1))-2*(n+1)` -/
def P9826507681870182368.Spec : Prop :=
  ∀ n, P9826507681870182368.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P16978570182559044834

`p?[comp[A062729(n+1)]]-2*(n+1)`
-/

namespace A161220.P16978570182559044834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (2 * (n + 1) : ℤ)

end

end A161220.P16978570182559044834

namespace A161220

/-- `p?[comp[A062729(n+1)]]-2*(n+1)` -/
def P16978570182559044834.Spec : Prop :=
  ∀ n, P16978570182559044834.a n = A161220 (n + 1)

end A161220

/-! ## A161220.P3451743528046899379

`eq[1, A164292(n+1)]-A005408(n)`
-/

namespace A161220.P3451743528046899379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005408 n

end

end A161220.P3451743528046899379

namespace A161220

/-- `eq[1, A164292(n+1)]-A005408(n)` -/
def P3451743528046899379.Spec : Prop :=
  ∀ n, P3451743528046899379.a n = A161220 (n + 1)

end A161220

/-!
# A161221: Consider necklaces with n beads, each black or white, where the n segments of cord between the beads are each colored red or green; a(n) is the number of different necklaces under the action of the dihedral group D_{2n}.

The programs for A161221, there is no canonical definition to state claims against.
-/

/-! ## A161221.P17990772415805649567

`A134683(n)+A123045(n)`
-/

namespace A161221.P17990772415805649567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n + A123045 n

end

end A161221.P17990772415805649567

/-! ## A161221.P12527923496480876269

`A278640(n)+A029744(n+1)²`
-/

namespace A161221.P12527923496480876269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278640 n + A029744 (n + 1) ^ 2

end

end A161221.P12527923496480876269

/-! ## A161221.P16424427971100095534

`A134683(n)+A051137(A167614(n+2))-2^n`
-/

namespace A161221.P16424427971100095534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n + (A051137 (A167614 (n + 2)).toNat - (2 ^ n : ℤ))

end

end A161221.P16424427971100095534

/-! ## A161221.P6973022973566055478

`A134683(n)+A001868(n)-(A278640(n)+A000079(n))`
-/

namespace A161221.P6973022973566055478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n + (A001868 n - (A278640 n + A000079 n))

end

end A161221.P6973022973566055478

/-! ## A161221.P6716898265927835595

`A293496(A141214(n))+(A158780(n+1)+A131572(n))²`
-/

namespace A161221.P6716898265927835595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (A141214 n).toNat + (A158780 (n + 1) + A131572 n) ^ 2

end

end A161221.P6716898265927835595

/-!
# A161222: Consider necklaces with n beads, each of one of four colors (say C1, C2, C3, C4), where the n segments of cord between the beads are each colored red or green; a(n) is the number of different necklaces under the action of the dihedral group D_{2n}.

The programs for A161222, there is no canonical definition to state claims against.
-/

/-! ## A161222.P9044158732512976471

`A126241(A301383(n))+A054626(n)`
-/

namespace A161222.P9044158732512976471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A301383 n).toNat + A054626 n

end

end A161222.P9044158732512976471

/-!
# A161223: Lengths of successive runs in A116909.

The programs for A161223, there is no canonical definition to state claims against.
-/

/-! ## A161223.P12583170648414675969

`A138530(gcd(A005811(n+2), A171598(2*(n+2))))`
-/

namespace A161223.P12583170648414675969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (Int.gcd (A005811 (n + 2)) (A171598 (2 * (n + 2))))

end

end A161223.P12583170648414675969

/-! ## A161223.P7736857370898139169

`A135352(A109794(n))`
-/

namespace A161223.P7736857370898139169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135352 (A109794 n).toNat

end

end A161223.P7736857370898139169

/-! ## A161223.P6973152398733147621

`A382961(A081871(n+1))`
-/

namespace A161223.P6973152398733147621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382961 (A081871 (n + 1)).toNat

end

end A161223.P6973152398733147621

/-!
# A161224: Triangular table a(n,m) that counts the occurrences of m in all partitions of 2*n in exactly n parts.

The programs for A161224, there is no canonical definition to state claims against.
-/

/-! ## A161224.P17267652888410135242

`A033185(n+1)-A008683(A246070(n))`
-/

namespace A161224.P17267652888410135242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - A008683 (A246070 n).toNat

end

end A161224.P17267652888410135242

/-!
# A161225: a(n) = number of distinct integers that can be constructed by removing one or more 0's from the binary representation of n, and concatenating while leaving the remaining digits in their same order.

The programs for A161225, the canonical program `A161225.P13624725564594958112` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161225 has offset 1).

The definition of A161225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161225.P7110439985187130282

`A124758(n+1)-1`
-/

namespace A161225.P7110439985187130282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (n + 1) - 1

end

end A161225.P7110439985187130282

namespace A161225

/-- `A124758(n+1)-1` -/
def P7110439985187130282.Spec : Prop :=
  ∀ n, P7110439985187130282.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P12782749185285793213

`A366799(A036044(n+1))-1`
-/

namespace A161225.P12782749185285793213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A036044 (n + 1)).toNat - 1

end

end A161225.P12782749185285793213

namespace A161225

/-- `A366799(A036044(n+1))-1` -/
def P12782749185285793213.Spec : Prop :=
  ∀ n, P12782749185285793213.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P290619794703520964

`A003963(A333219(n+2))-1`
-/

namespace A161225.P290619794703520964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A333219 (n + 2)).toNat - 1

end

end A161225.P290619794703520964

namespace A161225

/-- `A003963(A333219(n+2))-1` -/
def P290619794703520964.Spec : Prop :=
  ∀ n, P290619794703520964.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P13624725564594958112

`A106737(A080079(n+1)-1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A161225

/-- `A106737(A080079(n+1)-1)-1` -/
def P13624725564594958112.Spec : Prop :=
  ∀ n, P13624725564594958112.a n = A161225 (n + 1)

theorem P13624725564594958112.correct : P13624725564594958112.Spec := by
  intro n
  simp only [A161225, Nat.add_sub_cancel]

end A161225

/-! ## A161225.P14256934844496798514

`∑[A124758(n+1)]%∑[A124758(n)]`
-/

namespace A161225.P14256934844496798514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A161225.P14256934844496798514

namespace A161225

/-- `∑[A124758(n+1)]%∑[A124758(n)]` -/
def P14256934844496798514.Spec : Prop :=
  ∀ n, P14256934844496798514.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P5146314968811702317

`Δ[∑[A124758(n)]-n]`
-/

namespace A161225.P5146314968811702317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161225.P5146314968811702317

namespace A161225

/-- `Δ[∑[A124758(n)]-n]` -/
def P5146314968811702317.Spec : Prop :=
  ∀ n, P5146314968811702317.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P8212061663765440279

`A366799(A261693(n+1))-1`
-/

namespace A161225.P8212061663765440279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A261693 (n + 1)).toNat - 1

end

end A161225.P8212061663765440279

namespace A161225

/-- `A366799(A261693(n+1))-1` -/
def P8212061663765440279.Spec : Prop :=
  ∀ n, P8212061663765440279.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P11462684234844658296

`A324183(A030109(n+2))-1`
-/

namespace A161225.P11462684234844658296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (A030109 (n + 2)).toNat - 1

end

end A161225.P11462684234844658296

namespace A161225

/-- `A324183(A030109(n+2))-1` -/
def P11462684234844658296.Spec : Prop :=
  ∀ n, P11462684234844658296.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P16411444988617076972

`A167489(A006068(n+1))-1`
-/

namespace A161225.P16411444988617076972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A006068 (n + 1)).toNat - 1

end

end A161225.P16411444988617076972

namespace A161225

/-- `A167489(A006068(n+1))-1` -/
def P16411444988617076972.Spec : Prop :=
  ∀ n, P16411444988617076972.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P12454315045535405702

`A167489(A341916(n+1))-1`
-/

namespace A161225.P12454315045535405702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A341916 (n + 1)).toNat - 1

end

end A161225.P12454315045535405702

namespace A161225

/-- `A167489(A341916(n+1))-1` -/
def P12454315045535405702.Spec : Prop :=
  ∀ n, P12454315045535405702.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P17676726965338163404

`A167489(A038558(n+1))-1`
-/

namespace A161225.P17676726965338163404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A038558 (n + 1)).toNat - 1

end

end A161225.P17676726965338163404

namespace A161225

/-- `A167489(A038558(n+1))-1` -/
def P17676726965338163404.Spec : Prop :=
  ∀ n, P17676726965338163404.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P9325371160856148136

`A324183(A115352(n+1))-1`
-/

namespace A161225.P9325371160856148136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (A115352 (n + 1)).toNat - 1

end

end A161225.P9325371160856148136

namespace A161225

/-- `A324183(A115352(n+1))-1` -/
def P9325371160856148136.Spec : Prop :=
  ∀ n, P9325371160856148136.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P3910349236959775491

`∏{digits}[A275536(n+1), #]-1`
-/

namespace A161225.P3910349236959775491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) - 1

end

end A161225.P3910349236959775491

namespace A161225

/-- `∏{digits}[A275536(n+1), #]-1` -/
def P3910349236959775491.Spec : Prop :=
  ∀ n, P3910349236959775491.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P7886200453032029555

`A106737(A335587(n+1))-1`
-/

namespace A161225.P7886200453032029555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A335587 (n + 1)).toNat - 1

end

end A161225.P7886200453032029555

namespace A161225

/-- `A106737(A335587(n+1))-1` -/
def P7886200453032029555.Spec : Prop :=
  ∀ n, P7886200453032029555.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P5138008734700888334

`A054390(A005823(n+2))-1`
-/

namespace A161225.P5138008734700888334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A005823 (n + 2)).toNat - 1

end

end A161225.P5138008734700888334

namespace A161225

/-- `A054390(A005823(n+2))-1` -/
def P5138008734700888334.Spec : Prop :=
  ∀ n, P5138008734700888334.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P10182661066816565792

`∏{e}[A057335(n+1), #]-1`
-/

namespace A161225.P10182661066816565792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A161225.P10182661066816565792

namespace A161225

/-- `∏{e}[A057335(n+1), #]-1` -/
def P10182661066816565792.Spec : Prop :=
  ∀ n, P10182661066816565792.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P14260152760200716988

`A227193(A370762(n))`
-/

namespace A161225.P14260152760200716988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227193 (A370762 n).toNat

end

end A161225.P14260152760200716988

namespace A161225

/-- `A227193(A370762(n))` -/
def P14260152760200716988.Spec : Prop :=
  ∀ n, P14260152760200716988.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P10299515157191631500

`A054390(A055246(n+2))-1`
-/

namespace A161225.P10299515157191631500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A055246 (n + 2)).toNat - 1

end

end A161225.P10299515157191631500

namespace A161225

/-- `A054390(A055246(n+2))-1` -/
def P10299515157191631500.Spec : Prop :=
  ∀ n, P10299515157191631500.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P449891815628212927

`A054390(A190640(n+2))-1`
-/

namespace A161225.P449891815628212927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A190640 (n + 2)).toNat - 1

end

end A161225.P449891815628212927

namespace A161225

/-- `A054390(A190640(n+2))-1` -/
def P449891815628212927.Spec : Prop :=
  ∀ n, P449891815628212927.a n = A161225 (n + 1)

end A161225

/-! ## A161225.P6510310342041323169

`A167489(A124108(n+1))-1`
-/

namespace A161225.P6510310342041323169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A124108 (n + 1)).toNat - 1

end

end A161225.P6510310342041323169

namespace A161225

/-- `A167489(A124108(n+1))-1` -/
def P6510310342041323169.Spec : Prop :=
  ∀ n, P6510310342041323169.a n = A161225 (n + 1)

end A161225

/-!
# A161226: a(0)=0. a(n) = the smallest integer of the form k^j, j>=2, such that a(n) >= a(n-1) + n.

The programs for A161226, there is no canonical definition to state claims against.
-/

/-! ## A161226.P16377232158594659406

`A001597(A076411(a(n-1)+n)+1)` with `a(0)=0`
-/

namespace A161226.P16377232158594659406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001597 (A076411 (a (n - 1) + (n : ℤ)).toNat + 1).toNat

end

end A161226.P16377232158594659406

/-! ## A161226.P1435611260319614738

`n²-A054025(A047749(n))`
-/

namespace A161226.P1435611260319614738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A054025 (A047749 n).toNat

end

end A161226.P1435611260319614738

/-! ## A161226.P9643947778542795503

`and(n², A188529(A156037(n+1)))`
-/

namespace A161226.P9643947778542795503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A188529 (A156037 (n + 1)).toNat)

end

end A161226.P9643947778542795503

/-! ## A161226.P7980385784934995497

`n²-A049084(A373671(n+1))`
-/

namespace A161226.P7980385784934995497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A049084 (A373671 (n + 1)).toNat

end

end A161226.P7980385784934995497

/-! ## A161226.P9460205371514378961

`n²-A307597(A047780(n))`
-/

namespace A161226.P9460205371514378961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A307597 (A047780 n).toNat

end

end A161226.P9460205371514378961

/-!
# A161227: Number of partitions of n into Catalan numbers A000108 where every part appears at least 2 times.

The programs for A161227, there is no canonical definition to state claims against.
-/

/-! ## A161227.P10193217179772324074

`A025848(A187829(n+1)+A166520(n+1))`
-/

namespace A161227.P10193217179772324074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025848 (A187829 (n + 1) + A166520 (n + 1)).toNat

end

end A161227.P10193217179772324074

/-! ## A161227.P3439387260735264192

`A025823(3*A077168(n))`
-/

namespace A161227.P3439387260735264192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 (3 * A077168 n).toNat

end

end A161227.P3439387260735264192

/-! ## A161227.P15711029082391834312

`A025823(3*(n+1))%Δ[A086991(n+1)]`
-/

namespace A161227.P15711029082391834312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025823 (3 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A161227.P15711029082391834312

/-! ## A161227.P15803278543481990185

`A000120(A000225(n))-A307118(n+1)`
-/

namespace A161227.P15803278543481990185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000225 n).toNat - A307118 (n + 1)

end

end A161227.P15803278543481990185

/-! ## A161227.P9477007311534309964

`A003434(A000079(n))-A307118(n+1)`
-/

namespace A161227.P9477007311534309964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A000079 n).toNat - A307118 (n + 1)

end

end A161227.P9477007311534309964

/-!
# A161229: Number of partitions of n into Catalan numbers A000108 where every part appears at least 4 times.

The programs for A161229, there is no canonical definition to state claims against.
-/

/-! ## A161229.P13252071595877058141

`A161231(lt[A161247(n+1), A053186(n)])`
-/

namespace A161229.P13252071595877058141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161229.P13252071595877058141

/-! ## A161229.P16280968364216273984

`A161233(lt[A161207(2*n+5), A161178(3*n+2)])`
-/

namespace A161229.P16280968364216273984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161178 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161233 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161229.P16280968364216273984

/-! ## A161229.P10233310897211135360

`A287272(A341494(n)+1)`
-/

namespace A161229.P10233310897211135360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A341494 n + 1).toNat

end

end A161229.P10233310897211135360

/-! ## A161229.P10678764264512653086

`A262352(lcm(2-n, A164682(n+1)))`
-/

namespace A161229.P10678764264512653086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (Int.lcm (2 - (n : ℤ)) (A164682 (n + 1)))

end

end A161229.P10678764264512653086

/-!
# A161231: Number of partitions of n into Catalan numbers A000108 where every part appears at least 6 times.

The programs for A161231, there is no canonical definition to state claims against.
-/

/-! ## A161231.P6996668763959447357

`A161055(n+1)-A089048(A188536(n+1))`
-/

namespace A161231.P6996668763959447357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161055 (n + 1) - A089048 (A188536 (n + 1)).toNat

end

end A161231.P6996668763959447357

/-! ## A161231.P6529188419069865050

`A161259(n+1)-A089048(A188536(n+1))`
-/

namespace A161231.P6529188419069865050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161259 (n + 1) - A089048 (A188536 (n + 1)).toNat

end

end A161231.P6529188419069865050

/-! ## A161231.P12811389326973870365

`A161233(lt[A161207(2*n+1), A161178(2*n+1)²])`
-/

namespace A161231.P12811389326973870365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161178 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161233 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161231.P12811389326973870365

/-! ## A161231.P10331893409766064778

`A161055(n+1)-A185284(A033102(n+1))`
-/

namespace A161231.P10331893409766064778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161055 (n + 1) - A185284 (A033102 (n + 1)).toNat

end

end A161231.P10331893409766064778

/-! ## A161231.P4287774538551980869

`A161259(n+1)+A121373(A241852(3*(n+1)))`
-/

namespace A161231.P4287774538551980869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161259 (n + 1) + A121373 (A241852 (3 * (n + 1))).toNat

end

end A161231.P4287774538551980869

/-!
# A161232: Number of partitions of n into Catalan numbers A000108 where every part appears at least 7 times.

The programs for A161232, there is no canonical definition to state claims against.
-/

/-! ## A161232.P11643164366307677061

`A161260(n+1)-A161260(A069288(A259623(n+8)))`
-/

namespace A161232.P11643164366307677061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161260 (n + 1) - A161260 (A069288 (A259623 (n + 8)).toNat).toNat

end

end A161232.P11643164366307677061

/-! ## A161232.P15428317718806036002

`A161056(n+1)-A185284(A143694(n+1))`
-/

namespace A161232.P15428317718806036002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161056 (n + 1) - A185284 (A143694 (n + 1)).toNat

end

end A161232.P15428317718806036002

/-!
# A161233: Number of partitions of n into Catalan numbers A000108 where every part appears at least 8 times.

The programs for A161233, there is no canonical definition to state claims against.
-/

/-! ## A161233.P15537246131343571563

`A127380(A161261(n+1))^A321804(n)²`
-/

namespace A161233.P15537246131343571563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127380 (A161261 (n + 1)).toNat : ℚ) ^ (A321804 n ^ 2 : ℤ)

end

end A161233.P15537246131343571563

/-! ## A161233.P11843354493384129656

`A127380(A161261(n+1))%p?[A135233(n)]`
-/

namespace A161233.P11843354493384129656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127380 (A161261 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A161233.P11843354493384129656

/-! ## A161233.P16058832087632944241

`A161057(n+1)-A185284(A254760(n+1))`
-/

namespace A161233.P16058832087632944241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161057 (n + 1) - A185284 (A254760 (n + 1)).toNat

end

end A161233.P16058832087632944241

/-!
# A161234: Number of partitions of n into Catalan numbers A000108 where every part appears at least 9 times.

The programs for A161234, there is no canonical definition to state claims against.
-/

/-! ## A161234.P12582073260547495083

`A122282(A161262(n+1))^A185284(n)!`
-/

namespace A161234.P12582073260547495083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A161262 (n + 1)).toNat ^ Nat.factorial (A185284 n).toNat

end

end A161234.P12582073260547495083

/-! ## A161234.P12394415482660320253

`A000034(A144816(n))*A122282(A161262(n+1))`
-/

namespace A161234.P12394415482660320253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A144816 n).toNat * A122282 (A161262 (n + 1)).toNat

end

end A161234.P12394415482660320253

/-! ## A161234.P7575386181379366829

`A185284(A185284(n)²)+A122282(A161262(n+1))`
-/

namespace A161234.P7575386181379366829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 n ^ 2).toNat + A122282 (A161262 (n + 1)).toNat

end

end A161234.P7575386181379366829

/-!
# A161235: Number of partitions of n into Catalan numbers A000108 where every part appears at least 10 times.

The programs for A161235, there is no canonical definition to state claims against.
-/

/-! ## A161235.P2422530400718200233

`A161263(n+1)-A185284(A161272(n+1))`
-/

namespace A161235.P2422530400718200233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161263 (n + 1) - A185284 (A161272 (n + 1)).toNat

end

end A161235.P2422530400718200233

/-! ## A161235.P10956955058915661604

`A161288(n+1)-A185284(A161272(n+1))`
-/

namespace A161235.P10956955058915661604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161288 (n + 1) - A185284 (A161272 (n + 1)).toNat

end

end A161235.P10956955058915661604

/-! ## A161235.P10153286125720284720

`A161263(n+1)-A034466(A202175(n+1))`
-/

namespace A161235.P10153286125720284720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161263 (n + 1) - A034466 (A202175 (n + 1)).toNat

end

end A161235.P10153286125720284720

/-!
# A161236: Number of partitions of n into Catalan numbers A000108 where every part appears at least 11 times.

The programs for A161236, there is no canonical definition to state claims against.
-/

/-! ## A161236.P14348303481473554970

`A161060(n+1)-A000007(A287166(n+1))`
-/

namespace A161236.P14348303481473554970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161060 (n + 1) - A000007 (A287166 (n + 1)).toNat

end

end A161236.P14348303481473554970

/-! ## A161236.P1218592633569320719

`A161264(n+1)-A000007(A287166(n+1))`
-/

namespace A161236.P1218592633569320719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1) - A000007 (A287166 (n + 1)).toNat

end

end A161236.P1218592633569320719

/-! ## A161236.P17706229686694215192

`A161289(n+1)-A000007(A287166(n+1))`
-/

namespace A161236.P17706229686694215192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161289 (n + 1) - A000007 (A287166 (n + 1)).toNat

end

end A161236.P17706229686694215192

/-! ## A161236.P15522828997922463045

`A161060(n+1)-A185284(A017907(n))`
-/

namespace A161236.P15522828997922463045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161060 (n + 1) - A185284 (A017907 n).toNat

end

end A161236.P15522828997922463045

/-! ## A161236.P9182798843628395624

`A161264(n+1)-A185284(A017907(n))`
-/

namespace A161236.P9182798843628395624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1) - A185284 (A017907 n).toNat

end

end A161236.P9182798843628395624

/-!
# A161237: Number of partitions of n into Catalan numbers A000108 where every part appears at least 12 times.

The programs for A161237, there is no canonical definition to state claims against.
-/

/-! ## A161237.P14051137325633368124

`A161061(n+1)-A248640(A219924(n))`
-/

namespace A161237.P14051137325633368124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161061 (n + 1) - A248640 (A219924 n).toNat

end

end A161237.P14051137325633368124

/-! ## A161237.P3659892109885276689

`A161265(n+1)-A248640(A219924(n))`
-/

namespace A161237.P3659892109885276689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (n + 1) - A248640 (A219924 n).toNat

end

end A161237.P3659892109885276689

/-! ## A161237.P10167285402397767823

`A028904(A161061(n+1))%A133957(n+1)`
-/

namespace A161237.P10167285402397767823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 (A161061 (n + 1)).toNat) (A133957 (n + 1))

end

end A161237.P10167285402397767823

/-!
# A161238: Number of partitions of n into Catalan numbers A000108 where every part appears at least 13 times.

The programs for A161238, there is no canonical definition to state claims against.
-/

/-! ## A161238.P7787879125608879451

`A161062(n+1)-A010054(A194266(n+1))`
-/

namespace A161238.P7787879125608879451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1) - A010054 (A194266 (n + 1)).toNat

end

end A161238.P7787879125608879451

/-! ## A161238.P14329846722796356624

`A161266(n+1)-A010054(A194266(n+1))`
-/

namespace A161238.P14329846722796356624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (n + 1) - A010054 (A194266 (n + 1)).toNat

end

end A161238.P14329846722796356624

/-! ## A161238.P10188616050444214003

`A161291(n+1)-A010054(A194266(n+1))`
-/

namespace A161238.P10188616050444214003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161291 (n + 1) - A010054 (A194266 (n + 1)).toNat

end

end A161238.P10188616050444214003

/-! ## A161238.P17039254834846528842

`A161062(n+1)+A010054(A194266(n+1))*A226162(n)`
-/

namespace A161238.P17039254834846528842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1) + A010054 (A194266 (n + 1)).toNat * A226162 n

end

end A161238.P17039254834846528842

/-! ## A161238.P11953163199999242840

`A329200(A161062(n+1)%A319513(n))`
-/

namespace A161238.P11953163199999242840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (Int.tmod (A161062 (n + 1)) (A319513 n)).toNat

end

end A161238.P11953163199999242840

/-! ## A161238.P2833296942091815660

`A329200(A161266(n+1)%A319513(n))`
-/

namespace A161238.P2833296942091815660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (Int.tmod (A161266 (n + 1)) (A319513 n)).toNat

end

end A161238.P2833296942091815660

/-!
# A161239: Number of partitions of n into Catalan numbers A000108 where every part appears at least 14 times.

The programs for A161239, there is no canonical definition to state claims against.
-/

/-! ## A161239.P348427288767758907

`A065650(A161267(n+1)%A180022(n+1))`
-/

namespace A161239.P348427288767758907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (Int.tmod (A161267 (n + 1)) (A180022 (n + 1))).toNat

end

end A161239.P348427288767758907

/-! ## A161239.P1523044097886748243

`A161292(n+1)%A337987(n+1)`
-/

namespace A161239.P1523044097886748243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161292 (n + 1)) (A337987 (n + 1))

end

end A161239.P1523044097886748243

/-! ## A161239.P2128923265025467239

`A161063(n+1)%A136122(A161056(n+1))`
-/

namespace A161239.P2128923265025467239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161063 (n + 1)) (A136122 (A161056 (n + 1)).toNat)

end

end A161239.P2128923265025467239

/-! ## A161239.P15586927538080416794

`A136565(A096698(n+1))*A161267(n+1)`
-/

namespace A161239.P15586927538080416794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136565 (A096698 (n + 1)).toNat * A161267 (n + 1)

end

end A161239.P15586927538080416794

/-! ## A161239.P7733951367694400788

`A161267(n+1)%A001235(A361830(n))`
-/

namespace A161239.P7733951367694400788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161267 (n + 1)) (A001235 (A361830 n).toNat)

end

end A161239.P7733951367694400788

/-! ## A161239.P3613544674514773971

`and(A045535(n), A161063(n+1))`
-/

namespace A161239.P3613544674514773971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A161063 (n + 1))

end

end A161239.P3613544674514773971

/-! ## A161239.P10882500266290164782

`and(A045535(n), A161267(n+1))`
-/

namespace A161239.P10882500266290164782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A161267 (n + 1))

end

end A161239.P10882500266290164782

/-! ## A161239.P1018958974806632093

`and(A045535(n), A161292(n+1))`
-/

namespace A161239.P1018958974806632093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A161292 (n + 1))

end

end A161239.P1018958974806632093

/-!
# A161240: Number of partitions of n into central binomial coefficients A001405.

The programs for A161240, there is no canonical definition to state claims against.
-/

/-! ## A161240.P7070708050644774231

`A197242(A000124(n))+∑[A029153(n+1)]`
-/

namespace A161240.P7070708050644774231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197242 (A000124 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161240.P7070708050644774231

/-! ## A161240.P7082296444330417759

`(∑[A029153(n+1)]+1)%A251434(n+1)`
-/

namespace A161240.P7082296444330417759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A251434 (n + 1))

end

end A161240.P7082296444330417759

/-! ## A161240.P1985051718988128838

`A036987(A126646(n))+∑[A029153(n+1)]`
-/

namespace A161240.P1985051718988128838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A126646 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161240.P1985051718988128838

/-! ## A161240.P13341454442233499446

`∑[A029209(p?[A029265(2*n)])]`
-/

namespace A161240.P13341454442233499446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029209 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161240.P13341454442233499446

/-!
# A161241: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 2 times.

The programs for A161241, there is no canonical definition to state claims against.
-/

/-! ## A161241.P5407703437047685684

`A161307(n+1)+A055641(A083329(n))`
-/

namespace A161241.P5407703437047685684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161307 (n + 1) + A055641 (A083329 n).toNat

end

end A161241.P5407703437047685684

/-! ## A161241.P10570950076941003068

`A178798(A097331(n))+A161307(n+1)`
-/

namespace A161241.P10570950076941003068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A097331 n).toNat + A161307 (n + 1)

end

end A161241.P10570950076941003068

/-! ## A161241.P8180500320700177799

`A161077(n+1)-A055641(A082182(n+1))`
-/

namespace A161241.P8180500320700177799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161077 (n + 1) - A055641 (A082182 (n + 1)).toNat

end

end A161241.P8180500320700177799

/-! ## A161241.P3871613902492818925

`A097986(n+1)-A000035(A321597(n+1))`
-/

namespace A161241.P3871613902492818925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097986 (n + 1) - A000035 (A321597 (n + 1)).toNat

end

end A161241.P3871613902492818925

/-! ## A161241.P5180292922843876560

`Δ[A325400(A240026(n)+21)]`
-/

namespace A161241.P5180292922843876560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A240026 n + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161241.P5180292922843876560

/-!
# A161242: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 3 times.

The programs for A161242, there is no canonical definition to state claims against.
-/

/-! ## A161242.P2509005921101419351

`A161308(n+1)+A067169(A348178(n+1))`
-/

namespace A161242.P2509005921101419351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161308 (n + 1) + A067169 ((A348178 (n + 1)).toNat + 11)

end

end A161242.P2509005921101419351

/-! ## A161242.P10424321732979351564

`A161314(∏{e}[A006769(n+3), #+1])+A161308(n+1)`
-/

namespace A161242.P10424321732979351564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) + A161308 (n + 1)

end

end A161242.P10424321732979351564

/-! ## A161242.P3251142928771704456

`A161317(∏{e}[A006769(n+3), #+1])+A161308(n+1)`
-/

namespace A161242.P3251142928771704456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161317 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) + A161308 (n + 1)

end

end A161242.P3251142928771704456

/-! ## A161242.P6889736607221208045

`A161308(n+1)+A025465(A336662(n))`
-/

namespace A161242.P6889736607221208045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161308 (n + 1) + A025465 (A336662 n).toNat

end

end A161242.P6889736607221208045

/-! ## A161242.P15624815073371419960

`A189668(A174510(n))+A161308(n+1)`
-/

namespace A161242.P15624815073371419960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (A174510 n).toNat + A161308 (n + 1)

end

end A161242.P15624815073371419960

/-!
# A161243: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 4 times.

The programs for A161243, there is no canonical definition to state claims against.
-/

/-! ## A161243.P944863882304938804

`A161309(n+1)+A067898(A174127(n))`
-/

namespace A161243.P944863882304938804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161309 (n + 1) + A067898 (A174127 n).toNat

end

end A161243.P944863882304938804

/-! ## A161243.P8467278905883698278

`A161309(n+1)+A102683(A157638(n))`
-/

namespace A161243.P8467278905883698278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161309 (n + 1) + A102683 (A157638 n).toNat

end

end A161243.P8467278905883698278

/-! ## A161243.P11061383002668574909

`A161309(n+1)+A025465(A144439(n+1))`
-/

namespace A161243.P11061383002668574909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161309 (n + 1) + A025465 (A144439 (n + 1)).toNat

end

end A161243.P11061383002668574909

/-! ## A161243.P12086476390160173215

`A001202(2^A161309(n+1))`
-/

namespace A161243.P12086476390160173215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161309 (n + 1) : ℤ))).toNat

end

end A161243.P12086476390160173215

/-!
# A161244: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 5 times.

The programs for A161244, there is no canonical definition to state claims against.
-/

/-! ## A161244.P15099907204056425427

`A178333(A030546(n))+A161310(n+1)`
-/

namespace A161244.P15099907204056425427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A030546 n).toNat + A161310 (n + 1)

end

end A161244.P15099907204056425427

/-! ## A161244.P12183546629363744892

`A003313(2^A161310(n+1))`
-/

namespace A161244.P12183546629363744892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161310 (n + 1) : ℤ))).toNat

end

end A161244.P12183546629363744892

/-! ## A161244.P847856729494104341

`A051903(2^A161310(n+1))`
-/

namespace A161244.P847856729494104341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161310 (n + 1) : ℤ))).toNat

end

end A161244.P847856729494104341

/-! ## A161244.P1765866481976981273

`A051904(2^A161310(n+1))`
-/

namespace A161244.P1765866481976981273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161310 (n + 1) : ℤ))).toNat

end

end A161244.P1765866481976981273

/-! ## A161244.P5579082543969084909

`and(A161310(n+1), A356877(n))`
-/

namespace A161244.P5579082543969084909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161310 (n + 1)) (A356877 n)

end

end A161244.P5579082543969084909

/-!
# A161245: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 6 times.

The programs for A161245, there is no canonical definition to state claims against.
-/

/-! ## A161245.P17344943448489079036

`A185284(A273282(n+2))+A161311(n+1)`
-/

namespace A161245.P17344943448489079036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A273282 (n + 2)).toNat + A161311 (n + 1)

end

end A161245.P17344943448489079036

/-! ## A161245.P15413810063031154082

`A007966(A161311(n+1)²)`
-/

namespace A161245.P15413810063031154082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A161311 (n + 1) ^ 2).toNat

end

end A161245.P15413810063031154082

/-! ## A161245.P10800341422313379522

`A001222(2^A161311(n+1))`
-/

namespace A161245.P10800341422313379522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161311 (n + 1) : ℤ))).toNat

end

end A161245.P10800341422313379522

/-! ## A161245.P5988804222098517101

`A000005(2^A161311(n+1))-1`
-/

namespace A161245.P5988804222098517101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161311 (n + 1) : ℤ))).toNat - 1

end

end A161245.P5988804222098517101

/-! ## A161245.P10093202659601641208

`and(A117060(n+1), A161311(n+1))`
-/

namespace A161245.P10093202659601641208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 1)) (A161311 (n + 1))

end

end A161245.P10093202659601641208

/-!
# A161246: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 7 times.

The programs for A161246, there is no canonical definition to state claims against.
-/

/-! ## A161246.P7685906315655893043

`A161312(n+1)%A160968(n+1)`
-/

namespace A161246.P7685906315655893043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161312 (n + 1)) (A160968 (n + 1))

end

end A161246.P7685906315655893043

/-! ## A161246.P12517056881928948304

`A161312(n+1)%A000040(A005897(n))`
-/

namespace A161246.P12517056881928948304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161312 (n + 1)) (A000040 (A005897 n).toNat)

end

end A161246.P12517056881928948304

/-! ## A161246.P3268186949330732253

`A161312(n+1)+A000007(A268457(n+1))`
-/

namespace A161246.P3268186949330732253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161312 (n + 1) + A000007 (A268457 (n + 1)).toNat

end

end A161246.P3268186949330732253

/-! ## A161246.P2523838296751248737

`A161312(n+1)^A014963(A008066(n+1))`
-/

namespace A161246.P2523838296751248737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161312 (n + 1) : ℚ) ^ (A014963 (A008066 (n + 1)).toNat : ℤ)

end

end A161246.P2523838296751248737

/-! ## A161246.P18091143335254469567

`and(A157190(n+1), A161312(n+1))`
-/

namespace A161246.P18091143335254469567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157190 (n + 1)) (A161312 (n + 1))

end

end A161246.P18091143335254469567

/-!
# A161247: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 8 times.

The programs for A161247, there is no canonical definition to state claims against.
-/

/-! ## A161247.P12385671003414943243

`A048766(A161313(n+1)^3)`
-/

namespace A161247.P12385671003414943243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A161313 (n + 1) ^ 3).toNat

end

end A161247.P12385671003414943243

/-! ## A161247.P15406996670558449721

`A161313(n+1)%A003064(n)`
-/

namespace A161247.P15406996670558449721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161313 (n + 1)) (A003064 n)

end

end A161247.P15406996670558449721

/-! ## A161247.P17279290635655391115

`lcm(A123271(n+2), A161313(n+1))`
-/

namespace A161247.P17279290635655391115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A161313 (n + 1))

end

end A161247.P17279290635655391115

/-! ## A161247.P11545924300413146480

`A014963(Δ[A161333(n)])*A161313(n+1)`
-/

namespace A161247.P11545924300413146480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat * A161313 (n + 1)

end

end A161247.P11545924300413146480

/-! ## A161247.P9787899163405464119

`A161313(n+1)+A000007(A161320(n+4))`
-/

namespace A161247.P9787899163405464119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161313 (n + 1) + A000007 (A161320 (n + 4)).toNat

end

end A161247.P9787899163405464119

/-!
# A161248: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 9 times.

The programs for A161248, there is no canonical definition to state claims against.
-/

/-! ## A161248.P8552569046758728868

`A161314(n+1)+A086883(n+1)%A030580(n+1)`
-/

namespace A161248.P8552569046758728868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (n + 1) + Int.tmod (A086883 (n + 1)) (A030580 (n + 1))

end

end A161248.P8552569046758728868

/-! ## A161248.P7097682172610022296

`A161314(n+1)%A151727(n)`
-/

namespace A161248.P7097682172610022296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161314 (n + 1)) (A151727 n)

end

end A161248.P7097682172610022296

/-! ## A161248.P5356733102331099500

`A161314(n+1)+A161338(n)%3`
-/

namespace A161248.P5356733102331099500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (n + 1) + Int.tmod (A161338 n) 3

end

end A161248.P5356733102331099500

/-! ## A161248.P15059647057032927544

`A161314(n+1)+A010051(A016934(n))`
-/

namespace A161248.P15059647057032927544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (n + 1) + A010051 (A016934 n).toNat

end

end A161248.P15059647057032927544

/-! ## A161248.P2434493787433106720

`A161314(n+1)+A010872(A161338(n))`
-/

namespace A161248.P2434493787433106720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (n + 1) + A010872 (A161338 n).toNat

end

end A161248.P2434493787433106720

/-! ## A161248.P3438051575926920495

`A161314(n+1)+A151774(A024966(n))`
-/

namespace A161248.P3438051575926920495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (n + 1) + A151774 (A024966 n).toNat

end

end A161248.P3438051575926920495

/-! ## A161248.P9730034152157907507

`∑{d}[n+1, A161314(#)*A330055((n+1)/#-1)]`
-/

namespace A161248.P9730034152157907507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161314 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161248.P9730034152157907507

/-!
# A161249: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 10 times.

The programs for A161249, there is no canonical definition to state claims against.
-/

/-! ## A161249.P5074683408677723542

`A161315(n+1)%A161406(n)`
-/

namespace A161249.P5074683408677723542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161315 (n + 1)) (A161406 n)

end

end A161249.P5074683408677723542

/-! ## A161249.P2674401641161878703

`A000034(∏{digits}[n, 2^#])*A161315(n+1)`
-/

namespace A161249.P2674401641161878703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod * A161315 (n + 1)

end

end A161249.P2674401641161878703

/-! ## A161249.P3570482552018840899

`A161315(n+1)+A010054(∑[A161406(n)])`
-/

namespace A161249.P3570482552018840899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161315 (n + 1) + A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161249.P3570482552018840899

/-! ## A161249.P3324955454442232948

`A161315(n+1)+A151666(∑[A161406(n)])`
-/

namespace A161249.P3324955454442232948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161315 (n + 1) + A151666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161249.P3324955454442232948

/-! ## A161249.P16252765715615072733

`A161315(n+1)+A000122(A297411(n+1))`
-/

namespace A161249.P16252765715615072733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161315 (n + 1) + A000122 (A297411 (n + 1)).toNat

end

end A161249.P16252765715615072733

/-! ## A161249.P10657803494531721496

`A001222(A131687(n+1))*A161315(n+1)`
-/

namespace A161249.P10657803494531721496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A131687 (n + 1)).toNat * A161315 (n + 1)

end

end A161249.P10657803494531721496

/-! ## A161249.P13164742980491818268

`A161315(n+1)+A000007(A193648(n+4))`
-/

namespace A161249.P13164742980491818268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161315 (n + 1) + A000007 (A193648 (n + 4)).toNat

end

end A161249.P13164742980491818268

/-! ## A161249.P11214363969911715163

`A161315(n+1)+C(A161406(n), A345630(n+1))`
-/

namespace A161249.P11214363969911715163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161315 (n + 1) + (Nat.choose (A161406 n).toNat (A345630 (n + 1)).toNat : ℤ)

end

end A161249.P11214363969911715163

/-! ## A161249.P14036257373547793793

`A057427(A226916(n))*A161315(n+1)`
-/

namespace A161249.P14036257373547793793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A226916 n).toNat * A161315 (n + 1)

end

end A161249.P14036257373547793793

/-! ## A161249.P15784938537237062801

`A186685(A335916(n+1))+A161315(n+1)`
-/

namespace A161249.P15784938537237062801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (A335916 (n + 1)).toNat + A161315 (n + 1)

end

end A161249.P15784938537237062801

/-!
# A161250: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 11 times.

The programs for A161250, there is no canonical definition to state claims against.
-/

/-! ## A161250.P8473707250741688795

`A161316(n+1)%A089647(n)`
-/

namespace A161250.P8473707250741688795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161316 (n + 1)) (A089647 n)

end

end A161250.P8473707250741688795

/-! ## A161250.P9509888600062833398

`A161316(n+1)+A000007(A008150(n))`
-/

namespace A161250.P9509888600062833398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161316 (n + 1) + A000007 (A008150 n).toNat

end

end A161250.P9509888600062833398

/-! ## A161250.P3846731640068414420

`A161316(n+1)+A000038(A287919(n))`
-/

namespace A161250.P3846731640068414420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161316 (n + 1) + A000038 (A287919 n).toNat

end

end A161250.P3846731640068414420

/-! ## A161250.P1908984729109625421

`A014709(A007094(n)²)*A161316(n+1)`
-/

namespace A161250.P1908984729109625421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A007094 n ^ 2).toNat * A161316 (n + 1)

end

end A161250.P1908984729109625421

/-! ## A161250.P16347241084228396904

`and(A003817(A007094(n)²), A161316(n+1))`
-/

namespace A161250.P16347241084228396904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A007094 n ^ 2).toNat) (A161316 (n + 1))

end

end A161250.P16347241084228396904

/-!
# A161251: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 12 times.

The programs for A161251, there is no canonical definition to state claims against.
-/

/-! ## A161251.P13816293198384801780

`A161317(n+1)%A091228(n)`
-/

namespace A161251.P13816293198384801780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161317 (n + 1)) (A091228 n)

end

end A161251.P13816293198384801780

/-! ## A161251.P8321925388299644312

`A161317(A000007(C(2*n, 2))+n+1)`
-/

namespace A161251.P8321925388299644312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161317 (A000007 (Nat.choose (2 * n) 2) + (n : ℤ) + 1).toNat

end

end A161251.P8321925388299644312

/-! ## A161251.P7311366447989411242

`A161317(n+1)+A000007(A001844(n))`
-/

namespace A161251.P7311366447989411242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161317 (n + 1) + A000007 (A001844 n).toNat

end

end A161251.P7311366447989411242

/-! ## A161251.P14881371130223225047

`A161317(n+1)+A000007(A005893(n))`
-/

namespace A161251.P14881371130223225047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161317 (n + 1) + A000007 (A005893 n).toNat

end

end A161251.P14881371130223225047

/-! ## A161251.P15242134499829455340

`lcm(A009001(A002939(n)), A161317(n+1))`
-/

namespace A161251.P15242134499829455340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 (A002939 n).toNat) (A161317 (n + 1))

end

end A161251.P15242134499829455340

/-! ## A161251.P12035540916629066766

`A161317(n+1)+A000007(∑[A008574(n)])`
-/

namespace A161251.P12035540916629066766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161317 (n + 1) + A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161251.P12035540916629066766

/-! ## A161251.P14833213384066921630

`A001222(A104199(n+4))*A161317(n+1)`
-/

namespace A161251.P14833213384066921630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104199 (n + 4)).toNat * A161317 (n + 1)

end

end A161251.P14833213384066921630

/-! ## A161251.P10002829003984043165

`2*A161317(n+1)/A020639(A091228(n)+1)`
-/

namespace A161251.P10002829003984043165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A161317 (n + 1) : ℚ) / (A020639 (A091228 n + 1).toNat : ℚ))

end

end A161251.P10002829003984043165

/-! ## A161251.P3222895241909143047

`A161317(n+1)/ceil((A091228(n)/A000010((n+1)²))^(n-1))`
-/

namespace A161251.P3222895241909143047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161317 (n + 1) : ℚ) / (⌈((A091228 n : ℚ) / (A000010 ((n + 1) ^ 2) : ℚ)) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A161251.P3222895241909143047

/-!
# A161252: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 13 times.

The programs for A161252, there is no canonical definition to state claims against.
-/

/-! ## A161252.P16183279861365610341

`A161318(n+1)+A161304(A289944(n+1))`
-/

namespace A161252.P16183279861365610341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161318 (n + 1) + A161304 (A289944 (n + 1)).toNat

end

end A161252.P16183279861365610341

/-! ## A161252.P11957983584694205356

`A161318(n+1)%Δ[A098986(n)]`
-/

namespace A161252.P11957983584694205356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161318 (n + 1)) (f1 (n + 1) - f1 n)

end

end A161252.P11957983584694205356

/-! ## A161252.P16027753883041759093

`and(A161318(n+1), A336700(n+1))`
-/

namespace A161252.P16027753883041759093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161318 (n + 1)) (A336700 (n + 1))

end

end A161252.P16027753883041759093

/-! ## A161252.P43326303839778431

`A225569(A006222(n))+A161318(n+1)`
-/

namespace A161252.P43326303839778431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 (A006222 n).toNat + A161318 (n + 1)

end

end A161252.P43326303839778431

/-! ## A161252.P17736912701051565081

`A184945(A334291(n))+A161318(n+1)`
-/

namespace A161252.P17736912701051565081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A334291 n).toNat + A161318 (n + 1)

end

end A161252.P17736912701051565081

/-! ## A161252.P14923038115110822073

`A057427(A144774(n+1))*A161318(n+1)`
-/

namespace A161252.P14923038115110822073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A144774 (n + 1)).toNat * A161318 (n + 1)

end

end A161252.P14923038115110822073

/-! ## A161252.P10500945230701577270

`A001222(A340817(n+2))*A161318(n+1)`
-/

namespace A161252.P10500945230701577270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340817 (n + 2)).toNat * A161318 (n + 1)

end

end A161252.P10500945230701577270

/-! ## A161252.P7842273601567337861

`or(A010057(A038641(n+1)), A161318(n+1))`
-/

namespace A161252.P7842273601567337861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 (A038641 (n + 1)).toNat) (A161318 (n + 1))

end

end A161252.P7842273601567337861

/-! ## A161252.P15913965185737258109

`A001222(A340817(or(2, n)))+A161318(n+1)-1`
-/

namespace A161252.P15913965185737258109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340817 (Nat.lor 2 n)).toNat + (A161318 (n + 1) - 1)

end

end A161252.P15913965185737258109

/-!
# A161253: Number of partitions of n into central binomial coefficients A001405 where every part appears at least 14 times.

The programs for A161253, there is no canonical definition to state claims against.
-/

/-! ## A161253.P4966468036050199322

`A161319(n+1)+A161318(A161358(n+2))`
-/

namespace A161253.P4966468036050199322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161319 (n + 1) + A161318 (A161358 (n + 2)).toNat

end

end A161253.P4966468036050199322

/-!
# A161254: Number of partitions of n into central polygonal numbers A000124.

The programs for A161254, there is no canonical definition to state claims against.
-/

/-! ## A161254.P4639263208983670809

`∑[A029184(n)%A072843(n)]`
-/

namespace A161254.P4639263208983670809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029184 n) (A072843 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161254.P4639263208983670809

/-! ## A161254.P18066809779384237484

`∑[A029184(n)]%A232850(n+1)`
-/

namespace A161254.P18066809779384237484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A232850 (n + 1))

end

end A161254.P18066809779384237484

/-! ## A161254.P13313763827082840865

`A278163(A131577(n)+A005247(n))`
-/

namespace A161254.P13313763827082840865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278163 (A131577 n + A005247 n).toNat

end

end A161254.P13313763827082840865

/-! ## A161254.P4142204586341100044

`A025147(n+3)+A002265(A250000(n+1))`
-/

namespace A161254.P4142204586341100044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 3) + A002265 (A250000 (n + 1)).toNat

end

end A161254.P4142204586341100044

/-! ## A161254.P5596294521716197782

`A278163(A018819(A033485(n+2)))`
-/

namespace A161254.P5596294521716197782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278163 (A018819 (A033485 (n + 2)).toNat).toNat

end

end A161254.P5596294521716197782

/-!
# A161255: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 2 times.

The programs for A161255, there is no canonical definition to state claims against.
-/

/-! ## A161255.P17801913668799713459

`A127321(floor(sinh(A030451(n))))`
-/

namespace A161255.P17801913668799713459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 ⌊Real.sinh (A030451 n : ℝ)⌋.toNat

end

end A161255.P17801913668799713459

/-! ## A161255.P14833434755082102110

`A127321(ceil(sinh(A030451(n))))`
-/

namespace A161255.P14833434755082102110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 ⌈Real.sinh (A030451 n : ℝ)⌉.toNat

end

end A161255.P14833434755082102110

/-! ## A161255.P5846221616405242003

`A127321(round(sinh(A030451(n))))`
-/

namespace A161255.P5846221616405242003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (SequenceMachineLib.roundAway (Real.sinh (A030451 n : ℝ))).toNat

end

end A161255.P5846221616405242003

/-! ## A161255.P16823865668117811534

`A084993(A028242(n+3))%A286141(3*n)`
-/

namespace A161255.P16823865668117811534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084993 (A028242 (n + 3)).toNat) (A286141 (3 * n))

end

end A161255.P16823865668117811534

/-! ## A161255.P1778120549339259901

`A161051(n+1)+A055641(A000602(n))`
-/

namespace A161255.P1778120549339259901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161051 (n + 1) + A055641 (A000602 n).toNat

end

end A161255.P1778120549339259901

/-!
# A161256: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 3 times.

The programs for A161256, there is no canonical definition to state claims against.
-/

/-! ## A161256.P8263693037905907987

`A161052(n+1)-A178798(A337983(n))`
-/

namespace A161256.P8263693037905907987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161052 (n + 1) - A178798 (A337983 n).toNat

end

end A161256.P8263693037905907987

/-! ## A161256.P15801843015865019785

`A178798(A337983(n)+2)+A161052(n+1)`
-/

namespace A161256.P15801843015865019785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A337983 n + 2).toNat + A161052 (n + 1)

end

end A161256.P15801843015865019785

/-! ## A161256.P7451126303219111938

`A161052(n+1)+A025469(A003595(n+1))`
-/

namespace A161256.P7451126303219111938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161052 (n + 1) + A025469 (A003595 (n + 1)).toNat

end

end A161256.P7451126303219111938

/-! ## A161256.P5866730896916772435

`A161052(n+1)+A025469(A303851(n))`
-/

namespace A161256.P5866730896916772435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161052 (n + 1) + A025469 (A303851 n).toNat

end

end A161256.P5866730896916772435

/-!
# A161257: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 4 times.

The programs for A161257, there is no canonical definition to state claims against.
-/

/-! ## A161257.P7772822651574063543

`A161053(n+1)+A073490(A234517(n+1))`
-/

namespace A161257.P7772822651574063543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161053 (n + 1) + A073490 (A234517 (n + 1)).toNat

end

end A161257.P7772822651574063543

/-!
# A161258: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 5 times.

The programs for A161258, there is no canonical definition to state claims against.
-/

/-! ## A161258.P15200829854388809113

`A161054(n+1)+A086483(A184946(n))`
-/

namespace A161258.P15200829854388809113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161054 (n + 1) + A086483 (A184946 n).toNat

end

end A161258.P15200829854388809113

/-! ## A161258.P4646932387362872960

`A238469(A141214(n))+A161054(n+1)`
-/

namespace A161258.P4646932387362872960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238469 (A141214 n).toNat + A161054 (n + 1)

end

end A161258.P4646932387362872960

/-!
# A161259: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 6 times.

The programs for A161259, there is no canonical definition to state claims against.
-/

/-! ## A161259.P6780687474777811761

`A173923(A076303(n+1))+A161055(n+1)`
-/

namespace A161259.P6780687474777811761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173923 (A076303 (n + 1)).toNat + A161055 (n + 1)

end

end A161259.P6780687474777811761

/-!
# A161260: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 7 times.

The programs for A161260, there is no canonical definition to state claims against.
-/

/-! ## A161260.P14720289523009519695

`A089870(A161056(n+1))%A316092(n+1)`
-/

namespace A161260.P14720289523009519695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089870 (A161056 (n + 1)).toNat) (A316092 (n + 1))

end

end A161260.P14720289523009519695

/-! ## A161260.P7094312923241104073

`A089870(A161056(n+1)%A096076(n))`
-/

namespace A161260.P7094312923241104073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.tmod (A161056 (n + 1)) (A096076 n)).toNat

end

end A161260.P7094312923241104073

/-! ## A161260.P7074705483644052818

`A089870(A161056(n+1))*A182850(A155045(n+1))`
-/

namespace A161260.P7074705483644052818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A161056 (n + 1)).toNat * A182850 (A155045 (n + 1)).toNat

end

end A161260.P7074705483644052818

/-!
# A161261: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 8 times.

The programs for A161261, there is no canonical definition to state claims against.
-/

/-! ## A161261.P8355102682823459132

`A185284(A321445(n))+A161057(n+1)`
-/

namespace A161261.P8355102682823459132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A321445 n).toNat + A161057 (n + 1)

end

end A161261.P8355102682823459132

/-! ## A161261.P11062683055241833118

`A161057(n+1)+A025465(A168323(n+1))`
-/

namespace A161261.P11062683055241833118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161057 (n + 1) + A025465 (A168323 (n + 1)).toNat

end

end A161261.P11062683055241833118

/-! ## A161261.P206001349807586770

`A161057(n+1)+A018843(A240020(n+1))`
-/

namespace A161261.P206001349807586770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161057 (n + 1) + A018843 (A240020 (n + 1)).toNat

end

end A161261.P206001349807586770

/-!
# A161262: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 9 times.

The programs for A161262, there is no canonical definition to state claims against.
-/

/-! ## A161262.P12031314305109549454

`A161058(n+1)+A000007(A332839(n+1))`
-/

namespace A161262.P12031314305109549454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161058 (n + 1) + A000007 (A332839 (n + 1)).toNat

end

end A161262.P12031314305109549454

/-! ## A161262.P5475694784424452200

`A161058(n+1)+A063524(A258646(n))`
-/

namespace A161262.P5475694784424452200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161058 (n + 1) + A063524 (A258646 n).toNat

end

end A161262.P5475694784424452200

/-! ## A161262.P13616157887189647889

`A161058(n+1)+A134667(A258646(n)+6)`
-/

namespace A161262.P13616157887189647889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161058 (n + 1) + A134667 (A258646 n + 6).toNat

end

end A161262.P13616157887189647889

/-! ## A161262.P10530794286987247551

`A161058(n+1)+A318569(A258646(n)+1)%2`
-/

namespace A161262.P10530794286987247551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161058 (n + 1) + Int.tmod (A318569 (A258646 n + 1).toNat) 2

end

end A161262.P10530794286987247551

/-! ## A161262.P13900703614401621255

`A161058(1-(n-2*n))+A237427(A258646(n))%2`
-/

namespace A161262.P13900703614401621255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161058 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat + Int.tmod (A237427 (A258646 n).toNat) 2

end

end A161262.P13900703614401621255

/-! ## A161262.P14552166606341164421

`A161058(n+1)+A025437(A341100(n+1))`
-/

namespace A161262.P14552166606341164421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161058 (n + 1) + A025437 (A341100 (n + 1)).toNat

end

end A161262.P14552166606341164421

/-!
# A161265: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 12 times.

The programs for A161265, there is no canonical definition to state claims against.
-/

/-! ## A161265.P5693438309016216216

`or(A161060(A335434(n+1)), A161061(n+1))`
-/

namespace A161265.P5693438309016216216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161060 (A335434 (n + 1)).toNat) (A161061 (n + 1))

end

end A161265.P5693438309016216216

/-!
# A161266: Number of partitions of n into central polygonal numbers A000124 where every part appears at least 13 times.

The programs for A161266, there is no canonical definition to state claims against.
-/

/-! ## A161266.P15899545506861795761

`or(A161062(n+1), A185284(A161063(n+1)))`
-/

namespace A161266.P15899545506861795761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161062 (n + 1)) (A185284 (A161063 (n + 1)).toNat)

end

end A161266.P15899545506861795761

/-!
# A161270: Number of partitions of n into Lucas numbers A000032 where every part appears at least 4 times.

The programs for A161270, there is no canonical definition to state claims against.
-/

/-! ## A161270.P17276922611557849931

`A160974(n+1)%A353412(A000022(n)+1)`
-/

namespace A161270.P17276922611557849931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160974 (n + 1)) (A353412 (A000022 n + 1).toNat)

end

end A161270.P17276922611557849931

/-!
# A161271: Number of partitions of n into Lucas numbers A000032 where every part appears at least 5 times.

The programs for A161271, there is no canonical definition to state claims against.
-/

/-! ## A161271.P7509903528185373905

`A160975(n+1)%A246458(A100405(n))`
-/

namespace A161271.P7509903528185373905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160975 (n + 1)) (A246458 (A100405 n).toNat)

end

end A161271.P7509903528185373905

/-! ## A161271.P5655476035386087706

`A001222(A329624(n+1)^A160975(n+1))`
-/

namespace A161271.P5655476035386087706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A329624 (n + 1) : ℚ) ^ (A160975 (n + 1) : ℤ))).toNat

end

end A161271.P5655476035386087706

/-! ## A161271.P14894297179203691566

`A032741(A329624(n+1)^A160975(n+1))`
-/

namespace A161271.P14894297179203691566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A329624 (n + 1) : ℚ) ^ (A160975 (n + 1) : ℤ))).toNat

end

end A161271.P14894297179203691566

/-! ## A161271.P18100585279469319305

`A067029(A329624(n+1)^A160975(n+1))`
-/

namespace A161271.P18100585279469319305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((A329624 (n + 1) : ℚ) ^ (A160975 (n + 1) : ℤ))).toNat

end

end A161271.P18100585279469319305

/-! ## A161271.P5382174043893548182

`A001222(A329624(n+1)^(A244518(n+1)+A160976(n+1)))`
-/

namespace A161271.P5382174043893548182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A329624 (n + 1) : ℚ) ^ (A244518 (n + 1) + A160976 (n + 1) : ℤ))).toNat

end

end A161271.P5382174043893548182

/-!
# A161272: Number of partitions of n into Lucas numbers A000032 where every part appears at least 6 times.

The programs for A161272, there is no canonical definition to state claims against.
-/

/-! ## A161272.P12018044978438173946

`A160976(n+1)%A007318(p?[A160981(n+1)])`
-/

namespace A161272.P12018044978438173946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160976 (n + 1)) (A007318 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A161272.P12018044978438173946

/-! ## A161272.P17265787745705374324

`A160976(n+1)%A005408(A048068(n+1))`
-/

namespace A161272.P17265787745705374324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160976 (n + 1)) (A005408 (A048068 (n + 1)).toNat)

end

end A161272.P17265787745705374324

/-! ## A161272.P13667859928104142387

`A161311((n+1)^A161303(n+1)²)`
-/

namespace A161272.P13667859928104142387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161311 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A161303 (n + 1) ^ 2 : ℤ))).toNat

end

end A161272.P13667859928104142387

/-! ## A161272.P6267334930898498883

`A001222(5^A161030(n+1))*A161061(n+1)`
-/

namespace A161272.P6267334930898498883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A161030 (n + 1) : ℤ))).toNat * A161061 (n + 1)

end

end A161272.P6267334930898498883

/-! ## A161272.P2479543476530086278

`A161245(n+1)%A318260(A161274(2*n+5))`
-/

namespace A161272.P2479543476530086278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161245 (n + 1)) (A318260 (A161274 (2 * n + 5)).toNat)

end

end A161272.P2479543476530086278

/-!
# A161273: Number of partitions of n into Lucas numbers A000032 where every part appears at least 7 times.

The programs for A161273, there is no canonical definition to state claims against.
-/

/-! ## A161273.P5330610519235864387

`A160977(n+1)%A025140(A025151(n))`
-/

namespace A161273.P5330610519235864387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160977 (n + 1)) (A025140 (A025151 n).toNat)

end

end A161273.P5330610519235864387

/-! ## A161273.P17362471628050816655

`and(A160996(n+1)-A160984(n+1), A160977(n+1))`
-/

namespace A161273.P17362471628050816655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160996 (n + 1) - A160984 (n + 1)) (A160977 (n + 1))

end

end A161273.P17362471628050816655

/-! ## A161273.P15326899101648800913

`A161031(C(n+1, A161038(n+1)²))`
-/

namespace A161273.P15326899101648800913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161031 (Nat.choose (n + 1) (A161038 (n + 1) ^ 2).toNat)

end

end A161273.P15326899101648800913

/-!
# A161274: Number of partitions of n into Lucas numbers A000032 where every part appears at least 8 times.

The programs for A161274, there is no canonical definition to state claims against.
-/

/-! ## A161274.P776840300544699709

`A001222(A073458(n+1)^A160978(n+1))`
-/

namespace A161274.P776840300544699709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A073458 (n + 1) : ℚ) ^ (A160978 (n + 1) : ℤ))).toNat

end

end A161274.P776840300544699709

/-! ## A161274.P5185528922192618158

`A160978(n+1)%A000203(A271952(n))`
-/

namespace A161274.P5185528922192618158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160978 (n + 1)) (A000203 (A271952 n).toNat)

end

end A161274.P5185528922192618158

/-! ## A161274.P4199770020458766380

`A161247(n+1)%A147166(A140472(n+1))`
-/

namespace A161274.P4199770020458766380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161247 (n + 1)) (A147166 (A140472 (n + 1)).toNat)

end

end A161274.P4199770020458766380

/-! ## A161274.P17065478055877902789

`and(A160978(n+1), A192597(A076877(n+1)))`
-/

namespace A161274.P17065478055877902789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160978 (n + 1)) (A192597 (A076877 (n + 1)).toNat)

end

end A161274.P17065478055877902789

/-! ## A161274.P10662189625931744023

`and(A161083(n+1), A192597(A076877(n+1)))`
-/

namespace A161274.P10662189625931744023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161083 (n + 1)) (A192597 (A076877 (n + 1)).toNat)

end

end A161274.P10662189625931744023

/-!
# A161275: Number of partitions of n into Lucas numbers A000032 where every part appears at least 9 times.

The programs for A161275, there is no canonical definition to state claims against.
-/

/-! ## A161275.P17917652221464767607

`A160979(n+1)%A334562(A160975(n+1))`
-/

namespace A161275.P17917652221464767607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160979 (n + 1)) (A334562 (A160975 (n + 1)).toNat)

end

end A161275.P17917652221464767607

/-! ## A161275.P9084726482560163338

`A161314(n+1)%A000045(A248777(n+1))`
-/

namespace A161275.P9084726482560163338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161314 (n + 1)) (A000045 (A248777 (n + 1)).toNat)

end

end A161275.P9084726482560163338

/-! ## A161275.P3926197433377331788

`A161300(n+1)%A093889(A161244(n+1))`
-/

namespace A161275.P3926197433377331788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161300 (n + 1)) (A093889 (A161244 (n + 1)).toNat)

end

end A161275.P3926197433377331788

/-! ## A161275.P11901512638043257504

`A334944(A275734(or(13, comp[2*n+3])))`
-/

namespace A161275.P11901512638043257504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334944 (A275734 (Nat.lor 13 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))).toNat

end

end A161275.P11901512638043257504

/-!
# A161276: Number of partitions of n into Lucas numbers A000032 where every part appears at least 10 times.

The programs for A161276, there is no canonical definition to state claims against.
-/

/-! ## A161276.P11293927071178662622

`A160980(n+1)%A178334(A011971(n))`
-/

namespace A161276.P11293927071178662622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160980 (n + 1)) (A178334 (A011971 n).toNat)

end

end A161276.P11293927071178662622

/-! ## A161276.P17260239788374370039

`A001222(A102684(n)^A160980(n+1))`
-/

namespace A161276.P17260239788374370039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A102684 n : ℚ) ^ (A160980 (n + 1) : ℤ))).toNat

end

end A161276.P17260239788374370039

/-! ## A161276.P16462590194378432376

`A001222(A102684(n)^A161315(n+1))`
-/

namespace A161276.P16462590194378432376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A102684 n : ℚ) ^ (A161315 (n + 1) : ℤ))).toNat

end

end A161276.P16462590194378432376

/-! ## A161276.P12907297257328996084

`∑[char[A017377(n+1)]]*A359944(3*n+1)`
-/

namespace A161276.P12907297257328996084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A359944 (3 * n + 1)

end

end A161276.P12907297257328996084

/-! ## A161276.P5418152229773564279

`and(A225560(n+2), A387394(n+1))`
-/

namespace A161276.P5418152229773564279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225560 (n + 2)) (A387394 (n + 1))

end

end A161276.P5418152229773564279

/-!
# A161277: Number of partitions of n into Lucas numbers A000032 where every part appears at least 11 times.

The programs for A161277, there is no canonical definition to state claims against.
-/

/-! ## A161277.P8279407128889290568

`A160981(n+1)%A145968(A317245(n))`
-/

namespace A161277.P8279407128889290568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160981 (n + 1)) (A145968 (A317245 n).toNat)

end

end A161277.P8279407128889290568

/-! ## A161277.P3348072799632555173

`A161035(n+1)%A145968(A317245(n))`
-/

namespace A161277.P3348072799632555173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161035 (n + 1)) (A145968 (A317245 n).toNat)

end

end A161277.P3348072799632555173

/-! ## A161277.P17619371632020561872

`A161086(n+1)%A145968(A317245(n))`
-/

namespace A161277.P17619371632020561872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161086 (n + 1)) (A145968 (A317245 n).toNat)

end

end A161277.P17619371632020561872

/-! ## A161277.P11100371316539543174

`A161250(n+1)%A145968(A317245(n))`
-/

namespace A161277.P11100371316539543174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161250 (n + 1)) (A145968 (A317245 n).toNat)

end

end A161277.P11100371316539543174

/-! ## A161277.P9711772684826127283

`A161302(n+1)%A145968(A317245(n))`
-/

namespace A161277.P9711772684826127283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161302 (n + 1)) (A145968 (A317245 n).toNat)

end

end A161277.P9711772684826127283

/-!
# A161278: Number of partitions of n into Lucas numbers A000032 where every part appears at least 12 times.

The programs for A161278, there is no canonical definition to state claims against.
-/

/-! ## A161278.P4512044362639355223

`A160982(n+1)%A006982(A160977(n+1))`
-/

namespace A161278.P4512044362639355223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160982 (n + 1)) (A006982 (A160977 (n + 1)).toNat)

end

end A161278.P4512044362639355223

/-! ## A161278.P6353345561888366271

`A001222(7^A161303(n+1))*A297046(A143826(n+1))`
-/

namespace A161278.P6353345561888366271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A161303 (n + 1) : ℤ))).toNat * A297046 (A143826 (n + 1)).toNat

end

end A161278.P6353345561888366271

/-! ## A161278.P581083117866273386

`A001222(7^A161317(n+1))*A297046(A143826(n+1))`
-/

namespace A161278.P581083117866273386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A161317 (n + 1) : ℤ))).toNat * A297046 (A143826 (n + 1)).toNat

end

end A161278.P581083117866273386

/-! ## A161278.P10277405770450893839

`A104899(n+1)%A217693(n+1)`
-/

namespace A161278.P10277405770450893839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104899 (n + 1)) (A217693 (n + 1))

end

end A161278.P10277405770450893839

/-! ## A161278.P9007924027580790456

`and(-2, 2^n)%A282622(A051201(n+1))`
-/

namespace A161278.P9007924027580790456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (-2) (2 ^ n : ℤ)) (A282622 (A051201 (n + 1)).toNat)

end

end A161278.P9007924027580790456

/-!
# A161279: Number of partitions of n into Lucas numbers A000032 where every part appears at least 13 times.

The programs for A161279, there is no canonical definition to state claims against.
-/

/-! ## A161279.P5033469977878497095

`A023975(A160991(n+1))*A160983(n+1)`
-/

namespace A161279.P5033469977878497095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023975 (A160991 (n + 1)).toNat * A160983 (n + 1)

end

end A161279.P5033469977878497095

/-! ## A161279.P10548936146157057793

`A023975(A160991(n+1))*A161088(n+1)`
-/

namespace A161279.P10548936146157057793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023975 (A160991 (n + 1)).toNat * A161088 (n + 1)

end

end A161279.P10548936146157057793

/-! ## A161279.P9920115679971323669

`A160983(n+1)%A213217(A160983(2*(n+1))+1)`
-/

namespace A161279.P9920115679971323669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160983 (n + 1)) (A213217 (A160983 (2 * (n + 1)) + 1).toNat)

end

end A161279.P9920115679971323669

/-! ## A161279.P5087317025709914509

`A000079(n)%A000196(A381524(2*(n+2)))`
-/

namespace A161279.P5087317025709914509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A000196 (A381524 (2 * (n + 2))).toNat)

end

end A161279.P5087317025709914509

/-! ## A161279.P3278528265262015207

`A011782(n+1)%A000196(A381524(2*(n+2)))`
-/

namespace A161279.P3278528265262015207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) (A000196 (A381524 (2 * (n + 2))).toNat)

end

end A161279.P3278528265262015207

/-!
# A161280: Number of partitions of n into Lucas numbers A000032 where every part appears at least 14 times.

The programs for A161280, there is no canonical definition to state claims against.
-/

/-! ## A161280.P12090873105043454762

`A160984(n+1)%∑[A151713(n)]`
-/

namespace A161280.P12090873105043454762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160984 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161280.P12090873105043454762

/-! ## A161280.P14611626793800499799

`∏{e}[A287091(n)^A160984(n+1), #+1]-1`
-/

namespace A161280.P14611626793800499799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287091 n : ℚ) ^ (A160984 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A161280.P14611626793800499799

/-! ## A161280.P6821952100338763011

`A087436(A048766(n)^A160984(n+1))`
-/

namespace A161280.P6821952100338763011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A048766 n : ℚ) ^ (A160984 (n + 1) : ℤ))).toNat

end

end A161280.P6821952100338763011

/-! ## A161280.P16581002142588450068

`A087436(A048766(n)^A161038(n+1))`
-/

namespace A161280.P16581002142588450068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A048766 n : ℚ) ^ (A161038 (n + 1) : ℤ))).toNat

end

end A161280.P16581002142588450068

/-! ## A161280.P2437473650209773176

`A087436(A048766(n)^A161089(n+1))`
-/

namespace A161280.P2437473650209773176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A048766 n : ℚ) ^ (A161089 (n + 1) : ℤ))).toNat

end

end A161280.P2437473650209773176

/-! ## A161280.P17916139991717296448

`A087436(A048766(n)^A161253(n+1))`
-/

namespace A161280.P17916139991717296448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A048766 n : ℚ) ^ (A161253 (n + 1) : ℤ))).toNat

end

end A161280.P17916139991717296448

/-! ## A161280.P14171666855743471998

`A087436(A048766(n)^A161305(n+1))`
-/

namespace A161280.P14171666855743471998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A048766 n : ℚ) ^ (A161305 (n + 1) : ℤ))).toNat

end

end A161280.P14171666855743471998

/-! ## A161280.P18419567141901380858

`A001222(A287091(n)^A160984(n+1))`
-/

namespace A161280.P18419567141901380858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A287091 n : ℚ) ^ (A160984 (n + 1) : ℤ))).toNat

end

end A161280.P18419567141901380858

/-! ## A161280.P10490474772480374320

`A051903(A287091(n)^A160984(n+1))`
-/

namespace A161280.P10490474772480374320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A287091 n : ℚ) ^ (A160984 (n + 1) : ℤ))).toNat

end

end A161280.P10490474772480374320

/-! ## A161280.P4200089390488935589

`A000005(A287091(n)^A160984(n+1))-1`
-/

namespace A161280.P4200089390488935589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A287091 n : ℚ) ^ (A160984 (n + 1) : ℤ))).toNat - 1

end

end A161280.P4200089390488935589

/-!
# A161281: Number of partitions of n into numbers not divisible by 3 where every part appears at least 3 times.

The programs for A161281, there is no canonical definition to state claims against.
-/

/-! ## A161281.P1032766235070428313

`A161052(n+1)+A025469(A335308(n))`
-/

namespace A161281.P1032766235070428313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161052 (n + 1) + A025469 (A335308 n).toNat

end

end A161281.P1032766235070428313

/-! ## A161281.P17767323215920244788

`A161256(n+1)+A025469(A335308(n))`
-/

namespace A161281.P17767323215920244788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161256 (n + 1) + A025469 (A335308 n).toNat

end

end A161281.P17767323215920244788

/-! ## A161281.P10591575947585443654

`or(A025469(A008930(n)), A161052(n+1))`
-/

namespace A161281.P10591575947585443654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A008930 n).toNat) (A161052 (n + 1))

end

end A161281.P10591575947585443654

/-! ## A161281.P4233657575622775769

`or(A025469(A008930(n)), A161256(n+1))`
-/

namespace A161281.P4233657575622775769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A008930 n).toNat) (A161256 (n + 1))

end

end A161281.P4233657575622775769

/-! ## A161281.P5269741179289640751

`or(A161052(n+1), A294019(A063834(n)))`
-/

namespace A161281.P5269741179289640751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161052 (n + 1)) (A294019 (A063834 n).toNat)

end

end A161281.P5269741179289640751

/-!
# A161282: Number of partitions of n into numbers not divisible by 3 where every part appears at least 4 times.

The programs for A161282, there is no canonical definition to state claims against.
-/

/-! ## A161282.P7107883056902235104

`A037477(A161257(n+1)%A100952(n+1))`
-/

namespace A161282.P7107883056902235104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A161257 (n + 1)) (A100952 (n + 1))).toNat

end

end A161282.P7107883056902235104

/-! ## A161282.P1545052611354555529

`A037477(A161257(n+1))%A351017(2*(n+1))`
-/

namespace A161282.P1545052611354555529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A161257 (n + 1)).toNat) (A351017 (2 * (n + 1)))

end

end A161282.P1545052611354555529

/-! ## A161282.P2409119067689273495

`A161257(n+1)+A025442(A113592(n+1))`
-/

namespace A161282.P2409119067689273495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161257 (n + 1) + A025442 (A113592 (n + 1)).toNat

end

end A161282.P2409119067689273495

/-! ## A161282.P6123647622770484328

`A185216(A185245(2*(n+1)))+A161053(n+1)`
-/

namespace A161282.P6123647622770484328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A185245 (2 * (n + 1))).toNat + A161053 (n + 1)

end

end A161282.P6123647622770484328

/-!
# A161283: Number of partitions of n into numbers not divisible by 3 where every part appears at least 5 times.

The programs for A161283, there is no canonical definition to state claims against.
-/

/-! ## A161283.P17360419407091997125

`A161054(n+1)+A001221(Δ[A243903(n+1)])`
-/

namespace A161283.P17360419407091997125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161054 (n + 1) + A001221 (f1 (n + 1) - f1 n).toNat

end

end A161283.P17360419407091997125

/-! ## A161283.P12359141290410587793

`A161258(n+1)+A001221(Δ[A243903(n+1)])`
-/

namespace A161283.P12359141290410587793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) + A001221 (f1 (n + 1) - f1 n).toNat

end

end A161283.P12359141290410587793

/-! ## A161283.P13613876945346446732

`A268814(Δ[A243903(n+1)])+A161054(n+1)`
-/

namespace A161283.P13613876945346446732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268814 (f1 (n + 1) - f1 n).toNat + A161054 (n + 1)

end

end A161283.P13613876945346446732

/-! ## A161283.P9712077670866510373

`A268814(Δ[A243903(n+1)])+A161258(n+1)`
-/

namespace A161283.P9712077670866510373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268814 (f1 (n + 1) - f1 n).toNat + A161258 (n + 1)

end

end A161283.P9712077670866510373

/-! ## A161283.P17109772490906221700

`A324011(Δ[A243903(n+1)])+A161054(n+1)`
-/

namespace A161283.P17109772490906221700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324011 (f1 (n + 1) - f1 n).toNat + A161054 (n + 1)

end

end A161283.P17109772490906221700

/-!
# A161284: Number of partitions of n into numbers not divisible by 3 where every part appears at least 6 times.

The programs for A161284, there is no canonical definition to state claims against.
-/

/-! ## A161284.P4221464665685711091

`A127287(A161055(n+1)%A098869(n+1))`
-/

namespace A161284.P4221464665685711091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A161055 (n + 1)) (A098869 (n + 1))).toNat

end

end A161284.P4221464665685711091

/-! ## A161284.P18317274043112395304

`A127287(A161259(n+1)%A098869(n+1))`
-/

namespace A161284.P18317274043112395304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A161259 (n + 1)) (A098869 (n + 1))).toNat

end

end A161284.P18317274043112395304

/-! ## A161284.P11816596298067429077

`A127287(A161259(n+1))%A005901(A005901(n))`
-/

namespace A161284.P11816596298067429077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127287 (A161259 (n + 1)).toNat) (A005901 (A005901 n).toNat)

end

end A161284.P11816596298067429077

/-! ## A161284.P4562382367405196119

`A185284(A161270(n+1))+A161055(n+1)`
-/

namespace A161284.P4562382367405196119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161270 (n + 1)).toNat + A161055 (n + 1)

end

end A161284.P4562382367405196119

/-! ## A161284.P4407908180114339098

`A185284(A161270(n+1))+A161259(n+1)`
-/

namespace A161284.P4407908180114339098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161270 (n + 1)).toNat + A161259 (n + 1)

end

end A161284.P4407908180114339098

/-!
# A161285: Number of partitions of n into numbers not divisible by 3 where every part appears at least 7 times.

The programs for A161285, there is no canonical definition to state claims against.
-/

/-! ## A161285.P6720982163801921057

`or(A102683(A201195(n+1)), A161056(n+1))`
-/

namespace A161285.P6720982163801921057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A201195 (n + 1)).toNat) (A161056 (n + 1))

end

end A161285.P6720982163801921057

/-! ## A161285.P15590545822917927932

`or(A102683(A201195(n+1)), A161260(n+1))`
-/

namespace A161285.P15590545822917927932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A201195 (n + 1)).toNat) (A161260 (n + 1))

end

end A161285.P15590545822917927932

/-! ## A161285.P1084021362788072411

`A161056(n+1)+A102683(A201195(n+1)+A102683(n))`
-/

namespace A161285.P1084021362788072411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161056 (n + 1) + A102683 (A201195 (n + 1) + A102683 n).toNat

end

end A161285.P1084021362788072411

/-! ## A161285.P17919655098472939731

`∑{d}[n+1, A161056(#)*A342136((n+1)/#-1)]`
-/

namespace A161285.P17919655098472939731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161056 d * A342136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161285.P17919655098472939731

/-! ## A161285.P14245305224824584838

`∑{d}[n+1, A161260(#)*A342136((n+1)/#-1)]`
-/

namespace A161285.P14245305224824584838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161260 d * A342136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161285.P14245305224824584838

/-!
# A161286: Number of partitions of n into numbers not divisible by 3 where every part appears at least 8 times.

The programs for A161286, there is no canonical definition to state claims against.
-/

/-! ## A161286.P10240514991022545090

`A161261(n+1)+A102683(A034512(n+1))*A102683(n)`
-/

namespace A161286.P10240514991022545090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) + A102683 (A034512 (n + 1)).toNat * A102683 n

end

end A161286.P10240514991022545090

/-! ## A161286.P16289296132105788526

`A161261(n+1)+A025465(A034512(n+2))`
-/

namespace A161286.P16289296132105788526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) + A025465 (A034512 (n + 2)).toNat

end

end A161286.P16289296132105788526

/-! ## A161286.P1021633901465294902

`A161261(n+1)+A102683(Δ[A034512(n+1)])`
-/

namespace A161286.P1021633901465294902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) + A102683 (f1 (n + 1) - f1 n).toNat

end

end A161286.P1021633901465294902

/-! ## A161286.P11871136776741915084

`A185284(A161272(n+1))+A161261(n+1)`
-/

namespace A161286.P11871136776741915084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161272 (n + 1)).toNat + A161261 (n + 1)

end

end A161286.P11871136776741915084

/-!
# A161287: Number of partitions of n into numbers not divisible by 3 where every part appears at least 9 times.

The programs for A161287, there is no canonical definition to state claims against.
-/

/-! ## A161287.P3604163486685993288

`∑{d}[n+1, A161262(#)*A319790((n+1)/#-1)]`
-/

namespace A161287.P3604163486685993288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161262 d * A319790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161287.P3604163486685993288

/-! ## A161287.P7824742250300242508

`∑{d}[n+1, A161262(#)*A319793((n+1)/#-1)]`
-/

namespace A161287.P7824742250300242508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161262 d * A319793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161287.P7824742250300242508

/-! ## A161287.P9051702293393206982

`∑{d}[n+1, A161262(#)*A330054((n+1)/#-1)]`
-/

namespace A161287.P9051702293393206982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161262 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161287.P9051702293393206982

/-! ## A161287.P11503531260189060779

`∑{d}[n+1, A161262(#)*A369926((n+1)/#-1)]`
-/

namespace A161287.P11503531260189060779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161262 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161287.P11503531260189060779

/-! ## A161287.P5676157018876970249

`∑{d}[n+1, A161262(#)*A324012((n+1)/#-1)]`
-/

namespace A161287.P5676157018876970249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161262 d * A324012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161287.P5676157018876970249

/-!
# A161288: Number of partitions of n into numbers not divisible by 3 where every part appears at least 10 times.

The programs for A161288, there is no canonical definition to state claims against.
-/

/-! ## A161288.P5772038370128007980

`or(A060862(A153057(n)), A161059(n+1))`
-/

namespace A161288.P5772038370128007980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060862 (A153057 n).toNat) (A161059 (n + 1))

end

end A161288.P5772038370128007980

/-! ## A161288.P13519998145697786972

`or(A060862(A153057(n)), A161263(n+1))`
-/

namespace A161288.P13519998145697786972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060862 (A153057 n).toNat) (A161263 (n + 1))

end

end A161288.P13519998145697786972

/-! ## A161288.P2114482585893930485

`or(A101637(A055450(n)), A161059(n+1))`
-/

namespace A161288.P2114482585893930485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101637 (A055450 n).toNat) (A161059 (n + 1))

end

end A161288.P2114482585893930485

/-! ## A161288.P12348162754105776252

`or(A101637(A055450(n)), A161263(n+1))`
-/

namespace A161288.P12348162754105776252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101637 (A055450 n).toNat) (A161263 (n + 1))

end

end A161288.P12348162754105776252

/-! ## A161288.P4275031260107585881

`∑{d}[n+1, A161263(#)*A330054((n+1)/#-1)]`
-/

namespace A161288.P4275031260107585881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161263 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161288.P4275031260107585881

/-! ## A161288.P7019890220098889370

`∑{d}[n+1, A161263(#)*A369926((n+1)/#-1)]`
-/

namespace A161288.P7019890220098889370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161263 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161288.P7019890220098889370

/-!
# A161289: Number of partitions of n into numbers not divisible by 3 where every part appears at least 11 times.

The programs for A161289, there is no canonical definition to state claims against.
-/

/-! ## A161289.P17144177018527391322

`A161264(n+1)-A178798(A160123(n+1))`
-/

namespace A161289.P17144177018527391322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1) - A178798 (A160123 (n + 1)).toNat

end

end A161289.P17144177018527391322

/-!
# A161290: Number of partitions of n into numbers not divisible by 3 where every part appears at least 12 times.

The programs for A161290, there is no canonical definition to state claims against.
-/

/-! ## A161290.P1613487450248277238

`A161061(n+1)+val(A216556(n), A133506(n+1))`
-/

namespace A161290.P1613487450248277238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161061 (n + 1) + (SequenceMachineLib.valuation (A216556 n).toNat (A133506 (n + 1)).toNat : ℤ)

end

end A161290.P1613487450248277238

/-! ## A161290.P15888003345484493100

`A161237(A000005(n+1))+A161265(n+1)%A359682(n)`
-/

namespace A161290.P15888003345484493100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161237 (A000005 (n + 1)).toNat + Int.tmod (A161265 (n + 1)) (A359682 n)

end

end A161290.P15888003345484493100

/-!
# A161291: Number of partitions of n into numbers not divisible by 3 where every part appears at least 13 times.

The programs for A161291, there is no canonical definition to state claims against.
-/

/-! ## A161291.P1888398069136929429

`A161062(n+1)+A010060(C(n, 64))`
-/

namespace A161291.P1888398069136929429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1) + A010060 (Nat.choose n 64)

end

end A161291.P1888398069136929429

/-! ## A161291.P566885941151299342

`or(A161062(n+1), A375034(C(n, 64)+1))`
-/

namespace A161291.P566885941151299342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161062 (n + 1)) (A375034 (Nat.choose n 64 + 1))

end

end A161291.P566885941151299342

/-! ## A161291.P15783401639820307405

`A161062(n+1)+A122285(C(n, 64))`
-/

namespace A161291.P15783401639820307405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1) + A122285 (Nat.choose n 64)

end

end A161291.P15783401639820307405

/-! ## A161291.P3709204513776667880

`A161062(n+1)+A003849(C(n, 64)²)`
-/

namespace A161291.P3709204513776667880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1) + A003849 (Nat.choose n 64 ^ 2)

end

end A161291.P3709204513776667880

/-! ## A161291.P14820017558166507775

`A161266(3^C(n, 64)²+n)`
-/

namespace A161291.P14820017558166507775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (3 ^ Nat.choose n 64 ^ 2 + n)

end

end A161291.P14820017558166507775

/-! ## A161291.P4027520639904670370

`A161062(A000079(C(n, 64))+n)`
-/

namespace A161291.P4027520639904670370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (A000079 (Nat.choose n 64) + (n : ℤ)).toNat

end

end A161291.P4027520639904670370

/-! ## A161291.P5671180080778882575

`A161062(n+1)+A000045(C(n, 64)²)`
-/

namespace A161291.P5671180080778882575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1) + A000045 (Nat.choose n 64 ^ 2)

end

end A161291.P5671180080778882575

/-!
# A161293: Number of partitions of n into numbers not divisible by 4 where every part appears at least 2 times.

The programs for A161293, there is no canonical definition to state claims against.
-/

/-! ## A161293.P8892850795477852062

`A112189(4*n)`
-/

namespace A161293.P8892850795477852062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112189 (4 * n)

end

end A161293.P8892850795477852062

/-! ## A161293.P17935716067139948986

`A112190(4*n)`
-/

namespace A161293.P17935716067139948986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112190 (4 * n)

end

end A161293.P17935716067139948986

/-! ## A161293.P741417940899983343

`A112191(4*n)`
-/

namespace A161293.P741417940899983343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112191 (4 * n)

end

end A161293.P741417940899983343

/-! ## A161293.P2414301228283463475

`lcm(A020985(n), A112190(A008574(n)))`
-/

namespace A161293.P2414301228283463475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112190 (A008574 n).toNat)

end

end A161293.P2414301228283463475

/-! ## A161293.P3831417148831430017

`A112188(4*n)`
-/

namespace A161293.P3831417148831430017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112188 (4 * n)

end

end A161293.P3831417148831430017

/-!
# A161294: Number of partitions of n into numbers not divisible by 4 where every part appears at least 3 times.

The programs for A161294, there is no canonical definition to state claims against.
-/

/-! ## A161294.P15037948651414955516

`A185284(lcm(2, n))+A161078(n+1)`
-/

namespace A161294.P15037948651414955516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (Nat.lcm 2 n) + A161078 (n + 1)

end

end A161294.P15037948651414955516

/-! ## A161294.P14118949817204261499

`A161078(n+1)+A011737(A081155(n))`
-/

namespace A161294.P14118949817204261499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161078 (n + 1) + A011737 (A081155 n).toNat

end

end A161294.P14118949817204261499

/-! ## A161294.P5138631540426137480

`A161078(n+1)+A087049(A287335(n+1))`
-/

namespace A161294.P5138631540426137480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161078 (n + 1) + A087049 (A287335 (n + 1)).toNat

end

end A161294.P5138631540426137480

/-! ## A161294.P17306718606720729519

`A161027(A187829(n+1))`
-/

namespace A161294.P17306718606720729519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161027 (A187829 (n + 1)).toNat

end

end A161294.P17306718606720729519

/-!
# A161295: Number of partitions of n into numbers not divisible by 4 where every part appears at least 4 times.

The programs for A161295, there is no canonical definition to state claims against.
-/

/-! ## A161295.P3129637297702992116

`A161079(n+1)+A101266(A105681(n+1))`
-/

namespace A161295.P3129637297702992116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161079 (n + 1) + A101266 (A105681 (n + 1)).toNat

end

end A161295.P3129637297702992116

/-!
# A161296: Number of partitions of n into numbers not divisible by 4 where every part appears at least 5 times.

The programs for A161296, there is no canonical definition to state claims against.
-/

/-! ## A161296.P13234260541636326140

`A161080(n+1)+A122840(A050811(n+1))`
-/

namespace A161296.P13234260541636326140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161080 (n + 1) + A122840 (A050811 (n + 1)).toNat

end

end A161296.P13234260541636326140

/-! ## A161296.P14365895136534786242

`A161080(n+1)+A064911(A140995(3*n+1))`
-/

namespace A161296.P14365895136534786242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161080 (n + 1) + A064911 (A140995 (3 * n + 1)).toNat

end

end A161296.P14365895136534786242

/-!
# A161297: Number of partitions of n into numbers not divisible by 4 where every part appears at least 6 times.

The programs for A161297, there is no canonical definition to state claims against.
-/

/-! ## A161297.P5124433530095930791

`or(A161030(n+1), A206499(A160975(n+5)))`
-/

namespace A161297.P5124433530095930791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161030 (n + 1)) (A206499 (A160975 (n + 5)).toNat)

end

end A161297.P5124433530095930791

/-! ## A161297.P16577398473544398852

`or(A161081(n+1), A206499(A160975(n+5)))`
-/

namespace A161297.P16577398473544398852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161081 (n + 1)) (A206499 (A160975 (n + 5)).toNat)

end

end A161297.P16577398473544398852

/-! ## A161297.P5531641665539943975

`A185284(A273282(n+2))+A161081(n+1)`
-/

namespace A161297.P5531641665539943975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A273282 (n + 2)).toNat + A161081 (n + 1)

end

end A161297.P5531641665539943975

/-! ## A161297.P7066800799842078152

`∑{d}[n+1, A161311(#)*A342136((n+1)/#-1)]`
-/

namespace A161297.P7066800799842078152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161311 d * A342136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161297.P7066800799842078152

/-!
# A161298: Number of partitions of n into numbers not divisible by 4 where every part appears at least 7 times.

The programs for A161298, there is no canonical definition to state claims against.
-/

/-! ## A161298.P3737578921329198677

`A161036(A194917(2*(n+1)))+A161031(n+1)`
-/

namespace A161298.P3737578921329198677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161036 (A194917 (2 * (n + 1))).toNat + A161031 (n + 1)

end

end A161298.P3737578921329198677

/-! ## A161298.P4626089071867632427

`A161037(A194917(2*n+1))+A161031(n+1)`
-/

namespace A161298.P4626089071867632427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194917 (2 * n + 1)).toNat + A161031 (n + 1)

end

end A161298.P4626089071867632427

/-! ## A161298.P4853120810092430674

`A161037(A194983(2*(n+1)))+A161031(n+1)`
-/

namespace A161298.P4853120810092430674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194983 (2 * (n + 1))).toNat + A161031 (n + 1)

end

end A161298.P4853120810092430674

/-! ## A161298.P3962162330449017846

`A161036(A194987(2*(n+1)))+A161031(n+1)`
-/

namespace A161298.P3962162330449017846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161036 (A194987 (2 * (n + 1))).toNat + A161031 (n + 1)

end

end A161298.P3962162330449017846

/-! ## A161298.P8519565133997599003

`A161037(A194987(2*n+2))+A161031(n+1)`
-/

namespace A161298.P8519565133997599003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194987 (2 * n + 2)).toNat + A161031 (n + 1)

end

end A161298.P8519565133997599003

/-!
# A161299: Number of partitions of n into numbers not divisible by 4 where every part appears at least 8 times.

The programs for A161299, there is no canonical definition to state claims against.
-/

/-! ## A161299.P16462446806971985036

`A185284(A161083(n+5))+A161083(n+1)`
-/

namespace A161299.P16462446806971985036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161083 (n + 5)).toNat + A161083 (n + 1)

end

end A161299.P16462446806971985036

/-! ## A161299.P5038260061782368330

`A161083(n+1)+A102683(A299905(n))`
-/

namespace A161299.P5038260061782368330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161083 (n + 1) + A102683 (A299905 n).toNat

end

end A161299.P5038260061782368330

