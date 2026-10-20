import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A066500: Numbers k such that 5 divides phi(k).

The programs for A066500, the canonical program `A066500.P11127892168974382539` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066500 has offset 1).

The definition of A066500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066500.P11127892168974382539

`eq[0, A000010(n+1)%5]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066500

/-- `eq[0, A000010(n+1)%5]+1` -/
def P11127892168974382539.Spec : Prop :=
  ∀ n, (P11127892168974382539.a n : ℤ) = A066500 (n + 1)

theorem P11127892168974382539.correct : P11127892168974382539.Spec := by
  intro n
  simp only [A066500, Nat.add_sub_cancel]

end A066500

/-! ## A066500.P13589985984405635444

`lt[1, A160094(A000010(n+1))]+1`
-/

namespace A066500.P13589985984405635444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066500.P13589985984405635444

namespace A066500

/-- `lt[1, A160094(A000010(n+1))]+1` -/
def P13589985984405635444.Spec : Prop :=
  ∀ n, (P13589985984405635444.a n : ℤ) = A066500 (n + 1)

end A066500

/-! ## A066500.P17988287454959769273

`lt[1, A319099(n+1)]+1`
-/

namespace A066500.P17988287454959769273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066500.P17988287454959769273

namespace A066500

/-- `lt[1, A319099(n+1)]+1` -/
def P17988287454959769273.Spec : Prop :=
  ∀ n, (P17988287454959769273.a n : ℤ) = A066500 (n + 1)

end A066500

/-! ## A066500.P12322112093672977149

`eq[10, gcd(10, A000010(A008574(n)))]`
-/

namespace A066500.P12322112093672977149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A000010 (A008574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066500.P12322112093672977149

namespace A066500

/-- `eq[10, gcd(10, A000010(A008574(n)))]` -/
def P12322112093672977149.Spec : Prop :=
  ∀ n, (P12322112093672977149.a n : ℤ) = A066500 (n + 1)

end A066500

/-! ## A066500.P3819019431044209399

`eq[1, A307427(A319099(n+1)²+1)]+1`
-/

namespace A066500.P3819019431044209399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (A319099 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066500.P3819019431044209399

namespace A066500

/-- `eq[1, A307427(A319099(n+1)²+1)]+1` -/
def P3819019431044209399.Spec : Prop :=
  ∀ n, (P3819019431044209399.a n : ℤ) = A066500 (n + 1)

end A066500

/-! ## A066500.P15729098678266836771

`A277915(∑[n+3]+1)`
-/

namespace A066500.P15729098678266836771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066500.P15729098678266836771

namespace A066500

/-- `A277915(∑[n+3]+1)` -/
def P15729098678266836771.Spec : Prop :=
  ∀ n, P15729098678266836771.a n = A066500 (n + 1)

end A066500

/-! ## A066500.P10468494266656081717

`eq[A225530(n), A277618(A225530(n))]`
-/

namespace A066500.P10468494266656081717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277618 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066500.P10468494266656081717

namespace A066500

/-- `eq[A225530(n), A277618(A225530(n))]` -/
def P10468494266656081717.Spec : Prop :=
  ∀ n, (P10468494266656081717.a n : ℤ) = A066500 (n + 1)

end A066500

/-!
# A066501: Numbers k such that x^6 == 1 (mod(k)) has no solution 1 < x < k-1.

The programs for A066501, the canonical program `A066501.P10835887515375313697` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066501 has offset 1).

The definition of A066501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066501.P10835887515375313697

`∩[A033948(n+1), A088232(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A066501

/-- `∩[A033948(n+1), A088232(n+1)]` -/
def P10835887515375313697.Spec : Prop :=
  ∀ n, (P10835887515375313697.a n : ℤ) = A066501 (n + 1)

theorem P10835887515375313697.correct : P10835887515375313697.Spec := by
  intro n
  simp only [A066501, Nat.add_sub_cancel]

end A066501

/-! ## A066501.P7169797581903447429

`lt[A319100(n+1), 3]+1`
-/

namespace A066501.P7169797581903447429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066501.P7169797581903447429

namespace A066501

/-- `lt[A319100(n+1), 3]+1` -/
def P7169797581903447429.Spec : Prop :=
  ∀ n, (P7169797581903447429.a n : ℤ) = A066501 (n + 1)

end A066501

/-! ## A066501.P9128532594863789537

`record[C(A070671(n+1)+1, n)]`
-/

namespace A066501.P9128532594863789537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070671 (n + 1) + 1).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P9128532594863789537

namespace A066501

/-- `record[C(A070671(n+1)+1, n)]` -/
def P9128532594863789537.Spec : Prop :=
  ∀ n, (P9128532594863789537.a n : ℤ) = A066501 (n + 1)

end A066501

/-! ## A066501.P6716169558616178294

`record[A141258(A088232(n+1))]`
-/

namespace A066501.P6716169558616178294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (A088232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P6716169558616178294

namespace A066501

/-- `record[A141258(A088232(n+1))]` -/
def P6716169558616178294.Spec : Prop :=
  ∀ n, P6716169558616178294.a n = A066501 (n + 1)

end A066501

/-! ## A066501.P5544836026457551955

`record[A091733(A033948(n+1))-1]`
-/

namespace A066501.P5544836026457551955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (A033948 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P5544836026457551955

namespace A066501

/-- `record[A091733(A033948(n+1))-1]` -/
def P5544836026457551955.Spec : Prop :=
  ∀ n, P5544836026457551955.a n = A066501 (n + 1)

end A066501

/-! ## A066501.P12309867592059766298

`record[A141258(A091733(n+1)-1)]`
-/

namespace A066501.P12309867592059766298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (A091733 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P12309867592059766298

namespace A066501

/-- `record[A141258(A091733(n+1)-1)]` -/
def P12309867592059766298.Spec : Prop :=
  ∀ n, P12309867592059766298.a n = A066501 (n + 1)

end A066501

/-! ## A066501.P13561135401747354042

`record[A070671(n+1)+A057427(n)]`
-/

namespace A066501.P13561135401747354042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070671 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P13561135401747354042

namespace A066501

/-- `record[A070671(n+1)+A057427(n)]` -/
def P13561135401747354042.Spec : Prop :=
  ∀ n, P13561135401747354042.a n = A066501 (n + 1)

end A066501

/-! ## A066501.P12502050756033093749

`record[A070671(n+1)-A057428(n)]`
-/

namespace A066501.P12502050756033093749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070671 (n + 1) - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P12502050756033093749

namespace A066501

/-- `record[A070671(n+1)-A057428(n)]` -/
def P12502050756033093749.Spec : Prop :=
  ∀ n, P12502050756033093749.a n = A066501 (n + 1)

end A066501

/-! ## A066501.P4932985395015580276

`record[A141258(n+1)/A060839(n+1)]`
-/

namespace A066501.P4932985395015580276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141258 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066501.P4932985395015580276

namespace A066501

/-- `record[A141258(n+1)/A060839(n+1)]` -/
def P4932985395015580276.Spec : Prop :=
  ∀ n, P4932985395015580276.a n = (A066501 (n + 1) : ℚ)

end A066501

/-! ## A066501.P11058555367573139487

`eq[A034380(n+1)², gcd(3, A000010(n+1))]+1`
-/

namespace A066501.P11058555367573139487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A066501.P11058555367573139487

namespace A066501

/-- `eq[A034380(n+1)², gcd(3, A000010(n+1))]+1` -/
def P11058555367573139487.Spec : Prop :=
  ∀ n, (P11058555367573139487.a n : ℤ) = A066501 (n + 1)

end A066501

/-!
# A066502: Numbers k such that 7 divides phi(k).

The programs for A066502, the canonical program `A066502.P8139223299223943289` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066502 has offset 1).

The definition of A066502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066502.P8139223299223943289

`eq[0, A000010(n+2)%7]+2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066502

/-- `eq[0, A000010(n+2)%7]+2` -/
def P8139223299223943289.Spec : Prop :=
  ∀ n, (P8139223299223943289.a n : ℤ) = A066502 (n + 1)

theorem P8139223299223943289.correct : P8139223299223943289.Spec := by
  intro n
  simp only [A066502, Nat.add_sub_cancel]

end A066502

/-! ## A066502.P9566157187444120383

`lt[1, gcd(7, A000010(n+1))]+1`
-/

namespace A066502.P9566157187444120383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066502.P9566157187444120383

namespace A066502

/-- `lt[1, gcd(7, A000010(n+1))]+1` -/
def P9566157187444120383.Spec : Prop :=
  ∀ n, (P9566157187444120383.a n : ℤ) = A066502 (n + 1)

end A066502

/-! ## A066502.P4822431682082690945

`lt[1, A319101(n+1)]+1`
-/

namespace A066502.P4822431682082690945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066502.P4822431682082690945

namespace A066502

/-- `lt[1, A319101(n+1)]+1` -/
def P4822431682082690945.Spec : Prop :=
  ∀ n, (P4822431682082690945.a n : ℤ) = A066502 (n + 1)

end A066502

/-! ## A066502.P16655410275482604323

`A020725(lt[1, A319101(n+1)])`
-/

namespace A066502.P16655410275482604323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A066502.P16655410275482604323

namespace A066502

/-- `A020725(lt[1, A319101(n+1)])` -/
def P16655410275482604323.Spec : Prop :=
  ∀ n, P16655410275482604323.a n = A066502 (n + 1)

end A066502

/-! ## A066502.P15908421198335400891

`A326178(lt[1, A319101(n+1)])`
-/

namespace A066502.P15908421198335400891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A066502.P15908421198335400891

namespace A066502

/-- `A326178(lt[1, A319101(n+1)])` -/
def P15908421198335400891.Spec : Prop :=
  ∀ n, P15908421198335400891.a n = A066502 (n + 1)

end A066502

/-! ## A066502.P7619837179170988636

`A277915(∑[n+4]+3)`
-/

namespace A066502.P7619837179170988636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A066502.P7619837179170988636

namespace A066502

/-- `A277915(∑[n+4]+3)` -/
def P7619837179170988636.Spec : Prop :=
  ∀ n, P7619837179170988636.a n = A066502 (n + 1)

end A066502

/-! ## A066502.P977777942291935860

`or(char[1], A277915(A055998(n+2)))`
-/

namespace A066502.P977777942291935860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A277915 (A055998 (n + 2)).toNat)

end

end A066502.P977777942291935860

namespace A066502

/-- `or(char[1], A277915(A055998(n+2)))` -/
def P977777942291935860.Spec : Prop :=
  ∀ n, P977777942291935860.a n = A066502 (n + 1)

end A066502

/-! ## A066502.P9984700261067918557

`A277915(A055998(n+2))%A020301(n+1)`
-/

namespace A066502.P9984700261067918557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277915 (A055998 (n + 2)).toNat) (A020301 (n + 1))

end

end A066502.P9984700261067918557

namespace A066502

/-- `A277915(A055998(n+2))%A020301(n+1)` -/
def P9984700261067918557.Spec : Prop :=
  ∀ n, P9984700261067918557.a n = A066502 (n + 1)

end A066502

/-! ## A066502.P5433830547960335920

`A014963(12*(n+1))*A277915(A055998(n+2))`
-/

namespace A066502.P5433830547960335920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A277915 (A055998 (n + 2)).toNat

end

end A066502.P5433830547960335920

namespace A066502

/-- `A014963(12*(n+1))*A277915(A055998(n+2))` -/
def P5433830547960335920.Spec : Prop :=
  ∀ n, P5433830547960335920.a n = A066502 (n + 1)

end A066502

/-!
# A066503: a(n) = n - squarefree kernel of n, A007947.

The programs for A066503, the canonical program `A066503.P17588364347287804265` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066503 has offset 1).

The definition of A066503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066503.P17588364347287804265

`n+1-A007947(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066503

/-- `n+1-A007947(n+1)` -/
def P17588364347287804265.Spec : Prop :=
  ∀ n, P17588364347287804265.a n = A066503 (n + 1)

theorem P17588364347287804265.correct : P17588364347287804265.Spec := by
  intro n
  simp only [A066503, Nat.add_sub_cancel]

end A066503

/-! ## A066503.P14609104631087068116

`1-∏{p}[n+1, #]+n`
-/

namespace A066503.P14609104631087068116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (n : ℤ)

end

end A066503.P14609104631087068116

namespace A066503

/-- `1-∏{p}[n+1, #]+n` -/
def P14609104631087068116.Spec : Prop :=
  ∀ n, P14609104631087068116.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P9578029036446561590

`(n*∏{p}[n+1, #])%(n+1)`
-/

namespace A066503.P9578029036446561590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n), p) % (n + 1)

end

end A066503.P9578029036446561590

namespace A066503

/-- `(n*∏{p}[n+1, #])%(n+1)` -/
def P9578029036446561590.Spec : Prop :=
  ∀ n, (P9578029036446561590.a n : ℤ) = A066503 (n + 1)

end A066503

/-! ## A066503.P10473277147392748200

`lcm(n, ∏{p}[n+1, #])%(n+1)`
-/

namespace A066503.P10473277147392748200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∏ p ∈ Nat.primeFactors (f1 n), p) % (n + 1)

end

end A066503.P10473277147392748200

namespace A066503

/-- `lcm(n, ∏{p}[n+1, #])%(n+1)` -/
def P10473277147392748200.Spec : Prop :=
  ∀ n, (P10473277147392748200.a n : ℤ) = A066503 (n + 1)

end A066503

/-! ## A066503.P1524610159717732667

`Δ[n²]%(∏{p}[n+1, #]+n)`
-/

namespace A066503.P1524610159717732667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((∏ p ∈ Nat.primeFactors (f2 n), p + n : ℕ) : ℤ)

end

end A066503.P1524610159717732667

namespace A066503

/-- `Δ[n²]%(∏{p}[n+1, #]+n)` -/
def P1524610159717732667.Spec : Prop :=
  ∀ n, P1524610159717732667.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P7602977190447215477

`xor(-1, ∏{p}[n+1, #])+n+2`
-/

namespace A066503.P7602977190447215477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (n + 2 : ℤ)

end

end A066503.P7602977190447215477

namespace A066503

/-- `xor(-1, ∏{p}[n+1, #])+n+2` -/
def P7602977190447215477.Spec : Prop :=
  ∀ n, P7602977190447215477.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P6778441606522386428

`floor(n/∏{p}[n+1, #])*∏{p}[n+1, #]`
-/

namespace A066503.P6778441606522386428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A066503.P6778441606522386428

namespace A066503

/-- `floor(n/∏{p}[n+1, #])*∏{p}[n+1, #]` -/
def P6778441606522386428.Spec : Prop :=
  ∀ n, P6778441606522386428.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P8158348892540966962

`n-A075423(n+1)`
-/

namespace A066503.P8158348892540966962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A075423 (n + 1)

end

end A066503.P8158348892540966962

namespace A066503

/-- `n-A075423(n+1)` -/
def P8158348892540966962.Spec : Prop :=
  ∀ n, P8158348892540966962.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P16030624896576351610

`2-A076618(n+1)+n`
-/

namespace A066503.P16030624896576351610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A076618 (n + 1) + (n : ℤ)

end

end A066503.P16030624896576351610

namespace A066503

/-- `2-A076618(n+1)+n` -/
def P16030624896576351610.Spec : Prop :=
  ∀ n, P16030624896576351610.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P14696208739576400959

`n-A326058(∏{p}[n+1, #])`
-/

namespace A066503.P14696208739576400959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326058 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066503.P14696208739576400959

namespace A066503

/-- `n-A326058(∏{p}[n+1, #])` -/
def P14696208739576400959.Spec : Prop :=
  ∀ n, P14696208739576400959.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P3911244915341335371

`1-abs(A062953(n+1))+n`
-/

namespace A066503.P3911244915341335371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A062953 (n + 1)| + (n : ℤ)

end

end A066503.P3911244915341335371

namespace A066503

/-- `1-abs(A062953(n+1))+n` -/
def P3911244915341335371.Spec : Prop :=
  ∀ n, P3911244915341335371.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P1422678440296045623

`1-sqrt(A078615(n+1))+n`
-/

namespace A066503.P1422678440296045623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A078615 (n + 1) : ℝ) + (n : ℝ)

end

end A066503.P1422678440296045623

namespace A066503

/-- `1-sqrt(A078615(n+1))+n` -/
def P1422678440296045623.Spec : Prop :=
  ∀ n, P1422678440296045623.a n = (A066503 (n + 1) : ℝ)

end A066503

/-! ## A066503.P14391724834175396092

`n-floor(n/A003557(n+1))`
-/

namespace A066503.P14391724834175396092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A003557 (n + 1) : ℚ)⌋

end

end A066503.P14391724834175396092

namespace A066503

/-- `n-floor(n/A003557(n+1))` -/
def P14391724834175396092.Spec : Prop :=
  ∀ n, P14391724834175396092.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P1332867013479525990

`2*(n+1)-A073353(n+1)`
-/

namespace A066503.P1332867013479525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A073353 (n + 1)

end

end A066503.P1332867013479525990

namespace A066503

/-- `2*(n+1)-A073353(n+1)` -/
def P1332867013479525990.Spec : Prop :=
  ∀ n, P1332867013479525990.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P12639422576373670669

`n+1-A064549(n+1)/(n+1)`
-/

namespace A066503.P12639422576373670669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A064549 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066503.P12639422576373670669

namespace A066503

/-- `n+1-A064549(n+1)/(n+1)` -/
def P12639422576373670669.Spec : Prop :=
  ∀ n, P12639422576373670669.a n = (A066503 (n + 1) : ℚ)

end A066503

/-! ## A066503.P7628148187297959477

`n-A010848(A007947(n+1))`
-/

namespace A066503.P7628148187297959477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010848 (A007947 (n + 1)).toNat

end

end A066503.P7628148187297959477

namespace A066503

/-- `n-A010848(A007947(n+1))` -/
def P7628148187297959477.Spec : Prop :=
  ∀ n, P7628148187297959477.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P6199307956768682435

`n-A023444(A076618(n+1))`
-/

namespace A066503.P6199307956768682435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A076618 (n + 1)).toNat

end

end A066503.P6199307956768682435

namespace A066503

/-- `n-A023444(A076618(n+1))` -/
def P6199307956768682435.Spec : Prop :=
  ∀ n, P6199307956768682435.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P12846355140477979563

`A103517(n)-A075656(n+1)`
-/

namespace A066503.P12846355140477979563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A075656 (n + 1)

end

end A066503.P12846355140477979563

namespace A066503

/-- `A103517(n)-A075656(n+1)` -/
def P12846355140477979563.Spec : Prop :=
  ∀ n, P12846355140477979563.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P743902450006057674

`A326143(n+1)+A033879(n+1)`
-/

namespace A066503.P743902450006057674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326143 (n + 1) + A033879 (n + 1)

end

end A066503.P743902450006057674

namespace A066503

/-- `A326143(n+1)+A033879(n+1)` -/
def P743902450006057674.Spec : Prop :=
  ∀ n, P743902450006057674.a n = A066503 (n + 1)

end A066503

/-! ## A066503.P13780093090872505323

`A389461(n+1)+A235796(n+1)`
-/

namespace A066503.P13780093090872505323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (n + 1) + A235796 (n + 1)

end

end A066503.P13780093090872505323

namespace A066503

/-- `A389461(n+1)+A235796(n+1)` -/
def P13780093090872505323.Spec : Prop :=
  ∀ n, P13780093090872505323.a n = A066503 (n + 1)

end A066503

/-!
# A066504: Sum of n/p^k over all maximal prime-power divisors of n.

The programs for A066504, there is no canonical definition to state claims against.
-/

/-! ## A066504.P10050020050773878971

`A028236(n+1)%(n+1)²`
-/

namespace A066504.P10050020050773878971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028236 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A066504.P10050020050773878971

/-! ## A066504.P1083785755655729488

`A028236(n+1)-A000007(n)`
-/

namespace A066504.P1083785755655729488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1) - A000007 n

end

end A066504.P1083785755655729488

/-! ## A066504.P10831974898724869181

`A028236(n+1)*A057427(n)`
-/

namespace A066504.P10831974898724869181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1) * A057427 n

end

end A066504.P10831974898724869181

/-! ## A066504.P630053963290754550

`and(A028236(n+1), A057428(n))`
-/

namespace A066504.P630053963290754550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028236 (n + 1)) (A057428 n)

end

end A066504.P630053963290754550

/-! ## A066504.P7351644465439556506

`and(A028236(n+1), A134824(n))`
-/

namespace A066504.P7351644465439556506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028236 (n + 1)) (A134824 n)

end

end A066504.P7351644465439556506

/-! ## A066504.P887460016767230414

`and(1, A003817(n))*A028236(n+1)`
-/

namespace A066504.P887460016767230414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003817 n) * A028236 (n + 1)

end

end A066504.P887460016767230414

/-! ## A066504.P17804971700984646625

`A028236(n+1)-A010051(2*(n+1))`
-/

namespace A066504.P17804971700984646625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1) - A010051 (2 * (n + 1))

end

end A066504.P17804971700984646625

/-! ## A066504.P5139517131768034357

`A028235(A028233(n+1))*A028236(n+1)`
-/

namespace A066504.P5139517131768034357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A028233 (n + 1)).toNat * A028236 (n + 1)

end

end A066504.P5139517131768034357

/-! ## A066504.P2645464686145927393

`A001221(A141809(n+1))*A028236(n+1)`
-/

namespace A066504.P2645464686145927393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A141809 (n + 1)).toNat * A028236 (n + 1)

end

end A066504.P2645464686145927393

/-! ## A066504.P15439734607398937700

`A000007(A000007(n)*A028236(n+1))*A028236(n+1)`
-/

namespace A066504.P15439734607398937700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A028236 (n + 1)).toNat * A028236 (n + 1)

end

end A066504.P15439734607398937700

/-! ## A066504.P11031154023510054058

`A001221(A000961(n+1))*A028236(n+1)`
-/

namespace A066504.P11031154023510054058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A028236 (n + 1)

end

end A066504.P11031154023510054058

/-! ## A066504.P7248068746646206187

`A028236(n+1)*A052409(record[∏{p}[n, #]])`
-/

namespace A066504.P7248068746646206187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1) * A052409 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A066504.P7248068746646206187

/-! ## A066504.P9432272114234416239

`C(A028236(n+1), A027642(2*n+1))`
-/

namespace A066504.P9432272114234416239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028236 (n + 1)).toNat (A027642 (2 * n + 1)).toNat

end

end A066504.P9432272114234416239

/-! ## A066504.P5520785551194823611

`A001221(A197226(n+1))*A028236(n+1)`
-/

namespace A066504.P5520785551194823611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A197226 (n + 1)).toNat * A028236 (n + 1)

end

end A066504.P5520785551194823611

/-! ## A066504.P1448573668401485085

`A028236(n+1)-A008683(A001597(n+1))`
-/

namespace A066504.P1448573668401485085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1) - A008683 (A001597 (n + 1)).toNat

end

