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
import Seq.B000.C021
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A131201: Period 24: repeat [0, 1, 2, 5, 2, 9, 0, 9, 8, 5, 8, 1, 0, -1, -2, -5, -2, -9, 0, -9, -8, -5, -8, -1].

The programs for A131201, there is no canonical definition to state claims against.
-/

/-! ## A131201.P14354102368368056516

`A131608(n)%2*A131711(n)`
-/

namespace A131201.P14354102368368056516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131608 n) 2 * A131711 n

end

end A131201.P14354102368368056516

/-!
# A131203: Number of cycles of length n under the mapping x -> x^2-2 modulo Fermat prime 2^(2^m)+1, where m is any fixed integer such that n divides 2^m-1.

The programs for A131203, the canonical program `A131203.P3578267669090281606` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131203 has offset 0).

The definition of A131203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131203.P3578267669090281606

`A001037(2*n+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131203

/-- `A001037(2*n+1)/2` -/
def P3578267669090281606.Spec : Prop :=
  ∀ n, P3578267669090281606.a n = (A131203 n : ℚ)

end A131203

/-! ## A131203.P15873684257437470950

`A000048(Δ[n²])`
-/

namespace A131203.P15873684257437470950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131203.P15873684257437470950

namespace A131203

/-- `A000048(Δ[n²])` -/
def P15873684257437470950.Spec : Prop :=
  ∀ n, P15873684257437470950.a n = A131203 n

end A131203

/-! ## A131203.P6502749336285919143

`A051841(Δ[n²])`
-/

namespace A131203.P6502749336285919143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131203.P6502749336285919143

namespace A131203

/-- `A051841(Δ[n²])` -/
def P6502749336285919143.Spec : Prop :=
  ∀ n, P6502749336285919143.a n = A131203 n

end A131203

/-! ## A131203.P13660604505282617354

`A060172(Δ[n²])`
-/

namespace A131203.P13660604505282617354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131203.P13660604505282617354

namespace A131203

/-- `A060172(Δ[n²])` -/
def P13660604505282617354.Spec : Prop :=
  ∀ n, P13660604505282617354.a n = A131203 n

end A131203

/-! ## A131203.P1139881270849396346

`A060481(Δ[n²])`
-/

namespace A131203.P1139881270849396346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131203.P1139881270849396346

namespace A131203

/-- `A060481(Δ[n²])` -/
def P1139881270849396346.Spec : Prop :=
  ∀ n, P1139881270849396346.a n = A131203 n

end A131203

/-! ## A131203.P13292821697384791196

`A066313(Δ[n²])`
-/

namespace A131203.P13292821697384791196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066313 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131203.P13292821697384791196

namespace A131203

/-- `A066313(Δ[n²])` -/
def P13292821697384791196.Spec : Prop :=
  ∀ n, P13292821697384791196.a n = A131203 n

end A131203

/-! ## A131203.P5793863600262480299

`A066314(Δ[n²])`
-/

namespace A131203.P5793863600262480299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066314 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131203.P5793863600262480299

namespace A131203

/-- `A066314(Δ[n²])` -/
def P5793863600262480299.Spec : Prop :=
  ∀ n, P5793863600262480299.a n = A131203 n

end A131203

/-! ## A131203.P1636948374258204104

`A056303(A233583(2*(n+1)))`
-/

namespace A131203.P1636948374258204104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (A233583 (2 * (n + 1))).toNat

end

end A131203.P1636948374258204104

namespace A131203

/-- `A056303(A233583(2*(n+1)))` -/
def P1636948374258204104.Spec : Prop :=
  ∀ n, P1636948374258204104.a n = A131203 n

end A131203

/-! ## A131203.P4350416205209967154

`A056303(A233583(n+2)+n)`
-/

namespace A131203.P4350416205209967154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (A233583 (n + 2) + (n : ℤ)).toNat

end

end A131203.P4350416205209967154

namespace A131203

/-- `A056303(A233583(n+2)+n)` -/
def P4350416205209967154.Spec : Prop :=
  ∀ n, P4350416205209967154.a n = A131203 n

end A131203

/-! ## A131203.P14763123411404199671

`A056303(2*n+1)+A000007(n)`
-/

namespace A131203.P14763123411404199671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (2 * n + 1) + A000007 n

end

end A131203.P14763123411404199671

namespace A131203

/-- `A056303(2*n+1)+A000007(n)` -/
def P14763123411404199671.Spec : Prop :=
  ∀ n, P14763123411404199671.a n = A131203 n

end A131203

/-! ## A131203.P1162169473126458491

`A045686(2*n+1)+A011947(n)`
-/

namespace A131203.P1162169473126458491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 (2 * n + 1) + A011947 n

end

end A131203.P1162169473126458491

namespace A131203

/-- `A045686(2*n+1)+A011947(n)` -/
def P1162169473126458491.Spec : Prop :=
  ∀ n, P1162169473126458491.a n = A131203 n

end A131203

/-! ## A131203.P7163315401902063224

`A026119(n)-A053734(2*n+1)`
-/

namespace A131203.P7163315401902063224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026119 n - A053734 (2 * n + 1)

end

end A131203.P7163315401902063224

namespace A131203

/-- `A026119(n)-A053734(2*n+1)` -/
def P7163315401902063224.Spec : Prop :=
  ∀ n, P7163315401902063224.a n = A131203 n

end A131203

/-! ## A131203.P14878277487685131474

`A042980(2*n+1)+A042979(2*n+1)`
-/

namespace A131203.P14878277487685131474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042980 (2 * n + 1) + A042979 (2 * n + 1)

end

end A131203.P14878277487685131474

namespace A131203

/-- `A042980(2*n+1)+A042979(2*n+1)` -/
def P14878277487685131474.Spec : Prop :=
  ∀ n, P14878277487685131474.a n = A131203 n

end A131203

/-! ## A131203.P16936066942456243745

`A042982(2*n+1)+A042981(2*n+1)`
-/

namespace A131203.P16936066942456243745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (2 * n + 1) + A042981 (2 * n + 1)

end

end A131203.P16936066942456243745

namespace A131203

/-- `A042982(2*n+1)+A042981(2*n+1)` -/
def P16936066942456243745.Spec : Prop :=
  ∀ n, P16936066942456243745.a n = A131203 n

end A131203

/-! ## A131203.P2351526683124321816

`A045686(2*n+1)+A045683(2*n+1)`
-/

namespace A131203.P2351526683124321816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 (2 * n + 1) + A045683 (2 * n + 1)

end

end A131203.P2351526683124321816

namespace A131203

/-- `A045686(2*n+1)+A045683(2*n+1)` -/
def P2351526683124321816.Spec : Prop :=
  ∀ n, P2351526683124321816.a n = A131203 n

end A131203

/-! ## A131203.P14195368679197339519

`A074027(2*n+1)+A042979(2*n+1)`
-/

namespace A131203.P14195368679197339519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074027 (2 * n + 1) + A042979 (2 * n + 1)

end

end A131203.P14195368679197339519

namespace A131203

/-- `A074027(2*n+1)+A042979(2*n+1)` -/
def P14195368679197339519.Spec : Prop :=
  ∀ n, P14195368679197339519.a n = A131203 n

end A131203

/-! ## A131203.P15634439249868196589

`A074028(2*n+1)+A042980(2*n+1)`
-/

namespace A131203.P15634439249868196589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074028 (2 * n + 1) + A042980 (2 * n + 1)

end

end A131203.P15634439249868196589

namespace A131203

/-- `A074028(2*n+1)+A042980(2*n+1)` -/
def P15634439249868196589.Spec : Prop :=
  ∀ n, P15634439249868196589.a n = A131203 n

end A131203

/-! ## A131203.P3749611882696200150

`A074029(2*n+1)+A042982(2*n+1)`
-/

namespace A131203.P3749611882696200150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074029 (2 * n + 1) + A042982 (2 * n + 1)

end

end A131203.P3749611882696200150

namespace A131203

/-- `A074029(2*n+1)+A042982(2*n+1)` -/
def P3749611882696200150.Spec : Prop :=
  ∀ n, P3749611882696200150.a n = A131203 n

end A131203

/-! ## A131203.P16626739573921429985

`A074030(2*n+1)+A042981(2*n+1)`
-/

namespace A131203.P16626739573921429985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074030 (2 * n + 1) + A042981 (2 * n + 1)

end

end A131203.P16626739573921429985

namespace A131203

/-- `A074030(2*n+1)+A042981(2*n+1)` -/
def P16626739573921429985.Spec : Prop :=
  ∀ n, P16626739573921429985.a n = A131203 n

end A131203

/-! ## A131203.P6609357825463812427

`A074028(2*n+1)+A074027(2*n+1)`
-/

namespace A131203.P6609357825463812427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074028 (2 * n + 1) + A074027 (2 * n + 1)

end

end A131203.P6609357825463812427

namespace A131203

/-- `A074028(2*n+1)+A074027(2*n+1)` -/
def P6609357825463812427.Spec : Prop :=
  ∀ n, P6609357825463812427.a n = A131203 n

end A131203

/-!
# A131205: a(n) = a(n-1) + a(floor(n/2)) + a(ceiling(n/2)).

The programs for A131205, the canonical program `A131205.P4207918321543294817` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131205 has offset 1).

The definition of A131205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` (program `A131205.P4207918321543294817`, by `A131205.P4207918321543294817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131205.P4207918321543294817

`a(n-1)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131205

/-- `a(n-1)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` -/
def P4207918321543294817.Spec : Prop :=
  ∀ n, (P4207918321543294817.a n : ℤ) = A131205 (n + 1)

theorem P4207918321543294817.correct : P4207918321543294817.Spec := by
  intro n
  simp only [A131205, Nat.add_sub_cancel]

end A131205

/-! ## A131205.P4426688757565203073

`A033485(2*n+1)`
-/

namespace A131205.P4426688757565203073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (2 * n + 1)

end

end A131205.P4426688757565203073

namespace A131205

/-- `A033485(2*n+1)` -/
def P4426688757565203073.Spec : Prop :=
  ∀ n, P4426688757565203073.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P8876499959856276259

`∑[a(n-1)+a(floor(n/2))]` with `a(0)=1`
-/

namespace A131205.P8876499959856276259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131205.P8876499959856276259

namespace A131205

/-- `∑[a(n-1)+a(floor(n/2))]` -/
def P8876499959856276259.Spec : Prop :=
  ∀ n, (P8876499959856276259.a n : ℤ) = A131205 (n + 1)

end A131205

/-! ## A131205.P899113657581211233

`∑[A000123(n)]`
-/

namespace A131205.P899113657581211233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131205.P899113657581211233

namespace A131205

/-- `∑[A000123(n)]` -/
def P899113657581211233.Spec : Prop :=
  ∀ n, P899113657581211233.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P2450323924507610525

`∑[∑[A018819(n)]]`
-/

namespace A131205.P2450323924507610525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131205.P2450323924507610525

namespace A131205

/-- `∑[∑[A018819(n)]]` -/
def P2450323924507610525.Spec : Prop :=
  ∀ n, P2450323924507610525.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P2764671026541576888

`A000123(Δ[n²])/2`
-/

namespace A131205.P2764671026541576888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A131205.P2764671026541576888

namespace A131205

/-- `A000123(Δ[n²])/2` -/
def P2764671026541576888.Spec : Prop :=
  ∀ n, P2764671026541576888.a n = (A131205 (n + 1) : ℚ)

end A131205

/-! ## A131205.P11882552433684122444

`1/2*A000123(A005408(n))`
-/

namespace A131205.P11882552433684122444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000123 (A005408 n).toNat : ℚ)

end

end A131205.P11882552433684122444

namespace A131205

/-- `1/2*A000123(A005408(n))` -/
def P11882552433684122444.Spec : Prop :=
  ∀ n, P11882552433684122444.a n = (A131205 (n + 1) : ℚ)

end A131205

/-! ## A131205.P13267226904354847840

`A022905(n+1)+A033485(n+1)-A178855(n+1)`
-/

namespace A131205.P13267226904354847840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 1) + (A033485 (n + 1) - A178855 (n + 1))

end

end A131205.P13267226904354847840

namespace A131205

/-- `A022905(n+1)+A033485(n+1)-A178855(n+1)` -/
def P13267226904354847840.Spec : Prop :=
  ∀ n, P13267226904354847840.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P725013805368713306

`A102379(Δ[n²])+1`
-/

namespace A131205.P725013805368713306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A131205.P725013805368713306

namespace A131205

/-- `A102379(Δ[n²])+1` -/
def P725013805368713306.Spec : Prop :=
  ∀ n, P725013805368713306.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P13666402005954210943

`∑[∑[A307148(2*n+1)]]`
-/

namespace A131205.P13666402005954210943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131205.P13666402005954210943

namespace A131205

/-- `∑[∑[A307148(2*n+1)]]` -/
def P13666402005954210943.Spec : Prop :=
  ∀ n, P13666402005954210943.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P16792619243846414405

`A018819(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A131205.P16792619243846414405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018819 (2 * n) + a (n - 1)

end

end A131205.P16792619243846414405

namespace A131205

/-- `A018819(2*n)+a(n-1)` -/
def P16792619243846414405.Spec : Prop :=
  ∀ n, P16792619243846414405.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P17812113527712983313

`A268128(2*n+1)+A001316(n)`
-/

namespace A131205.P17812113527712983313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268128 (2 * n + 1) + A001316 n

end

end A131205.P17812113527712983313

namespace A131205

/-- `A268128(2*n+1)+A001316(n)` -/
def P17812113527712983313.Spec : Prop :=
  ∀ n, P17812113527712983313.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P7703391008616727603

`A075535(2*n+1)+A062188(2*n)`
-/

namespace A131205.P7703391008616727603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075535 (2 * n + 1) + A062188 (2 * n)

end

end A131205.P7703391008616727603

namespace A131205

/-- `A075535(2*n+1)+A062188(2*n)` -/
def P7703391008616727603.Spec : Prop :=
  ∀ n, P7703391008616727603.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P9810176818815314413

`A022907(2*(n+1))-A102378(2*n+1)`
-/

namespace A131205.P9810176818815314413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (2 * (n + 1)) - A102378 (2 * n + 1)

end

end A131205.P9810176818815314413

namespace A131205

/-- `A022907(2*(n+1))-A102378(2*n+1)` -/
def P9810176818815314413.Spec : Prop :=
  ∀ n, P9810176818815314413.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P4210902463023937627

`A346912(2*n+1)-A022907(2*(n+1))`
-/

namespace A131205.P4210902463023937627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346912 (2 * n + 1) - A022907 (2 * (n + 1))

end

end A131205.P4210902463023937627

namespace A131205

/-- `A346912(2*n+1)-A022907(2*(n+1))` -/
def P4210902463023937627.Spec : Prop :=
  ∀ n, P4210902463023937627.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P1157919952484715480

`A040039(4*n)`
-/

namespace A131205.P1157919952484715480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 (4 * n)

end

end A131205.P1157919952484715480

namespace A131205

/-- `A040039(4*n)` -/
def P1157919952484715480.Spec : Prop :=
  ∀ n, P1157919952484715480.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P7477489021939347219

`record[A042951(n)]`
-/

namespace A131205.P7477489021939347219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131205.P7477489021939347219

namespace A131205

/-- `record[A042951(n)]` -/
def P7477489021939347219.Spec : Prop :=
  ∀ n, P7477489021939347219.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P15683875019430687381

`A042951(6*n)`
-/

namespace A131205.P15683875019430687381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 (6 * n)

end

end A131205.P15683875019430687381

namespace A131205

/-- `A042951(6*n)` -/
def P15683875019430687381.Spec : Prop :=
  ∀ n, P15683875019430687381.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P11822010912873648128

`record[Δ[A042962(n+1)]]`
-/

namespace A131205.P11822010912873648128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131205.P11822010912873648128

namespace A131205

/-- `record[Δ[A042962(n+1)]]` -/
def P11822010912873648128.Spec : Prop :=
  ∀ n, P11822010912873648128.a n = A131205 (n + 1)

end A131205

/-! ## A131205.P15779820172835723721

`∑[record[A089688(n)]]`
-/

namespace A131205.P15779820172835723721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131205.P15779820172835723721

namespace A131205

/-- `∑[record[A089688(n)]]` -/
def P15779820172835723721.Spec : Prop :=
  ∀ n, P15779820172835723721.a n = A131205 (n + 1)

end A131205

/-!
# A131206: a(n)=(A002866(n+1) - A036691(n))/192.

The programs for A131206, there is no canonical definition to state claims against.
-/

/-! ## A131206.P10502093810326796202

`A073970(floor(n/2)!^∑{e}[n+1, #])`
-/

namespace A131206.P10502093810326796202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073970 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A131206.P10502093810326796202

/-! ## A131206.P12532331455909348864

`A081140(round(n-sqrt(n))^((n+1)/∏{p}[n+1, #]))`
-/

namespace A131206.P12532331455909348864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081140 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ)) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A131206.P12532331455909348864

/-! ## A131206.P12581069497916617676

`A234026(A025885(n!))`
-/

namespace A131206.P12581069497916617676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A025885 (Nat.factorial n)).toNat

end

end A131206.P12581069497916617676

/-!
# A131207: Nonnegative integers n such that the difference between n and its reverse is a palindrome.

The programs for A131207, there is no canonical definition to state claims against.
-/

/-! ## A131207.P2655190197526328660

`lt[A064834(A233583(n+1)), 2]`
-/

namespace A131207.P2655190197526328660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131207.P2655190197526328660

/-! ## A131207.P6900486223659252982

`lt[A072137(n), A323014(A128283(n+1))]`
-/

namespace A131207.P6900486223659252982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A128283 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131207.P6900486223659252982

/-! ## A131207.P3890424430364471347

`lt[A072137(n), A048691(A002144(n+1))]`
-/

namespace A131207.P3890424430364471347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A002144 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131207.P3890424430364471347

/-!
# A131208: Greatest prime divisor of all composite numbers between n-th semiprime and next semiprime, or 1 if there are no such composite numbers.

The programs for A131208, there is no canonical definition to state claims against.
-/

/-! ## A131208.P11401421066946157356

`gcd(∑[A252114(n+1)], A288794(n+1))`
-/

namespace A131208.P11401421066946157356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A288794 (n + 1))

end

end A131208.P11401421066946157356

/-! ## A131208.P1273021842112802812

`A065516(n+1)-A010060(A287132(n))`
-/

namespace A131208.P1273021842112802812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1) - A010060 (A287132 n).toNat

end

end A131208.P1273021842112802812

/-! ## A131208.P4986667802950328588

`gcd(A052383(A063834(n)), A240542(n+1))`
-/

namespace A131208.P4986667802950328588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052383 (A063834 n).toNat) (A240542 (n + 1))

end

end A131208.P4986667802950328588

/-! ## A131208.P3865807253184672076

`A159075(A217246(n+1))+A065516(n+1)`
-/

namespace A131208.P3865807253184672076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A217246 (n + 1)).toNat + A065516 (n + 1)

end

end A131208.P3865807253184672076

/-! ## A131208.P647457218144055583

`A007862(A066425(n+1))`
-/

namespace A131208.P647457218144055583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A066425 (n + 1)).toNat

end

end A131208.P647457218144055583

/-!
# A131209: Maximal distance between two signed permutations of n elements.

The programs for A131209, there is no canonical definition to state claims against.
-/

/-! ## A131209.P8927148347013236918

`1-char[C(3, n)]+n`
-/

namespace A131209.P8927148347013236918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A131209.P8927148347013236918

/-!
# A131210: Numbers k such that 24k - 1 is prime.

The programs for A131210, the canonical program `A131210.P7610683956886271610` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131210 has offset 1).

The definition of A131210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131210.P15917364607892425052

`eq[1, A195052(n+1)]+1`
-/

namespace A131210.P15917364607892425052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P15917364607892425052

namespace A131210

