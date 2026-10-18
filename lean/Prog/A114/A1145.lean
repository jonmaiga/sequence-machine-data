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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A114500: Number of Dyck paths of semilength n having no UUUDDD's starting at level zero; here U=(1,1), D=(1,-1). Also number of Dyck paths of semilength n having no UUDUDD's starting at level zero.

The programs for A114500, there is no canonical definition to state claims against.
-/

/-! ## A114500.P752787984776004828

`A114499(∑[ceil(n/3)])`
-/

namespace A114500.P752787984776004828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114500.P752787984776004828

/-! ## A114500.P16346384304338583032

`A114499(A001840(n))+char[16]`
-/

namespace A114500.P16346384304338583032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114499 (A001840 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114500.P16346384304338583032

/-! ## A114500.P16746359249985583083

`A007318(∑[n])*A114499(A001840(n))`
-/

namespace A114500.P16746359249985583083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A114499 (A001840 n).toNat

end

end A114500.P16746359249985583083

/-! ## A114500.P9393594519118863210

`A114499(A001840(n))%(A000108(n)+1)`
-/

namespace A114500.P9393594519118863210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114499 (A001840 n).toNat) (A000108 n + 1)

end

end A114500.P9393594519118863210

/-! ## A114500.P6393093520095251268

`A114499(A001840(n))/A007318(C(2, n))`
-/

namespace A114500.P6393093520095251268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114499 (A001840 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A114500.P6393093520095251268

/-!
# A114501: Number of decimal digits in binomial(2*10^n, 10^n).

The programs for A114501, there is no canonical definition to state claims against.
-/

/-! ## A114501.P4369670282429661012

`A114466(n)+n`
-/

namespace A114501.P4369670282429661012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114466 n + (n : ℤ)

end

end A114501.P4369670282429661012

/-! ## A114501.P8258462563068278255

`A005843(n)-(n-A114466(n))`
-/

namespace A114501.P8258462563068278255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A114466 n)

end

end A114501.P8258462563068278255

/-! ## A114501.P2076513443734499884

`Δ[A165900(n)]-(n-A114466(n))`
-/

namespace A114501.P2076513443734499884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - A114466 n)

end

end A114501.P2076513443734499884

/-! ## A114501.P9665659188364588117

`record[A014681(n)]-(n-A114466(n))`
-/

namespace A114501.P9665659188364588117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - A114466 n)

end

end A114501.P9665659188364588117

/-! ## A114501.P14897400602330693002

`A038608(2*n)-(n-A114466(n))`
-/

namespace A114501.P14897400602330693002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (2 * n) - ((n : ℤ) - A114466 n)

end

end A114501.P14897400602330693002

/-!
# A114503: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n for which height of first peak + height of last peak = k (n>=1; 2<=k<=2n).

The programs for A114503, there is no canonical definition to state claims against.
-/

/-! ## A114503.P572107043449843985

`A170970(A304877(n)+5+n)`
-/

namespace A114503.P572107043449843985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170970 (A304877 n + 5 + (n : ℤ)).toNat

end

end A114503.P572107043449843985

/-! ## A114503.P14613334375667467266

`A035232(A261091(2*n)+A007494(n+3))`
-/

namespace A114503.P14613334375667467266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A261091 (2 * n) + A007494 (n + 3)).toNat

end

end A114503.P14613334375667467266

/-! ## A114503.P6341839066730265858

`A095140(A049094(n+1)*A211956(3*n))`
-/

namespace A114503.P6341839066730265858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095140 (A049094 (n + 1) * A211956 (3 * n)).toNat

end

end A114503.P6341839066730265858

/-! ## A114503.P14097407997969816647

`A145895(A257340(n+1)%A086585(n+1))`
-/

namespace A114503.P14097407997969816647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145895 (Int.tmod (A257340 (n + 1)) (A086585 (n + 1))).toNat

end

end A114503.P14097407997969816647

/-! ## A114503.P10966367002176185636

`A090048(A090385(n+3)%A270812(n+1))`
-/

namespace A114503.P10966367002176185636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 (Int.tmod (A090385 (n + 3)) (A270812 (n + 1))).toNat

end

end A114503.P10966367002176185636

/-!
# A114504: Numbers k such that the k-th hexagonal number is a 6-almost prime.

The programs for A114504, the canonical program `A114504.P10529493619829289980` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114504 has offset 1).

The definition of A114504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114504.P10529493619829289980

`eq[6, A260236(n+6)]+6`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A114504

/-- `eq[6, A260236(n+6)]+6` -/
def P10529493619829289980.Spec : Prop :=
  ∀ n, (P10529493619829289980.a n : ℤ) = A114504 (n + 1)

theorem P10529493619829289980.correct : P10529493619829289980.Spec := by
  intro n
  simp only [A114504, Nat.add_sub_cancel]

end A114504

/-! ## A114504.P11598673553672671183

`eq[6, A069904(A004280(n+1))]`
-/

namespace A114504.P11598673553672671183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114504.P11598673553672671183

namespace A114504

/-- `eq[6, A069904(A004280(n+1))]` -/
def P11598673553672671183.Spec : Prop :=
  ∀ n, (P11598673553672671183.a n : ℤ) = A114504 (n + 1)

end A114504

/-! ## A114504.P12484061888694312931

`eq[A069904(2*n+1), A267259(2*n)]+1`
-/

namespace A114504.P12484061888694312931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114504.P12484061888694312931

namespace A114504

/-- `eq[A069904(2*n+1), A267259(2*n)]+1` -/
def P12484061888694312931.Spec : Prop :=
  ∀ n, (P12484061888694312931.a n : ℤ) = A114504 (n + 1)

end A114504

/-! ## A114504.P14304148961196825370

`A008619(eq[A069904(n+1), A267259(n)])`
-/

namespace A114504.P14304148961196825370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114504.P14304148961196825370

namespace A114504

/-- `A008619(eq[A069904(n+1), A267259(n)])` -/
def P14304148961196825370.Spec : Prop :=
  ∀ n, P14304148961196825370.a n = A114504 (n + 1)

end A114504

/-! ## A114504.P17350839108258114976

`A028242(eq[A069904(n+1), A267259(n)])`
-/

namespace A114504.P17350839108258114976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114504.P17350839108258114976

namespace A114504

/-- `A028242(eq[A069904(n+1), A267259(n)])` -/
def P17350839108258114976.Spec : Prop :=
  ∀ n, P17350839108258114976.a n = A114504 (n + 1)

end A114504

/-! ## A114504.P7291971986906244551

`eq[6, A260236(A233583(n+1))]`
-/

namespace A114504.P7291971986906244551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260236 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114504.P7291971986906244551

namespace A114504

/-- `eq[6, A260236(A233583(n+1))]` -/
def P7291971986906244551.Spec : Prop :=
  ∀ n, (P7291971986906244551.a n : ℤ) = A114504 (n + 1)

end A114504

/-!
# A114505: Numbers k such that the k-th hexagonal number is a 7-almost prime.

The programs for A114505, the canonical program `A114505.P9278641399823529673` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114505 has offset 1).

The definition of A114505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114505.P9278641399823529673

`eq[7, A260236(n+2)]+2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A114505

/-- `eq[7, A260236(n+2)]+2` -/
def P9278641399823529673.Spec : Prop :=
  ∀ n, (P9278641399823529673.a n : ℤ) = A114505 (n + 1)

theorem P9278641399823529673.correct : P9278641399823529673.Spec := by
  intro n
  simp only [A114505, Nat.add_sub_cancel]

end A114505

/-! ## A114505.P7814821305916474572

`record[A246425(A240527(n+2))]`
-/

namespace A114505.P7814821305916474572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A240527 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114505.P7814821305916474572

namespace A114505

/-- `record[A246425(A240527(n+2))]` -/
def P7814821305916474572.Spec : Prop :=
  ∀ n, P7814821305916474572.a n = A114505 (n + 1)

end A114505

/-! ## A114505.P17996739963084057717

`eq[7, A069904(A004280(n+1))]`
-/

namespace A114505.P17996739963084057717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114505.P17996739963084057717

namespace A114505

/-- `eq[7, A069904(A004280(n+1))]` -/
def P17996739963084057717.Spec : Prop :=
  ∀ n, (P17996739963084057717.a n : ℤ) = A114505 (n + 1)

end A114505

/-! ## A114505.P8265487111322267746

`A008619(eq[A267259(n)+1, A069904(n+1)])`
-/

namespace A114505.P8265487111322267746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114505.P8265487111322267746

namespace A114505

/-- `A008619(eq[A267259(n)+1, A069904(n+1)])` -/
def P8265487111322267746.Spec : Prop :=
  ∀ n, P8265487111322267746.a n = A114505 (n + 1)

end A114505

/-! ## A114505.P4070175240262197197

`A028242(eq[A267259(n)+1, A069904(n+1)])`
-/

namespace A114505.P4070175240262197197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114505.P4070175240262197197

namespace A114505

/-- `A028242(eq[A267259(n)+1, A069904(n+1)])` -/
def P4070175240262197197.Spec : Prop :=
  ∀ n, P4070175240262197197.a n = A114505 (n + 1)

end A114505

/-! ## A114505.P2060206962117974891

`eq[7, A260236(A233583(n+1))]`
-/

namespace A114505.P2060206962117974891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260236 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114505.P2060206962117974891

namespace A114505

/-- `eq[7, A260236(A233583(n+1))]` -/
def P2060206962117974891.Spec : Prop :=
  ∀ n, (P2060206962117974891.a n : ℤ) = A114505 (n + 1)

end A114505

/-!
# A114507: Number of Dyck paths of semilength n having no ascents of length 3.

The programs for A114507, there is no canonical definition to state claims against.
-/

/-! ## A114507.P15037349564321479090

`A114506(∑[ceil(n/3)])`
-/

namespace A114507.P15037349564321479090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114506 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114507.P15037349564321479090

/-! ## A114507.P1781694683823951976

`ceil(sqrt(A231672(n!)))`
-/

namespace A114507.P1781694683823951976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A231672 (Nat.factorial n) : ℝ)⌉

end

end A114507.P1781694683823951976

/-! ## A114507.P17110592696154842189

`A245900(n+1)+char[7]`
-/

namespace A114507.P17110592696154842189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114507.P17110592696154842189

/-! ## A114507.P15844149517016135758

`A226762(A149921(n))`
-/

namespace A114507.P15844149517016135758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149921 n).toNat

end

end A114507.P15844149517016135758

/-!
# A114508: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and having k ascents of length 4 (0<=k<=floor(n/4)). Also number of ordered trees with n edges which have k vertices of outdegree 4.

The programs for A114508, there is no canonical definition to state claims against.
-/

/-! ## A114508.P4667679675616487612

`A243366(n)+A178780(A000389(n))`
-/

namespace A114508.P4667679675616487612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n + A178780 (A000389 n).toNat

end

end A114508.P4667679675616487612

/-! ## A114508.P8640458964621918796

`A243366(n)+A178780(A037952(n))`
-/

namespace A114508.P8640458964621918796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n + A178780 (A037952 n).toNat

end

end A114508.P8640458964621918796

/-! ## A114508.P10391778731982202048

`A243366(n)+A178780(A037955(n))`
-/

namespace A114508.P10391778731982202048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n + A178780 (A037955 n).toNat

end

end A114508.P10391778731982202048

/-! ## A114508.P11539228450793578178

`A243366(n)-A014189(A000110(n))`
-/

namespace A114508.P11539228450793578178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n - A014189 (A000110 n).toNat

end

end A114508.P11539228450793578178

/-!
# A114509: Number of Dyck paths of semilength n having no ascents of length 4.

The programs for A114509, there is no canonical definition to state claims against.
-/

/-! ## A114509.P14585825717674747534

`A180180(A001844(n))/(n+1)`
-/

namespace A114509.P14585825717674747534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180180 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A114509.P14585825717674747534

/-! ## A114509.P704379725679024702

`A180180(∑[A008574(n)])/(n+1)`
-/

namespace A114509.P704379725679024702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (n + 1 : ℚ)

end

end A114509.P704379725679024702

/-! ## A114509.P14939434118394785612

`A114508(∑[ceil(n/4)])`
-/

namespace A114509.P14939434118394785612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114508 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114509.P14939434118394785612

/-! ## A114509.P5003394047189937073

`A380058(n+1)+A181153(A293440(n))`
-/

namespace A114509.P5003394047189937073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380058 (n + 1) + A181153 (A293440 n).toNat

end

end A114509.P5003394047189937073

/-! ## A114509.P7118933162583504493

`A181153(A293440(n))+A070321(A193114(n))`
-/

namespace A114509.P7118933162583504493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (A293440 n).toNat + A070321 (A193114 n).toNat

end

end A114509.P7118933162583504493

/-!
# A114510: a(1) = 0. s(0) = {0}. s(n) = s(n-1) U s(a(n)) U {n}, where U represents a concatenation of finite sequences. The sequence {a(n)} is the limit of s(m) as m -> infinity.

The programs for A114510, there is no canonical definition to state claims against.
-/

/-! ## A114510.P6859297039438601194

`A151843(A054424(n+1))-A206499(A007307(n+1))`
-/

namespace A114510.P6859297039438601194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A054424 (n + 1)).toNat - A206499 (A007307 (n + 1)).toNat

end

end A114510.P6859297039438601194

/-! ## A114510.P3676871476802280749

`A160161(A191869(n+1))%A291326(n+2)`
-/

namespace A114510.P3676871476802280749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160161 (A191869 (n + 1)).toNat) (A291326 (n + 2))

end

end A114510.P3676871476802280749

/-! ## A114510.P3561330488445559246

`A292099(n)%A317988(2*n+5)`
-/

namespace A114510.P3561330488445559246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292099 n) (A317988 (2 * n + 5))

end

end A114510.P3561330488445559246

/-! ## A114510.P8305173726580517045

`A224762(A011782(n))%A224762(n+1)`
-/

namespace A114510.P8305173726580517045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224762 (A011782 n).toNat) (A224762 (n + 1))

end

end A114510.P8305173726580517045

/-! ## A114510.P8060036619594052968

`A036049(A000040(n+5))%A020652(n+1)`
-/

namespace A114510.P8060036619594052968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036049 (A000040 (n + 5)).toNat) (A020652 (n + 1))

end

end A114510.P8060036619594052968

/-!
# A114511: a(0) = 0. s(0) = {0}. s(n+1) = s(n) U s(a(n)) U {n}, where U represents a concatenation of finite sequences. The sequence {a(n)} is the limit of s(m) as m -> infinity.

The programs for A114511, there is no canonical definition to state claims against.
-/

/-! ## A114511.P6697960487610061164

`A057354(n)*A285301(A154377(n+1))`
-/

namespace A114511.P6697960487610061164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n * A285301 (A154377 (n + 1)).toNat

end

end A114511.P6697960487610061164

/-! ## A114511.P12661414764113760821

`A057360(n)*A285301(A154377(n+1))`
-/

namespace A114511.P12661414764113760821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 n * A285301 (A154377 (n + 1)).toNat

end

end A114511.P12661414764113760821

/-! ## A114511.P4061027778454689127

`A113685(6-A143161(2*n+1))`
-/

namespace A114511.P4061027778454689127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (6 - A143161 (2 * n + 1)).toNat

end

end A114511.P4061027778454689127

/-! ## A114511.P7757543180867527843

`A028552(A152135(n+5))%A077609(n+1)`
-/

namespace A114511.P7757543180867527843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028552 (A152135 (n + 5)).toNat) (A077609 (n + 1))

end

end A114511.P7757543180867527843

/-! ## A114511.P8221768321721076078

`A352091(A137761(3*(n+1)))%A077609(n+1)`
-/

namespace A114511.P8221768321721076078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352091 (A137761 (3 * (n + 1))).toNat) (A077609 (n + 1))

end

end A114511.P8221768321721076078

/-!
# A114512: Number of terms in s(n), where s(n) is defined at sequence A114510.

The programs for A114512, there is no canonical definition to state claims against.
-/

/-! ## A114512.P4458147249567429126

`∑[A049716(∑[A003320(n)])]`
-/

namespace A114512.P4458147249567429126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114512.P4458147249567429126

/-! ## A114512.P994430034997082737

`record[and(A129756(n), A134662(n))]`
-/

namespace A114512.P994430034997082737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129756 n) (A134662 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114512.P994430034997082737

/-! ## A114512.P8147483732211026417

`∑[A261324(A016012(n+1))-1]`
-/

namespace A114512.P8147483732211026417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261324 (A016012 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114512.P8147483732211026417

/-! ## A114512.P18002476471608036609

`∑[A006530(A167667(n+2))-1]-1`
-/

namespace A114512.P18002476471608036609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167667 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114512.P18002476471608036609

/-! ## A114512.P15505824703997295184

`A063037(2*n+3)-A356233(A049482(n+5))`
-/

namespace A114512.P15505824703997295184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (2 * n + 3) - A356233 (A049482 (n + 5)).toNat

end

end A114512.P15505824703997295184

/-!
# A114513: Number of terms in s(n), where s(n) is defined at sequence A114511.

The programs for A114513, there is no canonical definition to state claims against.
-/

/-! ## A114513.P14455097325216326543

`record[or(1, A157242(A354785(n+1)))]`
-/

namespace A114513.P14455097325216326543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157242 (A354785 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114513.P14455097325216326543

/-! ## A114513.P11833036131214791570

`lt[A122950(A093902(n+1)), n%2]`
-/

namespace A114513.P11833036131214791570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122950 (A093902 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114513.P11833036131214791570

/-! ## A114513.P14134712915423860359

`lt[A001595(n), A214052(3*(n+1))²²]`
-/

namespace A114513.P14134712915423860359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214052 (3 * (n + 1)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114513.P14134712915423860359

/-! ## A114513.P9740608223848139221

`lt[A138036(n), A001221(A060688(n+1))]`
-/

namespace A114513.P9740608223848139221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114513.P9740608223848139221

/-! ## A114513.P7043941057007806943

`lt[A138036(n), A287170(A225514(n+1))]`
-/

namespace A114513.P7043941057007806943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A225514 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114513.P7043941057007806943

/-!
# A114515: Number of peaks in all hill-free Dyck paths of semilength n (a Dyck path is hill-free if it has no peaks at level 1).

The programs for A114515, the canonical program `A114515.P8369440402788739489` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114515 has offset 0).

The definition of A114515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114515.P8369440402788739489

`n/2*A000957(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114515

/-- `n/2*A000957(n+1)` -/
def P8369440402788739489.Spec : Prop :=
  ∀ n, P8369440402788739489.a n = (A114515 n : ℚ)

end A114515

/-! ## A114515.P2551109893814795450

`abs(n/2*A126983(n+1))`
-/

namespace A114515.P2551109893814795450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A126983 (n + 1) : ℚ)|