end A066504.P1448573668401485085

/-! ## A066504.P13863967075724864662

`and(A028236(n+1), A078485(n))`
-/

namespace A066504.P13863967075724864662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028236 (n + 1)) (A078485 n)

end

end A066504.P13863967075724864662

/-! ## A066504.P4612575645740820666

`and(A028236(n+1), A116362(n))`
-/

namespace A066504.P4612575645740820666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028236 (n + 1)) (A116362 n)

end

end A066504.P4612575645740820666

/-! ## A066504.P5937097272217657419

`and(A028236(n+1), A088041(n+1))`
-/

namespace A066504.P5937097272217657419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028236 (n + 1)) (A088041 (n + 1))

end

end A066504.P5937097272217657419

/-! ## A066504.P15503188242749172882

`and(A000225(n), A028236(n+1))`
-/

namespace A066504.P15503188242749172882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A028236 (n + 1))

end

end A066504.P15503188242749172882

/-! ## A066504.P4773299077011621497

`and(A028236(n+1), A140252(n))`
-/

namespace A066504.P4773299077011621497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028236 (n + 1)) (A140252 n)

end

end A066504.P4773299077011621497

/-!
# A066507: Numbers k such that there is a solution to x^2 == 2^k (mod k).

The programs for A066507, the canonical program `A066507.P2778967298893371971` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066507 has offset 1).

The definition of A066507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066507.P2778967298893371971

`comp[A329095(n+1)-1]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A066507

/-- `comp[A329095(n+1)-1]+1` -/
def P2778967298893371971.Spec : Prop :=
  ∀ n, (P2778967298893371971.a n : ℤ) = A066507 (n + 1)

theorem P2778967298893371971.correct : P2778967298893371971.Spec := by
  intro n
  simp only [A066507, Nat.add_sub_cancel]

end A066507

/-! ## A066507.P4264497120557929464

`∪[2*(n+1), A057126(n+1)]`
-/

namespace A066507.P4264497120557929464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066507.P4264497120557929464

namespace A066507

/-- `∪[2*(n+1), A057126(n+1)]` -/
def P4264497120557929464.Spec : Prop :=
  ∀ n, (P4264497120557929464.a n : ℤ) = A066507 (n + 1)

end A066507

/-! ## A066507.P13480124228681432163

`∪[2*(n+1), A058529(n+1)]`
-/

namespace A066507.P13480124228681432163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066507.P13480124228681432163

namespace A066507

/-- `∪[2*(n+1), A058529(n+1)]` -/
def P13480124228681432163.Spec : Prop :=
  ∀ n, (P13480124228681432163.a n : ℤ) = A066507 (n + 1)

end A066507

/-! ## A066507.P11696471471415923097

`∪[A057126(n+2), floor(2/acot(n))]`
-/

namespace A066507.P11696471471415923097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066507.P11696471471415923097

namespace A066507

/-- `∪[A057126(n+2), floor(2/acot(n))]` -/
def P11696471471415923097.Spec : Prop :=
  ∀ n, (P11696471471415923097.a n : ℤ) = A066507 (n + 1)

end A066507

/-! ## A066507.P10343697213446711317

`∪[A057126(n+1), A004277(n)]`
-/

namespace A066507.P10343697213446711317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066507.P10343697213446711317

namespace A066507

/-- `∪[A057126(n+1), A004277(n)]` -/
def P10343697213446711317.Spec : Prop :=
  ∀ n, (P10343697213446711317.a n : ℤ) = A066507 (n + 1)

end A066507

/-! ## A066507.P11099597883114209111

`∪[A058529(n+1), A004277(n)]`
-/

namespace A066507.P11099597883114209111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066507.P11099597883114209111

namespace A066507

/-- `∪[A058529(n+1), A004277(n)]` -/
def P11099597883114209111.Spec : Prop :=
  ∀ n, (P11099597883114209111.a n : ℤ) = A066507 (n + 1)

end A066507

/-! ## A066507.P13429718279563240342

`∪[A057126(n+1), A103517(n)]`
-/

namespace A066507.P13429718279563240342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066507.P13429718279563240342

namespace A066507

/-- `∪[A057126(n+1), A103517(n)]` -/
def P13429718279563240342.Spec : Prop :=
  ∀ n, (P13429718279563240342.a n : ℤ) = A066507 (n + 1)

end A066507

/-!
# A066508: a(n) = floor(Sum_{i=1..n} (1/i)^(1/i)).

The programs for A066508, the canonical program `A066508.P12566484151815834637` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066508 has offset 1).

The definition of A066508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066508.P12566484151815834637

`floor(∑[root(n+1, -(n+1))])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066508

/-- `floor(∑[root(n+1, -(n+1))])` -/
def P12566484151815834637.Spec : Prop :=
  ∀ n, P12566484151815834637.a n = A066508 (n + 1)

theorem P12566484151815834637.correct : P12566484151815834637.Spec := by
  intro n
  simp only [A066508, Nat.add_sub_cancel]

end A066508

/-! ## A066508.P15656736593514886291

`∑[A014577(A007694(A060000(n+1)))]`
-/