/-- `eq[1, A195052(n+1)]+1` -/
def P15917364607892425052.Spec : Prop :=
  ∀ n, (P15917364607892425052.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P17171400684667247976

`eq[2, A195051(n+1)]+1`
-/

namespace A131210.P17171400684667247976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P17171400684667247976

namespace A131210

/-- `eq[2, A195051(n+1)]+1` -/
def P17171400684667247976.Spec : Prop :=
  ∀ n, (P17171400684667247976.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P7610683956886271610

`eq[n+1, A280098(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A131210

/-- `eq[n+1, A280098(n+1)]+1` -/
def P7610683956886271610.Spec : Prop :=
  ∀ n, (P7610683956886271610.a n : ℤ) = A131210 (n + 1)

theorem P7610683956886271610.correct : P7610683956886271610.Spec := by
  intro n
  simp only [A131210, Nat.add_sub_cancel]

end A131210

/-! ## A131210.P12668389686338171197

`eq[1, ∑{e}[a(n-1)-24, #]]` with `a(0)=1`
-/

namespace A131210.P12668389686338171197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131210.P12668389686338171197

namespace A131210

/-- `eq[1, ∑{e}[a(n-1)-24, #]]` -/
def P12668389686338171197.Spec : Prop :=
  ∀ n, (P12668389686338171197.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P11449791457348532470

`lt[A001222(4*(6*n+4)+7), 2]+1`
-/

namespace A131210.P11449791457348532470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (6 * n + 4) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131210.P11449791457348532470

namespace A131210

/-- `lt[A001222(4*(6*n+4)+7), 2]+1` -/
def P11449791457348532470.Spec : Prop :=
  ∀ n, (P11449791457348532470.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P4634778580630629763

`lt[A000005(2*(12*n+9)+5), 3]+1`
-/

namespace A131210.P4634778580630629763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (12 * n + 9) + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131210.P4634778580630629763

namespace A131210

/-- `lt[A000005(2*(12*n+9)+5), 3]+1` -/
def P4634778580630629763.Spec : Prop :=
  ∀ n, (P4634778580630629763.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P2525388711964310448

`eq[1, A001222(6*A004767(n)+5)]+1`
-/

namespace A131210.P2525388711964310448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * A004767 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P2525388711964310448

namespace A131210

/-- `eq[1, A001222(6*A004767(n)+5)]+1` -/
def P2525388711964310448.Spec : Prop :=
  ∀ n, (P2525388711964310448.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P9488511595252403419

`eq[1, A001222(A008706(A008706(n))-(n+1))]`
-/

namespace A131210.P9488511595252403419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 (A008706 n).toNat - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131210.P9488511595252403419

namespace A131210

/-- `eq[1, A001222(A008706(A008706(n))-(n+1))]` -/
def P9488511595252403419.Spec : Prop :=
  ∀ n, (P9488511595252403419.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P8115290780910356515

`A194698(A134517(n+1))`
-/

namespace A131210.P8115290780910356515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A134517 (n + 1)).toNat

end

end A131210.P8115290780910356515

namespace A131210

/-- `A194698(A134517(n+1))` -/
def P8115290780910356515.Spec : Prop :=
  ∀ n, P8115290780910356515.a n = A131210 (n + 1)

end A131210

/-! ## A131210.P12968136359619150711

`eq[1, A250205(A008574(n+1))]+1`
-/

namespace A131210.P12968136359619150711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250205 (A008574 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P12968136359619150711

namespace A131210

/-- `eq[1, A250205(A008574(n+1))]+1` -/
def P12968136359619150711.Spec : Prop :=
  ∀ n, (P12968136359619150711.a n : ℤ) = A131210 (n + 1)

end A131210

/-! ## A131210.P6579502326856129831

`eq[A019432(2*n), A250205(A008574(n))]`
-/

namespace A131210.P6579502326856129831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250205 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131210.P6579502326856129831

namespace A131210

/-- `eq[A019432(2*n), A250205(A008574(n))]` -/
def P6579502326856129831.Spec : Prop :=
  ∀ n, (P6579502326856129831.a n : ℤ) = A131210 (n + 1)

end A131210

/-!
# A131211: a(n)=(n^5-n-30)/30.

The programs for A131211, the canonical program `A131211.P7924276423477525152` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131211 has offset 0).

The definition of A131211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131211.P7924276423477525152

`(n^5-n-30)/30`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131211

/-- `(n^5-n-30)/30` -/
def P7924276423477525152.Spec : Prop :=
  ∀ n, P7924276423477525152.a n = (A131211 n : ℚ)

end A131211

/-! ## A131211.P4864726165866578511

`∑[C((1-n)²+n, 2)/3]-1`
-/

namespace A131211.P4864726165866578511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131211.P4864726165866578511

namespace A131211

/-- `∑[C((1-n)²+n, 2)/3]-1` -/
def P4864726165866578511.Spec : Prop :=
  ∀ n, P4864726165866578511.a n = (A131211 n : ℚ)

end A131211

/-! ## A131211.P6013571841787968614

`∑[∑[∑[∑[a(n-1)+4]]]]-1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A131211.P6013571841787968614
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A131211.P6013571841787968614

namespace A131211

/-- `∑[∑[∑[∑[a(n-1)+4]]]]-1` -/
def P6013571841787968614.Spec : Prop :=
  ∀ n, P6013571841787968614.a n = A131211 n

end A131211

/-! ## A131211.P10192901119433451810

`floor(A131176(n)/3)`
-/

namespace A131211.P10192901119433451810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131176 n : ℚ) / 3⌋

end

end A131211.P10192901119433451810

namespace A131211

/-- `floor(A131176(n)/3)` -/
def P10192901119433451810.Spec : Prop :=
  ∀ n, P10192901119433451810.a n = A131211 n

end A131211

/-! ## A131211.P7565312141675634809

`∑[A006325(n)]-1`
-/

namespace A131211.P7565312141675634809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131211.P7565312141675634809

namespace A131211

/-- `∑[A006325(n)]-1` -/
def P7565312141675634809.Spec : Prop :=
  ∀ n, P7565312141675634809.a n = A131211 n

end A131211

/-! ## A131211.P8493284803288715189

`∑[A006484(n)-n]-1`
-/

namespace A131211.P8493284803288715189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131211.P8493284803288715189

namespace A131211

/-- `∑[A006484(n)-n]-1` -/
def P8493284803288715189.Spec : Prop :=
  ∀ n, P8493284803288715189.a n = A131211 n

end A131211

/-! ## A131211.P11930517246963352720

`floor((A208536(n+1)-2)/6)`
-/

namespace A131211.P11930517246963352720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208536 (n + 1) - 2 : ℚ) / 6⌋

end

end A131211.P11930517246963352720

namespace A131211

/-- `floor((A208536(n+1)-2)/6)` -/
def P11930517246963352720.Spec : Prop :=
  ∀ n, P11930517246963352720.a n = A131211 n

end A131211

/-! ## A131211.P18204572881999535934

`∑[A006484(n)]-A000124(n)`
-/

namespace A131211.P18204572881999535934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 n

end

end A131211.P18204572881999535934

namespace A131211

/-- `∑[A006484(n)]-A000124(n)` -/
def P18204572881999535934.Spec : Prop :=
  ∀ n, P18204572881999535934.a n = A131211 n

end A131211

/-! ## A131211.P14317379654898621887

`∑[A006484(n)-A028310(n)]`
-/

namespace A131211.P14317379654898621887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131211.P14317379654898621887

namespace A131211

/-- `∑[A006484(n)-A028310(n)]` -/
def P14317379654898621887.Spec : Prop :=
  ∀ n, P14317379654898621887.a n = A131211 n

end A131211

/-! ## A131211.P12311337268079369194

`∑[A103290(n)]+n-A000125(n)`
-/

namespace A131211.P12311337268079369194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A000125 n)

end

end A131211.P12311337268079369194

namespace A131211

/-- `∑[A103290(n)]+n-A000125(n)` -/
def P12311337268079369194.Spec : Prop :=
  ∀ n, P12311337268079369194.a n = A131211 n

end A131211

/-! ## A131211.P5823923111123570399

`∑[A000217(n²-n)/3]-1`
-/

namespace A131211.P5823923111123570399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n ^ 2 - n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131211.P5823923111123570399

namespace A131211

/-- `∑[A000217(n²-n)/3]-1` -/
def P5823923111123570399.Spec : Prop :=
  ∀ n, P5823923111123570399.a n = (A131211 n : ℚ)

end A131211

/-! ## A131211.P2954897731903500851

`∑[A071239(n)]-A000124(∑[n])`
-/

namespace A131211.P2954897731903500851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A131211.P2954897731903500851

namespace A131211

/-- `∑[A071239(n)]-A000124(∑[n])` -/
def P2954897731903500851.Spec : Prop :=
  ∀ n, P2954897731903500851.a n = A131211 n

end A131211

/-! ## A131211.P7107099916482642385

`∑[A001839(A002061(n))]-1`
-/

namespace A131211.P7107099916482642385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001839 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131211.P7107099916482642385

namespace A131211

/-- `∑[A001839(A002061(n))]-1` -/
def P7107099916482642385.Spec : Prop :=
  ∀ n, P7107099916482642385.a n = A131211 n

end A131211

/-!
# A131214: Fixed point of the morphism 1 -> 1357, 2 -> 1246, 3 -> 2357, 4 -> 1346, 5 -> 2457, 6 -> 1356, 7 -> 2467.

The programs for A131214, there is no canonical definition to state claims against.
-/

/-! ## A131214.P3510047594538567432

`∑{e}[A066535(A028897(2*n+1)), #]`
-/

namespace A131214.P3510047594538567432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066535 (A028897 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A131214.P3510047594538567432

/-!
# A131216: Numbers X such that 99*X^2 - 2178 is a square.

The programs for A131216, the canonical program `A131216.P6855995766277961637` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131216 has offset 1).

The definition of A131216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131216.P6855995766277961637

`20*a(n-1)-a(n-2)` with `a(0)=11, a(1)=209`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131216

/-- `20*a(n-1)-a(n-2)` -/
def P6855995766277961637.Spec : Prop :=
  ∀ n, P6855995766277961637.a n = A131216 (n + 1)

theorem P6855995766277961637.correct : P6855995766277961637.Spec := by
  intro n
  simp only [A131216, Nat.add_sub_cancel]

end A131216

/-! ## A131216.P9932190110824468851

`11*A075839(n+1)`
-/

namespace A131216.P9932190110824468851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A075839 (n + 1)

end

end A131216.P9932190110824468851

namespace A131216

/-- `11*A075839(n+1)` -/
def P9932190110824468851.Spec : Prop :=
  ∀ n, P9932190110824468851.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P16997382838564274691

`ogf((11-11x)/(1-20x+x^2))`
-/

namespace A131216.P16997382838564274691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -11] [1, -20, 1] n

end

end A131216.P16997382838564274691

namespace A131216

/-- `ogf((11-11x)/(1-20x+x^2))` -/
def P16997382838564274691.Spec : Prop :=
  ∀ n, P16997382838564274691.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P13975209180296199162

`Δ[11*A075843(n)]`
-/

namespace A131216.P13975209180296199162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A075843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131216.P13975209180296199162

namespace A131216

/-- `Δ[11*A075843(n)]` -/
def P13975209180296199162.Spec : Prop :=
  ∀ n, P13975209180296199162.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P16435824461504717736

`11*A041015(2*n)`
-/

namespace A131216.P16435824461504717736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A041015 (2 * n)

end

end A131216.P16435824461504717736

namespace A131216

/-- `11*A041015(2*n)` -/
def P16435824461504717736.Spec : Prop :=
  ∀ n, P16435824461504717736.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P12318520457306007443

`A001085(n+1)+A001085(n)`
-/

namespace A131216.P12318520457306007443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001085 (n + 1) + A001085 n

end

end A131216.P12318520457306007443

namespace A131216

/-- `A001085(n+1)+A001085(n)` -/
def P12318520457306007443.Spec : Prop :=
  ∀ n, P12318520457306007443.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P6739768873204416584

`A041178(2*n+1)+A041178(2*n+1)-A041178(2*n)`
-/

namespace A131216.P6739768873204416584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041178 (2 * n + 1) + (A041178 (2 * n + 1) - A041178 (2 * n))

end

end A131216.P6739768873204416584

namespace A131216

/-- `A041178(2*n+1)+A041178(2*n+1)-A041178(2*n)` -/
def P6739768873204416584.Spec : Prop :=
  ∀ n, P6739768873204416584.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P1244888842962532243

`2*A041178(2*n+1)-A041178(2*n)`
-/

namespace A131216.P1244888842962532243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041178 (2 * n + 1) - A041178 (2 * n)

end

end A131216.P1244888842962532243

namespace A131216

/-- `2*A041178(2*n+1)-A041178(2*n)` -/
def P1244888842962532243.Spec : Prop :=
  ∀ n, P1244888842962532243.a n = A131216 (n + 1)

end A131216

/-! ## A131216.P12233964284362634370

`(A198949(2*(n+1))-A198949(2*n+1))/2`
-/

namespace A131216.P12233964284362634370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198949 (2 * (n + 1)) - A198949 (2 * n + 1) : ℚ) / 2

end

end A131216.P12233964284362634370

namespace A131216

/-- `(A198949(2*(n+1))-A198949(2*n+1))/2` -/
def P12233964284362634370.Spec : Prop :=
  ∀ n, P12233964284362634370.a n = (A131216 (n + 1) : ℚ)

end A131216

/-!
# A131217: Triangle read by rows: T(n, k) = A047999(n, k) + (n+1 mod 2)*[k=1].

The programs for A131217, the canonical program `A131217.P8002505329316326436` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131217 has offset 0).

The definition of A131217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131217.P8002505329316326436

`A047999(n-char[∑[abs(1-n)]])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131217

/-- `A047999(n-char[∑[abs(1-n)]])` -/
def P8002505329316326436.Spec : Prop :=
  ∀ n, P8002505329316326436.a n = A131217 n

theorem P8002505329316326436.correct : P8002505329316326436.Spec := by
  intro n
  simp only [A131217]

end A131217

/-! ## A131217.P13557559746982878618

`gcd(A059778(n), A143200(n))`
-/

namespace A131217.P13557559746982878618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059778 n) (A143200 n)

end

end A131217.P13557559746982878618

namespace A131217

/-- `gcd(A059778(n), A143200(n))` -/
def P13557559746982878618.Spec : Prop :=
  ∀ n, (P13557559746982878618.a n : ℤ) = A131217 n

end A131217

/-! ## A131217.P10012199214171702772

`A102480(n)%2`
-/

namespace A131217.P10012199214171702772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102480 n) 2

end

end A131217.P10012199214171702772

namespace A131217

/-- `A102480(n)%2` -/
def P10012199214171702772.Spec : Prop :=
  ∀ n, P10012199214171702772.a n = A131217 n

end A131217

/-! ## A131217.P17664303552824740821

`and(1, A102480(round(acot(n)+n)))`
-/

namespace A131217.P17664303552824740821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A102480 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A131217.P17664303552824740821

namespace A131217

/-- `and(1, A102480(round(acot(n)+n)))` -/
def P17664303552824740821.Spec : Prop :=
  ∀ n, P17664303552824740821.a n = A131217 n

end A131217

/-! ## A131217.P722697559124829069

`A000007(val(A102480(n), 2))`
-/

namespace A131217.P722697559124829069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A102480 n).toNat 2)

end

end A131217.P722697559124829069

namespace A131217

/-- `A000007(val(A102480(n), 2))` -/
def P722697559124829069.Spec : Prop :=
  ∀ n, P722697559124829069.a n = A131217 n

end A131217

/-! ## A131217.P17365175294645478071

`and(1, A102480(A028310(n)))`
-/

namespace A131217.P17365175294645478071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A102480 (A028310 n).toNat)

end

end A131217.P17365175294645478071

namespace A131217

/-- `and(1, A102480(A028310(n)))` -/
def P17365175294645478071.Spec : Prop :=
  ∀ n, P17365175294645478071.a n = A131217 n

end A131217

/-! ## A131217.P12132093584437442305

`and(A102480(n), A108358(n))`
-/

namespace A131217.P12132093584437442305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A108358 n)

end

end A131217.P12132093584437442305

namespace A131217

/-- `and(A102480(n), A108358(n))` -/
def P12132093584437442305.Spec : Prop :=
  ∀ n, P12132093584437442305.a n = A131217 n

end A131217

/-! ## A131217.P1406779540414899654

`and(A102480(n), A131843(n))`
-/

namespace A131217.P1406779540414899654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A131843 n)

end

end A131217.P1406779540414899654

namespace A131217

/-- `and(A102480(n), A131843(n))` -/
def P1406779540414899654.Spec : Prop :=
  ∀ n, P1406779540414899654.a n = A131217 n

end A131217

/-! ## A131217.P17920074211114730986

`and(A102480(n), A158388(n))`
-/

namespace A131217.P17920074211114730986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A158388 n)

end

end A131217.P17920074211114730986

namespace A131217

/-- `and(A102480(n), A158388(n))` -/
def P17920074211114730986.Spec : Prop :=
  ∀ n, P17920074211114730986.a n = A131217 n

end A131217

/-! ## A131217.P17414807715727350834

`∏{p}[A112468(n), #]%2`
-/

namespace A131217.P17414807715727350834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) % 2

end

end A131217.P17414807715727350834

namespace A131217

/-- `∏{p}[A112468(n), #]%2` -/
def P17414807715727350834.Spec : Prop :=
  ∀ n, (P17414807715727350834.a n : ℤ) = A131217 n

end A131217

/-! ## A131217.P3204404097604988146

`and(A083318(n), A102480(n))`
-/

namespace A131217.P3204404097604988146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A102480 n)

end

end A131217.P3204404097604988146

namespace A131217

/-- `and(A083318(n), A102480(n))` -/
def P3204404097604988146.Spec : Prop :=
  ∀ n, P3204404097604988146.a n = A131217 n

end A131217

/-! ## A131217.P12623830949037202067

`and(A048578(n), A102480(n))`
-/

namespace A131217.P12623830949037202067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A102480 n)

end

end A131217.P12623830949037202067

namespace A131217

/-- `and(A048578(n), A102480(n))` -/
def P12623830949037202067.Spec : Prop :=
  ∀ n, P12623830949037202067.a n = A131217 n

end A131217

/-! ## A131217.P5191206906214866650

`and(A020737(n), A102480(n))`
-/

namespace A131217.P5191206906214866650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A102480 n)

end

end A131217.P5191206906214866650

namespace A131217

/-- `and(A020737(n), A102480(n))` -/
def P5191206906214866650.Spec : Prop :=
  ∀ n, P5191206906214866650.a n = A131217 n

end A131217

/-! ## A131217.P2102285423794100939

`and(A102480(n), A195744(n))`
-/

namespace A131217.P2102285423794100939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A195744 n)

end

end A131217.P2102285423794100939

namespace A131217

/-- `and(A102480(n), A195744(n))` -/
def P2102285423794100939.Spec : Prop :=
  ∀ n, P2102285423794100939.a n = A131217 n

end A131217

/-! ## A131217.P7573389736194926733

`and(A102480(n), A122041(n+1))`
-/

namespace A131217.P7573389736194926733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A122041 (n + 1))

end

end A131217.P7573389736194926733

namespace A131217

/-- `and(A102480(n), A122041(n+1))` -/
def P7573389736194926733.Spec : Prop :=
  ∀ n, P7573389736194926733.a n = A131217 n

end A131217

/-! ## A131217.P12563843533676690652

`and(A102480(n), A196657(n))`
-/

namespace A131217.P12563843533676690652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A196657 n)

end

end A131217.P12563843533676690652

namespace A131217

/-- `and(A102480(n), A196657(n))` -/
def P12563843533676690652.Spec : Prop :=
  ∀ n, P12563843533676690652.a n = A131217 n

end A131217

/-! ## A131217.P9908872485628948027

`and(A102480(n), A131056(n+1))`
-/

namespace A131217.P9908872485628948027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A131056 (n + 1))

end

end A131217.P9908872485628948027

namespace A131217

/-- `and(A102480(n), A131056(n+1))` -/
def P9908872485628948027.Spec : Prop :=
  ∀ n, P9908872485628948027.a n = A131217 n

end A131217

/-! ## A131217.P7024242125991019282

`and(A002064(n), A102480(n))`
-/

namespace A131217.P7024242125991019282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A102480 n)

end

end A131217.P7024242125991019282

namespace A131217

/-- `and(A002064(n), A102480(n))` -/
def P7024242125991019282.Spec : Prop :=
  ∀ n, P7024242125991019282.a n = A131217 n

end A131217

/-! ## A131217.P791797990613076349

`and(A048477(n), A102480(n))`
-/

namespace A131217.P791797990613076349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A102480 n)

end

end A131217.P791797990613076349

namespace A131217

/-- `and(A048477(n), A102480(n))` -/
def P791797990613076349.Spec : Prop :=
  ∀ n, P791797990613076349.a n = A131217 n

end A131217

/-! ## A131217.P7641584741612358065

`and(A051900(n), A102480(n))`
-/

namespace A131217.P7641584741612358065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A102480 n)

end

end A131217.P7641584741612358065

namespace A131217

/-- `and(A051900(n), A102480(n))` -/
def P7641584741612358065.Spec : Prop :=
  ∀ n, P7641584741612358065.a n = A131217 n

end A131217

/-!
# A131218: Array read by antidiagonals: A(n, k) = 1 if and only if the Gray codes for n and k have no bits in common.

The programs for A131218, there is no canonical definition to state claims against.
-/

/-! ## A131218.P14291946405668456853

`floor(acot(A341840(n)))`
-/

namespace A131218.P14291946405668456853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A341840 n : ℝ)⌋

end

end A131218.P14291946405668456853

/-! ## A131218.P12405955070644698586

`A000007(A341840(n))`
-/

namespace A131218.P12405955070644698586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A341840 n).toNat

end

end A131218.P12405955070644698586

/-! ## A131218.P713998724751216562

`A005369(A341840(n)²)`
-/

namespace A131218.P713998724751216562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A341840 n ^ 2).toNat

end

end A131218.P713998724751216562

/-! ## A131218.P9557393204955064964

`A014646(A341840(n)²)`
-/

namespace A131218.P9557393204955064964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014646 (A341840 n ^ 2).toNat

end

end A131218.P9557393204955064964

/-! ## A131218.P16733223082769854897

`A014744(A341840(n)²)`
-/

namespace A131218.P16733223082769854897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A341840 n ^ 2).toNat

end

end A131218.P16733223082769854897

/-! ## A131218.P1069578978566853089

`A130706(2*A341840(n))`
-/

namespace A131218.P1069578978566853089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * A341840 n).toNat

end

end A131218.P1069578978566853089

/-! ## A131218.P17292589576057790502

`∏{d}[A341840(n), A001221(#)]`
-/

namespace A131218.P17292589576057790502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A131218.P17292589576057790502

/-! ## A131218.P11193661283406448846

`∏{d}[A341840(n), A001222(#)]`
-/

namespace A131218.P11193661283406448846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A131218.P11193661283406448846

/-! ## A131218.P18376737590646780073

`A015087(A341840(n)²)`
-/

namespace A131218.P18376737590646780073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015087 (A341840 n ^ 2).toNat

end

end A131218.P18376737590646780073

/-! ## A131218.P71787715542580713

`A023934(A341840(n)²)`
-/

namespace A131218.P71787715542580713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023934 (A341840 n ^ 2).toNat

end

end A131218.P71787715542580713

/-!
# A131219: Triangle read by rows: T(n, k) = A047999(n, k)*A131218(n-k, k).

The programs for A131219, the canonical program `A131219.P16671854604704535896` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131219 has offset 0).

The definition of A131219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131219.P17050591440588010451

`A034931(n)*A131218(n)`
-/

namespace A131219.P17050591440588010451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034931 n * A131218 n

end

end A131219.P17050591440588010451

namespace A131219

/-- `A034931(n)*A131218(n)` -/
def P17050591440588010451.Spec : Prop :=
  ∀ n, P17050591440588010451.a n = A131219 n

end A131219

/-! ## A131219.P8466868201559251699

`A047999(n)*A131218(n)`
-/

namespace A131219.P8466868201559251699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A131218 n

end

end A131219.P8466868201559251699

namespace A131219

/-- `A047999(n)*A131218(n)` -/
def P8466868201559251699.Spec : Prop :=
  ∀ n, P8466868201559251699.a n = A131219 n

end A131219

/-! ## A131219.P3295273516122741692

`A131218(n)*A253084(n)`
-/

namespace A131219.P3295273516122741692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131218 n * A253084 n

end

end A131219.P3295273516122741692

namespace A131219

/-- `A131218(n)*A253084(n)` -/
def P3295273516122741692.Spec : Prop :=
  ∀ n, P3295273516122741692.a n = A131219 n

end A131219

/-! ## A131219.P16671854604704535896

`A166280(n)*A253084(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131219

/-- `A166280(n)*A253084(n)` -/
def P16671854604704535896.Spec : Prop :=
  ∀ n, P16671854604704535896.a n = A131219 n

theorem P16671854604704535896.correct : P16671854604704535896.Spec := by
  intro n
  simp only [A131219]

end A131219

/-! ## A131219.P18436496332784079715

`and(A007318(n), A131218(n))`
-/

namespace A131219.P18436496332784079715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A131218 n)

end

end A131219.P18436496332784079715

namespace A131219

/-- `and(A007318(n), A131218(n))` -/
def P18436496332784079715.Spec : Prop :=
  ∀ n, P18436496332784079715.a n = A131219 n

end A131219

/-! ## A131219.P13016506508930193980

`and(A008459(n), A131218(n))`
-/

namespace A131219.P13016506508930193980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008459 n) (A131218 n)

end

end A131219.P13016506508930193980

namespace A131219

/-- `and(A008459(n), A131218(n))` -/
def P13016506508930193980.Spec : Prop :=
  ∀ n, P13016506508930193980.a n = A131219 n

end A131219

/-! ## A131219.P16777595499785769261

`and(A008975(n), A131218(n))`
-/

namespace A131219.P16777595499785769261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008975 n) (A131218 n)

end

end A131219.P16777595499785769261

namespace A131219

/-- `and(A008975(n), A131218(n))` -/
def P16777595499785769261.Spec : Prop :=
  ∀ n, P16777595499785769261.a n = A131219 n

end A131219

/-! ## A131219.P7449648549270205266

`and(A011117(n), A131218(n))`
-/

namespace A131219.P7449648549270205266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011117 n) (A131218 n)

end

end A131219.P7449648549270205266

namespace A131219

/-- `and(A011117(n), A131218(n))` -/
def P7449648549270205266.Spec : Prop :=
  ∀ n, P7449648549270205266.a n = A131219 n

end A131219

/-! ## A131219.P16892998975392538418

`and(A013610(n), A131218(n))`
-/

namespace A131219.P16892998975392538418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013610 n) (A131218 n)

end

end A131219.P16892998975392538418

namespace A131219

/-- `and(A013610(n), A131218(n))` -/
def P16892998975392538418.Spec : Prop :=
  ∀ n, P16892998975392538418.a n = A131219 n

end A131219

/-! ## A131219.P9038450618996670333

`and(A013612(n), A131218(n))`
-/

namespace A131219.P9038450618996670333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013612 n) (A131218 n)

end

end A131219.P9038450618996670333

namespace A131219

/-- `and(A013612(n), A131218(n))` -/
def P9038450618996670333.Spec : Prop :=
  ∀ n, P9038450618996670333.a n = A131219 n

end A131219

/-! ## A131219.P6220813537964303822

`and(A013614(n), A131218(n))`
-/

namespace A131219.P6220813537964303822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013614 n) (A131218 n)

end

end A131219.P6220813537964303822

namespace A131219

/-- `and(A013614(n), A131218(n))` -/
def P6220813537964303822.Spec : Prop :=
  ∀ n, P6220813537964303822.a n = A131219 n

end A131219

/-! ## A131219.P13416934594998030031

`and(A013616(n), A131218(n))`
-/

namespace A131219.P13416934594998030031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013616 n) (A131218 n)

end

end A131219.P13416934594998030031

namespace A131219

/-- `and(A013616(n), A131218(n))` -/
def P13416934594998030031.Spec : Prop :=
  ∀ n, P13416934594998030031.a n = A131219 n

end A131219

/-! ## A131219.P13664144349293990040

`and(A013622(n), A131218(n))`
-/

namespace A131219.P13664144349293990040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013622 n) (A131218 n)

end

end A131219.P13664144349293990040

namespace A131219

/-- `and(A013622(n), A131218(n))` -/
def P13664144349293990040.Spec : Prop :=
  ∀ n, P13664144349293990040.a n = A131219 n

end A131219

/-! ## A131219.P16074193466932367858

`and(A013624(n), A131218(n))`
-/

namespace A131219.P16074193466932367858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013624 n) (A131218 n)

end

end A131219.P16074193466932367858

namespace A131219

/-- `and(A013624(n), A131218(n))` -/
def P16074193466932367858.Spec : Prop :=
  ∀ n, P16074193466932367858.a n = A131219 n

end A131219

/-! ## A131219.P11801190377377468244

`and(A047999(n), A171822(n))`
-/

namespace A131219.P11801190377377468244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A171822 n)

end

end A131219.P11801190377377468244

namespace A131219

/-- `and(A047999(n), A171822(n))` -/
def P11801190377377468244.Spec : Prop :=
  ∀ n, P11801190377377468244.a n = A131219 n

end A131219

/-! ## A131219.P14617043056698260228

`A131218(n)*A166360(n+1)`
-/

namespace A131219.P14617043056698260228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131218 n * A166360 (n + 1)

end

end A131219.P14617043056698260228

namespace A131219

/-- `A131218(n)*A166360(n+1)` -/
def P14617043056698260228.Spec : Prop :=
  ∀ n, P14617043056698260228.a n = A131219 n

end A131219

/-! ## A131219.P2005197470554520676

`and(A013618(n), A131218(n))`
-/

namespace A131219.P2005197470554520676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013618 n) (A131218 n)

end

end A131219.P2005197470554520676

namespace A131219

/-- `and(A013618(n), A131218(n))` -/
def P2005197470554520676.Spec : Prop :=
  ∀ n, P2005197470554520676.a n = A131219 n

end A131219

/-! ## A131219.P5727043772676853542

`and(A013626(n), A131218(n))`
-/

namespace A131219.P5727043772676853542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013626 n) (A131218 n)

end

end A131219.P5727043772676853542

namespace A131219

/-- `and(A013626(n), A131218(n))` -/
def P5727043772676853542.Spec : Prop :=
  ∀ n, P5727043772676853542.a n = A131219 n

end A131219

/-! ## A131219.P16962952595886748490

`and(A008518(n), A131218(n))`
-/

namespace A131219.P16962952595886748490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008518 n) (A131218 n)

end

end A131219.P16962952595886748490

namespace A131219

/-- `and(A008518(n), A131218(n))` -/
def P16962952595886748490.Spec : Prop :=
  ∀ n, P16962952595886748490.a n = A131219 n

end A131219

/-! ## A131219.P4856786055904547023

`and(A131218(n), A164866(n+1))`
-/

namespace A131219.P4856786055904547023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131218 n) (A164866 (n + 1))

end

end A131219.P4856786055904547023

namespace A131219

/-- `and(A131218(n), A164866(n+1))` -/
def P4856786055904547023.Spec : Prop :=
  ∀ n, P4856786055904547023.a n = A131219 n

end A131219

/-!
# A131220: a(n) is the least semiprime > a(n-1) whose digits do not appear in a(n-1).

The programs for A131220, there is no canonical definition to state claims against.
-/

/-! ## A131220.P8031512955124612516

`A106325(A083490(n+1))`
-/

namespace A131220.P8031512955124612516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106325 (A083490 (n + 1)).toNat

end

end A131220.P8031512955124612516

/-!
# A131221: Fixed points of the permutation A087559.

The programs for A131221, there is no canonical definition to state claims against.
-/

/-! ## A131221.P18218839965957102035

`record[gcd(n+1, A087559(n+1))]`
-/

namespace A131221.P18218839965957102035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A087559 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131221.P18218839965957102035

/-! ## A131221.P9825577681477315639

`eq[n, A087559(A028310(n))]`
-/

namespace A131221.P9825577681477315639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087559 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131221.P9825577681477315639

/-! ## A131221.P15506582154166767802

`eq[n, A087559(A185048(n+1))]`
-/

namespace A131221.P15506582154166767802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087559 (A185048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131221.P15506582154166767802

/-! ## A131221.P11133324458183703340

`record[gcd(A087559(n+1), A103517(n))]`
-/

namespace A131221.P11133324458183703340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087559 (n + 1)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131221.P11133324458183703340

/-! ## A131221.P9066996776975539660

`A326846(p?[A014688(n+1)-A087559(n+1)])`
-/

namespace A131221.P9066996776975539660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A087559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131221.P9066996776975539660

/-!
# A131222: Exponential Riordan array [1, log((1-x)/(1-2x))].

The programs for A131222, there is no canonical definition to state claims against.
-/

/-! ## A131222.P4685678972416140201

`A118759(A069777(n)*A143395(n))`
-/

namespace A131222.P4685678972416140201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A069777 n * A143395 n).toNat

end

end A131222.P4685678972416140201

/-! ## A131222.P7386008311170260368

`A069777(n)*A101290(A245667(n))`
-/

namespace A131222.P7386008311170260368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 n * A101290 (A245667 n).toNat

end

end A131222.P7386008311170260368

/-! ## A131222.P7149037562903036052

`A101290(A245667(n))*A119502(n)`
-/

namespace A131222.P7149037562903036052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101290 (A245667 n).toNat * A119502 n

end

end A131222.P7149037562903036052

/-! ## A131222.P3189551032695903230

`A119502(n)*A168485(A187557(n))`
-/

namespace A131222.P3189551032695903230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A168485 (A187557 n).toNat

end

end A131222.P3189551032695903230

/-! ## A131222.P2935550852597395225

`A118759(A143395(n)*A256268(n))`
-/

namespace A131222.P2935550852597395225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A143395 n * A256268 n).toNat

end

end A131222.P2935550852597395225

/-!
# A131225: Triangle read by rows: T(n,k) = 2*k - (1 + (-1)^(n-k))/2, for 1 <= k <= n, n >= 1.

The programs for A131225, the canonical program `A131225.P10415687489738555081` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131225 has offset 1).

The definition of A131225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131225.P8145441763286181749

`ceil(2*A131226(n+1)/3)`
-/

namespace A131225.P8145441763286181749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A131226 (n + 1) : ℚ) / 3)⌉

end

end A131225.P8145441763286181749

namespace A131225

/-- `ceil(2*A131226(n+1)/3)` -/
def P8145441763286181749.Spec : Prop :=
  ∀ n, P8145441763286181749.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P2048504279477895689

`A004396(A131226(n+1))`
-/

namespace A131225.P2048504279477895689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131226 (n + 1)).toNat

end

end A131225.P2048504279477895689

namespace A131225

/-- `A004396(A131226(n+1))` -/
def P2048504279477895689.Spec : Prop :=
  ∀ n, P2048504279477895689.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P10415687489738555081

`A133256(A211197(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131225

/-- `A133256(A211197(n+1))` -/
def P10415687489738555081.Spec : Prop :=
  ∀ n, P10415687489738555081.a n = A131225 (n + 1)

theorem P10415687489738555081.correct : P10415687489738555081.Spec := by
  intro n
  simp only [A131225, Nat.add_sub_cancel]

end A131225

/-! ## A131225.P17608538200607624076

`A004523(A131226(n+1)+1)`
-/

namespace A131225.P17608538200607624076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A131226 (n + 1) + 1).toNat

end

end A131225.P17608538200607624076

namespace A131225

/-- `A004523(A131226(n+1)+1)` -/
def P17608538200607624076.Spec : Prop :=
  ∀ n, P17608538200607624076.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P10702845059539548475

`A096607(A131226(n+1)+1)`
-/

namespace A131225.P10702845059539548475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (A131226 (n + 1) + 1).toNat

end

end A131225.P10702845059539548475

namespace A131225

/-- `A096607(A131226(n+1)+1)` -/
def P10702845059539548475.Spec : Prop :=
  ∀ n, P10702845059539548475.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P3519863845458615227

`A131737(A131226(n+1)+1)`
-/

namespace A131225.P3519863845458615227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A131226 (n + 1) + 1).toNat

end

end A131225.P3519863845458615227

namespace A131225

/-- `A131737(A131226(n+1)+1)` -/
def P3519863845458615227.Spec : Prop :=
  ∀ n, P3519863845458615227.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P10874120068141679023

`A008615(4*A131226(n+1))`
-/

namespace A131225.P10874120068141679023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * A131226 (n + 1)).toNat

end

end A131225.P10874120068141679023

namespace A131225

/-- `A008615(4*A131226(n+1))` -/
def P10874120068141679023.Spec : Prop :=
  ∀ n, P10874120068141679023.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P6502141854649675508

`A108872(n+1)-A134444(n)`
-/

namespace A131225.P6502141854649675508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A134444 n

end

end A131225.P6502141854649675508

namespace A131225

/-- `A108872(n+1)-A134444(n)` -/
def P6502141854649675508.Spec : Prop :=
  ∀ n, P6502141854649675508.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P1858927302724802800

`A092942(A131226(n+1)%(n+3))`
-/

namespace A131225.P1858927302724802800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (Int.tmod (A131226 (n + 1)) (n + 3 : ℤ)).toNat

end

end A131225.P1858927302724802800

namespace A131225

/-- `A092942(A131226(n+1)%(n+3))` -/
def P1858927302724802800.Spec : Prop :=
  ∀ n, P1858927302724802800.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P11335553318511910058

`ceil((A131226(n+1)+A002262(n))/2)`
-/

namespace A131225.P11335553318511910058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131226 (n + 1) + A002262 n : ℚ) / 2⌉

end

end A131225.P11335553318511910058

namespace A131225

