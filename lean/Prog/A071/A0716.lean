import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A071600: Numbers k such that k and prime(k) have the same number of 1's in their binary representation.

The programs for A071600, the canonical program `A071600.P4019860995872328944` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071600 has offset 1).

The definition of A071600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071600.P12743561651401843166

`A049084(A072439(n+1))`
-/

namespace A071600.P12743561651401843166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A072439 (n + 1)).toNat

end

end A071600.P12743561651401843166

namespace A071600

/-- `A049084(A072439(n+1))` -/
def P12743561651401843166.Spec : Prop :=
  ∀ n, P12743561651401843166.a n = A071600 (n + 1)

end A071600

/-! ## A071600.P1769277761743378860

`record[gcd(n+1, A090455(n+1))]`
-/

namespace A071600.P1769277761743378860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A090455 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071600.P1769277761743378860

namespace A071600

/-- `record[gcd(n+1, A090455(n+1))]` -/
def P1769277761743378860.Spec : Prop :=
  ∀ n, (P1769277761743378860.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P4019860995872328944

`eq[A000120(n+1), A014499(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071600

/-- `eq[A000120(n+1), A014499(n+1)]+1` -/
def P4019860995872328944.Spec : Prop :=
  ∀ n, (P4019860995872328944.a n : ℤ) = A071600 (n + 1)

theorem P4019860995872328944.correct : P4019860995872328944.Spec := by
  intro n
  simp only [A071600, Nat.add_sub_cancel]

end A071600

/-! ## A071600.P18071893154674471412

`eq[A001316(A008578(n+1)), A001316(n)]`
-/

namespace A071600.P18071893154674471412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071600.P18071893154674471412

namespace A071600

/-- `eq[A001316(A008578(n+1)), A001316(n)]` -/
def P18071893154674471412.Spec : Prop :=
  ∀ n, (P18071893154674471412.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P3137227864735093055

`eq[A001316(A000040(n+1)), A001316(n+1)]+1`
-/

namespace A071600.P3137227864735093055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071600.P3137227864735093055

namespace A071600

/-- `eq[A001316(A000040(n+1)), A001316(n+1)]+1` -/
def P3137227864735093055.Spec : Prop :=
  ∀ n, (P3137227864735093055.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P13750693763883292138

`eq[A001316(A162753(2*n+1)), A001316(n)]`
-/

namespace A071600.P13750693763883292138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A162753 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071600.P13750693763883292138

namespace A071600

/-- `eq[A001316(A162753(2*n+1)), A001316(n)]` -/
def P13750693763883292138.Spec : Prop :=
  ∀ n, (P13750693763883292138.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P2463872954540435061

`A082666(A072439(2*n+1-n))`
-/

namespace A071600.P2463872954540435061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082666 (A072439 (2 * n + 1 - n)).toNat

end

end A071600.P2463872954540435061

namespace A071600

/-- `A082666(A072439(2*n+1-n))` -/
def P2463872954540435061.Spec : Prop :=
  ∀ n, P2463872954540435061.a n = A071600 (n + 1)

end A071600

/-! ## A071600.P14376419852579061342

`eq[A000120(A008578(n+1)), A000120(n)]`
-/

namespace A071600.P14376419852579061342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071600.P14376419852579061342

namespace A071600

/-- `eq[A000120(A008578(n+1)), A000120(n)]` -/
def P14376419852579061342.Spec : Prop :=
  ∀ n, (P14376419852579061342.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P5402232764215356180

`eq[A048883(A008578(n+1)), A048883(n)]`
-/

namespace A071600.P5402232764215356180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071600.P5402232764215356180

namespace A071600

/-- `eq[A048883(A008578(n+1)), A048883(n)]` -/
def P5402232764215356180.Spec : Prop :=
  ∀ n, (P5402232764215356180.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P6369379032460293197

`eq[A102376(A008578(n+1)), A102376(n)]`
-/

namespace A071600.P6369379032460293197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071600.P6369379032460293197

namespace A071600

/-- `eq[A102376(A008578(n+1)), A102376(n)]` -/
def P6369379032460293197.Spec : Prop :=
  ∀ n, (P6369379032460293197.a n : ℤ) = A071600 (n + 1)

end A071600

/-! ## A071600.P9417629534462039664

`eq[A147582(A008578(n+1)+1), A147582(n+1)]`
-/

namespace A071600.P9417629534462039664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A008578 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071600.P9417629534462039664

namespace A071600

/-- `eq[A147582(A008578(n+1)+1), A147582(n+1)]` -/
def P9417629534462039664.Spec : Prop :=
  ∀ n, (P9417629534462039664.a n : ℤ) = A071600 (n + 1)

end A071600

/-!
# A071601: Numbers k such that k and phi(k) have the same number of 1's in their binary representation.

The programs for A071601, the canonical program `A071601.P1755047745125711473` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071601 has offset 1).

The definition of A071601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071601.P1755047745125711473

`eq[A001316(A000010(n+1)), A001316(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071601

/-- `eq[A001316(A000010(n+1)), A001316(n+1)]+1` -/
def P1755047745125711473.Spec : Prop :=
  ∀ n, (P1755047745125711473.a n : ℤ) = A071601 (n + 1)

theorem P1755047745125711473.correct : P1755047745125711473.Spec := by
  intro n
  simp only [A071601, Nat.add_sub_cancel]

end A071601

/-! ## A071601.P7070574752951529322

`eq[A050315(n+1), A050315(A000010(n+1))]+1`
-/

namespace A071601.P7070574752951529322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071601.P7070574752951529322

namespace A071601

/-- `eq[A050315(n+1), A050315(A000010(n+1))]+1` -/
def P7070574752951529322.Spec : Prop :=
  ∀ n, (P7070574752951529322.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P10027960774537826703

`eq[A000120(n+1), A295660(n+1)]+1`
-/

namespace A071601.P10027960774537826703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071601.P10027960774537826703

namespace A071601

/-- `eq[A000120(n+1), A295660(n+1)]+1` -/
def P10027960774537826703.Spec : Prop :=
  ∀ n, (P10027960774537826703.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P14975712649147446682

`eq[A000120(n), A295660(A008574(n))]`
-/

namespace A071601.P14975712649147446682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071601.P14975712649147446682

namespace A071601

/-- `eq[A000120(n), A295660(A008574(n))]` -/
def P14975712649147446682.Spec : Prop :=
  ∀ n, (P14975712649147446682.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P10372697274396437107

`eq[A000120(n), A295660(A028310(n))]`
-/

namespace A071601.P10372697274396437107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071601.P10372697274396437107

namespace A071601

/-- `eq[A000120(n), A295660(A028310(n))]` -/
def P10372697274396437107.Spec : Prop :=
  ∀ n, (P10372697274396437107.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P15690606727548315260

`eq[A000120(A000010(n+1)), A000120(n+1)]+1`
-/

namespace A071601.P15690606727548315260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071601.P15690606727548315260

namespace A071601

/-- `eq[A000120(A000010(n+1)), A000120(n+1)]+1` -/
def P15690606727548315260.Spec : Prop :=
  ∀ n, (P15690606727548315260.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P11166984289202347465

`eq[A000120(n), A295660(A022144(n))]`
-/

namespace A071601.P11166984289202347465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071601.P11166984289202347465

namespace A071601

/-- `eq[A000120(n), A295660(A022144(n))]` -/
def P11166984289202347465.Spec : Prop :=
  ∀ n, (P11166984289202347465.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P2718211332158077571

`eq[A000120(n), A000120(A225530(n))]`
-/

namespace A071601.P2718211332158077571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071601.P2718211332158077571

namespace A071601

/-- `eq[A000120(n), A000120(A225530(n))]` -/
def P2718211332158077571.Spec : Prop :=
  ∀ n, (P2718211332158077571.a n : ℤ) = A071601 (n + 1)

end A071601

/-! ## A071601.P7590664938281458967

`eq[A001316(n), A001316(A225530(n))]`
-/

namespace A071601.P7590664938281458967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071601.P7590664938281458967

namespace A071601

/-- `eq[A001316(n), A001316(A225530(n))]` -/
def P7590664938281458967.Spec : Prop :=
  ∀ n, (P7590664938281458967.a n : ℤ) = A071601 (n + 1)

end A071601

/-!
# A071602: Sum of the reverses of the first n primes.

The programs for A071602, there is no canonical definition to state claims against.
-/

/-! ## A071602.P10624015016596909438

`∑[A004087(n+1)]`
-/

namespace A071602.P10624015016596909438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P10624015016596909438

/-! ## A071602.P11185928732825917596

`∑[A061227(n)-A000040(n+1)]`
-/

namespace A071602.P11185928732825917596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061227 n - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P11185928732825917596

/-! ## A071602.P11750907463434980429

`∑[A000040(n+1)-A068396(n+1)]`
-/

namespace A071602.P11750907463434980429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A068396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P11750907463434980429

/-! ## A071602.P1235127059535060475

`∑[A133019(n+1)/A000040(n+1)]`
-/

namespace A071602.P1235127059535060475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133019 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P1235127059535060475

/-! ## A071602.P4234813474005093663

`∑[A004086(Δ[A007504(n)])]`
-/

namespace A071602.P4234813474005093663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P4234813474005093663

/-! ## A071602.P6529249717961629544

`∑[A004086(A000040(n+1))]`
-/

namespace A071602.P6529249717961629544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P6529249717961629544

/-! ## A071602.P1325923704979011588

`∑[A004086(A008578(n+2))]`
-/

namespace A071602.P1325923704979011588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P1325923704979011588

/-! ## A071602.P1623985855523100215

`∑[A004086(∑[A054541(n+1)])]`
-/

namespace A071602.P1623985855523100215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P1623985855523100215

/-! ## A071602.P16914726413448965244

`∑[A004086(record[A006530(n+2)])]`
-/

namespace A071602.P16914726413448965244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P16914726413448965244

/-! ## A071602.P13800046579809613514

`∑[A004086(record[A020639(n+2)])]`
-/

namespace A071602.P13800046579809613514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P13800046579809613514

/-! ## A071602.P7519332522429134234

`∑[A004086(record[A000010(n+1)+1])]`
-/

namespace A071602.P7519332522429134234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P7519332522429134234

/-! ## A071602.P10019603281642732477

`∑[A004086(record[A014963(n+2)])]`
-/

namespace A071602.P10019603281642732477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P10019603281642732477

/-! ## A071602.P17461483162550331507

`∑[A004086(lt[n, A014963(n+2)]+2)]`
-/

namespace A071602.P17461483162550331507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071602.P17461483162550331507

/-!
# A071603: Number of different positive integers that we can obtain from the integers {1,2,...,n} using each number at most once and the operators +, -, *, /, where intermediate subexpressions must be integers.

The programs for A071603, there is no canonical definition to state claims against.
-/

/-! ## A071603.P14162267653978011617

`A248612(A014330(n))-1`
-/

namespace A071603.P14162267653978011617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248612 (A014330 n).toNat - 1

end

end A071603.P14162267653978011617

/-! ## A071603.P12791561241894736004

`∑[∑[A206805(A300632(n))]]`
-/

namespace A071603.P12791561241894736004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (A300632 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071603.P12791561241894736004

/-!
# A071604: a(n) is the number of 7-smooth numbers <= n.

The programs for A071604, the canonical program `A071604.P12248178017894068609` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071604 has offset 1).

The definition of A071604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071604.P12248178017894068609

`∑[∏{p}[n+1, C(#, C(#, 6))]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071604

/-- `∑[∏{p}[n+1, C(#, C(#, 6))]]` -/
def P12248178017894068609.Spec : Prop :=
  ∀ n, (P12248178017894068609.a n : ℤ) = A071604 (n + 1)

theorem P12248178017894068609.correct : P12248178017894068609.Spec := by
  intro n
  simp only [A071604, Nat.add_sub_cancel]

end A071604

/-! ## A071604.P2744196449052075910

`∑[A086299(n+1)]`
-/

namespace A071604.P2744196449052075910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P2744196449052075910

namespace A071604

/-- `∑[A086299(n+1)]` -/
def P2744196449052075910.Spec : Prop :=
  ∀ n, P2744196449052075910.a n = A071604 (n + 1)

end A071604

/-! ## A071604.P1848531334386751670

`∑[char[A002473(n+1)-1]]`
-/

namespace A071604.P1848531334386751670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P1848531334386751670

namespace A071604

/-- `∑[char[A002473(n+1)-1]]` -/
def P1848531334386751670.Spec : Prop :=
  ∀ n, (P1848531334386751670.a n : ℤ) = A071604 (n + 1)

end A071604

/-! ## A071604.P4029531767779013207

`∑[char[lt[A006530(n+1), 8]]]`
-/

namespace A071604.P4029531767779013207
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P4029531767779013207

namespace A071604

/-- `∑[char[lt[A006530(n+1), 8]]]` -/
def P4029531767779013207.Spec : Prop :=
  ∀ n, (P4029531767779013207.a n : ℤ) = A071604 (n + 1)

end A071604

/-! ## A071604.P9845833698417742047

`∑[C(7, A006530(7*(n+1)))]`
-/

namespace A071604.P9845833698417742047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A006530 (7 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P9845833698417742047

namespace A071604

/-- `∑[C(7, A006530(7*(n+1)))]` -/
def P9845833698417742047.Spec : Prop :=
  ∀ n, (P9845833698417742047.a n : ℤ) = A071604 (n + 1)

end A071604

/-! ## A071604.P10816402446891177531

`∑[C(A071785(n+1), n+1)]`
-/

namespace A071604.P10816402446891177531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071785 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P10816402446891177531

namespace A071604

/-- `∑[C(A071785(n+1), n+1)]` -/
def P10816402446891177531.Spec : Prop :=
  ∀ n, (P10816402446891177531.a n : ℤ) = A071604 (n + 1)

end A071604

/-! ## A071604.P15932585196900839776

`∑[C(A262401(n+1), n+1)]`
-/

namespace A071604.P15932585196900839776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262401 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P15932585196900839776

namespace A071604

/-- `∑[C(A262401(n+1), n+1)]` -/
def P15932585196900839776.Spec : Prop :=
  ∀ n, (P15932585196900839776.a n : ℤ) = A071604 (n + 1)

end A071604

/-! ## A071604.P13180794077055903489

`∑[char[lt[n-A243291(n+1), 4]]]`
-/

namespace A071604.P13180794077055903489
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P13180794077055903489

namespace A071604

/-- `∑[char[lt[n-A243291(n+1), 4]]]` -/
def P13180794077055903489.Spec : Prop :=
  ∀ n, (P13180794077055903489.a n : ℤ) = A071604 (n + 1)

end A071604

/-! ## A071604.P14752245301800377212

`abs(1-∑[char[A281978(n+1)-1]])+1`
-/

namespace A071604.P14752245301800377212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281978 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1

end

end A071604.P14752245301800377212

namespace A071604

/-- `abs(1-∑[char[A281978(n+1)-1]])+1` -/
def P14752245301800377212.Spec : Prop :=
  ∀ n, P14752245301800377212.a n = A071604 (n + 1)

end A071604

/-! ## A071604.P5980878153307455922

`∑[A016168(A334202(n+1)²)]`
-/

namespace A071604.P5980878153307455922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 (A334202 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P5980878153307455922

namespace A071604

/-- `∑[A016168(A334202(n+1)²)]` -/
def P5980878153307455922.Spec : Prop :=
  ∀ n, P5980878153307455922.a n = A071604 (n + 1)

end A071604

/-! ## A071604.P2057642602849045890

`∑[A000032(C(8, A006530(n+1)))%2]`
-/

namespace A071604.P2057642602849045890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (Nat.choose 8 (A006530 (n + 1)).toNat)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071604.P2057642602849045890

namespace A071604

/-- `∑[A000032(C(8, A006530(n+1)))%2]` -/
def P2057642602849045890.Spec : Prop :=
  ∀ n, P2057642602849045890.a n = A071604 (n + 1)

end A071604

/-! ## A071604.P4388457554432352844

`A086299((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A071604.P4388457554432352844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086299 ((n + 1) ^ 2) + a (n - 1)

end

end A071604.P4388457554432352844

namespace A071604

/-- `A086299((n+1)²)+a(n-1)` -/
def P4388457554432352844.Spec : Prop :=
  ∀ n, P4388457554432352844.a n = A071604 (n + 1)

end A071604

/-!
# A071605: Number of ordered pairs (a,b) of elements of the symmetric group S_n such that the pair a,b generates S_n.

The programs for A071605, there is no canonical definition to state claims against.
-/

/-! ## A071605.P1509415014605467677

`n!*A135474(n+1)`
-/

namespace A071605.P1509415014605467677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A135474 (n + 1)

end

end A071605.P1509415014605467677

/-! ## A071605.P9051118111917455821

`A000142(n)*A135474(n+1)`
-/

namespace A071605.P9051118111917455821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A135474 (n + 1)

end

end A071605.P9051118111917455821

/-! ## A071605.P9838674637466796500

`Δ[A003422(n)]*A135474(n+1)`
-/

namespace A071605.P9838674637466796500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135474 (n + 1)

end

end A071605.P9838674637466796500

/-! ## A071605.P13086560601655403570

`∏[A028310(n)]*A135474(n+1)`
-/

namespace A071605.P13086560601655403570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A135474 (n + 1)

end

end A071605.P13086560601655403570

/-! ## A071605.P12676284519908542143

`A135474(n+1)/3*A052560(n)`
-/

namespace A071605.P12676284519908542143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135474 (n + 1) : ℚ) / 3 * (A052560 n : ℚ)

end

end A071605.P12676284519908542143

/-!
# A071606: Smallest zero-free palindromic prime of 2n + 1 digits.

The programs for A071606, there is no canonical definition to state claims against.
-/

/-! ## A071606.P17770916750488636090

`A186681(A127130(n+3))+A068160(n)`
-/

namespace A071606.P17770916750488636090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186681 (A127130 (n + 3)).toNat + A068160 n

end

end A071606.P17770916750488636090

/-!
# A071607: Number of strong complete mappings of the cyclic group Z_{2n+1}.

The programs for A071607, there is no canonical definition to state claims against.
-/

/-! ## A071607.P10198062080512192638

`A007705(n)/(2*n+1)`
-/

namespace A071607.P10198062080512192638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007705 n : ℚ) / (2 * n + 1 : ℚ)

end

end A071607.P10198062080512192638

/-! ## A071607.P1598066128298550936

`A051906(2*n+1)/(2*n+1)`
-/

namespace A071607.P1598066128298550936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051906 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A071607.P1598066128298550936

/-! ## A071607.P1623572182145213987

`floor(A007705(n)/A005408(n))`
-/

namespace A071607.P1623572182145213987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007705 n : ℚ) / (A005408 n : ℚ)⌋

end

end A071607.P1623572182145213987

/-! ## A071607.P1180658281182657808

`A245092(A007705(n)/A014261(n+1))`
-/

namespace A071607.P1180658281182657808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A007705 n : ℚ) / (A014261 (n + 1) : ℚ))).toNat

end

end A071607.P1180658281182657808

/-!
# A071609: Squared radii of the spheres around (0,0,0) that contain record numbers of lattice points.

The programs for A071609, there is no canonical definition to state claims against.
-/

/-! ## A071609.P5049845230796931341

`A000378(A076180(n+1)+1)`
-/

namespace A071609.P5049845230796931341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A076180 (n + 1) + 1).toNat

end

end A071609.P5049845230796931341

/-! ## A071609.P3939612743295790516

`A349144(A076180(n+1))`
-/

namespace A071609.P3939612743295790516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349144 (A076180 (n + 1)).toNat

end

end A071609.P3939612743295790516

/-!
# A071610: Integer radii of the spheres around (0,0,0) that contain record numbers of lattice points.

The programs for A071610, there is no canonical definition to state claims against.
-/

/-! ## A071610.P2678453915207536955

`ceil(A071609(n+1)^(1/2))`
-/

namespace A071610.P2678453915207536955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071609 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌉

end

end A071610.P2678453915207536955

/-! ## A071610.P10835009252597960321

`ceil(sqrt(A071609(n+1)))`
-/

namespace A071610.P10835009252597960321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A071609 (n + 1) : ℝ)⌉

end

end A071610.P10835009252597960321

/-! ## A071610.P4688472663165111951

`A003059(A071609(n+1))`
-/

namespace A071610.P4688472663165111951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A071609 (n + 1)).toNat

end

end A071610.P4688472663165111951

/-! ## A071610.P13493158137807492838

`A033948(n+1)-A015997(A000205(n))`
-/

namespace A071610.P13493158137807492838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1) - A015997 (A000205 n).toNat

end

end A071610.P13493158137807492838

/-!
# A071611: Number of points (i,j,k) on the surface of a sphere around (0,0,0) with squared radius A071609(n).

The programs for A071611, there is no canonical definition to state claims against.
-/

/-! ## A071611.P17295649472989253050

`A005875(A071609(n+1))`
-/

namespace A071611.P17295649472989253050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A071609 (n + 1)).toNat

end

end A071611.P17295649472989253050

/-! ## A071611.P2291569463784130641

`record[A005875(n+1)]`
-/

namespace A071611.P2291569463784130641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071611.P2291569463784130641

/-! ## A071611.P12766984644099390235

`record[abs(A213384(n+1))]`
-/

namespace A071611.P12766984644099390235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071611.P12766984644099390235

/-! ## A071611.P700685623712198005

`record[sqrt(A138202(n+1))]`
-/

namespace A071611.P700685623712198005
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071611.P700685623712198005

/-! ## A071611.P13778629245713608310

`record[6*A045836(n+1)]`
-/

namespace A071611.P13778629245713608310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071611.P13778629245713608310

/-!
# A071613: a(n) is the smallest prime that is the first of n consecutive primes with equal digit sum.

The programs for A071613, there is no canonical definition to state claims against.
-/

/-! ## A071613.P17521128723836424041

`A395623(∑[n+1])`
-/

namespace A071613.P17521128723836424041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071613.P17521128723836424041

/-!
# A071615: a(n) is the least m such that 2*n*m is a nontotient value; that is, 2*n*a(n) is in A005277.

The programs for A071615, there is no canonical definition to state claims against.
-/

/-! ## A071615.P3735937896539980614

`A071616(n+1)/(2*(n+1))`
-/

namespace A071615.P3735937896539980614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071616 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A071615.P3735937896539980614

/-! ## A071615.P18257074620009613520

`A316665(2*(n+1))`
-/

namespace A071615.P18257074620009613520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (2 * (n + 1))

end

end A071615.P18257074620009613520

/-! ## A071615.P6464282620418156162

`A316665(A005843(n+1))%(n+4)²`
-/

namespace A071615.P6464282620418156162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316665 (A005843 (n + 1)).toNat) ((n + 4) ^ 2 : ℤ)

end

end A071615.P6464282620418156162

/-! ## A071615.P655789567731412966

`A316665(n+2+n)%A008778(n+1)²`
-/

namespace A071615.P655789567731412966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316665 (n + 2 + n)) (A008778 (n + 1) ^ 2)

end

end A071615.P655789567731412966

/-! ## A071615.P10356476687185429522

`or(1, A264739(2*(n+1))*A282160(2*(n+1)))`
-/

namespace A071615.P10356476687185429522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A264739 (2 * (n + 1)) * A282160 (2 * (n + 1)))

end

end A071615.P10356476687185429522

/-! ## A071615.P2863852041783272124

`gcd(A004530(A057635(2*(n+1))), A282160(2*(n+1)))`
-/

namespace A071615.P2863852041783272124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004530 (A057635 (2 * (n + 1))).toNat) (A282160 (2 * (n + 1)))

end

end A071615.P2863852041783272124

/-! ## A071615.P9178103842838154998

`A069799(A316665(n+2+n))`
-/

namespace A071615.P9178103842838154998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A316665 (n + 2 + n)).toNat

end

end A071615.P9178103842838154998

/-! ## A071615.P9567887655350451258

`A028310(A264739(2*(n+1))*A282160(2*(n+1)))`
-/

namespace A071615.P9567887655350451258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A264739 (2 * (n + 1)) * A282160 (2 * (n + 1))).toNat

end

end A071615.P9567887655350451258

/-! ## A071615.P16593836893064005604

`A257088(A264739(2*(n+1))*A282160(2*(n+1)))`
-/

namespace A071615.P16593836893064005604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A264739 (2 * (n + 1)) * A282160 (2 * (n + 1))).toNat

end

end A071615.P16593836893064005604

/-!
# A071616: Smallest even number divisible by 2n which is nontotient, i.e., in A005277.

The programs for A071616, there is no canonical definition to state claims against.
-/

/-! ## A071616.P1750390192265637624

`2*(n+1)*A071615(n+1)`
-/

namespace A071616.P1750390192265637624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A071615 (n + 1))

end

end A071616.P1750390192265637624

/-! ## A071616.P15848430674072826943

`(A005408(n)+1)*A071615(n+1)`
-/

namespace A071616.P15848430674072826943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1) * A071615 (n + 1)

end

end A071616.P15848430674072826943

/-! ## A071616.P6470149487511317286

`Δ[A002378(n)]*A071615(n+1)`
-/

namespace A071616.P6470149487511317286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071615 (n + 1)

end

end A071616.P6470149487511317286

/-! ## A071616.P9271401529288967285

`2*(n+1)*A316665(2*(n+1))`
-/

namespace A071616.P9271401529288967285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A316665 (2 * (n + 1)))

end

end A071616.P9271401529288967285

/-! ## A071616.P15098380669770002150

`A004277(n+1)*A316665(2*(n+1))`
-/

namespace A071616.P15098380669770002150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A316665 (2 * (n + 1))

end

end A071616.P15098380669770002150

/-! ## A071616.P5052475500713660440

`A005843(n+1)*A316665(2*(n+1))`
-/

namespace A071616.P5052475500713660440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A316665 (2 * (n + 1))

end

end A071616.P5052475500713660440

/-! ## A071616.P5716396339049610744

`A014681(A005408(n))*A071615(n+1)`
-/

namespace A071616.P5716396339049610744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A005408 n).toNat * A071615 (n + 1)

end

end A071616.P5716396339049610744

/-! ## A071616.P4717914874085263385

`A028242(A016825(n))*A071615(n+1)`
-/

namespace A071616.P4717914874085263385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A016825 n).toNat * A071615 (n + 1)

end

end A071616.P4717914874085263385

/-!
# A071617: a(n) = phi(p)^phi(p) where p = prime(n).

The programs for A071617, the canonical program `A071617.P17182786669336089371` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071617 has offset 1).

The definition of A071617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071617.P17182786669336089371

`A000312(A006093(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071617

/-- `A000312(A006093(n+1))` -/
def P17182786669336089371.Spec : Prop :=
  ∀ n, P17182786669336089371.a n = A071617 (n + 1)

theorem P17182786669336089371.correct : P17182786669336089371.Spec := by
  intro n
  simp only [A071617, Nat.add_sub_cancel]

end A071617

/-! ## A071617.P9098007853997752714

`record[(1-∑{p}[n+1, #])^n]`
-/

namespace A071617.P9098007853997752714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071617.P9098007853997752714

namespace A071617

/-- `record[(1-∑{p}[n+1, #])^n]` -/
def P9098007853997752714.Spec : Prop :=
  ∀ n, P9098007853997752714.a n = A071617 (n + 1)

end A071617

/-! ## A071617.P9162261385756566522

`record[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^∏{p}[n+1, #-1]]`
-/

namespace A071617.P9162261385756566522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071617.P9162261385756566522

namespace A071617

/-- `record[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^∏{p}[n+1, #-1]]` -/
def P9162261385756566522.Spec : Prop :=
  ∀ n, P9162261385756566522.a n = (A071617 (n + 1) : ℚ)

end A071617

/-! ## A071617.P4193108757392936252

`record[A063439(n+1)]`
-/

namespace A071617.P4193108757392936252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071617.P4193108757392936252

namespace A071617

/-- `record[A063439(n+1)]` -/
def P4193108757392936252.Spec : Prop :=
  ∀ n, P4193108757392936252.a n = A071617 (n + 1)

end A071617

/-! ## A071617.P16113028906409896536

`record[(1-A006530(n+1))^n]`
-/

namespace A071617.P16113028906409896536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A006530 (n + 1)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071617.P16113028906409896536

namespace A071617

/-- `record[(1-A006530(n+1))^n]` -/
def P16113028906409896536.Spec : Prop :=
  ∀ n, P16113028906409896536.a n = A071617 (n + 1)

end A071617

/-!
# A071618: a(n+1) - 3*a(n) + a(n-1) = (2/3)(1+w^(n+1)+w^(2n+2)), where w = exp(2 Pi I / 3).

The programs for A071618, the canonical program `A071618.P16188959925876988417` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071618 has offset 0).

The definition of A071618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071618.P16188959925876988417

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)+2` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071618

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)+2` -/
def P16188959925876988417.Spec : Prop :=
  ∀ n, P16188959925876988417.a n = A071618 n

theorem P16188959925876988417.correct : P16188959925876988417.Spec := by
  intro n
  simp only [A071618]

end A071618

/-! ## A071618.P15817181718913017355

`floor((ϕ^n)²/2)`
-/

namespace A071618.P15817181718913017355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2 / 2⌋

end

end A071618.P15817181718913017355

namespace A071618

/-- `floor((ϕ^n)²/2)` -/
def P15817181718913017355.Spec : Prop :=
  ∀ n, P15817181718913017355.a n = A071618 n

end A071618

/-! ## A071618.P17796169833240634818

`record[floor((-ϕ)^n/2)]`
-/

namespace A071618.P17796169833240634818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071618.P17796169833240634818

namespace A071618

/-- `record[floor((-ϕ)^n/2)]` -/
def P17796169833240634818.Spec : Prop :=
  ∀ n, P17796169833240634818.a n = A071618 n

end A071618

/-! ## A071618.P3216936210568356967

`A245968(2*n)`
-/

namespace A071618.P3216936210568356967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (2 * n)

end

end A071618.P3216936210568356967

namespace A071618

/-- `A245968(2*n)` -/
def P3216936210568356967.Spec : Prop :=
  ∀ n, P3216936210568356967.a n = A071618 n

end A071618

/-! ## A071618.P11196880136039120861

`ceil(A004146(n)/2)`
-/

namespace A071618.P11196880136039120861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004146 n : ℚ) / 2⌉

end

end A071618.P11196880136039120861

namespace A071618

/-- `ceil(A004146(n)/2)` -/
def P11196880136039120861.Spec : Prop :=
  ∀ n, P11196880136039120861.a n = A071618 n

end A071618

/-! ## A071618.P3667071400446523177

`A173495(2*n)-1`
-/

namespace A071618.P3667071400446523177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (2 * n) - 1

end

end A071618.P3667071400446523177

namespace A071618

/-- `A173495(2*n)-1` -/
def P3667071400446523177.Spec : Prop :=
  ∀ n, P3667071400446523177.a n = A071618 n

end A071618

/-! ## A071618.P9656034370279462870

`ceil(A005248(n)/2)-1`
-/

namespace A071618.P9656034370279462870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005248 n : ℚ) / 2⌉ - 1

end

end A071618.P9656034370279462870

namespace A071618

/-- `ceil(A005248(n)/2)-1` -/
def P9656034370279462870.Spec : Prop :=
  ∀ n, P9656034370279462870.a n = A071618 n

end A071618

/-! ## A071618.P16893006569648429934

`ceil((A005592(n)-1)/2)`
-/

namespace A071618.P16893006569648429934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005592 n - 1 : ℚ) / 2⌉

end

end A071618.P16893006569648429934

namespace A071618

/-- `ceil((A005592(n)-1)/2)` -/
def P16893006569648429934.Spec : Prop :=
  ∀ n, P16893006569648429934.a n = A071618 n

end A071618

/-! ## A071618.P17732153146494639479

`ceil(A001350(2*n)/2)`
-/

namespace A071618.P17732153146494639479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001350 (2 * n) : ℚ) / 2⌉

end

end A071618.P17732153146494639479

namespace A071618

/-- `ceil(A001350(2*n)/2)` -/
def P17732153146494639479.Spec : Prop :=
  ∀ n, P17732153146494639479.a n = A071618 n

end A071618

/-! ## A071618.P12347835246214345320

`ceil(A000032(2*n)/2)-1`
-/

namespace A071618.P12347835246214345320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000032 (2 * n) : ℚ) / 2⌉ - 1

end

end A071618.P12347835246214345320

namespace A071618

/-- `ceil(A000032(2*n)/2)-1` -/
def P12347835246214345320.Spec : Prop :=
  ∀ n, P12347835246214345320.a n = A071618 n

end A071618

/-! ## A071618.P17567423714041998324

`round(and(-3, A000032(comp[2*n+1]))/2)`
-/

namespace A071618.P17567423714041998324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (-3) (A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) : ℚ) / 2)

end

end A071618.P17567423714041998324

namespace A071618

/-- `round(and(-3, A000032(comp[2*n+1]))/2)` -/
def P17567423714041998324.Spec : Prop :=
  ∀ n, P17567423714041998324.a n = A071618 n

end A071618

/-! ## A071618.P11141712560576980999

`A245968(n)+A049681(n)`
-/

namespace A071618.P11141712560576980999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 n + A049681 n

end

end A071618.P11141712560576980999

namespace A071618

/-- `A245968(n)+A049681(n)` -/
def P11141712560576980999.Spec : Prop :=
  ∀ n, P11141712560576980999.a n = A071618 n

end A071618

/-! ## A071618.P9920000618119621958

`A105073(n+1)-A001906(n)`
-/

namespace A071618.P9920000618119621958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105073 (n + 1) - A001906 n

end

end A071618.P9920000618119621958

namespace A071618

/-- `A105073(n+1)-A001906(n)` -/
def P9920000618119621958.Spec : Prop :=
  ∀ n, P9920000618119621958.a n = A071618 n

end A071618

/-! ## A071618.P7553317390411012951

`A226956(2*n)-A010892(n)²`
-/

namespace A071618.P7553317390411012951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (2 * n) - A010892 n ^ 2

end

end A071618.P7553317390411012951

namespace A071618

/-- `A226956(2*n)-A010892(n)²` -/
def P7553317390411012951.Spec : Prop :=
  ∀ n, P7553317390411012951.a n = A071618 n

end A071618

/-! ## A071618.P15952143012139930120

`A087953(n+1)-A001611(2*n)`
-/

namespace A071618.P15952143012139930120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) - A001611 (2 * n)

end

end A071618.P15952143012139930120

namespace A071618

/-- `A087953(n+1)-A001611(2*n)` -/
def P15952143012139930120.Spec : Prop :=
  ∀ n, P15952143012139930120.a n = A071618 n

end A071618

/-! ## A071618.P11217748119984091685

`A074331(2*n)-A004695(2*n)`
-/

namespace A071618.P11217748119984091685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (2 * n) - A004695 (2 * n)

end

end A071618.P11217748119984091685

namespace A071618

/-- `A074331(2*n)-A004695(2*n)` -/
def P11217748119984091685.Spec : Prop :=
  ∀ n, P11217748119984091685.a n = A071618 n

end A071618

/-! ## A071618.P1251863849091965222

`A226956(2*n)-A128834(n+1)²`
-/

namespace A071618.P1251863849091965222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (2 * n) - A128834 (n + 1) ^ 2

end

end A071618.P1251863849091965222

namespace A071618

/-- `A226956(2*n)-A128834(n+1)²` -/
def P1251863849091965222.Spec : Prop :=
  ∀ n, P1251863849091965222.a n = A071618 n

end A071618

/-! ## A071618.P8767364177047436544

`∑[A000045(2*n)]-A004695(2*n)`
-/

namespace A071618.P8767364177047436544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004695 (2 * n)

end

end A071618.P8767364177047436544

namespace A071618

/-- `∑[A000045(2*n)]-A004695(2*n)` -/
def P8767364177047436544.Spec : Prop :=
  ∀ n, P8767364177047436544.a n = A071618 n

end A071618

/-! ## A071618.P8634844177933149566

`A087953(n+1)-(A000045(2*n)+1)`
-/

namespace A071618.P8634844177933149566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) - (A000045 (2 * n) + 1)

end

end A071618.P8634844177933149566

namespace A071618

/-- `A087953(n+1)-(A000045(2*n)+1)` -/
def P8634844177933149566.Spec : Prop :=
  ∀ n, P8634844177933149566.a n = A071618 n

end A071618

/-! ## A071618.P3205366211280799105

`A000071(2*n+1)-A004695(2*n)`
-/

namespace A071618.P3205366211280799105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1) - A004695 (2 * n)

end

end A071618.P3205366211280799105

namespace A071618

/-- `A000071(2*n+1)-A004695(2*n)` -/
def P3205366211280799105.Spec : Prop :=
  ∀ n, P3205366211280799105.a n = A071618 n

end A071618

/-!
# A071619: a(n) = ceiling(2*n^2 / 3).

The programs for A071619, the canonical program `A071619.P2419596988782689275` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071619 has offset 0).

The definition of A071619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2*n²/3)` (program `A071619.P2419596988782689275`, by `A071619.P2419596988782689275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071619.P2419596988782689275

`ceil(2*n²/3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071619

/-- `ceil(2*n²/3)` -/
def P2419596988782689275.Spec : Prop :=
  ∀ n, P2419596988782689275.a n = A071619 n

theorem P2419596988782689275.correct : P2419596988782689275.Spec := by
  intro n
  simp only [A071619]

end A071619

/-! ## A071619.P17455025993621023958

`2/9*(3*n²+1-cos(2*π*n/3))`
-/

namespace A071619.P17455025993621023958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) / 9 : ℝ) * ((3 * n ^ 2 + 1 : ℝ) - Real.cos (2 * Real.pi * (n : ℝ) / 3))

end

end A071619.P17455025993621023958

namespace A071619

/-- `2/9*(3*n²+1-cos(2*π*n/3))` -/
def P17455025993621023958.Spec : Prop :=
  ∀ n, P17455025993621023958.a n = (A071619 n : ℝ)

end A071619

/-! ## A071619.P14954582944466346801

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=11`
-/

namespace A071619.P14954582944466346801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 11] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A071619.P14954582944466346801

namespace A071619

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P14954582944466346801.Spec : Prop :=
  ∀ n, P14954582944466346801.a n = A071619 n

end A071619

/-! ## A071619.P12737500281295544439

`∑[comp[lcm(4, n+1)]]`
-/

namespace A071619.P12737500281295544439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071619.P12737500281295544439

namespace A071619

/-- `∑[comp[lcm(4, n+1)]]` -/
def P12737500281295544439.Spec : Prop :=
  ∀ n, (P12737500281295544439.a n : ℤ) = A071619 n

end A071619

/-! ## A071619.P14474076065045336920

`∑[comp[or(3, n)+1]]`
-/

namespace A071619.P14474076065045336920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071619.P14474076065045336920

namespace A071619

/-- `∑[comp[or(3, n)+1]]` -/
def P14474076065045336920.Spec : Prop :=
  ∀ n, (P14474076065045336920.a n : ℤ) = A071619 n

end A071619

/-! ## A071619.P6897400822633306116

`∑[lt[xor(n, n-1), 4]]`
-/

namespace A071619.P6897400822633306116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071619.P6897400822633306116

namespace A071619

/-- `∑[lt[xor(n, n-1), 4]]` -/
def P6897400822633306116.Spec : Prop :=
  ∀ n, (P6897400822633306116.a n : ℤ) = A071619 n

end A071619

/-! ## A071619.P9580178950974153766

`floor(2/(3*acot(n)²))`
-/

namespace A071619.P9580178950974153766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (3 * SequenceMachineLib.acot (n : ℝ) ^ 2)⌋

end

end A071619.P9580178950974153766

namespace A071619

/-- `floor(2/(3*acot(n)²))` -/
def P9580178950974153766.Spec : Prop :=
  ∀ n, P9580178950974153766.a n = A071619 n

end A071619

/-! ## A071619.P1521638697421083021

`round(2/(3*acot(n²)))`
-/

namespace A071619.P1521638697421083021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (3 * SequenceMachineLib.acot (n ^ 2 : ℝ)))

