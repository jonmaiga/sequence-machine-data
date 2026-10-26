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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A098800: Length of longest prefix of binary representation of n that is also a suffix of that of n^2.

The programs for A098800, there is no canonical definition to state claims against.
-/

/-! ## A098800.P8407450270542981508

`A224254(A328612(n))-A040001(n)`
-/

namespace A098800.P8407450270542981508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224254 (A328612 n).toNat - A040001 n

end

end A098800.P8407450270542981508

/-! ## A098800.P18370447951834436154

`A028310(n)%A224254(A328612(n))`
-/

namespace A098800.P18370447951834436154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A224254 (A328612 n).toNat)

end

end A098800.P18370447951834436154

/-! ## A098800.P15087178042654812878

`A091064(2*n)^A091269(A328612(n))`
-/

namespace A098800.P15087178042654812878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091064 (2 * n) : ℚ) ^ (A091269 (A328612 n).toNat : ℤ)

end

end A098800.P15087178042654812878

/-! ## A098800.P18323325297761779130

`(n^A178334(n))%A224254(A328612(n))`
-/

namespace A098800.P18323325297761779130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))) (A224254 (A328612 n).toNat)

end

end A098800.P18323325297761779130

/-! ## A098800.P5912587223681578307

`A007318(∑[n]+1)%A224254(A328612(n))`
-/

namespace A098800.P5912587223681578307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A224254 (A328612 n).toNat)

end

end A098800.P5912587223681578307

/-!
# A098802: Greatest prime factors in Pascal's triangle (read by rows).

The programs for A098802, the canonical program `A098802.P17735371602114723446` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098802 has offset 0).

The definition of A098802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098802.P17735371602114723446

`A006530(A007318(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A098802

/-- `A006530(A007318(n))` -/
def P17735371602114723446.Spec : Prop :=
  ∀ n, P17735371602114723446.a n = A098802 n

theorem P17735371602114723446.correct : P17735371602114723446.Spec := by
  intro n
  simp only [A098802]

end A098802

/-! ## A098802.P2300885776856346418

`A006530(A048804(n))`
-/

namespace A098802.P2300885776856346418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048804 n).toNat

end

end A098802.P2300885776856346418

namespace A098802

/-- `A006530(A048804(n))` -/
def P2300885776856346418.Spec : Prop :=
  ∀ n, P2300885776856346418.a n = A098802 n

end A098802

/-! ## A098802.P9121517344258370597

`A006530(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A098802.P9121517344258370597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A098802.P9121517344258370597

namespace A098802

/-- `A006530(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P9121517344258370597.Spec : Prop :=
  ∀ n, P9121517344258370597.a n = A098802 n

end A098802

/-! ## A098802.P2765637944090567871

`A006530(A080396(n))`
-/

namespace A098802.P2765637944090567871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080396 n).toNat

end

end A098802.P2765637944090567871

namespace A098802

/-- `A006530(A080396(n))` -/
def P2765637944090567871.Spec : Prop :=
  ∀ n, P2765637944090567871.a n = A098802 n

end A098802

/-! ## A098802.P8904550980286247113

`A006530(abs(A108086(n)))`
-/

namespace A098802.P8904550980286247113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A108086 n|.toNat

end

end A098802.P8904550980286247113

namespace A098802

/-- `A006530(abs(A108086(n)))` -/
def P8904550980286247113.Spec : Prop :=
  ∀ n, P8904550980286247113.a n = A098802 n

end A098802

/-! ## A098802.P4558348899016037414

`A006530(abs(A130595(n)))`
-/

namespace A098802.P4558348899016037414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A130595 n|.toNat

end

end A098802.P4558348899016037414

namespace A098802

/-- `A006530(abs(A130595(n)))` -/
def P4558348899016037414.Spec : Prop :=
  ∀ n, P4558348899016037414.a n = A098802 n

end A098802

/-! ## A098802.P15380872286806796974

`A006530(sqrt(A008459(n)))`
-/

namespace A098802.P15380872286806796974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A098802.P15380872286806796974

namespace A098802

/-- `A006530(sqrt(A008459(n)))` -/
def P15380872286806796974.Spec : Prop :=
  ∀ n, P15380872286806796974.a n = A098802 n

end A098802

/-! ## A098802.P5032807416531613503

`A006530(∏{p}[A108086(n), #])`
-/

namespace A098802.P5032807416531613503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A098802.P5032807416531613503

namespace A098802

/-- `A006530(∏{p}[A108086(n), #])` -/
def P5032807416531613503.Spec : Prop :=
  ∀ n, P5032807416531613503.a n = A098802 n

end A098802

/-! ## A098802.P6582959378209092185

`A006530(∏{p}[A130595(n), #])`
-/

namespace A098802.P6582959378209092185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A098802.P6582959378209092185

namespace A098802

/-- `A006530(∏{p}[A130595(n), #])` -/
def P6582959378209092185.Spec : Prop :=
  ∀ n, P6582959378209092185.a n = A098802 n

end A098802

/-! ## A098802.P9969674400749258573

`A006530(gcd(A108086(n), A130595(n)))`
-/

namespace A098802.P9969674400749258573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A108086 n) (A130595 n))

end

end A098802.P9969674400749258573

namespace A098802

/-- `A006530(gcd(A108086(n), A130595(n)))` -/
def P9969674400749258573.Spec : Prop :=
  ∀ n, P9969674400749258573.a n = A098802 n

end A098802

/-! ## A098802.P11303259062071294237

`A006530(A097805(n+1)+A097805(n))`
-/

namespace A098802.P11303259062071294237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A097805 (n + 1) + A097805 n).toNat

end

end A098802.P11303259062071294237

namespace A098802

/-- `A006530(A097805(n+1)+A097805(n))` -/
def P11303259062071294237.Spec : Prop :=
  ∀ n, P11303259062071294237.a n = A098802 n

end A098802

/-! ## A098802.P7827888093226802476

`A006530(A132046(n))`
-/

namespace A098802.P7827888093226802476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A132046 n).toNat

end

end A098802.P7827888093226802476

namespace A098802

/-- `A006530(A132046(n))` -/
def P7827888093226802476.Spec : Prop :=
  ∀ n, P7827888093226802476.a n = A098802 n

end A098802

/-! ## A098802.P13498597905493271708

`A006530(A168641(n))`
-/

namespace A098802.P13498597905493271708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168641 n).toNat

end

end A098802.P13498597905493271708

namespace A098802

/-- `A006530(A168641(n))` -/
def P13498597905493271708.Spec : Prop :=
  ∀ n, P13498597905493271708.a n = A098802 n

end A098802

/-! ## A098802.P8806387529345851361

`A006530(A168643(n))`
-/

namespace A098802.P8806387529345851361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168643 n).toNat

end

end A098802.P8806387529345851361

namespace A098802

/-- `A006530(A168643(n))` -/
def P8806387529345851361.Spec : Prop :=
  ∀ n, P8806387529345851361.a n = A098802 n

end A098802

/-! ## A098802.P5231404449730198374

`A006530(A144480(n))`
-/

namespace A098802.P5231404449730198374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A144480 n).toNat

end

end A098802.P5231404449730198374

namespace A098802

/-- `A006530(A144480(n))` -/
def P5231404449730198374.Spec : Prop :=
  ∀ n, P5231404449730198374.a n = A098802 n

end A098802

/-! ## A098802.P11785522584722990383

`A006530(A143188(n))`
-/

namespace A098802.P11785522584722990383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143188 n).toNat

end

end A098802.P11785522584722990383

namespace A098802

/-- `A006530(A143188(n))` -/
def P11785522584722990383.Spec : Prop :=
  ∀ n, P11785522584722990383.a n = A098802 n

end A098802

/-! ## A098802.P15325237142315271877

`A085392(A028326(n))`
-/

namespace A098802.P15325237142315271877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A028326 n).toNat

end

end A098802.P15325237142315271877

namespace A098802

/-- `A085392(A028326(n))` -/
def P15325237142315271877.Spec : Prop :=
  ∀ n, P15325237142315271877.a n = A098802 n

end A098802

/-! ## A098802.P2929168343558880953

`A085392(A124927(n))`
-/

namespace A098802.P2929168343558880953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A124927 n).toNat

end

end A098802.P2929168343558880953

namespace A098802

/-- `A085392(A124927(n))` -/
def P2929168343558880953.Spec : Prop :=
  ∀ n, P2929168343558880953.a n = A098802 n

end A098802

/-! ## A098802.P13004499437488609850

`A085392(A129994(n))`
-/

namespace A098802.P13004499437488609850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A129994 n).toNat

end

end A098802.P13004499437488609850

namespace A098802

/-- `A085392(A129994(n))` -/
def P13004499437488609850.Spec : Prop :=
  ∀ n, P13004499437488609850.a n = A098802 n

end A098802

/-! ## A098802.P16754472749191848018

`A006530(A155494(n))`
-/

namespace A098802.P16754472749191848018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155494 n).toNat

end

end A098802.P16754472749191848018

namespace A098802

/-- `A006530(A155494(n))` -/
def P16754472749191848018.Spec : Prop :=
  ∀ n, P16754472749191848018.a n = A098802 n

end A098802

/-!
# A098803: a(n) = n^7 * 7^n.

The programs for A098803, the canonical program `A098803.P2053369301648176318` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098803 has offset 0).

The definition of A098803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*7^n` (program `A098803.P2053369301648176318`, by `A098803.P2053369301648176318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098803.P18428508723013240817

`7^n*n^7`
-/

namespace A098803.P18428508723013240817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * n ^ 7

end

end A098803.P18428508723013240817

namespace A098803

/-- `7^n*n^7` -/
def P18428508723013240817.Spec : Prop :=
  ∀ n, (P18428508723013240817.a n : ℤ) = A098803 n