/-- `ceil((A131226(n+1)+A002262(n))/2)` -/
def P11335553318511910058.Spec : Prop :=
  ∀ n, P11335553318511910058.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P8401008210285624158

`A158405(n+1)+1-A128174(n+1)`
-/

namespace A131225.P8401008210285624158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + (1 - A128174 (n + 1))

end

end A131225.P8401008210285624158

namespace A131225

/-- `A158405(n+1)+1-A128174(n+1)` -/
def P8401008210285624158.Spec : Prop :=
  ∀ n, P8401008210285624158.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P8187441034378596381

`2*A002260(n+1)-A128174(n+1)`
-/

namespace A131225.P8187441034378596381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) - A128174 (n + 1)

end

end A131225.P8187441034378596381

namespace A131225

/-- `2*A002260(n+1)-A128174(n+1)` -/
def P8187441034378596381.Spec : Prop :=
  ∀ n, P8187441034378596381.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P16205389802888628892

`(A131226(n+1)+A002260(n+1))/2`
-/

namespace A131225.P16205389802888628892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131226 (n + 1) + A002260 (n + 1) : ℚ) / 2

end

end A131225.P16205389802888628892

namespace A131225

/-- `(A131226(n+1)+A002260(n+1))/2` -/
def P16205389802888628892.Spec : Prop :=
  ∀ n, P16205389802888628892.a n = (A131225 (n + 1) : ℚ)

end A131225

/-! ## A131225.P16491303715601071079

`A001057(A131226(n+1)+A002262(n))`
-/

namespace A131225.P16491303715601071079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A131226 (n + 1) + A002262 n).toNat

end

end A131225.P16491303715601071079

namespace A131225

/-- `A001057(A131226(n+1)+A002262(n))` -/
def P16491303715601071079.Spec : Prop :=
  ∀ n, P16491303715601071079.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P11654649754940128178

`A133728(n+1)+A133728(n+2)-A128174(n+2)`
-/

namespace A131225.P11654649754940128178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133728 (n + 1) + (A133728 (n + 2) - A128174 (n + 2))

end

end A131225.P11654649754940128178

namespace A131225

/-- `A133728(n+1)+A133728(n+2)-A128174(n+2)` -/
def P11654649754940128178.Spec : Prop :=
  ∀ n, P11654649754940128178.a n = A131225 (n + 1)

end A131225

/-! ## A131225.P7273298956975162

`A253146(A209293(n+1))`
-/

namespace A131225.P7273298956975162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (A209293 (n + 1)).toNat

end

end A131225.P7273298956975162

namespace A131225

/-- `A253146(A209293(n+1))` -/
def P7273298956975162.Spec : Prop :=
  ∀ n, P7273298956975162.a n = A131225 (n + 1)

end A131225

/-!
# A131226: Triangle read by rows: T(n,k) = 3*k - 1 - (-1)^(n+k), for 1 <= k <= n, n >= 1.

The programs for A131226, the canonical program `A131226.P16820433907033852690` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131226 has offset 1).

The definition of A131226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131226.P16820433907033852690

`A032766(A131225(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131226

/-- `A032766(A131225(n+1))` -/
def P16820433907033852690.Spec : Prop :=
  ∀ n, P16820433907033852690.a n = A131226 (n + 1)

theorem P16820433907033852690.correct : P16820433907033852690.Spec := by
  intro n
  simp only [A131226, Nat.add_sub_cancel]

end A131226

/-! ## A131226.P7495254147232115123

`A057353(2*A131225(n+1))`
-/

namespace A131226.P7495254147232115123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A131225 (n + 1)).toNat

end

end A131226.P7495254147232115123

namespace A131226

/-- `A057353(2*A131225(n+1))` -/
def P7495254147232115123.Spec : Prop :=
  ∀ n, P7495254147232115123.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P1554919600708610888

`A004526(3*A131225(n+1))`
-/

namespace A131226.P1554919600708610888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A131225 (n + 1)).toNat

end

end A131226.P1554919600708610888

namespace A131226

/-- `A004526(3*A131225(n+1))` -/
def P1554919600708610888.Spec : Prop :=
  ∀ n, P1554919600708610888.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P5806503471759993645

`A123108(3*A131225(n+1))`
-/

namespace A131226.P5806503471759993645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A131225 (n + 1)).toNat

end

end A131226.P5806503471759993645

namespace A131226

/-- `A123108(3*A131225(n+1))` -/
def P5806503471759993645.Spec : Prop :=
  ∀ n, P5806503471759993645.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P11374561989677358521

`A002265(6*A131225(n+1))`
-/

namespace A131226.P11374561989677358521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A131225 (n + 1)).toNat

end

end A131226.P11374561989677358521

namespace A131226

/-- `A002265(6*A131225(n+1))` -/
def P11374561989677358521.Spec : Prop :=
  ∀ n, P11374561989677358521.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P12013007400520313129

`A008619(3*A131225(n+1))-1`
-/

namespace A131226.P12013007400520313129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A131225 (n + 1)).toNat - 1

end

end A131226.P12013007400520313129

namespace A131226

/-- `A008619(3*A131225(n+1))-1` -/
def P12013007400520313129.Spec : Prop :=
  ∀ n, P12013007400520313129.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P4631205435566579109

`2*A131225(n+1)-A002260(n+1)`
-/

namespace A131226.P4631205435566579109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131225 (n + 1) - A002260 (n + 1)

end

end A131226.P4631205435566579109

namespace A131226

/-- `2*A131225(n+1)-A002260(n+1)` -/
def P4631205435566579109.Spec : Prop :=
  ∀ n, P4631205435566579109.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P14886242052162978236

`2*A131225(n+1)-(A002262(n)+1)`
-/

namespace A131226.P14886242052162978236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131225 (n + 1) - (A002262 n + 1)

end

end A131226.P14886242052162978236

namespace A131226

/-- `2*A131225(n+1)-(A002262(n)+1)` -/
def P14886242052162978236.Spec : Prop :=
  ∀ n, P14886242052162978236.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P4236686594443611337

`A002260(n+1)+A131225(n+1)-A128174(n+1)`
-/

namespace A131226.P4236686594443611337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A131225 (n + 1) - A128174 (n + 1))

end

end A131226.P4236686594443611337

namespace A131226

/-- `A002260(n+1)+A131225(n+1)-A128174(n+1)` -/
def P4236686594443611337.Spec : Prop :=
  ∀ n, P4236686594443611337.a n = A131226 (n + 1)

end A131226

/-! ## A131226.P14029927729777014265

`A246425(A067745(A246425(A257499(n+1))))`
-/

namespace A131226.P14029927729777014265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A067745 (A246425 (A257499 (n + 1)).toNat).toNat).toNat

end

end A131226.P14029927729777014265

namespace A131226

/-- `A246425(A067745(A246425(A257499(n+1))))` -/
def P14029927729777014265.Spec : Prop :=
  ∀ n, P14029927729777014265.a n = A131226 (n + 1)

end A131226

/-!
# A131227: 2*A051340 - A128174.

The programs for A131227, the canonical program `A131227.P17976350345380412525` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131227 has offset 0).

The definition of A131227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131227.P17572546001823783313

`abs(or(A103218(n), A114284(n)))`
-/

namespace A131227.P17572546001823783313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A103218 n) (A114284 n)|

end

end A131227.P17572546001823783313

namespace A131227

/-- `abs(or(A103218(n), A114284(n)))` -/
def P17572546001823783313.Spec : Prop :=
  ∀ n, P17572546001823783313.a n = A131227 n

end A131227

/-! ## A131227.P14997579910548971100

`gcd(A089799(n), A131911(n+1))`
-/

namespace A131227.P14997579910548971100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089799 n) (A131911 (n + 1))

end

end A131227.P14997579910548971100

namespace A131227

/-- `gcd(A089799(n), A131911(n+1))` -/
def P14997579910548971100.Spec : Prop :=
  ∀ n, (P14997579910548971100.a n : ℤ) = A131227 n

end A131227

/-! ## A131227.P17976350345380412525

`2*A051340(n)-A128174(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131227

/-- `2*A051340(n)-A128174(n+1)` -/
def P17976350345380412525.Spec : Prop :=
  ∀ n, P17976350345380412525.a n = A131227 n

theorem P17976350345380412525.correct : P17976350345380412525.Spec := by
  intro n
  simp only [A131227]

end A131227

/-! ## A131227.P11636587544697774245

`gcd(A094727(n+1), A133981(n+1))`
-/

namespace A131227.P11636587544697774245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094727 (n + 1)) (A133981 (n + 1))

end

end A131227.P11636587544697774245

namespace A131227

/-- `gcd(A094727(n+1), A133981(n+1))` -/
def P11636587544697774245.Spec : Prop :=
  ∀ n, (P11636587544697774245.a n : ℤ) = A131227 n

end A131227

/-! ## A131227.P13022820215775091910

`A078298(n^(2-gcd(2, comp[∑[4*n]])))`
-/

namespace A131227.P13022820215775091910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078298 (SequenceMachineLib.roundAway ((n : ℚ) ^ (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) : ℤ))).toNat

end

end A131227.P13022820215775091910

namespace A131227

/-- `A078298(n^(2-gcd(2, comp[∑[4*n]])))` -/
def P13022820215775091910.Spec : Prop :=
  ∀ n, P13022820215775091910.a n = A131227 n

end A131227

/-! ## A131227.P544962426373274607

`A078298(n^(comp[2*(n²+n)]%2))`
-/

namespace A131227.P544962426373274607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078298 (n ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2))

end

end A131227.P544962426373274607

namespace A131227

/-- `A078298(n^(comp[2*(n²+n)]%2))` -/
def P544962426373274607.Spec : Prop :=
  ∀ n, P544962426373274607.a n = A131227 n

end A131227

/-! ## A131227.P3175111633392966292

`abs(or(A078298(n), A114284(n)))`
-/

namespace A131227.P3175111633392966292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A078298 n) (A114284 n)|

end

end A131227.P3175111633392966292

namespace A131227

/-- `abs(or(A078298(n), A114284(n)))` -/
def P3175111633392966292.Spec : Prop :=
  ∀ n, P3175111633392966292.a n = A131227 n

end A131227

/-! ## A131227.P9026682150019958500

`gcd(A078298(n), A185879(n+1))`
-/

namespace A131227.P9026682150019958500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078298 n) (A185879 (n + 1))

end

end A131227.P9026682150019958500

namespace A131227

/-- `gcd(A078298(n), A185879(n+1))` -/
def P9026682150019958500.Spec : Prop :=
  ∀ n, (P9026682150019958500.a n : ℤ) = A131227 n

end A131227

/-! ## A131227.P7507104348543964676

`A054582(C(n, A282252(n)))`
-/

namespace A131227.P7507104348543964676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (Nat.choose n (A282252 n).toNat)

end

end A131227.P7507104348543964676

namespace A131227

/-- `A054582(C(n, A282252(n)))` -/
def P7507104348543964676.Spec : Prop :=
  ∀ n, P7507104348543964676.a n = A131227 n

end A131227

/-! ## A131227.P7803591231280926490

`A078298(C(n, A282252(n)))`
-/

namespace A131227.P7803591231280926490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078298 (Nat.choose n (A282252 n).toNat)

end

end A131227.P7803591231280926490

namespace A131227

/-- `A078298(C(n, A282252(n)))` -/
def P7803591231280926490.Spec : Prop :=
  ∀ n, P7803591231280926490.a n = A131227 n

end A131227

/-!
# A131228: 3*A051340 - 2*A128174.

The programs for A131228, there is no canonical definition to state claims against.
-/

/-! ## A131228.P17681097766984308019

`A032766(A131227(n))%A001844(A013610(n))`
-/

namespace A131228.P17681097766984308019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032766 (A131227 n).toNat) (A001844 (A013610 n).toNat)

end

end A131228.P17681097766984308019

/-! ## A131228.P6233434205896909519

`A032766(A131227(n))+A010051(A201009(n+1))`
-/

namespace A131228.P6233434205896909519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131227 n).toNat + A010051 (A201009 (n + 1)).toNat

end

end A131228.P6233434205896909519

/-! ## A131228.P9376805028874897828

`A032766(A131227(n))^A014963(A028273(n))`
-/

namespace A131228.P9376805028874897828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032766 (A131227 n).toNat : ℚ) ^ (A014963 (A028273 n).toNat : ℤ)

end

end A131228.P9376805028874897828

/-!
# A131229: Numbers congruent to {1,7} mod 10.

The programs for A131229, the canonical program `A131229.P1635679959376601092` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131229 has offset 1).

The definition of A131229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131229.P1635679959376601092

`a(n-2)+10` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131229

/-- `a(n-2)+10` -/
def P1635679959376601092.Spec : Prop :=
  ∀ n, (P1635679959376601092.a n : ℤ) = A131229 (n + 1)

theorem P1635679959376601092.correct : P1635679959376601092.Spec := by
  intro n
  simp only [A131229, Nat.add_sub_cancel]

end A131229

/-! ## A131229.P15611054096763594785

`5*(n+1)+((-1)^(n+1)-7)/2`
-/

namespace A131229.P15611054096763594785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℚ) + ((-1) ^ (n + 1) - 7 : ℚ) / 2

end

end A131229.P15611054096763594785

namespace A131229

/-- `5*(n+1)+((-1)^(n+1)-7)/2` -/
def P15611054096763594785.Spec : Prop :=
  ∀ n, P15611054096763594785.a n = (A131229 (n + 1) : ℚ)

theorem P15611054096763594785.correct : P15611054096763594785.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A131229, Nat.add_sub_cancel, A131229.P15611054096763594785.a, A131229.P1635679959376601092.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A131229, Nat.add_sub_cancel, A131229.P15611054096763594785.a, A131229.P1635679959376601092.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131229

/-! ## A131229.P9968842982311178489

`or(1, 5*n+1)`
-/

namespace A131229.P9968842982311178489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 1)

end

end A131229.P9968842982311178489

namespace A131229

/-- `or(1, 5*n+1)` -/
def P9968842982311178489.Spec : Prop :=
  ∀ n, (P9968842982311178489.a n : ℤ) = A131229 (n + 1)

end A131229

/-! ## A131229.P8053590950233620828

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=6, a(2)=4`
-/

namespace A131229.P8053590950233620828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P8053590950233620828

namespace A131229

/-- `∑[abs(a(n-2))]` -/
def P8053590950233620828.Spec : Prop :=
  ∀ n, (P8053590950233620828.a n : ℤ) = A131229 (n + 1)

end A131229

/-! ## A131229.P6408933344301071310

`∑[10-a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A131229.P6408933344301071310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P6408933344301071310

namespace A131229

/-- `∑[10-a(n-1)]` -/
def P6408933344301071310.Spec : Prop :=
  ∀ n, P6408933344301071310.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P1672897956284747736

`∑[∑[ogf((1+6x+3x^2)/(1+x))]]`
-/

namespace A131229.P1672897956284747736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P1672897956284747736

namespace A131229

/-- `∑[∑[ogf((1+6x+3x^2)/(1+x))]]` -/
def P1672897956284747736.Spec : Prop :=
  ∀ n, P1672897956284747736.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P6962584388145280471

`ogf((1+6x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A131229.P6962584388145280471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 3] [1, -1, -1, 1] n

end

end A131229.P6962584388145280471

namespace A131229

/-- `ogf((1+6x+3x^2)/(1-x-x^2+x^3))` -/
def P6962584388145280471.Spec : Prop :=
  ∀ n, P6962584388145280471.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P12836624930153175883

`abs(or(1, n-2-6*n))`
-/

namespace A131229.P12836624930153175883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - 2 - (6 * n : ℤ))|

end

end A131229.P12836624930153175883

namespace A131229

/-- `abs(or(1, n-2-6*n))` -/
def P12836624930153175883.Spec : Prop :=
  ∀ n, P12836624930153175883.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P3223470218979569214

`record[(n+2)²%10+n-3]`
-/

namespace A131229.P3223470218979569214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 % 10 : ℕ) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131229.P3223470218979569214

namespace A131229

/-- `record[(n+2)²%10+n-3]` -/
def P3223470218979569214.Spec : Prop :=
  ∀ n, P3223470218979569214.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P9062989427225544635

`floor(a(n-1)-2*(gcd(2, n)-4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131229.P9062989427225544635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 * ((Nat.gcd 2 n : ℤ) - 4)

end

end A131229.P9062989427225544635

namespace A131229

/-- `floor(a(n-1)-2*(gcd(2, n)-4))` -/
def P9062989427225544635.Spec : Prop :=
  ∀ n, P9062989427225544635.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P12869422501453750173

`∑[dr(2-A040134(n))]`
-/

namespace A131229.P12869422501453750173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A040134 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P12869422501453750173

namespace A131229

/-- `∑[dr(2-A040134(n))]` -/
def P12869422501453750173.Spec : Prop :=
  ∀ n, (P12869422501453750173.a n : ℤ) = A131229 (n + 1)

end A131229

/-! ## A131229.P5921972250400873798

`∑[A061496(a(n-1))]` with `a(0)=1`
-/

namespace A131229.P5921972250400873798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A061496 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P5921972250400873798

namespace A131229

/-- `∑[A061496(a(n-1))]` -/
def P5921972250400873798.Spec : Prop :=
  ∀ n, P5921972250400873798.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P930784015735436381

`∑[A125115(a(n-1))]` with `a(0)=1`
-/

namespace A131229.P930784015735436381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A125115 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P930784015735436381

namespace A131229

/-- `∑[A125115(a(n-1))]` -/
def P930784015735436381.Spec : Prop :=
  ∀ n, P930784015735436381.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P2324646542444321999

`∑[A178054(a(n-1))]` with `a(0)=1`
-/

namespace A131229.P2324646542444321999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A178054 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P2324646542444321999

namespace A131229

/-- `∑[A178054(a(n-1))]` -/
def P2324646542444321999.Spec : Prop :=
  ∀ n, P2324646542444321999.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P18249948333059639317

`∑[A243983(a(n-1))]` with `a(0)=1, a(1)=6`
-/

namespace A131229.P18249948333059639317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  A243983 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131229.P18249948333059639317

namespace A131229

/-- `∑[A243983(a(n-1))]` -/
def P18249948333059639317.Spec : Prop :=
  ∀ n, P18249948333059639317.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P16069589982106116850

`xor(char[2*n+1], A016861(n))`
-/

namespace A131229.P16069589982106116850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A016861 n)

end

end A131229.P16069589982106116850

namespace A131229

/-- `xor(char[2*n+1], A016861(n))` -/
def P16069589982106116850.Spec : Prop :=
  ∀ n, P16069589982106116850.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P16234294788181669492

`A000265(A063097(n+1))`
-/

namespace A131229.P16234294788181669492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063097 (n + 1)).toNat

end

end A131229.P16234294788181669492

namespace A131229

/-- `A000265(A063097(n+1))` -/
def P16234294788181669492.Spec : Prop :=
  ∀ n, P16234294788181669492.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P3041640086723966862

`A014637(n)%A017293(n)`
-/

namespace A131229.P3041640086723966862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014637 n) (A017293 n)

end

end A131229.P3041640086723966862

namespace A131229

/-- `A014637(n)%A017293(n)` -/
def P3041640086723966862.Spec : Prop :=
  ∀ n, P3041640086723966862.a n = A131229 (n + 1)

end A131229

/-! ## A131229.P5802074043025969683

`∪[A017281(n), A017353(n)]`
-/

namespace A131229.P5802074043025969683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131229.P5802074043025969683

namespace A131229

/-- `∪[A017281(n), A017353(n)]` -/
def P5802074043025969683.Spec : Prop :=
  ∀ n, (P5802074043025969683.a n : ℤ) = A131229 (n + 1)

end A131229

/-! ## A131229.P5386477389455822121

`A017581(n)%A113804(n+1)`
-/

namespace A131229.P5386477389455822121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A113804 (n + 1))

end

end A131229.P5386477389455822121

namespace A131229

/-- `A017581(n)%A113804(n+1)` -/
def P5386477389455822121.Spec : Prop :=
  ∀ n, P5386477389455822121.a n = A131229 (n + 1)

end A131229

/-!
# A131230: Triangle read by rows: 2*A130296 - A128174.

The programs for A131230, the canonical program `A131230.P12113415605304049017` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131230 has offset 1).

The definition of A131230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131230.P3759548574560759982

`A131911(n+1)^(1-char[∑[n-1]])`
-/

namespace A131230.P3759548574560759982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131911 (n + 1) : ℚ) ^ (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A131230.P3759548574560759982

namespace A131230

/-- `A131911(n+1)^(1-char[∑[n-1]])` -/
def P3759548574560759982.Spec : Prop :=
  ∀ n, P3759548574560759982.a n = (A131230 (n + 1) : ℚ)

end A131230

/-! ## A131230.P4912049978648321214

`A004277(round(sqrt(2*n))*char[∑[n]]+1)-(2-gcd(2, comp[∑[4*n]]))`
-/

namespace A131230.P4912049978648321214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat - (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n) : ℤ))

end

end A131230.P4912049978648321214

namespace A131230

/-- `A004277(round(sqrt(2*n))*char[∑[n]]+1)-(2-gcd(2, comp[∑[4*n]]))` -/
def P4912049978648321214.Spec : Prop :=
  ∀ n, P4912049978648321214.a n = A131230 (n + 1)

end A131230

/-! ## A131230.P1459619003793209995

`A004396(A131231(n+1))`
-/

namespace A131230.P1459619003793209995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131231 (n + 1)).toNat

end

end A131230.P1459619003793209995

namespace A131230

/-- `A004396(A131231(n+1))` -/
def P1459619003793209995.Spec : Prop :=
  ∀ n, P1459619003793209995.a n = A131230 (n + 1)

end A131230

/-! ## A131230.P11105837083010341874

`floor(A104571(n)/A193592(n))`
-/

namespace A131230.P11105837083010341874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104571 n : ℚ) / (A193592 n : ℚ)⌋

end

end A131230.P11105837083010341874

namespace A131230

/-- `floor(A104571(n)/A193592(n))` -/
def P11105837083010341874.Spec : Prop :=
  ∀ n, P11105837083010341874.a n = A131230 (n + 1)

end A131230

/-! ## A131230.P14302495414105433826

`A004523(A131231(n+1)+1)`
-/

namespace A131230.P14302495414105433826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A131231 (n + 1) + 1).toNat

end

end A131230.P14302495414105433826

namespace A131230

/-- `A004523(A131231(n+1)+1)` -/
def P14302495414105433826.Spec : Prop :=
  ∀ n, P14302495414105433826.a n = A131230 (n + 1)

end A131230

/-! ## A131230.P8931918844735883473

`gcd(A127648(n), A131911(n+1))`
-/

namespace A131230.P8931918844735883473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A131911 (n + 1))

end

end A131230.P8931918844735883473

namespace A131230

/-- `gcd(A127648(n), A131911(n+1))` -/
def P8931918844735883473.Spec : Prop :=
  ∀ n, (P8931918844735883473.a n : ℤ) = A131230 (n + 1)

end A131230

/-! ## A131230.P10391891718794811518

`and(A131911(n+1), A154990(n+1))`
-/

namespace A131230.P10391891718794811518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131911 (n + 1)) (A154990 (n + 1))

end

end A131230.P10391891718794811518

namespace A131230

/-- `and(A131911(n+1), A154990(n+1))` -/
def P10391891718794811518.Spec : Prop :=
  ∀ n, P10391891718794811518.a n = A131230 (n + 1)

end A131230

/-! ## A131230.P12113415605304049017

`2*A130296(n+1)-A128174(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131230

/-- `2*A130296(n+1)-A128174(n+1)` -/
def P12113415605304049017.Spec : Prop :=
  ∀ n, P12113415605304049017.a n = A131230 (n + 1)

theorem P12113415605304049017.correct : P12113415605304049017.Spec := by
  intro n
  simp only [A131230, Nat.add_sub_cancel]

end A131230

/-! ## A131230.P4707676041135282626

`gcd(A134402(n)+A131911(n+1), A134402(n))`
-/

namespace A131230.P4707676041135282626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134402 n + A131911 (n + 1)) (A134402 n)

end

end A131230.P4707676041135282626

namespace A131230

/-- `gcd(A134402(n)+A131911(n+1), A134402(n))` -/
def P4707676041135282626.Spec : Prop :=
  ∀ n, (P4707676041135282626.a n : ℤ) = A131230 (n + 1)

end A131230

/-! ## A131230.P16787094091199901600

`A131911(A095794(A051340(n))+n)`
-/

namespace A131230.P16787094091199901600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131911 (A095794 (A051340 n).toNat + (n : ℤ)).toNat

end

end A131230.P16787094091199901600

namespace A131230

/-- `A131911(A095794(A051340(n))+n)` -/
def P16787094091199901600.Spec : Prop :=
  ∀ n, P16787094091199901600.a n = A131230 (n + 1)

end A131230

/-! ## A131230.P3511740946210341824

`gcd(A131911(n+1)+A039910(n), A039910(n))`
-/

namespace A131230.P3511740946210341824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131911 (n + 1) + A039910 n) (A039910 n)

end

end A131230.P3511740946210341824

namespace A131230

/-- `gcd(A131911(n+1)+A039910(n), A039910(n))` -/
def P3511740946210341824.Spec : Prop :=
  ∀ n, (P3511740946210341824.a n : ℤ) = A131230 (n + 1)

end A131230

/-!
# A131231: 3*A130296 - 2*A128174.

The programs for A131231, the canonical program `A131231.P11716200327351419876` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131231 has offset 1).

The definition of A131231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131231.P11716200327351419876

`A032766(A131230(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131231

/-- `A032766(A131230(n+1))` -/
def P11716200327351419876.Spec : Prop :=
  ∀ n, P11716200327351419876.a n = A131231 (n + 1)

theorem P11716200327351419876.correct : P11716200327351419876.Spec := by
  intro n
  simp only [A131231, Nat.add_sub_cancel]

end A131231

/-! ## A131231.P4390808448093344

`2*A131230(n+1)-A130296(n+1)`
-/

namespace A131231.P4390808448093344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131230 (n + 1) - A130296 (n + 1)

end

end A131231.P4390808448093344

namespace A131231

/-- `2*A131230(n+1)-A130296(n+1)` -/
def P4390808448093344.Spec : Prop :=
  ∀ n, P4390808448093344.a n = A131231 (n + 1)

end A131231

/-! ## A131231.P18232563200290749333

`A266981(A131032(n+1))-A097807(n)`
-/

namespace A131231.P18232563200290749333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 (A131032 (n + 1)).toNat - A097807 n

end

end A131231.P18232563200290749333

namespace A131231

/-- `A266981(A131032(n+1))-A097807(n)` -/
def P18232563200290749333.Spec : Prop :=
  ∀ n, P18232563200290749333.a n = A131231 (n + 1)

end A131231

/-! ## A131231.P6873590265836064173

`A032766(gcd(A127648(n), A131911(n+1)))`
-/

namespace A131231.P6873590265836064173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.gcd (A127648 n) (A131911 (n + 1)))

end

end A131231.P6873590265836064173

namespace A131231

/-- `A032766(gcd(A127648(n), A131911(n+1)))` -/
def P6873590265836064173.Spec : Prop :=
  ∀ n, P6873590265836064173.a n = A131231 (n + 1)

end A131231

/-! ## A131231.P9141144767055649274

`gcd(A032766(A131911(n+1)), A134402(n))`
-/

namespace A131231.P9141144767055649274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032766 (A131911 (n + 1)).toNat) (A134402 n)

end

end A131231.P9141144767055649274

namespace A131231

/-- `gcd(A032766(A131911(n+1)), A134402(n))` -/
def P9141144767055649274.Spec : Prop :=
  ∀ n, (P9141144767055649274.a n : ℤ) = A131231 (n + 1)

end A131231

/-! ## A131231.P11088019830340285256

`A130296(n+1)+A131230(n+1)-A128174(n+1)`
-/

namespace A131231.P11088019830340285256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A131230 (n + 1) - A128174 (n + 1))

end

end A131231.P11088019830340285256

namespace A131231

/-- `A130296(n+1)+A131230(n+1)-A128174(n+1)` -/
def P11088019830340285256.Spec : Prop :=
  ∀ n, P11088019830340285256.a n = A131231 (n + 1)

end A131231

/-! ## A131231.P7759531582448713388

`A266981(A131032(n+1))-A020985(A130330(n))`
-/

namespace A131231.P7759531582448713388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 (A131032 (n + 1)).toNat - A020985 (A130330 n).toNat

end

end A131231.P7759531582448713388

namespace A131231

/-- `A266981(A131032(n+1))-A020985(A130330(n))` -/
def P7759531582448713388.Spec : Prop :=
  ∀ n, P7759531582448713388.a n = A131231 (n + 1)

end A131231

/-!
# A131232: a(n) is the number of positive integers < n that do not have 2 or more distinct prime divisors in common with n.

The programs for A131232, the canonical program `A131232.P4039545971167659637` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131232 has offset 1).