end

end A071619.P1521638697421083021

namespace A071619

/-- `round(2/(3*acot(n²)))` -/
def P1521638697421083021.Spec : Prop :=
  ∀ n, P1521638697421083021.a n = A071619 n

end A071619

/-! ## A071619.P6898224397276438923

`∑[comp[∑[and(4, n-1)]]]`
-/

namespace A071619.P6898224397276438923
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071619.P6898224397276438923

namespace A071619

/-- `∑[comp[∑[and(4, n-1)]]]` -/
def P6898224397276438923.Spec : Prop :=
  ∀ n, (P6898224397276438923.a n : ℤ) = A071619 n

end A071619

/-! ## A071619.P17190340313080110571

`floor(or(1, 2*n²)/3)`
-/

namespace A071619.P17190340313080110571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n ^ 2) : ℚ) / 3⌋

end

end A071619.P17190340313080110571

namespace A071619

/-- `floor(or(1, 2*n²)/3)` -/
def P17190340313080110571.Spec : Prop :=
  ∀ n, P17190340313080110571.a n = A071619 n

end A071619

/-! ## A071619.P16749608130369256062

`round(lcm(2, (2*n)²)/6)`
-/

namespace A071619.P16749608130369256062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 ((2 * n) ^ 2) : ℚ) / 6)

end

end A071619.P16749608130369256062

namespace A071619

/-- `round(lcm(2, (2*n)²)/6)` -/
def P16749608130369256062.Spec : Prop :=
  ∀ n, P16749608130369256062.a n = A071619 n

end A071619

/-! ## A071619.P5881258100299013970

`round(or(1, (2*n)²)/6)`
-/

namespace A071619.P5881258100299013970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 ((2 * n) ^ 2) : ℚ) / 6)

end

end A071619.P5881258100299013970

namespace A071619

/-- `round(or(1, (2*n)²)/6)` -/
def P5881258100299013970.Spec : Prop :=
  ∀ n, P5881258100299013970.a n = A071619 n

end A071619

/-! ## A071619.P16618499012840982899

`floor(xor(2, (2*n)²)/6)`
-/

namespace A071619.P16618499012840982899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 ((2 * n) ^ 2) : ℚ) / 6⌋

end

end A071619.P16618499012840982899

namespace A071619

/-- `floor(xor(2, (2*n)²)/6)` -/
def P16618499012840982899.Spec : Prop :=
  ∀ n, P16618499012840982899.a n = A071619 n

end A071619

/-! ## A071619.P15964407781998691344

`round(xor(1, (2*n)²)/6)`
-/

namespace A071619.P15964407781998691344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((2 * n) ^ 2) : ℚ) / 6)

end

end A071619.P15964407781998691344

namespace A071619

/-- `round(xor(1, (2*n)²)/6)` -/
def P15964407781998691344.Spec : Prop :=
  ∀ n, P15964407781998691344.a n = A071619 n

end A071619

/-! ## A071619.P5616763459687147580

`∑[comp[a(n-1)+4]]` with `a(0)=4`
-/

namespace A071619.P5616763459687147580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071619.P5616763459687147580

namespace A071619

/-- `∑[comp[a(n-1)+4]]` -/
def P5616763459687147580.Spec : Prop :=
  ∀ n, (P5616763459687147580.a n : ℤ) = A071619 n

end A071619

/-! ## A071619.P1713748591985898249

`∑[ceil(n/3)]+C(n, 2)`
-/

namespace A071619.P1713748591985898249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℤ)

end

end A071619.P1713748591985898249

namespace A071619

/-- `∑[ceil(n/3)]+C(n, 2)` -/
def P1713748591985898249.Spec : Prop :=
  ∀ n, P1713748591985898249.a n = A071619 n

end A071619

/-! ## A071619.P17506176787507798539

`floor(n/acot(2*n/3))`
-/

namespace A071619.P17506176787507798539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((2 * n : ℚ) / 3 : ℝ)⌋

end

end A071619.P17506176787507798539

namespace A071619

/-- `floor(n/acot(2*n/3))` -/
def P17506176787507798539.Spec : Prop :=
  ∀ n, P17506176787507798539.a n = A071619 n

end A071619

/-! ## A071619.P3074938610414099276

`∑[comp[or(1, 4*n)]]-n`
-/

namespace A071619.P3074938610414099276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A071619.P3074938610414099276

namespace A071619

/-- `∑[comp[or(1, 4*n)]]-n` -/
def P3074938610414099276.Spec : Prop :=
  ∀ n, P3074938610414099276.a n = A071619 n

end A071619

/-! ## A071619.P17586716882573331646

`round((C(2*n, 2)+n)/3)`
-/

namespace A071619.P17586716882573331646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 2 + n : ℚ) / 3)

end

end A071619.P17586716882573331646

namespace A071619

/-- `round((C(2*n, 2)+n)/3)` -/
def P17586716882573331646.Spec : Prop :=
  ∀ n, P17586716882573331646.a n = A071619 n

end A071619

/-! ## A071619.P16793490719882169561

`round(n/3*lcm(n, 2*n))`
-/

namespace A071619.P16793490719882169561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 * (Nat.lcm n (2 * n) : ℚ))

end

end A071619.P16793490719882169561

namespace A071619

/-- `round(n/3*lcm(n, 2*n))` -/
def P16793490719882169561.Spec : Prop :=
  ∀ n, P16793490719882169561.a n = A071619 n

end A071619

/-!
# A071620: Integer lengths of the Champernowne primes (concatenation of first a(n) entries (digits) of A033307 is prime).

The programs for A071620, there is no canonical definition to state claims against.
-/

/-! ## A071620.P11365550140627000193

`A117804(A265043(n+1))+A004216(2*(n+1))`
-/

namespace A071620.P11365550140627000193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A265043 (n + 1)).toNat + A004216 (2 * (n + 1))

end

end A071620.P11365550140627000193

/-!
# A071621: Primes that can be written as "a * b + c * d", where a, b, c and d are also primes.

The programs for A071621, the canonical program `A071621.P6497078535451825457` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071621 has offset 1).

The definition of A071621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071621.P9602249277755050561

`A157996(n+2)-A000038(n)²`
-/

namespace A071621.P9602249277755050561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 2) - A000038 n ^ 2

end

end A071621.P9602249277755050561

namespace A071621

/-- `A157996(n+2)-A000038(n)²` -/
def P9602249277755050561.Spec : Prop :=
  ∀ n, P9602249277755050561.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P6497078535451825457

`A004139(A074764(n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071621

/-- `A004139(A074764(n+2))` -/
def P6497078535451825457.Spec : Prop :=
  ∀ n, P6497078535451825457.a n = A071621 (n + 1)

theorem P6497078535451825457.correct : P6497078535451825457.Spec := by
  intro n
  simp only [A071621, Nat.add_sub_cancel]

end A071621

/-! ## A071621.P1415279452215771578

`A004139(A009005(n+1)+1)`
-/

namespace A071621.P1415279452215771578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A009005 (n + 1) + 1).toNat

end

end A071621.P1415279452215771578

namespace A071621

/-- `A004139(A009005(n+1)+1)` -/
def P1415279452215771578.Spec : Prop :=
  ∀ n, P1415279452215771578.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P11677985130744545056

`A004139(A065475(n+1)+3)`
-/

namespace A071621.P11677985130744545056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A065475 (n + 1) + 3).toNat

end

end A071621.P11677985130744545056

namespace A071621

/-- `A004139(A065475(n+1)+3)` -/
def P11677985130744545056.Spec : Prop :=
  ∀ n, P11677985130744545056.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P8817812360996751145

`A065091(ceil(sqrt(∑[2*n]))+5)`
-/

namespace A071621.P8817812360996751145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 5).toNat

end

end A071621.P8817812360996751145

namespace A071621

/-- `A065091(ceil(sqrt(∑[2*n]))+5)` -/
def P8817812360996751145.Spec : Prop :=
  ∀ n, P8817812360996751145.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P12731397670188264555

`A045319(A242963(n+1))`
-/

namespace A071621.P12731397670188264555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A242963 (n + 1)).toNat

end

end A071621.P12731397670188264555

namespace A071621

/-- `A045319(A242963(n+1))` -/
def P12731397670188264555.Spec : Prop :=
  ∀ n, P12731397670188264555.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P17803440524374404903

`A045319(A074764(n+2)+1)`
-/

namespace A071621.P17803440524374404903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A074764 (n + 2) + 1).toNat

end

end A071621.P17803440524374404903

namespace A071621

/-- `A045319(A074764(n+2)+1)` -/
def P17803440524374404903.Spec : Prop :=
  ∀ n, P17803440524374404903.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P6618344528997541137

`A000040(6--(n+1)%(2*n+1))`
-/

namespace A071621.P6618344528997541137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (6 - Int.tmod (-(n + 1 : ℤ)) (2 * n + 1 : ℤ)).toNat

end

end A071621.P6618344528997541137

namespace A071621

/-- `A000040(6--(n+1)%(2*n+1))` -/
def P6618344528997541137.Spec : Prop :=
  ∀ n, P6618344528997541137.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P17024605009140324446

`A000040(floor((2*n+1)*(n+3)/(n+1)-(n-3)))`
-/

namespace A071621.P17024605009140324446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(2 * n + 1 : ℚ) * ((n + 3 : ℚ) / (n + 1 : ℚ)) - ((n : ℤ) - 3 : ℚ)⌋.toNat

end

end A071621.P17024605009140324446

namespace A071621

/-- `A000040(floor((2*n+1)*(n+3)/(n+1)-(n-3)))` -/
def P17024605009140324446.Spec : Prop :=
  ∀ n, P17024605009140324446.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P12424351824009649228

`A083249(A107820(n+2))`
-/

namespace A071621.P12424351824009649228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (A107820 (n + 2)).toNat

end

end A071621.P12424351824009649228

namespace A071621

/-- `A083249(A107820(n+2))` -/
def P12424351824009649228.Spec : Prop :=
  ∀ n, P12424351824009649228.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P16948172372156051277

`A008864(A242963(n+1)+1)-1`
-/

namespace A071621.P16948172372156051277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A242963 (n + 1) + 1).toNat - 1

end

end A071621.P16948172372156051277

namespace A071621

/-- `A008864(A242963(n+1)+1)-1` -/
def P16948172372156051277.Spec : Prop :=
  ∀ n, P16948172372156051277.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P15722679425965112083

`A052147(A242963(n+1)+1)-2`
-/

namespace A071621.P15722679425965112083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A242963 (n + 1) + 1).toNat - 2

end

end A071621.P15722679425965112083

namespace A071621

/-- `A052147(A242963(n+1)+1)-2` -/
def P15722679425965112083.Spec : Prop :=
  ∀ n, P15722679425965112083.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P10325650915795102230

`A040976(A157532(n+1)+n+4)+2`
-/

namespace A071621.P10325650915795102230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A157532 (n + 1) + (n + 4 : ℤ)).toNat + 2

end

end A071621.P10325650915795102230

namespace A071621

/-- `A040976(A157532(n+1)+n+4)+2` -/
def P10325650915795102230.Spec : Prop :=
  ∀ n, P10325650915795102230.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P16464248389701864068

`A067126(A263772(n+1))`
-/

namespace A071621.P16464248389701864068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A263772 (n + 1)).toNat

end

end A071621.P16464248389701864068

namespace A071621

/-- `A067126(A263772(n+1))` -/
def P16464248389701864068.Spec : Prop :=
  ∀ n, P16464248389701864068.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P3703578954308280666

`A066050(A263772(n+1)+1)`
-/

namespace A071621.P3703578954308280666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (A263772 (n + 1) + 1).toNat

end

end A071621.P3703578954308280666

namespace A071621

/-- `A066050(A263772(n+1)+1)` -/
def P3703578954308280666.Spec : Prop :=
  ∀ n, P3703578954308280666.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P7450910987978526046

`A157996(n+2)-2*A000038(2*n)`
-/

namespace A071621.P7450910987978526046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 2) - 2 * A000038 (2 * n)

end

end A071621.P7450910987978526046

namespace A071621

/-- `A157996(n+2)-2*A000038(2*n)` -/
def P7450910987978526046.Spec : Prop :=
  ∀ n, P7450910987978526046.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P795653553808483707

`A004139(A055495(2*(n+1))-n)`
-/

namespace A071621.P795653553808483707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A055495 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A071621.P795653553808483707

namespace A071621

/-- `A004139(A055495(2*(n+1))-n)` -/
def P795653553808483707.Spec : Prop :=
  ∀ n, P795653553808483707.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P16332397344070233914

`A260196(n+1)+A157996(n+2)-A260196(2*n)`
-/

namespace A071621.P16332397344070233914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 1) + (A157996 (n + 2) - A260196 (2 * n))

end

end A071621.P16332397344070233914

namespace A071621

/-- `A260196(n+1)+A157996(n+2)-A260196(2*n)` -/
def P16332397344070233914.Spec : Prop :=
  ∀ n, P16332397344070233914.a n = A071621 (n + 1)

end A071621

/-! ## A071621.P15563848065971205856

`p?[record[A077157(n)]]`
-/

namespace A071621.P15563848065971205856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071621.P15563848065971205856

namespace A071621

/-- `p?[record[A077157(n)]]` -/
def P15563848065971205856.Spec : Prop :=
  ∀ n, P15563848065971205856.a n = A071621 (n + 1)

end A071621

/-!
# A071622: a(n) = (-1)*Sum_{k=1..n} (-1)^floor((4/3)^k).

The programs for A071622, the canonical program `A071622.P8008605956966720733` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071622 has offset 1).

The definition of A071622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071622.P8008605956966720733

`∑[A064628(n+1)-xor(1, A064628(n+1))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071622

/-- `∑[A064628(n+1)-xor(1, A064628(n+1))]` -/
def P8008605956966720733.Spec : Prop :=
  ∀ n, P8008605956966720733.a n = A071622 (n + 1)

theorem P8008605956966720733.correct : P8008605956966720733.Spec := by
  intro n
  simp only [A071622, Nat.add_sub_cancel]

end A071622

/-! ## A071622.P17502208275442128530

`∑[A062157(A064628(n+1))]`
-/

namespace A071622.P17502208275442128530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A064628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071622.P17502208275442128530

namespace A071622

/-- `∑[A062157(A064628(n+1))]` -/
def P17502208275442128530.Spec : Prop :=
  ∀ n, P17502208275442128530.a n = A071622 (n + 1)

end A071622

/-! ## A071622.P1673015450276232428

`∑[A033999(A064628(n+1)+1)]`
-/

namespace A071622.P1673015450276232428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A064628 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071622.P1673015450276232428

namespace A071622

/-- `∑[A033999(A064628(n+1)+1)]` -/
def P1673015450276232428.Spec : Prop :=
  ∀ n, P1673015450276232428.a n = A071622 (n + 1)

end A071622

/-!
# A071625: Number of distinct exponents when n is factorized as a product of primes.

The programs for A071625, the canonical program `A071625.P7560228234405242529` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071625 has offset 1).

The definition of A071625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071625.P7560228234405242529

`∑{e}[A328830(n+1), #]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071625

/-- `∑{e}[A328830(n+1), #]` -/
def P7560228234405242529.Spec : Prop :=
  ∀ n, (P7560228234405242529.a n : ℤ) = A071625 (n + 1)

theorem P7560228234405242529.correct : P7560228234405242529.Spec := by
  intro n
  simp only [A071625, Nat.add_sub_cancel]

end A071625

/-! ## A071625.P3675281901012182259

`∑{e}[A329601(n+1), #]`
-/

namespace A071625.P3675281901012182259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071625.P3675281901012182259

namespace A071625

/-- `∑{e}[A329601(n+1), #]` -/
def P3675281901012182259.Spec : Prop :=
  ∀ n, (P3675281901012182259.a n : ℤ) = A071625 (n + 1)

end A071625

/-! ## A071625.P16340158496856978983

`A001221(A181819(n+1))`
-/

namespace A071625.P16340158496856978983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181819 (n + 1)).toNat

end

end A071625.P16340158496856978983

namespace A071625

/-- `A001221(A181819(n+1))` -/
def P16340158496856978983.Spec : Prop :=
  ∀ n, P16340158496856978983.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P7925806233205197016

`A001221(A238745(n+1))`
-/

namespace A071625.P7925806233205197016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A238745 (n + 1)).toNat

end

end A071625.P7925806233205197016

namespace A071625

/-- `A001221(A238745(n+1))` -/
def P7925806233205197016.Spec : Prop :=
  ∀ n, P7925806233205197016.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P11620758080612431016

`A000120(A297404(n+1))`
-/

namespace A071625.P11620758080612431016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A297404 (n + 1)).toNat

end

end A071625.P11620758080612431016

namespace A071625

/-- `A000120(A297404(n+1))` -/
def P11620758080612431016.Spec : Prop :=
  ∀ n, P11620758080612431016.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P14710458001254586932

`A001221(A328400(n+1))`
-/

namespace A071625.P14710458001254586932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328400 (n + 1)).toNat

end

end A071625.P14710458001254586932

namespace A071625

/-- `A001221(A328400(n+1))` -/
def P14710458001254586932.Spec : Prop :=
  ∀ n, P14710458001254586932.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P4466437890276396176

`A001222(A328830(n+1))`
-/

namespace A071625.P4466437890276396176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328830 (n + 1)).toNat

end

end A071625.P4466437890276396176

namespace A071625

/-- `A001222(A328830(n+1))` -/
def P4466437890276396176.Spec : Prop :=
  ∀ n, P4466437890276396176.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P1416638168562766033

`A001221(A329601(n+1))`
-/

namespace A071625.P1416638168562766033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A329601 (n + 1)).toNat

end

end A071625.P1416638168562766033

namespace A071625

/-- `A001221(A329601(n+1))` -/
def P1416638168562766033.Spec : Prop :=
  ∀ n, P1416638168562766033.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P5545716948185724152

`A351945(A329601(n+1)²)`
-/

namespace A071625.P5545716948185724152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351945 (A329601 (n + 1) ^ 2).toNat

end

end A071625.P5545716948185724152

namespace A071625

/-- `A351945(A329601(n+1)²)` -/
def P5545716948185724152.Spec : Prop :=
  ∀ n, P5545716948185724152.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P16162913506215035392

`∑{p}[A181819(n+1), A001222(#)]`
-/

namespace A071625.P16162913506215035392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A071625.P16162913506215035392

namespace A071625

/-- `∑{p}[A181819(n+1), A001222(#)]` -/
def P16162913506215035392.Spec : Prop :=
  ∀ n, P16162913506215035392.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P7045615660950027604

`∑{p}[A181819(n+1), A332294(#)]`
-/

namespace A071625.P7045615660950027604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A332294 p

end

end A071625.P7045615660950027604

namespace A071625

/-- `∑{p}[A181819(n+1), A332294(#)]` -/
def P7045615660950027604.Spec : Prop :=
  ∀ n, P7045615660950027604.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P14347944311781820745

`∑{p}[A238745(n+1), A304465(#)]`
-/

namespace A071625.P14347944311781820745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A304465 p

end

end A071625.P14347944311781820745

namespace A071625

/-- `∑{p}[A238745(n+1), A304465(#)]` -/
def P14347944311781820745.Spec : Prop :=
  ∀ n, P14347944311781820745.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P3049118647607878137

`A001222(∏{p}[A181819(n+1), #])`
-/

namespace A071625.P3049118647607878137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A071625.P3049118647607878137

namespace A071625

/-- `A001222(∏{p}[A181819(n+1), #])` -/
def P3049118647607878137.Spec : Prop :=
  ∀ n, P3049118647607878137.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P6002629851616961783

`A001221(∏{e}[n+1, A000040(#)])`
-/

namespace A071625.P6002629851616961783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P6002629851616961783

namespace A071625