namespace A066508.P15656736593514886291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A007694 (A060000 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066508.P15656736593514886291

namespace A066508

/-- `∑[A014577(A007694(A060000(n+1)))]` -/
def P15656736593514886291.Spec : Prop :=
  ∀ n, P15656736593514886291.a n = A066508 (n + 1)

end A066508

/-! ## A066508.P1109672576471544072

`A135660(∑[A317542(n)+A175857(2*(n+1))]+1)`
-/

namespace A066508.P1109672576471544072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317542 n + A175857 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A066508.P1109672576471544072

namespace A066508

/-- `A135660(∑[A317542(n)+A175857(2*(n+1))]+1)` -/
def P1109672576471544072.Spec : Prop :=
  ∀ n, P1109672576471544072.a n = A066508 (n + 1)

end A066508

/-! ## A066508.P12478651887476247190

`A135660(∑[A175857(2*(n+1))+A093385(n+1)]+1)`
-/

namespace A066508.P12478651887476247190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175857 (2 * (n + 1)) + A093385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A066508.P12478651887476247190

namespace A066508

/-- `A135660(∑[A175857(2*(n+1))+A093385(n+1)]+1)` -/
def P12478651887476247190.Spec : Prop :=
  ∀ n, P12478651887476247190.a n = A066508 (n + 1)

end A066508

/-! ## A066508.P10351671691902311335

`n+2-A344517(A077859(3*n+2))`
-/

namespace A066508.P10351671691902311335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A344517 (A077859 (3 * n + 2)).toNat

end

end A066508.P10351671691902311335

namespace A066508

/-- `n+2-A344517(A077859(3*n+2))` -/
def P10351671691902311335.Spec : Prop :=
  ∀ n, P10351671691902311335.a n = A066508 (n + 1)

end A066508

/-!
# A066509: a(n) is the first of a triple of consecutive integers, each of which is the product of three distinct primes.

The programs for A066509, there is no canonical definition to state claims against.
-/

/-! ## A066509.P15227248947503408260

`A248202(n+1)-1`
-/

namespace A066509.P15227248947503408260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248202 (n + 1) - 1

end

end A066509.P15227248947503408260

/-! ## A066509.P10111871648167528853

`∩[A075039(n+1), A113789(n+1)]`
-/

namespace A066509.P10111871648167528853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P10111871648167528853

/-! ## A066509.P5383213300807346453

`∩[A005238(n+1), A070268(n+1)]`
-/

namespace A066509.P5383213300807346453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P5383213300807346453

/-! ## A066509.P7138567734492535602

`∩[A052214(n+1), A070268(n+1)]`
-/

namespace A066509.P7138567734492535602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P7138567734492535602

/-! ## A066509.P14082121304015676629

`∩[A070268(n+1), A075039(n+1)]`
-/

namespace A066509.P14082121304015676629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P14082121304015676629

/-! ## A066509.P6674504053955814581

`∩[A070268(n+1), A113789(n+1)]`
-/

namespace A066509.P6674504053955814581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P6674504053955814581

/-! ## A066509.P13224836073497805449

`∩[A070268(n+1), A171666(n+1)]`
-/

namespace A066509.P13224836073497805449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P13224836073497805449

/-! ## A066509.P15119991070671818931

`∩[A070268(n+1), A359746(n+1)]`
-/

namespace A066509.P15119991070671818931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P15119991070671818931

/-! ## A066509.P18368084195690958113

`∩[A169834(n+1), A258276(n+1)]-1`
-/

namespace A066509.P18368084195690958113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A066509.P18368084195690958113

/-! ## A066509.P16833081692377042274

`∩[A052214(n+1), A242606(n+1)]`
-/

namespace A066509.P16833081692377042274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P16833081692377042274

/-! ## A066509.P8823441716119154707

`∩[A070268(n+1), A242606(n+1)]`
-/

namespace A066509.P8823441716119154707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P8823441716119154707

/-! ## A066509.P16335201404107691507

`∩[A075039(n+1), A242606(n+1)]`
-/

namespace A066509.P16335201404107691507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P16335201404107691507

/-! ## A066509.P17125125478389893253

`∩[A242606(n+1), A359746(n+1)]`
-/

namespace A066509.P17125125478389893253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P17125125478389893253

/-! ## A066509.P3671762101069655967

`∩[A045939(n+1), A070268(n+1)]`
-/

namespace A066509.P3671762101069655967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P3671762101069655967

/-! ## A066509.P8858161345542965689

`∩[A075039(n+1), A356744(n+1)]`
-/

namespace A066509.P8858161345542965689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P8858161345542965689

/-! ## A066509.P5591078513505012319

`∩[A052214(n+1), A215217(n+1)]`
-/

namespace A066509.P5591078513505012319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P5591078513505012319

/-! ## A066509.P3134803223811726143

`∩[A075039(n+1), A215217(n+1)]`
-/

namespace A066509.P3134803223811726143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P3134803223811726143

/-! ## A066509.P15753849634914557181

`∩[A215217(n+1), A359746(n+1)]`
-/

namespace A066509.P15753849634914557181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P15753849634914557181

/-! ## A066509.P2397462453923802141

`∩[A070268(n+1), A364308(n+1)]`
-/

namespace A066509.P2397462453923802141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P2397462453923802141

/-! ## A066509.P5543246011296973079

`∩[A075039(n+1), A364308(n+1)]`
-/

namespace A066509.P5543246011296973079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066509.P5543246011296973079

/-!
# A066510: Conjectured list of positive numbers which are not of the form r^i-s^j, where r,s,i,j are integers with i>1, j>1.

The programs for A066510, there is no canonical definition to state claims against.
-/

/-! ## A066510.P12456862542323642013

`∩[A074981(n+1), A088017(n+1)]`
-/

namespace A066510.P12456862542323642013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066510.P12456862542323642013

/-!
# A066512: Least nonnegative integer not the sum or product of any previous pair. a(1)=0.

The programs for A066512, there is no canonical definition to state claims against.
-/

/-! ## A066512.P18123935617648017477

`∑[A332999(A001255(n-char[3]))]`
-/

namespace A066512.P18123935617648017477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332999 (A001255 (n - (if ∃ j, f2 j = n then 1 else 0))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066512.P18123935617648017477

/-! ## A066512.P11410369434219355589

`∑[A001221(A006093(A027214(n)))]`
-/

namespace A066512.P11410369434219355589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (A027214 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066512.P11410369434219355589

/-! ## A066512.P539085829008098953

`A340203(A024518(n+1))`
-/

namespace A066512.P539085829008098953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340203 (A024518 (n + 1)).toNat

end

end A066512.P539085829008098953

/-!
# A066513: Numbers n such that f(n) = f(n-1) - f(n-2) where f is the prime gap function given by f(m) = prime(m+1) - prime(m) and prime(m) denotes the m-th prime.

The programs for A066513, the canonical program `A066513.P13292651458917012293` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066513 has offset 1).

The definition of A066513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066513.P12797939414690280713

`eq[A051702(n+1), A320146(n+2)]+2`
-/

namespace A066513.P12797939414690280713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066513.P12797939414690280713

namespace A066513

/-- `eq[A051702(n+1), A320146(n+2)]+2` -/
def P12797939414690280713.Spec : Prop :=
  ∀ n, (P12797939414690280713.a n : ℤ) = A066513 (n + 1)

end A066513

/-! ## A066513.P5401193047840504435

`eq[A320146(n+2), A339270(n+1)]+2`
-/

namespace A066513.P5401193047840504435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066513.P5401193047840504435

namespace A066513

/-- `eq[A320146(n+2), A339270(n+1)]+2` -/
def P5401193047840504435.Spec : Prop :=
  ∀ n, (P5401193047840504435.a n : ℤ) = A066513 (n + 1)

end A066513

/-! ## A066513.P13292651458917012293

`eq[A093667(n+2), A093667(n+1)]+3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066513

/-- `eq[A093667(n+2), A093667(n+1)]+3` -/
def P13292651458917012293.Spec : Prop :=
  ∀ n, (P13292651458917012293.a n : ℤ) = A066513 (n + 1)

theorem P13292651458917012293.correct : P13292651458917012293.Spec := by
  intro n
  simp only [A066513, Nat.add_sub_cancel]

end A066513

/-! ## A066513.P9821369148214601320

`A000720(p?[A339270(n+1)+A093667(n+1)])`
-/

namespace A066513.P9821369148214601320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1) + A093667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066513.P9821369148214601320

namespace A066513

/-- `A000720(p?[A339270(n+1)+A093667(n+1)])` -/
def P9821369148214601320.Spec : Prop :=
  ∀ n, P9821369148214601320.a n = A066513 (n + 1)

end A066513

/-! ## A066513.P4350262251515489847

`A003963(p?[A339270(n+1)+A093667(n+1)])`
-/

namespace A066513.P4350262251515489847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1) + A093667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066513.P4350262251515489847

namespace A066513

/-- `A003963(p?[A339270(n+1)+A093667(n+1)])` -/
def P4350262251515489847.Spec : Prop :=
  ∀ n, P4350262251515489847.a n = A066513 (n + 1)

end A066513

/-!
# A066514: Number of subgroups of the group GL(2,Z_n) of invertible 2 X 2 matrices mod n (sequence A000252).

The programs for A066514, there is no canonical definition to state claims against.
-/

/-! ## A066514.P11250578925868248405

`A059995(A072296(n+1))+n`
-/

namespace A066514.P11250578925868248405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A072296 (n + 1)).toNat + (n : ℤ)

end

end A066514.P11250578925868248405

/-!
# A066515: Numbers n such that prime(n+1) + prime(n-2) = 2*prime(n-1), where prime(m) is the m-th prime.

The programs for A066515, there is no canonical definition to state claims against.
-/

/-! ## A066515.P4780687913521427740

`A119382(n+1)+1`
-/

namespace A066515.P4780687913521427740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119382 (n + 1) + 1

end

end A066515.P4780687913521427740

/-! ## A066515.P2804217817628763996

`A020725(A119382(n+1))`
-/

namespace A066515.P2804217817628763996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A119382 (n + 1)).toNat

end

end A066515.P2804217817628763996

/-! ## A066515.P14801862213863287137

`eq[A075527(n), A181346(n)]+1`
-/

namespace A066515.P14801862213863287137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066515.P14801862213863287137

/-! ## A066515.P13351713755382678265

`eq[A031131(n+1), A054541(n+1)]+2`
-/

namespace A066515.P13351713755382678265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066515.P13351713755382678265

/-! ## A066515.P12940583580931630488

`A000720(A119381(n+1))+1`
-/

namespace A066515.P12940583580931630488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119381 (n + 1)).toNat + 1

end

end A066515.P12940583580931630488

/-! ## A066515.P9635754836074285697

`A304106(A119381(n+1))`
-/

namespace A066515.P9635754836074285697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A119381 (n + 1)).toNat

end

end A066515.P9635754836074285697

/-!
# A066517: Continued fraction expansion of Artin constant of rank 2: product(1-1/(p^3-p^2), p=prime).

The programs for A066517, there is no canonical definition to state claims against.
-/

/-! ## A066517.P6922717475513923854

`A299487(3*n+4)%A245588(A022567(2*n))`
-/

namespace A066517.P6922717475513923854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299487 (3 * n + 4)) (A245588 (A022567 (2 * n)).toNat)

end

end A066517.P6922717475513923854

/-!
# A066518: Anti-divisor class sums of n.

The programs for A066518, the canonical program `A066518.P12709718911375413060` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066518 has offset 1).

The definition of A066518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066518.P12709718911375413060

`-Δ[A161116(abs(1-n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066518

/-- `-Δ[A161116(abs(1-n))]` -/
def P12709718911375413060.Spec : Prop :=
  ∀ n, P12709718911375413060.a n = A066518 (n + 1)

theorem P12709718911375413060.correct : P12709718911375413060.Spec := by
  intro n
  simp only [A066518, Nat.add_sub_cancel]

end A066518

/-! ## A066518.P12077759323374855699

`Δ[-A000005(ceil(acot(n))+2*n)]`
-/

namespace A066518.P12077759323374855699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000005 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P12077759323374855699

namespace A066518

/-- `Δ[-A000005(ceil(acot(n))+2*n)]` -/
def P12077759323374855699.Spec : Prop :=
  ∀ n, P12077759323374855699.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P16671632224806093326

`-Δ[A000005(abs(1-n)+n+2)]`
-/

namespace A066518.P16671632224806093326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A066518.P16671632224806093326

namespace A066518

/-- `-Δ[A000005(abs(1-n)+n+2)]` -/
def P16671632224806093326.Spec : Prop :=
  ∀ n, P16671632224806093326.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P1443373776482063835

`floor(Δ[sqrt(n)-A000005(2*n+1)])`
-/

namespace A066518.P1443373776482063835
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) - (A000005 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A066518.P1443373776482063835

namespace A066518

/-- `floor(Δ[sqrt(n)-A000005(2*n+1)])` -/
def P1443373776482063835.Spec : Prop :=
  ∀ n, P1443373776482063835.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P13004850037530148562

`floor(acot(n))-Δ[A000005(n+1+n)]`
-/

namespace A066518.P13004850037530148562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - (f1 (n + 1) - f1 n)

end

end A066518.P13004850037530148562

namespace A066518

/-- `floor(acot(n))-Δ[A000005(n+1+n)]` -/
def P13004850037530148562.Spec : Prop :=
  ∀ n, P13004850037530148562.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P3635979442095163786

`A000007(n)-Δ[A000005(2*n+1)]`
-/

namespace A066518.P3635979442095163786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A066518.P3635979442095163786

namespace A066518

/-- `A000007(n)-Δ[A000005(2*n+1)]` -/
def P3635979442095163786.Spec : Prop :=
  ∀ n, P3635979442095163786.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P12387599466407914373

`a(n-1)-floor(Δ[A000005(Δ[n²])]+a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A066518.P12387599466407914373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n + a (n - 1))

end

end A066518.P12387599466407914373

namespace A066518

/-- `a(n-1)-floor(Δ[A000005(Δ[n²])]+a(n-1))` -/
def P12387599466407914373.Spec : Prop :=
  ∀ n, P12387599466407914373.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P4598428278192582018

`Δ[A057427(n)-A000005(2*n+1)]`
-/

namespace A066518.P4598428278192582018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P4598428278192582018

namespace A066518

/-- `Δ[A057427(n)-A000005(2*n+1)]` -/
def P4598428278192582018.Spec : Prop :=
  ∀ n, P4598428278192582018.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P5549973434565227486

`A070824(2*n+1)-A161116(n)`
-/

namespace A066518.P5549973434565227486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 1) - A161116 n

end

end A066518.P5549973434565227486

namespace A066518

/-- `A070824(2*n+1)-A161116(n)` -/
def P5549973434565227486.Spec : Prop :=
  ∀ n, P5549973434565227486.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P11298045125557447934

`A070824(2*n+1)-A070824(A064216(n+2))`
-/

namespace A066518.P11298045125557447934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 1) - A070824 (A064216 (n + 2)).toNat

end

end A066518.P11298045125557447934

namespace A066518

/-- `A070824(2*n+1)-A070824(A064216(n+2))` -/
def P11298045125557447934.Spec : Prop :=
  ∀ n, P11298045125557447934.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P11931828684024956734

`Δ[-A325765(2*n)]`
-/

namespace A066518.P11931828684024956734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A325765 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P11931828684024956734

namespace A066518

/-- `Δ[-A325765(2*n)]` -/
def P11931828684024956734.Spec : Prop :=
  ∀ n, P11931828684024956734.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P8070508519090287364

`Δ[-A070824(2*n+1)]`
-/

namespace A066518.P8070508519090287364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A070824 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P8070508519090287364

namespace A066518

/-- `Δ[-A070824(2*n+1)]` -/
def P8070508519090287364.Spec : Prop :=
  ∀ n, P8070508519090287364.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P9368663282143324389

`Δ[-A111775(2*n+1)]`
-/

namespace A066518.P9368663282143324389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111775 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P9368663282143324389

namespace A066518

/-- `Δ[-A111775(2*n+1)]` -/
def P9368663282143324389.Spec : Prop :=
  ∀ n, P9368663282143324389.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P14588459508091477976

`Δ[-A129138(2*n+1)]`
-/

namespace A066518.P14588459508091477976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129138 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P14588459508091477976

namespace A066518

/-- `Δ[-A129138(2*n+1)]` -/
def P14588459508091477976.Spec : Prop :=
  ∀ n, P14588459508091477976.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P1748671299919406502

`Δ[-A335021(2*n+1)]`
-/

namespace A066518.P1748671299919406502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A335021 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P1748671299919406502

namespace A066518

/-- `Δ[-A335021(2*n+1)]` -/
def P1748671299919406502.Spec : Prop :=
  ∀ n, P1748671299919406502.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P10018303677226369885

`2-Δ[A134871(2*n+1)]`
-/

namespace A066518.P10018303677226369885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A066518.P10018303677226369885

namespace A066518

/-- `2-Δ[A134871(2*n+1)]` -/
def P10018303677226369885.Spec : Prop :=
  ∀ n, P10018303677226369885.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P5778262829176827617

`A000007(n)-Δ[A032741(2*n+1)]`
-/

namespace A066518.P5778262829176827617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A066518.P5778262829176827617

namespace A066518

/-- `A000007(n)-Δ[A032741(2*n+1)]` -/
def P5778262829176827617.Spec : Prop :=
  ∀ n, P5778262829176827617.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P18274725864297828512

`Δ[A057427(n)-A032741(2*n+1)]`
-/

namespace A066518.P18274725864297828512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A032741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P18274725864297828512

namespace A066518

/-- `Δ[A057427(n)-A032741(2*n+1)]` -/
def P18274725864297828512.Spec : Prop :=
  ∀ n, P18274725864297828512.a n = A066518 (n + 1)

end A066518

/-! ## A066518.P17929655367055679883

`Δ[A000007(n+1)-A070824(2*n+1)]`
-/

namespace A066518.P17929655367055679883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A070824 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066518.P17929655367055679883

namespace A066518

/-- `Δ[A000007(n+1)-A070824(2*n+1)]` -/
def P17929655367055679883.Spec : Prop :=
  ∀ n, P17929655367055679883.a n = A066518 (n + 1)

end A066518

/-!
# A066519: Gaps between successive numbers with an anti-divisor class sum of zero.

The programs for A066519, the canonical program `A066519.P9115414614718271380` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066519 has offset 1).

The definition of A066519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066519.P9115414614718271380

`abs(Δ[A190276(abs(1-n)+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066519

/-- `abs(Δ[A190276(abs(1-n)+1)])` -/
def P9115414614718271380.Spec : Prop :=
  ∀ n, P9115414614718271380.a n = A066519 (n + 1)

theorem P9115414614718271380.correct : P9115414614718271380.Spec := by
  intro n
  simp only [A066519, Nat.add_sub_cancel]

end A066519

/-! ## A066519.P7500261010523872433

`Δ[A190276((5*a(n-1))%5+n)]` with `a(0)=1`
-/

namespace A066519.P7500261010523872433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A190276 (Int.tmod (5 * f1 (n - 1)) 5 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066519.P7500261010523872433

namespace A066519

/-- `Δ[A190276((5*a(n-1))%5+n)]` -/
def P7500261010523872433.Spec : Prop :=
  ∀ n, P7500261010523872433.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P9998148260529995595

`Δ[A190276(C(3, 4*a(n-1))+n)]` with `a(0)=1`
-/

namespace A066519.P9998148260529995595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A190276 (Nat.choose 3 (4 * f1 (n - 1)).toNat + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066519.P9998148260529995595

namespace A066519

/-- `Δ[A190276(C(3, 4*a(n-1))+n)]` -/
def P9998148260529995595.Spec : Prop :=
  ∀ n, P9998148260529995595.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P2282788381804824414

`Δ[A190276(C(n-1, a(n-1))+n)]` with `a(0)=1`
-/

namespace A066519.P2282788381804824414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A190276 (Nat.choose ((n : ℤ) - 1).toNat (f1 (n - 1)).toNat + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066519.P2282788381804824414

namespace A066519

/-- `Δ[A190276(C(n-1, a(n-1))+n)]` -/
def P2282788381804824414.Spec : Prop :=
  ∀ n, P2282788381804824414.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P343742133965914720

`Δ[A190276(C(2, n+2)+n)]+C(2, n+2)`
-/

namespace A066519.P343742133965914720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A066519.P343742133965914720

namespace A066519

/-- `Δ[A190276(C(2, n+2)+n)]+C(2, n+2)` -/
def P343742133965914720.Spec : Prop :=
  ∀ n, P343742133965914720.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P5142094712943501246

`A123108(Δ[A066692(A028310(n))])`
-/

namespace A066519.P5142094712943501246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066692 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat

end

end A066519.P5142094712943501246

namespace A066519

/-- `A123108(Δ[A066692(A028310(n))])` -/
def P5142094712943501246.Spec : Prop :=
  ∀ n, P5142094712943501246.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P15691097182263931725

`A028310(Δ[A190276(A028310(n))])`
-/

namespace A066519.P15691097182263931725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A066519.P15691097182263931725

namespace A066519

/-- `A028310(Δ[A190276(A028310(n))])` -/
def P15691097182263931725.Spec : Prop :=
  ∀ n, P15691097182263931725.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P6307175462084637745

`∏{d}[Δ[A190276(A000038(n)+n)], A014963(#)]`
-/

namespace A066519.P6307175462084637745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A066519.P6307175462084637745

namespace A066519

/-- `∏{d}[Δ[A190276(A000038(n)+n)], A014963(#)]` -/
def P6307175462084637745.Spec : Prop :=
  ∀ n, P6307175462084637745.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P16828795476411578833

`Δ[A190276(A000038(n)+n)]+2*A000007(n)`
-/

namespace A066519.P16828795476411578833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000007 n

end

end A066519.P16828795476411578833

namespace A066519

/-- `Δ[A190276(A000038(n)+n)]+2*A000007(n)` -/
def P16828795476411578833.Spec : Prop :=
  ∀ n, P16828795476411578833.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P5935040007775829250

`Δ[A190276(A000038(n)+n)%A001105(n+1)]`
-/

namespace A066519.P5935040007775829250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190276 (A000038 n + (n : ℤ)).toNat) (A001105 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066519.P5935040007775829250

namespace A066519

/-- `Δ[A190276(A000038(n)+n)%A001105(n+1)]` -/
def P5935040007775829250.Spec : Prop :=
  ∀ n, P5935040007775829250.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P9918366444010328536

`Δ[A190276(A000038(a(n-1))+n)]` with `a(0)=1`
-/

namespace A066519.P9918366444010328536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A190276 (A000038 (f1 (n - 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066519.P9918366444010328536

namespace A066519

/-- `Δ[A190276(A000038(a(n-1))+n)]` -/
def P9918366444010328536.Spec : Prop :=
  ∀ n, P9918366444010328536.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P8961288801904985439

`Δ[eq[A277692(2*(n+1)), A277692(2*(n+2))]]`
-/

namespace A066519.P8961288801904985439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066519.P8961288801904985439

namespace A066519

/-- `Δ[eq[A277692(2*(n+1)), A277692(2*(n+2))]]` -/
def P8961288801904985439.Spec : Prop :=
  ∀ n, P8961288801904985439.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P15342893469834544282

`Δ[eq[A070824(2*n+1), A070824(2*n+3)]]`
-/

namespace A066519.P15342893469834544282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066519.P15342893469834544282

namespace A066519

/-- `Δ[eq[A070824(2*n+1), A070824(2*n+3)]]` -/
def P15342893469834544282.Spec : Prop :=
  ∀ n, P15342893469834544282.a n = A066519 (n + 1)

end A066519

/-! ## A066519.P14324215164681071564

`A123108(Δ[A066692(A233583(n+1))])`
-/

namespace A066519.P14324215164681071564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066692 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat

end

end A066519.P14324215164681071564

namespace A066519

/-- `A123108(Δ[A066692(A233583(n+1))])` -/
def P14324215164681071564.Spec : Prop :=
  ∀ n, P14324215164681071564.a n = A066519 (n + 1)

end A066519

/-!
# A066520: Number of primes of the form 4m+3 <= n minus number of primes of the form 4m+1 <= n.

The programs for A066520, the canonical program `A066520.P7437655284551336730` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066520 has offset 1).

The definition of A066520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, A066490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066520.P7437655284551336730

`A066490(n+1)-A066339(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066520

/-- `A066490(n+1)-A066339(n+1)` -/
def P7437655284551336730.Spec : Prop :=
  ∀ n, P7437655284551336730.a n = A066520 (n + 1)

theorem P7437655284551336730.correct : P7437655284551336730.Spec := by
  intro n
  simp only [A066520, Nat.add_sub_cancel]

end A066520

/-! ## A066520.P5447804850875764415

`abs(∑[A151763(n+1)])`
-/

namespace A066520.P5447804850875764415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A066520.P5447804850875764415

namespace A066520

/-- `abs(∑[A151763(n+1)])` -/
def P5447804850875764415.Spec : Prop :=
  ∀ n, P5447804850875764415.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P4493711236973452246

`A038698(A033270(n+1)+1)`
-/

namespace A066520.P4493711236973452246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A033270 (n + 1) + 1).toNat

end

end A066520.P4493711236973452246

namespace A066520

/-- `A038698(A033270(n+1)+1)` -/
def P4493711236973452246.Spec : Prop :=
  ∀ n, P4493711236973452246.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P6686629881011501380

`∑[1-A002654(A014973(n+1))]`
-/

namespace A066520.P6686629881011501380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002654 (A014973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P6686629881011501380

namespace A066520

/-- `∑[1-A002654(A014973(n+1))]` -/
def P6686629881011501380.Spec : Prop :=
  ∀ n, P6686629881011501380.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P5773887380778302318

`A000720(n+1)-A331134(n+1)`
-/

namespace A066520.P5773887380778302318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A331134 (n + 1)

end

end A066520.P5773887380778302318

namespace A066520

/-- `A000720(n+1)-A331134(n+1)` -/
def P5773887380778302318.Spec : Prop :=
  ∀ n, P5773887380778302318.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P1068399837254249397

`abs(∑[A010051(n+1)*A056594(n)])`
-/

namespace A066520.P1068399837254249397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A066520.P1068399837254249397

namespace A066520

/-- `abs(∑[A010051(n+1)*A056594(n)])` -/
def P1068399837254249397.Spec : Prop :=
  ∀ n, P1068399837254249397.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P11007478550246372121

`∑[A079261(n+1)]-A066339(n+1)`
-/

namespace A066520.P11007478550246372121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066339 (n + 1)

end

end A066520.P11007478550246372121

namespace A066520

/-- `∑[A079261(n+1)]-A066339(n+1)` -/
def P11007478550246372121.Spec : Prop :=
  ∀ n, P11007478550246372121.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P2024816056305633508

`A066490(n+1)-∑[A079260(n+1)]`
-/

namespace A066520.P2024816056305633508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P2024816056305633508

namespace A066520

/-- `A066490(n+1)-∑[A079260(n+1)]` -/
def P2024816056305633508.Spec : Prop :=
  ∀ n, P2024816056305633508.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P11611044395024891201

`∑[A079261(n+1)-A079260(n+1)]`
-/

namespace A066520.P11611044395024891201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (n + 1) - A079260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P11611044395024891201

namespace A066520

/-- `∑[A079261(n+1)-A079260(n+1)]` -/
def P11611044395024891201.Spec : Prop :=
  ∀ n, P11611044395024891201.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P1885221749878751454

`∑[(A010873(n)-1)*A010051(n+1)]`
-/

namespace A066520.P1885221749878751454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010873 n - 1) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P1885221749878751454

namespace A066520

/-- `∑[(A010873(n)-1)*A010051(n+1)]` -/
def P1885221749878751454.Spec : Prop :=
  ∀ n, P1885221749878751454.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P8665836284717534111

`A033270(n+1)-2*A066339(n+1)`
-/

namespace A066520.P8665836284717534111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - 2 * A066339 (n + 1)

end

end A066520.P8665836284717534111

namespace A066520

/-- `A033270(n+1)-2*A066339(n+1)` -/
def P8665836284717534111.Spec : Prop :=
  ∀ n, P8665836284717534111.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P17816301828903234219

`2*A066490(n+1)-A033270(n+1)`
-/

namespace A066520.P17816301828903234219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066490 (n + 1) - A033270 (n + 1)

end

end A066520.P17816301828903234219

namespace A066520

/-- `2*A066490(n+1)-A033270(n+1)` -/
def P17816301828903234219.Spec : Prop :=
  ∀ n, P17816301828903234219.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P1545183364916113955

`∑[(1-A002654(n+1))*A010051(n+1)]`
-/

namespace A066520.P1545183364916113955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002654 (n + 1)) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P1545183364916113955

namespace A066520

/-- `∑[(1-A002654(n+1))*A010051(n+1)]` -/
def P1545183364916113955.Spec : Prop :=
  ∀ n, P1545183364916113955.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P9514552825782554771

`∑[(A010051(n+1)-2)*A151763(n+1)]`
-/

namespace A066520.P9514552825782554771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) - 2) * A151763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P9514552825782554771

namespace A066520

/-- `∑[(A010051(n+1)-2)*A151763(n+1)]` -/
def P9514552825782554771.Spec : Prop :=
  ∀ n, P9514552825782554771.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P13833880949116374341

`abs(∑[∑{d}[n+1, A008683(#)*A005094((n+1)/#)]])`
-/

namespace A066520.P13833880949116374341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A005094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A066520.P13833880949116374341

namespace A066520

/-- `abs(∑[∑{d}[n+1, A008683(#)*A005094((n+1)/#)]])` -/
def P13833880949116374341.Spec : Prop :=
  ∀ n, P13833880949116374341.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P14433123845721988357

`A038698(A066339(n+1)+A066490(n+1)+1)`
-/

namespace A066520.P14433123845721988357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A066339 (n + 1) + (A066490 (n + 1) + 1)).toNat

end

end A066520.P14433123845721988357

namespace A066520

/-- `A038698(A066339(n+1)+A066490(n+1)+1)` -/
def P14433123845721988357.Spec : Prop :=
  ∀ n, P14433123845721988357.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P6444539372543345561

`A151763(n+2)-∑[A151763(n+2)]`
-/

namespace A066520.P6444539372543345561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066520.P6444539372543345561

namespace A066520

/-- `A151763(n+2)-∑[A151763(n+2)]` -/
def P6444539372543345561.Spec : Prop :=
  ∀ n, P6444539372543345561.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P12424211145822146261

`A292378(A136548(n+2))`
-/

namespace A066520.P12424211145822146261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292378 (A136548 (n + 2)).toNat

end

end A066520.P12424211145822146261

namespace A066520

/-- `A292378(A136548(n+2))` -/
def P12424211145822146261.Spec : Prop :=
  ∀ n, P12424211145822146261.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P17982644415879925673

`A062711(n+1)-(A228232(n+1)+A066339(n+1))`
-/

namespace A066520.P17982644415879925673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) - (A228232 (n + 1) + A066339 (n + 1))

end

end A066520.P17982644415879925673

namespace A066520

/-- `A062711(n+1)-(A228232(n+1)+A066339(n+1))` -/
def P17982644415879925673.Spec : Prop :=
  ∀ n, P17982644415879925673.a n = A066520 (n + 1)

end A066520

/-! ## A066520.P10953738869088987370

`A228233(n+1)-(A066339(n+1)+A062711(n+1))`
-/

namespace A066520.P10953738869088987370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228233 (n + 1) - (A066339 (n + 1) + A062711 (n + 1))

end

end A066520.P10953738869088987370

namespace A066520

/-- `A228233(n+1)-(A066339(n+1)+A062711(n+1))` -/
def P10953738869088987370.Spec : Prop :=
  ∀ n, P10953738869088987370.a n = A066520 (n + 1)

end A066520

/-!
# A066522: Numbers n whose divisors less than or equal to sqrt(n) are consecutive, from 1 up to some number k.

The programs for A066522, there is no canonical definition to state claims against.
-/

/-! ## A066522.P327193517495896515

`∪[A008578(n+1), A066664(n+1)]`
-/

namespace A066522.P327193517495896515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066522.P327193517495896515

/-! ## A066522.P16958814449290742528

`∪[A046022(n+1), A066664(n+1)]`
-/

namespace A066522.P16958814449290742528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066522.P16958814449290742528

/-! ## A066522.P8762763907811903288

`∪[A066664(n+1), A235050(n+1)]`
-/

namespace A066522.P8762763907811903288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066522.P8762763907811903288

/-! ## A066522.P17019628534173951985

`∪[A066664(n+1), A373789(n+1)]`
-/

namespace A066522.P17019628534173951985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066522.P17019628534173951985

/-! ## A066522.P4286777564328966160

`record[A033677(n+1)*A038548(n+1)]`
-/

namespace A066522.P4286777564328966160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066522.P4286777564328966160

/-! ## A066522.P1452459876398809432

`record[A060872(n+1)/A033676(n+1)]`
-/

namespace A066522.P1452459876398809432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060872 (n + 1) : ℚ) / (A033676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066522.P1452459876398809432

/-! ## A066522.P8349183842808452616

`eq[A033676(n+1), A038548(n+1)]+1`
-/

namespace A066522.P8349183842808452616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066522.P8349183842808452616

/-! ## A066522.P3655146797008784403

`record[A033677(n+1)*A065033(A000005(n+1))]`
-/

namespace A066522.P3655146797008784403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A065033 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066522.P3655146797008784403

/-! ## A066522.P3756888000461175264

`record[A033677(n+1)*A224777(A066839(n+1))]`
-/

namespace A066522.P3756888000461175264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A224777 (A066839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066522.P3756888000461175264

/-!
# A066523: Crowded numbers: for any k in the sequence, d(k)/k is larger than d(m)/m for all m > k.

The programs for A066523, there is no canonical definition to state claims against.
-/

/-! ## A066523.P16268044766080278547

`record[A135974(A228944(2*n+1))]`
-/

namespace A066523.P16268044766080278547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135974 (A228944 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066523.P16268044766080278547

/-! ## A066523.P1145641048693091447

`record[gcd(A070172(4*n+2), A140067(5*n+2))]`
-/

namespace A066523.P1145641048693091447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070172 (4 * n + 2)) (A140067 (5 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066523.P1145641048693091447

/-! ## A066523.P5137954076293038705

`lt[A182805(A356720(n+1)), A027642(n)]`
-/

namespace A066523.P5137954076293038705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182805 (A356720 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066523.P5137954076293038705

/-! ## A066523.P8081657339144833156

`record[A124758(A052015(n+1))]`
-/

namespace A066523.P8081657339144833156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A052015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066523.P8081657339144833156

/-!
# A066524: a(n) = n*(2^n - 1).

The programs for A066524, the canonical program `A066524.P7942145865934771605` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066524 has offset 0).

The definition of A066524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n-1)` (program `A066524.P7942145865934771605`, by `A066524.P7942145865934771605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066524.P7942145865934771605

`n*(2^n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066524

/-- `n*(2^n-1)` -/
def P7942145865934771605.Spec : Prop :=
  ∀ n, P7942145865934771605.a n = A066524 n

theorem P7942145865934771605.correct : P7942145865934771605.Spec := by
  intro n
  simp only [A066524]

end A066524

/-! ## A066524.P3504194927253473426

`A036289(n)-n`
-/

namespace A066524.P3504194927253473426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - (n : ℤ)

end

end A066524.P3504194927253473426

namespace A066524

/-- `A036289(n)-n` -/
def P3504194927253473426.Spec : Prop :=
  ∀ n, P3504194927253473426.a n = A066524 n

end A066524

/-! ## A066524.P1790152864890048818

`∑[∑[ogf((x-2x^3)/(1-4x+4x^2))]]`
-/

namespace A066524.P1790152864890048818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066524.P1790152864890048818

namespace A066524

/-- `∑[∑[ogf((x-2x^3)/(1-4x+4x^2))]]` -/
def P1790152864890048818.Spec : Prop :=
  ∀ n, P1790152864890048818.a n = A066524 n

end A066524

/-! ## A066524.P150497964861696345

`floor(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A066524.P150497964861696345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066524.P150497964861696345

namespace A066524

/-- `floor(n*∑[2*a(n-1)])` -/
def P150497964861696345.Spec : Prop :=
  ∀ n, (P150497964861696345.a n : ℤ) = A066524 n

end A066524

/-! ## A066524.P5565820035320541457

`n*Δ[2*a(n-1)]-n` with `a(0)=1`
-/

namespace A066524.P5565820035320541457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)

end

end A066524.P5565820035320541457

namespace A066524

/-- `n*Δ[2*a(n-1)]-n` -/
def P5565820035320541457.Spec : Prop :=
  ∀ n, P5565820035320541457.a n = A066524 n

end A066524

/-! ## A066524.P11655784222629942308

`n*∑[2*a(n-1)]-n` with `a(0)=1, a(1)=1`
-/

namespace A066524.P11655784222629942308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A066524.P11655784222629942308

namespace A066524

/-- `n*∑[2*a(n-1)]-n` -/
def P11655784222629942308.Spec : Prop :=
  ∀ n, P11655784222629942308.a n = A066524 n

end A066524

/-! ## A066524.P13436161228206923225

`2*n*a(n-1)/(n-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A066524.P13436161228206923225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℚ) * (a (n - 1) / ((n : ℤ) - 1 : ℚ)) + (n : ℚ)

end

end A066524.P13436161228206923225

namespace A066524

/-- `2*n*a(n-1)/(n-1)+n` -/
def P13436161228206923225.Spec : Prop :=
  ∀ n, P13436161228206923225.a n = (A066524 n : ℚ)

end A066524

/-! ## A066524.P6356988638206796131

`4*(a(n-1)+1-a(n-2))-n` with `a(0)=0, a(1)=1`
-/

namespace A066524.P6356988638206796131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) + (1 - a (n - 2))) - (n : ℤ)

end

end A066524.P6356988638206796131

namespace A066524

/-- `4*(a(n-1)+1-a(n-2))-n` -/
def P6356988638206796131.Spec : Prop :=
  ∀ n, P6356988638206796131.a n = A066524 n

theorem P6356988638206796131.correct : P6356988638206796131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A066524, Nat.add_sub_cancel, A066524.P6356988638206796131.a, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A066524, Nat.add_sub_cancel, A066524.P6356988638206796131.a, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A066524

/-! ## A066524.P12531081771315750005

`4*(1-(a(n-2)-a(n-1)))-n` with `a(0)=0, a(1)=1`
-/

namespace A066524.P12531081771315750005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (1 - (a (n - 2) - a (n - 1))) - (n : ℤ)

end

end A066524.P12531081771315750005

namespace A066524

/-- `4*(1-(a(n-2)-a(n-1)))-n` -/
def P12531081771315750005.Spec : Prop :=
  ∀ n, P12531081771315750005.a n = A066524 n

theorem P12531081771315750005.correct : P12531081771315750005.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A066524, Nat.add_sub_cancel, A066524.P12531081771315750005.a, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A066524, Nat.add_sub_cancel, A066524.P12531081771315750005.a, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A066524

/-! ## A066524.P2495644947449623226

`∑[∑[A129953(n)]]`
-/

namespace A066524.P2495644947449623226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066524.P2495644947449623226

namespace A066524

/-- `∑[∑[A129953(n)]]` -/
def P2495644947449623226.Spec : Prop :=
  ∀ n, P2495644947449623226.a n = A066524 n

end A066524

/-! ## A066524.P7661998057037798532

`abs(n*A225883(n))`
-/

namespace A066524.P7661998057037798532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A225883 n|

end

end A066524.P7661998057037798532

namespace A066524

/-- `abs(n*A225883(n))` -/
def P7661998057037798532.Spec : Prop :=
  ∀ n, P7661998057037798532.a n = A066524 n

end A066524

/-! ## A066524.P18281492935344220248

`A002064(n)-(n+1)`
-/

namespace A066524.P18281492935344220248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - (n + 1 : ℤ)

end

end A066524.P18281492935344220248

namespace A066524

/-- `A002064(n)-(n+1)` -/
def P18281492935344220248.Spec : Prop :=
  ∀ n, P18281492935344220248.a n = A066524 n

end A066524

/-! ## A066524.P14271272964109442936

`A097064(n+1)-n`
-/

namespace A066524.P14271272964109442936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) - (n : ℤ)

end

end A066524.P14271272964109442936

namespace A066524

/-- `A097064(n+1)-n` -/
def P14271272964109442936.Spec : Prop :=
  ∀ n, P14271272964109442936.a n = A066524 n

end A066524

/-! ## A066524.P2274834722089235343

`2*A001787(n)-n`
-/

namespace A066524.P2274834722089235343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n - (n : ℤ)

end

end A066524.P2274834722089235343

namespace A066524

/-- `2*A001787(n)-n` -/
def P2274834722089235343.Spec : Prop :=
  ∀ n, P2274834722089235343.a n = A066524 n

end A066524

/-! ## A066524.P9662251049570157121

`A069229(n)-2*n`
-/

namespace A066524.P9662251049570157121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 n - (2 * n : ℤ)

end

end A066524.P9662251049570157121

namespace A066524

/-- `A069229(n)-2*n` -/
def P9662251049570157121.Spec : Prop :=
  ∀ n, P9662251049570157121.a n = A066524 n

end A066524

/-! ## A066524.P14665240504041833207

`A093968(2*n)-n`
-/

namespace A066524.P14665240504041833207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n) - (n : ℤ)

end

end A066524.P14665240504041833207

namespace A066524

/-- `A093968(2*n)-n` -/
def P14665240504041833207.Spec : Prop :=
  ∀ n, P14665240504041833207.a n = A066524 n

end A066524

/-! ## A066524.P5602497928723850922

`A048493(n)-2^n`
-/

namespace A066524.P5602497928723850922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 n - (2 ^ n : ℤ)

end

end A066524.P5602497928723850922

namespace A066524

/-- `A048493(n)-2^n` -/
def P5602497928723850922.Spec : Prop :=
  ∀ n, P5602497928723850922.a n = A066524 n

end A066524

/-! ## A066524.P11471519964942362867

`∑[∑[A087447(n)]-1]`
-/

namespace A066524.P11471519964942362867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066524.P11471519964942362867

namespace A066524

/-- `∑[∑[A087447(n)]-1]` -/
def P11471519964942362867.Spec : Prop :=
  ∀ n, P11471519964942362867.a n = A066524 n

end A066524

/-! ## A066524.P17296080407267917408

`n*A000079(n)-n`
-/

namespace A066524.P17296080407267917408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000079 n - (n : ℤ)

end

end A066524.P17296080407267917408

namespace A066524

/-- `n*A000079(n)-n` -/
def P17296080407267917408.Spec : Prop :=
  ∀ n, P17296080407267917408.a n = A066524 n

end A066524

/-!
# A066525: Primes of form Sum_{k=1..n} prime(k)^3.

The programs for A066525, there is no canonical definition to state claims against.
-/

/-! ## A066525.P8483895790036489640

`A098999(A098563(n+1))`
-/

namespace A066525.P8483895790036489640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098999 (A098563 (n + 1)).toNat

end

end A066525.P8483895790036489640

/-!
# A066526: a(n) = binomial(Fibonacci(n), Fibonacci(n-1)).

The programs for A066526, there is no canonical definition to state claims against.
-/

/-! ## A066526.P14500143433690456939

`A073028(A000032(n))`
-/

namespace A066526.P14500143433690456939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073028 (A000032 n).toNat

end

end A066526.P14500143433690456939

/-! ## A066526.P15335761048097328357

`A073028(A169985(n))`
-/

namespace A066526.P15335761048097328357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073028 (A169985 n).toNat

end

end A066526.P15335761048097328357

/-! ## A066526.P13181393440270032063

`A073028(A254729(n+1))`
-/

namespace A066526.P13181393440270032063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073028 (A254729 (n + 1)).toNat

end

end A066526.P13181393440270032063

/-! ## A066526.P13306861772949128257

`C(A185357(n), A000045(n))`
-/

namespace A066526.P13306861772949128257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185357 n).toNat (A000045 n).toNat

end

end A066526.P13306861772949128257

/-! ## A066526.P7066811533824216891

`C(∑[A212804(n)], A000045(n))`
-/

namespace A066526.P7066811533824216891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A000045 n).toNat

end

end A066526.P7066811533824216891

/-!
# A066527: Triangular numbers that for some k are also the sum of the first k primes.

The programs for A066527, there is no canonical definition to state claims against.
-/

/-! ## A066527.P10936211975524123311

`A007504(A175133(n+1))`
-/

namespace A066527.P10936211975524123311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A175133 (n + 1)).toNat

end

end A066527.P10936211975524123311

/-!
# A066528: Non-palindromic triangular numbers whose reverse is a triangular number with the same number of digits.

The programs for A066528, there is no canonical definition to state claims against.
-/

/-! ## A066528.P4098820087704813906

`∩[A066569(n+1), A069673(n+1)]`
-/

namespace A066528.P4098820087704813906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066528.P4098820087704813906

/-!
# A066529: a(n) is the least index such that the least primitive root of the a(n)-th prime is n, or zero if no such prime exists.

The programs for A066529, there is no canonical definition to state claims against.
-/

/-! ## A066529.P3057661853712186269

`∑{d}[A023048(n+1), A000720(#)]`
-/

namespace A066529.P3057661853712186269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A066529.P3057661853712186269

/-! ## A066529.P13076959116421850987

`∑{d}[A023048(n+1), A061395(#)]`
-/

namespace A066529.P13076959116421850987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A066529.P13076959116421850987

/-! ## A066529.P4359858489764300343

`∑{d}[A023048(n+1), A066328(#)]`
-/

namespace A066529.P4359858489764300343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A066529.P4359858489764300343

/-! ## A066529.P1703430930913274557

`∑{d}[A023048(n+1), A297109(#)]`
-/

namespace A066529.P1703430930913274557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A066529.P1703430930913274557

/-! ## A066529.P9763985002475827216

`∑{d}[A023048(n+1), A354871(#)]`
-/

namespace A066529.P9763985002475827216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354871 d

end

end A066529.P9763985002475827216

/-!
# A066530: Expansion of (1+x+x^3)/((1-x)*(1-x^4)).

The programs for A066530, the canonical program `A066530.P11584113782926563272` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066530 has offset 0).

The definition of A066530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^3)/(1-x-x^4+x^5))` (program `A066530.P11584113782926563272`, by `A066530.P11584113782926563272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066530.P14658257765839656482

`ceil((3*n+2)/4)`
-/

namespace A066530.P14658257765839656482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n + 2 : ℚ) / 4⌉

end

end A066530.P14658257765839656482

namespace A066530

/-- `ceil((3*n+2)/4)` -/
def P14658257765839656482.Spec : Prop :=
  ∀ n, P14658257765839656482.a n = A066530 n

end A066530

/-! ## A066530.P11584113782926563272

`ogf((1+x+x^3)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066530

/-- `ogf((1+x+x^3)/(1-x-x^4+x^5))` -/
def P11584113782926563272.Spec : Prop :=
  ∀ n, P11584113782926563272.a n = A066530 n

theorem P11584113782926563272.correct : P11584113782926563272.Spec := by
  intro n
  simp only [A066530]

end A066530

/-! ## A066530.P17381380676960937373

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A066530.P17381380676960937373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A066530.P17381380676960937373

namespace A066530

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17381380676960937373.Spec : Prop :=
  ∀ n, P17381380676960937373.a n = A066530 n

end A066530

/-! ## A066530.P5123353215541174725

`(6*n+7+2*cos(n*π/2)+cos((n+1)*π)+2*sin(n*π/2))/8`
-/

namespace A066530.P5123353215541174725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 * n + 7 : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 2) + Real.cos ((n + 1 : ℝ) * Real.pi) + 2 * Real.sin ((n : ℝ) * Real.pi / 2)) / 8

end

end A066530.P5123353215541174725

namespace A066530

/-- `(6*n+7+2*cos(n*π/2)+cos((n+1)*π)+2*sin(n*π/2))/8` -/
def P5123353215541174725.Spec : Prop :=
  ∀ n, P5123353215541174725.a n = (A066530 n : ℝ)

end A066530

/-! ## A066530.P8953250062444119315

`∑[ceil(cot(gcd(4, n)))]`
-/

namespace A066530.P8953250062444119315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Nat.gcd 4 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P8953250062444119315

namespace A066530

/-- `∑[ceil(cot(gcd(4, n)))]` -/
def P8953250062444119315.Spec : Prop :=
  ∀ n, P8953250062444119315.a n = A066530 n

end A066530

/-! ## A066530.P6647889795075987628

`∑[C(2, and(4, n²))]`
-/

namespace A066530.P6647889795075987628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 4 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P6647889795075987628

namespace A066530

/-- `∑[C(2, and(4, n²))]` -/
def P6647889795075987628.Spec : Prop :=
  ∀ n, (P6647889795075987628.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P5141122807686685269

`∑[(n%2)^(n%4)]`
-/

namespace A066530.P5141122807686685269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P5141122807686685269

namespace A066530

/-- `∑[(n%2)^(n%4)]` -/
def P5141122807686685269.Spec : Prop :=
  ∀ n, (P5141122807686685269.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P8315002563578620523

`∑[and(1, n^and(2, n))]`
-/

namespace A066530.P8315002563578620523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n ^ Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P8315002563578620523

namespace A066530

/-- `∑[and(1, n^and(2, n))]` -/
def P8315002563578620523.Spec : Prop :=
  ∀ n, (P8315002563578620523.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P1096458737901933823

`∑[floor(sqrt((n+2)%4))]`
-/

namespace A066530.P1096458737901933823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 2) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P1096458737901933823

namespace A066530

/-- `∑[floor(sqrt((n+2)%4))]` -/
def P1096458737901933823.Spec : Prop :=
  ∀ n, (P1096458737901933823.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P11774931353683789707

`∑[floor(sqrt(and(3, n+2)))]`
-/

namespace A066530.P11774931353683789707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.land 3 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P11774931353683789707

namespace A066530

/-- `∑[floor(sqrt(and(3, n+2)))]` -/
def P11774931353683789707.Spec : Prop :=
  ∀ n, (P11774931353683789707.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P13816246547813305193

`∑[ceil(sin(and(3, n+2)))]`
-/

namespace A066530.P13816246547813305193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Nat.land 3 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P13816246547813305193

namespace A066530

/-- `∑[ceil(sin(and(3, n+2)))]` -/
def P13816246547813305193.Spec : Prop :=
  ∀ n, P13816246547813305193.a n = A066530 n

end A066530

/-! ## A066530.P14279408619322140906

`∑[ceil(sin(gcd(8, 2*n)))]`
-/

namespace A066530.P14279408619322140906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Nat.gcd 8 (2 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P14279408619322140906

namespace A066530

/-- `∑[ceil(sin(gcd(8, 2*n)))]` -/
def P14279408619322140906.Spec : Prop :=
  ∀ n, P14279408619322140906.a n = A066530 n

end A066530

/-! ## A066530.P5263219293386679302

`∑[round(atan(and(3, n+2)))]`
-/

namespace A066530.P5263219293386679302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Nat.land 3 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P5263219293386679302

namespace A066530

/-- `∑[round(atan(and(3, n+2)))]` -/
def P5263219293386679302.Spec : Prop :=
  ∀ n, P5263219293386679302.a n = A066530 n

end A066530

/-! ## A066530.P5300687487145416420

`∑[char[comp[2*or(1, n)]]]`
-/

namespace A066530.P5300687487145416420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P5300687487145416420

namespace A066530

/-- `∑[char[comp[2*or(1, n)]]]` -/
def P5300687487145416420.Spec : Prop :=
  ∀ n, (P5300687487145416420.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P14409013705908300986

`∑[floor(acot(val(n+2, 4)))]`
-/

namespace A066530.P14409013705908300986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.valuation (n + 2) 4 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P14409013705908300986

namespace A066530

/-- `∑[floor(acot(val(n+2, 4)))]` -/
def P14409013705908300986.Spec : Prop :=
  ∀ n, P14409013705908300986.a n = A066530 n

end A066530

/-! ## A066530.P158955733376924028

`∑[ceil(tanh(and(3, n+2)))]`
-/

namespace A066530.P158955733376924028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (Nat.land 3 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P158955733376924028

namespace A066530

/-- `∑[ceil(tanh(and(3, n+2)))]` -/
def P158955733376924028.Spec : Prop :=
  ∀ n, P158955733376924028.a n = A066530 n

end A066530

/-! ## A066530.P8030873608979143575

`∑[round(tanh(and(3, n+2)))]`
-/

namespace A066530.P8030873608979143575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (Nat.land 3 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P8030873608979143575

namespace A066530

/-- `∑[round(tanh(and(3, n+2)))]` -/
def P8030873608979143575.Spec : Prop :=
  ∀ n, P8030873608979143575.a n = A066530 n

end A066530

/-! ## A066530.P12404508541867224719

`∑[((n+2)²%8)%3]`
-/

namespace A066530.P12404508541867224719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 % 8 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066530.P12404508541867224719

namespace A066530

/-- `∑[((n+2)²%8)%3]` -/
def P12404508541867224719.Spec : Prop :=
  ∀ n, (P12404508541867224719.a n : ℤ) = A066530 n

end A066530

/-! ## A066530.P6980068172474605464

`floor(∑[2/(and(2, n)+2)])`
-/

namespace A066530.P6980068172474605464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.land 2 n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A066530.P6980068172474605464

namespace A066530

/-- `floor(∑[2/(and(2, n)+2)])` -/
def P6980068172474605464.Spec : Prop :=
  ∀ n, P6980068172474605464.a n = A066530 n

end A066530

/-! ## A066530.P9257236490083676280

`a(n-4)+3` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A066530.P9257236490083676280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  a (n - 4) + 3

end

end A066530.P9257236490083676280

namespace A066530

/-- `a(n-4)+3` -/
def P9257236490083676280.Spec : Prop :=
  ∀ n, (P9257236490083676280.a n : ℤ) = A066530 n

end A066530

/-!
# A066531: Numbers which can be expressed as the product of a number and its reversal in at least two different ways.

The programs for A066531, there is no canonical definition to state claims against.
-/

/-! ## A066531.P16293023696630712367

`A195140(4*A072443(n+1))`
-/

namespace A066531.P16293023696630712367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (4 * A072443 (n + 1)).toNat

end

end A066531.P16293023696630712367

/-! ## A066531.P15574475041239831290

`5*A004525(4*A072443(n+1))`
-/

namespace A066531.P15574475041239831290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004525 (4 * A072443 (n + 1)).toNat

end

end A066531.P15574475041239831290

/-! ## A066531.P1253523181840252496

`A245092(10*A072443(n+1))`
-/

namespace A066531.P1253523181840252496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (10 * A072443 (n + 1)).toNat

end

end A066531.P1253523181840252496

/-! ## A066531.P1181650787688301607

`A033263(A079083(3*n+4))*A072443(n+1)`
-/

namespace A066531.P1181650787688301607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033263 (A079083 (3 * n + 4)).toNat * A072443 (n + 1)

end

end A066531.P1181650787688301607

/-!
# A066532: If n is odd a(n) = 1, if n is even a(n) = 2^(n-1).

The programs for A066532, the canonical program `A066532.P16355702902980639944` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066532 has offset 1).

The definition of A066532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066532.P16355702902980639944

`2^n*(1-(-1)^n)/2+(1+(-1)^n)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066532

/-- `2^n*(1-(-1)^n)/2+(1+(-1)^n)/2` -/
def P16355702902980639944.Spec : Prop :=
  ∀ n, P16355702902980639944.a n = (A066532 (n + 1) : ℚ)

end A066532

/-! ## A066532.P4308827129219642304

`(n%2+1)^n`
-/

namespace A066532.P4308827129219642304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) ^ n

end

end A066532.P4308827129219642304

namespace A066532

/-- `(n%2+1)^n` -/
def P4308827129219642304.Spec : Prop :=
  ∀ n, (P4308827129219642304.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P13316196700385982905

`gcd(2, n+1)^n`
-/

namespace A066532.P13316196700385982905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ n

end

end A066532.P13316196700385982905

namespace A066532

/-- `gcd(2, n+1)^n` -/
def P13316196700385982905.Spec : Prop :=
  ∀ n, (P13316196700385982905.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P14763852939520247419

`2^(lcm(2, n)-n)`
-/

namespace A066532.P14763852939520247419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.lcm 2 n : ℤ) - (n : ℤ) : ℤ)

end

end A066532.P14763852939520247419

namespace A066532

/-- `2^(lcm(2, n)-n)` -/
def P14763852939520247419.Spec : Prop :=
  ∀ n, P14763852939520247419.a n = (A066532 (n + 1) : ℚ)

end A066532

/-! ## A066532.P6942000196958568490

`(and(1, n)+1)^n`
-/

namespace A066532.P6942000196958568490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) ^ n

end

end A066532.P6942000196958568490

namespace A066532

/-- `(and(1, n)+1)^n` -/
def P6942000196958568490.Spec : Prop :=
  ∀ n, (P6942000196958568490.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P11037728435248207073

`(3-gcd(4, n))^n`
-/

namespace A066532.P11037728435248207073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.gcd 4 n : ℤ)) ^ n

end

end A066532.P11037728435248207073

namespace A066532

/-- `(3-gcd(4, n))^n` -/
def P11037728435248207073.Spec : Prop :=
  ∀ n, P11037728435248207073.a n = A066532 (n + 1)

end A066532

/-! ## A066532.P2286359459203112358

`2^(n*and(1, n))`
-/

namespace A066532.P2286359459203112358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n * Nat.land 1 n)

end

end A066532.P2286359459203112358

namespace A066532

/-- `2^(n*and(1, n))` -/
def P2286359459203112358.Spec : Prop :=
  ∀ n, (P2286359459203112358.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P8095789662529856855

`((2^n)%3)^n`
-/

namespace A066532.P8095789662529856855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n % 3) ^ n

end

end A066532.P8095789662529856855

namespace A066532

/-- `((2^n)%3)^n` -/
def P8095789662529856855.Spec : Prop :=
  ∀ n, (P8095789662529856855.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P12178609007079413286

`(2^and(1, n))^n`
-/

namespace A066532.P12178609007079413286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.land 1 n) ^ n

end

end A066532.P12178609007079413286

namespace A066532

/-- `(2^and(1, n))^n` -/
def P12178609007079413286.Spec : Prop :=
  ∀ n, (P12178609007079413286.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P6048366393874118193

`2^C(n, xor(1, n))`
-/

namespace A066532.P6048366393874118193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n (Nat.xor 1 n)

end

end A066532.P6048366393874118193

namespace A066532

/-- `2^C(n, xor(1, n))` -/
def P6048366393874118193.Spec : Prop :=
  ∀ n, (P6048366393874118193.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P16388918263553446700

`Δ[or(1, n)]!^n`
-/

namespace A066532.P16388918263553446700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ n

end

end A066532.P16388918263553446700

namespace A066532

/-- `Δ[or(1, n)]!^n` -/
def P16388918263553446700.Spec : Prop :=
  ∀ n, (P16388918263553446700.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P15078882508453375680

`(or(n, -2)+3)^n`
-/

namespace A066532.P15078882508453375680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) (-2) + 3) ^ n

end

end A066532.P15078882508453375680

namespace A066532

/-- `(or(n, -2)+3)^n` -/
def P15078882508453375680.Spec : Prop :=
  ∀ n, P15078882508453375680.a n = A066532 (n + 1)

end A066532

/-! ## A066532.P443452772549533733

`abs(or(n-1, -2)^n)`
-/

namespace A066532.P443452772549533733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((n : ℤ) - 1) (-2) ^ n|

end

end A066532.P443452772549533733

namespace A066532

/-- `abs(or(n-1, -2)^n)` -/
def P443452772549533733.Spec : Prop :=
  ∀ n, P443452772549533733.a n = A066532 (n + 1)

end A066532

/-! ## A066532.P8657886341437148354

`abs((or(1, n+1)-n)^n)`
-/

namespace A066532.P8657886341437148354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ)) ^ n|

end

end A066532.P8657886341437148354

namespace A066532

/-- `abs((or(1, n+1)-n)^n)` -/
def P8657886341437148354.Spec : Prop :=
  ∀ n, P8657886341437148354.a n = A066532 (n + 1)

end A066532

/-! ## A066532.P6209285041045699918

`ceil((2/xor(n, n-1))^n)`
-/

namespace A066532.P6209285041045699918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)) ^ n⌉

end

end A066532.P6209285041045699918

namespace A066532

/-- `ceil((2/xor(n, n-1))^n)` -/
def P6209285041045699918.Spec : Prop :=
  ∀ n, P6209285041045699918.a n = A066532 (n + 1)

end A066532

/-! ## A066532.P6918181718068113093

`∏{d}[or(n-1, -2), #^n]`
-/

namespace A066532.P6918181718068113093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A066532.P6918181718068113093

namespace A066532

/-- `∏{d}[or(n-1, -2), #^n]` -/
def P6918181718068113093.Spec : Prop :=
  ∀ n, (P6918181718068113093.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P3418674290693100655

`∏{p}[or(n-1, -2), #^n]`
-/

namespace A066532.P3418674290693100655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A066532.P3418674290693100655

namespace A066532

/-- `∏{p}[or(n-1, -2), #^n]` -/
def P3418674290693100655.Spec : Prop :=
  ∀ n, (P3418674290693100655.a n : ℤ) = A066532 (n + 1)

end A066532

/-! ## A066532.P6382058702406506546

`∏{p}[n+1, ceil(3/#)^n]`
-/

namespace A066532.P6382058702406506546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈3 / (p : ℚ)⌉ ^ n

end

end A066532.P6382058702406506546

namespace A066532

/-- `∏{p}[n+1, ceil(3/#)^n]` -/
def P6382058702406506546.Spec : Prop :=
  ∀ n, P6382058702406506546.a n = A066532 (n + 1)

end A066532

/-! ## A066532.P1051219112910488786

`∑{digits}[or(n-1, -2), #^n]`
-/

namespace A066532.P1051219112910488786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ n).sum

end

end A066532.P1051219112910488786

namespace A066532

/-- `∑{digits}[or(n-1, -2), #^n]` -/
def P1051219112910488786.Spec : Prop :=
  ∀ n, (P1051219112910488786.a n : ℤ) = A066532 (n + 1)

end A066532

/-!
# A066534: Total number of walks with length > 0 in the Hasse diagram of a Boolean algebra of order n.

The programs for A066534, the canonical program `A066534.P11849088704617755458` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066534 has offset 0).

The definition of A066534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066534.P3327303701544857102

`n*(a(n-1)+2^(n-1))` with `a(0)=0`
-/

namespace A066534.P3327303701544857102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A066534.P3327303701544857102

namespace A066534

/-- `n*(a(n-1)+2^(n-1))` -/
def P3327303701544857102.Spec : Prop :=
  ∀ n, P3327303701544857102.a n = (A066534 n : ℚ)

end A066534

/-! ## A066534.P11849088704617755458

`A010842(n)-2^n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066534

/-- `A010842(n)-2^n` -/
def P11849088704617755458.Spec : Prop :=
  ∀ n, P11849088704617755458.a n = A066534 n

theorem P11849088704617755458.correct : P11849088704617755458.Spec := by
  intro n
  simp only [A066534]

end A066534

/-! ## A066534.P4036031686949088069

`n/2*A195254(n)`
-/

namespace A066534.P4036031686949088069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A195254 n : ℚ)

end

end A066534.P4036031686949088069

namespace A066534

/-- `n/2*A195254(n)` -/
def P4036031686949088069.Spec : Prop :=
  ∀ n, P4036031686949088069.a n = (A066534 n : ℚ)

end A066534

/-! ## A066534.P15231860868235613610

`Δ[A295518(n)-2^n]`
-/

namespace A066534.P15231860868235613610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295518 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066534.P15231860868235613610

namespace A066534

/-- `Δ[A295518(n)-2^n]` -/
def P15231860868235613610.Spec : Prop :=
  ∀ n, P15231860868235613610.a n = A066534 n

end A066534

/-! ## A066534.P12255051346163763324

`A001787(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A066534.P12255051346163763324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001787 n + (n : ℤ) * a (n - 1)

end

end A066534.P12255051346163763324

namespace A066534

/-- `A001787(n)+n*a(n-1)` -/
def P12255051346163763324.Spec : Prop :=
  ∀ n, P12255051346163763324.a n = A066534 n

end A066534

/-! ## A066534.P14769184974150228250

`n*(A011782(n)+a(n-1))` with `a(0)=0`
-/

namespace A066534.P14769184974150228250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A011782 n + a (n - 1))

end

end A066534.P14769184974150228250

namespace A066534

/-- `n*(A011782(n)+a(n-1))` -/
def P14769184974150228250.Spec : Prop :=
  ∀ n, P14769184974150228250.a n = A066534 n

end A066534

/-! ## A066534.P8562383789069463171

`n*(A131577(n)+a(n-1))` with `a(0)=0`
-/

namespace A066534.P8562383789069463171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A131577 n + a (n - 1))

end

end A066534.P8562383789069463171

namespace A066534

/-- `n*(A131577(n)+a(n-1))` -/
def P8562383789069463171.Spec : Prop :=
  ∀ n, P8562383789069463171.a n = A066534 n

end A066534

/-! ## A066534.P3080186717961745540

`abs(A000079(n)-A010842(n))`
-/

namespace A066534.P3080186717961745540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A010842 n|

end

end A066534.P3080186717961745540

namespace A066534

/-- `abs(A000079(n)-A010842(n))` -/
def P3080186717961745540.Spec : Prop :=
  ∀ n, P3080186717961745540.a n = A066534 n

end A066534

/-! ## A066534.P6489037329957203749

`n*A010842(A004273(n)-n)`
-/

namespace A066534.P6489037329957203749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010842 (A004273 n - (n : ℤ)).toNat

end

end A066534.P6489037329957203749

namespace A066534

/-- `n*A010842(A004273(n)-n)` -/
def P6489037329957203749.Spec : Prop :=
  ∀ n, P6489037329957203749.a n = A066534 n

end A066534

/-! ## A066534.P17009356890810063617

`n*A010842(n-A178334(n))`
-/

namespace A066534.P17009356890810063617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010842 ((n : ℤ) - A178334 n).toNat

end

end A066534.P17009356890810063617

namespace A066534

/-- `n*A010842(n-A178334(n))` -/
def P17009356890810063617.Spec : Prop :=
  ∀ n, P17009356890810063617.a n = A066534 n

end A066534

/-!
# A066535: Number of ways of writing n as a sum of n squares.

The programs for A066535, there is no canonical definition to state claims against.
-/

/-! ## A066535.P301451922556663067

`A286815(∑[4*n])`
-/

namespace A066535.P301451922556663067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066535.P301451922556663067

/-! ## A066535.P517803316054159433

`A319574(∑[4*n])`
-/

namespace A066535.P517803316054159433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066535.P517803316054159433

/-! ## A066535.P3395476125624832206

`A122141(2*n²+1)`
-/

namespace A066535.P3395476125624832206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (2 * n ^ 2 + 1)

end

end A066535.P3395476125624832206

/-! ## A066535.P17888849396326042263

`record[A286815(n*A008619(n))]`
-/

namespace A066535.P17888849396326042263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066535.P17888849396326042263

/-! ## A066535.P3670686503140174462

`record[A286815(n*A028242(n))]`
-/

namespace A066535.P3670686503140174462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066535.P3670686503140174462

/-! ## A066535.P1108775005068421730

`or(A000007(n), A319574(A046092(n)))`
-/

namespace A066535.P1108775005068421730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A319574 (A046092 n).toNat)

end

end A066535.P1108775005068421730

/-! ## A066535.P12084957785872329842

`record[A319574(A245300(n))/A174117(n)]`
-/

namespace A066535.P12084957785872329842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319574 (A245300 n).toNat : ℚ) / (A174117 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066535.P12084957785872329842

/-! ## A066535.P8977114145695239886

`record[A286815(n)/A227984(n)]`
-/

namespace A066535.P8977114145695239886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286815 n : ℚ) / (A227984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066535.P8977114145695239886

/-! ## A066535.P11034319185011571416

`record[A286815(A028242(n²))]`
-/

namespace A066535.P11034319185011571416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A028242 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066535.P11034319185011571416

/-!
# A066536: Number of ways of writing n as a sum of n+1 squares.

The programs for A066536, there is no canonical definition to state claims against.
-/

/-! ## A066536.P2237965958320751192

`(n+1)*A166952(n)`
-/

namespace A066536.P2237965958320751192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166952 n

end

end A066536.P2237965958320751192

/-! ## A066536.P5796353318871444789

`A122141(∑[4*n]+1)`
-/

namespace A066536.P5796353318871444789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066536.P5796353318871444789

/-! ## A066536.P12665904312523485034

`A319574(2*(n+1)²)`
-/

namespace A066536.P12665904312523485034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (2 * (n + 1) ^ 2)

end

end A066536.P12665904312523485034

/-! ## A066536.P5311630551277828485

`A286815(A056220(n+1))`
-/

namespace A066536.P5311630551277828485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A056220 (n + 1)).toNat

end

end A066536.P5311630551277828485

/-! ## A066536.P14236324875506568166

`A286815(A054000(n+1)+1)`
-/

namespace A066536.P14236324875506568166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A054000 (n + 1) + 1).toNat

end

end A066536.P14236324875506568166

/-! ## A066536.P14350359455232964479

`A286815(A000384(n+1)+n)`
-/

namespace A066536.P14350359455232964479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000384 (n + 1) + (n : ℤ)).toNat

end

end A066536.P14350359455232964479

/-! ## A066536.P10740666191579208181

`A286815(eq[1, A051933(n)]-n)`
-/

namespace A066536.P10740666191579208181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - n)

end

end A066536.P10740666191579208181

/-! ## A066536.P12916758320766275757

`A286815(A000217(2*n+1)+n)`
-/

namespace A066536.P12916758320766275757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A066536.P12916758320766275757

/-! ## A066536.P6647802542051789491

`A286815(A046092(n)+2*n+1)`
-/

namespace A066536.P6647802542051789491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A046092 n + (2 * n + 1 : ℤ)).toNat