end

end A114515.P2551109893814795450

namespace A114515

/-- `abs(n/2*A126983(n+1))` -/
def P2551109893814795450.Spec : Prop :=
  ∀ n, P2551109893814795450.a n = (A114515 n : ℚ)

end A114515

/-! ## A114515.P10970011299576214429

`n/2*A065600(A000217(n))`
-/

namespace A114515.P10970011299576214429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A065600 (A000217 n).toNat : ℚ)

end

end A114515.P10970011299576214429

namespace A114515

/-- `n/2*A065600(A000217(n))` -/
def P10970011299576214429.Spec : Prop :=
  ∀ n, P10970011299576214429.a n = (A114515 n : ℚ)

end A114515

/-! ## A114515.P4728132198815598840

`n/2*A065600(A179865(n+1))`
-/

namespace A114515.P4728132198815598840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A065600 (A179865 (n + 1)).toNat : ℚ)

end

end A114515.P4728132198815598840

namespace A114515

/-- `n/2*A065600(A179865(n+1))` -/
def P4728132198815598840.Spec : Prop :=
  ∀ n, P4728132198815598840.a n = (A114515 n : ℚ)

end A114515

/-! ## A114515.P3778725512884864729

`n*abs(A064310(n+1))/2`
-/

namespace A114515.P3778725512884864729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * |A064310 (n + 1)| : ℚ) / 2

end

end A114515.P3778725512884864729

namespace A114515

/-- `n*abs(A064310(n+1))/2` -/
def P3778725512884864729.Spec : Prop :=
  ∀ n, P3778725512884864729.a n = (A114515 n : ℚ)

end A114515

/-! ## A114515.P10669624303113206139

`A116914(n+2)-A026641(n)`
-/

namespace A114515.P10669624303113206139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) - A026641 n

end

end A114515.P10669624303113206139

namespace A114515

/-- `A116914(n+2)-A026641(n)` -/
def P10669624303113206139.Spec : Prop :=
  ∀ n, P10669624303113206139.a n = A114515 n

end A114515

/-! ## A114515.P9912313181587400296

`A116914(n+2)-A109078(2*n)`
-/

namespace A114515.P9912313181587400296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) - A109078 (2 * n)

end

end A114515.P9912313181587400296

namespace A114515

/-- `A116914(n+2)-A109078(2*n)` -/
def P9912313181587400296.Spec : Prop :=
  ∀ n, P9912313181587400296.a n = A114515 n

end A114515

/-! ## A114515.P12306296174254421073

`A116914(n+2)-A191526(2*n)`
-/

namespace A114515.P12306296174254421073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) - A191526 (2 * n)

end

end A114515.P12306296174254421073

namespace A114515

/-- `A116914(n+2)-A191526(2*n)` -/
def P12306296174254421073.Spec : Prop :=
  ∀ n, P12306296174254421073.a n = A114515 n

end A114515

/-! ## A114515.P11434109895590415213

`∑[A026641(n)-A065601(n)]-A026641(n)`
-/

namespace A114515.P11434109895590415213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - A065601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026641 n

end

end A114515.P11434109895590415213

namespace A114515

/-- `∑[A026641(n)-A065601(n)]-A026641(n)` -/
def P11434109895590415213.Spec : Prop :=
  ∀ n, P11434109895590415213.a n = A114515 n

end A114515

/-! ## A114515.P463226034740358951

`n*A126093(∑[n])/2`
-/

namespace A114515.P463226034740358951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A126093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A114515.P463226034740358951

namespace A114515

/-- `n*A126093(∑[n])/2` -/
def P463226034740358951.Spec : Prop :=
  ∀ n, P463226034740358951.a n = (A114515 n : ℚ)

end A114515

/-!
# A114517: Numbers k such that the k-th heptagonal number is semiprime.

The programs for A114517, the canonical program `A114517.P2047956437619684237` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114517 has offset 1).

The definition of A114517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114517.P2047956437619684237

`eq[4, A276680(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A114517

/-- `eq[4, A276680(n+1)]+1` -/
def P2047956437619684237.Spec : Prop :=
  ∀ n, (P2047956437619684237.a n : ℤ) = A114517 (n + 1)

theorem P2047956437619684237.correct : P2047956437619684237.Spec := by
  intro n
  simp only [A114517, Nat.add_sub_cancel]

end A114517

/-! ## A114517.P16344898246973047636

`eq[4, A276680(A028310(n))]`
-/

namespace A114517.P16344898246973047636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114517.P16344898246973047636

namespace A114517

/-- `eq[4, A276680(A028310(n))]` -/
def P16344898246973047636.Spec : Prop :=
  ∀ n, (P16344898246973047636.a n : ℤ) = A114517 (n + 1)

end A114517

/-! ## A114517.P15615294466519987712

`eq[4, A276680(A000007(n)+n)]`
-/

namespace A114517.P15615294466519987712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114517.P15615294466519987712

namespace A114517

/-- `eq[4, A276680(A000007(n)+n)]` -/
def P15615294466519987712.Spec : Prop :=
  ∀ n, (P15615294466519987712.a n : ℤ) = A114517 (n + 1)

end A114517

/-! ## A114517.P14497616836249272657

`eq[4, A276680(A065033(2*n))]`
-/

namespace A114517.P14497616836249272657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114517.P14497616836249272657

namespace A114517

/-- `eq[4, A276680(A065033(2*n))]` -/
def P14497616836249272657.Spec : Prop :=
  ∀ n, (P14497616836249272657.a n : ℤ) = A114517 (n + 1)

end A114517

/-! ## A114517.P14042506421313490060

`eq[4, A276680(A233583(n+1))]`
-/

namespace A114517.P14042506421313490060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114517.P14042506421313490060

namespace A114517

/-- `eq[4, A276680(A233583(n+1))]` -/
def P14042506421313490060.Spec : Prop :=
  ∀ n, (P14042506421313490060.a n : ℤ) = A114517 (n + 1)

end A114517

/-! ## A114517.P14266866050906918446

`eq[2, ∑{e}[A000566(n), #]]`
-/

namespace A114517.P14266866050906918446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114517.P14266866050906918446

namespace A114517

/-- `eq[2, ∑{e}[A000566(n), #]]` -/
def P14266866050906918446.Spec : Prop :=
  ∀ n, (P14266866050906918446.a n : ℤ) = A114517 (n + 1)

end A114517

/-! ## A114517.P7641952037542384427

`eq[3, ∑{e}[∑[9*n+n+2], #]]+1`
-/

namespace A114517.P7641952037542384427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114517.P7641952037542384427

namespace A114517

/-- `eq[3, ∑{e}[∑[9*n+n+2], #]]+1` -/
def P7641952037542384427.Spec : Prop :=
  ∀ n, (P7641952037542384427.a n : ℤ) = A114517 (n + 1)

end A114517

/-!
# A114518: Numbers n such that A008475(n) is prime.

The programs for A114518, the canonical program `A114518.P850338516823365546` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114518 has offset 1).

The definition of A114518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114518.P850338516823365546

`eq[2, A000005(A008475(n+2))]+2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A114518

/-- `eq[2, A000005(A008475(n+2))]+2` -/
def P850338516823365546.Spec : Prop :=
  ∀ n, (P850338516823365546.a n : ℤ) = A114518 (n + 1)

theorem P850338516823365546.correct : P850338516823365546.Spec := by
  intro n
  simp only [A114518, Nat.add_sub_cancel]

end A114518

/-! ## A114518.P15497666584383442761

`∪[A000040(n+1), A114520(n+1)]`
-/

namespace A114518.P15497666584383442761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114518.P15497666584383442761

namespace A114518

/-- `∪[A000040(n+1), A114520(n+1)]` -/
def P15497666584383442761.Spec : Prop :=
  ∀ n, (P15497666584383442761.a n : ℤ) = A114518 (n + 1)

end A114518

/-! ## A114518.P11750563396192872787

`∪[A053813(n+1), A114520(n+1)]`
-/

namespace A114518.P11750563396192872787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114518.P11750563396192872787

namespace A114518

/-- `∪[A053813(n+1), A114520(n+1)]` -/
def P11750563396192872787.Spec : Prop :=
  ∀ n, (P11750563396192872787.a n : ℤ) = A114518 (n + 1)

end A114518

/-! ## A114518.P16162881165261552641

`∪[A114520(n+1), A116974(n+1)]`
-/

namespace A114518.P16162881165261552641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114518.P16162881165261552641

namespace A114518

/-- `∪[A114520(n+1), A116974(n+1)]` -/
def P16162881165261552641.Spec : Prop :=
  ∀ n, (P16162881165261552641.a n : ℤ) = A114518 (n + 1)

end A114518

/-! ## A114518.P11672278077902290147

`eq[1, A032741(A008475(n+1))]+1`
-/

namespace A114518.P11672278077902290147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008475 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114518.P11672278077902290147

namespace A114518

/-- `eq[1, A032741(A008475(n+1))]+1` -/
def P11672278077902290147.Spec : Prop :=
  ∀ n, (P11672278077902290147.a n : ℤ) = A114518 (n + 1)

end A114518

/-! ## A114518.P17539771559009085260

`eq[2, A005128(A222416(n+1))]+1`
-/

namespace A114518.P17539771559009085260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A222416 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114518.P17539771559009085260

namespace A114518

/-- `eq[2, A005128(A222416(n+1))]+1` -/
def P17539771559009085260.Spec : Prop :=
  ∀ n, (P17539771559009085260.a n : ℤ) = A114518 (n + 1)

end A114518

/-! ## A114518.P10595282845414402419

`record[A086664(n+1)+A014963(A222416(n+1))]`
-/

namespace A114518.P10595282845414402419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (n + 1) + A014963 (A222416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114518.P10595282845414402419

namespace A114518

/-- `record[A086664(n+1)+A014963(A222416(n+1))]` -/
def P10595282845414402419.Spec : Prop :=
  ∀ n, P10595282845414402419.a n = A114518 (n + 1)

end A114518

/-! ## A114518.P15010726422255153747

`record[2*A020725(n+1)/A000005(A008475(n+2))]`
-/

namespace A114518.P15010726422255153747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A020725 (n + 1) : ℚ) / (A000005 (A008475 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114518.P15010726422255153747

namespace A114518

/-- `record[2*A020725(n+1)/A000005(A008475(n+2))]` -/
def P15010726422255153747.Spec : Prop :=
  ∀ n, P15010726422255153747.a n = (A114518 (n + 1) : ℚ)

end A114518

/-!
# A114519: a(n) = A008475(A114518(n)).

The programs for A114519, the canonical program `A114519.P13629279457260616244` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114519 has offset 1).

The definition of A114519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A114518, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114519.P13629279457260616244

`A008475(A114518(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114519

/-- `A008475(A114518(n+1))` -/
def P13629279457260616244.Spec : Prop :=
  ∀ n, P13629279457260616244.a n = A114519 (n + 1)

theorem P13629279457260616244.correct : P13629279457260616244.Spec := by
  intro n
  simp only [A114519, Nat.add_sub_cancel]

end A114519

/-! ## A114519.P3524854728056207367

`p?[A008475(n+1)]`
-/

namespace A114519.P3524854728056207367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114519.P3524854728056207367

namespace A114519

/-- `p?[A008475(n+1)]` -/
def P3524854728056207367.Spec : Prop :=
  ∀ n, P3524854728056207367.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P13082380000653978284

`p?[A078771(n+1)+A001414(n+1)]`
-/

namespace A114519.P13082380000653978284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1) + A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114519.P13082380000653978284

namespace A114519

/-- `p?[A078771(n+1)+A001414(n+1)]` -/
def P13082380000653978284.Spec : Prop :=
  ∀ n, P13082380000653978284.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P3886951198831735529

`p?[A222416(n+1)]`
-/

namespace A114519.P3886951198831735529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114519.P3886951198831735529

namespace A114519

/-- `p?[A222416(n+1)]` -/
def P3886951198831735529.Spec : Prop :=
  ∀ n, P3886951198831735529.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P11536866552999589209

`∑{d}[A114518(n+1), A092509(#)]`
-/

namespace A114519.P11536866552999589209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092509 d

end

end A114519.P11536866552999589209

namespace A114519

/-- `∑{d}[A114518(n+1), A092509(#)]` -/
def P11536866552999589209.Spec : Prop :=
  ∀ n, P11536866552999589209.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P3733621596579151659

`A222416(A114518(2*n+1-n))`
-/

namespace A114519.P3733621596579151659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A114518 (2 * n + 1 - n)).toNat

end

end A114519.P3733621596579151659

namespace A114519

/-- `A222416(A114518(2*n+1-n))` -/
def P3733621596579151659.Spec : Prop :=
  ∀ n, P3733621596579151659.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P7450504079050471934

`p?[A159077(n+1)-1]`
-/

namespace A114519.P7450504079050471934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114519.P7450504079050471934

namespace A114519

/-- `p?[A159077(n+1)-1]` -/
def P7450504079050471934.Spec : Prop :=
  ∀ n, P7450504079050471934.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P4258453000570831951

`filter[A222416(n+1), A010051(#)]`
-/

namespace A114519.P4258453000570831951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A114519.P4258453000570831951

namespace A114519

/-- `filter[A222416(n+1), A010051(#)]` -/
def P4258453000570831951.Spec : Prop :=
  ∀ n, P4258453000570831951.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P10934123386158519842

`filter[A008475(n+2), A010051(#)]`
-/

namespace A114519.P10934123386158519842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A114519.P10934123386158519842

namespace A114519

/-- `filter[A008475(n+2), A010051(#)]` -/
def P10934123386158519842.Spec : Prop :=
  ∀ n, P10934123386158519842.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P17353243397871359671

`filter[A008475(n+2), A080339(#)]`
-/

namespace A114519.P17353243397871359671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A114519.P17353243397871359671

namespace A114519

/-- `filter[A008475(n+2), A080339(#)]` -/
def P17353243397871359671.Spec : Prop :=
  ∀ n, P17353243397871359671.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P844923992584755083

`filter[A222416(n+2), A080339(#)]`
-/

namespace A114519.P844923992584755083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A114519.P844923992584755083

namespace A114519

/-- `filter[A222416(n+2), A080339(#)]` -/
def P844923992584755083.Spec : Prop :=
  ∀ n, P844923992584755083.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P8527380107372604301

`p?[A000203(n+1)-A167515(n+1)]`
-/

namespace A114519.P8527380107372604301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A167515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114519.P8527380107372604301

namespace A114519

/-- `p?[A000203(n+1)-A167515(n+1)]` -/
def P8527380107372604301.Spec : Prop :=
  ∀ n, P8527380107372604301.a n = A114519 (n + 1)

end A114519

/-! ## A114519.P11543363758671367483

`p?[∑{p}[n, #^val(n, #)]]`
-/

namespace A114519.P11543363758671367483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation n p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114519.P11543363758671367483

namespace A114519

/-- `p?[∑{p}[n, #^val(n, #)]]` -/
def P11543363758671367483.Spec : Prop :=
  ∀ n, (P11543363758671367483.a n : ℤ) = A114519 (n + 1)

end A114519

/-!
# A114520: Composites in sequence A114518.

The programs for A114520, the canonical program `A114520.P13451622057905116028` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114520 has offset 1).