/-- `A001221(∏{e}[n+1, A000040(#)])` -/
def P6002629851616961783.Spec : Prop :=
  ∀ n, P6002629851616961783.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P4720255276096710436

`A001221(∏{e}[n+1, A003459(#)])`
-/

namespace A071625.P4720255276096710436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A003459 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P4720255276096710436

namespace A071625

/-- `A001221(∏{e}[n+1, A003459(#)])` -/
def P4720255276096710436.Spec : Prop :=
  ∀ n, P4720255276096710436.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P3265760597165604823

`A001221(∏{e}[n+1, A040990(#)])`
-/

namespace A071625.P3265760597165604823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A040990 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P3265760597165604823

namespace A071625

/-- `A001221(∏{e}[n+1, A040990(#)])` -/
def P3265760597165604823.Spec : Prop :=
  ∀ n, P3265760597165604823.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P8274115907299749622

`A001221(∏{e}[n+1, A058853(#)])`
-/

namespace A071625.P8274115907299749622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P8274115907299749622

namespace A071625

/-- `A001221(∏{e}[n+1, A058853(#)])` -/
def P8274115907299749622.Spec : Prop :=
  ∀ n, P8274115907299749622.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P8349392280112406218

`A001221(∏{e}[n+1, A095313(#)])`
-/

namespace A071625.P8349392280112406218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A095313 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P8349392280112406218

namespace A071625

/-- `A001221(∏{e}[n+1, A095313(#)])` -/
def P8349392280112406218.Spec : Prop :=
  ∀ n, P8349392280112406218.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P9349925696362947206

`A001221(∏{e}[n+1, A127052(#)])`
-/

namespace A071625.P9349925696362947206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P9349925696362947206

namespace A071625

/-- `A001221(∏{e}[n+1, A127052(#)])` -/
def P9349925696362947206.Spec : Prop :=
  ∀ n, P9349925696362947206.a n = A071625 (n + 1)

end A071625

/-! ## A071625.P9238707347304455096

`A001221(∏{e}[n+1, A219697(#)])`
-/

namespace A071625.P9238707347304455096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat

end

end A071625.P9238707347304455096

namespace A071625

/-- `A001221(∏{e}[n+1, A219697(#)])` -/
def P9238707347304455096.Spec : Prop :=
  ∀ n, P9238707347304455096.a n = A071625 (n + 1)

end A071625

/-!
# A071626: Number of distinct exponents in the prime factorization of n!.

The programs for A071626, there is no canonical definition to state claims against.
-/

/-! ## A071626.P10240811570751122302

`A357385(n)+a(n-1)` with `a(0)=0`
-/

namespace A071626.P10240811570751122302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A357385 n + a (n - 1)

end

end A071626.P10240811570751122302

/-! ## A071626.P12960830144555484955

`∑[A357385(A028310(n))]-1`
-/

namespace A071626.P12960830144555484955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A071626.P12960830144555484955

/-! ## A071626.P15954695108855149144

`∑[A357385(A000038(n)+n)]`
-/

namespace A071626.P15954695108855149144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071626.P15954695108855149144

/-! ## A071626.P2163446328945384702

`∑[A357385(n+1)]-A357385(n+1)`
-/

namespace A071626.P2163446328945384702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357385 (n + 1)

end

end A071626.P2163446328945384702

/-! ## A071626.P12224067048066389016

`A000195(A002024(n+1)*A099627(n))`
-/

namespace A071626.P12224067048066389016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A002024 (n + 1) * A099627 n).toNat

end

end A071626.P12224067048066389016

/-! ## A071626.P12308710553189007943

`round(sqrt(lt[A048728(n), A330792(n)]))`
-/

namespace A071626.P12308710553189007943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℝ))

end

end A071626.P12308710553189007943

/-! ## A071626.P7000654956088266558

`A000194(lt[A048728(n), A330792(n)])`
-/

namespace A071626.P7000654956088266558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071626.P7000654956088266558

/-!
# A071627: The n-th term of Chernoff sequence A006939 divided by (n + 1)!.

The programs for A071627, there is no canonical definition to state claims against.
-/

/-! ## A071627.P5251974925181714773

`A006939(n)/(n+1)!`
-/

namespace A071627.P5251974925181714773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006939 n : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A071627.P5251974925181714773

/-! ## A071627.P9969589309484051684

`∏[∏[eq[n, ∏{d}[n, #]]]/(n+1)]`
-/

namespace A071627.P9969589309484051684
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071627.P9969589309484051684

/-! ## A071627.P16192538803280218205

`∏[A002110(n)/(n+1)]`
-/

namespace A071627.P16192538803280218205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071627.P16192538803280218205

/-! ## A071627.P15625977027366109810

`∏[∏[A008578(n+1)]/(n+1)]`
-/

namespace A071627.P15625977027366109810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071627.P15625977027366109810

/-! ## A071627.P3185899435122781635

`∏[∏[record[A006530(n+1)]]/(n+1)]`
-/

namespace A071627.P3185899435122781635
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071627.P3185899435122781635

/-!
# A071628: Smallest m such that (2n-1)*2^m is totient, that is, in A002202, or -1 if (2n-1)*2^m is never a totient.

The programs for A071628, there is no canonical definition to state claims against.
-/

/-! ## A071628.P8029852694829289940

`A033809(n+1)^A000161(A346875(2*(n+1)))`
-/

namespace A071628.P8029852694829289940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033809 (n + 1) : ℚ) ^ (A000161 (A346875 (2 * (n + 1))).toNat : ℤ)

end

end A071628.P8029852694829289940

/-! ## A071628.P15317682109667046896

`A033809(gcd(n+1, A258154(n+5)))`
-/

namespace A071628.P15317682109667046896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (Int.gcd (n + 1 : ℤ) (A258154 (n + 5)))

end

end A071628.P15317682109667046896

/-! ## A071628.P16997943672984813016

`A033809(n+1)-A073424(A029617(n))`
-/

namespace A071628.P16997943672984813016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 1) - A073424 (A029617 n).toNat

end

end A071628.P16997943672984813016

/-! ## A071628.P2640535488858663601

`A033809(n+1)-A185284(A085190(n))`
-/

namespace A071628.P2640535488858663601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 1) - A185284 (A085190 n).toNat

end

end A071628.P2640535488858663601

/-! ## A071628.P4851419188653953678

`A033809(n+1)^A000166(A123262(n))`
-/

namespace A071628.P4851419188653953678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033809 (n + 1) : ℚ) ^ (A000166 (A123262 n).toNat : ℤ)

end

end A071628.P4851419188653953678

/-!
# A071629: Number of terms in the set InvPhi(4*prime(n)), where prime(n) is the n-th prime.

The programs for A071629, there is no canonical definition to state claims against.
-/

/-! ## A071629.P9349674614776138556

`A058979(A000040(n+1))`
-/

namespace A071629.P9349674614776138556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A000040 (n + 1)).toNat

end

end A071629.P9349674614776138556

/-! ## A071629.P2328859752297676267

`A058979(A008578(n+2))`
-/

namespace A071629.P2328859752297676267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A008578 (n + 2)).toNat

end

end A071629.P2328859752297676267

/-! ## A071629.P1449788435436772535

`A058979(A182986(n+2))`
-/

namespace A071629.P1449788435436772535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A182986 (n + 2)).toNat

end

end A071629.P1449788435436772535

/-! ## A071629.P4361878803573914239

`A058979(record[A006530(n+2)])`
-/

namespace A071629.P4361878803573914239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071629.P4361878803573914239

/-! ## A071629.P6318737039996438477

`A058979(record[A020639(n+2)])`
-/

namespace A071629.P6318737039996438477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071629.P6318737039996438477

/-! ## A071629.P2565257836247740175

`A058979(A006093(n+1)+1)`
-/

namespace A071629.P2565257836247740175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A006093 (n + 1) + 1).toNat

end

end A071629.P2565257836247740175

/-! ## A071629.P4733974855370632124

`A058979(A100484(n+1)/2)`
-/

namespace A071629.P4733974855370632124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A071629.P4733974855370632124

/-! ## A071629.P9528592586353615925

`A058979(A001747(n+2)/2)`
-/

namespace A071629.P9528592586353615925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A071629.P9528592586353615925

/-! ## A071629.P14917942760206719529

`A058979(record[A000010(n+1)+1])`
-/

namespace A071629.P14917942760206719529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071629.P14917942760206719529

/-! ## A071629.P3439994454061302798

`A032446(A100484(n+1))`
-/

namespace A071629.P3439994454061302798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A100484 (n + 1)).toNat

end

end A071629.P3439994454061302798

/-! ## A071629.P13116805356686369158

`A032446(A001747(n+2))`
-/

namespace A071629.P13116805356686369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A001747 (n + 2)).toNat

end

end A071629.P13116805356686369158

/-! ## A071629.P4185561451182338318

`A032446(Δ[2*A007504(n)])`
-/

namespace A071629.P4185561451182338318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (n + 1) - f1 n).toNat

end

end A071629.P4185561451182338318

/-! ## A071629.P6474565363538655320

`A032446(2*p?[A064429(n)])`
-/

namespace A071629.P6474565363538655320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071629.P6474565363538655320

/-! ## A071629.P712248073641847992

`A032446(2*p?[A131732(n)])`
-/

namespace A071629.P712248073641847992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071629.P712248073641847992

/-! ## A071629.P13327196009303828025

`A032446(2*p?[A246425(n)])`
-/

namespace A071629.P13327196009303828025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071629.P13327196009303828025

/-! ## A071629.P2115574263038312446

`A032446(A076274(n+2)+1)`
-/

namespace A071629.P2115574263038312446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A076274 (n + 2) + 1).toNat

end

end A071629.P2115574263038312446

/-! ## A071629.P6986818295848262485

`A032446(2*A000040(n+1))`
-/

namespace A071629.P6986818295848262485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * A000040 (n + 1)).toNat

end

end A071629.P6986818295848262485

/-! ## A071629.P6506206831951573311

`A032446(A001749(n+1)/2)`
-/

namespace A071629.P6506206831951573311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A071629.P6506206831951573311

/-! ## A071629.P17392000660292171242

`A032446(2*A008578(n+2))`
-/

namespace A071629.P17392000660292171242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * A008578 (n + 2)).toNat

end

end A071629.P17392000660292171242

/-! ## A071629.P2329596578648379400

`A032446(2*A182986(n+2))`
-/

namespace A071629.P2329596578648379400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * A182986 (n + 2)).toNat

end

end A071629.P2329596578648379400

/-!
# A071630: Number of terms in the set InvPhi(8*prime(n)), where prime(n) is the n-th prime.

The programs for A071630, there is no canonical definition to state claims against.
-/

/-! ## A071630.P17317318017549560501

`A058979(A100484(n+1))`
-/

namespace A071630.P17317318017549560501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A100484 (n + 1)).toNat

end

end A071630.P17317318017549560501

/-! ## A071630.P5066094296248307756

`A058979(A001747(n+2))`
-/

namespace A071630.P5066094296248307756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A001747 (n + 2)).toNat

end

end A071630.P5066094296248307756

/-! ## A071630.P13782469403054308221

`A058979(A076274(n+2)+1)`
-/

namespace A071630.P13782469403054308221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A076274 (n + 2) + 1).toNat

end

end A071630.P13782469403054308221

/-! ## A071630.P880954422288151513

`A058979(2*A000040(n+1))`
-/

namespace A071630.P880954422288151513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (2 * A000040 (n + 1)).toNat

end

end A071630.P880954422288151513

/-! ## A071630.P11888970335852399418

`A058979(A001749(n+1)/2)`
-/

namespace A071630.P11888970335852399418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A071630.P11888970335852399418

/-! ## A071630.P4034554996870851530

`A058979(2*A008578(n+2))`
-/

namespace A071630.P4034554996870851530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (2 * A008578 (n + 2)).toNat

end

end A071630.P4034554996870851530

/-! ## A071630.P7511861914254361923

`A058979(2*A182986(n+2))`
-/

namespace A071630.P7511861914254361923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (2 * A182986 (n + 2)).toNat

end

end A071630.P7511861914254361923

/-! ## A071630.P11991130316619200605

`A058979(2*(A006093(n+1)+1))`
-/

namespace A071630.P11991130316619200605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (2 * (A006093 (n + 1) + 1)).toNat

end

end A071630.P11991130316619200605

/-! ## A071630.P18253913974241886087

`A058979(A006093(n+1)+A006093(n+1)+2)`
-/

namespace A071630.P18253913974241886087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A006093 (n + 1) + (A006093 (n + 1) + 2)).toNat

end

end A071630.P18253913974241886087

/-! ## A071630.P6925618357420635758

`A032446(4*p?[xor(1, n)+1])`
-/

namespace A071630.P6925618357420635758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A071630.P6925618357420635758

/-! ## A071630.P16507558364411530560

`A032446(A001749(n+1))`
-/

namespace A071630.P16507558364411530560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A001749 (n + 1)).toNat

end

end A071630.P16507558364411530560

/-! ## A071630.P3439401127602325176

`A032446(Δ[4*A007504(n)])`
-/

namespace A071630.P3439401127602325176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (f1 (n + 1) - f1 n).toNat

end

end A071630.P3439401127602325176

/-! ## A071630.P5251407318934940364

`A032446(2*A100484(n+1))`
-/

namespace A071630.P5251407318934940364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * A100484 (n + 1)).toNat

end

end A071630.P5251407318934940364

/-! ## A071630.P18271413406356445149

`A032446(2*A001747(n+2))`
-/

namespace A071630.P18271413406356445149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * A001747 (n + 2)).toNat

end

end A071630.P18271413406356445149

/-! ## A071630.P7659357042604767191

`A032446(4*A000040(n+1))`
-/

namespace A071630.P7659357042604767191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (4 * A000040 (n + 1)).toNat

end

end A071630.P7659357042604767191

/-! ## A071630.P3484951000476612573

`A032446(4*record[A006530(n+2)])`
-/

namespace A071630.P3484951000476612573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071630.P3484951000476612573

/-! ## A071630.P18075459987820357473

`A032446(4*record[A014963(n+2)])`
-/

namespace A071630.P18075459987820357473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071630.P18075459987820357473

/-! ## A071630.P12341622754118483311

`A032446(4*record[A020639(n+2)])`
-/

namespace A071630.P12341622754118483311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071630.P12341622754118483311

/-! ## A071630.P2138296465452960386

`A014197(2*A001749(n+1))`
-/

namespace A071630.P2138296465452960386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * A001749 (n + 1)).toNat

end

end A071630.P2138296465452960386

/-! ## A071630.P5526684667872610360

`A014197(8*A000040(n+1))`
-/

namespace A071630.P5526684667872610360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (8 * A000040 (n + 1)).toNat

end

end A071630.P5526684667872610360

/-!
# A071631: Number of terms in the set InvPhi(16*prime(n)), where prime(n) is the n-th prime.

The programs for A071631, there is no canonical definition to state claims against.
-/

/-! ## A071631.P468752147329110872

`A058979(A001749(n+1))`
-/

namespace A071631.P468752147329110872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (A001749 (n + 1)).toNat

end

end A071631.P468752147329110872

/-! ## A071631.P11326635952163121489

`A058979(2*A100484(n+1))`
-/

namespace A071631.P11326635952163121489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (2 * A100484 (n + 1)).toNat

end

end A071631.P11326635952163121489

/-! ## A071631.P8340024040795195475

`A058979(2*A001747(n+2))`
-/

namespace A071631.P8340024040795195475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (2 * A001747 (n + 2)).toNat

end

end A071631.P8340024040795195475

/-! ## A071631.P796922969699613792

`A058979(4*A000040(n+1))`
-/

namespace A071631.P796922969699613792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058979 (4 * A000040 (n + 1)).toNat

end

end A071631.P796922969699613792

/-! ## A071631.P18275507112764453044

`A032446(8*p?[xor(1, n)+1])`
-/

namespace A071631.P18275507112764453044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A071631.P18275507112764453044

/-! ## A071631.P16196969928556095774

`A032446(2*A001749(n+1))`
-/

namespace A071631.P16196969928556095774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * A001749 (n + 1)).toNat

end

end A071631.P16196969928556095774

/-! ## A071631.P9650876720893426064

`A032446(8*A000040(n+1))`
-/

namespace A071631.P9650876720893426064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * A000040 (n + 1)).toNat

end

end A071631.P9650876720893426064

/-! ## A071631.P3862434969963348236

`A032446(8*A008578(n+2))`
-/

namespace A071631.P3862434969963348236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * A008578 (n + 2)).toNat

end

end A071631.P3862434969963348236

/-! ## A071631.P17329852880671501889

`A032446(8*record[A006530(n+2)])`
-/

namespace A071631.P17329852880671501889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071631.P17329852880671501889

/-! ## A071631.P61639706265376145

`A032446(8*record[A014963(n+2)])`
-/

namespace A071631.P61639706265376145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071631.P61639706265376145

/-! ## A071631.P17808456513419380762

`A032446(8*record[A020639(n+2)])`
-/

namespace A071631.P17808456513419380762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071631.P17808456513419380762

/-! ## A071631.P3735605576090551384

`A032446(2*2*A100484(n+1))`
-/

namespace A071631.P3735605576090551384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * (2 * A100484 (n + 1))).toNat

end

end A071631.P3735605576090551384

/-! ## A071631.P2756941552125457797

`A032446(8*(record[A000010(n+1)]+1))`
-/

namespace A071631.P2756941552125457797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (8 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A071631.P2756941552125457797

/-! ## A071631.P7623660535787599588

`A032446(A022144(Δ[A007504(n)]))`
-/

namespace A071631.P7623660535787599588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A022144 (f1 (n + 1) - f1 n).toNat).toNat

end

end A071631.P7623660535787599588

/-! ## A071631.P8675597909207304830

`A032446(A022144(p?[A064429(n)]))`
-/

namespace A071631.P8675597909207304830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A022144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A071631.P8675597909207304830

/-! ## A071631.P1456359831828863976

`A032446(A022144(p?[A131732(n)]))`
-/

namespace A071631.P1456359831828863976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A022144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A071631.P1456359831828863976

/-! ## A071631.P1809563122947166008

`A032446(A022144(p?[A246425(n)]))`
-/

namespace A071631.P1809563122947166008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A022144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A071631.P1809563122947166008

/-! ## A071631.P2826091334173105731

`A014197(16*p?[A014681(n)])`
-/

namespace A071631.P2826091334173105731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (16 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071631.P2826091334173105731

/-! ## A071631.P1013907543143002684

`A014197(4*A001749(n+1))`
-/

namespace A071631.P1013907543143002684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (4 * A001749 (n + 1)).toNat

end

end A071631.P1013907543143002684

/-! ## A071631.P4452674321109996702

`A014197(16*A000040(n+1))`
-/

namespace A071631.P4452674321109996702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (16 * A000040 (n + 1)).toNat

end

end A071631.P4452674321109996702

/-!
# A071635: Number of decompositions of 4*n+2 into sum of two primes of form 4*k+1.

The programs for A071635, there is no canonical definition to state claims against.
-/

/-! ## A071635.P12319801383946653943

`A002375(2*n+1)-A156642(n)`
-/

namespace A071635.P12319801383946653943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * n + 1) - A156642 n

end

end A071635.P12319801383946653943

/-! ## A071635.P11516959623080461591

`A045917(2*n+1)-A156642(n)`
-/

namespace A071635.P11516959623080461591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (2 * n + 1) - A156642 n

end

end A071635.P11516959623080461591

/-! ## A071635.P4414147724249773255

`A190353(A016825(n))-A156642(n)`
-/

namespace A071635.P4414147724249773255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A016825 n).toNat - A156642 n

end

end A071635.P4414147724249773255

/-! ## A071635.P7726014787017476259

`ceil(A280667(2*n+1)/2)`
-/

namespace A071635.P7726014787017476259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280667 (2 * n + 1) : ℚ) / 2⌉

end

end A071635.P7726014787017476259

/-! ## A071635.P6230424893732211293

`A110654(A280667(2*n+1))`
-/

namespace A071635.P6230424893732211293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A280667 (2 * n + 1)).toNat

end

end A071635.P6230424893732211293

/-!
# A071637: Largest exponent k >=0 such that (n+1)^k divides n!.

The programs for A071637, there is no canonical definition to state claims against.
-/

/-! ## A071637.P1146553858734491966

`A011776(n+2)-1`
-/

namespace A071637.P1146553858734491966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 2) - 1

end

end A071637.P1146553858734491966

/-! ## A071637.P17473910627173427430

`A023443(A011776(n+2))`
-/

namespace A071637.P17473910627173427430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A011776 (n + 2)).toNat

end

end A071637.P17473910627173427430

/-! ## A071637.P1983868891776422438

`∑[A000038(n)!*Δ[A011776(n+1)]]`
-/

namespace A071637.P1983868891776422438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071637.P1983868891776422438

/-! ## A071637.P5161198034940990046

`(A011776(n+2)+A005408(n))%(n+1)`
-/

namespace A071637.P5161198034940990046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011776 (n + 2) + A005408 n) (n + 1 : ℤ)

end

end A071637.P5161198034940990046

/-! ## A071637.P17590540070563935689

`∑[A000007(n+1)+Δ[A011776(n+1)]]`
-/

namespace A071637.P17590540070563935689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071637.P17590540070563935689

/-! ## A071637.P12610752523636660155

`∑[A000038(n+1)+Δ[A011776(n+1)]]`
-/

namespace A071637.P12610752523636660155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071637.P12610752523636660155

/-! ## A071637.P9020317900454014836

`∑[Δ[A011776(n+1)]+A008683(8*n+4)]`
-/

namespace A071637.P9020317900454014836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071637.P9020317900454014836

/-! ## A071637.P13970186442641204598

`val(A062763(n+2), n+2)`
-/

namespace A071637.P13970186442641204598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062763 (n + 2)).toNat (n + 2)

end

end A071637.P13970186442641204598

/-! ## A071637.P10443047021187394017

`val(A156034(n), n+2)`
-/

namespace A071637.P10443047021187394017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A156034 n).toNat (n + 2)

end

end A071637.P10443047021187394017

/-! ## A071637.P6952778235180932555

`val(A160618(n), n+2)`
-/

namespace A071637.P6952778235180932555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160618 n).toNat (n + 2)

end

end A071637.P6952778235180932555

/-!
# A071638: Numbers n such that phi(n) = b(n,1)^b(n,0) where b(n,1) is the number of 1's in binary representation of n and b(n,0) the number of 0's.

The programs for A071638, there is no canonical definition to state claims against.
-/

/-! ## A071638.P8175686248321829193

`eq[A000010(A028310(n)), A301895(n)]`
-/

namespace A071638.P8175686248321829193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071638.P8175686248321829193

/-! ## A071638.P14690686026615050610

`eq[A000010(A123108(2*n)), A301895(n)]`
-/

namespace A071638.P14690686026615050610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071638.P14690686026615050610

/-! ## A071638.P5326350593619014560

`eq[A000010(A233583(n+1)), A301895(n)]`
-/

namespace A071638.P5326350593619014560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071638.P5326350593619014560

/-! ## A071638.P4044321057182222275

`A342495(A342494(n)+A174269(n+1))`
-/

namespace A071638.P4044321057182222275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342495 (A342494 n + A174269 (n + 1)).toNat

end

end A071638.P4044321057182222275

/-! ## A071638.P7339641671312625092

`eq[A000010(n+1), A059499(A351168(n+1))]+1`
-/

namespace A071638.P7339641671312625092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (A351168 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071638.P7339641671312625092

/-!
# A071640: a(n) = Sum_{i=1..n} A040051(i).

The programs for A071640, there is no canonical definition to state claims against.
-/

/-! ## A071640.P15249114418271659861

`∑[A000700(n+1)%2]`
-/

namespace A071640.P15249114418271659861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P15249114418271659861

/-! ## A071640.P14539659239914663334

`∑[and(1, A081362(n+1))]`
-/

namespace A071640.P14539659239914663334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081362 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P14539659239914663334

/-! ## A071640.P10469171130339579167

`∑[and(1, A178743(n+1))]`
-/

namespace A071640.P10469171130339579167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A178743 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P10469171130339579167

/-! ## A071640.P6470472369671088502

`∑[char[A052002(n+1)-1]]`
-/

namespace A071640.P6470472369671088502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P6470472369671088502

/-! ## A071640.P12530155321867402037

`(A086144(n+1)+n+1)/2`
-/

namespace A071640.P12530155321867402037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086144 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A071640.P12530155321867402037

/-! ## A071640.P4791780212411892250

`∑[A040051(n+1)]`
-/

namespace A071640.P4791780212411892250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P4791780212411892250

/-! ## A071640.P14913666381080526419

`∑[abs(Δ[A071754(n)])]`
-/

namespace A071640.P14913666381080526419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P14913666381080526419

/-! ## A071640.P14707294218217862625

`A071754(n+1)-1`
-/

namespace A071640.P14707294218217862625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071754 (n + 1) - 1

end

end A071640.P14707294218217862625

/-! ## A071640.P1082000428488601412

`∑[and(1, A260221(n+1))]`
-/

namespace A071640.P1082000428488601412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260221 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P1082000428488601412

/-! ## A071640.P16112649680068558317

`1-A087177(n+1)+n`
-/

namespace A071640.P16112649680068558317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087177 (n + 1) + (n : ℤ)

end

end A071640.P16112649680068558317

/-! ## A071640.P10921093644199629969

`∑[A071754(Δ[A071754(n)])-1]`
-/

namespace A071640.P10921093644199629969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071754 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P10921093644199629969

/-! ## A071640.P12784048023715985605

`A087177(n+1)+A086144(n+1)`
-/

namespace A071640.P12784048023715985605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087177 (n + 1) + A086144 (n + 1)

end

end A071640.P12784048023715985605

/-! ## A071640.P9652663929574653802

`∑[A114424(n+1)%2]`
-/

namespace A071640.P9652663929574653802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114424 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P9652663929574653802

/-! ## A071640.P9919641667862190181

`∑[A047993(n+1)%2]`
-/

namespace A071640.P9919641667862190181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047993 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P9919641667862190181

/-! ## A071640.P15089872691056539117

`∑[A000041(n+1)%2]`
-/

namespace A071640.P15089872691056539117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P15089872691056539117

/-! ## A071640.P9778880754987445286

`∑[and(1, A000041(1-(n-2*n)))]`
-/

namespace A071640.P9778880754987445286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P9778880754987445286

/-! ## A071640.P8095440367082094856

`∑[2-gcd(2, A000041(2*n+1-n))]`
-/

namespace A071640.P8095440367082094856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A000041 (2 * n + 1 - n)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P8095440367082094856

/-! ## A071640.P10123495753672325447

`∑[and(1, A022661(n+1))]`
-/

namespace A071640.P10123495753672325447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A022661 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P10123495753672325447

/-! ## A071640.P2343008736392032618

`∑[A022629(n+1)%2]`
-/

namespace A071640.P2343008736392032618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022629 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P2343008736392032618

/-! ## A071640.P1444672656916878008

`∑[and(1, A292464(n+1))]`
-/

namespace A071640.P1444672656916878008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A292464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071640.P1444672656916878008

/-!
# A071642: Numbers n such that x^n + x^(n-1) + x^(n-2) + ... + x + 1 is irreducible over GF(2).

The programs for A071642, there is no canonical definition to state claims against.
-/

/-! ## A071642.P4643139087200919053

`A050229(n+1)-1`
-/

namespace A071642.P4643139087200919053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1) - 1

end

end A071642.P4643139087200919053

/-! ## A071642.P11513207364686832365

`A349340(A020639(n+3))+A050229(n+1)`
-/

namespace A071642.P11513207364686832365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A020639 (n + 3)).toNat + A050229 (n + 1)

end

end A071642.P11513207364686832365

/-! ## A071642.P16030534279843591836

`A000010(A050229(n+1))%A005897(n)`
-/

namespace A071642.P16030534279843591836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A050229 (n + 1)).toNat) (A005897 n)

end

end A071642.P16030534279843591836

/-! ## A071642.P18164422723088963615

`∩[A007885(n+1), A014657(n+1)]-1`
-/

namespace A071642.P18164422723088963615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071642.P18164422723088963615

/-! ## A071642.P6850847233363772370

`lt[A319350(n+1), 4]`
-/

namespace A071642.P6850847233363772370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071642.P6850847233363772370

/-! ## A071642.P10361041699121766357

`lt[A319351(n+1), 4]`
-/

namespace A071642.P10361041699121766357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319351 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071642.P10361041699121766357

/-! ## A071642.P672576600904682565

`∩[A007885(n+1), A047606(n+1)]-1`
-/

namespace A071642.P672576600904682565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071642.P672576600904682565

/-! ## A071642.P3458651451621039011

`∩[A007885(n+1), A034044(n+1)]-1`
-/

namespace A071642.P3458651451621039011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071642.P3458651451621039011

/-! ## A071642.P12274289773241300076

`∩[A007885(n+1), A047449(n+1)]-1`
-/

namespace A071642.P12274289773241300076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071642.P12274289773241300076

/-! ## A071642.P11079452839080428429

`∩[A007885(n+1), A047607(n+1)]-1`
-/

namespace A071642.P11079452839080428429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071642.P11079452839080428429

/-! ## A071642.P18051586457387398936

`∩[A007885(n+1), A047450(n+1)]-1`
-/

namespace A071642.P18051586457387398936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047450 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071642.P18051586457387398936

/-! ## A071642.P7235547083916449361

`lt[A091248(n+1), 3]`
-/

namespace A071642.P7235547083916449361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071642.P7235547083916449361

/-! ## A071642.P12241394364560061264

`eq[n, A024222(n+1)]`
-/

namespace A071642.P12241394364560061264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071642.P12241394364560061264

/-! ## A071642.P8913998316629867317

`record[and(n, A007733(n+1))]`
-/

namespace A071642.P8913998316629867317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A007733 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071642.P8913998316629867317

/-! ## A071642.P5413114037472021815

`A006579(A050229(n+1))`
-/

