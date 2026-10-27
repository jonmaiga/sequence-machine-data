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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A241000: G.f. satisfies: A(x) = A(x/A(x))^2 - x.

The programs for A241000, there is no canonical definition to state claims against.
-/

/-! ## A241000.P5192028076301960162

`A320355(or(1, C(n, 2)))`
-/

namespace A241000.P5192028076301960162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320355 (Nat.lor 1 (Nat.choose n 2))

end

end A241000.P5192028076301960162

/-! ## A241000.P9247497793424265742

`A276798(n!*C(n, 2))`
-/

namespace A241000.P9247497793424265742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (Nat.factorial n * Nat.choose n 2)

end

end A241000.P9247497793424265742

/-!
# A241001: G.f. satisfies: A(x)^3 = x + A(x*A(x)^3)^2.

The programs for A241001, there is no canonical definition to state claims against.
-/

/-! ## A241001.P15029838796963437457

`A056867(A367904(n)-n)`
-/

namespace A241001.P15029838796963437457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (A367904 n - (n : ℤ)).toNat

end

end A241001.P15029838796963437457

/-!
# A241006: Number of positive numbers <n that are coprime to all anti-divisors of n.

The programs for A241006, there is no canonical definition to state claims against.
-/

/-! ## A241006.P7172302858952799152

`A353815(A371110(3*n+1))+A297167(n+1)`
-/

namespace A241006.P7172302858952799152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353815 (A371110 (3 * n + 1)).toNat + A297167 (n + 1)

end

end A241006.P7172302858952799152

/-! ## A241006.P17532008764019409784

`A001222(A133299(n+1)+A006131(n))`
-/

namespace A241006.P17532008764019409784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133299 (n + 1) + A006131 n).toNat

end

end A241006.P17532008764019409784

/-! ## A241006.P1383539943167516976

`A039996(A281897(n)+A141036(n+1))`
-/

namespace A241006.P1383539943167516976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A281897 n + A141036 (n + 1)).toNat

end

end A241006.P1383539943167516976

/-! ## A241006.P15705922167751823271

`A336316(n+1)+A306440(A096096(n+1))`
-/

namespace A241006.P15705922167751823271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (n + 1) + A306440 (A096096 (n + 1)).toNat

end

end A241006.P15705922167751823271

/-! ## A241006.P3054912657094392181

`A372515(A323595(n+1))`
-/

namespace A241006.P3054912657094392181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372515 (A323595 (n + 1)).toNat

end

end A241006.P3054912657094392181

/-!
# A241007: Decimal encoding of the prime factorization of a(n) is a prime.

The programs for A241007, there is no canonical definition to state claims against.
-/

/-! ## A241007.P8335574860822330796

`xor(A032458(n+1), A050326(A032468(3*(n+1))))`
-/

namespace A241007.P8335574860822330796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032458 (n + 1)) (A050326 (A032468 (3 * (n + 1))).toNat)

end

end A241007.P8335574860822330796

/-!
# A241008: Numbers n with the property that the number of parts in the symmetric representation of sigma(n) is even, and that all parts have width 1.

The programs for A241008, there is no canonical definition to state claims against.
-/

/-! ## A241008.P18203655736752173463

`A071561(∑[A064284(n)])`
-/

namespace A241008.P18203655736752173463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241008.P18203655736752173463

/-! ## A241008.P5353852096375730531

`record[A053626(A028983(n+1))]`
-/

namespace A241008.P5353852096375730531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A028983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241008.P5353852096375730531

/-! ## A241008.P17634602073561339937

`record[A053626(A071561(n+1))]`
-/

namespace A241008.P17634602073561339937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A071561 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241008.P17634602073561339937

/-! ## A241008.P15413327117817319349

`filter[A037918(n+1), A348327(#)]`
-/

namespace A241008.P15413327117817319349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A241008.P15413327117817319349

/-! ## A241008.P8990427823934742517

`filter[A060683(n+1), A348327(#)]`
-/

namespace A241008.P8990427823934742517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A241008.P8990427823934742517

/-! ## A241008.P17259532701338731532

`filter[A071561(n+1), A356173(#)]`
-/

namespace A241008.P17259532701338731532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A241008.P17259532701338731532

/-! ## A241008.P17380089297376883635

`filter[A129511(n+1), A348327(#)]`
-/

namespace A241008.P17380089297376883635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A241008.P17380089297376883635

/-! ## A241008.P1293194166735000942

`filter[A174905(n+1), A348327(#)]`
-/

namespace A241008.P1293194166735000942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A241008.P1293194166735000942

/-! ## A241008.P3322059853063177419

`filter[A319630(n+1), A348327(#)]`
-/

namespace A241008.P3322059853063177419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A241008.P3322059853063177419

/-! ## A241008.P12439054883279044403

`filter[A381137(n+1), A348327(#)]`
-/

namespace A241008.P12439054883279044403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A241008.P12439054883279044403

/-!
# A241010: Numbers n with the property that the number of parts in the symmetric representation of sigma(n) is odd, and that all parts have width 1.

The programs for A241010, there is no canonical definition to state claims against.
-/

/-! ## A241010.P5723234653962932968

`record[A053626(∪[2*(n+1)², (n+1)²])]`
-/

namespace A241010.P5723234653962932968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241010.P5723234653962932968

/-! ## A241010.P6321284986679258606

`record[A053626(A028982(n+1))]`
-/

namespace A241010.P6321284986679258606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A028982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241010.P6321284986679258606

/-! ## A241010.P11070730265775124139

`record[A053626(A071562(n+1))]`
-/

namespace A241010.P11070730265775124139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A071562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241010.P11070730265775124139

/-! ## A241010.P16171986136027078429

`record[A053626(A204826(n+1))]`
-/

namespace A241010.P16171986136027078429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A204826 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241010.P16171986136027078429

/-! ## A241010.P6665177842700105497

`filter[A174905(n+1), A053866(#)]`
-/

namespace A241010.P6665177842700105497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A241010.P6665177842700105497

/-! ## A241010.P2415808714166945925

`∩[A028982(n+1), A174905(n+1)]`
-/

namespace A241010.P2415808714166945925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241010.P2415808714166945925

/-! ## A241010.P1638113541188062823

`∩[A071562(n+1), A174905(n+1)]`
-/

namespace A241010.P1638113541188062823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241010.P1638113541188062823

/-! ## A241010.P6294308553979715655

`∩[A174905(n+1), A204826(n+1)]`
-/

namespace A241010.P6294308553979715655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241010.P6294308553979715655

/-! ## A241010.P2484156413430208164

`record[A053626(n+1)*A067742(n+1)]`
-/

namespace A241010.P2484156413430208164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1) * A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241010.P2484156413430208164

/-! ## A241010.P3489550735415619746

`record[A053626(n+1)/A286357(n+1)]`
-/

namespace A241010.P3489550735415619746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053626 (n + 1) : ℚ) / (A286357 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241010.P3489550735415619746

/-!
# A241012: Inverse permutation to A109465.

The programs for A241012, there is no canonical definition to state claims against.
-/

/-! ## A241012.P16992028200038532828

`A005408(A334655(n+1))+A001221(A151713(n)!+n)`
-/

namespace A241012.P16992028200038532828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334655 (n + 1)).toNat + A001221 (Nat.factorial (A151713 n).toNat + n)

end

end A241012.P16992028200038532828

/-! ## A241012.P11010537056059002626

`A005408(A334655(n+1))+A001221(A120426(n+1))`
-/

namespace A241012.P11010537056059002626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334655 (n + 1)).toNat + A001221 (A120426 (n + 1)).toNat

end

end A241012.P11010537056059002626

/-!
# A241013: Semiprimes congruent to {1, 2, 4} mod 5.

The programs for A241013, the canonical program `A241013.P16160203473149588525` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241013 has offset 1).

The definition of A241013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241013.P4006806927095195308

`filter[A032793(n+1), A064911(#)]`
-/

namespace A241013.P4006806927095195308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241013.P4006806927095195308

namespace A241013

/-- `filter[A032793(n+1), A064911(#)]` -/
def P4006806927095195308.Spec : Prop :=
  ∀ n, P4006806927095195308.a n = A241013 (n + 1)

end A241013

/-! ## A241013.P16160203473149588525