The definition of A114520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114520.P13451622057905116028

`filter[A114518(n+1), A005171(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114520

/-- `filter[A114518(n+1), A005171(#)]` -/
def P13451622057905116028.Spec : Prop :=
  ∀ n, P13451622057905116028.a n = A114520 (n + 1)

theorem P13451622057905116028.correct : P13451622057905116028.Spec := by
  intro n
  simp only [A114520, Nat.add_sub_cancel]

end A114520

/-! ## A114520.P14668312143028723893

`filter[A114518(n+1), A066247(#)]`
-/

namespace A114520.P14668312143028723893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A114520.P14668312143028723893

namespace A114520

/-- `filter[A114518(n+1), A066247(#)]` -/
def P14668312143028723893.Spec : Prop :=
  ∀ n, P14668312143028723893.a n = A114520 (n + 1)

end A114520

/-! ## A114520.P3623645871279736034

`filter[A114518(n+1), A202238(#)]`
-/

namespace A114520.P3623645871279736034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A114520.P3623645871279736034

namespace A114520

/-- `filter[A114518(n+1), A202238(#)]` -/
def P3623645871279736034.Spec : Prop :=
  ∀ n, P3623645871279736034.a n = A114520 (n + 1)

end A114520

/-! ## A114520.P32052658009762209

`∩[A114518(n+1), A175526(n+1)]`
-/

namespace A114520.P32052658009762209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P32052658009762209

namespace A114520

/-- `∩[A114518(n+1), A175526(n+1)]` -/
def P32052658009762209.Spec : Prop :=
  ∀ n, (P32052658009762209.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P15061027865018482513

`∩[A024619(n+1), A114518(n+1)]`
-/

namespace A114520.P15061027865018482513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P15061027865018482513

namespace A114520

/-- `∩[A024619(n+1), A114518(n+1)]` -/
def P15061027865018482513.Spec : Prop :=
  ∀ n, (P15061027865018482513.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P10485803865486380355

`∩[A114518(n+1), A361102(n+1)]`
-/

namespace A114520.P10485803865486380355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P10485803865486380355

namespace A114520

/-- `∩[A114518(n+1), A361102(n+1)]` -/
def P10485803865486380355.Spec : Prop :=
  ∀ n, (P10485803865486380355.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P1526604286231344647

`∩[A114518(n+1), A139118(n+1)]`
-/

namespace A114520.P1526604286231344647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P1526604286231344647

namespace A114520

/-- `∩[A114518(n+1), A139118(n+1)]` -/
def P1526604286231344647.Spec : Prop :=
  ∀ n, (P1526604286231344647.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P6904682296101553682

`∩[A114518(n+1), A268388(n+1)]`
-/

namespace A114520.P6904682296101553682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P6904682296101553682

namespace A114520

/-- `∩[A114518(n+1), A268388(n+1)]` -/
def P6904682296101553682.Spec : Prop :=
  ∀ n, (P6904682296101553682.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P16916591513062964724

`∩[A080257(n+1), A114518(n+1)]`
-/

namespace A114520.P16916591513062964724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P16916591513062964724

namespace A114520

/-- `∩[A080257(n+1), A114518(n+1)]` -/
def P16916591513062964724.Spec : Prop :=
  ∀ n, (P16916591513062964724.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P10386723328273071503

`∩[A002808(n+1), A114518(n+1)]`
-/

namespace A114520.P10386723328273071503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P10386723328273071503

namespace A114520

/-- `∩[A002808(n+1), A114518(n+1)]` -/
def P10386723328273071503.Spec : Prop :=
  ∀ n, (P10386723328273071503.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P13309218049031939538

`∩[A018252(n+1), A114518(n+1)]`
-/

namespace A114520.P13309218049031939538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P13309218049031939538

namespace A114520

/-- `∩[A018252(n+1), A114518(n+1)]` -/
def P13309218049031939538.Spec : Prop :=
  ∀ n, (P13309218049031939538.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P1937358711124869433

`∩[A056653(n+1), A114518(n+1)]`
-/

namespace A114520.P1937358711124869433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P1937358711124869433

namespace A114520

/-- `∩[A056653(n+1), A114518(n+1)]` -/
def P1937358711124869433.Spec : Prop :=
  ∀ n, (P1937358711124869433.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P12845252133443028884

`∩[A114518(n+1), A141468(n+1)]`
-/

namespace A114520.P12845252133443028884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P12845252133443028884

namespace A114520

/-- `∩[A114518(n+1), A141468(n+1)]` -/
def P12845252133443028884.Spec : Prop :=
  ∀ n, (P12845252133443028884.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P5441832757505143216

`∩[A114518(n+1), A343311(n+1)]`
-/

namespace A114520.P5441832757505143216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P5441832757505143216

namespace A114520

/-- `∩[A114518(n+1), A343311(n+1)]` -/
def P5441832757505143216.Spec : Prop :=
  ∀ n, (P5441832757505143216.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P1266218950678072856

`filter[A114518(n+1), A143731(#)]`
-/

namespace A114520.P1266218950678072856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A114520.P1266218950678072856

namespace A114520

/-- `filter[A114518(n+1), A143731(#)]` -/
def P1266218950678072856.Spec : Prop :=
  ∀ n, P1266218950678072856.a n = A114520 (n + 1)

end A114520

/-! ## A114520.P18163584609534706257

`∩[A114518(n+1), A348718(n+1)]`
-/

namespace A114520.P18163584609534706257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P18163584609534706257

namespace A114520

/-- `∩[A114518(n+1), A348718(n+1)]` -/
def P18163584609534706257.Spec : Prop :=
  ∀ n, (P18163584609534706257.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P15481915703751387489

`∩[A111774(n+1), A114518(n+1)]`
-/

namespace A114520.P15481915703751387489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P15481915703751387489

namespace A114520

/-- `∩[A111774(n+1), A114518(n+1)]` -/
def P15481915703751387489.Spec : Prop :=
  ∀ n, (P15481915703751387489.a n : ℤ) = A114520 (n + 1)

end A114520

/-! ## A114520.P4427802411751984407

`∩[A114518(n+1), A324455(n+1)]`
-/

namespace A114520.P4427802411751984407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114520.P4427802411751984407

namespace A114520

/-- `∩[A114518(n+1), A324455(n+1)]` -/
def P4427802411751984407.Spec : Prop :=
  ∀ n, (P4427802411751984407.a n : ℤ) = A114520 (n + 1)

end A114520

/-!
# A114521: a(n) = A008475(A114520(n)).

The programs for A114521, the canonical program `A114521.P13125088130632841430` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114521 has offset 1).

The definition of A114521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A114520, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114521.P13125088130632841430

`A008475(A114520(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A114521

/-- `A008475(A114520(n+1))` -/
def P13125088130632841430.Spec : Prop :=
  ∀ n, P13125088130632841430.a n = A114521 (n + 1)

theorem P13125088130632841430.correct : P13125088130632841430.Spec := by
  intro n
  simp only [A114521, Nat.add_sub_cancel]

end A114521

/-! ## A114521.P15757222652017325843

`p?[A008475(n+1)%(n+1)]`
-/

namespace A114521.P15757222652017325843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008475 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P15757222652017325843

namespace A114521

/-- `p?[A008475(n+1)%(n+1)]` -/
def P15757222652017325843.Spec : Prop :=
  ∀ n, P15757222652017325843.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P10146437095861221172

`p?[A008475(A002808(n+1))]`
-/

namespace A114521.P10146437095861221172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P10146437095861221172

namespace A114521

/-- `p?[A008475(A002808(n+1))]` -/
def P10146437095861221172.Spec : Prop :=
  ∀ n, P10146437095861221172.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P7686123830807243926

`p?[A008475(A018252(n+1))]`
-/

namespace A114521.P7686123830807243926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P7686123830807243926

namespace A114521

/-- `p?[A008475(A018252(n+1))]` -/
def P7686123830807243926.Spec : Prop :=
  ∀ n, P7686123830807243926.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P15757477833184398687

`p?[A222416(n+1)%(n+1)]`
-/

namespace A114521.P15757477833184398687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P15757477833184398687

namespace A114521

/-- `p?[A222416(n+1)%(n+1)]` -/
def P15757477833184398687.Spec : Prop :=
  ∀ n, P15757477833184398687.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P13832666595348784210

`p?[A222416(A018252(n+2))]`
-/

namespace A114521.P13832666595348784210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P13832666595348784210

namespace A114521

/-- `p?[A222416(A018252(n+2))]` -/
def P13832666595348784210.Spec : Prop :=
  ∀ n, P13832666595348784210.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P11839220000991015298

`p?[A008475(A024619(n+1))]`
-/

namespace A114521.P11839220000991015298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A024619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P11839220000991015298

namespace A114521

/-- `p?[A008475(A024619(n+1))]` -/
def P11839220000991015298.Spec : Prop :=
  ∀ n, P11839220000991015298.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P5336068040422267969

`p?[A008475(A056653(n+1))]`
-/

namespace A114521.P5336068040422267969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A056653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P5336068040422267969

namespace A114521

/-- `p?[A008475(A056653(n+1))]` -/
def P5336068040422267969.Spec : Prop :=
  ∀ n, P5336068040422267969.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P5769803468793513679

`p?[A000203(n+1)%A167515(n+1)]`
-/

namespace A114521.P5769803468793513679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A167515 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P5769803468793513679

namespace A114521

/-- `p?[A000203(n+1)%A167515(n+1)]` -/
def P5769803468793513679.Spec : Prop :=
  ∀ n, P5769803468793513679.a n = A114521 (n + 1)

end A114521

/-! ## A114521.P12839647225969581738

`p?[A008475(n+1)*A014963(n+1)]`
-/

namespace A114521.P12839647225969581738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) * A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P12839647225969581738

namespace A114521

/-- `p?[A008475(n+1)*A014963(n+1)]` -/
def P12839647225969581738.Spec : Prop :=
  ∀ n, P12839647225969581738.a n = A114521 (n + 1)

end A114521

/-!
# A114522: Numbers n such that sum of distinct prime divisors of n is prime.

The programs for A114522, the canonical program `A114522.P5829408964518042303` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114522 has offset 1).

The definition of A114522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114522.P5829408964518042303

`eq[1, A001222(A008472(n+2))]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A114522

/-- `eq[1, A001222(A008472(n+2))]+2` -/
def P5829408964518042303.Spec : Prop :=
  ∀ n, (P5829408964518042303.a n : ℤ) = A114522 (n + 1)

theorem P5829408964518042303.correct : P5829408964518042303.Spec := by
  intro n
  simp only [A114522, Nat.add_sub_cancel]

end A114522

/-! ## A114522.P17199018858833163420

`eq[1, A003415(A008472(n+1))]+1`
-/

namespace A114522.P17199018858833163420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A008472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114522.P17199018858833163420

namespace A114522

/-- `eq[1, A003415(A008472(n+1))]+1` -/
def P17199018858833163420.Spec : Prop :=
  ∀ n, (P17199018858833163420.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P2749289801383569880

`eq[1, ∑{e}[∑{p}[n, #], #]]`
-/

namespace A114522.P2749289801383569880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114522.P2749289801383569880

namespace A114522

/-- `eq[1, ∑{e}[∑{p}[n, #], #]]` -/
def P2749289801383569880.Spec : Prop :=
  ∀ n, (P2749289801383569880.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P5155398835425298957

`eq[2, ∏{e}[∑{p}[n, #], #+1]]`
-/

namespace A114522.P5155398835425298957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114522.P5155398835425298957

namespace A114522

/-- `eq[2, ∏{e}[∑{p}[n, #], #+1]]` -/
def P5155398835425298957.Spec : Prop :=
  ∀ n, (P5155398835425298957.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P7235696638256725185

`eq[1, A003415(∑{p}[n, #])]`
-/

namespace A114522.P7235696638256725185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P7235696638256725185

namespace A114522

/-- `eq[1, A003415(∑{p}[n, #])]` -/
def P7235696638256725185.Spec : Prop :=
  ∀ n, (P7235696638256725185.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P14024517325028118869

`eq[1, A018783(∑{p}[n, #])]`
-/

namespace A114522.P14024517325028118869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P14024517325028118869

namespace A114522

/-- `eq[1, A018783(∑{p}[n, #])]` -/
def P14024517325028118869.Spec : Prop :=
  ∀ n, (P14024517325028118869.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P16830869101671897064

`eq[1, A032741(∑{p}[n, #])]`
-/

namespace A114522.P16830869101671897064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P16830869101671897064

namespace A114522

/-- `eq[1, A032741(∑{p}[n, #])]` -/
def P16830869101671897064.Spec : Prop :=
  ∀ n, (P16830869101671897064.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P3468628559953157987

`eq[1, A078898(∑{p}[n, #])]`
-/

namespace A114522.P3468628559953157987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P3468628559953157987

namespace A114522

/-- `eq[1, A078898(∑{p}[n, #])]` -/
def P3468628559953157987.Spec : Prop :=
  ∀ n, (P3468628559953157987.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P17166476251254503250

`eq[1, A105700(∑{p}[n, #])]`
-/

namespace A114522.P17166476251254503250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P17166476251254503250

namespace A114522

/-- `eq[1, A105700(∑{p}[n, #])]` -/
def P17166476251254503250.Spec : Prop :=
  ∀ n, (P17166476251254503250.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P905692717837050640

`eq[1, A175126(∑{p}[n, #])]`
-/

namespace A114522.P905692717837050640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P905692717837050640

namespace A114522

/-- `eq[1, A175126(∑{p}[n, #])]` -/
def P905692717837050640.Spec : Prop :=
  ∀ n, (P905692717837050640.a n : ℤ) = A114522 (n + 1)

end A114522

/-! ## A114522.P15739583280323805850

`eq[1, A023645(xor(1, ∑{p}[n, #])+1)]`
-/

namespace A114522.P15739583280323805850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (Nat.xor 1 (∑ p ∈ Nat.primeFactors (f3 n), p) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114522.P15739583280323805850

namespace A114522

/-- `eq[1, A023645(xor(1, ∑{p}[n, #])+1)]` -/
def P15739583280323805850.Spec : Prop :=
  ∀ n, (P15739583280323805850.a n : ℤ) = A114522 (n + 1)

end A114522

/-!
# A114523: a(n) is the sign of the n-th Stieltjes constant.

The programs for A114523, there is no canonical definition to state claims against.
-/

/-! ## A114523.P460144225441780703

`round(sin(atan(A066034(n))))`
-/

namespace A114523.P460144225441780703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A066034 n : ℝ)))

end

end A114523.P460144225441780703

/-! ## A114523.P16136027417188645164

`or(1, A066034(n%(n+1)))%2`
-/

namespace A114523.P16136027417188645164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A066034 (n % (n + 1)))) 2

end

end A114523.P16136027417188645164

/-! ## A114523.P4775143267762861612

`or(A000213(n), A066034(n))%2`
-/

namespace A114523.P4775143267762861612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A000213 n) (A066034 n)) 2

end

end A114523.P4775143267762861612

/-! ## A114523.P13489847813153031046

`or(A002426(n), A066034(n))%2`
-/

namespace A114523.P13489847813153031046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A002426 n) (A066034 n)) 2

end

end A114523.P13489847813153031046

/-! ## A114523.P1140768438686998970

`or(A042990(n), A066034(n))%2`
-/

namespace A114523.P1140768438686998970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A042990 n) (A066034 n)) 2

end

end A114523.P1140768438686998970

/-! ## A114523.P9452398117861746959

`or(A020985(n)², A066034(n))%2`
-/

namespace A114523.P9452398117861746959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A020985 n ^ 2) (A066034 n)) 2

end

end A114523.P9452398117861746959

/-! ## A114523.P6189706648164750983

`or(A066034(n), A294178(n²))%2`
-/

namespace A114523.P6189706648164750983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A066034 n) (A294178 (n ^ 2))) 2

end

end A114523.P6189706648164750983

/-! ## A114523.P14209120023709682775

`or(A000040(n+1), A066034(n))%2`
-/

namespace A114523.P14209120023709682775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A000040 (n + 1)) (A066034 n)) 2

end

end A114523.P14209120023709682775

/-! ## A114523.P18339134972040958929

`or(A066034(n), A163381(n+1))%2`
-/

namespace A114523.P18339134972040958929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A066034 n) (A163381 (n + 1))) 2

end

end A114523.P18339134972040958929

/-!
# A114524: Run lengths of consecutive Stieltjes constants having the same sign, where the signs are A114523.

The programs for A114524, there is no canonical definition to state claims against.
-/

/-! ## A114524.P4322969575461045283

`A213251(A165196(n+1)-A213237(n+1))`
-/

namespace A114524.P4322969575461045283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213251 (A165196 (n + 1) - A213237 (n + 1)).toNat

end

end A114524.P4322969575461045283

/-! ## A114524.P13230643665981090708

`A064097(A005245(A334199(n+1)+n))`
-/

namespace A114524.P13230643665981090708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A005245 (A334199 (n + 1) + (n : ℤ)).toNat).toNat

end

end A114524.P13230643665981090708

/-! ## A114524.P4219698221009947990

`A109129((2-char[n²])*A084438(n+1))`
-/

namespace A114524.P4219698221009947990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A084438 (n + 1)).toNat

end

end A114524.P4219698221009947990

/-!
# A114525: Triangle of coefficients of the Lucas polynomials.

The programs for A114525, the canonical program `A114525.P12302416166957877412` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114525 has offset 0).