namespace A071642.P5413114037472021815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (A050229 (n + 1)).toNat

end

end A071642.P5413114037472021815

/-! ## A071642.P11739370717633090799

`record[A024222(A006530(n+1))]`
-/

namespace A071642.P11739370717633090799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071642.P11739370717633090799

/-! ## A071642.P17938982133669491197

`record[A024222(A014963(n+1))]`
-/

namespace A071642.P17938982133669491197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071642.P17938982133669491197

/-! ## A071642.P8379621871778924551

`record[A024222(A020639(n+1))]`
-/

namespace A071642.P8379621871778924551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071642.P8379621871778924551

/-! ## A071642.P18353004134960245703

`eq[A007733(n+1), A028310(n)]`
-/

namespace A071642.P18353004134960245703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071642.P18353004134960245703

/-!
# A071645: a(n) = A051193(A072109(n))/A018804(A072109(n)).

The programs for A071645, there is no canonical definition to state claims against.
-/

/-! ## A071645.P16496045200899575676

`A051193(A072109(n+1))/A018804(A072109(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071645.P16496045200899575676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051193 (A072109 (n + 1)).toNat : ℚ) / (A018804 (A072109 (n + 1)).toNat : ℚ)

end

end A071645.P16496045200899575676

/-!
# A071646: Number of base 4 n-digit numbers with digit sum n.

The programs for A071646, there is no canonical definition to state claims against.
-/

/-! ## A071646.P5207125724834185801

`A295555(∑[9*n+5])`
-/

namespace A071646.P5207125724834185801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071646.P5207125724834185801

/-! ## A071646.P861907777302460720

`or(char[3], A295555(A022267(n+1)))`
-/

namespace A071646.P861907777302460720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A295555 (A022267 (n + 1)).toNat)

end

end A071646.P861907777302460720

/-! ## A071646.P3564020076755104145

`A295555(A022267(n+1))+A000007(n+1)`
-/

namespace A071646.P3564020076755104145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295555 (A022267 (n + 1)).toNat + A000007 (n + 1)

end

end A071646.P3564020076755104145

/-! ## A071646.P7980923482120872708

`A295555(A022267(n+1))%(2*A000079(n)²)`
-/

namespace A071646.P7980923482120872708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295555 (A022267 (n + 1)).toNat) (2 * A000079 n ^ 2)

end

end A071646.P7980923482120872708

/-! ## A071646.P13910053838121724568

`A295555(A022267(n+1))^A014963(4*n+2)`
-/

namespace A071646.P13910053838121724568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295555 (A022267 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A071646.P13910053838121724568

/-!
# A071647: a(n) is the maximum number of elements among the continued fractions for n/1, n/2, n/3, n/4, ..., n/n.

The programs for A071647, there is no canonical definition to state claims against.
-/

/-! ## A071647.P18337760516708352078

`A049819(n+1)+1`
-/

namespace A071647.P18337760516708352078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049819 (n + 1) + 1

end

end A071647.P18337760516708352078

/-! ## A071647.P18418773596136537329

`A034883(ceil(2/(n+1)+n))`
-/

namespace A071647.P18418773596136537329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 ⌈2 / (n + 1 : ℚ) + (n : ℚ)⌉.toNat

end

end A071647.P18418773596136537329

/-! ## A071647.P10310492824149218014

`A034883(n+1)%lcm(n+2, floor((2*n+1)/(n+1)*a(n-1)))` with `a(0)=1`
-/

namespace A071647.P10310492824149218014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A034883 (n + 1)) (Int.lcm (n + 2 : ℤ) ⌊(2 * n + 1 : ℚ) / (n + 1 : ℚ) * (a (n - 1) : ℚ)⌋ : ℤ)

end

end A071647.P10310492824149218014

/-! ## A071647.P6348754863699230312

`A028310(A034883(n+1))`
-/

namespace A071647.P6348754863699230312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034883 (n + 1)).toNat

end

end A071647.P6348754863699230312

/-! ## A071647.P7044080029798638165

`A034883(n+1)+A000007(n)`
-/

namespace A071647.P7044080029798638165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + A000007 n

end

end A071647.P7044080029798638165

/-! ## A071647.P5097573237372059623

`A034883(n+1)+char[A159300(n)]`
-/

namespace A071647.P5097573237372059623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071647.P5097573237372059623

/-! ## A071647.P9207979476392406313

`A254667(A034883(n+1)+1)-1`
-/

namespace A071647.P9207979476392406313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A034883 (n + 1) + 1).toNat - 1

end

end A071647.P9207979476392406313

/-! ## A071647.P17426160925578519268

`A233583(A034883(n+1)+2)-1`
-/

namespace A071647.P17426160925578519268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A034883 (n + 1) + 2).toNat - 1

end

end A071647.P17426160925578519268

/-! ## A071647.P15792752847423182919

`A034883(n+1)+A057428(n)+1`
-/

namespace A071647.P15792752847423182919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + (A057428 n + 1)

end

end A071647.P15792752847423182919

/-! ## A071647.P11201994803465174138

`A034883(n+1)+1-A057427(n)`
-/

namespace A071647.P11201994803465174138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + (1 - A057427 n)

end

end A071647.P11201994803465174138

/-! ## A071647.P2832518831194990075

`A140106(2*A034883(n+1)+1)+1`
-/

namespace A071647.P2832518831194990075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A034883 (n + 1) + 1).toNat + 1

end

end A071647.P2832518831194990075

/-! ## A071647.P15173377381037036790

`gcd(A034883(n+1), A056835(A034883(n+1)²))`
-/

namespace A071647.P15173377381037036790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034883 (n + 1)) (A056835 (A034883 (n + 1) ^ 2).toNat)

end

end A071647.P15173377381037036790

/-! ## A071647.P5828038935086017167

`A034883(n+1)+1-A001221(A000015(n+1))`
-/

namespace A071647.P5828038935086017167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + (1 - A001221 (A000015 (n + 1)).toNat)

end

end A071647.P5828038935086017167

/-! ## A071647.P3684308673820568628

`A034883(n+1)+A023933(2*A034883(n+1))`
-/

namespace A071647.P3684308673820568628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + A023933 (2 * A034883 (n + 1)).toNat

end

end A071647.P3684308673820568628

/-! ## A071647.P7490107762327645058

`A034883(n+1)+A008683(A002313(n+1)-1)`
-/

namespace A071647.P7490107762327645058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + A008683 (A002313 (n + 1) - 1).toNat

end

end A071647.P7490107762327645058

/-! ## A071647.P12954063130222783331

`gcd(A002182(n+1), A034883(n+1))`
-/

namespace A071647.P12954063130222783331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A034883 (n + 1))

end

end A071647.P12954063130222783331

/-! ## A071647.P8389947146872818591

`A034883(n+1)+A000035(A000040(n+1)+1)`
-/

namespace A071647.P8389947146872818591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + A000035 (A000040 (n + 1) + 1).toNat

end

end A071647.P8389947146872818591

/-! ## A071647.P4539354515191460332

`gcd(A034883(n+1), A056835(n))`
-/

namespace A071647.P4539354515191460332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034883 (n + 1)) (A056835 n)

end

end A071647.P4539354515191460332

/-! ## A071647.P3749613405237164876

`A034883(n+1)+A008683((n+1)*(n+1))`
-/

namespace A071647.P3749613405237164876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + A008683 ((n + 1) * (n + 1))

end

end A071647.P3749613405237164876

/-! ## A071647.P237655044170423602

`A034883(n+1)+A122700(n+1)-A089642(n+1)`
-/

namespace A071647.P237655044170423602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + (A122700 (n + 1) - A089642 (n + 1))

end

end A071647.P237655044170423602

/-!
# A071648: Sum of even decimal digits of n.

The programs for A071648, the canonical program `A071648.P10804961591303459157` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071648 has offset 1).

The definition of A071648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071648.P10804961591303459157

`A007953(n+1)-A071649(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071648

/-- `A007953(n+1)-A071649(n+1)` -/
def P10804961591303459157.Spec : Prop :=
  ∀ n, P10804961591303459157.a n = A071648 (n + 1)

theorem P10804961591303459157.correct : P10804961591303459157.Spec := by
  intro n
  simp only [A071648, Nat.add_sub_cancel]

end A071648

/-! ## A071648.P5245836065151225871

`∑{digits}[n+1, #%or(1, #)]`
-/

namespace A071648.P5245836065151225871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.lor 1 x).sum

end

end A071648.P5245836065151225871

namespace A071648

/-- `∑{digits}[n+1, #%or(1, #)]` -/
def P5245836065151225871.Spec : Prop :=
  ∀ n, (P5245836065151225871.a n : ℤ) = A071648 (n + 1)

end A071648

/-! ## A071648.P1330127650860906549

`∑{digits}[n+1, A001613(#)]`
-/

namespace A071648.P1330127650860906549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001613 x).sum

end

end A071648.P1330127650860906549

namespace A071648

/-- `∑{digits}[n+1, A001613(#)]` -/
def P1330127650860906549.Spec : Prop :=
  ∀ n, P1330127650860906549.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P15935413610785416992

`∑{digits}[n+1, A237420(#)]`
-/

namespace A071648.P15935413610785416992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A237420 x).sum

end

end A071648.P15935413610785416992

namespace A071648

/-- `∑{digits}[n+1, A237420(#)]` -/
def P15935413610785416992.Spec : Prop :=
  ∀ n, P15935413610785416992.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P15647906207083231068

`∑{digits}[n+1, A319289(#²)]`
-/

namespace A071648.P15647906207083231068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A319289 (x ^ 2)).sum

end

end A071648.P15647906207083231068

namespace A071648

/-- `∑{digits}[n+1, A319289(#²)]` -/
def P15647906207083231068.Spec : Prop :=
  ∀ n, P15647906207083231068.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P17886937536178503658

`∑{digits}[n+1, A001222(gcd(2, #)^#)]`
-/

namespace A071648.P17886937536178503658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001222 (Nat.gcd 2 x ^ x)).sum

end

end A071648.P17886937536178503658

namespace A071648

/-- `∑{digits}[n+1, A001222(gcd(2, #)^#)]` -/
def P17886937536178503658.Spec : Prop :=
  ∀ n, P17886937536178503658.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P4383469181092971586

`A071649(n+1)-A071650(n+1)`
-/

namespace A071648.P4383469181092971586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (n + 1) - A071650 (n + 1)

end

end A071648.P4383469181092971586

namespace A071648

/-- `A071649(n+1)-A071650(n+1)` -/
def P4383469181092971586.Spec : Prop :=
  ∀ n, P4383469181092971586.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P16023449877594710897

`A085562(n+1)+A085563(n+1)-A071649(n+1)`
-/

namespace A071648.P16023449877594710897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (n + 1) + (A085563 (n + 1) - A071649 (n + 1))

end

end A071648.P16023449877594710897

namespace A071648

/-- `A085562(n+1)+A085563(n+1)-A071649(n+1)` -/
def P16023449877594710897.Spec : Prop :=
  ∀ n, P16023449877594710897.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P16852654951365674835

`A007953(A001613(n+1))`
-/

namespace A071648.P16852654951365674835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A001613 (n + 1)).toNat

end

end A071648.P16852654951365674835

namespace A071648

/-- `A007953(A001613(n+1))` -/
def P16852654951365674835.Spec : Prop :=
  ∀ n, P16852654951365674835.a n = A071648 (n + 1)

end A071648

/-! ## A071648.P15661063890636367883

`1-A210524(n+1)+n`
-/

namespace A071648.P15661063890636367883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210524 (n + 1) + (n : ℤ)

end

end A071648.P15661063890636367883

namespace A071648

/-- `1-A210524(n+1)+n` -/
def P15661063890636367883.Spec : Prop :=
  ∀ n, P15661063890636367883.a n = A071648 (n + 1)

end A071648

/-!
# A071649: Sum of odd decimal digits of n.

The programs for A071649, the canonical program `A071649.P138137886603065122` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071649 has offset 1).

The definition of A071649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071649.P138137886603065122

`∑{digits}[n+1, (#^5)%16]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071649

/-- `∑{digits}[n+1, (#^5)%16]` -/
def P138137886603065122.Spec : Prop :=
  ∀ n, (P138137886603065122.a n : ℤ) = A071649 (n + 1)

theorem P138137886603065122.correct : P138137886603065122.Spec := by
  intro n
  simp only [A071649, Nat.add_sub_cancel]

end A071649

/-! ## A071649.P11905956059688061380

`∑{digits}[n+1, and(15, #^5)]`
-/

namespace A071649.P11905956059688061380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 15 (x ^ 5)).sum

end

end A071649.P11905956059688061380

namespace A071649

/-- `∑{digits}[n+1, and(15, #^5)]` -/
def P11905956059688061380.Spec : Prop :=
  ∀ n, (P11905956059688061380.a n : ℤ) = A071649 (n + 1)

end A071649

/-! ## A071649.P15135392581667471632

`∑{digits}[n+1, #*#%2]`
-/

namespace A071649.P15135392581667471632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x * (x % 2)).sum

end

end A071649.P15135392581667471632

namespace A071649

/-- `∑{digits}[n+1, #*#%2]` -/
def P15135392581667471632.Spec : Prop :=
  ∀ n, (P15135392581667471632.a n : ℤ) = A071649 (n + 1)

end A071649

/-! ## A071649.P3050854283630190214

`∑{digits}[n+1, lcm(2, #)-#]`
-/

namespace A071649.P3050854283630190214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.lcm 2 x : ℤ) - (x : ℤ)).sum

end

end A071649.P3050854283630190214

namespace A071649

/-- `∑{digits}[n+1, lcm(2, #)-#]` -/
def P3050854283630190214.Spec : Prop :=
  ∀ n, P3050854283630190214.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P17552046943461766414

`∑{digits}[n+1, #*and(1, #)]`
-/

namespace A071649.P17552046943461766414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x * Nat.land 1 x).sum

end

end A071649.P17552046943461766414

namespace A071649

/-- `∑{digits}[n+1, #*and(1, #)]` -/
def P17552046943461766414.Spec : Prop :=
  ∀ n, (P17552046943461766414.a n : ℤ) = A071649 (n + 1)

end A071649

/-! ## A071649.P13582294778976733966

`∑{digits}[n+1, A167465(#)]`
-/

namespace A071649.P13582294778976733966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A167465 x).sum

end

end A071649.P13582294778976733966

namespace A071649

/-- `∑{digits}[n+1, A167465(#)]` -/
def P13582294778976733966.Spec : Prop :=
  ∀ n, P13582294778976733966.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P2353537063335876273

`∑{digits}[n+1, A210524(#)]`
-/

namespace A071649.P2353537063335876273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A210524 x).sum

end

end A071649.P2353537063335876273

namespace A071649

/-- `∑{digits}[n+1, A210524(#)]` -/
def P2353537063335876273.Spec : Prop :=
  ∀ n, P2353537063335876273.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P3597214872961009723

`∑{digits}[n+1, A319290(#²)]`
-/

namespace A071649.P3597214872961009723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A319290 (x ^ 2)).sum

end

end A071649.P3597214872961009723

namespace A071649

/-- `∑{digits}[n+1, A319290(#²)]` -/
def P3597214872961009723.Spec : Prop :=
  ∀ n, P3597214872961009723.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P5498754521163362613

`A071650(n+1)+A071648(n+1)`
-/

namespace A071649.P5498754521163362613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1) + A071648 (n + 1)

end

end A071649.P5498754521163362613

namespace A071649

/-- `A071650(n+1)+A071648(n+1)` -/
def P5498754521163362613.Spec : Prop :=
  ∀ n, P5498754521163362613.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P2893383864760055709

`A007953(n+1)-A071648(n+1)`
-/

namespace A071649.P2893383864760055709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A071648 (n + 1)

end

end A071649.P2893383864760055709

namespace A071649

/-- `A007953(n+1)-A071648(n+1)` -/
def P2893383864760055709.Spec : Prop :=
  ∀ n, P2893383864760055709.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P6411984134549509494

`A085562(n+1)+A085563(n+1)-A071648(n+1)`
-/

namespace A071649.P6411984134549509494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (n + 1) + (A085563 (n + 1) - A071648 (n + 1))

end

end A071649.P6411984134549509494

namespace A071649

/-- `A085562(n+1)+A085563(n+1)-A071648(n+1)` -/
def P6411984134549509494.Spec : Prop :=
  ∀ n, P6411984134549509494.a n = A071649 (n + 1)

end A071649

/-! ## A071649.P3365833299768479854

`A007953(n+1)-A007953(A001613(n+1))`
-/

namespace A071649.P3365833299768479854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (A001613 (n + 1)).toNat

end

end A071649.P3365833299768479854

namespace A071649

/-- `A007953(n+1)-A007953(A001613(n+1))` -/
def P3365833299768479854.Spec : Prop :=
  ∀ n, P3365833299768479854.a n = A071649 (n + 1)

end A071649

/-!
# A071650: Difference between sums of odd and even digits of n.

The programs for A071650, the canonical program `A071650.P17002798655539676693` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071650 has offset 1).

The definition of A071650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071648, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071650.P17002798655539676693

`A071649(n+1)-A071648(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071650

/-- `A071649(n+1)-A071648(n+1)` -/
def P17002798655539676693.Spec : Prop :=
  ∀ n, P17002798655539676693.a n = A071650 (n + 1)

theorem P17002798655539676693.correct : P17002798655539676693.Spec := by
  intro n
  simp only [A071650, Nat.add_sub_cancel]

end A071650

/-! ## A071650.P11187821258924930115

`∑{digits}[n+1, A181983(#)]`
-/

namespace A071650.P11187821258924930115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181983 x).sum

end

end A071650.P11187821258924930115

namespace A071650

/-- `∑{digits}[n+1, A181983(#)]` -/
def P11187821258924930115.Spec : Prop :=
  ∀ n, P11187821258924930115.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P5913515551478870385

`∑{digits}[n+1, A329116(#²)]`
-/

namespace A071650.P5913515551478870385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A329116 (x ^ 2)).sum

end

end A071650.P5913515551478870385

namespace A071650

/-- `∑{digits}[n+1, A329116(#²)]` -/
def P5913515551478870385.Spec : Prop :=
  ∀ n, P5913515551478870385.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P16910028752013201507

`∑{digits}[n+1, A105811(#+2)]`
-/

namespace A071650.P16910028752013201507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105811 (x + 2)).sum

end

end A071650.P16910028752013201507

namespace A071650

/-- `∑{digits}[n+1, A105811(#+2)]` -/
def P16910028752013201507.Spec : Prop :=
  ∀ n, P16910028752013201507.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P12354517494001576858

`∑{digits}[n+1, #/(2-A307193(#))]`
-/

namespace A071650.P12354517494001576858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / (2 - A307193 x : ℚ)).sum

end

end A071650.P12354517494001576858

namespace A071650

/-- `∑{digits}[n+1, #/(2-A307193(#))]` -/
def P12354517494001576858.Spec : Prop :=
  ∀ n, P12354517494001576858.a n = (A071650 (n + 1) : ℚ)

end A071650

/-! ## A071650.P17975290847380254192

`∑{digits}[n+1, #*(#-A004442(#))]`
-/

namespace A071650.P17975290847380254192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * ((x : ℤ) - A004442 x)).sum

end

end A071650.P17975290847380254192

namespace A071650

/-- `∑{digits}[n+1, #*(#-A004442(#))]` -/
def P17975290847380254192.Spec : Prop :=
  ∀ n, P17975290847380254192.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P11052325815381475839

`∑{digits}[n+1, A001057(A042948(#))]`
-/

namespace A071650.P11052325815381475839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001057 (A042948 x).toNat).sum

end

end A071650.P11052325815381475839

namespace A071650

/-- `∑{digits}[n+1, A001057(A042948(#))]` -/
def P11052325815381475839.Spec : Prop :=
  ∀ n, P11052325815381475839.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P12930613366056394113

`∑{digits}[n+1, #*A065359(A011782(#))]`
-/

namespace A071650.P12930613366056394113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A065359 (A011782 x).toNat).sum

end

end A071650.P12930613366056394113

namespace A071650

/-- `∑{digits}[n+1, #*A065359(A011782(#))]` -/
def P12930613366056394113.Spec : Prop :=
  ∀ n, P12930613366056394113.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P15788988703774660230

`A007953(n+1)-(A071648(n+1)+A071648(n+1))`
-/

namespace A071650.P15788988703774660230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - (A071648 (n + 1) + A071648 (n + 1))

end

end A071650.P15788988703774660230

namespace A071650

/-- `A007953(n+1)-(A071648(n+1)+A071648(n+1))` -/
def P15788988703774660230.Spec : Prop :=
  ∀ n, P15788988703774660230.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P1470261434445130423

`A071649(n+1)+A071649(n+1)-A007953(n+1)`
-/

namespace A071650.P1470261434445130423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (n + 1) + (A071649 (n + 1) - A007953 (n + 1))

end

end A071650.P1470261434445130423

namespace A071650

/-- `A071649(n+1)+A071649(n+1)-A007953(n+1)` -/
def P1470261434445130423.Spec : Prop :=
  ∀ n, P1470261434445130423.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P3950296767346765676

`1-A304440(n+1)+n`
-/

namespace A071650.P3950296767346765676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A304440 (n + 1) + (n : ℤ)

end

end A071650.P3950296767346765676

namespace A071650

/-- `1-A304440(n+1)+n` -/
def P3950296767346765676.Spec : Prop :=
  ∀ n, P3950296767346765676.a n = A071650 (n + 1)

end A071650

/-! ## A071650.P11375753109601323237

`A304439(n+1)-(n+1)`
-/

namespace A071650.P11375753109601323237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304439 (n + 1) - (n + 1 : ℤ)

end

end A071650.P11375753109601323237

namespace A071650

/-- `A304439(n+1)-(n+1)` -/
def P11375753109601323237.Spec : Prop :=
  ∀ n, P11375753109601323237.a n = A071650 (n + 1)

end A071650

/-!
# A071651: Permutation of natural numbers induced by reranking plane binary trees given in the standard lexicographic order (A014486) with an "arithmetic global ranking algorithm", using the bivariate form of A061579 as the packing bijection N x N -> N.

The programs for A071651, there is no canonical definition to state claims against.
-/

/-! ## A071651.P7341764452558642303

`A071653(A057163(n))`
-/

namespace A071651.P7341764452558642303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 (A057163 n).toNat

end

end A071651.P7341764452558642303

/-! ## A071651.P7603737211529874543

`A071653(A071652(A071653(n)))`
-/

namespace A071651.P7603737211529874543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 (A071652 (A071653 n).toNat).toNat

end

end A071651.P7603737211529874543

/-! ## A071651.P15892452243046872485

`A071653(A122339(n)%A124360(n))`
-/

namespace A071651.P15892452243046872485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 (Int.tmod (A122339 n) (A124360 n)).toNat

end

end A071651.P15892452243046872485

/-! ## A071651.P18215873650745482569

`A071653(A122339(n)+A000035(2*C(n, 4)))`
-/

namespace A071651.P18215873650745482569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 (A122339 n + A000035 (2 * Nat.choose n 4)).toNat

end

end A071651.P18215873650745482569

/-! ## A071651.P8396169937640713194

`A071653(A122339(n*A278657(n)))`
-/

namespace A071651.P8396169937640713194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 (A122339 ((n : ℤ) * A278657 n).toNat).toNat

end

end A071651.P8396169937640713194

/-!
# A071652: Inverse permutation to A071651.

The programs for A071652, there is no canonical definition to state claims against.
-/

/-! ## A071652.P18390021989376077808

`A057163(A071654(n))`
-/

namespace A071652.P18390021989376077808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071654 n).toNat

end

end A071652.P18390021989376077808

/-! ## A071652.P12074643766576319342

`A071654(A071651(A071654(A061579(A061579(n)))))`
-/

namespace A071652.P12074643766576319342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071654 (A071651 (A071654 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A071652.P12074643766576319342

/-! ## A071652.P8318707206314367870

`A071654(A071651(A071654(n)%A000302(n)))`
-/

namespace A071652.P8318707206314367870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071654 (A071651 (Int.tmod (A071654 n) (A000302 n)).toNat).toNat

end

end A071652.P8318707206314367870

/-! ## A071652.P13083513717157607980

`A071654(A071651(A071654(A071654(A071653(n)))))`
-/

namespace A071652.P13083513717157607980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071654 (A071651 (A071654 (A071654 (A071653 n).toNat).toNat).toNat).toNat

end

end A071652.P13083513717157607980

/-! ## A071652.P1139666003707971615

`A122340(A071654(n)%A017234(n))`
-/

namespace A071652.P1139666003707971615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122340 (Int.tmod (A071654 n) (A017234 n)).toNat

end

end A071652.P1139666003707971615

/-!
# A071653: Permutation of natural numbers induced by reranking plane binary trees given in the standard lexicographic order (A014486) with an "arithmetic global ranking algorithm", using the bivariate form of A001477 as the packing bijection N x N -> N.

The programs for A071653, there is no canonical definition to state claims against.
-/

/-! ## A071653.P1505910394090423584

`A071651(A057163(n))`
-/

namespace A071653.P1505910394090423584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (A057163 n).toNat

end

end A071653.P1505910394090423584

/-! ## A071653.P8294746529331387542

`A071651(A071654(A071651(n)))`
-/

namespace A071653.P8294746529331387542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (A071654 (A071651 n).toNat).toNat

end

end A071653.P8294746529331387542

/-! ## A071653.P3239366615320948775

`A071651(A072635(A072636(n)))`
-/

namespace A071653.P3239366615320948775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (A072635 (A072636 n).toNat).toNat

end

end A071653.P3239366615320948775

/-! ## A071653.P870536438378481944

`A071651(A072657(A072658(n)))`
-/

namespace A071653.P870536438378481944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (A072657 (A072658 n).toNat).toNat

end

end A071653.P870536438378481944

/-! ## A071653.P12178765762093999206

`A071651(A072637(A072634(n)))`
-/

namespace A071653.P12178765762093999206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (A072637 (A072634 n).toNat).toNat

end

end A071653.P12178765762093999206

/-!
# A071654: Inverse permutation to A071653.

The programs for A071654, there is no canonical definition to state claims against.
-/

/-! ## A071654.P5176048190960200783

`A057163(A071652(n))`
-/

namespace A071654.P5176048190960200783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071652 n).toNat

end

end A071654.P5176048190960200783

/-! ## A071654.P10605092949056812217

`A071652(A071653(A071652(A061579(A061579(n)))))`
-/

namespace A071654.P10605092949056812217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (A071652 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A071654.P10605092949056812217

/-! ## A071654.P3636060482826238173

`A071652(A071653(A071652(n)%A000302(n)))`
-/

namespace A071654.P3636060482826238173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (Int.tmod (A071652 n) (A000302 n)).toNat).toNat

end

end A071654.P3636060482826238173

/-! ## A071654.P16281890410928979765

`A071652(A071653(A071652(A071652(A071651(n)))))`
-/

namespace A071654.P16281890410928979765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (A071652 (A071652 (A071651 n).toNat).toNat).toNat).toNat

end

end A071654.P16281890410928979765

/-! ## A071654.P7599634652781377108

`A122339(A071652(n)%A000079(n))`
-/

namespace A071654.P7599634652781377108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122339 (Int.tmod (A071652 n) (A000079 n)).toNat

end

end A071654.P7599634652781377108

/-!
# A071655: Permutation of natural numbers induced by the automorphism robr_car_cdr! acting on the parenthesizations encoded by A014486.

The programs for A071655, there is no canonical definition to state claims against.
-/

/-! ## A071655.P6491439452969647431

`A057163(A071660(A057163(n)))`
-/

namespace A071655.P6491439452969647431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071660 (A057163 n).toNat).toNat

end

end A071655.P6491439452969647431

/-! ## A071655.P8264766669530048730

`A151933(A000593(n+1))+A057509(A082345(n))`
-/

namespace A071655.P8264766669530048730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A000593 (n + 1)).toNat + A057509 (A082345 n).toNat

end

end A071655.P8264766669530048730

/-! ## A071655.P4719066708546906529

`A057509(A082345(n))+A000038(A220396(n+1))`
-/

namespace A071655.P4719066708546906529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A082345 n).toNat + A000038 (A220396 (n + 1)).toNat

end

end A071655.P4719066708546906529

/-! ## A071655.P7684971391192399169

`A057509(A082345(n))*A068695(A068679(n+1))`
-/

namespace A071655.P7684971391192399169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A082345 n).toNat * A068695 (A068679 (n + 1)).toNat

end

end A071655.P7684971391192399169

/-! ## A071655.P6567345086462075464

`A001221(A321069(n+1))*A057509(A082345(n))`
-/

namespace A071655.P6567345086462075464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A321069 (n + 1)).toNat * A057509 (A082345 n).toNat

end

end A071655.P6567345086462075464

/-! ## A071655.P5889626824822039841

`A057509(A082345(n))+A004530(A143610(n+1))`
-/

namespace A071655.P5889626824822039841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A082345 n).toNat + A004530 (A143610 (n + 1)).toNat

end

end A071655.P5889626824822039841

/-!
# A071656: Permutation of natural numbers induced by the automorphism car_cdr_robl! acting on the parenthesizations encoded by A014486.

The programs for A071656, there is no canonical definition to state claims against.
-/

/-! ## A071656.P11422498395084200435

`A057163(A071659(A057163(n)))`
-/

namespace A071656.P11422498395084200435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071659 (A057163 n).toNat).toNat

end

end A071656.P11422498395084200435

/-! ## A071656.P11892330138100484116

`A089868(A057502(n))-A249832(A193845(n))`
-/

namespace A071656.P11892330138100484116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A057502 n).toNat - A249832 (A193845 n).toNat

end

end A071656.P11892330138100484116

/-! ## A071656.P16616986055362257988

`A089868(A057502(n)%A155489(n+1))`
-/