`∩[A001358(n+1), A032793(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A241013

/-- `∩[A001358(n+1), A032793(n+1)]` -/
def P16160203473149588525.Spec : Prop :=
  ∀ n, (P16160203473149588525.a n : ℤ) = A241013 (n + 1)

theorem P16160203473149588525.correct : P16160203473149588525.Spec := by
  intro n
  simp only [A241013, Nat.add_sub_cancel]

end A241013

/-! ## A241013.P14995733900138768433

`eq[2, and(A105700(n), A222409(n))]`
-/

namespace A241013.P14995733900138768433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105700 n) (A222409 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241013.P14995733900138768433

namespace A241013

/-- `eq[2, and(A105700(n), A222409(n))]` -/
def P14995733900138768433.Spec : Prop :=
  ∀ n, (P14995733900138768433.a n : ℤ) = A241013 (n + 1)

end A241013

/-! ## A241013.P11365400184883558450

`eq[A055388(A289205(n+1)), A105700(n)]`
-/

namespace A241013.P11365400184883558450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (A289205 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241013.P11365400184883558450

namespace A241013

/-- `eq[A055388(A289205(n+1)), A105700(n)]` -/
def P11365400184883558450.Spec : Prop :=
  ∀ n, (P11365400184883558450.a n : ℤ) = A241013 (n + 1)

end A241013

/-! ## A241013.P6269209501930821342

`eq[A055388(A289205(n+1)), A284289(n)]`
-/

namespace A241013.P6269209501930821342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (A289205 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241013.P6269209501930821342

namespace A241013

/-- `eq[A055388(A289205(n+1)), A284289(n)]` -/
def P6269209501930821342.Spec : Prop :=
  ∀ n, (P6269209501930821342.a n : ℤ) = A241013 (n + 1)

end A241013

/-! ## A241013.P5127278347656154125

`eq[A020639(A090223(n+4)), A105700(n)]`
-/

namespace A241013.P5127278347656154125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090223 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241013.P5127278347656154125

namespace A241013

/-- `eq[A020639(A090223(n+4)), A105700(n)]` -/
def P5127278347656154125.Spec : Prop :=
  ∀ n, (P5127278347656154125.a n : ℤ) = A241013 (n + 1)

end A241013

/-! ## A241013.P17702114228580595753

`filter[A063208(2*n+1), A064911(#)]`
-/

namespace A241013.P17702114228580595753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241013.P17702114228580595753

namespace A241013

/-- `filter[A063208(2*n+1), A064911(#)]` -/
def P17702114228580595753.Spec : Prop :=
  ∀ n, P17702114228580595753.a n = A241013 (n + 1)

end A241013

/-! ## A241013.P14345674793939472565

`filter[A090168(2*n+1), A064911(#)]`
-/

namespace A241013.P14345674793939472565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241013.P14345674793939472565

namespace A241013

/-- `filter[A090168(2*n+1), A064911(#)]` -/
def P14345674793939472565.Spec : Prop :=
  ∀ n, P14345674793939472565.a n = A241013 (n + 1)

end A241013

/-! ## A241013.P5078553492792584417

`eq[A010673(A047583(n+1)), A284289(n)]`
-/

namespace A241013.P5078553492792584417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A047583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241013.P5078553492792584417

namespace A241013

/-- `eq[A010673(A047583(n+1)), A284289(n)]` -/
def P5078553492792584417.Spec : Prop :=
  ∀ n, (P5078553492792584417.a n : ℤ) = A241013 (n + 1)

end A241013

/-! ## A241013.P14508518920798405284

`eq[A020639(A007091(n+3)), A105700(n)]`
-/

namespace A241013.P14508518920798405284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007091 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241013.P14508518920798405284

namespace A241013

/-- `eq[A020639(A007091(n+3)), A105700(n)]` -/
def P14508518920798405284.Spec : Prop :=
  ∀ n, (P14508518920798405284.a n : ℤ) = A241013 (n + 1)

end A241013

/-!
# A241015: Number of pairs of endofunctions f, g on [n] satisfying g(g(g(f(i)))) = f(i) for all i in [n].

The programs for A241015, there is no canonical definition to state claims against.
-/

/-! ## A241015.P9417160255830121035

`A245980(∑[n+3]+n+3)`
-/

namespace A241015.P9417160255830121035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A241015.P9417160255830121035

/-! ## A241015.P3388221280468431029

`A245986(n^A110656(n))`
-/

namespace A241015.P3388221280468431029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245986 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A241015.P3388221280468431029

/-! ## A241015.P5084408510899794530

`A245986(lcm(n, A048762(n)))`
-/

namespace A241015.P5084408510899794530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245986 (Int.lcm (n : ℤ) (A048762 n))

end

end A241015.P5084408510899794530

/-! ## A241015.P10957209478263077063

`A245986(n)^A241643(n)!`
-/

namespace A241015.P10957209478263077063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245986 n ^ Nat.factorial (A241643 n).toNat

end

end A241015.P10957209478263077063

/-! ## A241015.P15446206115521130341

`A245986(n)^A331437(n)!`
-/

namespace A241015.P15446206115521130341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245986 n ^ Nat.factorial (A331437 n).toNat

end

end A241015.P15446206115521130341

/-!
# A241016: Triangle read by rows: T(n, k) = sum of k-th row of n X n square filled with the numbers 1 through n^2 reading across rows left-to-right.

The programs for A241016, the canonical program `A241016.P11659684194773639516` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241016 has offset 1).

The definition of A241016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241016.P11659684194773639516

`C(row(n)+2, 2)+(row(n)+1)²*col(n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241016

/-- `C(row(n)+2, 2)+(row(n)+1)²*col(n)` -/
def P11659684194773639516.Spec : Prop :=
  ∀ n, (P11659684194773639516.a n : ℤ) = A241016 (n + 1)

theorem P11659684194773639516.correct : P11659684194773639516.Spec := by
  intro n
  simp only [A241016, Nat.add_sub_cancel]

end A241016

/-! ## A241016.P1615729959465122680

`(row(n)+1)*((2*col(n)+1)*(row(n)+1)+1)/2`
-/

namespace A241016.P1615729959465122680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * ((2 * SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 1) + 1) : ℚ) / 2

end

end A241016.P1615729959465122680

namespace A241016

/-- `(row(n)+1)*((2*col(n)+1)*(row(n)+1)+1)/2` -/
def P1615729959465122680.Spec : Prop :=
  ∀ n, P1615729959465122680.a n = (A241016 (n + 1) : ℚ)

theorem P1615729959465122680.correct : P1615729959465122680.Spec := by
  intro n
  simp only [A241016, Nat.add_sub_cancel, A241016.P1615729959465122680.a, A241016.P11659684194773639516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A241016

/-! ## A241016.P17235815299495894716

`A162613(n+1)+n`
-/

namespace A241016.P17235815299495894716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162613 (n + 1) + (n : ℤ)

end

end A241016.P17235815299495894716

namespace A241016

/-- `A162613(n+1)+n` -/
def P17235815299495894716.Spec : Prop :=
  ∀ n, P17235815299495894716.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P3686048159402821228

`A110449(A007401(n+1))`
-/

namespace A241016.P3686048159402821228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A007401 (n + 1)).toNat

end

end A241016.P3686048159402821228

namespace A241016

/-- `A110449(A007401(n+1))` -/
def P3686048159402821228.Spec : Prop :=
  ∀ n, P3686048159402821228.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P6153845064089504050

`A110449(∑[A073424(n)+1])`
-/

namespace A241016.P6153845064089504050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241016.P6153845064089504050

namespace A241016

/-- `A110449(∑[A073424(n)+1])` -/
def P6153845064089504050.Spec : Prop :=
  ∀ n, P6153845064089504050.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P883072260768993099

`A110449(∑[A035214(n)]-1)`
-/

namespace A241016.P883072260768993099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A241016.P883072260768993099

namespace A241016

/-- `A110449(∑[A035214(n)]-1)` -/
def P883072260768993099.Spec : Prop :=
  ∀ n, P883072260768993099.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P4798243198250853939

`A110449(comp[A000217(n)-1])`
-/

namespace A241016.P4798243198250853939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A241016.P4798243198250853939

namespace A241016

/-- `A110449(comp[A000217(n)-1])` -/
def P4798243198250853939.Spec : Prop :=
  ∀ n, P4798243198250853939.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P16975117719426763711

`A110449(A014132(n+1)-1)`
-/

namespace A241016.P16975117719426763711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A014132 (n + 1) - 1).toNat

end

end A241016.P16975117719426763711

namespace A241016

/-- `A110449(A014132(n+1)-1)` -/
def P16975117719426763711.Spec : Prop :=
  ∀ n, P16975117719426763711.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P3164045360780474378

`A110449(A002024(n+1)+n)`
-/

namespace A241016.P3164045360780474378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A241016.P3164045360780474378

namespace A241016

/-- `A110449(A002024(n+1)+n)` -/
def P3164045360780474378.Spec : Prop :=
  ∀ n, P3164045360780474378.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P9026764843521897809

`A110449(A003056(n)+1+n)`
-/

namespace A241016.P9026764843521897809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A003056 n + 1 + (n : ℤ)).toNat

end

end A241016.P9026764843521897809

namespace A241016

/-- `A110449(A003056(n)+1+n)` -/
def P9026764843521897809.Spec : Prop :=
  ∀ n, P9026764843521897809.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P17467904744553092688

`A244418(n+1)+A110449(n)`
-/

namespace A241016.P17467904744553092688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) + A110449 n

end

end A241016.P17467904744553092688

namespace A241016

/-- `A244418(n+1)+A110449(n)` -/
def P17467904744553092688.Spec : Prop :=
  ∀ n, P17467904744553092688.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P18112312258883866477

`A162612(n+1)-A061579(n)`
-/

namespace A241016.P18112312258883866477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162612 (n + 1) - A061579 n

end

end A241016.P18112312258883866477

namespace A241016

/-- `A162612(n+1)-A061579(n)` -/
def P18112312258883866477.Spec : Prop :=
  ∀ n, P18112312258883866477.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P9713405496854477395

`A162611(A014132(n+1)-1)+n`
-/

namespace A241016.P9713405496854477395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 (A014132 (n + 1) - 1).toNat + (n : ℤ)

end

end A241016.P9713405496854477395

namespace A241016

/-- `A162611(A014132(n+1)-1)+n` -/
def P9713405496854477395.Spec : Prop :=
  ∀ n, P9713405496854477395.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P13370901993010783633

`A127739(n+1)+A002024(n+1)²*A002262(n)`
-/

namespace A241016.P13370901993010783633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A002024 (n + 1) ^ 2 * A002262 n

end

end A241016.P13370901993010783633

namespace A241016

/-- `A127739(n+1)+A002024(n+1)²*A002262(n)` -/
def P13370901993010783633.Spec : Prop :=
  ∀ n, P13370901993010783633.a n = A241016 (n + 1)

end A241016

/-! ## A241016.P1590533611592921591

`A002260(n+1)*A002522(A002024(n+1))-(n+1)`
-/

namespace A241016.P1590533611592921591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A002522 (A002024 (n + 1)).toNat - (n + 1 : ℤ)

end

end A241016.P1590533611592921591

namespace A241016

/-- `A002260(n+1)*A002522(A002024(n+1))-(n+1)` -/
def P1590533611592921591.Spec : Prop :=
  ∀ n, P1590533611592921591.a n = A241016 (n + 1)

end A241016

/-!
# A241017: Decimal expansion of Sierpiński's S constant, which appears in a series involving the function r(n), defined as the number of representations of the positive integer n as a sum of two squares. This S constant is the usual Sierpiński K constant divided by Pi.

The programs for A241017, there is no canonical definition to state claims against.
-/

/-! ## A241017.P13564903621133040355

`A086058(n+1)`
-/

namespace A241017.P13564903621133040355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086058 (n + 1 + 1)

end

end A241017.P13564903621133040355

/-!
# A241020: a(n) is the smallest j such that the n-digit number consisting of a 1 in position j and 7's in the other n-1 positions is a prime, or 0 if no such prime exists.

The programs for A241020, there is no canonical definition to state claims against.
-/

/-! ## A241020.P604008988007263997

`A002371(gcd(A083515(n+1), A103045(n+1)))`
-/

namespace A241020.P604008988007263997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (Int.gcd (A083515 (n + 1)) (A103045 (n + 1)))

end

end A241020.P604008988007263997

/-! ## A241020.P7396542314385293998

`and(A052535(A046145(n)), A057152(n))`
-/

namespace A241020.P7396542314385293998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052535 (A046145 n).toNat) (A057152 n)

end

end A241020.P7396542314385293998

/-! ## A241020.P11767012774085159336

`A000166(n)%A001222(A143243(n+2))`
-/

namespace A241020.P11767012774085159336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 n) (A001222 (A143243 (n + 2)).toNat)

end

end A241020.P11767012774085159336

/-! ## A241020.P11948946719375937487

`and(A003216(n+1), A058518(A004020(n)))`
-/

namespace A241020.P11948946719375937487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003216 (n + 1)) (A058518 (A004020 n).toNat)

end

end A241020.P11948946719375937487

/-! ## A241020.P14804183565754915293

`and(A003216(n+1), A190649(A353840(n+1)))`
-/

namespace A241020.P14804183565754915293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003216 (n + 1)) (A190649 (A353840 (n + 1)).toNat)

end

end A241020.P14804183565754915293

/-!
# A241021: Smallest prime numbers p of length n having a decimal expansion x(1)x(2)... x(n) such that there exists an index j where x(j) = 1 and x(i) = 9 for i<>j, or 0 if no such prime exists.

The programs for A241021, there is no canonical definition to state claims against.
-/

/-! ## A241021.P8378588990381277893

`A088653(log2(A008574(4^n)))`
-/

namespace A241021.P8378588990381277893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088653 (SequenceMachineLib.roundAway (Real.logb 2 (A008574 (4 ^ n) : ℝ))).toNat

end

end A241021.P8378588990381277893

/-!
# A241022: Smallest prime numbers p of length n having a decimal expansion x(1)x(2)... x(n) such that there exists an index j where x(j) = 1 and x(i) = 3 for i<>j, or 0 if no such prime exists.

The programs for A241022, there is no canonical definition to state claims against.
-/

/-! ## A241022.P4235035640658666381

`record[p?[A032917(A274298(n))]]`
-/

namespace A241022.P4235035640658666381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A274298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241022.P4235035640658666381

/-!
# A241023: Central terms of the triangle in A102413.

The programs for A241023, the canonical program `A241023.P16673000107773081704` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241023 has offset 0).

The definition of A241023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241023.P10525996899173123448

`(ceil(abs(sin(n)))+1)*A123164(n)`
-/

namespace A241023.P10525996899173123448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + 1) * A123164 n

end

end A241023.P10525996899173123448

namespace A241023

/-- `(ceil(abs(sin(n)))+1)*A123164(n)` -/
def P10525996899173123448.Spec : Prop :=
  ∀ n, P10525996899173123448.a n = A241023 n

end A241023

/-! ## A241023.P11100701794900326203

`A123164(n)+A002003(n)`
-/

namespace A241023.P11100701794900326203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + A002003 n

end

end A241023.P11100701794900326203

namespace A241023

/-- `A123164(n)+A002003(n)` -/
def P11100701794900326203.Spec : Prop :=
  ∀ n, P11100701794900326203.a n = A241023 n

end A241023

/-! ## A241023.P3771243575093079720

`abs(A123164(n)*A280560(n))`
-/

namespace A241023.P3771243575093079720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123164 n * A280560 n|

end

end A241023.P3771243575093079720

namespace A241023

/-- `abs(A123164(n)*A280560(n))` -/
def P3771243575093079720.Spec : Prop :=
  ∀ n, P3771243575093079720.a n = A241023 n

end A241023

/-! ## A241023.P16190334631101807293

`A155069(n)+Δ[A050146(n)]`
-/

namespace A241023.P16190334631101807293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n + (f1 (n + 1) - f1 n)

end

end A241023.P16190334631101807293

namespace A241023

/-- `A155069(n)+Δ[A050146(n)]` -/
def P16190334631101807293.Spec : Prop :=
  ∀ n, P16190334631101807293.a n = A241023 n

end A241023

/-! ## A241023.P5374903375950199244

`A000007(n)+2*A002003(n)`
-/

namespace A241023.P5374903375950199244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A002003 n

end

end A241023.P5374903375950199244

namespace A241023

/-- `A000007(n)+2*A002003(n)` -/
def P5374903375950199244.Spec : Prop :=
  ∀ n, P5374903375950199244.a n = A241023 n

end A241023

/-! ## A241023.P11249076533198512041

`A123164(n)+2*A047781(n)`
-/

namespace A241023.P11249076533198512041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + 2 * A047781 n

end

end A241023.P11249076533198512041

namespace A241023

/-- `A123164(n)+2*A047781(n)` -/
def P11249076533198512041.Spec : Prop :=
  ∀ n, P11249076533198512041.a n = A241023 n

end A241023

/-! ## A241023.P16673000107773081704

`(2-A000007(n))*A123164(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A241023

/-- `(2-A000007(n))*A123164(n)` -/
def P16673000107773081704.Spec : Prop :=
  ∀ n, P16673000107773081704.a n = A241023 n

theorem P16673000107773081704.correct : P16673000107773081704.Spec := by
  intro n
  simp only [A241023]

end A241023

/-! ## A241023.P605655652911162368

`A000007(n)+4*A047781(n)`
-/

namespace A241023.P605655652911162368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * A047781 n

end

end A241023.P605655652911162368

namespace A241023

/-- `A000007(n)+4*A047781(n)` -/
def P605655652911162368.Spec : Prop :=
  ∀ n, P605655652911162368.a n = A241023 n

end A241023

/-! ## A241023.P8033936082411478943

`A123164(n)*A280560(2*n)`
-/

namespace A241023.P8033936082411478943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n * A280560 (2 * n)

end

end A241023.P8033936082411478943

namespace A241023

/-- `A123164(n)*A280560(2*n)` -/
def P8033936082411478943.Spec : Prop :=
  ∀ n, P8033936082411478943.a n = A241023 n

end A241023

/-! ## A241023.P17470431478432734721

`Δ[A050146(n)]+abs(A103137(n))`
-/

namespace A241023.P17470431478432734721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |A103137 n|

end

end A241023.P17470431478432734721

namespace A241023

/-- `Δ[A050146(n)]+abs(A103137(n))` -/
def P17470431478432734721.Spec : Prop :=
  ∀ n, P17470431478432734721.a n = A241023 n

end A241023

/-! ## A241023.P15003431903582120853

`A020639(A005893(n))*A123164(n)`
-/

namespace A241023.P15003431903582120853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat * A123164 n

end

end A241023.P15003431903582120853

namespace A241023

/-- `A020639(A005893(n))*A123164(n)` -/
def P15003431903582120853.Spec : Prop :=
  ∀ n, P15003431903582120853.a n = A241023 n

end A241023

/-! ## A241023.P4119934436733889083

`A020639(A008255(n))*A123164(n)`
-/

namespace A241023.P4119934436733889083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008255 n).toNat * A123164 n

end

end A241023.P4119934436733889083

namespace A241023

/-- `A020639(A008255(n))*A123164(n)` -/
def P4119934436733889083.Spec : Prop :=
  ∀ n, P4119934436733889083.a n = A241023 n

end A241023

/-! ## A241023.P4742437465208896768

`A020639(A008574(n))*A123164(n)`
-/

namespace A241023.P4742437465208896768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A123164 n

end

end A241023.P4742437465208896768

namespace A241023

/-- `A020639(A008574(n))*A123164(n)` -/
def P4742437465208896768.Spec : Prop :=
  ∀ n, P4742437465208896768.a n = A241023 n

end A241023

/-! ## A241023.P17176830949025426014

`A020639(A008579(n))*A123164(n)`
-/

namespace A241023.P17176830949025426014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008579 n).toNat * A123164 n

end

end A241023.P17176830949025426014

namespace A241023

/-- `A020639(A008579(n))*A123164(n)` -/
def P17176830949025426014.Spec : Prop :=
  ∀ n, P17176830949025426014.a n = A241023 n

end A241023

/-! ## A241023.P17252688532749167589

`(A001221(A001316(n))+1)*A123164(n)`
-/

namespace A241023.P17252688532749167589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001221 (A001316 n).toNat + 1) * A123164 n

end

end A241023.P17252688532749167589

namespace A241023

/-- `(A001221(A001316(n))+1)*A123164(n)` -/
def P17252688532749167589.Spec : Prop :=
  ∀ n, P17252688532749167589.a n = A241023 n

end A241023

/-! ## A241023.P16892894491129531292

`A001850(n)+A002003(n)-A002002(n)`
-/

namespace A241023.P16892894491129531292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (A002003 n - A002002 n)

end

end A241023.P16892894491129531292

namespace A241023

/-- `A001850(n)+A002003(n)-A002002(n)` -/
def P16892894491129531292.Spec : Prop :=
  ∀ n, P16892894491129531292.a n = A241023 n

end A241023

/-! ## A241023.P13641613950716801688

`A001850(n)+A001850(n)-A110170(n)`
-/

namespace A241023.P13641613950716801688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (A001850 n - A110170 n)

end

end A241023.P13641613950716801688

namespace A241023

/-- `A001850(n)+A001850(n)-A110170(n)` -/
def P13641613950716801688.Spec : Prop :=
  ∀ n, P13641613950716801688.a n = A241023 n

end A241023

/-! ## A241023.P10992257032835866836

`2*A001850(n)-A110170(n)`
-/

namespace A241023.P10992257032835866836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001850 n - A110170 n

end

end A241023.P10992257032835866836

namespace A241023

/-- `2*A001850(n)-A110170(n)` -/
def P10992257032835866836.Spec : Prop :=
  ∀ n, P10992257032835866836.a n = A241023 n

end A241023

/-!
# A241024: S_11 sequence in partition of integers > 1 described in A240521.

The programs for A241024, the canonical program `A241024.P7090105526242822996` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241024 has offset 1).

The definition of A241024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A241024.P7090105526242822996

`A050376(n+1)*A050376(n+3)*A050376(n+4)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A241024

/-- `A050376(n+1)*A050376(n+3)*A050376(n+4)` -/
def P7090105526242822996.Spec : Prop :=
  ∀ n, P7090105526242822996.a n = A241024 (n + 1)

theorem P7090105526242822996.correct : P7090105526242822996.Spec := by
  intro n
  simp only [A241024, Nat.add_sub_cancel]

end A241024

/-! ## A241024.P6976636776365021847

`A050376(n+1)*A240521(n+3)`
-/

namespace A241024.P6976636776365021847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A240521 (n + 3)

end

end A241024.P6976636776365021847

namespace A241024

/-- `A050376(n+1)*A240521(n+3)` -/
def P6976636776365021847.Spec : Prop :=
  ∀ n, P6976636776365021847.a n = A241024 (n + 1)

theorem P6976636776365021847.correct : P6976636776365021847.Spec := by
  intro n
  simp only [A241024, Nat.add_sub_cancel, A241024.P6976636776365021847.a, A241024.P7090105526242822996.a, A050376, A050376.P8445497075527543903.a, A240521, A240521.P8578861033948740818.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241024

/-! ## A241024.P4091518252571708697

`A050376(n+3)*A240536(n+1)`
-/

namespace A241024.P4091518252571708697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 3) * A240536 (n + 1)

end

end A241024.P4091518252571708697

namespace A241024

/-- `A050376(n+3)*A240536(n+1)` -/
def P4091518252571708697.Spec : Prop :=
  ∀ n, P4091518252571708697.a n = A241024 (n + 1)

theorem P4091518252571708697.correct : P4091518252571708697.Spec := by
  intro n
  simp only [A241024, Nat.add_sub_cancel, A241024.P4091518252571708697.a, A241024.P7090105526242822996.a, A050376, A050376.P8445497075527543903.a, A240536, A240536.P362324169712596171.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241024

/-! ## A241024.P9160951043914708823

`A026477(n+2)*A240521(n+3)`
-/

namespace A241024.P9160951043914708823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 2) * A240521 (n + 3)

end

end A241024.P9160951043914708823

namespace A241024

/-- `A026477(n+2)*A240521(n+3)` -/
def P9160951043914708823.Spec : Prop :=
  ∀ n, P9160951043914708823.a n = A241024 (n + 1)

end A241024

/-! ## A241024.P4074886908906001027

`A050376(n+4)*A240522(n+1)`
-/

namespace A241024.P4074886908906001027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 4) * A240522 (n + 1)

end

end A241024.P4074886908906001027

namespace A241024

/-- `A050376(n+4)*A240522(n+1)` -/
def P4074886908906001027.Spec : Prop :=
  ∀ n, P4074886908906001027.a n = A241024 (n + 1)

end A241024

/-!
# A241025: S_13 sequence in partition of integers > 1 described in A240521.

The programs for A241025, the canonical program `A241025.P8181339160921596088` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241025 has offset 1).

The definition of A241025 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A241025.P8181339160921596088

`A050376(n+1)*A050376(n+2)*A050376(n+4)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A241025

/-- `A050376(n+1)*A050376(n+2)*A050376(n+4)` -/
def P8181339160921596088.Spec : Prop :=
  ∀ n, P8181339160921596088.a n = A241025 (n + 1)

theorem P8181339160921596088.correct : P8181339160921596088.Spec := by
  intro n
  simp only [A241025, Nat.add_sub_cancel]

end A241025

/-! ## A241025.P1706425747622777363

`A050376(n+1)*A240522(n+2)`
-/

namespace A241025.P1706425747622777363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A240522 (n + 2)

end

end A241025.P1706425747622777363

namespace A241025

/-- `A050376(n+1)*A240522(n+2)` -/
def P1706425747622777363.Spec : Prop :=
  ∀ n, P1706425747622777363.a n = A241025 (n + 1)

end A241025

/-! ## A241025.P7949779357899848774

`A050376(n+2)*A240536(n+1)`
-/

namespace A241025.P7949779357899848774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 2) * A240536 (n + 1)

end

end A241025.P7949779357899848774

namespace A241025

/-- `A050376(n+2)*A240536(n+1)` -/
def P7949779357899848774.Spec : Prop :=
  ∀ n, P7949779357899848774.a n = A241025 (n + 1)

theorem P7949779357899848774.correct : P7949779357899848774.Spec := by
  intro n
  simp only [A241025, Nat.add_sub_cancel, A241025.P7949779357899848774.a, A241025.P8181339160921596088.a, A050376, A050376.P8445497075527543903.a, A240536, A240536.P362324169712596171.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241025

/-! ## A241025.P14091753927436647968

`A026477(n+2)*A240522(n+2)`
-/

namespace A241025.P14091753927436647968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 2) * A240522 (n + 2)

end

end A241025.P14091753927436647968

namespace A241025

/-- `A026477(n+2)*A240522(n+2)` -/
def P14091753927436647968.Spec : Prop :=
  ∀ n, P14091753927436647968.a n = A241025 (n + 1)