The definition of A114525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114525.P3099282294450218982

`abs(A127672(n))`
-/

namespace A114525.P3099282294450218982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127672 n|

end

end A114525.P3099282294450218982

namespace A114525

/-- `abs(A127672(n))` -/
def P3099282294450218982.Spec : Prop :=
  ∀ n, P3099282294450218982.a n = A114525 n

end A114525

/-! ## A114525.P8044670281055566244

`A117568(n)*A127672(n)`
-/

namespace A114525.P8044670281055566244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A127672 n

end

end A114525.P8044670281055566244

namespace A114525

/-- `A117568(n)*A127672(n)` -/
def P8044670281055566244.Spec : Prop :=
  ∀ n, P8044670281055566244.a n = A114525 n

end A114525

/-! ## A114525.P15055554343347130796

`A127672(n)*A369736(n)`
-/

namespace A114525.P15055554343347130796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n * A369736 n

end

end A114525.P15055554343347130796

namespace A114525

/-- `A127672(n)*A369736(n)` -/
def P15055554343347130796.Spec : Prop :=
  ∀ n, P15055554343347130796.a n = A114525 n

end A114525

/-! ## A114525.P6575606663424536763

`gcd(A000038(n), A127672(n))`
-/

namespace A114525.P6575606663424536763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127672 n)

end

end A114525.P6575606663424536763

namespace A114525

/-- `gcd(A000038(n), A127672(n))` -/
def P6575606663424536763.Spec : Prop :=
  ∀ n, (P6575606663424536763.a n : ℤ) = A114525 n

end A114525

/-! ## A114525.P13887646829203161493

`lcm(A035214(n), A108045(n))`
-/

namespace A114525.P13887646829203161493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 n) (A108045 n)

end

end A114525.P13887646829203161493

namespace A114525

/-- `lcm(A035214(n), A108045(n))` -/
def P13887646829203161493.Spec : Prop :=
  ∀ n, (P13887646829203161493.a n : ℤ) = A114525 n

end A114525

/-! ## A114525.P3288592251251695150

`lcm(A020985(n), A127672(n))`
-/

namespace A114525.P3288592251251695150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A127672 n)

end

end A114525.P3288592251251695150

namespace A114525

/-- `lcm(A020985(n), A127672(n))` -/
def P3288592251251695150.Spec : Prop :=
  ∀ n, (P3288592251251695150.a n : ℤ) = A114525 n

end A114525

/-! ## A114525.P5863590195582268162

`A000007(n)+abs(A108045(n))`
-/

namespace A114525.P5863590195582268162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + |A108045 n|

end

end A114525.P5863590195582268162

namespace A114525

/-- `A000007(n)+abs(A108045(n))` -/
def P5863590195582268162.Spec : Prop :=
  ∀ n, P5863590195582268162.a n = A114525 n

end A114525

/-! ## A114525.P371638846775925806

`A127672(n)*A130194(n+1)`
-/

namespace A114525.P371638846775925806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n * A130194 (n + 1)

end

end A114525.P371638846775925806

namespace A114525

/-- `A127672(n)*A130194(n+1)` -/
def P371638846775925806.Spec : Prop :=
  ∀ n, P371638846775925806.a n = A114525 n

end A114525

/-! ## A114525.P12302416166957877412

`lcm(A073044(n+1), A369736(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A114525

/-- `lcm(A073044(n+1), A369736(n))` -/
def P12302416166957877412.Spec : Prop :=
  ∀ n, (P12302416166957877412.a n : ℤ) = A114525 n

theorem P12302416166957877412.correct : P12302416166957877412.Spec := by
  intro n
  simp only [A114525]

end A114525

/-! ## A114525.P6424864576653981903

`A073044(n+1)*A128174(n+1)`
-/

namespace A114525.P6424864576653981903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073044 (n + 1) * A128174 (n + 1)

end

end A114525.P6424864576653981903

namespace A114525

/-- `A073044(n+1)*A128174(n+1)` -/
def P6424864576653981903.Spec : Prop :=
  ∀ n, P6424864576653981903.a n = A114525 n

end A114525

/-! ## A114525.P3920725393631906247

`abs(A108045(n)+1-A178334(A178334(n)))`
-/

namespace A114525.P3920725393631906247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108045 n + (1 - A178334 (A178334 n).toNat)|

end

end A114525.P3920725393631906247

namespace A114525

/-- `abs(A108045(n)+1-A178334(A178334(n)))` -/
def P3920725393631906247.Spec : Prop :=
  ∀ n, P3920725393631906247.a n = A114525 n

end A114525

/-! ## A114525.P12810217773135105857

`A162514(A061579(n))`
-/

namespace A114525.P12810217773135105857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A061579 n).toNat

end

end A114525.P12810217773135105857

namespace A114525

/-- `A162514(A061579(n))` -/
def P12810217773135105857.Spec : Prop :=
  ∀ n, P12810217773135105857.a n = A114525 n

end A114525

/-! ## A114525.P15330748178557734847

`A073044(n+1)%A225750(n)`
-/

namespace A114525.P15330748178557734847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073044 (n + 1)) (A225750 n)

end

end A114525.P15330748178557734847

namespace A114525

/-- `A073044(n+1)%A225750(n)` -/
def P15330748178557734847.Spec : Prop :=
  ∀ n, P15330748178557734847.a n = A114525 n

end A114525

/-! ## A114525.P2625924756323357488

`abs(A108069(2*n+1)+A108045(n))`
-/

namespace A114525.P2625924756323357488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108069 (2 * n + 1) + A108045 n|

end

end A114525.P2625924756323357488

namespace A114525

/-- `abs(A108069(2*n+1)+A108045(n))` -/
def P2625924756323357488.Spec : Prop :=
  ∀ n, P2625924756323357488.a n = A114525 n

end A114525

/-! ## A114525.P5899285821829455281

`∑{d}[A127672(n), A000010(#)]`
-/

namespace A114525.P5899285821829455281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A114525.P5899285821829455281

namespace A114525

/-- `∑{d}[A127672(n), A000010(#)]` -/
def P5899285821829455281.Spec : Prop :=
  ∀ n, P5899285821829455281.a n = A114525 n

end A114525

/-!
# A114527: Numbers k such that A086793(k) is 1.

The programs for A114527, there is no canonical definition to state claims against.
-/

/-! ## A114527.P1668086121419442842

`eq[1, A086793(n+1)]+1`
-/

namespace A114527.P1668086121419442842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114527.P1668086121419442842

/-! ## A114527.P8829896816697548060

`eq[1, A086793(A028310(n))]`
-/

namespace A114527.P8829896816697548060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086793 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114527.P8829896816697548060

/-! ## A114527.P16284324036468878880

`eq[1, A086793(A233583(n+1))]`
-/

namespace A114527.P16284324036468878880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086793 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114527.P16284324036468878880

/-! ## A114527.P15991922977284676929

`A260059(∑[n]+1)`
-/

namespace A114527.P15991922977284676929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260059 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A114527.P15991922977284676929

/-! ## A114527.P13951695026389153429

`record[A260059(n+1)/A007318(n)]`
-/

namespace A114527.P13951695026389153429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260059 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114527.P13951695026389153429

/-!
# A114528: Let S(n)=sigma(|n|)-3*n; sequence gives numbers n such that S(S(S(S(n))))=n. May be called {3,1}-Sociable number of orders 1 or 2 or 4.

The programs for A114528, there is no canonical definition to state claims against.
-/

/-! ## A114528.P8884808423416406604

`A000027(A069146(n+1))`
-/

namespace A114528.P8884808423416406604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069146 (n + 1)).toNat

end

end A114528.P8884808423416406604

/-! ## A114528.P15059522964849977965

`A069146(A153678(n+1))`
-/

namespace A114528.P15059522964849977965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069146 (A153678 (n + 1)).toNat

end

end A114528.P15059522964849977965

/-!
# A114531: Number of intersections of a convex set with the n X n grid.

The programs for A114531, there is no canonical definition to state claims against.
-/

/-! ## A114531.P6898772299002729913

`A239615(∏[eq[n, ∏{d}[n, #]]])-(n%4+n)`
-/

namespace A114531.P6898772299002729913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239615 (∏ j ∈ Finset.range (n + 1), f1 j) - ((n % 4 + n : ℕ) : ℤ)

end

end A114531.P6898772299002729913

/-!
# A114536: Let the height of a polynomial be the largest coefficient in absolute value. Then a(n) is the maximal height of a divisor of x^n-1 with integral coefficients.

The programs for A114536, there is no canonical definition to state claims against.
-/

/-! ## A114536.P3078701039267213443

`A064446(A284600(n+1)%record[A217118(n)])`
-/

namespace A114536.P3078701039267213443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (Int.tmod (A284600 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A114536.P3078701039267213443

/-! ## A114536.P8884994157732145720

`A064446(gcd(A237576(n+1)², A284600(n+1)))`
-/

namespace A114536.P8884994157732145720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (Int.gcd (A237576 (n + 1) ^ 2) (A284600 (n + 1)))

end

end A114536.P8884994157732145720

/-! ## A114536.P9196385904091665016

`A003557(A000108(A051119(n+1)))*A284600(n+1)`
-/

namespace A114536.P9196385904091665016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000108 (A051119 (n + 1)).toNat).toNat * A284600 (n + 1)

end

end A114536.P9196385904091665016

/-! ## A114536.P3731040005628503444

`A226444(A233932(3*(n+1)))*A284600(n+1)`
-/

namespace A114536.P3731040005628503444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A233932 (3 * (n + 1))).toNat * A284600 (n + 1)

end

end A114536.P3731040005628503444

/-!
# A114537: Dispersion of the primes (an array read by downward antidiagonals).

The programs for A114537, there is no canonical definition to state claims against.
-/

/-! ## A114537.P1817441353317878921

`A138947(∑[char[∑[n]]]²-n)`
-/

namespace A114537.P1817441353317878921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138947 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A114537.P1817441353317878921

/-! ## A114537.P16767937273454882437

`and(∑[2^n], A138947(A038722(n+1)))`
-/

namespace A114537.P16767937273454882437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A138947 (A038722 (n + 1)).toNat)

end

end A114537.P16767937273454882437

/-! ## A114537.P7024695537884770054

`A138947(A038722(n+1))%A000051(n)`
-/

namespace A114537.P7024695537884770054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138947 (A038722 (n + 1)).toNat) (A000051 n)

end

end A114537.P7024695537884770054

/-! ## A114537.P524018988757615491

`gcd(A000038(n), A138947(A038722(n+1)))`
-/

namespace A114537.P524018988757615491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138947 (A038722 (n + 1)).toNat)

end

end A114537.P524018988757615491

/-! ## A114537.P3434547040085541281

`lcm(A033999(n), A138947(A038722(n+1)))`
-/

namespace A114537.P3434547040085541281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A138947 (A038722 (n + 1)).toNat)

end

end A114537.P3434547040085541281

/-!
# A114539: Number of correct decimal digits given by the n-th convergent to e.

The programs for A114539, there is no canonical definition to state claims against.
-/

/-! ## A114539.P6464417902383797658

`A302930(2*ceil((n+1)*sqrt(e/6)))`
-/

namespace A114539.P6464417902383797658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302930 (2 * ⌈(n + 1 : ℝ) * Real.sqrt (Real.exp 1 / 6)⌉).toNat

end

end A114539.P6464417902383797658

/-! ## A114539.P10222937093635818554

`floor(A226252(n)/A324700(3*n+2))`
-/

namespace A114539.P10222937093635818554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226252 n : ℚ) / (A324700 (3 * n + 2) : ℚ)⌋

end

end A114539.P10222937093635818554

/-! ## A114539.P6017891867351651883

`n+1-A070939(A343378(4*n))`
-/

namespace A114539.P6017891867351651883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A070939 (A343378 (4 * n)).toNat

end

end A114539.P6017891867351651883

/-! ## A114539.P14217514011036863347

`A070939(A325473(n))-A194285(3*n+5)`
-/

namespace A114539.P14217514011036863347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A325473 n).toNat - A194285 (3 * n + 5)

end

end A114539.P14217514011036863347

/-!
# A114540: Number of correct decimal digits given by the n-th convergent to the golden ratio.

The programs for A114540, the canonical program `A114540.P17425760661350549232` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114540 has offset 0).

The definition of A114540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114540.P17425760661350549232