The definition of A131232 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A131233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131232.P4039545971167659637

`A131233(n+1)-A010055(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131232

/-- `A131233(n+1)-A010055(n+1)` -/
def P4039545971167659637.Spec : Prop :=
  ∀ n, P4039545971167659637.a n = A131232 (n + 1)

theorem P4039545971167659637.correct : P4039545971167659637.Spec := by
  intro n
  simp only [A131232, Nat.add_sub_cancel]

end A131232

/-! ## A131232.P592172262170786755

`A131233(n+1)-char[A181062(n+1)]`
-/

namespace A131232.P592172262170786755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131232.P592172262170786755

namespace A131232

/-- `A131233(n+1)-char[A181062(n+1)]` -/
def P592172262170786755.Spec : Prop :=
  ∀ n, P592172262170786755.a n = A131232 (n + 1)

end A131232

/-! ## A131232.P1914880421203752136

`A131233(n+1)-A007875(n+1)%2`
-/

namespace A131232.P1914880421203752136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 1) - Int.tmod (A007875 (n + 1)) 2

end

end A131232.P1914880421203752136

namespace A131232

/-- `A131233(n+1)-A007875(n+1)%2` -/
def P1914880421203752136.Spec : Prop :=
  ∀ n, P1914880421203752136.a n = A131232 (n + 1)

end A131232

/-! ## A131232.P13412350326662761851

`A116512(n+1)+Δ[A002088(n)]-(1-A143731(n+1))`
-/

namespace A131232.P13412350326662761851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + (f1 (n + 1) - f1 n) - (1 - A143731 (n + 1))

end

end A131232.P13412350326662761851

namespace A131232

/-- `A116512(n+1)+Δ[A002088(n)]-(1-A143731(n+1))` -/
def P13412350326662761851.Spec : Prop :=
  ∀ n, P13412350326662761851.a n = A131232 (n + 1)

end A131232

/-! ## A131232.P17637679649815749584

`A116512(n+1)+Δ[A002088(n)]-A333175(n+1)%2`
-/

namespace A131232.P17637679649815749584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + (f1 (n + 1) - f1 n) - Int.tmod (A333175 (n + 1)) 2

end

end A131232.P17637679649815749584

namespace A131232

/-- `A116512(n+1)+Δ[A002088(n)]-A333175(n+1)%2` -/
def P17637679649815749584.Spec : Prop :=
  ∀ n, P17637679649815749584.a n = A131232 (n + 1)

end A131232

/-! ## A131232.P7510274668606327900

`A131233(n+1)-A354924((n+1)²)`
-/

namespace A131232.P7510274668606327900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 1) - A354924 ((n + 1) ^ 2)

end

end A131232.P7510274668606327900

namespace A131232

/-- `A131233(n+1)-A354924((n+1)²)` -/
def P7510274668606327900.Spec : Prop :=
  ∀ n, P7510274668606327900.a n = A131232 (n + 1)

end A131232

/-!
# A131233: a(n) is the number of positive integers <= n that do not have 2 or more distinct prime divisors in common with n.

The programs for A131233, the canonical program `A131233.P6976848366218910666` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131233 has offset 1).

The definition of A131233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A116512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131233.P6976848366218910666

`A116512(n+1)+A000010(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131233

/-- `A116512(n+1)+A000010(n+1)` -/
def P6976848366218910666.Spec : Prop :=
  ∀ n, P6976848366218910666.a n = A131233 (n + 1)

theorem P6976848366218910666.correct : P6976848366218910666.Spec := by
  intro n
  simp only [A131233, Nat.add_sub_cancel]

end A131233

/-! ## A131233.P16134276833771806254

`A116512(n+1)+Δ[A002088(n)]`
-/

namespace A131233.P16134276833771806254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + (f1 (n + 1) - f1 n)

end

end A131233.P16134276833771806254

namespace A131233

/-- `A116512(n+1)+Δ[A002088(n)]` -/
def P16134276833771806254.Spec : Prop :=
  ∀ n, P16134276833771806254.a n = A131233 (n + 1)

end A131233

/-! ## A131233.P10129897385233702079

`A131232(n+1)+A010055(n+1)`
-/

namespace A131233.P10129897385233702079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131232 (n + 1) + A010055 (n + 1)

end

end A131233.P10129897385233702079

namespace A131233

/-- `A131232(n+1)+A010055(n+1)` -/
def P10129897385233702079.Spec : Prop :=
  ∀ n, P10129897385233702079.a n = A131233 (n + 1)

end A131233

/-! ## A131233.P11361625009950885873

`∑{d}[n+1, A000010(#)*A010055((n+1)/#)]`
-/

namespace A131233.P11361625009950885873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A010055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131233.P11361625009950885873

namespace A131233

/-- `∑{d}[n+1, A000010(#)*A010055((n+1)/#)]` -/
def P11361625009950885873.Spec : Prop :=
  ∀ n, P11361625009950885873.a n = A131233 (n + 1)

end A131233

/-! ## A131233.P8989866549957348144

`∑{d}[n+1, A007431(#)*A073093((n+1)/#)]`
-/

namespace A131233.P8989866549957348144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A073093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131233.P8989866549957348144

namespace A131233

/-- `∑{d}[n+1, A007431(#)*A073093((n+1)/#)]` -/
def P8989866549957348144.Spec : Prop :=
  ∀ n, P8989866549957348144.a n = A131233 (n + 1)

end A131233

/-! ## A131233.P13096362713773447812

`A372671(A384042(n+1))+A116512(n+1)`
-/

namespace A131233.P13096362713773447812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (A384042 (n + 1)).toNat + A116512 (n + 1)

end

end A131233.P13096362713773447812

namespace A131233

/-- `A372671(A384042(n+1))+A116512(n+1)` -/
def P13096362713773447812.Spec : Prop :=
  ∀ n, P13096362713773447812.a n = A131233 (n + 1)

end A131233

/-! ## A131233.P17728358725347142493

`A116512(n+1)+A067541(A005408(n))`
-/

namespace A131233.P17728358725347142493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + A067541 (A005408 n).toNat

end

end A131233.P17728358725347142493

namespace A131233

/-- `A116512(n+1)+A067541(A005408(n))` -/
def P17728358725347142493.Spec : Prop :=
  ∀ n, P17728358725347142493.a n = A131233 (n + 1)

end A131233

/-!
# A131234: Starts with 1, then n appears Fibonacci(n-1) times.

The programs for A131234, the canonical program `A131234.P8251461808421970846` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131234 has offset 1).

The definition of A131234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131234.P18103123036513111372

`∑[char[ogf(x/(1-x-x^2))]]`
-/

namespace A131234.P18103123036513111372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P18103123036513111372

namespace A131234