end A241025

/-! ## A241025.P4692406040633959264

`A084400(n+3)*A240536(n+1)`
-/

namespace A241025.P4692406040633959264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 3) * A240536 (n + 1)

end

end A241025.P4692406040633959264

namespace A241025

/-- `A084400(n+3)*A240536(n+1)` -/
def P4692406040633959264.Spec : Prop :=
  ∀ n, P4692406040633959264.a n = A241025 (n + 1)

theorem P4692406040633959264.correct : P4692406040633959264.Spec := by
  intro n
  simp only [A241025, Nat.add_sub_cancel, A241025.P4692406040633959264.a, A241025.P8181339160921596088.a, A050376, A050376.P8445497075527543903.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A240536, A240536.P362324169712596171.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241025

/-!
# A241028: Numbers n such that prime(n)^2 - 2*n is not prime.

The programs for A241028, there is no canonical definition to state claims against.
-/

/-! ## A241028.P13866282696618395929

`eq[char[A173473(n+1)], A000007(n)]`
-/

namespace A241028.P13866282696618395929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241028.P13866282696618395929

/-! ## A241028.P2740769046456374819

`eq[char[A173473(n+1)], A000038(n)]`
-/

namespace A241028.P2740769046456374819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241028.P2740769046456374819

/-! ## A241028.P11984817862278708208

`eq[char[A173473(n+1)], A010051(2*(n+1))]`
-/

namespace A241028.P11984817862278708208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241028.P11984817862278708208

/-! ## A241028.P7943723051267986298

`eq[char[A173473(n+1)], A266220(2*n)]`
-/

namespace A241028.P7943723051267986298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241028.P7943723051267986298

/-! ## A241028.P8073050244576671263

`eq[A055758(n)%2, char[A173473(n+1)]]`
-/

namespace A241028.P8073050244576671263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055758 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173473 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A241028.P8073050244576671263

/-!
# A241029: Sum of n-th powers of divisors of 22.

The programs for A241029, the canonical program `A241029.P6849882888799114982` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241029 has offset 0).

The definition of A241029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241029.P6849882888799114982

`(1+2^n)*(1+11^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241029

/-- `(1+2^n)*(1+11^n)` -/
def P6849882888799114982.Spec : Prop :=
  ∀ n, (P6849882888799114982.a n : ℤ) = A241029 n

theorem P6849882888799114982.correct : P6849882888799114982.Spec := by
  intro n
  simp only [A241029]

end A241029

/-! ## A241029.P1488721594218750931

`lcm(2, A000051(n)*A034524(n))`
-/

namespace A241029.P1488721594218750931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000051 n * A034524 n)

end

end A241029.P1488721594218750931

namespace A241029

/-- `lcm(2, A000051(n)*A034524(n))` -/
def P1488721594218750931.Spec : Prop :=
  ∀ n, (P1488721594218750931.a n : ℤ) = A241029 n

end A241029

/-! ## A241029.P15566292575814484510

`A000051(n)+A000051(n)*A001020(n)`
-/

namespace A241029.P15566292575814484510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000051 n * A001020 n

end

end A241029.P15566292575814484510

namespace A241029

/-- `A000051(n)+A000051(n)*A001020(n)` -/
def P15566292575814484510.Spec : Prop :=
  ∀ n, P15566292575814484510.a n = A241029 n

theorem P15566292575814484510.correct : P15566292575814484510.Spec := by
  intro n
  simp only [A241029, Nat.add_sub_cancel, A241029.P15566292575814484510.a, A241029.P6849882888799114982.a, A000051, A000051.P14067217022188782580.a, A001020, A001020.P6110418391945528251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241029

/-! ## A241029.P7142587405063071919

`A034524(n)+A000079(n)*A034524(n)`
-/

namespace A241029.P7142587405063071919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 n + A000079 n * A034524 n

end

end A241029.P7142587405063071919

namespace A241029

/-- `A034524(n)+A000079(n)*A034524(n)` -/
def P7142587405063071919.Spec : Prop :=
  ∀ n, P7142587405063071919.a n = A241029 n

theorem P7142587405063071919.correct : P7142587405063071919.Spec := by
  intro n
  simp only [A241029, Nat.add_sub_cancel, A241029.P7142587405063071919.a, A241029.P6849882888799114982.a, A000079, A000079.P10855139691139572931.a, A034524, A034524.P14152157889491239874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241029

/-! ## A241029.P2584411891076055106

`A034524(n)*A052548(n)-A034524(n)`
-/

namespace A241029.P2584411891076055106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 n * A052548 n - A034524 n

end

end A241029.P2584411891076055106

namespace A241029

/-- `A034524(n)*A052548(n)-A034524(n)` -/
def P2584411891076055106.Spec : Prop :=
  ∀ n, P2584411891076055106.a n = A241029 n

theorem P2584411891076055106.correct : P2584411891076055106.Spec := by
  intro n
  simp only [A241029, Nat.add_sub_cancel, A241029.P2584411891076055106.a, A241029.P6849882888799114982.a, A034524, A034524.P14152157889491239874.a, A052548, A052548.P18180923888402085992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241029

/-! ## A241029.P6210834231959713198

`(A000051(n)*A034524(n))%A241032(n)`
-/

namespace A241029.P6210834231959713198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n * A034524 n) (A241032 n)

end

end A241029.P6210834231959713198

namespace A241029

/-- `(A000051(n)*A034524(n))%A241032(n)` -/
def P6210834231959713198.Spec : Prop :=
  ∀ n, P6210834231959713198.a n = A241029 n

end A241029

/-!
# A241030: Sum of n-th powers of divisors of 26.

The programs for A241030, the canonical program `A241030.P4556483321455772948` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241030 has offset 0).

The definition of A241030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241030.P4556483321455772948

`(1+2^n)*(1+13^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241030

/-- `(1+2^n)*(1+13^n)` -/
def P4556483321455772948.Spec : Prop :=
  ∀ n, (P4556483321455772948.a n : ℤ) = A241030 n

theorem P4556483321455772948.correct : P4556483321455772948.Spec := by
  intro n
  simp only [A241030]

end A241030

/-! ## A241030.P12010688229076365993

`∑{d}[-a(n-1), #^n]` with `a(0)=26`
-/

namespace A241030.P12010688229076365993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [26] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A241030.P12010688229076365993

namespace A241030

/-- `∑{d}[-a(n-1), #^n]` -/
def P12010688229076365993.Spec : Prop :=
  ∀ n, (P12010688229076365993.a n : ℤ) = A241030 n

end A241030

/-! ## A241030.P6300286918359975721

`A000051(n)+A000051(n)*A001022(n)`
-/

namespace A241030.P6300286918359975721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000051 n * A001022 n

end

end A241030.P6300286918359975721

namespace A241030

/-- `A000051(n)+A000051(n)*A001022(n)` -/
def P6300286918359975721.Spec : Prop :=
  ∀ n, P6300286918359975721.a n = A241030 n

theorem P6300286918359975721.correct : P6300286918359975721.Spec := by
  intro n
  simp only [A241030, Nat.add_sub_cancel, A241030.P6300286918359975721.a, A241030.P4556483321455772948.a, A000051, A000051.P14067217022188782580.a, A001022, A001022.P3547963708719749738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241030

/-! ## A241030.P2519564882050994906

`A000051(n)*A153079(n)-A000051(n)`
-/

namespace A241030.P2519564882050994906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A153079 n - A000051 n

end

end A241030.P2519564882050994906

namespace A241030

/-- `A000051(n)*A153079(n)-A000051(n)` -/
def P2519564882050994906.Spec : Prop :=
  ∀ n, P2519564882050994906.a n = A241030 n

theorem P2519564882050994906.correct : P2519564882050994906.Spec := by
  intro n
  simp only [A241030, Nat.add_sub_cancel, A241030.P2519564882050994906.a, A241030.P4556483321455772948.a, A000051, A000051.P14067217022188782580.a, A153079, A153079.P14027319011045439574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241030

/-! ## A241030.P14077295259159667929

`A141012(n+1)+A000079(n+1)*A193578(n)`
-/

namespace A241030.P14077295259159667929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141012 (n + 1) + A000079 (n + 1) * A193578 n

end

end A241030.P14077295259159667929

namespace A241030

/-- `A141012(n+1)+A000079(n+1)*A193578(n)` -/
def P14077295259159667929.Spec : Prop :=
  ∀ n, P14077295259159667929.a n = A241030 n

end A241030

/-!
# A241031: Sum of n-th powers of divisors of 28.

The programs for A241031, the canonical program `A241031.P16690926330113496279` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241031 has offset 0).

The definition of A241031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241031.P16690926330113496279

`(4^n+2^n+1)*(7^n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241031

/-- `(4^n+2^n+1)*(7^n+1)` -/
def P16690926330113496279.Spec : Prop :=
  ∀ n, (P16690926330113496279.a n : ℤ) = A241031 n

theorem P16690926330113496279.correct : P16690926330113496279.Spec := by
  intro n
  simp only [A241031]

end A241031

/-! ## A241031.P17191094913793957581

`A034491(n)+A034491(n)*A161168(n)`
-/

namespace A241031.P17191094913793957581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n + A034491 n * A161168 n

end

end A241031.P17191094913793957581

namespace A241031

/-- `A034491(n)+A034491(n)*A161168(n)` -/
def P17191094913793957581.Spec : Prop :=
  ∀ n, P17191094913793957581.a n = A241031 n

theorem P17191094913793957581.correct : P17191094913793957581.Spec := by
  intro n
  simp only [A241031, Nat.add_sub_cancel, A241031.P17191094913793957581.a, A241031.P16690926330113496279.a, A034491, A034491.P8360530145105108237.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241031

/-! ## A241031.P3857813916228402513

`A034491(n)+A000079(n)*A141013(n+1)`
-/

namespace A241031.P3857813916228402513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n + A000079 n * A141013 (n + 1)

end

end A241031.P3857813916228402513

namespace A241031

/-- `A034491(n)+A000079(n)*A141013(n+1)` -/
def P3857813916228402513.Spec : Prop :=
  ∀ n, P3857813916228402513.a n = A241031 n

end A241031

/-! ## A241031.P12102167145161175149

`A001576(n)+(A120741(n)+A034494(n))*A001576(n)`
-/

namespace A241031.P12102167145161175149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n + (A120741 n + A034494 n) * A001576 n

end

end A241031.P12102167145161175149

namespace A241031

/-- `A001576(n)+(A120741(n)+A034494(n))*A001576(n)` -/
def P12102167145161175149.Spec : Prop :=
  ∀ n, P12102167145161175149.a n = A241031 n

end A241031

/-!
# A241032: Sum of n-th powers of divisors of 30.

The programs for A241032, the canonical program `A241032.P6138950474190309495` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241032 has offset 0).

The definition of A241032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241032.P6138950474190309495

`(1+2^n)*(1+3^n)*(1+5^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241032

/-- `(1+2^n)*(1+3^n)*(1+5^n)` -/
def P6138950474190309495.Spec : Prop :=
  ∀ n, (P6138950474190309495.a n : ℤ) = A241032 n

theorem P6138950474190309495.correct : P6138950474190309495.Spec := by
  intro n
  simp only [A241032]

end A241032

/-! ## A241032.P13369009443705681361

`A034488(n)*A034517(n)/A000051(n)`
-/

namespace A241032.P13369009443705681361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034488 n * A034517 n : ℚ) / (A000051 n : ℚ)

end

end A241032.P13369009443705681361

namespace A241032

/-- `A034488(n)*A034517(n)/A000051(n)` -/
def P13369009443705681361.Spec : Prop :=
  ∀ n, P13369009443705681361.a n = (A241032 n : ℚ)

end A241032

/-! ## A241032.P2623327385263047167

`A034673(n)/(4^n+1)`
-/

namespace A241032.P2623327385263047167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034673 n : ℚ) / (4 ^ n + 1 : ℚ)

end

end A241032.P2623327385263047167

namespace A241032

/-- `A034673(n)/(4^n+1)` -/
def P2623327385263047167.Spec : Prop :=
  ∀ n, P2623327385263047167.a n = (A241032 n : ℚ)

end A241032

/-! ## A241032.P8336653269950849645

`A034517(n)*A034660(n)/A001576(n)`
-/

namespace A241032.P8336653269950849645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034517 n * A034660 n : ℚ) / (A001576 n : ℚ)

end

end A241032.P8336653269950849645

namespace A241032

/-- `A034517(n)*A034660(n)/A001576(n)` -/
def P8336653269950849645.Spec : Prop :=
  ∀ n, P8336653269950849645.a n = (A241032 n : ℚ)

end A241032

/-! ## A241032.P5162943557370604641

`A034517(n)*A034664(n)/A034496(n)`
-/

namespace A241032.P5162943557370604641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034517 n * A034664 n : ℚ) / (A034496 n : ℚ)

end

end A241032.P5162943557370604641

namespace A241032

/-- `A034517(n)*A034664(n)/A034496(n)` -/
def P5162943557370604641.Spec : Prop :=
  ∀ n, P5162943557370604641.a n = (A241032 n : ℚ)

end A241032

/-!
# A241035: Number of partitions p of n into distinct parts such that max(p) = 2*min(p).

The programs for A241035, there is no canonical definition to state claims against.
-/

/-! ## A241035.P551218058791578382

`A241061(n)-A240874(n)`
-/

namespace A241035.P551218058791578382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - A240874 n

end

end A241035.P551218058791578382

/-! ## A241035.P5080326223605562293

`A241061(n)-(A241067(n)+A241065(n))`
-/

namespace A241035.P5080326223605562293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - (A241067 n + A241065 n)

end

end A241035.P5080326223605562293

/-! ## A241035.P17315785253206257242

`A241061(n)-A241067(n)-A241065(A028310(n))`
-/

namespace A241035.P17315785253206257242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - A241067 n - A241065 (A028310 n).toNat

end

end A241035.P17315785253206257242

/-! ## A241035.P2880585308132246305

`A241036(n)-A241037(n)`
-/

namespace A241035.P2880585308132246305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - A241037 n

end

end A241035.P2880585308132246305

/-! ## A241035.P6413375757993310142

`A241036(n)-(A241064(n)+A241062(n))`
-/

namespace A241035.P6413375757993310142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - (A241064 n + A241062 n)

end

end A241035.P6413375757993310142

/-! ## A241035.P529094203645371233

`(A241061(n)+A241036(n))%A000009(n)`
-/

namespace A241035.P529094203645371233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241061 n + A241036 n) (A000009 n)

end

end A241035.P529094203645371233

/-! ## A241035.P14097288634662711847

`(A241036(n)+A014206(n))%(A241037(n)+A014206(n))`
-/

namespace A241035.P14097288634662711847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241036 n + A014206 n) (A241037 n + A014206 n)

end

end A241035.P14097288634662711847

/-! ## A241035.P5050465521978432325

`(A241036(n)+A045896(n))%(A241037(n)+A045896(n))`
-/

namespace A241035.P5050465521978432325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241036 n + A045896 n) (A241037 n + A045896 n)

end

end A241035.P5050465521978432325

/-! ## A241035.P17287399783354677984

`(A241036(n)+A003506(n+1))%(A241037(n)+A003506(n+1))`
-/

namespace A241035.P17287399783354677984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241036 n + A003506 (n + 1)) (A241037 n + A003506 (n + 1))

end

end A241035.P17287399783354677984

/-! ## A241035.P6567923623109274848

`A241068(n)-(A241067(n)+A241037(n))`
-/

namespace A241035.P6567923623109274848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241068 n - (A241067 n + A241037 n)

end

end A241035.P6567923623109274848

/-!
# A241036: Number of partitions p of n into distinct parts such that max(p) >= 2*min(p).

The programs for A241036, there is no canonical definition to state claims against.
-/

/-! ## A241036.P6651431237833160515

`A241037(n)+A241035(n)`
-/

namespace A241036.P6651431237833160515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n + A241035 n

end

end A241036.P6651431237833160515

/-! ## A241036.P15122062312372558110

`round(A000009(n)-1/acot(A240874(n)))`
-/

namespace A241036.P15122062312372558110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000009 n : ℝ) - 1 / SequenceMachineLib.acot (A240874 n : ℝ))

end

end A241036.P15122062312372558110

/-! ## A241036.P15287898645465142541

`A000009(n)-A240874(round(acot(n)+n))`
-/

namespace A241036.P15287898645465142541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240874 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241036.P15287898645465142541

/-! ## A241036.P4969701028819825491

`A111133(n)+1-round(1/acot(A240874(n)))`
-/

namespace A241036.P4969701028819825491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A240874 n : ℝ))

end

end A241036.P4969701028819825491

/-! ## A241036.P1629653109169722027

`A111133(n)+1-A240874(round(acot(n)+n))`
-/

namespace A241036.P1629653109169722027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A240874 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241036.P1629653109169722027

/-! ## A241036.P18277656919320797868

`A000009(n)-A240874(A028310(n))`
-/

namespace A241036.P18277656919320797868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240874 (A028310 n).toNat

end

end A241036.P18277656919320797868

/-! ## A241036.P4581295853356090401

`A035457(A004277(n))-A240874(n)`
-/

namespace A241036.P4581295853356090401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240874 n

end

end A241036.P4581295853356090401

/-! ## A241036.P8231920753613785160

`A285229(A000124(n))-A240874(n)`
-/

namespace A241036.P8231920753613785160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 n).toNat - A240874 n

end

end A241036.P8231920753613785160

/-! ## A241036.P2248571500202448804

`abs(A081360(n))-A240874(A028310(n))`
-/

