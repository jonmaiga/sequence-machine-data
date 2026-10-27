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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271000: Table read by rows: list of prime sextuplets (p, p+4, p+6, p+10, p+12, p+16).

The programs for A271000, there is no canonical definition to state claims against.
-/

/-! ## A271000.P5123135138820864755

`p?[lt[n, A244230(A061601(n))]-3]`
-/

namespace A271000.P5123135138820864755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A061601 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271000.P5123135138820864755

/-! ## A271000.P16490558764177194036

`p?[∑[A000040(A131642(3*n+4))]]`
-/

namespace A271000.P16490558764177194036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131642 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271000.P16490558764177194036

/-! ## A271000.P6083283640984493306

`A000040(A174141(n+5)%A174106(n+1))`
-/

namespace A271000.P6083283640984493306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A174141 (n + 5)) (A174106 (n + 1))).toNat

end

end A271000.P6083283640984493306

/-! ## A271000.P17109045877896194979

`A000040(A174141(n+5))%A340816(3*n+5)`
-/

namespace A271000.P17109045877896194979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A174141 (n + 5)).toNat) (A340816 (3 * n + 5))

end

end A271000.P17109045877896194979

/-! ## A271000.P5370101981070401013

`A000040(A343403(n+5)%A343402(2*(n+2)))`
-/

namespace A271000.P5370101981070401013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A343403 (n + 5)) (A343402 (2 * (n + 2)))).toNat

end

end A271000.P5370101981070401013

/-!
# A271001: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A271001, there is no canonical definition to state claims against.
-/

/-! ## A271001.P3145141465186967224

`A269702(2^n-1)`
-/

namespace A271001.P3145141465186967224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 (2 ^ n - 1)

end

end A271001.P3145141465186967224

/-! ## A271001.P10900295531944328601

`record[A269702(A341916(n))]`
-/

namespace A271001.P10900295531944328601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271001.P10900295531944328601

/-! ## A271001.P8529568378511669193

`or(1, A269702(A000225(n)))`
-/

namespace A271001.P8529568378511669193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269702 (A000225 n).toNat)

end

end A271001.P8529568378511669193

/-! ## A271001.P9824320384389850554

`record[A269702(A253564(n+1))]`
-/

namespace A271001.P9824320384389850554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271001.P9824320384389850554

/-! ## A271001.P10923735169436407943

`record[A269702(A269386(n+1))]`
-/

namespace A271001.P10923735169436407943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271001.P10923735169436407943

/-!
# A271002: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A271002, there is no canonical definition to state claims against.
-/

/-! ## A271002.P14622027127551852979

`∑[A271003(n-1)-(A033999(n)²-2)*a(n-1)]` with `a(0)=1`
-/

namespace A271002.P14622027127551852979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271003 (n - 1) - (A033999 n ^ 2 - 2) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271002.P14622027127551852979

/-! ## A271002.P7785261837193271428

`∑[∑[A271003(n)]+1-A271003(n)]`
-/

namespace A271002.P7785261837193271428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271003 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271002.P7785261837193271428

/-! ## A271002.P4730272816543635418

`∑[A269702(n)]`
-/

namespace A271002.P4730272816543635418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271002.P4730272816543635418

/-! ## A271002.P16687331666312095411

`A269702(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271002.P16687331666312095411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269702 n + a (A023443 n).toNat

end

end A271002.P16687331666312095411

/-! ## A271002.P13965675492361917662

`A269702(n)+A000038(n)+a(n-1)` with `a(0)=1`
-/

namespace A271002.P13965675492361917662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269702 n + (A000038 n + a (n - 1))

end

end A271002.P13965675492361917662

/-! ## A271002.P8971876379778537743

`A269702(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A271002.P8971876379778537743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269702 (A004526 (n + n)).toNat + a (n - 1)

end

end A271002.P8971876379778537743

/-!
# A271003: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A271003, there is no canonical definition to state claims against.
-/

/-! ## A271003.P7200042242350356958

`Δ[A269702(n)]`
-/

namespace A271003.P7200042242350356958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271003.P7200042242350356958

/-! ## A271003.P11249724774185593418

`A269702(n+1)-A269702(n)`
-/

namespace A271003.P11249724774185593418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 (n + 1) - A269702 n

end

end A271003.P11249724774185593418

/-! ## A271003.P9128724860670246195

`A271019(n^gcd(11, n))`
-/

namespace A271003.P9128724860670246195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271019 (n ^ Nat.gcd 11 n)

end

end A271003.P9128724860670246195

/-! ## A271003.P12437598578051071965

`A271019(A062399(n))`
-/

namespace A271003.P12437598578051071965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271019 (A062399 n).toNat

end

end A271003.P12437598578051071965

/-! ## A271003.P6176574429469770956

`A271019(A120126(n))`
-/

namespace A271003.P6176574429469770956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271019 (A120126 n).toNat

end

end A271003.P6176574429469770956

/-!
# A271004: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A271004, there is no canonical definition to state claims against.
-/

/-! ## A271004.P7570259175665960208

`A272564(n)-char[2]`
-/

namespace A271004.P7570259175665960208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271004.P7570259175665960208

/-! ## A271004.P8591299128665470531

`A271007(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271004.P8591299128665470531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271007 (n - 1) + a (n - 1)

end

end A271004.P8591299128665470531

/-! ## A271004.P17718556328553776974

`xor(A185012(n), A272564(n))`
-/

namespace A271004.P17718556328553776974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A272564 n)

end

end A271004.P17718556328553776974

/-! ## A271004.P16608085268679427168

`Δ[A271006(n)]-A271007(n)`
-/

namespace A271004.P16608085268679427168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271007 n

end

end A271004.P16608085268679427168

/-! ## A271004.P15994017377195616496

`A271006(n+1)-(A271007(n)+A271006(n))`
-/

namespace A271004.P15994017377195616496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271006 (n + 1) - (A271007 n + A271006 n)

end

end A271004.P15994017377195616496

/-! ## A271004.P15360349424850474740

`A272566(n+1)-(A272567(n)+A272566(n))-char[2]`
-/

namespace A271004.P15360349424850474740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 (n + 1) - (A272567 n + A272566 n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271004.P15360349424850474740

/-! ## A271004.P15022192172827699444

`A272564(n)-A014963(A187710(n))+1`
-/

namespace A271004.P15022192172827699444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 n - A014963 (A187710 n).toNat + 1

end

end A271004.P15022192172827699444

/-!
# A271005: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A271005, the canonical program `A271005.P10375825949680985058` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271005 has offset 0).

The definition of A271005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271005.P531417688436468378

`and(4^(n+1)-2^n, ∑[ceil(3*∑[2^(n-1)]²)])`
-/

namespace A271005.P531417688436468378
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ (n + 1) : ℤ) - (2 ^ n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271005.P531417688436468378

namespace A271005

/-- `and(4^(n+1)-2^n, ∑[ceil(3*∑[2^(n-1)]²)])` -/
def P531417688436468378.Spec : Prop :=
  ∀ n, P531417688436468378.a n = A271005 n

end A271005

/-! ## A271005.P10375825949680985058

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=8, a(2)=44, a(3)=208, a(4)=928`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271005

/-- `6*a(n-1)-8*a(n-2)` -/
def P10375825949680985058.Spec : Prop :=
  ∀ n, P10375825949680985058.a n = A271005 n

theorem P10375825949680985058.correct : P10375825949680985058.Spec := by
  intro n
  simp only [A271005]

end A271005

/-! ## A271005.P79822237471329494

`A271004(2^n-1)`
-/

namespace A271005.P79822237471329494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 (2 ^ n - 1)

end

end A271005.P79822237471329494

namespace A271005

/-- `A271004(2^n-1)` -/
def P79822237471329494.Spec : Prop :=
  ∀ n, P79822237471329494.a n = A271005 n

end A271005

/-! ## A271005.P13736578363693520519

`A272564(2^n-1)`
-/

namespace A271005.P13736578363693520519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 (2 ^ n - 1)

end

end A271005.P13736578363693520519

namespace A271005

/-- `A272564(2^n-1)` -/
def P13736578363693520519.Spec : Prop :=
  ∀ n, P13736578363693520519.a n = A271005 n

end A271005

/-! ## A271005.P12412820295913484569

`record[A272564(A227351(n))]`
-/

namespace A271005.P12412820295913484569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271005.P12412820295913484569

namespace A271005

/-- `record[A272564(A227351(n))]` -/
def P12412820295913484569.Spec : Prop :=
  ∀ n, P12412820295913484569.a n = A271005 n

end A271005

/-!
# A271006: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A271006, there is no canonical definition to state claims against.
-/

/-! ## A271006.P2995489326058624605

`∑[A272564(n)-char[2]]`
-/

namespace A271006.P2995489326058624605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271006.P2995489326058624605

/-! ## A271006.P5261828694431651952

`∑[∑[A271007(n)]+1-A271007(n)]`
-/

namespace A271006.P5261828694431651952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271006.P5261828694431651952

/-! ## A271006.P14015145269153745611

`A272566(n)-floor(atan(n))`
-/

namespace A271006.P14015145269153745611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - ⌊Real.arctan (n : ℝ)⌋

end

end A271006.P14015145269153745611

/-! ## A271006.P10903072065235131133

`A272566(n)-A157928(n)`
-/

namespace A271006.P10903072065235131133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A157928 n

end

end A271006.P10903072065235131133

/-! ## A271006.P6072105522685164702

`A272566(n)-char[A258451(n)]`
-/

namespace A271006.P6072105522685164702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258451 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A271006.P6072105522685164702

/-! ## A271006.P5649524049081675499

`A272566(n)-A000035(A019426(n))`
-/

namespace A271006.P5649524049081675499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A000035 (A019426 n).toNat

end

end A271006.P5649524049081675499

/-! ## A271006.P3054458038698849230

`A272566(n)-A001221(A060632(n))`
-/

namespace A271006.P3054458038698849230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A001221 (A060632 n).toNat

end

end A271006.P3054458038698849230

/-! ## A271006.P16489421400694741319

`A272566(n)-A057427(A032741(n))`
-/

namespace A271006.P16489421400694741319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A057427 (A032741 n).toNat

end

end A271006.P16489421400694741319

/-! ## A271006.P3461241374997243825

`A272566(n)-A254377(A000010(n+1))`
-/

namespace A271006.P3461241374997243825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A254377 (A000010 (n + 1)).toNat

end

end A271006.P3461241374997243825

/-! ## A271006.P1442945723307671212

`A272566(n)-A254377(A072376(n+2))`
-/

namespace A271006.P1442945723307671212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A254377 (A072376 (n + 2)).toNat

end

end A271006.P1442945723307671212

/-! ## A271006.P13093638508505042261

`A272566(n)-A001222(A266593(A266593(n)))`
-/

namespace A271006.P13093638508505042261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A001222 (A266593 (A266593 n).toNat).toNat

end

end A271006.P13093638508505042261

/-! ## A271006.P8722657797016040382

`∑[A271004(n)]`
-/

namespace A271006.P8722657797016040382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271006.P8722657797016040382

/-! ## A271006.P15867933783176619159

`A271004(n%A157996(n))+a(n-1)` with `a(0)=1`
-/

namespace A271006.P15867933783176619159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271004 (Int.tmod (n : ℤ) (A157996 n)).toNat + a (n - 1)

end

end A271006.P15867933783176619159

/-! ## A271006.P8730346245049897784

`A272566(n)-A115878(A008578(n+1))`
-/

namespace A271006.P8730346245049897784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A115878 (A008578 (n + 1)).toNat

end

end A271006.P8730346245049897784

/-! ## A271006.P9303724225899273307

`A272566(n)-A019426(A007590(n))`
-/

namespace A271006.P9303724225899273307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 n - A019426 (A007590 n).toNat

end

end A271006.P9303724225899273307

/-!
# A271007: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

The programs for A271007, there is no canonical definition to state claims against.
-/

/-! ## A271007.P10680895092825667584

`char[2]+A272567(n)-char[1]`
-/

namespace A271007.P10680895092825667584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A272567 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A271007.P10680895092825667584

/-! ## A271007.P2151684098633106806

`Δ[A272564(n)-char[2]]`
-/

namespace A271007.P2151684098633106806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271007.P2151684098633106806

/-! ## A271007.P5852517525578809391

`Δ[xor(A185012(n), A272564(n))]`
-/

namespace A271007.P5852517525578809391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A272564 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271007.P5852517525578809391

/-! ## A271007.P13451315939594077066

`Δ[A271004(n)]`
-/

namespace A271007.P13451315939594077066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271007.P13451315939594077066

/-! ## A271007.P3851542866347683284

`A271004(n+1)-A271004(n)`
-/

namespace A271007.P3851542866347683284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 (n + 1) - A271004 n

end

end A271007.P3851542866347683284

/-!
# A271008: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A271008, there is no canonical definition to state claims against.
-/

/-! ## A271008.P17349666748528839042

`A271011(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271008.P17349666748528839042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271011 (n - 1) + a (n - 1)

end

end A271008.P17349666748528839042

/-! ## A271008.P8324763588305321128

`Δ[A271010(n)]-A271011(n)`
-/

namespace A271008.P8324763588305321128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271011 n

end

end A271008.P8324763588305321128

/-! ## A271008.P15328273491239678634

`A271010(n+1)-(A271011(n)+A271010(n))`
-/

namespace A271008.P15328273491239678634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271010 (n + 1) - (A271011 n + A271010 n)

end

end A271008.P15328273491239678634

/-!
# A271009: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A271009, there is no canonical definition to state claims against.
-/

/-! ## A271009.P18175771793681972188

`A271008(2^n-1)`
-/

namespace A271009.P18175771793681972188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 (2 ^ n - 1)

end

end A271009.P18175771793681972188

/-! ## A271009.P3244704318691339563

`record[A271008(A245611(n+1))]`
-/

namespace A271009.P3244704318691339563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271009.P3244704318691339563

/-! ## A271009.P14200797811618347056

`record[A271008(A293447(n+1))]`
-/

namespace A271009.P14200797811618347056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271009.P14200797811618347056

/-! ## A271009.P16316390371185491865

`record[A271008(A297156(n+1))]`
-/

namespace A271009.P16316390371185491865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 (A297156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271009.P16316390371185491865

/-! ## A271009.P13689710822562486756

`record[A036987(n)*A271008(n)]`
-/

namespace A271009.P13689710822562486756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A271008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271009.P13689710822562486756

/-!
# A271010: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A271010, there is no canonical definition to state claims against.
-/

/-! ## A271010.P6195406482390737247

`∑[A271008(n)]`
-/

namespace A271010.P6195406482390737247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271010.P6195406482390737247

/-! ## A271010.P2588386731613850423

`A271008(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A271010.P2588386731613850423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271008 (n % (n + 1)) + a (n - 1)

end

end A271010.P2588386731613850423

/-! ## A271010.P15114574932638459616

`A271008(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271010.P15114574932638459616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271008 n + a (A023443 n).toNat

end

end A271010.P15114574932638459616

/-! ## A271010.P13903825991498470757

`∑[∑[A271011(n)]+1-A271011(n)]`
-/

namespace A271010.P13903825991498470757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271011 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271010.P13903825991498470757

/-! ## A271010.P16938030606537528570

`a(n-1)+A001221(A007918(n))*A271008(n)` with `a(0)=1`
-/

namespace A271010.P16938030606537528570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A007918 n).toNat * A271008 n

end

end A271010.P16938030606537528570

/-!
# A271011: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A271011, there is no canonical definition to state claims against.
-/

/-! ## A271011.P15966103596206233785

`Δ[A271008(n)]`
-/

namespace A271011.P15966103596206233785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271011.P15966103596206233785

/-! ## A271011.P1768786853210608005

`A271008(n+1)-A271008(n)`
-/

namespace A271011.P1768786853210608005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271008 (n + 1) - A271008 n

end

end A271011.P1768786853210608005

/-!
# A271012: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A271012, there is no canonical definition to state claims against.
-/

/-! ## A271012.P17716339773724678433

`A271015(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271012.P17716339773724678433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271015 (n - 1) + a (n - 1)

end

end A271012.P17716339773724678433

/-! ## A271012.P11629239824598520401

`∑[A271015(A028310(n)-1)]-2`
-/

namespace A271012.P11629239824598520401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271015 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A271012.P11629239824598520401

/-! ## A271012.P6437098871763383636

`Δ[A271014(n)]-A271015(n)`
-/

namespace A271012.P6437098871763383636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271015 n

end

end A271012.P6437098871763383636

/-! ## A271012.P15791308900875999797

`A271014(n+1)-(A271015(n)+A271014(n))`
-/

namespace A271012.P15791308900875999797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271014 (n + 1) - (A271015 n + A271014 n)

end

end A271012.P15791308900875999797

/-! ## A271012.P7312944710783020381

`A271014(A008619(2*n))%(A271015(n)+A271014(n))`
-/

namespace A271012.P7312944710783020381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271014 (A008619 (2 * n)).toNat) (A271015 n + A271014 n)

end

end A271012.P7312944710783020381

/-!
# A271013: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A271013, there is no canonical definition to state claims against.
-/

/-! ## A271013.P16120886977706021429

`A271012(2^n-1)`
-/

namespace A271013.P16120886977706021429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (2 ^ n - 1)

end

end A271013.P16120886977706021429

/-! ## A271013.P1149598668595202431

`record[A271012(A153141(n))]`
-/

namespace A271013.P1149598668595202431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (A153141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271013.P1149598668595202431

/-! ## A271013.P15554873611744695111

`record[A271012(A173787(n))]`
-/

namespace A271013.P15554873611744695111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271013.P15554873611744695111

/-! ## A271013.P14955751280070306941

`record[A271012(A253564(n+1))]`
-/

namespace A271013.P14955751280070306941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271013.P14955751280070306941

/-! ## A271013.P18208065660402293420

`record[A271012(A293447(n+1))]`
-/

namespace A271013.P18208065660402293420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271013.P18208065660402293420

/-!
# A271014: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A271014, there is no canonical definition to state claims against.
-/

/-! ## A271014.P10777758056815280538

`∑[A271012(n)]`
-/

namespace A271014.P10777758056815280538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271014.P10777758056815280538

/-! ## A271014.P7705069756715000877

`a(n-1)+A054977(n)*A271012(n)` with `a(0)=1`
-/

namespace A271014.P7705069756715000877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A271012 n

end

end A271014.P7705069756715000877

/-! ## A271014.P15929091500181457573

`a(n-1)+A271012(n)+A069859(A166333(n))` with `a(0)=1`
-/

namespace A271014.P15929091500181457573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271012 n + A069859 (A166333 n).toNat)

end

end A271014.P15929091500181457573

/-! ## A271014.P2875278630363388469

`∑[∑[A271015(n)]+1-A271015(n)]`
-/

namespace A271014.P2875278630363388469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271015 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271014.P2875278630363388469

/-! ## A271014.P8770244959980746018

`a(n-1)+A271012(n)*A300239(A088377(n+1))` with `a(0)=1`
-/

namespace A271014.P8770244959980746018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A271012 n * A300239 (A088377 (n + 1)).toNat

end

end A271014.P8770244959980746018

/-! ## A271014.P6535414386996168779

`a(n-1)+A280710(A142435(n+1))+A271012(n)` with `a(0)=1`
-/

namespace A271014.P6535414386996168779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A280710 (A142435 (n + 1)).toNat + A271012 n)

end

end A271014.P6535414386996168779

/-!
# A271015: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A271015, there is no canonical definition to state claims against.
-/

/-! ## A271015.P9145757231137394464

`Δ[A271012(n)]`
-/

namespace A271015.P9145757231137394464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271015.P9145757231137394464

/-! ## A271015.P13771751032872129650

`A271012(n+1)-A271012(n)`
-/

namespace A271015.P13771751032872129650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (n + 1) - A271012 n

end

end A271015.P13771751032872129650

/-!
# A271016: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A271016, there is no canonical definition to state claims against.
-/

/-! ## A271016.P3486460471511779136

`A271019(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271016.P3486460471511779136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271019 (n - 1) + a (n - 1)

end

end A271016.P3486460471511779136

/-! ## A271016.P7791406793085151919

`Δ[A271018(n)]-A271019(n)`
-/

namespace A271016.P7791406793085151919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271019 n

end

end A271016.P7791406793085151919

/-! ## A271016.P11762936572765170475

`A271018(n+1)-(A271019(n)+A271018(n))`
-/

namespace A271016.P11762936572765170475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271018 (n + 1) - (A271019 n + A271018 n)

end

end A271016.P11762936572765170475

/-!
# A271017: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A271017, the canonical program `A271017.P15781188258588258564` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271017 has offset 0).

The definition of A271017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271017.P15781188258588258564

`4*a(n-1)+21` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271017

/-- `4*a(n-1)+21` -/
def P15781188258588258564.Spec : Prop :=
  ∀ n, (P15781188258588258564.a n : ℤ) = A271017 n

theorem P15781188258588258564.correct : P15781188258588258564.Spec := by
  intro n
  simp only [A271017]

end A271017

/-! ## A271017.P322113118555107981

`lcm(4, a(n-1))+21` with `a(0)=1, a(1)=5`
-/

namespace A271017.P322113118555107981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 21

end

end A271017.P322113118555107981

namespace A271017

/-- `lcm(4, a(n-1))+21` -/
def P322113118555107981.Spec : Prop :=
  ∀ n, (P322113118555107981.a n : ℤ) = A271017 n

end A271017

/-! ## A271017.P1724976906221670957

`∑[4*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=36`
-/

namespace A271017.P1724976906221670957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 36] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271017.P1724976906221670957

namespace A271017

/-- `∑[4*a(n-1)]` -/
def P1724976906221670957.Spec : Prop :=
  ∀ n, (P1724976906221670957.a n : ℤ) = A271017 n

end A271017

/-! ## A271017.P9362281137362264840

`record[4*a(n-1)]-7` with `a(0)=8, a(1)=3`
-/

namespace A271017.P9362281137362264840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 7

end

end A271017.P9362281137362264840

namespace A271017

/-- `record[4*a(n-1)]-7` -/
def P9362281137362264840.Spec : Prop :=
  ∀ n, P9362281137362264840.a n = A271017 n

end A271017

/-! ## A271017.P14352489243681420608

`3*4^n-7%(5*(n+1))`
-/

namespace A271017.P14352489243681420608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 4 ^ n : ℤ) - ((7 % (5 * (n + 1)) : ℕ) : ℤ)

end

end A271017.P14352489243681420608

namespace A271017

/-- `3*4^n-7%(5*(n+1))` -/
def P14352489243681420608.Spec : Prop :=
  ∀ n, P14352489243681420608.a n = A271017 n

end A271017

/-! ## A271017.P18385245906757204207

`∑[record[A072946(n)²]]`
-/

namespace A271017.P18385245906757204207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271017.P18385245906757204207

namespace A271017

/-- `∑[record[A072946(n)²]]` -/
def P18385245906757204207.Spec : Prop :=
  ∀ n, P18385245906757204207.a n = A271017 n

end A271017

/-! ## A271017.P4281180643334479399

`∑[A111286(n+1)²]`
-/

namespace A271017.P4281180643334479399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271017.P4281180643334479399

namespace A271017

/-- `∑[A111286(n+1)²]` -/
def P4281180643334479399.Spec : Prop :=
  ∀ n, P4281180643334479399.a n = A271017 n

end A271017

/-! ## A271017.P12676166525366256412

`∑[record[A308709(n+2)²]]`
-/

namespace A271017.P12676166525366256412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271017.P12676166525366256412

namespace A271017

/-- `∑[record[A308709(n+2)²]]` -/
def P12676166525366256412.Spec : Prop :=
  ∀ n, P12676166525366256412.a n = A271017 n

end A271017

/-! ## A271017.P11736977128109680259

`∑[(char[1]-A003945(n))²]`
-/

namespace A271017.P11736977128109680259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A003945 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271017.P11736977128109680259

namespace A271017

/-- `∑[(char[1]-A003945(n))²]` -/
def P11736977128109680259.Spec : Prop :=
  ∀ n, P11736977128109680259.a n = A271017 n

end A271017

/-! ## A271017.P2872258920429879032

`2*A296954(2*n)+1`
-/

namespace A271017.P2872258920429879032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296954 (2 * n) + 1

end

end A271017.P2872258920429879032

namespace A271017

/-- `2*A296954(2*n)+1` -/
def P2872258920429879032.Spec : Prop :=
  ∀ n, P2872258920429879032.a n = A271017 n

end A271017

/-! ## A271017.P14949535052036915721

`A183354(n)+a(n-1)` with `a(0)=1`
-/

namespace A271017.P14949535052036915721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183354 n + a (n - 1)

end

end A271017.P14949535052036915721

namespace A271017

/-- `A183354(n)+a(n-1)` -/
def P14949535052036915721.Spec : Prop :=
  ∀ n, P14949535052036915721.a n = A271017 n

end A271017

/-! ## A271017.P10101258989722306645

`4*A266550(2*n+1)-3`
-/

namespace A271017.P10101258989722306645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A266550 (2 * n + 1) - 3

end

end A271017.P10101258989722306645

namespace A271017

/-- `4*A266550(2*n+1)-3` -/
def P10101258989722306645.Spec : Prop :=
  ∀ n, P10101258989722306645.a n = A271017 n

end A271017

/-! ## A271017.P13859221925649604086

`A201630(A004277(n))-6`
-/

namespace A271017.P13859221925649604086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201630 (A004277 n).toNat - 6

end

end A271017.P13859221925649604086

namespace A271017

/-- `A201630(A004277(n))-6` -/
def P13859221925649604086.Spec : Prop :=
  ∀ n, P13859221925649604086.a n = A271017 n

end A271017

/-! ## A271017.P15977055095319308704

`2*A068156(A004273(n))-1`
-/

namespace A271017.P15977055095319308704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068156 (A004273 n).toNat - 1

end

end A271017.P15977055095319308704

namespace A271017

/-- `2*A068156(A004273(n))-1` -/
def P15977055095319308704.Spec : Prop :=
  ∀ n, P15977055095319308704.a n = A271017 n

end A271017

/-! ## A271017.P3907441926799065750

`A280173(2*n)-A021026(2*n)`
-/

namespace A271017.P3907441926799065750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280173 (2 * n) - A021026 (2 * n)

end

end A271017.P3907441926799065750

namespace A271017

/-- `A280173(2*n)-A021026(2*n)` -/
def P3907441926799065750.Spec : Prop :=
  ∀ n, P3907441926799065750.a n = A271017 n

end A271017

/-! ## A271017.P2844556272498242460

`A131128(2*n)+1-A151798(2*n)`
-/

namespace A271017.P2844556272498242460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 (2 * n) + (1 - A151798 (2 * n))

end

end A271017.P2844556272498242460

namespace A271017

/-- `A131128(2*n)+1-A151798(2*n)` -/
def P2844556272498242460.Spec : Prop :=
  ∀ n, P2844556272498242460.a n = A271017 n

end A271017

/-! ## A271017.P1034317001995778340

`A290114(2*n+1)-2*A158799(2*n)`
-/

namespace A271017.P1034317001995778340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (2 * n + 1) - 2 * A158799 (2 * n)

end

end A271017.P1034317001995778340

namespace A271017

/-- `A290114(2*n+1)-2*A158799(2*n)` -/
def P1034317001995778340.Spec : Prop :=
  ∀ n, P1034317001995778340.a n = A271017 n

end A271017

/-! ## A271017.P2208512662248070084

`A267921(n)+A267921(n)-A092896(n+1)`
-/

namespace A271017.P2208512662248070084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267921 n + (A267921 n - A092896 (n + 1))

end

end A271017.P2208512662248070084

namespace A271017

/-- `A267921(n)+A267921(n)-A092896(n+1)` -/
def P2208512662248070084.Spec : Prop :=
  ∀ n, P2208512662248070084.a n = A271017 n

end A271017

/-! ## A271017.P8137701583881953205

`A007283(2*n)-A006530(val(A134067(n)+1, 2)+7)`
-/

namespace A271017.P8137701583881953205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (2 * n) - A006530 (SequenceMachineLib.valuation (A134067 n + 1).toNat 2 + 7)

end

end A271017.P8137701583881953205

namespace A271017

/-- `A007283(2*n)-A006530(val(A134067(n)+1, 2)+7)` -/
def P8137701583881953205.Spec : Prop :=
  ∀ n, P8137701583881953205.a n = A271017 n

end A271017

/-! ## A271017.P10088781867107606662

`A141722(n)%A292540(n+1)`
-/

namespace A271017.P10088781867107606662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141722 n) (A292540 (n + 1))

end

end A271017.P10088781867107606662

namespace A271017

/-- `A141722(n)%A292540(n+1)` -/
def P10088781867107606662.Spec : Prop :=
  ∀ n, P10088781867107606662.a n = A271017 n

end A271017

/-!
# A271018: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A271018, there is no canonical definition to state claims against.
-/

/-! ## A271018.P6092296557218426375

`∑[A271016(n)]`
-/

namespace A271018.P6092296557218426375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271018.P6092296557218426375

/-! ## A271018.P17954586656563314491

`A271016(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A271018.P17954586656563314491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271016 n + a (A028310 n - 1).toNat

end

end A271018.P17954586656563314491

/-! ## A271018.P405487062557407451

`a(n-1)+A057427(n)*A271016(n)` with `a(0)=1`
-/

namespace A271018.P405487062557407451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A271016 n

end

end A271018.P405487062557407451

/-! ## A271018.P4178333455187544149

`∑[A271019(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271018.P4178333455187544149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271019 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271018.P4178333455187544149

/-! ## A271018.P17469192328568179600

`∑[∑[A271019(n)]+1-A271019(n)]`
-/

namespace A271018.P17469192328568179600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271019 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271018.P17469192328568179600

/-! ## A271018.P16823760411545131589

`A271016(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A271018.P16823760411545131589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271016 n + a (A259361 (n ^ 2)).toNat

end

end A271018.P16823760411545131589

/-!
# A271019: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A271019, there is no canonical definition to state claims against.
-/

/-! ## A271019.P4975703584934296615

`Δ[A271016(n)]`
-/

namespace A271019.P4975703584934296615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271019.P4975703584934296615

/-! ## A271019.P5843782448094809815

`A271016(n+1)-A271016(n)`
-/

namespace A271019.P5843782448094809815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271016 (n + 1) - A271016 n

end

end A271019.P5843782448094809815

/-!
# A271020: Magic sums of 3 X 3 semimagic squares of triangular numbers whose rows, columns, and at least one of the two main diagonals sum to the same number.

The programs for A271020, there is no canonical definition to state claims against.
-/

/-! ## A271020.P6664208872280006661

`floor(A271022(n+1)/8)`
-/

namespace A271020.P6664208872280006661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271022 (n + 1) : ℚ) / 8⌋

end

end A271020.P6664208872280006661

/-! ## A271020.P16768629690996938565

`ceil(A271022(n+1)/8-A001222(A234530(n+1)))`
-/

namespace A271020.P16768629690996938565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A271022 (n + 1) : ℚ) / 8 - (A001222 (A234530 (n + 1)).toNat : ℚ)⌉

end

end A271020.P16768629690996938565

/-!
# A271021: Magic sums of 3 X 3 semimagic squares of squares whose rows, columns, and at least one of the two main diagonals sum to the same number.

The programs for A271021, there is no canonical definition to state claims against.
-/

/-! ## A271021.P12258999019749619885

`A010729(A053501(n+3))*A074384(n+1)`
-/

namespace A271021.P12258999019749619885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (A053501 (n + 3)).toNat * A074384 (n + 1)

end

end A271021.P12258999019749619885

/-! ## A271021.P666365573125989471

`A010729(A229889(2*(n+1)))*A074384(n+1)`
-/

namespace A271021.P666365573125989471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (A229889 (2 * (n + 1))).toNat * A074384 (n + 1)

end

end A271021.P666365573125989471

/-! ## A271021.P16537803337583307736

`A010729(A032020(3*n+4))*A074384(n+1)`
-/

namespace A271021.P16537803337583307736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (A032020 (3 * n + 4)).toNat * A074384 (n + 1)

end

end A271021.P16537803337583307736

/-!
# A271022: Magic sums of 3 X 3 semimagic squares of odd squares whose rows, columns, and at least one of the two main diagonals sum to the same number.

The programs for A271022, there is no canonical definition to state claims against.
-/

/-! ## A271022.P17011396311217198871

`8*A271020(n+1)+3`
-/

namespace A271022.P17011396311217198871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A271020 (n + 1) + 3

end

end A271022.P17011396311217198871

/-!
# A271023: Number T(n,k) of set partitions of [n] having exactly k pairs (i,j) with i<j such that i and j are in the same block; triangle T(n,k), n>=0, 0<=k<=n*(n-1)/2 read by rows.

The programs for A271023, there is no canonical definition to state claims against.
-/

/-! ## A271023.P11409988300758689581

`A060514(A010054(A006261(n))+n)`
-/

namespace A271023.P11409988300758689581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060514 (A010054 (A006261 n).toNat + (n : ℤ)).toNat

end

end A271023.P11409988300758689581

/-! ## A271023.P9657415925746375292

`A060514(n)^A000542(A008676(n))`
-/

namespace A271023.P9657415925746375292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060514 n : ℚ) ^ (A000542 (A008676 n).toNat : ℤ)

end

end A271023.P9657415925746375292

/-! ## A271023.P12194343438577960825

`or(A010054(A006261(n)), A060514(n))`
-/

namespace A271023.P12194343438577960825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A006261 n).toNat) (A060514 n)