/-- `∑[char[ogf(x/(1-x-x^2))]]` -/
def P18103123036513111372.Spec : Prop :=
  ∀ n, (P18103123036513111372.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P11818852075541321557

`a(ceil((n-1)/ϕ))+1` with `a(0)=1`
-/

namespace A131234.P11818852075541321557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉.toNat + 1

end

end A131234.P11818852075541321557

namespace A131234

/-- `a(ceil((n-1)/ϕ))+1` -/
def P11818852075541321557.Spec : Prop :=
  ∀ n, (P11818852075541321557.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P14481695121898327645

`∑[char[round(ϕ*a(n-2))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A131234.P14481695121898327645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 2) : ℝ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P14481695121898327645

namespace A131234

/-- `∑[char[round(ϕ*a(n-2))]]` -/
def P14481695121898327645.Spec : Prop :=
  ∀ n, (P14481695121898327645.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P17699513185994194879

`∑[char[a(n-1)+a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A131234.P17699513185994194879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P17699513185994194879

namespace A131234

/-- `∑[char[a(n-1)+a(n-2)]]` -/
def P17699513185994194879.Spec : Prop :=
  ∀ n, (P17699513185994194879.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P6408927606532273152

`char[a(n-1)+a(n-2)]+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A131234.P6408927606532273152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A131234.P6408927606532273152

namespace A131234

/-- `char[a(n-1)+a(n-2)]+a(n-1)` -/
def P6408927606532273152.Spec : Prop :=
  ∀ n, (P6408927606532273152.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P8251461808421970846

`∑[A010056(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131234

/-- `∑[A010056(n)]` -/
def P8251461808421970846.Spec : Prop :=
  ∀ n, P8251461808421970846.a n = A131234 (n + 1)

theorem P8251461808421970846.correct : P8251461808421970846.Spec := by
  intro n
  simp only [A131234, Nat.add_sub_cancel]

end A131234

/-! ## A131234.P11539258211669111105

`∑[char[A000045(n)]]`
-/

namespace A131234.P11539258211669111105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P11539258211669111105

namespace A131234

/-- `∑[char[A000045(n)]]` -/
def P11539258211669111105.Spec : Prop :=
  ∀ n, (P11539258211669111105.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P12818967531135777366

`∑[char[A053602(n)]]`
-/

namespace A131234.P12818967531135777366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P12818967531135777366

namespace A131234

/-- `∑[char[A053602(n)]]` -/
def P12818967531135777366.Spec : Prop :=
  ∀ n, (P12818967531135777366.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P1967688788815538271

`∑[char[A079977(n)]]`
-/

namespace A131234.P1967688788815538271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P1967688788815538271

namespace A131234

/-- `∑[char[A079977(n)]]` -/
def P1967688788815538271.Spec : Prop :=
  ∀ n, (P1967688788815538271.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P3900485709309999753

`∑[char[A097637(n)]]`
-/

namespace A131234.P3900485709309999753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P3900485709309999753

namespace A131234

/-- `∑[char[A097637(n)]]` -/
def P3900485709309999753.Spec : Prop :=
  ∀ n, (P3900485709309999753.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P11624190440334770410

`∑[char[A098054(n)]]`
-/

namespace A131234.P11624190440334770410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P11624190440334770410

namespace A131234

/-- `∑[char[A098054(n)]]` -/
def P11624190440334770410.Spec : Prop :=
  ∀ n, (P11624190440334770410.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P5467650170169733563

`∑[char[A102875(n)]]`
-/

namespace A131234.P5467650170169733563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P5467650170169733563

namespace A131234

/-- `∑[char[A102875(n)]]` -/
def P5467650170169733563.Spec : Prop :=
  ∀ n, (P5467650170169733563.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P10329838018357712308

`∑[char[A103609(n)]]`
-/

namespace A131234.P10329838018357712308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P10329838018357712308

namespace A131234

/-- `∑[char[A103609(n)]]` -/
def P10329838018357712308.Spec : Prop :=
  ∀ n, (P10329838018357712308.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P2285378585715160060

`∑[char[A103610(n)]]`
-/

namespace A131234.P2285378585715160060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P2285378585715160060

namespace A131234

/-- `∑[char[A103610(n)]]` -/
def P2285378585715160060.Spec : Prop :=
  ∀ n, (P2285378585715160060.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P10534471687109772565

`∑[char[A107363(n)]]`
-/

namespace A131234.P10534471687109772565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107363 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P10534471687109772565

namespace A131234

/-- `∑[char[A107363(n)]]` -/
def P10534471687109772565.Spec : Prop :=
  ∀ n, (P10534471687109772565.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P11646877896149472606

`∑[char[A108036(n)]]`
-/

namespace A131234.P11646877896149472606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108036 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P11646877896149472606

namespace A131234

/-- `∑[char[A108036(n)]]` -/
def P11646877896149472606.Spec : Prop :=
  ∀ n, (P11646877896149472606.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P10500222176601235706

`∑[char[A108037(n)]]`
-/

namespace A131234.P10500222176601235706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P10500222176601235706

namespace A131234

/-- `∑[char[A108037(n)]]` -/
def P10500222176601235706.Spec : Prop :=
  ∀ n, (P10500222176601235706.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P13837029434006590655

`∑[char[A128541(n)]]`
-/

namespace A131234.P13837029434006590655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P13837029434006590655

namespace A131234

/-- `∑[char[A128541(n)]]` -/
def P13837029434006590655.Spec : Prop :=
  ∀ n, (P13837029434006590655.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P14045733878544421169

`∑[char[A212804(n)]]`
-/

namespace A131234.P14045733878544421169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P14045733878544421169

namespace A131234

/-- `∑[char[A212804(n)]]` -/
def P14045733878544421169.Spec : Prop :=
  ∀ n, (P14045733878544421169.a n : ℤ) = A131234 (n + 1)

end A131234

/-! ## A131234.P2162643168259687064

`∑[char[A216226(n)]]`
-/

namespace A131234.P2162643168259687064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216226 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P2162643168259687064

namespace A131234

/-- `∑[char[A216226(n)]]` -/
def P2162643168259687064.Spec : Prop :=
  ∀ n, (P2162643168259687064.a n : ℤ) = A131234 (n + 1)

end A131234

/-!
# A131235: Triangle read by rows: T(n,k) is number of (n-k) X k matrices, k=0..n, with nonnegative integer entries and every row and column sum <= 2.

The programs for A131235, there is no canonical definition to state claims against.
-/

/-! ## A131235.P6034079076912530896

`A096532(A180960(n))`
-/

namespace A131235.P6034079076912530896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (A180960 n).toNat

end

end A131235.P6034079076912530896

/-! ## A131235.P4740726663014751347

`A097745(A180959(n))`
-/

namespace A131235.P4740726663014751347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (A180959 n).toNat

end

end A131235.P4740726663014751347

/-! ## A131235.P2426045871418914857

`A117384(A174125(n))`
-/

namespace A131235.P2426045871418914857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A174125 n).toNat

end

end A131235.P2426045871418914857

/-! ## A131235.P18327021222544467414

`A371477(A088925(n))`
-/

namespace A131235.P18327021222544467414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (A088925 n).toNat

end

end A131235.P18327021222544467414

/-! ## A131235.P7182813094881227888

`A371477(A098568(n))`
-/

namespace A131235.P7182813094881227888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (A098568 n).toNat

end

end A131235.P7182813094881227888

/-!
# A131236: Row sums of A131235.

The programs for A131236, there is no canonical definition to state claims against.
-/

/-! ## A131236.P12052294934337795959

`A219652(A073992(n+1)+∑[∑{d}[n, #]]+1)`
-/

namespace A131236.P12052294934337795959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A073992 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A131236.P12052294934337795959

/-! ## A131236.P2128405130457561836

`A302478(A074664(n+1))+A001906(n)`
-/

namespace A131236.P2128405130457561836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A074664 (n + 1)).toNat + A001906 n

end

end A131236.P2128405130457561836

/-!
# A131237: Number of n X (n+1) matrices with nonnegative integer entries and every row and column sum <= 2.

The programs for A131237, there is no canonical definition to state claims against.
-/

/-! ## A131237.P11513308518284884284

`A131235(2*(n+1)²)`
-/

namespace A131237.P11513308518284884284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131235 (2 * (n + 1) ^ 2)

end

end A131237.P11513308518284884284

/-! ## A131237.P10507118524057695041

`record[A131235(A247375(n))]`
-/

namespace A131237.P10507118524057695041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131235 (A247375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131237.P10507118524057695041

/-!
# A131238: Triangle read by rows: T(n,k) = 2*binomial(n,k) - binomial(floor((n+k)/2), k) (0 <= k <= n).

The programs for A131238, the canonical program `A131238.P9762830409068789865` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131238 has offset 0).

The definition of A131238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131238.P9762830409068789865

`A028326(n)-A046854(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131238

/-- `A028326(n)-A046854(n)` -/
def P9762830409068789865.Spec : Prop :=
  ∀ n, P9762830409068789865.a n = A131238 n

theorem P9762830409068789865.correct : P9762830409068789865.Spec := by
  intro n
  simp only [A131238]

end A131238

/-! ## A131238.P3179934684848765602

`A065941(n)+A131402(n)-1`
-/

namespace A131238.P3179934684848765602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131402 n - 1)

end

end A131238.P3179934684848765602

namespace A131238

/-- `A065941(n)+A131402(n)-1` -/
def P3179934684848765602.Spec : Prop :=
  ∀ n, P3179934684848765602.a n = A131238 n

end A131238

/-! ## A131238.P2011125914622960097

`2*A007318(n)-A046854(n)`
-/

namespace A131238.P2011125914622960097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A046854 n

end

end A131238.P2011125914622960097

namespace A131238

/-- `2*A007318(n)-A046854(n)` -/
def P2011125914622960097.Spec : Prop :=
  ∀ n, P2011125914622960097.a n = A131238 n

end A131238

/-! ## A131238.P8857361630144387822

`2*A007318(n)-abs(A066170(n))`
-/

namespace A131238.P8857361630144387822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - |A066170 n|

end

end A131238.P8857361630144387822

namespace A131238

/-- `2*A007318(n)-abs(A066170(n))` -/
def P8857361630144387822.Spec : Prop :=
  ∀ n, P8857361630144387822.a n = A131238 n

end A131238

/-! ## A131238.P15508545466563182316

`Δ[2*A102363(n)]-A046854(n)`
-/

namespace A131238.P15508545466563182316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046854 n

end

end A131238.P15508545466563182316

namespace A131238

/-- `Δ[2*A102363(n)]-A046854(n)` -/
def P15508545466563182316.Spec : Prop :=
  ∀ n, P15508545466563182316.a n = A131238 n

end A131238

/-! ## A131238.P972100050649243789

`A065941(n)+A131399(n)-A007318(n)`
-/

namespace A131238.P972100050649243789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131399 n - A007318 n)

end

end A131238.P972100050649243789

namespace A131238

/-- `A065941(n)+A131399(n)-A007318(n)` -/
def P972100050649243789.Spec : Prop :=
  ∀ n, P972100050649243789.a n = A131238 n

end A131238

/-! ## A131238.P16918377980475916667

`A065941(n)+A131767(n)-A046854(n)`
-/

namespace A131238.P16918377980475916667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131767 n - A046854 n)

end

end A131238.P16918377980475916667

namespace A131238

/-- `A065941(n)+A131767(n)-A046854(n)` -/
def P16918377980475916667.Spec : Prop :=
  ∀ n, P16918377980475916667.a n = A131238 n

end A131238

/-! ## A131238.P11273129075720854668

`A131404(n)-(A131402(n)-A065941(n))`
-/

namespace A131238.P11273129075720854668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131404 n - (A131402 n - A065941 n)

end

end A131238.P11273129075720854668

namespace A131238

/-- `A131404(n)-(A131402(n)-A065941(n))` -/
def P11273129075720854668.Spec : Prop :=
  ∀ n, P11273129075720854668.a n = A131238 n

end A131238

/-! ## A131238.P4742214677676449040

`A131767(A061579(n))`
-/

namespace A131238.P4742214677676449040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131767 (A061579 n).toNat

end

end A131238.P4742214677676449040

namespace A131238

/-- `A131767(A061579(n))` -/
def P4742214677676449040.Spec : Prop :=
  ∀ n, P4742214677676449040.a n = A131238 n

end A131238

/-! ## A131238.P2903088471928483869

`A131767(A038722(n+1)-1)`
-/

namespace A131238.P2903088471928483869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131767 (A038722 (n + 1) - 1).toNat

end

end A131238.P2903088471928483869

namespace A131238

/-- `A131767(A038722(n+1)-1)` -/
def P2903088471928483869.Spec : Prop :=
  ∀ n, P2903088471928483869.a n = A131238 n

end A131238

/-! ## A131238.P14765391377349394283

`A131767(A038722(n+2))`
-/

namespace A131238.P14765391377349394283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131767 (A038722 (n + 2)).toNat

end

end A131238.P14765391377349394283

namespace A131238

/-- `A131767(A038722(n+2))` -/
def P14765391377349394283.Spec : Prop :=
  ∀ n, P14765391377349394283.a n = A131238 n

end A131238

/-! ## A131238.P3735173895805144535

`(A131239(n)+A007318(n))/2`
-/

namespace A131238.P3735173895805144535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131239 n + A007318 n : ℚ) / 2

end

end A131238.P3735173895805144535

namespace A131238

/-- `(A131239(n)+A007318(n))/2` -/
def P3735173895805144535.Spec : Prop :=
  ∀ n, P3735173895805144535.a n = (A131238 n : ℚ)

end A131238

/-! ## A131238.P15573616079439920962

`A046854(n)+A131239(n)-A007318(n)`
-/

namespace A131238.P15573616079439920962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131239 n - A007318 n)

end

end A131238.P15573616079439920962

namespace A131238

/-- `A046854(n)+A131239(n)-A007318(n)` -/
def P15573616079439920962.Spec : Prop :=
  ∀ n, P15573616079439920962.a n = A131238 n

end A131238

/-! ## A131238.P5733402145603829501

`A109128(n)-A014682(A131270(n)-1)`
-/

namespace A131238.P5733402145603829501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n - A014682 (A131270 n - 1).toNat

end

end A131238.P5733402145603829501

namespace A131238

/-- `A109128(n)-A014682(A131270(n)-1)` -/
def P5733402145603829501.Spec : Prop :=
  ∀ n, P5733402145603829501.a n = A131238 n

end A131238

/-! ## A131238.P15482677514658500488

`A030451(A131239(n)+A007318(n))`
-/

namespace A131238.P15482677514658500488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A131239 n + A007318 n).toNat

end

end A131238.P15482677514658500488

namespace A131238

/-- `A030451(A131239(n)+A007318(n))` -/
def P15482677514658500488.Spec : Prop :=
  ∀ n, P15482677514658500488.a n = A131238 n

end A131238

/-! ## A131238.P16128578547119827476

`A008619(A007318(n)+A131239(n)-1)`
-/

namespace A131238.P16128578547119827476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007318 n + (A131239 n - 1)).toNat

end

end A131238.P16128578547119827476

namespace A131238

/-- `A008619(A007318(n)+A131239(n)-1)` -/
def P16128578547119827476.Spec : Prop :=
  ∀ n, P16128578547119827476.a n = A131238 n

end A131238

/-! ## A131238.P16782067502685691001

`A008619(A007318(n)-(1-A131239(n)))`
-/

namespace A131238.P16782067502685691001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007318 n - (1 - A131239 n)).toNat

end

end A131238.P16782067502685691001

namespace A131238

/-- `A008619(A007318(n)-(1-A131239(n)))` -/
def P16782067502685691001.Spec : Prop :=
  ∀ n, P16782067502685691001.a n = A131238 n

end A131238

/-!
# A131239: Triangle, T(n,k) = 3*A007318(n,k) - 2*A046854(n,k), read by rows.

The programs for A131239, the canonical program `A131239.P3024778719204501595` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131239 has offset 0).

The definition of A131239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131239.P14660025896108788929

`A131060(n)+1-A131270(n)`
-/

namespace A131239.P14660025896108788929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (1 - A131270 n)

end

end A131239.P14660025896108788929

namespace A131239

/-- `A131060(n)+1-A131270(n)` -/
def P14660025896108788929.Spec : Prop :=
  ∀ n, P14660025896108788929.a n = A131239 n

end A131239

/-! ## A131239.P3024778719204501595

`2*A131238(n)-A007318(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131239

/-- `2*A131238(n)-A007318(n)` -/
def P3024778719204501595.Spec : Prop :=
  ∀ n, P3024778719204501595.a n = A131239 n

theorem P3024778719204501595.correct : P3024778719204501595.Spec := by
  intro n
  simp only [A131239]

end A131239

/-! ## A131239.P3137936177335154777

`2*A131238(n)-Δ[A102363(n)]`
-/

namespace A131239.P3137936177335154777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131238 n - (f1 (n + 1) - f1 n)

end

end A131239.P3137936177335154777

namespace A131239

/-- `2*A131238(n)-Δ[A102363(n)]` -/
def P3137936177335154777.Spec : Prop :=
  ∀ n, P3137936177335154777.a n = A131239 n

end A131239

/-! ## A131239.P4031721115499041762

`A007318(n)+A131238(n)-A046854(n)`
-/

namespace A131239.P4031721115499041762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131238 n - A046854 n)

end

end A131239.P4031721115499041762

namespace A131239

/-- `A007318(n)+A131238(n)-A046854(n)` -/
def P4031721115499041762.Spec : Prop :=
  ∀ n, P4031721115499041762.a n = A131239 n

end A131239

/-! ## A131239.P7592055055152863135

`A065941(n)+A131399(n)-A046854(n)`
-/

namespace A131239.P7592055055152863135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131399 n - A046854 n)

end

end A131239.P7592055055152863135

namespace A131239

/-- `A065941(n)+A131399(n)-A046854(n)` -/
def P7592055055152863135.Spec : Prop :=
  ∀ n, P7592055055152863135.a n = A131239 n

end A131239

/-! ## A131239.P1784287104884203911

`A131238(n)+A131238(n)%A130595(n)`
-/

namespace A131239.P1784287104884203911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 n + Int.tmod (A131238 n) (A130595 n)

end

end A131239.P1784287104884203911

namespace A131239

/-- `A131238(n)+A131238(n)%A130595(n)` -/
def P1784287104884203911.Spec : Prop :=
  ∀ n, P1784287104884203911.a n = A131239 n

end A131239

/-! ## A131239.P441151053090641188

`Δ[A102363(n)]+A131238(n)-A046854(n)`
-/

namespace A131239.P441151053090641188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A131238 n - A046854 n)

end

end A131239.P441151053090641188

namespace A131239

/-- `Δ[A102363(n)]+A131238(n)-A046854(n)` -/
def P441151053090641188.Spec : Prop :=
  ∀ n, P441151053090641188.a n = A131239 n

end A131239

/-! ## A131239.P15594872615578259240

`A131060(n)-A004442(A131270(n))`
-/

namespace A131239.P15594872615578259240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n - A004442 (A131270 n).toNat

end

end A131239.P15594872615578259240

namespace A131239

/-- `A131060(n)-A004442(A131270(n))` -/
def P15594872615578259240.Spec : Prop :=
  ∀ n, P15594872615578259240.a n = A131239 n

end A131239

/-! ## A131239.P3511282944791345502

`A014682(A109128(n))-A131270(n)`
-/

namespace A131239.P3511282944791345502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A109128 n).toNat - A131270 n

end

end A131239.P3511282944791345502

namespace A131239

/-- `A014682(A109128(n))-A131270(n)` -/
def P3511282944791345502.Spec : Prop :=
  ∀ n, P3511282944791345502.a n = A131239 n

end A131239

/-! ## A131239.P12888844274688064646

`A007318(n)+A005843(A131238(n)-A007318(n))`
-/

namespace A131239.P12888844274688064646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A005843 (A131238 n - A007318 n).toNat

end

end A131239.P12888844274688064646

namespace A131239

/-- `A007318(n)+A005843(A131238(n)-A007318(n))` -/
def P12888844274688064646.Spec : Prop :=
  ∀ n, P12888844274688064646.a n = A131239 n

end A131239

/-! ## A131239.P8056665352932802631

`A005843(A131238(n))-A007318(n)`
-/

namespace A131239.P8056665352932802631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A131238 n).toNat - A007318 n

end

end A131239.P8056665352932802631

namespace A131239

/-- `A005843(A131238(n))-A007318(n)` -/
def P8056665352932802631.Spec : Prop :=
  ∀ n, P8056665352932802631.a n = A131239 n

end A131239

/-! ## A131239.P10852907698794431524

`A001651(A028326(n))-A131270(n)`
-/

namespace A131239.P10852907698794431524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A028326 n).toNat - A131270 n

end

end A131239.P10852907698794431524

namespace A131239

/-- `A001651(A028326(n))-A131270(n)` -/
def P10852907698794431524.Spec : Prop :=
  ∀ n, P10852907698794431524.a n = A131239 n

end A131239

/-!
# A131240: T(n,k) = 2*A046854(n,k) - I.

The programs for A131240, the canonical program `A131240.P7147092341493915993` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131240 has offset 0).

The definition of A131240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131240.P15448363224310735479

`A131270(n)+A023532(n)`
-/

namespace A131240.P15448363224310735479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + A023532 n

end

end A131240.P15448363224310735479

namespace A131240

/-- `A131270(n)+A023532(n)` -/
def P15448363224310735479.Spec : Prop :=
  ∀ n, P15448363224310735479.a n = A131240 n

end A131240

/-! ## A131240.P7147092341493915993

`(A023532(n)+1)*A046854(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131240

/-- `(A023532(n)+1)*A046854(n)` -/
def P7147092341493915993.Spec : Prop :=
  ∀ n, P7147092341493915993.a n = A131240 n

theorem P7147092341493915993.correct : P7147092341493915993.Spec := by
  intro n
  simp only [A131240]

end A131240

/-! ## A131240.P16750130283961342989

`A123486(n)/A155038(n+1)`
-/

namespace A131240.P16750130283961342989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123486 n : ℚ) / (A155038 (n + 1) : ℚ)

end

end A131240.P16750130283961342989

namespace A131240

/-- `A123486(n)/A155038(n+1)` -/
def P16750130283961342989.Spec : Prop :=
  ∀ n, P16750130283961342989.a n = (A131240 n : ℚ)

end A131240

/-! ## A131240.P17452817906742040328

`gcd(2*A131241(n), A123486(n))`
-/

namespace A131240.P17452817906742040328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A131241 n) (A123486 n)

end

end A131240.P17452817906742040328

namespace A131240

/-- `gcd(2*A131241(n), A123486(n))` -/
def P17452817906742040328.Spec : Prop :=
  ∀ n, (P17452817906742040328.a n : ℤ) = A131240 n

end A131240

/-! ## A131240.P2120440274634403528

`(Δ[A083920(n)]+1)*A046854(n)`
-/

namespace A131240.P2120440274634403528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A046854 n

end

end A131240.P2120440274634403528

namespace A131240

/-- `(Δ[A083920(n)]+1)*A046854(n)` -/
def P2120440274634403528.Spec : Prop :=
  ∀ n, P2120440274634403528.a n = A131240 n

end A131240

/-! ## A131240.P4926346828391598449

`A131270(n)+1-A106459(n+1)²`
-/

namespace A131240.P4926346828391598449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + (1 - A106459 (n + 1) ^ 2)

end

end A131240.P4926346828391598449

namespace A131240

/-- `A131270(n)+1-A106459(n+1)²` -/
def P4926346828391598449.Spec : Prop :=
  ∀ n, P4926346828391598449.a n = A131240 n

end A131240

/-! ## A131240.P718280416118290295

`A153764(A181133(n+1))+A046854(n)`
-/

namespace A131240.P718280416118290295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A181133 (n + 1)).toNat + A046854 n

end

end A131240.P718280416118290295

namespace A131240

/-- `A153764(A181133(n+1))+A046854(n)` -/
def P718280416118290295.Spec : Prop :=
  ∀ n, P718280416118290295.a n = A131240 n

end A131240

/-! ## A131240.P18185190309721631026

`A046854(n)+A131400(n)-A065941(n)`
-/

namespace A131240.P18185190309721631026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131400 n - A065941 n)

end

end A131240.P18185190309721631026

namespace A131240

/-- `A046854(n)+A131400(n)-A065941(n)` -/
def P18185190309721631026.Spec : Prop :=
  ∀ n, P18185190309721631026.a n = A131240 n

end A131240

/-! ## A131240.P8643075603295784233

`A046854(n)+A046854(n)%A110813(n)`
-/

namespace A131240.P8643075603295784233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + Int.tmod (A046854 n) (A110813 n)

end

end A131240.P8643075603295784233

namespace A131240

/-- `A046854(n)+A046854(n)%A110813(n)` -/
def P8643075603295784233.Spec : Prop :=
  ∀ n, P8643075603295784233.a n = A131240 n

end A131240

/-! ## A131240.P7227210917512620099

`A020639(A213178(A048151(n+1)))*A046854(n)`
-/

namespace A131240.P7227210917512620099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A213178 (A048151 (n + 1)).toNat).toNat * A046854 n

end

end A131240.P7227210917512620099

namespace A131240

/-- `A020639(A213178(A048151(n+1)))*A046854(n)` -/
def P7227210917512620099.Spec : Prop :=
  ∀ n, P7227210917512620099.a n = A131240 n

end A131240

/-! ## A131240.P967142703871656779

`gcd(2*A130777(n), A008297(n+1)²)`
-/

namespace A131240.P967142703871656779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A130777 n) (A008297 (n + 1) ^ 2)

end

end A131240.P967142703871656779

namespace A131240

/-- `gcd(2*A130777(n), A008297(n+1)²)` -/
def P967142703871656779.Spec : Prop :=
  ∀ n, (P967142703871656779.a n : ℤ) = A131240 n

end A131240

/-! ## A131240.P11417001005565307358

`A004396(A131241(n))`
-/

namespace A131240.P11417001005565307358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131241 n).toNat

end

end A131240.P11417001005565307358

namespace A131240

/-- `A004396(A131241(n))` -/
def P11417001005565307358.Spec : Prop :=
  ∀ n, P11417001005565307358.a n = A131240 n

end A131240

/-!
# A131241: 3*A046854 - 2*I.

The programs for A131241, the canonical program `A131241.P5173463838883617248` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131241 has offset 0).

The definition of A131241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131241.P5173463838883617248

`floor(3/2*A131240(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131241

/-- `floor(3/2*A131240(n))` -/
def P5173463838883617248.Spec : Prop :=
  ∀ n, P5173463838883617248.a n = A131241 n

theorem P5173463838883617248.correct : P5173463838883617248.Spec := by
  intro n
  simp only [A131241]

end A131241

/-! ## A131241.P10265168295507578247

`2*A131240(n)-A046854(n)`
-/

namespace A131241.P10265168295507578247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131240 n - A046854 n

end

end A131241.P10265168295507578247

namespace A131241

/-- `2*A131240(n)-A046854(n)` -/
def P10265168295507578247.Spec : Prop :=
  ∀ n, P10265168295507578247.a n = A131241 n

end A131241

/-! ## A131241.P8938855119900819314

`A006368(A131240(n))`
-/

namespace A131241.P8938855119900819314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A131240 n).toNat

end

end A131241.P8938855119900819314

namespace A131241

/-- `A006368(A131240(n))` -/
def P8938855119900819314.Spec : Prop :=
  ∀ n, P8938855119900819314.a n = A131241 n

end A131241

/-! ## A131241.P6750641959020057214

`A057353(2*A131240(n))`
-/

namespace A131241.P6750641959020057214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A131240 n).toNat

end

end A131241.P6750641959020057214

namespace A131241

/-- `A057353(2*A131240(n))` -/
def P6750641959020057214.Spec : Prop :=
  ∀ n, P6750641959020057214.a n = A131241 n

end A131241

/-! ## A131241.P606016236279378453

`A342131(2*A131240(n))`
-/

namespace A131241.P606016236279378453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (2 * A131240 n).toNat

end

end A131241.P606016236279378453

namespace A131241

/-- `A342131(2*A131240(n))` -/
def P606016236279378453.Spec : Prop :=
  ∀ n, P606016236279378453.a n = A131241 n

end A131241

/-! ## A131241.P10875898036812692054

`A004525(3*A131240(n))`
-/

namespace A131241.P10875898036812692054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A131240 n).toNat

end

end A131241.P10875898036812692054

namespace A131241

/-- `A004525(3*A131240(n))` -/
def P10875898036812692054.Spec : Prop :=
  ∀ n, P10875898036812692054.a n = A131241 n

end A131241

/-! ## A131241.P8667806093857504228

`A004526(3*A131240(n))`
-/

namespace A131241.P8667806093857504228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A131240 n).toNat

end

end A131241.P8667806093857504228

namespace A131241

/-- `A004526(3*A131240(n))` -/
def P8667806093857504228.Spec : Prop :=
  ∀ n, P8667806093857504228.a n = A131241 n

end A131241

/-! ## A131241.P7777397742526534985

`A123108(3*A131240(n))`
-/

namespace A131241.P7777397742526534985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A131240 n).toNat

end

end A131241.P7777397742526534985

namespace A131241

/-- `A123108(3*A131240(n))` -/
def P7777397742526534985.Spec : Prop :=
  ∀ n, P7777397742526534985.a n = A131241 n

end A131241

/-! ## A131241.P4887094991972464720

`A002265(6*A131240(n))`
-/

namespace A131241.P4887094991972464720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A131240 n).toNat

end

end A131241.P4887094991972464720

namespace A131241

/-- `A002265(6*A131240(n))` -/
def P4887094991972464720.Spec : Prop :=
  ∀ n, P4887094991972464720.a n = A131241 n

end A131241

/-! ## A131241.P2845502717700669946

`A008615(9*A131240(n))`
-/

namespace A131241.P2845502717700669946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (9 * A131240 n).toNat

end

end A131241.P2845502717700669946

namespace A131241

/-- `A008615(9*A131240(n))` -/
def P2845502717700669946.Spec : Prop :=
  ∀ n, P2845502717700669946.a n = A131241 n

end A131241

/-! ## A131241.P596876594384873913

`A010764(9*A131240(n))`
-/

namespace A131241.P596876594384873913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (9 * A131240 n).toNat

end

end A131241.P596876594384873913

namespace A131241

/-- `A010764(9*A131240(n))` -/
def P596876594384873913.Spec : Prop :=
  ∀ n, P596876594384873913.a n = A131241 n

end A131241

/-!
# A131242: Partial sums of A059995: a(n) = Sum_{k=0..n} floor(k/10).

The programs for A131242, the canonical program `A131242.P15979749971608482677` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131242 has offset 0).

The definition of A131242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131242.P15979749971608482677

`1/2*floor(n/10)*(2*n-8-10*floor(n/10))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131242

/-- `1/2*floor(n/10)*(2*n-8-10*floor(n/10))` -/
def P15979749971608482677.Spec : Prop :=
  ∀ n, P15979749971608482677.a n = (A131242 n : ℚ)

end A131242

/-! ## A131242.P6033836772272181877

`(n-A010879(n))*(n+A010879(n)-8)/20`
-/

namespace A131242.P6033836772272181877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A010879 n) * ((n : ℤ) + A010879 n - 8) : ℚ) / 20

end

end A131242.P6033836772272181877

namespace A131242

/-- `(n-A010879(n))*(n+A010879(n)-8)/20` -/
def P6033836772272181877.Spec : Prop :=
  ∀ n, P6033836772272181877.a n = (A131242 n : ℚ)

end A131242

/-! ## A131242.P2467788634208024428

`A059995(n)*(2*n-8-10*A059995(n))/2`
-/

namespace A131242.P2467788634208024428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 n * ((2 * n : ℤ) - 8 - 10 * A059995 n) : ℚ) / 2

end

end A131242.P2467788634208024428

namespace A131242

/-- `A059995(n)*(2*n-8-10*A059995(n))/2` -/
def P2467788634208024428.Spec : Prop :=
  ∀ n, P2467788634208024428.a n = (A131242 n : ℚ)

end A131242

/-! ## A131242.P14517805290500438566

`floor(a(n-1)+n/10)` with `a(0)=0`
-/

namespace A131242.P14517805290500438566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 10⌋

end

end A131242.P14517805290500438566

namespace A131242

/-- `floor(a(n-1)+n/10)` -/
def P14517805290500438566.Spec : Prop :=
  ∀ n, P14517805290500438566.a n = A131242 n

end A131242

/-! ## A131242.P13876677062163354735

`n-9+a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=0`
-/

namespace A131242.P13876677062163354735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] fun n a =>
  (n : ℤ) - 9 + a (n - 10)

end

end A131242.P13876677062163354735

namespace A131242

/-- `n-9+a(n-10)` -/
def P13876677062163354735.Spec : Prop :=
  ∀ n, P13876677062163354735.a n = A131242 n

end A131242

/-! ## A131242.P9693461482684514554

`∑[A059995(n)]`
-/

namespace A131242.P9693461482684514554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131242.P9693461482684514554

namespace A131242

/-- `∑[A059995(n)]` -/
def P9693461482684514554.Spec : Prop :=
  ∀ n, P9693461482684514554.a n = A131242 n

end A131242

/-! ## A131242.P1257001180398495667

`∑[A169932(n)]/10`
-/

namespace A131242.P1257001180398495667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 10

end

end A131242.P1257001180398495667

namespace A131242

/-- `∑[A169932(n)]/10` -/
def P1257001180398495667.Spec : Prop :=
  ∀ n, P1257001180398495667.a n = (A131242 n : ℚ)

end A131242

/-! ## A131242.P6978171155931672753

`∑[n-A081600(n)]`
-/

namespace A131242.P6978171155931672753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A081600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131242.P6978171155931672753

namespace A131242

/-- `∑[n-A081600(n)]` -/
def P6978171155931672753.Spec : Prop :=
  ∀ n, P6978171155931672753.a n = A131242 n

end A131242

/-! ## A131242.P319170222380319675

`A008728(n)-(n+1)`
-/

namespace A131242.P319170222380319675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 n - (n + 1 : ℤ)

end

end A131242.P319170222380319675

namespace A131242

/-- `A008728(n)-(n+1)` -/
def P319170222380319675.Spec : Prop :=
  ∀ n, P319170222380319675.a n = A131242 n

end A131242

/-! ## A131242.P17811026561331183614

`∑[A226233(n+1)-1]`
-/

namespace A131242.P17811026561331183614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131242.P17811026561331183614

namespace A131242

/-- `∑[A226233(n+1)-1]` -/
def P17811026561331183614.Spec : Prop :=
  ∀ n, P17811026561331183614.a n = A131242 n

end A131242

/-! ## A131242.P1496485688187676596

`floor((A008817(n)-n)/2)`
-/

namespace A131242.P1496485688187676596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008817 n - (n : ℤ) : ℚ) / 2⌋

end

end A131242.P1496485688187676596

namespace A131242

/-- `floor((A008817(n)-n)/2)` -/
def P1496485688187676596.Spec : Prop :=
  ∀ n, P1496485688187676596.a n = A131242 n

end A131242

/-! ## A131242.P3876077459059030407

`∑[A160542(n+1)-(n+1)]`
-/

namespace A131242.P3876077459059030407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131242.P3876077459059030407

namespace A131242

/-- `∑[A160542(n+1)-(n+1)]` -/
def P3876077459059030407.Spec : Prop :=
  ∀ n, P3876077459059030407.a n = A131242 n

end A131242

/-! ## A131242.P5910064664646885308

`∑[∑[char[A004277(5*n)]]]-n`
-/

namespace A131242.P5910064664646885308
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (5 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A131242.P5910064664646885308

namespace A131242

/-- `∑[∑[char[A004277(5*n)]]]-n` -/
def P5910064664646885308.Spec : Prop :=
  ∀ n, P5910064664646885308.a n = A131242 n

end A131242

/-! ## A131242.P1620534533212460683

`A008817(n)-A008728(n)`
-/

namespace A131242.P1620534533212460683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008817 n - A008728 n

end

end A131242.P1620534533212460683

namespace A131242

/-- `A008817(n)-A008728(n)` -/
def P1620534533212460683.Spec : Prop :=
  ∀ n, P1620534533212460683.a n = A131242 n

end A131242

/-! ## A131242.P3610351992229640597

`∑[n]-A033442(n+1)`
-/

namespace A131242.P3610351992229640597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033442 (n + 1)

end

end A131242.P3610351992229640597

namespace A131242

/-- `∑[n]-A033442(n+1)` -/
def P3610351992229640597.Spec : Prop :=
  ∀ n, P3610351992229640597.a n = A131242 n

end A131242

/-! ## A131242.P17071434359795441908

`A002620(n+1)+A002620(n)-A033442(n+1)`
-/

namespace A131242.P17071434359795441908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A033442 (n + 1))

end

end A131242.P17071434359795441908

namespace A131242

/-- `A002620(n+1)+A002620(n)-A033442(n+1)` -/
def P17071434359795441908.Spec : Prop :=
  ∀ n, P17071434359795441908.a n = A131242 n

end A131242

/-! ## A131242.P17974713018438973096

`A175564(n+6)+∑[∑[char[10*(n+1)]]]`
-/

namespace A131242.P17974713018438973096
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175564 (n + 6) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131242.P17974713018438973096

namespace A131242

/-- `A175564(n+6)+∑[∑[char[10*(n+1)]]]` -/
def P17974713018438973096.Spec : Prop :=
  ∀ n, P17974713018438973096.a n = A131242 n

end A131242

/-! ## A131242.P14979113316414538049

`A000027(A008728(n)-n)-1`
-/

namespace A131242.P14979113316414538049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008728 n - (n : ℤ)).toNat - 1

end

end A131242.P14979113316414538049

namespace A131242

/-- `A000027(A008728(n)-n)-1` -/
def P14979113316414538049.Spec : Prop :=
  ∀ n, P14979113316414538049.a n = A131242 n

end A131242

/-! ## A131242.P964723255773414812

`A004526(A008817(n)-n)`
-/

namespace A131242.P964723255773414812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008817 n - (n : ℤ)).toNat

end

end A131242.P964723255773414812

namespace A131242

/-- `A004526(A008817(n)-n)` -/
def P964723255773414812.Spec : Prop :=
  ∀ n, P964723255773414812.a n = A131242 n

end A131242

/-! ## A131242.P8936540019663970898

`A028242(A008817(n)-n)`
-/

namespace A131242.P8936540019663970898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008817 n - (n : ℤ)).toNat

end

end A131242.P8936540019663970898

namespace A131242

/-- `A028242(A008817(n)-n)` -/
def P8936540019663970898.Spec : Prop :=
  ∀ n, P8936540019663970898.a n = A131242 n

end A131242

/-!
# A131243: A065941^2 as an infinite lower triangular matrix.

The programs for A131243, there is no canonical definition to state claims against.
-/

/-! ## A131243.P7606247987450393624

`A200370(A337886(n+2)+∑[n])`
-/

namespace A131243.P7606247987450393624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A337886 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A131243.P7606247987450393624

/-! ## A131243.P13111789601300644893

`A384323(n)+A000002(A045623(n))`
-/

namespace A131243.P13111789601300644893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 n + A000002 (A045623 n).toNat

end

end A131243.P13111789601300644893

/-! ## A131243.P10245034435843259239

`A070939(C(A096334(n), A307847(n)))`
-/

namespace A131243.P10245034435843259239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A096334 n).toNat (A307847 n).toNat)

end

end A131243.P10245034435843259239

/-! ## A131243.P17818463529488174564

`A319951(C(A104709(n), A215086(n)))`
-/

namespace A131243.P17818463529488174564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (Nat.choose (A104709 n).toNat (A215086 n).toNat)

end

end A131243.P17818463529488174564

/-!
# A131244: Row sums of triangle A131243.

The programs for A131244, the canonical program `A131244.P13782327788003367786` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131244 has offset 0).

The definition of A131244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131244.P11689224642776494078

`ogf((1+x-2x^2-x^3)/(1-2x-2x^2+3x^3+x^4))`
-/

namespace A131244.P11689224642776494078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, -2, -2, 3, 1] n

end

end A131244.P11689224642776494078

namespace A131244

/-- `ogf((1+x-2x^2-x^3)/(1-2x-2x^2+3x^3+x^4))` -/
def P11689224642776494078.Spec : Prop :=
  ∀ n, P11689224642776494078.a n = A131244 n

end A131244

/-! ## A131244.P13782327788003367786

`Δ[record[A192922(n)]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131244

/-- `Δ[record[A192922(n)]]` -/
def P13782327788003367786.Spec : Prop :=
  ∀ n, P13782327788003367786.a n = A131244 n

theorem P13782327788003367786.correct : P13782327788003367786.Spec := by
  intro n
  simp only [A131244]

end A131244

/-! ## A131244.P16094965292895094806

`Δ[A192922(n+2)]`
-/

namespace A131244.P16094965292895094806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192922 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131244.P16094965292895094806

namespace A131244

/-- `Δ[A192922(n+2)]` -/
def P16094965292895094806.Spec : Prop :=
  ∀ n, P16094965292895094806.a n = A131244 n

end A131244

/-! ## A131244.P5727248621098481393

`A289975(n+2)-A289975(n)`
-/

namespace A131244.P5727248621098481393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289975 (n + 2) - A289975 n

end

end A131244.P5727248621098481393

namespace A131244

/-- `A289975(n+2)-A289975(n)` -/
def P5727248621098481393.Spec : Prop :=
  ∀ n, P5727248621098481393.a n = A131244 n

end A131244

/-! ## A131244.P8678354099309703170

`A192923(n+1)+A192922(n+1)`
-/

namespace A131244.P8678354099309703170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192923 (n + 1) + A192922 (n + 1)

end

end A131244.P8678354099309703170

namespace A131244

/-- `A192923(n+1)+A192922(n+1)` -/
def P8678354099309703170.Spec : Prop :=
  ∀ n, P8678354099309703170.a n = A131244 n

end A131244

/-! ## A131244.P5979105139902549230

`A192922(n+3)-A192922(n+2)`
-/

namespace A131244.P5979105139902549230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192922 (n + 3) - A192922 (n + 2)

end

end A131244.P5979105139902549230

namespace A131244

/-- `A192922(n+3)-A192922(n+2)` -/
def P5979105139902549230.Spec : Prop :=
  ∀ n, P5979105139902549230.a n = A131244 n

end A131244

/-! ## A131244.P10540306723952961314

`Δ[record[2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A131244.P10540306723952961314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f2 =>
  2 * f2 (n - 1) + 2 * f2 (n - 2) - 3 * f2 (n - 3) - f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131244.P10540306723952961314

namespace A131244

/-- `Δ[record[2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)]]` -/
def P10540306723952961314.Spec : Prop :=
  ∀ n, P10540306723952961314.a n = A131244 n

end A131244

/-!
# A131245: A046854^2 as an infinite lower triangular matrix.

The programs for A131245, there is no canonical definition to state claims against.
-/

/-! ## A131245.P11183247769066378114

`A385170(A325222(n+1))`
-/

namespace A131245.P11183247769066378114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385170 (A325222 (n + 1)).toNat

end

end A131245.P11183247769066378114

/-! ## A131245.P9589410941025222906

`A116433(n)+A101321(A187829(n+1))`
-/

namespace A131245.P9589410941025222906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 n + A101321 (A187829 (n + 1)).toNat

end

end A131245.P9589410941025222906

/-! ## A131245.P5919188272107602787

`or(A207611(n+1), A324179(A026765(n)))`
-/

namespace A131245.P5919188272107602787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207611 (n + 1)) (A324179 (A026765 n).toNat)

end

end A131245.P5919188272107602787

/-! ## A131245.P16852256738137650616

`A107846(A175879(n))+A038497(n+1)`
-/

namespace A131245.P16852256738137650616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A175879 n).toNat + A038497 (n + 1)

end

end A131245.P16852256738137650616

/-! ## A131245.P14179241932988523062

`A038497(n+1)+A000001(A324233(n+1))`
-/

namespace A131245.P14179241932988523062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038497 (n + 1) + A000001 (A324233 (n + 1)).toNat

end

end A131245.P14179241932988523062

/-!
# A131246: Row sums of triangle A131245.

The programs for A131246, the canonical program `A131246.P6539208363302024915` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131246 has offset 0).

The definition of A131246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131246.P6539208363302024915

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=13`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131246

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P6539208363302024915.Spec : Prop :=
  ∀ n, P6539208363302024915.a n = A131246 n

theorem P6539208363302024915.correct : P6539208363302024915.Spec := by
  intro n
  simp only [A131246]

end A131246

/-! ## A131246.P2406248570286145074

`ogf((1+2x-x^3)/(1-x-3x^2+x^3+x^4))`
-/

namespace A131246.P2406248570286145074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, -1, -3, 1, 1] n

end

end A131246.P2406248570286145074

namespace A131246

/-- `ogf((1+2x-x^3)/(1-x-3x^2+x^3+x^4))` -/
def P2406248570286145074.Spec : Prop :=
  ∀ n, P2406248570286145074.a n = A131246 n

end A131246

/-! ## A131246.P14008871199460127312

`A112576(n)+Δ[A289846(n)]`
-/

namespace A131246.P14008871199460127312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n + (f1 (n + 1) - f1 n)

end

end A131246.P14008871199460127312

namespace A131246

/-- `A112576(n)+Δ[A289846(n)]` -/
def P14008871199460127312.Spec : Prop :=
  ∀ n, P14008871199460127312.a n = A131246 n

end A131246

/-! ## A131246.P7207630638995820391

`A289846(n+1)-A131322(n)`
-/

namespace A131246.P7207630638995820391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (n + 1) - A131322 n

end

end A131246.P7207630638995820391

namespace A131246

/-- `A289846(n+1)-A131322(n)` -/
def P7207630638995820391.Spec : Prop :=
  ∀ n, P7207630638995820391.a n = A131246 n

end A131246

/-! ## A131246.P6610890982637488210

`A112576(n+1)+Δ[A131322(n)]`
-/

namespace A131246.P6610890982637488210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (n + 1) + (f1 (n + 1) - f1 n)

end

end A131246.P6610890982637488210

namespace A131246

/-- `A112576(n+1)+Δ[A131322(n)]` -/
def P6610890982637488210.Spec : Prop :=
  ∀ n, P6610890982637488210.a n = A131246 n

end A131246

/-! ## A131246.P7499920926400948600

`A192422(n+1)+A192232(n+2)`
-/

namespace A131246.P7499920926400948600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192422 (n + 1) + A192232 (n + 2)

end

end A131246.P7499920926400948600

namespace A131246

/-- `A192422(n+1)+A192232(n+2)` -/
def P7499920926400948600.Spec : Prop :=
  ∀ n, P7499920926400948600.a n = A131246 n

end A131246

/-! ## A131246.P8807248155986108889

`A183314(A028310(n))-A000038(n)`
-/

namespace A131246.P8807248155986108889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183314 (A028310 n).toNat - A000038 n

end

end A131246.P8807248155986108889

namespace A131246

/-- `A183314(A028310(n))-A000038(n)` -/
def P8807248155986108889.Spec : Prop :=
  ∀ n, P8807248155986108889.a n = A131246 n

end A131246

/-! ## A131246.P13786560204640516319

`Δ[A131322(n)+∑[A112576(n)]]`
-/

namespace A131246.P13786560204640516319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131246.P13786560204640516319

namespace A131246

/-- `Δ[A131322(n)+∑[A112576(n)]]` -/
def P13786560204640516319.Spec : Prop :=
  ∀ n, P13786560204640516319.a n = A131246 n

end A131246

/-! ## A131246.P3936492453887612667

`A183314(A028310(n))%A007484(n)`
-/

namespace A131246.P3936492453887612667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183314 (A028310 n).toNat) (A007484 n)

end

end A131246.P3936492453887612667

namespace A131246

/-- `A183314(A028310(n))%A007484(n)` -/
def P3936492453887612667.Spec : Prop :=
  ∀ n, P3936492453887612667.a n = A131246 n

end A131246

/-!
# A131247: 2*A052509 - A000012.

The programs for A131247, there is no canonical definition to state claims against.
-/

/-! ## A131247.P2192355685922623497

`2*A052509(n)-1`
-/

namespace A131247.P2192355685922623497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052509 n - 1

end

end A131247.P2192355685922623497

/-! ## A131247.P15914882499998273668

`A004174(gcd(n, n+1))+2*A052509(n)`
-/

namespace A131247.P15914882499998273668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 (Nat.gcd n (n + 1)) + 2 * A052509 n

end

end A131247.P15914882499998273668

/-! ## A131247.P5620397329077779753

`A131248(A061579(n))`
-/

namespace A131247.P5620397329077779753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131248 (A061579 n).toNat

end

end A131247.P5620397329077779753

/-! ## A131247.P13770330900379621141

`A131248(A038722(n+1)-1)`
-/

namespace A131247.P13770330900379621141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131248 (A038722 (n + 1) - 1).toNat

end

end A131247.P13770330900379621141

/-! ## A131247.P5802991693288233195

`A131248(A038722(n+2))`
-/

namespace A131247.P5802991693288233195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131248 (A038722 (n + 2)).toNat

end

end A131247.P5802991693288233195

/-! ## A131247.P14303825642204278443

`2*A054123(A007401(n+1))-1`
-/

namespace A131247.P14303825642204278443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054123 (A007401 (n + 1)).toNat - 1

end

end A131247.P14303825642204278443

/-! ## A131247.P3377964876107643544

`2*A054123(A181133(n+1))-1`
-/

namespace A131247.P3377964876107643544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054123 (A181133 (n + 1)).toNat - 1

end

end A131247.P3377964876107643544

/-! ## A131247.P1036943393821360118

`A008683(A004139(n+1))+2*A052509(n)`
-/

namespace A131247.P1036943393821360118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004139 (n + 1)).toNat + 2 * A052509 n

end

end A131247.P1036943393821360118

/-! ## A131247.P15107142372715014282

`2*A141905(n)/A007318(n)-1`
-/

namespace A131247.P15107142372715014282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A141905 n : ℚ) / (A007318 n : ℚ)) - 1

end

end A131247.P15107142372715014282

/-! ## A131247.P2110194788641761237

`A004273(A052509(n))`
-/

namespace A131247.P2110194788641761237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A052509 n).toNat

end

end A131247.P2110194788641761237

/-! ## A131247.P1885133965410747538

`A005408(A052509(n)-1)`
-/

namespace A131247.P1885133965410747538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A052509 n - 1).toNat

end

end A131247.P1885133965410747538

/-! ## A131247.P415824717809900909

`A014681(2*A052509(n))`
-/

namespace A131247.P415824717809900909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A052509 n).toNat

end

end A131247.P415824717809900909

/-! ## A131247.P17745536245085011524

`A004442(A052509(n)+A052509(n)-2)`
-/

namespace A131247.P17745536245085011524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A052509 n + (A052509 n - 2)).toNat

end

end A131247.P17745536245085011524

/-! ## A131247.P2516670394124814269

`A004442(A052509(n)-(2-A052509(n)))`
-/