theorem P18428508723013240817.correct : P18428508723013240817.Spec := by
  intro n
  simp only [A098803, Nat.add_sub_cancel, A098803.P18428508723013240817.a, A098803.P2053369301648176318.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098803

/-! ## A098803.P2053369301648176318

`n^7*7^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098803

/-- `n^7*7^n` -/
def P2053369301648176318.Spec : Prop :=
  ∀ n, (P2053369301648176318.a n : ℤ) = A098803 n

theorem P2053369301648176318.correct : P2053369301648176318.Spec := by
  intro n
  simp only [A098803]

end A098803

/-! ## A098803.P15788492724559991245

`A001015(n)/7^-n`
-/

namespace A098803.P15788492724559991245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001015 n : ℚ) / (7 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A098803.P15788492724559991245

namespace A098803

/-- `A001015(n)/7^-n` -/
def P15788492724559991245.Spec : Prop :=
  ∀ n, P15788492724559991245.a n = (A098803 n : ℚ)

end A098803

/-! ## A098803.P2299847313154935954

`A062275(eq[7, A002262(n)])`
-/

namespace A098803.P2299847313154935954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098803.P2299847313154935954

namespace A098803

/-- `A062275(eq[7, A002262(n)])` -/
def P2299847313154935954.Spec : Prop :=
  ∀ n, P2299847313154935954.a n = A098803 n

end A098803

/-! ## A098803.P7631131395499666460

`A062275(eq[8, A002260(n+1)])`
-/

namespace A098803.P7631131395499666460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098803.P7631131395499666460

namespace A098803

/-- `A062275(eq[8, A002260(n+1)])` -/
def P7631131395499666460.Spec : Prop :=
  ∀ n, P7631131395499666460.a n = A098803 n

end A098803

/-! ## A098803.P16394587362712706809

`A062275(eq[7, A025581(n)])`
-/

namespace A098803.P16394587362712706809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098803.P16394587362712706809

namespace A098803

/-- `A062275(eq[7, A025581(n)])` -/
def P16394587362712706809.Spec : Prop :=
  ∀ n, P16394587362712706809.a n = A098803 n

end A098803

/-! ## A098803.P2052409325733949692

`A062275(eq[8, A004736(n+1)])`
-/

namespace A098803.P2052409325733949692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098803.P2052409325733949692

namespace A098803

/-- `A062275(eq[8, A004736(n+1)])` -/
def P2052409325733949692.Spec : Prop :=
  ∀ n, P2052409325733949692.a n = A098803 n

end A098803

/-!
# A098805: Array read by antidiagonals: Numerical sequences of Fibonacci-like polynomials produced by m-ary Huffman trees of maximum height for absolutely ordered sequences.

The programs for A098805, there is no canonical definition to state claims against.
-/

/-! ## A098805.P2224066372968369761

`A060959(comp[∑[n]])+A060959(n+1)`
-/

namespace A098805.P2224066372968369761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A060959 (n + 1)

end

end A098805.P2224066372968369761

/-! ## A098805.P16945932285096453714

`A000005(A000079(A105809(n)))-A007318(n)`
-/

namespace A098805.P16945932285096453714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 (A105809 n).toNat).toNat - A007318 n

end

end A098805.P16945932285096453714

/-! ## A098805.P13236573380357488632

`A068063(A080510(n+2))`
-/

namespace A098805.P13236573380357488632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A080510 (n + 2)).toNat

end

end A098805.P13236573380357488632

/-! ## A098805.P13368073440789583767

`A255270(A225640(n)*A285281(n+4))`
-/

namespace A098805.P13368073440789583767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A225640 n * A285281 (n + 4)).toNat

end

end A098805.P13368073440789583767

/-! ## A098805.P11295738796465333838

`A238598(A201198(n+1))`
-/

namespace A098805.P11295738796465333838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A201198 (n + 1)).toNat

end

end A098805.P11295738796465333838

/-!
# A098806: Smallest prime p such that p - A098807(n) and p + A098807(n) are both prime.

The programs for A098806, there is no canonical definition to state claims against.
-/

/-! ## A098806.P10175682951836803387

`p?[A115044(n+1)]`
-/

namespace A098806.P10175682951836803387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098806.P10175682951836803387

/-! ## A098806.P11450608875130278581

`A115044(A098807(n+1)/2)`
-/

namespace A098806.P11450608875130278581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115044 (SequenceMachineLib.roundAway ((A098807 (n + 1) : ℚ) / 2)).toNat

end

end A098806.P11450608875130278581

/-! ## A098806.P6659289186139869523

`filter[A115044(n+1), A000035(#)]`
-/

namespace A098806.P6659289186139869523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A098806.P6659289186139869523

/-! ## A098806.P5504118403134372394

`filter[A115044(n+1), A011655(#)]`
-/

namespace A098806.P5504118403134372394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A098806.P5504118403134372394

/-! ## A098806.P6389012116248197262

`filter[A115044(n+1), A014306(#)]`
-/

namespace A098806.P6389012116248197262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A098806.P6389012116248197262

/-!
# A098807: Numbers k such that there exists a prime p for which p - k and p + k are also prime.

The programs for A098807, there is no canonical definition to state claims against.
-/

/-! ## A098807.P3665716975827250532

`∪[6*(n+1), A206037(n+1)]`
-/

namespace A098807.P3665716975827250532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098807.P3665716975827250532

/-! ## A098807.P1237419896480098951

`∪[6*(n+1), 2*A115334(n+1)]`
-/

namespace A098807.P1237419896480098951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098807.P1237419896480098951

/-! ## A098807.P10386452844554064557

`∪[A063908(n+2)-3, 6*(n+1)]`
-/

namespace A098807.P10386452844554064557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 2) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A098807.P10386452844554064557

/-! ## A098807.P6292185781002454386

`∪[A206037(n+1), Δ[A003215(n)]]`
-/

namespace A098807.P6292185781002454386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206037 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098807.P6292185781002454386

/-! ## A098807.P15288760178397594532

`∪[2*A115334(n+1), Δ[A003215(n)]]`
-/

namespace A098807.P15288760178397594532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115334 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098807.P15288760178397594532

/-! ## A098807.P12581852900738438486

`eq[A060681(n+3), A201560(A060681(2*n+3))]`
-/

namespace A098807.P12581852900738438486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (A060681 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098807.P12581852900738438486

/-!
# A098808: a(n) = 2^(n + 11) - 11.

The programs for A098808, the canonical program `A098808.P1651846049608415152` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098808 has offset 0).

The definition of A098808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+11)-11` (program `A098808.P1651846049608415152`, by `A098808.P1651846049608415152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098808.P1651846049608415152

`2^(n+11)-11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098808

/-- `2^(n+11)-11` -/
def P1651846049608415152.Spec : Prop :=
  ∀ n, P1651846049608415152.a n = A098808 n

theorem P1651846049608415152.correct : P1651846049608415152.Spec := by
  intro n
  simp only [A098808]

end A098808

/-! ## A098808.P13647896889932573803

`A304517(n+7)`
-/

namespace A098808.P13647896889932573803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304517 (n + 7)

end

end A098808.P13647896889932573803

namespace A098808

/-- `A304517(n+7)` -/
def P13647896889932573803.Spec : Prop :=
  ∀ n, P13647896889932573803.a n = A098808 n

theorem P13647896889932573803.correct : P13647896889932573803.Spec := by
  intro n
  simp only [A098808, Nat.add_sub_cancel, A098808.P13647896889932573803.a, A098808.P1651846049608415152.a, A304517, A304517.P10519424751215155361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098808

/-! ## A098808.P7260929787498275507

`xor(9, A173033(n+9))`
-/

namespace A098808.P7260929787498275507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A173033 (n + 9))

end

end A098808.P7260929787498275507

namespace A098808

/-- `xor(9, A173033(n+9))` -/
def P7260929787498275507.Spec : Prop :=
  ∀ n, P7260929787498275507.a n = A098808 n

end A098808

/-! ## A098808.P17256891323653588677

`xor(10, A126646(n+10))`
-/

namespace A098808.P17256891323653588677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A126646 (n + 10))

end

end A098808.P17256891323653588677

namespace A098808

/-- `xor(10, A126646(n+10))` -/
def P17256891323653588677.Spec : Prop :=
  ∀ n, P17256891323653588677.a n = A098808 n

end A098808

/-! ## A098808.P10610528283106749891

`xor(10, A000225(n+11))`
-/

namespace A098808.P10610528283106749891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A000225 (n + 11))

end

end A098808.P10610528283106749891

namespace A098808

/-- `xor(10, A000225(n+11))` -/
def P10610528283106749891.Spec : Prop :=
  ∀ n, P10610528283106749891.a n = A098808 n

end A098808

/-! ## A098808.P9848561302046429706

`xor(11, A095121(n+10))`
-/

namespace A098808.P9848561302046429706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A095121 (n + 10))

end

end A098808.P9848561302046429706

namespace A098808

/-- `xor(11, A095121(n+10))` -/
def P9848561302046429706.Spec : Prop :=
  ∀ n, P9848561302046429706.a n = A098808 n

end A098808

/-! ## A098808.P14325504384451437970

`xor(11, A000918(n+11))`
-/

namespace A098808.P14325504384451437970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A000918 (n + 11))

end

end A098808.P14325504384451437970

namespace A098808

/-- `xor(11, A000918(n+11))` -/
def P14325504384451437970.Spec : Prop :=
  ∀ n, P14325504384451437970.a n = A098808 n

end A098808

/-!
# A098809: a(n) = 2^(n+23) - 23.

The programs for A098809, the canonical program `A098809.P7518053687979741128` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098809 has offset 0).

The definition of A098809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+23)-23` (program `A098809.P7518053687979741128`, by `A098809.P7518053687979741128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098809.P7518053687979741128

`2^(n+23)-23`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098809

/-- `2^(n+23)-23` -/
def P7518053687979741128.Spec : Prop :=
  ∀ n, P7518053687979741128.a n = A098809 n

theorem P7518053687979741128.correct : P7518053687979741128.Spec := by
  intro n
  simp only [A098809]

end A098809

/-! ## A098809.P3923771816857375175

`xor(22, A126646(n+22))`
-/

namespace A098809.P3923771816857375175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 22 (A126646 (n + 22))

end

end A098809.P3923771816857375175

namespace A098809

/-- `xor(22, A126646(n+22))` -/
def P3923771816857375175.Spec : Prop :=
  ∀ n, P3923771816857375175.a n = A098809 n

end A098809

/-!
# A098813: For a string of letters of length k, say abc...def, let f(k) be the string of length k-1 consisting of the adjacent pairs ab, bc, cd, ..., de, ef. Given n, let U be the string of length 2n consisting of n 1's followed by n 2's: 11...122...2. Then a(n) is the number of the C(2n,n) permutations V of U such that f(U) and f(V) agree in exactly one place.

The programs for A098813, there is no canonical definition to state claims against.
-/

/-! ## A098813.P15144140384844004258

`A099793(2*(∑[n]+1))`
-/

namespace A098813.P15144140384844004258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099793 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A098813.P15144140384844004258

/-! ## A098813.P7908160747904106118

`A298479(A387507(n+1))`
-/

namespace A098813.P7908160747904106118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298479 (A387507 (n + 1)).toNat

end

end A098813.P7908160747904106118

/-!
# A098814: a(n) is the least k such that k*Mersenne_prime(n) - 1 and k*Mersenne_prime(n) + 1 are twin primes.

The programs for A098814, there is no canonical definition to state claims against.
-/

/-! ## A098814.P15967477037066351963

`A006955(A046132(n+1))*A126612(n+1)`
-/

namespace A098814.P15967477037066351963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 (A046132 (n + 1)).toNat * A126612 (n + 1)

end

end A098814.P15967477037066351963

/-! ## A098814.P491221052343207472

`A126612(n+1)*A282544(A056672(n+1))`
-/

namespace A098814.P491221052343207472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126612 (n + 1) * A282544 (A056672 (n + 1)).toNat

end

end A098814.P491221052343207472

/-!
# A098815: 2^p - 7 where p is prime.

The programs for A098815, the canonical program `A098815.P7036322898636733750` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098815 has offset 1).

The definition of A098815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098815.P7036322898636733750

`2^A000040(n+1)-7`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098815

/-- `2^A000040(n+1)-7` -/
def P7036322898636733750.Spec : Prop :=
  ∀ n, P7036322898636733750.a n = (A098815 (n + 1) : ℚ)

end A098815

/-! ## A098815.P6815226239493247613

`A241678(n+1)-2`
-/

namespace A098815.P6815226239493247613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241678 (n + 1) - 2

end

end A098815.P6815226239493247613

namespace A098815

/-- `A241678(n+1)-2` -/
def P6815226239493247613.Spec : Prop :=
  ∀ n, P6815226239493247613.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P17663254077523613137

`A098231(n+1)+4`
-/

namespace A098815.P17663254077523613137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098231 (n + 1) + 4

end

end A098815.P17663254077523613137

namespace A098815

/-- `A098231(n+1)+4` -/
def P17663254077523613137.Spec : Prop :=
  ∀ n, P17663254077523613137.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P8428657959344269847

`A241676(n+1)-4`
-/

namespace A098815.P8428657959344269847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1) - 4

end

end A098815.P8428657959344269847

namespace A098815

/-- `A241676(n+1)-4` -/
def P8428657959344269847.Spec : Prop :=
  ∀ n, P8428657959344269847.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P1330957181398498174

`A001348(n+1)-6`
-/

namespace A098815.P1330957181398498174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) - 6

end

end A098815.P1330957181398498174

namespace A098815

/-- `A001348(n+1)-6` -/
def P1330957181398498174.Spec : Prop :=
  ∀ n, P1330957181398498174.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P3238026789645713702

`A034785(n+1)-7`
-/

namespace A098815.P3238026789645713702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) - 7

end

end A098815.P3238026789645713702

namespace A098815

/-- `A034785(n+1)-7` -/
def P3238026789645713702.Spec : Prop :=
  ∀ n, P3238026789645713702.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P11564423060869695488

`A098640(n+1)-8`
-/

namespace A098815.P11564423060869695488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1) - 8

end

end A098815.P11564423060869695488

namespace A098815

/-- `A098640(n+1)-8` -/
def P11564423060869695488.Spec : Prop :=
  ∀ n, P11564423060869695488.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P3659263582854723748

`2*A098102(n+1)-5`
-/

namespace A098815.P3659263582854723748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098102 (n + 1) - 5

end

end A098815.P3659263582854723748

namespace A098815

/-- `2*A098102(n+1)-5` -/
def P3659263582854723748.Spec : Prop :=
  ∀ n, P3659263582854723748.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P13002270979276814232

`4*A135630(n+1)-3`
-/

namespace A098815.P13002270979276814232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135630 (n + 1) - 3

end

end A098815.P13002270979276814232

namespace A098815

/-- `4*A135630(n+1)-3` -/
def P13002270979276814232.Spec : Prop :=
  ∀ n, P13002270979276814232.a n = A098815 (n + 1)

end A098815

/-! ## A098815.P6725814449741755289

`record[2^A006530(n+2)-7]`
-/

namespace A098815.P6725814449741755289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098815.P6725814449741755289

namespace A098815

/-- `record[2^A006530(n+2)-7]` -/
def P6725814449741755289.Spec : Prop :=
  ∀ n, P6725814449741755289.a n = (A098815 (n + 1) : ℚ)

end A098815

/-!
# A098816: a(1)=0, a(2)=1, a(n) = ceiling((3/2) * |a(n-1) - a(n-2)|).

The programs for A098816, the canonical program `A098816.P16977684640355189355` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098816 has offset 1).

The definition of A098816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098816.P16977684640355189355

`ceil(3/2*abs(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098816

/-- `ceil(3/2*abs(a(n-1)-a(n-2)))` -/
def P16977684640355189355.Spec : Prop :=
  ∀ n, P16977684640355189355.a n = A098816 (n + 1)

theorem P16977684640355189355.correct : P16977684640355189355.Spec := by
  intro n
  simp only [A098816, Nat.add_sub_cancel]

end A098816

/-!
# A098817: a(n) is the least k such that k*Mersenne_prime(n)^2 - 1 and k*Mersenne_prime(n)^2 + 1 are twin primes.

The programs for A098817, there is no canonical definition to state claims against.
-/

/-! ## A098817.P13456166667368201443

`A110559(p?[∑[2^n]])`
-/

namespace A098817.P13456166667368201443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110559 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098817.P13456166667368201443

/-!
# A098820: Periodicity of entries in the first row of a Laver Table of size 2^n.

The programs for A098820, there is no canonical definition to state claims against.
-/

/-! ## A098820.P11627849834243872041

`2^ceil(atan(n-1)^3)`
-/

namespace A098820.P11627849834243872041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.arctan ((n : ℤ) - 1 : ℝ) ^ 3⌉ : ℤ)

end

end A098820.P11627849834243872041

/-!
# A098821: a(n) = (n-2) * 2^(n-1) + 5.

The programs for A098821, the canonical program `A098821.P9729960238861339025` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098821 has offset 0).

The definition of A098821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098821.P9729960238861339025

`(n-2)*2^(n-1)+5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098821

/-- `(n-2)*2^(n-1)+5` -/
def P9729960238861339025.Spec : Prop :=
  ∀ n, P9729960238861339025.a n = (A098821 n : ℚ)

end A098821

/-! ## A098821.P15512126325228552458

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=4, a(1)=0, a(2)=1`
-/

namespace A098821.P15512126325228552458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 1] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098821.P15512126325228552458

namespace A098821

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P15512126325228552458.Spec : Prop :=
  ∀ n, P15512126325228552458.a n = A098821 n

end A098821

/-! ## A098821.P1925410113701260591

`abs(3-(n-∑[A139756(n)+1]))`
-/

namespace A098821.P1925410113701260591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A098821.P1925410113701260591

namespace A098821

/-- `abs(3-(n-∑[A139756(n)+1]))` -/
def P1925410113701260591.Spec : Prop :=
  ∀ n, P1925410113701260591.a n = A098821 n

end A098821

/-! ## A098821.P6523684397718613595

`abs(A001787(n)-A168616(n))`
-/

namespace A098821.P6523684397718613595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001787 n - A168616 n|

end

end A098821.P6523684397718613595

namespace A098821

/-- `abs(A001787(n)-A168616(n))` -/
def P6523684397718613595.Spec : Prop :=
  ∀ n, P6523684397718613595.a n = A098821 n

end A098821

/-! ## A098821.P6418084638079042342

`abs(5-(A000079(n)-A001787(n)))`
-/

namespace A098821.P6418084638079042342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (A000079 n - A001787 n)|

end

end A098821.P6418084638079042342

namespace A098821

/-- `abs(5-(A000079(n)-A001787(n)))` -/
def P6418084638079042342.Spec : Prop :=
  ∀ n, P6418084638079042342.a n = A098821 n

end A098821

/-! ## A098821.P14266230741732653695

`∑[A097067(A065033(2*n)+A000038(n))]`
-/

namespace A098821.P14266230741732653695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A065033 (2 * n) + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098821.P14266230741732653695

namespace A098821

/-- `∑[A097067(A065033(2*n)+A000038(n))]` -/
def P14266230741732653695.Spec : Prop :=
  ∀ n, P14266230741732653695.a n = A098821 n

end A098821

/-! ## A098821.P2983965118220617627

`(A001787(n)-A168616(n))*A032741(A000040(n+1))`
-/

namespace A098821.P2983965118220617627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001787 n - A168616 n) * A032741 (A000040 (n + 1)).toNat

end

end A098821.P2983965118220617627

namespace A098821

/-- `(A001787(n)-A168616(n))*A032741(A000040(n+1))` -/
def P2983965118220617627.Spec : Prop :=
  ∀ n, P2983965118220617627.a n = A098821 n

end A098821

/-! ## A098821.P11158348614306554799

`∑[A001787(A025581(∑[n+1]+2))]`
-/

namespace A098821.P11158348614306554799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A025581 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098821.P11158348614306554799

namespace A098821

/-- `∑[A001787(A025581(∑[n+1]+2))]` -/
def P11158348614306554799.Spec : Prop :=
  ∀ n, P11158348614306554799.a n = A098821 n

end A098821

/-! ## A098821.P6774399805095962192

`(A001787(n)-A168616(n))*A032741(A078311(n+1))`
-/

namespace A098821.P6774399805095962192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001787 n - A168616 n) * A032741 (A078311 (n + 1)).toNat

end

end A098821.P6774399805095962192

namespace A098821

/-- `(A001787(n)-A168616(n))*A032741(A078311(n+1))` -/
def P6774399805095962192.Spec : Prop :=
  ∀ n, P6774399805095962192.a n = A098821 n

end A098821

/-!
# A098823: a(n) = 16*(8*prime(n) + 7).

The programs for A098823, the canonical program `A098823.P17108854429955026847` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098823 has offset 1).

The definition of A098823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(8*A000040(n+1)+7)` (program `A098823.P17108854429955026847`, by `A098823.P17108854429955026847.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098823.P17108854429955026847

`16*(8*A000040(n+1)+7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098823

/-- `16*(8*A000040(n+1)+7)` -/
def P17108854429955026847.Spec : Prop :=
  ∀ n, P17108854429955026847.a n = A098823 (n + 1)

theorem P17108854429955026847.correct : P17108854429955026847.Spec := by
  intro n
  simp only [A098823, Nat.add_sub_cancel]

end A098823

/-! ## A098823.P15031563186789580098

`16*A004771(Δ[A007504(n)])`
-/

namespace A098823.P15031563186789580098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (n + 1) - f1 n).toNat

end

end A098823.P15031563186789580098

namespace A098823

/-- `16*A004771(Δ[A007504(n)])` -/
def P15031563186789580098.Spec : Prop :=
  ∀ n, P15031563186789580098.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P1618871554545038349

`16*A004771(record[A051698(n)])`
-/

namespace A098823.P1618871554545038349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098823.P1618871554545038349

namespace A098823

/-- `16*A004771(record[A051698(n)])` -/
def P1618871554545038349.Spec : Prop :=
  ∀ n, P1618871554545038349.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P13134261750939401445

`16*A004771(p?[A007989(n)])`
-/

namespace A098823.P13134261750939401445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098823.P13134261750939401445

namespace A098823

/-- `16*A004771(p?[A007989(n)])` -/
def P13134261750939401445.Spec : Prop :=
  ∀ n, P13134261750939401445.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P11717770321121391247

`16*A004771(p?[A014681(n)])`
-/

namespace A098823.P11717770321121391247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098823.P11717770321121391247

namespace A098823

/-- `16*A004771(p?[A014681(n)])` -/
def P11717770321121391247.Spec : Prop :=
  ∀ n, P11717770321121391247.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P15357366256631175145

`16*A004771(A000040(n+1))`
-/

namespace A098823.P15357366256631175145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (A000040 (n + 1)).toNat

end

end A098823.P15357366256631175145

namespace A098823

/-- `16*A004771(A000040(n+1))` -/
def P15357366256631175145.Spec : Prop :=
  ∀ n, P15357366256631175145.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P7152127458871735968

`16*A004771(record[A006530(n+2)])`
-/

namespace A098823.P7152127458871735968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098823.P7152127458871735968

namespace A098823

/-- `16*A004771(record[A006530(n+2)])` -/
def P7152127458871735968.Spec : Prop :=
  ∀ n, P7152127458871735968.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P8534620210207983191

`16*A004771(p?[A015919(n+1)])`
-/

namespace A098823.P8534620210207983191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098823.P8534620210207983191

namespace A098823

/-- `16*A004771(p?[A015919(n+1)])` -/
def P8534620210207983191.Spec : Prop :=
  ∀ n, P8534620210207983191.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P11767246350755744200

`16*A004771(p?[comp[A018252(n+1)]])`
-/

namespace A098823.P11767246350755744200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098823.P11767246350755744200

namespace A098823

/-- `16*A004771(p?[comp[A018252(n+1)]])` -/
def P11767246350755744200.Spec : Prop :=
  ∀ n, P11767246350755744200.a n = A098823 (n + 1)

end A098823

/-! ## A098823.P17341389000723405960

`16*A004771(p?[A006370(n)])`
-/

namespace A098823.P17341389000723405960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A004771 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098823.P17341389000723405960

namespace A098823

/-- `16*A004771(p?[A006370(n)])` -/
def P17341389000723405960.Spec : Prop :=
  ∀ n, P17341389000723405960.a n = A098823 (n + 1)

end A098823

/-!
# A098824: Array read by antidiagonals: Minimizing absolutely ordered sequences of m-ary Huffman trees of maximum height; m > 1.

The programs for A098824, there is no canonical definition to state claims against.
-/

/-! ## A098824.P15783897592007849321

`A285189(ceil(ratio[A022166(n)]))`
-/

namespace A098824.P15783897592007849321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A098824.P15783897592007849321

/-! ## A098824.P2071181287566869966

`A319951(ceil(ratio[A022166(n)]))`
-/

namespace A098824.P2071181287566869966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A098824.P2071181287566869966

/-! ## A098824.P16490791625825383881

`ceil(ratio[A162911(A063394(n))])`
-/

namespace A098824.P16490791625825383881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162911 (A063394 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A098824.P16490791625825383881

/-! ## A098824.P3323591003074768174

`A000045(A120885(n+1)%A270796(3*n+4))`
-/

namespace A098824.P3323591003074768174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A120885 (n + 1)) (A270796 (3 * n + 4))).toNat

end

end A098824.P3323591003074768174

/-! ## A098824.P6242822661210441459

`A147981(A134033(n+1))`
-/

namespace A098824.P6242822661210441459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A134033 (n + 1)).toNat

end

end A098824.P6242822661210441459

/-!
# A098825: Triangle read by rows: T(n,k) = number of partial derangements, that is, the number of permutations of n distinct, ordered items in which exactly k of the items are in their natural ordered positions, for n >= 0, k = n, n-1, ..., 1, 0.

The programs for A098825, the canonical program `A098825.P11095785757268829905` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098825 has offset 0).

The definition of A098825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098825.P11095785757268829905

`C(row(n), col(n))*A000166(col(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098825

/-- `C(row(n), col(n))*A000166(col(n))` -/
def P11095785757268829905.Spec : Prop :=
  ∀ n, P11095785757268829905.a n = A098825 n

theorem P11095785757268829905.correct : P11095785757268829905.Spec := by
  intro n
  simp only [A098825]

end A098825

/-! ## A098825.P9226498537303869935

`A000166(A002262(n))*A007318(n)`
-/

namespace A098825.P9226498537303869935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A002262 n).toNat * A007318 n

end

end A098825.P9226498537303869935

namespace A098825

/-- `A000166(A002262(n))*A007318(n)` -/
def P9226498537303869935.Spec : Prop :=
  ∀ n, P9226498537303869935.a n = A098825 n

end A098825

/-! ## A098825.P9626992743600840972

`A008290(A061579(n))`
-/

namespace A098825.P9626992743600840972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A061579 n).toNat