namespace A241036.P2248571500202448804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A240874 (A028310 n).toNat

end

end A241036.P2248571500202448804

/-! ## A241036.P2398656843632890843

`A000009(n)-A240874(A137735(n²))`
-/

namespace A241036.P2398656843632890843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240874 (A137735 (n ^ 2)).toNat

end

end A241036.P2398656843632890843

/-!
# A241037: Number of partitions p of n into distinct parts such that max(p) > 2*min(p).

The programs for A241037, there is no canonical definition to state claims against.
-/

/-! ## A241037.P2895929661184548170

`A241062(n)+A241064(n)`
-/

namespace A241037.P2895929661184548170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241062 n + A241064 n

end

end A241037.P2895929661184548170

/-! ## A241037.P1891327604419604096

`A241036(n)-A241035(n)`
-/

namespace A241037.P1891327604419604096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - A241035 n

end

end A241037.P1891327604419604096

/-! ## A241037.P9690468313441601434

`A000009(n)-round(1/acot(A241061(n)))`
-/

namespace A241037.P9690468313441601434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A241061 n : ℝ))

end

end A241037.P9690468313441601434

/-! ## A241037.P5872135205337578096

`A000009(n)-A241061(round(acot(n)+n))`
-/

namespace A241037.P5872135205337578096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241061 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241037.P5872135205337578096

/-! ## A241037.P17497457936088680990

`A111133(n)+1-round(1/acot(A241061(n)))`
-/

namespace A241037.P17497457936088680990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A241061 n : ℝ))

end

end A241037.P17497457936088680990

/-! ## A241037.P2997638868228933396

`A111133(n)+1-A241061(round(acot(n)+n))`
-/

namespace A241037.P2997638868228933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A241061 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A241037.P2997638868228933396

/-! ## A241037.P2160317852739098926

`A000009(n)-A241061(A028310(n))`
-/

namespace A241037.P2160317852739098926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241061 (A028310 n).toNat

end

end A241037.P2160317852739098926

/-! ## A241037.P18259321283212507178

`A035457(A004277(n))-A241061(n)`
-/

namespace A241037.P18259321283212507178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241061 n

end

end A241037.P18259321283212507178

/-! ## A241037.P2733310004820955372

`A285229(A000124(n))-A241061(n)`
-/

namespace A241037.P2733310004820955372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 n).toNat - A241061 n

end

end A241037.P2733310004820955372

/-! ## A241037.P2641117982356664208

`abs(A081360(n))-A241061(A028310(n))`
-/

namespace A241037.P2641117982356664208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A241061 (A028310 n).toNat

end

end A241037.P2641117982356664208

/-!
# A241038: a(n) = A000217(A058481(n)).

The programs for A241038, the canonical program `A241038.P1926185971484958833` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241038 has offset 0).

The definition of A241038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241038.P1926185971484958833