namespace A071656.P16616986055362257988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.tmod (A057502 n) (A155489 (n + 1))).toNat

end

end A071656.P16616986055362257988

/-! ## A071656.P14821917576115590137

`A089868(A057502(n))+A000038(A089025(n+1))`
-/

namespace A071656.P14821917576115590137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A057502 n).toNat + A000038 (A089025 (n + 1)).toNat

end

end A071656.P14821917576115590137

/-! ## A071656.P10932811733138236612

`A089868(A057502(n))+A000038(A089030(n+1))`
-/

namespace A071656.P10932811733138236612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A057502 n).toNat + A000038 (A089030 (n + 1)).toNat

end

end A071656.P10932811733138236612

/-!
# A071657: Permutation of natural numbers induced by the automorphism car_robr_cdr! acting on the parenthesizations encoded by A014486.

The programs for A071657, there is no canonical definition to state claims against.
-/

/-! ## A071657.P15332443236906532509

`A057163(A071658(A057163(n)))`
-/

namespace A071657.P15332443236906532509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071658 (A057163 n).toNat).toNat

end

end A071657.P15332443236906532509

/-! ## A071657.P10460107630883724804

`A073280(A069770(A071658(A073280(A069770(n)))))`
-/

namespace A071657.P10460107630883724804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 (A071658 (A073280 (A069770 n).toNat).toNat).toNat).toNat

end

end A071657.P10460107630883724804

/-! ## A071657.P14834161324643383950

`A256974(A125761(n+1))+A057161(n)`
-/

namespace A071657.P14834161324643383950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A125761 (n + 1)).toNat + A057161 n

end

end A071657.P14834161324643383950

/-! ## A071657.P632101148162350701

`A057161(n)-A096303(A093655(3*n+4))`
-/

namespace A071657.P632101148162350701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 n - A096303 (A093655 (3 * n + 4)).toNat

end

end A071657.P632101148162350701

/-! ## A071657.P12179664814620888939

`A057161(n)-A000122(A359908(3*n+5))`
-/

namespace A071657.P12179664814620888939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 n - A000122 (A359908 (3 * n + 5)).toNat

end

end A071657.P12179664814620888939

/-!
# A071658: Permutation of natural numbers induced by the automorphism cdr_robl_car! acting on the parenthesizations encoded by A014486.

The programs for A071658, there is no canonical definition to state claims against.
-/

/-! ## A071658.P17570061438960783119

`A057163(A071657(A057163(n)))`
-/

namespace A071658.P17570061438960783119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071657 (A057163 n).toNat).toNat

end

end A071658.P17570061438960783119

/-! ## A071658.P16751678346832688088

`A073280(A069770(A071657(A073280(A069770(n)))))`
-/

namespace A071658.P16751678346832688088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 (A071657 (A073280 (A069770 n).toNat).toNat).toNat).toNat

end

end A071658.P16751678346832688088

/-!
# A071659: Permutation of natural numbers induced by the automorphism car_cdr_robr! acting on the parenthesizations encoded by A014486.

The programs for A071659, there is no canonical definition to state claims against.
-/

/-! ## A071659.P11844755537589188543

`A057163(A071656(A057163(n)))`
-/

namespace A071659.P11844755537589188543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071656 (A057163 n).toNat).toNat

end

end A071659.P11844755537589188543

/-! ## A071659.P14805249944877437892

`A094920(A094932(n+4))*A154452(A069776(n))`
-/

namespace A071659.P14805249944877437892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094920 (A094932 (n + 4)).toNat * A154452 (A069776 n).toNat

end

end A071659.P14805249944877437892

/-! ## A071659.P7982169225786223931

`A154452(A069776(n))+A000007(A005496(n))`
-/

namespace A071659.P7982169225786223931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154452 (A069776 n).toNat + A000007 (A005496 n).toNat

end

end A071659.P7982169225786223931

/-! ## A071659.P12909834531204098367

`A154452(A130987(n)%A089870(3*(n+1)))`
-/

namespace A071659.P12909834531204098367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154452 (Int.tmod (A130987 n) (A089870 (3 * (n + 1)))).toNat

end

end A071659.P12909834531204098367

/-!
# A071660: Permutation of natural numbers induced by the automorphism robl_car_cdr! acting on the parenthesizations encoded by A014486.

The programs for A071660, there is no canonical definition to state claims against.
-/

/-! ## A071660.P16684830658222610649

`A057163(A071655(A057163(n)))`
-/

namespace A071660.P16684830658222610649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071655 (A057163 n).toNat).toNat

end

end A071660.P16684830658222610649

/-! ## A071660.P16211999476719080888

`xor(A069773(n), A369382(A369367(n+1)))`
-/

namespace A071660.P16211999476719080888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069773 n) (A369382 (A369367 (n + 1)).toNat)

end

end A071660.P16211999476719080888

/-! ## A071660.P4392331349598132411

`A069775(A154451(n))%A000040(A022137(n))`
-/

namespace A071660.P4392331349598132411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069775 (A154451 n).toNat) (A000040 (A022137 n).toNat)

end

end A071660.P4392331349598132411

/-! ## A071660.P1505722512790642745

`xor(A011731(A000975(n)), A069773(n))`
-/

namespace A071660.P1505722512790642745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011731 (A000975 n).toNat) (A069773 n)

end

end A071660.P1505722512790642745

/-! ## A071660.P1942782550707271115

`A353472(A376662(n))+A130393(n)`
-/

namespace A071660.P1942782550707271115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (A376662 n).toNat + A130393 n

end

end A071660.P1942782550707271115

/-!
# A071661: Permutation A057505 applied twice ("squared").

The programs for A071661, there is no canonical definition to state claims against.
-/

/-! ## A071661.P3926256977827393035

`A057506(A071663(n))`
-/

namespace A071661.P3926256977827393035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071663 n).toNat

end

end A071661.P3926256977827393035

/-! ## A071661.P5488612878300561810

`A057506(A057506(A071665(n)))`
-/

namespace A071661.P5488612878300561810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071665 n).toNat).toNat

end

end A071661.P5488612878300561810

/-! ## A071661.P761679002500373602

`A057506(A057506(A057506(A071667(n))))`
-/

namespace A071661.P761679002500373602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A057506 (A071667 n).toNat).toNat).toNat

end

end A071661.P761679002500373602

/-! ## A071661.P4810437087138763884

`A057164(A069787(n))`
-/

namespace A071661.P4810437087138763884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069787 n).toNat

end

end A071661.P4810437087138763884

/-! ## A071661.P6523952218511510948

`A057164(A057506(A057163(n)))`
-/

namespace A071661.P6523952218511510948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057506 (A057163 n).toNat).toNat

end

end A071661.P6523952218511510948

/-! ## A071661.P3109941758714239808

`A057164(A057506(A057506(A057164(n))))`
-/

namespace A071661.P3109941758714239808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057506 (A057506 (A057164 n).toNat).toNat).toNat

end

end A071661.P3109941758714239808

/-! ## A071661.P9054597520719930087

`A071666(A071669(n))`
-/

namespace A071661.P9054597520719930087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A071669 n).toNat

end

end A071661.P9054597520719930087

/-! ## A071661.P12994591249423229458

`A071665(A071662(n))`
-/

namespace A071661.P12994591249423229458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A071662 n).toNat

end

end A071661.P12994591249423229458

/-! ## A071661.P11384784180887936381

`A057164(A071662(A057164(n)))`
-/

namespace A071661.P11384784180887936381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A071662 (A057164 n).toNat).toNat

end

end A071661.P11384784180887936381

/-! ## A071661.P6493949924017910552

`A071662(A057506(A071667(n)))`
-/

namespace A071661.P6493949924017910552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (A057506 (A071667 n).toNat).toNat

end

end A071661.P6493949924017910552

/-! ## A071661.P10201485862621129210

`A057505(A057505(n))`
-/

namespace A071661.P10201485862621129210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057505 n).toNat

end

end A071661.P10201485862621129210

/-! ## A071661.P8552924667390940569

`A071667(A071664(n))`
-/

namespace A071661.P8552924667390940569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071664 n).toNat

end

end A071661.P8552924667390940569

/-! ## A071661.P1332639507042277007

`A071667(A071663(A071670(n)))`
-/

namespace A071661.P1332639507042277007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071663 (A071670 n).toNat).toNat

end

end A071661.P1332639507042277007

/-! ## A071661.P3425388541764114155

`A071669(A071669(A071668(A071668(n))))`
-/

namespace A071661.P3425388541764114155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071669 (A071668 (A071668 n).toNat).toNat).toNat

end

end A071661.P3425388541764114155

/-! ## A071661.P15148440667452644228

`A057164(A082331(A082313(A082332(n))))`
-/

namespace A071661.P15148440667452644228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082331 (A082313 (A082332 n).toNat).toNat).toNat

end

end A071661.P15148440667452644228

/-!
# A071662: Permutation A057506 applied twice ("squared").

The programs for A071662, there is no canonical definition to state claims against.
-/

/-! ## A071662.P11952156498123425603

`A057506(A057506(n))`
-/

namespace A071662.P11952156498123425603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 n).toNat

end

end A071662.P11952156498123425603

/-! ## A071662.P1168091566838552754

`A069787(A057164(n))`
-/

namespace A071662.P1168091566838552754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057164 n).toNat

end

end A071662.P1168091566838552754

/-! ## A071662.P7410333103134435954

`A071666(A071661(n))`
-/

namespace A071662.P7410333103134435954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A071661 n).toNat

end

end A071662.P7410333103134435954

/-! ## A071662.P4673082548258229079

`A071670(A071665(n))`
-/

namespace A071662.P4673082548258229079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071665 n).toNat

end

end A071662.P4673082548258229079

/-! ## A071662.P2998967849107066784

`A069787(A071661(A069787(n)))`
-/

namespace A071662.P2998967849107066784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A071661 (A069787 n).toNat).toNat

end

end A071662.P2998967849107066784

/-! ## A071662.P8618549151378450127

`A071661(A071661(A071670(n)))`
-/

namespace A071662.P8618549151378450127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A071661 (A071670 n).toNat).toNat

end

end A071662.P8618549151378450127

/-! ## A071662.P18235201400541156799

`A071669(A071666(A071666(n)))`
-/

namespace A071662.P18235201400541156799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071666 (A071666 n).toNat).toNat

end

end A071662.P18235201400541156799

/-! ## A071662.P16901183451704580362

`A071664(A057505(n))`
-/

namespace A071662.P16901183451704580362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A057505 n).toNat

end

end A071662.P16901183451704580362

/-! ## A071662.P2093569149707994421

`A071668(A071663(n))`
-/

namespace A071662.P2093569149707994421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071663 n).toNat

end

end A071662.P2093569149707994421

/-! ## A071662.P2092385806187984602

`A057163(A071661(A057163(n)))`
-/

namespace A071662.P2092385806187984602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071661 (A057163 n).toNat).toNat

end

end A071662.P2092385806187984602

/-! ## A071662.P18101658126502753035

`A071665(A071664(A071664(n)))`
-/

namespace A071662.P18101658126502753035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A071664 (A071664 n).toNat).toNat

end

end A071662.P18101658126502753035

/-! ## A071662.P13213243244141107361

`A071669(A071664(A071668(n)))`
-/

namespace A071662.P13213243244141107361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071664 (A071668 n).toNat).toNat

end

end A071662.P13213243244141107361

/-! ## A071662.P14696466495054770882

`A082331(A057501(A082331(A057501(n))))`
-/

namespace A071662.P14696466495054770882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057501 (A082331 (A057501 n).toNat).toNat).toNat

end

end A071662.P14696466495054770882

/-! ## A071662.P9288449293853650012

`A071670(A071670(A071667(A071667(n))))`
-/

namespace A071662.P9288449293853650012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071670 (A071667 (A071667 n).toNat).toNat).toNat

end

end A071662.P9288449293853650012

/-! ## A071662.P13193668550734021017

`A071668(A071668(A071661(A071669(n))))`
-/

namespace A071662.P13193668550734021017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071668 (A071661 (A071669 n).toNat).toNat).toNat

end

end A071662.P13193668550734021017

/-! ## A071662.P11678085608076665384

`A082333(A082315(A082333(A082315(n))))`
-/

namespace A071662.P11678085608076665384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A082315 (A082333 (A082315 n).toNat).toNat).toNat

end

end A071662.P11678085608076665384

/-!
# A071663: Permutation A057505 applied three times ("cubed").

The programs for A071663, there is no canonical definition to state claims against.
-/

/-! ## A071663.P8898861077005694073

`A057506(A071665(n))`
-/

namespace A071663.P8898861077005694073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071665 n).toNat

end

end A071663.P8898861077005694073

/-! ## A071663.P6475617224347777346

`A057506(A057506(A071667(n)))`
-/

namespace A071663.P6475617224347777346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071667 n).toNat).toNat

end

end A071663.P6475617224347777346

/-! ## A071663.P2591659776973604089

`A057506(A057506(A057506(A071669(n))))`
-/

namespace A071663.P2591659776973604089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A057506 (A071669 n).toNat).toNat).toNat

end

end A071663.P2591659776973604089

/-! ## A071663.P8239769328440272125

`A071664(A071669(n))`
-/

namespace A071663.P8239769328440272125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A071669 n).toNat

end

end A071663.P8239769328440272125

/-! ## A071663.P3311624085803772061

`A057505(A071661(n))`
-/

namespace A071663.P3311624085803772061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A071661 n).toNat

end

end A071663.P3311624085803772061

/-! ## A071663.P17255245990283892868

`A071667(A071662(n))`
-/

namespace A071663.P17255245990283892868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071662 n).toNat

end

end A071663.P17255245990283892868

/-! ## A071663.P4487685723480412530

`A071667(A071661(A071666(n)))`
-/

namespace A071663.P4487685723480412530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071661 (A071666 n).toNat).toNat

end

end A071663.P4487685723480412530

/-! ## A071663.P13116317607264449371

`A071667(A071665(A071670(n)))`
-/

namespace A071663.P13116317607264449371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071665 (A071670 n).toNat).toNat

end

end A071663.P13116317607264449371

/-! ## A071663.P14386737994931626343

`A057505(A057505(A057505(n)))`
-/

namespace A071663.P14386737994931626343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057505 (A057505 n).toNat).toNat

end

end A071663.P14386737994931626343

/-! ## A071663.P15061304132622386539

`A057163(A071664(A057163(n)))`
-/

namespace A071663.P15061304132622386539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071664 (A057163 n).toNat).toNat

end

end A071663.P15061304132622386539

/-! ## A071663.P10650891136093356517

`A057164(A071664(A057164(n)))`
-/

namespace A071663.P10650891136093356517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A071664 (A057164 n).toNat).toNat

end

end A071663.P10650891136093356517

/-! ## A071663.P4084116161381229486

`A071669(A071661(A071668(n)))`
-/

namespace A071663.P4084116161381229486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071661 (A071668 n).toNat).toNat

end

end A071663.P4084116161381229486

/-!
# A071664: Permutation A057506 applied three times ("cubed").

The programs for A071664, there is no canonical definition to state claims against.
-/

/-! ## A071664.P13131712894481987512

`A057506(A071662(n))`
-/

namespace A071664.P13131712894481987512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071662 n).toNat

end

end A071664.P13131712894481987512

/-! ## A071664.P1634436445121659578

`A057506(A057506(A057506(n)))`
-/

namespace A071664.P1634436445121659578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A057506 n).toNat).toNat

end

end A071664.P1634436445121659578

/-! ## A071664.P17583648530641504031

`A071663(A071670(n))`
-/

namespace A071664.P17583648530641504031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071670 n).toNat

end

end A071664.P17583648530641504031

/-! ## A071664.P11967649028789770214

`A057505(A071666(n))`
-/

namespace A071664.P11967649028789770214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A071666 n).toNat

end

end A071664.P11967649028789770214

/-! ## A071664.P233591187108518931

`A071668(A071661(n))`
-/

namespace A071664.P233591187108518931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071661 n).toNat

end

end A071664.P233591187108518931

/-! ## A071664.P3719404051082119428

`A057163(A071661(A057164(n)))`
-/

namespace A071664.P3719404051082119428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071661 (A057164 n).toNat).toNat

end

end A071664.P3719404051082119428

/-! ## A071664.P17424939430324782063

`A071668(A071666(A071669(n)))`
-/

namespace A071664.P17424939430324782063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071666 (A071669 n).toNat).toNat

end

end A071664.P17424939430324782063

/-! ## A071664.P173039641247902058

`A057163(A071663(A057163(n)))`
-/

namespace A071664.P173039641247902058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071663 (A057163 n).toNat).toNat

end

end A071664.P173039641247902058

/-! ## A071664.P15358420571578319886

`A071668(A057505(A057505(n)))`
-/

namespace A071664.P15358420571578319886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A057505 (A057505 n).toNat).toNat

end

end A071664.P15358420571578319886

/-! ## A071664.P10220727346649172641

`A071670(A071662(A071667(n)))`
-/

namespace A071664.P10220727346649172641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071662 (A071667 n).toNat).toNat

end

end A071664.P10220727346649172641

/-!
# A071665: Permutation A057505 applied four times ("^4"), permutation A071661 squared.

The programs for A071665, there is no canonical definition to state claims against.
-/

/-! ## A071665.P6034327416786840175

`A057506(A071667(n))`
-/

namespace A071665.P6034327416786840175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071667 n).toNat

end

end A071665.P6034327416786840175

/-! ## A071665.P17788580764601989964

`A057506(A057506(A071669(n)))`
-/

namespace A071665.P17788580764601989964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071669 n).toNat).toNat

end

end A071665.P17788580764601989964

/-! ## A071665.P4862646863534543961

`A071661(A071661(n))`
-/

namespace A071665.P4862646863534543961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A071661 n).toNat

end

end A071665.P4862646863534543961

/-! ## A071665.P8339669298113934705

`A071669(A071662(n))`
-/

namespace A071665.P8339669298113934705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071662 n).toNat

end

end A071665.P8339669298113934705

/-! ## A071665.P17806030583664109002

`A057164(A071666(A057164(n)))`
-/

namespace A071665.P17806030583664109002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A071666 (A057164 n).toNat).toNat

end

end A071665.P17806030583664109002

/-! ## A071665.P11309991865292959550

`A057164(A069787(A057164(A069787(n))))`
-/

namespace A071665.P11309991865292959550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069787 (A057164 (A069787 n).toNat).toNat).toNat

end

end A071665.P11309991865292959550

/-! ## A071665.P12793843731114364633

`A071663(A057505(n))`
-/

namespace A071665.P12793843731114364633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A057505 n).toNat

end

end A071665.P12793843731114364633

/-! ## A071665.P11772940149325805436

`A057163(A071666(A057163(n)))`
-/

namespace A071665.P11772940149325805436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071666 (A057163 n).toNat).toNat

end

end A071665.P11772940149325805436

/-! ## A071665.P15113168127490719384

`A071663(A071662(A071663(n)))`
-/

namespace A071665.P15113168127490719384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071662 (A071663 n).toNat).toNat

end

end A071665.P15113168127490719384

/-! ## A071665.P606061646561382090

`A071667(A071663(A071666(n)))`
-/

namespace A071665.P606061646561382090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071663 (A071666 n).toNat).toNat

end

end A071665.P606061646561382090

/-! ## A071665.P14758974139876230081

`A071667(A071667(A071664(A071664(n))))`
-/

namespace A071665.P14758974139876230081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071667 (A071664 (A071664 n).toNat).toNat).toNat

end

end A071665.P14758974139876230081

/-! ## A071665.P9439785639572871738

`A071663(A071663(A071663(A071668(n))))`
-/

namespace A071665.P9439785639572871738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071663 (A071663 (A071668 n).toNat).toNat).toNat

end

end A071665.P9439785639572871738

/-! ## A071665.P16489630327803859446

`A057163(A071668(A071668(A057163(A071670(n)))))`
-/

namespace A071665.P16489630327803859446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071668 (A071668 (A057163 (A071670 n).toNat).toNat).toNat).toNat

end

end A071665.P16489630327803859446

/-!
# A071666: Permutation A057506 applied four times ("^4"), permutation A071662 squared.

The programs for A071666, there is no canonical definition to state claims against.
-/

/-! ## A071666.P11187940388410888657

`A057506(A071664(n))`
-/

namespace A071666.P11187940388410888657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071664 n).toNat

end

end A071666.P11187940388410888657

/-! ## A071666.P796896339166299542

`A057506(A057506(A071662(n)))`
-/

namespace A071666.P796896339166299542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071662 n).toNat).toNat

end

end A071666.P796896339166299542

/-! ## A071666.P7814755748443231082

`A057506(A057506(A057506(A057506(n))))`
-/

namespace A071666.P7814755748443231082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A057506 (A057506 n).toNat).toNat).toNat

end

end A071666.P7814755748443231082

/-! ## A071666.P16249061435446648656

`A071661(A071670(n))`
-/

namespace A071666.P16249061435446648656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A071670 n).toNat

end

end A071666.P16249061435446648656

/-! ## A071666.P846506515388795347

`A071661(A057506(A071668(n)))`
-/

namespace A071666.P846506515388795347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A057506 (A071668 n).toNat).toNat

end

end A071666.P846506515388795347

/-! ## A071666.P15671540164319211753

`A071662(A071662(n))`
-/

namespace A071666.P15671540164319211753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (A071662 n).toNat

end

end A071666.P15671540164319211753

/-! ## A071666.P3629080985187310250

`A071670(A057506(A071663(n)))`
-/

namespace A071666.P3629080985187310250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A057506 (A071663 n).toNat).toNat

end

end A071666.P3629080985187310250

/-! ## A071666.P7896506134572551645

`A069787(A057164(A069787(A057164(n))))`
-/

namespace A071666.P7896506134572551645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057164 (A069787 (A057164 n).toNat).toNat).toNat

end

end A071666.P7896506134572551645

/-! ## A071666.P13892901110094034953

`A069787(A071661(A071661(A069787(n))))`
-/

namespace A071666.P13892901110094034953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A071661 (A071661 (A069787 n).toNat).toNat).toNat

end

end A071666.P13892901110094034953

/-! ## A071666.P9963850590591023028

`A071670(A071670(A071665(A071665(n))))`
-/

namespace A071666.P9963850590591023028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071670 (A071665 (A071665 n).toNat).toNat).toNat

end

end A071666.P9963850590591023028

/-! ## A071666.P16450950638650512087

`A071668(A057505(n))`
-/

namespace A071666.P16450950638650512087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A057505 n).toNat

end

end A071666.P16450950638650512087

/-! ## A071666.P3751675955595407447

`A057163(A071665(A057163(n)))`
-/

namespace A071666.P3751675955595407447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071665 (A057163 n).toNat).toNat

end

end A071666.P3751675955595407447

/-! ## A071666.P11978198068130282479

`A071670(A071664(A071667(n)))`
-/

namespace A071666.P11978198068130282479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071664 (A071667 n).toNat).toNat

end

end A071666.P11978198068130282479

/-! ## A071666.P12028919015291110394

`A071668(A071668(A071669(n)))`
-/

namespace A071666.P12028919015291110394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071668 (A071669 n).toNat).toNat

end

end A071666.P12028919015291110394

/-!
# A071667: Permutation A057505 applied five times ("^5").

The programs for A071667, there is no canonical definition to state claims against.
-/

/-! ## A071667.P6546588886418928168

`A057506(A071669(n))`
-/

namespace A071667.P6546588886418928168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071669 n).toNat

end

end A071667.P6546588886418928168

/-! ## A071667.P7355071201239834723

`A057505(A071665(n))`
-/

namespace A071667.P7355071201239834723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A071665 n).toNat

end

end A071667.P7355071201239834723

/-! ## A071667.P15947538726489812310

`A071663(A071661(n))`
-/

namespace A071667.P15947538726489812310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071661 n).toNat

end

end A071667.P15947538726489812310

/-! ## A071667.P11387308049008822331

`A057163(A071668(A057163(n)))`
-/

namespace A071667.P11387308049008822331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071668 (A057163 n).toNat).toNat

end

end A071667.P11387308049008822331

/-! ## A071667.P7268218404939822166

`A071663(A057505(A057505(n)))`
-/

namespace A071667.P7268218404939822166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A057505 (A057505 n).toNat).toNat

end

end A071667.P7268218404939822166

/-! ## A071667.P15599987475960422964

`A071669(A057505(A071662(n)))`
-/

namespace A071667.P15599987475960422964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A057505 (A071662 n).toNat).toNat

end

end A071667.P15599987475960422964

/-! ## A071667.P16186084774581229711

`A071669(A071666(A071663(n)))`
-/

namespace A071667.P16186084774581229711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071666 (A071663 n).toNat).toNat

end

end A071667.P16186084774581229711

/-! ## A071667.P17495821295501076672

`A071669(A071661(A071664(n)))`
-/

namespace A071667.P17495821295501076672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071661 (A071664 n).toNat).toNat

end

end A071667.P17495821295501076672

/-! ## A071667.P5589173874820252161

`A071669(A071661(A071661(A071668(n))))`
-/

namespace A071667.P5589173874820252161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A071661 (A071661 (A071668 n).toNat).toNat).toNat

end

end A071667.P5589173874820252161

/-! ## A071667.P9547544920637671413

`A071665(A071665(A071663(A071670(n))))`
-/

namespace A071667.P9547544920637671413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A071665 (A071663 (A071670 n).toNat).toNat).toNat

end

end A071667.P9547544920637671413

/-! ## A071667.P5524092161648695015

`A071669(A125977(A057505(A125977(n))))`
-/

namespace A071667.P5524092161648695015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A125977 (A057505 (A125977 n).toNat).toNat).toNat

end

end A071667.P5524092161648695015

/-!
# A071668: Permutation A057506 applied five times ("^5").

The programs for A071668, there is no canonical definition to state claims against.
-/

/-! ## A071668.P4253048395741872144

`A057506(A071666(n))`
-/

namespace A071668.P4253048395741872144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071666 n).toNat

end

end A071668.P4253048395741872144

/-! ## A071668.P14595498493836385163

`A057506(A057506(A071664(n)))`
-/

namespace A071668.P14595498493836385163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071664 n).toNat).toNat

end

end A071668.P14595498493836385163

/-! ## A071668.P8410297710257360911

`A057505(A071670(n))`
-/

namespace A071668.P8410297710257360911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A071670 n).toNat

end

end A071668.P8410297710257360911

/-! ## A071668.P14959789127721777150

`A071664(A071662(n))`
-/

namespace A071668.P14959789127721777150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A071662 n).toNat

end

end A071668.P14959789127721777150

/-! ## A071668.P9653353436015627844

`A057163(A071667(A057163(n)))`
-/

namespace A071668.P9653353436015627844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071667 (A057163 n).toNat).toNat

end

end A071668.P9653353436015627844

/-! ## A071668.P498195950429963272

`A071670(A071661(A057506(n)))`
-/

namespace A071668.P498195950429963272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071661 (A057506 n).toNat).toNat

end

end A071668.P498195950429963272

/-! ## A071668.P9387576497839100129

`A071670(A071662(A071663(n)))`
-/

namespace A071668.P9387576497839100129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071662 (A071663 n).toNat).toNat

end

end A071668.P9387576497839100129

/-! ## A071668.P53697534904737458

`A071670(A071666(A071667(n)))`
-/

namespace A071668.P53697534904737458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071666 (A071667 n).toNat).toNat

end

end A071668.P53697534904737458

/-! ## A071668.P13707203933218681214

`A071670(A071662(A057506(A071665(n))))`
-/

namespace A071668.P13707203933218681214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071662 (A057506 (A071665 n).toNat).toNat).toNat

end

end A071668.P13707203933218681214

/-! ## A071668.P15640935221458922954

`A071666(A071666(A071664(A071669(n))))`
-/

namespace A071668.P15640935221458922954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A071666 (A071664 (A071669 n).toNat).toNat).toNat

end

end A071668.P15640935221458922954

/-!
# A071669: Permutation A057505 applied six times, permutation A071661 cubed, permutation A071663 squared.

The programs for A071669, there is no canonical definition to state claims against.
-/

/-! ## A071669.P12534283461259398465

`A071661(A071661(A071661(n)))`
-/

namespace A071669.P12534283461259398465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A071661 (A071661 n).toNat).toNat

end

end A071669.P12534283461259398465

/-! ## A071669.P15132444393064067874

`A057505(A071667(n))`
-/

namespace A071669.P15132444393064067874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A071667 n).toNat

end

end A071669.P15132444393064067874

/-! ## A071669.P4957676996593051901

`A071663(A071663(n))`
-/

namespace A071669.P4957676996593051901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071663 n).toNat

end

end A071669.P4957676996593051901

/-! ## A071669.P14533335442017633704

`A057163(A071670(A057163(n)))`
-/

namespace A071669.P14533335442017633704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071670 (A057163 n).toNat).toNat

end

end A071669.P14533335442017633704

/-! ## A071669.P3127875608737424276

`A071665(A071661(n))`
-/

namespace A071669.P3127875608737424276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A071661 n).toNat

end

end A071669.P3127875608737424276

/-! ## A071669.P1246732585995968545

`A071665(A071665(A071662(n)))`
-/

namespace A071669.P1246732585995968545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A071665 (A071662 n).toNat).toNat

end

end A071669.P1246732585995968545

/-! ## A071669.P9519319579667528879

`A071665(A071665(A057506(A057506(n))))`
-/

namespace A071669.P9519319579667528879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A071665 (A057506 (A057506 n).toNat).toNat).toNat

end

end A071669.P9519319579667528879

/-! ## A071669.P13227828158419636507

`A071670(A071665(A071665(A071665(n))))`
-/

namespace A071669.P13227828158419636507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (A071665 (A071665 (A071665 n).toNat).toNat).toNat

end

end A071669.P13227828158419636507

/-! ## A071669.P11577234150856497575

`A071665(A057505(A057505(n)))`
-/

namespace A071669.P11577234150856497575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 (A057505 (A057505 n).toNat).toNat

end