end

end A098825.P9626992743600840972

namespace A098825

/-- `A008290(A061579(n))` -/
def P9626992743600840972.Spec : Prop :=
  ∀ n, P9626992743600840972.a n = A098825 n

end A098825

/-! ## A098825.P1911118844914400084

`A008290(A038722(n+1)-1)`
-/

namespace A098825.P1911118844914400084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A038722 (n + 1) - 1).toNat

end

end A098825.P1911118844914400084

namespace A098825

/-- `A008290(A038722(n+1)-1)` -/
def P1911118844914400084.Spec : Prop :=
  ∀ n, P1911118844914400084.a n = A098825 n

end A098825

/-! ## A098825.P9118881236084104553

`A008290(A093995(n+1)-(n+1))`
-/

namespace A098825.P9118881236084104553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A098825.P9118881236084104553

namespace A098825

/-- `A008290(A093995(n+1)-(n+1))` -/
def P9118881236084104553.Spec : Prop :=
  ∀ n, P9118881236084104553.a n = A098825 n

end A098825

/-! ## A098825.P11280284325928535373

`A008290(A000194(2*(n+1))²-(n+1))`
-/

namespace A098825.P11280284325928535373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A000194 (2 * (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A098825.P11280284325928535373

namespace A098825

/-- `A008290(A000194(2*(n+1))²-(n+1))` -/
def P11280284325928535373.Spec : Prop :=
  ∀ n, P11280284325928535373.a n = A098825 n

end A098825

/-! ## A098825.P10424325933139146851

`A008290(A057944(n)+A025581(n))`
-/

namespace A098825.P10424325933139146851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A057944 n + A025581 n).toNat

end

end A098825.P10424325933139146851

namespace A098825

/-- `A008290(A057944(n)+A025581(n))` -/
def P10424325933139146851.Spec : Prop :=
  ∀ n, P10424325933139146851.a n = A098825 n

end A098825

/-! ## A098825.P16803570390737509942

`A373418(n)+A373417(n)`
-/

namespace A098825.P16803570390737509942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373418 n + A373417 n

end

end A098825.P16803570390737509942

namespace A098825

/-- `A373418(n)+A373417(n)` -/
def P16803570390737509942.Spec : Prop :=
  ∀ n, P16803570390737509942.a n = A098825 n

end A098825

/-!
# A098826: Palindromes that are 1 more than a prime and 1 less than a triangular number.

The programs for A098826, there is no canonical definition to state claims against.
-/

/-! ## A098826.P14319309461961126034

`∩[A028981(n+1), A124199(n+1)]+1`
-/

namespace A098826.P14319309461961126034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A098826.P14319309461961126034

/-! ## A098826.P5465659280700567183

`∩[A081939(n+1), A124199(n+1)+1]`
-/

namespace A098826.P5465659280700567183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098826.P5465659280700567183

/-!
# A098827: Squarefree oblong (pronic) numbers having an odd number of prime factors.

The programs for A098827, the canonical program `A098827.P13582355249411680889` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098827 has offset 1).

The definition of A098827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098827.P13582355249411680889

`record[-(A055615(n+1)*A055615(n+2))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A098827

/-- `record[-(A055615(n+1)*A055615(n+2))]` -/
def P13582355249411680889.Spec : Prop :=
  ∀ n, P13582355249411680889.a n = A098827 (n + 1)

theorem P13582355249411680889.correct : P13582355249411680889.Spec := by
  intro n
  simp only [A098827, Nat.add_sub_cancel]

end A098827

/-! ## A098827.P12887800615620798207

`record[A083482(A074819(n+1))]`
-/

namespace A098827.P12887800615620798207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083482 (A074819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098827.P12887800615620798207

namespace A098827

/-- `record[A083482(A074819(n+1))]` -/
def P12887800615620798207.Spec : Prop :=
  ∀ n, P12887800615620798207.a n = A098827 (n + 1)

end A098827

/-! ## A098827.P6982349769429313305

`A002378(record[A007947(A074819(n+1))])`
-/

namespace A098827.P6982349769429313305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A074819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098827.P6982349769429313305

namespace A098827

/-- `A002378(record[A007947(A074819(n+1))])` -/
def P6982349769429313305.Spec : Prop :=
  ∀ n, P6982349769429313305.a n = A098827 (n + 1)

end A098827

/-! ## A098827.P3281672987353985997

`record[and((n+1)*(n+2), A008683((n+1)*(n+2)))]`
-/

namespace A098827.P3281672987353985997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) * (n + 2) : ℤ) (A008683 ((n + 1) * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098827.P3281672987353985997

namespace A098827

/-- `record[and((n+1)*(n+2), A008683((n+1)*(n+2)))]` -/
def P3281672987353985997.Spec : Prop :=
  ∀ n, P3281672987353985997.a n = A098827 (n + 1)

end A098827

/-! ## A098827.P16663145928580460163

`filter[A229882(n+1), A066829(#)]`
-/

namespace A098827.P16663145928580460163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A098827.P16663145928580460163

namespace A098827

/-- `filter[A229882(n+1), A066829(#)]` -/
def P16663145928580460163.Spec : Prop :=
  ∀ n, P16663145928580460163.a n = A098827 (n + 1)

end A098827

/-!
# A098828: Primes of the form 2*n^2 + 2*n - 1.

The programs for A098828, there is no canonical definition to state claims against.
-/

/-! ## A098828.P12705234566810980377

`(A109367(n+1)-3)/2`
-/

namespace A098828.P12705234566810980377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109367 (n + 1) - 3 : ℚ) / 2

end

end A098828.P12705234566810980377

/-! ## A098828.P13752235753104721705

`(A109358(n+1)²-3)/2`
-/

namespace A098828.P13752235753104721705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) ^ 2 - 3 : ℚ) / 2

end

end A098828.P13752235753104721705

/-! ## A098828.P6583460003540098105

`A047838(A109358(n+1))`
-/

namespace A098828.P6583460003540098105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A109358 (n + 1)).toNat

end

end A098828.P6583460003540098105

/-! ## A098828.P679924709726249560

`A116940(A109358(n+1)-2)`
-/

namespace A098828.P679924709726249560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 (A109358 (n + 1) - 2).toNat

end

end A098828.P679924709726249560

/-! ## A098828.P9927841356057705375

`A047838(root(A109367(n+1), 2))`
-/

namespace A098828.P9927841356057705375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (SequenceMachineLib.roundAway ((A109367 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A098828.P9927841356057705375

/-! ## A098828.P7678646843006952429

`p?[∑[or(1, n+2)]]`
-/

namespace A098828.P7678646843006952429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A098828.P7678646843006952429

/-! ## A098828.P4305973678191077644

`p?[∑[or(1, n)-2]]`
-/

namespace A098828.P4305973678191077644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098828.P4305973678191077644

/-! ## A098828.P601363551443469043

`p?[Δ[lcm(n, n+2)]]`
-/

namespace A098828.P601363551443469043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098828.P601363551443469043

/-! ## A098828.P8125260669594122971

`p?[4*C(n, 2)-1]`
-/

namespace A098828.P8125260669594122971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098828.P8125260669594122971

/-! ## A098828.P1297329853796995162

`p?[ceil(n²/2)-2]`
-/

namespace A098828.P1297329853796995162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098828.P1297329853796995162

/-! ## A098828.P6510827114833608258

`or(2, p?[(n+1)*2*n-1])`
-/

namespace A098828.P6510827114833608258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A098828.P6510827114833608258

/-! ## A098828.P265220803538284345

`record[∑{p}[(n+3)*2*n+3, #]]`
-/

namespace A098828.P265220803538284345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (2 * n) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098828.P265220803538284345

/-! ## A098828.P4319105512139480509

`floor(sqrt(p?[(n+1)*2*n-1]²+2))`
-/

namespace A098828.P4319105512139480509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 2)

end

end A098828.P4319105512139480509

/-! ## A098828.P2251727461692986413

`∑{d}[p?[2*n²-(2*n+1)], #]-1`
-/

namespace A098828.P2251727461692986413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (2 * n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A098828.P2251727461692986413

/-! ## A098828.P6005467074715438821

`record[p?[A286457(n+1)-2]]`
-/

namespace A098828.P6005467074715438821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286457 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098828.P6005467074715438821

/-! ## A098828.P11338669488888375740

`record[p?[A254052(n+2)+n]]`
-/

namespace A098828.P11338669488888375740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (n + 2) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098828.P11338669488888375740

/-! ## A098828.P2088886059018556787

`abs(p?[A046092(n)-1]-1)+1`
-/

namespace A098828.P2088886059018556787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A098828.P2088886059018556787

/-! ## A098828.P7063931870594701084

`or(p?[A142463(n)], A047999(n))`
-/

namespace A098828.P7063931870594701084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A047999 n)

end

end A098828.P7063931870594701084

/-! ## A098828.P7946946788194675472

`∩[A141123(n+1), A116940(n)]`
-/

namespace A098828.P7946946788194675472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098828.P7946946788194675472

/-!
# A098830: 3*Sum_{k>=0} k^n/binomial(2*k, k) = Pi*sqrt(3)*q(n) + a(n) for some rational sequence (q(n)).

The programs for A098830, there is no canonical definition to state claims against.
-/

/-! ## A098830.P14603111729677529392

`A182195(A219226(n))`
-/

namespace A098830.P14603111729677529392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (A219226 n).toNat

end

end A098830.P14603111729677529392

/-! ## A098830.P6521006688975447049

`A054846(∑[A330498(n)])`
-/

namespace A098830.P6521006688975447049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098830.P6521006688975447049

/-! ## A098830.P7492520522282503935

`A292050(A173271(n))-1`
-/

namespace A098830.P7492520522282503935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A173271 n).toNat - 1

end

end A098830.P7492520522282503935

/-!
# A098831: a(n) = A069837(n) - (10^n-1)*2/9.

The programs for A098831, there is no canonical definition to state claims against.
-/

/-! ## A098831.P12553523008133113068

`A069837(n+1)-(10^(n+1)-1)*2/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098831.P12553523008133113068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069837 (n + 1) : ℚ) - (((10 ^ (n + 1) : ℤ) - 1) * 2 : ℚ) / 9

end

end A098831.P12553523008133113068

/-! ## A098831.P7035044822039442565

`A069837(n+1)%∑[A011557(n)]`
-/

namespace A098831.P7035044822039442565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069837 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098831.P7035044822039442565

/-! ## A098831.P10628632273487695914

`A069837(A028242(2*n))%A002275(n+1)`
-/

namespace A098831.P10628632273487695914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069837 (A028242 (2 * n)).toNat) (A002275 (n + 1))

end

end A098831.P10628632273487695914

/-! ## A098831.P17996839052204486347

`A069837(A090108(n+1))%A000042(n+1)`
-/

namespace A098831.P17996839052204486347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069837 (A090108 (n + 1)).toNat) (A000042 (n + 1))

end

end A098831.P17996839052204486347

/-!
# A098832: Square array read by antidiagonals: even-numbered rows of the table are of the form n*(n+m) and odd-numbered rows are of the form n*(n+m)/2.

The programs for A098832, the canonical program `A098832.P5913755992743422825` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098832 has offset 1).

The definition of A098832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098832.P5913755992743422825

`1/4*(3+(-1)^(col(n)+1))*(row(n)+2)*(row(n)+1-col(n))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098832

/-- `1/4*(3+(-1)^(col(n)+1))*(row(n)+2)*(row(n)+1-col(n))` -/
def P5913755992743422825.Spec : Prop :=
  ∀ n, P5913755992743422825.a n = (A098832 (n + 1) : ℚ)

end A098832

/-! ## A098832.P6534797422571519314

`gcd(A063929(n+1), A107985(n))`
-/

namespace A098832.P6534797422571519314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063929 (n + 1)) (A107985 n)

end

end A098832.P6534797422571519314

namespace A098832

/-- `gcd(A063929(n+1), A107985(n))` -/
def P6534797422571519314.Spec : Prop :=
  ∀ n, (P6534797422571519314.a n : ℤ) = A098832 (n + 1)

end A098832

/-! ## A098832.P17924992155311472439

`A063929(n+1)/A000034(A002260(n+1))`
-/

namespace A098832.P17924992155311472439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063929 (n + 1) : ℚ) / (A000034 (A002260 (n + 1)).toNat : ℚ)

end

end A098832.P17924992155311472439

namespace A098832

/-- `A063929(n+1)/A000034(A002260(n+1))` -/
def P17924992155311472439.Spec : Prop :=
  ∀ n, P17924992155311472439.a n = (A098832 (n + 1) : ℚ)

end A098832

/-! ## A098832.P6261531844147050874

`A063929(n+1)/A000034(A002262(n)+1)`
-/

namespace A098832.P6261531844147050874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063929 (n + 1) : ℚ) / (A000034 (A002262 n + 1).toNat : ℚ)

end

end A098832.P6261531844147050874

namespace A098832

/-- `A063929(n+1)/A000034(A002262(n)+1)` -/
def P6261531844147050874.Spec : Prop :=
  ∀ n, P6261531844147050874.a n = (A098832 (n + 1) : ℚ)

end A098832

/-! ## A098832.P4288658034870606909

`A063929(n+1)/A000034(A004201(n+1))`
-/

namespace A098832.P4288658034870606909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063929 (n + 1) : ℚ) / (A000034 (A004201 (n + 1)).toNat : ℚ)

end

end A098832.P4288658034870606909

namespace A098832

/-- `A063929(n+1)/A000034(A004201(n+1))` -/
def P4288658034870606909.Spec : Prop :=
  ∀ n, P4288658034870606909.a n = (A098832 (n + 1) : ℚ)

end A098832

/-!
# A098833: Numbers n such that the sum of primes dividing n (with repetition) is a Fibonacci number.

The programs for A098833, the canonical program `A098833.P11614478305007327553` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098833 has offset 1).

The definition of A098833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098833.P11614478305007327553