end

end A066536.P6647802542051789491

/-! ## A066536.P13959902290895033254

`A286815(A161680(2*(n+1))+n)`
-/

namespace A066536.P13959902290895033254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A161680 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A066536.P13959902290895033254

/-!
# A066537: Number of planar graphs on n labeled nodes.

The programs for A066537, there is no canonical definition to state claims against.
-/

/-! ## A066537.P18068857327656016333

`A140169(C(n+3, 5))`
-/

namespace A066537.P18068857327656016333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140169 (Nat.choose (n + 3) 5)

end

end A066537.P18068857327656016333

/-! ## A066537.P35354874587344996

`A152194(C(n+2, 4)+1)`
-/

namespace A066537.P35354874587344996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152194 (Nat.choose (n + 2) 4 + 1)

end

end A066537.P35354874587344996

/-!
# A066538: Sum of the digits of the n-th Mersenne prime (A000668).

The programs for A066538, there is no canonical definition to state claims against.
-/

/-! ## A066538.P11527881260918719898

`A001370(A000043(n+1))-1`
-/

namespace A066538.P11527881260918719898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A000043 (n + 1)).toNat - 1

end

end A066538.P11527881260918719898

/-! ## A066538.P12908408529096640337

`A001370(p?[A161508(n+1)])-1`
-/