`floor(A007587(n)/A005899(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114540

/-- `floor(A007587(n)/A005899(n))` -/
def P17425760661350549232.Spec : Prop :=
  ∀ n, P17425760661350549232.a n = A114540 n

theorem P17425760661350549232.correct : P17425760661350549232.Spec := by
  intro n
  simp only [A114540]

end A114540

/-! ## A114540.P15533051189734872829

`floor(A007587(n)/A053755(n))`
-/

namespace A114540.P15533051189734872829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007587 n : ℚ) / (A053755 n : ℚ)⌋

end

end A114540.P15533051189734872829

namespace A114540

/-- `floor(A007587(n)/A053755(n))` -/
def P15533051189734872829.Spec : Prop :=
  ∀ n, P15533051189734872829.a n = A114540 n

end A114540

/-! ## A114540.P4865477795777284315

`floor(A195015(n)/A016921(n))`
-/

namespace A114540.P4865477795777284315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195015 n : ℚ) / (A016921 n : ℚ)⌋

end

end A114540.P4865477795777284315

namespace A114540

/-- `floor(A195015(n)/A016921(n))` -/
def P4865477795777284315.Spec : Prop :=
  ∀ n, P4865477795777284315.a n = A114540 n

end A114540

/-! ## A114540.P11891406782826150723

`n%floor(A007202(n)/A005897(n))`
-/

namespace A114540.P11891406782826150723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) ⌊(A007202 n : ℚ) / (A005897 n : ℚ)⌋

end

end A114540.P11891406782826150723

namespace A114540

/-- `n%floor(A007202(n)/A005897(n))` -/
def P11891406782826150723.Spec : Prop :=
  ∀ n, P11891406782826150723.a n = A114540 n

end A114540

/-! ## A114540.P3751345487043825285

`floor(A007587(n)/A002522(2*n))`
-/

namespace A114540.P3751345487043825285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007587 n : ℚ) / (A002522 (2 * n) : ℚ)⌋

end

end A114540.P3751345487043825285

namespace A114540

/-- `floor(A007587(n)/A002522(2*n))` -/
def P3751345487043825285.Spec : Prop :=
  ∀ n, P3751345487043825285.a n = A114540 n

end A114540

/-! ## A114540.P7282535494348185134

`floor(A195015(n)/A005408(3*n))`
-/

namespace A114540.P7282535494348185134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195015 n : ℚ) / (A005408 (3 * n) : ℚ)⌋

end

end A114540.P7282535494348185134

namespace A114540

/-- `floor(A195015(n)/A005408(3*n))` -/
def P7282535494348185134.Spec : Prop :=
  ∀ n, P7282535494348185134.a n = A114540 n

end A114540

/-! ## A114540.P6429032931977404762

`A002264(A002265(n+1)%A231777(n+1)+n)`
-/

namespace A114540.P6429032931977404762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A002265 (n + 1)) (A231777 (n + 1)) + (n : ℤ)).toNat

end

end A114540.P6429032931977404762

namespace A114540

/-- `A002264(A002265(n+1)%A231777(n+1)+n)` -/
def P6429032931977404762.Spec : Prop :=
  ∀ n, P6429032931977404762.a n = A114540 n

end A114540

/-! ## A114540.P5350471854430038139

`A003057(n²+2-A336112(n))%(n+1)`
-/

namespace A114540.P5350471854430038139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 ((n ^ 2 : ℤ) + (2 - A336112 n)).toNat) (n + 1 : ℤ)

end

end A114540.P5350471854430038139

namespace A114540

/-- `A003057(n²+2-A336112(n))%(n+1)` -/
def P5350471854430038139.Spec : Prop :=
  ∀ n, P5350471854430038139.a n = A114540 n

end A114540

/-! ## A114540.P18003915976926334913

`A002024(A138374(n+1)+n²)-(n+1)`
-/

namespace A114540.P18003915976926334913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A138374 (n + 1) + (n ^ 2 : ℤ)).toNat - (n + 1 : ℤ)

end

end A114540.P18003915976926334913

namespace A114540

/-- `A002024(A138374(n+1)+n²)-(n+1)` -/
def P18003915976926334913.Spec : Prop :=
  ∀ n, P18003915976926334913.a n = A114540 n

end A114540

/-! ## A114540.P5625387525408161453

`A140106(A227394(n+2))`
-/

namespace A114540.P5625387525408161453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A227394 (n + 2)).toNat

end

end A114540.P5625387525408161453

namespace A114540

/-- `A140106(A227394(n+2))` -/
def P5625387525408161453.Spec : Prop :=
  ∀ n, P5625387525408161453.a n = A114540 n

end A114540

/-!
# A114541: Number of correct decimal digits given by the n-th convergent to the Euler-Mascheroni constant.

The programs for A114541, there is no canonical definition to state claims against.
-/

/-! ## A114541.P13239328225590829772

`∑[A115201(A059009(A234747(n)))]`
-/

namespace A114541.P13239328225590829772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115201 (A059009 (A234747 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114541.P13239328225590829772

/-! ## A114541.P1651561620904375159

`floor(A160408(n+2)/8)`
-/

namespace A114541.P1651561620904375159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160408 (n + 2) : ℚ) / 8⌋

end

end A114541.P1651561620904375159

/-! ## A114541.P6323011370141951997

`A335884(A055890(n))`
-/

namespace A114541.P6323011370141951997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (A055890 n).toNat

end

end A114541.P6323011370141951997

/-! ## A114541.P11385592679071948003

`A157235(A020627(n+1))`
-/

namespace A114541.P11385592679071948003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157235 (A020627 (n + 1)).toNat

end

end A114541.P11385592679071948003

/-!
# A114545: A self-descriptive fractal sequence. Each element gives the length and first element of a finite arithmetic sequence. Replace each finite sequence with its length (or first term) and you recover the original infinite sequence.

The programs for A114545, there is no canonical definition to state claims against.
-/

/-! ## A114545.P1335287953384792301

`A114544(A224535(n+2)-n)`
-/

namespace A114545.P1335287953384792301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114544 (A224535 (n + 2) - (n : ℤ)).toNat

end

end A114545.P1335287953384792301

/-! ## A114545.P5176725186702502274

`A114544(A098760(2*n+1)+9)`
-/

namespace A114545.P5176725186702502274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114544 (A098760 (2 * n + 1) + 9).toNat

end

end A114545.P5176725186702502274

/-! ## A114545.P10247479443590514480

`A114544(A098760(Δ[(n+9)²]))`
-/

namespace A114545.P10247479443590514480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 9) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114544 (A098760 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A114545.P10247479443590514480

/-!
# A114546: A self-descriptive fractal sequence. Each element gives the length and first term of a finite arithmetic sequence. Replace each finite sequence with its length (or first term) and you recover the original infinite sequence.

The programs for A114546, there is no canonical definition to state claims against.
-/

/-! ## A114546.P3813612414560277774

`A114545(A098760(2*n+1)+5)`
-/

namespace A114546.P3813612414560277774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114545 (A098760 (2 * n + 1) + 5).toNat

end

end A114546.P3813612414560277774

/-! ## A114546.P6710257494433959679

`A114545(A098760(2*n+11))`
-/

namespace A114546.P6710257494433959679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114545 (A098760 (2 * n + 11)).toNat

end

end A114546.P6710257494433959679

/-!
# A114547: A self-descriptive fractal sequence. Each element gives the first term and length of a finite arithmetic sequence. Replace each finite sequence with its length (or first term) and you recover the original infinite sequence.

The programs for A114547, there is no canonical definition to state claims against.
-/

/-! ## A114547.P17136398222619323922

`A114546(n+26)`
-/

namespace A114547.P17136398222619323922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114546 (n + 26)

end

end A114547.P17136398222619323922

/-! ## A114547.P1561600818703754401

`A171172(A004202(n+11))`
-/

namespace A114547.P1561600818703754401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (A004202 (n + 11)).toNat

end

end A114547.P1561600818703754401

/-! ## A114547.P9686044715289252241

`∑{d}[A000079(A094727(n+11)), A061395(#)]`
-/

namespace A114547.P9686044715289252241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094727 (n + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A114547.P9686044715289252241

/-! ## A114547.P8045736489293696631

`A094727(A098760(2*n+1)+1)`
-/

namespace A114547.P8045736489293696631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A098760 (2 * n + 1) + 1).toNat

end

end A114547.P8045736489293696631

/-! ## A114547.P4686719705483086885

`A094727(A098760(2*n+3))`
-/

namespace A114547.P4686719705483086885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A098760 (2 * n + 3)).toNat

end

end A114547.P4686719705483086885

/-!
# A114548: Numbers k such that k-th heptagonal number is 3-almost prime.

The programs for A114548, the canonical program `A114548.P10557893245006236416` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114548 has offset 1).

The definition of A114548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114548.P10557893245006236416