end

end A271023.P12194343438577960825

/-! ## A271023.P2515657301567490092

`A169675(A297415(n+1))+A060514(n)`
-/

namespace A271023.P2515657301567490092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169675 (A297415 (n + 1)).toNat + A060514 n

end

end A271023.P2515657301567490092

/-! ## A271023.P8723625298260036253

`A060514(n)^A060514(A084938(n+4))`
-/

namespace A271023.P8723625298260036253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060514 n : ℚ) ^ (A060514 (A084938 (n + 4)).toNat : ℤ)

end

end A271023.P8723625298260036253

/-!
# A271025: A(n, k) is the n-th binomial transform of the Catalan sequence (A000108) evaluated at k. Array read by descending antidiagonals for n >= 0 and k >= 0.

The programs for A271025, there is no canonical definition to state claims against.
-/

/-! ## A271025.P6975850706897080417

`A327146(A071919(n))+A033184(n+1)`
-/

namespace A271025.P6975850706897080417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A071919 n).toNat + A033184 (n + 1)

end

end A271025.P6975850706897080417

/-! ## A271025.P1960771117967686462

`A110488(n)+A079261(C(n, 7)+1)`
-/

namespace A271025.P1960771117967686462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 n + A079261 (Nat.choose n 7 + 1)

end

end A271025.P1960771117967686462

/-! ## A271025.P2688287604747756938

`A185034(A084938(n))+A110488(n)`
-/

namespace A271025.P2688287604747756938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185034 (A084938 n).toNat + A110488 n

end

end A271025.P2688287604747756938

/-! ## A271025.P3526905405933414133

`A336835(A290682(n))+A110488(n)`
-/

namespace A271025.P3526905405933414133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A290682 n).toNat + A110488 n

end

end A271025.P3526905405933414133

/-! ## A271025.P12406637703017625038

`A110488(n)-A014025(A295334(n))`
-/

namespace A271025.P12406637703017625038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 n - A014025 (A295334 n).toNat

end

end A271025.P12406637703017625038

/-!
# A271028: Number of nXnXn triangular 0..2 arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271028, there is no canonical definition to state claims against.
-/

/-! ## A271028.P13912464486647309671

`A271034(∑[n+2])`
-/

namespace A271028.P13912464486647309671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271028.P13912464486647309671

/-! ## A271028.P533098094862346236

`lcm(2, A271034(A000096(n+1)))`
-/

namespace A271028.P533098094862346236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271034 (A000096 (n + 1)).toNat)

end

end A271028.P533098094862346236

/-! ## A271028.P4539014468742246559

`record[and(A127543(n), A271034(n+1))]`
-/

namespace A271028.P4539014468742246559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127543 n) (A271034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271028.P4539014468742246559

/-! ## A271028.P4683445374147385375

`record[and(A167374(n), A271034(n+1))]`
-/

namespace A271028.P4683445374147385375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A271034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271028.P4683445374147385375

/-! ## A271028.P2994393744672292601

`A010691(2*n)*A271034(A000096(n+1))`
-/

namespace A271028.P2994393744672292601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (2 * n) * A271034 (A000096 (n + 1)).toNat

end

end A271028.P2994393744672292601

/-!
# A271029: Number of nXnXn triangular 0..3 arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271029, there is no canonical definition to state claims against.
-/

/-! ## A271029.P8178610622163378561

`A271034(∑[n+3]+1)`
-/

namespace A271029.P8178610622163378561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271029.P8178610622163378561

/-! ## A271029.P1771066537378861049

`record[A271034(A130297(n+1))]`
-/

namespace A271029.P1771066537378861049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271029.P1771066537378861049

/-! ## A271029.P10005573035323389181

`record[A271034(A198464(n+1))]`
-/

namespace A271029.P10005573035323389181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271029.P10005573035323389181

/-! ## A271029.P11776464810143410017

`record[A167374(n+2)*A271034(n+1)]`
-/

namespace A271029.P11776464810143410017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 2) * A271034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271029.P11776464810143410017

/-! ## A271029.P7413211273857581913

`record[A010054(n+3)*A271034(n+1)]`
-/

namespace A271029.P7413211273857581913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A271034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271029.P7413211273857581913

/-!
# A271030: Number of nXnXn triangular 0..4 arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271030, there is no canonical definition to state claims against.
-/

/-! ## A271030.P9451333513155202056

`A271034(A141214(n+1))`
-/

namespace A271030.P9451333513155202056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A141214 (n + 1)).toNat

end

end A271030.P9451333513155202056

/-! ## A271030.P10480510736185790893

`A271034(A027379(n+2))`
-/

namespace A271030.P10480510736185790893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A027379 (n + 2)).toNat

end

end A271030.P10480510736185790893

/-! ## A271030.P5497942383765402144

`A271034(A155212(n)+5)`
-/

namespace A271030.P5497942383765402144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A155212 n + 5).toNat

end

end A271030.P5497942383765402144

/-! ## A271030.P10541979161877060870

`A271034(A056000(n)+7)`
-/

namespace A271030.P10541979161877060870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A056000 n + 7).toNat

end

end A271030.P10541979161877060870

/-! ## A271030.P16595026713162015569

`A271034(eq[4, A052509(n)])`
-/

namespace A271030.P16595026713162015569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271030.P16595026713162015569

/-!
# A271031: Number of nXnXn triangular 0..5 arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271031, there is no canonical definition to state claims against.
-/

/-! ## A271031.P11809767458224658763

`A271034(Δ[A264443(n)])`
-/

namespace A271031.P11809767458224658763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (f1 (n + 1) - f1 n).toNat

end

end A271031.P11809767458224658763

/-! ## A271031.P17768838751791796602

`A271034(eq[2, A092921(n)])`
-/

namespace A271031.P17768838751791796602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271031.P17768838751791796602

/-! ## A271031.P15699941701244027600

`A271034(eq[4, A193592(n)])`
-/

namespace A271031.P15699941701244027600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271031.P15699941701244027600

/-! ## A271031.P1526287580544694167

`A271034(Δ[A023545(n+1)])`
-/

namespace A271031.P1526287580544694167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (f1 (n + 1) - f1 n).toNat

end

end A271031.P1526287580544694167

/-! ## A271031.P8593751000095459336

`A271034(A167614(n+4)-7)`
-/

namespace A271031.P8593751000095459336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A167614 (n + 4) - 7).toNat

end

end A271031.P8593751000095459336

/-!
# A271032: Number of n X n X n triangular 0..6 arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271032, there is no canonical definition to state claims against.
-/

/-! ## A271032.P7370610601415444186

`A271034(eq[3, A219347(n)])`
-/

namespace A271032.P7370610601415444186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271032.P7370610601415444186

/-! ## A271032.P14155700092419749195

`A271034(eq[5, A193592(n)])`
-/

namespace A271032.P14155700092419749195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271032.P14155700092419749195

/-! ## A271032.P6239364671280802050

`A271034(eq[8, A258709(n)])`
-/

namespace A271032.P6239364671280802050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271032.P6239364671280802050

/-! ## A271032.P5893848042409977622

`A271034(eq[6, A200370(n+1)])`
-/

namespace A271032.P5893848042409977622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271032.P5893848042409977622

/-! ## A271032.P14993743707951648066

`A271034(eq[7, A049286(n+1)])`
-/

namespace A271032.P14993743707951648066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271032.P14993743707951648066

/-!
# A271033: Number of nXnXn triangular 0..7 arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271033, there is no canonical definition to state claims against.
-/

/-! ## A271033.P12914176957867133255

`A271034(eq[4, A219347(n)])`
-/

namespace A271033.P12914176957867133255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271033.P12914176957867133255

/-! ## A271033.P16979899678139848672

`A271034(eq[5, A332954(n)])`
-/

namespace A271033.P16979899678139848672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271033.P16979899678139848672

/-! ## A271033.P111672647383487457

`A271034(eq[6, A193592(n)])`
-/

namespace A271033.P111672647383487457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271033.P111672647383487457

/-! ## A271033.P10103394797376905425

`A271034(eq[7, A200370(n+1)])`
-/

namespace A271033.P10103394797376905425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271033.P10103394797376905425

/-! ## A271033.P1032006115327587883

`A271034(eq[10, A185782(n+1)])`
-/

namespace A271033.P1032006115327587883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271033.P1032006115327587883

/-!
# A271034: T(n,k)=Number of nXnXn triangular 0..k arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271034, there is no canonical definition to state claims against.
-/

/-! ## A271034.P13317630179188300683

`A233207(n)+A233207(A255386(n))`
-/

namespace A271034.P13317630179188300683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233207 n + A233207 (A255386 n).toNat

end

end A271034.P13317630179188300683

/-! ## A271034.P9948256122313056747

`A269833(A062344(n))/A014709(n)`
-/

namespace A271034.P9948256122313056747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269833 (A062344 n).toNat : ℚ) / (A014709 n : ℚ)

end

end A271034.P9948256122313056747

/-! ## A271034.P9738911031631613090

`A269833(A062344(n))/A323023(n+1)`
-/

namespace A271034.P9738911031631613090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269833 (A062344 n).toNat : ℚ) / (A323023 (n + 1) : ℚ)

end

end A271034.P9738911031631613090

/-! ## A271034.P3331988900982131769

`and(A117725(n+1), A311347(A191825(n)))`
-/

namespace A271034.P3331988900982131769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117725 (n + 1)) (A311347 (A191825 n).toNat)

end