namespace A066538.P12908408529096640337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A066538.P12908408529096640337

/-! ## A066538.P15940465217327150088

`A001370(A090748(n+1)+1)-1`
-/

namespace A066538.P15940465217327150088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A090748 (n + 1) + 1).toNat - 1

end

end A066538.P15940465217327150088

/-! ## A066538.P4769573345774672005

`A001370(A050475(n+1)-1)-1`
-/

namespace A066538.P4769573345774672005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A050475 (n + 1) - 1).toNat - 1

end

end A066538.P4769573345774672005

/-! ## A066538.P14060210973087631266

`A001370(A153798(n+1)+2)-1`
-/

namespace A066538.P14060210973087631266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A153798 (n + 1) + 2).toNat - 1

end

end A066538.P14060210973087631266

/-!
# A066539: Difference between larger and smaller terms of n-th amicable pair.

The programs for A066539, there is no canonical definition to state claims against.
-/

/-! ## A066539.P12471260832669684915

`A002046(n+1)-A002025(n+1)`
-/

namespace A066539.P12471260832669684915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A002025 (n + 1)

end

end A066539.P12471260832669684915

/-! ## A066539.P924439782564144128

`A259180(2*(n+1))-A259180(2*(n+1)-1)`
-/

namespace A066539.P924439782564144128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * (n + 1)) - A259180 (2 * (n + 1) - 1)

end

end A066539.P924439782564144128

/-! ## A066539.P8445726156202422480

`A180164(n+1)%A002025(n+1)`
-/

namespace A066539.P8445726156202422480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180164 (n + 1)) (A002025 (n + 1))

end

end A066539.P8445726156202422480

/-! ## A066539.P12070004315258613072

`2*A002046(n+1)-A180164(n+1)`
-/

namespace A066539.P12070004315258613072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002046 (n + 1) - A180164 (n + 1)

end

end A066539.P12070004315258613072

/-! ## A066539.P6347807480436297482

`2*(A275315(n+1)-A002025(n+1))`
-/

namespace A066539.P6347807480436297482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275315 (n + 1) - A002025 (n + 1))

end

end A066539.P6347807480436297482

/-! ## A066539.P8161560915262375978

`2*(A002046(n+1)-A275315(n+1))`
-/

namespace A066539.P8161560915262375978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002046 (n + 1) - A275315 (n + 1))

end

end A066539.P8161560915262375978

/-! ## A066539.P3502650980747608725

`A061469(n+1)*A180327(n+1)-A002025(n+1)`
-/

namespace A066539.P3502650980747608725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061469 (n + 1) * A180327 (n + 1) - A002025 (n + 1)

end

end A066539.P3502650980747608725

/-! ## A066539.P9626008066959171651

`A002046(n+1)-A061469(n+1)*A180326(n+1)`
-/

namespace A066539.P9626008066959171651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A061469 (n + 1) * A180326 (n + 1)

end

end A066539.P9626008066959171651

/-! ## A066539.P15444583386187955333

`(A180327(n+1)-A180326(n+1))*A061469(n+1)`
-/

namespace A066539.P15444583386187955333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180327 (n + 1) - A180326 (n + 1)) * A061469 (n + 1)

end

end A066539.P15444583386187955333

/-! ## A066539.P14198612519667428768

`A180202(n+1)/A002025(n+1)-A002025(n+1)`
-/

namespace A066539.P14198612519667428768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180202 (n + 1) : ℚ) / (A002025 (n + 1) : ℚ) - (A002025 (n + 1) : ℚ)

end

end A066539.P14198612519667428768

/-! ## A066539.P7726942605988367393

`A002046(n+1)-A180202(n+1)/A002046(n+1)`
-/

namespace A066539.P7726942605988367393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) - (A180202 (n + 1) : ℚ) / (A002046 (n + 1) : ℚ)

end

end A066539.P7726942605988367393

/-!
# A066540: The first of two consecutive primes with equal digital sums.

The programs for A066540, there is no canonical definition to state claims against.
-/

/-! ## A066540.P2682259749228962610

`A209875(n+1)%A063064(n)`
-/

namespace A066540.P2682259749228962610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209875 (n + 1)) (A063064 n)

end

end A066540.P2682259749228962610

/-! ## A066540.P1442143406410628569

`or(Δ[A268448(n+1)]%2, A209875(n+1))`
-/

namespace A066540.P1442143406410628569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (f1 (n + 1) - f1 n) 2) (A209875 (n + 1))

end

end A066540.P1442143406410628569

/-! ## A066540.P9729997086890050462

`A209875(n+1)+A000007(A000041(n))`
-/

namespace A066540.P9729997086890050462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209875 (n + 1) + A000007 (A000041 n).toNat

end

end A066540.P9729997086890050462

/-! ## A066540.P569056957280649252

`A209875(n+1)+A000007(A000837(n))`
-/

namespace A066540.P569056957280649252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209875 (n + 1) + A000007 (A000837 n).toNat

end

end A066540.P569056957280649252

/-! ## A066540.P10038005968449224135

`A209875(n+1)+A000007(A063676(n+1))`
-/

namespace A066540.P10038005968449224135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209875 (n + 1) + A000007 (A063676 (n + 1)).toNat

end

end A066540.P10038005968449224135

/-!
# A066542: Nonnegative integers all of whose anti-divisors are either 2 or odd.

The programs for A066542, the canonical program `A066542.P10113132506063868529` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066542 has offset 1).

The definition of A066542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066542.P4550104841491976749

`A174090(n+3)`
-/

namespace A066542.P4550104841491976749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 3)

end

end A066542.P4550104841491976749

namespace A066542

/-- `A174090(n+3)` -/
def P4550104841491976749.Spec : Prop :=
  ∀ n, P4550104841491976749.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P381904479861644405

`A067133(A055495(n+1))`
-/

namespace A066542.P381904479861644405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (A055495 (n + 1)).toNat

end

end A066542.P381904479861644405

namespace A066542

/-- `A067133(A055495(n+1))` -/
def P381904479861644405.Spec : Prop :=
  ∀ n, P381904479861644405.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P10420406056370754797

`∩[A246655(n+1), A117346(n+1)]`
-/

namespace A066542.P10420406056370754797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066542.P10420406056370754797

namespace A066542

/-- `∩[A246655(n+1), A117346(n+1)]` -/
def P10420406056370754797.Spec : Prop :=
  ∀ n, (P10420406056370754797.a n : ℤ) = A066542 (n + 1)

end A066542

/-! ## A066542.P1686285665988611355

`∩[A059046(n+1), A117346(n+1)]`
-/

namespace A066542.P1686285665988611355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066542.P1686285665988611355

namespace A066542

/-- `∩[A059046(n+1), A117346(n+1)]` -/
def P1686285665988611355.Spec : Prop :=
  ∀ n, (P1686285665988611355.a n : ℤ) = A066542 (n + 1)

end A066542

/-! ## A066542.P618906637723699111

`filter[A053577(n+2), A324290(#)]`
-/

namespace A066542.P618906637723699111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A066542.P618906637723699111

namespace A066542

/-- `filter[A053577(n+2), A324290(#)]` -/
def P618906637723699111.Spec : Prop :=
  ∀ n, P618906637723699111.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P13418494895263261692

`filter[A066191(n+2), A324290(#)]`
-/

namespace A066542.P13418494895263261692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A066542.P13418494895263261692

namespace A066542

/-- `filter[A066191(n+2), A324290(#)]` -/
def P13418494895263261692.Spec : Prop :=
  ∀ n, P13418494895263261692.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P440678647162545224

`filter[A117346(n+2), A324290(#)]`
-/

namespace A066542.P440678647162545224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A066542.P440678647162545224

namespace A066542

/-- `filter[A117346(n+2), A324290(#)]` -/
def P440678647162545224.Spec : Prop :=
  ∀ n, P440678647162545224.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P6778333684329139157

`filter[A067133(n+3), A324290(#)]`
-/

namespace A066542.P6778333684329139157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A066542.P6778333684329139157

namespace A066542

/-- `filter[A067133(n+3), A324290(#)]` -/
def P6778333684329139157.Spec : Prop :=
  ∀ n, P6778333684329139157.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P10957283214633024513

`filter[A117346(n+1), A069513(#)]`
-/

namespace A066542.P10957283214633024513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A066542.P10957283214633024513

namespace A066542

/-- `filter[A117346(n+1), A069513(#)]` -/
def P10957283214633024513.Spec : Prop :=
  ∀ n, P10957283214633024513.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P10113132506063868529