namespace A131247.P2516670394124814269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A052509 n - (2 - A052509 n)).toNat

end

end A131247.P2516670394124814269

/-!
# A131248: 2*A004070 - A000012.

The programs for A131248, there is no canonical definition to state claims against.
-/

/-! ## A131248.P12258184988088198756

`2*A004070(n)-1`
-/

namespace A131248.P12258184988088198756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004070 n - 1

end

end A131248.P12258184988088198756

/-! ## A131248.P8273075878924168707

`2*A052509(A061579(n))-1`
-/

namespace A131248.P8273075878924168707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052509 (A061579 n).toNat - 1

end

end A131248.P8273075878924168707

/-! ## A131248.P3450422065905073509

`lcm(2, A059250(n+2))-1`
-/

namespace A131248.P3450422065905073509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A059250 (n + 2)) : ℤ) - 1

end

end A131248.P3450422065905073509

/-! ## A131248.P14569910042294762936

`A131247(A061579(n))`
-/

namespace A131248.P14569910042294762936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131247 (A061579 n).toNat

end

end A131248.P14569910042294762936

/-! ## A131248.P7120627982836742608

`A131247(A038722(n+1)-1)`
-/

namespace A131248.P7120627982836742608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131247 (A038722 (n + 1) - 1).toNat

end

end A131248.P7120627982836742608

/-! ## A131248.P7107064238664156193

`A131247(A038722(n+2))`
-/

namespace A131248.P7107064238664156193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131247 (A038722 (n + 2)).toNat

end

end A131248.P7107064238664156193

/-! ## A131248.P16694886104508547311

`2*A054124(A080036(n))-1`
-/

namespace A131248.P16694886104508547311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054124 (A080036 n).toNat - 1

end

end A131248.P16694886104508547311

/-! ## A131248.P8589460746757516392

`2*A054124(A014132(n+1))-1`
-/

namespace A131248.P8589460746757516392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054124 (A014132 (n + 1)).toNat - 1

end

end A131248.P8589460746757516392

/-! ## A131248.P10779220032525559676

`A008683(A001097(n+1))+2*A004070(n)`
-/

namespace A131248.P10779220032525559676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat + 2 * A004070 n

end

end A131248.P10779220032525559676

/-! ## A131248.P13586476937574718124

`A004273(A004070(n))`
-/

namespace A131248.P13586476937574718124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004070 n).toNat

end

end A131248.P13586476937574718124

/-! ## A131248.P11516525464713764809

`A005408(A004070(n)-1)`
-/

namespace A131248.P11516525464713764809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A004070 n - 1).toNat

end

end A131248.P11516525464713764809

/-! ## A131248.P10414051447892318995

`A014681(2*A004070(n))`
-/

namespace A131248.P10414051447892318995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A004070 n).toNat

end

end A131248.P10414051447892318995

/-! ## A131248.P9102990538095928103

`A028310(A059250(n+2)-1)`
-/

namespace A131248.P9102990538095928103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A059250 (n + 2) - 1).toNat

end

end A131248.P9102990538095928103

/-! ## A131248.P3671716789662338676

`A046667(4*A004070(n))`
-/

namespace A131248.P3671716789662338676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (4 * A004070 n).toNat

end

end A131248.P3671716789662338676

/-! ## A131248.P11686344766369160621

`A124741(A059250(n+2))`
-/

namespace A131248.P11686344766369160621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A059250 (n + 2)).toNat

end

end A131248.P11686344766369160621

/-!
# A131249: A007318 * A052509.

The programs for A131249, there is no canonical definition to state claims against.
-/

/-! ## A131249.P2469851411631817498

`A353847(A210038(n+1))`
-/

namespace A131249.P2469851411631817498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A210038 (n + 1)).toNat

end

end A131249.P2469851411631817498

/-! ## A131249.P11327646865130294607

`A038207(n)-A014375(A013609(n))`
-/

namespace A131249.P11327646865130294607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A014375 (A013609 n).toNat

end

end A131249.P11327646865130294607

/-! ## A131249.P16393068347190994377

`A038207(n)-A016371(A027379(n))`
-/

namespace A131249.P16393068347190994377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A016371 (A027379 n).toNat

end

end A131249.P16393068347190994377

/-! ## A131249.P8401218170938484989

`A038207(n)-A184943(A059297(n))`
-/

namespace A131249.P8401218170938484989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A184943 (A059297 n).toNat

end

end A131249.P8401218170938484989

/-! ## A131249.P442943894993561728

`A038207(n)-A010815(A394507(n+3))`
-/

namespace A131249.P442943894993561728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A010815 (A394507 (n + 3)).toNat

end

end A131249.P442943894993561728

/-!
# A131250: A007318 * A004070.

The programs for A131250, there is no canonical definition to state claims against.
-/

/-! ## A131250.P8286587333630827297

`A054126(n)-A155038(n+1)`
-/

namespace A131250.P8286587333630827297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 n - A155038 (n + 1)

end

end A131250.P8286587333630827297

/-! ## A131250.P12784818323432517969

`A097750(A061579(n))`
-/

namespace A131250.P12784818323432517969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A061579 n).toNat

end

end A131250.P12784818323432517969

/-! ## A131250.P11174140602563465273

`A097750(A114327(n)+n)`
-/

namespace A131250.P11174140602563465273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A114327 n + (n : ℤ)).toNat

end

end A131250.P11174140602563465273

/-! ## A131250.P18161271839758720833

`A097750(∑[A198954(n)-1])`
-/

namespace A131250.P18161271839758720833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131250.P18161271839758720833

/-! ## A131250.P10574807234163930305

`A097750(A038722(n+1)-1)`
-/

namespace A131250.P10574807234163930305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A038722 (n + 1) - 1).toNat

end

end A131250.P10574807234163930305

/-! ## A131250.P7853559454640289411

`A097750(A093995(n+1)-(n+1))`
-/

namespace A131250.P7853559454640289411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A131250.P7853559454640289411

/-! ## A131250.P16466790093698677813

`A097750(A057944(n)+A025581(n))`
-/

namespace A131250.P16466790093698677813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A057944 n + A025581 n).toNat

end

end A131250.P16466790093698677813

/-! ## A131250.P11095650342275416796

`A097750(A038722(n+2))`
-/

namespace A131250.P11095650342275416796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A038722 (n + 2)).toNat

end

end A131250.P11095650342275416796

/-! ## A131250.P607584028576519032

`A055248(A245300(n)+A002262(n))`
-/

namespace A131250.P607584028576519032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A245300 n + A002262 n).toNat

end

end A131250.P607584028576519032

/-!
# A131251: A000012 * A052509.

The programs for A131251, there is no canonical definition to state claims against.
-/

/-! ## A131251.P7710272166274291035

`A052509(lt[1, A052509(n)])-1`
-/

namespace A131251.P7710272166274291035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A131251.P7710272166274291035

/-! ## A131251.P15098078681570786115

`A131247(n+1)+A052509(n)-A052553(n+1)`
-/

namespace A131251.P15098078681570786115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131247 (n + 1) + (A052509 n - A052553 (n + 1))

end

end A131251.P15098078681570786115

/-! ## A131251.P17570939426746750448

`A180975(∑[char[∑[n]]]²-n)`
-/

namespace A131251.P17570939426746750448
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180975 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A131251.P17570939426746750448

/-! ## A131251.P6145004391339045559

`abs(1-A180975(A038722(n+1)))+1`
-/

namespace A131251.P6145004391339045559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A180975 (A038722 (n + 1)).toNat| + 1

end

end A131251.P6145004391339045559

/-! ## A131251.P7456796616689135925

`A054123(lt[1, A054123(n)])-1`
-/

namespace A131251.P7456796616689135925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A131251.P7456796616689135925

/-! ## A131251.P8423983306475984536

`A180975(A038722(n+1))^A008683(a(n-1)+1)²!` with `a(0)=1`
-/

namespace A131251.P8423983306475984536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180975 (A038722 (n + 1)).toNat ^ Nat.factorial (A008683 (a (n - 1) + 1).toNat ^ 2).toNat

end

end A131251.P8423983306475984536

/-! ## A131251.P716926712544697608

`A000720(p?[A008578(A052509(n))])`
-/

namespace A131251.P716926712544697608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A052509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131251.P716926712544697608

/-! ## A131251.P3346756128029345449

`A000720(p?[A008578(A054123(n))])`
-/

namespace A131251.P3346756128029345449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131251.P3346756128029345449

/-! ## A131251.P14746190118950378698

`A056239(p?[A008578(A052509(n))])`
-/

namespace A131251.P14746190118950378698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A052509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131251.P14746190118950378698

/-!
# A131252: A052509 * A000012.

The programs for A131252, there is no canonical definition to state claims against.
-/

/-! ## A131252.P5445443326368124500

`A345123(n)+A010815(A001567(n+1))`
-/

namespace A131252.P5445443326368124500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 n + A010815 (A001567 (n + 1)).toNat

end

end A131252.P5445443326368124500

/-! ## A131252.P1110754406919077967

`A345123(n)-A343958(A079366(n))`
-/

namespace A131252.P1110754406919077967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 n - A343958 (A079366 n).toNat

end

end A131252.P1110754406919077967

/-! ## A131252.P10323281846748738780

`A345123(n)-A010051(A357717(n+9))`
-/

namespace A131252.P10323281846748738780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 n - A010051 (A357717 (n + 9)).toNat

end

end A131252.P10323281846748738780

/-! ## A131252.P18409964221624717430

`A345123(n)-A185284(2*n+1)`
-/

namespace A131252.P18409964221624717430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 n - A185284 (2 * n + 1)

end

end A131252.P18409964221624717430

/-! ## A131252.P2098677609177653757

`A345123(n)%A206328(A081026(n+2)-1)`
-/

namespace A131252.P2098677609177653757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345123 n) (A206328 (A081026 (n + 2) - 1).toNat)

end

end A131252.P2098677609177653757

/-!
# A131253: Row sums of triangle A131252.

The programs for A131253, the canonical program `A131253.P10022280305029502810` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131253 has offset 0).

The definition of A131253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131253.P10022280305029502810

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=17, a(4)=34, a(5)=64`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131253

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P10022280305029502810.Spec : Prop :=
  ∀ n, P10022280305029502810.a n = A131253 n

theorem P10022280305029502810.correct : P10022280305029502810.Spec := by
  intro n
  simp only [A131253]

end A131253

/-! ## A131253.P6054165163371498517

`∑[A102702(n)-1]`
-/

namespace A131253.P6054165163371498517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P6054165163371498517

namespace A131253

/-- `∑[A102702(n)-1]` -/
def P6054165163371498517.Spec : Prop :=
  ∀ n, P6054165163371498517.a n = A131253 n

end A131253

/-! ## A131253.P2251603852236644027

`record[A208354(n)-n]`
-/

namespace A131253.P2251603852236644027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131253.P2251603852236644027

namespace A131253

/-- `record[A208354(n)-n]` -/
def P2251603852236644027.Spec : Prop :=
  ∀ n, P2251603852236644027.a n = A131253 n

end A131253

/-! ## A131253.P12647210924962007993

`∑[∑[A206268(n+1)]]`
-/

namespace A131253.P12647210924962007993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P12647210924962007993

namespace A131253

/-- `∑[∑[A206268(n+1)]]` -/
def P12647210924962007993.Spec : Prop :=
  ∀ n, P12647210924962007993.a n = A131253 n

end A131253

/-! ## A131253.P14711256170956452269

`A208354(n+3)-(n+3)`
-/

namespace A131253.P14711256170956452269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 3) - (n + 3 : ℤ)

end

end A131253.P14711256170956452269

namespace A131253

/-- `A208354(n+3)-(n+3)` -/
def P14711256170956452269.Spec : Prop :=
  ∀ n, P14711256170956452269.a n = A131253 n

end A131253

/-! ## A131253.P10797826561611748206

`A192969(n)+A140992(n)`
-/

namespace A131253.P10797826561611748206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n + A140992 n

end

end A131253.P10797826561611748206

namespace A131253

/-- `A192969(n)+A140992(n)` -/
def P10797826561611748206.Spec : Prop :=
  ∀ n, P10797826561611748206.a n = A131253 n

end A131253

/-! ## A131253.P12639431880218480947

`∑[A029907(n)+A001595(n)]`
-/

namespace A131253.P12639431880218480947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P12639431880218480947

namespace A131253

/-- `∑[A029907(n)+A001595(n)]` -/
def P12639431880218480947.Spec : Prop :=
  ∀ n, P12639431880218480947.a n = A131253 n

end A131253

/-! ## A131253.P9756600254406831557

`A001924(n)+A001629(n+2)`
-/

namespace A131253.P9756600254406831557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + A001629 (n + 2)

end

end A131253.P9756600254406831557

namespace A131253

/-- `A001924(n)+A001629(n+2)` -/
def P9756600254406831557.Spec : Prop :=
  ∀ n, P9756600254406831557.a n = A131253 n

end A131253

/-! ## A131253.P16825250700811908449

`∑[∑[A006367(n)+A000045(n)]]`
-/

namespace A131253.P16825250700811908449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n + A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P16825250700811908449

namespace A131253

/-- `∑[∑[A006367(n)+A000045(n)]]` -/
def P16825250700811908449.Spec : Prop :=
  ∀ n, P16825250700811908449.a n = A131253 n

end A131253

/-! ## A131253.P2853455635762929164

`A134508(n+2)-A000045(n+2)`
-/

namespace A131253.P2853455635762929164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134508 (n + 2) - A000045 (n + 2)

end

end A131253.P2853455635762929164

namespace A131253

/-- `A134508(n+2)-A000045(n+2)` -/
def P2853455635762929164.Spec : Prop :=
  ∀ n, P2853455635762929164.a n = A131253 n

end A131253

/-! ## A131253.P142044095444952501

`A134508(n+2)-A211228(2*n)`
-/

namespace A131253.P142044095444952501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134508 (n + 2) - A211228 (2 * n)

end

end A131253.P142044095444952501

namespace A131253

/-- `A134508(n+2)-A211228(2*n)` -/
def P142044095444952501.Spec : Prop :=
  ∀ n, P142044095444952501.a n = A131253 n

end A131253

/-! ## A131253.P10355156157399120445

`∑[A010049(n+1)+A000071(n+2)]`
-/

namespace A131253.P10355156157399120445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P10355156157399120445

namespace A131253

/-- `∑[A010049(n+1)+A000071(n+2)]` -/
def P10355156157399120445.Spec : Prop :=
  ∀ n, P10355156157399120445.a n = A131253 n

end A131253

/-! ## A131253.P5287040122391590013

`A134508(n+2)-(A000071(n+2)+1)`
-/

namespace A131253.P5287040122391590013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134508 (n + 2) - (A000071 (n + 2) + 1)

end

end A131253.P5287040122391590013

namespace A131253

/-- `A134508(n+2)-(A000071(n+2)+1)` -/
def P5287040122391590013.Spec : Prop :=
  ∀ n, P5287040122391590013.a n = A131253 n

end A131253

/-! ## A131253.P1345813218406014276

`∑[A010049(n+1)+∑[A212804(n+1)]]`
-/

namespace A131253.P1345813218406014276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P1345813218406014276

namespace A131253

/-- `∑[A010049(n+1)+∑[A212804(n+1)]]` -/
def P1345813218406014276.Spec : Prop :=
  ∀ n, P1345813218406014276.a n = A131253 n

end A131253

/-! ## A131253.P1440858616327812871

`∑[A000071(n+2)+Δ[A001629(n+1)]]`
-/

namespace A131253.P1440858616327812871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P1440858616327812871

namespace A131253

/-- `∑[A000071(n+2)+Δ[A001629(n+1)]]` -/
def P1440858616327812871.Spec : Prop :=
  ∀ n, P1440858616327812871.a n = A131253 n

end A131253

/-! ## A131253.P11137598036252888371

`A000071(n+1)+A134508(n+1)+A029907(n)`
-/

namespace A131253.P11137598036252888371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A134508 (n + 1) + A029907 n)

end

end A131253.P11137598036252888371

namespace A131253

/-- `A000071(n+1)+A134508(n+1)+A029907(n)` -/
def P11137598036252888371.Spec : Prop :=
  ∀ n, P11137598036252888371.a n = A131253 n

end A131253

/-! ## A131253.P1307633360190974312

`Δ[A029907(n+3)]-(n+3)`
-/

namespace A131253.P1307633360190974312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A131253.P1307633360190974312

namespace A131253

/-- `Δ[A029907(n+3)]-(n+3)` -/
def P1307633360190974312.Spec : Prop :=
  ∀ n, P1307633360190974312.a n = A131253 n

end A131253

/-! ## A131253.P9773072970048614082

`A113684(n+1)-A006478(n+2)`
-/

namespace A131253.P9773072970048614082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 (n + 1) - A006478 (n + 2)

end

end A131253.P9773072970048614082

namespace A131253

/-- `A113684(n+1)-A006478(n+2)` -/
def P9773072970048614082.Spec : Prop :=
  ∀ n, P9773072970048614082.a n = A131253 n

end A131253

/-! ## A131253.P5035535437106151766

`∑[Δ[A131913(n)]-(A001629(n)+1)]`
-/

namespace A131253.P5035535437106151766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (A001629 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131253.P5035535437106151766

namespace A131253

/-- `∑[Δ[A131913(n)]-(A001629(n)+1)]` -/
def P5035535437106151766.Spec : Prop :=
  ∀ n, P5035535437106151766.a n = A131253 n

end A131253

/-! ## A131253.P2889700729913340171

`A354044(n+1)-(A188538(n)+A001629(n))`
-/

namespace A131253.P2889700729913340171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (n + 1) - (A188538 n + A001629 n)

end

end A131253.P2889700729913340171

namespace A131253

/-- `A354044(n+1)-(A188538(n)+A001629(n))` -/
def P2889700729913340171.Spec : Prop :=
  ∀ n, P2889700729913340171.a n = A131253 n

end A131253

/-!
# A131254: A004070 * A000012.

The programs for A131254, there is no canonical definition to state claims against.
-/

/-! ## A131254.P8632893594528513125

`A000523(A000712(A055248(n)))`
-/

namespace A131254.P8632893594528513125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000712 (A055248 n).toNat).toNat

end

end A131254.P8632893594528513125

/-! ## A131254.P8950977301729142355

`A179390(A098539(n))+A025581(n)`
-/

namespace A131254.P8950977301729142355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A098539 n).toNat + A025581 n

end

end A131254.P8950977301729142355

/-! ## A131254.P2152973439782000155

`A128175(A187829(n+1))+A025581(n)`
-/

namespace A131254.P2152973439782000155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A187829 (n + 1)).toNat + A025581 n

end

end A131254.P2152973439782000155

/-! ## A131254.P1074781298036626607

`A020753(A049777(n+1))-A003056(n)`
-/

namespace A131254.P1074781298036626607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A049777 (n + 1)).toNat - A003056 n

end

end A131254.P1074781298036626607

/-! ## A131254.P923929792222107296

`A020753(A049777(n+1))-A117707(n)`
-/

namespace A131254.P923929792222107296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A049777 (n + 1)).toNat - A117707 n

end

end A131254.P923929792222107296

/-!
# A131255: A004070 * A000012(signed).

The programs for A131255, there is no canonical definition to state claims against.
-/

/-! ## A131255.P3782722974095749067

`A026729(n)^A026729(A206823(n))`
-/

namespace A131255.P3782722974095749067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026729 n : ℚ) ^ (A026729 (A206823 n).toNat : ℤ)

end

end A131255.P3782722974095749067

/-! ## A131255.P9134717647649015198

`A198295(n)^A144074(A210472(n+1))`
-/

namespace A131255.P9134717647649015198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198295 n : ℚ) ^ (A144074 (A210472 (n + 1)).toNat : ℤ)

end

end A131255.P9134717647649015198

/-! ## A131255.P12631471656516138947

`A102683(A001611(n))+A026729(n)`
-/

namespace A131255.P12631471656516138947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A001611 n).toNat + A026729 n

end

end A131255.P12631471656516138947

/-! ## A131255.P10262926554527499104

`A102683(A104220(n))+A026729(n)`
-/

namespace A131255.P10262926554527499104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A104220 n).toNat + A026729 n

end

end A131255.P10262926554527499104

/-! ## A131255.P7597468573805527349

`gcd(A102683(A001611(n)), A344566(n))`
-/

namespace A131255.P7597468573805527349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102683 (A001611 n).toNat) (A344566 n)

end

end A131255.P7597468573805527349

/-!
# A131256: A000012(signed) * A052509.

The programs for A131256, there is no canonical definition to state claims against.
-/

/-! ## A131256.P7047115737311992283

`A000120(A281446(n)+A128174(n+1))`
-/

namespace A131256.P7047115737311992283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A281446 n + A128174 (n + 1)).toNat

end

end A131256.P7047115737311992283

/-! ## A131256.P2414537652822644474

`A000120(A319102(n+1)+A281446(n))`
-/

namespace A131256.P2414537652822644474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A319102 (n + 1) + A281446 n).toNat

end

end A131256.P2414537652822644474

/-! ## A131256.P6980331695620334780

`or(A003849(A161712(n)), A285229(n))`
-/

namespace A131256.P6980331695620334780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A161712 n).toNat) (A285229 n)

end

end A131256.P6980331695620334780

/-! ## A131256.P758863196515127283

`or(A083896(A228865(n+1)), A285229(n))`
-/

namespace A131256.P758863196515127283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083896 (A228865 (n + 1)).toNat) (A285229 n)

end

end A131256.P758863196515127283

/-! ## A131256.P14388006913625043455

`gcd(A128616(A265072(n)), A285229(n))`
-/

namespace A131256.P14388006913625043455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128616 (A265072 n).toNat) (A285229 n)

end

end A131256.P14388006913625043455

/-!
# A131257: Triangle read by rows: A052509 * A097807 as infinite lower triangular matrices.

The programs for A131257, there is no canonical definition to state claims against.
-/

/-! ## A131257.P5353678467884125626

`A238802(n)-A281441(A330942(n+1))`
-/

namespace A131257.P5353678467884125626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 n - A281441 (A330942 (n + 1)).toNat

end

end A131257.P5353678467884125626

/-! ## A131257.P3364843125918208640

`A244657(n+1)+A014045(A346799(n+1))`
-/

namespace A131257.P3364843125918208640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (n + 1) + A014045 (A346799 (n + 1)).toNat

end

end A131257.P3364843125918208640

/-! ## A131257.P11724712075930294410

`A244657(n+1)-A014954(A065106(n+1))`
-/

namespace A131257.P11724712075930294410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (n + 1) - A014954 (A065106 (n + 1)).toNat

end

end A131257.P11724712075930294410

/-! ## A131257.P1440118737891098268

`A333213(n)-A286996(A322340(2*(n+2)))`
-/

namespace A131257.P1440118737891098268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 n - A286996 (A322340 (2 * (n + 2))).toNat

end

end A131257.P1440118737891098268

/-! ## A131257.P11846481425961737460

`A285229(n)-A025466(A108974(n+1))`
-/

namespace A131257.P11846481425961737460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n - A025466 (A108974 (n + 1)).toNat

end

end A131257.P11846481425961737460

/-!
# A131258: A129686^(-1) * A052509.

The programs for A131258, there is no canonical definition to state claims against.
-/

/-! ## A131258.P17326750569724525887

`A020639(A134546(n+1))%A063753(A267278(n+1))`
-/

namespace A131258.P17326750569724525887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A134546 (n + 1)).toNat) (A063753 (A267278 (n + 1)).toNat)

end

end A131258.P17326750569724525887

/-! ## A131258.P11744647661333724180

`A020639(A134546(n+1))%A299324(A008279(n))`
-/

namespace A131258.P11744647661333724180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A134546 (n + 1)).toNat) (A299324 (A008279 n).toNat)

end

end A131258.P11744647661333724180

/-! ## A131258.P16747568881693659036

`A115623(A176243(n+1)-A163533(n))`
-/

namespace A131258.P16747568881693659036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A176243 (n + 1) - A163533 n).toNat

end

end A131258.P16747568881693659036

/-! ## A131258.P6030203412773328047

`A005087(A221937(n+1)+A075333(n+1))`
-/

namespace A131258.P6030203412773328047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A221937 (n + 1) + A075333 (n + 1)).toNat

end

end A131258.P6030203412773328047

/-! ## A131258.P9372172829838184496

`A106254(n+1)-A100910(A089300(n+4))`
-/

namespace A131258.P9372172829838184496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (n + 1) - A100910 (A089300 (n + 4)).toNat

end

end A131258.P9372172829838184496

/-!
# A131259: a(2*n) = A000217(n), a(2*n+1) = -2*A000217(n).

The programs for A131259, the canonical program `A131259.P9749998726457137581` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131259 has offset 0).

The definition of A131259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131259.P9749998726457137581

`floor(n/2)²-C(gcd(n, ∑[n]), 2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131259

/-- `floor(n/2)²-C(gcd(n, ∑[n]), 2)` -/
def P9749998726457137581.Spec : Prop :=
  ∀ n, P9749998726457137581.a n = A131259 n

theorem P9749998726457137581.correct : P9749998726457137581.Spec := by
  intro n
  simp only [A131259]

end A131259

/-! ## A131259.P16014304604935969773

`a(n-2)-∑[Δ[n-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A131259.P16014304604935969773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f2 (n + 1) - f2 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131259.P16014304604935969773

namespace A131259

/-- `a(n-2)-∑[Δ[n-a(n-1)]-a(n-1)]` -/
def P16014304604935969773.Spec : Prop :=
  ∀ n, P16014304604935969773.a n = A131259 n

end A131259

/-! ## A131259.P5082194675846285668

`(3*n²-2*n+2-((3-n)²-7)*(-1)^n)/16-n%2*C(n, 2)`
-/

namespace A131259.P5082194675846285668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 : ℤ) - (2 * n : ℤ) + (2 - ((3 - (n : ℤ)) ^ 2 - 7) * (-1) ^ n) : ℚ) / 16 - ((n % 2 * Nat.choose n 2 : ℕ) : ℚ)

end

end A131259.P5082194675846285668

namespace A131259

/-- `(3*n²-2*n+2-((3-n)²-7)*(-1)^n)/16-n%2*C(n, 2)` -/
def P5082194675846285668.Spec : Prop :=
  ∀ n, P5082194675846285668.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P8950642204659112084

`(-1)^n*A131174(xor(1, n))`
-/

namespace A131259.P8950642204659112084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131174 (Nat.xor 1 n)

end

end A131259.P8950642204659112084

namespace A131259

/-- `(-1)^n*A131174(xor(1, n))` -/
def P8950642204659112084.Spec : Prop :=
  ∀ n, P8950642204659112084.a n = A131259 n

end A131259

/-! ## A131259.P16645358160968402942

`∑[n%or(1, n)]/A280193(n)`
-/

namespace A131259.P16645358160968402942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A280193 n : ℚ)

end

end A131259.P16645358160968402942

namespace A131259

/-- `∑[n%or(1, n)]/A280193(n)` -/
def P16645358160968402942.Spec : Prop :=
  ∀ n, P16645358160968402942.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P6898222944397276350

`∑[(-1)^n*∑[A029578(n)]]`
-/

namespace A131259.P6898222944397276350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131259.P6898222944397276350

namespace A131259

/-- `∑[(-1)^n*∑[A029578(n)]]` -/
def P6898222944397276350.Spec : Prop :=
  ∀ n, P6898222944397276350.a n = A131259 n

end A131259

/-! ## A131259.P13399943348016581330

`∑[Δ[A111384(n)]/(-1)^n]`
-/

namespace A131259.P13399943348016581330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131259.P13399943348016581330

namespace A131259

/-- `∑[Δ[A111384(n)]/(-1)^n]` -/
def P13399943348016581330.Spec : Prop :=
  ∀ n, P13399943348016581330.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P8168791257248079455

`∑[A237420(n)]/(gcd(2, n)²-2)`
-/

namespace A131259.P8168791257248079455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((Nat.gcd 2 n ^ 2 : ℤ) - 2 : ℚ)

end

end A131259.P8168791257248079455

namespace A131259

/-- `∑[A237420(n)]/(gcd(2, n)²-2)` -/
def P8168791257248079455.Spec : Prop :=
  ∀ n, P8168791257248079455.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P10804826093654239849

`A110660(n)/A280193(n)`
-/

namespace A131259.P10804826093654239849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A280193 n : ℚ)

end

end A131259.P10804826093654239849

namespace A131259

/-- `A110660(n)/A280193(n)` -/
def P10804826093654239849.Spec : Prop :=
  ∀ n, P10804826093654239849.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P4852928043899940553

`A110660(n)/A168361(n+1)`
-/

namespace A131259.P4852928043899940553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A168361 (n + 1) : ℚ)

end

end A131259.P4852928043899940553

namespace A131259

/-- `A110660(n)/A168361(n+1)` -/
def P4852928043899940553.Spec : Prop :=
  ∀ n, P4852928043899940553.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P17591417051405111421

`A110660(n)/(A040001(n)²-2)`
-/

namespace A131259.P17591417051405111421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A040001 n ^ 2 - 2 : ℚ)

end

end A131259.P17591417051405111421

namespace A131259

/-- `A110660(n)/(A040001(n)²-2)` -/
def P17591417051405111421.Spec : Prop :=
  ∀ n, P17591417051405111421.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P10539896588586873948

`(A004526(n)+A004526(n)²)/A280193(n)`
-/

namespace A131259.P10539896588586873948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n + A004526 n ^ 2 : ℚ) / (A280193 n : ℚ)

end

end A131259.P10539896588586873948

namespace A131259

/-- `(A004526(n)+A004526(n)²)/A280193(n)` -/
def P10539896588586873948.Spec : Prop :=
  ∀ n, P10539896588586873948.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P13409593241007660310

`(A008619(n)²-A008619(n))/A280193(n)`
-/

namespace A131259.P13409593241007660310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n ^ 2 - A008619 n : ℚ) / (A280193 n : ℚ)

end

end A131259.P13409593241007660310

namespace A131259

/-- `(A008619(n)²-A008619(n))/A280193(n)` -/
def P13409593241007660310.Spec : Prop :=
  ∀ n, P13409593241007660310.a n = (A131259 n : ℚ)

end A131259

/-! ## A131259.P11642806087376070729

`∑[(-1)^n*A211538(n+2)]`
-/

namespace A131259.P11642806087376070729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A211538 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131259.P11642806087376070729

namespace A131259

/-- `∑[(-1)^n*A211538(n+2)]` -/
def P11642806087376070729.Spec : Prop :=
  ∀ n, P11642806087376070729.a n = A131259 n

end A131259

/-! ## A131259.P5702505390507983620

`A123596(n+1)-n*A142150(n+1)`
-/

namespace A131259.P5702505390507983620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 1) - (n : ℤ) * A142150 (n + 1)

end

end A131259.P5702505390507983620

namespace A131259

/-- `A123596(n+1)-n*A142150(n+1)` -/
def P5702505390507983620.Spec : Prop :=
  ∀ n, P5702505390507983620.a n = A131259 n

end A131259

/-! ## A131259.P8216055994215082772

`∑[A145919(∑[3-a(n-1)])]` with `a(0)=1`
-/

namespace A131259.P8216055994215082772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145919 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131259.P8216055994215082772

namespace A131259

/-- `∑[A145919(∑[3-a(n-1)])]` -/
def P8216055994215082772.Spec : Prop :=
  ∀ n, P8216055994215082772.a n = A131259 n

end A131259

/-!
# A131261: a(0)=3; for n>0, a(n) = smallest odd prime not occurring earlier in the sequence such that a(n-1)+a(n) is a multiple of n.

The programs for A131261, there is no canonical definition to state claims against.
-/

/-! ## A131261.P1244507368834048027

`A178762(A109841(n+2))`
-/

namespace A131261.P1244507368834048027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (A109841 (n + 2)).toNat

end

end A131261.P1244507368834048027

/-! ## A131261.P4214276023580302955

`A307701(∑[∑[A109697(n)]])`
-/

namespace A131261.P4214276023580302955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131261.P4214276023580302955

/-! ## A131261.P16000163910772891442

`A002267(A257736(n+1)+1)`
-/

namespace A131261.P16000163910772891442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A257736 (n + 1) + 1).toNat

end

end A131261.P16000163910772891442

/-! ## A131261.P16237203218105739540

`A000040(A194673(3*n)+n+1)`
-/

namespace A131261.P16237203218105739540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A194673 (3 * n) + (n + 1 : ℤ)).toNat

end

end A131261.P16237203218105739540

/-! ## A131261.P18425231241885865226

`A266587(A127898(n))+A065091(n+1)`
-/

namespace A131261.P18425231241885865226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266587 (A127898 n).toNat + A065091 (n + 1)

end

end A131261.P18425231241885865226

/-!
# A131262: a(n) = least index k such that A130654(k) = n.

The programs for A131262, there is no canonical definition to state claims against.
-/

/-! ## A131262.P8580779658425793443

`ogf((1-3x+4x^2)/(1-6x+8x^2))`
-/

namespace A131262.P8580779658425793443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -6, 8] n

end

end A131262.P8580779658425793443

/-!
# A131267: Self-generated: 1=1*1; 2=1*1+1*1; 5=1*2+2*1+1*1; 12=1*5+2*2+2*1+1*1; 35=1*12+2*5+5*2+2*1+1*1; 97=1*35+2*12+5*5+5*2+2*1+1*1; ...

The programs for A131267, there is no canonical definition to state claims against.
-/

/-! ## A131267.P4528181552460158109

`A164947(∑[A130256(n)+1])`
-/

namespace A131267.P4528181552460158109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131267.P4528181552460158109

/-! ## A131267.P14663541074103776648

`∑[A007078(A006648(n+2))]`
-/

namespace A131267.P14663541074103776648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A006648 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131267.P14663541074103776648

/-!
# A131268: Triangle read by rows: T(n,k) = 2*binomial(n-floor((k+1)/2),floor(k/2)) - 1, 0<=k<=n.

The programs for A131268, the canonical program `A131268.P214653143950523004` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131268 has offset 0).

The definition of A131268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131268.P5758677459293736496

`2*A065941(n)-1`
-/

namespace A131268.P5758677459293736496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065941 n - 1

end

end A131268.P5758677459293736496

namespace A131268

/-- `2*A065941(n)-1` -/
def P5758677459293736496.Spec : Prop :=
  ∀ n, P5758677459293736496.a n = A131268 n

end A131268

/-! ## A131268.P214653143950523004

`abs(2*A108299(n))-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131268

/-- `abs(2*A108299(n))-1` -/
def P214653143950523004.Spec : Prop :=
  ∀ n, P214653143950523004.a n = A131268 n

theorem P214653143950523004.correct : P214653143950523004.Spec := by
  intro n
  simp only [A131268]

end A131268

/-! ## A131268.P15773108600660415435

`A131299(n)+1-A065941(n)`
-/

namespace A131268.P15773108600660415435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131299 n + (1 - A065941 n)

end

end A131268.P15773108600660415435

namespace A131268

/-- `A131299(n)+1-A065941(n)` -/
def P15773108600660415435.Spec : Prop :=
  ∀ n, P15773108600660415435.a n = A131268 n

end A131268

/-! ## A131268.P9770326935679404699

`2*A131373(n)-A131270(n)`
-/

namespace A131268.P9770326935679404699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131373 n - A131270 n

end

end A131268.P9770326935679404699

namespace A131268

/-- `2*A131373(n)-A131270(n)` -/
def P9770326935679404699.Spec : Prop :=
  ∀ n, P9770326935679404699.a n = A131268 n

end A131268

/-! ## A131268.P8120979456683616836

`A131774(n+1)+A168561(n)-1`
-/

namespace A131268.P8120979456683616836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A168561 n - 1)