end A271034.P3331988900982131769

/-!
# A271035: Number of 3 X 3 X 3 triangular 0..n arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271035, the canonical program `A271035.P15022403712696356442` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271035 has offset 1).

The definition of A271035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271035.P15022403712696356442

`2*(n+5)*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271035

/-- `2*(n+5)*C(n+5, 5)` -/
def P15022403712696356442.Spec : Prop :=
  ∀ n, (P15022403712696356442.a n : ℤ) = A271035 (n + 1)

theorem P15022403712696356442.correct : P15022403712696356442.Spec := by
  intro n
  simp only [A271035, Nat.add_sub_cancel]

end A271035

/-! ## A271035.P4189772185038184175

`2*(n+5)*∑[∑[∑[∑[n+1]]]]`
-/

namespace A271035.P4189772185038184175
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 5) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A271035.P4189772185038184175

namespace A271035

/-- `2*(n+5)*∑[∑[∑[∑[n+1]]]]` -/
def P4189772185038184175.Spec : Prop :=
  ∀ n, (P4189772185038184175.a n : ℤ) = A271035 (n + 1)

end A271035

/-! ## A271035.P3313041280644742000

`A027765(n+4)+A027765(n+4)`
-/

namespace A271035.P3313041280644742000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) + A027765 (n + 4)

end

end A271035.P3313041280644742000

namespace A271035

/-- `A027765(n+4)+A027765(n+4)` -/
def P3313041280644742000.Spec : Prop :=
  ∀ n, P3313041280644742000.a n = A271035 (n + 1)

theorem P3313041280644742000.correct : P3313041280644742000.Spec := by
  intro n
  simp only [A271035, Nat.add_sub_cancel, A271035.P3313041280644742000.a, A271035.P15022403712696356442.a, A027765, A027765.P15969066504210946878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271035

/-! ## A271035.P3763434665389150214

`∑[∑[∑[A163815(n+1)]]]`
-/

namespace A271035.P3763434665389150214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271035.P3763434665389150214

namespace A271035

/-- `∑[∑[∑[A163815(n+1)]]]` -/
def P3763434665389150214.Spec : Prop :=
  ∀ n, P3763434665389150214.a n = A271035 (n + 1)

end A271035

/-! ## A271035.P3079656908330334529

`∑[∑[∑[(n+1)*A014105(n+2)]]]`
-/

namespace A271035.P3079656908330334529
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014105 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271035.P3079656908330334529

namespace A271035

/-- `∑[∑[∑[(n+1)*A014105(n+2)]]]` -/
def P3079656908330334529.Spec : Prop :=
  ∀ n, P3079656908330334529.a n = A271035 (n + 1)

end A271035

/-! ## A271035.P2845064714888087434

`A266732(n+1)²/Δ[A266732(n)]`
-/

namespace A271035.P2845064714888087434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266732 (n + 1) ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A271035.P2845064714888087434

namespace A271035

/-- `A266732(n+1)²/Δ[A266732(n)]` -/
def P2845064714888087434.Spec : Prop :=
  ∀ n, P2845064714888087434.a n = (A271035 (n + 1) : ℚ)

end A271035

/-! ## A271035.P14155592064579671545

`A027800(n+1)+n*A005585(n+2)`
-/

namespace A271035.P14155592064579671545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 (n + 1) + (n : ℤ) * A005585 (n + 2)

end

end A271035.P14155592064579671545

namespace A271035

/-- `A027800(n+1)+n*A005585(n+2)` -/
def P14155592064579671545.Spec : Prop :=
  ∀ n, P14155592064579671545.a n = A271035 (n + 1)

theorem P14155592064579671545.correct : P14155592064579671545.Spec := by
  intro n
  simp only [A271035, Nat.add_sub_cancel, A271035.P14155592064579671545.a, A271035.P15022403712696356442.a, A005585, A005585.P5066831349655201454.a, A027800, A027800.P6346572312768476247.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271035

/-!
# A271036: Number of 4 X 4 X 4 triangular 0..n arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271036, there is no canonical definition to state claims against.
-/

/-! ## A271036.P5345615664241468657

`A271034(A141214(n)+7)`
-/

namespace A271036.P5345615664241468657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A141214 n + 7).toNat

end

end A271036.P5345615664241468657

/-! ## A271036.P12880172614036454226

`A271034(A052905(n)+9)`
-/

namespace A271036.P12880172614036454226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A052905 n + 9).toNat

end

end A271036.P12880172614036454226

/-! ## A271036.P36103500777918071

`A271034(A055999(n)+10)`
-/

namespace A271036.P36103500777918071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A055999 n + 10).toNat

end

end A271036.P36103500777918071

/-! ## A271036.P17981428994629153151

`A271034(A167614(n+2)+1)`
-/

namespace A271036.P17981428994629153151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A167614 (n + 2) + 1).toNat

end

end A271036.P17981428994629153151

/-! ## A271036.P6074557456227826970

`A271034(eq[5, A131818(n+1)])`
-/

namespace A271036.P6074557456227826970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271036.P6074557456227826970

/-!
# A271037: Number of 5X5X5 triangular 0..n arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271037, there is no canonical definition to state claims against.
-/

/-! ## A271037.P17620491076715476637

`A271034(A155212(n)+13)`
-/

namespace A271037.P17620491076715476637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A155212 n + 13).toNat

end

end A271037.P17620491076715476637

/-! ## A271037.P8224145869798114183

`A271034(A056000(n)+15)`
-/

namespace A271037.P8224145869798114183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A056000 n + 15).toNat

end

end A271037.P8224145869798114183

/-! ## A271037.P8386971061482423233

`A271034(eq[7, A066657(n)])`
-/

namespace A271037.P8386971061482423233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271037.P8386971061482423233

/-! ## A271037.P14976678643155427146

`A271034(A167614(n+3)+2)`
-/

namespace A271037.P14976678643155427146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A167614 (n + 3) + 2).toNat

end

end A271037.P14976678643155427146

/-! ## A271037.P15854584226129858213

`A271034(eq[6, A131818(n+1)])`
-/

namespace A271037.P15854584226129858213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271037.P15854584226129858213

/-!
# A271038: Number of 6X6X6 triangular 0..n arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271038, there is no canonical definition to state claims against.
-/

/-! ## A271038.P3920286791720459345

`A271034(A056115(n)+21)`
-/

namespace A271038.P3920286791720459345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A056115 n + 21).toNat

end

end A271038.P3920286791720459345

/-! ## A271038.P6659108578505716237

`A271034(A167499(n+4)+1)`
-/

namespace A271038.P6659108578505716237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A167499 (n + 4) + 1).toNat

end

end A271038.P6659108578505716237

/-! ## A271038.P1640961964042795820

`A271034(A167614(n+4)+3)`
-/

namespace A271038.P1640961964042795820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A167614 (n + 4) + 3).toNat

end

end A271038.P1640961964042795820

/-! ## A271038.P9294727272025932203

`A271034(A141214(n+2)+9)`
-/

namespace A271038.P9294727272025932203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A141214 (n + 2) + 9).toNat

end

end A271038.P9294727272025932203

/-! ## A271038.P11368102934771386765

`A271034(eq[7, A131818(n+1)])`
-/

namespace A271038.P11368102934771386765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271038.P11368102934771386765

/-!
# A271039: Number of 7X7X7 triangular 0..n arrays with some element less than a w, nw or ne neighbor exactly once.

The programs for A271039, there is no canonical definition to state claims against.
-/

/-! ## A271039.P4311821350538879864

`A271034(A056119(n)+28)`
-/

namespace A271039.P4311821350538879864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A056119 n + 28).toNat

end

end A271039.P4311821350538879864

/-! ## A271039.P5739003215156912324

`A271034(eq[11, A066657(n)])`
-/

namespace A271039.P5739003215156912324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271039.P5739003215156912324

/-! ## A271039.P8959386182173658204

`A271034(A133263(n+6)+5)`
-/

namespace A271039.P8959386182173658204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A133263 (n + 6) + 5).toNat

end

end A271039.P8959386182173658204

/-! ## A271039.P15829423728121611379

`A271034(A141214(n+3)+10)`
-/

namespace A271039.P15829423728121611379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (A141214 (n + 3) + 10).toNat

end

end A271039.P15829423728121611379

/-! ## A271039.P15564770287191292550

`A271034(eq[8, A131818(n+1)])`
-/

namespace A271039.P15564770287191292550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271039.P15564770287191292550

/-!
# A271040: Number of different 3 against 3 matches given n players.

The programs for A271040, the canonical program `A271040.P14101773628109120962` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271040 has offset 0).

The definition of A271040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271040.P1935007791060506621

`n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/72`
-/

namespace A271040.P1935007791060506621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) * ((n : ℤ) - 4) * ((n : ℤ) - 5) : ℚ) / 72

end

end A271040.P1935007791060506621

namespace A271040

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/72` -/
def P1935007791060506621.Spec : Prop :=
  ∀ n, P1935007791060506621.a n = (A271040 n : ℚ)