`filter[A053577(n+2), A069513(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066542

/-- `filter[A053577(n+2), A069513(#)]` -/
def P10113132506063868529.Spec : Prop :=
  ∀ n, P10113132506063868529.a n = A066542 (n + 1)

theorem P10113132506063868529.correct : P10113132506063868529.Spec := by
  intro n
  simp only [A066542, Nat.add_sub_cancel]

end A066542

/-! ## A066542.P8607999812798533161

`filter[A066191(n+2), A069513(#)]`
-/

namespace A066542.P8607999812798533161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A066542.P8607999812798533161

namespace A066542

/-- `filter[A066191(n+2), A069513(#)]` -/
def P8607999812798533161.Spec : Prop :=
  ∀ n, P8607999812798533161.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P10627267096176124279

`filter[A053577(n+2), A360116(#)]`
-/

namespace A066542.P10627267096176124279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A066542.P10627267096176124279

namespace A066542

/-- `filter[A053577(n+2), A360116(#)]` -/
def P10627267096176124279.Spec : Prop :=
  ∀ n, P10627267096176124279.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P17736027472146014761

`filter[A066191(n+2), A354923(#)]`
-/

namespace A066542.P17736027472146014761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A066542.P17736027472146014761

namespace A066542

/-- `filter[A066191(n+2), A354923(#)]` -/
def P17736027472146014761.Spec : Prop :=
  ∀ n, P17736027472146014761.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P7006438903370027299

`filter[A066191(n+2), A354924(#)]`
-/

namespace A066542.P7006438903370027299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A066542.P7006438903370027299

namespace A066542

/-- `filter[A066191(n+2), A354924(#)]` -/
def P7006438903370027299.Spec : Prop :=
  ∀ n, P7006438903370027299.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P6907581471921024061

`filter[A067133(n+2), A354993(#)]`
-/

namespace A066542.P6907581471921024061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A066542.P6907581471921024061

namespace A066542

/-- `filter[A067133(n+2), A354993(#)]` -/
def P6907581471921024061.Spec : Prop :=
  ∀ n, P6907581471921024061.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P11665980181875888992

`filter[A059046(n+2), A365716(#)]`
-/

namespace A066542.P11665980181875888992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A066542.P11665980181875888992

namespace A066542

/-- `filter[A059046(n+2), A365716(#)]` -/
def P11665980181875888992.Spec : Prop :=
  ∀ n, P11665980181875888992.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P1673372632251038403

`filter[A066191(n+2), A360116(#)]`
-/

namespace A066542.P1673372632251038403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A066542.P1673372632251038403

namespace A066542

/-- `filter[A066191(n+2), A360116(#)]` -/
def P1673372632251038403.Spec : Prop :=
  ∀ n, P1673372632251038403.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P14620878976710427358

`filter[A066191(n+2), A360128(#)]`
-/

namespace A066542.P14620878976710427358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A066542.P14620878976710427358

namespace A066542

/-- `filter[A066191(n+2), A360128(#)]` -/
def P14620878976710427358.Spec : Prop :=
  ∀ n, P14620878976710427358.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P17271127149215380732

`filter[A053577(n+2), A373851(#)]`
-/

namespace A066542.P17271127149215380732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A066542.P17271127149215380732

namespace A066542

/-- `filter[A053577(n+2), A373851(#)]` -/
def P17271127149215380732.Spec : Prop :=
  ∀ n, P17271127149215380732.a n = A066542 (n + 1)

end A066542

/-! ## A066542.P7071666345577728158

`filter[A053577(n+2), A378442(#)]`
-/

namespace A066542.P7071666345577728158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A066542.P7071666345577728158

namespace A066542

/-- `filter[A053577(n+2), A378442(#)]` -/
def P7071666345577728158.Spec : Prop :=
  ∀ n, P7071666345577728158.a n = A066542 (n + 1)

end A066542

/-!
# A066547: Let N = 123456789101112131415161718..., the concatenation of the natural numbers. a(n) is the n-digit number formed from the digits of N starting from the {n(n-1)/2 +1}th digit. Omit any leading zeros.

The programs for A066547, there is no canonical definition to state claims against.
-/

/-! ## A066547.P4569802437526208883

`A162711(A004255(n+1))`
-/

namespace A066547.P4569802437526208883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162711 (A004255 (n + 1)).toNat

end

end A066547.P4569802437526208883

/-! ## A066547.P10286107782337660681

`A162711(A176145(n+3)+A000124(n))`
-/

namespace A066547.P10286107782337660681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162711 (A176145 (n + 3) + A000124 n).toNat

end

end A066547.P10286107782337660681

/-! ## A066547.P711420999680558387

`A162711(A176145(n+3)+∑[A028310(n)])`
-/

namespace A066547.P711420999680558387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162711 (A176145 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066547.P711420999680558387

/-! ## A066547.P3369304198110180806

`A224841(A176145(n+4))`
-/

namespace A066547.P3369304198110180806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A176145 (n + 4)).toNat

end

end A066547.P3369304198110180806

/-!
# A066548: Sum of digits of n-th term of A066547.

The programs for A066548, there is no canonical definition to state claims against.
-/

/-! ## A066548.P11193633233534301881

`Δ[A054632(∑[n])]`
-/

namespace A066548.P11193633233534301881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066548.P11193633233534301881

/-! ## A066548.P10781931621125192271

`abs(Δ[A054632(C(n+1, 2))])`
-/

namespace A066548.P10781931621125192271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066548.P10781931621125192271

/-! ## A066548.P3082850219903473863

`abs(Δ[A054632(n²-C(n, 2))])`
-/

namespace A066548.P3082850219903473863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (n ^ 2 - Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066548.P3082850219903473863

/-! ## A066548.P6997419901122975040

`abs(Δ[A054632(A000217(n))])`
-/

namespace A066548.P6997419901122975040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066548.P6997419901122975040

/-! ## A066548.P954623177844256771

`Δ[record[A054632(A091018(n))]]`
-/

namespace A066548.P954623177844256771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A091018 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066548.P954623177844256771

/-! ## A066548.P10264923778349372939

`A000027(Δ[A054632(C(n+1, 2))])`
-/

namespace A066548.P10264923778349372939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A066548.P10264923778349372939

/-! ## A066548.P3427254187071302238

`Δ[A054632(C(n+1, 2))]%A000045(n+6)`
-/

namespace A066548.P3427254187071302238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000045 (n + 6))

end

end A066548.P3427254187071302238

/-! ## A066548.P1198153247716209341

`Δ[A054632(C(n+1, 2))%A000040(n+1)²]`
-/

namespace A066548.P1198153247716209341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054632 (Nat.choose (n + 1) 2)) (A000040 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066548.P1198153247716209341

/-! ## A066548.P12625775425799356184

`A080300(2*n+1)+Δ[A054632(C(n+1, 2))]`
-/

namespace A066548.P12625775425799356184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A066548.P12625775425799356184

/-! ## A066548.P17028829082176334935

`∑{digits}[A066547(n+1), #]`
-/

namespace A066548.P17028829082176334935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066548.P17028829082176334935

/-!
# A066550: Sum of digits of n-th term of A066549.

The programs for A066550, there is no canonical definition to state claims against.
-/

/-! ## A066550.P4981740644985235115

`Δ[A067112(∑[n])]`
-/

namespace A066550.P4981740644985235115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066550.P4981740644985235115

/-! ## A066550.P9879438381710808837

`abs(Δ[A067112(A000217(n))])`
-/

namespace A066550.P9879438381710808837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066550.P9879438381710808837

/-! ## A066550.P14115157511152877768

`Δ[record[A067112(A091018(n))]]`
-/

namespace A066550.P14115157511152877768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (A091018 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066550.P14115157511152877768

/-! ## A066550.P5405546809028118092

`Δ[A067112(A000217(n))]%A058696(n+2)`
-/

namespace A066550.P5405546809028118092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A058696 (n + 2))

end

end A066550.P5405546809028118092

/-! ## A066550.P17907425447161406809

`A000007(3*n+2)+Δ[A067112(A000217(n))]`
-/

namespace A066550.P17907425447161406809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2) + (f1 (n + 1) - f1 n)

end

end A066550.P17907425447161406809

/-! ## A066550.P14212285629219070519

`Δ[record[A067112(A285723(n+1))]]`
-/

namespace A066550.P14212285629219070519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (A285723 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066550.P14212285629219070519

/-! ## A066550.P9213904417044131174

`∑{digits}[A066549(n+1), #]`
-/

namespace A066550.P9213904417044131174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066550.P9213904417044131174

/-!
# A066552: Sum of digits of n-th term of A066551.

The programs for A066552, there is no canonical definition to state claims against.
-/

/-! ## A066552.P2070639244560556867

`∑{digits}[A066551(n+1), #]`
-/

namespace A066552.P2070639244560556867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066552.P2070639244560556867

/-!
# A066554: Sum of digits of n-th term of A066553.

The programs for A066554, there is no canonical definition to state claims against.
-/

/-! ## A066554.P3211978670974119080

`∑{digits}[A066553(n+1), #]`
-/

namespace A066554.P3211978670974119080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066554.P3211978670974119080

/-!
# A066556: Sum of digits of n-th term of A066555.

The programs for A066556, there is no canonical definition to state claims against.
-/

/-! ## A066556.P15655942518953108667

`∑{digits}[A066555(n+1), #]`
-/

namespace A066556.P15655942518953108667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066556.P15655942518953108667

/-!
# A066557: Largest n-digit multiple of n.

The programs for A066557, the canonical program `A066557.P759970560427044152` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066557 has offset 1).

The definition of A066557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066557.P759970560427044152

`floor((10^(n+1)-1)/(n+1))*(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066557

/-- `floor((10^(n+1)-1)/(n+1))*(n+1)` -/
def P759970560427044152.Spec : Prop :=
  ∀ n, P759970560427044152.a n = A066557 (n + 1)

theorem P759970560427044152.correct : P759970560427044152.Spec := by
  intro n
  simp only [A066557, Nat.add_sub_cancel]

end A066557

/-! ## A066557.P12335892171477814121

`(1-10^(n+1))%(n+1)-(1-10^(n+1))`
-/

namespace A066557.P12335892171477814121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (10 ^ (n + 1) : ℤ)) (n + 1 : ℤ) - (1 - (10 ^ (n + 1) : ℤ))

end

end A066557.P12335892171477814121

namespace A066557

/-- `(1-10^(n+1))%(n+1)-(1-10^(n+1))` -/
def P12335892171477814121.Spec : Prop :=
  ∀ n, P12335892171477814121.a n = A066557 (n + 1)

end A066557

/-! ## A066557.P1772163065291173829

`A002283(n+1)-A002283(n+1)%(n+1)`
-/

namespace A066557.P1772163065291173829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - Int.tmod (A002283 (n + 1)) (n + 1 : ℤ)

end

end A066557.P1772163065291173829

namespace A066557

/-- `A002283(n+1)-A002283(n+1)%(n+1)` -/
def P1772163065291173829.Spec : Prop :=
  ∀ n, P1772163065291173829.a n = A066557 (n + 1)

end A066557

/-! ## A066557.P13280116708595382276

`A103456(n+1)-A103456(n+1)%(n+1)`
-/

namespace A066557.P13280116708595382276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 (n + 1) - Int.tmod (A103456 (n + 1)) (n + 1 : ℤ)

end

end A066557.P13280116708595382276

namespace A066557

/-- `A103456(n+1)-A103456(n+1)%(n+1)` -/
def P13280116708595382276.Spec : Prop :=
  ∀ n, P13280116708595382276.a n = A066557 (n + 1)

end A066557

/-! ## A066557.P7366945550239526845

`A049416(2*(n+1))-A049416(2*(n+1))%(n+1)`
-/

namespace A066557.P7366945550239526845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (2 * (n + 1)) - Int.tmod (A049416 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066557.P7366945550239526845

namespace A066557

/-- `A049416(2*(n+1))-A049416(2*(n+1))%(n+1)` -/
def P7366945550239526845.Spec : Prop :=
  ∀ n, P7366945550239526845.a n = A066557 (n + 1)

end A066557

/-!
# A066558: a(n) = A066557(n)/n.

The programs for A066558, the canonical program `A066558.P1575641468741182367` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066558 has offset 1).

The definition of A066558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066558.P1575641468741182367

`floor((10^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066558

/-- `floor((10^(n+1)-1)/(n+1))` -/
def P1575641468741182367.Spec : Prop :=
  ∀ n, P1575641468741182367.a n = A066558 (n + 1)

theorem P1575641468741182367.correct : P1575641468741182367.Spec := by
  intro n
  simp only [A066558, Nat.add_sub_cancel]

end A066558

/-! ## A066558.P2624796874986258296

`A066557(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066558.P2624796874986258296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066557 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066558.P2624796874986258296

namespace A066558

/-- `A066557(n+1)/(n+1)` -/
def P2624796874986258296.Spec : Prop :=
  ∀ n, P2624796874986258296.a n = (A066558 (n + 1) : ℚ)

end A066558

/-! ## A066558.P16419562808163109231

`A060156(n+1)-A000007(A056968(n+1))`
-/

namespace A066558.P16419562808163109231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1) - A000007 (A056968 (n + 1)).toNat

end

end A066558.P16419562808163109231

namespace A066558

/-- `A060156(n+1)-A000007(A056968(n+1))` -/
def P16419562808163109231.Spec : Prop :=
  ∀ n, P16419562808163109231.a n = A066558 (n + 1)

end A066558

/-! ## A066558.P9557847382109112672

`A060156(n+1)-A000007(A056969(n+1))`
-/

namespace A066558.P9557847382109112672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1) - A000007 (A056969 (n + 1)).toNat

end

end A066558.P9557847382109112672

namespace A066558

/-- `A060156(n+1)-A000007(A056969(n+1))` -/
def P9557847382109112672.Spec : Prop :=
  ∀ n, P9557847382109112672.a n = A066558 (n + 1)

end A066558

/-! ## A066558.P3412817856194022348

`A060156(n+1)-A000007(A066209(n+1))`
-/

namespace A066558.P3412817856194022348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1) - A000007 (A066209 (n + 1)).toNat

end

end A066558.P3412817856194022348

namespace A066558

/-- `A060156(n+1)-A000007(A066209(n+1))` -/
def P3412817856194022348.Spec : Prop :=
  ∀ n, P3412817856194022348.a n = A066558 (n + 1)

end A066558

/-! ## A066558.P12762504455191306881

`ceil(A024115(n+1)/(n+1))`
-/

namespace A066558.P12762504455191306881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024115 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A066558.P12762504455191306881

namespace A066558

/-- `ceil(A024115(n+1)/(n+1))` -/
def P12762504455191306881.Spec : Prop :=
  ∀ n, P12762504455191306881.a n = A066558 (n + 1)

end A066558

/-!
# A066559: a(n) = ceiling(10^(n-1)/n).

The programs for A066559, the canonical program `A066559.P5954974370800163633` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066559 has offset 1).

The definition of A066559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10^n/(n+1))` (program `A066559.P5954974370800163633`, by `A066559.P5954974370800163633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066559.P5954974370800163633

`ceil(10^n/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066559

/-- `ceil(10^n/(n+1))` -/
def P5954974370800163633.Spec : Prop :=
  ∀ n, P5954974370800163633.a n = A066559 (n + 1)

theorem P5954974370800163633.correct : P5954974370800163633.Spec := by
  intro n
  simp only [A066559, Nat.add_sub_cancel]

end A066559

/-! ## A066559.P7320484884538056202

`A053041(n+1)/(n+1)`
-/

namespace A066559.P7320484884538056202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053041 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066559.P7320484884538056202

namespace A066559

/-- `A053041(n+1)/(n+1)` -/
def P7320484884538056202.Spec : Prop :=
  ∀ n, P7320484884538056202.a n = (A066559 (n + 1) : ℚ)

end A066559

/-! ## A066559.P10683272393969555234

`A056159(n+1)-A057428(A066209(n+1))`
-/

namespace A066559.P10683272393969555234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056159 (n + 1) - A057428 (A066209 (n + 1)).toNat

end

end A066559.P10683272393969555234

namespace A066559

/-- `A056159(n+1)-A057428(A066209(n+1))` -/
def P10683272393969555234.Spec : Prop :=
  ∀ n, P10683272393969555234.a n = A066559 (n + 1)

end A066559

/-! ## A066559.P6530688631792433530

`A056159(n+1)+A057428(A066209(n+1))*A057428(n)`
-/

namespace A066559.P6530688631792433530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056159 (n + 1) + A057428 (A066209 (n + 1)).toNat * A057428 n

end

end A066559.P6530688631792433530

namespace A066559

/-- `A056159(n+1)+A057428(A066209(n+1))*A057428(n)` -/
def P6530688631792433530.Spec : Prop :=
  ∀ n, P6530688631792433530.a n = A066559 (n + 1)

end A066559

/-! ## A066559.P4234029141773299592

`floor(A002283(n)/(n+1))+1`
-/

namespace A066559.P4234029141773299592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002283 n : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A066559.P4234029141773299592

namespace A066559

/-- `floor(A002283(n)/(n+1))+1` -/
def P4234029141773299592.Spec : Prop :=
  ∀ n, P4234029141773299592.a n = A066559 (n + 1)

end A066559

/-! ## A066559.P8129799953799336283

`record[ceil(A000462(n+1)/A002024(n+1))]`
-/

namespace A066559.P8129799953799336283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000462 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066559.P8129799953799336283

namespace A066559

/-- `record[ceil(A000462(n+1)/A002024(n+1))]` -/
def P8129799953799336283.Spec : Prop :=
  ∀ n, P8129799953799336283.a n = A066559 (n + 1)

end A066559

/-! ## A066559.P8545645724905910023

`floor(A081552(n+1)/(n+1))`
-/

namespace A066559.P8545645724905910023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081552 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A066559.P8545645724905910023

namespace A066559

/-- `floor(A081552(n+1)/(n+1))` -/
def P8545645724905910023.Spec : Prop :=
  ∀ n, P8545645724905910023.a n = A066559 (n + 1)

end A066559

/-! ## A066559.P3210363589402434110

`floor((A011557(n)+n)/(n+1))`
-/

namespace A066559.P3210363589402434110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011557 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A066559.P3210363589402434110

namespace A066559

/-- `floor((A011557(n)+n)/(n+1))` -/
def P3210363589402434110.Spec : Prop :=
  ∀ n, P3210363589402434110.a n = A066559 (n + 1)

end A066559

/-! ## A066559.P793320815412540626

`floor(A081551(∑[n+1])/(n+1))`
-/

namespace A066559.P793320815412540626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081551 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A066559.P793320815412540626

namespace A066559

/-- `floor(A081551(∑[n+1])/(n+1))` -/
def P793320815412540626.Spec : Prop :=
  ∀ n, P793320815412540626.a n = A066559 (n + 1)

end A066559

/-!
# A066560: Smallest composite number divisible by n.

The programs for A066560, the canonical program `A066560.P2608043460305824476` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066560 has offset 1).

The definition of A066560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066560.P2608043460305824476

`A061397(abs(1-n)+2)+n+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066560

/-- `A061397(abs(1-n)+2)+n+1` -/
def P2608043460305824476.Spec : Prop :=
  ∀ n, P2608043460305824476.a n = A066560 (n + 1)

theorem P2608043460305824476.correct : P2608043460305824476.Spec := by
  intro n
  simp only [A066560, Nat.add_sub_cancel]

end A066560

/-! ## A066560.P6305163430765023610

`(C(3, A145444(n+1))+1)*(n+1)`
-/

namespace A066560.P6305163430765023610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (A145444 (n + 1)).toNat + 1) * (n + 1)

end

end A066560.P6305163430765023610

namespace A066560

/-- `(C(3, A145444(n+1))+1)*(n+1)` -/
def P6305163430765023610.Spec : Prop :=
  ∀ n, (P6305163430765023610.a n : ℤ) = A066560 (n + 1)

end A066560

/-! ## A066560.P5061752667374842237

`(n+1)*2^C(2, A000005(n+1))`
-/

namespace A066560.P5061752667374842237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ Nat.choose 2 (A000005 (n + 1)).toNat

end

end A066560.P5061752667374842237

namespace A066560

/-- `(n+1)*2^C(2, A000005(n+1))` -/
def P5061752667374842237.Spec : Prop :=
  ∀ n, (P5061752667374842237.a n : ℤ) = A066560 (n + 1)

end A066560

/-! ## A066560.P7154210662258651606

`abs(1-n)+C(A134194(n+1), n)+2`
-/

namespace A066560.P7154210662258651606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (Nat.choose (A134194 (n + 1)).toNat n + 2 : ℤ)

end

end A066560.P7154210662258651606

namespace A066560

/-- `abs(1-n)+C(A134194(n+1), n)+2` -/
def P7154210662258651606.Spec : Prop :=
  ∀ n, P7154210662258651606.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P10235757820361329792

`(n+1)*2^C(n+2, A000203(n+1))`
-/

namespace A066560.P10235757820361329792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ Nat.choose (n + 2) (A000203 (n + 1)).toNat

end

end A066560.P10235757820361329792

namespace A066560

/-- `(n+1)*2^C(n+2, A000203(n+1))` -/
def P10235757820361329792.Spec : Prop :=
  ∀ n, (P10235757820361329792.a n : ℤ) = A066560 (n + 1)

end A066560

/-! ## A066560.P4364341213441078970

`(n+1)*A176895(A061142(n+1))`
-/

namespace A066560.P4364341213441078970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A176895 (A061142 (n + 1)).toNat

end

end A066560.P4364341213441078970

namespace A066560

/-- `(n+1)*A176895(A061142(n+1))` -/
def P4364341213441078970.Spec : Prop :=
  ∀ n, P4364341213441078970.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P6161429634595874692

`A143545(lcm(n+1, A178915(n+1)))`
-/

namespace A066560.P6161429634595874692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (Int.lcm (n + 1 : ℤ) (A178915 (n + 1)))

end

end A066560.P6161429634595874692

namespace A066560

/-- `A143545(lcm(n+1, A178915(n+1)))` -/
def P6161429634595874692.Spec : Prop :=
  ∀ n, P6161429634595874692.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P3103291552580893696

`(A010051(n+1)+A033685(A004016(n))+1)*(n+1)`
-/

namespace A066560.P3103291552580893696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + (A033685 (A004016 n).toNat + 1)) * (n + 1 : ℤ)

end

end A066560.P3103291552580893696

namespace A066560

/-- `(A010051(n+1)+A033685(A004016(n))+1)*(n+1)` -/
def P3103291552580893696.Spec : Prop :=
  ∀ n, P3103291552580893696.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P13775039321681645160

`A143545(A254667(n+1))`
-/

namespace A066560.P13775039321681645160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A254667 (n + 1)).toNat

end

end A066560.P13775039321681645160

namespace A066560

/-- `A143545(A254667(n+1))` -/
def P13775039321681645160.Spec : Prop :=
  ∀ n, P13775039321681645160.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P10724456072730078124

`(A054977(n)+n)*A054977(A318505(n+1))`
-/

namespace A066560.P10724456072730078124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n + (n : ℤ)) * A054977 (A318505 (n + 1)).toNat

end

end A066560.P10724456072730078124

namespace A066560

/-- `(A054977(n)+n)*A054977(A318505(n+1))` -/
def P10724456072730078124.Spec : Prop :=
  ∀ n, P10724456072730078124.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P14978824041286452572

`A113646(A143545(n+1))`
-/

namespace A066560.P14978824041286452572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (A143545 (n + 1)).toNat

end

end A066560.P14978824041286452572

namespace A066560

/-- `A113646(A143545(n+1))` -/
def P14978824041286452572.Spec : Prop :=
  ∀ n, P14978824041286452572.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P14083918225001726086

`A143545(floor(A143545(n+1)+acot(n)))`
-/

namespace A066560.P14083918225001726086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 ⌊(A143545 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A066560.P14083918225001726086

namespace A066560

/-- `A143545(floor(A143545(n+1)+acot(n)))` -/
def P14083918225001726086.Spec : Prop :=
  ∀ n, P14083918225001726086.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P6388104904177633800

`A143545(A143545(n+1)+A000038(n)/2)`
-/

namespace A066560.P6388104904177633800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (SequenceMachineLib.roundAway ((A143545 (n + 1) : ℚ) + (A000038 n : ℚ) / 2)).toNat

end

end A066560.P6388104904177633800

namespace A066560

/-- `A143545(A143545(n+1)+A000038(n)/2)` -/
def P6388104904177633800.Spec : Prop :=
  ∀ n, P6388104904177633800.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P2291489827503526190

`A143545(A143545(n+1)+A000038(n))-A000038(n)`
-/

namespace A066560.P2291489827503526190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A143545 (n + 1) + A000038 n).toNat - A000038 n

end

end A066560.P2291489827503526190

namespace A066560

/-- `A143545(A143545(n+1)+A000038(n))-A000038(n)` -/
def P2291489827503526190.Spec : Prop :=
  ∀ n, P2291489827503526190.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P17745141288448820485

`A143545(A143545(2*(n+1))/2)`
-/

namespace A066560.P17745141288448820485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (SequenceMachineLib.roundAway ((A143545 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A066560.P17745141288448820485

namespace A066560

/-- `A143545(A143545(2*(n+1))/2)` -/
def P17745141288448820485.Spec : Prop :=
  ∀ n, P17745141288448820485.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P12820079618717920784

`A143545(A326584(2*(n+1))+n)`
-/

namespace A066560.P12820079618717920784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A326584 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A066560.P12820079618717920784

namespace A066560

/-- `A143545(A326584(2*(n+1))+n)` -/
def P12820079618717920784.Spec : Prop :=
  ∀ n, P12820079618717920784.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P267779015708246880

`A143545(A178915(2*n+1)-n)`
-/

namespace A066560.P267779015708246880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A178915 (2 * n + 1) - (n : ℤ)).toNat

end

end A066560.P267779015708246880

namespace A066560

/-- `A143545(A178915(2*n+1)-n)` -/
def P267779015708246880.Spec : Prop :=
  ∀ n, P267779015708246880.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P12632366873756431185

`A178915(A143545(n+1)+n)-n`
-/

namespace A066560.P12632366873756431185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 (A143545 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A066560.P12632366873756431185

namespace A066560

/-- `A178915(A143545(n+1)+n)-n` -/
def P12632366873756431185.Spec : Prop :=
  ∀ n, P12632366873756431185.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P4165441308433237717

`A143545(A143545(n+1)+A061228(n+1))-A061228(n+1)`
-/

namespace A066560.P4165441308433237717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A143545 (n + 1) + A061228 (n + 1)).toNat - A061228 (n + 1)

end

end A066560.P4165441308433237717

namespace A066560

/-- `A143545(A143545(n+1)+A061228(n+1))-A061228(n+1)` -/
def P4165441308433237717.Spec : Prop :=
  ∀ n, P4165441308433237717.a n = A066560 (n + 1)

end A066560

/-! ## A066560.P12056562316673550290

`A143545(A233583(n+2))`
-/

namespace A066560.P12056562316673550290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A233583 (n + 2)).toNat

end

end A066560.P12056562316673550290

namespace A066560

/-- `A143545(A233583(n+2))` -/
def P12056562316673550290.Spec : Prop :=
  ∀ n, P12056562316673550290.a n = A066560 (n + 1)

end A066560

/-!
# A066561: a(n) is the smallest triangular number divisible by n.

The programs for A066561, there is no canonical definition to state claims against.
-/

/-! ## A066561.P5885284331712249305

`A000217(A011772(n+1))`
-/

namespace A066561.P5885284331712249305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A011772 (n + 1)).toNat

end

end A066561.P5885284331712249305

/-! ## A066561.P9336076791864166476

`A344005(2*(n+1))*(A344005(2*(n+1))+1)/2`
-/

namespace A066561.P9336076791864166476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (2 * (n + 1)) * (A344005 (2 * (n + 1)) + 1) : ℚ) / 2

end

end A066561.P9336076791864166476

/-! ## A066561.P5142270156499546052

`C(A321366(n+1), 2)`
-/

namespace A066561.P5142270156499546052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321366 (n + 1)).toNat 2

end

end A066561.P5142270156499546052

/-! ## A066561.P1481879790977362352

`(n+1)*A061782(n+1)`
-/

namespace A066561.P1481879790977362352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061782 (n + 1)

end

end A066561.P1481879790977362352

/-! ## A066561.P10737993922022037775

`A000217(A321366(n+1)-1)`
-/

namespace A066561.P10737993922022037775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A321366 (n + 1) - 1).toNat

end

end A066561.P10737993922022037775

/-! ## A066561.P107037730678864966

`A000217(A081467(n+1)-(n+1))`
-/

namespace A066561.P107037730678864966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A081467 (n + 1) - (n + 1 : ℤ)).toNat

end

end A066561.P107037730678864966

/-! ## A066561.P8772725436317141009

`A000217(1-A344763(n+1)+n)`
-/

namespace A066561.P8772725436317141009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (1 - A344763 (n + 1) + (n : ℤ)).toNat

end

end A066561.P8772725436317141009

/-! ## A066561.P10905450824981394825

`A343996(n+1)/2*A343997(n+1)`
-/

namespace A066561.P10905450824981394825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343996 (n + 1) : ℚ) / 2 * (A343997 (n + 1) : ℚ)

end

end A066561.P10905450824981394825

/-! ## A066561.P10804607097601177366

`A000217(A047994(n+1)-A344874(n+1))`
-/

namespace A066561.P10804607097601177366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047994 (n + 1) - A344874 (n + 1)).toNat

end

end A066561.P10804607097601177366

/-! ## A066561.P3995069416766876677

`A000217(A343997(n+1)-A343999(n+1))`
-/

namespace A066561.P3995069416766876677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A343997 (n + 1) - A343999 (n + 1)).toNat

end

end A066561.P3995069416766876677

/-! ## A066561.P14034297722117987680

`A000217(A344875(n+1)-A344876(n+1))`
-/

namespace A066561.P14034297722117987680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A344875 (n + 1) - A344876 (n + 1)).toNat

end

end A066561.P14034297722117987680

/-! ## A066561.P5575070477904295089

`A000217(A344878(n+1)-A344976(n+1))`
-/

namespace A066561.P5575070477904295089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A344878 (n + 1) - A344976 (n + 1)).toNat

end

end A066561.P5575070477904295089

/-! ## A066561.P9674122747760228754

`A161680(A321366(n+1))`
-/

namespace A066561.P9674122747760228754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A321366 (n + 1)).toNat

end

end A066561.P9674122747760228754

/-! ## A066561.P18079126610388354477

`A000096(A011772(n+1)-1)+1`
-/

namespace A066561.P18079126610388354477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A011772 (n + 1) - 1).toNat + 1

end

end A066561.P18079126610388354477

/-! ## A066561.P12010535173672955748

`A000096(A321366(n+1)-2)+1`
-/

namespace A066561.P12010535173672955748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A321366 (n + 1) - 2).toNat + 1

end

end A066561.P12010535173672955748

/-! ## A066561.P2205144299474233874

`A000124(A321366(n+1)-1)-1`
-/

namespace A066561.P2205144299474233874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A321366 (n + 1) - 1).toNat - 1

end

end A066561.P2205144299474233874

/-! ## A066561.P9197652492161918835

`A002378(A000203(n+1)-A344765(n+1))/2`
-/

namespace A066561.P9197652492161918835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A000203 (n + 1) - A344765 (n + 1)).toNat : ℚ) / 2

end

end A066561.P9197652492161918835

/-! ## A066561.P1974237765880274856

`A345988(2*(n+1))/2`
-/

namespace A066561.P1974237765880274856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345988 (2 * (n + 1)) : ℚ) / 2

end

end A066561.P1974237765880274856

/-! ## A066561.P15833896092780301064

`C(A344005(2*(n+1))+1, 2)`
-/

namespace A066561.P15833896092780301064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344005 (2 * (n + 1)) + 1).toNat 2

end

end A066561.P15833896092780301064

/-! ## A066561.P6505332025412050001

`(n+1)*A344006(2*(n+1))`
-/

namespace A066561.P6505332025412050001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A344006 (2 * (n + 1))

end

end A066561.P6505332025412050001

/-!
# A066562: Smallest Bell number (A000110) divisible by n, if such a number exists, otherwise 0.

The programs for A066562, there is no canonical definition to state claims against.
-/

/-! ## A066562.P11200950912468130074

`A000110(A327432(n+1))%A327432(3*(n+1))!`
-/

namespace A066562.P11200950912468130074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 (A327432 (n + 1)).toNat) (Nat.factorial (A327432 (3 * (n + 1))).toNat : ℤ)

end

end A066562.P11200950912468130074

/-! ## A066562.P2896597764880338849

`A073877(∑[∑[A015159(n)]])`
-/

namespace A066562.P2896597764880338849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066562.P2896597764880338849

/-!
# A066563: Smallest Catalan number (A000108) divisible by n.

The programs for A066563, there is no canonical definition to state claims against.
-/

/-! ## A066563.P11296386593726685256

`A000108(A309364(n+1))`
-/

namespace A066563.P11296386593726685256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A309364 (n + 1)).toNat

end

end A066563.P11296386593726685256

/-! ## A066563.P4673997563634703243

`A120588(A309364(n+1)+1)`
-/

namespace A066563.P4673997563634703243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A309364 (n + 1) + 1).toNat

end

end A066563.P4673997563634703243

/-! ## A066563.P14511964202299049577

`A028303(2*A309364(n+1))`
-/

namespace A066563.P14511964202299049577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * A309364 (n + 1)).toNat

end

end A066563.P14511964202299049577

/-! ## A066563.P16269194444239217797

`A028304(2*A309364(n+1))`
-/

namespace A066563.P16269194444239217797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * A309364 (n + 1)).toNat

end

end A066563.P16269194444239217797

/-! ## A066563.P7936555070531715830

`A126120(2*A309364(n+1))`
-/

namespace A066563.P7936555070531715830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * A309364 (n + 1)).toNat

end

end A066563.P7936555070531715830

/-!
# A066564: Numbers that when incremented by the sum of their digits produce a square.

The programs for A066564, there is no canonical definition to state claims against.
-/

/-! ## A066564.P13272068690440920571

`lt[0, A000122(A062028(n))]`
-/

namespace A066564.P13272068690440920571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066564.P13272068690440920571

/-! ## A066564.P11017191174241664402

`eq[1, A191387(A160939(n+1))]`
-/

namespace A066564.P11017191174241664402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191387 (A160939 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066564.P11017191174241664402

/-! ## A066564.P5622201569787752862

`eq[1, A010052(A007953(n)+n)]`
-/

namespace A066564.P5622201569787752862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066564.P5622201569787752862

/-! ## A066564.P12874284367251564610

`eq[1, A169695(A007953(n)+n)]`
-/

namespace A066564.P12874284367251564610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066564.P12874284367251564610

/-! ## A066564.P6622317378496946058

`eq[1, A249111(A007953(n)+n)]`
-/

namespace A066564.P6622317378496946058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066564.P6622317378496946058

/-! ## A066564.P6721665912032412344

`lt[A002828(A007953(n)+n), 2]`
-/

namespace A066564.P6721665912032412344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007953 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066564.P6721665912032412344

/-! ## A066564.P13678311140377321466

`eq[A002828(A062028(n)), A057427(n)]`
-/

namespace A066564.P13678311140377321466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066564.P13678311140377321466

/-! ## A066564.P2341692958599490111

`eq[A000007(n), A267635(A062028(n))]`
-/

namespace A066564.P2341692958599490111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066564.P2341692958599490111

/-! ## A066564.P14110299667121276692

`eq[1, A007913(A028310(A007953(n)+n))]`
-/

namespace A066564.P14110299667121276692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 (A007953 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066564.P14110299667121276692

/-!
# A066565: Numbers that when multiplied by the product of their nonzero digits produce a square.

The programs for A066565, there is no canonical definition to state claims against.
-/

/-! ## A066565.P12452279305850934939

`eq[A054977(n), A169695(A230101(n))]`
-/

namespace A066565.P12452279305850934939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066565.P12452279305850934939

/-! ## A066565.P16267930063818040134

`eq[A057427(n), A169695(A230101(n))]`
-/

namespace A066565.P16267930063818040134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066565.P16267930063818040134

/-! ## A066565.P11089490459463181215

`eq[1, A002828(A230101(n))]`
-/

namespace A066565.P11089490459463181215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066565.P11089490459463181215

/-! ## A066565.P10131445260584701396

`eq[1, A002828(n*A051801(n))]`
-/

namespace A066565.P10131445260584701396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n : ℤ) * A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066565.P10131445260584701396

/-!
# A066566: Numbers that when decremented by the sum of their digits produce a square.

The programs for A066566, the canonical program `A066566.P279150373663098236` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066566 has offset 1).

The definition of A066566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066566.P5043193165395794834

`eq[1, A010052(A054899(n))]`
-/

namespace A066566.P5043193165395794834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A054899 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P5043193165395794834

namespace A066566

/-- `eq[1, A010052(A054899(n))]` -/
def P5043193165395794834.Spec : Prop :=
  ∀ n, (P5043193165395794834.a n : ℤ) = A066566 (n + 1)

end A066566

/-! ## A066566.P279150373663098236

`eq[1, A053186(A066568(n))+1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066566

/-- `eq[1, A053186(A066568(n))+1]` -/
def P279150373663098236.Spec : Prop :=
  ∀ n, (P279150373663098236.a n : ℤ) = A066566 (n + 1)

theorem P279150373663098236.correct : P279150373663098236.Spec := by
  intro n
  simp only [A066566, Nat.add_sub_cancel]

end A066566

/-! ## A066566.P14924916438003087842

`eq[1, A010052(n-A007953(n))]`
-/

namespace A066566.P14924916438003087842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P14924916438003087842

namespace A066566

/-- `eq[1, A010052(n-A007953(n))]` -/
def P14924916438003087842.Spec : Prop :=
  ∀ n, (P14924916438003087842.a n : ℤ) = A066566 (n + 1)

end A066566

/-! ## A066566.P11524622828314190768

`eq[1, A169695(n-A007953(n))]`
-/

namespace A066566.P11524622828314190768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 ((n : ℤ) - A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P11524622828314190768

namespace A066566

/-- `eq[1, A169695(n-A007953(n))]` -/
def P11524622828314190768.Spec : Prop :=
  ∀ n, (P11524622828314190768.a n : ℤ) = A066566 (n + 1)

end A066566

/-! ## A066566.P9776592390624113593

`eq[1, A249111(n-A007953(n))]`
-/

namespace A066566.P9776592390624113593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 ((n : ℤ) - A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P9776592390624113593

namespace A066566

/-- `eq[1, A249111(n-A007953(n))]` -/
def P9776592390624113593.Spec : Prop :=
  ∀ n, (P9776592390624113593.a n : ℤ) = A066566 (n + 1)

end A066566

/-! ## A066566.P16009346570621347334

`lt[A002828(n-A007953(n)), 2]`
-/

namespace A066566.P16009346570621347334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n : ℤ) - A007953 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066566.P16009346570621347334

namespace A066566

/-- `lt[A002828(n-A007953(n)), 2]` -/
def P16009346570621347334.Spec : Prop :=
  ∀ n, (P16009346570621347334.a n : ℤ) = A066566 (n + 1)

end A066566

/-! ## A066566.P16857407974861137860

`record[n/A191387(1-A007953(n)+n)]`
-/

namespace A066566.P16857407974861137860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A191387 (1 - A007953 n + (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066566.P16857407974861137860

namespace A066566

/-- `record[n/A191387(1-A007953(n)+n)]` -/
def P16857407974861137860.Spec : Prop :=
  ∀ n, P16857407974861137860.a n = (A066566 (n + 1) : ℚ)

end A066566

/-!
# A066567: Numbers that when incremented by the product of their digits produce a square.

The programs for A066567, there is no canonical definition to state claims against.
-/

/-! ## A066567.P5228193326313912414

`eq[1, A002828(A230099(n))]`
-/

namespace A066567.P5228193326313912414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066567.P5228193326313912414

/-! ## A066567.P9656123745313511239

`eq[1, A053186(A230099(n)+1)]`
-/

namespace A066567.P9656123745313511239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A230099 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066567.P9656123745313511239

/-! ## A066567.P1015192064464158101

`eq[2, A000122(A007954(n)+n)]`
-/

namespace A066567.P1015192064464158101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066567.P1015192064464158101

/-! ## A066567.P2300937189660699164

`eq[A000007(n), A053186(A230099(n))]`
-/

namespace A066567.P2300937189660699164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066567.P2300937189660699164

/-! ## A066567.P13839183785210417153

`eq[A000038(n), A053186(A230099(n))]`
-/

namespace A066567.P13839183785210417153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066567.P13839183785210417153

/-! ## A066567.P17200030849269788388

`eq[A010052(A230099(n)), A054977(n)]`
-/

namespace A066567.P17200030849269788388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066567.P17200030849269788388

/-! ## A066567.P1180153236394220046

`eq[A010052(A230099(n)), A057427(n)]`
-/

namespace A066567.P1180153236394220046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066567.P1180153236394220046

/-! ## A066567.P3000136258099494842

`eq[A010052(A230099(n)), A019426(2*n)]`
-/

namespace A066567.P3000136258099494842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066567.P3000136258099494842

/-!
# A066568: a(n) = n - sum of digits of n.

The programs for A066568, the canonical program `A066568.P13231785495272772944` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066568 has offset 0).

The definition of A066568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066568.P13231785495272772944

`n-∑{digits}[n, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066568

/-- `n-∑{digits}[n, #]` -/
def P13231785495272772944.Spec : Prop :=
  ∀ n, P13231785495272772944.a n = A066568 n

theorem P13231785495272772944.correct : P13231785495272772944.Spec := by
  intro n
  simp only [A066568]

end A066568

/-! ## A066568.P17622622525584174077

`n-log2(∏{digits}[n, 2^#])`
-/

namespace A066568.P17622622525584174077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A066568.P17622622525584174077

namespace A066568

/-- `n-log2(∏{digits}[n, 2^#])` -/
def P17622622525584174077.Spec : Prop :=
  ∀ n, P17622622525584174077.a n = (A066568 n : ℝ)

end A066568

/-! ## A066568.P10268125187874881620

`xor(-1, ∑{digits}[n, #])+n+1`
-/

namespace A066568.P10268125187874881620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 1 : ℤ)

end

end A066568.P10268125187874881620

namespace A066568

/-- `xor(-1, ∑{digits}[n, #])+n+1` -/
def P10268125187874881620.Spec : Prop :=
  ∀ n, P10268125187874881620.a n = A066568 n

end A066568

/-! ## A066568.P5091955631542585090

`(n*(∑{digits}[n, #]+1))%(n+1)`
-/

namespace A066568.P5091955631542585090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1) % (n + 1)

end

end A066568.P5091955631542585090

namespace A066568

/-- `(n*(∑{digits}[n, #]+1))%(n+1)` -/
def P5091955631542585090.Spec : Prop :=
  ∀ n, (P5091955631542585090.a n : ℤ) = A066568 n

end A066568

/-! ## A066568.P4332679235208527991

`Δ[n²]%(∑{digits}[n, #]+1+n)`
-/

namespace A066568.P4332679235208527991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ)

end

end A066568.P4332679235208527991

namespace A066568

/-- `Δ[n²]%(∑{digits}[n, #]+1+n)` -/
def P4332679235208527991.Spec : Prop :=
  ∀ n, P4332679235208527991.a n = A066568 n

end A066568

/-! ## A066568.P4044577674529166387

`9*A054899(n)`
-/

namespace A066568.P4044577674529166387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A054899 n

end

end A066568.P4044577674529166387

namespace A066568

/-- `9*A054899(n)` -/
def P4044577674529166387.Spec : Prop :=
  ∀ n, P4044577674529166387.a n = A066568 n

end A066568

/-! ## A066568.P9469533663660008085

`n-A007953(n)`
-/

namespace A066568.P9469533663660008085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 n

end

end A066568.P9469533663660008085

namespace A066568

/-- `n-A007953(n)` -/
def P9469533663660008085.Spec : Prop :=
  ∀ n, P9469533663660008085.a n = A066568 n

end A066568

/-! ## A066568.P13562954515119988775

`n-sqrt(A118881(n))`
-/

namespace A066568.P13562954515119988775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A118881 n : ℝ)

end

end A066568.P13562954515119988775

namespace A066568

/-- `n-sqrt(A118881(n))` -/
def P13562954515119988775.Spec : Prop :=
  ∀ n, P13562954515119988775.a n = (A066568 n : ℝ)

end A066568

/-! ## A066568.P6924027771231976822

`n-log2(A329562(n))`
-/

namespace A066568.P6924027771231976822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A329562 n : ℝ)

end

end A066568.P6924027771231976822

namespace A066568

/-- `n-log2(A329562(n))` -/
def P6924027771231976822.Spec : Prop :=
  ∀ n, P6924027771231976822.a n = (A066568 n : ℝ)

end A066568

/-! ## A066568.P1074272836003998560

`A160941(n+1)-1`
-/

namespace A066568.P1074272836003998560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1) - 1

end

end A066568.P1074272836003998560

namespace A066568

/-- `A160941(n+1)-1` -/
def P1074272836003998560.Spec : Prop :=
  ∀ n, P1074272836003998560.a n = A066568 n

end A066568

/-! ## A066568.P11820259779688024939

`2*n-A062028(n)`
-/

namespace A066568.P11820259779688024939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A062028 n

end

end A066568.P11820259779688024939

namespace A066568

/-- `2*n-A062028(n)` -/
def P11820259779688024939.Spec : Prop :=
  ∀ n, P11820259779688024939.a n = A066568 n

end A066568

/-! ## A066568.P326079007711351303

`n-A169805(n)/2`
-/

namespace A066568.P326079007711351303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A169805 n : ℚ) / 2

end

end A066568.P326079007711351303

namespace A066568

/-- `n-A169805(n)/2` -/
def P326079007711351303.Spec : Prop :=
  ∀ n, P326079007711351303.a n = (A066568 n : ℚ)

end A066568

/-! ## A066568.P9675111198297765668

`A001489(∑{digits}[n, #])+n`
-/

namespace A066568.P9675111198297765668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + (n : ℤ)

end

end A066568.P9675111198297765668

namespace A066568

/-- `A001489(∑{digits}[n, #])+n` -/
def P9675111198297765668.Spec : Prop :=
  ∀ n, P9675111198297765668.a n = A066568 n

end A066568

/-! ## A066568.P10150359506372395616

`∑{digits}[n, A076313(#)]+n`
-/

namespace A066568.P10150359506372395616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A076313 x).sum + (n : ℤ)