end

end A131268.P8120979456683616836

namespace A131268

/-- `A131774(n+1)+A168561(n)-1` -/
def P8120979456683616836.Spec : Prop :=
  ∀ n, P8120979456683616836.a n = A131268 n

end A131268

/-! ## A131268.P5107572184737165990

`A065941(n)+A131373(n)-A046854(n)`
-/

namespace A131268.P5107572184737165990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131373 n - A046854 n)

end

end A131268.P5107572184737165990

namespace A131268

/-- `A065941(n)+A131373(n)-A046854(n)` -/
def P5107572184737165990.Spec : Prop :=
  ∀ n, P5107572184737165990.a n = A131268 n

end A131268

/-! ## A131268.P14653150375358693532

`A131270(A061579(n))`
-/

namespace A131268.P14653150375358693532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 (A061579 n).toNat

end

end A131268.P14653150375358693532

namespace A131268

/-- `A131270(A061579(n))` -/
def P14653150375358693532.Spec : Prop :=
  ∀ n, P14653150375358693532.a n = A131268 n

end A131268

/-! ## A131268.P5406134506801960737

`A131270(A038722(n+1)-1)`
-/

namespace A131268.P5406134506801960737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 (A038722 (n + 1) - 1).toNat

end

end A131268.P5406134506801960737

namespace A131268

/-- `A131270(A038722(n+1)-1)` -/
def P5406134506801960737.Spec : Prop :=
  ∀ n, P5406134506801960737.a n = A131268 n

end A131268

/-! ## A131268.P12875667858856700293

`A131270(A038722(n+2))`
-/

namespace A131268.P12875667858856700293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 (A038722 (n + 2)).toNat

end

end A131268.P12875667858856700293

namespace A131268

/-- `A131270(A038722(n+2))` -/
def P12875667858856700293.Spec : Prop :=
  ∀ n, P12875667858856700293.a n = A131268 n

end A131268

/-! ## A131268.P11087468701689807010

`2*gcd(A001497(n), A108299(n))-1`
-/

namespace A131268.P11087468701689807010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.gcd (A001497 n) (A108299 n) : ℤ) - 1

end

end A131268.P11087468701689807010

namespace A131268

/-- `2*gcd(A001497(n), A108299(n))-1` -/
def P11087468701689807010.Spec : Prop :=
  ∀ n, P11087468701689807010.a n = A131268 n

end A131268

/-! ## A131268.P18367716656710202780

`A000265(A065941(n)+A065941(n)-1)`
-/

namespace A131268.P18367716656710202780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065941 n + (A065941 n - 1)).toNat

end

end A131268.P18367716656710202780

namespace A131268

/-- `A000265(A065941(n)+A065941(n)-1)` -/
def P18367716656710202780.Spec : Prop :=
  ∀ n, P18367716656710202780.a n = A131268 n

end A131268

/-! ## A131268.P2177350445751990840

`A000265(A065941(n)-(1-A065941(n)))`
-/

namespace A131268.P2177350445751990840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065941 n - (1 - A065941 n)).toNat

end

end A131268.P2177350445751990840

namespace A131268

/-- `A000265(A065941(n)-(1-A065941(n)))` -/
def P2177350445751990840.Spec : Prop :=
  ∀ n, P2177350445751990840.a n = A131268 n

end A131268

/-! ## A131268.P2528972269286904560

`A004273(A065941(n))`
-/

namespace A131268.P2528972269286904560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A065941 n).toNat

end

end A131268.P2528972269286904560

namespace A131268

/-- `A004273(A065941(n))` -/
def P2528972269286904560.Spec : Prop :=
  ∀ n, P2528972269286904560.a n = A131268 n

end A131268

/-! ## A131268.P6134807607978273527

`A005408(A065941(n)-1)`
-/

namespace A131268.P6134807607978273527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A065941 n - 1).toNat

end

end A131268.P6134807607978273527

namespace A131268

/-- `A005408(A065941(n)-1)` -/
def P6134807607978273527.Spec : Prop :=
  ∀ n, P6134807607978273527.a n = A131268 n

end A131268

/-! ## A131268.P686749732415611555

`A023443(2*A065941(n))`
-/

namespace A131268.P686749732415611555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A065941 n).toNat

end

end A131268.P686749732415611555

namespace A131268

/-- `A023443(2*A065941(n))` -/
def P686749732415611555.Spec : Prop :=
  ∀ n, P686749732415611555.a n = A131268 n

end A131268

/-! ## A131268.P3428862642165543626

`A109613(A065941(n)-(1-A065941(n)))`
-/

namespace A131268.P3428862642165543626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A065941 n - (1 - A065941 n)).toNat

end

end A131268.P3428862642165543626

namespace A131268

/-- `A109613(A065941(n)-(1-A065941(n)))` -/
def P3428862642165543626.Spec : Prop :=
  ∀ n, P3428862642165543626.a n = A131268 n

end A131268

/-! ## A131268.P2432101042421264126

`A004396(A131299(n))`
-/

namespace A131268.P2432101042421264126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131299 n).toNat

end

end A131268.P2432101042421264126

namespace A131268

/-- `A004396(A131299(n))` -/
def P2432101042421264126.Spec : Prop :=
  ∀ n, P2432101042421264126.a n = A131268 n

end A131268

/-! ## A131268.P6836266708129529799

`A146535(A131299(n)+1)`
-/

namespace A131268.P6836266708129529799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A131299 n + 1).toNat

end

end A131268.P6836266708129529799

namespace A131268

/-- `A146535(A131299(n)+1)` -/
def P6836266708129529799.Spec : Prop :=
  ∀ n, P6836266708129529799.a n = A131268 n

end A131268

/-! ## A131268.P14191063868901570580

`A008620(2*A131299(n))`
-/

namespace A131268.P14191063868901570580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A131299 n).toNat

end

end A131268.P14191063868901570580

namespace A131268

/-- `A008620(2*A131299(n))` -/
def P14191063868901570580.Spec : Prop :=
  ∀ n, P14191063868901570580.a n = A131268 n

end A131268

/-! ## A131268.P10463204442328954221

`A065941(n)-(A065941(A000217(n))-A065941(n))`
-/

namespace A131268.P10463204442328954221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n - (A065941 (A000217 n).toNat - A065941 n)

end

end A131268.P10463204442328954221

namespace A131268

/-- `A065941(n)-(A065941(A000217(n))-A065941(n))` -/
def P10463204442328954221.Spec : Prop :=
  ∀ n, P10463204442328954221.a n = A131268 n

end A131268

/-!
# A131269: a(n) = 3*a(n-1) - 2*a(n-2) - a(n-3) + a(n-4) with n>3, a(0)=1, a(1)=2, a(2)=3, a(3)=6.

The programs for A131269, the canonical program `A131269.P8359004647041134044` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131269 has offset 0).

The definition of A131269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` (program `A131269.P8359004647041134044`, by `A131269.P8359004647041134044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131269.P8131590764943419296

`a(n-2)+a(n-1)+n-2` with `a(0)=1, a(1)=2`
-/

namespace A131269.P8131590764943419296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) + (n : ℤ) - 2

end

end A131269.P8131590764943419296

namespace A131269

/-- `a(n-2)+a(n-1)+n-2` -/
def P8131590764943419296.Spec : Prop :=
  ∀ n, P8131590764943419296.a n = A131269 n

end A131269

/-! ## A131269.P11640616005601416676

`A001595(n+1)-n`
-/

namespace A131269.P11640616005601416676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) - (n : ℤ)

end

end A131269.P11640616005601416676

namespace A131269

/-- `A001595(n+1)-n` -/
def P11640616005601416676.Spec : Prop :=
  ∀ n, P11640616005601416676.a n = A131269 n

end A131269

/-! ## A131269.P13007770493417600960

`A006355(n+3)-n-1`
-/

namespace A131269.P13007770493417600960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 3) - (n : ℤ) - 1

end

end A131269.P13007770493417600960

namespace A131269

/-- `A006355(n+3)-n-1` -/
def P13007770493417600960.Spec : Prop :=
  ∀ n, P13007770493417600960.a n = A131269 n

end A131269

/-! ## A131269.P8359004647041134044

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131269

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P8359004647041134044.Spec : Prop :=
  ∀ n, P8359004647041134044.a n = A131269 n

theorem P8359004647041134044.correct : P8359004647041134044.Spec := by
  intro n
  simp only [A131269]

end A131269

/-! ## A131269.P13776997254124738672

`((1+sqrt(5))^(n+2)-(1-sqrt(5))^(n+2))/(2^(n+1)*sqrt(5))-n-1`
-/

namespace A131269.P13776997254124738672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) ^ (n + 2) - (1 - Real.sqrt (5 : ℝ)) ^ (n + 2)) / ((2 ^ (n + 1) : ℝ) * Real.sqrt (5 : ℝ)) - (n : ℝ) - 1

end

end A131269.P13776997254124738672

namespace A131269

/-- `((1+sqrt(5))^(n+2)-(1-sqrt(5))^(n+2))/(2^(n+1)*sqrt(5))-n-1` -/
def P13776997254124738672.Spec : Prop :=
  ∀ n, P13776997254124738672.a n = (A131269 n : ℝ)

end A131269

/-! ## A131269.P15366618260813636850

`ogf((1-x-x^2+2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A131269.P15366618260813636850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 2] [1, -3, 2, 1, -1] n

end

end A131269.P15366618260813636850

namespace A131269

/-- `ogf((1-x-x^2+2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P15366618260813636850.Spec : Prop :=
  ∀ n, P15366618260813636850.a n = A131269 n

end A131269

/-! ## A131269.P9864295037081386976

`record[A001588(n)-n]`
-/

namespace A131269.P9864295037081386976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131269.P9864295037081386976

namespace A131269

/-- `record[A001588(n)-n]` -/
def P9864295037081386976.Spec : Prop :=
  ∀ n, P9864295037081386976.a n = A131269 n

end A131269

/-! ## A131269.P15442522985982540077

`∑[A001595(abs(1-n))]`
-/

namespace A131269.P15442522985982540077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131269.P15442522985982540077

namespace A131269

/-- `∑[A001595(abs(1-n))]` -/
def P15442522985982540077.Spec : Prop :=
  ∀ n, P15442522985982540077.a n = A131269 n

end A131269

/-! ## A131269.P9963781567563863983

`∑[abs(A128587(n+2))]`
-/

namespace A131269.P9963781567563863983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128587 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131269.P9963781567563863983

namespace A131269

/-- `∑[abs(A128587(n+2))]` -/
def P9963781567563863983.Spec : Prop :=
  ∀ n, P9963781567563863983.a n = A131269 n

end A131269

/-! ## A131269.P10287134215252910866

`A020732(n)%A033818(n+1)`
-/

namespace A131269.P10287134215252910866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020732 n) (A033818 (n + 1))

end

end A131269.P10287134215252910866

namespace A131269

/-- `A020732(n)%A033818(n+1)` -/
def P10287134215252910866.Spec : Prop :=
  ∀ n, P10287134215252910866.a n = A131269 n

end A131269

/-! ## A131269.P15676559845605488972

`A079921(n+1)%A026390(n)`
-/

namespace A131269.P15676559845605488972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079921 (n + 1)) (A026390 n)

end

end A131269.P15676559845605488972

namespace A131269

/-- `A079921(n+1)%A026390(n)` -/
def P15676559845605488972.Spec : Prop :=
  ∀ n, P15676559845605488972.a n = A131269 n

end A131269

/-!
# A131270: Triangle T(n,k) = 2*A046854(n,k) - 1, read by rows.

The programs for A131270, the canonical program `A131270.P17225762557638996417` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131270 has offset 0).

The definition of A131270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131270.P17225762557638996417

`2*A046854(n)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131270

/-- `2*A046854(n)-1` -/
def P17225762557638996417.Spec : Prop :=
  ∀ n, P17225762557638996417.a n = A131270 n

theorem P17225762557638996417.correct : P17225762557638996417.Spec := by
  intro n
  simp only [A131270]

end A131270

/-! ## A131270.P961534047675134703

`abs(2*A066170(n))-1`
-/

namespace A131270.P961534047675134703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A066170 n| - 1

end

end A131270.P961534047675134703

namespace A131270

/-- `abs(2*A066170(n))-1` -/
def P961534047675134703.Spec : Prop :=
  ∀ n, P961534047675134703.a n = A131270 n

end A131270

/-! ## A131270.P1984268508723818592

`abs(2*A130777(n))-1`
-/

namespace A131270.P1984268508723818592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A130777 n| - 1

end

end A131270.P1984268508723818592

namespace A131270

/-- `abs(2*A130777(n))-1` -/
def P1984268508723818592.Spec : Prop :=
  ∀ n, P1984268508723818592.a n = A131270 n

end A131270

/-! ## A131270.P8944949435286632622

`2*A131373(n)-A131268(n)`
-/

namespace A131270.P8944949435286632622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131373 n - A131268 n

end

end A131270.P8944949435286632622

namespace A131270

/-- `2*A131373(n)-A131268(n)` -/
def P8944949435286632622.Spec : Prop :=
  ∀ n, P8944949435286632622.a n = A131270 n

end A131270

/-! ## A131270.P2827920048748388282

`A046854(n)+A131373(n)-A065941(n)`
-/

namespace A131270.P2827920048748388282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131373 n - A065941 n)

end

end A131270.P2827920048748388282

namespace A131270

/-- `A046854(n)+A131373(n)-A065941(n)` -/
def P2827920048748388282.Spec : Prop :=
  ∀ n, P2827920048748388282.a n = A131270 n

end A131270

/-! ## A131270.P632952626538851892

`A131268(A061579(n))`
-/

namespace A131270.P632952626538851892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 (A061579 n).toNat

end

end A131270.P632952626538851892

namespace A131270

/-- `A131268(A061579(n))` -/
def P632952626538851892.Spec : Prop :=
  ∀ n, P632952626538851892.a n = A131270 n

end A131270

/-! ## A131270.P16319274860719891059

`A131268(A038722(n+1)-1)`
-/

namespace A131270.P16319274860719891059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 (A038722 (n + 1) - 1).toNat

end

end A131270.P16319274860719891059

namespace A131270

/-- `A131268(A038722(n+1)-1)` -/
def P16319274860719891059.Spec : Prop :=
  ∀ n, P16319274860719891059.a n = A131270 n

end A131270

/-! ## A131270.P4439672520421029522

`A131268(A038722(n+2))`
-/

namespace A131270.P4439672520421029522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 (A038722 (n + 2)).toNat

end

end A131270.P4439672520421029522

namespace A131270

/-- `A131268(A038722(n+2))` -/
def P4439672520421029522.Spec : Prop :=
  ∀ n, P4439672520421029522.a n = A131270 n

end A131270

/-! ## A131270.P9052784715630975769

`lcm(2, A131240(n))-1`
-/

namespace A131270.P9052784715630975769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A131240 n) : ℤ) - 1

end

end A131270.P9052784715630975769

namespace A131270

/-- `lcm(2, A131240(n))-1` -/
def P9052784715630975769.Spec : Prop :=
  ∀ n, P9052784715630975769.a n = A131270 n

end A131270

/-! ## A131270.P855732104675353468

`A131240(n)-A023532(n)`
-/

namespace A131270.P855732104675353468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131240 n - A023532 n

end

end A131270.P855732104675353468

namespace A131270

/-- `A131240(n)-A023532(n)` -/
def P855732104675353468.Spec : Prop :=
  ∀ n, P855732104675353468.a n = A131270 n

end A131270

/-! ## A131270.P260675021250080765

`or(A131240(n)-1, A128174(n+1))`
-/

namespace A131270.P260675021250080765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131240 n - 1) (A128174 (n + 1))

end

end A131270.P260675021250080765

namespace A131270

/-- `or(A131240(n)-1, A128174(n+1))` -/
def P260675021250080765.Spec : Prop :=
  ∀ n, P260675021250080765.a n = A131270 n

end A131270

/-! ## A131270.P10150278783457601902

`2*gcd(A001498(n), A066170(n))-1`
-/

namespace A131270.P10150278783457601902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.gcd (A001498 n) (A066170 n) : ℤ) - 1

end

end A131270.P10150278783457601902

namespace A131270

/-- `2*gcd(A001498(n), A066170(n))-1` -/
def P10150278783457601902.Spec : Prop :=
  ∀ n, P10150278783457601902.a n = A131270 n

end A131270

/-! ## A131270.P9535512538017943038

`abs(2*A267482(n))-1`
-/

namespace A131270.P9535512538017943038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A267482 n| - 1

end

end A131270.P9535512538017943038

namespace A131270

/-- `abs(2*A267482(n))-1` -/
def P9535512538017943038.Spec : Prop :=
  ∀ n, P9535512538017943038.a n = A131270 n

end A131270

/-! ## A131270.P1358158441981120384

`A004273(A046854(n))`
-/

namespace A131270.P1358158441981120384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A046854 n).toNat

end

end A131270.P1358158441981120384

namespace A131270

/-- `A004273(A046854(n))` -/
def P1358158441981120384.Spec : Prop :=
  ∀ n, P1358158441981120384.a n = A131270 n

end A131270

/-! ## A131270.P16449606301894270544

`A028310(A131240(n)-1)`
-/

namespace A131270.P16449606301894270544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A131240 n - 1).toNat

end

end A131270.P16449606301894270544

namespace A131270

/-- `A028310(A131240(n)-1)` -/
def P16449606301894270544.Spec : Prop :=
  ∀ n, P16449606301894270544.a n = A131270 n

end A131270

/-! ## A131270.P13884804155697787839

`A023443(2*A046854(n))`
-/

namespace A131270.P13884804155697787839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A046854 n).toNat

end

end A131270.P13884804155697787839

namespace A131270

/-- `A023443(2*A046854(n))` -/
def P13884804155697787839.Spec : Prop :=
  ∀ n, P13884804155697787839.a n = A131270 n

end A131270

/-! ## A131270.P11573819007277732131

`A004396(A131301(n))`
-/

namespace A131270.P11573819007277732131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131301 n).toNat

end

end A131270.P11573819007277732131

namespace A131270

/-- `A004396(A131301(n))` -/
def P11573819007277732131.Spec : Prop :=
  ∀ n, P11573819007277732131.a n = A131270 n

end A131270

/-! ## A131270.P10879127388401324607

`A130823(A131241(n))`
-/

namespace A131270.P10879127388401324607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A131241 n).toNat

end

end A131270.P10879127388401324607

namespace A131270

/-- `A130823(A131241(n))` -/
def P10879127388401324607.Spec : Prop :=
  ∀ n, P10879127388401324607.a n = A131270 n

end A131270

/-! ## A131270.P8165380027631387283

`A124741(A131240(n))`
-/

namespace A131270.P8165380027631387283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A131240 n).toNat

end

end A131270.P8165380027631387283

namespace A131270

/-- `A124741(A131240(n))` -/
def P8165380027631387283.Spec : Prop :=
  ∀ n, P8165380027631387283.a n = A131270 n

end A131270

/-! ## A131270.P8911964617791179550

`A046854(n)-(A046854(A000217(n))-A046854(n))`
-/

namespace A131270.P8911964617791179550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n - (A046854 (A000217 n).toNat - A046854 n)

end

end A131270.P8911964617791179550

namespace A131270

/-- `A046854(n)-(A046854(A000217(n))-A046854(n))` -/
def P8911964617791179550.Spec : Prop :=
  ∀ n, P8911964617791179550.a n = A131270 n

end A131270

/-!
# A131271: Triangular array T(n,k), n>=0, k=1..2^n, read by rows in bracketed pairs such that highest ranked element is bracketed with lowest ranked.

The programs for A131271, the canonical program `A131271.P16044540476189074573` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131271 has offset 0).

The definition of A131271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131271.P16044540476189074573

`A066194(A049773(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131271

/-- `A066194(A049773(n+1))` -/
def P16044540476189074573.Spec : Prop :=
  ∀ n, P16044540476189074573.a n = A131271 n

theorem P16044540476189074573.correct : P16044540476189074573.Spec := by
  intro n
  simp only [A131271]

end A131271

/-! ## A131271.P13458795258795734939

`A049773(A231551(n+1))`
-/

namespace A131271.P13458795258795734939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A231551 (n + 1)).toNat

end

end A131271.P13458795258795734939

namespace A131271

/-- `A049773(A231551(n+1))` -/
def P13458795258795734939.Spec : Prop :=
  ∀ n, P13458795258795734939.a n = A131271 n

end A131271

/-! ## A131271.P6293725493527445334

`A008619(A378299(n+1))`
-/

namespace A131271.P6293725493527445334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A378299 (n + 1)).toNat

end

end A131271.P6293725493527445334

namespace A131271

/-- `A008619(A378299(n+1))` -/
def P6293725493527445334.Spec : Prop :=
  ∀ n, P6293725493527445334.a n = A131271 n

end A131271

/-! ## A131271.P2692513963071610685

`A080079(A341916(n+1))`
-/

namespace A131271.P2692513963071610685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A341916 (n + 1)).toNat

end

end A131271.P2692513963071610685

namespace A131271

/-- `A080079(A341916(n+1))` -/
def P2692513963071610685.Spec : Prop :=
  ∀ n, P2692513963071610685.a n = A131271 n

end A131271

/-! ## A131271.P4403808413949341130

`A281589(A233279(n+1))`
-/

namespace A131271.P4403808413949341130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (A233279 (n + 1)).toNat

end

end A131271.P4403808413949341130

namespace A131271

/-- `A281589(A233279(n+1))` -/
def P4403808413949341130.Spec : Prop :=
  ∀ n, P4403808413949341130.a n = A131271 n

end A131271

/-! ## A131271.P18304544271927862258

`A006068(A030109(n+1))+1`
-/

namespace A131271.P18304544271927862258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030109 (n + 1)).toNat + 1

end

end A131271.P18304544271927862258

namespace A131271

/-- `A006068(A030109(n+1))+1` -/
def P18304544271927862258.Spec : Prop :=
  ∀ n, P18304544271927862258.a n = A131271 n

end A131271

/-! ## A131271.P14422444339984028724

`A066194(A030109(n+1)+1)`
-/