theorem P1935007791060506621.correct : P1935007791060506621.Spec := by
  intro n
  simp only [A271040, Nat.add_sub_cancel, A271040.P1935007791060506621.a, A271040.P14101773628109120962.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271040

/-! ## A271040.P14101773628109120962

`10*A000579(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271040

/-- `10*A000579(n)` -/
def P14101773628109120962.Spec : Prop :=
  ∀ n, P14101773628109120962.a n = A271040 n

theorem P14101773628109120962.correct : P14101773628109120962.Spec := by
  intro n
  simp only [A271040]

end A271040

/-! ## A271040.P8367568002110493552

`10*C(n, 6)`
-/

namespace A271040.P8367568002110493552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 6

end

end A271040.P8367568002110493552

namespace A271040

/-- `10*C(n, 6)` -/
def P8367568002110493552.Spec : Prop :=
  ∀ n, (P8367568002110493552.a n : ℤ) = A271040 n

theorem P8367568002110493552.correct : P8367568002110493552.Spec := by
  intro n
  simp only [A271040, Nat.add_sub_cancel, A271040.P8367568002110493552.a, A271040.P14101773628109120962.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271040

/-! ## A271040.P11525594217780172623

`2*A000910(n)`
-/

namespace A271040.P11525594217780172623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000910 n

end

end A271040.P11525594217780172623

namespace A271040

/-- `2*A000910(n)` -/
def P11525594217780172623.Spec : Prop :=
  ∀ n, P11525594217780172623.a n = A271040 n

theorem P11525594217780172623.correct : P11525594217780172623.Spec := by
  intro n
  simp only [A271040, Nat.add_sub_cancel, A271040.P11525594217780172623.a, A271040.P14101773628109120962.a, A000579, A000579.P13663713855180125612.a, A000910, A000910.P14640695646812070873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271040

/-! ## A271040.P2304488088222085607

`abs(10*(A362194(n)-A362193(n)))`
-/

namespace A271040.P2304488088222085607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |10 * (A362194 n - A362193 n)|

end

end A271040.P2304488088222085607

namespace A271040

/-- `abs(10*(A362194(n)-A362193(n)))` -/
def P2304488088222085607.Spec : Prop :=
  ∀ n, P2304488088222085607.a n = A271040 n

end A271040

/-! ## A271040.P4386124462172311569

`A000910(Δ[n²]-(n+1))+A000910(n)`
-/

namespace A271040.P4386124462172311569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)).toNat + A000910 n

end

end A271040.P4386124462172311569

namespace A271040

/-- `A000910(Δ[n²]-(n+1))+A000910(n)` -/
def P4386124462172311569.Spec : Prop :=
  ∀ n, P4386124462172311569.a n = A271040 n

end A271040

/-!
# A271041: a(n) = k is the least squarefree number with a run of zero nonsquarefree numbers immediately preceding k and a run of exactly n>=0 nonsquarefree numbers immediately succeeding k.

The programs for A271041, there is no canonical definition to state claims against.
-/

/-! ## A271041.P10070333829643206314

`A270996(∑[n]+n)`
-/

namespace A271041.P10070333829643206314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A271041.P10070333829643206314

/-! ## A271041.P1423073116274203542

`or(2, A270996(A000096(n)))`
-/

namespace A271041.P1423073116274203542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A270996 (A000096 n).toNat)

end

end A271041.P1423073116274203542

/-! ## A271041.P2227716983524670898

`lcm(A270996(A000096(n)), A309913(n))`
-/

namespace A271041.P2227716983524670898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A270996 (A000096 n).toNat) (A309913 n)

end

end A271041.P2227716983524670898

/-! ## A271041.P10382677482661647759

`A270996(A000096(n))*A296079(n+1)`
-/

namespace A271041.P10382677482661647759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 (A000096 n).toNat * A296079 (n + 1)

end

end A271041.P10382677482661647759

/-! ## A271041.P14420091344188628431

`and(1, A000040(n+1))!*A270996(A000096(n))`
-/

namespace A271041.P14420091344188628431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000040 (n + 1))).toNat : ℤ) * A270996 (A000096 n).toNat

end

end A271041.P14420091344188628431

/-!
# A271042: a(n) = k is the least squarefree number with a run of n >= 0 nonsquarefree numbers immediately preceding k and a run of zero nonsquarefree numbers immediately succeeding k.

The programs for A271042, there is no canonical definition to state claims against.
-/

/-! ## A271042.P13653389361807743554

`A270996(∑[n])`
-/

namespace A271042.P13653389361807743554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271042.P13653389361807743554

/-! ## A271042.P8151547187629412882

`A270996(A000217(n))+char[17]`
-/

namespace A271042.P8151547187629412882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271042.P8151547187629412882

/-! ## A271042.P10448760579808223764

`or(A064873(n), A270996(C(n+1, 2)))`
-/

namespace A271042.P10448760579808223764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064873 n) (A270996 (Nat.choose (n + 1) 2))

end

end A271042.P10448760579808223764

/-! ## A271042.P18151544927689179552

`A270996(C(n+1, 2))+A210709(n+2)`
-/

namespace A271042.P18151544927689179552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 (Nat.choose (n + 1) 2) + A210709 (n + 2)

end

end A271042.P18151544927689179552

/-! ## A271042.P10150320773300425871

`A270996(C(n+1, 2))+A014376(n+3)`
-/

namespace A271042.P10150320773300425871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 (Nat.choose (n + 1) 2) + A014376 (n + 3)

end

end A271042.P10150320773300425871

/-!
# A271043: Primes p such that p and prime(p) end with the same digit.

The programs for A271043, the canonical program `A271043.P14262682976509013838` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271043 has offset 1).

The definition of A271043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271043.P14262682976509013838

`p?[A067790(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A271043

/-- `p?[A067790(n+1)]` -/
def P14262682976509013838.Spec : Prop :=
  ∀ n, P14262682976509013838.a n = A271043 (n + 1)

theorem P14262682976509013838.correct : P14262682976509013838.Spec := by
  intro n
  simp only [A271043, Nat.add_sub_cancel]

end A271043

/-! ## A271043.P12896120723249524790

`filter[A067790(n+1), A010051(#)]`
-/

namespace A271043.P12896120723249524790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A271043.P12896120723249524790

namespace A271043

/-- `filter[A067790(n+1), A010051(#)]` -/
def P12896120723249524790.Spec : Prop :=
  ∀ n, P12896120723249524790.a n = A271043 (n + 1)

end A271043

/-! ## A271043.P6230644021882757424

`filter[A067790(n+1), A365716(#)]`
-/

namespace A271043.P6230644021882757424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A271043.P6230644021882757424

namespace A271043

/-- `filter[A067790(n+1), A365716(#)]` -/
def P6230644021882757424.Spec : Prop :=
  ∀ n, P6230644021882757424.a n = A271043 (n + 1)

end A271043

/-! ## A271043.P7444942403482499440

`filter[A067790(n+1), A379969(#)]`
-/

namespace A271043.P7444942403482499440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A271043.P7444942403482499440

namespace A271043

/-- `filter[A067790(n+1), A379969(#)]` -/
def P7444942403482499440.Spec : Prop :=
  ∀ n, P7444942403482499440.a n = A271043 (n + 1)

end A271043

/-! ## A271043.P15939057165787153791

`filter[A067790(n+1), A380467(#)]`
-/

namespace A271043.P15939057165787153791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A271043.P15939057165787153791

namespace A271043

/-- `filter[A067790(n+1), A380467(#)]` -/
def P15939057165787153791.Spec : Prop :=
  ∀ n, P15939057165787153791.a n = A271043 (n + 1)

end A271043

/-! ## A271043.P16434551563063426201

`∩[A000040(n+1), A067790(n+1)]`
-/

namespace A271043.P16434551563063426201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P16434551563063426201

namespace A271043

/-- `∩[A000040(n+1), A067790(n+1)]` -/
def P16434551563063426201.Spec : Prop :=
  ∀ n, (P16434551563063426201.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P7436600407947805260

`∩[A004139(n+1), A067790(n+1)]`
-/

namespace A271043.P7436600407947805260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P7436600407947805260

namespace A271043

/-- `∩[A004139(n+1), A067790(n+1)]` -/
def P7436600407947805260.Spec : Prop :=
  ∀ n, (P7436600407947805260.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P11853105685550604014

`∩[A006005(n+1), A067790(n+1)]`
-/

namespace A271043.P11853105685550604014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P11853105685550604014

namespace A271043

/-- `∩[A006005(n+1), A067790(n+1)]` -/
def P11853105685550604014.Spec : Prop :=
  ∀ n, (P11853105685550604014.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P15212639297566334986

`∩[A008578(n+1), A067790(n+1)]`
-/

namespace A271043.P15212639297566334986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P15212639297566334986

namespace A271043

/-- `∩[A008578(n+1), A067790(n+1)]` -/
def P15212639297566334986.Spec : Prop :=
  ∀ n, (P15212639297566334986.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P15916385769153169161

`∩[A045319(n+1), A067790(n+1)]`
-/

namespace A271043.P15916385769153169161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P15916385769153169161

namespace A271043

/-- `∩[A045319(n+1), A067790(n+1)]` -/
def P15916385769153169161.Spec : Prop :=
  ∀ n, (P15916385769153169161.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P17015075525497735333

`∩[A045344(n+1), A067790(n+1)]`
-/

namespace A271043.P17015075525497735333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P17015075525497735333

namespace A271043

/-- `∩[A045344(n+1), A067790(n+1)]` -/
def P17015075525497735333.Spec : Prop :=
  ∀ n, (P17015075525497735333.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P6008765059375333103

`∩[A046022(n+1), A067790(n+1)]`
-/

namespace A271043.P6008765059375333103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P6008765059375333103

namespace A271043

/-- `∩[A046022(n+1), A067790(n+1)]` -/
def P6008765059375333103.Spec : Prop :=
  ∀ n, (P6008765059375333103.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P9059760398136488512

`∩[A051948(n+1), A067790(n+1)]`
-/

namespace A271043.P9059760398136488512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P9059760398136488512

namespace A271043

/-- `∩[A051948(n+1), A067790(n+1)]` -/
def P9059760398136488512.Spec : Prop :=
  ∀ n, (P9059760398136488512.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P15892838437899924612

`∩[A053577(n+1), A067790(n+1)]`
-/

namespace A271043.P15892838437899924612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P15892838437899924612

namespace A271043

/-- `∩[A053577(n+1), A067790(n+1)]` -/
def P15892838437899924612.Spec : Prop :=
  ∀ n, (P15892838437899924612.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P4617361771671007401

`∩[A053813(n+1), A067790(n+1)]`
-/

namespace A271043.P4617361771671007401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P4617361771671007401

namespace A271043

/-- `∩[A053813(n+1), A067790(n+1)]` -/
def P4617361771671007401.Spec : Prop :=
  ∀ n, (P4617361771671007401.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P10681353249931209345

`∩[A060634(n+1), A067790(n+1)]`
-/

namespace A271043.P10681353249931209345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P10681353249931209345

namespace A271043

/-- `∩[A060634(n+1), A067790(n+1)]` -/
def P10681353249931209345.Spec : Prop :=
  ∀ n, (P10681353249931209345.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P1602322791816728932

`∩[A062972(n+1), A067790(n+1)]`
-/

namespace A271043.P1602322791816728932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P1602322791816728932

namespace A271043

/-- `∩[A062972(n+1), A067790(n+1)]` -/
def P1602322791816728932.Spec : Prop :=
  ∀ n, (P1602322791816728932.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P7440152237589033233

`∩[A065091(n+1), A067790(n+1)]`
-/

namespace A271043.P7440152237589033233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P7440152237589033233

namespace A271043

/-- `∩[A065091(n+1), A067790(n+1)]` -/
def P7440152237589033233.Spec : Prop :=
  ∀ n, (P7440152237589033233.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P7305234199915523166

`∩[A066050(n+1), A067790(n+1)]`
-/

namespace A271043.P7305234199915523166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P7305234199915523166

namespace A271043

/-- `∩[A066050(n+1), A067790(n+1)]` -/
def P7305234199915523166.Spec : Prop :=
  ∀ n, (P7305234199915523166.a n : ℤ) = A271043 (n + 1)

end A271043

/-! ## A271043.P5823942268440901554

`∩[A066191(n+1), A067790(n+1)]`
-/

namespace A271043.P5823942268440901554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271043.P5823942268440901554

namespace A271043

/-- `∩[A066191(n+1), A067790(n+1)]` -/
def P5823942268440901554.Spec : Prop :=
  ∀ n, (P5823942268440901554.a n : ℤ) = A271043 (n + 1)

end A271043

/-!
# A271044: Primes p such that p and prime(p) end with the same two digits.

The programs for A271044, there is no canonical definition to state claims against.
-/

/-! ## A271044.P6832271250570852858

`p?[A067838(n+1)]`
-/

namespace A271044.P6832271250570852858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271044.P6832271250570852858

/-! ## A271044.P7142739604570172522

`∩[A067838(n+1), A271043(n+1)]`
-/

namespace A271044.P7142739604570172522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271044.P7142739604570172522

/-! ## A271044.P17779967236307976112

`filter[A067838(n+1), A010051(#)]`
-/

namespace A271044.P17779967236307976112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A271044.P17779967236307976112

/-! ## A271044.P1471991867645309612

`filter[A067838(n+1), A257531(#)]`
-/

namespace A271044.P1471991867645309612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A271044.P1471991867645309612

/-! ## A271044.P9807356920692795287

`filter[A067838(n+1), A174897(#)]`
-/

namespace A271044.P9807356920692795287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A271044.P9807356920692795287

/-! ## A271044.P6824954181268094935

`filter[A067838(n+1), A323152(#)]`
-/

namespace A271044.P6824954181268094935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A271044.P6824954181268094935

/-! ## A271044.P2461515149588843973

`filter[A067838(n+1), A323153(#)]`
-/

namespace A271044.P2461515149588843973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A271044.P2461515149588843973

/-! ## A271044.P13558142921325182535

`filter[A067838(n+1), A327861(#)]`
-/

namespace A271044.P13558142921325182535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A271044.P13558142921325182535

/-! ## A271044.P12473921897579210587

`filter[A067838(n+1), A340371(#)]`
-/

namespace A271044.P12473921897579210587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A271044.P12473921897579210587

/-! ## A271044.P2207097173199994612

`filter[A067838(n+1), A342460(#)]`
-/

namespace A271044.P2207097173199994612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A271044.P2207097173199994612

/-! ## A271044.P18041228074869425359

`filter[A067838(n+1), A351957(#)]`
-/

namespace A271044.P18041228074869425359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A271044.P18041228074869425359

/-! ## A271044.P17843199239693810604

`filter[A067838(n+1), A353670(#)]`
-/

namespace A271044.P17843199239693810604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A271044.P17843199239693810604

/-! ## A271044.P10537091619179985675

`filter[A067838(n+1), A353787(#)]`
-/

namespace A271044.P10537091619179985675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A271044.P10537091619179985675

/-!
# A271045: Primes p such that p and prime(p) end with the same three digits.

The programs for A271045, there is no canonical definition to state claims against.
-/

/-! ## A271045.P15764040203068608615

`∩[A067841(n+1), A271044(n+1)]`
-/

namespace A271045.P15764040203068608615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271045.P15764040203068608615

/-! ## A271045.P5192373179750386641

`p?[A067841(n+1)]`
-/

namespace A271045.P5192373179750386641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271045.P5192373179750386641

/-! ## A271045.P6922838069999251244

`record[p?[A067841(A052938(n))]]`
-/

namespace A271045.P6922838069999251244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067841 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271045.P6922838069999251244

/-! ## A271045.P13318444221482881596

`p?[record[A067841(A106466(n))]]`
-/

namespace A271045.P13318444221482881596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067841 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271045.P13318444221482881596

/-! ## A271045.P13484165872871823539

`p?[record[A067841(A117910(n))]]`
-/

namespace A271045.P13484165872871823539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067841 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271045.P13484165872871823539

/-!
# A271046: Primes p such that p and prime(p) end with the same four digits.

The programs for A271046, there is no canonical definition to state claims against.
-/

/-! ## A271046.P2797728291373582951

`∩[A232189(n+1), A271045(n+1)]`
-/

namespace A271046.P2797728291373582951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271046.P2797728291373582951

/-! ## A271046.P3415285194988590172

`p?[A232189(n+1)]`
-/

namespace A271046.P3415285194988590172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271046.P3415285194988590172

/-! ## A271046.P7080292990214556502

`p?[record[A232189(A106466(n))]]`
-/

namespace A271046.P7080292990214556502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232189 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271046.P7080292990214556502

/-! ## A271046.P10581982271734563105

`p?[record[A232189(A117910(n))]]`
-/

namespace A271046.P10581982271734563105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232189 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271046.P10581982271734563105

/-! ## A271046.P18142207525765564238

`p?[record[A232189(A141256(n))]]`
-/

namespace A271046.P18142207525765564238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232189 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271046.P18142207525765564238

/-!
# A271047: A prime number sieve defined by the recurrence: T(n, k) = If n = k then 1 else if k divides n then -Sum_{i=k+1..n} T(n, i) else T(n,k) = 0.

The programs for A271047, there is no canonical definition to state claims against.
-/

/-! ## A271047.P16649732771152848646

`Δ[61%A135539(n+1)]`
-/

namespace A271047.P16649732771152848646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 61 (A135539 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P16649732771152848646

/-! ## A271047.P1281550701337198105

`Δ[floor(atan(A141294(n+1)))]`
-/

namespace A271047.P1281550701337198105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A141294 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P1281550701337198105

/-! ## A271047.P13258179678812926820

`char[∑[n+2]]-A181101(n+1)`
-/

namespace A271047.P13258179678812926820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A181101 (n + 1)

end

end A271047.P13258179678812926820

/-! ## A271047.P11479992219723560767

`Δ[A328959(A130307(n))]`
-/

namespace A271047.P11479992219723560767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A130307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P11479992219723560767

/-! ## A271047.P7298163765793869914

`Δ[A026535(A135539(n+1))]`
-/

namespace A271047.P7298163765793869914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026535 (A135539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P7298163765793869914

/-! ## A271047.P1400254804106542706

`Δ[A010815(A135539(n+1)²)]`
-/

namespace A271047.P1400254804106542706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A135539 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P1400254804106542706

/-! ## A271047.P11609300983410311904

`Δ[A132423(A135539(n+1)²)]`
-/

namespace A271047.P11609300983410311904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132423 (A135539 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P11609300983410311904

/-! ## A271047.P13983067337005527443

`Δ[A185115(A127057(n+1)²)]`
-/

namespace A271047.P13983067337005527443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (A127057 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P13983067337005527443

/-! ## A271047.P16051109524555351130

`Δ[A104361(A135539(n+1)+1)]`
-/

namespace A271047.P16051109524555351130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104361 (A135539 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P16051109524555351130

/-! ## A271047.P13323828373518749200

`Δ[A185115(A127057(n+1)+2)]`
-/

namespace A271047.P13323828373518749200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (A127057 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271047.P13323828373518749200

/-!
# A271048: Numbers n such that A000070(n) is prime.

The programs for A271048, there is no canonical definition to state claims against.
-/

/-! ## A271048.P2652584665767263247

`eq[1, ∑{e}[A000070(n), #]]`
-/

namespace A271048.P2652584665767263247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271048.P2652584665767263247

/-! ## A271048.P848596558232948282

`eq[1, ∑{e}[∑[A000041(n)], #]]`
-/

namespace A271048.P848596558232948282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271048.P848596558232948282

/-! ## A271048.P10533863855762167083

`eq[1, ∑{e}[A025065(2*n), #]]`
-/

namespace A271048.P10533863855762167083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271048.P10533863855762167083

/-! ## A271048.P15674210971419155360

`eq[2, ∏{e}[A000070(n), A000040(#)]]`
-/

namespace A271048.P15674210971419155360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, A000040 (Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271048.P15674210971419155360

/-! ## A271048.P10623257960007062604

`eq[2, ∏{e}[A000070(n), A000070(#)]]`
-/

namespace A271048.P10623257960007062604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, A000070 (Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271048.P10623257960007062604

/-!
# A271051: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A271051, the canonical program `A271051.P15448539023982114867` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271051 has offset 0).

The definition of A271051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271051.P15448539023982114867

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=4, a(3)=44, a(4)=13, a(5)=116, a(6)=13, a(7)=220, a(8)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271051

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P15448539023982114867.Spec : Prop :=
  ∀ n, P15448539023982114867.a n = A271051 n

theorem P15448539023982114867.correct : P15448539023982114867.Spec := by
  intro n
  simp only [A271051]

end A271051

/-! ## A271051.P5082654056334886261

`A271053(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271051.P5082654056334886261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271053 (n - 1) + a (n - 1)

end

end A271051.P5082654056334886261

namespace A271051

/-- `A271053(n-1)+a(n-1)` -/
def P5082654056334886261.Spec : Prop :=
  ∀ n, P5082654056334886261.a n = A271051 n

end A271051

/-! ## A271051.P14664535190619706504

`Δ[A271052(n)]-A271053(n)`
-/

namespace A271051.P14664535190619706504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271053 n

end

end A271051.P14664535190619706504

namespace A271051

/-- `Δ[A271052(n)]-A271053(n)` -/
def P14664535190619706504.Spec : Prop :=
  ∀ n, P14664535190619706504.a n = A271051 n

end A271051

/-! ## A271051.P6705502927961308662

`or(A040008(n)-2, A270934(n))`
-/

namespace A271051.P6705502927961308662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040008 n - 2) (A270934 n)

end

end A271051.P6705502927961308662

namespace A271051

/-- `or(A040008(n)-2, A270934(n))` -/
def P6705502927961308662.Spec : Prop :=
  ∀ n, P6705502927961308662.a n = A271051 n

end A271051

/-! ## A271051.P16331439588234074002

`or(4*A157928(n), A270934(n))`
-/

namespace A271051.P16331439588234074002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A157928 n) (A270934 n)

end

end A271051.P16331439588234074002

namespace A271051

/-- `or(4*A157928(n), A270934(n))` -/
def P16331439588234074002.Spec : Prop :=
  ∀ n, P16331439588234074002.a n = A271051 n

end A271051

/-! ## A271051.P3127239501733410226

`A271052(n+1)-(A271053(n)+A271052(n))`
-/

namespace A271051.P3127239501733410226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271052 (n + 1) - (A271053 n + A271052 n)

end

end A271051.P3127239501733410226

namespace A271051

/-- `A271052(n+1)-(A271053(n)+A271052(n))` -/
def P3127239501733410226.Spec : Prop :=
  ∀ n, P3127239501733410226.a n = A271051 n

end A271051

/-! ## A271051.P10544704183092029357

`or(4%A133179(n+1)², A270934(n))`
-/

namespace A271051.P10544704183092029357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod 4 (A133179 (n + 1) ^ 2)) (A270934 n)

end

end A271051.P10544704183092029357

namespace A271051

/-- `or(4%A133179(n+1)², A270934(n))` -/
def P10544704183092029357.Spec : Prop :=
  ∀ n, P10544704183092029357.a n = A271051 n

end A271051

/-! ## A271051.P11415116397317098987

`or(A025581(A052905(n)), A270934(n))`
-/

namespace A271051.P11415116397317098987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 (A052905 n).toNat) (A270934 n)

end

end A271051.P11415116397317098987

namespace A271051

/-- `or(A025581(A052905(n)), A270934(n))` -/
def P11415116397317098987.Spec : Prop :=
  ∀ n, P11415116397317098987.a n = A271051 n

end A271051

/-! ## A271051.P3346414959514935571

`A274593(A270934(n))`
-/

namespace A271051.P3346414959514935571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274593 (A270934 n).toNat

end

end A271051.P3346414959514935571

namespace A271051

/-- `A274593(A270934(n))` -/
def P3346414959514935571.Spec : Prop :=
  ∀ n, P3346414959514935571.a n = A271051 n

end A271051

/-!
# A271052: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A271052, the canonical program `A271052.P14403474327606414088` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271052 has offset 0).

The definition of A271052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271052.P17190710382891703676

`∑[or(A040008(n)-2, A270934(n))]`
-/

namespace A271052.P17190710382891703676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040008 n - 2) (A270934 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271052.P17190710382891703676

namespace A271052

/-- `∑[or(A040008(n)-2, A270934(n))]` -/
def P17190710382891703676.Spec : Prop :=
  ∀ n, P17190710382891703676.a n = A271052 n

end A271052

/-! ## A271052.P14403474327606414088

`∑[A271051(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271052

/-- `∑[A271051(n)]` -/
def P14403474327606414088.Spec : Prop :=
  ∀ n, P14403474327606414088.a n = A271052 n

theorem P14403474327606414088.correct : P14403474327606414088.Spec := by
  intro n
  simp only [A271052]

end A271052

/-! ## A271052.P5109765013742109822

`a(n-1)+A271051(n)%A017477(n)` with `a(0)=1`
-/

namespace A271052.P5109765013742109822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271051 n) (A017477 n)

end

end A271052.P5109765013742109822

namespace A271052

/-- `a(n-1)+A271051(n)%A017477(n)` -/
def P5109765013742109822.Spec : Prop :=
  ∀ n, P5109765013742109822.a n = A271052 n

end A271052

/-! ## A271052.P9084103333516029989

`A271051(n%A046308(n))+a(n-1)` with `a(0)=1`
-/

namespace A271052.P9084103333516029989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271051 (Int.tmod (n : ℤ) (A046308 n)).toNat + a (n - 1)

end

end A271052.P9084103333516029989

namespace A271052

/-- `A271051(n%A046308(n))+a(n-1)` -/
def P9084103333516029989.Spec : Prop :=
  ∀ n, P9084103333516029989.a n = A271052 n

end A271052

/-! ## A271052.P16796224750428724649

`A271051(n)+a(n-1)%A100698(n)` with `a(0)=1`
-/

namespace A271052.P16796224750428724649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271051 n + Int.tmod (a (n - 1)) (A100698 n)

end

end A271052.P16796224750428724649

namespace A271052

/-- `A271051(n)+a(n-1)%A100698(n)` -/
def P16796224750428724649.Spec : Prop :=
  ∀ n, P16796224750428724649.a n = A271052 n

end A271052

/-! ## A271052.P13136545736070213368

`(A271051(n)+a(n-1))%A120876(n+1)` with `a(0)=1`
-/

namespace A271052.P13136545736070213368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A271051 n + a (n - 1)) (A120876 (n + 1))

end

end A271052.P13136545736070213368

namespace A271052

/-- `(A271051(n)+a(n-1))%A120876(n+1)` -/
def P13136545736070213368.Spec : Prop :=
  ∀ n, P13136545736070213368.a n = A271052 n

end A271052

/-! ## A271052.P15188901578411283785

`∑[A274593(A270934(n))]`
-/

namespace A271052.P15188901578411283785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274593 (A270934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271052.P15188901578411283785

namespace A271052

/-- `∑[A274593(A270934(n))]` -/
def P15188901578411283785.Spec : Prop :=
  ∀ n, P15188901578411283785.a n = A271052 n

end A271052

/-!
# A271053: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

The programs for A271053, the canonical program `A271053.P15240213741698535027` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271053 has offset 0).

The definition of A271053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271053.P8248406699159499322

`Δ[or(A040008(n), A270934(n))]`
-/

namespace A271053.P8248406699159499322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040008 n) (A270934 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271053.P8248406699159499322

namespace A271053

/-- `Δ[or(A040008(n), A270934(n))]` -/
def P8248406699159499322.Spec : Prop :=
  ∀ n, P8248406699159499322.a n = A271053 n

end A271053

/-! ## A271053.P15240213741698535027

`Δ[or(4*A157928(n), A270934(n))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271053

/-- `Δ[or(4*A157928(n), A270934(n))]` -/
def P15240213741698535027.Spec : Prop :=
  ∀ n, P15240213741698535027.a n = A271053 n

theorem P15240213741698535027.correct : P15240213741698535027.Spec := by
  intro n
  simp only [A271053]

end A271053

/-! ## A271053.P1508056129853016066

`Δ[A271051(n)]`
-/

namespace A271053.P1508056129853016066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271053.P1508056129853016066

namespace A271053

/-- `Δ[A271051(n)]` -/
def P1508056129853016066.Spec : Prop :=
  ∀ n, P1508056129853016066.a n = A271053 n

end A271053

/-! ## A271053.P1467883693713132613

`A271051(n+1)-A271051(n)`
-/

namespace A271053.P1467883693713132613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271051 (n + 1) - A271051 n

end

end A271053.P1467883693713132613

namespace A271053

/-- `A271051(n+1)-A271051(n)` -/
def P1467883693713132613.Spec : Prop :=
  ∀ n, P1467883693713132613.a n = A271053 n

end A271053

/-! ## A271053.P17509320884295121080

`Δ[or(4%A133179(n+1)², A270934(n))]`
-/

namespace A271053.P17509320884295121080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod 4 (A133179 (n + 1) ^ 2)) (A270934 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271053.P17509320884295121080

namespace A271053

/-- `Δ[or(4%A133179(n+1)², A270934(n))]` -/
def P17509320884295121080.Spec : Prop :=
  ∀ n, P17509320884295121080.a n = A271053 n

end A271053

/-! ## A271053.P8980699533493624822

`Δ[A274593(A270934(n))]`
-/

namespace A271053.P8980699533493624822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274593 (A270934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271053.P8980699533493624822

namespace A271053

/-- `Δ[A274593(A270934(n))]` -/
def P8980699533493624822.Spec : Prop :=
  ∀ n, P8980699533493624822.a n = A271053 n

end A271053

/-!
# A271054: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A271054, the canonical program `A271054.P8315320022391231333` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271054 has offset 0).

The definition of A271054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271054.P8315320022391231333

`xor(2, A271091(n)-1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271054

/-- `xor(2, A271091(n)-1)-1` -/
def P8315320022391231333.Spec : Prop :=
  ∀ n, P8315320022391231333.a n = A271054 n

theorem P8315320022391231333.correct : P8315320022391231333.Spec := by
  intro n
  simp only [A271054]

end A271054

/-! ## A271054.P7903520227182489634

`A271057(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271054.P7903520227182489634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271057 (n - 1) + a (n - 1)

end

end A271054.P7903520227182489634

namespace A271054

/-- `A271057(n-1)+a(n-1)` -/
def P7903520227182489634.Spec : Prop :=
  ∀ n, P7903520227182489634.a n = A271054 n

end A271054

/-! ## A271054.P9243589791492510139

`A271091(n)-4%A266303(n)`
-/

namespace A271054.P9243589791492510139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n - Int.tmod 4 (A266303 n)

end

end A271054.P9243589791492510139

namespace A271054

/-- `A271091(n)-4%A266303(n)` -/
def P9243589791492510139.Spec : Prop :=
  ∀ n, P9243589791492510139.a n = A271054 n

end A271054

/-! ## A271054.P14873276245353290717

`∑[A271057(n)]+1-A271057(n)`
-/

namespace A271054.P14873276245353290717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271057 n)

end

end A271054.P14873276245353290717

namespace A271054

/-- `∑[A271057(n)]+1-A271057(n)` -/
def P14873276245353290717.Spec : Prop :=
  ∀ n, P14873276245353290717.a n = A271054 n

end A271054

/-! ## A271054.P16705835925928294625

`Δ[A271056(n)]-A271057(n)`
-/

namespace A271054.P16705835925928294625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271057 n

end

end A271054.P16705835925928294625

namespace A271054

/-- `Δ[A271056(n)]-A271057(n)` -/
def P16705835925928294625.Spec : Prop :=
  ∀ n, P16705835925928294625.a n = A271054 n

end A271054

/-! ## A271054.P12350131611924447107

`A271056(n+1)-(A271057(n)+A271056(n))`
-/

namespace A271054.P12350131611924447107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271056 (n + 1) - (A271057 n + A271056 n)

end

end A271054.P12350131611924447107

namespace A271054

/-- `A271056(n+1)-(A271057(n)+A271056(n))` -/
def P12350131611924447107.Spec : Prop :=
  ∀ n, P12350131611924447107.a n = A271054 n

end A271054

/-! ## A271054.P914580951039184440

`A004443(A271091(n)-1)-1`
-/

namespace A271054.P914580951039184440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A271091 n - 1).toNat - 1

end

end A271054.P914580951039184440

namespace A271054

/-- `A004443(A271091(n)-1)-1` -/
def P914580951039184440.Spec : Prop :=
  ∀ n, P914580951039184440.a n = A271054 n

end A271054

/-! ## A271054.P13419374719139578879

`xor(3, A014681(A271091(n)))`
-/

namespace A271054.P13419374719139578879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A014681 (A271091 n).toNat)

end

end A271054.P13419374719139578879

namespace A271054

/-- `xor(3, A014681(A271091(n)))` -/
def P13419374719139578879.Spec : Prop :=
  ∀ n, P13419374719139578879.a n = A271054 n

end A271054

/-!
# A271055: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A271055, the canonical program `A271055.P18260483858312272091` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271055 has offset 0).

The definition of A271055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271055.P9040673314433541882

`A271092(n)-4*A157928(n)`
-/

namespace A271055.P9040673314433541882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n - 4 * A157928 n

end

end A271055.P9040673314433541882

namespace A271055

/-- `A271092(n)-4*A157928(n)` -/
def P9040673314433541882.Spec : Prop :=
  ∀ n, P9040673314433541882.a n = A271055 n

end A271055

/-! ## A271055.P10589095751707237728

`A273313(n)-5%A052905(n)`
-/

namespace A271055.P10589095751707237728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - Int.tmod 5 (A052905 n)

end

end A271055.P10589095751707237728

namespace A271055

/-- `A273313(n)-5%A052905(n)` -/
def P10589095751707237728.Spec : Prop :=
  ∀ n, P10589095751707237728.a n = A271055 n

end A271055

/-! ## A271055.P9679360061870890617

`A126646(n)²-13%A083100(n)`
-/

namespace A271055.P9679360061870890617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n ^ 2 - Int.tmod 13 (A083100 n)

end

end A271055.P9679360061870890617

namespace A271055

/-- `A126646(n)²-13%A083100(n)` -/
def P9679360061870890617.Spec : Prop :=
  ∀ n, P9679360061870890617.a n = A271055 n

end A271055

/-! ## A271055.P6550280642007296877

`A271092(n)-and(4, A142151(2*n))`
-/

namespace A271055.P6550280642007296877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n - Int.land 4 (A142151 (2 * n))

end

end A271055.P6550280642007296877

namespace A271055

/-- `A271092(n)-and(4, A142151(2*n))` -/
def P6550280642007296877.Spec : Prop :=
  ∀ n, P6550280642007296877.a n = A271055 n

end A271055

/-! ## A271055.P4120597896838656276

`A271061(n)-12%(A167499(n)+n)`
-/

namespace A271055.P4120597896838656276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271061 n - Int.tmod 12 (A167499 n + (n : ℤ))

end

end A271055.P4120597896838656276

namespace A271055

/-- `A271061(n)-12%(A167499(n)+n)` -/
def P4120597896838656276.Spec : Prop :=
  ∀ n, P4120597896838656276.a n = A271055 n

end A271055

/-! ## A271055.P17403584961341327222

`A271092(n)+A273309(n)-A273405(n)`
-/

namespace A271055.P17403584961341327222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n + (A273309 n - A273405 n)

end

end A271055.P17403584961341327222

namespace A271055

/-- `A271092(n)+A273309(n)-A273405(n)` -/
def P17403584961341327222.Spec : Prop :=
  ∀ n, P17403584961341327222.a n = A271055 n

end A271055

/-! ## A271055.P18260483858312272091

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=36, a(3)=212, a(4)=948`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271055

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P18260483858312272091.Spec : Prop :=
  ∀ n, P18260483858312272091.a n = A271055 n

theorem P18260483858312272091.correct : P18260483858312272091.Spec := by
  intro n
  simp only [A271055]

end A271055

/-! ## A271055.P11909208244655459462

`A270935(n)-8%A239353(n+1)`
-/

namespace A271055.P11909208244655459462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270935 n - Int.tmod 8 (A239353 (n + 1))

end

end A271055.P11909208244655459462

namespace A271055

/-- `A270935(n)-8%A239353(n+1)` -/
def P11909208244655459462.Spec : Prop :=
  ∀ n, P11909208244655459462.a n = A271055 n

end A271055

/-!
# A271056: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A271056, the canonical program `A271056.P15190929235682603079` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271056 has offset 0).

The definition of A271056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271056.P15190929235682603079

`∑[A271054(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A271056

/-- `∑[A271054(n)]` -/
def P15190929235682603079.Spec : Prop :=
  ∀ n, P15190929235682603079.a n = A271056 n

theorem P15190929235682603079.correct : P15190929235682603079.Spec := by
  intro n
  simp only [A271056]

end A271056

/-! ## A271056.P3363367947572275368

`∑[xor(2, A271091(n)-1)-1]`
-/

namespace A271056.P3363367947572275368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A271091 n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P3363367947572275368

namespace A271056

/-- `∑[xor(2, A271091(n)-1)-1]` -/
def P3363367947572275368.Spec : Prop :=
  ∀ n, P3363367947572275368.a n = A271056 n

end A271056

/-! ## A271056.P14957222618487903223

`∑[A271057(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271056.P14957222618487903223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271057 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P14957222618487903223

namespace A271056

/-- `∑[A271057(n-1)+a(n-1)]` -/
def P14957222618487903223.Spec : Prop :=
  ∀ n, P14957222618487903223.a n = A271056 n

end A271056

/-! ## A271056.P6306670118023596537

`A271054(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A271056.P6306670118023596537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271054 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A271056.P6306670118023596537

namespace A271056

/-- `A271054(char[1]+n)+a(n-1)` -/
def P6306670118023596537.Spec : Prop :=
  ∀ n, P6306670118023596537.a n = A271056 n

end A271056

/-! ## A271056.P13220456659938204645

`∑[∑[A271057(n)]+1-A271057(n)]`
-/

namespace A271056.P13220456659938204645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P13220456659938204645

namespace A271056

/-- `∑[∑[A271057(n)]+1-A271057(n)]` -/
def P13220456659938204645.Spec : Prop :=
  ∀ n, P13220456659938204645.a n = A271056 n

end A271056

/-! ## A271056.P18312844731616697557

`∑[A004443(A271091(n)-1)-1]`
-/

namespace A271056.P18312844731616697557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A271091 n - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P18312844731616697557

namespace A271056

/-- `∑[A004443(A271091(n)-1)-1]` -/
def P18312844731616697557.Spec : Prop :=
  ∀ n, P18312844731616697557.a n = A271056 n

end A271056

/-!
# A271057: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A271057, the canonical program `A271057.P8574904356528062839` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271057 has offset 0).

The definition of A271057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271057.P8574904356528062839

`Δ[xor(2, A271091(n)-1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271057

/-- `Δ[xor(2, A271091(n)-1)]` -/
def P8574904356528062839.Spec : Prop :=
  ∀ n, P8574904356528062839.a n = A271057 n

theorem P8574904356528062839.correct : P8574904356528062839.Spec := by
  intro n
  simp only [A271057]

end A271057

/-! ## A271057.P5661151393249882520

`Δ[A271091(n)-4%A266303(n)]`
-/

namespace A271057.P5661151393249882520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n - Int.tmod 4 (A266303 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P5661151393249882520

namespace A271057

/-- `Δ[A271091(n)-4%A266303(n)]` -/
def P5661151393249882520.Spec : Prop :=
  ∀ n, P5661151393249882520.a n = A271057 n

end A271057

/-! ## A271057.P5452038339890888559

`Δ[A271054(n)]`
-/

namespace A271057.P5452038339890888559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P5452038339890888559

namespace A271057

/-- `Δ[A271054(n)]` -/
def P5452038339890888559.Spec : Prop :=
  ∀ n, P5452038339890888559.a n = A271057 n

theorem P5452038339890888559.correct : P5452038339890888559.Spec := by
  intro n
  simp only [A271057, Nat.add_sub_cancel, A271057.P5452038339890888559.f1, A271057.P5452038339890888559.a, A271057.P8574904356528062839.f1, A271057.P8574904356528062839.a, A271054, A271054.P8315320022391231333.a, A271091, A271091.P2497962609040291097.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271057

/-! ## A271057.P15784925856561399891

`A271054(n+1)-A271054(n)`
-/

namespace A271057.P15784925856561399891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 (n + 1) - A271054 n

end

end A271057.P15784925856561399891

namespace A271057

/-- `A271054(n+1)-A271054(n)` -/
def P15784925856561399891.Spec : Prop :=
  ∀ n, P15784925856561399891.a n = A271057 n

theorem P15784925856561399891.correct : P15784925856561399891.Spec := by
  intro n
  simp only [A271057, Nat.add_sub_cancel, A271057.P15784925856561399891.a, A271057.P8574904356528062839.f1, A271057.P8574904356528062839.a, A271054, A271054.P8315320022391231333.a, A271091, A271091.P2497962609040291097.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271057

/-! ## A271057.P3565408809204526559

`Δ[A271094(A123108(A019425(n)))]`
-/

namespace A271057.P3565408809204526559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271094 (A123108 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P3565408809204526559

namespace A271057

/-- `Δ[A271094(A123108(A019425(n)))]` -/
def P3565408809204526559.Spec : Prop :=
  ∀ n, P3565408809204526559.a n = A271057 n

end A271057

/-! ## A271057.P14755282802247147579

`Δ[A173294(n)-A271051(n+1)]`
-/

namespace A271057.P14755282802247147579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173294 n - A271051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P14755282802247147579

namespace A271057

/-- `Δ[A173294(n)-A271051(n+1)]` -/
def P14755282802247147579.Spec : Prop :=
  ∀ n, P14755282802247147579.a n = A271057 n

end A271057

/-! ## A271057.P6162230840909954703

`Δ[A004443(A271091(n)-1)]`
-/

namespace A271057.P6162230840909954703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A271091 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P6162230840909954703

namespace A271057

/-- `Δ[A004443(A271091(n)-1)]` -/
def P6162230840909954703.Spec : Prop :=
  ∀ n, P6162230840909954703.a n = A271057 n

end A271057

/-!
# A271059: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A271059, there is no canonical definition to state claims against.
-/

/-! ## A271059.P10760041384794508561

`Δ[A253086(n)]`
-/

namespace A271059.P10760041384794508561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271059.P10760041384794508561

/-! ## A271059.P7873480396037338440

`A253086(n+1)-A253086(n)`
-/

namespace A271059.P7873480396037338440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 (n + 1) - A253086 n

end

end A271059.P7873480396037338440

/-! ## A271059.P5290725782295173742

`Δ[A255150(n)]-(A016754(n+1)-A258448(n+1))`
-/

namespace A271059.P5290725782295173742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A016754 (n + 1) - A258448 (n + 1))

end

end A271059.P5290725782295173742

/-! ## A271059.P9050718911757012276

`Δ[A255150(n)]-(A005408(n+1)²-A258448(n+1))`
-/

namespace A271059.P9050718911757012276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A005408 (n + 1) ^ 2 - A258448 (n + 1))

end

end A271059.P9050718911757012276

/-! ## A271059.P6895103535382140504

`Δ[(2*n+3)²-A258448(n+1)]`
-/

namespace A271059.P6895103535382140504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A258448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271059.P6895103535382140504

/-! ## A271059.P4196993765580035616

`Δ[abs(A016754(n+1)-A258448(n+1))]`
-/

namespace A271059.P4196993765580035616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016754 (n + 1) - A258448 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271059.P4196993765580035616

/-! ## A271059.P15367352090820808542

`Δ[abs(A005408(n+1)²-A258448(n+1))]`
-/

namespace A271059.P15367352090820808542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 (n + 1) ^ 2 - A258448 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271059.P15367352090820808542

/-!
# A271060: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A271060, the canonical program `A271060.P11107125411431528782` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271060 has offset 0).

The definition of A271060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271060.P9670145245342258403

`∑[8*n]^(n%2)`
-/

namespace A271060.P9670145245342258403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2)

end

end A271060.P9670145245342258403

namespace A271060

/-- `∑[8*n]^(n%2)` -/
def P9670145245342258403.Spec : Prop :=
  ∀ n, (P9670145245342258403.a n : ℤ) = A271060 n

end A271060

/-! ## A271060.P10692860199565513148

`∑[8*n]^and(1, n)`
-/

namespace A271060.P10692860199565513148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.land 1 n

end

end A271060.P10692860199565513148

namespace A271060

/-- `∑[8*n]^and(1, n)` -/
def P10692860199565513148.Spec : Prop :=
  ∀ n, (P10692860199565513148.a n : ℤ) = A271060 n

end A271060

/-! ## A271060.P10964327666401130927

`C(∑[8*n], and(1, n))`
-/

namespace A271060.P10964327666401130927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.land 1 n)

end

end A271060.P10964327666401130927

namespace A271060

/-- `C(∑[8*n], and(1, n))` -/
def P10964327666401130927.Spec : Prop :=
  ∀ n, (P10964327666401130927.a n : ℤ) = A271060 n

end A271060

/-! ## A271060.P14475720386953161359

`gcd(log2(gcd(2, n)), ∑[8*n])`
-/

namespace A271060.P14475720386953161359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271060.P14475720386953161359

namespace A271060

/-- `gcd(log2(gcd(2, n)), ∑[8*n])` -/
def P14475720386953161359.Spec : Prop :=
  ∀ n, (P14475720386953161359.a n : ℤ) = A271060 n

end A271060

/-! ## A271060.P18188875220353361664

`∑[8*n]^Δ[floor(n/2)]`
-/

namespace A271060.P18188875220353361664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A271060.P18188875220353361664

namespace A271060

/-- `∑[8*n]^Δ[floor(n/2)]` -/
def P18188875220353361664.Spec : Prop :=
  ∀ n, P18188875220353361664.a n = (A271060 n : ℚ)

end A271060

/-! ## A271060.P14837390628296728638

`xor(1, ((2*n+1)*and(1, n))²)`
-/

namespace A271060.P14837390628296728638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (((2 * n + 1) * Nat.land 1 n) ^ 2)

end

end A271060.P14837390628296728638

namespace A271060

/-- `xor(1, ((2*n+1)*and(1, n))²)` -/
def P14837390628296728638.Spec : Prop :=
  ∀ n, (P14837390628296728638.a n : ℤ) = A271060 n

end A271060

/-! ## A271060.P6548530253345927920

`gcd(4*(n²+n), and(1, n+1))`
-/

namespace A271060.P6548530253345927920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * (n ^ 2 + n)) (Nat.land 1 (n + 1))

end

end A271060.P6548530253345927920

namespace A271060

/-- `gcd(4*(n²+n), and(1, n+1))` -/
def P6548530253345927920.Spec : Prop :=
  ∀ n, (P6548530253345927920.a n : ℤ) = A271060 n

end A271060

/-! ## A271060.P2205455180108448232

`abs(1-(2*n+1)²*and(1, n))`
-/

namespace A271060.P2205455180108448232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((2 * n + 1) ^ 2 * Nat.land 1 n : ℤ)|

end

end A271060.P2205455180108448232

namespace A271060

/-- `abs(1-(2*n+1)²*and(1, n))` -/
def P2205455180108448232.Spec : Prop :=
  ∀ n, P2205455180108448232.a n = A271060 n

end A271060

/-! ## A271060.P10120935142749708815

`((2*n+1)²-2)*and(1, n)+1`
-/

namespace A271060.P10120935142749708815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - 2) * (Nat.land 1 n : ℤ) + 1

end

end A271060.P10120935142749708815

namespace A271060

/-- `((2*n+1)²-2)*and(1, n)+1` -/
def P10120935142749708815.Spec : Prop :=
  ∀ n, P10120935142749708815.a n = A271060 n

end A271060

/-! ## A271060.P12312078589646092143

`∏{e}[gcd(n+1, n-1), (2*n+1)²-#]`
-/

namespace A271060.P12312078589646092143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (((2 * n + 1) ^ 2 : ℤ) - (Nat.factorization (f1 n) p : ℤ))

end

end A271060.P12312078589646092143

namespace A271060

/-- `∏{e}[gcd(n+1, n-1), (2*n+1)²-#]` -/
def P12312078589646092143.Spec : Prop :=
  ∀ n, P12312078589646092143.a n = A271060 n

end A271060

/-! ## A271060.P11107125411431528782

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=1, a(3)=48, a(4)=1, a(5)=120`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271060

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P11107125411431528782.Spec : Prop :=
  ∀ n, P11107125411431528782.a n = A271060 n

theorem P11107125411431528782.correct : P11107125411431528782.Spec := by
  intro n
  simp only [A271060]

end A271060

/-! ## A271060.P5847753299012044199

`A272007(n*and(1, n))`
-/

namespace A271060.P5847753299012044199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 (n * Nat.land 1 n)

end

end A271060.P5847753299012044199

namespace A271060

/-- `A272007(n*and(1, n))` -/
def P5847753299012044199.Spec : Prop :=
  ∀ n, P5847753299012044199.a n = A271060 n

end A271060

/-! ## A271060.P7247628937190599672

`xor(1, A322015(2*n)²)`
-/

namespace A271060.P7247628937190599672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A322015 (2 * n) ^ 2)

end

end A271060.P7247628937190599672

namespace A271060

/-- `xor(1, A322015(2*n)²)` -/
def P7247628937190599672.Spec : Prop :=
  ∀ n, P7247628937190599672.a n = A271060 n

end A271060

/-! ## A271060.P17220283211274957843

`xor(1, xor(1, A266303(n))²)`
-/

namespace A271060.P17220283211274957843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A266303 n) ^ 2)

end

end A271060.P17220283211274957843

namespace A271060

/-- `xor(1, xor(1, A266303(n))²)` -/
def P17220283211274957843.Spec : Prop :=
  ∀ n, P17220283211274957843.a n = A271060 n

end A271060

/-! ## A271060.P13165414463575743494

`A168269(n)²-a(n-1)` with `a(0)=1`
-/

namespace A271060.P13165414463575743494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168269 n ^ 2 - a (n - 1)

end

end A271060.P13165414463575743494

namespace A271060

/-- `A168269(n)²-a(n-1)` -/
def P13165414463575743494.Spec : Prop :=
  ∀ n, P13165414463575743494.a n = A271060 n

end A271060

/-! ## A271060.P12319464375322026419

`A271064(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271060.P12319464375322026419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271064 (n - 1) + a (n - 1)

end

end A271060.P12319464375322026419

namespace A271060

/-- `A271064(n-1)+a(n-1)` -/
def P12319464375322026419.Spec : Prop :=
  ∀ n, P12319464375322026419.a n = A271060 n

end A271060

/-! ## A271060.P12875858999130022476

`A065530(A266303(n))`
-/

namespace A271060.P12875858999130022476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A266303 n).toNat

end

end A271060.P12875858999130022476

namespace A271060

/-- `A065530(A266303(n))` -/
def P12875858999130022476.Spec : Prop :=
  ∀ n, P12875858999130022476.a n = A271060 n

end A271060

/-! ## A271060.P13036377537194665342

`A067239(A142150(n+1))`
-/

namespace A271060.P13036377537194665342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067239 (A142150 (n + 1)).toNat

end

end A271060.P13036377537194665342

namespace A271060

/-- `A067239(A142150(n+1))` -/
def P13036377537194665342.Spec : Prop :=
  ∀ n, P13036377537194665342.a n = A271060 n

end A271060

/-! ## A271060.P274528673225025456

`A065530(A267354(n+1))`
-/

namespace A271060.P274528673225025456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A267354 (n + 1)).toNat

end

end A271060.P274528673225025456

namespace A271060

/-- `A065530(A267354(n+1))` -/
def P274528673225025456.Spec : Prop :=
  ∀ n, P274528673225025456.a n = A271060 n

end A271060

/-! ## A271060.P3589287714213045604

`A132411(A266724(n+1))`
-/

namespace A271060.P3589287714213045604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A266724 (n + 1)).toNat

end

end A271060.P3589287714213045604

namespace A271060

/-- `A132411(A266724(n+1))` -/
def P3589287714213045604.Spec : Prop :=
  ∀ n, P3589287714213045604.a n = A271060 n

end A271060

/-!
# A271061: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A271061, the canonical program `A271061.P16707271264990171137` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271061 has offset 0).

The definition of A271061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271061.P16707271264990171137

`ogf((1+2x+8x^2)/(1-6x+8x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271061

/-- `ogf((1+2x+8x^2)/(1-6x+8x^2))` -/
def P16707271264990171137.Spec : Prop :=
  ∀ n, P16707271264990171137.a n = A271061 n

theorem P16707271264990171137.correct : P16707271264990171137.Spec := by
  intro n
  simp only [A271061]

end A271061

/-! ## A271061.P673788731673602625

`record[xor(1, (1-2^n)²)]`
-/

namespace A271061.P673788731673602625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - (2 ^ n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271061.P673788731673602625

namespace A271061

/-- `record[xor(1, (1-2^n)²)]` -/
def P673788731673602625.Spec : Prop :=
  ∀ n, P673788731673602625.a n = A271061 n

end A271061

/-! ## A271061.P5453730398382166309

`∑[2^n]²-ceil(abs(sin(n)))`
-/

namespace A271061.P5453730398382166309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ⌈|Real.sin (n : ℝ)|⌉

end

end A271061.P5453730398382166309

namespace A271061

/-- `∑[2^n]²-ceil(abs(sin(n)))` -/
def P5453730398382166309.Spec : Prop :=
  ∀ n, P5453730398382166309.a n = A271061 n

end A271061

/-! ## A271061.P6555821289028459509

`∑[2^n]²-ceil(sin(n)²)`
-/

namespace A271061.P6555821289028459509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A271061.P6555821289028459509

namespace A271061

/-- `∑[2^n]²-ceil(sin(n)²)` -/
def P6555821289028459509.Spec : Prop :=
  ∀ n, P6555821289028459509.a n = A271061 n

end A271061

/-! ## A271061.P8549221270820511446

`xor(∑[2^n]², ceil(sin(n)²))`
-/

namespace A271061.P8549221270820511446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A271061.P8549221270820511446

namespace A271061

/-- `xor(∑[2^n]², ceil(sin(n)²))` -/
def P8549221270820511446.Spec : Prop :=
  ∀ n, P8549221270820511446.a n = A271061 n

end A271061

/-! ## A271061.P5479082805241347550

`record[abs(4^n-2^(n+1))]`
-/

namespace A271061.P5479082805241347550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - (2 ^ (n + 1) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271061.P5479082805241347550

namespace A271061

/-- `record[abs(4^n-2^(n+1))]` -/
def P5479082805241347550.Spec : Prop :=
  ∀ n, P5479082805241347550.a n = A271061 n

end A271061

/-! ## A271061.P2050526567777468984

`∑[2^n]²+floor(acot(n))-1`
-/

namespace A271061.P2050526567777468984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A271061.P2050526567777468984

namespace A271061

/-- `∑[2^n]²+floor(acot(n))-1` -/
def P2050526567777468984.Spec : Prop :=
  ∀ n, P2050526567777468984.a n = A271061 n

end A271061

/-! ## A271061.P11313373057766616666

`2*(a(n-1)+4^n)` with `a(0)=1, a(1)=8`
-/

namespace A271061.P11313373057766616666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * (a (n - 1) + 4 ^ n)

end

end A271061.P11313373057766616666

namespace A271061

/-- `2*(a(n-1)+4^n)` -/
def P11313373057766616666.Spec : Prop :=
  ∀ n, (P11313373057766616666.a n : ℤ) = A271061 n

end A271061

/-! ## A271061.P12177425062654202450

`floor(∑[2^n]²-n/(n+1))`
-/

namespace A271061.P12177425062654202450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋

end

end A271061.P12177425062654202450

namespace A271061

/-- `floor(∑[2^n]²-n/(n+1))` -/
def P12177425062654202450.Spec : Prop :=
  ∀ n, P12177425062654202450.a n = A271061 n

end A271061

/-! ## A271061.P5684391019170801311

`lcm(4, a(n-1)+2^n-1)+4` with `a(0)=1`
-/

namespace A271061.P5684391019170801311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 4 ((a (n - 1) : ℤ) + ((2 ^ n : ℤ) - 1)) + 4

end

end A271061.P5684391019170801311

namespace A271061

/-- `lcm(4, a(n-1)+2^n-1)+4` -/
def P5684391019170801311.Spec : Prop :=
  ∀ n, (P5684391019170801311.a n : ℤ) = A271061 n

end A271061

/-! ## A271061.P15629843254896522917

`(record[2^n-2*n]+2*n)*2^n`
-/

namespace A271061.P15629843254896522917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)) * (2 ^ n : ℤ)

end

end A271061.P15629843254896522917

namespace A271061

/-- `(record[2^n-2*n]+2*n)*2^n` -/
def P15629843254896522917.Spec : Prop :=
  ∀ n, P15629843254896522917.a n = A271061 n

end A271061

/-! ## A271061.P13528865520341521308

`2^n*A173033(n)`
-/

namespace A271061.P13528865520341521308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A173033 n

end

end A271061.P13528865520341521308

namespace A271061

/-- `2^n*A173033(n)` -/
def P13528865520341521308.Spec : Prop :=
  ∀ n, P13528865520341521308.a n = A271061 n

end A271061

/-! ## A271061.P6727613806991225396

`xor(1, xor(1, A095121(n))²)`
-/

namespace A271061.P6727613806991225396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A095121 n) ^ 2)

end

end A271061.P6727613806991225396

namespace A271061

/-- `xor(1, xor(1, A095121(n))²)` -/
def P6727613806991225396.Spec : Prop :=
  ∀ n, P6727613806991225396.a n = A271061 n

end A271061

/-! ## A271061.P1152174759881256089

`xor(1, (1-A151821(n+1))²)`
-/

namespace A271061.P1152174759881256089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - A151821 (n + 1)) ^ 2)

end

end A271061.P1152174759881256089

namespace A271061

/-- `xor(1, (1-A151821(n+1))²)` -/
def P1152174759881256089.Spec : Prop :=
  ∀ n, P1152174759881256089.a n = A271061 n

end A271061

/-! ## A271061.P177721410763139817

`A165665(n)+a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A271061.P177721410763139817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A165665 n + a (n - 1)

end

end A271061.P177721410763139817

namespace A271061

/-- `A165665(n)+a(n-1)` -/
def P177721410763139817.Spec : Prop :=
  ∀ n, P177721410763139817.a n = A271061 n

end A271061

/-! ## A271061.P16352194896310079844

`xor(1, (A076878(n+1)+n)²)`
-/

namespace A271061.P16352194896310079844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((A076878 (n + 1) + (n : ℤ)) ^ 2)

end

end A271061.P16352194896310079844

namespace A271061

/-- `xor(1, (A076878(n+1)+n)²)` -/
def P16352194896310079844.Spec : Prop :=
  ∀ n, P16352194896310079844.a n = A271061 n

end A271061

/-! ## A271061.P1033382513257336365

`4*(A151821(n)+a(n-1))` with `a(0)=1`
-/

namespace A271061.P1033382513257336365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (A151821 n + a (n - 1))

end

end A271061.P1033382513257336365

namespace A271061

/-- `4*(A151821(n)+a(n-1))` -/
def P1033382513257336365.Spec : Prop :=
  ∀ n, P1033382513257336365.a n = A271061 n

end A271061

/-! ## A271061.P1810189976615694543

`A270222(n)+A024036(n)`
-/

namespace A271061.P1810189976615694543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270222 n + A024036 n

end

end A271061.P1810189976615694543

namespace A271061

/-- `A270222(n)+A024036(n)` -/
def P1810189976615694543.Spec : Prop :=
  ∀ n, P1810189976615694543.a n = A271061 n

end A271061

/-! ## A271061.P2348640899431890989

`A270218(n)+A080674(n)`
-/

namespace A271061.P2348640899431890989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270218 n + A080674 n

end

end A271061.P2348640899431890989

namespace A271061

/-- `A270218(n)+A080674(n)` -/
def P2348640899431890989.Spec : Prop :=
  ∀ n, P2348640899431890989.a n = A271061 n

end A271061

/-! ## A271061.P11368481538061345025

`A211012(n)+A165665(n)`
-/

namespace A271061.P11368481538061345025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211012 n + A165665 n

end

end A271061.P11368481538061345025

namespace A271061

/-- `A211012(n)+A165665(n)` -/
def P11368481538061345025.Spec : Prop :=
  ∀ n, P11368481538061345025.a n = A271061 n

end A271061

/-!
# A271062: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A271062, the canonical program `A271062.P15371621302677192145` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271062 has offset 0).

The definition of A271062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271062.P17100821377671727392

`∑[∑[8*n]^(n%2)]`
-/

namespace A271062.P17100821377671727392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P17100821377671727392

namespace A271062

/-- `∑[∑[8*n]^(n%2)]` -/
def P17100821377671727392.Spec : Prop :=
  ∀ n, (P17100821377671727392.a n : ℤ) = A271062 n

end A271062

/-! ## A271062.P961795971915886686

`∑[∑[8*n]^and(1, n)]`
-/

namespace A271062.P961795971915886686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P961795971915886686

namespace A271062

/-- `∑[∑[8*n]^and(1, n)]` -/
def P961795971915886686.Spec : Prop :=
  ∀ n, (P961795971915886686.a n : ℤ) = A271062 n

end A271062

/-! ## A271062.P15371621302677192145

`∑[gcd(∑[8*n], (n+1)%2)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271062

/-- `∑[gcd(∑[8*n], (n+1)%2)]` -/
def P15371621302677192145.Spec : Prop :=
  ∀ n, (P15371621302677192145.a n : ℤ) = A271062 n

theorem P15371621302677192145.correct : P15371621302677192145.Spec := by
  intro n
  simp only [A271062]

end A271062

/-! ## A271062.P11205959456930294255

`∑[gcd(8*∑[n], and(1, n+1))]`
-/

namespace A271062.P11205959456930294255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (8 * (∑ j ∈ Finset.range (n + 1), f2 j)) (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P11205959456930294255

namespace A271062

/-- `∑[gcd(8*∑[n], and(1, n+1))]` -/
def P11205959456930294255.Spec : Prop :=
  ∀ n, (P11205959456930294255.a n : ℤ) = A271062 n

end A271062

/-! ## A271062.P14613611939916807606

`∑[∑[8*n]^val(n²+1, 2)]`
-/

namespace A271062.P14613611939916807606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ SequenceMachineLib.valuation (n ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P14613611939916807606

namespace A271062

/-- `∑[∑[8*n]^val(n²+1, 2)]` -/
def P14613611939916807606.Spec : Prop :=
  ∀ n, (P14613611939916807606.a n : ℤ) = A271062 n

end A271062

/-! ## A271062.P1383402481432978710

`∑[C((2*n+1)²-1, and(1, n))]`
-/

namespace A271062.P1383402481432978710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((2 * n + 1) ^ 2 : ℤ) - 1).toNat (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P1383402481432978710

namespace A271062

/-- `∑[C((2*n+1)²-1, and(1, n))]` -/
def P1383402481432978710.Spec : Prop :=
  ∀ n, (P1383402481432978710.a n : ℤ) = A271062 n

end A271062

/-! ## A271062.P12991639060231339984

`∑[and((2*n+1)², Δ[n+2-a(n-1)])]` with `a(0)=0`
-/

namespace A271062.P12991639060231339984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n + 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1) ^ 2 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P12991639060231339984

namespace A271062

/-- `∑[and((2*n+1)², Δ[n+2-a(n-1)])]` -/
def P12991639060231339984.Spec : Prop :=
  ∀ n, P12991639060231339984.a n = A271062 n

end A271062

/-! ## A271062.P7168150359295561499

`∑[A271060(n)]`
-/

namespace A271062.P7168150359295561499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P7168150359295561499

namespace A271062

/-- `∑[A271060(n)]` -/
def P7168150359295561499.Spec : Prop :=
  ∀ n, P7168150359295561499.a n = A271062 n

end A271062

/-! ## A271062.P13559535727602712350

`∑[A065530(A266303(n))]`
-/

namespace A271062.P13559535727602712350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A266303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P13559535727602712350

namespace A271062

/-- `∑[A065530(A266303(n))]` -/
def P13559535727602712350.Spec : Prop :=
  ∀ n, P13559535727602712350.a n = A271062 n

end A271062

/-! ## A271062.P6472557893500113266

`A270012(n)-A000035(n)`
-/

namespace A271062.P6472557893500113266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270012 n - A000035 n

end

end A271062.P6472557893500113266

namespace A271062

/-- `A270012(n)-A000035(n)` -/
def P6472557893500113266.Spec : Prop :=
  ∀ n, P6472557893500113266.a n = A271062 n

end A271062

/-! ## A271062.P12365782378104335684

`∑[A065530(A267354(n+1))]`
-/

namespace A271062.P12365782378104335684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A267354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P12365782378104335684

namespace A271062

/-- `∑[A065530(A267354(n+1))]` -/
def P12365782378104335684.Spec : Prop :=
  ∀ n, P12365782378104335684.a n = A271062 n

end A271062

/-! ## A271062.P6245790998461947294

`∑[A132411(A266724(n+1))]`
-/

namespace A271062.P6245790998461947294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A266724 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P6245790998461947294

namespace A271062

/-- `∑[A132411(A266724(n+1))]` -/
def P6245790998461947294.Spec : Prop :=
  ∀ n, P6245790998461947294.a n = A271062 n

end A271062

/-! ## A271062.P17642783261835464529

`A269908(n)+A168273(n+1)`
-/

namespace A271062.P17642783261835464529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 n + A168273 (n + 1)

end

end A271062.P17642783261835464529

namespace A271062

/-- `A269908(n)+A168273(n+1)` -/
def P17642783261835464529.Spec : Prop :=
  ∀ n, P17642783261835464529.a n = A271062 n

end A271062

/-! ## A271062.P14611863121220870978

`A269908(n)+A201629(2*n+1)`
-/

namespace A271062.P14611863121220870978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 n + A201629 (2 * n + 1)

end

end A271062.P14611863121220870978

namespace A271062

/-- `A269908(n)+A201629(2*n+1)` -/
def P14611863121220870978.Spec : Prop :=
  ∀ n, P14611863121220870978.a n = A271062 n

end A271062

/-! ## A271062.P14872207378610429936

`∑[or(4, A272007(n))]-A004767(n)-1`
-/

namespace A271062.P14872207378610429936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A272007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004767 n - 1

end

end A271062.P14872207378610429936

namespace A271062

/-- `∑[or(4, A272007(n))]-A004767(n)-1` -/
def P14872207378610429936.Spec : Prop :=
  ∀ n, P14872207378610429936.a n = A271062 n

end A271062

/-! ## A271062.P17096281190763357145

`∑[A056594(2*n)+A322015(2*n)²]`
-/

namespace A271062.P17096281190763357145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A322015 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P17096281190763357145

namespace A271062

/-- `∑[A056594(2*n)+A322015(2*n)²]` -/
def P17096281190763357145.Spec : Prop :=
  ∀ n, P17096281190763357145.a n = A271062 n

end A271062

/-! ## A271062.P3096589194547357158

`∑[A131379(2*n)+A322015(2*n)²]`
-/

namespace A271062.P3096589194547357158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (2 * n) + A322015 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P3096589194547357158

namespace A271062

/-- `∑[A131379(2*n)+A322015(2*n)²]` -/
def P3096589194547357158.Spec : Prop :=
  ∀ n, P3096589194547357158.a n = A271062 n

end A271062

/-! ## A271062.P34554311293505934

`∑[A270010(n)]-and(1, n)`
-/

namespace A271062.P34554311293505934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A271062.P34554311293505934

namespace A271062

/-- `∑[A270010(n)]-and(1, n)` -/
def P34554311293505934.Spec : Prop :=
  ∀ n, P34554311293505934.a n = A271062 n

end A271062

/-! ## A271062.P7805800708908192558

`∑[C((2*n+1)²-1, A008683(a(n-1)))]` with `a(0)=1`
-/

namespace A271062.P7805800708908192558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (((2 * n + 1) ^ 2 : ℤ) - 1).toNat (A008683 (f1 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P7805800708908192558

namespace A271062

/-- `∑[C((2*n+1)²-1, A008683(a(n-1)))]` -/
def P7805800708908192558.Spec : Prop :=
  ∀ n, (P7805800708908192558.a n : ℤ) = A271062 n

end A271062

/-! ## A271062.P1903369945796260392

`∑[A008574(∑[n]*A010673(n))]`
-/

namespace A271062.P1903369945796260392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A010673 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271062.P1903369945796260392

namespace A271062

/-- `∑[A008574(∑[n]*A010673(n))]` -/
def P1903369945796260392.Spec : Prop :=
  ∀ n, P1903369945796260392.a n = A271062 n

end A271062

/-!
# A271063: a(1) = 2, a(2) = 3; thereafter a(n) = a(n-1) + a(|n-a(T)|), where a(T) is the largest term in the sequence before a(n) such that 0 < |n-a(T)| < n.

The programs for A271063, there is no canonical definition to state claims against.
-/

/-! ## A271063.P4466587710040242029

`A267822(n)+a(n-1)` with `a(0)=2`
-/

namespace A271063.P4466587710040242029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A267822 n + a (n - 1)

end

end A271063.P4466587710040242029

/-! ## A271063.P3872562897222527712

`∑[A267822(abs(1-n)+1)]`
-/

namespace A271063.P3872562897222527712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267822 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271063.P3872562897222527712

/-! ## A271063.P18269406345142741468

`∑[A267822(round(sqrt(n²+1)))]+1`
-/

namespace A271063.P18269406345142741468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267822 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271063.P18269406345142741468

/-! ## A271063.P5818868570556431369

`A267822(n)-(A137584(n-A065033(2*n))-a(n-1))` with `a(0)=2`
-/

namespace A271063.P5818868570556431369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A267822 n - (A137584 ((n : ℤ) - A065033 (2 * n)).toNat - a (n - 1))

end

end A271063.P5818868570556431369

/-! ## A271063.P13340818480476556721

`A267822(abs(11*((floor(n/10)+1)^n+1)-n)+1)`
-/

namespace A271063.P13340818480476556721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267822 (|11 * ((⌊(n : ℚ) / 10⌋ + 1) ^ n + 1) - (n : ℤ)| + 1).toNat

end

end A271063.P13340818480476556721

/-!
# A271064: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

The programs for A271064, the canonical program `A271064.P11231385559315550021` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271064 has offset 0).

The definition of A271064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271064.P7476593411217020365

`Δ[∑[8*n]^(n%2)]`
-/

namespace A271064.P7476593411217020365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A271064.P7476593411217020365

namespace A271064

/-- `Δ[∑[8*n]^(n%2)]` -/
def P7476593411217020365.Spec : Prop :=
  ∀ n, P7476593411217020365.a n = A271064 n

end A271064

/-! ## A271064.P15012036569909341630

`Δ[∑[8*n]^and(1, n)]`
-/

namespace A271064.P15012036569909341630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A271064.P15012036569909341630

namespace A271064

/-- `Δ[∑[8*n]^and(1, n)]` -/
def P15012036569909341630.Spec : Prop :=
  ∀ n, P15012036569909341630.a n = A271064 n

end A271064

/-! ## A271064.P11231385559315550021

`Δ[((2*n+1)²-2)*and(1, n)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271064

/-- `Δ[((2*n+1)²-2)*and(1, n)]` -/
def P11231385559315550021.Spec : Prop :=
  ∀ n, P11231385559315550021.a n = A271064 n

theorem P11231385559315550021.correct : P11231385559315550021.Spec := by
  intro n
  simp only [A271064]

end A271064

/-! ## A271064.P1397263416967169908

`Δ[gcd(4*(n²+n), (n+1)%2)]`
-/

namespace A271064.P1397263416967169908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * (n ^ 2 + n)) ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A271064.P1397263416967169908

namespace A271064

/-- `Δ[gcd(4*(n²+n), (n+1)%2)]` -/
def P1397263416967169908.Spec : Prop :=
  ∀ n, P1397263416967169908.a n = A271064 n

end A271064

/-! ## A271064.P11009283598172774471

`Δ[gcd((n+1)*4*n, and(1, n+1))]`
-/

namespace A271064.P11009283598172774471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (4 * n)) (Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A271064.P11009283598172774471

namespace A271064

/-- `Δ[gcd((n+1)*4*n, and(1, n+1))]` -/
def P11009283598172774471.Spec : Prop :=
  ∀ n, P11009283598172774471.a n = A271064 n

end A271064

/-! ## A271064.P66950775761942929

`Δ[or(4, A272007(n))]`
-/

namespace A271064.P66950775761942929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A272007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P66950775761942929

namespace A271064

/-- `Δ[or(4, A272007(n))]` -/
def P66950775761942929.Spec : Prop :=
  ∀ n, P66950775761942929.a n = A271064 n

end A271064

/-! ## A271064.P7577264415994251806

`xor(4, Δ[A269906(n)])`
-/

namespace A271064.P7577264415994251806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (f1 (n + 1) - f1 n)

end

end A271064.P7577264415994251806

namespace A271064

/-- `xor(4, Δ[A269906(n)])` -/
def P7577264415994251806.Spec : Prop :=
  ∀ n, P7577264415994251806.a n = A271064 n

end A271064

/-! ## A271064.P11176891774241918706

`xor(2, Δ[A266258(n+1)²])`
-/

namespace A271064.P11176891774241918706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A271064.P11176891774241918706

namespace A271064

/-- `xor(2, Δ[A266258(n+1)²])` -/
def P11176891774241918706.Spec : Prop :=
  ∀ n, P11176891774241918706.a n = A271064 n

end A271064

/-! ## A271064.P14951220437336729240

`Δ[A065530(A266303(n))]`
-/

namespace A271064.P14951220437336729240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A266303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P14951220437336729240

namespace A271064

/-- `Δ[A065530(A266303(n))]` -/
def P14951220437336729240.Spec : Prop :=
  ∀ n, P14951220437336729240.a n = A271064 n

end A271064

/-! ## A271064.P10520573071921691292

`A033999(n)*A173294(n)`
-/

namespace A271064.P10520573071921691292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A173294 n

end

end A271064.P10520573071921691292

namespace A271064

/-- `A033999(n)*A173294(n)` -/
def P10520573071921691292.Spec : Prop :=
  ∀ n, P10520573071921691292.a n = A271064 n

end A271064

/-! ## A271064.P7006074086852932721

`Δ[A065530(A267354(n+1))]`
-/

namespace A271064.P7006074086852932721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A267354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P7006074086852932721

namespace A271064

/-- `Δ[A065530(A267354(n+1))]` -/
def P7006074086852932721.Spec : Prop :=
  ∀ n, P7006074086852932721.a n = A271064 n

end A271064

/-! ## A271064.P317483830764221173

`Δ[A132411(A266724(n+1))]`
-/

namespace A271064.P317483830764221173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A266724 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P317483830764221173

namespace A271064

/-- `Δ[A132411(A266724(n+1))]` -/
def P317483830764221173.Spec : Prop :=
  ∀ n, P317483830764221173.a n = A271064 n

end A271064

/-! ## A271064.P13478989602790449764

`Δ[(A269910(n)+2)*A000035(n)]`
-/

namespace A271064.P13478989602790449764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A269910 n + 2) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P13478989602790449764

namespace A271064

/-- `Δ[(A269910(n)+2)*A000035(n)]` -/
def P13478989602790449764.Spec : Prop :=
  ∀ n, P13478989602790449764.a n = A271064 n

end A271064

/-! ## A271064.P4474435209513416978

`Δ[(A016754(n)-2)*A000035(n)]`
-/

namespace A271064.P4474435209513416978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016754 n - 2) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P4474435209513416978

namespace A271064

/-- `Δ[(A016754(n)-2)*A000035(n)]` -/
def P4474435209513416978.Spec : Prop :=
  ∀ n, P4474435209513416978.a n = A271064 n

end A271064

/-! ## A271064.P8207343625395492602

`Δ[A271060(n)]`
-/

namespace A271064.P8207343625395492602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271064.P8207343625395492602

namespace A271064

/-- `Δ[A271060(n)]` -/
def P8207343625395492602.Spec : Prop :=
  ∀ n, P8207343625395492602.a n = A271064 n

end A271064

/-! ## A271064.P815393757075377259

`A271060(n+1)-A271060(n)`
-/

namespace A271064.P815393757075377259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271060 (n + 1) - A271060 n

end

end A271064.P815393757075377259

namespace A271064

/-- `A271060(n+1)-A271060(n)` -/
def P815393757075377259.Spec : Prop :=
  ∀ n, P815393757075377259.a n = A271064 n

end A271064

/-! ## A271064.P8991952255755684030

`A270013(n)-A280560(n)`
-/

namespace A271064.P8991952255755684030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270013 n - A280560 n

end

end A271064.P8991952255755684030

namespace A271064

/-- `A270013(n)-A280560(n)` -/
def P8991952255755684030.Spec : Prop :=
  ∀ n, P8991952255755684030.a n = A271064 n

end A271064

/-! ## A271064.P15343612857166966769

`xor(4, A269909(n))`
-/

namespace A271064.P15343612857166966769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A269909 n)

end

end A271064.P15343612857166966769

namespace A271064

/-- `xor(4, A269909(n))` -/
def P15343612857166966769.Spec : Prop :=
  ∀ n, P15343612857166966769.a n = A271064 n

end A271064

/-! ## A271064.P10009938808121028571

`A269913(n)+A174971(n)`
-/

namespace A271064.P10009938808121028571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269913 n + A174971 n

end

end A271064.P10009938808121028571

namespace A271064

/-- `A269913(n)+A174971(n)` -/
def P10009938808121028571.Spec : Prop :=
  ∀ n, P10009938808121028571.a n = A271064 n

end A271064

/-! ## A271064.P3661142013852434722

`xor(A010703(n), A269913(n))`
-/

namespace A271064.P3661142013852434722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010703 n) (A269913 n)

end

end A271064.P3661142013852434722

namespace A271064

/-- `xor(A010703(n), A269913(n))` -/
def P3661142013852434722.Spec : Prop :=
  ∀ n, P3661142013852434722.a n = A271064 n

end A271064

/-!
# A271065: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A271065, there is no canonical definition to state claims against.
-/

/-! ## A271065.P13519698452313528497

`A271068(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271065.P13519698452313528497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271068 (n - 1) + a (n - 1)

end

end A271065.P13519698452313528497

/-! ## A271065.P10465803140757617098

`Δ[A271067(n)]-A271068(n)`
-/

namespace A271065.P10465803140757617098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271068 n

end

end A271065.P10465803140757617098

/-! ## A271065.P2231375034508474728

`A271067(n+1)-(A271068(n)+A271067(n))`
-/

namespace A271065.P2231375034508474728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271067 (n + 1) - (A271068 n + A271067 n)

end

end A271065.P2231375034508474728

/-! ## A271065.P358600403178787454

`Δ[A273316(n)]-∑[A273307(n)]`
-/

namespace A271065.P358600403178787454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A271065.P358600403178787454

/-! ## A271065.P9517279284672877169

`∑[Δ[A005408(n)²]-A273307(n)]`
-/

namespace A271065.P9517279284672877169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A273307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271065.P9517279284672877169

/-! ## A271065.P11459291372557637209

`A016754(n+1)-A273304(n+1)`
-/

namespace A271065.P11459291372557637209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A273304 (n + 1)

end

end A271065.P11459291372557637209

/-! ## A271065.P11770575357914534312

`Δ[A005563(n)]²-A273304(n+1)`
-/

namespace A271065.P11770575357914534312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A273304 (n + 1)

end

end A271065.P11770575357914534312

/-! ## A271065.P7136289858571096443

`A005408(n+1)²-A273304(n+1)`
-/

namespace A271065.P7136289858571096443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) ^ 2 - A273304 (n + 1)

end

end A271065.P7136289858571096443

/-! ## A271065.P12317304687228515639

`A144396(n+1)²-A273304(n+1)`
-/

namespace A271065.P12317304687228515639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) ^ 2 - A273304 (n + 1)

end

end A271065.P12317304687228515639

/-! ## A271065.P7076968264772984811

`A004768(A000096(n))-A273304(n+1)`
-/

namespace A271065.P7076968264772984811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (A000096 n).toNat - A273304 (n + 1)

end

end A271065.P7076968264772984811

/-!
# A271066: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A271066, there is no canonical definition to state claims against.
-/

/-! ## A271066.P17369443394088078297

`A271065(2^n-1)`
-/

namespace A271066.P17369443394088078297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 (2 ^ n - 1)

end

end A271066.P17369443394088078297

/-! ## A271066.P3696869951381219489

`record[A271065(A091264(n))]`
-/

namespace A271066.P3696869951381219489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271066.P3696869951381219489

/-! ## A271066.P8028296717442699284

`record[A271065(A173787(n))]`
-/

namespace A271066.P8028296717442699284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271066.P8028296717442699284

/-! ## A271066.P716341394207462149

`record[A271065(A243071(n+1))]`
-/

namespace A271066.P716341394207462149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271066.P716341394207462149

/-! ## A271066.P12701267938086334558

`record[A271065(A245611(n+1))]`
-/

namespace A271066.P12701267938086334558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271066.P12701267938086334558

/-!
# A271067: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A271067, there is no canonical definition to state claims against.
-/

/-! ## A271067.P9649972475912972394

`∑[A271065(n)]`
-/

namespace A271067.P9649972475912972394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271067.P9649972475912972394

/-! ## A271067.P4698491713175415746

`A271065(n%A271065(n))+a(n-1)` with `a(0)=1`
-/

namespace A271067.P4698491713175415746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271065 (Int.tmod (n : ℤ) (A271065 n)).toNat + a (n - 1)

end

end A271067.P4698491713175415746

/-! ## A271067.P18039033740327992712

`a(n-1)+A001511(A117366(2*n+1))*A271065(n)` with `a(0)=1`
-/

namespace A271067.P18039033740327992712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001511 (A117366 (2 * n + 1)).toNat * A271065 n

end

end A271067.P18039033740327992712

/-! ## A271067.P18404539294357563866

`∑[(2*n+3)²-A273304(n+1)]`
-/

namespace A271067.P18404539294357563866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271067.P18404539294357563866

/-! ## A271067.P14891275125128246303

`∑[(2*n+3)²%A273304(A008621(4*n))]`
-/

namespace A271067.P14891275125128246303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 3) ^ 2 : ℤ) (A273304 (A008621 (4 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271067.P14891275125128246303

/-!
# A271068: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A271068, there is no canonical definition to state claims against.
-/

/-! ## A271068.P5671640197116394453

`Δ[A271065(n)]`
-/

namespace A271068.P5671640197116394453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271068.P5671640197116394453

/-! ## A271068.P9100820791015272821

`A271065(n+1)-A271065(n)`
-/

namespace A271068.P9100820791015272821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271065 (n + 1) - A271065 n

end

end A271068.P9100820791015272821

/-! ## A271068.P11459126870527356621

`8*(n+2)-A273307(n+1)`
-/

namespace A271068.P11459126870527356621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273307 (n + 1)

end

end A271068.P11459126870527356621

/-! ## A271068.P9704531445358472299

`Δ[(2*n+3)²-A273304(n+1)]`
-/

namespace A271068.P9704531445358472299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271068.P9704531445358472299

/-! ## A271068.P614245832659552619

`Δ[abs(A016754(n+1)-A273304(n+1))]`
-/

namespace A271068.P614245832659552619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016754 (n + 1) - A273304 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271068.P614245832659552619

/-! ## A271068.P3225990652325171050

`Δ[abs(A005408(n+1)²-A273304(n+1))]`
-/

namespace A271068.P3225990652325171050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 (n + 1) ^ 2 - A273304 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271068.P3225990652325171050

/-! ## A271068.P3420883086062017887

`Δ[abs(A144396(n+1)²-A273304(n+1))]`
-/

namespace A271068.P3420883086062017887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144396 (n + 1) ^ 2 - A273304 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271068.P3420883086062017887

/-!
# A271069: Number of nXnXn triangular 0..1 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271069, there is no canonical definition to state claims against.
-/

/-! ## A271069.P14155076090574939253

`A271075(∑[n+1])`
-/

namespace A271069.P14155076090574939253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271069.P14155076090574939253

/-! ## A271069.P4611383848786028403

`record[A271075(∑[A057979(n)])]`
-/

namespace A271069.P4611383848786028403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271069.P4611383848786028403

/-! ## A271069.P5025784878653264782

`record[A271075(∑[A145677(n)])]`
-/

namespace A271069.P5025784878653264782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271069.P5025784878653264782

/-! ## A271069.P13252829015999948617

`record[A271075(A115017(n+1))]`
-/

namespace A271069.P13252829015999948617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271069.P13252829015999948617

/-! ## A271069.P14858558756911755403

`record[A103451(n)*A271075(n+1)]`
-/

namespace A271069.P14858558756911755403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A271075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271069.P14858558756911755403

/-!
# A271070: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271070, there is no canonical definition to state claims against.
-/

/-! ## A271070.P7448476320938166097

`A271075(∑[n+2])`
-/

namespace A271070.P7448476320938166097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271070.P7448476320938166097

/-! ## A271070.P83153581752815632

`record[gcd(A213177(n), A271075(n+1))]`
-/

namespace A271070.P83153581752815632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213177 n) (A271075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271070.P83153581752815632

/-! ## A271070.P17538048056967085594

`record[and(A111967(n), A271075(n+1))]`
-/

namespace A271070.P17538048056967085594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111967 n) (A271075 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271070.P17538048056967085594

/-! ## A271070.P8981882779949192854

`record[A129184(n+1)*A271075(n+1)]`
-/

namespace A271070.P8981882779949192854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1) * A271075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271070.P8981882779949192854

/-! ## A271070.P7825546809134750454

`record[A271075(A056699(n+1)-A002262(n))]`
-/

namespace A271070.P7825546809134750454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A056699 (n + 1) - A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271070.P7825546809134750454

/-!
# A271071: Number of nXnXn triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271071, there is no canonical definition to state claims against.
-/

/-! ## A271071.P15668256383942941510

`A271075(∑[n+3]+1)`
-/

namespace A271071.P15668256383942941510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271071.P15668256383942941510

/-! ## A271071.P18179597030596628107

`record[A271075(A198464(n+1))]`
-/

namespace A271071.P18179597030596628107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271071.P18179597030596628107

/-! ## A271071.P4881017478583629795

`record[char[A055998(n)]*A271075(n+1)]`
-/

namespace A271071.P4881017478583629795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271071.P4881017478583629795

/-! ## A271071.P4619353796968343596

`record[char[A141214(n)]*A271075(n+1)]`
-/

namespace A271071.P4619353796968343596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271071.P4619353796968343596

/-! ## A271071.P14981120737440654060

`record[A271075(A115017(n+1)+A002262(n))]`
-/

namespace A271071.P14981120737440654060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A115017 (n + 1) + A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271071.P14981120737440654060

/-!
# A271072: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271072, there is no canonical definition to state claims against.
-/

/-! ## A271072.P11505793711093950061

`A271075(A141214(n+1))`
-/

namespace A271072.P11505793711093950061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A141214 (n + 1)).toNat

end

end A271072.P11505793711093950061

/-! ## A271072.P15084082250866453697

`A271075(A027379(n+2))`
-/

namespace A271072.P15084082250866453697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A027379 (n + 2)).toNat

end

end A271072.P15084082250866453697

/-! ## A271072.P17045392719799760313

`A271075(A055998(n+2))`
-/

namespace A271072.P17045392719799760313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (A055998 (n + 2)).toNat

end

end A271072.P17045392719799760313

/-! ## A271072.P8125911113608945124

`A271075(eq[4, A185782(n+1)])`
-/

namespace A271072.P8125911113608945124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271072.P8125911113608945124

/-!
# A271073: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271073, there is no canonical definition to state claims against.
-/

/-! ## A271073.P12761893761395033069

`A271075(eq[5, A200329(n+1)])`
-/

namespace A271073.P12761893761395033069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271073.P12761893761395033069

/-!
# A271074: Number of nXnXn triangular 0..6 arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271074, there is no canonical definition to state claims against.
-/

/-! ## A271074.P8288491025927386900

`A271075(eq[3, A219347(n)])`
-/

namespace A271074.P8288491025927386900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271074.P8288491025927386900

/-! ## A271074.P12395787628497366380

`A271075(Δ[Δ[A006504(n+1)]])`
-/

namespace A271074.P12395787628497366380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271075 (f1 (n + 1) - f1 n).toNat

end

end A271074.P12395787628497366380

/-!
# A271075: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one 2x2x2 triangle having values all equal.

The programs for A271075, there is no canonical definition to state claims against.
-/

/-! ## A271075.P3365183751511541830

`A049639(∑[3-2*char[∑[n]]]^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A271075.P3365183751511541830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A271075.P3365183751511541830

/-! ## A271075.P18242707073853843226

`A140435(A355793(n))`
-/

namespace A271075.P18242707073853843226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140435 (A355793 n).toNat

end

end A271075.P18242707073853843226

/-! ## A271075.P11532116021374641326

`A118765(A271339(n+1))`
-/

namespace A271075.P11532116021374641326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A271339 (n + 1)).toNat

end

end A271075.P11532116021374641326

/-! ## A271075.P2350376344721656432

`A239665(A361840(n))-1`
-/

namespace A271075.P2350376344721656432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239665 (A361840 n).toNat - 1

end

end A271075.P2350376344721656432

/-! ## A271075.P17293450236083770329

`A180101(A213191(n)^3)`
-/

namespace A271075.P17293450236083770329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A213191 n ^ 3).toNat

end

end A271075.P17293450236083770329

/-!
# A271077: Number of pseudocomplemented lattices on n nodes.

The programs for A271077, there is no canonical definition to state claims against.
-/

/-! ## A271077.P14626899828051542644

`A003056(A132786(n))`
-/

namespace A271077.P14626899828051542644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A132786 n).toNat

end

end A271077.P14626899828051542644

/-! ## A271077.P3750343863979827162

`A208982(A275070(n))`
-/

namespace A271077.P3750343863979827162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208982 (A275070 n).toNat

end

end A271077.P3750343863979827162

/-! ## A271077.P10092704514337097694

`A091208(abs(A292440(n)))`
-/

namespace A271077.P10092704514337097694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 |A292440 n|.toNat

end

end A271077.P10092704514337097694

/-! ## A271077.P7773295219969922230

`∑[A004481(A366367(n))]`
-/

namespace A271077.P7773295219969922230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A366367 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271077.P7773295219969922230

/-! ## A271077.P2316620280260391254

`A261104(2*A020103(n))`
-/

namespace A271077.P2316620280260391254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (2 * A020103 n).toNat

end

end A271077.P2316620280260391254

/-!
# A271079: Residues (mod 32) of partial sums of Fibonacci numbers starting with F(2).

The programs for A271079, the canonical program `A271079.P16703048473067181508` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271079 has offset 0).

The definition of A271079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271079.P16703048473067181508

`(A000045(n+4)-2)%32`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271079

/-- `(A000045(n+4)-2)%32` -/
def P16703048473067181508.Spec : Prop :=
  ∀ n, P16703048473067181508.a n = A271079 n

theorem P16703048473067181508.correct : P16703048473067181508.Spec := by
  intro n
  simp only [A271079]

end A271079

/-!
# A271083: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A271083, there is no canonical definition to state claims against.
-/

/-! ## A271083.P4345989400228202630

`∑[A271086(abs(1-n))]+1`
-/

namespace A271083.P4345989400228202630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271086 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271083.P4345989400228202630

/-! ## A271083.P3553686240557161388

`A271086(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271083.P3553686240557161388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271086 (n - 1) + a (n - 1)

end

end A271083.P3553686240557161388

/-! ## A271083.P17756929737921582935

`∑[A271086(abs((-1)^(2*a(n-1))-n))]` with `a(0)=1`
-/

namespace A271083.P17756929737921582935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271086 (SequenceMachineLib.roundAway |(-1 : ℚ) ^ (2 * f1 (n - 1) : ℤ) - (n : ℚ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271083.P17756929737921582935

/-! ## A271083.P245950582807963272

`Δ[A271085(n)]-A271086(n)`
-/

namespace A271083.P245950582807963272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271086 n

end

end A271083.P245950582807963272

/-! ## A271083.P7176959723890144044

`A271085(n+1)-(A271086(n)+A271085(n))`
-/

namespace A271083.P7176959723890144044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271085 (n + 1) - (A271086 n + A271085 n)

end

end A271083.P7176959723890144044

/-!
# A271084: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A271084, there is no canonical definition to state claims against.
-/

/-! ## A271084.P9102013039008708003

`A271083(2^n-1)`
-/

namespace A271084.P9102013039008708003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (2 ^ n - 1)

end

end A271084.P9102013039008708003

/-! ## A271084.P11616230531848035443

`record[A271083(A154436(n))]`
-/

namespace A271084.P11616230531848035443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (A154436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271084.P11616230531848035443

/-! ## A271084.P16433632514214283021

`record[A271083(A173787(n))]`
-/

namespace A271084.P16433632514214283021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271084.P16433632514214283021

/-! ## A271084.P14747076201936427217

`and(-1, A271083(A000225(n)))`
-/

namespace A271084.P14747076201936427217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271083 (A000225 n).toNat)

end

end A271084.P14747076201936427217

/-! ## A271084.P10768600666382315499

`record[A271083(A023758(n+1))]`
-/

namespace A271084.P10768600666382315499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271084.P10768600666382315499

/-!
# A271085: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A271085, there is no canonical definition to state claims against.
-/

/-! ## A271085.P1723183057851478575

`∑[A271083(n)]`
-/

namespace A271085.P1723183057851478575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271085.P1723183057851478575

/-! ## A271085.P2569976479517713880

`A271083(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A271085.P2569976479517713880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271083 (n % (n + 1)) + a (n - 1)

end

end A271085.P2569976479517713880

/-! ## A271085.P15358710793549006271

`A271083(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271085.P15358710793549006271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271083 n + a (A023443 n).toNat

end

end A271085.P15358710793549006271

/-! ## A271085.P13829830933818296318

`A271083(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A271085.P13829830933818296318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271083 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A271085.P13829830933818296318

/-! ## A271085.P8958533535204002302

`∑[∑[A271086(n)]+1-A271086(n)]`
-/

namespace A271085.P8958533535204002302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271086 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271085.P8958533535204002302

/-!
# A271086: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A271086, there is no canonical definition to state claims against.
-/

/-! ## A271086.P17693594684056253193

`Δ[A271083(n)]`
-/

namespace A271086.P17693594684056253193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271086.P17693594684056253193

/-! ## A271086.P16629922437124034307

`A271083(n+1)-A271083(n)`
-/

namespace A271086.P16629922437124034307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (n + 1) - A271083 n

end

end A271086.P16629922437124034307

/-!
# A271087: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A271087, there is no canonical definition to state claims against.
-/

/-! ## A271087.P12069028720057872911

`A271090(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271087.P12069028720057872911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271090 (n - 1) + a (n - 1)

end

end A271087.P12069028720057872911

/-! ## A271087.P998326456382099883

`Δ[A271089(n)]-A271090(n)`
-/

namespace A271087.P998326456382099883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271090 n

end

end A271087.P998326456382099883

/-! ## A271087.P14721019811838467633

`A271089(n+1)-(A271090(n)+A271089(n))`
-/

namespace A271087.P14721019811838467633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271089 (n + 1) - (A271090 n + A271089 n)

end

end A271087.P14721019811838467633

/-! ## A271087.P4043975334937590203

`∑[Δ[A016754(n)]-A272998(n)]`
-/

namespace A271087.P4043975334937590203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A272998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271087.P4043975334937590203

/-! ## A271087.P14822596539418226747

`∑[A004771(n)+1-A272998(n)]`
-/

namespace A271087.P14822596539418226747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A272998 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271087.P14822596539418226747

/-! ## A271087.P7419933080438153518

`∑[A022144(n+1)-A272998(n)]`
-/

namespace A271087.P7419933080438153518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (n + 1) - A272998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271087.P7419933080438153518

/-! ## A271087.P13480026984573651267

`(2*n+3)²-A272995(n+1)`
-/

namespace A271087.P13480026984573651267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272995 (n + 1)

end

end A271087.P13480026984573651267

/-! ## A271087.P13569772443798998241

`∑[A022144(n+1)-Δ[A272995(n)]]`
-/

namespace A271087.P13569772443798998241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271087.P13569772443798998241

/-!
# A271088: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A271088, there is no canonical definition to state claims against.
-/

/-! ## A271088.P4706084953054997048

`A271087(2^n-1)`
-/

namespace A271088.P4706084953054997048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 (2 ^ n - 1)

end

end A271088.P4706084953054997048

/-! ## A271088.P12249585486189260765

`record[A271087(A091264(n))]`
-/

namespace A271088.P12249585486189260765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271088.P12249585486189260765

/-! ## A271088.P10226756932040544124

`record[A271087(A173787(n))]`
-/

namespace A271088.P10226756932040544124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271088.P10226756932040544124

/-! ## A271088.P15092998410820922688

`and(-1, A271087(A000225(n)))`
-/

namespace A271088.P15092998410820922688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271087 (A000225 n).toNat)

end

end A271088.P15092998410820922688

/-! ## A271088.P14059569544467625060

`record[A271087(A243071(n+1))]`
-/

namespace A271088.P14059569544467625060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271088.P14059569544467625060

/-!
# A271089: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A271089, there is no canonical definition to state claims against.
-/

/-! ## A271089.P15920863649771382482

`∑[A271087(n)]`
-/

namespace A271089.P15920863649771382482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271089.P15920863649771382482

/-! ## A271089.P13286165090800613697

`∑[A271090(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271089.P13286165090800613697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271090 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271089.P13286165090800613697

/-! ## A271089.P925742023373321980

`∑[∑[A004771(n)+1-A272998(n)]]`
-/

namespace A271089.P925742023373321980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + 1 - A272998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271089.P925742023373321980

/-! ## A271089.P15514043474649563879

`∑[(2*n+3)²-A272995(n+1)]`
-/

namespace A271089.P15514043474649563879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271089.P15514043474649563879

/-! ## A271089.P5037592154402174780

`a(n-1)+A271087(n)%A054602(4*n)` with `a(0)=1`
-/

namespace A271089.P5037592154402174780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271087 n) (A054602 (4 * n))

end

end A271089.P5037592154402174780

/-!
# A271090: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A271090, there is no canonical definition to state claims against.
-/

/-! ## A271090.P14508521594282140371

`Δ[A271087(n)]`
-/

namespace A271090.P14508521594282140371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271090.P14508521594282140371

/-! ## A271090.P5231557335562557140

`A271087(n+1)-A271087(n)`
-/

namespace A271090.P5231557335562557140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271087 (n + 1) - A271087 n

end

end A271090.P5231557335562557140

/-! ## A271090.P6762500078991824139

`Δ[(2*n+3)²]-A272998(n+1)`
-/

namespace A271090.P6762500078991824139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A272998 (n + 1)

end

end A271090.P6762500078991824139

/-! ## A271090.P10457746074213715354

`A004771(n+1)+1-A272998(n+1)`
-/

namespace A271090.P10457746074213715354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A272998 (n + 1))

end

end A271090.P10457746074213715354

/-! ## A271090.P3647976467545237209

`Δ[a(n-1)+A022144(n+1)-A272998(n)]` with `a(0)=7`
-/

namespace A271090.P3647976467545237209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + (A022144 (n + 1) - A272998 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271090.P3647976467545237209

/-! ## A271090.P13808723543787235864

`Δ[(2*n+3)²-A272995(n+1)]`
-/

namespace A271090.P13808723543787235864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271090.P13808723543787235864

/-!
# A271091: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

The programs for A271091, the canonical program `A271091.P2497962609040291097` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271091 has offset 0).

The definition of A271091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271091.P2497962609040291097

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=5, a(3)=40, a(4)=5, a(5)=112, a(6)=5, a(7)=216`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271091

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P2497962609040291097.Spec : Prop :=
  ∀ n, P2497962609040291097.a n = A271091 n

theorem P2497962609040291097.correct : P2497962609040291097.Spec := by
  intro n
  simp only [A271091]

end A271091

/-! ## A271091.P4534568305238233525

`A168269(n)²-a(n-1)-4` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A271091.P4534568305238233525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 5] fun n a =>
  A168269 n ^ 2 - a (n - 1) - 4

end

end A271091.P4534568305238233525

namespace A271091

/-- `A168269(n)²-a(n-1)-4` -/
def P4534568305238233525.Spec : Prop :=
  ∀ n, P4534568305238233525.a n = A271091 n

end A271091

/-! ## A271091.P5911594566650055583

`xor(A174571(A019426(n)), A269906(n))`
-/

namespace A271091.P5911594566650055583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A174571 (A019426 n).toNat) (A269906 n)

end

end A271091.P5911594566650055583

namespace A271091

/-- `xor(A174571(A019426(n)), A269906(n))` -/
def P5911594566650055583.Spec : Prop :=
  ∀ n, P5911594566650055583.a n = A271091 n

end A271091

/-! ## A271091.P17838415673459138772

`A267048(A019425(n))+A266722(n)²`
-/

namespace A271091.P17838415673459138772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267048 (A019425 n).toNat + A266722 n ^ 2

end

end A271091.P17838415673459138772

namespace A271091

/-- `A267048(A019425(n))+A266722(n)²` -/
def P17838415673459138772.Spec : Prop :=
  ∀ n, P17838415673459138772.a n = A271091 n

end A271091

/-! ## A271091.P18379114871988615574

`A271054(n)+4%A266303(n)`
-/

namespace A271091.P18379114871988615574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n + Int.tmod 4 (A266303 n)

end

end A271091.P18379114871988615574

namespace A271091

/-- `A271054(n)+4%A266303(n)` -/
def P18379114871988615574.Spec : Prop :=
  ∀ n, P18379114871988615574.a n = A271091 n

end A271091

/-! ## A271091.P2694876093142326980

`A271057(and(1, -A271054(n)))+A271054(n)`
-/

namespace A271091.P2694876093142326980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271057 (Int.land 1 (-A271054 n)).toNat + A271054 n

end

end A271091.P2694876093142326980

namespace A271091

/-- `A271057(and(1, -A271054(n)))+A271054(n)` -/
def P2694876093142326980.Spec : Prop :=
  ∀ n, P2694876093142326980.a n = A271091 n

end A271091

/-! ## A271091.P6664261560934085012

`A271054(n)+and(4, A271057(n)-A271054(n))`
-/

namespace A271091.P6664261560934085012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n + Int.land 4 (A271057 n - A271054 n)

end

end A271091.P6664261560934085012

namespace A271091

/-- `A271054(n)+and(4, A271057(n)-A271054(n))` -/
def P6664261560934085012.Spec : Prop :=
  ∀ n, P6664261560934085012.a n = A271091 n

end A271091

/-! ## A271091.P2622221584870654644

`A271094(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271091.P2622221584870654644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271094 (n - 1) + a (n - 1)

end

end A271091.P2622221584870654644

namespace A271091

/-- `A271094(n-1)+a(n-1)` -/
def P2622221584870654644.Spec : Prop :=
  ∀ n, P2622221584870654644.a n = A271091 n

end A271091

/-! ## A271091.P2809913979485680877

`Δ[A271093(n)]-A271094(n)`
-/

namespace A271091.P2809913979485680877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271094 n

end

end A271091.P2809913979485680877

namespace A271091

/-- `Δ[A271093(n)]-A271094(n)` -/
def P2809913979485680877.Spec : Prop :=
  ∀ n, P2809913979485680877.a n = A271091 n

end A271091

/-! ## A271091.P7511920331965479867

`A271093(n+1)-(A271094(n)+A271093(n))`
-/

namespace A271091.P7511920331965479867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271093 (n + 1) - (A271094 n + A271093 n)

end

end A271091.P7511920331965479867

namespace A271091

/-- `A271093(n+1)-(A271094(n)+A271093(n))` -/
def P7511920331965479867.Spec : Prop :=
  ∀ n, P7511920331965479867.a n = A271091 n

end A271091

/-!
# A271092: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

The programs for A271092, the canonical program `A271092.P17829346138673400981` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271092 has offset 0).

The definition of A271092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271092.P16694192903089209404

`A273310(n)+char[1]`
-/

namespace A271092.P16694192903089209404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271092.P16694192903089209404

namespace A271092

/-- `A273310(n)+char[1]` -/
def P16694192903089209404.Spec : Prop :=
  ∀ n, P16694192903089209404.a n = A271092 n

end A271092

/-! ## A271092.P586626394182892949

`A273313(n)-floor(atan(n))`
-/

namespace A271092.P586626394182892949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - ⌊Real.arctan (n : ℝ)⌋

end

end A271092.P586626394182892949

namespace A271092

/-- `A273313(n)-floor(atan(n))` -/
def P586626394182892949.Spec : Prop :=
  ∀ n, P586626394182892949.a n = A271092 n

end A271092

/-! ## A271092.P14201215115271354694

`A273418(n)+A134824(n)`
-/

namespace A271092.P14201215115271354694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273418 n + A134824 n

end

end A271092.P14201215115271354694

namespace A271092

/-- `A273418(n)+A134824(n)` -/
def P14201215115271354694.Spec : Prop :=
  ∀ n, P14201215115271354694.a n = A271092 n

end A271092

/-! ## A271092.P15361793770678171036

`A273313(n)-A157928(n)`
-/

namespace A271092.P15361793770678171036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - A157928 n

end

end A271092.P15361793770678171036

namespace A271092

/-- `A273313(n)-A157928(n)` -/
def P15361793770678171036.Spec : Prop :=
  ∀ n, P15361793770678171036.a n = A271092 n

end A271092

/-! ## A271092.P404924326233474568

`xor(A057427(n), A273418(n))`
-/

namespace A271092.P404924326233474568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A273418 n)

end

end A271092.P404924326233474568

namespace A271092

/-- `xor(A057427(n), A273418(n))` -/
def P404924326233474568.Spec : Prop :=
  ∀ n, P404924326233474568.a n = A271092 n

end A271092

/-! ## A271092.P13280549609641256453

`xor(A063524(n), A273310(n))`
-/

namespace A271092.P13280549609641256453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A273310 n)

end

end A271092.P13280549609641256453

namespace A271092

/-- `xor(A063524(n), A273310(n))` -/
def P13280549609641256453.Spec : Prop :=
  ∀ n, P13280549609641256453.a n = A271092 n

end A271092

/-! ## A271092.P820454511853909499

`xor(A019431(2*n), A273418(n))`
-/

namespace A271092.P820454511853909499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019431 (2 * n)) (A273418 n)

end

end A271092.P820454511853909499

namespace A271092

/-- `xor(A019431(2*n), A273418(n))` -/
def P820454511853909499.Spec : Prop :=
  ∀ n, P820454511853909499.a n = A271092 n

end A271092

/-! ## A271092.P7249817335965592744

`A273313(n)-char[A000463(n+1)+1]`
-/

namespace A271092.P7249817335965592744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A271092.P7249817335965592744

namespace A271092

/-- `A273313(n)-char[A000463(n+1)+1]` -/
def P7249817335965592744.Spec : Prop :=
  ∀ n, P7249817335965592744.a n = A271092 n

end A271092

/-! ## A271092.P5901244581595948219

`A273313(n)+A057428(A057428(n)+n)`
-/

namespace A271092.P5901244581595948219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n + A057428 (A057428 n + (n : ℤ)).toNat

end

end A271092.P5901244581595948219

namespace A271092

/-- `A273313(n)+A057428(A057428(n)+n)` -/
def P5901244581595948219.Spec : Prop :=
  ∀ n, P5901244581595948219.a n = A271092 n

end A271092

/-! ## A271092.P13807602355099926629

`A273313(n)-A057427(n-A057427(n))`
-/

namespace A271092.P13807602355099926629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A271092.P13807602355099926629

namespace A271092

/-- `A273313(n)-A057427(n-A057427(n))` -/
def P13807602355099926629.Spec : Prop :=
  ∀ n, P13807602355099926629.a n = A271092 n

end A271092

/-! ## A271092.P17829346138673400981

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=40, a(3)=216, a(4)=952`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A271092

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P17829346138673400981.Spec : Prop :=
  ∀ n, P17829346138673400981.a n = A271092 n

theorem P17829346138673400981.correct : P17829346138673400981.Spec := by
  intro n
  simp only [A271092]

end A271092

/-! ## A271092.P12374503980381019148

`or(A000007(∑[n]-n), A273310(n))`
-/

namespace A271092.P12374503980381019148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (∑ j ∈ Finset.range (n + 1), f1 j - n)) (A273310 n)

end

end A271092.P12374503980381019148

namespace A271092

/-- `or(A000007(∑[n]-n), A273310(n))` -/
def P12374503980381019148.Spec : Prop :=
  ∀ n, P12374503980381019148.a n = A271092 n

end A271092

/-!
# A271093: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

The programs for A271093, the canonical program `A271093.P9797536221965603651` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271093 has offset 0).

The definition of A271093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271093.P9797536221965603651

`∑[A271091(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271093

/-- `∑[A271091(n)]` -/
def P9797536221965603651.Spec : Prop :=
  ∀ n, P9797536221965603651.a n = A271093 n

theorem P9797536221965603651.correct : P9797536221965603651.Spec := by
  intro n
  simp only [A271093]

end A271093

/-! ## A271093.P6358187562942627275

`A271091(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A271093.P6358187562942627275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271091 (A004526 (2 * n)).toNat + a (n - 1)

end

end A271093.P6358187562942627275

namespace A271093

/-- `A271091(A004526(2*n))+a(n-1)` -/
def P6358187562942627275.Spec : Prop :=
  ∀ n, P6358187562942627275.a n = A271093 n

end A271093

/-! ## A271093.P5052771890221239193

`a(n-1)+A271091(n)+A000007(n)` with `a(0)=1`
-/

namespace A271093.P5052771890221239193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271091 n + A000007 n)

end

end A271093.P5052771890221239193

namespace A271093

/-- `a(n-1)+A271091(n)+A000007(n)` -/
def P5052771890221239193.Spec : Prop :=
  ∀ n, P5052771890221239193.a n = A271093 n

end A271093

/-! ## A271093.P11537450046186670458

`a(n-1)+A271091(n)+A000038(n)` with `a(0)=1`
-/

namespace A271093.P11537450046186670458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271091 n + A000038 n)

end

end A271093.P11537450046186670458

namespace A271093

/-- `a(n-1)+A271091(n)+A000038(n)` -/
def P11537450046186670458.Spec : Prop :=
  ∀ n, P11537450046186670458.a n = A271093 n

end A271093

/-! ## A271093.P15180504170451857451

`A271091(n*A057427(n))+a(n-1)` with `a(0)=1`
-/

namespace A271093.P15180504170451857451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271091 ((n : ℤ) * A057427 n).toNat + a (n - 1)

end

end A271093.P15180504170451857451

namespace A271093

/-- `A271091(n*A057427(n))+a(n-1)` -/
def P15180504170451857451.Spec : Prop :=
  ∀ n, P15180504170451857451.a n = A271093 n

end A271093

/-! ## A271093.P11937863428402105037

`∑[A271054(n)+4%A000005(A271054(n))]`
-/

namespace A271093.P11937863428402105037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n + Int.tmod 4 (A000005 (A271054 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271093.P11937863428402105037

namespace A271093

/-- `∑[A271054(n)+4%A000005(A271054(n))]` -/
def P11937863428402105037.Spec : Prop :=
  ∀ n, P11937863428402105037.a n = A271093 n

end A271093

/-! ## A271093.P1603162351257514550

`∑[A271054(n)+A007814(A271054(n))²]`
-/

namespace A271093.P1603162351257514550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n + A007814 (A271054 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271093.P1603162351257514550

namespace A271093

/-- `∑[A271054(n)+A007814(A271054(n))²]` -/
def P1603162351257514550.Spec : Prop :=
  ∀ n, P1603162351257514550.a n = A271093 n

end A271093

/-!
# A271094: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

The programs for A271094, the canonical program `A271094.P8045953210772745392` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271094 has offset 0).

The definition of A271094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271094.P8045953210772745392

`Δ[A271091(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271094

/-- `Δ[A271091(n)]` -/
def P8045953210772745392.Spec : Prop :=
  ∀ n, P8045953210772745392.a n = A271094 n

theorem P8045953210772745392.correct : P8045953210772745392.Spec := by
  intro n
  simp only [A271094]

end A271094

/-! ## A271094.P6880760455038367374

`A271091(n+1)-A271091(n)`
-/

namespace A271094.P6880760455038367374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 (n + 1) - A271091 n

end

end A271094.P6880760455038367374

namespace A271094

/-- `A271091(n+1)-A271091(n)` -/
def P6880760455038367374.Spec : Prop :=
  ∀ n, P6880760455038367374.a n = A271094 n

theorem P6880760455038367374.correct : P6880760455038367374.Spec := by
  intro n
  simp only [A271094, Nat.add_sub_cancel, A271094.P6880760455038367374.a, A271094.P8045953210772745392.f1, A271094.P8045953210772745392.a, SequenceMachineLib.memo_apply]

end A271094

/-! ## A271094.P5250200500348604534

`Δ[A271054(n)+4%A266303(n)]`
-/

namespace A271094.P5250200500348604534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n + Int.tmod 4 (A266303 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271094.P5250200500348604534

namespace A271094

/-- `Δ[A271054(n)+4%A266303(n)]` -/
def P5250200500348604534.Spec : Prop :=
  ∀ n, P5250200500348604534.a n = A271094 n

end A271094

/-! ## A271094.P18352422333708676571

`Δ[A267048(A019425(n))+A266722(n)²]`
-/

namespace A271094.P18352422333708676571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267048 (A019425 n).toNat + A266722 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271094.P18352422333708676571

namespace A271094

/-- `Δ[A267048(A019425(n))+A266722(n)²]` -/
def P18352422333708676571.Spec : Prop :=
  ∀ n, P18352422333708676571.a n = A271094 n

end A271094

/-! ## A271094.P759044853987651646

`A269909(n+1)+A269909(n)-A270937(n+1)`
-/

namespace A271094.P759044853987651646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269909 (n + 1) + (A269909 n - A270937 (n + 1))

end

end A271094.P759044853987651646

namespace A271094

/-- `A269909(n+1)+A269909(n)-A270937(n+1)` -/
def P759044853987651646.Spec : Prop :=
  ∀ n, P759044853987651646.a n = A271094 n

end A271094

/-! ## A271094.P15579539757269303461

`Δ[A165754(A271054(n))]`
-/

namespace A271094.P15579539757269303461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A271054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271094.P15579539757269303461

namespace A271094

/-- `Δ[A165754(A271054(n))]` -/
def P15579539757269303461.Spec : Prop :=
  ∀ n, P15579539757269303461.a n = A271094 n

end A271094

/-!
# A271095: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A271095, there is no canonical definition to state claims against.
-/

/-! ## A271095.P7539103603771346864

`A271098(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271095.P7539103603771346864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271098 (n - 1) + a (n - 1)

end

end A271095.P7539103603771346864

/-! ## A271095.P11079824502629261276

`Δ[A271097(n)]-A271098(n)`
-/

namespace A271095.P11079824502629261276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271098 n

end

end A271095.P11079824502629261276

/-! ## A271095.P10750881040450661671

`A271097(n+1)-(A271098(n)+A271097(n))`
-/

namespace A271095.P10750881040450661671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271097 (n + 1) - (A271098 n + A271097 n)

end

end A271095.P10750881040450661671

/-! ## A271095.P15446312471310110587

`∑[8*(n+1)-Δ[A273175(n)]]`
-/

namespace A271095.P15446312471310110587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271095.P15446312471310110587

/-! ## A271095.P11065034668886455681

`(2*n+3)²-A273175(n+1)`
-/

namespace A271095.P11065034668886455681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273175 (n + 1)

end

end A271095.P11065034668886455681

/-! ## A271095.P10965242534807181474

`∑[8*(n+1)-A273178(n)]`
-/

namespace A271095.P10965242534807181474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A273178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271095.P10965242534807181474

/-!
# A271096: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A271096, there is no canonical definition to state claims against.
-/

/-! ## A271096.P15190510695352345132

`A271095(2^n-1)`
-/

namespace A271096.P15190510695352345132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 (2 ^ n - 1)

end

end A271096.P15190510695352345132

/-! ## A271096.P13018967396907479402

`record[A271095(A243071(n+1))]`
-/

namespace A271096.P13018967396907479402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271096.P13018967396907479402

/-! ## A271096.P4655851847603846979

`record[A271095(A323243(n+1))]`
-/

namespace A271096.P4655851847603846979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271096.P4655851847603846979

/-! ## A271096.P11342312644022446029

`record[A271095(A324876(n+1))]`
-/

namespace A271096.P11342312644022446029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 (A324876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271096.P11342312644022446029

/-! ## A271096.P9980524800043860143

`A271095(A000225(n))+char[13]`
-/

namespace A271096.P9980524800043860143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271096.P9980524800043860143

/-!
# A271097: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A271097, there is no canonical definition to state claims against.
-/

/-! ## A271097.P6027364399472976543

`∑[∑[A271098(n)]+1-A271098(n)]`
-/

namespace A271097.P6027364399472976543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271098 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271098 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271097.P6027364399472976543

/-! ## A271097.P14451889884236749922

`∑[A271095(n)]`
-/

namespace A271097.P14451889884236749922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271097.P14451889884236749922

/-! ## A271097.P15664088671934810630

`a(n-1)+A271095(n)+A000007(n)` with `a(0)=1`
-/

namespace A271097.P15664088671934810630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271095 n + A000007 n)

end

end A271097.P15664088671934810630

/-! ## A271097.P8566732088827277372

`∑[(2*n+3)²-A273175(n+1)]`
-/

namespace A271097.P8566732088827277372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271097.P8566732088827277372

/-! ## A271097.P3082975852307322817

`∑[∑[8*(n+1)-A273178(n)]]`
-/

namespace A271097.P3082975852307322817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A273178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271097.P3082975852307322817

/-!
# A271098: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A271098, there is no canonical definition to state claims against.
-/

/-! ## A271098.P16793493029487842979

`Δ[A271095(n)]`
-/

namespace A271098.P16793493029487842979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271098.P16793493029487842979

/-! ## A271098.P14124887835886172748

`A271095(n+1)-A271095(n)`
-/

namespace A271098.P14124887835886172748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271095 (n + 1) - A271095 n

end

end A271098.P14124887835886172748

/-! ## A271098.P7246601669141185827

`Δ[∑[8*(n+1)]-A273175(n+1)]`
-/

namespace A271098.P7246601669141185827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A273175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271098.P7246601669141185827

/-! ## A271098.P15839048111701008761

`8*(n+2)-A273178(n+1)`
-/

namespace A271098.P15839048111701008761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273178 (n + 1)

end

end A271098.P15839048111701008761

/-! ## A271098.P14447099121237281199

`a(n-1)+8-Δ[A273178(n)]` with `a(0)=4`
-/

namespace A271098.P14447099121237281199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273178 n

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (8 - (f1 (n + 1) - f1 n))

end

end A271098.P14447099121237281199