end

end A066568.P10150359506372395616

namespace A066568

/-- `∑{digits}[n, A076313(#)]+n` -/
def P10150359506372395616.Spec : Prop :=
  ∀ n, P10150359506372395616.a n = A066568 n

end A066568

/-! ## A066568.P12055264326258137720

`∑{digits}[n, A187844(#)]+n`
-/

namespace A066568.P12055264326258137720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A187844 x).sum + (n : ℤ)

end

end A066568.P12055264326258137720

namespace A066568

/-- `∑{digits}[n, A187844(#)]+n` -/
def P12055264326258137720.Spec : Prop :=
  ∀ n, P12055264326258137720.a n = A066568 n

end A066568

/-! ## A066568.P4748652858234354597

`Δ[n²]-A160939(n+1)`
-/

namespace A066568.P4748652858234354597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A160939 (n + 1)

end

end A066568.P4748652858234354597

namespace A066568

/-- `Δ[n²]-A160939(n+1)` -/
def P4748652858234354597.Spec : Prop :=
  ∀ n, P4748652858234354597.a n = A066568 n

end A066568

/-! ## A066568.P15462417793775557225

`n-A160942(n+1)/(n+1)`
-/

namespace A066568.P15462417793775557225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066568.P15462417793775557225

namespace A066568

/-- `n-A160942(n+1)/(n+1)` -/
def P15462417793775557225.Spec : Prop :=
  ∀ n, P15462417793775557225.a n = (A066568 n : ℚ)

end A066568

/-! ## A066568.P8071003777271920530

`A008591(A054899(n))`
-/

namespace A066568.P8071003777271920530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A054899 n).toNat

end

end A066568.P8071003777271920530

namespace A066568

/-- `A008591(A054899(n))` -/
def P8071003777271920530.Spec : Prop :=
  ∀ n, P8071003777271920530.a n = A066568 n

end A066568

/-! ## A066568.P2363570502680546814

`A249121(n)+A007954(n)`
-/

namespace A066568.P2363570502680546814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n + A007954 n

end

end A066568.P2363570502680546814

namespace A066568

/-- `A249121(n)+A007954(n)` -/
def P2363570502680546814.Spec : Prop :=
  ∀ n, P2363570502680546814.a n = A066568 n

end A066568

/-! ## A066568.P8879947481208015339

`A070565(n)-A062329(n)`
-/

namespace A066568.P8879947481208015339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n - A062329 n

end

end A066568.P8879947481208015339

namespace A066568

/-- `A070565(n)-A062329(n)` -/
def P8879947481208015339.Spec : Prop :=
  ∀ n, P8879947481208015339.a n = A066568 n

end A066568

/-!
# A066569: Triangular numbers whose reverse is also triangular.

The programs for A066569, there is no canonical definition to state claims against.
-/

/-! ## A066569.P6738994867814193245

`∩[A061455(n+1), A074899(n+1)]`
-/

namespace A066569.P6738994867814193245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066569.P6738994867814193245

/-! ## A066569.P2979241637002721523

`filter[A061455(n+1), A168184(#)]`
-/

namespace A066569.P2979241637002721523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A066569.P2979241637002721523

/-! ## A066569.P12675427007364393281

`filter[A069708(n+1), A179775(#)]`
-/

namespace A066569.P12675427007364393281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A066569.P12675427007364393281

/-! ## A066569.P6330600796378232930

`filter[A061455(n+2), A179775(#)]`
-/

namespace A066569.P6330600796378232930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A066569.P6330600796378232930

/-! ## A066569.P5895306488726370100

`filter[A061455(n+2), A209929(#)]`
-/

namespace A066569.P5895306488726370100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A066569.P5895306488726370100

/-!
# A066570: Product of numbers <= n that have a prime factor in common with n.

The programs for A066570, there is no canonical definition to state claims against.
-/

/-! ## A066570.P3832680941817305134

`(n+1)!/A001783(n+1)`
-/

namespace A066570.P3832680941817305134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)

end

end A066570.P3832680941817305134

/-! ## A066570.P5923824710376803590

`A007955(n+1)*A070251(n+1)`
-/

namespace A066570.P5923824710376803590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A070251 (n + 1)

end

end A066570.P5923824710376803590

/-! ## A066570.P9628647837960300745

`A381674(n+1)*A393923(n+1)`
-/

namespace A066570.P9628647837960300745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381674 (n + 1) * A393923 (n + 1)

end

end A066570.P9628647837960300745

/-! ## A066570.P2192767693927207841

`lcm(A051696(n+1), A070251(n+1))`
-/

namespace A066570.P2192767693927207841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051696 (n + 1)) (A070251 (n + 1))

end

end A066570.P2192767693927207841

/-! ## A066570.P9172243736732228566

`A007955(n+1)/A001783(n+1)*A055067(n+1)`
-/

namespace A066570.P9172243736732228566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (A055067 (n + 1) : ℚ)

end

end A066570.P9172243736732228566

/-! ## A066570.P5456144681290199344

`record[A094587(n)]/A001783(n+1)`
-/

namespace A066570.P5456144681290199344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001783 (n + 1) : ℚ)

end

end A066570.P5456144681290199344

/-! ## A066570.P4483398464313757169

`record[A098361(n)]/A001783(n+1)`
-/

namespace A066570.P4483398464313757169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001783 (n + 1) : ℚ)

end

end A066570.P4483398464313757169

/-! ## A066570.P8030450234506033580

`A000142(n+1)/A001783(n+1)`
-/

namespace A066570.P8030450234506033580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)

end

end A066570.P8030450234506033580

/-! ## A066570.P12802787588888261164

`A110376(n+1)/A056855(n+1)`
-/

namespace A066570.P12802787588888261164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 1) : ℚ) / (A056855 (n + 1) : ℚ)

end

end A066570.P12802787588888261164