`1/2*3^(2*n)-3/2*3^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241038

/-- `1/2*3^(2*n)-3/2*3^n+1` -/
def P1926185971484958833.Spec : Prop :=
  ∀ n, P1926185971484958833.a n = (A241038 n : ℚ)

end A241038

/-! ## A241038.P17731065685286843708

`∑[12*a(n-1)-27*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=27`
-/

namespace A241038.P17731065685286843708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 27] fun n f1 =>
  12 * f1 (n - 1) - 27 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241038.P17731065685286843708

namespace A241038

/-- `∑[12*a(n-1)-27*a(n-2)]` -/
def P17731065685286843708.Spec : Prop :=
  ∀ n, P17731065685286843708.a n = A241038 n

end A241038

/-! ## A241038.P10630331801006815197

`∑[A052156(2*n)-3^n]`
-/

namespace A241038.P10630331801006815197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (2 * n) - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241038.P10630331801006815197

namespace A241038

/-- `∑[A052156(2*n)-3^n]` -/
def P10630331801006815197.Spec : Prop :=
  ∀ n, P10630331801006815197.a n = A241038 n

end A241038

/-! ## A241038.P18406354417305660272

`lcm(2-3^n, record[A255044(n)])`
-/

namespace A241038.P18406354417305660272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (3 ^ n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A241038.P18406354417305660272

namespace A241038

/-- `lcm(2-3^n, record[A255044(n)])` -/
def P18406354417305660272.Spec : Prop :=
  ∀ n, (P18406354417305660272.a n : ℤ) = A241038 n

end A241038

/-! ## A241038.P13590481789292752644

`lcm(A003462(n), A168589(n))`
-/

namespace A241038.P13590481789292752644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003462 n) (A168589 n)

end

end A241038.P13590481789292752644

namespace A241038

/-- `lcm(A003462(n), A168589(n))` -/
def P13590481789292752644.Spec : Prop :=
  ∀ n, (P13590481789292752644.a n : ℤ) = A241038 n

end A241038

/-! ## A241038.P7623507442354224743

`∑[A025192(n)²-∑[A025192(n)]]`
-/

namespace A241038.P7623507442354224743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241038.P7623507442354224743

namespace A241038

/-- `∑[A025192(n)²-∑[A025192(n)]]` -/
def P7623507442354224743.Spec : Prop :=
  ∀ n, P7623507442354224743.a n = A241038 n

end A241038

/-! ## A241038.P10465849324965735472

`C(3^n-1, 2)`
-/

namespace A241038.P10465849324965735472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((3 ^ n : ℤ) - 1).toNat 2

end

end A241038.P10465849324965735472

namespace A241038

/-- `C(3^n-1, 2)` -/
def P10465849324965735472.Spec : Prop :=
  ∀ n, (P10465849324965735472.a n : ℤ) = A241038 n

end A241038

/-!
# A241040: Differences between primes having primitive root 2.

The programs for A241040, there is no canonical definition to state claims against.
-/

/-! ## A241040.P14355688057179070237

`Δ[A001122(n+1)]`
-/

namespace A241040.P14355688057179070237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P14355688057179070237

/-! ## A241040.P2431492547836971301

`A001122(n+2)-A001122(n+1)`
-/

namespace A241040.P2431492547836971301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 2) - A001122 (n + 1)

end

end A241040.P2431492547836971301

/-! ## A241040.P4031178586352710282

`Δ[A050229(n+3)]`
-/

namespace A241040.P4031178586352710282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P4031178586352710282

/-! ## A241040.P1514224149816221708

`Δ[A071642(n+3)]`
-/

namespace A241040.P1514224149816221708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P1514224149816221708

/-! ## A241040.P3103155770158503841

`A050229(n+4)-A050229(n+3)`
-/

namespace A241040.P3103155770158503841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 4) - A050229 (n + 3)

end

end A241040.P3103155770158503841

/-! ## A241040.P10060271997111937955

`A071642(n+4)-A071642(n+3)`
-/

namespace A241040.P10060271997111937955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 4) - A071642 (n + 3)

end

end A241040.P10060271997111937955

/-! ## A241040.P2027225836405140088

`Δ[p?[A139099(n+1)]]`
-/

namespace A241040.P2027225836405140088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P2027225836405140088

/-! ## A241040.P12654474661859807510

`Δ[p?[A167791(n+1)]]`
-/

namespace A241040.P12654474661859807510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P12654474661859807510

/-! ## A241040.P9915459100761632582

`Δ[A217948(n+1)]`
-/

namespace A241040.P9915459100761632582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P9915459100761632582

/-! ## A241040.P3980468341998606550

`Δ[2*A051733(n+1)]`
-/

namespace A241040.P3980468341998606550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P3980468341998606550

/-! ## A241040.P9324179961359602193

`A217948(n+2)-A217948(n+1)`
-/

namespace A241040.P9324179961359602193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 2) - A217948 (n + 1)

end

end A241040.P9324179961359602193

/-! ## A241040.P18364623669503727798

`Δ[record[A001122(A242112(n))]]`
-/

namespace A241040.P18364623669503727798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P18364623669503727798

/-! ## A241040.P13955446061413721447

`Δ[A179194(n+1)]`
-/

namespace A241040.P13955446061413721447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P13955446061413721447

/-! ## A241040.P2255962189587613028

`A179194(n+2)-A179194(n+1)`
-/

namespace A241040.P2255962189587613028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 2) - A179194 (n + 1)

end

end A241040.P2255962189587613028

/-! ## A241040.P13615147194810070341

`Δ[record[A014664(n+2)]]`
-/

namespace A241040.P13615147194810070341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P13615147194810070341

/-! ## A241040.P7600918486365651996

`Δ[A000040(A072190(n+1))]`
-/

namespace A241040.P7600918486365651996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P7600918486365651996

/-! ## A241040.P16754676727479092791

`Δ[p?[A141231(n+1)]]`
-/

namespace A241040.P16754676727479092791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P16754676727479092791

/-! ## A241040.P13830288255612508230

`Δ[eq[3, A319351(n+1)]]`
-/

namespace A241040.P13830288255612508230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319351 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A241040.P13830288255612508230

/-! ## A241040.P9376231567520913554

`Δ[p?[A319009(n+1)]]`
-/

namespace A241040.P9376231567520913554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P9376231567520913554

/-! ## A241040.P8886076608862237152

`Δ[A005408(A051733(n+1))]`
-/

namespace A241040.P8886076608862237152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A051733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241040.P8886076608862237152

/-!
# A241041: Differences between primes having smallest primitive root 3.

The programs for A241041, there is no canonical definition to state claims against.
-/

/-! ## A241041.P7458547690452842632

`Δ[A001123(n+1)]`
-/

namespace A241041.P7458547690452842632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241041.P7458547690452842632

/-! ## A241041.P1606777481290151038

`A001123(n+2)-A001123(n+1)`
-/

namespace A241041.P1606777481290151038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001123 (n + 2) - A001123 (n + 1)

end

end A241041.P1606777481290151038

/-! ## A241041.P5069497420480772086

`Δ[record[A001123(A152271(n))]]`
-/

namespace A241041.P5069497420480772086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001123 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241041.P5069497420480772086

/-! ## A241041.P2019930182678474993

`Δ[record[A001123(A158416(n))]]`
-/

namespace A241041.P2019930182678474993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001123 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241041.P2019930182678474993

/-! ## A241041.P14909729607052112

`Δ[∩[A019334(n+1), A048976(n+1)]]`
-/

namespace A241041.P14909729607052112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A241041.P14909729607052112

/-! ## A241041.P15251202940518137345

`Δ[record[A001123(A286543(n))]]`
-/

namespace A241041.P15251202940518137345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001123 (A286543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241041.P15251202940518137345

/-!
# A241042: Differences between primes having smallest primitive root 5.

The programs for A241042, there is no canonical definition to state claims against.
-/

/-! ## A241042.P1376902895221153842

`Δ[A001124(n+1)]`
-/

namespace A241042.P1376902895221153842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241042.P1376902895221153842

/-! ## A241042.P12315301358844680003

`A001124(n+2)-A001124(n+1)`
-/

namespace A241042.P12315301358844680003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001124 (n + 2) - A001124 (n + 1)

end

end A241042.P12315301358844680003

/-! ## A241042.P5327038127979887011

`Δ[record[A001124(A133310(n))]]`
-/

namespace A241042.P5327038127979887011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001124 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241042.P5327038127979887011

/-! ## A241042.P9026546913774769669

`Δ[record[A001124(A293428(n))]]`
-/

namespace A241042.P9026546913774769669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001124 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241042.P9026546913774769669

/-! ## A241042.P4028319772029925050

`Δ[record[A001124(A286543(n))]]`
-/

namespace A241042.P4028319772029925050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001124 (A286543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241042.P4028319772029925050

/-! ## A241042.P16546992783876777202

`Δ[p?[(A001918(n+1)-4)*A000040(n+1)]]`
-/

namespace A241042.P16546992783876777202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001918 (n + 1) - 4) * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241042.P16546992783876777202

/-! ## A241042.P11185915455394454466

`Δ[record[A001124(A137734(n))]]`
-/

namespace A241042.P11185915455394454466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001124 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241042.P11185915455394454466

/-!
# A241043: Primes having primitive roots 2 and 3.

The programs for A241043, there is no canonical definition to state claims against.
-/

/-! ## A241043.P1290894516064365992

`A045344(lt[1, A060084(n+1)-2])`
-/

namespace A241043.P1290894516064365992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241043.P1290894516064365992

/-! ## A241043.P11317491933135915671

`A065091(lt[1, A060084(n+1)-2])`
-/

namespace A241043.P11317491933135915671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241043.P11317491933135915671

/-! ## A241043.P1220507003363408177

`A045344(lt[2, A060084(n+1)/2])`
-/

namespace A241043.P1220507003363408177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060084 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A241043.P1220507003363408177

/-! ## A241043.P7336972383515005372

`A065091(lt[2, A060084(n+1)/2])`
-/

namespace A241043.P7336972383515005372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060084 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A241043.P7336972383515005372

/-! ## A241043.P17211779912903558178

`∩[A001122(n+1), A019334(n+1)]`
-/

namespace A241043.P17211779912903558178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P17211779912903558178

/-! ## A241043.P15242173455447991999

`∩[A019334(n+1), A139099(n+1)]`
-/

namespace A241043.P15242173455447991999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P15242173455447991999

/-! ## A241043.P4056092695461030208

`∩[A019334(n+1), A141231(n+1)]`
-/

namespace A241043.P4056092695461030208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P4056092695461030208

/-! ## A241043.P4073805327431523154

`∩[A001122(n+1), A167792(n+1)]`
-/

namespace A241043.P4073805327431523154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P4073805327431523154

/-! ## A241043.P8847282499986500299

`∩[A019334(n+1), A167791(n+1)]`
-/

namespace A241043.P8847282499986500299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P8847282499986500299

/-! ## A241043.P17430664442031147928

`∩[A001122(n+1), A191609(n+1)]`
-/

namespace A241043.P17430664442031147928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P17430664442031147928

/-! ## A241043.P13573182915748042727

`∩[A019334(n+1), A179383(n+1)]`
-/

namespace A241043.P13573182915748042727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P13573182915748042727

/-! ## A241043.P11131018283617608779

`∩[A019334(n+1), A191609(n+1)]`
-/

namespace A241043.P11131018283617608779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P11131018283617608779

/-! ## A241043.P2544840771832370945

`∩[A050229(n+1), A191609(n+1)]`
-/

namespace A241043.P2544840771832370945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P2544840771832370945

/-! ## A241043.P14151947613075749084

`∩[A139099(n+1), A191609(n+1)]`
-/

namespace A241043.P14151947613075749084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P14151947613075749084

/-! ## A241043.P13900095986625892654

`∩[A141231(n+1), A191609(n+1)]`
-/

namespace A241043.P13900095986625892654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P13900095986625892654

/-! ## A241043.P16965260840227612945

`∩[A167791(n+1), A191609(n+1)]`
-/

namespace A241043.P16965260840227612945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P16965260840227612945

/-! ## A241043.P4237982240748241393

`∩[A167792(n+1), A191609(n+1)]`
-/

namespace A241043.P4237982240748241393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P4237982240748241393

/-! ## A241043.P3915947946297392771

`∩[A179383(n+1), A191609(n+1)]`
-/

namespace A241043.P3915947946297392771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P3915947946297392771

/-! ## A241043.P2127004611279004696

`∩[A019334(n+1), A319009(n+1)]`
-/

namespace A241043.P2127004611279004696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P2127004611279004696

/-! ## A241043.P721513982369886229

`∩[A191609(n+1), A319009(n+1)]`
-/

namespace A241043.P721513982369886229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241043.P721513982369886229

/-!
# A241044: Primes having primitive roots 2, 3, and 5.

The programs for A241044, there is no canonical definition to state claims against.
-/

/-! ## A241044.P7141708275284105690

`A045319(lt[5, A060084(n+1)])`
-/

namespace A241044.P7141708275284105690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241044.P7141708275284105690

/-! ## A241044.P13090239938143714749

`A000040(lt[5, A060084(n+1)]+1)`
-/

namespace A241044.P13090239938143714749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A241044.P13090239938143714749

/-! ## A241044.P2647435802360563658

`∩[A019335(n+1), A241043(n+1)]`
-/

namespace A241044.P2647435802360563658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241044.P2647435802360563658

/-! ## A241044.P17306014183589422618

`∩[A167793(n+1), A241043(n+1)]`
-/

namespace A241044.P17306014183589422618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241044.P17306014183589422618

/-! ## A241044.P8261920205711043672

`∩[A071522(n+1)+1, A241043(n+1)]`
-/

namespace A241044.P8261920205711043672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071522 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241044.P8261920205711043672

/-!
# A241045: Primes having primitive roots 2, 3, 5, and 7.

The programs for A241045, there is no canonical definition to state claims against.
-/

/-! ## A241045.P13114189824164123069

`∩[A019337(n+1), A241044(n+1)]`
-/

namespace A241045.P13114189824164123069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241045.P13114189824164123069

/-! ## A241045.P8780676691978076962

`∩[A167795(n+1), A241044(n+1)]`
-/

namespace A241045.P8780676691978076962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241045.P8780676691978076962

/-! ## A241045.P13854668081012827019

`A045319(lt[7, A060084(n+1)])`
-/

namespace A241045.P13854668081012827019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241045.P13854668081012827019

/-! ## A241045.P7238353843158522735

`A045344(lt[7, A060084(n+1)])`
-/

namespace A241045.P7238353843158522735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241045.P7238353843158522735

/-! ## A241045.P11008408869441677813

`A065091(lt[7, A060084(n+1)])`
-/

namespace A241045.P11008408869441677813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241045.P11008408869441677813

/-!
# A241046: Primes having primitive roots 2, 3, 5, 7, and 11.

The programs for A241046, there is no canonical definition to state claims against.
-/

/-! ## A241046.P2939622611565158577

`∩[A019339(n+1), A241045(n+1)]`
-/

namespace A241046.P2939622611565158577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241046.P2939622611565158577

/-! ## A241046.P13485421201530109256

`∩[A240028(n+1), A241045(n+1)]`
-/

namespace A241046.P13485421201530109256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241046.P13485421201530109256

/-!
# A241047: Primes having primitive roots 2, 3, 5, 7, 11, and 13.

The programs for A241047, there is no canonical definition to state claims against.
-/

/-! ## A241047.P12882869893764719296

`∩[A140002(A090109(n+1)), A140016(n+1)]`
-/

namespace A241047.P12882869893764719296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140002 (A090109 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241047.P12882869893764719296

/-! ## A241047.P3233639368849763184

`A014973(∩[A140002(n+1), A140016(n+1)])`
-/

namespace A241047.P3233639368849763184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140016 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A241047.P3233639368849763184

/-! ## A241047.P13614972554488643828

`A028310(∩[A140002(n+1), A140016(n+1)])`
-/

namespace A241047.P13614972554488643828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140016 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A241047.P13614972554488643828

/-!
# A241050: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241050, there is no canonical definition to state claims against.
-/

/-! ## A241050.P2569511652863506538

`A241054(∑[n+2])`
-/

namespace A241050.P2569511652863506538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241050.P2569511652863506538

/-! ## A241050.P10684911002756697136

`A241054(A000096(n+1))+char[15]`
-/

namespace A241050.P10684911002756697136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241050.P10684911002756697136

/-! ## A241050.P6623103442935171733

`A241054(A000096(n+1))%A000032(n+8)`
-/

namespace A241050.P6623103442935171733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241054 (A000096 (n + 1)).toNat) (A000032 (n + 8))

end

end A241050.P6623103442935171733

/-! ## A241050.P10023955488231903644

`A000041(C(n, n²))*A241054(A000096(n+1))`
-/

namespace A241050.P10023955488231903644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A241054 (A000096 (n + 1)).toNat

end

end A241050.P10023955488231903644

/-! ## A241050.P12587833311471779688

`A007318(A007318(2*n))*A241054(A000096(n+1))`
-/

namespace A241050.P12587833311471779688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A241054 (A000096 (n + 1)).toNat

end

end A241050.P12587833311471779688

/-!
# A241051: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241051, there is no canonical definition to state claims against.
-/

/-! ## A241051.P7577771781358212226

`A241054(∑[n+3]+1)`
-/

namespace A241051.P7577771781358212226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241051.P7577771781358212226

/-! ## A241051.P8693026268758159323

`A241054(A034856(n+2))%A111009(n+1)`
-/

namespace A241051.P8693026268758159323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241054 (A034856 (n + 2)).toNat) (A111009 (n + 1))

end

end A241051.P8693026268758159323

/-!
# A241052: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241052, there is no canonical definition to state claims against.
-/

/-! ## A241052.P15171617175423998311

`A241054(∑[n+4]+3)`
-/

namespace A241052.P15171617175423998311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A241052.P15171617175423998311

/-!
# A241053: Number of n X 5 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241053, there is no canonical definition to state claims against.
-/

/-! ## A241053.P2881659527327070327

`A241054(Δ[A264443(n)])`
-/

namespace A241053.P2881659527327070327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (f1 (n + 1) - f1 n).toNat

end

end A241053.P2881659527327070327

/-! ## A241053.P5572153622450387687

`A241054(A046691(n+3))`
-/

namespace A241053.P5572153622450387687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A046691 (n + 3)).toNat

end

end A241053.P5572153622450387687

/-! ## A241053.P7248241685443267793

`A241054(A056115(n)+11)`
-/

namespace A241053.P7248241685443267793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A056115 n + 11).toNat

end

end A241053.P7248241685443267793

/-! ## A241053.P14868937302388116378

`A241054(eq[3, A152157(n)])`
-/

namespace A241053.P14868937302388116378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241053.P14868937302388116378

/-! ## A241053.P1865659092692376180

`A241054(eq[4, A193592(n)])`
-/

namespace A241053.P1865659092692376180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241053.P1865659092692376180

/-!
# A241055: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241055, there is no canonical definition to state claims against.
-/

/-! ## A241055.P13444790064806641482

`A241054(∑[n+1]+2)`
-/

namespace A241055.P13444790064806641482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241055.P13444790064806641482

/-! ## A241055.P6232264007736694481

`A241054(A000096(n)+3)+char[16]`
-/

namespace A241055.P6232264007736694481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241055.P6232264007736694481

/-! ## A241055.P7802237103963882114

`lcm(A001221(n+2), A241054(A000096(n)+3))`
-/

namespace A241055.P7802237103963882114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A241054 (A000096 n + 3).toNat)

end

end A241055.P7802237103963882114

/-! ## A241055.P16502208437641446226

`A241054(A000096(n)+3)%A000108(n+6)`
-/

namespace A241055.P16502208437641446226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241054 (A000096 n + 3).toNat) (A000108 (n + 6))

end

end A241055.P16502208437641446226

/-! ## A241055.P9360684508534715759

`A007318(C(2, n))*A241054(A000096(n)+3)`
-/

namespace A241055.P9360684508534715759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A241054 (A000096 n + 3).toNat

end

end A241055.P9360684508534715759

/-!
# A241056: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241056, there is no canonical definition to state claims against.
-/

/-! ## A241056.P274379848534453805

`A241054(∑[n+2]+4)`
-/

namespace A241056.P274379848534453805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241056.P274379848534453805

/-! ## A241056.P1448315805435151668

`A241054(A167614(n+1))+char[15]`
-/

namespace A241056.P1448315805435151668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241056.P1448315805435151668

/-! ## A241056.P13080714519296507777

`A241054(A167614(n+1))%A096637(n)`
-/

namespace A241056.P13080714519296507777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241054 (A167614 (n + 1)).toNat) (A096637 n)

end

end A241056.P13080714519296507777

/-! ## A241056.P7849959419754825751

`C(A241054(A167614(n+1)), A151934(n)!)`
-/

namespace A241056.P7849959419754825751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241054 (A167614 (n + 1)).toNat).toNat (Nat.factorial (A151934 n).toNat)

end

end A241056.P7849959419754825751

/-! ## A241056.P17060427708964841287

`gcd(A151934(n+1), A241054(A167614(n+1)))`
-/

namespace A241056.P17060427708964841287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151934 (n + 1)) (A241054 (A167614 (n + 1)).toNat)

end

end A241056.P17060427708964841287

/-!
# A241057: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241057, there is no canonical definition to state claims against.
-/

/-! ## A241057.P3960848609842082122

`A241054(∑[n+3]+7)`
-/

namespace A241057.P3960848609842082122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241057.P3960848609842082122

/-! ## A241057.P10366944795038998555

`or(A241054(A052905(n)+9), A241173(n))`
-/

namespace A241057.P10366944795038998555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241054 (A052905 n + 9).toNat) (A241173 n)

end

end A241057.P10366944795038998555

/-! ## A241057.P7206993642293825987

`A241054(A167614(n+2)+1)%A217002(n+1)`
-/

namespace A241057.P7206993642293825987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241054 (A167614 (n + 2) + 1).toNat) (A217002 (n + 1))

end

end A241057.P7206993642293825987

/-!
# A241058: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241058, there is no canonical definition to state claims against.
-/

/-! ## A241058.P8475076595220582298

`A241054(A167499(n+3))`
-/

namespace A241058.P8475076595220582298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A167499 (n + 3)).toNat

end

end A241058.P8475076595220582298

/-! ## A241058.P17743650207867229516

`A241054(A155212(n)+13)`
-/

namespace A241058.P17743650207867229516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A155212 n + 13).toNat

end

end A241058.P17743650207867229516

/-! ## A241058.P14264499598918822883

`A241054(A056000(n)+15)`
-/

namespace A241058.P14264499598918822883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A056000 n + 15).toNat

end

end A241058.P14264499598918822883

/-! ## A241058.P15100892753716627274

`A241054(eq[7, A066657(n)])`
-/

namespace A241058.P15100892753716627274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241058.P15100892753716627274

/-! ## A241058.P12844902559488631898

`A241054(A166136(n+3)-1)`
-/

namespace A241058.P12844902559488631898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241054 (A166136 (n + 3) - 1).toNat

end

end A241058.P12844902559488631898

/-!
# A241059: Antipalindromic primes: primes with an even number of digits such that the digits in the first half of the prime differ from the corresponding digits of the second half.

The programs for A241059, there is no canonical definition to state claims against.
-/

/-! ## A241059.P4044118614708335733

`p?[A308407(2*(n+1))+Δ[A308407(2*n+1)]]`
-/

namespace A241059.P4044118614708335733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308407 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308407 (2 * (n + 1)) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241059.P4044118614708335733

/-!
# A241061: Number of partitions p of n into distinct parts such that max(p) < 1 + 2*min(p).

The programs for A241061, there is no canonical definition to state claims against.
-/

/-! ## A241061.P3425225647410239773

`A241035(n)+A240874(n)`
-/

namespace A241061.P3425225647410239773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 n + A240874 n

end

end A241061.P3425225647410239773

/-! ## A241061.P8653200480376486688

`A241035(n)+A241067(n)+A241065(n)`
-/

namespace A241061.P8653200480376486688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 n + (A241067 n + A241065 n)

end

end A241061.P8653200480376486688

/-! ## A241061.P16193997963894793660

`A240874(n)-(A014206(n)%2-A241035(n))`
-/

namespace A241061.P16193997963894793660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 n - (Int.tmod (A014206 n) 2 - A241035 n)

end

end A241061.P16193997963894793660

/-! ## A241061.P4341837711753472286

`A045896(n)%(A045896(n)-A240874(n)-A241035(n))`
-/

namespace A241061.P4341837711753472286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045896 n) (A045896 n - A240874 n - A241035 n)

end

end A241061.P4341837711753472286

/-! ## A241061.P16039309584125686426

`(A000009(n)-A241037(n))%Δ[n²]`
-/

namespace A241061.P16039309584125686426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241037 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A241061.P16039309584125686426

/-! ## A241061.P4392211625909097842

`A035457(A004277(n))-A241037(n)`
-/

namespace A241061.P4392211625909097842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241037 n

end

end A241061.P4392211625909097842

/-! ## A241061.P10171960393788663217

`A000009(n)-(A241037(n)+A000007(n))`
-/

namespace A241061.P10171960393788663217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241037 n + A000007 n)

end

end A241061.P10171960393788663217

/-! ## A241061.P8895641886493026273

`A111133(n)+A178334(n)-A241037(n)`
-/

namespace A241061.P8895641886493026273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (A178334 n - A241037 n)

end

end A241061.P8895641886493026273

/-! ## A241061.P738889866144736765

`A240874(n)+A241036(n)-A241037(n)`
-/

namespace A241061.P738889866144736765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 n + (A241036 n - A241037 n)

end

end A241061.P738889866144736765

/-! ## A241061.P9016034283317379978

`A000009(n)*A178334(n)-A241037(n)`
-/

namespace A241061.P9016034283317379978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A178334 n - A241037 n

end

end A241061.P9016034283317379978

/-!
# A241062: Number of partitions p of n into distinct parts such that max(p) = 1 + 2*min(p).

The programs for A241062, there is no canonical definition to state claims against.
-/

/-! ## A241062.P13933622729003964226

`A241037(n)-A241064(n)`
-/

namespace A241062.P13933622729003964226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n - A241064 n

end

end A241062.P13933622729003964226

/-! ## A241062.P11187620583797897937

`A241036(n)-(A241064(n)+A241035(n))`
-/

namespace A241062.P11187620583797897937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - (A241064 n + A241035 n)

end

end A241062.P11187620583797897937

/-! ## A241062.P3609147079878474951

`A000009(n)-A241061(A028310(n))-A241064(n)`
-/

namespace A241062.P3609147079878474951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241061 (A028310 n).toNat - A241064 n

end

end A241062.P3609147079878474951

/-! ## A241062.P7918082212968293399

`A035457(A004277(n))-A241061(n)-A241064(n)`
-/

namespace A241062.P7918082212968293399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241061 n - A241064 n

end

end A241062.P7918082212968293399

/-! ## A241062.P16698073103898832202

`A241036(n)-A241035(n)-A241064(A028310(n))`
-/

namespace A241062.P16698073103898832202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - A241035 n - A241064 (A028310 n).toNat

end

end A241062.P16698073103898832202

/-! ## A241062.P8243486120819514799

`A285229(A000124(n))-A241061(n)-A241064(n)`
-/

namespace A241062.P8243486120819514799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 n).toNat - A241061 n - A241064 n

end

end A241062.P8243486120819514799

/-!
# A241063: Number of partitions p of n into distinct parts such that max(p) = 3*min(p).

The programs for A241063, there is no canonical definition to state claims against.
-/

/-! ## A241063.P15051297559953946189

`A041532(n)%A055642(A269494(2*n+1))`
-/

namespace A241063.P15051297559953946189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041532 n) (A055642 (A269494 (2 * n + 1)).toNat)

end

end A241063.P15051297559953946189

/-! ## A241063.P4621532563545330563

`A227429(n+1)%A211100(A178470(n))`
-/

namespace A241063.P4621532563545330563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227429 (n + 1)) (A211100 (A178470 n).toNat)

end

end A241063.P4621532563545330563

/-! ## A241063.P17574083622759255815

`∑[A281555(2*(n+2))]%A124156(n+1)`
-/

namespace A241063.P17574083622759255815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281555 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A124156 (n + 1))

end

end A241063.P17574083622759255815

/-! ## A241063.P11733018513541958095

`A080732(A209365(n+1)+A040511(n))`
-/

namespace A241063.P11733018513541958095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A209365 (n + 1) + A040511 n).toNat

end

end A241063.P11733018513541958095

/-! ## A241063.P3579379165188930136

`A083896(A339655(n+2)-A316101(n))`
-/

namespace A241063.P3579379165188930136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A339655 (n + 2) - A316101 n).toNat

end

end A241063.P3579379165188930136

/-!
# A241064: Number of partitions p of n into distinct parts such that max(p) > 1 + 2*min(p).

The programs for A241064, there is no canonical definition to state claims against.
-/

/-! ## A241064.P2451818702030113965

`A241037(n)-A241062(n)`
-/

namespace A241064.P2451818702030113965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n - A241062 n

end

end A241064.P2451818702030113965

/-! ## A241064.P7964025613878879644

`A241036(n)-(A241062(n)+A241035(n))`
-/

namespace A241064.P7964025613878879644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - (A241062 n + A241035 n)

end

end A241064.P7964025613878879644

/-! ## A241064.P5451987889046922112

`A000009(n)-A241061(A028310(n))-A241062(n)`
-/

namespace A241064.P5451987889046922112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241061 (A028310 n).toNat - A241062 n

end

end A241064.P5451987889046922112

/-! ## A241064.P2842094790154452504

`A035457(A004277(n))-A241061(n)-A241062(n)`
-/

namespace A241064.P2842094790154452504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241061 n - A241062 n

end

end A241064.P2842094790154452504

/-! ## A241064.P11400619060422633332

`A241036(n)-A241035(n)-A241062(A028310(n))`
-/

namespace A241064.P11400619060422633332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 n - A241035 n - A241062 (A028310 n).toNat

end

end A241064.P11400619060422633332

/-! ## A241064.P12530347459343365747

`A285229(A000124(n))-A241061(n)-A241062(n)`
-/

namespace A241064.P12530347459343365747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 n).toNat - A241061 n - A241062 n

end

end A241064.P12530347459343365747

/-!
# A241065: Number of partitions p of n into distinct parts such that max(p) < -1 + 2*min(p).

The programs for A241065, there is no canonical definition to state claims against.
-/

/-! ## A241065.P2806462201386986

`A240874(n)-A241067(n)`
-/

namespace A241065.P2806462201386986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 n - A241067 n

end

end A241065.P2806462201386986

/-! ## A241065.P10738314256110860729

`A241061(n)-(A241067(n)+A241035(n))`
-/

namespace A241065.P10738314256110860729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - (A241067 n + A241035 n)

end

end A241065.P10738314256110860729

/-! ## A241065.P6327116159409762285

`A052839(n)-(A241036(n)+1)-A241067(n)`
-/

namespace A241065.P6327116159409762285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241036 n + 1) - A241067 n

end

end A241065.P6327116159409762285

/-! ## A241065.P593440440695154190

`(A000009(n)-A241036(n))%(n+1)-A241067(n)`
-/

namespace A241065.P593440440695154190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241036 n) (n + 1 : ℤ) - A241067 n

end

end A241065.P593440440695154190

/-! ## A241065.P1309078199012217127

`A035457(A004277(n))-(A241067(n)+A241036(n))`
-/

namespace A241065.P1309078199012217127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - (A241067 n + A241036 n)

end

end A241065.P1309078199012217127

/-! ## A241065.P8741807437886068952

`A000009(n)-(A241036(n)+A000007(n))-A241067(n)`
-/

namespace A241065.P8741807437886068952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241036 n + A000007 n) - A241067 n

end

end A241065.P8741807437886068952

/-! ## A241065.P13793715487330417075

`A241037(n)+A241061(n)-A241036(n)-A241067(n)`
-/

namespace A241065.P13793715487330417075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n + (A241061 n - A241036 n) - A241067 n

end

end A241065.P13793715487330417075

/-! ## A241065.P2038275433511394376

`(A000009(n)-A241068(n))%(n+1)`
-/

namespace A241065.P2038275433511394376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241068 n) (n + 1 : ℤ)

end

end A241065.P2038275433511394376

/-! ## A241065.P6634390809420813559

`A240874(n)+A241036(n)-A241068(n)`
-/

namespace A241065.P6634390809420813559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 n + (A241036 n - A241068 n)

end

end A241065.P6634390809420813559

/-!
# A241067: Number of partitions p of n into distinct parts such that max(p) = -1 + 2*min(p).

The programs for A241067, there is no canonical definition to state claims against.
-/

/-! ## A241067.P10956673992515785501

`A240874(n)-A241065(n)`
-/

namespace A241067.P10956673992515785501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 n - A241065 n

end

end A241067.P10956673992515785501

/-! ## A241067.P11129967688565414934

`A241061(n)-(A241065(n)+A241035(n))`
-/

namespace A241067.P11129967688565414934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - (A241065 n + A241035 n)

end

end A241067.P11129967688565414934

/-! ## A241067.P13557261599029018161

`A241061(n)-A241035(n)-A241065(A028310(n))`
-/

namespace A241067.P13557261599029018161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - A241035 n - A241065 (A028310 n).toNat

end

end A241067.P13557261599029018161

/-! ## A241067.P12006318717550808919

`A052839(n)-(A241036(n)+1)-A241065(n)`
-/

namespace A241067.P12006318717550808919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241036 n + 1) - A241065 n

end

end A241067.P12006318717550808919

/-! ## A241067.P849501558414834025

`(A000009(n)-A241036(n))%(n+1)-A241065(n)`
-/

namespace A241067.P849501558414834025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241036 n) (n + 1 : ℤ) - A241065 n

end

end A241067.P849501558414834025

/-! ## A241067.P4957366662872185829

`A035457(A004277(n))-(A241065(n)+A241036(n))`
-/

namespace A241067.P4957366662872185829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - (A241065 n + A241036 n)

end

end A241067.P4957366662872185829

/-! ## A241067.P2058073341598670921

`A000009(n)-(A241036(n)+A000007(n))-A241065(n)`
-/

namespace A241067.P2058073341598670921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241036 n + A000007 n) - A241065 n

end

end A241067.P2058073341598670921

/-! ## A241067.P9941176693479756749

`A241037(n)+A241061(n)-A241036(n)-A241065(n)`
-/

namespace A241067.P9941176693479756749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n + (A241061 n - A241036 n) - A241065 n

end

end A241067.P9941176693479756749

/-! ## A241067.P15604257706116151951

`A000009(n)-A241036(n)-and(1, A000010(n+2))-A241065(n)`
-/

namespace A241067.P15604257706116151951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241036 n - Int.land 1 (A000010 (n + 2)) - A241065 n

end

end A241067.P15604257706116151951

/-! ## A241067.P15370012166268317462

`A241068(n)-A241036(n)`
-/

namespace A241067.P15370012166268317462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241068 n - A241036 n

end

end A241067.P15370012166268317462

/-!
# A241068: Number of partitions p of n into distinct parts such that max(p) >= -1 + 2*min(p).

The programs for A241068, there is no canonical definition to state claims against.
-/

/-! ## A241068.P67997301029381402

`A241067(n)+A241036(n)`
-/

namespace A241068.P67997301029381402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241067 n + A241036 n

end

end A241068.P67997301029381402

/-! ## A241068.P4655646907802741534

`A052839(n)-(A241065(n)+1)`
-/

namespace A241068.P4655646907802741534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241065 n + 1)

end

end A241068.P4655646907802741534

/-! ## A241068.P8371032922222088585

`A035457(A004277(n))-A241065(n)`
-/

namespace A241068.P8371032922222088585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241065 n

end

end A241068.P8371032922222088585

/-! ## A241068.P14533631968373128055

`A023443(A052839(n)-A241065(n))`
-/

namespace A241068.P14533631968373128055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A052839 n - A241065 n).toNat

end

end A241068.P14533631968373128055

/-! ## A241068.P17333016643528860354

`A285229(A000124(n))-A241065(n)`
-/

namespace A241068.P17333016643528860354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A000124 n).toNat - A241065 n

end

end A241068.P17333016643528860354

/-! ## A241068.P3352008651095980018

`A241035(n)+A241067(n)+A241037(n)`
-/

namespace A241068.P3352008651095980018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 n + (A241067 n + A241037 n)

end

end A241068.P3352008651095980018

/-! ## A241068.P12152920912861562200

`A000009(n)-(A241065(n)+A000007(n))`
-/

namespace A241068.P12152920912861562200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241065 n + A000007 n)

end

end A241068.P12152920912861562200

/-! ## A241068.P16645682258192003958

`A111133(n)+A178334(n)-A241065(n)`
-/

namespace A241068.P16645682258192003958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (A178334 n - A241065 n)

end

end A241068.P16645682258192003958

/-! ## A241068.P10636394077372281626

`A240874(n)+A241036(n)-A241065(n)`
-/

namespace A241068.P10636394077372281626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 n + (A241036 n - A241065 n)

end

end A241068.P10636394077372281626

/-! ## A241068.P15288303973195250323

`A241037(n)+A241061(n)-A241065(n)`
-/

namespace A241068.P15288303973195250323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n + (A241061 n - A241065 n)

end

end A241068.P15288303973195250323

/-!
# A241069: Number of partitions p of n into distinct parts such that max(p) = 4*min(p).

The programs for A241069, there is no canonical definition to state claims against.
-/

/-! ## A241069.P3895083184251900028

`A188172(A242447(3*n+2)+A085853(2*n+3))`
-/

namespace A241069.P3895083184251900028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A242447 (3 * n + 2) + A085853 (2 * n + 3)).toNat

end

end A241069.P3895083184251900028

/-! ## A241069.P1942620749479757940

`A277146(A211619(n+1))`
-/

namespace A241069.P1942620749479757940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277146 (A211619 (n + 1)).toNat

end

end A241069.P1942620749479757940

/-! ## A241069.P6348766418224690945

`A237584(A286970(n)+1)`
-/

namespace A241069.P6348766418224690945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237584 (A286970 n + 1).toNat

end

end A241069.P6348766418224690945

/-! ## A241069.P253536246231764960

`A086010(A229816(2*n)+n)`
-/

namespace A241069.P253536246231764960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 (A229816 (2 * n) + (n : ℤ)).toNat

end

end A241069.P253536246231764960

/-! ## A241069.P9930906835968965333

`and(∑[A343992(n+4)], A164295(n+1))`
-/

namespace A241069.P9930906835968965333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343992 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A164295 (n + 1))

end

end A241069.P9930906835968965333

/-!
# A241070: Least number k such that k^n + (k-1)^n + ... + 3^n + 2^n is prime, or 0 if no such k exists.

The programs for A241070, there is no canonical definition to state claims against.
-/

/-! ## A241070.P11311842446595916146

`(n%2)^n*A213617(n+1)`
-/

namespace A241070.P11311842446595916146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A213617 (n + 1)

end

end A241070.P11311842446595916146

/-! ## A241070.P15760977324852018616

`A046665(n+1)+a(n-2)` with `a(0)=2, a(1)=3, a(2)=0`
-/

namespace A241070.P15760977324852018616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 0] fun n a =>
  A046665 (n + 1) + a (n - 2)

end

end A241070.P15760977324852018616

/-! ## A241070.P8716694041485886360

`char[-(n*(-1)^n)]*A341830(n+1)`
-/

namespace A241070.P8716694041485886360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A341830 (n + 1)

end

end A241070.P8716694041485886360

/-! ## A241070.P18405178688708994229

`A128621(A321990(n+2)+1)`
-/

namespace A241070.P18405178688708994229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128621 (A321990 (n + 2) + 1).toNat

end

end A241070.P18405178688708994229

/-! ## A241070.P16317367813374678908

`A281457(A003329(n+3)+14)`
-/

namespace A241070.P16317367813374678908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281457 (A003329 (n + 3) + 14).toNat

end

end A241070.P16317367813374678908

/-!
# A241073: Number of n X 2 0..2 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..2 introduced in row major order.

The programs for A241073, there is no canonical definition to state claims against.
-/

/-! ## A241073.P6395321542427646844

`A241078(∑[n+1]+2)`
-/

namespace A241073.P6395321542427646844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241073.P6395321542427646844

/-! ## A241073.P10615123769584642802

`record[A241078(n+1)/A156365(n)]`
-/

namespace A241073.P10615123769584642802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241078 (n + 1) : ℚ) / (A156365 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241073.P10615123769584642802

/-! ## A241073.P10119308245364806022

`record[A241078(n+1)/A156366(n)]`
-/

namespace A241073.P10119308245364806022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241078 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241073.P10119308245364806022

/-! ## A241073.P5886017360552490454

`record[A241078(n+3)/A078939(n)]`
-/

namespace A241073.P5886017360552490454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241078 (n + 3) : ℚ) / (A078939 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241073.P5886017360552490454

/-! ## A241073.P12780965125744199391

`record[gcd(A241078(n+1), A284455(n+1))]`
-/

namespace A241073.P12780965125744199391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241078 (n + 1)) (A284455 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241073.P12780965125744199391

/-!
# A241074: Number of nX3 0..2 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..2 introduced in row major order.

The programs for A241074, there is no canonical definition to state claims against.
-/

/-! ## A241074.P1580340339604175616

`A241078(∑[n+2]+4)`
-/

namespace A241074.P1580340339604175616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241074.P1580340339604175616

/-! ## A241074.P12610082986387742740

`A241078(A167614(n+1))+A025443(n)`
-/

namespace A241074.P12610082986387742740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A167614 (n + 1)).toNat + A025443 n

end

end A241074.P12610082986387742740

/-! ## A241074.P15003079945954605960

`gcd(A000038(n), A241078(A167614(n+1)))`
-/

namespace A241074.P15003079945954605960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A241078 (A167614 (n + 1)).toNat)

end

end A241074.P15003079945954605960

/-! ## A241074.P4764418324676505548

`lcm(A000034(n), A241078(A167614(n+1)))`
-/

namespace A241074.P4764418324676505548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A241078 (A167614 (n + 1)).toNat)

end

end A241074.P4764418324676505548

/-! ## A241074.P11965998950539431142

`A241078(A167614(n+1))%A289674(n+1)`
-/

namespace A241074.P11965998950539431142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241078 (A167614 (n + 1)).toNat) (A289674 (n + 1))

end

end A241074.P11965998950539431142

/-!
# A241075: Number of n X 4 0..2 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..2 introduced in row major order.

The programs for A241075, there is no canonical definition to state claims against.
-/

/-! ## A241075.P7875552931388096952

`A241078(C(n+5, 2)-n)`
-/

namespace A241075.P7875552931388096952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (Nat.choose (n + 5) 2 - n)

end

end A241075.P7875552931388096952

/-! ## A241075.P15011379819932737080

`A241078(A374004(n+1))`
-/

namespace A241075.P15011379819932737080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A374004 (n + 1)).toNat

end

end A241075.P15011379819932737080

/-! ## A241075.P13683155090444857885

`A241078(A141214(n)+7)`
-/

namespace A241075.P13683155090444857885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A141214 n + 7).toNat

end

end A241075.P13683155090444857885

/-! ## A241075.P7579390192037216691

`A241078(A052905(n)+9)`
-/

namespace A241075.P7579390192037216691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A052905 n + 9).toNat

end

end A241075.P7579390192037216691

/-! ## A241075.P3353611787545156755

`A241078(A055999(n)+10)`
-/

namespace A241075.P3353611787545156755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A055999 n + 10).toNat

end

end A241075.P3353611787545156755

/-!
# A241076: Number of nX5 0..2 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..2 introduced in row major order.

The programs for A241076, there is no canonical definition to state claims against.
-/

/-! ## A241076.P6473046974999405844

`A241078(∑[n+4]+11)`
-/

namespace A241076.P6473046974999405844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A241076.P6473046974999405844

/-!
# A241077: Number of nX6 0..2 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..2 introduced in row major order.

The programs for A241077, there is no canonical definition to state claims against.
-/

/-! ## A241077.P18214047925303176039

`A241078(A374007(n+1))`
-/

namespace A241077.P18214047925303176039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A374007 (n + 1)).toNat

end

end A241077.P18214047925303176039

/-! ## A241077.P611142073225230852

`A241078(A166136(n+4))`
-/

namespace A241077.P611142073225230852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A166136 (n + 4)).toNat

end

end A241077.P611142073225230852

/-! ## A241077.P1828864241121024849

`A241078(A167499(n+4)+1)`
-/

namespace A241077.P1828864241121024849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (A167499 (n + 4) + 1).toNat

end

end A241077.P1828864241121024849

/-! ## A241077.P6553938849900137244

`A241078(eq[7, A131818(n+1)])`
-/

namespace A241077.P6553938849900137244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241077.P6553938849900137244

/-! ## A241077.P2010083588394510513

`A241078(Δ[A023545(n+1)]+10)`
-/

namespace A241077.P2010083588394510513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241078 (f1 (n + 1) - f1 n + 10).toNat

end

end A241077.P2010083588394510513

/-!
# A241078: T(n,k)=Number of nXk 0..2 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..2 introduced in row major order.

The programs for A241078, there is no canonical definition to state claims against.
-/

/-! ## A241078.P15459732265838645333

`A344845(A102310(n+1))`
-/

namespace A241078.P15459732265838645333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344845 (A102310 (n + 1)).toNat

end

end A241078.P15459732265838645333

/-! ## A241078.P18399932727119272197

`A263846(A233113(n+1))`
-/

namespace A241078.P18399932727119272197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A233113 (n + 1)).toNat

end

end A241078.P18399932727119272197

/-! ## A241078.P13552966608260978290

`A232846(A282885(n+1)+1)`
-/

namespace A241078.P13552966608260978290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232846 (A282885 (n + 1) + 1).toNat

end

end A241078.P13552966608260978290

/-! ## A241078.P3904656116326192715

`A209640(A056941(n))+A055372(n)`
-/

namespace A241078.P3904656116326192715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209640 (A056941 n).toNat + A055372 n

end

end A241078.P3904656116326192715

/-! ## A241078.P6602050159248333983

`A032742(A185238(3*n+1)+A038208(n))`
-/

namespace A241078.P6602050159248333983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A185238 (3 * n + 1) + A038208 n).toNat

end

end A241078.P6602050159248333983

/-!
# A241079: If n is a perfect square, a(n) = 0. If n is not a perfect square, a(n) is the number of final digits necessary to rule out n as a perfect square, or -1 if cannot be ruled out as a perfect square using any group of final digits.

The programs for A241079, there is no canonical definition to state claims against.
-/

/-! ## A241079.P4018894786668193039

`A001221(A003586(A007913(n+1)*A050873(n+1)))`
-/

namespace A241079.P4018894786668193039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003586 (A007913 (n + 1) * A050873 (n + 1)).toNat).toNat

end

end A241079.P4018894786668193039

/-! ## A241079.P769363879479984487

`A129251(∑{d}[A033014(n+1), #])`
-/

namespace A241079.P769363879479984487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A241079.P769363879479984487

/-! ## A241079.P9578119752776635277

`A056169(A340830(2*(2*n+1)))`
-/

namespace A241079.P9578119752776635277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A340830 (2 * (2 * n + 1))).toNat

end

end A241079.P9578119752776635277

/-! ## A241079.P16197558657149453016

`A125916(A046092(n)*A139716(n+1))`
-/

namespace A241079.P16197558657149453016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125916 (A046092 n * A139716 (n + 1)).toNat

end

end A241079.P16197558657149453016

/-! ## A241079.P3721781712249914602

`A342753(A227950(n+1))+A162642(n+1)`
-/

namespace A241079.P3721781712249914602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A227950 (n + 1)).toNat + A162642 (n + 1)

end

end A241079.P3721781712249914602

/-!
# A241080: Near-misses for A094783: values where A137849(n) = n-1.

The programs for A241080, there is no canonical definition to state claims against.
-/

/-! ## A241080.P17795721227487932759

`eq[1, A241972(A028310(n))]`
-/

namespace A241080.P17795721227487932759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241080.P17795721227487932759

/-! ## A241080.P16632261528647653770

`A020725(eq[1, A241972(n+1)])`
-/

namespace A241080.P16632261528647653770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241080.P16632261528647653770

/-! ## A241080.P8066497650656249218

`A020725(eq[n, A137849(n+1)])`
-/

namespace A241080.P8066497650656249218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241080.P8066497650656249218

/-!
# A241081: Numbers that are not perfect squares but that can never be ruled out as perfect squares by any final group of digits.

The programs for A241081, there is no canonical definition to state claims against.
-/

/-! ## A241081.P17519592545339195479

`filter[A241971(n+1), A049240(#)]`
-/

namespace A241081.P17519592545339195479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A241081.P17519592545339195479

/-! ## A241081.P8698173607705017445

`filter[A241971(n+1), A267594(#)]`
-/

namespace A241081.P8698173607705017445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A241081.P8698173607705017445

/-! ## A241081.P12613219400002292855

`filter[A241971(n+1), A267612(#)]`
-/

namespace A241081.P12613219400002292855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A241081.P12613219400002292855

/-! ## A241081.P3205650247958431912

`filter[A241971(n+1), A267635(#)]`
-/

namespace A241081.P3205650247958431912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A241081.P3205650247958431912

/-! ## A241081.P1351013896940264136

`filter[A241971(n+2), A132350(#)]`
-/

namespace A241081.P1351013896940264136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A241081.P1351013896940264136

/-!
# A241082: a(n) = n for 1 and prime numbers. For composite numbers, first prime term in sequence starting with n and each time adding smallest prime number not a divisor of the preceding term.

The programs for A241082, there is no canonical definition to state claims against.
-/

/-! ## A241082.P17716942379201850836

`A007918(A000032(a(and(1, n)))+n)` with `a(0)=1, a(1)=2`
-/

namespace A241082.P17716942379201850836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007918 (A000032 (a (Nat.land 1 n)).toNat + (n : ℤ)).toNat

end

end A241082.P17716942379201850836

/-! ## A241082.P15695262606116381036

`A151800(A236348(a(and(1, n)))+n)` with `a(0)=1, a(1)=2`
-/

namespace A241082.P15695262606116381036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A151800 (A236348 (a (Nat.land 1 n)).toNat + (n : ℤ)).toNat

end

end A241082.P15695262606116381036

/-! ## A241082.P4180947388381700300

`A159477(2%A000005(n+1)+n+1)`
-/

namespace A241082.P4180947388381700300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (Int.tmod 2 (A000005 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A241082.P4180947388381700300

/-! ## A241082.P16790128343188966169

`A151800(A167482(n+1))%(2*(n+1))`
-/

namespace A241082.P16790128343188966169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A167482 (n + 1)).toNat) (2 * (n + 1) : ℤ)

end

end A241082.P16790128343188966169

/-! ## A241082.P13923514916346779699

`A151800(A110314(a(and(1, n)))+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A241082.P13923514916346779699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A151800 (A110314 (a (Nat.land 1 n)).toNat + (n + 1 : ℤ)).toNat

end

end A241082.P13923514916346779699

/-! ## A241082.P8149770256356043960

`A066169(A065190(n+1))%A000230(n)`
-/

namespace A241082.P8149770256356043960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066169 (A065190 (n + 1)).toNat) (A000230 n)

end

end A241082.P8149770256356043960

/-! ## A241082.P16602949805699909281

`A066169(A090964(n))%A000045(n+3)`
-/

namespace A241082.P16602949805699909281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066169 (A090964 n).toNat) (A000045 (n + 3))

end

end A241082.P16602949805699909281

/-! ## A241082.P1355053738470215581

`A066169(A062157(n)+1+n)%A000045(n+3)`
-/

namespace A241082.P1355053738470215581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066169 (A062157 n + 1 + (n : ℤ)).toNat) (A000045 (n + 3))

end

end A241082.P1355053738470215581

/-! ## A241082.P4586507579570541342

`A014963(A151800(n)+A096500(n+1))%(2*(n+1))`
-/

namespace A241082.P4586507579570541342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A151800 n + A096500 (n + 1)).toNat) (2 * (n + 1) : ℤ)

end

end A241082.P4586507579570541342

/-!
# A241083: LCM of n and largest integer <= sqrt(n).

The programs for A241083, the canonical program `A241083.P5344495399168875109` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241083 has offset 1).

The definition of A241083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241083.P5344495399168875109

`lcm(n+1, floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241083

/-- `lcm(n+1, floor(sqrt(n+1)))` -/
def P5344495399168875109.Spec : Prop :=
  ∀ n, (P5344495399168875109.a n : ℤ) = A241083 (n + 1)

theorem P5344495399168875109.correct : P5344495399168875109.Spec := by
  intro n
  simp only [A241083, Nat.add_sub_cancel]

end A241083

/-! ## A241083.P8900851725149366379

`(n+1)*A075119(n+1)`
-/

namespace A241083.P8900851725149366379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075119 (n + 1)

end

end A241083.P8900851725149366379

namespace A241083

/-- `(n+1)*A075119(n+1)` -/
def P8900851725149366379.Spec : Prop :=
  ∀ n, P8900851725149366379.a n = A241083 (n + 1)

end A241083

/-! ## A241083.P1092161041137353224

`sqrt(lcm((n+1)², A137735(n+1)²))`
-/

namespace A241083.P1092161041137353224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm ((n + 1) ^ 2 : ℤ) (A137735 (n + 1) ^ 2) : ℝ)

end

end A241083.P1092161041137353224

namespace A241083

/-- `sqrt(lcm((n+1)², A137735(n+1)²))` -/
def P1092161041137353224.Spec : Prop :=
  ∀ n, P1092161041137353224.a n = (A241083 (n + 1) : ℝ)

end A241083

/-! ## A241083.P18181974777162366590

`A000196(n+1)*A073890(n+1)`
-/

namespace A241083.P18181974777162366590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) * A073890 (n + 1)