`eq[0, A066628(A001414(n+1))]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098833

/-- `eq[0, A066628(A001414(n+1))]+1` -/
def P11614478305007327553.Spec : Prop :=
  ∀ n, (P11614478305007327553.a n : ℤ) = A098833 (n + 1)

theorem P11614478305007327553.correct : P11614478305007327553.Spec := by
  intro n
  simp only [A098833, Nat.add_sub_cancel]

end A098833

/-!
# A098834: Palindromic Smith numbers.

The programs for A098834, there is no canonical definition to state claims against.
-/

/-! ## A098834.P16195558807048596571

`∩[A002113(n+1), A104171(n+1)]`
-/

namespace A098834.P16195558807048596571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098834.P16195558807048596571

/-! ## A098834.P17927790542276358725

`∩[A032350(n+1), A104171(n+1)]`
-/

namespace A098834.P17927790542276358725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098834.P17927790542276358725

/-! ## A098834.P13498771403362785273

`∩[A061917(n+1), A104171(n+1)]`
-/

namespace A098834.P13498771403362785273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098834.P13498771403362785273

/-! ## A098834.P1004000155426512036

`∩[A083158(n+1), A104171(n+1)]`
-/

namespace A098834.P1004000155426512036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098834.P1004000155426512036

/-! ## A098834.P9769841489720930477

`∩[A104171(n+1), A169824(n+1)]`
-/

namespace A098834.P9769841489720930477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098834.P9769841489720930477

/-!
# A098835: Smith abundant numbers.

The programs for A098835, there is no canonical definition to state claims against.
-/

/-! ## A098835.P15553474195622304569

`filter[A006753(n+1), A294936(#)]`
-/

namespace A098835.P15553474195622304569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A098835.P15553474195622304569

/-! ## A098835.P16496293464617293858

`filter[A006753(n+2), A378550(#)]`
-/

namespace A098835.P16496293464617293858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A098835.P16496293464617293858

/-! ## A098835.P17668294916465992388

`∩[A006753(n+1), A326133(n+1)]`
-/

namespace A098835.P17668294916465992388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098835.P17668294916465992388

/-! ## A098835.P4983812787215806242

`∩[A005835(n+1), A006753(n+1)]`
-/

namespace A098835.P4983812787215806242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098835.P4983812787215806242

/-! ## A098835.P3772148406931162354

`∩[A005101(n+1), A006753(n+1)]`
-/

namespace A098835.P3772148406931162354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098835.P3772148406931162354

/-! ## A098835.P9950975772536137612

`∩[A006753(n+1), A023196(n+1)]`
-/

namespace A098835.P9950975772536137612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098835.P9950975772536137612

/-! ## A098835.P12801167558076466021

`∩[A006753(n+1), A177052(n+1)]`
-/

namespace A098835.P12801167558076466021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098835.P12801167558076466021

/-! ## A098835.P5240508475588025886

`filter[A006753(n+1), A294937(#)]`
-/

namespace A098835.P5240508475588025886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A098835.P5240508475588025886

/-! ## A098835.P5470062541308668589

`filter[A036924(n+1), A294937(#)]`
-/

namespace A098835.P5470062541308668589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A098835.P5470062541308668589

/-! ## A098835.P4175228394141080848

`filter[A006753(n+1), A210455(#)]`
-/

namespace A098835.P4175228394141080848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A098835.P4175228394141080848

/-! ## A098835.P3924902009435670694

`filter[A036924(n+1), A210455(#)]`
-/

namespace A098835.P3924902009435670694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A098835.P3924902009435670694

/-!
# A098836: Deficient Smith numbers.

The programs for A098836, there is no canonical definition to state claims against.
-/

/-! ## A098836.P5716949466748532855

`record[A125746(A006753(n+1))]`
-/

namespace A098836.P5716949466748532855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A006753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098836.P5716949466748532855

/-! ## A098836.P17658487474688384897

`filter[A006753(n+1), A294934(#)]`
-/

namespace A098836.P17658487474688384897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A098836.P17658487474688384897

/-! ## A098836.P15525517636783182199

`filter[A006753(n+1), A294935(#)]`
-/

namespace A098836.P15525517636783182199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A098836.P15525517636783182199

/-! ## A098836.P9415845343357411208

`∩[A006753(n+1), A125493(n+1)]`
-/

namespace A098836.P9415845343357411208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098836.P9415845343357411208

/-! ## A098836.P17520771186020038798

`A006753(lt[A014182(n), A003202(n)])`
-/

namespace A098836.P17520771186020038798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098836.P17520771186020038798

/-!
# A098837: Smith semiprimes.

The programs for A098837, there is no canonical definition to state claims against.
-/

/-! ## A098837.P1028722889060772026

`∩[A006753(n+1), A118691(n+1)]`
-/

namespace A098837.P1028722889060772026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P1028722889060772026

/-! ## A098837.P2136154111951348344

`∩[A098836(n+1), A118691(n+1)]`
-/

namespace A098837.P2136154111951348344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P2136154111951348344

/-! ## A098837.P3662528318179372890

`∩[A001358(n+1), A006753(n+1)]`
-/

namespace A098837.P3662528318179372890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P3662528318179372890

/-! ## A098837.P15714387501166933209

`∩[A001358(n+1), A098836(n+1)]`
-/

namespace A098837.P15714387501166933209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P15714387501166933209

/-! ## A098837.P17717928340419656478

`filter[A006753(n+1), A064911(#)]`
-/

namespace A098837.P17717928340419656478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A098837.P17717928340419656478

/-! ## A098837.P7712685174071510779

`filter[A098836(n+1), A064911(#)]`
-/

namespace A098837.P7712685174071510779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A098837.P7712685174071510779

/-! ## A098837.P1209694626235564558

`filter[A006753(n+1), A101040(#)]`
-/

namespace A098837.P1209694626235564558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A098837.P1209694626235564558

/-! ## A098837.P3475032649944018554

`filter[A098836(n+1), A101040(#)]`
-/

namespace A098837.P3475032649944018554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A098837.P3475032649944018554

/-! ## A098837.P3343742900943626104

`∩[A098836(n+1), A125758(n+1)]`
-/

namespace A098837.P3343742900943626104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P3343742900943626104

/-! ## A098837.P6870743521140373043

`∩[A098836(n+1), A156638(n+1)]`
-/

namespace A098837.P6870743521140373043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P6870743521140373043

/-! ## A098837.P15494498406947541065

`∩[A006753(n+1), A176540(n+1)]`
-/

namespace A098837.P15494498406947541065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P15494498406947541065

/-! ## A098837.P14009245776325493499

`∩[A098836(n+1), A176540(n+1)]`
-/

namespace A098837.P14009245776325493499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P14009245776325493499

/-! ## A098837.P14617203184639101342

`∩[A006753(n+1), A077135(n+1)]`
-/

namespace A098837.P14617203184639101342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P14617203184639101342

/-! ## A098837.P966132832786294273

`∩[A006753(n+1), A077136(n+1)]`
-/

namespace A098837.P966132832786294273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P966132832786294273

/-! ## A098837.P4742786157997530712

`∩[A077135(n+1), A098836(n+1)]`
-/

namespace A098837.P4742786157997530712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P4742786157997530712

/-! ## A098837.P14346553497871360531

`∩[A077136(n+1), A098836(n+1)]`
-/

namespace A098837.P14346553497871360531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P14346553497871360531

/-! ## A098837.P6232562229529719298

`∩[A006753(n+1), A037143(n+1)]`
-/

namespace A098837.P6232562229529719298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P6232562229529719298

/-! ## A098837.P8542821982077269177

`∩[A037143(n+1), A098836(n+1)]`
-/

namespace A098837.P8542821982077269177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098837.P8542821982077269177

/-! ## A098837.P2029486199649045170

`record[A066048(A006753(n+1))]`
-/

namespace A098837.P2029486199649045170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A006753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098837.P2029486199649045170

/-! ## A098837.P13609598390118436856

`record[A066048(A098836(n+1))]`
-/

namespace A098837.P13609598390118436856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A098836 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098837.P13609598390118436856

/-!
# A098838: Smith cubic numbers.

The programs for A098838, there is no canonical definition to state claims against.
-/

/-! ## A098838.P10484021687278303710

`A000578(A000244(n+1)-A241469(2*n+1))`
-/

namespace A098838.P10484021687278303710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000244 (n + 1) - A241469 (2 * n + 1)).toNat

end

end A098838.P10484021687278303710

/-!
# A098839: Smith square numbers.

The programs for A098839, there is no canonical definition to state claims against.
-/

/-! ## A098839.P10883548250792212262

`∩[∪[A036924(n+1), A036925(n+1)], n²]`
-/

namespace A098839.P10883548250792212262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = x) n

end

end A098839.P10883548250792212262

/-! ## A098839.P13964587096959322779

`∩[∪[A036924(n+1), A098836(n+1)], n²]`
-/

namespace A098839.P13964587096959322779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = x) n

end

end A098839.P13964587096959322779

/-! ## A098839.P6016762491232937631

`∩[A006753(n+1), n²]`
-/

namespace A098839.P6016762491232937631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A098839.P6016762491232937631

/-! ## A098839.P18191149414878747672

`∩[A000290(n), A006753(n+1)]`
-/

namespace A098839.P18191149414878747672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098839.P18191149414878747672

/-! ## A098839.P9762405955309687679

`∩[A006446(3*n+1), A006753(n+1)]`
-/

namespace A098839.P9762405955309687679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098839.P9762405955309687679

/-!
# A098840: Smith triangular numbers.

The programs for A098840, there is no canonical definition to state claims against.
-/

/-! ## A098840.P2821390634984771791

`∩[C(n+1, 2), A006753(n+1)]`
-/

namespace A098840.P2821390634984771791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098840.P2821390634984771791

/-! ## A098840.P12538270891033783718

`∩[A006753(n+1), A000217(n)]`
-/

namespace A098840.P12538270891033783718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098840.P12538270891033783718

/-! ## A098840.P4374580197433892898

`∩[A006753(n+1), A000096(n)+1]`
-/

namespace A098840.P4374580197433892898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098840.P4374580197433892898

/-! ## A098840.P8329718552995523013

`∩[A006753(n+1), A046691(n)+4]`
-/

namespace A098840.P8329718552995523013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098840.P8329718552995523013

/-! ## A098840.P8711693019874671261

`∩[A006753(n+1), A161680(n+11)]`
-/

namespace A098840.P8711693019874671261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098840.P8711693019874671261

/-!
# A098841: Number of disconnected (decomposable) configurations of type (n_3).

The programs for A098841, there is no canonical definition to state claims against.
-/

/-! ## A098841.P5241986307804864120

`A238589(A375922(n))`
-/

namespace A098841.P5241986307804864120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (A375922 n).toNat

end

end A098841.P5241986307804864120

/-! ## A098841.P5075170812837187915

`A026803(A065565(n+1))`
-/

namespace A098841.P5075170812837187915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026803 (A065565 (n + 1)).toNat

end

end A098841.P5075170812837187915

/-! ## A098841.P13430192104239818479

`A025915(A104144(n)+1)`
-/

namespace A098841.P13430192104239818479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (A104144 n + 1).toNat

end

end A098841.P13430192104239818479

/-! ## A098841.P11324028113793567040

`A025889(A163551(n+1))`
-/

namespace A098841.P11324028113793567040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025889 (A163551 (n + 1)).toNat

end

end A098841.P11324028113793567040

/-! ## A098841.P1882920605900000317

`A025915(A251747(n)+1)`
-/

namespace A098841.P1882920605900000317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (A251747 n + 1).toNat

end

end A098841.P1882920605900000317

/-!
# A098842: Number of n-digit Fibonacci numbers.

The programs for A098842, there is no canonical definition to state claims against.
-/

/-! ## A098842.P4200756612252991145

`A331912(Δ[A072354(n+1)])`
-/

namespace A098842.P4200756612252991145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (f1 (n + 1) - f1 n).toNat

end

end A098842.P4200756612252991145

/-!
# A098844: a(1)=1, a(n) = n*a(floor(n/2)).

The programs for A098844, the canonical program `A098844.P429562639352055392` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098844 has offset 1).

The definition of A098844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(floor((n+1)/2)-1)` (program `A098844.P429562639352055392`, by `A098844.P429562639352055392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098844.P429562639352055392

`(n+1)*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098844

/-- `(n+1)*a(floor((n+1)/2)-1)` -/
def P429562639352055392.Spec : Prop :=
  ∀ n, (P429562639352055392.a n : ℤ) = A098844 (n + 1)

theorem P429562639352055392.correct : P429562639352055392.Spec := by
  intro n
  simp only [A098844, Nat.add_sub_cancel]

end A098844

/-! ## A098844.P5934790110530835493

`∏{d}[A053644(n), floor((n+1)/#)]`
-/

namespace A098844.P5934790110530835493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ⌊(n + 1 : ℚ) / (d : ℚ)⌋

end

end A098844.P5934790110530835493

namespace A098844

/-- `∏{d}[A053644(n), floor((n+1)/#)]` -/
def P5934790110530835493.Spec : Prop :=
  ∀ n, P5934790110530835493.a n = A098844 (n + 1)

end A098844

/-! ## A098844.P113119335798479940

`a(A140106(n+1))*(n+1)` with `a(0)=1`
-/

namespace A098844.P113119335798479940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A140106 (n + 1)).toNat * (n + 1)

end

end A098844.P113119335798479940

namespace A098844

/-- `a(A140106(n+1))*(n+1)` -/
def P113119335798479940.Spec : Prop :=
  ∀ n, (P113119335798479940.a n : ℤ) = A098844 (n + 1)

end A098844

/-! ## A098844.P6952090973903664703

`a(A004526(n-1))*(n+1)` with `a(0)=1`
-/

namespace A098844.P6952090973903664703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (n - 1)).toNat * (n + 1)

end

end A098844.P6952090973903664703

namespace A098844

/-- `a(A004526(n-1))*(n+1)` -/
def P6952090973903664703.Spec : Prop :=
  ∀ n, (P6952090973903664703.a n : ℤ) = A098844 (n + 1)

end A098844

/-! ## A098844.P18166277744821284661

`a(A001651(n)-n)*(n+1)` with `a(0)=1`
-/

namespace A098844.P18166277744821284661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A001651 n - (n : ℤ)).toNat * (n + 1)

end

end A098844.P18166277744821284661

namespace A098844

/-- `a(A001651(n)-n)*(n+1)` -/
def P18166277744821284661.Spec : Prop :=
  ∀ n, (P18166277744821284661.a n : ℤ) = A098844 (n + 1)

end A098844

/-!
# A098845: Numbers k such that 4^k - 2^k - 1 is prime.

The programs for A098845, there is no canonical definition to state claims against.
-/

/-! ## A098845.P377720352652623999

`eq[1, A179205(n+1)]+2`
-/

namespace A098845.P377720352652623999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098845.P377720352652623999

/-! ## A098845.P14484778316275123536

`eq[1, A191620(n+1)]+1`
-/

namespace A098845.P14484778316275123536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098845.P14484778316275123536

/-! ## A098845.P4215072871162235257

`eq[1, A187367(n+1)]+1`
-/

namespace A098845.P4215072871162235257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098845.P4215072871162235257

/-! ## A098845.P4555953540996884792

`A020725(eq[1, A187367(n+1)])`
-/

namespace A098845.P4555953540996884792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098845.P4555953540996884792

/-! ## A098845.P599459647552084453

`eq[1, A099478(n+1)]+1`
-/

namespace A098845.P599459647552084453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098845.P599459647552084453

/-!
# A098846: Number of isomorphism classes of reduced Latin cubes of order n.

The programs for A098846, there is no canonical definition to state claims against.
-/

/-! ## A098846.P14602886806138677583

`A005122(A288568(n)²)`
-/

namespace A098846.P14602886806138677583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (A288568 n ^ 2).toNat

end

end A098846.P14602886806138677583

/-!
# A098847: a(n) = n*(n + 12).

The programs for A098847, the canonical program `A098847.P15102155222867633188` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098847 has offset 0).

The definition of A098847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+12)` (program `A098847.P15102155222867633188`, by `A098847.P15102155222867633188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098847.P15102155222867633188

`n*(n+12)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098847

/-- `n*(n+12)` -/
def P15102155222867633188.Spec : Prop :=
  ∀ n, (P15102155222867633188.a n : ℤ) = A098847 n

theorem P15102155222867633188.correct : P15102155222867633188.Spec := by
  intro n
  simp only [A098847]

end A098847

/-!
# A098848: a(n) = n*(n + 14).

The programs for A098848, the canonical program `A098848.P13089362090935355705` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098848 has offset 0).

The definition of A098848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+14)` (program `A098848.P13089362090935355705`, by `A098848.P13089362090935355705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098848.P13089362090935355705

`n*(n+14)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098848

/-- `n*(n+14)` -/
def P13089362090935355705.Spec : Prop :=
  ∀ n, (P13089362090935355705.a n : ℤ) = A098848 n

theorem P13089362090935355705.correct : P13089362090935355705.Spec := by
  intro n
  simp only [A098848]

end A098848

/-!
# A098849: a(n) = n*(n + 16).

The programs for A098849, the canonical program `A098849.P2368772450570550712` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098849 has offset 0).

The definition of A098849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+16)` (program `A098849.P2368772450570550712`, by `A098849.P2368772450570550712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098849.P2368772450570550712

`n*(n+16)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098849

/-- `n*(n+16)` -/
def P2368772450570550712.Spec : Prop :=
  ∀ n, (P2368772450570550712.a n : ℤ) = A098849 n

theorem P2368772450570550712.correct : P2368772450570550712.Spec := by
  intro n
  simp only [A098849]

end A098849

/-!
# A098850: a(n) = n*(n + 18).

The programs for A098850, the canonical program `A098850.P17400619238635245445` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098850 has offset 0).

The definition of A098850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+18)` (program `A098850.P17400619238635245445`, by `A098850.P17400619238635245445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098850.P17400619238635245445

`n*(n+18)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098850

/-- `n*(n+18)` -/
def P17400619238635245445.Spec : Prop :=
  ∀ n, (P17400619238635245445.a n : ℤ) = A098850 n

theorem P17400619238635245445.correct : P17400619238635245445.Spec := by
  intro n
  simp only [A098850]

end A098850

/-!
# A098852: Number of triangle-free self-dual configurations of type (n_3).

The programs for A098852, there is no canonical definition to state claims against.
-/

/-! ## A098852.P4042477486727030724

`xor(3, A092486(A098854(n+1)))`
-/

namespace A098852.P4042477486727030724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A092486 (A098854 (n + 1)).toNat)

end

end A098852.P4042477486727030724

/-! ## A098852.P12064013633926266155

`A098854(n+1)+Δ[A061858(n+3)]`
-/

namespace A098852.P12064013633926266155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (n + 1) + (f1 (n + 1) - f1 n)

end

end A098852.P12064013633926266155

/-! ## A098852.P12242220420303019698

`A098854(n+1)+A053415(A029446(n))`
-/

namespace A098852.P12242220420303019698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (n + 1) + A053415 (A029446 n).toNat

end

end A098852.P12242220420303019698

/-! ## A098852.P5480851911418256896

`A098854(n+1)+A061858(A049872(n))`
-/

namespace A098852.P5480851911418256896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (n + 1) + A061858 (A049872 n).toNat

end

end A098852.P5480851911418256896

/-! ## A098852.P6499205457407079235

`A098854(n+1)+A053415(A109705(n))`
-/

namespace A098852.P6499205457407079235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (n + 1) + A053415 (A109705 n).toNat

end

end A098852.P6499205457407079235

/-!
# A098853: Consider the smallest denominator q such that the Sylvester expansion of n/q has n terms. Here q has the form q = k*n+1 and we set a(n) = k.

The programs for A098853, there is no canonical definition to state claims against.
-/

/-! ## A098853.P3193598582695932285

`(A048860(n+1)-1)/(n+1)`
-/

namespace A098853.P3193598582695932285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048860 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A098853.P3193598582695932285

/-! ## A098853.P15592241988987092151

`floor(A048860(n+1)/A031285(n))`
-/

namespace A098853.P15592241988987092151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048860 (n + 1) : ℚ) / (A031285 n : ℚ)⌋

end

end A098853.P15592241988987092151

/-! ## A098853.P9281838925753736373

`xor(1, A048860(n+1))/A000027(n+1)`
-/

namespace A098853.P9281838925753736373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A048860 (n + 1)) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A098853.P9281838925753736373

/-! ## A098853.P465896632799945477

`A326186((A048860(n+1)+n)/(n+1))`
-/