end A071669.P11577234150856497575

/-! ## A071669.P4466007597671176997

`A071667(A071665(A071664(n)))`
-/

namespace A071669.P4466007597671176997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071665 (A071664 n).toNat).toNat

end

end A071669.P4466007597671176997

/-! ## A071669.P9882153672589785856

`A071667(A071667(A071666(n)))`
-/

namespace A071669.P9882153672589785856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071667 (A071666 n).toNat).toNat

end

end A071669.P9882153672589785856

/-!
# A071670: Permutation A057506 applied six times ("^6"), permutation A071662 cubed, permutation A071664 squared.

The programs for A071670, there is no canonical definition to state claims against.
-/

/-! ## A071670.P3905995249406994748

`A057506(A071668(n))`
-/

namespace A071670.P3905995249406994748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071668 n).toNat

end

end A071670.P3905995249406994748

/-! ## A071670.P17619953232923645183

`A057506(A057506(A071666(n)))`
-/

namespace A071670.P17619953232923645183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071666 n).toNat).toNat

end

end A071670.P17619953232923645183

/-! ## A071670.P8743995249356912059

`A071666(A071662(n))`
-/

namespace A071670.P8743995249356912059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A071662 n).toNat

end

end A071670.P8743995249356912059

/-! ## A071670.P4123416010561658592

`A071666(A071666(A071661(n)))`
-/

namespace A071670.P4123416010561658592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A071666 (A071661 n).toNat).toNat

end

end A071670.P4123416010561658592

/-! ## A071670.P1052688504447574739

`A069787(A071661(A071661(A071661(A069787(n)))))`
-/

namespace A071670.P1052688504447574739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A071661 (A071661 (A071661 (A069787 n).toNat).toNat).toNat).toNat

end

end A071670.P1052688504447574739

/-! ## A071670.P2633246045321909042

`A071664(A071664(n))`
-/

namespace A071670.P2633246045321909042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A071664 n).toNat

end

end A071670.P2633246045321909042

/-! ## A071670.P17837249546986860480

`A057163(A071669(A057163(n)))`
-/

namespace A071670.P17837249546986860480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071669 (A057163 n).toNat).toNat

end

end A071670.P17837249546986860480

/-! ## A071670.P9439136023786837818

`A071668(A071666(A071663(n)))`
-/

namespace A071670.P9439136023786837818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071666 (A071663 n).toNat).toNat

end

end A071670.P9439136023786837818

/-! ## A071670.P772786535634864721

`A057164(A071663(A071663(A057164(n))))`
-/

namespace A071670.P772786535634864721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A071663 (A071663 (A057164 n).toNat).toNat).toNat

end

end A071670.P772786535634864721

/-! ## A071670.P5320011054218384703

`A071666(A071666(A057505(A057505(n))))`
-/

namespace A071670.P5320011054218384703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071666 (A071666 (A057505 (A057505 n).toNat).toNat).toNat

end

end A071670.P5320011054218384703

/-! ## A071670.P17286334627796428087

`A071668(A071668(A071662(A071669(n))))`
-/

namespace A071670.P17286334627796428087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071668 (A071662 (A071669 n).toNat).toNat).toNat

end

end A071670.P17286334627796428087

/-! ## A071670.P13897003711288969419

`A057163(A071667(A071667(A057163(A071665(n)))))`
-/

namespace A071670.P13897003711288969419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071667 (A071667 (A057163 (A071665 n).toNat).toNat).toNat).toNat

end

end A071670.P13897003711288969419

/-! ## A071670.P8875317246901051051

`A071668(A071662(A071662(A071662(A071667(n)))))`
-/

namespace A071670.P8875317246901051051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071662 (A071662 (A071662 (A071667 n).toNat).toNat).toNat).toNat

end

end A071670.P8875317246901051051

/-!
# A071671: The binary encoding of parenthesizations given in a "global arithmetic order", using A061579 as the packing bijection N X N -> N.

The programs for A071671, there is no canonical definition to state claims against.
-/

/-! ## A071671.P4040934438146044428

`A063171(A071652(n+1))`
-/

namespace A071671.P4040934438146044428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A071652 (n + 1)).toNat

end

end A071671.P4040934438146044428

/-! ## A071671.P2519080754131228308

`A063171(A057163(A071654(n+1)))`
-/

namespace A071671.P2519080754131228308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A057163 (A071654 (n + 1)).toNat).toNat

end

end A071671.P2519080754131228308

/-! ## A071671.P14606307147116363573

`A063171(A072766(n+1)^A008835(n+1))`
-/

namespace A071671.P14606307147116363573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (SequenceMachineLib.roundAway ((A072766 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A071671.P14606307147116363573

/-! ## A071671.P18098857295213364102

`A063171(A072766(n+1))%A008514(A072828(n+1))`
-/

namespace A071671.P18098857295213364102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063171 (A072766 (n + 1)).toNat) (A008514 (A072828 (n + 1)).toNat)

end

end A071671.P18098857295213364102

/-!
# A071672: The binary encoding of parenthesizations given in a "global arithmetic order", using A001477 as the packing bijection N X N -> N.

The programs for A071672, there is no canonical definition to state claims against.
-/

/-! ## A071672.P12932504505295815891

`A063171(A071654(n+1))`
-/

namespace A071672.P12932504505295815891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A071654 (n + 1)).toNat

end

end A071672.P12932504505295815891

/-! ## A071672.P8205358047864089434

`A063171(A057163(A071652(n+1)))`
-/

namespace A071672.P8205358047864089434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A057163 (A071652 (n + 1)).toNat).toNat

end

end A071672.P8205358047864089434

/-! ## A071672.P11615589854358160918

`A071671(A071653(A071652(A072635(A072634(n+1)))))`
-/

namespace A071672.P11615589854358160918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071671 (A071653 (A071652 (A072635 (A072634 (n + 1)).toNat).toNat).toNat).toNat

end

end A071672.P11615589854358160918

/-!
# A071673: Sequence a(n) obtained by setting a(0) = 0; then reading the table T(x,y)=a(x)+a(y)+1 in antidiagonal fashion.

The programs for A071673, the canonical program `A071673.P16572548944788639740` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071673 has offset 0).

The definition of A071673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071673.P16572548944788639740

`1+a(A025581(n-1))+a(A002262(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071673

/-- `1+a(A025581(n-1))+a(A002262(n-1))` -/
def P16572548944788639740.Spec : Prop :=
  ∀ n, (P16572548944788639740.a n : ℤ) = A071673 n

theorem P16572548944788639740.correct : P16572548944788639740.Spec := by
  intro n
  simp only [A071673]

end A071673

/-! ## A071673.P11809882403533871712

`A290021(n)-1`
-/

namespace A071673.P11809882403533871712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290021 n - 1

end

end A071673.P11809882403533871712

namespace A071673

/-- `A290021(n)-1` -/
def P11809882403533871712.Spec : Prop :=
  ∀ n, P11809882403533871712.a n = A071673 n

end A071673

/-! ## A071673.P11303813931723887931

`A023443(A290021(n))`
-/

namespace A071673.P11303813931723887931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A290021 n).toNat

end

end A071673.P11303813931723887931

namespace A071673

/-- `A023443(A290021(n))` -/
def P11303813931723887931.Spec : Prop :=
  ∀ n, P11303813931723887931.a n = A071673 n

end A071673

/-! ## A071673.P1529421336659525353

`A023444(A290021(n)+1)`
-/

namespace A071673.P1529421336659525353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A290021 n + 1).toNat

end

end A071673.P1529421336659525353

namespace A071673

/-- `A023444(A290021(n)+1)` -/
def P1529421336659525353.Spec : Prop :=
  ∀ n, P1529421336659525353.a n = A071673 n

end A071673

/-! ## A071673.P4557863267338888300

`A025581(2*A290021(n)²)`
-/

namespace A071673.P4557863267338888300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A290021 n ^ 2).toNat

end

end A071673.P4557863267338888300

namespace A071673

/-- `A025581(2*A290021(n)²)` -/
def P4557863267338888300.Spec : Prop :=
  ∀ n, P4557863267338888300.a n = A071673 n

end A071673

/-! ## A071673.P13890356207277601155

`A023444(2*A290021(n))/2`
-/

namespace A071673.P13890356207277601155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A290021 n).toNat : ℚ) / 2

end

end A071673.P13890356207277601155

namespace A071673

/-- `A023444(2*A290021(n))/2` -/
def P13890356207277601155.Spec : Prop :=
  ∀ n, P13890356207277601155.a n = (A071673 n : ℚ)

end A071673

/-! ## A071673.P7106077371441774128

`A025581(2*A290021(n)*A290021(n))`
-/

namespace A071673.P7106077371441774128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * (A290021 n * A290021 n)).toNat

end

end A071673.P7106077371441774128

namespace A071673

/-- `A025581(2*A290021(n)*A290021(n))` -/
def P7106077371441774128.Spec : Prop :=
  ∀ n, P7106077371441774128.a n = A071673 n

end A071673

/-! ## A071673.P8927811564066808019

`A025581(A290021(n)²+A290021(n)²)`
-/

namespace A071673.P8927811564066808019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A290021 n ^ 2 + A290021 n ^ 2).toNat

end

end A071673.P8927811564066808019

namespace A071673

/-- `A025581(A290021(n)²+A290021(n)²)` -/
def P8927811564066808019.Spec : Prop :=
  ∀ n, P8927811564066808019.a n = A071673 n

end A071673

/-! ## A071673.P8585947602076626163

`A002262(A025581(n)+A290021(n)+n)`
-/

namespace A071673.P8585947602076626163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A025581 n + (A290021 n + (n : ℤ))).toNat

end

end A071673.P8585947602076626163

namespace A071673

/-- `A002262(A025581(n)+A290021(n)+n)` -/
def P8585947602076626163.Spec : Prop :=
  ∀ n, P8585947602076626163.a n = A071673 n

end A071673

/-! ## A071673.P12838622709464063910

`A072643(A071652(n))`
-/

namespace A071673.P12838622709464063910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A071652 n).toNat

end

end A071673.P12838622709464063910

namespace A071673

/-- `A072643(A071652(n))` -/
def P12838622709464063910.Spec : Prop :=
  ∀ n, P12838622709464063910.a n = A071673 n

end A071673

/-! ## A071673.P45168254875229788

`A072643(A071654(n))`
-/

namespace A071673.P45168254875229788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A071654 n).toNat

end

end A071673.P45168254875229788

namespace A071673

/-- `A072643(A071654(n))` -/
def P45168254875229788.Spec : Prop :=
  ∀ n, P45168254875229788.a n = A071673 n

end A071673

/-! ## A071673.P17079996520230740015

`A070198(n)%A290021(n)`
-/

namespace A071673.P17079996520230740015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A290021 n)

end

end A071673.P17079996520230740015

namespace A071673

/-- `A070198(n)%A290021(n)` -/
def P17079996520230740015.Spec : Prop :=
  ∀ n, P17079996520230740015.a n = A071673 n

end A071673

/-! ## A071673.P7173663890460545280

`A079782(n+1)%A290021(n)`
-/

namespace A071673.P7173663890460545280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A290021 n)

end

end A071673.P7173663890460545280

namespace A071673

/-- `A079782(n+1)%A290021(n)` -/
def P7173663890460545280.Spec : Prop :=
  ∀ n, P7173663890460545280.a n = A071673 n

end A071673

/-! ## A071673.P10230357677523431171

`A083685(n+1)%A290021(n)`
-/

namespace A071673.P10230357677523431171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A290021 n)

end

end A071673.P10230357677523431171

namespace A071673

/-- `A083685(n+1)%A290021(n)` -/
def P10230357677523431171.Spec : Prop :=
  ∀ n, P10230357677523431171.a n = A071673 n

end A071673

/-! ## A071673.P9073498543011346704

`A121934(n+1)%A290021(n)`
-/

namespace A071673.P9073498543011346704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A290021 n)

end

end A071673.P9073498543011346704

namespace A071673

/-- `A121934(n+1)%A290021(n)` -/
def P9073498543011346704.Spec : Prop :=
  ∀ n, P9073498543011346704.a n = A071673 n

end A071673

/-! ## A071673.P16326377466138735182

`A002262(A290021(n)+A000096(n))`
-/

namespace A071673.P16326377466138735182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A290021 n + A000096 n).toNat

end

end A071673.P16326377466138735182

namespace A071673

/-- `A002262(A290021(n)+A000096(n))` -/
def P16326377466138735182.Spec : Prop :=
  ∀ n, P16326377466138735182.a n = A071673 n

end A071673

/-! ## A071673.P18134131997559195530

`A030494(n+1)%A290021(n)`
-/

namespace A071673.P18134131997559195530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A290021 n)

end

end A071673.P18134131997559195530

namespace A071673

/-- `A030494(n+1)%A290021(n)` -/
def P18134131997559195530.Spec : Prop :=
  ∀ n, P18134131997559195530.a n = A071673 n

end A071673

/-! ## A071673.P9473997622961072412

`A072828(n+1)%A290021(n)`
-/

namespace A071673.P9473997622961072412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A290021 n)

end

end A071673.P9473997622961072412

namespace A071673

/-- `A072828(n+1)%A290021(n)` -/
def P9473997622961072412.Spec : Prop :=
  ∀ n, P9473997622961072412.a n = A071673 n

end A071673

/-! ## A071673.P3789897147773171513

`A198277(n)%A290021(n)`
-/

namespace A071673.P3789897147773171513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A290021 n)

end

end A071673.P3789897147773171513

namespace A071673

/-- `A198277(n)%A290021(n)` -/
def P3789897147773171513.Spec : Prop :=
  ∀ n, P3789897147773171513.a n = A071673 n

end A071673

/-!
# A071674: Sequence A071673 reduced modulo 2.

The programs for A071674, the canonical program `A071674.P17626301056953081499` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071674 has offset 0).

The definition of A071674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071674.P17626301056953081499

`A071673(n)%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071674

/-- `A071673(n)%2` -/
def P17626301056953081499.Spec : Prop :=
  ∀ n, P17626301056953081499.a n = A071674 n

theorem P17626301056953081499.correct : P17626301056953081499.Spec := by
  intro n
  simp only [A071674]

end A071674

/-! ## A071674.P1229513515371693881

`A000035(A071673(n))`
-/

namespace A071674.P1229513515371693881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A071673 n).toNat

end

end A071674.P1229513515371693881

namespace A071674

/-- `A000035(A071673(n))` -/
def P1229513515371693881.Spec : Prop :=
  ∀ n, P1229513515371693881.a n = A071674 n

end A071674

/-! ## A071674.P8890872122826793861

`(A290021(n)+1)%2`
-/

namespace A071674.P8890872122826793861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290021 n + 1) 2

end

end A071674.P8890872122826793861

namespace A071674

/-- `(A290021(n)+1)%2` -/
def P8890872122826793861.Spec : Prop :=
  ∀ n, P8890872122826793861.a n = A071674 n

end A071674

/-! ## A071674.P14298872299583159210

`A352449(A071673(n)²)`
-/

namespace A071674.P14298872299583159210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352449 (A071673 n ^ 2).toNat

end

end A071674.P14298872299583159210

namespace A071674

/-- `A352449(A071673(n)²)` -/
def P14298872299583159210.Spec : Prop :=
  ∀ n, P14298872299583159210.a n = A071674 n

end A071674

/-! ## A071674.P11033093547248871806

`A196563(A071673(n)+1)`
-/

namespace A071674.P11033093547248871806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A071673 n + 1).toNat

end

end A071674.P11033093547248871806

namespace A071674

/-- `A196563(A071673(n)+1)` -/
def P11033093547248871806.Spec : Prop :=
  ∀ n, P11033093547248871806.a n = A071674 n

end A071674

/-! ## A071674.P15305699379138863948

`and(A016760(n), A071673(n))`
-/

namespace A071674.P15305699379138863948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A071673 n)

end

end A071674.P15305699379138863948

namespace A071674

/-- `and(A016760(n), A071673(n))` -/
def P15305699379138863948.Spec : Prop :=
  ∀ n, P15305699379138863948.a n = A071674 n

end A071674

/-! ## A071674.P4857291255034384416

`and(A016820(n), A071673(n))`
-/

namespace A071674.P4857291255034384416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A071673 n)

end

end A071674.P4857291255034384416

namespace A071674

/-- `and(A016820(n), A071673(n))` -/
def P4857291255034384416.Spec : Prop :=
  ∀ n, P4857291255034384416.a n = A071674 n

end A071674

/-! ## A071674.P14757645509209709570

`A007814(A071673(n)²+1)`
-/

namespace A071674.P14757645509209709570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A071673 n ^ 2 + 1).toNat

end

end A071674.P14757645509209709570

namespace A071674

/-- `A007814(A071673(n)²+1)` -/
def P14757645509209709570.Spec : Prop :=
  ∀ n, P14757645509209709570.a n = A071674 n

end A071674

/-! ## A071674.P18402542059084020220

`A352449((A290021(n)+1)²)`
-/

namespace A071674.P18402542059084020220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352449 ((A290021 n + 1) ^ 2).toNat

end

end A071674.P18402542059084020220

namespace A071674

/-- `A352449((A290021(n)+1)²)` -/
def P18402542059084020220.Spec : Prop :=
  ∀ n, P18402542059084020220.a n = A071674 n

end A071674

/-! ## A071674.P8842841198587882530

`A352449((1-A290021(n))²)`
-/

namespace A071674.P8842841198587882530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352449 ((1 - A290021 n) ^ 2).toNat

end

end A071674.P8842841198587882530

namespace A071674

/-- `A352449((1-A290021(n))²)` -/
def P8842841198587882530.Spec : Prop :=
  ∀ n, P8842841198587882530.a n = A071674 n

end A071674

/-! ## A071674.P7504510057547539178

`and(A006686(n+1), A071673(n))`
-/

namespace A071674.P7504510057547539178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006686 (n + 1)) (A071673 n)

end

end A071674.P7504510057547539178

namespace A071674

/-- `and(A006686(n+1), A071673(n))` -/
def P7504510057547539178.Spec : Prop :=
  ∀ n, P7504510057547539178.a n = A071674 n

end A071674

/-! ## A071674.P11216254778137874093

`and(A071673(n), A179645(n+1))`
-/

namespace A071674.P11216254778137874093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071673 n) (A179645 (n + 1))

end

end A071674.P11216254778137874093

namespace A071674

/-- `and(A071673(n), A179645(n+1))` -/
def P11216254778137874093.Spec : Prop :=
  ∀ n, P11216254778137874093.a n = A071674 n

end A071674

/-! ## A071674.P18078136477840270516

`A007814(∏{p}[A071673(n)+1, #])`
-/

namespace A071674.P18078136477840270516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A071674.P18078136477840270516

namespace A071674

/-- `A007814(∏{p}[A071673(n)+1, #])` -/
def P18078136477840270516.Spec : Prop :=
  ∀ n, P18078136477840270516.a n = A071674 n

end A071674

/-! ## A071674.P17920931220862022755

`and(A016754(n)²², A071673(n))`
-/

namespace A071674.P17920931220862022755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A016754 n ^ 2) ^ 2) (A071673 n)

end

end A071674.P17920931220862022755

namespace A071674

/-- `and(A016754(n)²², A071673(n))` -/
def P17920931220862022755.Spec : Prop :=
  ∀ n, P17920931220862022755.a n = A071674 n

end A071674

/-! ## A071674.P6700755637493421570

`and(1, (A007204(n)*A071673(n))²)`
-/

namespace A071674.P6700755637493421570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A007204 n * A071673 n) ^ 2)

end

end A071674.P6700755637493421570

namespace A071674

/-- `and(1, (A007204(n)*A071673(n))²)` -/
def P6700755637493421570.Spec : Prop :=
  ∀ n, P6700755637493421570.a n = A071674 n

end A071674

/-! ## A071674.P8551266593637942507

`and(1, A071673(n)²*A008349(n))`
-/

namespace A071674.P8551266593637942507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A071673 n ^ 2 * A008349 n)

end

end A071674.P8551266593637942507

namespace A071674

/-- `and(1, A071673(n)²*A008349(n))` -/
def P8551266593637942507.Spec : Prop :=
  ∀ n, P8551266593637942507.a n = A071674 n

end A071674

/-! ## A071674.P12470898267223942406

`and(1, (A014736(n)*A071673(n))²)`
-/

namespace A071674.P12470898267223942406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014736 n * A071673 n) ^ 2)

end

end A071674.P12470898267223942406

namespace A071674

/-- `and(1, (A014736(n)*A071673(n))²)` -/
def P12470898267223942406.Spec : Prop :=
  ∀ n, P12470898267223942406.a n = A071674 n

end A071674

/-! ## A071674.P17798284095084545353

`and(1, (A014769(n)*A071673(n))²)`
-/

namespace A071674.P17798284095084545353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014769 n * A071673 n) ^ 2)

end

end A071674.P17798284095084545353

namespace A071674

/-- `and(1, (A014769(n)*A071673(n))²)` -/
def P17798284095084545353.Spec : Prop :=
  ∀ n, P17798284095084545353.a n = A071674 n

end A071674

/-! ## A071674.P16101592948697180202

`and(A001248(n+1)²², A071673(n))`
-/

namespace A071674.P16101592948697180202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A001248 (n + 1) ^ 2) ^ 2) (A071673 n)

end

end A071674.P16101592948697180202

namespace A071674

/-- `and(A001248(n+1)²², A071673(n))` -/
def P16101592948697180202.Spec : Prop :=
  ∀ n, P16101592948697180202.a n = A071674 n

end A071674

/-! ## A071674.P2877687461025358355

`and(char[A038722(n+1)], A071673(n))`
-/

namespace A071674.P2877687461025358355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A071673 n)

end

end A071674.P2877687461025358355

namespace A071674

/-- `and(char[A038722(n+1)], A071673(n))` -/
def P2877687461025358355.Spec : Prop :=
  ∀ n, P2877687461025358355.a n = A071674 n

end A071674

/-!
# A071675: Array read by antidiagonals of trinomial coefficients.

The programs for A071675, there is no canonical definition to state claims against.
-/

/-! ## A071675.P14763110230272104477

`A082601(A061579(n))`
-/

namespace A071675.P14763110230272104477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A061579 n).toNat

end

end A071675.P14763110230272104477

/-! ## A071675.P226587545375989148

`A082601(A114327(n)+n)`
-/

namespace A071675.P226587545375989148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A114327 n + (n : ℤ)).toNat

end

end A071675.P226587545375989148

/-! ## A071675.P8088659369757816553

`A082601(A038722(n+1)-1)`
-/

namespace A071675.P8088659369757816553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A038722 (n + 1) - 1).toNat

end

end A071675.P8088659369757816553

/-! ## A071675.P4156018107558679894

`A082601(A168038(n+1)-(n+1))`
-/

namespace A071675.P4156018107558679894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A168038 (n + 1) - (n + 1 : ℤ)).toNat

end

end A071675.P4156018107558679894

/-! ## A071675.P7060087859960848480

`A082601((n²+n)%A007401(n+2))`
-/

namespace A071675.P7060087859960848480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (Int.tmod (n ^ 2 + n : ℤ) (A007401 (n + 2))).toNat

end

end A071675.P7060087859960848480

/-! ## A071675.P24176317027477894

`A082601(A038722(n+2))`
-/

namespace A071675.P24176317027477894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A038722 (n + 2)).toNat

end

end A071675.P24176317027477894

/-!
# A071676: Array read by antidiagonals of signed variant of trinomial coefficients with T(n,k)=T(n-1,k)+T(n-1,k-1)-T(n-1,k-2) starting with T(0,0)=1.

The programs for A071676, there is no canonical definition to state claims against.
-/

/-! ## A071676.P10541408464664939746

`A296067(A061579(n))%A306425(n)`
-/

namespace A071676.P10541408464664939746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296067 (A061579 n).toNat) (A306425 n)

end

end A071676.P10541408464664939746

/-! ## A071676.P1154377176782773797

`A296067(A038722(n+1)-1)%A306425(n)`
-/

namespace A071676.P1154377176782773797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296067 (A038722 (n + 1) - 1).toNat) (A306425 n)

end

end A071676.P1154377176782773797

/-! ## A071676.P13381906371345679975

`A296067(A038722(n+1)-1)-A016389(A293985(n))`
-/

namespace A071676.P13381906371345679975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A038722 (n + 1) - 1).toNat - A016389 (A293985 n).toNat

end

end A071676.P13381906371345679975

/-! ## A071676.P10009291451925359366

`or(A071675(n), A238470(A273226(n)))`
-/

namespace A071676.P10009291451925359366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071675 n) (A238470 (A273226 n).toNat)

end

end A071676.P10009291451925359366

/-!
# A071677: Numbers k such that the number of divisors of k equals the maximum number of elements among the continued fractions for k/1, k/2, k/3, k/4, ..., k/k.

The programs for A071677, there is no canonical definition to state claims against.
-/

/-! ## A071677.P5693318610169317899

`eq[A000005(n+1), A071647(n+1)]+1`
-/

namespace A071677.P5693318610169317899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071677.P5693318610169317899

/-! ## A071677.P14826970982802859631

`eq[∏{e}[n+1, #+1], A071647(A036987(2*n)+n+1)]+1`
-/

namespace A071677.P14826970982802859631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (A036987 (2 * n) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A071677.P14826970982802859631

/-! ## A071677.P15494842558174576698

`eq[A049819(n+1)+1, A048691(n+1)-A055205(n+1)]+1`
-/

namespace A071677.P15494842558174576698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049819 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A055205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071677.P15494842558174576698

/-!
# A071678: GCD of n! and the reverse of n!.

The programs for A071678, there is no canonical definition to state claims against.
-/

/-! ## A071678.P8725272614198047045

`A055483((n+1)!)`
-/

namespace A071678.P8725272614198047045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (Nat.factorial (n + 1))

end

end A071678.P8725272614198047045

/-! ## A071678.P17712179106889889176

`gcd((n+1)!, A004153(n+1))`
-/

namespace A071678.P17712179106889889176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (n + 1) : ℤ) (A004153 (n + 1))

end

end A071678.P17712179106889889176

/-! ## A071678.P9974379147760032101

`gcd(record[A047920(n)], A004153(n+1))`
-/

namespace A071678.P9974379147760032101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004153 (n + 1))

end

end A071678.P9974379147760032101

/-! ## A071678.P10489411837064812337

`gcd(A004153(A065033(2*n+1)), A133942(n+1))`
-/

namespace A071678.P10489411837064812337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004153 (A065033 (2 * n + 1)).toNat) (A133942 (n + 1))

end

end A071678.P10489411837064812337

/-! ## A071678.P5782963830711987704

`gcd(A000142(n+1), A004153(A242474(n+1)))`
-/

namespace A071678.P5782963830711987704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1)) (A004153 (A242474 (n + 1)).toNat)

end

end A071678.P5782963830711987704

/-!
# A071679: Least k such that the maximum number of elements among the continued fractions for k/1, k/2, k/3, k/4, ..., k/k equals n.

The programs for A071679, the canonical program `A071679.P9244303980964656178` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071679 has offset 1).

The definition of A071679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071679.P9681515211929280395

`ogf((1+2x+x^2)/(1-x-x^2))`
-/

namespace A071679.P9681515211929280395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -1, -1] n

end

end A071679.P9681515211929280395

namespace A071679

/-- `ogf((1+2x+x^2)/(1-x-x^2))` -/
def P9681515211929280395.Spec : Prop :=
  ∀ n, P9681515211929280395.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P5107435316398929421

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A071679.P5107435316398929421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A071679.P5107435316398929421

namespace A071679

/-- `round(ϕ*a(n-1))` -/
def P5107435316398929421.Spec : Prop :=
  ∀ n, P5107435316398929421.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P14987340824985512554

`round(a(n-1)/(ϕ-1))` with `a(0)=1, a(1)=3`
-/

namespace A071679.P14987340824985512554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A071679.P14987340824985512554

namespace A071679

/-- `round(a(n-1)/(ϕ-1))` -/
def P14987340824985512554.Spec : Prop :=
  ∀ n, P14987340824985512554.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P9244303980964656178

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071679

/-- `a(n-1)+a(n-2)` -/
def P9244303980964656178.Spec : Prop :=
  ∀ n, (P9244303980964656178.a n : ℤ) = A071679 (n + 1)

theorem P9244303980964656178.correct : P9244303980964656178.Spec := by
  intro n
  simp only [A071679, Nat.add_sub_cancel]

end A071679

/-! ## A071679.P2056182948767683576