`eq[3, ∑{e}[A000566(n), #]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114548

/-- `eq[3, ∑{e}[A000566(n), #]]` -/
def P10557893245006236416.Spec : Prop :=
  ∀ n, (P10557893245006236416.a n : ℤ) = A114548 (n + 1)

theorem P10557893245006236416.correct : P10557893245006236416.Spec := by
  intro n
  simp only [A114548, Nat.add_sub_cancel]

end A114548

/-! ## A114548.P17942243596106781318

`eq[4, ∑{e}[A152773(n), #]]`
-/

namespace A114548.P17942243596106781318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114548.P17942243596106781318

namespace A114548

/-- `eq[4, ∑{e}[A152773(n), #]]` -/
def P17942243596106781318.Spec : Prop :=
  ∀ n, (P17942243596106781318.a n : ℤ) = A114548 (n + 1)

end A114548

/-! ## A114548.P1539981450583025105

`eq[5, ∑{e}[A153786(n), #]]`
-/

namespace A114548.P1539981450583025105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114548.P1539981450583025105

namespace A114548

/-- `eq[5, ∑{e}[A153786(n), #]]` -/
def P1539981450583025105.Spec : Prop :=
  ∀ n, (P1539981450583025105.a n : ℤ) = A114548 (n + 1)

end A114548

/-! ## A114548.P10544575105584950952

`eq[3, A001222(∑[5*n+1])]+1`
-/

namespace A114548.P10544575105584950952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114548.P10544575105584950952

namespace A114548

/-- `eq[3, A001222(∑[5*n+1])]+1` -/
def P10544575105584950952.Spec : Prop :=
  ∀ n, (P10544575105584950952.a n : ℤ) = A114548 (n + 1)

end A114548

/-! ## A114548.P10922085430116479244

`eq[3, A001222(A000566(n)+C(n, n²))]`
-/

namespace A114548.P10922085430116479244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000566 n + (Nat.choose n (n ^ 2) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114548.P10922085430116479244

namespace A114548

/-- `eq[3, A001222(A000566(n)+C(n, n²))]` -/
def P10922085430116479244.Spec : Prop :=
  ∀ n, (P10922085430116479244.a n : ℤ) = A114548 (n + 1)

end A114548

/-!
# A114549: Prime numbers p for which (sum of the digits of p) + (number of the digits of p) is a prime.

The programs for A114549, there is no canonical definition to state claims against.
-/

/-! ## A114549.P6137967720069693317

`∩[A040065(n+1), A118070(n+1)]`
-/

namespace A114549.P6137967720069693317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114549.P6137967720069693317

/-! ## A114549.P6398926509035689770

`p?[∑[A031076(A321156(n+1))]]`
-/

namespace A114549.P6398926509035689770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A321156 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114549.P6398926509035689770

/-! ## A114549.P9785965852521682910

`p?[∩[A107912(n+1), A118070(n+1)]]`
-/

namespace A114549.P9785965852521682910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118070 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114549.P9785965852521682910

/-! ## A114549.P15159034194567882298

`filter[A019343(n+1), A118006(#)]`
-/

namespace A114549.P15159034194567882298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A114549.P15159034194567882298

/-!
# A114551: Continued fraction expansion of the constant (A114550) equal to Sum_{n>=0} 1/A112373(n) such that the partial quotients satisfy a(2n) = A112373(n) for n > 0 and a(2n+1) = A112373(n+1)/A112373(n) for n >= 0.

The programs for A114551, the canonical program `A114551.P4920440888599820100` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114551 has offset 0).

The definition of A114551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114551.P4920440888599820100

`a(n-1)*a(n-2)+n%2*a(n-2)` with `a(0)=2, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114551

/-- `a(n-1)*a(n-2)+n%2*a(n-2)` -/
def P4920440888599820100.Spec : Prop :=
  ∀ n, (P4920440888599820100.a n : ℤ) = A114551 n

theorem P4920440888599820100.correct : P4920440888599820100.Spec := by
  intro n
  simp only [A114551]

end A114551

/-! ## A114551.P4398276634436893331

`(a(n-1)+n%2)*a(n-2)` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A114551.P4398276634436893331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  (a (n - 1) + n % 2) * a (n - 2)

end

end A114551.P4398276634436893331

namespace A114551

/-- `(a(n-1)+n%2)*a(n-2)` -/
def P4398276634436893331.Spec : Prop :=
  ∀ n, (P4398276634436893331.a n : ℤ) = A114551 n

end A114551

/-! ## A114551.P2907086917046539651

`(A000035(n)+a(n-1))*a(n-2)` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A114551.P2907086917046539651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  (A000035 n + a (n - 1)) * a (n - 2)

end

end A114551.P2907086917046539651

namespace A114551

/-- `(A000035(n)+a(n-1))*a(n-2)` -/
def P2907086917046539651.Spec : Prop :=
  ∀ n, P2907086917046539651.a n = A114551 n

end A114551

/-!
# A114552: Odd-indexed bisection of A114551, which is the continued fraction expansion of Sum_{n>=0} 1/A112373(n); also, a(n) = A112373(n+1)/A112373(n) for n>=0.

The programs for A114552, the canonical program `A114552.P16686322508124319291` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114552 has offset 0).

The definition of A114552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114552.P16686322508124319291

`A112373(n+1)/A112373(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114552

/-- `A112373(n+1)/A112373(n)` -/
def P16686322508124319291.Spec : Prop :=
  ∀ n, P16686322508124319291.a n = (A114552 n : ℚ)

end A114552

/-! ## A114552.P7672873021230055569

`A114551(Δ[n²])`
-/

namespace A114552.P7672873021230055569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114551 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114552.P7672873021230055569

namespace A114552

/-- `A114551(Δ[n²])` -/
def P7672873021230055569.Spec : Prop :=
  ∀ n, P7672873021230055569.a n = A114552 n

end A114552

/-! ## A114552.P6166945886692557297

`record[A114551(A114567(n))]`
-/

namespace A114552.P6166945886692557297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114551 (A114567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114552.P6166945886692557297

namespace A114552

/-- `record[A114551(A114567(n))]` -/
def P6166945886692557297.Spec : Prop :=
  ∀ n, P6166945886692557297.a n = A114552 n

end A114552

/-! ## A114552.P16692838249960726544

`gcd(A114551(A114562(2*n+1)), A114563(2*n+3))`
-/

namespace A114552.P16692838249960726544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114551 (A114562 (2 * n + 1)).toNat) (A114563 (2 * n + 3))

end

end A114552.P16692838249960726544

namespace A114552

/-- `gcd(A114551(A114562(2*n+1)), A114563(2*n+3))` -/
def P16692838249960726544.Spec : Prop :=
  ∀ n, (P16692838249960726544.a n : ℤ) = A114552 n

end A114552

/-!
# A114553: a(n) = 25*a(n-2) + 48*a(n-3) with a(0) = 0, a(1) = a(2) = 1.

The programs for A114553, the canonical program `A114553.P8321823197078360436` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114553 has offset 0).

The definition of A114553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*a(n-2)+48*a(n-3)` (program `A114553.P8321823197078360436`, by `A114553.P8321823197078360436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114553.P8321823197078360436

`25*a(n-2)+48*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114553

/-- `25*a(n-2)+48*a(n-3)` -/
def P8321823197078360436.Spec : Prop :=
  ∀ n, (P8321823197078360436.a n : ℤ) = A114553 n

theorem P8321823197078360436.correct : P8321823197078360436.Spec := by
  intro n
  simp only [A114553]

end A114553

/-! ## A114553.P5859832460747938999

`A156007(A290760(2*n+3))%A000629(n)`
-/

namespace A114553.P5859832460747938999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156007 (A290760 (2 * n + 3)).toNat) (A000629 n)

end

end A114553.P5859832460747938999

namespace A114553

/-- `A156007(A290760(2*n+3))%A000629(n)` -/
def P5859832460747938999.Spec : Prop :=
  ∀ n, P5859832460747938999.a n = A114553 n

end A114553

/-!
# A114554: Numbers k such that the k-th heptagonal number is 4-almost prime.

The programs for A114554, the canonical program `A114554.P5333590719472303821` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114554 has offset 1).

The definition of A114554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114554.P5333590719472303821

`eq[4, ∑{e}[5*C(n, 2)+n, #]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114554

/-- `eq[4, ∑{e}[5*C(n, 2)+n, #]]` -/
def P5333590719472303821.Spec : Prop :=
  ∀ n, (P5333590719472303821.a n : ℤ) = A114554 (n + 1)

theorem P5333590719472303821.correct : P5333590719472303821.Spec := by
  intro n
  simp only [A114554, Nat.add_sub_cancel]

end A114554

/-! ## A114554.P7178584589235159722

`eq[4, ∑{e}[A000566(n), #]]`
-/

namespace A114554.P7178584589235159722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114554.P7178584589235159722

namespace A114554

/-- `eq[4, ∑{e}[A000566(n), #]]` -/
def P7178584589235159722.Spec : Prop :=
  ∀ n, (P7178584589235159722.a n : ℤ) = A114554 (n + 1)

end A114554

/-! ## A114554.P10031917783029296058

`eq[5, ∑{e}[A152773(n), #]]`
-/

namespace A114554.P10031917783029296058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114554.P10031917783029296058

namespace A114554

/-- `eq[5, ∑{e}[A152773(n), #]]` -/
def P10031917783029296058.Spec : Prop :=
  ∀ n, (P10031917783029296058.a n : ℤ) = A114554 (n + 1)

end A114554

/-! ## A114554.P1840037390100839365

`eq[4, A001222(∑[6*n+1-n])]+1`
-/

namespace A114554.P1840037390100839365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114554.P1840037390100839365

namespace A114554

/-- `eq[4, A001222(∑[6*n+1-n])]+1` -/
def P1840037390100839365.Spec : Prop :=
  ∀ n, (P1840037390100839365.a n : ℤ) = A114554 (n + 1)

end A114554

/-! ## A114554.P3471637769005484905

`eq[24, A001222(A028310(n)+5*C(n, 2))!]`
-/

namespace A114554.P3471637769005484905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A028310 n + (5 * Nat.choose n 2 : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114554.P3471637769005484905

namespace A114554

/-- `eq[24, A001222(A028310(n)+5*C(n, 2))!]` -/
def P3471637769005484905.Spec : Prop :=
  ∀ n, (P3471637769005484905.a n : ℤ) = A114554 (n + 1)

end A114554

/-!
# A114555: Smallest nonsquarefree integer > the n-th term of the Fibonacci sequence.

The programs for A114555, there is no canonical definition to state claims against.
-/

/-! ## A114555.P14078699639688979894

`A120327(∑[round(ϕ*a(n-1))])` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A114555.P14078699639688979894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114555.P14078699639688979894

/-! ## A114555.P8215626517846341016

`A120327(∑[a(n-1)+a(n-2)])` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A114555.P8215626517846341016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114555.P8215626517846341016

/-! ## A114555.P10117292220121423101

`A120327(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=2, a(1)=1`
-/

namespace A114555.P10117292220121423101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A114555.P10117292220121423101

/-! ## A114555.P11357529819634913225

`A120327(A127968(n))`
-/

namespace A114555.P11357529819634913225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A127968 n).toNat

end

end A114555.P11357529819634913225

/-! ## A114555.P9056264690225876952

`A120327(A001611(n+1))`
-/

namespace A114555.P9056264690225876952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A001611 (n + 1)).toNat

end

end A114555.P9056264690225876952

/-!
# A114556: Numbers k such that the k-th heptagonal number is 5-almost prime.

The programs for A114556, there is no canonical definition to state claims against.
-/

/-! ## A114556.P11720174880448822189

`eq[5, A001222(A000566(n+1))]+1`
-/

namespace A114556.P11720174880448822189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114556.P11720174880448822189

/-! ## A114556.P2727453529751562293

`eq[7, A001222(abs(1-A153784(n))+1)]`
-/

namespace A114556.P2727453529751562293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - A153784 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114556.P2727453529751562293

/-! ## A114556.P5660689193430040892

`eq[7, A001222(A008458((5*C(2*n, 2)-n)/4))]`
-/

namespace A114556.P5660689193430040892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 (SequenceMachineLib.roundAway (((5 * Nat.choose (2 * n) 2 : ℤ) - (n : ℤ) : ℚ) / 4)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114556.P5660689193430040892

/-! ## A114556.P17756878487683025050

`eq[7, A001222(A008458(n*(2*n+(n-3)/2)))]`
-/

namespace A114556.P17756878487683025050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 (SequenceMachineLib.roundAway ((n : ℚ) * ((2 * n : ℚ) + ((n : ℤ) - 3 : ℚ) / 2))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114556.P17756878487683025050

/-!
# A114558: Numbers k such that the k-th heptagonal number is 6-almost prime.

The programs for A114558, there is no canonical definition to state claims against.
-/

/-! ## A114558.P11796035078052781483

`eq[6, A001222(A000566(n+1))]+1`
-/

namespace A114558.P11796035078052781483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114558.P11796035078052781483

/-! ## A114558.P13399038970950100257

`eq[6, A001222(A005891(n)+n)]+1`
-/

namespace A114558.P13399038970950100257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005891 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114558.P13399038970950100257

/-! ## A114558.P10966969194343535718

`eq[7, A001222((5*n+2)*(n+1))]+1`
-/

namespace A114558.P10966969194343535718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((5 * n + 2) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114558.P10966969194343535718

/-!
# A114559: Numbers k such that the k-th heptagonal number is 7-almost prime.

The programs for A114559, there is no canonical definition to state claims against.
-/

/-! ## A114559.P2686933990104472137

`eq[7, A001222(A000566(n+1))]+1`
-/

namespace A114559.P2686933990104472137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114559.P2686933990104472137

/-!
# A114562: The first occurrence of n in A111701.

The programs for A114562, there is no canonical definition to state claims against.
-/

/-! ## A114562.P785030564815581730

`(n+1)*A053589(n+1)`
-/

namespace A114562.P785030564815581730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053589 (n + 1)

end

end A114562.P785030564815581730

/-! ## A114562.P279675147709612544

`(n+1)²/A111701(n+1)`
-/

namespace A114562.P279675147709612544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A111701 (n + 1) : ℚ)

end

end A114562.P279675147709612544

/-! ## A114562.P16783213833358238447

`(n+1)*(n+1-A276151(n+1))`
-/

namespace A114562.P16783213833358238447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A276151 (n + 1))

end

end A114562.P16783213833358238447

/-! ## A114562.P4820512596333289534

`(n+1)*A049559(A053590(n+1)+1)`
-/

namespace A114562.P4820512596333289534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049559 (A053590 (n + 1) + 1).toNat

end

end A114562.P4820512596333289534

/-! ## A114562.P7179633422137365335

`(n+1)*A053590(gcd(n+1, A014681(n)))`
-/

namespace A114562.P7179633422137365335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053590 (Int.gcd (n + 1 : ℤ) (A014681 n))

end

end A114562.P7179633422137365335

/-! ## A114562.P12821120084483641183

`(n+1)*A340346(A007947(n+1))`
-/

namespace A114562.P12821120084483641183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340346 (A007947 (n + 1)).toNat

end

end A114562.P12821120084483641183

/-!
# A114563: Number of "escalator" lattices in dimension n.

The programs for A114563, there is no canonical definition to state claims against.
-/

/-! ## A114563.P9256434308244897854

`∑{digits}[n!!, gcd(#, n!)]`
-/

namespace A114563.P9256434308244897854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial n)).sum

end

end A114563.P9256434308244897854

/-!
# A114564: Numbers of the form n=12s+7, where q=4s+3 is a prime for which the order of 2 is either q-1 or (q-1)/2.

The programs for A114564, there is no canonical definition to state claims against.
-/

/-! ## A114564.P8795772876347470919

`3*A105876(n+1)-2`
-/

namespace A114564.P8795772876347470919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105876 (n + 1) - 2

end

end A114564.P8795772876347470919

/-! ## A114564.P14503714758637631490

`3*(4*A294434(n)+2)+1`
-/

namespace A114564.P14503714758637631490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A294434 n + 2) + 1

end

end A114564.P14503714758637631490

/-! ## A114564.P8934464336130166076

`3*p?[A167800(n+1)]-2`
-/

namespace A114564.P8934464336130166076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A114564.P8934464336130166076

/-! ## A114564.P10906450091593760677

`record[6*A003574(n+1)+1]`
-/

namespace A114564.P10906450091593760677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003574 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114564.P10906450091593760677

/-! ## A114564.P5068422518554791105

`A017605(A294434(n))`
-/

namespace A114564.P5068422518554791105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (A294434 n).toNat

end

end A114564.P5068422518554791105

/-! ## A114564.P7791433340550774938

`3*record[A055388(2*(n+1))]+1`
-/

namespace A114564.P7791433340550774938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A114564.P7791433340550774938

/-! ## A114564.P17186203786384241635

`A007310(A105876(n+1))`
-/

namespace A114564.P17186203786384241635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A105876 (n + 1)).toNat

end

end A114564.P17186203786384241635

/-!
# A114567: a(n) is the number k such that the binary expansion of n mod 2^k is the postorder traversal of a binary tree, where 1 indicates a node and 0 indicates there are no children on that side.

The programs for A114567, there is no canonical definition to state claims against.
-/

/-! ## A114567.P1417473562716645378

`val(A343049(2*n+1)+1, 2)`
-/

namespace A114567.P1417473562716645378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343049 (2 * n + 1) + 1).toNat 2

end

end A114567.P1417473562716645378

/-! ## A114567.P9850119467233133003

`A050603(A343049(Δ[n²]))`
-/

namespace A114567.P9850119467233133003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A343049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A114567.P9850119467233133003

/-! ## A114567.P7735779667062753375

`A089309(A343049(comp[2*n]))`
-/

namespace A114567.P7735779667062753375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A343049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A114567.P7735779667062753375

/-! ## A114567.P797388548566869651

`A007814(A343049(2*n+1)+1)`
-/

namespace A114567.P797388548566869651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A343049 (2 * n + 1) + 1).toNat

end

end A114567.P797388548566869651

/-! ## A114567.P15245390265962199197

`A089309(2*A343049(2*n+1))`
-/

namespace A114567.P15245390265962199197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (2 * A343049 (2 * n + 1)).toNat

end

end A114567.P15245390265962199197

/-! ## A114567.P5391903005826754284

`A001511(A343049(2*n+1)+1)-1`
-/

namespace A114567.P5391903005826754284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A343049 (2 * n + 1) + 1).toNat - 1

end

end A114567.P5391903005826754284

/-!
# A114569: a(n) = 9*4^n - 1.

The programs for A114569, the canonical program `A114569.P5471291263109344837` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114569 has offset 0).

The definition of A114569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*4^n-1` (program `A114569.P5471291263109344837`, by `A114569.P5471291263109344837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114569.P5471291263109344837