namespace A098853.P465896632799945477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (SequenceMachineLib.roundAway ((A048860 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A098853.P465896632799945477

/-!
# A098854: Number of triangle-free self-polar configurations of type (n_3).

The programs for A098854, there is no canonical definition to state claims against.
-/

/-! ## A098854.P15186191478849411457

`A326058(A098852(n+1)+1)`
-/

namespace A098854.P15186191478849411457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (A098852 (n + 1) + 1).toNat

end

end A098854.P15186191478849411457

/-! ## A098854.P6458452361252977985

`A098852(n+1)-A350139(n+4)²`
-/

namespace A098854.P6458452361252977985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (n + 1) - A350139 (n + 4) ^ 2

end

end A098854.P6458452361252977985

/-! ## A098854.P8530041565412238531

`A098852(n+1)-Δ[A061858(n+3)]`
-/

namespace A098854.P8530041565412238531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (n + 1) - (f1 (n + 1) - f1 n)

end

end A098854.P8530041565412238531

/-! ## A098854.P9716510451006448523

`A098852(n+1)-A006822(A001299(n))`
-/

namespace A098854.P9716510451006448523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (n + 1) - A006822 (A001299 n).toNat

end

end A098854.P9716510451006448523

/-! ## A098854.P523094656428316284

`A098852(n+1)-A053415(A029446(n))`
-/

namespace A098854.P523094656428316284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (n + 1) - A053415 (A029446 n).toNat

end

end A098854.P523094656428316284

/-!
# A098855: Numbers k such that 4^k + 2^k - 1 is prime.

The programs for A098855, there is no canonical definition to state claims against.
-/

/-! ## A098855.P9774649205150076317

`eq[1, A187369(n+1)]+1`
-/

namespace A098855.P9774649205150076317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098855.P9774649205150076317

/-! ## A098855.P12017298822223489456

`lt[A191618(n+1), 2]+1`
-/

namespace A098855.P12017298822223489456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191618 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098855.P12017298822223489456

/-! ## A098855.P16216964850927528955

`lt[A187369(n+1), A039649(A187369(n+1)+1)]+1`
-/

namespace A098855.P16216964850927528955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A187369 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A098855.P16216964850927528955

/-! ## A098855.P838851621653617075

`eq[2, A153436(n+1)]+1`
-/

namespace A098855.P838851621653617075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098855.P838851621653617075

/-!
# A098858: Primes p such that floor(sqrt(2)*p) is also a prime.

The programs for A098858, the canonical program `A098858.P15736008101961754754` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098858 has offset 1).

The definition of A098858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098858.P15736008101961754754

`p?[A184775(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098858

/-- `p?[A184775(n+1)]` -/
def P15736008101961754754.Spec : Prop :=
  ∀ n, P15736008101961754754.a n = A098858 (n + 1)

theorem P15736008101961754754.correct : P15736008101961754754.Spec := by
  intro n
  simp only [A098858, Nat.add_sub_cancel]

end A098858

/-! ## A098858.P15736880965005007731

`∩[A184774(n+1), A184775(n+1)]`
-/

namespace A098858.P15736880965005007731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P15736880965005007731

namespace A098858

/-- `∩[A184774(n+1), A184775(n+1)]` -/
def P15736880965005007731.Spec : Prop :=
  ∀ n, (P15736880965005007731.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P13091363596320065306

`∩[A106118(n+1), A184775(n+1)]`
-/

namespace A098858.P13091363596320065306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P13091363596320065306

namespace A098858

/-- `∩[A106118(n+1), A184775(n+1)]` -/
def P13091363596320065306.Spec : Prop :=
  ∀ n, (P13091363596320065306.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P551740700584431190

`∩[A184775(n+1), A261123(n+1)]`
-/

namespace A098858.P551740700584431190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P551740700584431190

namespace A098858

/-- `∩[A184775(n+1), A261123(n+1)]` -/
def P551740700584431190.Spec : Prop :=
  ∀ n, (P551740700584431190.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P10438324397698942694

`∩[A000040(n+1), A184775(n+1)]`
-/

namespace A098858.P10438324397698942694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P10438324397698942694

namespace A098858

/-- `∩[A000040(n+1), A184775(n+1)]` -/
def P10438324397698942694.Spec : Prop :=
  ∀ n, (P10438324397698942694.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P16960660416934955442

`∩[A008578(n+1), A184775(n+1)]`
-/

namespace A098858.P16960660416934955442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P16960660416934955442

namespace A098858

/-- `∩[A008578(n+1), A184775(n+1)]` -/
def P16960660416934955442.Spec : Prop :=
  ∀ n, (P16960660416934955442.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P5169426007260415389

`∩[A033946(n+1), A184775(n+1)]`
-/

namespace A098858.P5169426007260415389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P5169426007260415389

namespace A098858

/-- `∩[A033946(n+1), A184775(n+1)]` -/
def P5169426007260415389.Spec : Prop :=
  ∀ n, (P5169426007260415389.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P4297603671100865396

`∩[A045344(n+1), A184775(n+1)]`
-/

namespace A098858.P4297603671100865396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P4297603671100865396

namespace A098858

/-- `∩[A045344(n+1), A184775(n+1)]` -/
def P4297603671100865396.Spec : Prop :=
  ∀ n, (P4297603671100865396.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P13728879129117356388

`∩[A116974(n+1), A184775(n+1)]`
-/

namespace A098858.P13728879129117356388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P13728879129117356388

namespace A098858

/-- `∩[A116974(n+1), A184775(n+1)]` -/
def P13728879129117356388.Spec : Prop :=
  ∀ n, (P13728879129117356388.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P3469133880438503113

`∩[A158611(n+1), A184775(n+1)]`
-/

namespace A098858.P3469133880438503113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P3469133880438503113

namespace A098858

/-- `∩[A158611(n+1), A184775(n+1)]` -/
def P3469133880438503113.Spec : Prop :=
  ∀ n, (P3469133880438503113.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P11830059448155968108

`∩[A182986(n+1), A184775(n+1)]`
-/

namespace A098858.P11830059448155968108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P11830059448155968108

namespace A098858

/-- `∩[A182986(n+1), A184775(n+1)]` -/
def P11830059448155968108.Spec : Prop :=
  ∀ n, (P11830059448155968108.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P9351137444178854378

`∩[A184775(n+1), A189710(n+1)]`
-/

namespace A098858.P9351137444178854378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P9351137444178854378

namespace A098858

/-- `∩[A184775(n+1), A189710(n+1)]` -/
def P9351137444178854378.Spec : Prop :=
  ∀ n, (P9351137444178854378.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P18303739680683767827

`∩[A184775(n+1), A348440(n+1)]`
-/

namespace A098858.P18303739680683767827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P18303739680683767827

namespace A098858

/-- `∩[A184775(n+1), A348440(n+1)]` -/
def P18303739680683767827.Spec : Prop :=
  ∀ n, (P18303739680683767827.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P12766971254837488457

`record[A020639(A184775(n+2))]`
-/

namespace A098858.P12766971254837488457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A184775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098858.P12766971254837488457

namespace A098858

/-- `record[A020639(A184775(n+2))]` -/
def P12766971254837488457.Spec : Prop :=
  ∀ n, P12766971254837488457.a n = A098858 (n + 1)

end A098858

/-! ## A098858.P8435226309208765624

`filter[A184775(n+1), A010051(#)]`
-/

namespace A098858.P8435226309208765624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A098858.P8435226309208765624

namespace A098858

/-- `filter[A184775(n+1), A010051(#)]` -/
def P8435226309208765624.Spec : Prop :=
  ∀ n, P8435226309208765624.a n = A098858 (n + 1)

end A098858

/-! ## A098858.P104479804718335488

`∩[A184775(n+1), A372059(n+1)]`
-/

namespace A098858.P104479804718335488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P104479804718335488

namespace A098858

/-- `∩[A184775(n+1), A372059(n+1)]` -/
def P104479804718335488.Spec : Prop :=
  ∀ n, (P104479804718335488.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P3928765230012900274

`filter[A184775(n+1), A080339(#)]`
-/

namespace A098858.P3928765230012900274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A098858.P3928765230012900274

namespace A098858

/-- `filter[A184775(n+1), A080339(#)]` -/
def P3928765230012900274.Spec : Prop :=
  ∀ n, P3928765230012900274.a n = A098858 (n + 1)

end A098858

/-! ## A098858.P14774157922686304572

`A000040(record[A049084(A184775(n+1))])`
-/

namespace A098858.P14774157922686304572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A184775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098858.P14774157922686304572

namespace A098858

/-- `A000040(record[A049084(A184775(n+1))])` -/
def P14774157922686304572.Spec : Prop :=
  ∀ n, P14774157922686304572.a n = A098858 (n + 1)

end A098858

/-! ## A098858.P3556571579476209292

`∩[A184775(n+1), A240960(n+1)]`
-/

namespace A098858.P3556571579476209292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098858.P3556571579476209292

namespace A098858

/-- `∩[A184775(n+1), A240960(n+1)]` -/
def P3556571579476209292.Spec : Prop :=
  ∀ n, (P3556571579476209292.a n : ℤ) = A098858 (n + 1)

end A098858

/-! ## A098858.P7532484833610218500

`p?[A026249(p?[A001951(n)])]`
-/

namespace A098858.P7532484833610218500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098858.P7532484833610218500

namespace A098858

/-- `p?[A026249(p?[A001951(n)])]` -/
def P7532484833610218500.Spec : Prop :=
  ∀ n, P7532484833610218500.a n = A098858 (n + 1)

end A098858

/-!
# A098859: Number of partitions of n into parts each of which is used a different number of times.

The programs for A098859, there is no canonical definition to state claims against.
-/

/-! ## A098859.P14901020488899011924

`A373244(A064226(n))`
-/

namespace A098859.P14901020488899011924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (A064226 n).toNat

end

end A098859.P14901020488899011924

/-! ## A098859.P13833940848325053734

`A373244(A081267(n))`
-/

namespace A098859.P13833940848325053734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (A081267 n).toNat

end

end A098859.P13833940848325053734

/-! ## A098859.P6669624325614905686

`A373244(A140064(n+1))`
-/

namespace A098859.P6669624325614905686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (A140064 (n + 1)).toNat

end

end A098859.P6669624325614905686

/-! ## A098859.P1586876555536003485

`A373244(∑[A033627(3*n+1)]+n)`
-/

namespace A098859.P1586876555536003485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A098859.P1586876555536003485

/-! ## A098859.P1325477636998035879

`A373244(A047254(3*n+1)+A006137(n))`
-/

namespace A098859.P1325477636998035879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (A047254 (3 * n + 1) + A006137 n).toNat

end

end A098859.P1325477636998035879

/-! ## A098859.P11578824582623278184

`A373244(A006137(n+1))`
-/

namespace A098859.P11578824582623278184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (A006137 (n + 1)).toNat

end

end A098859.P11578824582623278184

/-! ## A098859.P3316823744240453412

`A373244(A360417(n+1))`
-/

namespace A098859.P3316823744240453412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373244 (A360417 (n + 1)).toNat

end

end A098859.P3316823744240453412

/-!
# A098861: a(n) = row number in Stolarsky array that contains n. If the first occurrence of a number in the sequence is deleted, the sequence remains unchanged.

The programs for A098861, there is no canonical definition to state claims against.
-/

/-! ## A098861.P13169097184948940773

`A133299(n+1)-1`
-/

namespace A098861.P13169097184948940773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133299 (n + 1) - 1

end

end A098861.P13169097184948940773

/-! ## A098861.P10527660501591474548

`A002837(A133299(n+1))`
-/

namespace A098861.P10527660501591474548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A133299 (n + 1)).toNat

end

end A098861.P10527660501591474548

/-! ## A098861.P11404202364334498880

`A057918(A133299(n+1)²)`
-/

namespace A098861.P11404202364334498880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A133299 (n + 1) ^ 2).toNat

end

end A098861.P11404202364334498880

/-! ## A098861.P171374269591633861

`A214526(A133299(n+1)²)`
-/

namespace A098861.P171374269591633861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A133299 (n + 1) ^ 2).toNat

end

end A098861.P171374269591633861

/-! ## A098861.P4537232028361362076

`A259361(A133299(n+1)²)`
-/

namespace A098861.P4537232028361362076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A133299 (n + 1) ^ 2).toNat

end

end A098861.P4537232028361362076

/-! ## A098861.P1298675638538699138

`A023444(A133299(n+1)+1)`
-/

namespace A098861.P1298675638538699138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A133299 (n + 1) + 1).toNat

end

end A098861.P1298675638538699138

/-! ## A098861.P6997247814878354819

`A289207(A133299(n+1)+1)`
-/

namespace A098861.P6997247814878354819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A133299 (n + 1) + 1).toNat

end

end A098861.P6997247814878354819

/-! ## A098861.P15879843247637674412

`A002262(A064357(n+1)-1)`
-/

namespace A098861.P15879843247637674412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A064357 (n + 1) - 1).toNat

end

end A098861.P15879843247637674412

/-! ## A098861.P16214379784857078547

`A023448(A133299(n+1)+5)`
-/

namespace A098861.P16214379784857078547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A133299 (n + 1) + 5).toNat

end

end A098861.P16214379784857078547

/-!
# A098862: a(n) = column number of Stolarsky array that contains n.

The programs for A098862, there is no canonical definition to state claims against.
-/

/-! ## A098862.P1117265127178442053

`round(log(A255973(n+1)²))`
-/

namespace A098862.P1117265127178442053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A255973 (n + 1) ^ 2 : ℝ))

end

end A098862.P1117265127178442053

/-! ## A098862.P9982368173397381191

`val(A200714(n+1)+1, 2)`
-/

namespace A098862.P9982368173397381191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200714 (n + 1) + 1).toNat 2

end

end A098862.P9982368173397381191

/-! ## A098862.P1226238536944031192

`A007814(A200714(n+1)+1)`
-/

namespace A098862.P1226238536944031192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A200714 (n + 1) + 1).toNat

end

end A098862.P1226238536944031192

/-! ## A098862.P15460141918471735318

`A004736(A064357(n+1))-1`
-/

namespace A098862.P15460141918471735318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064357 (n + 1)).toNat - 1

end

end A098862.P15460141918471735318

/-! ## A098862.P8407765911228057709

`A025581(A064357(n+1)-1)`
-/

namespace A098862.P8407765911228057709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A064357 (n + 1) - 1).toNat

end

end A098862.P8407765911228057709

/-! ## A098862.P9697842966113714966

`A035614(A256662(n+1)-1)`
-/

namespace A098862.P9697842966113714966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (A256662 (n + 1) - 1).toNat

end

end A098862.P9697842966113714966

/-! ## A098862.P8358334170575605379

`abs(1-A004736(A064357(2*n-(n-1))))`
-/

namespace A098862.P8358334170575605379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004736 (A064357 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat|

end

end A098862.P8358334170575605379

/-! ## A098862.P5029014776314087506

`A035612(A256662(-xor(n, -1)))-((-1)^n)²`
-/

namespace A098862.P5029014776314087506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A256662 (-Int.xor (n : ℤ) (-1)).toNat).toNat - ((-1) ^ n) ^ 2

end

end A098862.P5029014776314087506

/-! ## A098862.P2407370413951239839

`A035612(A256662(n+1))-abs(A033999(n))`
-/

namespace A098862.P2407370413951239839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A256662 (n + 1)).toNat - |A033999 n|

end

end A098862.P2407370413951239839

/-! ## A098862.P3090604004104320479

`A166931(n+1)%A035612(A256662(n+1))`
-/

namespace A098862.P3090604004104320479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A035612 (A256662 (n + 1)).toNat)

end

end A098862.P3090604004104320479

/-!
# A098863: Numbers k such that (6^k)*(2^k - 1) - 1 is prime.

The programs for A098863, there is no canonical definition to state claims against.
-/

/-! ## A098863.P226304315415191929

`∑[A213948(2^n)]`
-/

namespace A098863.P226304315415191929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213948 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098863.P226304315415191929

/-! ## A098863.P14096630167620540430

`∑[A124258(n^n)]`
-/

namespace A098863.P14096630167620540430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124258 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098863.P14096630167620540430

/-!
# A098865: Primes of the form prime(n) + prime(n+1) - prime(n+2).

The programs for A098865, there is no canonical definition to state claims against.
-/

/-! ## A098865.P2930357834488895424

`A291934(record[A098761(n+1)])`
-/

namespace A098865.P2930357834488895424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098865.P2930357834488895424

/-! ## A098865.P11340826631034404085

`A291934(record[p?[A096379(n+1)]])`
-/

namespace A098865.P11340826631034404085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098865.P11340826631034404085

/-! ## A098865.P11446924615613807714

`A006530(record[A098761(n+1)]*A132886(n))`
-/

namespace A098865.P11446924615613807714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A132886 n).toNat

end

end A098865.P11446924615613807714

/-! ## A098865.P11779212756127280148

`record[A098761(A131967(n+1))]`
-/