`record[abs(a(n-2))-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A071679.P2056182948767683576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  |f1 (n - 2)| - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071679.P2056182948767683576

namespace A071679

/-- `record[abs(a(n-2))-a(n-1)]` -/
def P2056182948767683576.Spec : Prop :=
  ∀ n, P2056182948767683576.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P9366903584499047490

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A071679.P9366903584499047490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A071679.P9366903584499047490

namespace A071679

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P9366903584499047490.Spec : Prop :=
  ∀ n, P9366903584499047490.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P9247736456105904954

`A116470(Δ[n²])`
-/

namespace A071679.P9247736456105904954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A071679.P9247736456105904954

namespace A071679

/-- `A116470(Δ[n²])` -/
def P9247736456105904954.Spec : Prop :=
  ∀ n, P9247736456105904954.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P1275235296783066205

`A259623(Δ[n²])`
-/

namespace A071679.P1275235296783066205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A071679.P1275235296783066205

namespace A071679

/-- `A259623(Δ[n²])` -/
def P1275235296783066205.Spec : Prop :=
  ∀ n, P1275235296783066205.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P5211609491144408320

`record[A123231(n+3)]`
-/

namespace A071679.P5211609491144408320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071679.P5211609491144408320

namespace A071679

/-- `record[A123231(n+3)]` -/
def P5211609491144408320.Spec : Prop :=
  ∀ n, P5211609491144408320.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P18389664995245759032

`A258085(2*(n+1))`
-/

namespace A071679.P18389664995245759032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (2 * (n + 1))

end

end A071679.P18389664995245759032

namespace A071679

/-- `A258085(2*(n+1))` -/
def P18389664995245759032.Spec : Prop :=
  ∀ n, P18389664995245759032.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P5618665626153269864

`A061489(Δ[n²])+1`
-/

namespace A071679.P5618665626153269864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A071679.P5618665626153269864

namespace A071679

/-- `A061489(Δ[n²])+1` -/
def P5618665626153269864.Spec : Prop :=
  ∀ n, P5618665626153269864.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P15385533442919725045

`A258085(Δ[n²])+1`
-/

namespace A071679.P15385533442919725045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A071679.P15385533442919725045

namespace A071679

/-- `A258085(Δ[n²])+1` -/
def P15385533442919725045.Spec : Prop :=
  ∀ n, P15385533442919725045.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P16571333226538382445

`record[A120249(2*n+1)]`
-/

namespace A071679.P16571333226538382445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071679.P16571333226538382445

namespace A071679

/-- `record[A120249(2*n+1)]` -/
def P16571333226538382445.Spec : Prop :=
  ∀ n, P16571333226538382445.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P5960286060230363720

`record[A000045(n)+C(2, n)]`
-/

namespace A071679.P5960286060230363720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071679.P5960286060230363720

namespace A071679

/-- `record[A000045(n)+C(2, n)]` -/
def P5960286060230363720.Spec : Prop :=
  ∀ n, P5960286060230363720.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P17032007657224472135

`A259623(2*(n+1))-1`
-/

namespace A071679.P17032007657224472135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (2 * (n + 1)) - 1

end

end A071679.P17032007657224472135

namespace A071679

/-- `A259623(2*(n+1))-1` -/
def P17032007657224472135.Spec : Prop :=
  ∀ n, P17032007657224472135.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P8001028889270226993

`∑[A000045(char[1]+1+n)]`
-/

namespace A071679.P8001028889270226993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071679.P8001028889270226993

namespace A071679

/-- `∑[A000045(char[1]+1+n)]` -/
def P8001028889270226993.Spec : Prop :=
  ∀ n, P8001028889270226993.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P17807043817693435437

`A000045(n+3-floor(acot(n)))`
-/

namespace A071679.P17807043817693435437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 3 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A071679.P17807043817693435437

namespace A071679

/-- `A000045(n+3-floor(acot(n)))` -/
def P17807043817693435437.Spec : Prop :=
  ∀ n, P17807043817693435437.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P11676718054173841954

`A000045(ceil(n+3-acot(n)))`
-/

namespace A071679.P11676718054173841954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n + 3 : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A071679.P11676718054173841954

namespace A071679

/-- `A000045(ceil(n+3-acot(n)))` -/
def P11676718054173841954.Spec : Prop :=
  ∀ n, P11676718054173841954.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P4667266862771897238

`A000045(xor(n+3, floor(acot(n))))`
-/

namespace A071679.P4667266862771897238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor (n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A071679.P4667266862771897238

namespace A071679

/-- `A000045(xor(n+3, floor(acot(n))))` -/
def P4667266862771897238.Spec : Prop :=
  ∀ n, P4667266862771897238.a n = A071679 (n + 1)

end A071679

/-! ## A071679.P589508250499429872

`A000045(round(∑[cosh(acot(n-1))]))`
-/

namespace A071679.P589508250499429872
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A071679.P589508250499429872

namespace A071679

/-- `A000045(round(∑[cosh(acot(n-1))]))` -/
def P589508250499429872.Spec : Prop :=
  ∀ n, P589508250499429872.a n = A071679 (n + 1)

end A071679

/-!
# A071680: Primes that are the arithmetic mean of their prime predecessor and another prime.

The programs for A071680, the canonical program `A071680.P13360749277261399360` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071680 has offset 1).

The definition of A071680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071680.P197367775794210540

`A151800(p?[A087031(n+1)])`
-/

namespace A071680.P197367775794210540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071680.P197367775794210540

namespace A071680

/-- `A151800(p?[A087031(n+1)])` -/
def P197367775794210540.Spec : Prop :=
  ∀ n, P197367775794210540.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P5742420983308462618

`A065091(A000720(p?[A087031(n+1)]))`
-/

namespace A071680.P5742420983308462618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A071680.P5742420983308462618

namespace A071680

/-- `A065091(A000720(p?[A087031(n+1)]))` -/
def P5742420983308462618.Spec : Prop :=
  ∀ n, P5742420983308462618.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P13360749277261399360

`A000040(eq[1, A087032(A000040(n+1))]+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071680

/-- `A000040(eq[1, A087032(A000040(n+1))]+2)` -/
def P13360749277261399360.Spec : Prop :=
  ∀ n, P13360749277261399360.a n = A071680 (n + 1)

theorem P13360749277261399360.correct : P13360749277261399360.Spec := by
  intro n
  simp only [A071680, Nat.add_sub_cancel]

end A071680

/-! ## A071680.P4667422424846580911

`p?[A001222(A210497(n+1))*A045344(n+1)]`
-/

namespace A071680.P4667422424846580911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A210497 (n + 1)).toNat * A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071680.P4667422424846580911

namespace A071680

/-- `p?[A001222(A210497(n+1))*A045344(n+1)]` -/
def P4667422424846580911.Spec : Prop :=
  ∀ n, P4667422424846580911.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P15319101598186275945

`p?[A001222(A210497(n+1))*A065091(n+1)]`
-/

namespace A071680.P15319101598186275945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A210497 (n + 1)).toNat * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071680.P15319101598186275945

namespace A071680

/-- `p?[A001222(A210497(n+1))*A065091(n+1)]` -/
def P15319101598186275945.Spec : Prop :=
  ∀ n, P15319101598186275945.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P2671442010963255031

`p?[A000040(n+2)*A001222(A210497(n+1))]`
-/

namespace A071680.P2671442010963255031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A001222 (A210497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071680.P2671442010963255031

namespace A071680

/-- `p?[A000040(n+2)*A001222(A210497(n+1))]` -/
def P2671442010963255031.Spec : Prop :=
  ∀ n, P2671442010963255031.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P8304498756439991500

`A348937(p?[A087031(n+1)])+1`
-/

namespace A071680.P8304498756439991500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A071680.P8304498756439991500

namespace A071680

/-- `A348937(p?[A087031(n+1)])+1` -/
def P8304498756439991500.Spec : Prop :=
  ∀ n, P8304498756439991500.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P9381636428195777378

`A336847(p?[A087031(n+1)])+1`
-/

namespace A071680.P9381636428195777378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336847 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A071680.P9381636428195777378

namespace A071680

/-- `A336847(p?[A087031(n+1)])+1` -/
def P9381636428195777378.Spec : Prop :=
  ∀ n, P9381636428195777378.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P5094796939732695199

`A141310(A336847(p?[A087031(n+1)]))`
-/

namespace A071680.P5094796939732695199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A336847 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A071680.P5094796939732695199

namespace A071680

/-- `A141310(A336847(p?[A087031(n+1)]))` -/
def P5094796939732695199.Spec : Prop :=
  ∀ n, P5094796939732695199.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P8435012825622294154

`p?[A341284(n+2)-A001223(n+2)]`
-/

namespace A071680.P8435012825622294154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341284 (n + 2) - A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071680.P8435012825622294154

namespace A071680

/-- `p?[A341284(n+2)-A001223(n+2)]` -/
def P8435012825622294154.Spec : Prop :=
  ∀ n, P8435012825622294154.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P11523193225713933503

`A003961(p?[A087031(n+1)])`
-/

namespace A071680.P11523193225713933503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071680.P11523193225713933503

namespace A071680

/-- `A003961(p?[A087031(n+1)])` -/
def P11523193225713933503.Spec : Prop :=
  ∀ n, P11523193225713933503.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P3980999711659156017

`A045965(p?[A087031(n+1)])`
-/

namespace A071680.P3980999711659156017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071680.P3980999711659156017

namespace A071680

/-- `A045965(p?[A087031(n+1)])` -/
def P3980999711659156017.Spec : Prop :=
  ∀ n, P3980999711659156017.a n = A071680 (n + 1)

end A071680

/-! ## A071680.P6263033885310148779

`A117367(p?[A087031(n+1)])`
-/

namespace A071680.P6263033885310148779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071680.P6263033885310148779

namespace A071680

/-- `A117367(p?[A087031(n+1)])` -/
def P6263033885310148779.Spec : Prop :=
  ∀ n, P6263033885310148779.a n = A071680 (n + 1)

end A071680

/-!
# A071681: Number of ways to represent the n-th prime as arithmetic mean of two other primes.

The programs for A071681, there is no canonical definition to state claims against.
-/

/-! ## A071681.P15793719135124194939

`A116619(n+1)-1`
-/

namespace A071681.P15793719135124194939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (n + 1) - 1

end

end A071681.P15793719135124194939

/-! ## A071681.P1441511240393038273

`A023443(A116619(n+1))`
-/

namespace A071681.P1441511240393038273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A116619 (n + 1)).toNat

end

end A071681.P1441511240393038273

/-! ## A071681.P15247589310699707933

`A061357(A000040(n+1)%A171956(n+1))`
-/

namespace A071681.P15247589310699707933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (Int.tmod (A000040 (n + 1)) (A171956 (n + 1))).toNat

end

end A071681.P15247589310699707933

/-! ## A071681.P15315409434608396499

`A061357(record[A006530(2*(n+1))])`
-/

namespace A071681.P15315409434608396499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071681.P15315409434608396499

/-! ## A071681.P16240436218121733233

`A061357(eq[2, A000005(n+1)]+1)`
-/

namespace A071681.P16240436218121733233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071681.P16240436218121733233

/-! ## A071681.P11285768391164164421

`A061357(A000040(n+1))%A267167(2*n)`
-/

namespace A071681.P11285768391164164421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061357 (A000040 (n + 1)).toNat) (A267167 (2 * n))

end

end A071681.P11285768391164164421

/-! ## A071681.P12355428457405104585

`A061357(A060576(2*n)+A006093(n+1))`
-/

namespace A071681.P12355428457405104585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A060576 (2 * n) + A006093 (n + 1)).toNat

end

end A071681.P12355428457405104585

/-! ## A071681.P9780236931317714512

`A038713(2*n+1)*A061357(A000040(n+1))`
-/

namespace A071681.P9780236931317714512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038713 (2 * n + 1) * A061357 (A000040 (n + 1)).toNat

end

end A071681.P9780236931317714512

/-! ## A071681.P17802356423269910838

`A061357(A075643(n+2))`
-/

namespace A071681.P17802356423269910838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A075643 (n + 2)).toNat

end

end A071681.P17802356423269910838

/-! ## A071681.P2880600335042149089

`A061357(A010054(3*n+2)+A000040(n+1))`
-/

namespace A071681.P2880600335042149089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A010054 (3 * n + 2) + A000040 (n + 1)).toNat

end

end A071681.P2880600335042149089

/-! ## A071681.P5652750971479737998

`A045917(Δ[A007504(n)])-1`
-/

namespace A071681.P5652750971479737998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (n + 1) - f1 n).toNat - 1

end

end A071681.P5652750971479737998

/-! ## A071681.P3826043638333416873

`A045917(A000040(n+1))-1`
-/

namespace A071681.P3826043638333416873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A000040 (n + 1)).toNat - 1

end

end A071681.P3826043638333416873

/-! ## A071681.P104334455731727827

`A045917(A008578(n+2))-1`
-/

namespace A071681.P104334455731727827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A008578 (n + 2)).toNat - 1

end

end A071681.P104334455731727827

/-! ## A071681.P13547500962168558216

`A002375(A175787(n+2))-1`
-/

namespace A071681.P13547500962168558216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A175787 (n + 2)).toNat - 1

end

end A071681.P13547500962168558216

/-! ## A071681.P137784436107321310

`A045917(A182986(n+2))-1`
-/

namespace A071681.P137784436107321310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A182986 (n + 2)).toNat - 1

end

end A071681.P137784436107321310

/-! ## A071681.P11585138781081679995

`A045917(sqrt(A001248(n+1)))-1`
-/

namespace A071681.P11585138781081679995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 1

end

end A071681.P11585138781081679995

/-! ## A071681.P2281644206336232069

`A045917(p?[A000961(n+1)])-1`
-/

namespace A071681.P2281644206336232069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A071681.P2281644206336232069

/-! ## A071681.P13506474444447393393

`A045917(record[A006530(n+2)])-1`
-/

namespace A071681.P13506474444447393393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A071681.P13506474444447393393

/-! ## A071681.P12849503409920366925

`A045917(record[A020639(n+2)])-1`
-/

namespace A071681.P12849503409920366925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A071681.P12849503409920366925

/-! ## A071681.P10396838060328425706

`A045917(A052147(n+1)-2)-1`
-/

namespace A071681.P10396838060328425706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A052147 (n + 1) - 2).toNat - 1

end

end A071681.P10396838060328425706

/-!
# A071682: Least m such that A060207(m) = n.

The programs for A071682, there is no canonical definition to state claims against.
-/

/-! ## A071682.P9807782394022364356

`ceil(log2(A007097(n)))`
-/

namespace A071682.P9807782394022364356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A007097 n : ℝ)⌉

end

end A071682.P9807782394022364356

/-! ## A071682.P18104727456210679609

`ceil(log2(A323202(2*n+1)+A095938(n+1)))`
-/

namespace A071682.P18104727456210679609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A323202 (2 * n + 1) + A095938 (n + 1) : ℝ)⌉

end

end A071682.P18104727456210679609

/-! ## A071682.P14188289413746132577

`∑[∑[A359836(A330104(3*n+5))]]`
-/

namespace A071682.P14188289413746132577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359836 (A330104 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071682.P14188289413746132577

/-! ## A071682.P7191474119955661411

`∑[∑[A260445(A379112(2*n+3))]]`
-/

namespace A071682.P7191474119955661411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (A379112 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071682.P7191474119955661411

/-! ## A071682.P14579016281080622992

`lt[A217955(n+1), A258469(A047966(n+1))]`
-/

namespace A071682.P14579016281080622992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258469 (A047966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071682.P14579016281080622992

/-!
# A071683: Nonprimes which are the average of two consecutive Fibonacci numbers.

The programs for A071683, the canonical program `A071683.P4804736648095859902` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071683 has offset 1).

The definition of A071683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071683.P9804947378324926911

`round(ϕ^3*a(n-1))` with `a(0)=1, a(1)=4, a(2)=72`
-/

namespace A071683.P9804947378324926911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 72] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A071683.P9804947378324926911

namespace A071683

/-- `round(ϕ^3*a(n-1))` -/
def P9804947378324926911.Spec : Prop :=
  ∀ n, P9804947378324926911.a n = A071683 (n + 1)

end A071683

/-! ## A071683.P10140798295451074935

`record[(1-char[2])*A001076(n+1)]`
-/

namespace A071683.P10140798295451074935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A001076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071683.P10140798295451074935

namespace A071683

/-- `record[(1-char[2])*A001076(n+1)]` -/
def P10140798295451074935.Spec : Prop :=
  ∀ n, P10140798295451074935.a n = A071683 (n + 1)

end A071683

/-! ## A071683.P11423039311783582432

`A293505(3*floor(atan(n)+1+n))`
-/

namespace A071683.P11423039311783582432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (3 * ⌊Real.arctan (n : ℝ) + 1 + (n : ℝ)⌋).toNat

end

end A071683.P11423039311783582432

namespace A071683

/-- `A293505(3*floor(atan(n)+1+n))` -/
def P11423039311783582432.Spec : Prop :=
  ∀ n, P11423039311783582432.a n = A071683 (n + 1)

end A071683

/-! ## A071683.P4804736648095859902

`A001076(A326178(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071683

/-- `A001076(A326178(n+1))` -/
def P4804736648095859902.Spec : Prop :=
  ∀ n, P4804736648095859902.a n = A071683 (n + 1)

theorem P4804736648095859902.correct : P4804736648095859902.Spec := by
  intro n
  simp only [A071683, Nat.add_sub_cancel]

end A071683

/-! ## A071683.P9028011430053724761

`A001076(n+2)%(a(n-2)+29*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A071683.P9028011430053724761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.tmod (A001076 (n + 2)) (a (n - 2) + 29 * a (n - 1))

end

end A071683.P9028011430053724761

namespace A071683

/-- `A001076(n+2)%(a(n-2)+29*a(n-1))` -/
def P9028011430053724761.Spec : Prop :=
  ∀ n, P9028011430053724761.a n = A071683 (n + 1)

end A071683

/-!
# A071684: Number of plane trees with n edges and having an odd number of leaves.

The programs for A071684, the canonical program `A071684.P5183352824693304528` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071684 has offset 1).

The definition of A071684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071688, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071684.P5183352824693304528

`A000108(n+1)-A071688(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071684

/-- `A000108(n+1)-A071688(n+1)` -/
def P5183352824693304528.Spec : Prop :=
  ∀ n, P5183352824693304528.a n = A071684 (n + 1)

theorem P5183352824693304528.correct : P5183352824693304528.Spec := by
  intro n
  simp only [A071684, Nat.add_sub_cancel]

end A071684

/-! ## A071684.P13269441753551131733

`∑[A071724(n)]-A071688(n+1)`
-/

namespace A071684.P13269441753551131733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A071688 (n + 1)

end

end A071684.P13269441753551131733

namespace A071684

/-- `∑[A071724(n)]-A071688(n+1)` -/
def P13269441753551131733.Spec : Prop :=
  ∀ n, P13269441753551131733.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P10755992396407181862

`A214283(n+1)+A007123(n+2)`
-/

namespace A071684.P10755992396407181862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214283 (n + 1) + A007123 (n + 2)

end

end A071684.P10755992396407181862

namespace A071684

/-- `A214283(n+1)+A007123(n+2)` -/
def P10755992396407181862.Spec : Prop :=
  ∀ n, P10755992396407181862.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P9594924046547730458

`(A090192(n+1)+A000108(n+1))/2`
-/

namespace A071684.P9594924046547730458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090192 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A071684.P9594924046547730458

namespace A071684

/-- `(A090192(n+1)+A000108(n+1))/2` -/
def P9594924046547730458.Spec : Prop :=
  ∀ n, P9594924046547730458.a n = (A071684 (n + 1) : ℚ)

end A071684

/-! ## A071684.P5118601444231322277

`(A000108(n+1)-A105523(n+1))/2`
-/

namespace A071684.P5118601444231322277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) - A105523 (n + 1) : ℚ) / 2

end

end A071684.P5118601444231322277

namespace A071684

/-- `(A000108(n+1)-A105523(n+1))/2` -/
def P5118601444231322277.Spec : Prop :=
  ∀ n, P5118601444231322277.a n = (A071684 (n + 1) : ℚ)

end A071684

/-! ## A071684.P14754781544904723979

`A000150(n+1)+A007595(n+1)-A071688(n+1)`
-/

namespace A071684.P14754781544904723979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (n + 1) + (A007595 (n + 1) - A071688 (n + 1))

end

end A071684.P14754781544904723979

namespace A071684

/-- `A000150(n+1)+A007595(n+1)-A071688(n+1)` -/
def P14754781544904723979.Spec : Prop :=
  ∀ n, P14754781544904723979.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P9450943099245141832

`A214282(n+1)+A007123(n+2)-A001405(n+1)`
-/

namespace A071684.P9450943099245141832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (n + 1) + (A007123 (n + 2) - A001405 (n + 1))

end

end A071684.P9450943099245141832

namespace A071684

/-- `A214282(n+1)+A007123(n+2)-A001405(n+1)` -/
def P9450943099245141832.Spec : Prop :=
  ∀ n, P9450943099245141832.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P17353386875214190123

`A000984(n)-A357642(n+1)`
-/

namespace A071684.P17353386875214190123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A357642 (n + 1)

end

end A071684.P17353386875214190123

namespace A071684

/-- `A000984(n)-A357642(n+1)` -/
def P17353386875214190123.Spec : Prop :=
  ∀ n, P17353386875214190123.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P13090715410893077812

`A001700(n)-A357641(n+1)`
-/

namespace A071684.P13090715410893077812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A357641 (n + 1)

end

end A071684.P13090715410893077812

namespace A071684

/-- `A001700(n)-A357641(n+1)` -/
def P13090715410893077812.Spec : Prop :=
  ∀ n, P13090715410893077812.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P15306452252989246143

`A088218(n+1)-A357641(n+1)`
-/

namespace A071684.P15306452252989246143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - A357641 (n + 1)

end

end A071684.P15306452252989246143

namespace A071684

/-- `A088218(n+1)-A357641(n+1)` -/
def P15306452252989246143.Spec : Prop :=
  ∀ n, P15306452252989246143.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P15218058762486222005

`A138364(2*n+1)-A357641(n+1)`
-/

namespace A071684.P15218058762486222005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (2 * n + 1) - A357641 (n + 1)

end

end A071684.P15218058762486222005

namespace A071684

/-- `A138364(2*n+1)-A357641(n+1)` -/
def P15218058762486222005.Spec : Prop :=
  ∀ n, P15218058762486222005.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P4045766631427575391

`A024718(n+1)-(A357641(n+1)+A024718(n))`
-/

namespace A071684.P4045766631427575391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 (n + 1) - (A357641 (n + 1) + A024718 n)

end

end A071684.P4045766631427575391

namespace A071684

/-- `A024718(n+1)-(A357641(n+1)+A024718(n))` -/
def P4045766631427575391.Spec : Prop :=
  ∀ n, P4045766631427575391.a n = A071684 (n + 1)

end A071684

/-! ## A071684.P14952401822351290221

`A000108(n+1)+A119359(n+1)-A119358(n+1)`
-/

namespace A071684.P14952401822351290221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A119359 (n + 1) - A119358 (n + 1))

end

end A071684.P14952401822351290221

namespace A071684

/-- `A000108(n+1)+A119359(n+1)-A119358(n+1)` -/
def P14952401822351290221.Spec : Prop :=
  ∀ n, P14952401822351290221.a n = A071684 (n + 1)

end A071684

/-!
# A071685: Non-palindromic numbers n, not divisible by 10, such that either n divides R(n) or R(n) divides n, where R(n) is the digit-reversal of n.

The programs for A071685, there is no canonical definition to state claims against.
-/

/-! ## A071685.P13389367819485849210

`∪[A008919(n+1), A031877(n+1)]`
-/

namespace A071685.P13389367819485849210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071685.P13389367819485849210

/-! ## A071685.P14706223260100360966

`∩[A062917(n+1), A071687(n+1)]`
-/

namespace A071685.P14706223260100360966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071685.P14706223260100360966

/-! ## A071685.P12795743767783945621

`∩[A071687(n+1), A110819(n+1)]`
-/

namespace A071685.P12795743767783945621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071685.P12795743767783945621

/-! ## A071685.P1316564126279884146

`∩[A071687(n+1), A392783(n+1)]`
-/

namespace A071685.P1316564126279884146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071685.P1316564126279884146

/-!
# A071686: Smallest solution to gcd(x, Rev(x)) = 2^n.

The programs for A071686, there is no canonical definition to state claims against.
-/

/-! ## A071686.P2542195524090504889

`A069554(2^(n+1))`
-/

namespace A071686.P2542195524090504889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069554 (2 ^ (n + 1))

end

end A071686.P2542195524090504889

/-!
# A071688: Number of plane trees with even number of leaves.

The programs for A071688, the canonical program `A071688.P13269881866704923199` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071688 has offset 1).

The definition of A071688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071688.P11918674804062242354

`A119358(n+1)-A119359(n+1)`
-/

namespace A071688.P11918674804062242354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119358 (n + 1) - A119359 (n + 1)

end

end A071688.P11918674804062242354

namespace A071688

/-- `A119358(n+1)-A119359(n+1)` -/
def P11918674804062242354.Spec : Prop :=
  ∀ n, P11918674804062242354.a n = A071688 (n + 1)

end A071688

/-! ## A071688.P7380777131684822242

`∑[A071724(n)]-A071684(n+1)`
-/

namespace A071688.P7380777131684822242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A071684 (n + 1)

end

end A071688.P7380777131684822242

namespace A071688

/-- `∑[A071724(n)]-A071684(n+1)` -/
def P7380777131684822242.Spec : Prop :=
  ∀ n, P7380777131684822242.a n = A071688 (n + 1)

end A071688

/-! ## A071688.P11210003139199391367

`A000108(n+1)-A071684(n+1)`
-/

namespace A071688.P11210003139199391367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A071684 (n + 1)

end

end A071688.P11210003139199391367

namespace A071688

/-- `A000108(n+1)-A071684(n+1)` -/
def P11210003139199391367.Spec : Prop :=
  ∀ n, P11210003139199391367.a n = A071688 (n + 1)

end A071688

/-! ## A071688.P8472861996109379326

`A007123(n+2)-A214282(n+1)`
-/

namespace A071688.P8472861996109379326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) - A214282 (n + 1)

end

end A071688.P8472861996109379326

namespace A071688

/-- `A007123(n+2)-A214282(n+1)` -/
def P8472861996109379326.Spec : Prop :=
  ∀ n, P8472861996109379326.a n = A071688 (n + 1)

end A071688

/-! ## A071688.P13269881866704923199

`(A105523(n+1)+A000108(n+1))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071688

/-- `(A105523(n+1)+A000108(n+1))/2` -/
def P13269881866704923199.Spec : Prop :=
  ∀ n, P13269881866704923199.a n = (A071688 (n + 1) : ℚ)

end A071688

/-! ## A071688.P10028373363532108959

`(A000108(n+1)-A090192(n+1))/2`
-/

namespace A071688.P10028373363532108959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) - A090192 (n + 1) : ℚ) / 2

end

end A071688.P10028373363532108959

namespace A071688

/-- `(A000108(n+1)-A090192(n+1))/2` -/
def P10028373363532108959.Spec : Prop :=
  ∀ n, P10028373363532108959.a n = (A071688 (n + 1) : ℚ)

end A071688

/-! ## A071688.P5250202807543640975

`A000150(n+1)+A007595(n+1)-A071684(n+1)`
-/

namespace A071688.P5250202807543640975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (n + 1) + (A007595 (n + 1) - A071684 (n + 1))

end

end A071688.P5250202807543640975

namespace A071688

/-- `A000150(n+1)+A007595(n+1)-A071684(n+1)` -/
def P5250202807543640975.Spec : Prop :=
  ∀ n, P5250202807543640975.a n = A071688 (n + 1)

end A071688

/-! ## A071688.P9699313674148758460

`A267632(2*(n+1)²+1)`
-/

namespace A071688.P9699313674148758460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267632 (2 * (n + 1) ^ 2 + 1)

end

end A071688.P9699313674148758460

namespace A071688

/-- `A267632(2*(n+1)²+1)` -/
def P9699313674148758460.Spec : Prop :=
  ∀ n, P9699313674148758460.a n = A071688 (n + 1)

end A071688

/-!
# A071689: Number of ways to write n as n = x*y*z*t+x+y+z+t 0<=x<=y<=z<=t<=n.

The programs for A071689, there is no canonical definition to state claims against.
-/

/-! ## A071689.P2710861888512814697

`A260804(n)+∑[ceil(xor(1, n)/6)]`
-/

namespace A071689.P2710861888512814697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071689.P2710861888512814697

/-! ## A071689.P13570270418143814881

`A260804(n)+A001399(n)`
-/

namespace A071689.P13570270418143814881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + A001399 n

end

end A071689.P13570270418143814881

/-! ## A071689.P13210483249268888824

`A260804(n)+∑[A103221(n)]`
-/

namespace A071689.P13210483249268888824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071689.P13210483249268888824

/-! ## A071689.P6153412771608618054

`A260804(n)+A069905(n+3)`
-/

namespace A071689.P6153412771608618054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + A069905 (n + 3)

end

end A071689.P6153412771608618054

/-! ## A071689.P4536681634966238401

`A260804(n)+A008743(2*n)`
-/

namespace A071689.P4536681634966238401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + A008743 (2 * n)

end

end A071689.P4536681634966238401

/-! ## A071689.P852993159301853924

`A260804(n)+A128012(n)/3`
-/

namespace A071689.P852993159301853924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260804 n : ℚ) + (A128012 n : ℚ) / 3

end

end A071689.P852993159301853924

/-! ## A071689.P14150584030143297511

`A260804(n)+∑[A008679(2*n)]`
-/

namespace A071689.P14150584030143297511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071689.P14150584030143297511

/-! ## A071689.P18075012255283053179

`A260804(n)+∑[A110654(A008611(n))]`
-/

namespace A071689.P18075012255283053179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071689.P18075012255283053179

/-! ## A071689.P1697544361222965685

`A001399(n)-A001057(2*A260804(n))`
-/

namespace A071689.P1697544361222965685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A001057 (2 * A260804 n).toNat

end

end A071689.P1697544361222965685

/-!
# A071690: Number of ways to write n as n = x*y*z*t/(x+y+z+t) with 1 <= x <= y <= z <= t <= n.

The programs for A071690, there is no canonical definition to state claims against.
-/

/-! ## A071690.P7226626713432697061

`A039993(A061076(n+1)*A320067(n))`
-/

namespace A071690.P7226626713432697061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A061076 (n + 1) * A320067 n).toNat

end

end A071690.P7226626713432697061

/-! ## A071690.P15764565493935085976

`A039993(A061076(n+1)*A320247(n))`
-/

namespace A071690.P15764565493935085976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A061076 (n + 1) * A320247 n).toNat

end

end A071690.P15764565493935085976

/-! ## A071690.P6341159033163257547

`A339660(A289360(n))`
-/

namespace A071690.P6341159033163257547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (A289360 n).toNat

end

end A071690.P6341159033163257547

/-! ## A071690.P11008796868707181352

`A101451(n+1)%A298422(n+1)`
-/

namespace A071690.P11008796868707181352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101451 (n + 1)) (A298422 (n + 1))

end

end A071690.P11008796868707181352