end

end A241083.P18181974777162366590

namespace A241083

/-- `A000196(n+1)*A073890(n+1)` -/
def P18181974777162366590.Spec : Prop :=
  ∀ n, P18181974777162366590.a n = A241083 (n + 1)

end A241083

/-! ## A241083.P13729482388435491222

`(n+1)*A026741(A256098(n+1))`
-/

namespace A241083.P13729482388435491222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A256098 (n + 1)).toNat

end

end A241083.P13729482388435491222

namespace A241083

/-- `(n+1)*A026741(A256098(n+1))` -/
def P13729482388435491222.Spec : Prop :=
  ∀ n, P13729482388435491222.a n = A241083 (n + 1)

end A241083

/-! ## A241083.P13586844760490142176

`A174804(n+1)/(A067815(n+1)*A135034(n+1))`
-/

namespace A241083.P13586844760490142176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174804 (n + 1) : ℚ) / (A067815 (n + 1) * A135034 (n + 1) : ℚ)

end

end A241083.P13586844760490142176

namespace A241083

/-- `A174804(n+1)/(A067815(n+1)*A135034(n+1))` -/
def P13586844760490142176.Spec : Prop :=
  ∀ n, P13586844760490142176.a n = (A241083 (n + 1) : ℚ)

end A241083