namespace A098865.P11779212756127280148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098761 (A131967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098865.P11779212756127280148

/-! ## A098865.P501418913764660181

`record[A098761(A275892(n+1))]`
-/

namespace A098865.P501418913764660181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098761 (A275892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098865.P501418913764660181

/-!
# A098868: Numbers n where A098018(n)=0.

The programs for A098868, there is no canonical definition to state claims against.
-/

/-! ## A098868.P2832689194949589235

`eq[0, A098018(n+1)]+1`
-/

namespace A098868.P2832689194949589235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098868.P2832689194949589235

/-! ## A098868.P12486465714330943948

`lt[lcm(2, A098018(abs(1-n)+1)), 2]`
-/

namespace A098868.P12486465714330943948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A098018 (|1 - (n : ℤ)| + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098868.P12486465714330943948

/-! ## A098868.P17782851709976696394

`record[gcd(n+1, A098018(A000027(n+1)))]`
-/

namespace A098868.P17782851709976696394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A098018 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098868.P17782851709976696394

/-! ## A098868.P429102998917551369

`record[gcd(A028310(n+1), A098018(n+1))]`
-/

namespace A098868.P429102998917551369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A098018 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098868.P429102998917551369

/-! ## A098868.P15400144641495757543

`lt[lcm(A000145(n), A098018(n+1)), 2]+1`
-/

namespace A098868.P15400144641495757543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000145 n) (A098018 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A098868.P15400144641495757543

/-! ## A098868.P8151867563094866964

`record[n+1-A229151(A098018(n+1)²)]`
-/

namespace A098868.P8151867563094866964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A229151 (A098018 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098868.P8151867563094866964

/-! ## A098868.P17134939743527040962

`record[gcd(A098018(n+1)², A008611(3*n))]`
-/

namespace A098868.P17134939743527040962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098018 (n + 1) ^ 2) (A008611 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098868.P17134939743527040962

/-! ## A098868.P3413928607900152193

`record[n+1-A160656(A098018(n+1)²+1)²]`
-/

namespace A098868.P3413928607900152193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A160656 (A098018 (n + 1) ^ 2 + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098868.P3413928607900152193

/-!
# A098870: Sum of the cubes of the digits of the previous term, starting with 2.

The programs for A098870, the canonical program `A098870.P1759252361198647536` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098870 has offset 1).

The definition of A098870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098870.P1759252361198647536

`A055012(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098870

/-- `A055012(a(n-1))` -/
def P1759252361198647536.Spec : Prop :=
  ∀ n, P1759252361198647536.a n = A098870 (n + 1)

theorem P1759252361198647536.correct : P1759252361198647536.Spec := by
  intro n
  simp only [A098870, Nat.add_sub_cancel]

end A098870

/-!
# A098871: Sums of distinct powers of 4 plus 1.

The programs for A098871, the canonical program `A098871.P11206898626946488056` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098871 has offset 0).

The definition of A098871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098871.P11206898626946488056

`A000695(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098871

/-- `A000695(n)+1` -/
def P11206898626946488056.Spec : Prop :=
  ∀ n, P11206898626946488056.a n = A098871 n

theorem P11206898626946488056.correct : P11206898626946488056.Spec := by
  intro n
  simp only [A098871]

end A098871

/-! ## A098871.P18157018082740664875

`a(and(n, n-1))+and(n, -n)²` with `a(0)=1`
-/

namespace A098871.P18157018082740664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2

end

end A098871.P18157018082740664875

namespace A098871

/-- `a(and(n, n-1))+and(n, -n)²` -/
def P18157018082740664875.Spec : Prop :=
  ∀ n, P18157018082740664875.a n = A098871 n

end A098871

/-! ## A098871.P1286513996143722147

`(2*∑[and(n, -n)²]+n)/3+1`
-/

namespace A098871.P1286513996143722147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3 + 1

end

end A098871.P1286513996143722147

namespace A098871

/-- `(2*∑[and(n, -n)²]+n)/3+1` -/
def P1286513996143722147.Spec : Prop :=
  ∀ n, P1286513996143722147.a n = (A098871 n : ℚ)

end A098871

/-! ## A098871.P1125468474069466005

`4*∑[ceil(xor(n, -n)²/3)]/8+1`
-/

namespace A098871.P1125468474069466005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 8 + 1

end

end A098871.P1125468474069466005

namespace A098871

/-- `4*∑[ceil(xor(n, -n)²/3)]/8+1` -/
def P1125468474069466005.Spec : Prop :=
  ∀ n, P1125468474069466005.a n = (A098871 n : ℚ)

end A098871

/-! ## A098871.P1994499738463898366

`and(1-2*a(n-1), 3*a(n-1)-1)` with `a(0)=1`
-/

namespace A098871.P1994499738463898366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (1 - 2 * a (n - 1)) (3 * a (n - 1) - 1)

end

end A098871.P1994499738463898366

namespace A098871

/-- `and(1-2*a(n-1), 3*a(n-1)-1)` -/
def P1994499738463898366.Spec : Prop :=
  ∀ n, P1994499738463898366.a n = A098871 n

end A098871

/-! ## A098871.P14336415143056016634

`xor(3*a(n-1)-1, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A098871.P14336415143056016634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (3 * a (n - 1) - 1) (a (n - 1)) - a (n - 1)

end

end A098871.P14336415143056016634

namespace A098871

/-- `xor(3*a(n-1)-1, a(n-1))-a(n-1)` -/
def P14336415143056016634.Spec : Prop :=
  ∀ n, P14336415143056016634.a n = A098871 n

end A098871

/-! ## A098871.P6408641818278962846

`xor(a(n-1)+a(n-1)+a(n-1)-1, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A098871.P6408641818278962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) + (a (n - 1) + (a (n - 1) - 1))) (a (n - 1)) - a (n - 1)

end

end A098871.P6408641818278962846

namespace A098871

/-- `xor(a(n-1)+a(n-1)+a(n-1)-1, a(n-1))-a(n-1)` -/
def P6408641818278962846.Spec : Prop :=
  ∀ n, P6408641818278962846.a n = A098871 n

end A098871

/-! ## A098871.P7560190365676172816

`xor(a(n-1)-(1-a(n-1)-a(n-1)), a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A098871.P7560190365676172816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) - (1 - a (n - 1) - a (n - 1))) (a (n - 1)) - a (n - 1)

end

end A098871.P7560190365676172816

namespace A098871

/-- `xor(a(n-1)-(1-a(n-1)-a(n-1)), a(n-1))-a(n-1)` -/
def P7560190365676172816.Spec : Prop :=
  ∀ n, P7560190365676172816.a n = A098871 n

end A098871

/-! ## A098871.P4711694250518430827

`floor(A147568(n)/2)`
-/

namespace A098871.P4711694250518430827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147568 n : ℚ) / 2⌋

end

end A098871.P4711694250518430827

namespace A098871

/-- `floor(A147568(n)/2)` -/
def P4711694250518430827.Spec : Prop :=
  ∀ n, P4711694250518430827.a n = A098871 n

end A098871

/-! ## A098871.P2336009494613768450

`A062880(n)/2+1`
-/

namespace A098871.P2336009494613768450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 n : ℚ) / 2 + 1

end

end A098871.P2336009494613768450

namespace A098871

/-- `A062880(n)/2+1` -/
def P2336009494613768450.Spec : Prop :=
  ∀ n, P2336009494613768450.a n = (A098871 n : ℚ)

theorem P2336009494613768450.correct : P2336009494613768450.Spec := by
  intro n
  simp only [A098871, Nat.add_sub_cancel, A098871.P2336009494613768450.a, A098871.P11206898626946488056.a, A000695, A000695.P14587171459336407380.a, A062880, A062880.P2055745413581106128.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098871

/-! ## A098871.P107377549366082642

`A001196(n)/3+1`
-/

namespace A098871.P107377549366082642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n : ℚ) / 3 + 1

end

end A098871.P107377549366082642

namespace A098871

/-- `A001196(n)/3+1` -/
def P107377549366082642.Spec : Prop :=
  ∀ n, P107377549366082642.a n = (A098871 n : ℚ)

theorem P107377549366082642.correct : P107377549366082642.Spec := by
  intro n
  simp only [A098871, Nat.add_sub_cancel, A098871.P107377549366082642.a, A098871.P11206898626946488056.a, A000695, A000695.P14587171459336407380.a, A001196, A001196.P5634847783591410852.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098871

/-! ## A098871.P6988017916542401373

`(A145812(n+1)+1)/2`
-/

namespace A098871.P6988017916542401373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145812 (n + 1) + 1 : ℚ) / 2

end

end A098871.P6988017916542401373

namespace A098871

/-- `(A145812(n+1)+1)/2` -/
def P6988017916542401373.Spec : Prop :=
  ∀ n, P6988017916542401373.a n = (A098871 n : ℚ)

end A098871

/-! ## A098871.P13579222785968276041

`(A145818(n+1)+3)/4`
-/

namespace A098871.P13579222785968276041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145818 (n + 1) + 3 : ℚ) / 4

end

end A098871.P13579222785968276041

namespace A098871

/-- `(A145818(n+1)+3)/4` -/
def P13579222785968276041.Spec : Prop :=
  ∀ n, P13579222785968276041.a n = (A098871 n : ℚ)

end A098871

/-! ## A098871.P11478306830243538932

`A276391(n)+a(n-1)` with `a(0)=1`
-/

namespace A098871.P11478306830243538932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276391 n + a (n - 1)

end

end A098871.P11478306830243538932

namespace A098871

/-- `A276391(n)+a(n-1)` -/
def P11478306830243538932.Spec : Prop :=
  ∀ n, P11478306830243538932.a n = A098871 n

end A098871

/-! ## A098871.P10887549431211401500

`xor(A000695(n), A010684(n))`
-/

namespace A098871.P10887549431211401500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000695 n) (A010684 n)

end

end A098871.P10887549431211401500

namespace A098871

/-- `xor(A000695(n), A010684(n))` -/
def P10887549431211401500.Spec : Prop :=
  ∀ n, P10887549431211401500.a n = A098871 n

end A098871

/-! ## A098871.P4444413966615601960

`A145818(n+1)-A001196(n)`
-/

namespace A098871.P4444413966615601960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1) - A001196 n

end

end A098871.P4444413966615601960

namespace A098871

/-- `A145818(n+1)-A001196(n)` -/
def P4444413966615601960.Spec : Prop :=
  ∀ n, P4444413966615601960.a n = A098871 n

end A098871

/-! ## A098871.P16926822799642494618

`A126684(A004761(n+2))+1`
-/

namespace A098871.P16926822799642494618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (A004761 (n + 2)).toNat + 1

end

end A098871.P16926822799642494618

namespace A098871

/-- `A126684(A004761(n+2))+1` -/
def P16926822799642494618.Spec : Prop :=
  ∀ n, P16926822799642494618.a n = A098871 n

end A098871

/-! ## A098871.P1979874257496426545

`A212591(2*n+1)/2+1`
-/

namespace A098871.P1979874257496426545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212591 (2 * n + 1) : ℚ) / 2 + 1

end

end A098871.P1979874257496426545

namespace A098871

/-- `A212591(2*n+1)/2+1` -/
def P1979874257496426545.Spec : Prop :=
  ∀ n, P1979874257496426545.a n = (A098871 n : ℚ)

end A098871

/-! ## A098871.P3514717084678830179

`A215024(A062877(n))+1`
-/

namespace A098871.P3514717084678830179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215024 (A062877 n).toNat + 1

end

end A098871.P3514717084678830179

namespace A098871

/-- `A215024(A062877(n))+1` -/
def P3514717084678830179.Spec : Prop :=
  ∀ n, P3514717084678830179.a n = A098871 n

end A098871

/-! ## A098871.P8800733641953395509

`A023717(A003278(n+1))`
-/

namespace A098871.P8800733641953395509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A003278 (n + 1)).toNat

end

end A098871.P8800733641953395509

namespace A098871

/-- `A023717(A003278(n+1))` -/
def P8800733641953395509.Spec : Prop :=
  ∀ n, P8800733641953395509.a n = A098871 n

end A098871

/-!
# A098872: Least k such that 2*((6*n)^k) + 1 is prime.

The programs for A098872, there is no canonical definition to state claims against.
-/

/-! ## A098872.P4240650401064572605

`A253178(4*(n+1))`
-/

namespace A098872.P4240650401064572605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253178 (4 * (n + 1))

end

end A098872.P4240650401064572605

/-! ## A098872.P9165541643570693940

`A119624(6*(n+1))`
-/

namespace A098872.P9165541643570693940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (6 * (n + 1))

end

end A098872.P9165541643570693940

/-! ## A098872.P539709237251737591

`dr(A253178(Δ[A001844(n)]))`
-/

namespace A098872.P539709237251737591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A253178 (f1 (n + 1) - f1 n).toNat)

end

end A098872.P539709237251737591

/-! ## A098872.P11990567580435521414

`dr(A253178(Δ[A046092(n)]))`
-/

namespace A098872.P11990567580435521414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A253178 (f1 (n + 1) - f1 n).toNat)

end

end A098872.P11990567580435521414

/-! ## A098872.P6127972736473025515

`dr(A253178(A008574(n+1)))`
-/

namespace A098872.P6127972736473025515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A253178 (A008574 (n + 1)).toNat)

end

end A098872.P6127972736473025515

/-!
# A098873: Least k such that 2*((6*n)^k) - 1 is prime.

The programs for A098873, there is no canonical definition to state claims against.
-/

/-! ## A098873.P14230190938477523606

`A119591(6*(n+1))`
-/

namespace A098873.P14230190938477523606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119591 (6 * (n + 1))

end

end A098873.P14230190938477523606

/-! ## A098873.P1349481709648841652

`gcd(∑[n+3], A326116(A008970(n+2)))`
-/

namespace A098873.P1349481709648841652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A326116 (A008970 (n + 2)).toNat)

end

end A098873.P1349481709648841652

/-! ## A098873.P18176108066419887090

`gcd(A141214(n), A276241(A033638(n)))`
-/

namespace A098873.P18176108066419887090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141214 n) (A276241 (A033638 n).toNat)

end

end A098873.P18176108066419887090

/-! ## A098873.P15101576010867171177

`gcd(A343949(n), A343960(A226422(n+1)))`
-/

namespace A098873.P15101576010867171177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343949 n) (A343960 (A226422 (n + 1)).toNat)

end

end A098873.P15101576010867171177

/-! ## A098873.P18092077269803287212

`A086350(A002260(n+1)*A240394(n+1))`
-/

namespace A098873.P18092077269803287212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086350 (A002260 (n + 1) * A240394 (n + 1)).toNat

end

end A098873.P18092077269803287212

/-!
# A098876: Least k such that 3*((6*n)^k) - 1 is prime.

The programs for A098876, there is no canonical definition to state claims against.
-/

/-! ## A098876.P13322650205122339081

`A049077(A323269(n+1)-n)`
-/

namespace A098876.P13322650205122339081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A323269 (n + 1) - (n : ℤ)).toNat

end

end A098876.P13322650205122339081

/-! ## A098876.P12944764776660371692

`A003178(Δ[A137902(n+1)]²)`
-/

namespace A098876.P12944764776660371692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003178 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A098876.P12944764776660371692

/-! ## A098876.P4999929860281449782

`A108738(∏{d}[A280539(n+1), #])`
-/

namespace A098876.P4999929860281449782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A098876.P4999929860281449782

/-!
# A098878: a(n) = (2^n - 1)^3 - 2.

The programs for A098878, the canonical program `A098878.P6919712107640912051` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098878 has offset 0).

The definition of A098878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)^3-2` (program `A098878.P6919712107640912051`, by `A098878.P6919712107640912051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098878.P6919712107640912051

`(2^n-1)^3-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098878

/-- `(2^n-1)^3-2` -/
def P6919712107640912051.Spec : Prop :=
  ∀ n, P6919712107640912051.a n = A098878 n

theorem P6919712107640912051.correct : P6919712107640912051.Spec := by
  intro n
  simp only [A098878]

end A098878

/-! ## A098878.P12417107288908603963

`record[A173787(n)^3-2]`
-/

namespace A098878.P12417107288908603963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n ^ 3 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098878.P12417107288908603963

namespace A098878

/-- `record[A173787(n)^3-2]` -/
def P12417107288908603963.Spec : Prop :=
  ∀ n, P12417107288908603963.a n = A098878 n

end A098878

/-! ## A098878.P3335666574861378372

`(A151821(A008486(n))-(A169726(n)+2))%A049416(2*n+1)`
-/

namespace A098878.P3335666574861378372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151821 (A008486 n).toNat - (A169726 n + 2)) (A049416 (2 * n + 1))

end

end A098878.P3335666574861378372

namespace A098878

/-- `(A151821(A008486(n))-(A169726(n)+2))%A049416(2*n+1)` -/
def P3335666574861378372.Spec : Prop :=
  ∀ n, P3335666574861378372.a n = A098878 n

end A098878

/-! ## A098878.P2538143553047758898

`xor(-1, A024001(A000225(n)))`
-/

namespace A098878.P2538143553047758898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (A024001 (A000225 n).toNat)

end

end A098878.P2538143553047758898

namespace A098878

/-- `xor(-1, A024001(A000225(n)))` -/
def P2538143553047758898.Spec : Prop :=
  ∀ n, P2538143553047758898.a n = A098878 n

end A098878

/-! ## A098878.P7327901469838571560

`record[A000578(A006068(n))-2]`
-/

namespace A098878.P7327901469838571560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A006068 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098878.P7327901469838571560

namespace A098878

/-- `record[A000578(A006068(n))-2]` -/
def P7327901469838571560.Spec : Prop :=
  ∀ n, P7327901469838571560.a n = A098878 n

end A098878

/-!
# A098879: a(n) = (2^n - 1)^5 - 2.

The programs for A098879, the canonical program `A098879.P8585745838598170416` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098879 has offset 0).

The definition of A098879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)^5-2` (program `A098879.P8585745838598170416`, by `A098879.P8585745838598170416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098879.P8585745838598170416

`(2^n-1)^5-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098879

/-- `(2^n-1)^5-2` -/
def P8585745838598170416.Spec : Prop :=
  ∀ n, P8585745838598170416.a n = A098879 n

theorem P8585745838598170416.correct : P8585745838598170416.Spec := by
  intro n
  simp only [A098879]

end A098879

/-! ## A098879.P7362524248648547813

`record[A104895(n)^5-2]`
-/

namespace A098879.P7362524248648547813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n ^ 5 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098879.P7362524248648547813

namespace A098879

/-- `record[A104895(n)^5-2]` -/
def P7362524248648547813.Spec : Prop :=
  ∀ n, P7362524248648547813.a n = A098879 n

end A098879

/-! ## A098879.P3245161438710483130

`record[A292600(n)^5-2]`
-/

namespace A098879.P3245161438710483130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 n ^ 5 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098879.P3245161438710483130

namespace A098879

/-- `record[A292600(n)^5-2]` -/
def P3245161438710483130.Spec : Prop :=
  ∀ n, P3245161438710483130.a n = A098879 n

end A098879

/-! ## A098879.P16977619790582935126

`xor(-1, A024003(A000225(n)))`
-/

namespace A098879.P16977619790582935126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (A024003 (A000225 n).toNat)

end

end A098879.P16977619790582935126

namespace A098879

/-- `xor(-1, A024003(A000225(n)))` -/
def P16977619790582935126.Spec : Prop :=
  ∀ n, P16977619790582935126.a n = A098879 n

end A098879

/-! ## A098879.P2678556072195701336

`record[A000584(A331105(n))-2]`
-/

namespace A098879.P2678556072195701336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A331105 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098879.P2678556072195701336

namespace A098879

/-- `record[A000584(A331105(n))-2]` -/
def P2678556072195701336.Spec : Prop :=
  ∀ n, P2678556072195701336.a n = A098879 n

end A098879

/-!
# A098880: a(n) = 11^n * n^11.

The programs for A098880, the canonical program `A098880.P15979986704504642246` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098880 has offset 0).

The definition of A098880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n*n^11` (program `A098880.P15979986704504642246`, by `A098880.P15979986704504642246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098880.P15979986704504642246

`11^n*n^11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098880

/-- `11^n*n^11` -/
def P15979986704504642246.Spec : Prop :=
  ∀ n, (P15979986704504642246.a n : ℤ) = A098880 n

theorem P15979986704504642246.correct : P15979986704504642246.Spec := by
  intro n
  simp only [A098880]

end A098880

/-! ## A098880.P18164877681140862848

`A062275(eq[11, A002262(n)])`
-/

namespace A098880.P18164877681140862848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098880.P18164877681140862848

namespace A098880

/-- `A062275(eq[11, A002262(n)])` -/
def P18164877681140862848.Spec : Prop :=
  ∀ n, P18164877681140862848.a n = A098880 n

end A098880

/-! ## A098880.P2476975588343859252

`A062275(eq[12, A002260(n+1)])`
-/

namespace A098880.P2476975588343859252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098880.P2476975588343859252

namespace A098880

/-- `A062275(eq[12, A002260(n+1)])` -/
def P2476975588343859252.Spec : Prop :=
  ∀ n, P2476975588343859252.a n = A098880 n

end A098880

/-! ## A098880.P10405007885348486272

`A062275(eq[11, A025581(n)])`
-/

namespace A098880.P10405007885348486272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098880.P10405007885348486272

namespace A098880

/-- `A062275(eq[11, A025581(n)])` -/
def P10405007885348486272.Spec : Prop :=
  ∀ n, P10405007885348486272.a n = A098880 n

end A098880

/-! ## A098880.P10743874952070366346

`A062275(eq[12, A004736(n+1)])`
-/

namespace A098880.P10743874952070366346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098880.P10743874952070366346

namespace A098880

/-- `A062275(eq[12, A004736(n+1)])` -/
def P10743874952070366346.Spec : Prop :=
  ∀ n, P10743874952070366346.a n = A098880 n

end A098880

/-!
# A098882: Decimal expansion of the Sum_{n>0} (A000040(n+1)-A000040(n))/(2^n), where A000040(k) gives the k-th prime number.

The programs for A098882, there is no canonical definition to state claims against.
-/

/-! ## A098882.P10465258477828946183

`A098990(n)-A000038(n)`
-/

namespace A098882.P10465258477828946183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098990 (n + 1) - A000038 n

end

end A098882.P10465258477828946183

/-! ## A098882.P18439294847473188855

`and(abs(A065532(n)), A098990(n))`
-/

namespace A098882.P18439294847473188855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |A065532 n| (A098990 (n + 1))

end

end A098882.P18439294847473188855

/-! ## A098882.P6620009631919212238

`A098990(n)^(A000040(n+1)%2)`
-/

namespace A098882.P6620009631919212238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098990 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A098882.P6620009631919212238

/-! ## A098882.P10504930276352776829

`A098990(n)^A001222(A008578(n+1))`
-/

namespace A098882.P10504930276352776829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098990 (n + 1) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A098882.P10504930276352776829

/-! ## A098882.P6501024076773494257

`A098990(n)^A008683(A100484(n+1))`
-/

namespace A098882.P6501024076773494257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098990 (n + 1) : ℚ) ^ (A008683 (A100484 (n + 1)).toNat : ℤ)

end

end A098882.P6501024076773494257

/-! ## A098882.P4246602693887352568

`gcd(A049084(2*(n+1)), A098990(n))`
-/

namespace A098882.P4246602693887352568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (2 * (n + 1))) (A098990 (n + 1))

end

end A098882.P4246602693887352568

/-! ## A098882.P4001436251565018557

`A098990(n)^A055396(A008458(n))`
-/

namespace A098882.P4001436251565018557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098990 (n + 1) : ℚ) ^ (A055396 (A008458 n).toNat : ℤ)

end

end A098882.P4001436251565018557

/-! ## A098882.P17846493422883509137

`A098990(n)-2*A049084(A001747(n+1))`
-/

namespace A098882.P17846493422883509137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098990 (n + 1) - 2 * A049084 (A001747 (n + 1)).toNat

end

end A098882.P17846493422883509137

/-!
# A098884: Number of partitions of n into distinct parts in which each part is congruent to 1 or 5 mod 6.

The programs for A098884, there is no canonical definition to state claims against.
-/

/-! ## A098884.P1030615763606487364

`abs(A109389(n))`
-/

namespace A098884.P1030615763606487364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109389 n|

end

end A098884.P1030615763606487364

/-! ## A098884.P4172184039191979863

`A033999(n)*A109389(n)`
-/

namespace A098884.P4172184039191979863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A109389 n

end

end A098884.P4172184039191979863

/-! ## A098884.P2139625562933320832

`gcd(A000038(n), A109389(n))`
-/

namespace A098884.P2139625562933320832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109389 n)

end

end A098884.P2139625562933320832

/-! ## A098884.P13737087468403221949

`lcm(A020985(n), A109389(n))`
-/

namespace A098884.P13737087468403221949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A109389 n)

end

end A098884.P13737087468403221949

/-! ## A098884.P3223061162275888243

`abs(A339404(n)-A339405(n))`
-/

namespace A098884.P3223061162275888243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339404 n - A339405 n|

end

end A098884.P3223061162275888243

/-! ## A098884.P18077820189170538401

`A000009(n)/A081360(n)*A109389(n)`
-/

namespace A098884.P18077820189170538401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A081360 n : ℚ) * (A109389 n : ℚ)

end

end A098884.P18077820189170538401

/-! ## A098884.P9624999130725927119

`abs(A112208(6*n+1))`
-/

namespace A098884.P9624999130725927119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112208 (6 * n + 1)|

end

end A098884.P9624999130725927119

/-! ## A098884.P13207693125545406084

`A000196(A109389(n)²)`
-/

namespace A098884.P13207693125545406084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109389 n ^ 2).toNat

end

end A098884.P13207693125545406084

/-!
# A098885: Number of nonisomorphic p^m-groups (i.e., groups of prime power orders).

The programs for A098885, there is no canonical definition to state claims against.
-/

/-! ## A098885.P9092471258845107418

`A000001(A000961(n+1))`
-/

namespace A098885.P9092471258845107418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000961 (n + 1)).toNat

end

end A098885.P9092471258845107418

/-! ## A098885.P14779514836792341734

`A000001(sqrt(A056798(n+1)))`
-/

namespace A098885.P14779514836792341734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A098885.P14779514836792341734

/-! ## A098885.P9309220493647907944

`A000001(record[A034699(n+1)])`
-/

namespace A098885.P9309220493647907944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098885.P9309220493647907944

/-! ## A098885.P4300000034991341521

`A000001(A181062(n+1)+1)`
-/

namespace A098885.P4300000034991341521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A181062 (n + 1) + 1).toNat

end

end A098885.P4300000034991341521

/-! ## A098885.P10528938451536944232

`A000001(A138929(n+1)/2)`
-/

namespace A098885.P10528938451536944232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A098885.P10528938451536944232

/-! ## A098885.P9808398448519743253

`A066060(A000961(2*n+1-n))`
-/

namespace A098885.P9808398448519743253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A000961 (2 * n + 1 - n)).toNat

end

end A098885.P9808398448519743253

/-! ## A098885.P17899147824090089610

`A000001(record[n/a(A001221(n))]/2)` with `a(0)=2`
-/

namespace A098885.P17899147824090089610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2)).toNat

end

end A098885.P17899147824090089610

/-! ## A098885.P16429603933054589949

`A066060(lcm(A181062(n+1)+1, A001221(n+5)))`
-/

namespace A098885.P16429603933054589949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.lcm (A181062 (n + 1) + 1) (A001221 (n + 5)))

end

end A098885.P16429603933054589949

/-! ## A098885.P5614170632784340206

`A066060(lcm(3, A181062(n+1)+1))`
-/

namespace A098885.P5614170632784340206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.lcm 3 (A181062 (n + 1) + 1))

end

end A098885.P5614170632784340206

/-! ## A098885.P16459458195908342250

`A201733(record[A028233(n+1)])`
-/

namespace A098885.P16459458195908342250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098885.P16459458195908342250

/-! ## A098885.P2589008384578219549

`A201733(A000961(n+1)+char[1])`
-/

namespace A098885.P2589008384578219549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A000961 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A098885.P2589008384578219549

/-! ## A098885.P3000812349733720921

`A201733(A000961(n+1)%(∑[n+3]+1))`
-/

namespace A098885.P3000812349733720921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.tmod (A000961 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A098885.P3000812349733720921

/-! ## A098885.P5699168806607061663

`A201733((A000007(n)+1)*A000961(n+1))`
-/

namespace A098885.P5699168806607061663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 ((A000007 n + 1) * A000961 (n + 1)).toNat

end

end A098885.P5699168806607061663

/-! ## A098885.P14190545001217564710

`A201733(2*A000961(n+1)-A000961(n+1))`
-/

namespace A098885.P14190545001217564710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (2 * A000961 (n + 1) - A000961 (n + 1)).toNat

end

end A098885.P14190545001217564710

/-! ## A098885.P14874786801295808676

`A201733(A000961(n+1))+A000007(A201733(n+1))`
-/

namespace A098885.P14874786801295808676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A000961 (n + 1)).toNat + A000007 (A201733 (n + 1)).toNat

end

end A098885.P14874786801295808676

/-!
# A098886: Number of nonisomorphic groups with prime power order p^m, m>1.

The programs for A098886, there is no canonical definition to state claims against.
-/

/-! ## A098886.P6621863225026160086

`A000001(A025475(n+1))`
-/

namespace A098886.P6621863225026160086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A025475 (n + 1)).toNat

end

end A098886.P6621863225026160086

/-! ## A098886.P7657191003288496975

`A098885(A024621(n+1))`
-/

namespace A098886.P7657191003288496975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (A024621 (n + 1)).toNat

end

end A098886.P7657191003288496975

/-! ## A098886.P12286602493494040897

`A000001(record[A163813(n+1)])`
-/

namespace A098886.P12286602493494040897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098886.P12286602493494040897

/-! ## A098886.P3015310770185900080

`A000001(A249435(n+1)+1)`
-/

namespace A098886.P3015310770185900080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A249435 (n + 1) + 1).toNat

end

end A098886.P3015310770185900080

/-!
# A098887: Number of nonisomorphic groups with orders indexed by least prime signatures.

The programs for A098887, there is no canonical definition to state claims against.
-/

/-! ## A098887.P11277824235256164315

`A000001(A025487(n+1))`
-/

namespace A098887.P11277824235256164315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A025487 (n + 1)).toNat

end

end A098887.P11277824235256164315

/-! ## A098887.P13143526562278209126

`A000001(A333964(n+1))`
-/

namespace A098887.P13143526562278209126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A333964 (n + 1)).toNat

end

end A098887.P13143526562278209126

/-! ## A098887.P14545061976550858324

`A000001(record[A328479(n+1)])`
-/

namespace A098887.P14545061976550858324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098887.P14545061976550858324

/-! ## A098887.P18297671563864079677

`A000001(record[A329899(n+1)])`
-/

namespace A098887.P18297671563864079677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098887.P18297671563864079677

/-! ## A098887.P3061895592983604714

`A000001(record[A051466(n+2)])`
-/

namespace A098887.P3061895592983604714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098887.P3061895592983604714

/-!
# A098888: Number of nonisomorphic groups whose orders are highly composite numbers.

The programs for A098888, there is no canonical definition to state claims against.
-/

/-! ## A098888.P3775787354452441929

`A000001(lcm((n+1)/∏{p}[n+1, #], A002182(n+1)))`
-/

namespace A098888.P3775787354452441929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A002182 (n + 1)))

end

end A098888.P3775787354452441929

/-! ## A098888.P547406039283951000

`A000001(A002182(n+1)%A122096(n))`
-/

namespace A098888.P547406039283951000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.tmod (A002182 (n + 1)) (A122096 (n + 33))).toNat

end

end A098888.P547406039283951000

/-! ## A098888.P4847741501967307534

`A000001(A004394(n+1)%A122096(n))`
-/

namespace A098888.P4847741501967307534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.tmod (A004394 (n + 1)) (A122096 (n + 33))).toNat

end

end A098888.P4847741501967307534

/-! ## A098888.P14994699404313485492

`A000001(lcm(A002033(n), A002182(n+1)))`
-/

namespace A098888.P14994699404313485492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.lcm (A002033 n) (A002182 (n + 1)))

end

end A098888.P14994699404313485492

/-!
# A098890: a(n) = A001652(n)*A046090(n)+1 = A098602(n)+1.

The programs for A098890, the canonical program `A098890.P17272869798312743783` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098890 has offset 0).

The definition of A098890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098890.P17272869798312743783

`A098602(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098890

/-- `A098602(n)+1` -/
def P17272869798312743783.Spec : Prop :=
  ∀ n, P17272869798312743783.a n = A098890 n

theorem P17272869798312743783.correct : P17272869798312743783.Spec := by
  intro n
  simp only [A098890]

end A098890

/-! ## A098890.P5102200597585102709

`A001652(n)*A046090(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098890.P5102200597585102709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n * A046090 n + 1

end

end A098890.P5102200597585102709

namespace A098890

/-- `A001652(n)*A046090(n)+1` -/
def P5102200597585102709.Spec : Prop :=
  ∀ n, P5102200597585102709.a n = A098890 n

end A098890

/-! ## A098890.P10482729033484470151

`floor((ceil(∑[((sqrt(2)+1)^n)²])/2)²)+1`
-/

namespace A098890.P10482729033484470151
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2) ^ 2⌋ + 1

end

end A098890.P10482729033484470151

namespace A098890

/-- `floor((ceil(∑[((sqrt(2)+1)^n)²])/2)²)+1` -/
def P10482729033484470151.Spec : Prop :=
  ∀ n, P10482729033484470151.a n = A098890 n

end A098890

/-! ## A098890.P15212648287950773068

`(record[1-floor(a(n-1)/(3-sqrt(8)))]+1)/2` with `a(0)=1`
-/

namespace A098890.P15212648287950773068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A098890.P15212648287950773068

namespace A098890

/-- `(record[1-floor(a(n-1)/(3-sqrt(8)))]+1)/2` -/
def P15212648287950773068.Spec : Prop :=
  ∀ n, P15212648287950773068.a n = (A098890 n : ℚ)

end A098890

/-! ## A098890.P5803475189512187627

`ceil(A008844(n)/2)`
-/

namespace A098890.P5803475189512187627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008844 n : ℚ) / 2⌉