/-! ## A071690.P11578679883211709943

`A161849((n+1)*A000032(n+2)+1)`
-/

namespace A071690.P11578679883211709943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 ((n + 1 : ℤ) * A000032 (n + 2) + 1).toNat

end

end A071690.P11578679883211709943

/-!
# A071692: Number of ways to write n as n = x! + y! + z! where 0<=x<=y<=z<=n.

The programs for A071692, there is no canonical definition to state claims against.
-/

/-! ## A071692.P10631094123233852844

`floor(log(cosh(A071691(n+1))))`
-/

namespace A071692.P10631094123233852844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A071691 (n + 1) : ℝ))⌋

end

end A071692.P10631094123233852844

/-! ## A071692.P16765549582349633519

`A071691(n+2)%(A071691(n+1)+1)`
-/

namespace A071692.P16765549582349633519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071691 (n + 2)) (A071691 (n + 1) + 1)

end

end A071692.P16765549582349633519

/-!
# A071693: Number of ways to write n as n = x*y*z + x + y + z where 0 <= x <= y <= z <= n.

The programs for A071693, there is no canonical definition to state claims against.
-/

/-! ## A071693.P2775317905105690576

`A260803(n)+A008619(n)`
-/

namespace A071693.P2775317905105690576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n + A008619 n

end

end A071693.P2775317905105690576

/-! ## A071693.P17602069158310241760

`A004526(n)+A260803(n)+1`
-/

namespace A071693.P17602069158310241760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A260803 n + 1)

end

end A071693.P17602069158310241760

/-! ## A071693.P13219341532806237661

`A260803(n)+∑[A319710(2*(n+2))]`
-/

namespace A071693.P13219341532806237661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071693.P13219341532806237661

/-! ## A071693.P12538492749079787186

`A260803(n)+∑[A071471(A053148(a(n-1)+1)+1)]` with `a(0)=1`
-/

namespace A071693.P12538492749079787186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A071471 (A053148 (f1 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071693.P12538492749079787186

/-! ## A071693.P15096043656183083047

`A260803(n)+∑[A071471(A089964(a(n-1)+1)+1)]` with `a(0)=1`
-/

namespace A071693.P15096043656183083047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A071471 (A089964 (f1 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071693.P15096043656183083047

/-! ## A071693.P7174398297388606556

`A260803(n)+∑[A071471(A304114(a(n-1)+1)+1)]` with `a(0)=1`
-/

namespace A071693.P7174398297388606556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A071471 (A304114 (f1 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071693.P7174398297388606556

/-!
# A071694: Number of ways to write n as n = x*y*z/(x+y+z) 1 <= x <= y <= z <= n.

The programs for A071694, there is no canonical definition to state claims against.
-/

/-! ## A071694.P8152204312201203620

`A304708(n)%A304707(A014631(n+1))`
-/

namespace A071694.P8152204312201203620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304708 n) (A304707 (A014631 (n + 1)).toNat)

end

end A071694.P8152204312201203620

/-! ## A071694.P11841636642278052490

`A324904(A018007(n)-n)`
-/

namespace A071694.P11841636642278052490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A018007 n - (n : ℤ)).toNat

end

end A071694.P11841636642278052490

/-! ## A071694.P6937523209845597446

`A152487(A063699(n)+A000045(n))`
-/

namespace A071694.P6937523209845597446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (A063699 n + A000045 n).toNat

end

end A071694.P6937523209845597446

/-! ## A071694.P16407534241321460275

`A001899(A000079(n))-A053200(n)`
-/

namespace A071694.P16407534241321460275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A000079 n).toNat - A053200 n

end

end A071694.P16407534241321460275

/-! ## A071694.P3978139637505175839

`A321964(A202874(n+1))%A129021(n)`
-/

namespace A071694.P3978139637505175839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321964 (A202874 (n + 1)).toNat) (A129021 n)

end

end A071694.P3978139637505175839

/-!
# A071695: Lesser members of twin prime pairs of form (4*k+1, 4*k+3), k > 0.

The programs for A071695, there is no canonical definition to state claims against.
-/

/-! ## A071695.P4679557187627062246

`A071696(n+1)-2`
-/

namespace A071695.P4679557187627062246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071696 (n + 1) - 2

end

end A071695.P4679557187627062246

/-! ## A071695.P8958538182983384512

`floor(sqrt(A071697(n+1)))`
-/

namespace A071695.P8958538182983384512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071697 (n + 1))

end

end A071695.P8958538182983384512

/-! ## A071695.P2668879305587188771

`4*A123986(n+1)+1`
-/

namespace A071695.P2668879305587188771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123986 (n + 1) + 1

end

end A071695.P2668879305587188771

/-! ## A071695.P4189409640907844559

`4*(3*A201541(n)+1)+1`
-/

namespace A071695.P4189409640907844559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (3 * A201541 n + 1) + 1

end

end A071695.P4189409640907844559

/-! ## A071695.P17302430821716517171

`xor(2, A071696(A000027(n+1)))`
-/

namespace A071695.P17302430821716517171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A071696 (A000027 (n + 1)).toNat)

end

end A071695.P17302430821716517171

/-! ## A071695.P13414183237832714358

`A071697(n+1)/A071696(n+1)`
-/

namespace A071695.P13414183237832714358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071697 (n + 1) : ℚ) / (A071696 (n + 1) : ℚ)

end

end A071695.P13414183237832714358

/-! ## A071695.P3539788997252916872

`xor(A000005(A000040(n+1)), A071696(n+1))`
-/

namespace A071695.P3539788997252916872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A000040 (n + 1)).toNat) (A071696 (n + 1))

end

end A071695.P3539788997252916872

/-! ## A071695.P17856773264568987918

`A122565(Δ[n²])`
-/

namespace A071695.P17856773264568987918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A071695.P17856773264568987918

/-! ## A071695.P14547592035906112800

`A122565(2*(n+1))-2`
-/

namespace A071695.P14547592035906112800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (2 * (n + 1)) - 2

end

end A071695.P14547592035906112800

/-! ## A071695.P17271408829046402582

`∩[A001359(n+1), A122565(n+1)]`
-/

namespace A071695.P17271408829046402582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P17271408829046402582

/-! ## A071695.P16101243552033026754

`∩[A001359(n+1), A123079(n+1)]`
-/

namespace A071695.P16101243552033026754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P16101243552033026754

/-! ## A071695.P16627056069272694652

`∩[A054799(n+1), A122565(n+1)]`
-/

namespace A071695.P16627056069272694652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P16627056069272694652

/-! ## A071695.P2047349820549596644

`∩[A063700(n+1), A122565(n+1)]`
-/

namespace A071695.P2047349820549596644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P2047349820549596644

/-! ## A071695.P16356026030501094667

`∩[A073534(n+1), A122565(n+1)]`
-/

namespace A071695.P16356026030501094667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P16356026030501094667

/-! ## A071695.P1076332847746823189

`p?[A122565(2*n+1)]`
-/

namespace A071695.P1076332847746823189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071695.P1076332847746823189

/-! ## A071695.P16913616288583097142

`p?[A122565(n+2)-2]`
-/

namespace A071695.P16913616288583097142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071695.P16913616288583097142

/-! ## A071695.P576964934435654445

`p?[xor(2, A006512(n+2))]`
-/

namespace A071695.P576964934435654445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A006512 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071695.P576964934435654445

/-! ## A071695.P16580016451882025877

`p?[or(2, A111166(n+1))-2]`
-/

namespace A071695.P16580016451882025877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A111166 (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071695.P16580016451882025877

/-! ## A071695.P9083712570357649182

`∩[A001838(n+1), A122565(n+1)]`
-/

namespace A071695.P9083712570357649182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P9083712570357649182

/-! ## A071695.P15626846664599050689

`∩[A001838(n+1), A123079(n+1)]`
-/

namespace A071695.P15626846664599050689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071695.P15626846664599050689

/-!
# A071696: Greater members of twin prime pairs of form (4*k+1,4*k+3), k>0.

The programs for A071696, there is no canonical definition to state claims against.
-/

/-! ## A071696.P14573751867445809768

`A071695(n+1)+2`
-/

namespace A071696.P14573751867445809768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1) + 2

end

end A071696.P14573751867445809768

/-! ## A071696.P9594305226086954282

`4*A123986(n+1)+3`
-/

namespace A071696.P9594305226086954282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123986 (n + 1) + 3

end

end A071696.P9594305226086954282

/-! ## A071696.P16905713152482114904

`floor(sqrt(A071697(n+1)))+2`
-/

namespace A071696.P16905713152482114904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071697 (n + 1)) + 2

end

end A071696.P16905713152482114904

/-! ## A071696.P5900651770945434225

`4*(3*A201541(n)+1)+3`
-/

namespace A071696.P5900651770945434225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (3 * A201541 n + 1) + 3

end

end A071696.P5900651770945434225

/-! ## A071696.P470846146525051588

`or(2, A071695(A008619(2*n)))`
-/

namespace A071696.P470846146525051588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A071695 (A008619 (2 * n)).toNat)

end

end A071696.P470846146525051588

/-! ## A071696.P3886735028510553230

`A122565(2*(n+1))`
-/

namespace A071696.P3886735028510553230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (2 * (n + 1))

end

end A071696.P3886735028510553230

/-! ## A071696.P12404126852100470987

`A122565(Δ[n²])+2`
-/

namespace A071696.P12404126852100470987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A071696.P12404126852100470987

/-! ## A071696.P9989343476350200825

`∩[A006512(n+1), A123080(n+1)]`
-/

namespace A071696.P9989343476350200825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P9989343476350200825

/-! ## A071696.P13528622383995310539

`∩[A122565(n+1), A172057(n+1)]`
-/

namespace A071696.P13528622383995310539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P13528622383995310539

/-! ## A071696.P10236646051392496853

`p?[A122565(n+1)+2]`
-/

namespace A071696.P10236646051392496853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071696.P10236646051392496853

/-! ## A071696.P18165095552144388639

`p?[xor(2, A001359(n+1))]`
-/

namespace A071696.P18165095552144388639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A001359 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071696.P18165095552144388639

/-! ## A071696.P5536173787503760412

`p?[A205511(n+1)+2]`
-/

namespace A071696.P5536173787503760412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205511 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071696.P5536173787503760412

/-! ## A071696.P17774670861669033041

`p?[A205302(n+1)-2]+2`
-/

namespace A071696.P17774670861669033041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A071696.P17774670861669033041

/-! ## A071696.P2737615359744522628

`∩[A006512(n+1), A205302(n+1)]`
-/

namespace A071696.P2737615359744522628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P2737615359744522628

/-! ## A071696.P4620800366013720255

`∩[A064077(n+1), A205302(n+1)]`
-/

namespace A071696.P4620800366013720255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P4620800366013720255

/-! ## A071696.P11487274449906025514

`∩[A205302(n+1), A172057(n+1)]`
-/

namespace A071696.P11487274449906025514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P11487274449906025514

/-! ## A071696.P11511229725923034797

`∩[A267945(n+1), A205302(n+1)]`
-/

namespace A071696.P11511229725923034797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P11511229725923034797

/-! ## A071696.P10244017997062142012

`∩[A006512(n+1), A079740(n+1)]`
-/

namespace A071696.P10244017997062142012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P10244017997062142012

/-! ## A071696.P8528669561510433089

`∩[A067829(n+1), A079740(n+1)]`
-/

namespace A071696.P8528669561510433089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P8528669561510433089

/-! ## A071696.P11407267613414818

`∩[A079740(n+1), A122565(n+1)]`
-/

namespace A071696.P11407267613414818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071696.P11407267613414818

/-!
# A071697: Product of twin primes of form (4*k+1,4*k+3), k>0.

The programs for A071697, there is no canonical definition to state claims against.
-/

/-! ## A071697.P16315947118950989340

`A071695(n+1)*A071696(n+1)`
-/

namespace A071697.P16315947118950989340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1) * A071696 (n + 1)

end

end A071697.P16315947118950989340

/-! ## A071697.P17848484298157297428

`(A122565(Δ[n²])+1)²-1`
-/

namespace A071697.P17848484298157297428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) ^ 2 - 1

end

end A071697.P17848484298157297428

/-! ## A071697.P15856905145393674061

`A122565(2*n+1)*A122565(2*(n+1))`
-/

namespace A071697.P15856905145393674061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (2 * n + 1) * A122565 (2 * (n + 1))

end

end A071697.P15856905145393674061

/-! ## A071697.P2200481216294958275

`∩[A037074(n+1), A072011(n+1)]`
-/

namespace A071697.P2200481216294958275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P2200481216294958275

/-! ## A071697.P15266979017039387842

`∩[A065148(n+1), A072011(n+1)]`
-/

namespace A071697.P15266979017039387842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P15266979017039387842

/-! ## A071697.P13087012380676538502

`∩[A072011(n+1), A089952(n+1)]`
-/

namespace A071697.P13087012380676538502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P13087012380676538502

/-! ## A071697.P6390527111593374310

`∩[A072011(n+1), A189045(n+1)]`
-/

namespace A071697.P6390527111593374310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P6390527111593374310

/-! ## A071697.P9922806276348939213

`∩[A037074(n+1), A261073(n+1)]`
-/

namespace A071697.P9922806276348939213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P9922806276348939213

/-! ## A071697.P7407576033975858080

`∩[A065148(n+1), A261073(n+1)]`
-/

namespace A071697.P7407576033975858080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P7407576033975858080

/-! ## A071697.P1999321960046602301

`∩[A072011(n+1), A261073(n+1)]`
-/

namespace A071697.P1999321960046602301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P1999321960046602301

/-! ## A071697.P10728526858806349414

`∩[A074480(n+1), A261073(n+1)]`
-/

namespace A071697.P10728526858806349414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P10728526858806349414

/-! ## A071697.P409874898885695354

`∩[A089952(n+1), A261073(n+1)]`
-/

namespace A071697.P409874898885695354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P409874898885695354

/-! ## A071697.P672976808391279855

`∩[A089954(n+1), A261073(n+1)]`
-/

namespace A071697.P672976808391279855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P672976808391279855

/-! ## A071697.P992418548037047029

`∩[A134020(n+1), A261073(n+1)]`
-/

namespace A071697.P992418548037047029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P992418548037047029

/-! ## A071697.P8608973382089916296

`∩[A189045(n+1), A261073(n+1)]`
-/

namespace A071697.P8608973382089916296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P8608973382089916296

/-! ## A071697.P3590276148963533999

`∩[A037074(n+1), A261080(n+1)]`
-/

namespace A071697.P3590276148963533999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P3590276148963533999

/-! ## A071697.P1457463165936235701

`∩[A089952(n+1), A261080(n+1)]`
-/

namespace A071697.P1457463165936235701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P1457463165936235701

/-! ## A071697.P2020475898904159625

`∩[A089954(n+1), A261080(n+1)]`
-/

namespace A071697.P2020475898904159625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P2020475898904159625

/-! ## A071697.P1096849580796593164

`∩[A134020(n+1), A261080(n+1)]`
-/

namespace A071697.P1096849580796593164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P1096849580796593164

/-! ## A071697.P15816192778329527716

`∩[A189045(n+1), A261080(n+1)]`
-/

namespace A071697.P15816192778329527716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071697.P15816192778329527716

/-!
# A071698: Lesser members of twin prime pairs of form (4*k+3, 4*k+5), k >= 0.

The programs for A071698, the canonical program `A071698.P4400357579070051536` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071698 has offset 1).

The definition of A071698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071698.P16417628279815232319

`2*A241557(n+2)-1`
-/

namespace A071698.P16417628279815232319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241557 (n + 2) - 1

end

end A071698.P16417628279815232319

namespace A071698

/-- `2*A241557(n+2)-1` -/
def P16417628279815232319.Spec : Prop :=
  ∀ n, P16417628279815232319.a n = A071698 (n + 1)

end A071698

/-! ## A071698.P4400357579070051536

`A071699(n+1)-2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A071698

/-- `A071699(n+1)-2` -/
def P4400357579070051536.Spec : Prop :=
  ∀ n, P4400357579070051536.a n = A071698 (n + 1)

theorem P4400357579070051536.correct : P4400357579070051536.Spec := by
  intro n
  simp only [A071698, Nat.add_sub_cancel]

end A071698

/-! ## A071698.P10776650998006717926

`floor(sqrt(A071700(n+1)))`
-/

namespace A071698.P10776650998006717926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071700 (n + 1))

end

end A071698.P10776650998006717926

namespace A071698

/-- `floor(sqrt(A071700(n+1)))` -/
def P10776650998006717926.Spec : Prop :=
  ∀ n, P10776650998006717926.a n = A071698 (n + 1)

end A071698

/-! ## A071698.P6505140440198507702

`4*A045753(n+1)-1`
-/

namespace A071698.P6505140440198507702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045753 (n + 1) - 1

end

end A071698.P6505140440198507702

namespace A071698

/-- `4*A045753(n+1)-1` -/
def P6505140440198507702.Spec : Prop :=
  ∀ n, P6505140440198507702.a n = A071698 (n + 1)

end A071698

/-! ## A071698.P14741503844452664313

`A071700(n+1)/A071699(n+1)`
-/

namespace A071698.P14741503844452664313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071700 (n + 1) : ℚ) / (A071699 (n + 1) : ℚ)

end

end A071698.P14741503844452664313

namespace A071698

/-- `A071700(n+1)/A071699(n+1)` -/
def P14741503844452664313.Spec : Prop :=
  ∀ n, P14741503844452664313.a n = (A071698 (n + 1) : ℚ)

end A071698

/-! ## A071698.P2064514563812232843

`p?[xor(2, A001359(n+1))+2]`
-/

namespace A071698.P2064514563812232843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A001359 (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071698.P2064514563812232843

namespace A071698

/-- `p?[xor(2, A001359(n+1))+2]` -/
def P2064514563812232843.Spec : Prop :=
  ∀ n, P2064514563812232843.a n = A071698 (n + 1)

end A071698

/-! ## A071698.P10421872461580170915

`∩[A001359(n+1), A008846(n+1)-2]`
-/

namespace A071698.P10421872461580170915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P10421872461580170915

namespace A071698

/-- `∩[A001359(n+1), A008846(n+1)-2]` -/
def P10421872461580170915.Spec : Prop :=
  ∀ n, (P10421872461580170915.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P13012911702072859423

`∩[A001838(n+1), A141187(n+1)]`
-/

namespace A071698.P13012911702072859423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P13012911702072859423

namespace A071698

/-- `∩[A001838(n+1), A141187(n+1)]` -/
def P13012911702072859423.Spec : Prop :=
  ∀ n, (P13012911702072859423.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P263704895092825384

`∩[A073534(n+1), A141187(n+1)]`
-/

namespace A071698.P263704895092825384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P263704895092825384

namespace A071698

/-- `∩[A073534(n+1), A141187(n+1)]` -/
def P263704895092825384.Spec : Prop :=
  ∀ n, (P263704895092825384.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P2065852372960259822

`∩[A141830(n+1), A141187(n+1)]`
-/

namespace A071698.P2065852372960259822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P2065852372960259822

namespace A071698

/-- `∩[A141830(n+1), A141187(n+1)]` -/
def P2065852372960259822.Spec : Prop :=
  ∀ n, (P2065852372960259822.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P2067417377113167714

`∩[A265760(n+1), A141187(n+1)]`
-/

namespace A071698.P2067417377113167714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P2067417377113167714

namespace A071698

/-- `∩[A265760(n+1), A141187(n+1)]` -/
def P2067417377113167714.Spec : Prop :=
  ∀ n, (P2067417377113167714.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P1464261566404240683

`∩[A001097(n+1), A141123(n+1)]`
-/

namespace A071698.P1464261566404240683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P1464261566404240683

namespace A071698

/-- `∩[A001097(n+1), A141123(n+1)]` -/
def P1464261566404240683.Spec : Prop :=
  ∀ n, (P1464261566404240683.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P17426934545542709589

`∩[A001838(n+1), A141123(n+1)]`
-/

namespace A071698.P17426934545542709589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P17426934545542709589

namespace A071698

/-- `∩[A001838(n+1), A141123(n+1)]` -/
def P17426934545542709589.Spec : Prop :=
  ∀ n, (P17426934545542709589.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P1571505261502823873

`∩[A001359(n+1), A040101(n+1)]`
-/

namespace A071698.P1571505261502823873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P1571505261502823873

namespace A071698

/-- `∩[A001359(n+1), A040101(n+1)]` -/
def P1571505261502823873.Spec : Prop :=
  ∀ n, (P1571505261502823873.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P6759223481892910625

`∩[A001838(n+1), A040101(n+1)]`
-/

namespace A071698.P6759223481892910625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P6759223481892910625

namespace A071698

/-- `∩[A001838(n+1), A040101(n+1)]` -/
def P6759223481892910625.Spec : Prop :=
  ∀ n, (P6759223481892910625.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P1584315981239088068

`∩[A040101(n+1), A054799(n+1)]`
-/

namespace A071698.P1584315981239088068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P1584315981239088068

namespace A071698

/-- `∩[A040101(n+1), A054799(n+1)]` -/
def P1584315981239088068.Spec : Prop :=
  ∀ n, (P1584315981239088068.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P15764341488008904035

`∩[A040101(n+1), A061368(n+1)]`
-/

namespace A071698.P15764341488008904035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P15764341488008904035

namespace A071698

/-- `∩[A040101(n+1), A061368(n+1)]` -/
def P15764341488008904035.Spec : Prop :=
  ∀ n, (P15764341488008904035.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P9776561138544523778

`∩[A040101(n+1), A063693(n+1)]`
-/

namespace A071698.P9776561138544523778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P9776561138544523778

namespace A071698

/-- `∩[A040101(n+1), A063693(n+1)]` -/
def P9776561138544523778.Spec : Prop :=
  ∀ n, (P9776561138544523778.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P12497734951528089511

`∩[A040101(n+1), A063700(n+1)]`
-/

namespace A071698.P12497734951528089511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071698.P12497734951528089511

namespace A071698

/-- `∩[A040101(n+1), A063700(n+1)]` -/
def P12497734951528089511.Spec : Prop :=
  ∀ n, (P12497734951528089511.a n : ℤ) = A071698 (n + 1)

end A071698

/-! ## A071698.P18321921344192671041

`p?[A040124(n+1)+2]-2`
-/

namespace A071698.P18321921344192671041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A071698.P18321921344192671041

namespace A071698

/-- `p?[A040124(n+1)+2]-2` -/
def P18321921344192671041.Spec : Prop :=
  ∀ n, P18321921344192671041.a n = A071698 (n + 1)

end A071698

/-!
# A071699: Greater members of twin prime pairs of form (4*k+3, 4*k+5), k >= 0.

The programs for A071699, the canonical program `A071699.P16239091930221922648` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071699 has offset 1).

The definition of A071699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5037 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071699.P17666489211789489701

`2*A241557(n+2)+1`
-/

namespace A071699.P17666489211789489701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241557 (n + 2) + 1

end

end A071699.P17666489211789489701

namespace A071699

/-- `2*A241557(n+2)+1` -/
def P17666489211789489701.Spec : Prop :=
  ∀ n, P17666489211789489701.a n = A071699 (n + 1)

end A071699

/-! ## A071699.P1278215643966182825

`A071698(n+1)+2`
-/

namespace A071699.P1278215643966182825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1) + 2

end

end A071699.P1278215643966182825

namespace A071699

/-- `A071698(n+1)+2` -/
def P1278215643966182825.Spec : Prop :=
  ∀ n, P1278215643966182825.a n = A071699 (n + 1)

end A071699

/-! ## A071699.P18402776160611250816

`4*A045753(n+1)+1`
-/

namespace A071699.P18402776160611250816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045753 (n + 1) + 1

end

end A071699.P18402776160611250816

namespace A071699

/-- `4*A045753(n+1)+1` -/
def P18402776160611250816.Spec : Prop :=
  ∀ n, P18402776160611250816.a n = A071699 (n + 1)

end A071699

/-! ## A071699.P2543412591485261679

`floor(sqrt(A071700(n+1)))+2`
-/

namespace A071699.P2543412591485261679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071700 (n + 1)) + 2

end

end A071699.P2543412591485261679

namespace A071699

/-- `floor(sqrt(A071700(n+1)))+2` -/
def P2543412591485261679.Spec : Prop :=
  ∀ n, P2543412591485261679.a n = A071699 (n + 1)

end A071699

/-! ## A071699.P16239091930221922648

`∩[A006512(n+1), A123079(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A071699

/-- `∩[A006512(n+1), A123079(n+1)]` -/
def P16239091930221922648.Spec : Prop :=
  ∀ n, (P16239091930221922648.a n : ℤ) = A071699 (n + 1)

theorem P16239091930221922648.correct : P16239091930221922648.Spec := by
  intro n
  simp only [A071699, Nat.add_sub_cancel]

end A071699

/-! ## A071699.P5323977072072139780

`∩[A067829(n+1), A123079(n+1)]`
-/

namespace A071699.P5323977072072139780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P5323977072072139780

namespace A071699

/-- `∩[A067829(n+1), A123079(n+1)]` -/
def P5323977072072139780.Spec : Prop :=
  ∀ n, (P5323977072072139780.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P13033952987015440015

`∩[A123079(n+1), A206023(n+1)]`
-/

namespace A071699.P13033952987015440015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P13033952987015440015

namespace A071699

/-- `∩[A123079(n+1), A206023(n+1)]` -/
def P13033952987015440015.Spec : Prop :=
  ∀ n, (P13033952987015440015.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P14647198985393584418

`∩[A123079(n+1), A320391(n+1)]`
-/

namespace A071699.P14647198985393584418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P14647198985393584418

namespace A071699

/-- `∩[A123079(n+1), A320391(n+1)]` -/
def P14647198985393584418.Spec : Prop :=
  ∀ n, (P14647198985393584418.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P4971865738297038968

`∩[A123079(n+1), A391049(n+1)]`
-/

namespace A071699.P4971865738297038968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P4971865738297038968

namespace A071699

/-- `∩[A123079(n+1), A391049(n+1)]` -/
def P4971865738297038968.Spec : Prop :=
  ∀ n, (P4971865738297038968.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P2124779761317930608

`∩[A001359(n+1)+2, A008846(n+1)]`
-/

namespace A071699.P2124779761317930608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P2124779761317930608

namespace A071699

/-- `∩[A001359(n+1)+2, A008846(n+1)]` -/
def P2124779761317930608.Spec : Prop :=
  ∀ n, (P2124779761317930608.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P7555781284772375538

`∩[A141123(n+1), A274212(n+1)]+2`
-/

namespace A071699.P7555781284772375538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P7555781284772375538

namespace A071699

/-- `∩[A141123(n+1), A274212(n+1)]+2` -/
def P7555781284772375538.Spec : Prop :=
  ∀ n, (P7555781284772375538.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P7769807168724577340

`∩[A141187(n+1), A274212(n+1)]+2`
-/

namespace A071699.P7769807168724577340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P7769807168724577340

namespace A071699

/-- `∩[A141187(n+1), A274212(n+1)]+2` -/
def P7769807168724577340.Spec : Prop :=
  ∀ n, (P7769807168724577340.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P7796586738996840633

`∩[A123079(n+1), A274242(n+1)]`
-/

namespace A071699.P7796586738996840633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P7796586738996840633

namespace A071699

/-- `∩[A123079(n+1), A274242(n+1)]` -/
def P7796586738996840633.Spec : Prop :=
  ∀ n, (P7796586738996840633.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P8008356944856806202

`p?[A040124(n+1)+2]`
-/

namespace A071699.P8008356944856806202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071699.P8008356944856806202

namespace A071699

/-- `p?[A040124(n+1)+2]` -/
def P8008356944856806202.Spec : Prop :=
  ∀ n, P8008356944856806202.a n = A071699 (n + 1)

end A071699

/-! ## A071699.P11934769933966818468

`∩[A001359(n+1), A040124(n+1)]+2`
-/

namespace A071699.P11934769933966818468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P11934769933966818468

namespace A071699

/-- `∩[A001359(n+1), A040124(n+1)]+2` -/
def P11934769933966818468.Spec : Prop :=
  ∀ n, (P11934769933966818468.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P15732371806687680262

`∩[A001838(n+1), A040124(n+1)]+2`
-/

namespace A071699.P15732371806687680262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P15732371806687680262

namespace A071699

/-- `∩[A001838(n+1), A040124(n+1)]+2` -/
def P15732371806687680262.Spec : Prop :=
  ∀ n, (P15732371806687680262.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P18059473936466515608

`∩[A040124(n+1), A054799(n+1)]+2`
-/

namespace A071699.P18059473936466515608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P18059473936466515608

namespace A071699

/-- `∩[A040124(n+1), A054799(n+1)]+2` -/
def P18059473936466515608.Spec : Prop :=
  ∀ n, (P18059473936466515608.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P3360159454533170114

`∩[A040124(n+1), A061368(n+1)]+2`
-/

namespace A071699.P3360159454533170114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P3360159454533170114

namespace A071699

/-- `∩[A040124(n+1), A061368(n+1)]+2` -/
def P3360159454533170114.Spec : Prop :=
  ∀ n, (P3360159454533170114.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P13036715092122135801

`∩[A123079(n+1), A139690(n+1)]`
-/

namespace A071699.P13036715092122135801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P13036715092122135801

namespace A071699

/-- `∩[A123079(n+1), A139690(n+1)]` -/
def P13036715092122135801.Spec : Prop :=
  ∀ n, (P13036715092122135801.a n : ℤ) = A071699 (n + 1)

end A071699

/-! ## A071699.P15513967396248242684

`∩[A001359(n+1), A038874(n+1)]+2`
-/

namespace A071699.P15513967396248242684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A071699.P15513967396248242684

namespace A071699

/-- `∩[A001359(n+1), A038874(n+1)]+2` -/
def P15513967396248242684.Spec : Prop :=
  ∀ n, (P15513967396248242684.a n : ℤ) = A071699 (n + 1)

end A071699