/-! ## A241083.P3849407318896631343

`A000027(lcm(A000027(n+1), A000196(n+1)))`
-/

namespace A241083.P3849407318896631343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A000027 (n + 1)) (A000196 (n + 1)))

end

end A241083.P3849407318896631343

namespace A241083

/-- `A000027(lcm(A000027(n+1), A000196(n+1)))` -/
def P3849407318896631343.Spec : Prop :=
  ∀ n, P3849407318896631343.a n = A241083 (n + 1)

end A241083

/-! ## A241083.P13458268271299569210

`A051173(A000196(n+1)+∑[n])`
-/

namespace A241083.P13458268271299569210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (A000196 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A241083.P13458268271299569210

namespace A241083

/-- `A051173(A000196(n+1)+∑[n])` -/
def P13458268271299569210.Spec : Prop :=
  ∀ n, P13458268271299569210.a n = A241083 (n + 1)

end A241083

/-! ## A241083.P7332197694360210228

`(n+1)*A326700(A319423(n+1))`
-/

namespace A241083.P7332197694360210228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326700 (A319423 (n + 1)).toNat

end

end A241083.P7332197694360210228

namespace A241083

/-- `(n+1)*A326700(A319423(n+1))` -/
def P7332197694360210228.Spec : Prop :=
  ∀ n, P7332197694360210228.a n = A241083 (n + 1)

end A241083

/-!
# A241084: Sum of the second largest parts of the partitions of 4n into 4 parts.

The programs for A241084, the canonical program `A241084.P18000526313484503449` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241084 has offset 1).

The definition of A241084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241084.P18000526313484503449