`9*4^n-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114569

/-- `9*4^n-1` -/
def P5471291263109344837.Spec : Prop :=
  ∀ n, P5471291263109344837.a n = A114569 n

theorem P5471291263109344837.correct : P5471291263109344837.Spec := by
  intro n
  simp only [A114569]

end A114569

/-! ## A114569.P838107432129853387

`abs(1-lcm(9, 4^n))`
-/

namespace A114569.P838107432129853387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 9 (4 ^ n) : ℤ)|

end

end A114569.P838107432129853387

namespace A114569

/-- `abs(1-lcm(9, 4^n))` -/
def P838107432129853387.Spec : Prop :=
  ∀ n, P838107432129853387.a n = A114569 n

end A114569

/-! ## A114569.P4813300009599899682

`or(3, 4*a(n-1))` with `a(0)=8`
-/

namespace A114569.P4813300009599899682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A114569.P4813300009599899682

namespace A114569

/-- `or(3, 4*a(n-1))` -/
def P4813300009599899682.Spec : Prop :=
  ∀ n, (P4813300009599899682.a n : ℤ) = A114569 n

end A114569

/-! ## A114569.P3355011993745499339

`xor(3, 4*a(n-1))` with `a(0)=8`
-/

namespace A114569.P3355011993745499339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A114569.P3355011993745499339

namespace A114569

/-- `xor(3, 4*a(n-1))` -/
def P3355011993745499339.Spec : Prop :=
  ∀ n, (P3355011993745499339.a n : ℤ) = A114569 n

end A114569

/-! ## A114569.P17072106596315798785

`∑[4*a(n-1)]` with `a(0)=8, a(1)=27`
-/

namespace A114569.P17072106596315798785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 27] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114569.P17072106596315798785

namespace A114569

/-- `∑[4*a(n-1)]` -/
def P17072106596315798785.Spec : Prop :=
  ∀ n, (P17072106596315798785.a n : ℤ) = A114569 n

end A114569

/-! ## A114569.P6230894146192143549

`Δ[Δ[4*a(n-1)]-n]` with `a(0)=1`
-/

namespace A114569.P6230894146192143549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114569.P6230894146192143549

namespace A114569

/-- `Δ[Δ[4*a(n-1)]-n]` -/
def P6230894146192143549.Spec : Prop :=
  ∀ n, P6230894146192143549.a n = A114569 n

end A114569

/-! ## A114569.P1048356450980772480

`A052996(2*(n+1))`
-/

namespace A114569.P1048356450980772480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (2 * (n + 1))

end

end A114569.P1048356450980772480

namespace A114569

/-- `A052996(2*(n+1))` -/
def P1048356450980772480.Spec : Prop :=
  ∀ n, P1048356450980772480.a n = A114569 n

end A114569

/-! ## A114569.P7471201560772443828

`A309523(A017101(n))`
-/

namespace A114569.P7471201560772443828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309523 (A017101 n).toNat

end

end A114569.P7471201560772443828

namespace A114569

/-- `A309523(A017101(n))` -/
def P7471201560772443828.Spec : Prop :=
  ∀ n, P7471201560772443828.a n = A114569 n

end A114569

/-! ## A114569.P679091928863694136

`A153893(n)*A181565(n)`
-/

namespace A114569.P679091928863694136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n * A181565 n

end

end A114569.P679091928863694136

namespace A114569

/-- `A153893(n)*A181565(n)` -/
def P679091928863694136.Spec : Prop :=
  ∀ n, P679091928863694136.a n = A114569 n

end A114569

/-! ## A114569.P2369281146658891960

`and(A198695(n), A206372(n))`
-/

namespace A114569.P2369281146658891960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198695 n) (A206372 n)

end

end A114569.P2369281146658891960

namespace A114569

/-- `and(A198695(n), A206372(n))` -/
def P2369281146658891960.Spec : Prop :=
  ∀ n, P2369281146658891960.a n = A114569 n

end A114569

/-! ## A114569.P521230151545406601

`xor(A002063(n), A083420(n))`
-/

namespace A114569.P521230151545406601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002063 n) (A083420 n)

end

end A114569.P521230151545406601

namespace A114569

/-- `xor(A002063(n), A083420(n))` -/
def P521230151545406601.Spec : Prop :=
  ∀ n, P521230151545406601.a n = A114569 n

end A114569

/-! ## A114569.P8628652833618446769

`xor(A002066(n), A198693(n))`
-/

namespace A114569.P8628652833618446769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002066 n) (A198693 n)

end

end A114569.P8628652833618446769

namespace A114569

/-- `xor(A002066(n), A198693(n))` -/
def P8628652833618446769.Spec : Prop :=
  ∀ n, P8628652833618446769.a n = A114569 n

end A114569

/-! ## A114569.P5906573426645145152

`xor(A004171(n), A198695(n))`
-/

namespace A114569.P5906573426645145152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004171 n) (A198695 n)

end

end A114569.P5906573426645145152

namespace A114569

/-- `xor(A004171(n), A198695(n))` -/
def P5906573426645145152.Spec : Prop :=
  ∀ n, P5906573426645145152.a n = A114569 n

end A114569

/-! ## A114569.P1430710322641065683

`(A153465(n+1)-2)/4`
-/

namespace A114569.P1430710322641065683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153465 (n + 1) - 2 : ℚ) / 4

end

end A114569.P1430710322641065683

namespace A114569

/-- `(A153465(n+1)-2)/4` -/
def P1430710322641065683.Spec : Prop :=
  ∀ n, P1430710322641065683.a n = (A114569 n : ℚ)

end A114569

/-!
# A114570: Let the decimal expansion of n be d_1 d_2 ... d_k; then a(n) = Sum_{i=1..k} d_i^(k+1-i).

The programs for A114570, there is no canonical definition to state claims against.
-/

/-! ## A114570.P10678670109588860239

`A111707(A162672(n+1))`
-/

namespace A114570.P10678670109588860239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A162672 (n + 1)).toNat

end

end A114570.P10678670109588860239

/-! ## A114570.P12425552349934036915

`A076314(A256577(n+1))`
-/

namespace A114570.P12425552349934036915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A256577 (n + 1)).toNat

end

end A114570.P12425552349934036915

/-! ## A114570.P18219852976643302615

`A111707(A135600(n+2))`
-/

namespace A114570.P18219852976643302615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A135600 (n + 2)).toNat

end

end A114570.P18219852976643302615

/-! ## A114570.P2773710925456226244

`A111707(A118759(n+4)+97)`
-/

namespace A114570.P2773710925456226244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A118759 (n + 4) + 97).toNat

end

end A114570.P2773710925456226244

/-! ## A114570.P18011252481249560501

`A010879(n+1)+A102684(n)²`
-/

namespace A114570.P18011252481249560501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1) + A102684 n ^ 2

end

end A114570.P18011252481249560501

/-! ## A114570.P15907526118490662612

`A179636(n+1)+A102684(n)²`
-/

namespace A114570.P15907526118490662612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179636 (n + 1) + A102684 n ^ 2

end

end A114570.P15907526118490662612

/-! ## A114570.P14106037758435048289

`A010879(n+1)+A054899(n+1)²`
-/

namespace A114570.P14106037758435048289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1) + A054899 (n + 1) ^ 2

end

end A114570.P14106037758435048289

/-!
# A114571: a(n) is the smallest value k for which k!! >= n!.

The programs for A114571, there is no canonical definition to state claims against.
-/

/-! ## A114571.P13835061606430455157

`A353464(A157147(n))+A136617(n+1)`
-/

namespace A114571.P13835061606430455157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A157147 n).toNat + A136617 (n + 1)

end

end A114571.P13835061606430455157

/-! ## A114571.P5573518848294337022

`A136617(n+1)+A003982(A162256(n+1))`
-/

namespace A114571.P5573518848294337022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + A003982 (A162256 (n + 1)).toNat

end

end A114571.P5573518848294337022

/-! ## A114571.P15025423641009242896

`A136617(n+1)+A010056(A154770(n+1))`
-/

namespace A114571.P15025423641009242896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + A010056 (A154770 (n + 1)).toNat

end

end A114571.P15025423641009242896

/-! ## A114571.P1865704213428433941

`A136617(n+1)+A004530(A141214(n))`
-/

namespace A114571.P1865704213428433941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + A004530 (A141214 n).toNat

end

end A114571.P1865704213428433941

/-! ## A114571.P15199474552093593329

`A083089(n+1)+A016389(A137328(n+1))`
-/

namespace A114571.P15199474552093593329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) + A016389 (A137328 (n + 1)).toNat

end

end A114571.P15199474552093593329

/-!
# A114572: Number of "ultrasweet" Boolean functions of n variables which depend on all the variables.

The programs for A114572, there is no canonical definition to state claims against.
-/

/-! ## A114572.P12926754132497279601

`floor(A058712(n)+acot(n))`
-/

namespace A114572.P12926754132497279601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058712 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A114572.P12926754132497279601

/-! ## A114572.P5944223009983159752

`A058712(abs(1-n)+1)`
-/

namespace A114572.P5944223009983159752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058712 (|1 - (n : ℤ)| + 1).toNat

end

end A114572.P5944223009983159752

/-! ## A114572.P12900973888591908664

`A058712(n)+A000007(n)`
-/

namespace A114572.P12900973888591908664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058712 n + A000007 n

end

end A114572.P12900973888591908664

/-! ## A114572.P18237009966016278333

`A058712(n)+A010894(n)`
-/

namespace A114572.P18237009966016278333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058712 n + A010894 (n + 21)

end

end A114572.P18237009966016278333

/-!
# A114573: Numbers k such that phi(k) is a perfect 11th power.

The programs for A114573, there is no canonical definition to state claims against.
-/

/-! ## A114573.P8389244666227214288

`A078170(n+1)*A334337(A078168(n+1))`
-/

namespace A114573.P8389244666227214288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078170 (n + 1) * A334337 (A078168 (n + 1)).toNat

end

end A114573.P8389244666227214288

/-! ## A114573.P4742651389991827720

`A020639(A103939(n))*A078170(n+1)`
-/

namespace A114573.P4742651389991827720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103939 n).toNat * A078170 (n + 1)

end

end A114573.P4742651389991827720

/-! ## A114573.P10138653740570053976

`A020639(A355293(n))*A078170(n+1)`
-/

namespace A114573.P10138653740570053976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A355293 n).toNat * A078170 (n + 1)

end

end A114573.P10138653740570053976

/-! ## A114573.P2635234086528957503

`A020639(A355294(n))*A078170(n+1)`
-/

namespace A114573.P2635234086528957503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A355294 n).toNat * A078170 (n + 1)

end

end A114573.P2635234086528957503

/-!
# A114574: a(n) = p*p! where p = prime(n).

The programs for A114574, the canonical program `A114574.P4745346072233660576` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114574 has offset 1).

The definition of A114574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114574.P4745346072233660576

`A001563(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114574

/-- `A001563(A000040(n+1))` -/
def P4745346072233660576.Spec : Prop :=
  ∀ n, P4745346072233660576.a n = A114574 (n + 1)

theorem P4745346072233660576.correct : P4745346072233660576.Spec := by
  intro n
  simp only [A114574, Nat.add_sub_cancel]

end A114574

/-! ## A114574.P15358825339897643205

`A000040(n+1)*A039716(n+1)`
-/

namespace A114574.P15358825339897643205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A039716 (n + 1)

end

end A114574.P15358825339897643205

namespace A114574

/-- `A000040(n+1)*A039716(n+1)` -/
def P15358825339897643205.Spec : Prop :=
  ∀ n, P15358825339897643205.a n = A114574 (n + 1)

end A114574

/-! ## A114574.P11808732681326613988

`record[∑{p}[n+2, #*#!]]`
-/

namespace A114574.P11808732681326613988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * Nat.factorial p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114574.P11808732681326613988

namespace A114574

/-- `record[∑{p}[n+2, #*#!]]` -/
def P11808732681326613988.Spec : Prop :=
  ∀ n, (P11808732681326613988.a n : ℤ) = A114574 (n + 1)

end A114574

/-! ## A114574.P16520338637898331683

`record[∏{p}[n+2, #*#!]]`
-/

namespace A114574.P16520338637898331683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * Nat.factorial p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114574.P16520338637898331683

namespace A114574

/-- `record[∏{p}[n+2, #*#!]]` -/
def P16520338637898331683.Spec : Prop :=
  ∀ n, (P16520338637898331683.a n : ℤ) = A114574 (n + 1)

end A114574

/-! ## A114574.P10620767991680052124

`record[(n+2)*A006530(n+2)!]`
-/

namespace A114574.P10620767991680052124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial (A006530 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114574.P10620767991680052124

namespace A114574

/-- `record[(n+2)*A006530(n+2)!]` -/
def P10620767991680052124.Spec : Prop :=
  ∀ n, (P10620767991680052124.a n : ℤ) = A114574 (n + 1)

end A114574

/-!
# A114577: Dispersion of the composite numbers.

The programs for A114577, there is no canonical definition to state claims against.
-/

/-! ## A114577.P9601112886941162934

`A180493(A163990(n+1))`
-/

namespace A114577.P9601112886941162934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A163990 (n + 1)).toNat

end

end A114577.P9601112886941162934

/-! ## A114577.P12066636052899196640

`A246682(A191448(n+1)+1)`
-/

namespace A114577.P12066636052899196640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246682 (A191448 (n + 1) + 1).toNat

end

end A114577.P12066636052899196640

/-! ## A114577.P6968951900576707980

`A163990(n+1)+A054908(A108087(n))`
-/

namespace A114577.P6968951900576707980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (n + 1) + A054908 (A108087 n).toNat

end

end A114577.P6968951900576707980

/-! ## A114577.P2032306444304650419

`A316867(A342202(n+3))+A163990(n+1)`
-/

namespace A114577.P2032306444304650419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A342202 (n + 3)).toNat + A163990 (n + 1)

end

end A114577.P2032306444304650419

/-! ## A114577.P16172475654213723812

`A169673(A147187(n+1)²)+A163990(n+1)`
-/

namespace A114577.P16172475654213723812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169673 (A147187 (n + 1) ^ 2).toNat + A163990 (n + 1)

end

end A114577.P16172475654213723812

/-!
# A114579: Transposition sequence of the Wythoff array.

The programs for A114579, there is no canonical definition to state claims against.
-/

/-! ## A114579.P16578988423877156052

`A083412(A064274(n+1)-1)`
-/

namespace A114579.P16578988423877156052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A064274 (n + 1) - 1).toNat

end

end A114579.P16578988423877156052

/-!
# A114582: Number of Motzkin paths of length n having no UDH's starting at level 0 (U=(1,1), H=(1,0), D=(1,-1)).

The programs for A114582, there is no canonical definition to state claims against.
-/

/-! ## A114582.P564960212930917735

`A114581(∑[ceil(n/3)])`
-/

namespace A114582.P564960212930917735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114582.P564960212930917735

/-! ## A114582.P4065078249295881501

`A091972(A103142(n)+A063655(n+1))`
-/

namespace A114582.P4065078249295881501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A103142 n + A063655 (n + 1)).toNat

end

end A114582.P4065078249295881501

/-! ## A114582.P337891599313976713

`A145548(n+1)-A374249(A005169(n))`
-/

namespace A114582.P337891599313976713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145548 (n + 1) - A374249 (A005169 n).toNat

end

end A114582.P337891599313976713

/-! ## A114582.P8550126107174356716

`A320536(A006355(2*n)+A001595(n))`
-/

namespace A114582.P8550126107174356716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A006355 (2 * n) + A001595 n).toNat

end

end A114582.P8550126107174356716

/-! ## A114582.P2811005980779445125

`A052321(n+1)+A036644(A077739(n+1))`
-/

namespace A114582.P2811005980779445125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 1) + A036644 (A077739 (n + 1)).toNat

end

end A114582.P2811005980779445125

/-!
# A114584: Number of Motzkin paths of length n having no UHD's (U=(1,1), H=(1,0), D=(1,-1)).

The programs for A114584, there is no canonical definition to state claims against.
-/

/-! ## A114584.P6590466815193329495

`A114583(A001840(n))`
-/

namespace A114584.P6590466815193329495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (A001840 n).toNat

end

end A114584.P6590466815193329495

/-! ## A114584.P13795520052613740443

`A114583(eq[0, A073189(n)])`
-/

namespace A114584.P13795520052613740443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114584.P13795520052613740443

/-! ## A114584.P18112267209976757416

`A114583(∑[A002264(n+2)])`
-/

namespace A114584.P18112267209976757416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114584.P18112267209976757416

/-! ## A114584.P13313741778588577079

`A114583(∑[n-A002264(2*n)])`
-/

namespace A114584.P13313741778588577079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114584.P13313741778588577079

/-! ## A114584.P10768375255631618508

`A114583(record[A008799(n+1)-n])`
-/

namespace A114584.P10768375255631618508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114584.P10768375255631618508

/-! ## A114584.P10364589908760183420

`A114583(∑[A110654(A004396(n))])`
-/

namespace A114584.P10364589908760183420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114584.P10364589908760183420

/-! ## A114584.P3707641785072151072

`A114583(record[A008799(A004442(n))])`
-/

namespace A114584.P3707641785072151072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114584.P3707641785072151072

/-! ## A114584.P15314278891944475435

`A114583(record[A008799(A123108(n))])`
-/

namespace A114584.P15314278891944475435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114584.P15314278891944475435

/-! ## A114584.P9239311815008903973

`A114583(A000217(n)-A000212(n))`
-/

namespace A114584.P9239311815008903973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114583 (A000217 n - A000212 n).toNat

end

end A114584.P9239311815008903973

/-!
# A114586: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having k peaks at odd levels (0<=k<=n-2; n>=2). A hill in a Dyck path is a peak at level 1.

The programs for A114586, there is no canonical definition to state claims against.
-/

/-! ## A114586.P666584482097744605

`A171839(eq[0, A112334(n)])`
-/

namespace A114586.P666584482097744605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114586.P666584482097744605

/-! ## A114586.P13067489719041175249

`A171839(eq[0, A132013(n)])`
-/

namespace A114586.P13067489719041175249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114586.P13067489719041175249

/-! ## A114586.P15577470903375123274

`A171839(eq[0, A167374(n)])`
-/

namespace A114586.P15577470903375123274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114586.P15577470903375123274

/-! ## A114586.P7097186155805552137

`A171839(lt[1, A025581(n)])`
-/

namespace A114586.P7097186155805552137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114586.P7097186155805552137

/-! ## A114586.P15037739155460986458

`A171839(lt[1, A054450(n)])`
-/

namespace A114586.P15037739155460986458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114586.P15037739155460986458

/-! ## A114586.P17166089602811700681

`A171839(lt[1, A073200(n)])`
-/

namespace A114586.P17166089602811700681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114586.P17166089602811700681

/-! ## A114586.P15131854885083527505

`A171839(lt[1, A133336(n)])`
-/

namespace A114586.P15131854885083527505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114586.P15131854885083527505

/-! ## A114586.P7251120255006863514

`A171839(lt[2, A124392(n)])`
-/

namespace A114586.P7251120255006863514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114586.P7251120255006863514

/-! ## A114586.P9094968054905114705

`A171839(eq[0, A103451(n+1)])`
-/

namespace A114586.P9094968054905114705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114586.P9094968054905114705

/-! ## A114586.P4513889850917842984

`A171839(eq[0, A145677(n+1)])`
-/

namespace A114586.P4513889850917842984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114586.P4513889850917842984

/-!
# A114587: Number of peaks at odd levels in all hill-free Dyck paths of semilength n+3 (a hill in a Dyck path is a peak at level 1).

The programs for A114587, the canonical program `A114587.P2300665656653397848` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114587 has offset 0).

The definition of A114587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114587.P6248322472160784994

`∑[A119012(n+2)+A114590(n)]`
-/

namespace A114587.P6248322472160784994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119012 (n + 2) + A114590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114587.P6248322472160784994

namespace A114587

/-- `∑[A119012(n+2)+A114590(n)]` -/
def P6248322472160784994.Spec : Prop :=
  ∀ n, P6248322472160784994.a n = A114587 n

end A114587

/-! ## A114587.P2384727309137882750

`A119012(n+2)+A114515(n+2)`
-/

namespace A114587.P2384727309137882750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119012 (n + 2) + A114515 (n + 2)

end

end A114587.P2384727309137882750

namespace A114587

/-- `A119012(n+2)+A114515(n+2)` -/
def P2384727309137882750.Spec : Prop :=
  ∀ n, P2384727309137882750.a n = A114587 n

end A114587

/-! ## A114587.P2300665656653397848