/-!
# A066571: Number of sets of positive integers with arithmetic mean n.

The programs for A066571, there is no canonical definition to state claims against.
-/

/-! ## A066571.P92958408829254996

`A066572(2^n)`
-/

namespace A066571.P92958408829254996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066572 (2 ^ n)

end

end A066571.P92958408829254996

/-! ## A066571.P12274047081502205375

`or(1, A066572(A000079(n)))`
-/

namespace A066571.P12274047081502205375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A066572 (A000079 n).toNat)

end

end A066571.P12274047081502205375

/-! ## A066571.P3935558016427754046

`or(1, A066572(A219615(n)))`
-/

namespace A066571.P3935558016427754046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A066572 (A219615 n).toNat)

end

end A066571.P3935558016427754046

/-! ## A066571.P15167381861510533898

`A066572(A000079(n))+A000007(2*n+1)`
-/

namespace A066571.P15167381861510533898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066572 (A000079 n).toNat + A000007 (2 * n + 1)

end

end A066571.P15167381861510533898

/-!
# A066572: Number of sets of distinct positive integers with geometric mean n.

The programs for A066572, there is no canonical definition to state claims against.
-/

/-! ## A066572.P10117991825925430933

`C(2*n, A239086(a(n-1)+2))+3` with `a(0)=1`
-/

namespace A066572.P10117991825925430933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) (A239086 (a (n - 1) + 2)).toNat + 3

end

end A066572.P10117991825925430933

/-! ## A066572.P16275657440359623500

`abs(A348608(A074612(n)))`
-/

namespace A066572.P16275657440359623500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A348608 (A074612 n).toNat|

end

end A066572.P16275657440359623500

/-!
# A066573: Pairs (x, y), x < y, of f-amicable numbers where f(k) = floor(|k*sin(k)|) sorted by increasing y, then increasing x; f-amicable numbers are defined in A066511.

The programs for A066573, there is no canonical definition to state claims against.
-/

/-! ## A066573.P2233145321286416713

`A094559(n)+A036884(A094541(n))`
-/

namespace A066573.P2233145321286416713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094559 n + A036884 (A094541 n).toNat

end

end A066573.P2233145321286416713

/-!
# A066574: LCM of numbers <= n and having a factor in common with n.

The programs for A066574, there is no canonical definition to state claims against.
-/

/-! ## A066574.P2941231113570529048

`lcm(n+1, A066575(n+1))`
-/

namespace A066574.P2941231113570529048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A066575 (n + 1))

end

end A066574.P2941231113570529048

/-! ## A066574.P16661029262308852363

`lcm(A002944(A032742(n+1)), A064446(n+1))`
-/

namespace A066574.P16661029262308852363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002944 (A032742 (n + 1)).toNat) (A064446 (n + 1))

end

end A066574.P16661029262308852363

/-! ## A066574.P722225579147001593

`gcd(A066575(n+1), A095996(n+1))*A064446(n+1)`
-/

namespace A066574.P722225579147001593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A066575 (n + 1)) (A095996 (n + 1)) : ℤ) * A064446 (n + 1)

end

end A066574.P722225579147001593

/-! ## A066574.P12117487963953477272

`lcm(A066575(A077168(n)), A077168(n))`
-/

namespace A066574.P12117487963953477272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066575 (A077168 n).toNat) (A077168 n)

end

end A066574.P12117487963953477272

/-! ## A066574.P12587165955760260303

`gcd(A066570(n+1), A135503(A070198(n)))`
-/

namespace A066574.P12587165955760260303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066570 (n + 1)) (A135503 (A070198 n).toNat)

end

end A066574.P12587165955760260303

/-!
# A066575: LCM of numbers m such that 1 <= m <= n, m has a common factor with n, but m does not divide n.

The programs for A066575, there is no canonical definition to state claims against.
-/

/-! ## A066575.P6317138227902389722

`gcd(A066574(n+1), A067391(n+1))`
-/

namespace A066575.P6317138227902389722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066574 (n + 1)) (A067391 (n + 1))

end

end A066575.P6317138227902389722

/-! ## A066575.P13956249304133128958

`A066574(n+1)/A003418(n+1)*A067391(n+1)`
-/

namespace A066575.P13956249304133128958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066574 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A067391 (n + 1) : ℚ)

end

end A066575.P13956249304133128958

/-! ## A066575.P3847998937451906881

`gcd(A004526(A052762(n)), A070251(n+1))`
-/

namespace A066575.P3847998937451906881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (A052762 n).toNat) (A070251 (n + 1))

end

end A066575.P3847998937451906881

/-!
# A066576: Composite Euclid numbers: numbers of the form p# + 1, where p# denotes the primorial of the prime p.

The programs for A066576, there is no canonical definition to state claims against.
-/

/-! ## A066576.P5422046366071710001

`A002110(A162706(n+3))+1`
-/

namespace A066576.P5422046366071710001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A162706 (n + 3)).toNat + 1

end

end A066576.P5422046366071710001

/-! ## A066576.P5337633504453918066

`A006862(A020753(n+6))`
-/

namespace A066576.P5337633504453918066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (A020753 (n + 6)).toNat

end

end A066576.P5337633504453918066

/-!
# A066577: a(n) = floor(n/(product of nonzero digits of n)).

The programs for A066577, the canonical program `A066577.P5294432664984290938` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066577 has offset 1).

The definition of A066577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066577.P5294432664984290938

`floor((n+1)/A051801(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066577

/-- `floor((n+1)/A051801(n+1))` -/
def P5294432664984290938.Spec : Prop :=
  ∀ n, P5294432664984290938.a n = A066577 (n + 1)

theorem P5294432664984290938.correct : P5294432664984290938.Spec := by
  intro n
  simp only [A066577, Nat.add_sub_cancel]

end A066577

/-! ## A066577.P16397283245014766723

`floor((n+1)/sqrt(A352598(n+1)))`
-/

namespace A066577.P16397283245014766723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (A352598 (n + 1) : ℝ)⌋

end

end A066577.P16397283245014766723

namespace A066577

/-- `floor((n+1)/sqrt(A352598(n+1)))` -/
def P16397283245014766723.Spec : Prop :=
  ∀ n, P16397283245014766723.a n = A066577 (n + 1)

end A066577

/-! ## A066577.P4227388490884861

`floor((n+1)²/A230101(n+1))`
-/

namespace A066577.P4227388490884861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A230101 (n + 1) : ℚ)⌋

end

end A066577.P4227388490884861

namespace A066577

/-- `floor((n+1)²/A230101(n+1))` -/
def P4227388490884861.Spec : Prop :=
  ∀ n, P4227388490884861.a n = A066577 (n + 1)

end A066577

/-!
# A066578: a(n) = floor(n/(sum of digits of n)).

The programs for A066578, the canonical program `A066578.P15388858903670533530` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066578 has offset 1).

The definition of A066578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066578.P15388858903670533530

`floor((n+1)/∑{digits}[n+1, #])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066578

/-- `floor((n+1)/∑{digits}[n+1, #])` -/
def P15388858903670533530.Spec : Prop :=
  ∀ n, P15388858903670533530.a n = A066578 (n + 1)

theorem P15388858903670533530.correct : P15388858903670533530.Spec := by
  intro n
  simp only [A066578, Nat.add_sub_cancel]

end A066578

/-! ## A066578.P11447603839941058731

`ceil((n+2)/∑{digits}[n+1, #])-1`
-/

namespace A066578.P11447603839941058731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ)⌉ - 1

end

end A066578.P11447603839941058731

namespace A066578

/-- `ceil((n+2)/∑{digits}[n+1, #])-1` -/
def P11447603839941058731.Spec : Prop :=
  ∀ n, P11447603839941058731.a n = A066578 (n + 1)

end A066578

/-! ## A066578.P14004511052148031310

`floor((n+1)/log(∏{digits}[n+1, exp(#)]))`
-/

namespace A066578.P14004511052148031310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod⌋

end

end A066578.P14004511052148031310

namespace A066578

/-- `floor((n+1)/log(∏{digits}[n+1, exp(#)]))` -/
def P14004511052148031310.Spec : Prop :=
  ∀ n, P14004511052148031310.a n = A066578 (n + 1)

end A066578

/-! ## A066578.P2761270928470155506

`floor((n+1)/Δ[A037123(n)])`
-/

namespace A066578.P2761270928470155506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A066578.P2761270928470155506

namespace A066578

/-- `floor((n+1)/Δ[A037123(n)])` -/
def P2761270928470155506.Spec : Prop :=
  ∀ n, P2761270928470155506.a n = A066578 (n + 1)

end A066578

/-! ## A066578.P625165032948750785

`floor((n+1)/A007953(n+1))`
-/

namespace A066578.P625165032948750785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A007953 (n + 1) : ℚ)⌋

end

end A066578.P625165032948750785

namespace A066578

/-- `floor((n+1)/A007953(n+1))` -/
def P625165032948750785.Spec : Prop :=
  ∀ n, P625165032948750785.a n = A066578 (n + 1)

end A066578

/-! ## A066578.P9977777620407444510

`floor((n+1)/sqrt(A118881(n+1)))`
-/

namespace A066578.P9977777620407444510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (A118881 (n + 1) : ℝ)⌋

end

end A066578.P9977777620407444510

namespace A066578

/-- `floor((n+1)/sqrt(A118881(n+1)))` -/
def P9977777620407444510.Spec : Prop :=
  ∀ n, P9977777620407444510.a n = A066578 (n + 1)

end A066578

/-! ## A066578.P11597940781197216066

`floor(A065517(n+1)/A065518(n+1))`
-/

namespace A066578.P11597940781197216066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065517 (n + 1) : ℚ) / (A065518 (n + 1) : ℚ)⌋

end

end A066578.P11597940781197216066

namespace A066578

/-- `floor(A065517(n+1)/A065518(n+1))` -/
def P11597940781197216066.Spec : Prop :=
  ∀ n, P11597940781197216066.a n = A066578 (n + 1)

end A066578

/-! ## A066578.P2949428140288466453

`(n+1-A070635(n+1))/A007953(n+1)`
-/

namespace A066578.P2949428140288466453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A070635 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A066578.P2949428140288466453

namespace A066578

/-- `(n+1-A070635(n+1))/A007953(n+1)` -/
def P2949428140288466453.Spec : Prop :=
  ∀ n, P2949428140288466453.a n = (A066578 (n + 1) : ℚ)

end A066578

/-! ## A066578.P5497654330358499069

`(A000027(n+1)-(n+1)%∑{digits}[n+1, #])/A007953(n+1)`
-/

namespace A066578.P5497654330358499069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (((n + 1) % ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A066578.P5497654330358499069

namespace A066578

/-- `(A000027(n+1)-(n+1)%∑{digits}[n+1, #])/A007953(n+1)` -/
def P5497654330358499069.Spec : Prop :=
  ∀ n, P5497654330358499069.a n = (A066578 (n + 1) : ℚ)

end A066578

/-! ## A066578.P13839905931490838409

`(n+1-A254667(n+1)%A007953(n+1))/A007953(n+1)`
-/

namespace A066578.P13839905931490838409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - Int.tmod (A254667 (n + 1)) (A007953 (n + 1)) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A066578.P13839905931490838409

namespace A066578

/-- `(n+1-A254667(n+1)%A007953(n+1))/A007953(n+1)` -/
def P13839905931490838409.Spec : Prop :=
  ∀ n, P13839905931490838409.a n = (A066578 (n + 1) : ℚ)

end A066578

/-! ## A066578.P4480170878595418000

`(n+1-A001057(2*n+1)%A007953(n+1))/A007953(n+1)`
-/

namespace A066578.P4480170878595418000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - Int.tmod (A001057 (2 * n + 1)) (A007953 (n + 1)) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A066578.P4480170878595418000

namespace A066578

/-- `(n+1-A001057(2*n+1)%A007953(n+1))/A007953(n+1)` -/
def P4480170878595418000.Spec : Prop :=
  ∀ n, P4480170878595418000.a n = (A066578 (n + 1) : ℚ)

end A066578

/-!
# A066581: Product of nonzero digits of A066547(n).

The programs for A066581, there is no canonical definition to state claims against.
-/

/-! ## A066581.P6511503342264317655

`∏{digits}[A066547(n+1), A028310(#)]`
-/

namespace A066581.P6511503342264317655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A066581.P6511503342264317655

/-!
# A066582: Product of nonzero digits of A066549(n).

The programs for A066582, there is no canonical definition to state claims against.
-/

/-! ## A066582.P1209182522147828735

`∏{digits}[A066549(n+1), A028310(#)]`
-/

namespace A066582.P1209182522147828735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A066582.P1209182522147828735

/-! ## A066582.P4139644168248541942

`∏{digits}[A066549(A032555(n+1)), #]`
-/

namespace A066582.P4139644168248541942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066549 (A032555 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A066582.P4139644168248541942

/-! ## A066582.P3898700977547257134

`A000027(∏{digits}[A066549(n+1), #])`
-/

namespace A066582.P3898700977547257134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A066582.P3898700977547257134

/-!
# A066583: Product of nonzero digits of A066551(n).

The programs for A066583, there is no canonical definition to state claims against.
-/

/-! ## A066583.P14485388881580416365

`∏{digits}[A066551(n+1), A028310(#)]`
-/

namespace A066583.P14485388881580416365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A066583.P14485388881580416365

/-!
# A066584: Product of nonzero digits of A066553(n).

The programs for A066584, there is no canonical definition to state claims against.
-/

/-! ## A066584.P12566259240957450562

`∏{digits}[A066553(n+1), A028310(#)]`
-/

namespace A066584.P12566259240957450562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A066584.P12566259240957450562

/-! ## A066584.P17042904235625946812

`∏{digits}[A066553(n+1), #]^A213217(n)`
-/

namespace A066584.P17042904235625946812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066553 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℚ) ^ (A213217 n : ℤ)

end

end A066584.P17042904235625946812

/-! ## A066584.P9131901192266507679

`A000027(∏{digits}[A066553(n+1), #])`
-/

namespace A066584.P9131901192266507679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A066584.P9131901192266507679

/-! ## A066584.P12661002985922292901

`∏{digits}[A066553(n+1), #*A014963(A051959(n))]`
-/

namespace A066584.P12661002985922292901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A014963 (A051959 n).toNat).prod

end

end A066584.P12661002985922292901

/-!
# A066585: Product of nonzero digits of A066555(n).

The programs for A066585, there is no canonical definition to state claims against.
-/

/-! ## A066585.P7915063388606521524

`∏{digits}[A066555(n+1), A028310(#)]`
-/

namespace A066585.P7915063388606521524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A066585.P7915063388606521524

/-!
# A066586: Number of normal subgroups of the group of n X n signed permutations matrices (described in sequence A066051).

The programs for A066586, the canonical program `A066586.P489362972348598305` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066586 has offset 1).

The definition of A066586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066586.P489362972348598305

`a(n-1)` with `a(0)=2, a(1)=6, a(2)=9, a(3)=11, a(4)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066586

/-- `a(n-1)` -/
def P489362972348598305.Spec : Prop :=
  ∀ n, (P489362972348598305.a n : ℤ) = A066586 (n + 1)

theorem P489362972348598305.correct : P489362972348598305.Spec := by
  intro n
  simp only [A066586, Nat.add_sub_cancel]

end A066586

/-!
# A066588: a(n) = sum of the digits of n^n.

The programs for A066588, there is no canonical definition to state claims against.
-/

/-! ## A066588.P17939806879614235346

`∑{digits}[n^n, #]`
-/

namespace A066588.P17939806879614235346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066588.P17939806879614235346

/-! ## A066588.P16886544211130646819

`A000027(∑{digits}[A000312(n), #])`
-/

namespace A066588.P16886544211130646819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066588.P16886544211130646819

/-! ## A066588.P5448981587369051772

`A028310(∑{digits}[A000312(n), #])`
-/

namespace A066588.P5448981587369051772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066588.P5448981587369051772

/-! ## A066588.P2005427965419543126

`log2(∏{digits}[n^n, 2^#])`
-/

namespace A066588.P2005427965419543126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A066588.P2005427965419543126

/-! ## A066588.P16590511396422682098

`A118759(∑{digits}[A000312(n), #])`
-/

namespace A066588.P16590511396422682098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066588.P16590511396422682098

/-!
# A066589: Let u_n be the group of units mod n (invertible elements in the ring Z_n); a(n) is the number of cyclic subgroups in u_n.

The programs for A066589, there is no canonical definition to state claims against.
-/

/-! ## A066589.P15501757278788302876

`A327925(A162578(n+1))`
-/

namespace A066589.P15501757278788302876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327925 (A162578 (n + 1)).toNat

end

end A066589.P15501757278788302876

/-! ## A066589.P11092591316552065060

`A327925(∑[A002322(n+1)])`
-/

namespace A066589.P11092591316552065060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066589.P11092591316552065060

/-! ## A066589.P14166908012577852986

`A327925(∑[A263027(n+1)-1])`
-/

namespace A066589.P14166908012577852986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066589.P14166908012577852986

/-! ## A066589.P2770477524192541980

`A327925(∑[A134198(n+1)-A051903(n+1)])`
-/

namespace A066589.P2770477524192541980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) - A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066589.P2770477524192541980

/-! ## A066589.P12310777253148435577

`∏{e}[A289625(n+1), A000005(#)]`
-/

namespace A066589.P12310777253148435577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A066589.P12310777253148435577

/-!
# A066591: Primes which can be expressed as a concatenation of nonnegative squares.

The programs for A066591, there is no canonical definition to state claims against.
-/

/-! ## A066591.P6603567947894125017

`p?[∪[A168042(n+1), A261713(n+1)]]`
-/

namespace A066591.P6603567947894125017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A066591.P6603567947894125017

/-! ## A066591.P7136356447771848448

`∪[A167535(n+1)%A106808(n+1), A061246(n+2)]`
-/

namespace A066591.P7136356447771848448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167535 (n + 1)) (A106808 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066591.P7136356447771848448

/-! ## A066591.P16477852051058690804

`∪[A167535(n+1), A061246(n+2)]%A323387(n+1)`
-/

namespace A066591.P16477852051058690804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A323387 (n + 1))

end

end A066591.P16477852051058690804

/-! ## A066591.P16682835076023255684

`p?[A166498(n+1)]`
-/

namespace A066591.P16682835076023255684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066591.P16682835076023255684

/-!
# A066592: Primes which can be expressed as concatenation of cubes.

The programs for A066592, there is no canonical definition to state claims against.
-/

/-! ## A066592.P13099416292323194404

`A137238(A137238(n+1)+A035618(3*n+2))`
-/

namespace A066592.P13099416292323194404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137238 (A137238 (n + 1) + A035618 (3 * n + 2)).toNat

end

end A066592.P13099416292323194404

/-!
# A066593: Primes which can be expressed as concatenation of powers of 2 and 0's.

The programs for A066593, there is no canonical definition to state claims against.
-/

/-! ## A066593.P693569749133772877

`A173580(A173588(∑[n]))`
-/

namespace A066593.P693569749133772877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066593.P693569749133772877

/-! ## A066593.P2544018154656135090

`A173580(A062399(n+1))`
-/

namespace A066593.P2544018154656135090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (A062399 (n + 1)).toNat

end

end A066593.P2544018154656135090

/-! ## A066593.P523596395046523890

`A173580(A351870(n+1))`
-/

namespace A066593.P523596395046523890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (A351870 (n + 1)).toNat

end

end A066593.P523596395046523890

/-! ## A066593.P16082826557104434504

`A126257(2*A173580(n+1))`
-/

namespace A066593.P16082826557104434504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (2 * A173580 (n + 1)).toNat

end

end A066593.P16082826557104434504

/-! ## A066593.P1567819245974546714

`∩[A173580(n+1), A032513(n)]`
-/

namespace A066593.P1567819245974546714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066593.P1567819245974546714

/-!
# A066594: Primes which can be expressed as concatenation of powers of 3 and 0's.

The programs for A066594, there is no canonical definition to state claims against.
-/

/-! ## A066594.P13426609963081203727

`A386026(A032555(n+1))`
-/

namespace A066594.P13426609963081203727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (A032555 (n + 1)).toNat

end

end A066594.P13426609963081203727

/-! ## A066594.P10113432798863181279

`A386026(A032559(n+1))`
-/

namespace A066594.P10113432798863181279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (A032559 (n + 1)).toNat

end

end A066594.P10113432798863181279

/-! ## A066594.P139968585651927397

`A386026(A077739(n+1))`
-/

namespace A066594.P139968585651927397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (A077739 (n + 1)).toNat

end

end A066594.P139968585651927397

/-! ## A066594.P4959552178249959163

`A386026(A078213(n+1))`
-/

namespace A066594.P4959552178249959163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (A078213 (n + 1)).toNat

end

end A066594.P4959552178249959163

/-! ## A066594.P7140064618669882039

`A386026(A082217(n+1))`
-/

namespace A066594.P7140064618669882039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (A082217 (n + 1)).toNat

end

end A066594.P7140064618669882039

/-!
# A066595: Primes which can be expressed as concatenation of powers of 4 and 0's.

The programs for A066595, there is no canonical definition to state claims against.
-/

/-! ## A066595.P3529210560675664426

`record[A227071(A034844(n+1))]`
-/

namespace A066595.P3529210560675664426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227071 (A034844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066595.P3529210560675664426

/-! ## A066595.P7893393127474964504

`filter[A077497(n+1), A011680(#)]`
-/

namespace A066595.P7893393127474964504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011680 (f1 j).toNat = 1) n)

end

end A066595.P7893393127474964504

/-! ## A066595.P8104327331973700114

`filter[A077497(n+1), A011687(#)]`
-/

namespace A066595.P8104327331973700114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011687 (f1 j).toNat = 1) n)

end

end A066595.P8104327331973700114

/-!
# A066596: Primes which can be expressed as concatenation of powers of 5 and 0's.

The programs for A066596, there is no canonical definition to state claims against.
-/

/-! ## A066596.P15175204651936195488

`p?[A351327(comp[5*n])]`
-/

namespace A066596.P15175204651936195488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351327 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066596.P15175204651936195488

/-! ## A066596.P6982253588572349539

`p?[record[A093783(A351327(n+1))]]`
-/

namespace A066596.P6982253588572349539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (A351327 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066596.P6982253588572349539

/-!
# A066598: Numbers which can be expressed as the product of a number and its reversal in four different ways.

The programs for A066598, there is no canonical definition to state claims against.
-/

/-! ## A066598.P17741576707663557937

`A066590(A064953(n+1)*A276171(n))`
-/

namespace A066598.P17741576707663557937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066590 (A064953 (n + 1) * A276171 n).toNat

end

end A066598.P17741576707663557937

/-! ## A066598.P2425212719800683773

`A066590(A064953(n+1)*A222703(n+1))`
-/

namespace A066598.P2425212719800683773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066590 (A064953 (n + 1) * A222703 (n + 1)).toNat

end

end A066598.P2425212719800683773