end

end A098890.P5803475189512187627

namespace A098890

/-- `ceil(A008844(n)/2)` -/
def P5803475189512187627.Spec : Prop :=
  ∀ n, P5803475189512187627.a n = A098890 n

end A098890

/-! ## A098890.P3840999078717848106

`ceil(A008843(n)/4)`
-/

namespace A098890.P3840999078717848106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008843 n : ℚ) / 4⌉

end

end A098890.P3840999078717848106

namespace A098890

/-- `ceil(A008843(n)/4)` -/
def P3840999078717848106.Spec : Prop :=
  ∀ n, P3840999078717848106.a n = A098890 n

end A098890

/-! ## A098890.P1715899541355894801

`∑[A215928(4*n)]`
-/

namespace A098890.P1715899541355894801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098890.P1715899541355894801

namespace A098890

/-- `∑[A215928(4*n)]` -/
def P1715899541355894801.Spec : Prop :=
  ∀ n, P1715899541355894801.a n = A098890 n

end A098890

/-! ## A098890.P4182299467471690048

`ceil(A165518(n+1)/8)`
-/

namespace A098890.P4182299467471690048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165518 (n + 1) : ℚ) / 8⌉

end

end A098890.P4182299467471690048

namespace A098890

/-- `ceil(A165518(n+1)/8)` -/
def P4182299467471690048.Spec : Prop :=
  ∀ n, P4182299467471690048.a n = A098890 n

end A098890

/-! ## A098890.P3614550281724247226

`round(Δ[A001109(n)]²/2)`
-/

namespace A098890.P3614550281724247226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2)

end

end A098890.P3614550281724247226

namespace A098890

/-- `round(Δ[A001109(n)]²/2)` -/
def P3614550281724247226.Spec : Prop :=
  ∀ n, P3614550281724247226.a n = A098890 n

end A098890

/-! ## A098890.P10728682914716834094

`(A006062(n+1)+2)/3`
-/

namespace A098890.P10728682914716834094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006062 (n + 1) + 2 : ℚ) / 3

end

end A098890.P10728682914716834094

namespace A098890

/-- `(A006062(n+1)+2)/3` -/
def P10728682914716834094.Spec : Prop :=
  ∀ n, P10728682914716834094.a n = (A098890 n : ℚ)

end A098890

/-!
# A098891: Define the n-omino graph to be the graph whose vertices are each of the n-ominoes, two of which are joined by an edge if one can be obtained from the other by cutting out one of the latter's component squares (thus obtaining an (n-1)-omino for most cases) and gluing it elsewhere. The sequence counts the edges in these graphs.

The programs for A098891, there is no canonical definition to state claims against.
-/

/-! ## A098891.P4058119513540829130

`A343609((4^n-2^n)/2+9*6^(n-2)-5*2^(n-2)+1)`
-/

namespace A098891.P4058119513540829130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 + (9 * (6 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1))).toNat

end

end A098891.P4058119513540829130

/-! ## A098891.P3750210350044488532

`A176044(A150289(n))`
-/

namespace A098891.P3750210350044488532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176044 (A150289 n).toNat

end

end A098891.P3750210350044488532

/-!
# A098892: Numbers which yield a repdigit when added to their reversal.

The programs for A098892, there is no canonical definition to state claims against.
-/

/-! ## A098892.P15045907725228755052

`eq[A000007(n), A151949(A056964(n))]`
-/

namespace A098892.P15045907725228755052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P15045907725228755052

/-! ## A098892.P597732830266478859

`eq[A000038(n), A151949(A056964(n))]`
-/

namespace A098892.P597732830266478859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P597732830266478859

/-! ## A098892.P15582181537106174713

`record[A036987(2*n)+n-A151949(A056964(n))]`
-/