`A114515(n+3)-A114590(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A114587

/-- `A114515(n+3)-A114590(n+1)` -/
def P2300665656653397848.Spec : Prop :=
  ∀ n, P2300665656653397848.a n = A114587 n

theorem P2300665656653397848.correct : P2300665656653397848.Spec := by
  intro n
  simp only [A114587]

end A114587

/-! ## A114587.P7023558762720390902

`Δ[A114515(n+2)]-A116914(n+3)`
-/

namespace A114587.P7023558762720390902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116914 (n + 3)

end

end A114587.P7023558762720390902

namespace A114587

/-- `Δ[A114515(n+2)]-A116914(n+3)` -/
def P7023558762720390902.Spec : Prop :=
  ∀ n, P7023558762720390902.a n = A114587 n

end A114587

/-! ## A114587.P14515362006674223674

`A114590(n+2)-A014300(n+3)`
-/

namespace A114587.P14515362006674223674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114590 (n + 2) - A014300 (n + 3)

end

end A114587.P14515362006674223674

namespace A114587

/-- `A114590(n+2)-A014300(n+3)` -/
def P14515362006674223674.Spec : Prop :=
  ∀ n, P14515362006674223674.a n = A114587 n

end A114587

/-! ## A114587.P2481164407742858196

`A126258(A167614(2*(n+1))+n)`
-/

namespace A114587.P2481164407742858196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126258 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A114587.P2481164407742858196

namespace A114587

/-- `A126258(A167614(2*(n+1))+n)` -/
def P2481164407742858196.Spec : Prop :=
  ∀ n, P2481164407742858196.a n = A114587 n

end A114587

/-!
# A114589: Number of hill-free Dyck paths of semilength n+3 and having no peaks at even levels (a hill in a Dyck path is a peak at level 1).

The programs for A114589, there is no canonical definition to state claims against.
-/

/-! ## A114589.P8860979949847923011

`A114588(∑[n+2]+2)`
-/

namespace A114589.P8860979949847923011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114588 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A114589.P8860979949847923011

/-! ## A114589.P4862603431382351338

`floor(record[sqrt(A247073(3*n+5))])`
-/

namespace A114589.P4862603431382351338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A247073 (3 * n + 5) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A114589.P4862603431382351338

/-! ## A114589.P11861494016292535546

`A100196(A150146(n))`
-/

namespace A114589.P11861494016292535546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150146 n).toNat

end

end A114589.P11861494016292535546

/-! ## A114589.P96415267429317168

`A283317(A008510(n+1))+floor(3^n/(2/3+n))`
-/

namespace A114589.P96415267429317168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283317 (A008510 (n + 1)).toNat + ⌊(3 ^ n : ℚ) / ((2 : ℚ) / 3 + (n : ℚ))⌋

end

end A114589.P96415267429317168

/-!
# A114590: Number of peaks at even levels in all hill-free Dyck paths of semilength n+2 (a hill in a Dyck path is a peak at level 1).

The programs for A114590, the canonical program `A114590.P10090074978158621732` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114590 has offset 0).

The definition of A114590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114590.P16853000295998383983

`A116914(n+2)+A114515(n+1)`
-/

namespace A114590.P16853000295998383983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) + A114515 (n + 1)

end

end A114590.P16853000295998383983

namespace A114590

/-- `A116914(n+2)+A114515(n+1)` -/
def P16853000295998383983.Spec : Prop :=
  ∀ n, P16853000295998383983.a n = A114590 n

end A114590

/-! ## A114590.P10090074978158621732

`A014301(n+2)-A114515(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A114590

/-- `A014301(n+2)-A114515(n+1)` -/
def P10090074978158621732.Spec : Prop :=
  ∀ n, P10090074978158621732.a n = A114590 n

theorem P10090074978158621732.correct : P10090074978158621732.Spec := by
  intro n
  simp only [A114590]

end A114590

/-! ## A114590.P7611465649477646338

`A014300(n+2)-A116914(n+3)`
-/

namespace A114590.P7611465649477646338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 2) - A116914 (n + 3)

end

end A114590.P7611465649477646338

namespace A114590

/-- `A014300(n+2)-A116914(n+3)` -/
def P7611465649477646338.Spec : Prop :=
  ∀ n, P7611465649477646338.a n = A114590 n

end A114590

/-! ## A114590.P3378661682772877111

`A191526(A004273(n+2))-A116914(n+3)`
-/

namespace A114590.P3378661682772877111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (A004273 (n + 2)).toNat - A116914 (n + 3)

end

end A114590.P3378661682772877111

namespace A114590

/-- `A191526(A004273(n+2))-A116914(n+3)` -/
def P3378661682772877111.Spec : Prop :=
  ∀ n, P3378661682772877111.a n = A114590 n

end A114590

/-! ## A114590.P9782629298322398101

`A191526(A004280(n+3))-A116914(n+3)`
-/

namespace A114590.P9782629298322398101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (A004280 (n + 3)).toNat - A116914 (n + 3)

end

end A114590.P9782629298322398101

namespace A114590

/-- `A191526(A004280(n+3))-A116914(n+3)` -/
def P9782629298322398101.Spec : Prop :=
  ∀ n, P9782629298322398101.a n = A114590 n

end A114590

/-! ## A114590.P2889056708186619727

`A124392(∑[n+1]+1)`
-/

namespace A114590.P2889056708186619727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A114590.P2889056708186619727

namespace A114590

/-- `A124392(∑[n+1]+1)` -/
def P2889056708186619727.Spec : Prop :=
  ∀ n, P2889056708186619727.a n = A114590 n

end A114590

/-! ## A114590.P12849496942437689540

`record[A124392(A232091(n)+n)]`
-/

namespace A114590.P12849496942437689540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 (A232091 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114590.P12849496942437689540

namespace A114590

/-- `record[A124392(A232091(n)+n)]` -/
def P12849496942437689540.Spec : Prop :=
  ∀ n, P12849496942437689540.a n = A114590 n

end A114590

/-! ## A114590.P884073976344679703

`record[A124392(A133263(n)-(n+1))]`
-/

namespace A114590.P884073976344679703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 (A133263 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114590.P884073976344679703

namespace A114590

/-- `record[A124392(A133263(n)-(n+1))]` -/
def P884073976344679703.Spec : Prop :=
  ∀ n, P884073976344679703.a n = A114590 n

end A114590

/-! ## A114590.P4306120119096197070

`A126258(2*(n+1)²)`
-/

namespace A114590.P4306120119096197070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126258 (2 * (n + 1) ^ 2)

end

end A114590.P4306120119096197070

namespace A114590

/-- `A126258(2*(n+1)²)` -/
def P4306120119096197070.Spec : Prop :=
  ∀ n, P4306120119096197070.a n = A114590 n

end A114590

/-!
# A114591: A composite analog of the Moebius function: Sum_{n>=1} a(n)/n^s = Product_{c=composites} (1 - 1/c^s) = zeta(s) *Product_{k>=2} (1 - 1/k^s).

The programs for A114591, there is no canonical definition to state claims against.
-/

/-! ## A114591.P811117935534106944

`∑{d}[n+1, A114592(#)]`
-/

namespace A114591.P811117935534106944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d

end

end A114591.P811117935534106944

/-! ## A114591.P3145966693767514136

`∑{d}[n+1, A057567(#)*A339701((n+1)/#)]`
-/

namespace A114591.P3145966693767514136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057567 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114591.P3145966693767514136

/-! ## A114591.P8920541930751953721

`-A114592(A087560(n+1))`
-/

namespace A114591.P8920541930751953721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114592 (A087560 (n + 1)).toNat

end

end A114591.P8920541930751953721

/-! ## A114591.P8200270637497442815

`A000007(n+1)-A114592(A087560(n+1))`
-/

namespace A114591.P8200270637497442815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P8200270637497442815

/-! ## A114591.P12143920197941930552

`val(A000038(n)+1, 6)-A114592(A087560(n+1))`
-/

namespace A114591.P12143920197941930552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000038 n + 1).toNat 6 : ℤ) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P12143920197941930552

/-! ## A114591.P11537868285514928400

`val(A010054(n)+1, 6)-A114592(A087560(n+1))`
-/

namespace A114591.P11537868285514928400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A010054 n + 1).toNat 6 : ℤ) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P11537868285514928400

/-! ## A114591.P9774248931453581619

`val(A000203(n+1)+1, 6)-A114592(A087560(n+1))`
-/

namespace A114591.P9774248931453581619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000203 (n + 1) + 1).toNat 6 : ℤ) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P9774248931453581619

/-! ## A114591.P9046875953213352791

`val(A099544(n+1)+1, 6)-A114592(A087560(n+1))`
-/

namespace A114591.P9046875953213352791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A099544 (n + 1) + 1).toNat 6 : ℤ) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P9046875953213352791

/-! ## A114591.P13040826427263034530

`val(A157228(n+1)+1, 6)-A114592(A087560(n+1))`
-/

namespace A114591.P13040826427263034530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A157228 (n + 1) + 1).toNat 6 : ℤ) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P13040826427263034530

/-! ## A114591.P13698113021233494475

`val(A235151(n+1)+1, 6)-A114592(A087560(n+1))`
-/

namespace A114591.P13698113021233494475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A235151 (n + 1) + 1).toNat 6 : ℤ) - A114592 (A087560 (n + 1)).toNat

end

end A114591.P13698113021233494475

/-! ## A114591.P896559108375238494

`∑{d}[n+1, A224892(#)/#]`
-/

namespace A114591.P896559108375238494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A224892 d : ℚ) / (d : ℚ)

end

end A114591.P896559108375238494

/-! ## A114591.P13392362974304971332

`-A114592(A064680(A064988(n+1)))`
-/

namespace A114591.P13392362974304971332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114592 (A064680 (A064988 (n + 1)).toNat).toNat

end

end A114591.P13392362974304971332

/-! ## A114591.P11039788406053307168

`A050372(n+1)-A107279(A329602(n+1))`
-/

namespace A114591.P11039788406053307168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (n + 1) - A107279 (A329602 (n + 1)).toNat

end

end A114591.P11039788406053307168

/-!
# A114592: Sum_{n>=1} a(n)/n^s = Product_{k>=2} (1 - 1/k^s).

The programs for A114592, there is no canonical definition to state claims against.
-/

/-! ## A114592.P4330468449921538864

`A320836(A181819(n+1))`
-/

namespace A114592.P4330468449921538864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A181819 (n + 1)).toNat

end

end A114592.P4330468449921538864

/-! ## A114592.P11689433921238834357

`A320836(∏{e}[n+1, A000040(#)])`
-/

namespace A114592.P11689433921238834357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A114592.P11689433921238834357

/-! ## A114592.P1221499177422357865

`A320836(∏{e}[n+1, A109611(#)])`
-/

namespace A114592.P1221499177422357865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (∏ p ∈ Nat.primeFactors (f1 n), A109611 (Nat.factorization (f1 n) p)).toNat

end

end A114592.P1221499177422357865

/-! ## A114592.P2169511522645574340

`∑{d}[n+1, A008683(#)*A114591((n+1)/#)]`
-/

namespace A114592.P2169511522645574340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A114591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P2169511522645574340

/-! ## A114592.P7338694595778401730

`∑{d}[n+1, A001055(#)*A339701((n+1)/#)]`
-/

namespace A114592.P7338694595778401730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P7338694595778401730

/-! ## A114592.P10684472900809821615

`∑{d}[n+1, A301830(#)*A339702((n+1)/#)]`
-/

namespace A114592.P10684472900809821615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P10684472900809821615

/-! ## A114592.P7197369441489816082

`∑{d}[n+1, A339318(#)*A339703((n+1)/#)]`
-/

namespace A114592.P7197369441489816082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P7197369441489816082

/-! ## A114592.P6732679015528298295

`∑{d}[n+1, A339321(#)*A339706((n+1)/#)]`
-/

namespace A114592.P6732679015528298295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339321 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P6732679015528298295

/-! ## A114592.P7879016256540993

`∑{d}[n+1, A339319(#)*A339704((n+1)/#)]`
-/

namespace A114592.P7879016256540993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P7879016256540993

/-! ## A114592.P12535663205185019891

`∑{d}[n+1, A339320(#)*A339705((n+1)/#)]`
-/

namespace A114592.P12535663205185019891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339320 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P12535663205185019891

/-! ## A114592.P12849272835867834891

`∑{d}[n+1, A339323(#)*A339716((n+1)/#)]`
-/

namespace A114592.P12849272835867834891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339323 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P12849272835867834891

/-! ## A114592.P5122814919931015880

`∑{d}[n+1, A339322(#)*A339707((n+1)/#)]`
-/

namespace A114592.P5122814919931015880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339322 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P5122814919931015880

/-! ## A114592.P4726387425506373008

`∑{d}[n+1, A328730(#)*A328853((n+1)/#)]`
-/

namespace A114592.P4726387425506373008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328730 d * A328853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114592.P4726387425506373008

/-! ## A114592.P8674773675187654567

`A224892(n+1)/(n+1)`
-/

namespace A114592.P8674773675187654567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224892 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A114592.P8674773675187654567

/-! ## A114592.P1791213957472711631

`A175629(A339321(n+1))`
-/

namespace A114592.P1791213957472711631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A339321 (n + 1)).toNat

end

end A114592.P1791213957472711631

/-!
# A114593: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n, having k ascents of length at least 2 (1 <= k <= floor(n/2), n >= 2).

The programs for A114593, there is no canonical definition to state claims against.
-/

/-! ## A114593.P8984999371609987208

`or(A025427(A243777(n)), A319252(n+1))`
-/

namespace A114593.P8984999371609987208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025427 (A243777 (n + 10)).toNat) (A319252 (n + 1))

end

end A114593.P8984999371609987208

/-! ## A114593.P18228188086055457912

`A319252(n+1)+A025468(A014480(n+1))`
-/

namespace A114593.P18228188086055457912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319252 (n + 1) + A025468 (A014480 (n + 1)).toNat

end

end A114593.P18228188086055457912

/-! ## A114593.P4492307979947605734

`A319252(n+1)+A102683(A062763(n+1))`
-/

namespace A114593.P4492307979947605734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319252 (n + 1) + A102683 (A062763 (n + 1)).toNat

end

end A114593.P4492307979947605734

/-! ## A114593.P16569723980082497353

`A319252(n+1)+A025468(A101362(n))`
-/

namespace A114593.P16569723980082497353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319252 (n + 1) + A025468 (A101362 n).toNat

end

end A114593.P16569723980082497353

/-!
# A114596: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having abscissa of first return equal to 2k (2<=k<=n). A hill in a Dyck path is a peak at level 1.

The programs for A114596, the canonical program `A114596.P17746190447375322614` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114596 has offset 2).

The definition of A114596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114596.P17746190447375322614

`A000108(A002260(n+1))*A000957(A004736(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A114596

/-- `A000108(A002260(n+1))*A000957(A004736(n+1))` -/
def P17746190447375322614.Spec : Prop :=
  ∀ n, P17746190447375322614.a n = A114596 (n + 2)

theorem P17746190447375322614.correct : P17746190447375322614.Spec := by
  intro n
  simp only [A114596, Nat.add_sub_cancel]

end A114596

/-!
# A114597: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n having pyramid weight k.

The programs for A114597, there is no canonical definition to state claims against.
-/

/-! ## A114597.P5737457643320871652

`or(A028412(n), A327085(A187829(n+1)))`
-/

namespace A114597.P5737457643320871652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028412 n) (A327085 (A187829 (n + 1)).toNat)

end

end A114597.P5737457643320871652

/-!
# A114599: a(1) = a(2) = 1. For n >= 3, a(n) = 1 + A114600(n-2)*A114600(n-1).

The programs for A114599, there is no canonical definition to state claims against.
-/

/-! ## A114599.P3827357473217608849

`A006530(a(n-1))*A006530(a(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A114599.P3827357473217608849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006530 (a (n - 1)).toNat * A006530 (a (n - 2)).toNat + 1

end

end A114599.P3827357473217608849