`∑[A240711(n+1)-A135036(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A241084

/-- `∑[A240711(n+1)-A135036(n+1)]` -/
def P18000526313484503449.Spec : Prop :=
  ∀ n, P18000526313484503449.a n = A241084 (n + 1)

theorem P18000526313484503449.correct : P18000526313484503449.Spec := by
  intro n
  simp only [A241084, Nat.add_sub_cancel]

end A241084

/-! ## A241084.P8130986619307686380

`A243011(n+1)-(A242727(n+1)+A239667(n+1))`
-/

namespace A241084.P8130986619307686380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243011 (n + 1) - (A242727 (n + 1) + A239667 (n + 1))

end

end A241084.P8130986619307686380

namespace A241084

/-- `A243011(n+1)-(A242727(n+1)+A239667(n+1))` -/
def P8130986619307686380.Spec : Prop :=
  ∀ n, P8130986619307686380.a n = A241084 (n + 1)

end A241084

/-! ## A241084.P12032535660595576061

`A308759(4*(n+1))`
-/

namespace A241084.P12032535660595576061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 (4 * (n + 1))

end

end A241084.P12032535660595576061

namespace A241084

/-- `A308759(4*(n+1))` -/
def P12032535660595576061.Spec : Prop :=
  ∀ n, P12032535660595576061.a n = A241084 (n + 1)

end A241084

/-! ## A241084.P11336665174204431481

`or(A000007(n), A308759(A008586(n+1)))`
-/

namespace A241084.P11336665174204431481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A308759 (A008586 (n + 1)).toNat)

end

end A241084.P11336665174204431481

namespace A241084

/-- `or(A000007(n), A308759(A008586(n+1)))` -/
def P11336665174204431481.Spec : Prop :=
  ∀ n, P11336665174204431481.a n = A241084 (n + 1)

end A241084

/-! ## A241084.P2317580136255281500

`A308759(A008586(n+1))+A000007(n+1)`
-/

namespace A241084.P2317580136255281500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 (A008586 (n + 1)).toNat + A000007 (n + 1)

end

end A241084.P2317580136255281500

namespace A241084

/-- `A308759(A008586(n+1))+A000007(n+1)` -/
def P2317580136255281500.Spec : Prop :=
  ∀ n, P2317580136255281500.a n = A241084 (n + 1)

end A241084

/-!
# A241085: Number of partitions p of n into distinct parts such that max(p) < 2*(number of parts of p).

The programs for A241085, there is no canonical definition to state claims against.
-/

/-! ## A241085.P9340756148258314894

`A241086(n)-A241087(n)`
-/

namespace A241085.P9340756148258314894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n - A241087 n

end

end A241085.P9340756148258314894

/-! ## A241085.P18176222363443977240

`A241086(n)+A241087(n)*A260196(n)`
-/

namespace A241085.P18176222363443977240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + A241087 n * A260196 n

end

end A241085.P18176222363443977240

/-! ## A241085.P2245091354806494095

`A241086(n)+-A241087(n)%A000143(n)`
-/

namespace A241085.P2245091354806494095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + Int.tmod (-A241087 n) (A000143 n)

end

end A241085.P2245091354806494095

/-! ## A241085.P2403805728170323415

`A241091(n)-(A241092(n)+A241087(n))`
-/

namespace A241085.P2403805728170323415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - (A241092 n + A241087 n)

end

end A241085.P2403805728170323415

/-! ## A241085.P16187083872234415090

`A241091(n)-A241092(n)-A241087(A028310(n))`
-/

namespace A241085.P16187083872234415090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - A241092 n - A241087 (A028310 n).toNat

end

end A241085.P16187083872234415090

/-! ## A241085.P15606993159050595866

`A052839(n)-(A241089(n)+1)-A241087(n)`
-/

namespace A241085.P15606993159050595866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241089 n + 1) - A241087 n

end

end A241085.P15606993159050595866

/-! ## A241085.P13504167205334918361

`A061199(∑[n]+1)-A241089(n)-A241087(n)`
-/

namespace A241085.P13504167205334918361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241089 n - A241087 n

end

end A241085.P13504167205334918361

/-! ## A241085.P6260669458046570895

`A241091(n)+A241093(n)-A241089(n)-A241087(n)`
-/

namespace A241085.P6260669458046570895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n + (A241093 n - A241089 n) - A241087 n

end

end A241085.P6260669458046570895

/-! ## A241085.P4895204636751187961

`A052839(n)-(A241088(n)+1)`
-/

namespace A241085.P4895204636751187961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241088 n + 1)

end

end A241085.P4895204636751187961

/-! ## A241085.P4078018890071071016

`A061199(∑[n]+1)-A241088(n)`
-/

namespace A241085.P4078018890071071016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241088 n

end

end A241085.P4078018890071071016

/-!
# A241086: Number of partitions p of n into distinct parts such that max(p) <= 2*(number of parts of p).

The programs for A241086, there is no canonical definition to state claims against.
-/

/-! ## A241086.P14520692600812052536

`A241087(n)+A241085(n)`
-/

namespace A241086.P14520692600812052536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 n + A241085 n

end

end A241086.P14520692600812052536

/-! ## A241086.P17756509293893305760

`A241091(n)-A241092(n)`
-/

namespace A241086.P17756509293893305760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - A241092 n

end

end A241086.P17756509293893305760

/-! ## A241086.P16903205733879765636

`A241091(n)+A241092(n)*A302050(A020484(n))`
-/

namespace A241086.P16903205733879765636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n + A241092 n * A302050 (A020484 n).toNat

end

end A241086.P16903205733879765636

/-! ## A241086.P5862917226100210550

`A052839(n)-(A241089(n)+1)`
-/

namespace A241086.P5862917226100210550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241089 n + 1)

end

end A241086.P5862917226100210550

/-! ## A241086.P12234886831344911361

`A061199(∑[n]+1)-A241089(n)`
-/

namespace A241086.P12234886831344911361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241089 n

end

end A241086.P12234886831344911361

/-! ## A241086.P2843068720062094556

`A000009(n)-(A241089(n)+A000007(n))`
-/

namespace A241086.P2843068720062094556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241089 n + A000007 n)

end

end A241086.P2843068720062094556

/-! ## A241086.P12378983313334504076

`A241091(n)+A241093(n)-A241089(n)`
-/

namespace A241086.P12378983313334504076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n + (A241093 n - A241089 n)

end

end A241086.P12378983313334504076

/-! ## A241086.P10054341025831357354

`(A000009(n)-A241089(n))%∑[A007318(n)]`
-/

namespace A241086.P10054341025831357354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241089 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241086.P10054341025831357354

/-! ## A241086.P4305061521102322321

`abs(A000009(n)-A241089(n))%A000204(n+1)`
-/

namespace A241086.P4305061521102322321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A000009 n - A241089 n| (A000204 (n + 1))

end

end A241086.P4305061521102322321

/-! ## A241086.P14740125956646464980

`A000009(n)-A241089(n)-val(A000040(n+1), 2)`
-/

namespace A241086.P14740125956646464980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241089 n - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A241086.P14740125956646464980

/-!
# A241087: Number of partitions p of n into distinct parts such that max(p) = 2*(number of parts of p).

The programs for A241087, there is no canonical definition to state claims against.
-/

/-! ## A241087.P6094502014459561017

`A241086(n)-A241085(n)`
-/

namespace A241087.P6094502014459561017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n - A241085 n

end

end A241087.P6094502014459561017

/-! ## A241087.P18239829625551334835

`A241086(n)+A024000(A241085(n)+1)`
-/

namespace A241087.P18239829625551334835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + A024000 (A241085 n + 1).toNat

end

end A241087.P18239829625551334835

/-! ## A241087.P17846654461015019770

`A241086(n)+A001489(A241085(n)+1)+1`
-/

namespace A241087.P17846654461015019770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + (A001489 (A241085 n + 1).toNat + 1)

end

end A241087.P17846654461015019770

/-! ## A241087.P17639637983810254009

`A241091(n)-(A241092(n)+A241085(n))`
-/

namespace A241087.P17639637983810254009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - (A241092 n + A241085 n)

end

end A241087.P17639637983810254009

/-! ## A241087.P7118584032728414836

`A241091(n)-A241092(n)-A241085(A004526(2*n))`
-/

namespace A241087.P7118584032728414836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - A241092 n - A241085 (A004526 (2 * n)).toNat

end

end A241087.P7118584032728414836

/-! ## A241087.P11660932324794398928

`A052839(n)-(A241085(n)+1)-A241089(n)`
-/

namespace A241087.P11660932324794398928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241085 n + 1) - A241089 n

end

end A241087.P11660932324794398928

/-! ## A241087.P761306715642017739

`A061199(∑[n]+1)-A241085(n)-A241089(n)`
-/

namespace A241087.P761306715642017739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241085 n - A241089 n

end

end A241087.P761306715642017739

/-! ## A241087.P2336462190728236523

`A000009(n)-(A241089(n)+A241085(A028310(n)))`
-/

namespace A241087.P2336462190728236523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241089 n + A241085 (A028310 n).toNat)

end

end A241087.P2336462190728236523

/-! ## A241087.P14305072454302293795

`A172033(2*n)-A241085(A028310(n))-A241089(n)`
-/

namespace A241087.P14305072454302293795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A241085 (A028310 n).toNat - A241089 n

end

end A241087.P14305072454302293795

/-! ## A241087.P18264730295964697467

`A000009(n)-A241085(A000007(n)+n)-A241089(n)`
-/

namespace A241087.P18264730295964697467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241085 (A000007 n + (n : ℤ)).toNat - A241089 n

end

end A241087.P18264730295964697467

/-!
# A241088: Number of partitions p of n into distinct parts such that max(p) >= 2*(number of parts of p).

The programs for A241088, there is no canonical definition to state claims against.
-/

/-! ## A241088.P3396208979962007310

`A241089(n)+A241087(n)`
-/

namespace A241088.P3396208979962007310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n + A241087 n

end

end A241088.P3396208979962007310

/-! ## A241088.P13969413144784721529

`A052839(n)-(A241085(n)+1)`
-/

namespace A241088.P13969413144784721529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241085 n + 1)

end

end A241088.P13969413144784721529

/-! ## A241088.P14691860372333184919

`A061199(∑[n]+1)-A241085(n)`
-/

namespace A241088.P14691860372333184919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241085 n

end

end A241088.P14691860372333184919

/-! ## A241088.P14603474030728672797

`A000009(n)-A241085(A028310(n))`
-/

namespace A241088.P14603474030728672797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241085 (A028310 n).toNat

end

end A241088.P14603474030728672797

/-! ## A241088.P8734566669292944114

`abs(A081360(n))-A241085(A028310(n))`
-/

namespace A241088.P8734566669292944114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A241085 (A028310 n).toNat

end

end A241088.P8734566669292944114

/-! ## A241088.P3021400732045716598

`A028310(A052839(n)-A241085(n))-1`
-/

namespace A241088.P3021400732045716598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052839 n - A241085 n).toNat - 1

end

end A241088.P3021400732045716598

/-! ## A241088.P1627123886883464359

`A172033(2*n)-A241085(A028310(n))`
-/

namespace A241088.P1627123886883464359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A241085 (A028310 n).toNat

end

end A241088.P1627123886883464359

/-! ## A241088.P5161732937035869098

`A241087(n)+A241093(n)+A241092(n)`
-/

namespace A241088.P5161732937035869098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 n + (A241093 n + A241092 n)

end

end A241088.P5161732937035869098

/-! ## A241088.P1281502568705717805

`A000009(n)-A241085(A000007(n)+n)`
-/

namespace A241088.P1281502568705717805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241085 (A000007 n + (n : ℤ)).toNat

end

end A241088.P1281502568705717805

/-! ## A241088.P1790877588470371367

`A241086(n)+A241089(n)-A241085(n)`
-/

namespace A241088.P1790877588470371367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + (A241089 n - A241085 n)

end

end A241088.P1790877588470371367

/-!
# A241089: Number of partitions p of n into distinct parts such that max(p) > 2*(number of parts of p).

The programs for A241089, there is no canonical definition to state claims against.
-/

/-! ## A241089.P6368034436416550264

`A241093(n)+A241092(n)`
-/

namespace A241089.P6368034436416550264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241093 n + A241092 n

end

end A241089.P6368034436416550264

/-! ## A241089.P7297537370219594417

`A052839(n)-(A241086(n)+1)`
-/

namespace A241089.P7297537370219594417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241086 n + 1)

end

end A241089.P7297537370219594417

/-! ## A241089.P5174094317687191593

`A061199(∑[n]+1)-A241086(n)`
-/

namespace A241089.P5174094317687191593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241086 n

end

end A241089.P5174094317687191593

/-! ## A241089.P3162876002641615770

`A000009(n)-A241086(A028310(n))`
-/

namespace A241089.P3162876002641615770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241086 (A028310 n).toNat

end

end A241089.P3162876002641615770

/-! ## A241089.P1971700655058391396

`A000009(n)-A241086(A000007(n)+n)`
-/

namespace A241089.P1971700655058391396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241086 (A000007 n + (n : ℤ)).toNat

end

end A241089.P1971700655058391396

/-! ## A241089.P2701548629075552084

`A241091(n)+A241093(n)-A241086(n)`
-/

namespace A241089.P2701548629075552084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n + (A241093 n - A241086 n)

end

end A241089.P2701548629075552084

/-! ## A241089.P14342915167960266633

`A000009(n)-A241086(n)-A000007(n)`
-/

namespace A241089.P14342915167960266633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241086 n - A000007 n

end

end A241089.P14342915167960266633

/-! ## A241089.P5151149484403244913

`(A000009(n)-A241086(n))%A000041(n)`
-/

namespace A241089.P5151149484403244913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241086 n) (A000041 n)

end

end A241089.P5151149484403244913

/-! ## A241089.P5334749419756634111

`abs(A000009(n)-A241086(n))%A001611(n)`
-/

namespace A241089.P5334749419756634111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A000009 n - A241086 n| (A001611 n)

end

end A241089.P5334749419756634111

/-! ## A241089.P6741445525777740535

`A241088(n)-A241087(n)`
-/

namespace A241089.P6741445525777740535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241088 n - A241087 n

end

end A241089.P6741445525777740535

/-!
# A241090: Number of partitions p of n such that (number of numbers in p having multiplicity > 1) = number of 1s in p.

The programs for A241090, there is no canonical definition to state claims against.
-/

/-! ## A241090.P5409328873331898258

`A115593(n)-A326365(A094544(n))`
-/

namespace A241090.P5409328873331898258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115593 n - A326365 (A094544 n).toNat

end

end A241090.P5409328873331898258

/-! ## A241090.P17846186457552081109

`A184198(2*n)-A341022(A068853(n+1))`
-/

namespace A241090.P17846186457552081109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (2 * n) - A341022 ((A068853 (n + 1)).toNat + 35)

end

end A241090.P17846186457552081109

/-!
# A241091: Number of partitions p of n into distinct parts such that max(p) <= 1 + 2*(number of parts of p).

The programs for A241091, there is no canonical definition to state claims against.
-/

/-! ## A241091.P3722151318625087262

`A241086(n)+A241092(n)`
-/

namespace A241091.P3722151318625087262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + A241092 n

end

end A241091.P3722151318625087262

/-! ## A241091.P12826087628913143139

`A241085(n)+A241092(n)+A241087(n)`
-/

namespace A241091.P12826087628913143139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 n + (A241092 n + A241087 n)

end

end A241091.P12826087628913143139

/-! ## A241091.P13410042575538154593

`A052839(n)-(A241093(n)+1)`
-/

namespace A241091.P13410042575538154593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241093 n + 1)

end

end A241091.P13410042575538154593

/-! ## A241091.P2017198686141668454

`A061199(∑[n]+1)-A241093(n)`
-/

namespace A241091.P2017198686141668454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241093 n

end

end A241091.P2017198686141668454

/-! ## A241091.P2838587216126142875

`A000009(n)-(A241093(n)+A000007(n))`
-/

namespace A241091.P2838587216126142875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241093 n + A000007 n)

end

end A241091.P2838587216126142875

/-! ## A241091.P5443610804302903831

`A241086(n)+A241089(n)-A241093(n)`
-/

namespace A241091.P5443610804302903831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + (A241089 n - A241093 n)

end

end A241091.P5443610804302903831

/-! ## A241091.P2235072761526350066

`A000009(n)%A000079(n)-A241093(n)`
-/

namespace A241091.P2235072761526350066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A000079 n) - A241093 n

end

end A241091.P2235072761526350066

/-! ## A241091.P13052871684588448650

`(A000009(n)-A241093(n))%∑[A007318(n)]`
-/

namespace A241091.P13052871684588448650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241093 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241091.P13052871684588448650

/-! ## A241091.P12497650833209795189

`A241085(n)+A241088(n)-A241093(n)`
-/

namespace A241091.P12497650833209795189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 n + (A241088 n - A241093 n)

end

end A241091.P12497650833209795189

/-!
# A241092: Number of partitions p of n into distinct parts such that max(p) = 1 + 2*(number of parts of p).

The programs for A241092, there is no canonical definition to state claims against.
-/

/-! ## A241092.P8274733395405761291

`A241091(n)-A241086(n)`
-/

namespace A241092.P8274733395405761291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - A241086 n

end

end A241092.P8274733395405761291

/-! ## A241092.P12484356209967643379

`A241091(n)-(A241087(n)+A241085(n))`
-/

namespace A241092.P12484356209967643379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n - (A241087 n + A241085 n)

end

end A241092.P12484356209967643379

/-! ## A241092.P256144840011951518

`A241091(n)+A001489(A241087(n)+A241085(n))`
-/

namespace A241092.P256144840011951518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 n + A001489 (A241087 n + A241085 n).toNat

end

end A241092.P256144840011951518

/-! ## A241092.P13554269955545024537

`A241089(n)-A241093(n)`
-/

namespace A241092.P13554269955545024537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n - A241093 n

end

end A241092.P13554269955545024537

/-! ## A241092.P10874580981406853925

`(A241091(n)+A241089(n))%A000009(n)`
-/

namespace A241092.P10874580981406853925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241091 n + A241089 n) (A000009 n)

end

end A241092.P10874580981406853925

/-! ## A241092.P18086607354049562283

`A052839(n)-(A241086(n)+1)-A241093(n)`
-/

namespace A241092.P18086607354049562283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241086 n + 1) - A241093 n

end

end A241092.P18086607354049562283

/-! ## A241092.P10242941025964831381

`A241089(n)-(A052839(n)-(A241091(n)+1))`
-/

namespace A241092.P10242941025964831381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n - (A052839 n - (A241091 n + 1))

end

end A241092.P10242941025964831381

/-! ## A241092.P4517414739385263887

`A241089(n)-(A061199(∑[n]+1)-A241091(n))`
-/

namespace A241092.P4517414739385263887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n - (A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241091 n)

end

end A241092.P4517414739385263887

/-! ## A241092.P16381013137185630944

`A241088(n)-(A241093(n)+A241087(n))`
-/

namespace A241092.P16381013137185630944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241088 n - (A241093 n + A241087 n)

end

end A241092.P16381013137185630944

/-!
# A241093: Number of partitions p of n into distinct parts such that max(p) > 1 + 2*(number of parts of p).

The programs for A241093, there is no canonical definition to state claims against.
-/

/-! ## A241093.P14701820661172351719

`A241089(n)-A241092(n)`
-/

namespace A241093.P14701820661172351719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n - A241092 n

end

end A241093.P14701820661172351719

/-! ## A241093.P6939049458932932825

`A052839(n)-(A241091(n)+1)`
-/

namespace A241093.P6939049458932932825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241091 n + 1)

end

end A241093.P6939049458932932825

/-! ## A241093.P14698814163335859436

`A061199(∑[n]+1)-A241091(n)`
-/

namespace A241093.P14698814163335859436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A241091 n

end

end A241093.P14698814163335859436

/-! ## A241093.P13173956448036357605

`A000009(n)-A241091(A028310(n))`
-/

namespace A241093.P13173956448036357605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241091 (A028310 n).toNat

end

end A241093.P13173956448036357605

/-! ## A241093.P16968238052881666869

`A000009(n)-A241091(A000007(n)+n)`
-/

namespace A241093.P16968238052881666869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241091 (A000007 n + (n : ℤ)).toNat

end

end A241093.P16968238052881666869

/-! ## A241093.P12133472303999497182

`A241086(n)+A241089(n)-A241091(n)`
-/

namespace A241093.P12133472303999497182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 n + (A241089 n - A241091 n)

end

end A241093.P12133472303999497182

/-! ## A241093.P36936136242386059

`(A000009(n)-A241091(n))%A000041(n)`
-/

namespace A241093.P36936136242386059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A241091 n) (A000041 n)

end

end A241093.P36936136242386059

/-! ## A241093.P14059925711282265641

`A241085(n)+A241088(n)-A241091(n)`
-/

namespace A241093.P14059925711282265641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 n + (A241088 n - A241091 n)

end

end A241093.P14059925711282265641

/-! ## A241093.P7442999562242636555

`A241088(n)-(A241092(n)+A241087(n))`
-/

namespace A241093.P7442999562242636555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241088 n - (A241092 n + A241087 n)

end

end A241093.P7442999562242636555

/-!
# A241095: a(n) = (5^n - 1)^n.

The programs for A241095, the canonical program `A241095.P15583364560229032221` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241095 has offset 0).

The definition of A241095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n-1)^n` (program `A241095.P15583364560229032221`, by `A241095.P15583364560229032221.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241095.P15583364560229032221

`(5^n-1)^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241095

/-- `(5^n-1)^n` -/
def P15583364560229032221.Spec : Prop :=
  ∀ n, P15583364560229032221.a n = A241095 n

theorem P15583364560229032221.correct : P15583364560229032221.Spec := by
  intro n
  simp only [A241095]

end A241095

/-! ## A241095.P3976127062711430024

`A003463(n)^n*4^n`
-/

namespace A241095.P3976127062711430024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n ^ n * (4 ^ n : ℤ)

end

end A241095.P3976127062711430024

namespace A241095

/-- `A003463(n)^n*4^n` -/
def P3976127062711430024.Spec : Prop :=
  ∀ n, P3976127062711430024.a n = A241095 n

end A241095

/-! ## A241095.P14017006315398314066

`gcd(A024049(n)^n, floor(acot(n)))`
-/

namespace A241095.P14017006315398314066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024049 n ^ n) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A241095.P14017006315398314066

namespace A241095

/-- `gcd(A024049(n)^n, floor(acot(n)))` -/
def P14017006315398314066.Spec : Prop :=
  ∀ n, (P14017006315398314066.a n : ℤ) = A241095 n

end A241095

/-! ## A241095.P1952181634113582167

`gcd((-A024049(n))^n, A185284(n))`
-/

namespace A241095.P1952181634113582167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((-A024049 n) ^ n) (A185284 n)

end

end A241095.P1952181634113582167

namespace A241095

/-- `gcd((-A024049(n))^n, A185284(n))` -/
def P1952181634113582167.Spec : Prop :=
  ∀ n, (P1952181634113582167.a n : ℤ) = A241095 n

end A241095

/-!
# A241096: Palindromes in base 16 whose squares are also palindromes.

The programs for A241096, there is no canonical definition to state claims against.
-/

/-! ## A241096.P14337693370544821161

`record[A265514(A029238(n))]`
-/

namespace A241096.P14337693370544821161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (A029238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241096.P14337693370544821161

/-! ## A241096.P2034173192753150431

`record[A265514(∑[A116491(n)])]`
-/

namespace A241096.P2034173192753150431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241096.P2034173192753150431

/-! ## A241096.P8406268942660041353

`record[A265514(∑[A284002(n)])]`
-/

namespace A241096.P8406268942660041353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241096.P8406268942660041353

/-! ## A241096.P14982510526270197322

`record[A265514(∑[A221650(n+2)])]`
-/

namespace A241096.P14982510526270197322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221650 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241096.P14982510526270197322

/-! ## A241096.P14333665952982279738

`record[A265514(∑[A000174(n)])]`
-/

namespace A241096.P14333665952982279738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241096.P14333665952982279738

/-!
# A241097: Largest number <= sqrt(A179204(n)).

The programs for A241097, there is no canonical definition to state claims against.
-/

/-! ## A241097.P6199387881134644258

`floor(sqrt(A179204(n+1)))`
-/

namespace A241097.P6199387881134644258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A179204 (n + 1))

end

end A241097.P6199387881134644258

/-! ## A241097.P16284591867836391028

`ceil(sqrt(A179204(n+1))-A020985(n)²)`
-/

namespace A241097.P16284591867836391028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A179204 (n + 1) : ℝ) - (A020985 n ^ 2 : ℝ)⌉

end

end A241097.P16284591867836391028

/-! ## A241097.P9103760726703390497

`ceil(sqrt(A179204(n+1)))-A000265(2^n)`
-/

namespace A241097.P9103760726703390497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A179204 (n + 1) : ℝ)⌉ - A000265 (2 ^ n)

end

end A241097.P9103760726703390497

/-! ## A241097.P2388650360040826764

`ceil(sqrt(A179204(n+1)))-A070208(n+1)!`
-/

namespace A241097.P2388650360040826764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A179204 (n + 1) : ℝ)⌉ - (Nat.factorial (A070208 (n + 1)).toNat : ℤ)

end

end A241097.P2388650360040826764

/-! ## A241097.P9748941843593675219

`ceil(sqrt(A179204(n+1)))-(1-A296076(n+1))²`
-/

namespace A241097.P9748941843593675219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A179204 (n + 1) : ℝ)⌉ - (1 - A296076 (n + 1)) ^ 2

end

end A241097.P9748941843593675219

/-!
# A241098: a(n) = (4^n - 1)^n.

The programs for A241098, the canonical program `A241098.P17497424048117264642` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241098 has offset 0).

The definition of A241098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n-1)^n` (program `A241098.P17497424048117264642`, by `A241098.P17497424048117264642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241098.P17497424048117264642

`(4^n-1)^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241098

/-- `(4^n-1)^n` -/
def P17497424048117264642.Spec : Prop :=
  ∀ n, P17497424048117264642.a n = A241098 n

theorem P17497424048117264642.correct : P17497424048117264642.Spec := by
  intro n
  simp only [A241098]

end A241098

/-! ## A241098.P8087128176137619964

`record[(n*(n+2))^val(n+1, 2)]`
-/

namespace A241098.P8087128176137619964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2)) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241098.P8087128176137619964

namespace A241098

/-- `record[(n*(n+2))^val(n+1, 2)]` -/
def P8087128176137619964.Spec : Prop :=
  ∀ n, (P8087128176137619964.a n : ℤ) = A241098 n

end A241098

/-! ## A241098.P9591641322223988215

`or(1, A024036(n)^n)`
-/

namespace A241098.P9591641322223988215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024036 n ^ n)

end

end A241098.P9591641322223988215

namespace A241098

/-- `or(1, A024036(n)^n)` -/
def P9591641322223988215.Spec : Prop :=
  ∀ n, P9591641322223988215.a n = A241098 n

end A241098

/-! ## A241098.P16830495463629785581

`or(1, A103454(n)^n)`
-/

namespace A241098.P16830495463629785581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103454 n ^ n)

end

end A241098.P16830495463629785581

namespace A241098

/-- `or(1, A103454(n)^n)` -/
def P16830495463629785581.Spec : Prop :=
  ∀ n, P16830495463629785581.a n = A241098 n

end A241098

/-! ## A241098.P1034425572163511143

`abs((A058896(n)+3)^n)`
-/

namespace A241098.P1034425572163511143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A058896 n + 3) ^ n|

end

end A241098.P1034425572163511143

namespace A241098

/-- `abs((A058896(n)+3)^n)` -/
def P1034425572163511143.Spec : Prop :=
  ∀ n, P1034425572163511143.a n = A241098 n

end A241098