namespace A131271.P14422444339984028724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A030109 (n + 1) + 1).toNat

end

end A131271.P14422444339984028724

namespace A131271

/-- `A066194(A030109(n+1)+1)` -/
def P14422444339984028724.Spec : Prop :=
  ∀ n, P14422444339984028724.a n = A131271 n

end A131271

/-! ## A131271.P14322156843464106666

`A292600(A030101(n+1))+1`
-/

namespace A131271.P14322156843464106666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A030101 (n + 1)).toNat + 1

end

end A131271.P14322156843464106666

namespace A131271

/-- `A292600(A030101(n+1))+1` -/
def P14322156843464106666.Spec : Prop :=
  ∀ n, P14322156843464106666.a n = A131271 n

end A131271

/-! ## A131271.P15090260673672032800

`A380443(n+1)+A092436(n+1)`
-/

namespace A131271.P15090260673672032800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380443 (n + 1) + A092436 (n + 1)

end

end A131271.P15090260673672032800

namespace A131271

/-- `A380443(n+1)+A092436(n+1)` -/
def P15090260673672032800.Spec : Prop :=
  ∀ n, P15090260673672032800.a n = A131271 n

end A131271

/-! ## A131271.P12601667992597297564

`A062383(n+1)-A341916(n+1)`
-/

namespace A131271.P12601667992597297564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - A341916 (n + 1)

end

end A131271.P12601667992597297564

namespace A131271

/-- `A062383(n+1)-A341916(n+1)` -/
def P12601667992597297564.Spec : Prop :=
  ∀ n, P12601667992597297564.a n = A131271 n

end A131271

/-! ## A131271.P5054834669135903186

`∑[A099894(n)]-A341916(n+1)+1`
-/

namespace A131271.P5054834669135903186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A341916 (n + 1) + 1

end

end A131271.P5054834669135903186

namespace A131271

/-- `∑[A099894(n)]-A341916(n+1)+1` -/
def P5054834669135903186.Spec : Prop :=
  ∀ n, P5054834669135903186.a n = A131271 n

end A131271

/-! ## A131271.P9565534728979782578

`A003817(n+1)+1-A341916(n+1)`
-/

namespace A131271.P9565534728979782578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) + (1 - A341916 (n + 1))

end

end A131271.P9565534728979782578

namespace A131271

/-- `A003817(n+1)+1-A341916(n+1)` -/
def P9565534728979782578.Spec : Prop :=
  ∀ n, P9565534728979782578.a n = A131271 n

end A131271

/-! ## A131271.P2851386455582067289

`2*A053644(n+1)-A341916(n+1)`
-/

namespace A131271.P2851386455582067289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053644 (n + 1) - A341916 (n + 1)

end

end A131271.P2851386455582067289

namespace A131271

/-- `2*A053644(n+1)-A341916(n+1)` -/
def P2851386455582067289.Spec : Prop :=
  ∀ n, P2851386455582067289.a n = A131271 n

end A131271

/-! ## A131271.P6241653186658021110

`∑[A099894(A028310(n))]-A341916(n+1)`
-/

namespace A131271.P6241653186658021110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A341916 (n + 1)

end

end A131271.P6241653186658021110

namespace A131271

/-- `∑[A099894(A028310(n))]-A341916(n+1)` -/
def P6241653186658021110.Spec : Prop :=
  ∀ n, P6241653186658021110.a n = A131271 n

end A131271

/-! ## A131271.P13064419174634571271

`A062050(A341916(2*n+1)+Δ[A341916(2*n+1)])`
-/

namespace A131271.P13064419174634571271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A341916 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A131271.P13064419174634571271

namespace A131271

/-- `A062050(A341916(2*n+1)+Δ[A341916(2*n+1)])` -/
def P13064419174634571271.Spec : Prop :=
  ∀ n, P13064419174634571271.a n = A131271 n

end A131271

/-! ## A131271.P14758664932518319416

`A062383(A341916(2*(n+1)))%A341916(2*(n+1))`
-/

namespace A131271.P14758664932518319416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062383 (A341916 (2 * (n + 1))).toNat) (A341916 (2 * (n + 1)))

end

end A131271.P14758664932518319416

namespace A131271

/-- `A062383(A341916(2*(n+1)))%A341916(2*(n+1))` -/
def P14758664932518319416.Spec : Prop :=
  ∀ n, P14758664932518319416.a n = A131271 n

end A131271

/-!
# A131275: Numbers k such that k divides Sum_{j=1..k} prime(j)^15.

The programs for A131275, there is no canonical definition to state claims against.
-/

/-! ## A131275.P15786209698682334186

`A000720(A232848(n+1))`
-/

namespace A131275.P15786209698682334186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A232848 (n + 1)).toNat

end

end A131275.P15786209698682334186

/-! ## A131275.P10976870404710792845

`A061395(p?[A232848(n+1)])`
-/

namespace A131275.P10976870404710792845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131275.P10976870404710792845

/-! ## A131275.P447082495157171174

`∑{d}[A232848(n+1), A061395(#)]`
-/

namespace A131275.P447082495157171174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A131275.P447082495157171174

/-! ## A131275.P12016215084915903687

`A061395(∑{p}[A232848(n+1), #])`
-/

namespace A131275.P12016215084915903687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A131275.P12016215084915903687

/-!
# A131279: Numbers k such that k divides Sum_{j=1..k} prime(j)^19.

The programs for A131279, there is no canonical definition to state claims against.
-/

/-! ## A131279.P12709907342776024387

`A000720(A233767(n+1))`
-/

namespace A131279.P12709907342776024387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233767 (n + 1)).toNat

end

end A131279.P12709907342776024387

/-! ## A131279.P12164933571751588258

`A061395(p?[A233767(n+1)])`
-/

namespace A131279.P12164933571751588258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131279.P12164933571751588258

/-! ## A131279.P13846058067102715519

`A061395(2*A233767(n+1))`
-/

namespace A131279.P13846058067102715519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233767 (n + 1)).toNat

end

end A131279.P13846058067102715519

/-! ## A131279.P17096461406352477700

`A061395(lcm(2, A233767(n+1)))`
-/

namespace A131279.P17096461406352477700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A233767 (n + 1)))

end

end A131279.P17096461406352477700

/-! ## A131279.P8411455590735127946

`∑{d}[A233767(n+1), A061395(#)]`
-/

namespace A131279.P8411455590735127946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A131279.P8411455590735127946

/-!
# A131280: Sums of exactly 4 positive octahedral numbers A005900.

The programs for A131280, there is no canonical definition to state claims against.
-/

/-! ## A131280.P17600578790831667121

`record[A136801(2*n+1)-A270613(n+1)]`
-/

namespace A131280.P17600578790831667121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136801 (2 * n + 1) - A270613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131280.P17600578790831667121

/-! ## A131280.P4342085885833656775

`A080914(n+1)+A010693(A080872(n))`
-/

namespace A131280.P4342085885833656775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080914 (n + 1) + A010693 (A080872 n).toNat

end

end A131280.P4342085885833656775

/-! ## A131280.P11079464306442764463

`A111076(A080040(n))+A003234(n+1)`
-/

namespace A131280.P11079464306442764463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A080040 n).toNat + A003234 (n + 1)

end

end A131280.P11079464306442764463

/-! ## A131280.P16273871743106599103

`A122553(A000111(n))+A080914(n+1)`
-/

namespace A131280.P16273871743106599103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A000111 n).toNat + A080914 (n + 1)

end

end A131280.P16273871743106599103

/-! ## A131280.P10806912041354207189

`A122553(A007837(n))+A080914(n+1)`
-/

namespace A131280.P10806912041354207189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A007837 n).toNat + A080914 (n + 1)

end

end A131280.P10806912041354207189

/-!
# A131281: Expansion of e.g.f.: 2*(x-1)*tan(x/2+Pi/4)-x^2+2.

The programs for A131281, there is no canonical definition to state claims against.
-/

/-! ## A131281.P15800372330070859130

`2*A000756(n)%A000111(n)`
-/

namespace A131281.P15800372330070859130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A000756 n) (A000111 n)

end

end A131281.P15800372330070859130

/-! ## A131281.P1256545346204248398

`2*A034428(n)%A000111(n)`
-/

namespace A131281.P1256545346204248398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A034428 n) (A000111 n)

end

end A131281.P1256545346204248398

/-! ## A131281.P13296175082462577178

`A034428(n)*A098189(A172170(n))`
-/

namespace A131281.P13296175082462577178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034428 n * A098189 (A172170 n).toNat

end

end A131281.P13296175082462577178

/-! ## A131281.P3995639412829609603

`A034428(n)*A063958(A039593(n+1))`
-/

namespace A131281.P3995639412829609603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034428 n * A063958 (A039593 (n + 1)).toNat

end

end A131281.P3995639412829609603

/-! ## A131281.P9549574482301358066

`2*A109449(A000124(n))%A000111(n)`
-/

namespace A131281.P9549574482301358066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A109449 (A000124 n).toNat) (A000111 n)

end

end A131281.P9549574482301358066

/-!
# A131282: Period 6: repeat [1, 2, 3, 3, 4, 5].

The programs for A131282, the canonical program `A131282.P13099858893407956430` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131282 has offset 0).

The definition of A131282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131282.P13099858893407956430

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131282

/-- `a(n-6)` -/
def P13099858893407956430.Spec : Prop :=
  ∀ n, (P13099858893407956430.a n : ℤ) = A131282 n

theorem P13099858893407956430.correct : P13099858893407956430.Spec := by
  intro n
  simp only [A131282]

end A131282

/-!
# A131283: a(n) is the number of binary strings of length n such that there exist 3 or more ones in a subsequence of length 5 or less.

The programs for A131283, the canonical program `A131283.P3268464960979322100` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131283 has offset 1).

The definition of A131283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131283.P3268464960979322100

`2^(n+1)-A120118(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131283

/-- `2^(n+1)-A120118(n+1)` -/
def P3268464960979322100.Spec : Prop :=
  ∀ n, P3268464960979322100.a n = A131283 (n + 1)

theorem P3268464960979322100.correct : P3268464960979322100.Spec := by
  intro n
  simp only [A131283, Nat.add_sub_cancel]

end A131283

/-! ## A131283.P14899425370870748608

`∑[A000079(n)-Δ[A120118(n)]]`
-/

namespace A131283.P14899425370870748608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131283.P14899425370870748608

namespace A131283

/-- `∑[A000079(n)-Δ[A120118(n)]]` -/
def P14899425370870748608.Spec : Prop :=
  ∀ n, P14899425370870748608.a n = A131283 (n + 1)

end A131283

/-! ## A131283.P72086674725350082

`and(-A120118(n+1), A126646(n))`
-/

namespace A131283.P72086674725350082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A120118 (n + 1)) (A126646 n)

end

end A131283.P72086674725350082

namespace A131283

/-- `and(-A120118(n+1), A126646(n))` -/
def P72086674725350082.Spec : Prop :=
  ∀ n, P72086674725350082.a n = A131283 (n + 1)

end A131283

/-! ## A131283.P2753898861923584900

`and(-A120118(n+1), ∑[A000079(n)])`
-/

namespace A131283.P2753898861923584900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A120118 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131283.P2753898861923584900

namespace A131283

/-- `and(-A120118(n+1), ∑[A000079(n)])` -/
def P2753898861923584900.Spec : Prop :=
  ∀ n, P2753898861923584900.a n = A131283 (n + 1)

end A131283

/-! ## A131283.P10009268391731950144

`A125513(n+1)+A130902(n)-A120118(n+1)`
-/

namespace A131283.P10009268391731950144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125513 (n + 1) + (A130902 n - A120118 (n + 1))

end

end A131283.P10009268391731950144

namespace A131283

/-- `A125513(n+1)+A130902(n)-A120118(n+1)` -/
def P10009268391731950144.Spec : Prop :=
  ∀ n, P10009268391731950144.a n = A131283 (n + 1)

end A131283

/-! ## A131283.P12480552310207920277

`A118646(n+1)+A118647(n+1)-A120118(n+1)`
-/

namespace A131283.P12480552310207920277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118646 (n + 1) + (A118647 (n + 1) - A120118 (n + 1))

end

end A131283.P12480552310207920277

namespace A131283

/-- `A118646(n+1)+A118647(n+1)-A120118(n+1)` -/
def P12480552310207920277.Spec : Prop :=
  ∀ n, P12480552310207920277.a n = A131283 (n + 1)

end A131283

/-! ## A131283.P14276577491721238574

`Δ[A048578(n)-∑[A120118(n)]]`
-/

namespace A131283.P14276577491721238574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131283.P14276577491721238574

namespace A131283

/-- `Δ[A048578(n)-∑[A120118(n)]]` -/
def P14276577491721238574.Spec : Prop :=
  ∀ n, P14276577491721238574.a n = A131283 (n + 1)

end A131283

/-!
# A131288: a(n) = number of ways to choose a collection C of subsets of U = [1,2,...,n] such that Union_{S in C} = U, Intersection_{S in C} = empty set.

The programs for A131288, there is no canonical definition to state claims against.
-/

/-! ## A131288.P9125206633408734062

`A318128(n)+A003465(n)`
-/

namespace A131288.P9125206633408734062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318128 n + A003465 n

end

end A131288.P9125206633408734062

/-! ## A131288.P7761423216374937253

`A318128(n)+A000371(n)/2`
-/

namespace A131288.P7761423216374937253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318128 n : ℚ) + (A000371 n : ℚ) / 2

end

end A131288.P7761423216374937253

/-!
# A131289: Period 12: repeat 1, 1, 3, -3, -3, 1, -1, -1, -3, 3, 3, -1.

The programs for A131289, the canonical program `A131289.P2120214764638361314` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131289 has offset 0).

The definition of A131289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131289.P2120214764638361314

`-a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=-3, a(4)=-3, a(5)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131289

/-- `-a(n-6)` -/
def P2120214764638361314.Spec : Prop :=
  ∀ n, P2120214764638361314.a n = A131289 n

theorem P2120214764638361314.correct : P2120214764638361314.Spec := by
  intro n
  simp only [A131289]

end A131289

/-!
# A131290: 1 followed by period 6: repeat [3, 2, 0, -1, 0, 2].

The programs for A131290, the canonical program `A131290.P14619738801697388994` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131290 has offset 0).

The definition of A131290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131290.P14619738801697388994

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131290

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P14619738801697388994.Spec : Prop :=
  ∀ n, P14619738801697388994.a n = A131290 n

theorem P14619738801697388994.correct : P14619738801697388994.Spec := by
  intro n
  simp only [A131290]

end A131290

/-!
# A131291: Period 9: repeat [5, 4, 5, 3, 4, 3, 5, 4, 5].

The programs for A131291, the canonical program `A131291.P6033319915935784656` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131291 has offset 0).

The definition of A131291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131291.P6033319915935784656

`5-10%dr(∑[n]+2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131291

/-- `5-10%dr(∑[n]+2)` -/
def P6033319915935784656.Spec : Prop :=
  ∀ n, P6033319915935784656.a n = A131291 n

theorem P6033319915935784656.correct : P6033319915935784656.Spec := by
  intro n
  simp only [A131291]

end A131291

/-!
# A131292: a(2n+1)=3a(2n)-3a(2n-1)+2a(2n-2), a(2n+2)=3a(2n+1)-3a(2n), a(0)=a(1)=a(2)=1.

The programs for A131292, the canonical program `A131292.P3627661166533495756` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131292 has offset 0).

The definition of A131292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131292.P3627661166533495756

`A133331(round(acot(n)+n))/3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131292

/-- `A133331(round(acot(n)+n))/3` -/
def P3627661166533495756.Spec : Prop :=
  ∀ n, P3627661166533495756.a n = (A131292 n : ℚ)

end A131292

/-! ## A131292.P10545780615454900822

`A133331(A233583(n+1))/3`
-/

namespace A131292.P10545780615454900822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133331 (A233583 (n + 1)).toNat : ℚ) / 3

end

end A131292.P10545780615454900822

namespace A131292

/-- `A133331(A233583(n+1))/3` -/
def P10545780615454900822.Spec : Prop :=
  ∀ n, P10545780615454900822.a n = (A131292 n : ℚ)

end A131292

/-!
# A131293: Concatenate a(n-2) and a(n-1) to get a(n); start with a(0)=0, a(1)=1, delete the leading zero. Also: concatenate Fibonacci(n) 1's.

The programs for A131293, there is no canonical definition to state claims against.
-/

/-! ## A131293.P9314464029123207761

`A121389(n)/9`
-/

namespace A131293.P9314464029123207761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121389 n : ℚ) / 9

end

end A131293.P9314464029123207761

/-! ## A131293.P4931524060656706742

`floor(A010100(n)/9)`
-/

namespace A131293.P4931524060656706742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010100 n : ℚ) / 9⌋

end

end A131293.P4931524060656706742

/-! ## A131293.P8862861632351867402

`floor(10^A000045(n)/9)`
-/

namespace A131293.P8862861632351867402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (A000045 n : ℤ) / 9⌋

end

end A131293.P8862861632351867402

/-! ## A131293.P18199884509340815852

`A002275(A000045(n))`
-/

namespace A131293.P18199884509340815852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000045 n).toNat

end

end A131293.P18199884509340815852

/-! ## A131293.P7883459418673596841

`A071762(A033192(n))`
-/

namespace A131293.P7883459418673596841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A033192 n).toNat

end

end A131293.P7883459418673596841

/-!
# A131294: a(n)=ds_3(a(n-1))+ds_3(a(n-2)), a(0)=0, a(1)=1; where ds_3=digital sum base 3.

The programs for A131294, the canonical program `A131294.P10901416154964638058` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131294 has offset 0).

The definition of A131294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131294.P10901416154964638058

`a(n-1)+a(n-2)-2*(floor(a(n-1)/3)+floor(a(n-2)/3))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131294

/-- `a(n-1)+a(n-2)-2*(floor(a(n-1)/3)+floor(a(n-2)/3))` -/
def P10901416154964638058.Spec : Prop :=
  ∀ n, P10901416154964638058.a n = A131294 n

theorem P10901416154964638058.correct : P10901416154964638058.Spec := by
  intro n
  simp only [A131294]

end A131294

/-!
# A131295: a(n)=ds_4(a(n-1))+ds_4(a(n-2)), a(0)=0, a(1)=1; where ds_4=digital sum base 4.

The programs for A131295, the canonical program `A131295.P6305763530009011914` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131295 has offset 0).

The definition of A131295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131295.P6305763530009011914

`a(n-1)+a(n-2)-3*(floor(a(n-1)/4)+floor(a(n-2)/4))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131295

/-- `a(n-1)+a(n-2)-3*(floor(a(n-1)/4)+floor(a(n-2)/4))` -/
def P6305763530009011914.Spec : Prop :=
  ∀ n, P6305763530009011914.a n = A131295 n

theorem P6305763530009011914.correct : P6305763530009011914.Spec := by
  intro n
  simp only [A131295]

end A131295

/-!
# A131296: a(n) = ds_5(a(n-1))+ds_5(a(n-2)), a(0)=0, a(1)=1; where ds_5=digital sum base 5.

The programs for A131296, the canonical program `A131296.P13571474728230391221` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131296 has offset 0).

The definition of A131296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131296.P13571474728230391221

`a(n-1)+a(n-2)-4*(floor(a(n-1)/5)+floor(a(n-2)/5))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131296

/-- `a(n-1)+a(n-2)-4*(floor(a(n-1)/5)+floor(a(n-2)/5))` -/
def P13571474728230391221.Spec : Prop :=
  ∀ n, P13571474728230391221.a n = A131296 n

theorem P13571474728230391221.correct : P13571474728230391221.Spec := by
  intro n
  simp only [A131296]

end A131296

/-!
# A131297: a(n) = ds_11(a(n-1))+ds_11(a(n-2)), a(0)=0, a(1)=1; where ds_11=digital sum base 11.

The programs for A131297, the canonical program `A131297.P7495573968769751275` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131297 has offset 0).

The definition of A131297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131297.P7495573968769751275

`a(n-1)+a(n-2)-10*(floor(a(n-1)/11)+floor(a(n-2)/11))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131297

/-- `a(n-1)+a(n-2)-10*(floor(a(n-1)/11)+floor(a(n-2)/11))` -/
def P7495573968769751275.Spec : Prop :=
  ∀ n, P7495573968769751275.a n = A131297 n

theorem P7495573968769751275.correct : P7495573968769751275.Spec := by
  intro n
  simp only [A131297]

end A131297

/-!
# A131298: Diagonal sums of A104730.

The programs for A131298, the canonical program `A131298.P2879006245003999352` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131298 has offset 0).

The definition of A131298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131298.P2879006245003999352

`a(n-2)+A000045(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131298

/-- `a(n-2)+A000045(n)+a(n-3)` -/
def P2879006245003999352.Spec : Prop :=
  ∀ n, P2879006245003999352.a n = A131298 n

theorem P2879006245003999352.correct : P2879006245003999352.Spec := by
  intro n
  simp only [A131298]

end A131298

/-! ## A131298.P17543447614977306959

`∑[A000045(n)-Δ[A052954(n)]]`
-/

namespace A131298.P17543447614977306959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131298.P17543447614977306959

namespace A131298

/-- `∑[A000045(n)-Δ[A052954(n)]]` -/
def P17543447614977306959.Spec : Prop :=
  ∀ n, P17543447614977306959.a n = A131298 n

end A131298

/-! ## A131298.P12412330986179162575

`∑[A000045(n)-A078027(n+1)]`
-/

namespace A131298.P12412330986179162575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A078027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131298.P12412330986179162575

namespace A131298

/-- `∑[A000045(n)-A078027(n+1)]` -/
def P12412330986179162575.Spec : Prop :=
  ∀ n, P12412330986179162575.a n = A131298 n

end A131298

/-! ## A131298.P2472509431056895367

`A129973(n+1)+A000045(n+1)`
-/

namespace A131298.P2472509431056895367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129973 (n + 1) + A000045 (n + 1)

end

end A131298.P2472509431056895367

namespace A131298

/-- `A129973(n+1)+A000045(n+1)` -/
def P2472509431056895367.Spec : Prop :=
  ∀ n, P2472509431056895367.a n = A131298 n

end A131298

/-! ## A131298.P17088832118957344908

`A000045(n+2)-A182097(n+1)`
-/

namespace A131298.P17088832118957344908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A182097 (n + 1)

end

end A131298.P17088832118957344908

namespace A131298

/-- `A000045(n+2)-A182097(n+1)` -/
def P17088832118957344908.Spec : Prop :=
  ∀ n, P17088832118957344908.a n = A131298 n

end A131298

/-! ## A131298.P1741987027791606323

`A129973(n+3)+A000931(n+3)`
-/

namespace A131298.P1741987027791606323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129973 (n + 3) + A000931 (n + 3)

end

end A131298.P1741987027791606323

namespace A131298

/-- `A129973(n+3)+A000931(n+3)` -/
def P1741987027791606323.Spec : Prop :=
  ∀ n, P1741987027791606323.a n = A131298 n

end A131298

/-! ## A131298.P14339506798852097700

`A000045(n+2)-A078027(n+6)`
-/

namespace A131298.P14339506798852097700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A078027 (n + 6)

end

end A131298.P14339506798852097700

namespace A131298

/-- `A000045(n+2)-A078027(n+6)` -/
def P14339506798852097700.Spec : Prop :=
  ∀ n, P14339506798852097700.a n = A131298 n

end A131298

/-! ## A131298.P3036086987815499744

`A000045(n+2)-Δ[A023434(n+1)]`
-/

namespace A131298.P3036086987815499744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - (f1 (n + 1) - f1 n)

end

end A131298.P3036086987815499744

namespace A131298

/-- `A000045(n+2)-Δ[A023434(n+1)]` -/
def P3036086987815499744.Spec : Prop :=
  ∀ n, P3036086987815499744.a n = A131298 n

end A131298

/-! ## A131298.P17152042265835412043

`A000045(n+2)+1-A052954(n+1)`
-/

namespace A131298.P17152042265835412043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + 1 - A052954 (n + 1)

end

end A131298.P17152042265835412043

namespace A131298

/-- `A000045(n+2)+1-A052954(n+1)` -/
def P17152042265835412043.Spec : Prop :=
  ∀ n, P17152042265835412043.a n = A131298 n

end A131298

/-! ## A131298.P5618129888310560807

`A000045(n+2)-A127682(2*n+1)`
-/

namespace A131298.P5618129888310560807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A127682 (2 * n + 1)

end

end A131298.P5618129888310560807

namespace A131298

/-- `A000045(n+2)-A127682(2*n+1)` -/
def P5618129888310560807.Spec : Prop :=
  ∀ n, P5618129888310560807.a n = A131298 n

end A131298

/-! ## A131298.P14079652808741813519

`A129973(n+4)-A129973(n+2)`
-/

namespace A131298.P14079652808741813519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129973 (n + 4) - A129973 (n + 2)

end

end A131298.P14079652808741813519

namespace A131298

/-- `A129973(n+4)-A129973(n+2)` -/
def P14079652808741813519.Spec : Prop :=
  ∀ n, P14079652808741813519.a n = A131298 n

end A131298

/-!
# A131299: Triangle T(n,k) = 3*binomial(n-floor((k+1)/2), floor(k/2))-2 with k=0..n, read by rows.

The programs for A131299, the canonical program `A131299.P12974886994528120994` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131299 has offset 0).

The definition of A131299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131299.P14464167998363910796

`3*A065941(n)-2`
-/

namespace A131299.P14464167998363910796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A065941 n - 2

end

end A131299.P14464167998363910796

namespace A131299

/-- `3*A065941(n)-2` -/
def P14464167998363910796.Spec : Prop :=
  ∀ n, P14464167998363910796.a n = A131299 n

end A131299

/-! ## A131299.P12974886994528120994

`abs(3*A108299(n))-2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131299

/-- `abs(3*A108299(n))-2` -/
def P12974886994528120994.Spec : Prop :=
  ∀ n, P12974886994528120994.a n = A131299 n

theorem P12974886994528120994.correct : P12974886994528120994.Spec := by
  intro n
  simp only [A131299]

end A131299

/-! ## A131299.P17904694650852655514

`A065941(n)+A131268(n)-1`
-/

namespace A131299.P17904694650852655514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131268 n - 1)

end

end A131299.P17904694650852655514

namespace A131299

/-- `A065941(n)+A131268(n)-1` -/
def P17904694650852655514.Spec : Prop :=
  ∀ n, P17904694650852655514.a n = A131299 n

end A131299

/-! ## A131299.P2633439047405990553

`A131268(n)+A131373(n)-A046854(n)`
-/

namespace A131299.P2633439047405990553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + (A131373 n - A046854 n)

end

end A131299.P2633439047405990553

namespace A131299

/-- `A131268(n)+A131373(n)-A046854(n)` -/
def P2633439047405990553.Spec : Prop :=
  ∀ n, P2633439047405990553.a n = A131299 n

end A131299

/-! ## A131299.P6215748782289394328

`A131301(A061579(n))`
-/

namespace A131299.P6215748782289394328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131301 (A061579 n).toNat

end

end A131299.P6215748782289394328

namespace A131299

/-- `A131301(A061579(n))` -/
def P6215748782289394328.Spec : Prop :=
  ∀ n, P6215748782289394328.a n = A131299 n

end A131299

/-! ## A131299.P1063215145314860571

`A131301(A038722(n+1)-1)`
-/

namespace A131299.P1063215145314860571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131301 (A038722 (n + 1) - 1).toNat

end

end A131299.P1063215145314860571

namespace A131299

/-- `A131301(A038722(n+1)-1)` -/
def P1063215145314860571.Spec : Prop :=
  ∀ n, P1063215145314860571.a n = A131299 n

end A131299

/-! ## A131299.P15089313616754023069

`A131301(A038722(n+2))`
-/

namespace A131299.P15089313616754023069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131301 (A038722 (n + 2)).toNat

end

end A131299.P15089313616754023069

namespace A131299

/-- `A131301(A038722(n+2))` -/
def P15089313616754023069.Spec : Prop :=
  ∀ n, P15089313616754023069.a n = A131299 n

end A131299

/-! ## A131299.P17715995157428745172

`3*gcd(A001497(n), A108299(n))-2`
-/

namespace A131299.P17715995157428745172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Int.gcd (A001497 n) (A108299 n) : ℤ) - 2

end

end A131299.P17715995157428745172

namespace A131299

/-- `3*gcd(A001497(n), A108299(n))-2` -/
def P17715995157428745172.Spec : Prop :=
  ∀ n, P17715995157428745172.a n = A131299 n

end A131299

/-! ## A131299.P15310324834694739541

`A001651(A131268(n))`
-/

namespace A131299.P15310324834694739541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A131268 n).toNat

end

end A131299.P15310324834694739541

namespace A131299

/-- `A001651(A131268(n))` -/
def P15310324834694739541.Spec : Prop :=
  ∀ n, P15310324834694739541.a n = A131299 n

end A131299