namespace A098892.P15582181537106174713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (n : ℤ) - A151949 (A056964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098892.P15582181537106174713

/-! ## A098892.P8000519674720786205

`eq[A151949(A056964(n)), A163805(2*n)]`
-/

namespace A098892.P8000519674720786205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P8000519674720786205

/-! ## A098892.P15253561466790407394

`eq[A151949(A056964(n)), A163811(2*n)]`
-/

namespace A098892.P15253561466790407394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P15253561466790407394

/-! ## A098892.P15703225988528631342

`eq[1, A343383(A056964(n))]`
-/

namespace A098892.P15703225988528631342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343383 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098892.P15703225988528631342

/-! ## A098892.P11878243065340316178

`eq[A043562(A056964(n)), A057427(n)]`
-/

namespace A098892.P11878243065340316178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P11878243065340316178

/-! ## A098892.P13218513079812690577

`eq[A000007(n), A151950(A004086(n)+n)]`
-/

namespace A098892.P13218513079812690577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P13218513079812690577

/-! ## A098892.P9237507665984181569

`eq[A000038(n), A151950(A004086(n)+n)]`
-/

namespace A098892.P9237507665984181569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098892.P9237507665984181569

/-! ## A098892.P782240081033191066

`record[A123108(2*n)*A202022(A056964(n))]`
-/

namespace A098892.P782240081033191066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A202022 (A056964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098892.P782240081033191066

/-!
# A098893: Sum of number of prime-factors of all prefixes in decimal representation of n.

The programs for A098893, the canonical program `A098893.P17595365160274203739` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098893 has offset 1).

The definition of A098893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098893.P17595365160274203739

`∑{e}[A067080(n+1), #]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098893

/-- `∑{e}[A067080(n+1), #]` -/
def P17595365160274203739.Spec : Prop :=
  ∀ n, (P17595365160274203739.a n : ℤ) = A098893 (n + 1)

theorem P17595365160274203739.correct : P17595365160274203739.Spec := by
  intro n
  simp only [A098893, Nat.add_sub_cancel]

end A098893

/-! ## A098893.P14940602236325161659

`A001222(A067080(n+1))`
-/

namespace A098893.P14940602236325161659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067080 (n + 1)).toNat

end

end A098893.P14940602236325161659

namespace A098893

/-- `A001222(A067080(n+1))` -/
def P14940602236325161659.Spec : Prop :=
  ∀ n, P14940602236325161659.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P17390360042781483767

`A001222(n+1)+∑{e}[A059995(n+1), #]`
-/

namespace A098893.P17390360042781483767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A098893.P17390360042781483767

namespace A098893

/-- `A001222(n+1)+∑{e}[A059995(n+1), #]` -/
def P17390360042781483767.Spec : Prop :=
  ∀ n, P17390360042781483767.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P11458138692228274750

`A001222((n+1)*(A261906(n+1)-(n+1)))`
-/

namespace A098893.P11458138692228274750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * (A261906 (n + 1) - (n + 1 : ℤ))).toNat

end

end A098893.P11458138692228274750

namespace A098893

/-- `A001222((n+1)*(A261906(n+1)-(n+1)))` -/
def P11458138692228274750.Spec : Prop :=
  ∀ n, P11458138692228274750.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P432305194617399764

`A001222((n+1)*(A318535(n+2)-(n+1)))`
-/

namespace A098893.P432305194617399764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * (A318535 (n + 2) - (n + 1 : ℤ))).toNat

end

end A098893.P432305194617399764

namespace A098893

/-- `A001222((n+1)*(A318535(n+2)-(n+1)))` -/
def P432305194617399764.Spec : Prop :=
  ∀ n, P432305194617399764.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P3304876817621150161

`∑{d}[A067080(n+1), A001221(A014963(#))]`
-/

namespace A098893.P3304876817621150161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A098893.P3304876817621150161

namespace A098893

/-- `∑{d}[A067080(n+1), A001221(A014963(#))]` -/
def P3304876817621150161.Spec : Prop :=
  ∀ n, P3304876817621150161.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P11234605705045693635

`A001222((n+1)*A329624(A329623(n+1)))`
-/

namespace A098893.P11234605705045693635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A329624 (A329623 (n + 1)).toNat).toNat

end

end A098893.P11234605705045693635

namespace A098893

/-- `A001222((n+1)*A329624(A329623(n+1)))` -/
def P11234605705045693635.Spec : Prop :=
  ∀ n, P11234605705045693635.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P11529391384280019459

`A001222(A008817(n)-A008817(n)%(n+1))`
-/

namespace A098893.P11529391384280019459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008817 n - Int.tmod (A008817 n) (n + 1 : ℤ)).toNat

end

end A098893.P11529391384280019459

namespace A098893

/-- `A001222(A008817(n)-A008817(n)%(n+1))` -/
def P11529391384280019459.Spec : Prop :=
  ∀ n, P11529391384280019459.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P8312598431700891486

`A001222(n+1)+A001222(A261906(n+1)-(n+1))`
-/

namespace A098893.P8312598431700891486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A261906 (n + 1) - (n + 1 : ℤ)).toNat

end

end A098893.P8312598431700891486

namespace A098893

/-- `A001222(n+1)+A001222(A261906(n+1)-(n+1))` -/
def P8312598431700891486.Spec : Prop :=
  ∀ n, P8312598431700891486.a n = A098893 (n + 1)

end A098893

/-! ## A098893.P14350997743579639440

`A001222(n+1)+A001222(A318535(n+2)-(n+1))`
-/

namespace A098893.P14350997743579639440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A318535 (n + 2) - (n + 1 : ℤ)).toNat

end

end A098893.P14350997743579639440

namespace A098893

/-- `A001222(n+1)+A001222(A318535(n+2)-(n+1))` -/
def P14350997743579639440.Spec : Prop :=
  ∀ n, P14350997743579639440.a n = A098893 (n + 1)

end A098893

/-!
# A098894: Values of k such that {s(1),...,s(k)} is a palindrome, where {s(1),s(2),...} is the fixed point of the substitutions 0->1 and 1->110.

The programs for A098894, the canonical program `A098894.P3664957644001144117` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098894 has offset 1).

The definition of A098894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098894.P4579320652597404662

`∑[ogf((1+x+x^2+x^3)/(1-2x^2-x^4))]`
-/

namespace A098894.P4579320652597404662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, 0, -2, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P4579320652597404662

namespace A098894

/-- `∑[ogf((1+x+x^2+x^3)/(1-2x^2-x^4))]` -/
def P4579320652597404662.Spec : Prop :=
  ∀ n, P4579320652597404662.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P3664957644001144117

`∑[a(n-4)+2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098894

/-- `∑[a(n-4)+2*a(n-2)]` -/
def P3664957644001144117.Spec : Prop :=
  ∀ n, (P3664957644001144117.a n : ℤ) = A098894 (n + 1)

theorem P3664957644001144117.correct : P3664957644001144117.Spec := by
  intro n
  simp only [A098894, Nat.add_sub_cancel]

end A098894

/-! ## A098894.P10675070413181028609

`∑[a(n-2)+a(n-2)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A098894.P10675070413181028609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P10675070413181028609

namespace A098894

/-- `∑[a(n-2)+a(n-2)+a(n-4)]` -/
def P10675070413181028609.Spec : Prop :=
  ∀ n, (P10675070413181028609.a n : ℤ) = A098894 (n + 1)

end A098894

/-! ## A098894.P11786730843327541426

`a(n-1)+a(n-(gcd(2, a(n-2))+1))+2` with `a(0)=1, a(1)=2`
-/

namespace A098894.P11786730843327541426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - (Nat.gcd 2 (a (n - 2)) + 1)) + 2)

end

end A098894.P11786730843327541426

namespace A098894

/-- `a(n-1)+a(n-(gcd(2, a(n-2))+1))+2` -/
def P11786730843327541426.Spec : Prop :=
  ∀ n, (P11786730843327541426.a n : ℤ) = A098894 (n + 1)

end A098894

/-! ## A098894.P8893371296142983840

`∑[A152113(n+1)]`
-/

namespace A098894.P8893371296142983840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P8893371296142983840

namespace A098894

/-- `∑[A152113(n+1)]` -/
def P8893371296142983840.Spec : Prop :=
  ∀ n, P8893371296142983840.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P7965078040807875432

`∑[A155046(or(1, n))]`
-/

namespace A098894.P7965078040807875432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P7965078040807875432

namespace A098894

/-- `∑[A155046(or(1, n))]` -/
def P7965078040807875432.Spec : Prop :=
  ∀ n, P7965078040807875432.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P17994758159132396011

`A143607(n+2)-2`
-/

namespace A098894.P17994758159132396011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (n + 2) - 2

end

end A098894.P17994758159132396011

namespace A098894

/-- `A143607(n+2)-2` -/
def P17994758159132396011.Spec : Prop :=
  ∀ n, P17994758159132396011.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P17634064009914837258

`A082766(n+4)-2`
-/

namespace A098894.P17634064009914837258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (n + 4) - 2

end

end A098894.P17634064009914837258

namespace A098894

/-- `A082766(n+4)-2` -/
def P17634064009914837258.Spec : Prop :=
  ∀ n, P17634064009914837258.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P11148381518295828666

`A119016(n+4)-2`
-/

namespace A098894.P11148381518295828666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (n + 4) - 2

end

end A098894.P11148381518295828666

namespace A098894

/-- `A119016(n+4)-2` -/
def P11148381518295828666.Spec : Prop :=
  ∀ n, P11148381518295828666.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P8282447586633293781

`∑[abs(Δ[A119016(n+3)])]`
-/

namespace A098894.P8282447586633293781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P8282447586633293781

namespace A098894

/-- `∑[abs(Δ[A119016(n+3)])]` -/
def P8282447586633293781.Spec : Prop :=
  ∀ n, P8282447586633293781.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P15794606607519445955

`∑[A078057(A004526(n))]`
-/

namespace A098894.P15794606607519445955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P15794606607519445955

namespace A098894

/-- `∑[A078057(A004526(n))]` -/
def P15794606607519445955.Spec : Prop :=
  ∀ n, P15794606607519445955.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P10179479832364042008

`∑[A001333(A004526(n)+1)]`
-/

namespace A098894.P10179479832364042008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P10179479832364042008

namespace A098894

/-- `∑[A001333(A004526(n)+1)]` -/
def P10179479832364042008.Spec : Prop :=
  ∀ n, P10179479832364042008.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P14798266123199633457

`∑[A002203(A008619(n))/2]`
-/

namespace A098894.P14798266123199633457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (A008619 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P14798266123199633457

namespace A098894

/-- `∑[A002203(A008619(n))/2]` -/
def P14798266123199633457.Spec : Prop :=
  ∀ n, P14798266123199633457.a n = (A098894 (n + 1) : ℚ)

end A098894

/-! ## A098894.P12011784726656309406

`A097564(A049636(n+1))-2`
-/

namespace A098894.P12011784726656309406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A049636 (n + 1)).toNat - 2

end

end A098894.P12011784726656309406

namespace A098894

/-- `A097564(A049636(n+1))-2` -/
def P12011784726656309406.Spec : Prop :=
  ∀ n, P12011784726656309406.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P131608523818907240

`∑[A119016(∑[A033999(n)+1])]`
-/

namespace A098894.P131608523818907240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P131608523818907240

namespace A098894

/-- `∑[A119016(∑[A033999(n)+1])]` -/
def P131608523818907240.Spec : Prop :=
  ∀ n, P131608523818907240.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P12974099386725949181

`∑[A001333(∑[2-A000034(n)])]`
-/

namespace A098894.P12974099386725949181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P12974099386725949181

namespace A098894

/-- `∑[A001333(∑[2-A000034(n)])]` -/
def P12974099386725949181.Spec : Prop :=
  ∀ n, P12974099386725949181.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P2560780336514019479

`∑[A002203(∑[A059841(n)])/2]`
-/

namespace A098894.P2560780336514019479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P2560780336514019479

namespace A098894

/-- `∑[A002203(∑[A059841(n)])/2]` -/
def P2560780336514019479.Spec : Prop :=
  ∀ n, P2560780336514019479.a n = (A098894 (n + 1) : ℚ)

end A098894

/-! ## A098894.P9109933735366125307

`∑[A001333(∑[A109613(n)-n])]`
-/

namespace A098894.P9109933735366125307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P9109933735366125307

namespace A098894

/-- `∑[A001333(∑[A109613(n)-n])]` -/
def P9109933735366125307.Spec : Prop :=
  ∀ n, P9109933735366125307.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P2538406424230731806

`∑[A001333(A002265(2*n)+1)]`
-/

namespace A098894.P2538406424230731806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A002265 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P2538406424230731806

namespace A098894

/-- `∑[A001333(A002265(2*n)+1)]` -/
def P2538406424230731806.Spec : Prop :=
  ∀ n, P2538406424230731806.a n = A098894 (n + 1)

end A098894

/-! ## A098894.P12372899397978505676

`∑[A119016(A000034(n+1)+n)]`
-/

namespace A098894.P12372899397978505676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A000034 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098894.P12372899397978505676

namespace A098894

/-- `∑[A119016(A000034(n+1)+n)]` -/
def P12372899397978505676.Spec : Prop :=
  ∀ n, P12372899397978505676.a n = A098894 (n + 1)

end A098894

/-!
# A098895: Number of divisors of the n-th superior highly composite number.

The programs for A098895, there is no canonical definition to state claims against.
-/

/-! ## A098895.P8883125882252019148

`A064553(A353561(n+1))`
-/

namespace A098895.P8883125882252019148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A353561 (n + 1)).toNat

end

end A098895.P8883125882252019148

/-! ## A098895.P15332321189773722724

`A303703(n+1)*A352362(∑[n])`
-/

namespace A098895.P15332321189773722724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303703 (n + 1) * A352362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098895.P15332321189773722724

/-! ## A098895.P10158523901222423642

`A005843(A303703(n+1)^gcd(11, n))`
-/

namespace A098895.P10158523901222423642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A303703 (n + 1) ^ Nat.gcd 11 n).toNat

end

end A098895.P10158523901222423642

/-! ## A098895.P8083650180434162046

`A000122(A156645(n))*A303703(n+1)`
-/

namespace A098895.P8083650180434162046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A156645 n).toNat * A303703 (n + 1)

end

end A098895.P8083650180434162046

/-! ## A098895.P12937079641734645714

`A000034(∑[A052542(n)])*A303703(n+1)`
-/

namespace A098895.P12937079641734645714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A303703 (n + 1)

end

end A098895.P12937079641734645714

/-!
# A098896: p(n)-adic valuation of the n-th superior highly composite number N(n), where p(n) = N(n)/N(n-1).

The programs for A098896, there is no canonical definition to state claims against.
-/

/-! ## A098896.P17943747702075623812

`val(A002201(n+1), A000705(n+1))`
-/

namespace A098896.P17943747702075623812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002201 (n + 1)).toNat (A000705 (n + 1)).toNat

end

end A098896.P17943747702075623812

/-! ## A098896.P11082542123217804441

`val(A004490(A002473(n+1)), A000705(n+1))`
-/

namespace A098896.P11082542123217804441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004490 (A002473 (n + 1)).toNat).toNat (A000705 (n + 1)).toNat

end

end A098896.P11082542123217804441

/-! ## A098896.P9176803253812698931

`val(A224078(n+1), A000705(n+1))`
-/

namespace A098896.P9176803253812698931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224078 (n + 1)).toNat (A000705 (n + 1)).toNat

end

end A098896.P9176803253812698931

/-! ## A098896.P15106362702048725687

`val(A224078(n+1), ratio[A263572(n+1)])`
-/

namespace A098896.P15106362702048725687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224078 (n + 1)).toNat (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A098896.P15106362702048725687

/-! ## A098896.P12029427668537233923

`val(A025487(A332241(n+1)), A000705(n+1))`
-/

namespace A098896.P12029427668537233923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025487 (A332241 (n + 1)).toNat).toNat (A000705 (n + 1)).toNat

end

end A098896.P12029427668537233923

/-!
# A098897: Palindromic deficient numbers.

The programs for A098897, there is no canonical definition to state claims against.
-/

/-! ## A098897.P16286128960367312253

`record[A125746(A002113(n+2))]`
-/

namespace A098897.P16286128960367312253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098897.P16286128960367312253

/-! ## A098897.P17960913832395501033

`filter[A002113(n+2), A294934(#)]`
-/

namespace A098897.P17960913832395501033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A098897.P17960913832395501033

/-! ## A098897.P12306922642884688452

`∩[A002113(n+1), A098767(n+1)]`
-/

namespace A098897.P12306922642884688452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098897.P12306922642884688452

/-! ## A098897.P12397772890973953012

`∩[A002113(n+1), A005100(n+1)]`
-/

namespace A098897.P12397772890973953012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098897.P12397772890973953012

/-! ## A098897.P16183386955982918852

`∩[A002113(n+1), A136447(n+1)]`
-/

namespace A098897.P16183386955982918852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098897.P16183386955982918852

/-! ## A098897.P8969609609009813214

`eq[A056965(n), A331928(n)]`
-/

namespace A098897.P8969609609009813214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098897.P8969609609009813214

/-! ## A098897.P9486055746485795392

`eq[A248327(n), A331928(n)]`
-/

namespace A098897.P9486055746485795392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098897.P9486055746485795392

/-! ## A098897.P11128514289599858988

`eq[A256756(n), A331928(n)]`
-/

namespace A098897.P11128514289599858988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098897.P11128514289599858988

/-! ## A098897.P8140955549089178170

`eq[A262257(n), A331928(n)]`
-/

namespace A098897.P8140955549089178170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098897.P8140955549089178170

/-! ## A098897.P10831913460756435620

`eq[A331928(n), A338827(n)]`
-/

namespace A098897.P10831913460756435620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098897.P10831913460756435620

/-! ## A098897.P9987829134902590386

`record[A047813(A005100(n+1))]`
-/

namespace A098897.P9987829134902590386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A005100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098897.P9987829134902590386

/-! ## A098897.P18341676218553956535

`record[A125746(A047813(n+1))]`
-/

namespace A098897.P18341676218553956535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A047813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098897.P18341676218553956535

/-! ## A098897.P18421328593876124036

`filter[A005100(n+1), A136522(#)]`
-/

namespace A098897.P18421328593876124036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A098897.P18421328593876124036

/-! ## A098897.P3392981930321122519

`filter[A083210(n+1), A136522(#)]`
-/

namespace A098897.P3392981930321122519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A098897.P3392981930321122519

/-! ## A098897.P2629686927349947416

`filter[A098767(n+1), A136522(#)]`
-/

namespace A098897.P2629686927349947416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A098897.P2629686927349947416

/-! ## A098897.P10329850458458634537

`record[A047813(A108775(n+1)+n)]`
-/

namespace A098897.P10329850458458634537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A108775 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098897.P10329850458458634537

/-! ## A098897.P1476399766398310538

`eq[A056965(n+1), A179527(n+1)]+1`
-/

namespace A098897.P1476399766398310538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098897.P1476399766398310538

