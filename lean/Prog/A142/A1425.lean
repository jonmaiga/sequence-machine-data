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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A142500: Primes congruent to 40 mod 51.

The programs for A142500, the canonical program `A142500.P7476568207579945483` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142500 has offset 1).

The definition of A142500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142500.P7476568207579945483

`p?[51*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142500

/-- `p?[51*n-11]` -/
def P7476568207579945483.Spec : Prop :=
  ∀ n, P7476568207579945483.a n = A142500 (n + 1)

theorem P7476568207579945483.correct : P7476568207579945483.Spec := by
  intro n
  simp only [A142500, Nat.add_sub_cancel]

end A142500

/-! ## A142500.P1849243923842248720

`or(1, p?[5*A017365(n)+n])`
-/

namespace A142500.P1849243923842248720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017365 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142500.P1849243923842248720

namespace A142500

/-- `or(1, p?[5*A017365(n)+n])` -/
def P1849243923842248720.Spec : Prop :=
  ∀ n, P1849243923842248720.a n = A142500 (n + 1)

end A142500

/-! ## A142500.P531931897883924437

`∏{p}[p?[A174312(n+1)+A144619(n)], #]`
-/

namespace A142500.P531931897883924437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 1) + A144619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142500.P531931897883924437

namespace A142500

/-- `∏{p}[p?[A174312(n+1)+A144619(n)], #]` -/
def P531931897883924437.Spec : Prop :=
  ∀ n, (P531931897883924437.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P14567895740820964191

`or(1, p?[A159754(n+3)+A057979(n)])`
-/

namespace A142500.P14567895740820964191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 3) + A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142500.P14567895740820964191

namespace A142500

/-- `or(1, p?[A159754(n+3)+A057979(n)])` -/
def P14567895740820964191.Spec : Prop :=
  ∀ n, P14567895740820964191.a n = A142500 (n + 1)

end A142500

/-! ## A142500.P5876046405038681436

`∩[A002476(n+1), A140545(n+1)]`
-/

namespace A142500.P5876046405038681436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P5876046405038681436

namespace A142500

/-- `∩[A002476(n+1), A140545(n+1)]` -/
def P5876046405038681436.Spec : Prop :=
  ∀ n, (P5876046405038681436.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P4628456528842418311

`∩[A007645(n+1), A140545(n+1)]`
-/

namespace A142500.P4628456528842418311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P4628456528842418311

namespace A142500

/-- `∩[A007645(n+1), A140545(n+1)]` -/
def P4628456528842418311.Spec : Prop :=
  ∀ n, (P4628456528842418311.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P1267905378955755361

`∩[A045331(n+1), A140545(n+1)]`
-/

namespace A142500.P1267905378955755361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P1267905378955755361

namespace A142500

/-- `∩[A045331(n+1), A140545(n+1)]` -/
def P1267905378955755361.Spec : Prop :=
  ∀ n, (P1267905378955755361.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P16875593288766613021

`∩[A045375(n+1), A140545(n+1)]`
-/

namespace A142500.P16875593288766613021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P16875593288766613021

namespace A142500

/-- `∩[A045375(n+1), A140545(n+1)]` -/
def P16875593288766613021.Spec : Prop :=
  ∀ n, (P16875593288766613021.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P11931779816522280915

`∩[A123365(n+1), A140545(n+1)]`
-/

namespace A142500.P11931779816522280915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P11931779816522280915

namespace A142500

/-- `∩[A123365(n+1), A140545(n+1)]` -/
def P11931779816522280915.Spec : Prop :=
  ∀ n, (P11931779816522280915.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P2511575525579495325

`∩[A140545(n+1), A279815(n+1)]`
-/

namespace A142500.P2511575525579495325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P2511575525579495325

namespace A142500

/-- `∩[A140545(n+1), A279815(n+1)]` -/
def P2511575525579495325.Spec : Prop :=
  ∀ n, (P2511575525579495325.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P1243609562835980764

`∩[A055664(n+1), A140545(n+1)]`
-/

namespace A142500.P1243609562835980764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P1243609562835980764

namespace A142500

/-- `∩[A055664(n+1), A140545(n+1)]` -/
def P1243609562835980764.Spec : Prop :=
  ∀ n, (P1243609562835980764.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P15895964684879354720

`∩[A133290(n+1), A140545(n+1)]`
-/

namespace A142500.P15895964684879354720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P15895964684879354720

namespace A142500

/-- `∩[A133290(n+1), A140545(n+1)]` -/
def P15895964684879354720.Spec : Prop :=
  ∀ n, (P15895964684879354720.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P3214128871776637095

`∩[A140545(n+1), A191073(n+1)]`
-/

namespace A142500.P3214128871776637095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P3214128871776637095

namespace A142500

/-- `∩[A140545(n+1), A191073(n+1)]` -/
def P3214128871776637095.Spec : Prop :=
  ∀ n, (P3214128871776637095.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P14668642669924503660

`∩[A137827(n+1), A140545(n+1)]`
-/

namespace A142500.P14668642669924503660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P14668642669924503660

namespace A142500

/-- `∩[A137827(n+1), A140545(n+1)]` -/
def P14668642669924503660.Spec : Prop :=
  ∀ n, (P14668642669924503660.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P9553505600833071869

`∩[A002476(n+1), A154612(n)-1]`
-/

namespace A142500.P9553505600833071869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P9553505600833071869

namespace A142500

/-- `∩[A002476(n+1), A154612(n)-1]` -/
def P9553505600833071869.Spec : Prop :=
  ∀ n, (P9553505600833071869.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P16548019724539468725

`∩[A007645(n+1), A154612(n)-1]`
-/

namespace A142500.P16548019724539468725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P16548019724539468725

namespace A142500

/-- `∩[A007645(n+1), A154612(n)-1]` -/
def P16548019724539468725.Spec : Prop :=
  ∀ n, (P16548019724539468725.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P9619528834809913335

`∩[A045331(n+1), A154612(n)-1]`
-/

namespace A142500.P9619528834809913335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P9619528834809913335

namespace A142500

/-- `∩[A045331(n+1), A154612(n)-1]` -/
def P9619528834809913335.Spec : Prop :=
  ∀ n, (P9619528834809913335.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P1412887995074423381

`∩[A045375(n+1), A154612(n)-1]`
-/

namespace A142500.P1412887995074423381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P1412887995074423381

namespace A142500

/-- `∩[A045375(n+1), A154612(n)-1]` -/
def P1412887995074423381.Spec : Prop :=
  ∀ n, (P1412887995074423381.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P1732159209995009101

`∩[A055664(n+1), A154612(n)-1]`
-/

namespace A142500.P1732159209995009101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P1732159209995009101

namespace A142500

/-- `∩[A055664(n+1), A154612(n)-1]` -/
def P1732159209995009101.Spec : Prop :=
  ∀ n, (P1732159209995009101.a n : ℤ) = A142500 (n + 1)

end A142500

/-! ## A142500.P12636268888134025886

`∩[A123365(n+1), A154612(n)-1]`
-/

namespace A142500.P12636268888134025886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142500.P12636268888134025886

namespace A142500

/-- `∩[A123365(n+1), A154612(n)-1]` -/
def P12636268888134025886.Spec : Prop :=
  ∀ n, (P12636268888134025886.a n : ℤ) = A142500 (n + 1)

end A142500

/-!
# A142501: Primes congruent to 41 mod 51.

The programs for A142501, the canonical program `A142501.P7513274774437985626` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142501 has offset 1).

The definition of A142501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142501.P7513274774437985626

`p?[51*n-10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142501

/-- `p?[51*n-10]` -/
def P7513274774437985626.Spec : Prop :=
  ∀ n, P7513274774437985626.a n = A142501 (n + 1)

theorem P7513274774437985626.correct : P7513274774437985626.Spec := by
  intro n
  simp only [A142501, Nat.add_sub_cancel]

end A142501

/-! ## A142501.P14537043834850732878

`∩[A106902(n+1), A138629(n+1)]`
-/

namespace A142501.P14537043834850732878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P14537043834850732878

namespace A142501

/-- `∩[A106902(n+1), A138629(n+1)]` -/
def P14537043834850732878.Spec : Prop :=
  ∀ n, (P14537043834850732878.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P16455090390770119903

`∩[A106902(n+1), A215208(n+1)]`
-/

namespace A142501.P16455090390770119903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P16455090390770119903

namespace A142501

/-- `∩[A106902(n+1), A215208(n+1)]` -/
def P16455090390770119903.Spec : Prop :=
  ∀ n, (P16455090390770119903.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P4836239034372869481

`A000027(p?[A154267(n)-A032766(n)])`
-/

namespace A142501.P4836239034372869481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142501.P4836239034372869481

namespace A142501

/-- `A000027(p?[A154267(n)-A032766(n)])` -/
def P4836239034372869481.Spec : Prop :=
  ∀ n, P4836239034372869481.a n = A142501 (n + 1)

end A142501

/-! ## A142501.P16054300334125805048

`A000027(p?[A159754(n+1)+A057979(n)])`
-/

namespace A142501.P16054300334125805048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142501.P16054300334125805048

namespace A142501

/-- `A000027(p?[A159754(n+1)+A057979(n)])` -/
def P16054300334125805048.Spec : Prop :=
  ∀ n, P16054300334125805048.a n = A142501 (n + 1)

end A142501

/-! ## A142501.P9524127232597347005

`∩[A138629(n+1), A191034(n+1)]`
-/

namespace A142501.P9524127232597347005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P9524127232597347005

namespace A142501

/-- `∩[A138629(n+1), A191034(n+1)]` -/
def P9524127232597347005.Spec : Prop :=
  ∀ n, (P9524127232597347005.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P14217746961561912631

`∩[A003627(n+1), A138629(n+1)]`
-/

namespace A142501.P14217746961561912631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P14217746961561912631

namespace A142501

/-- `∩[A003627(n+1), A138629(n+1)]` -/
def P14217746961561912631.Spec : Prop :=
  ∀ n, (P14217746961561912631.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P8399547991053540027

`∩[A007528(n+1), A138629(n+1)]`
-/

namespace A142501.P8399547991053540027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P8399547991053540027

namespace A142501

/-- `∩[A007528(n+1), A138629(n+1)]` -/
def P8399547991053540027.Spec : Prop :=
  ∀ n, (P8399547991053540027.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P285047883112810025

`∩[A045309(n+1), A138629(n+1)]`
-/

namespace A142501.P285047883112810025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P285047883112810025

namespace A142501

/-- `∩[A045309(n+1), A138629(n+1)]` -/
def P285047883112810025.Spec : Prop :=
  ∀ n, (P285047883112810025.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P8866690728490254439

`∩[A045410(n+1), A138629(n+1)]`
-/

namespace A142501.P8866690728490254439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P8866690728490254439

namespace A142501

/-- `∩[A045410(n+1), A138629(n+1)]` -/
def P8866690728490254439.Spec : Prop :=
  ∀ n, (P8866690728490254439.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P11383257735120535235

`∩[A056955(n+1), A138629(n+1)]`
-/

namespace A142501.P11383257735120535235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P11383257735120535235

namespace A142501

/-- `∩[A056955(n+1), A138629(n+1)]` -/
def P11383257735120535235.Spec : Prop :=
  ∀ n, (P11383257735120535235.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P8381388663808052506

`∩[A003627(n+1), A154612(n)]`
-/

namespace A142501.P8381388663808052506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P8381388663808052506

namespace A142501

/-- `∩[A003627(n+1), A154612(n)]` -/
def P8381388663808052506.Spec : Prop :=
  ∀ n, (P8381388663808052506.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P18312932938061633161

`∩[A007528(n+1), A154612(n)]`
-/

namespace A142501.P18312932938061633161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P18312932938061633161

namespace A142501

/-- `∩[A007528(n+1), A154612(n)]` -/
def P18312932938061633161.Spec : Prop :=
  ∀ n, (P18312932938061633161.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P3382401203635684596

`∩[A045309(n+1), A154612(n)]`
-/

namespace A142501.P3382401203635684596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P3382401203635684596

namespace A142501

/-- `∩[A045309(n+1), A154612(n)]` -/
def P3382401203635684596.Spec : Prop :=
  ∀ n, (P3382401203635684596.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P15217852373976370085

`∩[A045410(n+1), A154612(n)]`
-/

namespace A142501.P15217852373976370085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P15217852373976370085

namespace A142501

/-- `∩[A045410(n+1), A154612(n)]` -/
def P15217852373976370085.Spec : Prop :=
  ∀ n, (P15217852373976370085.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P6334056672234337010

`∩[A056955(n+1), A154612(n)]`
-/

namespace A142501.P6334056672234337010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P6334056672234337010

namespace A142501

/-- `∩[A056955(n+1), A154612(n)]` -/
def P6334056672234337010.Spec : Prop :=
  ∀ n, (P6334056672234337010.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P5048237236729762764

`∩[A106902(n+1), A154612(n)]`
-/

namespace A142501.P5048237236729762764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P5048237236729762764

namespace A142501

/-- `∩[A106902(n+1), A154612(n)]` -/
def P5048237236729762764.Spec : Prop :=
  ∀ n, (P5048237236729762764.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P14928626391388341665

`∩[A191034(n+1), A154612(n)]`
-/

namespace A142501.P14928626391388341665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P14928626391388341665

namespace A142501

/-- `∩[A191034(n+1), A154612(n)]` -/
def P14928626391388341665.Spec : Prop :=
  ∀ n, (P14928626391388341665.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P17214638139899516036

`∩[A007528(n+1), A170837(n)+n]`
-/

namespace A142501.P17214638139899516036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P17214638139899516036

namespace A142501

/-- `∩[A007528(n+1), A170837(n)+n]` -/
def P17214638139899516036.Spec : Prop :=
  ∀ n, (P17214638139899516036.a n : ℤ) = A142501 (n + 1)

end A142501

/-! ## A142501.P17709561904730731365

`∩[A066501(n+1), A138629(n+1)]`
-/

namespace A142501.P17709561904730731365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142501.P17709561904730731365

namespace A142501

/-- `∩[A066501(n+1), A138629(n+1)]` -/
def P17709561904730731365.Spec : Prop :=
  ∀ n, (P17709561904730731365.a n : ℤ) = A142501 (n + 1)

end A142501

/-!
# A142502: Primes congruent to 43 mod 51.

The programs for A142502, the canonical program `A142502.P2963416091824763281` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142502 has offset 1).

The definition of A142502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142502.P2963416091824763281

`p?[51*n-8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142502

/-- `p?[51*n-8]` -/
def P2963416091824763281.Spec : Prop :=
  ∀ n, P2963416091824763281.a n = A142502 (n + 1)

theorem P2963416091824763281.correct : P2963416091824763281.Spec := by
  intro n
  simp only [A142502, Nat.add_sub_cancel]

end A142502

/-! ## A142502.P2716136711291142815

`A000027(p?[A102439(n)-A304205(n+1)])`
-/

namespace A142502.P2716136711291142815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n - A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142502.P2716136711291142815

namespace A142502

/-- `A000027(p?[A102439(n)-A304205(n+1)])` -/
def P2716136711291142815.Spec : Prop :=
  ∀ n, P2716136711291142815.a n = A142502 (n + 1)

end A142502

/-! ## A142502.P17201077408923835562

`∩[A106904(n+1), A138631(n+1)]`
-/

namespace A142502.P17201077408923835562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P17201077408923835562

namespace A142502

/-- `∩[A106904(n+1), A138631(n+1)]` -/
def P17201077408923835562.Spec : Prop :=
  ∀ n, (P17201077408923835562.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P9222276905257247731

`∩[A002476(n+1), A138631(n+1)]`
-/

namespace A142502.P9222276905257247731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P9222276905257247731

namespace A142502

/-- `∩[A002476(n+1), A138631(n+1)]` -/
def P9222276905257247731.Spec : Prop :=
  ∀ n, (P9222276905257247731.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P11530541050701282215

`∩[A007645(n+1), A138631(n+1)]`
-/

namespace A142502.P11530541050701282215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P11530541050701282215

namespace A142502

/-- `∩[A007645(n+1), A138631(n+1)]` -/
def P11530541050701282215.Spec : Prop :=
  ∀ n, (P11530541050701282215.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P3382052283494646388

`∩[A045331(n+1), A138631(n+1)]`
-/

namespace A142502.P3382052283494646388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P3382052283494646388

namespace A142502

/-- `∩[A045331(n+1), A138631(n+1)]` -/
def P3382052283494646388.Spec : Prop :=
  ∀ n, (P3382052283494646388.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P1513989662917386064

`∩[A045375(n+1), A138631(n+1)]`
-/

namespace A142502.P1513989662917386064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P1513989662917386064

namespace A142502

/-- `∩[A045375(n+1), A138631(n+1)]` -/
def P1513989662917386064.Spec : Prop :=
  ∀ n, (P1513989662917386064.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P9611387278179123924

`∩[A123365(n+1), A138631(n+1)]`
-/

namespace A142502.P9611387278179123924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P9611387278179123924

namespace A142502

/-- `∩[A123365(n+1), A138631(n+1)]` -/
def P9611387278179123924.Spec : Prop :=
  ∀ n, (P9611387278179123924.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P5362261493407074965

`∩[A138631(n+1), A191034(n+1)]`
-/

namespace A142502.P5362261493407074965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P5362261493407074965

namespace A142502

/-- `∩[A138631(n+1), A191034(n+1)]` -/
def P5362261493407074965.Spec : Prop :=
  ∀ n, (P5362261493407074965.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P4291849649981777541

`∩[A138631(n+1), A279815(n+1)]`
-/

namespace A142502.P4291849649981777541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P4291849649981777541

namespace A142502

/-- `∩[A138631(n+1), A279815(n+1)]` -/
def P4291849649981777541.Spec : Prop :=
  ∀ n, (P4291849649981777541.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P16165028475846587640

`∩[A055664(n+1), A138631(n+1)]`
-/

namespace A142502.P16165028475846587640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P16165028475846587640

namespace A142502

/-- `∩[A055664(n+1), A138631(n+1)]` -/
def P16165028475846587640.Spec : Prop :=
  ∀ n, (P16165028475846587640.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P5780664857994647129

`∩[A133290(n+1), A138631(n+1)]`
-/

namespace A142502.P5780664857994647129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P5780664857994647129

namespace A142502

/-- `∩[A133290(n+1), A138631(n+1)]` -/
def P5780664857994647129.Spec : Prop :=
  ∀ n, (P5780664857994647129.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P5281272141262811897

`∩[A137827(n+1), A138631(n+1)]`
-/

namespace A142502.P5281272141262811897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P5281272141262811897

namespace A142502

/-- `∩[A137827(n+1), A138631(n+1)]` -/
def P5281272141262811897.Spec : Prop :=
  ∀ n, (P5281272141262811897.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P6252474981920910920

`∩[A002476(n+1), A154612(n)+2]`
-/

namespace A142502.P6252474981920910920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P6252474981920910920

namespace A142502

/-- `∩[A002476(n+1), A154612(n)+2]` -/
def P6252474981920910920.Spec : Prop :=
  ∀ n, (P6252474981920910920.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P2132088496986313294

`∩[A007645(n+1), A154612(n)+2]`
-/

namespace A142502.P2132088496986313294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P2132088496986313294

namespace A142502

/-- `∩[A007645(n+1), A154612(n)+2]` -/
def P2132088496986313294.Spec : Prop :=
  ∀ n, (P2132088496986313294.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P5339711399699349007

`∩[A045331(n+1), A154612(n)+2]`
-/

namespace A142502.P5339711399699349007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P5339711399699349007

namespace A142502

/-- `∩[A045331(n+1), A154612(n)+2]` -/
def P5339711399699349007.Spec : Prop :=
  ∀ n, (P5339711399699349007.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P2897466364272796628

`∩[A045375(n+1), A154612(n)+2]`
-/

namespace A142502.P2897466364272796628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P2897466364272796628

namespace A142502

/-- `∩[A045375(n+1), A154612(n)+2]` -/
def P2897466364272796628.Spec : Prop :=
  ∀ n, (P2897466364272796628.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P10556117395040427545

`∩[A123365(n+1), A154612(n)+2]`
-/

namespace A142502.P10556117395040427545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P10556117395040427545

namespace A142502

/-- `∩[A123365(n+1), A154612(n)+2]` -/
def P10556117395040427545.Spec : Prop :=
  ∀ n, (P10556117395040427545.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P14124328409050397402

`∩[A191034(n+1), A154612(n)+2]`
-/

namespace A142502.P14124328409050397402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P14124328409050397402

namespace A142502

/-- `∩[A191034(n+1), A154612(n)+2]` -/
def P14124328409050397402.Spec : Prop :=
  ∀ n, (P14124328409050397402.a n : ℤ) = A142502 (n + 1)

end A142502

/-! ## A142502.P1021589089573107614

`∩[A279815(n+1), A154612(n)+2]`
-/

namespace A142502.P1021589089573107614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142502.P1021589089573107614

namespace A142502

/-- `∩[A279815(n+1), A154612(n)+2]` -/
def P1021589089573107614.Spec : Prop :=
  ∀ n, (P1021589089573107614.a n : ℤ) = A142502 (n + 1)

end A142502

/-!
# A142503: Primes congruent to 44 mod 51.

The programs for A142503, the canonical program `A142503.P714404954567768703` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142503 has offset 1).

The definition of A142503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142503.P714404954567768703

`p?[51*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142503

/-- `p?[51*n-7]` -/
def P714404954567768703.Spec : Prop :=
  ∀ n, P714404954567768703.a n = A142503 (n + 1)

theorem P714404954567768703.correct : P714404954567768703.Spec := by
  intro n
  simp only [A142503, Nat.add_sub_cancel]

end A142503

/-! ## A142503.P7549610317556971861

`∩[A106902(n+1), A138627(n+1)]`
-/

namespace A142503.P7549610317556971861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P7549610317556971861

namespace A142503

/-- `∩[A106902(n+1), A138627(n+1)]` -/
def P7549610317556971861.Spec : Prop :=
  ∀ n, (P7549610317556971861.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P13295553537597476153

`p?[A124388(n)-A032766(n)]/A020985(n)²`
-/

namespace A142503.P13295553537597476153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142503.P13295553537597476153

namespace A142503

/-- `p?[A124388(n)-A032766(n)]/A020985(n)²` -/
def P13295553537597476153.Spec : Prop :=
  ∀ n, P13295553537597476153.a n = (A142503 (n + 1) : ℚ)

end A142503

/-! ## A142503.P9998321494848113527

`p?[A124388(n)-A032766(n)]/A033999(n)²`
-/

namespace A142503.P9998321494848113527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A142503.P9998321494848113527

namespace A142503

/-- `p?[A124388(n)-A032766(n)]/A033999(n)²` -/
def P9998321494848113527.Spec : Prop :=
  ∀ n, P9998321494848113527.a n = (A142503 (n + 1) : ℚ)

end A142503

/-! ## A142503.P2226357348895078569

`p?[A124388(n)-A032766(n)]%A017474(n)²`
-/

namespace A142503.P2226357348895078569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017474 n ^ 2)

end

end A142503.P2226357348895078569

namespace A142503

/-- `p?[A124388(n)-A032766(n)]%A017474(n)²` -/
def P2226357348895078569.Spec : Prop :=
  ∀ n, P2226357348895078569.a n = A142503 (n + 1)

end A142503

/-! ## A142503.P12335508807215010278

`∩[A138627(n+1), A191034(n+1)]`
-/

namespace A142503.P12335508807215010278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P12335508807215010278

namespace A142503

/-- `∩[A138627(n+1), A191034(n+1)]` -/
def P12335508807215010278.Spec : Prop :=
  ∀ n, (P12335508807215010278.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P11698947315173012249

`∩[A003627(n+1), A138627(n+1)]`
-/

namespace A142503.P11698947315173012249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P11698947315173012249

namespace A142503

/-- `∩[A003627(n+1), A138627(n+1)]` -/
def P11698947315173012249.Spec : Prop :=
  ∀ n, (P11698947315173012249.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P8646847450091885554

`∩[A007528(n+1), A138627(n+1)]`
-/

namespace A142503.P8646847450091885554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P8646847450091885554

namespace A142503

/-- `∩[A007528(n+1), A138627(n+1)]` -/
def P8646847450091885554.Spec : Prop :=
  ∀ n, (P8646847450091885554.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P8959473297557645944

`∩[A045309(n+1), A138627(n+1)]`
-/

namespace A142503.P8959473297557645944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P8959473297557645944

namespace A142503

/-- `∩[A045309(n+1), A138627(n+1)]` -/
def P8959473297557645944.Spec : Prop :=
  ∀ n, (P8959473297557645944.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P3866177737508549592

`∩[A045410(n+1), A138627(n+1)]`
-/

namespace A142503.P3866177737508549592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P3866177737508549592

namespace A142503

/-- `∩[A045410(n+1), A138627(n+1)]` -/
def P3866177737508549592.Spec : Prop :=
  ∀ n, (P3866177737508549592.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P15749958170210019429

`∩[A056955(n+1), A138627(n+1)]`
-/

namespace A142503.P15749958170210019429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P15749958170210019429

namespace A142503

/-- `∩[A056955(n+1), A138627(n+1)]` -/
def P15749958170210019429.Spec : Prop :=
  ∀ n, (P15749958170210019429.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P9785647214902080106

`∩[A066501(n+1), A138627(n+1)]`
-/

namespace A142503.P9785647214902080106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P9785647214902080106

namespace A142503

/-- `∩[A066501(n+1), A138627(n+1)]` -/
def P9785647214902080106.Spec : Prop :=
  ∀ n, (P9785647214902080106.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P4223807455825993344

`∩[A138627(n+1), A259548(n+1)]`
-/

namespace A142503.P4223807455825993344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P4223807455825993344

namespace A142503

/-- `∩[A138627(n+1), A259548(n+1)]` -/
def P4223807455825993344.Spec : Prop :=
  ∀ n, (P4223807455825993344.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P18147095235898103598

`∩[A082406(n+1), A138627(n+1)]`
-/

namespace A142503.P18147095235898103598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P18147095235898103598

namespace A142503

/-- `∩[A082406(n+1), A138627(n+1)]` -/
def P18147095235898103598.Spec : Prop :=
  ∀ n, (P18147095235898103598.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P14668293249562405527

`A000265(p?[A124388(n)-A032766(n)])`
-/

namespace A142503.P14668293249562405527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142503.P14668293249562405527

namespace A142503

/-- `A000265(p?[A124388(n)-A032766(n)])` -/
def P14668293249562405527.Spec : Prop :=
  ∀ n, P14668293249562405527.a n = A142503 (n + 1)

end A142503

/-! ## A142503.P10762230613367541572

`A007947(p?[A124388(n)-A032766(n)])`
-/

namespace A142503.P10762230613367541572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142503.P10762230613367541572

namespace A142503

/-- `A007947(p?[A124388(n)-A032766(n)])` -/
def P10762230613367541572.Spec : Prop :=
  ∀ n, P10762230613367541572.a n = A142503 (n + 1)

end A142503

/-! ## A142503.P9237874608232282735

`∩[A138627(n+1), A167409(n+1)]`
-/

namespace A142503.P9237874608232282735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P9237874608232282735

namespace A142503

/-- `∩[A138627(n+1), A167409(n+1)]` -/
def P9237874608232282735.Spec : Prop :=
  ∀ n, (P9237874608232282735.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P9829109073631510014

`∩[A138627(n+1), A016969(n)]`
-/

namespace A142503.P9829109073631510014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P9829109073631510014

namespace A142503

/-- `∩[A138627(n+1), A016969(n)]` -/
def P9829109073631510014.Spec : Prop :=
  ∀ n, (P9829109073631510014.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P14118070613905231247

`∩[A138627(n+1), A101328(n+2)]`
-/

namespace A142503.P14118070613905231247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P14118070613905231247

namespace A142503

/-- `∩[A138627(n+1), A101328(n+2)]` -/
def P14118070613905231247.Spec : Prop :=
  ∀ n, (P14118070613905231247.a n : ℤ) = A142503 (n + 1)

end A142503

/-! ## A142503.P12020984860601337581

`∩[A138627(n+1), A277571(n+1)]`
-/

namespace A142503.P12020984860601337581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142503.P12020984860601337581

namespace A142503

/-- `∩[A138627(n+1), A277571(n+1)]` -/
def P12020984860601337581.Spec : Prop :=
  ∀ n, (P12020984860601337581.a n : ℤ) = A142503 (n + 1)

end A142503

/-!
# A142504: Primes congruent to 46 mod 51.

The programs for A142504, the canonical program `A142504.P16442748406109015156` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142504 has offset 1).

The definition of A142504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142504.P16442748406109015156

`p?[51*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142504

/-- `p?[51*n-5]` -/
def P16442748406109015156.Spec : Prop :=
  ∀ n, P16442748406109015156.a n = A142504 (n + 1)

theorem P16442748406109015156.correct : P16442748406109015156.Spec := by
  intro n
  simp only [A142504, Nat.add_sub_cancel]

end A142504

/-! ## A142504.P16895868207581136445

`A000027(p?[A156796(n+1)-A082369(n+1)])`
-/

namespace A142504.P16895868207581136445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156796 (n + 1) - A082369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142504.P16895868207581136445

namespace A142504

/-- `A000027(p?[A156796(n+1)-A082369(n+1)])` -/
def P16895868207581136445.Spec : Prop :=
  ∀ n, P16895868207581136445.a n = A142504 (n + 1)

end A142504

/-! ## A142504.P6933721594869319920

`∩[A002476(n+1), A138625(n+1)]`
-/

namespace A142504.P6933721594869319920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P6933721594869319920

namespace A142504

/-- `∩[A002476(n+1), A138625(n+1)]` -/
def P6933721594869319920.Spec : Prop :=
  ∀ n, (P6933721594869319920.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P17642727370035515861

`∩[A007645(n+1), A138625(n+1)]`
-/

namespace A142504.P17642727370035515861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P17642727370035515861

namespace A142504

/-- `∩[A007645(n+1), A138625(n+1)]` -/
def P17642727370035515861.Spec : Prop :=
  ∀ n, (P17642727370035515861.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P18106497069883703334

`∩[A045331(n+1), A138625(n+1)]`
-/

namespace A142504.P18106497069883703334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P18106497069883703334

namespace A142504

/-- `∩[A045331(n+1), A138625(n+1)]` -/
def P18106497069883703334.Spec : Prop :=
  ∀ n, (P18106497069883703334.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P11367984890338503050

`∩[A045375(n+1), A138625(n+1)]`
-/

namespace A142504.P11367984890338503050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P11367984890338503050

namespace A142504

/-- `∩[A045375(n+1), A138625(n+1)]` -/
def P11367984890338503050.Spec : Prop :=
  ∀ n, (P11367984890338503050.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P15800943405118134940

`∩[A123365(n+1), A138625(n+1)]`
-/

namespace A142504.P15800943405118134940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P15800943405118134940

namespace A142504

/-- `∩[A123365(n+1), A138625(n+1)]` -/
def P15800943405118134940.Spec : Prop :=
  ∀ n, (P15800943405118134940.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P8004216245668707284

`∩[A055664(n+1), A138625(n+1)]`
-/

namespace A142504.P8004216245668707284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P8004216245668707284

namespace A142504

/-- `∩[A055664(n+1), A138625(n+1)]` -/
def P8004216245668707284.Spec : Prop :=
  ∀ n, (P8004216245668707284.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P17117975114234065811

`∩[A133290(n+1), A138625(n+1)]`
-/

namespace A142504.P17117975114234065811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P17117975114234065811

namespace A142504

/-- `∩[A133290(n+1), A138625(n+1)]` -/
def P17117975114234065811.Spec : Prop :=
  ∀ n, (P17117975114234065811.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P14275843865167139566

`∩[A138625(n+1), A191073(n+1)]`
-/

namespace A142504.P14275843865167139566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P14275843865167139566

namespace A142504

/-- `∩[A138625(n+1), A191073(n+1)]` -/
def P14275843865167139566.Spec : Prop :=
  ∀ n, (P14275843865167139566.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P10596871204253054398

`∩[A138625(n+1), A279815(n+1)]`
-/

namespace A142504.P10596871204253054398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P10596871204253054398

namespace A142504

/-- `∩[A138625(n+1), A279815(n+1)]` -/
def P10596871204253054398.Spec : Prop :=
  ∀ n, (P10596871204253054398.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P15042394258830715676

`∩[A137827(n+1), A138625(n+1)]`
-/

namespace A142504.P15042394258830715676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P15042394258830715676

namespace A142504

/-- `∩[A137827(n+1), A138625(n+1)]` -/
def P15042394258830715676.Spec : Prop :=
  ∀ n, (P15042394258830715676.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P10502636075025468078

`∩[A138625(n+1), A374135(n+1)]`
-/

namespace A142504.P10502636075025468078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P10502636075025468078

namespace A142504

/-- `∩[A138625(n+1), A374135(n+1)]` -/
def P10502636075025468078.Spec : Prop :=
  ∀ n, (P10502636075025468078.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P14284913321303930957

`filter[A138625(n+1), A070563(#)]`
-/

namespace A142504.P14284913321303930957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142504.P14284913321303930957

namespace A142504

/-- `filter[A138625(n+1), A070563(#)]` -/
def P14284913321303930957.Spec : Prop :=
  ∀ n, P14284913321303930957.a n = A142504 (n + 1)

end A142504

/-! ## A142504.P9793183496831447163

`∩[A107925(n+1), A138625(n+1)]`
-/

namespace A142504.P9793183496831447163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P9793183496831447163

namespace A142504

/-- `∩[A107925(n+1), A138625(n+1)]` -/
def P9793183496831447163.Spec : Prop :=
  ∀ n, (P9793183496831447163.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P2331918301868045952

`∩[A004611(n+1), A138625(n+1)]`
-/

namespace A142504.P2331918301868045952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P2331918301868045952

namespace A142504

/-- `∩[A004611(n+1), A138625(n+1)]` -/
def P2331918301868045952.Spec : Prop :=
  ∀ n, (P2331918301868045952.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P4508668118206377243

`∩[A129904(n+1), A138625(n+1)]`
-/

namespace A142504.P4508668118206377243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P4508668118206377243

namespace A142504

/-- `∩[A129904(n+1), A138625(n+1)]` -/
def P4508668118206377243.Spec : Prop :=
  ∀ n, (P4508668118206377243.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P9876135017588629223

`∩[A138625(n+1), A348932(n+1)]`
-/

namespace A142504.P9876135017588629223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P9876135017588629223

namespace A142504

/-- `∩[A138625(n+1), A348932(n+1)]` -/
def P9876135017588629223.Spec : Prop :=
  ∀ n, (P9876135017588629223.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P13546052176695231352

`∩[A138625(n+1), A260682(n+1)]`
-/

namespace A142504.P13546052176695231352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142504.P13546052176695231352

namespace A142504

/-- `∩[A138625(n+1), A260682(n+1)]` -/
def P13546052176695231352.Spec : Prop :=
  ∀ n, (P13546052176695231352.a n : ℤ) = A142504 (n + 1)

end A142504

/-! ## A142504.P11028960304460344080

`record[A020639(4*n+98*n+97)]`
-/

namespace A142504.P11028960304460344080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + (98 * n + 97))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142504.P11028960304460344080

namespace A142504

/-- `record[A020639(4*n+98*n+97)]` -/
def P11028960304460344080.Spec : Prop :=
  ∀ n, P11028960304460344080.a n = A142504 (n + 1)

end A142504

/-!
# A142505: Primes congruent to 47 mod 51.

The programs for A142505, the canonical program `A142505.P12520781874869629303` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142505 has offset 1).

The definition of A142505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142505.P12520781874869629303

`p?[51*n-4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142505

/-- `p?[51*n-4]` -/
def P12520781874869629303.Spec : Prop :=
  ∀ n, P12520781874869629303.a n = A142505 (n + 1)

theorem P12520781874869629303.correct : P12520781874869629303.Spec := by
  intro n
  simp only [A142505, Nat.add_sub_cancel]

end A142505

/-! ## A142505.P7699359199604906527

`∩[A003627(n+1), A141865(n+1)]`
-/

namespace A142505.P7699359199604906527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P7699359199604906527

namespace A142505

/-- `∩[A003627(n+1), A141865(n+1)]` -/
def P7699359199604906527.Spec : Prop :=
  ∀ n, (P7699359199604906527.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P2447262180760756498

`∩[A007528(n+1), A141865(n+1)]`
-/

namespace A142505.P2447262180760756498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P2447262180760756498

namespace A142505

/-- `∩[A007528(n+1), A141865(n+1)]` -/
def P2447262180760756498.Spec : Prop :=
  ∀ n, (P2447262180760756498.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P3111787444675022941

`∩[A045309(n+1), A141865(n+1)]`
-/

namespace A142505.P3111787444675022941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P3111787444675022941

namespace A142505

/-- `∩[A045309(n+1), A141865(n+1)]` -/
def P3111787444675022941.Spec : Prop :=
  ∀ n, (P3111787444675022941.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P2006680191613137613

`∩[A045410(n+1), A141865(n+1)]`
-/

namespace A142505.P2006680191613137613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P2006680191613137613

namespace A142505

/-- `∩[A045410(n+1), A141865(n+1)]` -/
def P2006680191613137613.Spec : Prop :=
  ∀ n, (P2006680191613137613.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P4724863655502095728

`∩[A056955(n+1), A141865(n+1)]`
-/

namespace A142505.P4724863655502095728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P4724863655502095728

namespace A142505

/-- `∩[A056955(n+1), A141865(n+1)]` -/
def P4724863655502095728.Spec : Prop :=
  ∀ n, (P4724863655502095728.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P12243959045599174757

`∩[A141865(n+1), A191073(n+1)]`
-/

namespace A142505.P12243959045599174757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P12243959045599174757

namespace A142505

/-- `∩[A141865(n+1), A191073(n+1)]` -/
def P12243959045599174757.Spec : Prop :=
  ∀ n, (P12243959045599174757.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P14002127030572033837

`∩[A003627(n+1), A082285(n)+n]`
-/

namespace A142505.P14002127030572033837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P14002127030572033837

namespace A142505

/-- `∩[A003627(n+1), A082285(n)+n]` -/
def P14002127030572033837.Spec : Prop :=
  ∀ n, (P14002127030572033837.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P12037659327423251625

`∩[A007528(n+1), A082285(n)+n]`
-/

namespace A142505.P12037659327423251625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P12037659327423251625

namespace A142505

/-- `∩[A007528(n+1), A082285(n)+n]` -/
def P12037659327423251625.Spec : Prop :=
  ∀ n, (P12037659327423251625.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P6212070990521443632

`∩[A066501(n+1), A141865(n+1)]`
-/

namespace A142505.P6212070990521443632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P6212070990521443632

namespace A142505

/-- `∩[A066501(n+1), A141865(n+1)]` -/
def P6212070990521443632.Spec : Prop :=
  ∀ n, (P6212070990521443632.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P13568531685375703373

`∩[A141865(n+1), A259548(n+1)]`
-/

namespace A142505.P13568531685375703373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P13568531685375703373

namespace A142505

/-- `∩[A141865(n+1), A259548(n+1)]` -/
def P13568531685375703373.Spec : Prop :=
  ∀ n, (P13568531685375703373.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P3345757604528703072

`record[A006530(51*(n+1)-4)]`
-/

namespace A142505.P3345757604528703072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (51 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142505.P3345757604528703072

namespace A142505

/-- `record[A006530(51*(n+1)-4)]` -/
def P3345757604528703072.Spec : Prop :=
  ∀ n, P3345757604528703072.a n = A142505 (n + 1)

end A142505

/-! ## A142505.P13209811559503363957

`record[A020639(51*(n+1)-4)]`
-/

namespace A142505.P13209811559503363957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (51 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142505.P13209811559503363957

namespace A142505

/-- `record[A020639(51*(n+1)-4)]` -/
def P13209811559503363957.Spec : Prop :=
  ∀ n, P13209811559503363957.a n = A142505 (n + 1)

end A142505

/-! ## A142505.P12685827547021916091

`∩[A082406(n+1), A141865(n+1)]`
-/

namespace A142505.P12685827547021916091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P12685827547021916091

namespace A142505

/-- `∩[A082406(n+1), A141865(n+1)]` -/
def P12685827547021916091.Spec : Prop :=
  ∀ n, (P12685827547021916091.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P10341336176111577258

`∩[A141865(n+1), A167409(n+1)]`
-/

namespace A142505.P10341336176111577258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P10341336176111577258

namespace A142505

/-- `∩[A141865(n+1), A167409(n+1)]` -/
def P10341336176111577258.Spec : Prop :=
  ∀ n, (P10341336176111577258.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P5311789445592723013

`∩[A141865(n+1), A016969(n)]`
-/

namespace A142505.P5311789445592723013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P5311789445592723013

namespace A142505

/-- `∩[A141865(n+1), A016969(n)]` -/
def P5311789445592723013.Spec : Prop :=
  ∀ n, (P5311789445592723013.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P11929314367768407636

`∩[A141865(n+1), A101328(n+2)]`
-/

namespace A142505.P11929314367768407636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P11929314367768407636

namespace A142505

/-- `∩[A141865(n+1), A101328(n+2)]` -/
def P11929314367768407636.Spec : Prop :=
  ∀ n, (P11929314367768407636.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P2270522869389787317

`∩[A141865(n+1), A277571(n+1)]`
-/

namespace A142505.P2270522869389787317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P2270522869389787317

namespace A142505

/-- `∩[A141865(n+1), A277571(n+1)]` -/
def P2270522869389787317.Spec : Prop :=
  ∀ n, (P2270522869389787317.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P1716613244260194894

`∩[A074243(n+1), A141865(n+1)]`
-/

namespace A142505.P1716613244260194894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P1716613244260194894

namespace A142505

/-- `∩[A074243(n+1), A141865(n+1)]` -/
def P1716613244260194894.Spec : Prop :=
  ∀ n, (P1716613244260194894.a n : ℤ) = A142505 (n + 1)

end A142505

/-! ## A142505.P15093524363607265300

`∩[A141865(n+1), A348934(n+1)]`
-/

namespace A142505.P15093524363607265300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142505.P15093524363607265300

namespace A142505

/-- `∩[A141865(n+1), A348934(n+1)]` -/
def P15093524363607265300.Spec : Prop :=
  ∀ n, (P15093524363607265300.a n : ℤ) = A142505 (n + 1)

end A142505

/-!
# A142506: Primes congruent to 49 mod 51.

The programs for A142506, the canonical program `A142506.P5353581045395565899` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142506 has offset 1).

The definition of A142506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142506.P5353581045395565899

`p?[51*n-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142506

/-- `p?[51*n-2]` -/
def P5353581045395565899.Spec : Prop :=
  ∀ n, P5353581045395565899.a n = A142506 (n + 1)

theorem P5353581045395565899.correct : P5353581045395565899.Spec := by
  intro n
  simp only [A142506, Nat.add_sub_cancel]

end A142506

/-! ## A142506.P3670478204905637933

`A000027(p?[A304840(n+1)-(n+1)])`
-/

namespace A142506.P3670478204905637933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142506.P3670478204905637933

namespace A142506

/-- `A000027(p?[A304840(n+1)-(n+1)])` -/
def P3670478204905637933.Spec : Prop :=
  ∀ n, P3670478204905637933.a n = A142506 (n + 1)

end A142506

/-! ## A142506.P16981109541883422209

`A000027(p?[A158066(n+1)+A004273(n)])`
-/

namespace A142506.P16981109541883422209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142506.P16981109541883422209

namespace A142506

/-- `A000027(p?[A158066(n+1)+A004273(n)])` -/
def P16981109541883422209.Spec : Prop :=
  ∀ n, P16981109541883422209.a n = A142506 (n + 1)

end A142506

/-! ## A142506.P669471448536917947

`∩[A106904(n+1), A140543(n+1)]`
-/

namespace A142506.P669471448536917947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P669471448536917947

namespace A142506

/-- `∩[A106904(n+1), A140543(n+1)]` -/
def P669471448536917947.Spec : Prop :=
  ∀ n, (P669471448536917947.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P15164168063716296503

`∩[A002476(n+1), A140543(n+1)]`
-/

namespace A142506.P15164168063716296503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P15164168063716296503

namespace A142506

/-- `∩[A002476(n+1), A140543(n+1)]` -/
def P15164168063716296503.Spec : Prop :=
  ∀ n, (P15164168063716296503.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P12482512383975665112

`∩[A007645(n+1), A140543(n+1)]`
-/

namespace A142506.P12482512383975665112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P12482512383975665112

namespace A142506

/-- `∩[A007645(n+1), A140543(n+1)]` -/
def P12482512383975665112.Spec : Prop :=
  ∀ n, (P12482512383975665112.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P8539910830143449747

`∩[A045375(n+1), A140543(n+1)]`
-/

namespace A142506.P8539910830143449747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P8539910830143449747

namespace A142506

/-- `∩[A045375(n+1), A140543(n+1)]` -/
def P8539910830143449747.Spec : Prop :=
  ∀ n, (P8539910830143449747.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P7231318484319381413

`∩[A123365(n+1), A140543(n+1)]`
-/

namespace A142506.P7231318484319381413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P7231318484319381413

namespace A142506

/-- `∩[A123365(n+1), A140543(n+1)]` -/
def P7231318484319381413.Spec : Prop :=
  ∀ n, (P7231318484319381413.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P14745052383486718355

`∩[A045331(n+1), A140543(n+1)]`
-/

namespace A142506.P14745052383486718355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P14745052383486718355

namespace A142506

/-- `∩[A045331(n+1), A140543(n+1)]` -/
def P14745052383486718355.Spec : Prop :=
  ∀ n, (P14745052383486718355.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P6401127843928127609

`∩[A140543(n+1), A191034(n+1)]`
-/

namespace A142506.P6401127843928127609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P6401127843928127609

namespace A142506

/-- `∩[A140543(n+1), A191034(n+1)]` -/
def P6401127843928127609.Spec : Prop :=
  ∀ n, (P6401127843928127609.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P7005816516351854713

`∩[A140543(n+1), A279815(n+1)]`
-/

namespace A142506.P7005816516351854713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P7005816516351854713

namespace A142506

/-- `∩[A140543(n+1), A279815(n+1)]` -/
def P7005816516351854713.Spec : Prop :=
  ∀ n, (P7005816516351854713.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P3516679109068003720

`∩[A055664(n+1), A140543(n+1)]`
-/

namespace A142506.P3516679109068003720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P3516679109068003720

namespace A142506

/-- `∩[A055664(n+1), A140543(n+1)]` -/
def P3516679109068003720.Spec : Prop :=
  ∀ n, (P3516679109068003720.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P3636767288274821931

`∩[A133290(n+1), A140543(n+1)]`
-/

namespace A142506.P3636767288274821931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P3636767288274821931

namespace A142506

/-- `∩[A133290(n+1), A140543(n+1)]` -/
def P3636767288274821931.Spec : Prop :=
  ∀ n, (P3636767288274821931.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P5524560997954938036

`∩[A137827(n+1), A140543(n+1)]`
-/

namespace A142506.P5524560997954938036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P5524560997954938036

namespace A142506

/-- `∩[A137827(n+1), A140543(n+1)]` -/
def P5524560997954938036.Spec : Prop :=
  ∀ n, (P5524560997954938036.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P16033208996060270321

`∩[A002476(n+1), A361692(n+1)-1]`
-/

namespace A142506.P16033208996060270321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P16033208996060270321

namespace A142506

/-- `∩[A002476(n+1), A361692(n+1)-1]` -/
def P16033208996060270321.Spec : Prop :=
  ∀ n, (P16033208996060270321.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P11416434204512555078

`∩[A007645(n+1), A361692(n+1)-1]`
-/

namespace A142506.P11416434204512555078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P11416434204512555078

namespace A142506

/-- `∩[A007645(n+1), A361692(n+1)-1]` -/
def P11416434204512555078.Spec : Prop :=
  ∀ n, (P11416434204512555078.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P16957674067260032213

`∩[A140543(n+1), A374135(n+1)]`
-/

namespace A142506.P16957674067260032213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P16957674067260032213

namespace A142506

/-- `∩[A140543(n+1), A374135(n+1)]` -/
def P16957674067260032213.Spec : Prop :=
  ∀ n, (P16957674067260032213.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P11177216761634270033

`filter[A140543(n+1), A070563(#)]`
-/

namespace A142506.P11177216761634270033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142506.P11177216761634270033

namespace A142506

/-- `filter[A140543(n+1), A070563(#)]` -/
def P11177216761634270033.Spec : Prop :=
  ∀ n, P11177216761634270033.a n = A142506 (n + 1)

end A142506

/-! ## A142506.P10054987600021978579

`∩[A107925(n+1), A140543(n+1)]`
-/

namespace A142506.P10054987600021978579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P10054987600021978579

namespace A142506

/-- `∩[A107925(n+1), A140543(n+1)]` -/
def P10054987600021978579.Spec : Prop :=
  ∀ n, (P10054987600021978579.a n : ℤ) = A142506 (n + 1)

end A142506

/-! ## A142506.P3285672457641462286

`∩[A004611(n+1), A140543(n+1)]`
-/

namespace A142506.P3285672457641462286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142506.P3285672457641462286

namespace A142506

/-- `∩[A004611(n+1), A140543(n+1)]` -/
def P3285672457641462286.Spec : Prop :=
  ∀ n, (P3285672457641462286.a n : ℤ) = A142506 (n + 1)

end A142506

/-!
# A142507: Primes congruent to 50 mod 51.

The programs for A142507, the canonical program `A142507.P7060105591973240231` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142507 has offset 1).

The definition of A142507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142507.P7060105591973240231

`p?[51*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142507

/-- `p?[51*n-1]` -/
def P7060105591973240231.Spec : Prop :=
  ∀ n, P7060105591973240231.a n = A142507 (n + 1)

theorem P7060105591973240231.correct : P7060105591973240231.Spec := by
  intro n
  simp only [A142507, Nat.add_sub_cancel]

end A142507

/-! ## A142507.P13951035590088219290

`or(1, p?[50*(n+1)+n])`
-/

namespace A142507.P13951035590088219290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142507.P13951035590088219290

namespace A142507

/-- `or(1, p?[50*(n+1)+n])` -/
def P13951035590088219290.Spec : Prop :=
  ∀ n, (P13951035590088219290.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P142837787571661914

`∑{p}[p?[50*(n+1)+n], #]`
-/

namespace A142507.P142837787571661914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142507.P142837787571661914

namespace A142507

/-- `∑{p}[p?[50*(n+1)+n], #]` -/
def P142837787571661914.Spec : Prop :=
  ∀ n, (P142837787571661914.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P828356447111607753

`∏{p}[p?[50*(n+1)+n], #]`
-/

namespace A142507.P828356447111607753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142507.P828356447111607753

namespace A142507

/-- `∏{p}[p?[50*(n+1)+n], #]` -/
def P828356447111607753.Spec : Prop :=
  ∀ n, (P828356447111607753.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P4261189190155807656

`∩[A003627(n+1), A140541(n+1)]`
-/

namespace A142507.P4261189190155807656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P4261189190155807656

namespace A142507

/-- `∩[A003627(n+1), A140541(n+1)]` -/
def P4261189190155807656.Spec : Prop :=
  ∀ n, (P4261189190155807656.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P4301726679836091161

`∩[A007528(n+1), A140541(n+1)]`
-/

namespace A142507.P4301726679836091161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P4301726679836091161

namespace A142507

/-- `∩[A007528(n+1), A140541(n+1)]` -/
def P4301726679836091161.Spec : Prop :=
  ∀ n, (P4301726679836091161.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P9532481967967404251

`∩[A045309(n+1), A140541(n+1)]`
-/

namespace A142507.P9532481967967404251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P9532481967967404251

namespace A142507

/-- `∩[A045309(n+1), A140541(n+1)]` -/
def P9532481967967404251.Spec : Prop :=
  ∀ n, (P9532481967967404251.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P4329732258325561805

`∩[A045410(n+1), A140541(n+1)]`
-/

namespace A142507.P4329732258325561805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P4329732258325561805

namespace A142507

/-- `∩[A045410(n+1), A140541(n+1)]` -/
def P4329732258325561805.Spec : Prop :=
  ∀ n, (P4329732258325561805.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P4401403459433233300

`∩[A056955(n+1), A140541(n+1)]`
-/

namespace A142507.P4401403459433233300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P4401403459433233300

namespace A142507

/-- `∩[A056955(n+1), A140541(n+1)]` -/
def P4401403459433233300.Spec : Prop :=
  ∀ n, (P4401403459433233300.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P9916494469341564786

`∩[A140541(n+1), A191073(n+1)]`
-/

namespace A142507.P9916494469341564786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P9916494469341564786

namespace A142507

/-- `∩[A140541(n+1), A191073(n+1)]` -/
def P9916494469341564786.Spec : Prop :=
  ∀ n, (P9916494469341564786.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P6154307374109670661

`∩[A003627(n+1), A361692(n+1)]`
-/

namespace A142507.P6154307374109670661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P6154307374109670661

namespace A142507

/-- `∩[A003627(n+1), A361692(n+1)]` -/
def P6154307374109670661.Spec : Prop :=
  ∀ n, (P6154307374109670661.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P12046486299292571972

`∩[A007528(n+1), A361692(n+1)]`
-/

namespace A142507.P12046486299292571972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P12046486299292571972

namespace A142507

/-- `∩[A007528(n+1), A361692(n+1)]` -/
def P12046486299292571972.Spec : Prop :=
  ∀ n, (P12046486299292571972.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P9559621643359904432

`∩[A045309(n+1), A361692(n+1)]`
-/

namespace A142507.P9559621643359904432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P9559621643359904432

namespace A142507

/-- `∩[A045309(n+1), A361692(n+1)]` -/
def P9559621643359904432.Spec : Prop :=
  ∀ n, (P9559621643359904432.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P14289354601510163050

`∩[A045410(n+1), A361692(n+1)]`
-/

namespace A142507.P14289354601510163050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P14289354601510163050

namespace A142507

/-- `∩[A045410(n+1), A361692(n+1)]` -/
def P14289354601510163050.Spec : Prop :=
  ∀ n, (P14289354601510163050.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P14936011265399198798

`∩[A056955(n+1), A361692(n+1)]`
-/

namespace A142507.P14936011265399198798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P14936011265399198798

namespace A142507

/-- `∩[A056955(n+1), A361692(n+1)]` -/
def P14936011265399198798.Spec : Prop :=
  ∀ n, (P14936011265399198798.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P13103681347082567986

`∩[A191073(n+1), A361692(n+1)]`
-/

namespace A142507.P13103681347082567986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P13103681347082567986

namespace A142507

/-- `∩[A191073(n+1), A361692(n+1)]` -/
def P13103681347082567986.Spec : Prop :=
  ∀ n, (P13103681347082567986.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P7880928240388836920

`∩[A003627(n+1), A215137(n)-2]`
-/

namespace A142507.P7880928240388836920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P7880928240388836920

namespace A142507

/-- `∩[A003627(n+1), A215137(n)-2]` -/
def P7880928240388836920.Spec : Prop :=
  ∀ n, (P7880928240388836920.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P1256074093390760233

`∩[A007528(n+1), A215137(n)-2]`
-/

namespace A142507.P1256074093390760233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P1256074093390760233

namespace A142507

/-- `∩[A007528(n+1), A215137(n)-2]` -/
def P1256074093390760233.Spec : Prop :=
  ∀ n, (P1256074093390760233.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P5018148144905737576

`∩[A045309(n+1), A215137(n)-2]`
-/

namespace A142507.P5018148144905737576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P5018148144905737576

namespace A142507

/-- `∩[A045309(n+1), A215137(n)-2]` -/
def P5018148144905737576.Spec : Prop :=
  ∀ n, (P5018148144905737576.a n : ℤ) = A142507 (n + 1)

end A142507

/-! ## A142507.P474577274728325118

`∩[A045410(n+1), A215137(n)-2]`
-/

namespace A142507.P474577274728325118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142507.P474577274728325118

namespace A142507

/-- `∩[A045410(n+1), A215137(n)-2]` -/
def P474577274728325118.Spec : Prop :=
  ∀ n, (P474577274728325118.a n : ℤ) = A142507 (n + 1)

end A142507

/-!
# A142508: Primes congruent to 1 mod 52.

The programs for A142508, the canonical program `A142508.P10837616515559294826` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142508 has offset 1).

The definition of A142508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142508.P10837616515559294826

`p?[52*n+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142508

/-- `p?[52*n+1]` -/
def P10837616515559294826.Spec : Prop :=
  ∀ n, (P10837616515559294826.a n : ℤ) = A142508 (n + 1)

theorem P10837616515559294826.correct : P10837616515559294826.Spec := by
  intro n
  simp only [A142508, Nat.add_sub_cancel]

end A142508

/-! ## A142508.P976106635737625707

`or(1, p?[or(1, 52*n)])`
-/

namespace A142508.P976106635737625707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (52 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142508.P976106635737625707

namespace A142508

/-- `or(1, p?[or(1, 52*n)])` -/
def P976106635737625707.Spec : Prop :=
  ∀ n, (P976106635737625707.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P13336933380987321623

`or(1, p?[a(n-1)+52])` with `a(0)=1`
-/

namespace A142508.P13336933380987321623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 52

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142508.P13336933380987321623

namespace A142508

/-- `or(1, p?[a(n-1)+52])` -/
def P13336933380987321623.Spec : Prop :=
  ∀ n, (P13336933380987321623.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P14070187576143472322

`∏{d}[p?[a(n-1)+52], #]` with `a(0)=1`
-/

namespace A142508.P14070187576143472322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 52

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142508.P14070187576143472322

namespace A142508

/-- `∏{d}[p?[a(n-1)+52], #]` -/
def P14070187576143472322.Spec : Prop :=
  ∀ n, (P14070187576143472322.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P2051110687452838552

`∑{p}[p?[a(n-1)+52], #]` with `a(0)=1`
-/

namespace A142508.P2051110687452838552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 52

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142508.P2051110687452838552

namespace A142508

/-- `∑{p}[p?[a(n-1)+52], #]` -/
def P2051110687452838552.Spec : Prop :=
  ∀ n, (P2051110687452838552.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P16386088183663719559

`∏{p}[p?[a(n-1)+52], #]` with `a(0)=1`
-/

namespace A142508.P16386088183663719559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 52

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142508.P16386088183663719559

namespace A142508

/-- `∏{p}[p?[a(n-1)+52], #]` -/
def P16386088183663719559.Spec : Prop :=
  ∀ n, (P16386088183663719559.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P1105443230206414037

`∩[A008846(n+1), A268753(n+1)]`
-/

namespace A142508.P1105443230206414037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P1105443230206414037

namespace A142508

/-- `∩[A008846(n+1), A268753(n+1)]` -/
def P1105443230206414037.Spec : Prop :=
  ∀ n, (P1105443230206414037.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P8592986754159905872

`∩[A033210(n+1), A215391(n+1)]`
-/

namespace A142508.P8592986754159905872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P8592986754159905872

namespace A142508

/-- `∩[A033210(n+1), A215391(n+1)]` -/
def P8592986754159905872.Spec : Prop :=
  ∀ n, (P8592986754159905872.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P12573396971966923343

`∩[A033210(n+1), A268753(n+1)]`
-/

namespace A142508.P12573396971966923343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P12573396971966923343

namespace A142508

/-- `∩[A033210(n+1), A268753(n+1)]` -/
def P12573396971966923343.Spec : Prop :=
  ∀ n, (P12573396971966923343.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P9673786445358326383

`∩[A191218(n+1), A268753(n+1)]`
-/

namespace A142508.P9673786445358326383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P9673786445358326383

namespace A142508

/-- `∩[A191218(n+1), A268753(n+1)]` -/
def P9673786445358326383.Spec : Prop :=
  ∀ n, (P9673786445358326383.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P2651189158829751558

`∩[A268753(n+1), A296926(n+1)]`
-/

namespace A142508.P2651189158829751558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P2651189158829751558

namespace A142508

/-- `∩[A268753(n+1), A296926(n+1)]` -/
def P2651189158829751558.Spec : Prop :=
  ∀ n, (P2651189158829751558.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P7323124828338457235

`∩[A268753(n+1), A296928(n+1)]`
-/

namespace A142508.P7323124828338457235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P7323124828338457235

namespace A142508

/-- `∩[A268753(n+1), A296928(n+1)]` -/
def P7323124828338457235.Spec : Prop :=
  ∀ n, (P7323124828338457235.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P313370912045531217

`∩[A002144(n+1), A268753(n+1)]`
-/

namespace A142508.P313370912045531217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P313370912045531217

namespace A142508

/-- `∩[A002144(n+1), A268753(n+1)]` -/
def P313370912045531217.Spec : Prop :=
  ∀ n, (P313370912045531217.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P14155668408451527243

`∩[A002313(n+1), A268753(n+1)]`
-/

namespace A142508.P14155668408451527243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P14155668408451527243

namespace A142508

/-- `∩[A002313(n+1), A268753(n+1)]` -/
def P14155668408451527243.Spec : Prop :=
  ∀ n, (P14155668408451527243.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P11767068236285950394

`∩[A268753(n+1), A280084(n+1)]`
-/

namespace A142508.P11767068236285950394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P11767068236285950394

namespace A142508

/-- `∩[A268753(n+1), A280084(n+1)]` -/
def P11767068236285950394.Spec : Prop :=
  ∀ n, (P11767068236285950394.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P15315431401433468394

`∩[A055025(n+1), A268753(n+1)]`
-/

namespace A142508.P15315431401433468394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P15315431401433468394

namespace A142508

/-- `∩[A055025(n+1), A268753(n+1)]` -/
def P15315431401433468394.Spec : Prop :=
  ∀ n, (P15315431401433468394.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P18156966159764264641

`∩[A120960(n+1), A268753(n+1)]`
-/

namespace A142508.P18156966159764264641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P18156966159764264641

namespace A142508

/-- `∩[A120960(n+1), A268753(n+1)]` -/
def P18156966159764264641.Spec : Prop :=
  ∀ n, (P18156966159764264641.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P18034266292414817640

`∩[A085759(n+1), A268753(n+1)]`
-/

namespace A142508.P18034266292414817640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P18034266292414817640

namespace A142508

/-- `∩[A085759(n+1), A268753(n+1)]` -/
def P18034266292414817640.Spec : Prop :=
  ∀ n, (P18034266292414817640.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P4635400716445368528

`∩[A268753(n+1), A351535(n+1)]`
-/

namespace A142508.P4635400716445368528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P4635400716445368528

namespace A142508

/-- `∩[A268753(n+1), A351535(n+1)]` -/
def P4635400716445368528.Spec : Prop :=
  ∀ n, (P4635400716445368528.a n : ℤ) = A142508 (n + 1)

end A142508

/-! ## A142508.P5779046107645330568

`∩[A125018(n+1), A268753(n+1)]`
-/

namespace A142508.P5779046107645330568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142508.P5779046107645330568

namespace A142508

/-- `∩[A125018(n+1), A268753(n+1)]` -/
def P5779046107645330568.Spec : Prop :=
  ∀ n, (P5779046107645330568.a n : ℤ) = A142508 (n + 1)

end A142508

/-!
# A142509: Primes congruent to 3 mod 52.

The programs for A142509, the canonical program `A142509.P10142410434751017720` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142509 has offset 1).

The definition of A142509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142509.P10142410434751017720

`A100202(eq[3, A100202(n+1)%4]+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142509

/-- `A100202(eq[3, A100202(n+1)%4]+1)` -/
def P10142410434751017720.Spec : Prop :=
  ∀ n, P10142410434751017720.a n = A142509 (n + 1)

theorem P10142410434751017720.correct : P10142410434751017720.Spec := by
  intro n
  simp only [A142509, Nat.add_sub_cancel]

end A142509

/-! ## A142509.P8974157818245533884

`p?[52*n+3]`
-/

namespace A142509.P8974157818245533884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142509.P8974157818245533884

namespace A142509

/-- `p?[52*n+3]` -/
def P8974157818245533884.Spec : Prop :=
  ∀ n, (P8974157818245533884.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P12694829589675698

`or(1, p?[or(3, 52*n)])`
-/

namespace A142509.P12694829589675698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (52 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142509.P12694829589675698

namespace A142509

/-- `or(1, p?[or(3, 52*n)])` -/
def P12694829589675698.Spec : Prop :=
  ∀ n, (P12694829589675698.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P3337770816901174760

`∩[A100202(n+1), A296927(n+1)]`
-/

namespace A142509.P3337770816901174760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P3337770816901174760

namespace A142509

/-- `∩[A100202(n+1), A296927(n+1)]` -/
def P3337770816901174760.Spec : Prop :=
  ∀ n, (P3337770816901174760.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P4743458939532769642

`∩[A002145(n+1), A100202(n+1)]`
-/

namespace A142509.P4743458939532769642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P4743458939532769642

namespace A142509

/-- `∩[A002145(n+1), A100202(n+1)]` -/
def P4743458939532769642.Spec : Prop :=
  ∀ n, (P4743458939532769642.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P3801751673194450031

`∩[A045326(n+1), A100202(n+1)]`
-/

namespace A142509.P3801751673194450031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P3801751673194450031

namespace A142509

/-- `∩[A045326(n+1), A100202(n+1)]` -/
def P3801751673194450031.Spec : Prop :=
  ∀ n, (P3801751673194450031.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P8017070675774717571

`∩[A085760(n+1), A100202(n+1)]`
-/

namespace A142509.P8017070675774717571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P8017070675774717571

namespace A142509

/-- `∩[A085760(n+1), A100202(n+1)]` -/
def P8017070675774717571.Spec : Prop :=
  ∀ n, (P8017070675774717571.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P16472852702382014740

`∩[A100202(n+1), A197504(n+1)]`
-/

namespace A142509.P16472852702382014740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P16472852702382014740

namespace A142509

/-- `∩[A100202(n+1), A197504(n+1)]` -/
def P16472852702382014740.Spec : Prop :=
  ∀ n, (P16472852702382014740.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P12399384214468232506

`∩[A100202(n+1), A332555(n+1)]`
-/

namespace A142509.P12399384214468232506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P12399384214468232506

namespace A142509

/-- `∩[A100202(n+1), A332555(n+1)]` -/
def P12399384214468232506.Spec : Prop :=
  ∀ n, (P12399384214468232506.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P2331728617914279736

`∩[A100202(n+1), A292762(n+1)]`
-/

namespace A142509.P2331728617914279736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P2331728617914279736

namespace A142509

/-- `∩[A100202(n+1), A292762(n+1)]` -/
def P2331728617914279736.Spec : Prop :=
  ∀ n, (P2331728617914279736.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P18249133654382898303

`∩[A066499(n+1), A100202(n+1)]`
-/

namespace A142509.P18249133654382898303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P18249133654382898303

namespace A142509

/-- `∩[A066499(n+1), A100202(n+1)]` -/
def P18249133654382898303.Spec : Prop :=
  ∀ n, (P18249133654382898303.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P13217725467655474913

`∩[A097987(n+1), A100202(n+1)]`
-/

namespace A142509.P13217725467655474913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P13217725467655474913

namespace A142509

/-- `∩[A097987(n+1), A100202(n+1)]` -/
def P13217725467655474913.Spec : Prop :=
  ∀ n, (P13217725467655474913.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P8073849837594174703

`∩[A002145(n+1), A153080(n)+1]`
-/

namespace A142509.P8073849837594174703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P8073849837594174703

namespace A142509

/-- `∩[A002145(n+1), A153080(n)+1]` -/
def P8073849837594174703.Spec : Prop :=
  ∀ n, (P8073849837594174703.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P6081560975350600680

`∩[A002145(n+1), A127547(n)-1]`
-/

namespace A142509.P6081560975350600680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P6081560975350600680

namespace A142509

/-- `∩[A002145(n+1), A127547(n)-1]` -/
def P6081560975350600680.Spec : Prop :=
  ∀ n, (P6081560975350600680.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P13593931967855993250

`∩[A045326(n+1), A127547(n)-1]`
-/

namespace A142509.P13593931967855993250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P13593931967855993250

namespace A142509

/-- `∩[A045326(n+1), A127547(n)-1]` -/
def P13593931967855993250.Spec : Prop :=
  ∀ n, (P13593931967855993250.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P5687807868440493574

`∩[A002145(n+1), A190991(n)+2]`
-/

namespace A142509.P5687807868440493574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P5687807868440493574

namespace A142509

/-- `∩[A002145(n+1), A190991(n)+2]` -/
def P5687807868440493574.Spec : Prop :=
  ∀ n, (P5687807868440493574.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P10618976521104536310

`∩[A045326(n+1), A190991(n)+2]`
-/

namespace A142509.P10618976521104536310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P10618976521104536310

namespace A142509

/-- `∩[A045326(n+1), A190991(n)+2]` -/
def P10618976521104536310.Spec : Prop :=
  ∀ n, (P10618976521104536310.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P13551725099909198743

`∩[A296927(n+1), A127547(n)-1]`
-/

namespace A142509.P13551725099909198743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P13551725099909198743

namespace A142509

/-- `∩[A296927(n+1), A127547(n)-1]` -/
def P13551725099909198743.Spec : Prop :=
  ∀ n, (P13551725099909198743.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P12742130581741363262

`∩[A296927(n+1), A190991(n)+2]`
-/

namespace A142509.P12742130581741363262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P12742130581741363262

namespace A142509

/-- `∩[A296927(n+1), A190991(n)+2]` -/
def P12742130581741363262.Spec : Prop :=
  ∀ n, (P12742130581741363262.a n : ℤ) = A142509 (n + 1)

end A142509

/-! ## A142509.P12383913433358201569

`∩[A002145(n+1), A154609(n)-2]`
-/

namespace A142509.P12383913433358201569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142509.P12383913433358201569

namespace A142509

/-- `∩[A002145(n+1), A154609(n)-2]` -/
def P12383913433358201569.Spec : Prop :=
  ∀ n, (P12383913433358201569.a n : ℤ) = A142509 (n + 1)

end A142509

/-!
# A142510: Primes congruent to 5 mod 52.

The programs for A142510, the canonical program `A142510.P15793601626251418668` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142510 has offset 1).

The definition of A142510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142510.P15793601626251418668

`p?[52*n+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142510

/-- `p?[52*n+5]` -/
def P15793601626251418668.Spec : Prop :=
  ∀ n, (P15793601626251418668.a n : ℤ) = A142510 (n + 1)

theorem P15793601626251418668.correct : P15793601626251418668.Spec := by
  intro n
  simp only [A142510, Nat.add_sub_cancel]

end A142510

/-! ## A142510.P7813119663947182841

`or(1, p?[a(n-1)+52])` with `a(0)=5`
-/

namespace A142510.P7813119663947182841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 52

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142510.P7813119663947182841

namespace A142510

/-- `or(1, p?[a(n-1)+52])` -/
def P7813119663947182841.Spec : Prop :=
  ∀ n, (P7813119663947182841.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P15781141650360833109

`∏{d}[p?[a(n-1)+52], #]` with `a(0)=5`
-/

namespace A142510.P15781141650360833109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 52

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142510.P15781141650360833109

namespace A142510

/-- `∏{d}[p?[a(n-1)+52], #]` -/
def P15781141650360833109.Spec : Prop :=
  ∀ n, (P15781141650360833109.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P10607918456807003560

`∑{p}[p?[a(n-1)+52], #]` with `a(0)=5`
-/

namespace A142510.P10607918456807003560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 52

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142510.P10607918456807003560

namespace A142510

/-- `∑{p}[p?[a(n-1)+52], #]` -/
def P10607918456807003560.Spec : Prop :=
  ∀ n, (P10607918456807003560.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P16786242781612093945

`∏{p}[p?[a(n-1)+52], #]` with `a(0)=5`
-/

namespace A142510.P16786242781612093945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 52

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142510.P16786242781612093945

namespace A142510

/-- `∏{p}[p?[a(n-1)+52], #]` -/
def P16786242781612093945.Spec : Prop :=
  ∀ n, (P16786242781612093945.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P1597962987882507370

`∩[A008846(n+1), A102732(n+1)]`
-/

namespace A142510.P1597962987882507370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P1597962987882507370

namespace A142510

/-- `∩[A008846(n+1), A102732(n+1)]` -/
def P1597962987882507370.Spec : Prop :=
  ∀ n, (P1597962987882507370.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P592177464751976195

`∩[A102732(n+1), A191218(n+1)]`
-/

namespace A142510.P592177464751976195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P592177464751976195

namespace A142510

/-- `∩[A102732(n+1), A191218(n+1)]` -/
def P592177464751976195.Spec : Prop :=
  ∀ n, (P592177464751976195.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P16504371193827027338

`∩[A002144(n+1), A102732(n+1)]`
-/

namespace A142510.P16504371193827027338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P16504371193827027338

namespace A142510

/-- `∩[A002144(n+1), A102732(n+1)]` -/
def P16504371193827027338.Spec : Prop :=
  ∀ n, (P16504371193827027338.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P8113959816100644125

`∩[A002313(n+1), A102732(n+1)]`
-/

namespace A142510.P8113959816100644125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P8113959816100644125

namespace A142510

/-- `∩[A002313(n+1), A102732(n+1)]` -/
def P8113959816100644125.Spec : Prop :=
  ∀ n, (P8113959816100644125.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P15339935934825358017

`∩[A102732(n+1), A280084(n+1)]`
-/

namespace A142510.P15339935934825358017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P15339935934825358017

namespace A142510

/-- `∩[A102732(n+1), A280084(n+1)]` -/
def P15339935934825358017.Spec : Prop :=
  ∀ n, (P15339935934825358017.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P1957584741500589757

`∩[A102732(n+1), A296927(n+1)]`
-/

namespace A142510.P1957584741500589757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P1957584741500589757

namespace A142510

/-- `∩[A102732(n+1), A296927(n+1)]` -/
def P1957584741500589757.Spec : Prop :=
  ∀ n, (P1957584741500589757.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P3781960879250721481

`∩[A055025(n+1), A102732(n+1)]`
-/

namespace A142510.P3781960879250721481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P3781960879250721481

namespace A142510

/-- `∩[A055025(n+1), A102732(n+1)]` -/
def P3781960879250721481.Spec : Prop :=
  ∀ n, (P3781960879250721481.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P14841525669313408467

`∩[A102732(n+1), A120960(n+1)]`
-/

namespace A142510.P14841525669313408467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P14841525669313408467

namespace A142510

/-- `∩[A102732(n+1), A120960(n+1)]` -/
def P14841525669313408467.Spec : Prop :=
  ∀ n, (P14841525669313408467.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P16030016662750246160

`∩[A085759(n+1), A102732(n+1)]`
-/

namespace A142510.P16030016662750246160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P16030016662750246160

namespace A142510

/-- `∩[A085759(n+1), A102732(n+1)]` -/
def P16030016662750246160.Spec : Prop :=
  ∀ n, (P16030016662750246160.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P5606434885087214352

`∩[A102732(n+1), A351535(n+1)]`
-/

namespace A142510.P5606434885087214352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P5606434885087214352

namespace A142510

/-- `∩[A102732(n+1), A351535(n+1)]` -/
def P5606434885087214352.Spec : Prop :=
  ∀ n, (P5606434885087214352.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P17470095862202511751

`∩[A102732(n+1), A125018(n+1)]`
-/

namespace A142510.P17470095862202511751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P17470095862202511751

namespace A142510

/-- `∩[A102732(n+1), A125018(n+1)]` -/
def P17470095862202511751.Spec : Prop :=
  ∀ n, (P17470095862202511751.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P1850086098213877931

`∩[A102732(n+1), A281292(n+1)]`
-/

namespace A142510.P1850086098213877931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P1850086098213877931

namespace A142510

/-- `∩[A102732(n+1), A281292(n+1)]` -/
def P1850086098213877931.Spec : Prop :=
  ∀ n, (P1850086098213877931.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P7405175533677517959

`∩[A102732(n+1), A224450(n+1)]`
-/

namespace A142510.P7405175533677517959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142510.P7405175533677517959

namespace A142510

/-- `∩[A102732(n+1), A224450(n+1)]` -/
def P7405175533677517959.Spec : Prop :=
  ∀ n, (P7405175533677517959.a n : ℤ) = A142510 (n + 1)

end A142510

/-! ## A142510.P12813254687704154411

`or(1, p?[A154609(4*n)])`
-/

namespace A142510.P12813254687704154411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142510.P12813254687704154411

namespace A142510

/-- `or(1, p?[A154609(4*n)])` -/
def P12813254687704154411.Spec : Prop :=
  ∀ n, P12813254687704154411.a n = A142510 (n + 1)

end A142510

/-! ## A142510.P1626412287747230656

`A000027(p?[A154609(4*n)])`
-/

namespace A142510.P1626412287747230656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142510.P1626412287747230656

namespace A142510

/-- `A000027(p?[A154609(4*n)])` -/
def P1626412287747230656.Spec : Prop :=
  ∀ n, P1626412287747230656.a n = A142510 (n + 1)

end A142510

/-!
# A142511: Primes congruent to 7 mod 52.

The programs for A142511, the canonical program `A142511.P4190831569276020721` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142511 has offset 1).

The definition of A142511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142511.P4190831569276020721

`p?[52*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142511

/-- `p?[52*n+7]` -/
def P4190831569276020721.Spec : Prop :=
  ∀ n, (P4190831569276020721.a n : ℤ) = A142511 (n + 1)

theorem P4190831569276020721.correct : P4190831569276020721.Spec := by
  intro n
  simp only [A142511, Nat.add_sub_cancel]

end A142511

/-! ## A142511.P852684055590719223

`∩[A106906(n+1), A140371(n+1)]`
-/

namespace A142511.P852684055590719223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P852684055590719223

namespace A142511

/-- `∩[A106906(n+1), A140371(n+1)]` -/
def P852684055590719223.Spec : Prop :=
  ∀ n, (P852684055590719223.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P3038702189598057014

`∩[A140371(n+1), A296926(n+1)]`
-/

namespace A142511.P3038702189598057014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P3038702189598057014

namespace A142511

/-- `∩[A140371(n+1), A296926(n+1)]` -/
def P3038702189598057014.Spec : Prop :=
  ∀ n, (P3038702189598057014.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P18347225957196853589

`∩[A140371(n+1), A296928(n+1)]`
-/

namespace A142511.P18347225957196853589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P18347225957196853589

namespace A142511

/-- `∩[A140371(n+1), A296928(n+1)]` -/
def P18347225957196853589.Spec : Prop :=
  ∀ n, (P18347225957196853589.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P11773094334576487924

`∩[A002145(n+1), A140371(n+1)]`
-/

namespace A142511.P11773094334576487924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P11773094334576487924

namespace A142511

/-- `∩[A002145(n+1), A140371(n+1)]` -/
def P11773094334576487924.Spec : Prop :=
  ∀ n, (P11773094334576487924.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P10164324235676724847

`∩[A045326(n+1), A140371(n+1)]`
-/

namespace A142511.P10164324235676724847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P10164324235676724847

namespace A142511

/-- `∩[A045326(n+1), A140371(n+1)]` -/
def P10164324235676724847.Spec : Prop :=
  ∀ n, (P10164324235676724847.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P11712273347381000883

`∩[A085760(n+1), A140371(n+1)]`
-/

namespace A142511.P11712273347381000883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P11712273347381000883

namespace A142511

/-- `∩[A085760(n+1), A140371(n+1)]` -/
def P11712273347381000883.Spec : Prop :=
  ∀ n, (P11712273347381000883.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P2810255011908259637

`∩[A140371(n+1), A197504(n+1)]`
-/

namespace A142511.P2810255011908259637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P2810255011908259637

namespace A142511

/-- `∩[A140371(n+1), A197504(n+1)]` -/
def P2810255011908259637.Spec : Prop :=
  ∀ n, (P2810255011908259637.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P11559926371029086780

`∩[A140371(n+1), A332555(n+1)]`
-/

namespace A142511.P11559926371029086780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P11559926371029086780

namespace A142511

/-- `∩[A140371(n+1), A332555(n+1)]` -/
def P11559926371029086780.Spec : Prop :=
  ∀ n, (P11559926371029086780.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P15836738189118612138

`∩[A140371(n+1), A292762(n+1)]`
-/

namespace A142511.P15836738189118612138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P15836738189118612138

namespace A142511

/-- `∩[A140371(n+1), A292762(n+1)]` -/
def P15836738189118612138.Spec : Prop :=
  ∀ n, (P15836738189118612138.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P8229020056793476353

`∩[A066499(n+1), A140371(n+1)]`
-/

namespace A142511.P8229020056793476353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P8229020056793476353

namespace A142511

/-- `∩[A066499(n+1), A140371(n+1)]` -/
def P8229020056793476353.Spec : Prop :=
  ∀ n, (P8229020056793476353.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P13936608156771889719

`∩[A097987(n+1), A140371(n+1)]`
-/

namespace A142511.P13936608156771889719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P13936608156771889719

namespace A142511

/-- `∩[A097987(n+1), A140371(n+1)]` -/
def P13936608156771889719.Spec : Prop :=
  ∀ n, (P13936608156771889719.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P8220995546292227378

`∩[A002145(n+1), A269044(n)]`
-/

namespace A142511.P8220995546292227378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P8220995546292227378

namespace A142511

/-- `∩[A002145(n+1), A269044(n)]` -/
def P8220995546292227378.Spec : Prop :=
  ∀ n, (P8220995546292227378.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P17486945581529934655

`∩[A045326(n+1), A269044(n)]`
-/

namespace A142511.P17486945581529934655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P17486945581529934655

namespace A142511

/-- `∩[A045326(n+1), A269044(n)]` -/
def P17486945581529934655.Spec : Prop :=
  ∀ n, (P17486945581529934655.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P11423691068104286695

`∩[A085760(n+1), A269044(n)]`
-/

namespace A142511.P11423691068104286695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P11423691068104286695

namespace A142511

/-- `∩[A085760(n+1), A269044(n)]` -/
def P11423691068104286695.Spec : Prop :=
  ∀ n, (P11423691068104286695.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P18233003846075567360

`∩[A106906(n+1), A269044(n)]`
-/

namespace A142511.P18233003846075567360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P18233003846075567360

namespace A142511

/-- `∩[A106906(n+1), A269044(n)]` -/
def P18233003846075567360.Spec : Prop :=
  ∀ n, (P18233003846075567360.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P13980465882610880244

`∩[A197504(n+1), A269044(n)]`
-/

namespace A142511.P13980465882610880244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P13980465882610880244

namespace A142511

/-- `∩[A197504(n+1), A269044(n)]` -/
def P13980465882610880244.Spec : Prop :=
  ∀ n, (P13980465882610880244.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P16088820785623522016

`∩[A296926(n+1), A269044(n)]`
-/

namespace A142511.P16088820785623522016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P16088820785623522016

namespace A142511

/-- `∩[A296926(n+1), A269044(n)]` -/
def P16088820785623522016.Spec : Prop :=
  ∀ n, (P16088820785623522016.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P15689509138451955213

`∩[A296928(n+1), A269044(n)]`
-/

namespace A142511.P15689509138451955213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P15689509138451955213

namespace A142511

/-- `∩[A296928(n+1), A269044(n)]` -/
def P15689509138451955213.Spec : Prop :=
  ∀ n, (P15689509138451955213.a n : ℤ) = A142511 (n + 1)

end A142511

/-! ## A142511.P5104406679934450173

`∩[A332555(n+1), A269044(n)]`
-/

namespace A142511.P5104406679934450173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142511.P5104406679934450173

namespace A142511

/-- `∩[A332555(n+1), A269044(n)]` -/
def P5104406679934450173.Spec : Prop :=
  ∀ n, (P5104406679934450173.a n : ℤ) = A142511 (n + 1)

end A142511

/-!
# A142512: Primes congruent to 9 mod 52.

The programs for A142512, the canonical program `A142512.P8180680481272329230` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142512 has offset 1).

The definition of A142512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142512.P8180680481272329230

`p?[52*n+9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142512

/-- `p?[52*n+9]` -/
def P8180680481272329230.Spec : Prop :=
  ∀ n, (P8180680481272329230.a n : ℤ) = A142512 (n + 1)

theorem P8180680481272329230.correct : P8180680481272329230.Spec := by
  intro n
  simp only [A142512, Nat.add_sub_cancel]

end A142512

/-! ## A142512.P12400515445786021811

`∩[A008846(n+1), A140372(n+1)]`
-/

namespace A142512.P12400515445786021811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P12400515445786021811

namespace A142512

/-- `∩[A008846(n+1), A140372(n+1)]` -/
def P12400515445786021811.Spec : Prop :=
  ∀ n, (P12400515445786021811.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P17493557560482553273

`∩[A033210(n+1), A140372(n+1)]`
-/

namespace A142512.P17493557560482553273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P17493557560482553273

namespace A142512

/-- `∩[A033210(n+1), A140372(n+1)]` -/
def P17493557560482553273.Spec : Prop :=
  ∀ n, (P17493557560482553273.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P9989283637763169865

`∩[A140372(n+1), A191218(n+1)]`
-/

namespace A142512.P9989283637763169865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P9989283637763169865

namespace A142512

/-- `∩[A140372(n+1), A191218(n+1)]` -/
def P9989283637763169865.Spec : Prop :=
  ∀ n, (P9989283637763169865.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P3021282332785638758

`or(1, p?[A159754(n+1)+n])`
-/

namespace A142512.P3021282332785638758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142512.P3021282332785638758

namespace A142512

/-- `or(1, p?[A159754(n+1)+n])` -/
def P3021282332785638758.Spec : Prop :=
  ∀ n, P3021282332785638758.a n = A142512 (n + 1)

end A142512

/-! ## A142512.P4089766633636369152

`p?[A159754(n+1)+n]%A002997(n+1)`
-/

namespace A142512.P4089766633636369152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002997 (n + 1))

end

end A142512.P4089766633636369152

namespace A142512

/-- `p?[A159754(n+1)+n]%A002997(n+1)` -/
def P4089766633636369152.Spec : Prop :=
  ∀ n, P4089766633636369152.a n = A142512 (n + 1)

end A142512

/-! ## A142512.P16408583734539104897

`∩[A140372(n+1), A296926(n+1)]`
-/

namespace A142512.P16408583734539104897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P16408583734539104897

namespace A142512

/-- `∩[A140372(n+1), A296926(n+1)]` -/
def P16408583734539104897.Spec : Prop :=
  ∀ n, (P16408583734539104897.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P4811998469523228204

`∩[A140372(n+1), A296928(n+1)]`
-/

namespace A142512.P4811998469523228204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P4811998469523228204

namespace A142512

/-- `∩[A140372(n+1), A296928(n+1)]` -/
def P4811998469523228204.Spec : Prop :=
  ∀ n, (P4811998469523228204.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P13755673971495190899

`∩[A002144(n+1), A140372(n+1)]`
-/

namespace A142512.P13755673971495190899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P13755673971495190899

namespace A142512

/-- `∩[A002144(n+1), A140372(n+1)]` -/
def P13755673971495190899.Spec : Prop :=
  ∀ n, (P13755673971495190899.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P1981947897330092568

`∩[A002313(n+1), A140372(n+1)]`
-/

namespace A142512.P1981947897330092568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P1981947897330092568

namespace A142512

/-- `∩[A002313(n+1), A140372(n+1)]` -/
def P1981947897330092568.Spec : Prop :=
  ∀ n, (P1981947897330092568.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P7435660934156927407

`∩[A140372(n+1), A280084(n+1)]`
-/

namespace A142512.P7435660934156927407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P7435660934156927407

namespace A142512

/-- `∩[A140372(n+1), A280084(n+1)]` -/
def P7435660934156927407.Spec : Prop :=
  ∀ n, (P7435660934156927407.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P16331757019860056401

`∩[A055025(n+1), A140372(n+1)]`
-/

namespace A142512.P16331757019860056401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P16331757019860056401

namespace A142512

/-- `∩[A055025(n+1), A140372(n+1)]` -/
def P16331757019860056401.Spec : Prop :=
  ∀ n, (P16331757019860056401.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P16342901919960187622

`∩[A120960(n+1), A140372(n+1)]`
-/

namespace A142512.P16342901919960187622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P16342901919960187622

namespace A142512

/-- `∩[A120960(n+1), A140372(n+1)]` -/
def P16342901919960187622.Spec : Prop :=
  ∀ n, (P16342901919960187622.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P5260752972686301163

`∩[A085759(n+1), A140372(n+1)]`
-/

namespace A142512.P5260752972686301163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P5260752972686301163

namespace A142512

/-- `∩[A085759(n+1), A140372(n+1)]` -/
def P5260752972686301163.Spec : Prop :=
  ∀ n, (P5260752972686301163.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P806557543221846121

`∩[A140372(n+1), A351535(n+1)]`
-/

namespace A142512.P806557543221846121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P806557543221846121

namespace A142512

/-- `∩[A140372(n+1), A351535(n+1)]` -/
def P806557543221846121.Spec : Prop :=
  ∀ n, (P806557543221846121.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P3651928696102800228

`∩[A125018(n+1), A140372(n+1)]`
-/

namespace A142512.P3651928696102800228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P3651928696102800228

namespace A142512

/-- `∩[A125018(n+1), A140372(n+1)]` -/
def P3651928696102800228.Spec : Prop :=
  ∀ n, (P3651928696102800228.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P12373633497174204280

`∩[A140372(n+1), A281292(n+1)]`
-/

namespace A142512.P12373633497174204280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P12373633497174204280

namespace A142512

/-- `∩[A140372(n+1), A281292(n+1)]` -/
def P12373633497174204280.Spec : Prop :=
  ∀ n, (P12373633497174204280.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P4435176303805201716

`∩[A140372(n+1), A224450(n+1)]`
-/

namespace A142512.P4435176303805201716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P4435176303805201716

namespace A142512

/-- `∩[A140372(n+1), A224450(n+1)]` -/
def P4435176303805201716.Spec : Prop :=
  ∀ n, (P4435176303805201716.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P10873947638093397886

`∩[A002144(n+1), A269044(n)+2]`
-/

namespace A142512.P10873947638093397886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P10873947638093397886

namespace A142512

/-- `∩[A002144(n+1), A269044(n)+2]` -/
def P10873947638093397886.Spec : Prop :=
  ∀ n, (P10873947638093397886.a n : ℤ) = A142512 (n + 1)

end A142512

/-! ## A142512.P4848924404378785369

`∩[A002313(n+1), A269044(n)+2]`
-/

namespace A142512.P4848924404378785369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142512.P4848924404378785369

namespace A142512

/-- `∩[A002313(n+1), A269044(n)+2]` -/
def P4848924404378785369.Spec : Prop :=
  ∀ n, (P4848924404378785369.a n : ℤ) = A142512 (n + 1)

end A142512

/-!
# A142513: Primes congruent to 11 mod 52.

The programs for A142513, the canonical program `A142513.P12294925522220628780` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142513 has offset 1).

The definition of A142513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142513.P12294925522220628780

`p?[52*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142513

/-- `p?[52*n+11]` -/
def P12294925522220628780.Spec : Prop :=
  ∀ n, (P12294925522220628780.a n : ℤ) = A142513 (n + 1)

theorem P12294925522220628780.correct : P12294925522220628780.Spec := by
  intro n
  simp only [A142513, Nat.add_sub_cancel]

end A142513

/-! ## A142513.P13791859510361441228

`∩[A106906(n+1), A140373(n+1)]`
-/

namespace A142513.P13791859510361441228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P13791859510361441228

namespace A142513

/-- `∩[A106906(n+1), A140373(n+1)]` -/
def P13791859510361441228.Spec : Prop :=
  ∀ n, (P13791859510361441228.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P2934057548690792438

`∩[A140373(n+1), A296926(n+1)]`
-/

namespace A142513.P2934057548690792438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P2934057548690792438

namespace A142513

/-- `∩[A140373(n+1), A296926(n+1)]` -/
def P2934057548690792438.Spec : Prop :=
  ∀ n, (P2934057548690792438.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P7233701554677716999

`∩[A140373(n+1), A296928(n+1)]`
-/

namespace A142513.P7233701554677716999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P7233701554677716999

namespace A142513

/-- `∩[A140373(n+1), A296928(n+1)]` -/
def P7233701554677716999.Spec : Prop :=
  ∀ n, (P7233701554677716999.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P14739942820484751479

`∩[A002145(n+1), A140373(n+1)]`
-/

namespace A142513.P14739942820484751479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P14739942820484751479

namespace A142513

/-- `∩[A002145(n+1), A140373(n+1)]` -/
def P14739942820484751479.Spec : Prop :=
  ∀ n, (P14739942820484751479.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P10538078311979845404

`∩[A045326(n+1), A140373(n+1)]`
-/

namespace A142513.P10538078311979845404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P10538078311979845404

namespace A142513

/-- `∩[A045326(n+1), A140373(n+1)]` -/
def P10538078311979845404.Spec : Prop :=
  ∀ n, (P10538078311979845404.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P8578269456050127051

`∩[A085760(n+1), A140373(n+1)]`
-/

namespace A142513.P8578269456050127051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P8578269456050127051

namespace A142513

/-- `∩[A085760(n+1), A140373(n+1)]` -/
def P8578269456050127051.Spec : Prop :=
  ∀ n, (P8578269456050127051.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P3494898987751480120

`∩[A140373(n+1), A197504(n+1)]`
-/

namespace A142513.P3494898987751480120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P3494898987751480120

namespace A142513

/-- `∩[A140373(n+1), A197504(n+1)]` -/
def P3494898987751480120.Spec : Prop :=
  ∀ n, (P3494898987751480120.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P8334135537926965386

`∩[A140373(n+1), A332555(n+1)]`
-/

namespace A142513.P8334135537926965386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P8334135537926965386

namespace A142513

/-- `∩[A140373(n+1), A332555(n+1)]` -/
def P8334135537926965386.Spec : Prop :=
  ∀ n, (P8334135537926965386.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P4310310519939494636

`∩[A140373(n+1), A292762(n+1)]`
-/

namespace A142513.P4310310519939494636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P4310310519939494636

namespace A142513

/-- `∩[A140373(n+1), A292762(n+1)]` -/
def P4310310519939494636.Spec : Prop :=
  ∀ n, (P4310310519939494636.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P1208038136147272610

`∩[A066499(n+1), A140373(n+1)]`
-/

namespace A142513.P1208038136147272610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P1208038136147272610

namespace A142513

/-- `∩[A066499(n+1), A140373(n+1)]` -/
def P1208038136147272610.Spec : Prop :=
  ∀ n, (P1208038136147272610.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P16740659914605573718

`∩[A097987(n+1), A140373(n+1)]`
-/

namespace A142513.P16740659914605573718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P16740659914605573718

namespace A142513

/-- `∩[A097987(n+1), A140373(n+1)]` -/
def P16740659914605573718.Spec : Prop :=
  ∀ n, (P16740659914605573718.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P4821766776896786926

`∩[A002145(n+1), A269100(n)]`
-/

namespace A142513.P4821766776896786926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P4821766776896786926

namespace A142513

/-- `∩[A002145(n+1), A269100(n)]` -/
def P4821766776896786926.Spec : Prop :=
  ∀ n, (P4821766776896786926.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P3150981195587054552

`∩[A045326(n+1), A269100(n)]`
-/

namespace A142513.P3150981195587054552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P3150981195587054552

namespace A142513

/-- `∩[A045326(n+1), A269100(n)]` -/
def P3150981195587054552.Spec : Prop :=
  ∀ n, (P3150981195587054552.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P9338379821289354227

`∩[A106906(n+1), A269100(n)]`
-/

namespace A142513.P9338379821289354227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P9338379821289354227

namespace A142513

/-- `∩[A106906(n+1), A269100(n)]` -/
def P9338379821289354227.Spec : Prop :=
  ∀ n, (P9338379821289354227.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P1350708885281042234

`∩[A296926(n+1), A269100(n)]`
-/

namespace A142513.P1350708885281042234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P1350708885281042234

namespace A142513

/-- `∩[A296926(n+1), A269100(n)]` -/
def P1350708885281042234.Spec : Prop :=
  ∀ n, (P1350708885281042234.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P4278101552856567187

`∩[A296928(n+1), A269100(n)]`
-/

namespace A142513.P4278101552856567187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P4278101552856567187

namespace A142513

/-- `∩[A296928(n+1), A269100(n)]` -/
def P4278101552856567187.Spec : Prop :=
  ∀ n, (P4278101552856567187.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P12644551145986631540

`∩[A002145(n+1), A017653(n)+n]`
-/

namespace A142513.P12644551145986631540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P12644551145986631540

namespace A142513

/-- `∩[A002145(n+1), A017653(n)+n]` -/
def P12644551145986631540.Spec : Prop :=
  ∀ n, (P12644551145986631540.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P4651962457897640518

`∩[A094179(n+1), A140373(n+1)]`
-/

namespace A142513.P4651962457897640518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142513.P4651962457897640518

namespace A142513

/-- `∩[A094179(n+1), A140373(n+1)]` -/
def P4651962457897640518.Spec : Prop :=
  ∀ n, (P4651962457897640518.a n : ℤ) = A142513 (n + 1)

end A142513

/-! ## A142513.P6828641881995687358

`filter[A140373(n+1), A359152(#)]`
-/

namespace A142513.P6828641881995687358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A142513.P6828641881995687358

namespace A142513

/-- `filter[A140373(n+1), A359152(#)]` -/
def P6828641881995687358.Spec : Prop :=
  ∀ n, P6828641881995687358.a n = A142513 (n + 1)

end A142513

/-!
# A142514: Primes congruent to 15 mod 52.

The programs for A142514, the canonical program `A142514.P336309929502532069` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142514 has offset 1).

The definition of A142514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142514.P336309929502532069

`p?[52*n+15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142514

/-- `p?[52*n+15]` -/
def P336309929502532069.Spec : Prop :=
  ∀ n, (P336309929502532069.a n : ℤ) = A142514 (n + 1)

theorem P336309929502532069.correct : P336309929502532069.Spec := by
  intro n
  simp only [A142514, Nat.add_sub_cancel]

end A142514

/-! ## A142514.P15528344853619445709

`A000027(p?[A139610(n)+A017041(n)])`
-/

namespace A142514.P15528344853619445709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142514.P15528344853619445709

namespace A142514

/-- `A000027(p?[A139610(n)+A017041(n)])` -/
def P15528344853619445709.Spec : Prop :=
  ∀ n, P15528344853619445709.a n = A142514 (n + 1)

end A142514

/-! ## A142514.P9827760342236647898

`∩[A106906(n+1), A140374(n+1)]`
-/

namespace A142514.P9827760342236647898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P9827760342236647898

namespace A142514

/-- `∩[A106906(n+1), A140374(n+1)]` -/
def P9827760342236647898.Spec : Prop :=
  ∀ n, (P9827760342236647898.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P6428515293800106737

`∩[A190991(2*n+1)+A190991(2*n), A215135(n+2)]`
-/

namespace A142514.P6428515293800106737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n + 1) + A190991 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P6428515293800106737

namespace A142514

/-- `∩[A190991(2*n+1)+A190991(2*n), A215135(n+2)]` -/
def P6428515293800106737.Spec : Prop :=
  ∀ n, (P6428515293800106737.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P7513728310970045959

`∩[A140374(n+1), A296926(n+1)]`
-/

namespace A142514.P7513728310970045959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P7513728310970045959

namespace A142514

/-- `∩[A140374(n+1), A296926(n+1)]` -/
def P7513728310970045959.Spec : Prop :=
  ∀ n, (P7513728310970045959.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P16836965408779504465

`∩[A140374(n+1), A296928(n+1)]`
-/

namespace A142514.P16836965408779504465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P16836965408779504465

namespace A142514

/-- `∩[A140374(n+1), A296928(n+1)]` -/
def P16836965408779504465.Spec : Prop :=
  ∀ n, (P16836965408779504465.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P14239053542940365807

`∩[A141858(n+1), A296926(n+1)]`
-/

namespace A142514.P14239053542940365807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P14239053542940365807

namespace A142514

/-- `∩[A141858(n+1), A296926(n+1)]` -/
def P14239053542940365807.Spec : Prop :=
  ∀ n, (P14239053542940365807.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P4462383410363486280

`∩[A141858(n+1), A296928(n+1)]`
-/

namespace A142514.P4462383410363486280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P4462383410363486280

namespace A142514

/-- `∩[A141858(n+1), A296928(n+1)]` -/
def P4462383410363486280.Spec : Prop :=
  ∀ n, (P4462383410363486280.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P17211710946246146117

`∩[A002145(n+1), A140374(n+1)]`
-/

namespace A142514.P17211710946246146117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P17211710946246146117

namespace A142514

/-- `∩[A002145(n+1), A140374(n+1)]` -/
def P17211710946246146117.Spec : Prop :=
  ∀ n, (P17211710946246146117.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P8607136265658381179

`∩[A002145(n+1), A141858(n+1)]`
-/

namespace A142514.P8607136265658381179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P8607136265658381179

namespace A142514

/-- `∩[A002145(n+1), A141858(n+1)]` -/
def P8607136265658381179.Spec : Prop :=
  ∀ n, (P8607136265658381179.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P5568438072880602197

`∩[A045326(n+1), A140374(n+1)]`
-/

namespace A142514.P5568438072880602197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P5568438072880602197

namespace A142514

/-- `∩[A045326(n+1), A140374(n+1)]` -/
def P5568438072880602197.Spec : Prop :=
  ∀ n, (P5568438072880602197.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P10742655368995416688

`∩[A085760(n+1), A140374(n+1)]`
-/

namespace A142514.P10742655368995416688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P10742655368995416688

namespace A142514

/-- `∩[A085760(n+1), A140374(n+1)]` -/
def P10742655368995416688.Spec : Prop :=
  ∀ n, (P10742655368995416688.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P16819664571155105405

`∩[A085760(n+1), A141858(n+1)]`
-/

namespace A142514.P16819664571155105405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P16819664571155105405

namespace A142514

/-- `∩[A085760(n+1), A141858(n+1)]` -/
def P16819664571155105405.Spec : Prop :=
  ∀ n, (P16819664571155105405.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P6697666134895933820

`∩[A140374(n+1), A197504(n+1)]`
-/

namespace A142514.P6697666134895933820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P6697666134895933820

namespace A142514

/-- `∩[A140374(n+1), A197504(n+1)]` -/
def P6697666134895933820.Spec : Prop :=
  ∀ n, (P6697666134895933820.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P3864418730903578606

`∩[A141858(n+1), A197504(n+1)]`
-/

namespace A142514.P3864418730903578606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P3864418730903578606

namespace A142514

/-- `∩[A141858(n+1), A197504(n+1)]` -/
def P3864418730903578606.Spec : Prop :=
  ∀ n, (P3864418730903578606.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P16242278917704653264

`∩[A140374(n+1), A332555(n+1)]`
-/

namespace A142514.P16242278917704653264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P16242278917704653264

namespace A142514

/-- `∩[A140374(n+1), A332555(n+1)]` -/
def P16242278917704653264.Spec : Prop :=
  ∀ n, (P16242278917704653264.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P18050987773113735975

`∩[A140374(n+1), A292762(n+1)]`
-/

namespace A142514.P18050987773113735975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P18050987773113735975

namespace A142514

/-- `∩[A140374(n+1), A292762(n+1)]` -/
def P18050987773113735975.Spec : Prop :=
  ∀ n, (P18050987773113735975.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P6301636920621214626

`∩[A141858(n+1), A292762(n+1)]`
-/

namespace A142514.P6301636920621214626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P6301636920621214626

namespace A142514

/-- `∩[A141858(n+1), A292762(n+1)]` -/
def P6301636920621214626.Spec : Prop :=
  ∀ n, (P6301636920621214626.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P9052988920115041878

`∩[A066499(n+1), A140374(n+1)]`
-/

namespace A142514.P9052988920115041878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P9052988920115041878

namespace A142514

/-- `∩[A066499(n+1), A140374(n+1)]` -/
def P9052988920115041878.Spec : Prop :=
  ∀ n, (P9052988920115041878.a n : ℤ) = A142514 (n + 1)

end A142514

/-! ## A142514.P15580981691432801100

`∩[A066499(n+1), A141858(n+1)]`
-/

namespace A142514.P15580981691432801100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142514.P15580981691432801100

namespace A142514

/-- `∩[A066499(n+1), A141858(n+1)]` -/
def P15580981691432801100.Spec : Prop :=
  ∀ n, (P15580981691432801100.a n : ℤ) = A142514 (n + 1)

end A142514

/-!
# A142515: Primes congruent to 17 mod 52.

The programs for A142515, the canonical program `A142515.P6396351685030339680` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142515 has offset 1).

The definition of A142515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142515.P6396351685030339680

`record[A093191(n+1)/A093191(n+1)%4]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A142515

/-- `record[A093191(n+1)/A093191(n+1)%4]` -/
def P6396351685030339680.Spec : Prop :=
  ∀ n, P6396351685030339680.a n = (A142515 (n + 1) : ℚ)

end A142515

/-! ## A142515.P1527362020838791608

`p?[52*n+17]`
-/

namespace A142515.P1527362020838791608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142515.P1527362020838791608

namespace A142515

/-- `p?[52*n+17]` -/
def P1527362020838791608.Spec : Prop :=
  ∀ n, (P1527362020838791608.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P13991930200270816995

`∩[A008846(n+1), A093191(n+1)]`
-/

namespace A142515.P13991930200270816995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P13991930200270816995

namespace A142515

/-- `∩[A008846(n+1), A093191(n+1)]` -/
def P13991930200270816995.Spec : Prop :=
  ∀ n, (P13991930200270816995.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P16830923663602922274

`∩[A033210(n+1), A093191(n+1)]`
-/

namespace A142515.P16830923663602922274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P16830923663602922274

namespace A142515

/-- `∩[A033210(n+1), A093191(n+1)]` -/
def P16830923663602922274.Spec : Prop :=
  ∀ n, (P16830923663602922274.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P1210593065107371327

`∩[A093191(n+1), A191218(n+1)]`
-/

namespace A142515.P1210593065107371327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P1210593065107371327

namespace A142515

/-- `∩[A093191(n+1), A191218(n+1)]` -/
def P1210593065107371327.Spec : Prop :=
  ∀ n, (P1210593065107371327.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P5975593648369600735

`∩[A033210(n+1), A215276(n+1)]`
-/

namespace A142515.P5975593648369600735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P5975593648369600735

namespace A142515

/-- `∩[A033210(n+1), A215276(n+1)]` -/
def P5975593648369600735.Spec : Prop :=
  ∀ n, (P5975593648369600735.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P6070647762253799302

`∩[A093191(n+1), A296926(n+1)]`
-/

namespace A142515.P6070647762253799302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P6070647762253799302

namespace A142515

/-- `∩[A093191(n+1), A296926(n+1)]` -/
def P6070647762253799302.Spec : Prop :=
  ∀ n, (P6070647762253799302.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P17304017281338195977

`∩[A093191(n+1), A296928(n+1)]`
-/

namespace A142515.P17304017281338195977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P17304017281338195977

namespace A142515

/-- `∩[A093191(n+1), A296928(n+1)]` -/
def P17304017281338195977.Spec : Prop :=
  ∀ n, (P17304017281338195977.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P1695120282285802383

`∩[A002144(n+1), A093191(n+1)]`
-/

namespace A142515.P1695120282285802383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P1695120282285802383

namespace A142515

/-- `∩[A002144(n+1), A093191(n+1)]` -/
def P1695120282285802383.Spec : Prop :=
  ∀ n, (P1695120282285802383.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P3760108211316941609

`∩[A002313(n+1), A093191(n+1)]`
-/

namespace A142515.P3760108211316941609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P3760108211316941609

namespace A142515

/-- `∩[A002313(n+1), A093191(n+1)]` -/
def P3760108211316941609.Spec : Prop :=
  ∀ n, (P3760108211316941609.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P15938993854502922583

`∩[A093191(n+1), A280084(n+1)]`
-/

namespace A142515.P15938993854502922583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P15938993854502922583

namespace A142515

/-- `∩[A093191(n+1), A280084(n+1)]` -/
def P15938993854502922583.Spec : Prop :=
  ∀ n, (P15938993854502922583.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P14577787431851178948

`∩[A055025(n+1), A093191(n+1)]`
-/

namespace A142515.P14577787431851178948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P14577787431851178948

namespace A142515

/-- `∩[A055025(n+1), A093191(n+1)]` -/
def P14577787431851178948.Spec : Prop :=
  ∀ n, (P14577787431851178948.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P13999718597971624918

`∩[A093191(n+1), A120960(n+1)]`
-/

namespace A142515.P13999718597971624918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P13999718597971624918

namespace A142515

/-- `∩[A093191(n+1), A120960(n+1)]` -/
def P13999718597971624918.Spec : Prop :=
  ∀ n, (P13999718597971624918.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P10792718837659443978

`∩[A085759(n+1), A093191(n+1)]`
-/

namespace A142515.P10792718837659443978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P10792718837659443978

namespace A142515

/-- `∩[A085759(n+1), A093191(n+1)]` -/
def P10792718837659443978.Spec : Prop :=
  ∀ n, (P10792718837659443978.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P3130509571897070564

`∩[A093191(n+1), A351535(n+1)]`
-/

namespace A142515.P3130509571897070564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P3130509571897070564

namespace A142515

/-- `∩[A093191(n+1), A351535(n+1)]` -/
def P3130509571897070564.Spec : Prop :=
  ∀ n, (P3130509571897070564.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P11418860014049533032

`∩[A093191(n+1), A125018(n+1)]`
-/

namespace A142515.P11418860014049533032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P11418860014049533032

namespace A142515

/-- `∩[A093191(n+1), A125018(n+1)]` -/
def P11418860014049533032.Spec : Prop :=
  ∀ n, (P11418860014049533032.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P7240296831790271496

`∩[A093191(n+1), A230779(n+1)]`
-/

namespace A142515.P7240296831790271496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P7240296831790271496

namespace A142515

/-- `∩[A093191(n+1), A230779(n+1)]` -/
def P7240296831790271496.Spec : Prop :=
  ∀ n, (P7240296831790271496.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P94923084131852884

`∩[A093191(n+1), A281292(n+1)]`
-/

namespace A142515.P94923084131852884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P94923084131852884

namespace A142515

/-- `∩[A093191(n+1), A281292(n+1)]` -/
def P94923084131852884.Spec : Prop :=
  ∀ n, (P94923084131852884.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P2198241659167741334

`∩[A093191(n+1), A224450(n+1)]`
-/

namespace A142515.P2198241659167741334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P2198241659167741334

namespace A142515

/-- `∩[A093191(n+1), A224450(n+1)]` -/
def P2198241659167741334.Spec : Prop :=
  ∀ n, (P2198241659167741334.a n : ℤ) = A142515 (n + 1)

end A142515

/-! ## A142515.P8445975744327576566

`∩[A002144(n+1), A127547(n)]`
-/

namespace A142515.P8445975744327576566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142515.P8445975744327576566

namespace A142515

/-- `∩[A002144(n+1), A127547(n)]` -/
def P8445975744327576566.Spec : Prop :=
  ∀ n, (P8445975744327576566.a n : ℤ) = A142515 (n + 1)

end A142515

/-!
# A142516: Primes congruent to 19 mod 52.

The programs for A142516, the canonical program `A142516.P4987968122826076168` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142516 has offset 1).

The definition of A142516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142516.P4987968122826076168

`p?[52*n-33]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142516

/-- `p?[52*n-33]` -/
def P4987968122826076168.Spec : Prop :=
  ∀ n, P4987968122826076168.a n = A142516 (n + 1)

theorem P4987968122826076168.correct : P4987968122826076168.Spec := by
  intro n
  simp only [A142516, Nat.add_sub_cancel]

end A142516

/-! ## A142516.P2723533829774829037

`∩[A093350(n+1), A106906(n+1)]`
-/

namespace A142516.P2723533829774829037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P2723533829774829037

namespace A142516

/-- `∩[A093350(n+1), A106906(n+1)]` -/
def P2723533829774829037.Spec : Prop :=
  ∀ n, (P2723533829774829037.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P4423283489115935524

`A000007(n+1)+p?[A248474(n+1)+A017461(n)]`
-/

namespace A142516.P4423283489115935524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142516.P4423283489115935524

namespace A142516

/-- `A000007(n+1)+p?[A248474(n+1)+A017461(n)]` -/
def P4423283489115935524.Spec : Prop :=
  ∀ n, P4423283489115935524.a n = A142516 (n + 1)

end A142516

/-! ## A142516.P18117619677179372682

`∩[A093350(n+1), A296926(n+1)]`
-/

namespace A142516.P18117619677179372682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P18117619677179372682

namespace A142516

/-- `∩[A093350(n+1), A296926(n+1)]` -/
def P18117619677179372682.Spec : Prop :=
  ∀ n, (P18117619677179372682.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P13504991422364206918

`∩[A093350(n+1), A296928(n+1)]`
-/

namespace A142516.P13504991422364206918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P13504991422364206918

namespace A142516

/-- `∩[A093350(n+1), A296928(n+1)]` -/
def P13504991422364206918.Spec : Prop :=
  ∀ n, (P13504991422364206918.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P944047375231532815

`∩[A002145(n+1), A093350(n+1)]`
-/

namespace A142516.P944047375231532815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P944047375231532815

namespace A142516

/-- `∩[A002145(n+1), A093350(n+1)]` -/
def P944047375231532815.Spec : Prop :=
  ∀ n, (P944047375231532815.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P18282783471075672032

`∩[A045326(n+1), A093350(n+1)]`
-/

namespace A142516.P18282783471075672032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P18282783471075672032

namespace A142516

/-- `∩[A045326(n+1), A093350(n+1)]` -/
def P18282783471075672032.Spec : Prop :=
  ∀ n, (P18282783471075672032.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P8774597719475928243

`∩[A085760(n+1), A093350(n+1)]`
-/

namespace A142516.P8774597719475928243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P8774597719475928243

namespace A142516

/-- `∩[A085760(n+1), A093350(n+1)]` -/
def P8774597719475928243.Spec : Prop :=
  ∀ n, (P8774597719475928243.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P1568094546360289567

`∩[A093350(n+1), A197504(n+1)]`
-/

namespace A142516.P1568094546360289567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P1568094546360289567

namespace A142516

/-- `∩[A093350(n+1), A197504(n+1)]` -/
def P1568094546360289567.Spec : Prop :=
  ∀ n, (P1568094546360289567.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P17655711116859380169

`∩[A093350(n+1), A332555(n+1)]`
-/

namespace A142516.P17655711116859380169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P17655711116859380169

namespace A142516

/-- `∩[A093350(n+1), A332555(n+1)]` -/
def P17655711116859380169.Spec : Prop :=
  ∀ n, (P17655711116859380169.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P2262310426530502931

`∩[A093350(n+1), A292762(n+1)]`
-/

namespace A142516.P2262310426530502931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P2262310426530502931

namespace A142516

/-- `∩[A093350(n+1), A292762(n+1)]` -/
def P2262310426530502931.Spec : Prop :=
  ∀ n, (P2262310426530502931.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P7474682816321495086

`∩[A066499(n+1), A093350(n+1)]`
-/

namespace A142516.P7474682816321495086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P7474682816321495086

namespace A142516

/-- `∩[A066499(n+1), A093350(n+1)]` -/
def P7474682816321495086.Spec : Prop :=
  ∀ n, (P7474682816321495086.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P8566502656649174555

`∩[A093350(n+1), A097987(n+1)]`
-/

namespace A142516.P8566502656649174555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P8566502656649174555

namespace A142516

/-- `∩[A093350(n+1), A097987(n+1)]` -/
def P8566502656649174555.Spec : Prop :=
  ∀ n, (P8566502656649174555.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P11939659206009403556

`∩[A002145(n+1), A186113(n)]`
-/

namespace A142516.P11939659206009403556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P11939659206009403556

namespace A142516

/-- `∩[A002145(n+1), A186113(n)]` -/
def P11939659206009403556.Spec : Prop :=
  ∀ n, (P11939659206009403556.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P9001661871451869838

`∩[A045326(n+1), A186113(n)]`
-/

namespace A142516.P9001661871451869838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P9001661871451869838

namespace A142516

/-- `∩[A045326(n+1), A186113(n)]` -/
def P9001661871451869838.Spec : Prop :=
  ∀ n, (P9001661871451869838.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P12782503004231474697

`∩[A085760(n+1), A186113(n)]`
-/

namespace A142516.P12782503004231474697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P12782503004231474697

namespace A142516

/-- `∩[A085760(n+1), A186113(n)]` -/
def P12782503004231474697.Spec : Prop :=
  ∀ n, (P12782503004231474697.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P3997898124515817897

`∩[A106906(n+1), A186113(n)]`
-/

namespace A142516.P3997898124515817897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P3997898124515817897

namespace A142516

/-- `∩[A106906(n+1), A186113(n)]` -/
def P3997898124515817897.Spec : Prop :=
  ∀ n, (P3997898124515817897.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P16988427013810954581

`∩[A197504(n+1), A186113(n)]`
-/

namespace A142516.P16988427013810954581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P16988427013810954581

namespace A142516

/-- `∩[A197504(n+1), A186113(n)]` -/
def P16988427013810954581.Spec : Prop :=
  ∀ n, (P16988427013810954581.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P10253981193540951175

`∩[A296926(n+1), A186113(n)]`
-/

namespace A142516.P10253981193540951175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P10253981193540951175

namespace A142516

/-- `∩[A296926(n+1), A186113(n)]` -/
def P10253981193540951175.Spec : Prop :=
  ∀ n, (P10253981193540951175.a n : ℤ) = A142516 (n + 1)

end A142516

/-! ## A142516.P15080824190305062229

`∩[A296928(n+1), A186113(n)]`
-/

namespace A142516.P15080824190305062229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142516.P15080824190305062229

namespace A142516

/-- `∩[A296928(n+1), A186113(n)]` -/
def P15080824190305062229.Spec : Prop :=
  ∀ n, (P15080824190305062229.a n : ℤ) = A142516 (n + 1)

end A142516

/-!
# A142517: Primes congruent to 21 mod 52.

The programs for A142517, the canonical program `A142517.P2418825759442637778` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142517 has offset 1).

The definition of A142517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142517.P2418825759442637778

`A092178(eq[1, A092178(n+1)%4]+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A142517

/-- `A092178(eq[1, A092178(n+1)%4]+1)` -/
def P2418825759442637778.Spec : Prop :=
  ∀ n, P2418825759442637778.a n = A142517 (n + 1)

theorem P2418825759442637778.correct : P2418825759442637778.Spec := by
  intro n
  simp only [A142517, Nat.add_sub_cancel]

end A142517

/-! ## A142517.P848214866272480509

`p?[52*n+21]`
-/

namespace A142517.P848214866272480509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142517.P848214866272480509

namespace A142517

/-- `p?[52*n+21]` -/
def P848214866272480509.Spec : Prop :=
  ∀ n, (P848214866272480509.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P4073699567728210494

`∩[A008846(n+1), A092178(n+1)]`
-/

namespace A142517.P4073699567728210494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P4073699567728210494

namespace A142517

/-- `∩[A008846(n+1), A092178(n+1)]` -/
def P4073699567728210494.Spec : Prop :=
  ∀ n, (P4073699567728210494.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P3186855418090243983

`A000027(p?[A053741(n)+A005408(n)])`
-/

namespace A142517.P3186855418090243983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142517.P3186855418090243983

namespace A142517

/-- `A000027(p?[A053741(n)+A005408(n)])` -/
def P3186855418090243983.Spec : Prop :=
  ∀ n, P3186855418090243983.a n = A142517 (n + 1)

end A142517

/-! ## A142517.P8262231335688388713

`∩[A092178(n+1), A191218(n+1)]`
-/

namespace A142517.P8262231335688388713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P8262231335688388713

namespace A142517

/-- `∩[A092178(n+1), A191218(n+1)]` -/
def P8262231335688388713.Spec : Prop :=
  ∀ n, (P8262231335688388713.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P17001793410357425848

`∩[A002144(n+1), A092178(n+1)]`
-/

namespace A142517.P17001793410357425848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P17001793410357425848

namespace A142517

/-- `∩[A002144(n+1), A092178(n+1)]` -/
def P17001793410357425848.Spec : Prop :=
  ∀ n, (P17001793410357425848.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P15811001386900753316

`∩[A002313(n+1), A092178(n+1)]`
-/

namespace A142517.P15811001386900753316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P15811001386900753316

namespace A142517

/-- `∩[A002313(n+1), A092178(n+1)]` -/
def P15811001386900753316.Spec : Prop :=
  ∀ n, (P15811001386900753316.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P15162832629890496602

`∩[A092178(n+1), A280084(n+1)]`
-/

namespace A142517.P15162832629890496602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P15162832629890496602

namespace A142517

/-- `∩[A092178(n+1), A280084(n+1)]` -/
def P15162832629890496602.Spec : Prop :=
  ∀ n, (P15162832629890496602.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P17818535802993875227

`∩[A092178(n+1), A296927(n+1)]`
-/

namespace A142517.P17818535802993875227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P17818535802993875227

namespace A142517

/-- `∩[A092178(n+1), A296927(n+1)]` -/
def P17818535802993875227.Spec : Prop :=
  ∀ n, (P17818535802993875227.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P3472388032190275197

`∩[A055025(n+1), A092178(n+1)]`
-/

namespace A142517.P3472388032190275197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P3472388032190275197

namespace A142517

/-- `∩[A055025(n+1), A092178(n+1)]` -/
def P3472388032190275197.Spec : Prop :=
  ∀ n, (P3472388032190275197.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P17138336413123839254

`∩[A092178(n+1), A120960(n+1)]`
-/

namespace A142517.P17138336413123839254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P17138336413123839254

namespace A142517

/-- `∩[A092178(n+1), A120960(n+1)]` -/
def P17138336413123839254.Spec : Prop :=
  ∀ n, (P17138336413123839254.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P3251316896901525096

`∩[A085759(n+1), A092178(n+1)]`
-/

namespace A142517.P3251316896901525096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P3251316896901525096

namespace A142517

/-- `∩[A085759(n+1), A092178(n+1)]` -/
def P3251316896901525096.Spec : Prop :=
  ∀ n, (P3251316896901525096.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P15746617337508580437

`∩[A092178(n+1), A351535(n+1)]`
-/

namespace A142517.P15746617337508580437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P15746617337508580437

namespace A142517

/-- `∩[A092178(n+1), A351535(n+1)]` -/
def P15746617337508580437.Spec : Prop :=
  ∀ n, (P15746617337508580437.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P2834605863888427344

`∩[A092178(n+1), A125018(n+1)]`
-/

namespace A142517.P2834605863888427344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P2834605863888427344

namespace A142517

/-- `∩[A092178(n+1), A125018(n+1)]` -/
def P2834605863888427344.Spec : Prop :=
  ∀ n, (P2834605863888427344.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P12518890297788063487

`∩[A092178(n+1), A230779(n+1)]`
-/

namespace A142517.P12518890297788063487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P12518890297788063487

namespace A142517

/-- `∩[A092178(n+1), A230779(n+1)]` -/
def P12518890297788063487.Spec : Prop :=
  ∀ n, (P12518890297788063487.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P18440804479834142714

`∩[A092178(n+1), A347877(n+1)]`
-/

namespace A142517.P18440804479834142714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P18440804479834142714

namespace A142517

/-- `∩[A092178(n+1), A347877(n+1)]` -/
def P18440804479834142714.Spec : Prop :=
  ∀ n, (P18440804479834142714.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P18317188903419384026

`∩[A092178(n+1), A281292(n+1)]`
-/

namespace A142517.P18317188903419384026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P18317188903419384026

namespace A142517

/-- `∩[A092178(n+1), A281292(n+1)]` -/
def P18317188903419384026.Spec : Prop :=
  ∀ n, (P18317188903419384026.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P14179240384896517650

`∩[A092178(n+1), A224450(n+1)]`
-/

namespace A142517.P14179240384896517650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P14179240384896517650

namespace A142517

/-- `∩[A092178(n+1), A224450(n+1)]` -/
def P14179240384896517650.Spec : Prop :=
  ∀ n, (P14179240384896517650.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P4202590745487214080

`∩[A002144(n+1), A269044(n)+1]`
-/

namespace A142517.P4202590745487214080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P4202590745487214080

namespace A142517

/-- `∩[A002144(n+1), A269044(n)+1]` -/
def P4202590745487214080.Spec : Prop :=
  ∀ n, (P4202590745487214080.a n : ℤ) = A142517 (n + 1)

end A142517

/-! ## A142517.P8137696851977981341

`∩[A002313(n+1), A269044(n)+1]`
-/

namespace A142517.P8137696851977981341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142517.P8137696851977981341

namespace A142517

/-- `∩[A002313(n+1), A269044(n)+1]` -/
def P8137696851977981341.Spec : Prop :=
  ∀ n, (P8137696851977981341.a n : ℤ) = A142517 (n + 1)

end A142517

/-!
# A142518: Primes congruent to 23 mod 52.

The programs for A142518, the canonical program `A142518.P4932496381653817914` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142518 has offset 1).

The definition of A142518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142518.P4932496381653817914

`p?[4*13*n+23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142518

/-- `p?[4*13*n+23]` -/
def P4932496381653817914.Spec : Prop :=
  ∀ n, (P4932496381653817914.a n : ℤ) = A142518 (n + 1)

theorem P4932496381653817914.correct : P4932496381653817914.Spec := by
  intro n
  simp only [A142518, Nat.add_sub_cancel]

end A142518

/-! ## A142518.P7469399190681663082

`∩[A140375(n+1), A296927(n+1)]`
-/

namespace A142518.P7469399190681663082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P7469399190681663082

namespace A142518

/-- `∩[A140375(n+1), A296927(n+1)]` -/
def P7469399190681663082.Spec : Prop :=
  ∀ n, (P7469399190681663082.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P9098018599869607387

`∩[A002145(n+1), A140375(n+1)]`
-/

namespace A142518.P9098018599869607387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P9098018599869607387

namespace A142518

/-- `∩[A002145(n+1), A140375(n+1)]` -/
def P9098018599869607387.Spec : Prop :=
  ∀ n, (P9098018599869607387.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P15162757160132168027

`∩[A045326(n+1), A140375(n+1)]`
-/

namespace A142518.P15162757160132168027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P15162757160132168027

namespace A142518

/-- `∩[A045326(n+1), A140375(n+1)]` -/
def P15162757160132168027.Spec : Prop :=
  ∀ n, (P15162757160132168027.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P14055635686742339894

`∩[A085760(n+1), A140375(n+1)]`
-/

namespace A142518.P14055635686742339894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P14055635686742339894

namespace A142518

/-- `∩[A085760(n+1), A140375(n+1)]` -/
def P14055635686742339894.Spec : Prop :=
  ∀ n, (P14055635686742339894.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P4272885280256470468

`∩[A140375(n+1), A197504(n+1)]`
-/

namespace A142518.P4272885280256470468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P4272885280256470468

namespace A142518

/-- `∩[A140375(n+1), A197504(n+1)]` -/
def P4272885280256470468.Spec : Prop :=
  ∀ n, (P4272885280256470468.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P16038155137499821646

`∩[A140375(n+1), A332555(n+1)]`
-/

namespace A142518.P16038155137499821646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P16038155137499821646

namespace A142518

/-- `∩[A140375(n+1), A332555(n+1)]` -/
def P16038155137499821646.Spec : Prop :=
  ∀ n, (P16038155137499821646.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P1314919181718323087

`∩[A140375(n+1), A292762(n+1)]`
-/

namespace A142518.P1314919181718323087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P1314919181718323087

namespace A142518

/-- `∩[A140375(n+1), A292762(n+1)]` -/
def P1314919181718323087.Spec : Prop :=
  ∀ n, (P1314919181718323087.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P10865414736012189126

`∩[A066499(n+1), A140375(n+1)]`
-/

namespace A142518.P10865414736012189126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P10865414736012189126

namespace A142518

/-- `∩[A066499(n+1), A140375(n+1)]` -/
def P10865414736012189126.Spec : Prop :=
  ∀ n, (P10865414736012189126.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P8937829861760350784

`∩[A097987(n+1), A140375(n+1)]`
-/

namespace A142518.P8937829861760350784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P8937829861760350784

namespace A142518

/-- `∩[A097987(n+1), A140375(n+1)]` -/
def P8937829861760350784.Spec : Prop :=
  ∀ n, (P8937829861760350784.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P7908222084444972238

`∩[A002145(n+1), A269100(n)-1]`
-/

namespace A142518.P7908222084444972238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P7908222084444972238

namespace A142518

/-- `∩[A002145(n+1), A269100(n)-1]` -/
def P7908222084444972238.Spec : Prop :=
  ∀ n, (P7908222084444972238.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P7026805302711088607

`∩[A045326(n+1), A269100(n)-1]`
-/

namespace A142518.P7026805302711088607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P7026805302711088607

namespace A142518

/-- `∩[A045326(n+1), A269100(n)-1]` -/
def P7026805302711088607.Spec : Prop :=
  ∀ n, (P7026805302711088607.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P6890993264495254710

`∩[A296927(n+1), A269100(n)-1]`
-/

namespace A142518.P6890993264495254710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P6890993264495254710

namespace A142518

/-- `∩[A296927(n+1), A269100(n)-1]` -/
def P6890993264495254710.Spec : Prop :=
  ∀ n, (P6890993264495254710.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P6047543601101473071

`∩[A002145(n+1), A306285(n+1)+2]`
-/

namespace A142518.P6047543601101473071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P6047543601101473071

namespace A142518

/-- `∩[A002145(n+1), A306285(n+1)+2]` -/
def P6047543601101473071.Spec : Prop :=
  ∀ n, (P6047543601101473071.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P2099936615914236337

`∩[A045326(n+1), A306285(n+1)+2]`
-/

namespace A142518.P2099936615914236337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P2099936615914236337

namespace A142518

/-- `∩[A045326(n+1), A306285(n+1)+2]` -/
def P2099936615914236337.Spec : Prop :=
  ∀ n, (P2099936615914236337.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P2316362116335801222

`∩[A017653(n+1)+n, A002145(n+2)]`
-/

namespace A142518.P2316362116335801222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P2316362116335801222

namespace A142518

/-- `∩[A017653(n+1)+n, A002145(n+2)]` -/
def P2316362116335801222.Spec : Prop :=
  ∀ n, (P2316362116335801222.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P5304835675921351847

`∩[A094179(n+1), A140375(n+1)]`
-/

namespace A142518.P5304835675921351847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142518.P5304835675921351847

namespace A142518

/-- `∩[A094179(n+1), A140375(n+1)]` -/
def P5304835675921351847.Spec : Prop :=
  ∀ n, (P5304835675921351847.a n : ℤ) = A142518 (n + 1)

end A142518

/-! ## A142518.P8928658066448011773

`filter[A140375(n+1), A359152(#)]`
-/

namespace A142518.P8928658066448011773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A142518.P8928658066448011773

namespace A142518

/-- `filter[A140375(n+1), A359152(#)]` -/
def P8928658066448011773.Spec : Prop :=
  ∀ n, P8928658066448011773.a n = A142518 (n + 1)

end A142518

/-! ## A142518.P12530133185190294144

`record[A006530(A304840(n+1)-27)]`
-/

namespace A142518.P12530133185190294144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304840 (n + 1) - 27).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142518.P12530133185190294144

namespace A142518

/-- `record[A006530(A304840(n+1)-27)]` -/
def P12530133185190294144.Spec : Prop :=
  ∀ n, P12530133185190294144.a n = A142518 (n + 1)

end A142518

/-! ## A142518.P12594011852893663861

`record[A006530(A155107(2*n+1)-n)]`
-/

namespace A142518.P12594011852893663861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155107 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142518.P12594011852893663861

namespace A142518

/-- `record[A006530(A155107(2*n+1)-n)]` -/
def P12594011852893663861.Spec : Prop :=
  ∀ n, P12594011852893663861.a n = A142518 (n + 1)

end A142518

/-!
# A142519: Primes congruent to 25 mod 52.

The programs for A142519, the canonical program `A142519.P13521085752232109429` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142519 has offset 1).

The definition of A142519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142519.P13521085752232109429

`p?[a(n-1)+52]` with `a(0)=25`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142519

/-- `p?[a(n-1)+52]` -/
def P13521085752232109429.Spec : Prop :=
  ∀ n, (P13521085752232109429.a n : ℤ) = A142519 (n + 1)

theorem P13521085752232109429.correct : P13521085752232109429.Spec := by
  intro n
  simp only [A142519, Nat.add_sub_cancel]

end A142519

/-! ## A142519.P13346078636469914129

`p?[26*(2*n+1)-1]`
-/

namespace A142519.P13346078636469914129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (26 * (2 * n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142519.P13346078636469914129

namespace A142519

/-- `p?[26*(2*n+1)-1]` -/
def P13346078636469914129.Spec : Prop :=
  ∀ n, P13346078636469914129.a n = A142519 (n + 1)

end A142519

/-! ## A142519.P1477397761272234407

`∩[A008846(n+1), A141859(n+1)]`
-/

namespace A142519.P1477397761272234407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P1477397761272234407

namespace A142519

/-- `∩[A008846(n+1), A141859(n+1)]` -/
def P1477397761272234407.Spec : Prop :=
  ∀ n, (P1477397761272234407.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P1425030086114702843

`or(1, p?[A053742(n)+A005843(n)])`
-/

namespace A142519.P1425030086114702843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142519.P1425030086114702843

namespace A142519

/-- `or(1, p?[A053742(n)+A005843(n)])` -/
def P1425030086114702843.Spec : Prop :=
  ∀ n, P1425030086114702843.a n = A142519 (n + 1)

end A142519

/-! ## A142519.P7260025754034023567

`A000027(p?[A053742(n)+2*n])`
-/

namespace A142519.P7260025754034023567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142519.P7260025754034023567

namespace A142519

/-- `A000027(p?[A053742(n)+2*n])` -/
def P7260025754034023567.Spec : Prop :=
  ∀ n, P7260025754034023567.a n = A142519 (n + 1)

end A142519

/-! ## A142519.P15063365219121614455

`∩[A033210(n+1), A141859(n+1)]`
-/

namespace A142519.P15063365219121614455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P15063365219121614455

namespace A142519

/-- `∩[A033210(n+1), A141859(n+1)]` -/
def P15063365219121614455.Spec : Prop :=
  ∀ n, (P15063365219121614455.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P8296059881520266974

`∩[A141859(n+1), A191218(n+1)]`
-/

namespace A142519.P8296059881520266974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P8296059881520266974

namespace A142519

/-- `∩[A141859(n+1), A191218(n+1)]` -/
def P8296059881520266974.Spec : Prop :=
  ∀ n, (P8296059881520266974.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P13240991933595321466

`∩[A141859(n+1), A210499(n+1)]`
-/

namespace A142519.P13240991933595321466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P13240991933595321466

namespace A142519

/-- `∩[A141859(n+1), A210499(n+1)]` -/
def P13240991933595321466.Spec : Prop :=
  ∀ n, (P13240991933595321466.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P8485278906194802346

`∩[A096785(n+1), A141859(n+1)]`
-/

namespace A142519.P8485278906194802346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P8485278906194802346

namespace A142519

/-- `∩[A096785(n+1), A141859(n+1)]` -/
def P8485278906194802346.Spec : Prop :=
  ∀ n, (P8485278906194802346.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P13417625941809093004

`∩[A141859(n+1), A296926(n+1)]`
-/

namespace A142519.P13417625941809093004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P13417625941809093004

namespace A142519

/-- `∩[A141859(n+1), A296926(n+1)]` -/
def P13417625941809093004.Spec : Prop :=
  ∀ n, (P13417625941809093004.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P17658763076575731323

`∩[A141859(n+1), A296928(n+1)]`
-/

namespace A142519.P17658763076575731323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P17658763076575731323

namespace A142519

/-- `∩[A141859(n+1), A296928(n+1)]` -/
def P17658763076575731323.Spec : Prop :=
  ∀ n, (P17658763076575731323.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P4392220508550714405

`∩[A002144(n+1), A141859(n+1)]`
-/

namespace A142519.P4392220508550714405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P4392220508550714405

namespace A142519

/-- `∩[A002144(n+1), A141859(n+1)]` -/
def P4392220508550714405.Spec : Prop :=
  ∀ n, (P4392220508550714405.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P17258034956349709609

`∩[A002313(n+1), A141859(n+1)]`
-/

namespace A142519.P17258034956349709609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P17258034956349709609

namespace A142519

/-- `∩[A002313(n+1), A141859(n+1)]` -/
def P17258034956349709609.Spec : Prop :=
  ∀ n, (P17258034956349709609.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P6850122987248477452

`∩[A141859(n+1), A280084(n+1)]`
-/

namespace A142519.P6850122987248477452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P6850122987248477452

namespace A142519

/-- `∩[A141859(n+1), A280084(n+1)]` -/
def P6850122987248477452.Spec : Prop :=
  ∀ n, (P6850122987248477452.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P16042253059708726092

`∩[A055025(n+1), A141859(n+1)]`
-/

namespace A142519.P16042253059708726092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P16042253059708726092

namespace A142519

/-- `∩[A055025(n+1), A141859(n+1)]` -/
def P16042253059708726092.Spec : Prop :=
  ∀ n, (P16042253059708726092.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P13805506532719209568

`∩[A120960(n+1), A141859(n+1)]`
-/

namespace A142519.P13805506532719209568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P13805506532719209568

namespace A142519

/-- `∩[A120960(n+1), A141859(n+1)]` -/
def P13805506532719209568.Spec : Prop :=
  ∀ n, (P13805506532719209568.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P8556785174617846560

`∩[A085759(n+1), A141859(n+1)]`
-/

namespace A142519.P8556785174617846560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P8556785174617846560

namespace A142519

/-- `∩[A085759(n+1), A141859(n+1)]` -/
def P8556785174617846560.Spec : Prop :=
  ∀ n, (P8556785174617846560.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P6523738937100597159

`∩[A141859(n+1), A351535(n+1)]`
-/

namespace A142519.P6523738937100597159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P6523738937100597159

namespace A142519

/-- `∩[A141859(n+1), A351535(n+1)]` -/
def P6523738937100597159.Spec : Prop :=
  ∀ n, (P6523738937100597159.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P9937677014163020261

`∩[A141859(n+1), A266987(n+1)]`
-/

namespace A142519.P9937677014163020261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P9937677014163020261

namespace A142519

/-- `∩[A141859(n+1), A266987(n+1)]` -/
def P9937677014163020261.Spec : Prop :=
  ∀ n, (P9937677014163020261.a n : ℤ) = A142519 (n + 1)

end A142519

/-! ## A142519.P3509662852789254688

`∩[A125018(n+1), A141859(n+1)]`
-/

namespace A142519.P3509662852789254688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142519.P3509662852789254688

namespace A142519

/-- `∩[A125018(n+1), A141859(n+1)]` -/
def P3509662852789254688.Spec : Prop :=
  ∀ n, (P3509662852789254688.a n : ℤ) = A142519 (n + 1)

end A142519

/-!
# A142520: Primes congruent to 27 mod 52.

The programs for A142520, the canonical program `A142520.P15613139593981992254` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142520 has offset 1).

The definition of A142520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142520.P15613139593981992254

`p?[a(n-1)+52]` with `a(0)=27`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142520

/-- `p?[a(n-1)+52]` -/
def P15613139593981992254.Spec : Prop :=
  ∀ n, (P15613139593981992254.a n : ℤ) = A142520 (n + 1)

theorem P15613139593981992254.correct : P15613139593981992254.Spec := by
  intro n
  simp only [A142520, Nat.add_sub_cancel]

end A142520

/-! ## A142520.P1794830428721024420

`p?[26*(2*n+1)+1]`
-/

namespace A142520.P1794830428721024420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142520.P1794830428721024420

namespace A142520

/-- `p?[26*(2*n+1)+1]` -/
def P1794830428721024420.Spec : Prop :=
  ∀ n, (P1794830428721024420.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P9781824607190967595

`∩[A268753(n+1), A296927(n+1)]`
-/

namespace A142520.P9781824607190967595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P9781824607190967595

namespace A142520

/-- `∩[A268753(n+1), A296927(n+1)]` -/
def P9781824607190967595.Spec : Prop :=
  ∀ n, (P9781824607190967595.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P10416320398836631647

`∩[A002145(n+1), A268753(n+1)]`
-/

namespace A142520.P10416320398836631647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P10416320398836631647

namespace A142520

/-- `∩[A002145(n+1), A268753(n+1)]` -/
def P10416320398836631647.Spec : Prop :=
  ∀ n, (P10416320398836631647.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P11314534472095347994

`∩[A045326(n+1), A268753(n+1)]`
-/

namespace A142520.P11314534472095347994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P11314534472095347994

namespace A142520

/-- `∩[A045326(n+1), A268753(n+1)]` -/
def P11314534472095347994.Spec : Prop :=
  ∀ n, (P11314534472095347994.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P12729621100175681971

`∩[A085760(n+1), A268753(n+1)]`
-/

namespace A142520.P12729621100175681971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P12729621100175681971

namespace A142520

/-- `∩[A085760(n+1), A268753(n+1)]` -/
def P12729621100175681971.Spec : Prop :=
  ∀ n, (P12729621100175681971.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P17488241398239892215

`∩[A197504(n+1), A268753(n+1)]`
-/

namespace A142520.P17488241398239892215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P17488241398239892215

namespace A142520

/-- `∩[A197504(n+1), A268753(n+1)]` -/
def P17488241398239892215.Spec : Prop :=
  ∀ n, (P17488241398239892215.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P17960733308635736651

`∩[A268753(n+1), A332555(n+1)]`
-/

namespace A142520.P17960733308635736651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P17960733308635736651

namespace A142520

/-- `∩[A268753(n+1), A332555(n+1)]` -/
def P17960733308635736651.Spec : Prop :=
  ∀ n, (P17960733308635736651.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P689255783206141819

`∩[A268753(n+1), A292762(n+1)]`
-/

namespace A142520.P689255783206141819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P689255783206141819

namespace A142520

/-- `∩[A268753(n+1), A292762(n+1)]` -/
def P689255783206141819.Spec : Prop :=
  ∀ n, (P689255783206141819.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P11713773281327835754

`∩[A066499(n+1), A268753(n+1)]`
-/

namespace A142520.P11713773281327835754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P11713773281327835754

namespace A142520

/-- `∩[A066499(n+1), A268753(n+1)]` -/
def P11713773281327835754.Spec : Prop :=
  ∀ n, (P11713773281327835754.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P3601240928536337503

`∩[A097987(n+1), A268753(n+1)]`
-/

namespace A142520.P3601240928536337503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P3601240928536337503

namespace A142520

/-- `∩[A097987(n+1), A268753(n+1)]` -/
def P3601240928536337503.Spec : Prop :=
  ∀ n, (P3601240928536337503.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P6710411820025954000

`∩[A002145(n+1), A190991(n)]`
-/

namespace A142520.P6710411820025954000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P6710411820025954000

namespace A142520

/-- `∩[A002145(n+1), A190991(n)]` -/
def P6710411820025954000.Spec : Prop :=
  ∀ n, (P6710411820025954000.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P223900523018096067

`∩[A045326(n+1), A190991(n)]`
-/

namespace A142520.P223900523018096067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P223900523018096067

namespace A142520

/-- `∩[A045326(n+1), A190991(n)]` -/
def P223900523018096067.Spec : Prop :=
  ∀ n, (P223900523018096067.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P4813806243780187692

`∩[A296927(n+1), A190991(n)]`
-/

namespace A142520.P4813806243780187692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P4813806243780187692

namespace A142520

/-- `∩[A296927(n+1), A190991(n)]` -/
def P4813806243780187692.Spec : Prop :=
  ∀ n, (P4813806243780187692.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P8903176611717946771

`∩[A002145(n+1), A153080(n)-1]`
-/

namespace A142520.P8903176611717946771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P8903176611717946771

namespace A142520

/-- `∩[A002145(n+1), A153080(n)-1]` -/
def P8903176611717946771.Spec : Prop :=
  ∀ n, (P8903176611717946771.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P5791235920850031773

`∩[A112653(2*n+1)+A112653(2*n), A002145(n+2)]`
-/

namespace A142520.P5791235920850031773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (2 * n + 1) + A112653 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P5791235920850031773

namespace A142520

/-- `∩[A112653(2*n+1)+A112653(2*n), A002145(n+2)]` -/
def P5791235920850031773.Spec : Prop :=
  ∀ n, (P5791235920850031773.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P555447784282417398

`∩[A112653(2*n+1)+A112653(2*n), A045326(n+2)]`
-/

namespace A142520.P555447784282417398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (2 * n + 1) + A112653 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P555447784282417398

namespace A142520

/-- `∩[A112653(2*n+1)+A112653(2*n), A045326(n+2)]` -/
def P555447784282417398.Spec : Prop :=
  ∀ n, (P555447784282417398.a n : ℤ) = A142520 (n + 1)

end A142520

/-! ## A142520.P17568279425217386055

`∩[A094179(n+1), A268753(n+1)]`
-/

namespace A142520.P17568279425217386055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142520.P17568279425217386055

namespace A142520

/-- `∩[A094179(n+1), A268753(n+1)]` -/
def P17568279425217386055.Spec : Prop :=
  ∀ n, (P17568279425217386055.a n : ℤ) = A142520 (n + 1)

end A142520

/-!
# A142521: Primes congruent to 29 mod 52.

The programs for A142521, the canonical program `A142521.P10270196445697213261` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142521 has offset 1).

The definition of A142521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142521.P10270196445697213261

`A100202(eq[1, A100202(n+1)%4]+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142521

/-- `A100202(eq[1, A100202(n+1)%4]+1)` -/
def P10270196445697213261.Spec : Prop :=
  ∀ n, P10270196445697213261.a n = A142521 (n + 1)

theorem P10270196445697213261.correct : P10270196445697213261.Spec := by
  intro n
  simp only [A142521, Nat.add_sub_cancel]

end A142521

/-! ## A142521.P6308022363635724135

`p?[52*n-23]`
-/

namespace A142521.P6308022363635724135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142521.P6308022363635724135

namespace A142521

/-- `p?[52*n-23]` -/
def P6308022363635724135.Spec : Prop :=
  ∀ n, P6308022363635724135.a n = A142521 (n + 1)

end A142521

/-! ## A142521.P16784470449039262122

`∩[A008846(n+1), A100202(n+1)]`
-/

namespace A142521.P16784470449039262122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P16784470449039262122

namespace A142521

/-- `∩[A008846(n+1), A100202(n+1)]` -/
def P16784470449039262122.Spec : Prop :=
  ∀ n, (P16784470449039262122.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P3437065845746156514

`∩[A033210(n+1), A100202(n+1)]`
-/

namespace A142521.P3437065845746156514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P3437065845746156514

namespace A142521

/-- `∩[A033210(n+1), A100202(n+1)]` -/
def P3437065845746156514.Spec : Prop :=
  ∀ n, (P3437065845746156514.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P9160703102820987735

`∩[A033210(n+1), A214889(n+1)]`
-/

namespace A142521.P9160703102820987735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P9160703102820987735

namespace A142521

/-- `∩[A033210(n+1), A214889(n+1)]` -/
def P9160703102820987735.Spec : Prop :=
  ∀ n, (P9160703102820987735.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P16926842483191231799

`∩[A033210(n+1), A215103(n+1)]`
-/

namespace A142521.P16926842483191231799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P16926842483191231799

namespace A142521

/-- `∩[A033210(n+1), A215103(n+1)]` -/
def P16926842483191231799.Spec : Prop :=
  ∀ n, (P16926842483191231799.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P5002192068266064702

`∩[A033210(n+1), A215387(n+1)]`
-/

namespace A142521.P5002192068266064702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P5002192068266064702

namespace A142521

/-- `∩[A033210(n+1), A215387(n+1)]` -/
def P5002192068266064702.Spec : Prop :=
  ∀ n, (P5002192068266064702.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P13331375147517546682

`∩[A033210(n+1), A215131(n+1)]`
-/

namespace A142521.P13331375147517546682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P13331375147517546682

namespace A142521

/-- `∩[A033210(n+1), A215131(n+1)]` -/
def P13331375147517546682.Spec : Prop :=
  ∀ n, (P13331375147517546682.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P3289999214429931159

`∩[A033210(n+1), A215155(n+1)]`
-/

namespace A142521.P3289999214429931159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P3289999214429931159

namespace A142521

/-- `∩[A033210(n+1), A215155(n+1)]` -/
def P3289999214429931159.Spec : Prop :=
  ∀ n, (P3289999214429931159.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P1878597884723951498

`∩[A100202(n+1), A191218(n+1)]`
-/

namespace A142521.P1878597884723951498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P1878597884723951498

namespace A142521

/-- `∩[A100202(n+1), A191218(n+1)]` -/
def P1878597884723951498.Spec : Prop :=
  ∀ n, (P1878597884723951498.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P815655903930651628

`∩[A033210(n+1), A167119(n+1)]`
-/

namespace A142521.P815655903930651628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P815655903930651628

namespace A142521

/-- `∩[A033210(n+1), A167119(n+1)]` -/
def P815655903930651628.Spec : Prop :=
  ∀ n, (P815655903930651628.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P15926813585509482221

`∩[A100202(n+1), A296926(n+1)]`
-/

namespace A142521.P15926813585509482221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P15926813585509482221

namespace A142521

/-- `∩[A100202(n+1), A296926(n+1)]` -/
def P15926813585509482221.Spec : Prop :=
  ∀ n, (P15926813585509482221.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P13483311247988639590

`∩[A100202(n+1), A296928(n+1)]`
-/

namespace A142521.P13483311247988639590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P13483311247988639590

namespace A142521

/-- `∩[A100202(n+1), A296928(n+1)]` -/
def P13483311247988639590.Spec : Prop :=
  ∀ n, (P13483311247988639590.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P15639123133880323939

`∩[A002144(n+1), A100202(n+1)]`
-/

namespace A142521.P15639123133880323939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P15639123133880323939

namespace A142521

/-- `∩[A002144(n+1), A100202(n+1)]` -/
def P15639123133880323939.Spec : Prop :=
  ∀ n, (P15639123133880323939.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P13549566362725435634

`∩[A002313(n+1), A100202(n+1)]`
-/

namespace A142521.P13549566362725435634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P13549566362725435634

namespace A142521

/-- `∩[A002313(n+1), A100202(n+1)]` -/
def P13549566362725435634.Spec : Prop :=
  ∀ n, (P13549566362725435634.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P10048376344339551906

`∩[A100202(n+1), A280084(n+1)]`
-/

namespace A142521.P10048376344339551906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P10048376344339551906

namespace A142521

/-- `∩[A100202(n+1), A280084(n+1)]` -/
def P10048376344339551906.Spec : Prop :=
  ∀ n, (P10048376344339551906.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P12998564982954461719

`∩[A055025(n+1), A100202(n+1)]`
-/

namespace A142521.P12998564982954461719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P12998564982954461719

namespace A142521

/-- `∩[A055025(n+1), A100202(n+1)]` -/
def P12998564982954461719.Spec : Prop :=
  ∀ n, (P12998564982954461719.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P206539695816353790

`∩[A100202(n+1), A120960(n+1)]`
-/

namespace A142521.P206539695816353790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P206539695816353790

namespace A142521

/-- `∩[A100202(n+1), A120960(n+1)]` -/
def P206539695816353790.Spec : Prop :=
  ∀ n, (P206539695816353790.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P5579360326207234695

`∩[A085759(n+1), A100202(n+1)]`
-/

namespace A142521.P5579360326207234695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P5579360326207234695

namespace A142521

/-- `∩[A085759(n+1), A100202(n+1)]` -/
def P5579360326207234695.Spec : Prop :=
  ∀ n, (P5579360326207234695.a n : ℤ) = A142521 (n + 1)

end A142521

/-! ## A142521.P4575010975943712362

`∩[A100202(n+1), A351535(n+1)]`
-/

namespace A142521.P4575010975943712362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142521.P4575010975943712362

namespace A142521

/-- `∩[A100202(n+1), A351535(n+1)]` -/
def P4575010975943712362.Spec : Prop :=
  ∀ n, (P4575010975943712362.a n : ℤ) = A142521 (n + 1)

end A142521

/-!
# A142522: Primes congruent to 31 mod 52.

The programs for A142522, the canonical program `A142522.P11018006263627097626` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142522 has offset 1).

The definition of A142522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142522.P11018006263627097626

`p?[52*n-21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142522

/-- `p?[52*n-21]` -/
def P11018006263627097626.Spec : Prop :=
  ∀ n, P11018006263627097626.a n = A142522 (n + 1)

theorem P11018006263627097626.correct : P11018006263627097626.Spec := by
  intro n
  simp only [A142522, Nat.add_sub_cancel]

end A142522

/-! ## A142522.P9617415402114729304

`∩[A102732(n+1), A106906(n+1)]`
-/

namespace A142522.P9617415402114729304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P9617415402114729304

namespace A142522

/-- `∩[A102732(n+1), A106906(n+1)]` -/
def P9617415402114729304.Spec : Prop :=
  ∀ n, (P9617415402114729304.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P13840057380122076939

`∩[A102732(n+1), A296926(n+1)]`
-/

namespace A142522.P13840057380122076939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P13840057380122076939

namespace A142522

/-- `∩[A102732(n+1), A296926(n+1)]` -/
def P13840057380122076939.Spec : Prop :=
  ∀ n, (P13840057380122076939.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P7309101020913918863

`∩[A102732(n+1), A296928(n+1)]`
-/

namespace A142522.P7309101020913918863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P7309101020913918863

namespace A142522

/-- `∩[A102732(n+1), A296928(n+1)]` -/
def P7309101020913918863.Spec : Prop :=
  ∀ n, (P7309101020913918863.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P9503059498562172024

`∩[A002145(n+1), A102732(n+1)]`
-/

namespace A142522.P9503059498562172024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P9503059498562172024

namespace A142522

/-- `∩[A002145(n+1), A102732(n+1)]` -/
def P9503059498562172024.Spec : Prop :=
  ∀ n, (P9503059498562172024.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P10958551708158298901

`∩[A045326(n+1), A102732(n+1)]`
-/

namespace A142522.P10958551708158298901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P10958551708158298901

namespace A142522

/-- `∩[A045326(n+1), A102732(n+1)]` -/
def P10958551708158298901.Spec : Prop :=
  ∀ n, (P10958551708158298901.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P11603978963719738643

`∩[A085760(n+1), A102732(n+1)]`
-/

namespace A142522.P11603978963719738643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P11603978963719738643

namespace A142522

/-- `∩[A085760(n+1), A102732(n+1)]` -/
def P11603978963719738643.Spec : Prop :=
  ∀ n, (P11603978963719738643.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P14018697360582094151

`∩[A102732(n+1), A197504(n+1)]`
-/

namespace A142522.P14018697360582094151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P14018697360582094151

namespace A142522

/-- `∩[A102732(n+1), A197504(n+1)]` -/
def P14018697360582094151.Spec : Prop :=
  ∀ n, (P14018697360582094151.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P8295191240585140323

`∩[A102732(n+1), A332555(n+1)]`
-/

namespace A142522.P8295191240585140323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P8295191240585140323

namespace A142522

/-- `∩[A102732(n+1), A332555(n+1)]` -/
def P8295191240585140323.Spec : Prop :=
  ∀ n, (P8295191240585140323.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P10358494079430742120

`∩[A102732(n+1), A292762(n+1)]`
-/

namespace A142522.P10358494079430742120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P10358494079430742120

namespace A142522

/-- `∩[A102732(n+1), A292762(n+1)]` -/
def P10358494079430742120.Spec : Prop :=
  ∀ n, (P10358494079430742120.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P17327635099176764810

`∩[A066499(n+1), A102732(n+1)]`
-/

namespace A142522.P17327635099176764810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P17327635099176764810

namespace A142522

/-- `∩[A066499(n+1), A102732(n+1)]` -/
def P17327635099176764810.Spec : Prop :=
  ∀ n, (P17327635099176764810.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P338302551454106271

`∩[A097987(n+1), A102732(n+1)]`
-/

namespace A142522.P338302551454106271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P338302551454106271

namespace A142522

/-- `∩[A097987(n+1), A102732(n+1)]` -/
def P338302551454106271.Spec : Prop :=
  ∀ n, (P338302551454106271.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P10215794574077584547

`∩[A002145(n+1), A154609(n)]`
-/

namespace A142522.P10215794574077584547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P10215794574077584547

namespace A142522

/-- `∩[A002145(n+1), A154609(n)]` -/
def P10215794574077584547.Spec : Prop :=
  ∀ n, (P10215794574077584547.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P1854576825978645191

`∩[A045326(n+1), A154609(n)]`
-/

namespace A142522.P1854576825978645191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P1854576825978645191

namespace A142522

/-- `∩[A045326(n+1), A154609(n)]` -/
def P1854576825978645191.Spec : Prop :=
  ∀ n, (P1854576825978645191.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P8553346210005472978

`∩[A106906(n+1), A154609(n)]`
-/

namespace A142522.P8553346210005472978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P8553346210005472978

namespace A142522

/-- `∩[A106906(n+1), A154609(n)]` -/
def P8553346210005472978.Spec : Prop :=
  ∀ n, (P8553346210005472978.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P16942295880665056261

`∩[A296926(n+1), A154609(n)]`
-/

namespace A142522.P16942295880665056261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P16942295880665056261

namespace A142522

/-- `∩[A296926(n+1), A154609(n)]` -/
def P16942295880665056261.Spec : Prop :=
  ∀ n, (P16942295880665056261.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P5418266665791143078

`∩[A296928(n+1), A154609(n)]`
-/

namespace A142522.P5418266665791143078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P5418266665791143078

namespace A142522

/-- `∩[A296928(n+1), A154609(n)]` -/
def P5418266665791143078.Spec : Prop :=
  ∀ n, (P5418266665791143078.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P13444293034213596829

`∩[A002145(n+1), A127547(n)+1]`
-/

namespace A142522.P13444293034213596829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P13444293034213596829

namespace A142522

/-- `∩[A002145(n+1), A127547(n)+1]` -/
def P13444293034213596829.Spec : Prop :=
  ∀ n, (P13444293034213596829.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P14619537916340637790

`∩[A045326(n+1), A127547(n)+1]`
-/

namespace A142522.P14619537916340637790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P14619537916340637790

namespace A142522

/-- `∩[A045326(n+1), A127547(n)+1]` -/
def P14619537916340637790.Spec : Prop :=
  ∀ n, (P14619537916340637790.a n : ℤ) = A142522 (n + 1)

end A142522

/-! ## A142522.P3353047230480211414

`∩[A296928(n+1), A127547(n)+1]`
-/

namespace A142522.P3353047230480211414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142522.P3353047230480211414

namespace A142522

/-- `∩[A296928(n+1), A127547(n)+1]` -/
def P3353047230480211414.Spec : Prop :=
  ∀ n, (P3353047230480211414.a n : ℤ) = A142522 (n + 1)

end A142522

/-!
# A142523: Primes congruent to 33 mod 52.

The programs for A142523, the canonical program `A142523.P2913508382872282978` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142523 has offset 1).

The definition of A142523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142523.P2913508382872282978

`p?[52*n+33]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142523

/-- `p?[52*n+33]` -/
def P2913508382872282978.Spec : Prop :=
  ∀ n, (P2913508382872282978.a n : ℤ) = A142523 (n + 1)

theorem P2913508382872282978.correct : P2913508382872282978.Spec := by
  intro n
  simp only [A142523, Nat.add_sub_cancel]

end A142523

/-! ## A142523.P15553312413830605159

`∩[A008846(n+1), A140371(n+1)]`
-/

namespace A142523.P15553312413830605159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P15553312413830605159

namespace A142523

/-- `∩[A008846(n+1), A140371(n+1)]` -/
def P15553312413830605159.Spec : Prop :=
  ∀ n, (P15553312413830605159.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P11605403991373150199

`∩[A140371(n+1), A191218(n+1)]`
-/

namespace A142523.P11605403991373150199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P11605403991373150199

namespace A142523

/-- `∩[A140371(n+1), A191218(n+1)]` -/
def P11605403991373150199.Spec : Prop :=
  ∀ n, (P11605403991373150199.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P9865939400594796735

`∩[A002144(n+1), A140371(n+1)]`
-/

namespace A142523.P9865939400594796735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P9865939400594796735

namespace A142523

/-- `∩[A002144(n+1), A140371(n+1)]` -/
def P9865939400594796735.Spec : Prop :=
  ∀ n, (P9865939400594796735.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P16706209333644751469

`∩[A002313(n+1), A140371(n+1)]`
-/

namespace A142523.P16706209333644751469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P16706209333644751469

namespace A142523

/-- `∩[A002313(n+1), A140371(n+1)]` -/
def P16706209333644751469.Spec : Prop :=
  ∀ n, (P16706209333644751469.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P279854352458722935

`∩[A140371(n+1), A280084(n+1)]`
-/

namespace A142523.P279854352458722935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P279854352458722935

namespace A142523

/-- `∩[A140371(n+1), A280084(n+1)]` -/
def P279854352458722935.Spec : Prop :=
  ∀ n, (P279854352458722935.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P5080913544332045421

`∩[A140371(n+1), A296927(n+1)]`
-/

namespace A142523.P5080913544332045421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P5080913544332045421

namespace A142523

/-- `∩[A140371(n+1), A296927(n+1)]` -/
def P5080913544332045421.Spec : Prop :=
  ∀ n, (P5080913544332045421.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P18063282778737300358

`∩[A055025(n+1), A140371(n+1)]`
-/

namespace A142523.P18063282778737300358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P18063282778737300358

namespace A142523

/-- `∩[A055025(n+1), A140371(n+1)]` -/
def P18063282778737300358.Spec : Prop :=
  ∀ n, (P18063282778737300358.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P47039031899859408

`∩[A120960(n+1), A140371(n+1)]`
-/

namespace A142523.P47039031899859408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P47039031899859408

namespace A142523

/-- `∩[A120960(n+1), A140371(n+1)]` -/
def P47039031899859408.Spec : Prop :=
  ∀ n, (P47039031899859408.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P9778203544289601916

`∩[A085759(n+1), A140371(n+1)]`
-/

namespace A142523.P9778203544289601916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P9778203544289601916

namespace A142523

/-- `∩[A085759(n+1), A140371(n+1)]` -/
def P9778203544289601916.Spec : Prop :=
  ∀ n, (P9778203544289601916.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P2187004775223631240

`∩[A140371(n+1), A351535(n+1)]`
-/

namespace A142523.P2187004775223631240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P2187004775223631240

namespace A142523

/-- `∩[A140371(n+1), A351535(n+1)]` -/
def P2187004775223631240.Spec : Prop :=
  ∀ n, (P2187004775223631240.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P5391837215676013247

`∩[A125018(n+1), A140371(n+1)]`
-/

namespace A142523.P5391837215676013247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P5391837215676013247

namespace A142523

/-- `∩[A125018(n+1), A140371(n+1)]` -/
def P5391837215676013247.Spec : Prop :=
  ∀ n, (P5391837215676013247.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P6602051376479614015

`∩[A140371(n+1), A281292(n+1)]`
-/

namespace A142523.P6602051376479614015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P6602051376479614015

namespace A142523

/-- `∩[A140371(n+1), A281292(n+1)]` -/
def P6602051376479614015.Spec : Prop :=
  ∀ n, (P6602051376479614015.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P2704687421614902301

`∩[A140371(n+1), A224450(n+1)]`
-/

namespace A142523.P2704687421614902301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P2704687421614902301

namespace A142523

/-- `∩[A140371(n+1), A224450(n+1)]` -/
def P2704687421614902301.Spec : Prop :=
  ∀ n, (P2704687421614902301.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P18042027233990236836

`∩[A002144(n+1), A269044(n)]`
-/

namespace A142523.P18042027233990236836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P18042027233990236836

namespace A142523

/-- `∩[A002144(n+1), A269044(n)]` -/
def P18042027233990236836.Spec : Prop :=
  ∀ n, (P18042027233990236836.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P12054995890316235368

`∩[A002313(n+1), A269044(n)]`
-/

namespace A142523.P12054995890316235368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P12054995890316235368

namespace A142523

/-- `∩[A002313(n+1), A269044(n)]` -/
def P12054995890316235368.Spec : Prop :=
  ∀ n, (P12054995890316235368.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P17084598306379186191

`∩[A055025(n+1), A269044(n)]`
-/

namespace A142523.P17084598306379186191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P17084598306379186191

namespace A142523

/-- `∩[A055025(n+1), A269044(n)]` -/
def P17084598306379186191.Spec : Prop :=
  ∀ n, (P17084598306379186191.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P4121892778017613032

`∩[A085759(n+1), A269044(n)]`
-/

namespace A142523.P4121892778017613032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P4121892778017613032

namespace A142523

/-- `∩[A085759(n+1), A269044(n)]` -/
def P4121892778017613032.Spec : Prop :=
  ∀ n, (P4121892778017613032.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P11711095740376638853

`∩[A120960(n+1), A269044(n)]`
-/

namespace A142523.P11711095740376638853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P11711095740376638853

namespace A142523

/-- `∩[A120960(n+1), A269044(n)]` -/
def P11711095740376638853.Spec : Prop :=
  ∀ n, (P11711095740376638853.a n : ℤ) = A142523 (n + 1)

end A142523

/-! ## A142523.P9150718454083312152

`∩[A280084(n+1), A269044(n)]`
-/

namespace A142523.P9150718454083312152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142523.P9150718454083312152

namespace A142523

/-- `∩[A280084(n+1), A269044(n)]` -/
def P9150718454083312152.Spec : Prop :=
  ∀ n, (P9150718454083312152.a n : ℤ) = A142523 (n + 1)

end A142523

/-!
# A142524: Primes congruent to 35 mod 52.

The programs for A142524, the canonical program `A142524.P6988949787904789520` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142524 has offset 1).

The definition of A142524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142524.P6988949787904789520

`p?[52*n-17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142524

/-- `p?[52*n-17]` -/
def P6988949787904789520.Spec : Prop :=
  ∀ n, P6988949787904789520.a n = A142524 (n + 1)

theorem P6988949787904789520.correct : P6988949787904789520.Spec := by
  intro n
  simp only [A142524, Nat.add_sub_cancel]

end A142524

/-! ## A142524.P7922371625435901192

`p?[A248474(n+1)+A017473(n)]*A000034(2*n)`
-/

namespace A142524.P7922371625435901192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A142524.P7922371625435901192

namespace A142524

/-- `p?[A248474(n+1)+A017473(n)]*A000034(2*n)` -/
def P7922371625435901192.Spec : Prop :=
  ∀ n, P7922371625435901192.a n = A142524 (n + 1)

end A142524

/-! ## A142524.P7144223838172686513

`p?[A248474(n+1)+A017473(n)]%A238136(n+1)`
-/

namespace A142524.P7144223838172686513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A238136 (n + 1))

end

end A142524.P7144223838172686513

namespace A142524

/-- `p?[A248474(n+1)+A017473(n)]%A238136(n+1)` -/
def P7144223838172686513.Spec : Prop :=
  ∀ n, P7144223838172686513.a n = A142524 (n + 1)

end A142524

/-! ## A142524.P5133477573785392759

`∩[A140372(n+1), A296927(n+1)]`
-/

namespace A142524.P5133477573785392759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P5133477573785392759

namespace A142524

/-- `∩[A140372(n+1), A296927(n+1)]` -/
def P5133477573785392759.Spec : Prop :=
  ∀ n, (P5133477573785392759.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P13635790440788972605

`∩[A002145(n+1), A140372(n+1)]`
-/

namespace A142524.P13635790440788972605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P13635790440788972605

namespace A142524

/-- `∩[A002145(n+1), A140372(n+1)]` -/
def P13635790440788972605.Spec : Prop :=
  ∀ n, (P13635790440788972605.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P7642467368112938894

`∩[A045326(n+1), A140372(n+1)]`
-/

namespace A142524.P7642467368112938894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P7642467368112938894

namespace A142524

/-- `∩[A045326(n+1), A140372(n+1)]` -/
def P7642467368112938894.Spec : Prop :=
  ∀ n, (P7642467368112938894.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P8823019964635675758

`∩[A085760(n+1), A140372(n+1)]`
-/

namespace A142524.P8823019964635675758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P8823019964635675758

namespace A142524

/-- `∩[A085760(n+1), A140372(n+1)]` -/
def P8823019964635675758.Spec : Prop :=
  ∀ n, (P8823019964635675758.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P14960111662258893998

`∩[A140372(n+1), A197504(n+1)]`
-/

namespace A142524.P14960111662258893998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P14960111662258893998

namespace A142524

/-- `∩[A140372(n+1), A197504(n+1)]` -/
def P14960111662258893998.Spec : Prop :=
  ∀ n, (P14960111662258893998.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P10407622824296385604

`∩[A140372(n+1), A332555(n+1)]`
-/

namespace A142524.P10407622824296385604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P10407622824296385604

namespace A142524

/-- `∩[A140372(n+1), A332555(n+1)]` -/
def P10407622824296385604.Spec : Prop :=
  ∀ n, (P10407622824296385604.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P9166747773264203635

`∩[A140372(n+1), A292762(n+1)]`
-/

namespace A142524.P9166747773264203635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P9166747773264203635

namespace A142524

/-- `∩[A140372(n+1), A292762(n+1)]` -/
def P9166747773264203635.Spec : Prop :=
  ∀ n, (P9166747773264203635.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P5175809846217309304

`∩[A066499(n+1), A140372(n+1)]`
-/

namespace A142524.P5175809846217309304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P5175809846217309304

namespace A142524

/-- `∩[A066499(n+1), A140372(n+1)]` -/
def P5175809846217309304.Spec : Prop :=
  ∀ n, (P5175809846217309304.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P6980702290488817648

`∩[A097987(n+1), A140372(n+1)]`
-/

namespace A142524.P6980702290488817648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P6980702290488817648

namespace A142524

/-- `∩[A097987(n+1), A140372(n+1)]` -/
def P6980702290488817648.Spec : Prop :=
  ∀ n, (P6980702290488817648.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P1783948452151827032

`∩[A002145(n+1), A269044(n)+2]`
-/

namespace A142524.P1783948452151827032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P1783948452151827032

namespace A142524

/-- `∩[A002145(n+1), A269044(n)+2]` -/
def P1783948452151827032.Spec : Prop :=
  ∀ n, (P1783948452151827032.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P5470958594526178162

`∩[A045326(n+1), A269044(n)+2]`
-/

namespace A142524.P5470958594526178162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P5470958594526178162

namespace A142524

/-- `∩[A045326(n+1), A269044(n)+2]` -/
def P5470958594526178162.Spec : Prop :=
  ∀ n, (P5470958594526178162.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P8330367010816956688

`∩[A296927(n+1), A269044(n)+2]`
-/

namespace A142524.P8330367010816956688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P8330367010816956688

namespace A142524

/-- `∩[A296927(n+1), A269044(n)+2]` -/
def P8330367010816956688.Spec : Prop :=
  ∀ n, (P8330367010816956688.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P626106618549368325

`∩[A002145(n+1), A269100(n)-2]`
-/

namespace A142524.P626106618549368325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P626106618549368325

namespace A142524

/-- `∩[A002145(n+1), A269100(n)-2]` -/
def P626106618549368325.Spec : Prop :=
  ∀ n, (P626106618549368325.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P9817824873398367920

`∩[A045326(n+1), A269100(n)-2]`
-/

namespace A142524.P9817824873398367920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P9817824873398367920

namespace A142524

/-- `∩[A045326(n+1), A269100(n)-2]` -/
def P9817824873398367920.Spec : Prop :=
  ∀ n, (P9817824873398367920.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P12439392037523465714

`∩[A296927(n+1), A269100(n)-2]`
-/

namespace A142524.P12439392037523465714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P12439392037523465714

namespace A142524

/-- `∩[A296927(n+1), A269100(n)-2]` -/
def P12439392037523465714.Spec : Prop :=
  ∀ n, (P12439392037523465714.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P9630878124043070128

`∩[A094179(n+1), A140372(n+1)]`
-/

namespace A142524.P9630878124043070128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142524.P9630878124043070128

namespace A142524

/-- `∩[A094179(n+1), A140372(n+1)]` -/
def P9630878124043070128.Spec : Prop :=
  ∀ n, (P9630878124043070128.a n : ℤ) = A142524 (n + 1)

end A142524

/-! ## A142524.P12677991949953957404

`filter[A140372(n+1), A359152(#)]`
-/

namespace A142524.P12677991949953957404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A142524.P12677991949953957404

namespace A142524

/-- `filter[A140372(n+1), A359152(#)]` -/
def P12677991949953957404.Spec : Prop :=
  ∀ n, P12677991949953957404.a n = A142524 (n + 1)

end A142524

/-!
# A142525: Primes congruent to 37 mod 52.

The programs for A142525, the canonical program `A142525.P15563797761922430760` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142525 has offset 1).

The definition of A142525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142525.P15563797761922430760

`p?[52*n-15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142525

/-- `p?[52*n-15]` -/
def P15563797761922430760.Spec : Prop :=
  ∀ n, P15563797761922430760.a n = A142525 (n + 1)

theorem P15563797761922430760.correct : P15563797761922430760.Spec := by
  intro n
  simp only [A142525, Nat.add_sub_cancel]

end A142525

/-! ## A142525.P1880166632083810447

`∩[A008846(n+1), A140373(n+1)]`
-/

namespace A142525.P1880166632083810447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P1880166632083810447

namespace A142525

/-- `∩[A008846(n+1), A140373(n+1)]` -/
def P1880166632083810447.Spec : Prop :=
  ∀ n, (P1880166632083810447.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P1107271396709701963

`∩[A140373(n+1), A191218(n+1)]`
-/

namespace A142525.P1107271396709701963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P1107271396709701963

namespace A142525

/-- `∩[A140373(n+1), A191218(n+1)]` -/
def P1107271396709701963.Spec : Prop :=
  ∀ n, (P1107271396709701963.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P3102162544036656216

`∩[A002144(n+1), A140373(n+1)]`
-/

namespace A142525.P3102162544036656216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P3102162544036656216

namespace A142525

/-- `∩[A002144(n+1), A140373(n+1)]` -/
def P3102162544036656216.Spec : Prop :=
  ∀ n, (P3102162544036656216.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P11354798398295341511

`∩[A002313(n+1), A140373(n+1)]`
-/

namespace A142525.P11354798398295341511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P11354798398295341511

namespace A142525

/-- `∩[A002313(n+1), A140373(n+1)]` -/
def P11354798398295341511.Spec : Prop :=
  ∀ n, (P11354798398295341511.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P17281014449213552678

`∩[A140373(n+1), A280084(n+1)]`
-/

namespace A142525.P17281014449213552678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P17281014449213552678

namespace A142525

/-- `∩[A140373(n+1), A280084(n+1)]` -/
def P17281014449213552678.Spec : Prop :=
  ∀ n, (P17281014449213552678.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P17082073123207266658

`∩[A140373(n+1), A296927(n+1)]`
-/

namespace A142525.P17082073123207266658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P17082073123207266658

namespace A142525

/-- `∩[A140373(n+1), A296927(n+1)]` -/
def P17082073123207266658.Spec : Prop :=
  ∀ n, (P17082073123207266658.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P9173016367859673386

`∩[A055025(n+1), A140373(n+1)]`
-/

namespace A142525.P9173016367859673386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P9173016367859673386

namespace A142525

/-- `∩[A055025(n+1), A140373(n+1)]` -/
def P9173016367859673386.Spec : Prop :=
  ∀ n, (P9173016367859673386.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P12203688511417823984

`∩[A120960(n+1), A140373(n+1)]`
-/

namespace A142525.P12203688511417823984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P12203688511417823984

namespace A142525

/-- `∩[A120960(n+1), A140373(n+1)]` -/
def P12203688511417823984.Spec : Prop :=
  ∀ n, (P12203688511417823984.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P16965365261681457544

`∩[A085759(n+1), A140373(n+1)]`
-/

namespace A142525.P16965365261681457544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P16965365261681457544

namespace A142525

/-- `∩[A085759(n+1), A140373(n+1)]` -/
def P16965365261681457544.Spec : Prop :=
  ∀ n, (P16965365261681457544.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P9899191244660225071

`∩[A140373(n+1), A351535(n+1)]`
-/

namespace A142525.P9899191244660225071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P9899191244660225071

namespace A142525

/-- `∩[A140373(n+1), A351535(n+1)]` -/
def P9899191244660225071.Spec : Prop :=
  ∀ n, (P9899191244660225071.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P5428184275036225328

`∩[A125018(n+1), A140373(n+1)]`
-/

namespace A142525.P5428184275036225328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P5428184275036225328

namespace A142525

/-- `∩[A125018(n+1), A140373(n+1)]` -/
def P5428184275036225328.Spec : Prop :=
  ∀ n, (P5428184275036225328.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P12747264975331017601

`∩[A140373(n+1), A230779(n+1)]`
-/

namespace A142525.P12747264975331017601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P12747264975331017601

namespace A142525

/-- `∩[A140373(n+1), A230779(n+1)]` -/
def P12747264975331017601.Spec : Prop :=
  ∀ n, (P12747264975331017601.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P374479562139732225

`∩[A140373(n+1), A281292(n+1)]`
-/

namespace A142525.P374479562139732225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P374479562139732225

namespace A142525

/-- `∩[A140373(n+1), A281292(n+1)]` -/
def P374479562139732225.Spec : Prop :=
  ∀ n, (P374479562139732225.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P3985001319601711790

`∩[A140373(n+1), A224450(n+1)]`
-/

namespace A142525.P3985001319601711790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P3985001319601711790

namespace A142525

/-- `∩[A140373(n+1), A224450(n+1)]` -/
def P3985001319601711790.Spec : Prop :=
  ∀ n, (P3985001319601711790.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P14011384574368803578

`∩[A002144(n+1), A269100(n)]`
-/

namespace A142525.P14011384574368803578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P14011384574368803578

namespace A142525

/-- `∩[A002144(n+1), A269100(n)]` -/
def P14011384574368803578.Spec : Prop :=
  ∀ n, (P14011384574368803578.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P11827449612128469660

`∩[A002313(n+1), A269100(n)]`
-/

namespace A142525.P11827449612128469660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P11827449612128469660

namespace A142525

/-- `∩[A002313(n+1), A269100(n)]` -/
def P11827449612128469660.Spec : Prop :=
  ∀ n, (P11827449612128469660.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P12758587264508214726

`∩[A055025(n+1), A269100(n)]`
-/

namespace A142525.P12758587264508214726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P12758587264508214726

namespace A142525

/-- `∩[A055025(n+1), A269100(n)]` -/
def P12758587264508214726.Spec : Prop :=
  ∀ n, (P12758587264508214726.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P5943388821403233199

`∩[A085759(n+1), A269100(n)]`
-/

namespace A142525.P5943388821403233199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P5943388821403233199

namespace A142525

/-- `∩[A085759(n+1), A269100(n)]` -/
def P5943388821403233199.Spec : Prop :=
  ∀ n, (P5943388821403233199.a n : ℤ) = A142525 (n + 1)

end A142525

/-! ## A142525.P2402501385502674568

`∩[A120960(n+1), A269100(n)]`
-/

namespace A142525.P2402501385502674568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142525.P2402501385502674568

namespace A142525

/-- `∩[A120960(n+1), A269100(n)]` -/
def P2402501385502674568.Spec : Prop :=
  ∀ n, (P2402501385502674568.a n : ℤ) = A142525 (n + 1)

end A142525

/-!
# A142526: Primes congruent to 41 mod 52.

The programs for A142526, the canonical program `A142526.P4135253918980577179` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142526 has offset 1).

The definition of A142526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142526.P4135253918980577179

`p?[2*26*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142526

/-- `p?[2*26*n-11]` -/
def P4135253918980577179.Spec : Prop :=
  ∀ n, P4135253918980577179.a n = A142526 (n + 1)

theorem P4135253918980577179.correct : P4135253918980577179.Spec := by
  intro n
  simp only [A142526, Nat.add_sub_cancel]

end A142526

/-! ## A142526.P1857415359445057935

`∩[A008846(n+1), A140374(n+1)]`
-/

namespace A142526.P1857415359445057935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P1857415359445057935

namespace A142526

/-- `∩[A008846(n+1), A140374(n+1)]` -/
def P1857415359445057935.Spec : Prop :=
  ∀ n, (P1857415359445057935.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P4047950010121558916

`∩[A008846(n+1), A141858(n+1)]`
-/

namespace A142526.P4047950010121558916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P4047950010121558916

namespace A142526

/-- `∩[A008846(n+1), A141858(n+1)]` -/
def P4047950010121558916.Spec : Prop :=
  ∀ n, (P4047950010121558916.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P8663627658808978526

`∩[A140374(n+1), A191218(n+1)]`
-/

namespace A142526.P8663627658808978526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P8663627658808978526

namespace A142526

/-- `∩[A140374(n+1), A191218(n+1)]` -/
def P8663627658808978526.Spec : Prop :=
  ∀ n, (P8663627658808978526.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P13639356179050239142

`∩[A141858(n+1), A191218(n+1)]`
-/

namespace A142526.P13639356179050239142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P13639356179050239142

namespace A142526

/-- `∩[A141858(n+1), A191218(n+1)]` -/
def P13639356179050239142.Spec : Prop :=
  ∀ n, (P13639356179050239142.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P14121952158124649133

`p?[A159754(n+2)+n]%A100153(n+2)`
-/

namespace A142526.P14121952158124649133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A100153 (n + 2))

end

end A142526.P14121952158124649133

namespace A142526

/-- `p?[A159754(n+2)+n]%A100153(n+2)` -/
def P14121952158124649133.Spec : Prop :=
  ∀ n, P14121952158124649133.a n = A142526 (n + 1)

end A142526

/-! ## A142526.P10316460703996389916

`∩[A002144(n+1), A140374(n+1)]`
-/

namespace A142526.P10316460703996389916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P10316460703996389916

namespace A142526

/-- `∩[A002144(n+1), A140374(n+1)]` -/
def P10316460703996389916.Spec : Prop :=
  ∀ n, (P10316460703996389916.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P1451847570672647489

`∩[A002313(n+1), A140374(n+1)]`
-/

namespace A142526.P1451847570672647489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P1451847570672647489

namespace A142526

/-- `∩[A002313(n+1), A140374(n+1)]` -/
def P1451847570672647489.Spec : Prop :=
  ∀ n, (P1451847570672647489.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P458053089052838232

`∩[A002144(n+1), A141858(n+1)]`
-/

namespace A142526.P458053089052838232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P458053089052838232

namespace A142526

/-- `∩[A002144(n+1), A141858(n+1)]` -/
def P458053089052838232.Spec : Prop :=
  ∀ n, (P458053089052838232.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P11642012528243274819

`∩[A140374(n+1), A280084(n+1)]`
-/

namespace A142526.P11642012528243274819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P11642012528243274819

namespace A142526

/-- `∩[A140374(n+1), A280084(n+1)]` -/
def P11642012528243274819.Spec : Prop :=
  ∀ n, (P11642012528243274819.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P3610585524481284412

`∩[A141858(n+1), A280084(n+1)]`
-/

namespace A142526.P3610585524481284412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P3610585524481284412

namespace A142526

/-- `∩[A141858(n+1), A280084(n+1)]` -/
def P3610585524481284412.Spec : Prop :=
  ∀ n, (P3610585524481284412.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P3003933379203427751

`∩[A140374(n+1), A296927(n+1)]`
-/

namespace A142526.P3003933379203427751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P3003933379203427751

namespace A142526

/-- `∩[A140374(n+1), A296927(n+1)]` -/
def P3003933379203427751.Spec : Prop :=
  ∀ n, (P3003933379203427751.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P3472804624512329180

`∩[A296927(n+1), A141858(n+1)]`
-/

namespace A142526.P3472804624512329180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P3472804624512329180

namespace A142526

/-- `∩[A296927(n+1), A141858(n+1)]` -/
def P3472804624512329180.Spec : Prop :=
  ∀ n, (P3472804624512329180.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P13595011812517353507

`∩[A055025(n+1), A140374(n+1)]`
-/

namespace A142526.P13595011812517353507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P13595011812517353507

namespace A142526

/-- `∩[A055025(n+1), A140374(n+1)]` -/
def P13595011812517353507.Spec : Prop :=
  ∀ n, (P13595011812517353507.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P14512400146562022799

`∩[A120960(n+1), A140374(n+1)]`
-/

namespace A142526.P14512400146562022799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P14512400146562022799

namespace A142526

/-- `∩[A120960(n+1), A140374(n+1)]` -/
def P14512400146562022799.Spec : Prop :=
  ∀ n, (P14512400146562022799.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P13237178614430097050

`∩[A120960(n+1), A141858(n+1)]`
-/

namespace A142526.P13237178614430097050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P13237178614430097050

namespace A142526

/-- `∩[A120960(n+1), A141858(n+1)]` -/
def P13237178614430097050.Spec : Prop :=
  ∀ n, (P13237178614430097050.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P13233977031565801704

`∩[A085759(n+1), A140374(n+1)]`
-/

namespace A142526.P13233977031565801704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P13233977031565801704

namespace A142526

/-- `∩[A085759(n+1), A140374(n+1)]` -/
def P13233977031565801704.Spec : Prop :=
  ∀ n, (P13233977031565801704.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P16600164570967128690

`∩[A085759(n+1), A141858(n+1)]`
-/

namespace A142526.P16600164570967128690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P16600164570967128690

namespace A142526

/-- `∩[A085759(n+1), A141858(n+1)]` -/
def P16600164570967128690.Spec : Prop :=
  ∀ n, (P16600164570967128690.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P8997394854706477082

`∩[A125018(n+1), A140374(n+1)]`
-/

namespace A142526.P8997394854706477082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P8997394854706477082

namespace A142526

/-- `∩[A125018(n+1), A140374(n+1)]` -/
def P8997394854706477082.Spec : Prop :=
  ∀ n, (P8997394854706477082.a n : ℤ) = A142526 (n + 1)

end A142526

/-! ## A142526.P8170292913834967301

`∩[A125018(n+1), A141858(n+1)]`
-/

namespace A142526.P8170292913834967301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142526.P8170292913834967301

namespace A142526

/-- `∩[A125018(n+1), A141858(n+1)]` -/
def P8170292913834967301.Spec : Prop :=
  ∀ n, (P8170292913834967301.a n : ℤ) = A142526 (n + 1)

end A142526

/-!
# A142527: Primes congruent to 43 mod 52.

The programs for A142527, the canonical program `A142527.P5267497133949724872` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142527 has offset 1).

The definition of A142527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142527.P5267497133949724872

`p?[52*n-9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142527

/-- `p?[52*n-9]` -/
def P5267497133949724872.Spec : Prop :=
  ∀ n, P5267497133949724872.a n = A142527 (n + 1)

theorem P5267497133949724872.correct : P5267497133949724872.Spec := by
  intro n
  simp only [A142527, Nat.add_sub_cancel]

end A142527

/-! ## A142527.P18157082369761456262

`or(1, p?[A159754(n+1)+n+1])`
-/

namespace A142527.P18157082369761456262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142527.P18157082369761456262

namespace A142527

/-- `or(1, p?[A159754(n+1)+n+1])` -/
def P18157082369761456262.Spec : Prop :=
  ∀ n, P18157082369761456262.a n = A142527 (n + 1)

end A142527

/-! ## A142527.P11631368619421145099

`p?[A159754(n+1)+n+1]%A002997(n+1)`
-/

namespace A142527.P11631368619421145099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002997 (n + 1))

end

end A142527.P11631368619421145099

namespace A142527

/-- `p?[A159754(n+1)+n+1]%A002997(n+1)` -/
def P11631368619421145099.Spec : Prop :=
  ∀ n, P11631368619421145099.a n = A142527 (n + 1)

end A142527

/-! ## A142527.P5029441601765998898

`∩[A093191(n+1), A296927(n+1)]`
-/

namespace A142527.P5029441601765998898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P5029441601765998898

namespace A142527

/-- `∩[A093191(n+1), A296927(n+1)]` -/
def P5029441601765998898.Spec : Prop :=
  ∀ n, (P5029441601765998898.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P1146750207495803082

`∩[A002145(n+1), A093191(n+1)]`
-/

namespace A142527.P1146750207495803082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P1146750207495803082

namespace A142527

/-- `∩[A002145(n+1), A093191(n+1)]` -/
def P1146750207495803082.Spec : Prop :=
  ∀ n, (P1146750207495803082.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P5051295451454025310

`∩[A045326(n+1), A093191(n+1)]`
-/

namespace A142527.P5051295451454025310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P5051295451454025310

namespace A142527

/-- `∩[A045326(n+1), A093191(n+1)]` -/
def P5051295451454025310.Spec : Prop :=
  ∀ n, (P5051295451454025310.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P12778351517500096062

`∩[A085760(n+1), A093191(n+1)]`
-/

namespace A142527.P12778351517500096062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P12778351517500096062

namespace A142527

/-- `∩[A085760(n+1), A093191(n+1)]` -/
def P12778351517500096062.Spec : Prop :=
  ∀ n, (P12778351517500096062.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P2711605923739091457

`∩[A093191(n+1), A197504(n+1)]`
-/

namespace A142527.P2711605923739091457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P2711605923739091457

namespace A142527

/-- `∩[A093191(n+1), A197504(n+1)]` -/
def P2711605923739091457.Spec : Prop :=
  ∀ n, (P2711605923739091457.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P13420261134340041631

`∩[A093191(n+1), A332555(n+1)]`
-/

namespace A142527.P13420261134340041631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P13420261134340041631

namespace A142527

/-- `∩[A093191(n+1), A332555(n+1)]` -/
def P13420261134340041631.Spec : Prop :=
  ∀ n, (P13420261134340041631.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P13500667329371532599

`∩[A093191(n+1), A292762(n+1)]`
-/

namespace A142527.P13500667329371532599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P13500667329371532599

namespace A142527

/-- `∩[A093191(n+1), A292762(n+1)]` -/
def P13500667329371532599.Spec : Prop :=
  ∀ n, (P13500667329371532599.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P18338427311162376260

`∩[A066499(n+1), A093191(n+1)]`
-/

namespace A142527.P18338427311162376260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P18338427311162376260

namespace A142527

/-- `∩[A066499(n+1), A093191(n+1)]` -/
def P18338427311162376260.Spec : Prop :=
  ∀ n, (P18338427311162376260.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P15043817163617950896

`∩[A093191(n+1), A097987(n+1)]`
-/

namespace A142527.P15043817163617950896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P15043817163617950896

namespace A142527

/-- `∩[A093191(n+1), A097987(n+1)]` -/
def P15043817163617950896.Spec : Prop :=
  ∀ n, (P15043817163617950896.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P2473728090205625458

`∩[A002145(n+1), A127547(n)]`
-/

namespace A142527.P2473728090205625458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P2473728090205625458

namespace A142527

/-- `∩[A002145(n+1), A127547(n)]` -/
def P2473728090205625458.Spec : Prop :=
  ∀ n, (P2473728090205625458.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P6863413579917321616

`∩[A045326(n+1), A127547(n)]`
-/

namespace A142527.P6863413579917321616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P6863413579917321616

namespace A142527

/-- `∩[A045326(n+1), A127547(n)]` -/
def P6863413579917321616.Spec : Prop :=
  ∀ n, (P6863413579917321616.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P14439655161535706581

`∩[A085760(n+1), A127547(n)]`
-/

namespace A142527.P14439655161535706581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P14439655161535706581

namespace A142527

/-- `∩[A085760(n+1), A127547(n)]` -/
def P14439655161535706581.Spec : Prop :=
  ∀ n, (P14439655161535706581.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P17322231155277438416

`∩[A296927(n+1), A127547(n)]`
-/

namespace A142527.P17322231155277438416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P17322231155277438416

namespace A142527

/-- `∩[A296927(n+1), A127547(n)]` -/
def P17322231155277438416.Spec : Prop :=
  ∀ n, (P17322231155277438416.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P17303181988994585505

`∩[A002145(n+1), A153080(n)+2]`
-/

namespace A142527.P17303181988994585505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P17303181988994585505

namespace A142527

/-- `∩[A002145(n+1), A153080(n)+2]` -/
def P17303181988994585505.Spec : Prop :=
  ∀ n, (P17303181988994585505.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P12874920186794547422

`∩[A002145(n+1), A154609(n)-1]`
-/

namespace A142527.P12874920186794547422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P12874920186794547422

namespace A142527

/-- `∩[A002145(n+1), A154609(n)-1]` -/
def P12874920186794547422.Spec : Prop :=
  ∀ n, (P12874920186794547422.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P12136455876273911510

`∩[A045326(n+1), A154609(n)-1]`
-/

namespace A142527.P12136455876273911510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P12136455876273911510

namespace A142527

/-- `∩[A045326(n+1), A154609(n)-1]` -/
def P12136455876273911510.Spec : Prop :=
  ∀ n, (P12136455876273911510.a n : ℤ) = A142527 (n + 1)

end A142527

/-! ## A142527.P6258970927420583715

`∩[A002145(n+1), A186113(n)-2]`
-/

namespace A142527.P6258970927420583715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142527.P6258970927420583715

namespace A142527

/-- `∩[A002145(n+1), A186113(n)-2]` -/
def P6258970927420583715.Spec : Prop :=
  ∀ n, (P6258970927420583715.a n : ℤ) = A142527 (n + 1)

end A142527

/-!
# A142528: Primes congruent to 45 mod 52.

The programs for A142528, the canonical program `A142528.P8263013899178342337` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142528 has offset 1).

The definition of A142528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142528.P8263013899178342337

`p?[52*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142528

/-- `p?[52*n-7]` -/
def P8263013899178342337.Spec : Prop :=
  ∀ n, P8263013899178342337.a n = A142528 (n + 1)

theorem P8263013899178342337.correct : P8263013899178342337.Spec := by
  intro n
  simp only [A142528, Nat.add_sub_cancel]

end A142528

/-! ## A142528.P3113832633540855854

`∩[A008846(n+1), A093350(n+1)]`
-/

namespace A142528.P3113832633540855854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P3113832633540855854

namespace A142528

/-- `∩[A008846(n+1), A093350(n+1)]` -/
def P3113832633540855854.Spec : Prop :=
  ∀ n, (P3113832633540855854.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P17473271614743168799

`or(1, p?[A304840(n+1)-5])`
-/

namespace A142528.P17473271614743168799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142528.P17473271614743168799

namespace A142528

/-- `or(1, p?[A304840(n+1)-5])` -/
def P17473271614743168799.Spec : Prop :=
  ∀ n, P17473271614743168799.a n = A142528 (n + 1)

end A142528

/-! ## A142528.P9006963713112409952

`∩[A093350(n+1), A191218(n+1)]`
-/

namespace A142528.P9006963713112409952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P9006963713112409952

namespace A142528

/-- `∩[A093350(n+1), A191218(n+1)]` -/
def P9006963713112409952.Spec : Prop :=
  ∀ n, (P9006963713112409952.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P13150854660158657169

`A000027(p?[A258016(n+1)+A016885(n)-2])`
-/

namespace A142528.P13150854660158657169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) + A016885 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142528.P13150854660158657169

namespace A142528

/-- `A000027(p?[A258016(n+1)+A016885(n)-2])` -/
def P13150854660158657169.Spec : Prop :=
  ∀ n, P13150854660158657169.a n = A142528 (n + 1)

end A142528

/-! ## A142528.P5640363727779625027

`∩[A002144(n+1), A093350(n+1)]`
-/

namespace A142528.P5640363727779625027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P5640363727779625027

namespace A142528

/-- `∩[A002144(n+1), A093350(n+1)]` -/
def P5640363727779625027.Spec : Prop :=
  ∀ n, (P5640363727779625027.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P6221332110277905684

`∩[A002313(n+1), A093350(n+1)]`
-/

namespace A142528.P6221332110277905684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P6221332110277905684

namespace A142528

/-- `∩[A002313(n+1), A093350(n+1)]` -/
def P6221332110277905684.Spec : Prop :=
  ∀ n, (P6221332110277905684.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P6624143990023500496

`∩[A093350(n+1), A280084(n+1)]`
-/

namespace A142528.P6624143990023500496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P6624143990023500496

namespace A142528

/-- `∩[A093350(n+1), A280084(n+1)]` -/
def P6624143990023500496.Spec : Prop :=
  ∀ n, (P6624143990023500496.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P6062745289406510384

`∩[A093350(n+1), A296927(n+1)]`
-/

namespace A142528.P6062745289406510384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P6062745289406510384

namespace A142528

/-- `∩[A093350(n+1), A296927(n+1)]` -/
def P6062745289406510384.Spec : Prop :=
  ∀ n, (P6062745289406510384.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P8916888954022785167

`∩[A055025(n+1), A093350(n+1)]`
-/

namespace A142528.P8916888954022785167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P8916888954022785167

namespace A142528

/-- `∩[A055025(n+1), A093350(n+1)]` -/
def P8916888954022785167.Spec : Prop :=
  ∀ n, (P8916888954022785167.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P3960308429676126878

`∩[A093350(n+1), A120960(n+1)]`
-/

namespace A142528.P3960308429676126878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P3960308429676126878

namespace A142528

/-- `∩[A093350(n+1), A120960(n+1)]` -/
def P3960308429676126878.Spec : Prop :=
  ∀ n, (P3960308429676126878.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P15884132275340897912

`∩[A085759(n+1), A093350(n+1)]`
-/

namespace A142528.P15884132275340897912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P15884132275340897912

namespace A142528

/-- `∩[A085759(n+1), A093350(n+1)]` -/
def P15884132275340897912.Spec : Prop :=
  ∀ n, (P15884132275340897912.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P16584600898192032082

`∩[A093350(n+1), A351535(n+1)]`
-/

namespace A142528.P16584600898192032082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P16584600898192032082

namespace A142528

/-- `∩[A093350(n+1), A351535(n+1)]` -/
def P16584600898192032082.Spec : Prop :=
  ∀ n, (P16584600898192032082.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P9960686783074865493

`∩[A093350(n+1), A125018(n+1)]`
-/

namespace A142528.P9960686783074865493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P9960686783074865493

namespace A142528

/-- `∩[A093350(n+1), A125018(n+1)]` -/
def P9960686783074865493.Spec : Prop :=
  ∀ n, (P9960686783074865493.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P2557947650532074627

`∩[A093350(n+1), A230779(n+1)]`
-/

namespace A142528.P2557947650532074627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P2557947650532074627

namespace A142528

/-- `∩[A093350(n+1), A230779(n+1)]` -/
def P2557947650532074627.Spec : Prop :=
  ∀ n, (P2557947650532074627.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P3082533237528707881

`∩[A093350(n+1), A347877(n+1)]`
-/

namespace A142528.P3082533237528707881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P3082533237528707881

namespace A142528

/-- `∩[A093350(n+1), A347877(n+1)]` -/
def P3082533237528707881.Spec : Prop :=
  ∀ n, (P3082533237528707881.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P10502644210880892103

`∩[A093350(n+1), A281292(n+1)]`
-/

namespace A142528.P10502644210880892103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P10502644210880892103

namespace A142528

/-- `∩[A093350(n+1), A281292(n+1)]` -/
def P10502644210880892103.Spec : Prop :=
  ∀ n, (P10502644210880892103.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P7774311592344449214

`∩[A093350(n+1), A224450(n+1)]`
-/

namespace A142528.P7774311592344449214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P7774311592344449214

namespace A142528

/-- `∩[A093350(n+1), A224450(n+1)]` -/
def P7774311592344449214.Spec : Prop :=
  ∀ n, (P7774311592344449214.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P16437235905740509581

`∩[A002144(n+1), A186113(n)]`
-/

namespace A142528.P16437235905740509581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P16437235905740509581

namespace A142528

/-- `∩[A002144(n+1), A186113(n)]` -/
def P16437235905740509581.Spec : Prop :=
  ∀ n, (P16437235905740509581.a n : ℤ) = A142528 (n + 1)

end A142528

/-! ## A142528.P9424345888922401023

`∩[A002313(n+1), A186113(n)]`
-/

namespace A142528.P9424345888922401023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142528.P9424345888922401023

namespace A142528

/-- `∩[A002313(n+1), A186113(n)]` -/
def P9424345888922401023.Spec : Prop :=
  ∀ n, (P9424345888922401023.a n : ℤ) = A142528 (n + 1)

end A142528

/-!
# A142529: Primes congruent to 47 mod 52.

The programs for A142529, the canonical program `A142529.P6649407907332709917` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142529 has offset 1).

The definition of A142529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142529.P6649407907332709917

`p?[52*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142529

/-- `p?[52*n-5]` -/
def P6649407907332709917.Spec : Prop :=
  ∀ n, P6649407907332709917.a n = A142529 (n + 1)

theorem P6649407907332709917.correct : P6649407907332709917.Spec := by
  intro n
  simp only [A142529, Nat.add_sub_cancel]

end A142529

/-! ## A142529.P10971430774883014354

`∩[A092178(n+1), A106906(n+1)]`
-/

namespace A142529.P10971430774883014354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P10971430774883014354

namespace A142529

/-- `∩[A092178(n+1), A106906(n+1)]` -/
def P10971430774883014354.Spec : Prop :=
  ∀ n, (P10971430774883014354.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P10202515251626178494

`∩[A092178(n+1), A296928(n+1)]`
-/

namespace A142529.P10202515251626178494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P10202515251626178494

namespace A142529

/-- `∩[A092178(n+1), A296928(n+1)]` -/
def P10202515251626178494.Spec : Prop :=
  ∀ n, (P10202515251626178494.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P4055174895220332156

`∩[A092178(n+1), A296926(n+1)]`
-/

namespace A142529.P4055174895220332156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P4055174895220332156

namespace A142529

/-- `∩[A092178(n+1), A296926(n+1)]` -/
def P4055174895220332156.Spec : Prop :=
  ∀ n, (P4055174895220332156.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P11339100272130208947

`∩[A002145(n+1), A092178(n+1)]`
-/

namespace A142529.P11339100272130208947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P11339100272130208947

namespace A142529

/-- `∩[A002145(n+1), A092178(n+1)]` -/
def P11339100272130208947.Spec : Prop :=
  ∀ n, (P11339100272130208947.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P1688082259875851730

`∩[A045326(n+1), A092178(n+1)]`
-/

namespace A142529.P1688082259875851730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P1688082259875851730

namespace A142529

/-- `∩[A045326(n+1), A092178(n+1)]` -/
def P1688082259875851730.Spec : Prop :=
  ∀ n, (P1688082259875851730.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P840460636986997374

`∩[A085760(n+1), A092178(n+1)]`
-/

namespace A142529.P840460636986997374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P840460636986997374

namespace A142529

/-- `∩[A085760(n+1), A092178(n+1)]` -/
def P840460636986997374.Spec : Prop :=
  ∀ n, (P840460636986997374.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P18393291439213050994

`∩[A092178(n+1), A197504(n+1)]`
-/

namespace A142529.P18393291439213050994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P18393291439213050994

namespace A142529

/-- `∩[A092178(n+1), A197504(n+1)]` -/
def P18393291439213050994.Spec : Prop :=
  ∀ n, (P18393291439213050994.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P5095244147334428195

`∩[A092178(n+1), A332555(n+1)]`
-/

namespace A142529.P5095244147334428195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P5095244147334428195

namespace A142529

/-- `∩[A092178(n+1), A332555(n+1)]` -/
def P5095244147334428195.Spec : Prop :=
  ∀ n, (P5095244147334428195.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P17456214483907567255

`∩[A092178(n+1), A292762(n+1)]`
-/

namespace A142529.P17456214483907567255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P17456214483907567255

namespace A142529

/-- `∩[A092178(n+1), A292762(n+1)]` -/
def P17456214483907567255.Spec : Prop :=
  ∀ n, (P17456214483907567255.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P4573453433500102115

`∩[A066499(n+1), A092178(n+1)]`
-/

namespace A142529.P4573453433500102115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P4573453433500102115

namespace A142529

/-- `∩[A066499(n+1), A092178(n+1)]` -/
def P4573453433500102115.Spec : Prop :=
  ∀ n, (P4573453433500102115.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P14126750502195821241

`∩[A092178(n+1), A097987(n+1)]`
-/

namespace A142529.P14126750502195821241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P14126750502195821241

namespace A142529

/-- `∩[A092178(n+1), A097987(n+1)]` -/
def P14126750502195821241.Spec : Prop :=
  ∀ n, (P14126750502195821241.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P7025175680185799060

`∩[A002145(n+1), A269044(n)+1]`
-/

namespace A142529.P7025175680185799060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P7025175680185799060

namespace A142529

/-- `∩[A002145(n+1), A269044(n)+1]` -/
def P7025175680185799060.Spec : Prop :=
  ∀ n, (P7025175680185799060.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P1268030085718134054

`∩[A002145(n+1), A306285(n+1)]`
-/

namespace A142529.P1268030085718134054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P1268030085718134054

namespace A142529

/-- `∩[A002145(n+1), A306285(n+1)]` -/
def P1268030085718134054.Spec : Prop :=
  ∀ n, (P1268030085718134054.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P7555185658297888836

`∩[A045326(n+1), A269044(n)+1]`
-/

namespace A142529.P7555185658297888836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P7555185658297888836

namespace A142529

/-- `∩[A045326(n+1), A269044(n)+1]` -/
def P7555185658297888836.Spec : Prop :=
  ∀ n, (P7555185658297888836.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P9509710532152252667

`∩[A045326(n+1), A306285(n+1)]`
-/

namespace A142529.P9509710532152252667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P9509710532152252667

namespace A142529

/-- `∩[A045326(n+1), A306285(n+1)]` -/
def P9509710532152252667.Spec : Prop :=
  ∀ n, (P9509710532152252667.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P2143509104890304674

`∩[A106906(n+1), A269044(n)+1]`
-/

namespace A142529.P2143509104890304674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P2143509104890304674

namespace A142529

/-- `∩[A106906(n+1), A269044(n)+1]` -/
def P2143509104890304674.Spec : Prop :=
  ∀ n, (P2143509104890304674.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P3363367471231185636

`∩[A106906(n+1), A306285(n+1)]`
-/

namespace A142529.P3363367471231185636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P3363367471231185636

namespace A142529

/-- `∩[A106906(n+1), A306285(n+1)]` -/
def P3363367471231185636.Spec : Prop :=
  ∀ n, (P3363367471231185636.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P2531655490460454267

`∩[A296926(n+1), A269044(n)+1]`
-/

namespace A142529.P2531655490460454267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P2531655490460454267

namespace A142529

/-- `∩[A296926(n+1), A269044(n)+1]` -/
def P2531655490460454267.Spec : Prop :=
  ∀ n, (P2531655490460454267.a n : ℤ) = A142529 (n + 1)

end A142529

/-! ## A142529.P3654669930783312536

`∩[A296928(n+1), A269044(n)+1]`
-/

namespace A142529.P3654669930783312536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142529.P3654669930783312536

namespace A142529

/-- `∩[A296928(n+1), A269044(n)+1]` -/
def P3654669930783312536.Spec : Prop :=
  ∀ n, (P3654669930783312536.a n : ℤ) = A142529 (n + 1)

end A142529

/-!
# A142530: Primes congruent to 49 mod 52.

The programs for A142530, the canonical program `A142530.P11059090855863787082` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142530 has offset 1).

The definition of A142530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142530.P11059090855863787082

`p?[52*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142530

/-- `p?[52*n-3]` -/
def P11059090855863787082.Spec : Prop :=
  ∀ n, P11059090855863787082.a n = A142530 (n + 1)

theorem P11059090855863787082.correct : P11059090855863787082.Spec := by
  intro n
  simp only [A142530, Nat.add_sub_cancel]

end A142530

/-! ## A142530.P17434800197022672207

`∩[A008846(n+1), A140375(n+1)]`
-/

namespace A142530.P17434800197022672207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P17434800197022672207

namespace A142530

/-- `∩[A008846(n+1), A140375(n+1)]` -/
def P17434800197022672207.Spec : Prop :=
  ∀ n, (P17434800197022672207.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P3475819292162819404

`or(1, p?[A304840(n+1)-1])`
-/

namespace A142530.P3475819292162819404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142530.P3475819292162819404

namespace A142530

/-- `or(1, p?[A304840(n+1)-1])` -/
def P3475819292162819404.Spec : Prop :=
  ∀ n, P3475819292162819404.a n = A142530 (n + 1)

end A142530

/-! ## A142530.P12643055551010444958

`A000027(p?[A304840(n+1)-1])`
-/

namespace A142530.P12643055551010444958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142530.P12643055551010444958

namespace A142530

/-- `A000027(p?[A304840(n+1)-1])` -/
def P12643055551010444958.Spec : Prop :=
  ∀ n, P12643055551010444958.a n = A142530 (n + 1)

end A142530

/-! ## A142530.P3664065043920285490

`∩[A033210(n+1), A140375(n+1)]`
-/

namespace A142530.P3664065043920285490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P3664065043920285490

namespace A142530

/-- `∩[A033210(n+1), A140375(n+1)]` -/
def P3664065043920285490.Spec : Prop :=
  ∀ n, (P3664065043920285490.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P15132706262711862962

`∩[A140375(n+1), A191218(n+1)]`
-/

namespace A142530.P15132706262711862962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P15132706262711862962

namespace A142530

/-- `∩[A140375(n+1), A191218(n+1)]` -/
def P15132706262711862962.Spec : Prop :=
  ∀ n, (P15132706262711862962.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P7475031171390257990

`A000027(p?[A258016(n+1)+A016885(n)+2])`
-/

namespace A142530.P7475031171390257990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) + A016885 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142530.P7475031171390257990

namespace A142530

/-- `A000027(p?[A258016(n+1)+A016885(n)+2])` -/
def P7475031171390257990.Spec : Prop :=
  ∀ n, P7475031171390257990.a n = A142530 (n + 1)

end A142530

/-! ## A142530.P8078570852509578282

`∩[A140375(n+1), A296928(n+1)]`
-/

namespace A142530.P8078570852509578282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P8078570852509578282

namespace A142530

/-- `∩[A140375(n+1), A296928(n+1)]` -/
def P8078570852509578282.Spec : Prop :=
  ∀ n, (P8078570852509578282.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P3997125771359876014

`∩[A002144(n+1), A140375(n+1)]`
-/

namespace A142530.P3997125771359876014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P3997125771359876014

namespace A142530

/-- `∩[A002144(n+1), A140375(n+1)]` -/
def P3997125771359876014.Spec : Prop :=
  ∀ n, (P3997125771359876014.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P1834549747385382769

`∩[A002313(n+1), A140375(n+1)]`
-/

namespace A142530.P1834549747385382769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P1834549747385382769

namespace A142530

/-- `∩[A002313(n+1), A140375(n+1)]` -/
def P1834549747385382769.Spec : Prop :=
  ∀ n, (P1834549747385382769.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P16313920392662593291

`∩[A140375(n+1), A280084(n+1)]`
-/

namespace A142530.P16313920392662593291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P16313920392662593291

namespace A142530

/-- `∩[A140375(n+1), A280084(n+1)]` -/
def P16313920392662593291.Spec : Prop :=
  ∀ n, (P16313920392662593291.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P12894271793603606566

`∩[A140375(n+1), A296926(n+1)]`
-/

namespace A142530.P12894271793603606566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P12894271793603606566

namespace A142530

/-- `∩[A140375(n+1), A296926(n+1)]` -/
def P12894271793603606566.Spec : Prop :=
  ∀ n, (P12894271793603606566.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P3378878988672665337

`∩[A055025(n+1), A140375(n+1)]`
-/

namespace A142530.P3378878988672665337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P3378878988672665337

namespace A142530

/-- `∩[A055025(n+1), A140375(n+1)]` -/
def P3378878988672665337.Spec : Prop :=
  ∀ n, (P3378878988672665337.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P13065113165300388921

`∩[A120960(n+1), A140375(n+1)]`
-/

namespace A142530.P13065113165300388921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P13065113165300388921

namespace A142530

/-- `∩[A120960(n+1), A140375(n+1)]` -/
def P13065113165300388921.Spec : Prop :=
  ∀ n, (P13065113165300388921.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P3729569698384966062

`∩[A085759(n+1), A140375(n+1)]`
-/

namespace A142530.P3729569698384966062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P3729569698384966062

namespace A142530

/-- `∩[A085759(n+1), A140375(n+1)]` -/
def P3729569698384966062.Spec : Prop :=
  ∀ n, (P3729569698384966062.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P3088348698209658344

`∩[A140375(n+1), A351535(n+1)]`
-/

namespace A142530.P3088348698209658344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P3088348698209658344

namespace A142530

/-- `∩[A140375(n+1), A351535(n+1)]` -/
def P3088348698209658344.Spec : Prop :=
  ∀ n, (P3088348698209658344.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P13996290150753618290

`∩[A125018(n+1), A140375(n+1)]`
-/

namespace A142530.P13996290150753618290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P13996290150753618290

namespace A142530

/-- `∩[A125018(n+1), A140375(n+1)]` -/
def P13996290150753618290.Spec : Prop :=
  ∀ n, (P13996290150753618290.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P9752495815663771029

`∩[A140375(n+1), A230779(n+1)]`
-/

namespace A142530.P9752495815663771029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P9752495815663771029

namespace A142530

/-- `∩[A140375(n+1), A230779(n+1)]` -/
def P9752495815663771029.Spec : Prop :=
  ∀ n, (P9752495815663771029.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P8086395379547204185

`∩[A140375(n+1), A281292(n+1)]`
-/

namespace A142530.P8086395379547204185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P8086395379547204185

namespace A142530

/-- `∩[A140375(n+1), A281292(n+1)]` -/
def P8086395379547204185.Spec : Prop :=
  ∀ n, (P8086395379547204185.a n : ℤ) = A142530 (n + 1)

end A142530

/-! ## A142530.P6535055312894592877

`∩[A140375(n+1), A224450(n+1)]`
-/

namespace A142530.P6535055312894592877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142530.P6535055312894592877

namespace A142530

/-- `∩[A140375(n+1), A224450(n+1)]` -/
def P6535055312894592877.Spec : Prop :=
  ∀ n, (P6535055312894592877.a n : ℤ) = A142530 (n + 1)

end A142530

/-!
# A142531: Primes congruent to 51 mod 52.

The programs for A142531, the canonical program `A142531.P10237233937896600726` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142531 has offset 1).

The definition of A142531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142531.P10237233937896600726

`p?[52*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142531

/-- `p?[52*n-1]` -/
def P10237233937896600726.Spec : Prop :=
  ∀ n, P10237233937896600726.a n = A142531 (n + 1)

theorem P10237233937896600726.correct : P10237233937896600726.Spec := by
  intro n
  simp only [A142531, Nat.add_sub_cancel]

end A142531

/-! ## A142531.P8368417292584060057

`or(1, p?[51*(n+1)+n])`
-/

namespace A142531.P8368417292584060057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142531.P8368417292584060057

namespace A142531

/-- `or(1, p?[51*(n+1)+n])` -/
def P8368417292584060057.Spec : Prop :=
  ∀ n, (P8368417292584060057.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P11072365344046498691

`∑{p}[p?[51*(n+1)+n], #]`
-/

namespace A142531.P11072365344046498691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142531.P11072365344046498691

namespace A142531

/-- `∑{p}[p?[51*(n+1)+n], #]` -/
def P11072365344046498691.Spec : Prop :=
  ∀ n, (P11072365344046498691.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P12282117772426101071

`∏{p}[p?[51*(n+1)+n], #]`
-/

namespace A142531.P12282117772426101071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142531.P12282117772426101071

namespace A142531

/-- `∏{p}[p?[51*(n+1)+n], #]` -/
def P12282117772426101071.Spec : Prop :=
  ∀ n, (P12282117772426101071.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P11628342061623678884

`∩[A141859(n+1), A296927(n+1)]`
-/

namespace A142531.P11628342061623678884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P11628342061623678884

namespace A142531

/-- `∩[A141859(n+1), A296927(n+1)]` -/
def P11628342061623678884.Spec : Prop :=
  ∀ n, (P11628342061623678884.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P17990209910569408541

`∩[A002145(n+1), A141859(n+1)]`
-/

namespace A142531.P17990209910569408541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P17990209910569408541

namespace A142531

/-- `∩[A002145(n+1), A141859(n+1)]` -/
def P17990209910569408541.Spec : Prop :=
  ∀ n, (P17990209910569408541.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P11151259154673694522

`∩[A045326(n+1), A141859(n+1)]`
-/

namespace A142531.P11151259154673694522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P11151259154673694522

namespace A142531

/-- `∩[A045326(n+1), A141859(n+1)]` -/
def P11151259154673694522.Spec : Prop :=
  ∀ n, (P11151259154673694522.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P5292742556960469771

`∩[A085760(n+1), A141859(n+1)]`
-/

namespace A142531.P5292742556960469771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P5292742556960469771

namespace A142531

/-- `∩[A085760(n+1), A141859(n+1)]` -/
def P5292742556960469771.Spec : Prop :=
  ∀ n, (P5292742556960469771.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P10292904881009413367

`∩[A141859(n+1), A197504(n+1)]`
-/

namespace A142531.P10292904881009413367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P10292904881009413367

namespace A142531

/-- `∩[A141859(n+1), A197504(n+1)]` -/
def P10292904881009413367.Spec : Prop :=
  ∀ n, (P10292904881009413367.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P16207509211394788935

`∩[A141859(n+1), A332555(n+1)]`
-/

namespace A142531.P16207509211394788935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P16207509211394788935

namespace A142531

/-- `∩[A141859(n+1), A332555(n+1)]` -/
def P16207509211394788935.Spec : Prop :=
  ∀ n, (P16207509211394788935.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P15438633005909679723

`∩[A141859(n+1), A292762(n+1)]`
-/

namespace A142531.P15438633005909679723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P15438633005909679723

namespace A142531

/-- `∩[A141859(n+1), A292762(n+1)]` -/
def P15438633005909679723.Spec : Prop :=
  ∀ n, (P15438633005909679723.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P10108856743192173779

`∩[A066499(n+1), A141859(n+1)]`
-/

namespace A142531.P10108856743192173779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P10108856743192173779

namespace A142531

/-- `∩[A066499(n+1), A141859(n+1)]` -/
def P10108856743192173779.Spec : Prop :=
  ∀ n, (P10108856743192173779.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P3310427379508240994

`∩[A097987(n+1), A141859(n+1)]`
-/

namespace A142531.P3310427379508240994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P3310427379508240994

namespace A142531

/-- `∩[A097987(n+1), A141859(n+1)]` -/
def P3310427379508240994.Spec : Prop :=
  ∀ n, (P3310427379508240994.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P17990990629099013514

`∩[A002145(n+1), A269100(n)+1]`
-/

namespace A142531.P17990990629099013514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P17990990629099013514

namespace A142531

/-- `∩[A002145(n+1), A269100(n)+1]` -/
def P17990990629099013514.Spec : Prop :=
  ∀ n, (P17990990629099013514.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P8917624511904014318

`∩[A045326(n+1), A269100(n)+1]`
-/

namespace A142531.P8917624511904014318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P8917624511904014318

namespace A142531

/-- `∩[A045326(n+1), A269100(n)+1]` -/
def P8917624511904014318.Spec : Prop :=
  ∀ n, (P8917624511904014318.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P1269711664851486803

`∩[A296927(n+1), A269100(n)+1]`
-/

namespace A142531.P1269711664851486803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P1269711664851486803

namespace A142531

/-- `∩[A296927(n+1), A269100(n)+1]` -/
def P1269711664851486803.Spec : Prop :=
  ∀ n, (P1269711664851486803.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P10312238651557320424

`∩[A002145(n+1), A190991(n)-2]`
-/

namespace A142531.P10312238651557320424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P10312238651557320424

namespace A142531

/-- `∩[A002145(n+1), A190991(n)-2]` -/
def P10312238651557320424.Spec : Prop :=
  ∀ n, (P10312238651557320424.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P18044459630720541178

`∩[A045326(n+1), A190991(n)-2]`
-/

namespace A142531.P18044459630720541178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P18044459630720541178

namespace A142531

/-- `∩[A045326(n+1), A190991(n)-2]` -/
def P18044459630720541178.Spec : Prop :=
  ∀ n, (P18044459630720541178.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P10483079785691362808

`∩[A296927(n+1), A190991(n)-2]`
-/

namespace A142531.P10483079785691362808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P10483079785691362808

namespace A142531

/-- `∩[A296927(n+1), A190991(n)-2]` -/
def P10483079785691362808.Spec : Prop :=
  ∀ n, (P10483079785691362808.a n : ℤ) = A142531 (n + 1)

end A142531

/-! ## A142531.P16568760220817362720

`∩[A094179(n+1), A141859(n+1)]`
-/

namespace A142531.P16568760220817362720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142531.P16568760220817362720

namespace A142531

/-- `∩[A094179(n+1), A141859(n+1)]` -/
def P16568760220817362720.Spec : Prop :=
  ∀ n, (P16568760220817362720.a n : ℤ) = A142531 (n + 1)

end A142531

/-!
# A142532: Primes congruent to 2 mod 53.

The programs for A142532, the canonical program `A142532.P13946379631833110420` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142532 has offset 1).

The definition of A142532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142532.P13946379631833110420

`p?[53*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142532

/-- `p?[53*n+2]` -/
def P13946379631833110420.Spec : Prop :=
  ∀ n, (P13946379631833110420.a n : ℤ) = A142532 (n + 1)

theorem P13946379631833110420.correct : P13946379631833110420.Spec := by
  intro n
  simp only [A142532, Nat.add_sub_cancel]

end A142532

/-! ## A142532.P341097723868604079

`p?[A248572(n)+A103214(n)]%A157111(n+1)`
-/

namespace A142532.P341097723868604079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157111 (n + 1))

end

end A142532.P341097723868604079

namespace A142532

/-- `p?[A248572(n)+A103214(n)]%A157111(n+1)` -/
def P341097723868604079.Spec : Prop :=
  ∀ n, P341097723868604079.a n = A142532 (n + 1)

end A142532

/-! ## A142532.P1292169454606224243

`p?[A215148(n)+A128470(n)]+A194688(n+1)%2`
-/

namespace A142532.P1292169454606224243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A194688 (n + 1)) 2

end

end A142532.P1292169454606224243

namespace A142532

/-- `p?[A215148(n)+A128470(n)]+A194688(n+1)%2` -/
def P1292169454606224243.Spec : Prop :=
  ∀ n, P1292169454606224243.a n = A142532 (n + 1)

end A142532

/-! ## A142532.P6714807560215049558

`A000027(p?[A215148(n)+A128470(n)])`
-/

namespace A142532.P6714807560215049558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142532.P6714807560215049558

namespace A142532

/-- `A000027(p?[A215148(n)+A128470(n)])` -/
def P6714807560215049558.Spec : Prop :=
  ∀ n, P6714807560215049558.a n = A142532 (n + 1)

end A142532

/-! ## A142532.P5354737325770213593

`A000027(p?[A248572(n)+A103214(n)])`
-/

namespace A142532.P5354737325770213593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142532.P5354737325770213593

namespace A142532

/-- `A000027(p?[A248572(n)+A103214(n)])` -/
def P5354737325770213593.Spec : Prop :=
  ∀ n, P5354737325770213593.a n = A142532 (n + 1)

end A142532

/-! ## A142532.P4529017198568672447

`A008472(p?[A215148(n)+A128470(n)])`
-/

namespace A142532.P4529017198568672447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142532.P4529017198568672447

namespace A142532

/-- `A008472(p?[A215148(n)+A128470(n)])` -/
def P4529017198568672447.Spec : Prop :=
  ∀ n, P4529017198568672447.a n = A142532 (n + 1)

end A142532

/-! ## A142532.P8828781379849360569

`A001414(p?[A248572(n)+A103214(n)])`
-/

namespace A142532.P8828781379849360569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142532.P8828781379849360569

namespace A142532

/-- `A001414(p?[A248572(n)+A103214(n)])` -/
def P8828781379849360569.Spec : Prop :=
  ∀ n, P8828781379849360569.a n = A142532 (n + 1)

end A142532

/-! ## A142532.P8715011868101938510

`A008472(p?[A248572(n)+A103214(n)])`
-/

namespace A142532.P8715011868101938510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142532.P8715011868101938510

namespace A142532

/-- `A008472(p?[A248572(n)+A103214(n)])` -/
def P8715011868101938510.Spec : Prop :=
  ∀ n, P8715011868101938510.a n = A142532 (n + 1)

end A142532

/-!
# A142533: Primes congruent to 3 mod 53.

The programs for A142533, the canonical program `A142533.P16568516609180451398` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142533 has offset 1).

The definition of A142533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142533.P16568516609180451398

`p?[53*n+3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142533

/-- `p?[53*n+3]` -/
def P16568516609180451398.Spec : Prop :=
  ∀ n, (P16568516609180451398.a n : ℤ) = A142533 (n + 1)

theorem P16568516609180451398.correct : P16568516609180451398.Spec := by
  intro n
  simp only [A142533, Nat.add_sub_cancel]

end A142533

/-! ## A142533.P12264644232614764897

`or(1, p?[3-(n-54*n)])`
-/

namespace A142533.P12264644232614764897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n : ℤ) - (54 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142533.P12264644232614764897

namespace A142533

/-- `or(1, p?[3-(n-54*n)])` -/
def P12264644232614764897.Spec : Prop :=
  ∀ n, P12264644232614764897.a n = A142533 (n + 1)

end A142533

/-! ## A142533.P13818696509544076021

`∏{d}[p?[3-(n-54*n)], #]`
-/

namespace A142533.P13818696509544076021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n : ℤ) - (54 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142533.P13818696509544076021

namespace A142533

/-- `∏{d}[p?[3-(n-54*n)], #]` -/
def P13818696509544076021.Spec : Prop :=
  ∀ n, (P13818696509544076021.a n : ℤ) = A142533 (n + 1)

end A142533

/-! ## A142533.P13122533042598714485

`A000038(n+1)+p?[A139611(n)-A005843(n+4)]`
-/

namespace A142533.P13122533042598714485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005843 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142533.P13122533042598714485

namespace A142533

/-- `A000038(n+1)+p?[A139611(n)-A005843(n+4)]` -/
def P13122533042598714485.Spec : Prop :=
  ∀ n, P13122533042598714485.a n = A142533 (n + 1)

end A142533

/-! ## A142533.P3499108130695636842

`p?[A139611(n)-A005843(n+4)]%A019550(n+1)²`
-/

namespace A142533.P3499108130695636842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005843 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A019550 (n + 1) ^ 2)

end

end A142533.P3499108130695636842

namespace A142533

/-- `p?[A139611(n)-A005843(n+4)]%A019550(n+1)²` -/
def P3499108130695636842.Spec : Prop :=
  ∀ n, P3499108130695636842.a n = A142533 (n + 1)

end A142533

/-! ## A142533.P13905753653718477138

`record[A020639(53*n+3)]`
-/

namespace A142533.P13905753653718477138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142533.P13905753653718477138

namespace A142533

/-- `record[A020639(53*n+3)]` -/
def P13905753653718477138.Spec : Prop :=
  ∀ n, P13905753653718477138.a n = A142533 (n + 1)

end A142533

/-! ## A142533.P11651216485400886695

`record[A000040(A289508(53*n+3))]`
-/

namespace A142533.P11651216485400886695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A289508 (53 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142533.P11651216485400886695

namespace A142533

/-- `record[A000040(A289508(53*n+3))]` -/
def P11651216485400886695.Spec : Prop :=
  ∀ n, P11651216485400886695.a n = A142533 (n + 1)

end A142533

/-! ## A142533.P11482729855815989008

`record[A090368(A005843(n+1)+51*n)]`
-/

namespace A142533.P11482729855815989008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A005843 (n + 1) + (51 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142533.P11482729855815989008

namespace A142533

/-- `record[A090368(A005843(n+1)+51*n)]` -/
def P11482729855815989008.Spec : Prop :=
  ∀ n, P11482729855815989008.a n = A142533 (n + 1)

end A142533

/-!
# A142534: Primes congruent to 4 mod 53.

The programs for A142534, the canonical program `A142534.P10082379553316276253` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142534 has offset 1).

The definition of A142534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142534.P10082379553316276253

`p?[53*n+4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142534

/-- `p?[53*n+4]` -/
def P10082379553316276253.Spec : Prop :=
  ∀ n, (P10082379553316276253.a n : ℤ) = A142534 (n + 1)

theorem P10082379553316276253.correct : P10082379553316276253.Spec := by
  intro n
  simp only [A142534, Nat.add_sub_cancel]

end A142534

/-! ## A142534.P5804320236724660077

`or(1, p?[A139611(n)-A020742(n)])`
-/

namespace A142534.P5804320236724660077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142534.P5804320236724660077

namespace A142534

/-- `or(1, p?[A139611(n)-A020742(n)])` -/
def P5804320236724660077.Spec : Prop :=
  ∀ n, P5804320236724660077.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P8792612440830091265

`or(1, p?[A215148(n)+A139222(n+1)])`
-/

namespace A142534.P8792612440830091265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142534.P8792612440830091265

namespace A142534

/-- `or(1, p?[A215148(n)+A139222(n+1)])` -/
def P8792612440830091265.Spec : Prop :=
  ∀ n, P8792612440830091265.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P7727802256796521612

`A000007(n+1)+p?[A139611(n)-A020742(n)]`
-/

namespace A142534.P7727802256796521612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142534.P7727802256796521612

namespace A142534

/-- `A000007(n+1)+p?[A139611(n)-A020742(n)]` -/
def P7727802256796521612.Spec : Prop :=
  ∀ n, P7727802256796521612.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P8001649004378749150

`A000027(p?[A139611(n)-A020742(n)])`
-/

namespace A142534.P8001649004378749150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P8001649004378749150

namespace A142534

/-- `A000027(p?[A139611(n)-A020742(n)])` -/
def P8001649004378749150.Spec : Prop :=
  ∀ n, P8001649004378749150.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P526360114570774642

`A000027(p?[A215148(n)+A139222(n+1)])`
-/

namespace A142534.P526360114570774642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P526360114570774642

namespace A142534

/-- `A000027(p?[A215148(n)+A139222(n+1)])` -/
def P526360114570774642.Spec : Prop :=
  ∀ n, P526360114570774642.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P15486041055293765760

`A000265(p?[A139611(n)-A020742(n)])`
-/

namespace A142534.P15486041055293765760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P15486041055293765760

namespace A142534

/-- `A000265(p?[A139611(n)-A020742(n)])` -/
def P15486041055293765760.Spec : Prop :=
  ∀ n, P15486041055293765760.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P11887314979266053045

`A001414(p?[A139611(n)-A020742(n)])`
-/

namespace A142534.P11887314979266053045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P11887314979266053045

namespace A142534

/-- `A001414(p?[A139611(n)-A020742(n)])` -/
def P11887314979266053045.Spec : Prop :=
  ∀ n, P11887314979266053045.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P1908947562836067427

`A008472(p?[A139611(n)-A020742(n)])`
-/

namespace A142534.P1908947562836067427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P1908947562836067427

namespace A142534

/-- `A008472(p?[A139611(n)-A020742(n)])` -/
def P1908947562836067427.Spec : Prop :=
  ∀ n, P1908947562836067427.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P16506044810360544032

`A007947(p?[A215148(n)+A139222(n+1)])`
-/

namespace A142534.P16506044810360544032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P16506044810360544032

namespace A142534

/-- `A007947(p?[A215148(n)+A139222(n+1)])` -/
def P16506044810360544032.Spec : Prop :=
  ∀ n, P16506044810360544032.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P7489636839705257092

`A052410(p?[A215148(n)+A139222(n+1)])`
-/

namespace A142534.P7489636839705257092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P7489636839705257092

namespace A142534

/-- `A052410(p?[A215148(n)+A139222(n+1)])` -/
def P7489636839705257092.Spec : Prop :=
  ∀ n, P7489636839705257092.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P15746197346441051698

`A151800(p?[A139611(n)-A020742(n)]-1)`
-/

namespace A142534.P15746197346441051698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A142534.P15746197346441051698

namespace A142534

/-- `A151800(p?[A139611(n)-A020742(n)]-1)` -/
def P15746197346441051698.Spec : Prop :=
  ∀ n, P15746197346441051698.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P14666713576862048366

`A034699(p?[A139611(n)-A020742(n)])`
-/

namespace A142534.P14666713576862048366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P14666713576862048366

namespace A142534

/-- `A034699(p?[A139611(n)-A020742(n)])` -/
def P14666713576862048366.Spec : Prop :=
  ∀ n, P14666713576862048366.a n = A142534 (n + 1)

end A142534

/-! ## A142534.P14931883710118671592

`A034699(p?[A215148(n)+A139222(n+1)])`
-/

namespace A142534.P14931883710118671592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142534.P14931883710118671592

namespace A142534

/-- `A034699(p?[A215148(n)+A139222(n+1)])` -/
def P14931883710118671592.Spec : Prop :=
  ∀ n, P14931883710118671592.a n = A142534 (n + 1)

end A142534

/-!
# A142535: Primes congruent to 5 mod 53.

The programs for A142535, the canonical program `A142535.P11369600720982195924` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142535 has offset 1).

The definition of A142535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142535.P11369600720982195924

`p?[53*n+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142535

/-- `p?[53*n+5]` -/
def P11369600720982195924.Spec : Prop :=
  ∀ n, (P11369600720982195924.a n : ℤ) = A142535 (n + 1)

theorem P11369600720982195924.correct : P11369600720982195924.Spec := by
  intro n
  simp only [A142535, Nat.add_sub_cancel]

end A142535

/-! ## A142535.P12843239400147840109

`p?[A078787(n)+A016897(n)]%A016959(n)`
-/

namespace A142535.P12843239400147840109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 n + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016959 n)

end

end A142535.P12843239400147840109

namespace A142535

/-- `p?[A078787(n)+A016897(n)]%A016959(n)` -/
def P12843239400147840109.Spec : Prop :=
  ∀ n, P12843239400147840109.a n = A142535 (n + 1)

end A142535

/-! ## A142535.P12215495904231391203

`A000038(n+1)+p?[A078787(n)+A016897(n)]`
-/

namespace A142535.P12215495904231391203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 n + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142535.P12215495904231391203

namespace A142535

/-- `A000038(n+1)+p?[A078787(n)+A016897(n)]` -/
def P12215495904231391203.Spec : Prop :=
  ∀ n, P12215495904231391203.a n = A142535 (n + 1)

end A142535

/-! ## A142535.P7278352843463590338

`p?[A078787(n)+A016897(n)]+(A016782(n)+2)%3`
-/

namespace A142535.P7278352843463590338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 n + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A016782 n + 2) 3

end

end A142535.P7278352843463590338

namespace A142535

/-- `p?[A078787(n)+A016897(n)]+(A016782(n)+2)%3` -/
def P7278352843463590338.Spec : Prop :=
  ∀ n, P7278352843463590338.a n = A142535 (n + 1)

end A142535

/-! ## A142535.P6260586677925325167

`A000027(p?[A078787(n)+A016897(n)])`
-/

namespace A142535.P6260586677925325167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 n + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142535.P6260586677925325167

namespace A142535

/-- `A000027(p?[A078787(n)+A016897(n)])` -/
def P6260586677925325167.Spec : Prop :=
  ∀ n, P6260586677925325167.a n = A142535 (n + 1)

end A142535

/-!
# A142536: Primes congruent to 6 mod 53.

The programs for A142536, the canonical program `A142536.P6532909762030871676` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142536 has offset 1).

The definition of A142536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142536.P6532909762030871676

`p?[53*n+6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142536

/-- `p?[53*n+6]` -/
def P6532909762030871676.Spec : Prop :=
  ∀ n, (P6532909762030871676.a n : ℤ) = A142536 (n + 1)

theorem P6532909762030871676.correct : P6532909762030871676.Spec := by
  intro n
  simp only [A142536, Nat.add_sub_cancel]

end A142536

/-! ## A142536.P9657431915643677532

`∏{d}[p?[6-(n-54*n)], #]`
-/

namespace A142536.P9657431915643677532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((n : ℤ) - (54 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142536.P9657431915643677532

namespace A142536

/-- `∏{d}[p?[6-(n-54*n)], #]` -/
def P9657431915643677532.Spec : Prop :=
  ∀ n, (P9657431915643677532.a n : ℤ) = A142536 (n + 1)

end A142536

/-! ## A142536.P12403435547692845322

`A000027(p?[A158071(n+1)-A017461(n)])`
-/

namespace A142536.P12403435547692845322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) - A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142536.P12403435547692845322

namespace A142536

/-- `A000027(p?[A158071(n+1)-A017461(n)])` -/
def P12403435547692845322.Spec : Prop :=
  ∀ n, P12403435547692845322.a n = A142536 (n + 1)

end A142536

/-! ## A142536.P1214036662792733645

`record[A020639(53*(n+1)+6)]`
-/

namespace A142536.P1214036662792733645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142536.P1214036662792733645

namespace A142536

/-- `record[A020639(53*(n+1)+6)]` -/
def P1214036662792733645.Spec : Prop :=
  ∀ n, P1214036662792733645.a n = A142536 (n + 1)

end A142536

/-! ## A142536.P12945656240723776670

`record[A006530(7*15*n+59+n)]`
-/

namespace A142536.P12945656240723776670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (15 * n) + 59 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142536.P12945656240723776670

namespace A142536

/-- `record[A006530(7*15*n+59+n)]` -/
def P12945656240723776670.Spec : Prop :=
  ∀ n, P12945656240723776670.a n = A142536 (n + 1)

end A142536

/-!
# A142537: Primes congruent to 7 mod 53.

The programs for A142537, the canonical program `A142537.P10942053936895890549` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142537 has offset 1).

The definition of A142537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142537.P10942053936895890549

`p?[53*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142537

/-- `p?[53*n+7]` -/
def P10942053936895890549.Spec : Prop :=
  ∀ n, (P10942053936895890549.a n : ℤ) = A142537 (n + 1)

theorem P10942053936895890549.correct : P10942053936895890549.Spec := by
  intro n
  simp only [A142537, Nat.add_sub_cancel]

end A142537

/-! ## A142537.P7609756440717103780

`abs(p?[A139608(n)+A008607(n)-1]-n)+n`
-/

namespace A142537.P7609756440717103780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A008607 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)

end

end A142537.P7609756440717103780

namespace A142537

/-- `abs(p?[A139608(n)+A008607(n)-1]-n)+n` -/
def P7609756440717103780.Spec : Prop :=
  ∀ n, P7609756440717103780.a n = A142537 (n + 1)

end A142537

/-! ## A142537.P6462609573195267310

`A000007(n+1)+p?[A139611(n)-A005408(n)-3]`
-/

namespace A142537.P6462609573195267310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142537.P6462609573195267310

namespace A142537

/-- `A000007(n+1)+p?[A139611(n)-A005408(n)-3]` -/
def P6462609573195267310.Spec : Prop :=
  ∀ n, P6462609573195267310.a n = A142537 (n + 1)

end A142537

/-! ## A142537.P6024003147876973832

`record[A006530(53*n+7)]`
-/

namespace A142537.P6024003147876973832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (53 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142537.P6024003147876973832

namespace A142537

/-- `record[A006530(53*n+7)]` -/
def P6024003147876973832.Spec : Prop :=
  ∀ n, P6024003147876973832.a n = A142537 (n + 1)

end A142537

/-! ## A142537.P3765673579622595243

`record[A020639(53*n+7)]`
-/

namespace A142537.P3765673579622595243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142537.P3765673579622595243

namespace A142537

/-- `record[A020639(53*n+7)]` -/
def P3765673579622595243.Spec : Prop :=
  ∀ n, P3765673579622595243.a n = A142537 (n + 1)

end A142537

/-!
# A142538: Primes congruent to 8 mod 53.

The programs for A142538, the canonical program `A142538.P10793442619171687906` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142538 has offset 1).

The definition of A142538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142538.P10793442619171687906

`p?[53*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142538

/-- `p?[53*n+8]` -/
def P10793442619171687906.Spec : Prop :=
  ∀ n, (P10793442619171687906.a n : ℤ) = A142538 (n + 1)

theorem P10793442619171687906.correct : P10793442619171687906.Spec := by
  intro n
  simp only [A142538, Nat.add_sub_cancel]

end A142538

/-! ## A142538.P8421379855136288661

`or(1, p?[A139608(n)+A008607(n)])`
-/

namespace A142538.P8421379855136288661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142538.P8421379855136288661

namespace A142538

/-- `or(1, p?[A139608(n)+A008607(n)])` -/
def P8421379855136288661.Spec : Prop :=
  ∀ n, P8421379855136288661.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P1110731423031956488

`p?[A139608(n)+A008607(n)]%A017018(n)²`
-/

namespace A142538.P1110731423031956488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017018 n ^ 2)

end

end A142538.P1110731423031956488

namespace A142538

/-- `p?[A139608(n)+A008607(n)]%A017018(n)²` -/
def P1110731423031956488.Spec : Prop :=
  ∀ n, P1110731423031956488.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P3309609044139298482

`A000027(p?[A139611(n)-A005408(n)-2])`
-/

namespace A142538.P3309609044139298482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142538.P3309609044139298482

namespace A142538

/-- `A000027(p?[A139611(n)-A005408(n)-2])` -/
def P3309609044139298482.Spec : Prop :=
  ∀ n, P3309609044139298482.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P6018154255028180485

`A000027(p?[A317323(n)+A164284(n+1)])`
-/

namespace A142538.P6018154255028180485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n + A164284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142538.P6018154255028180485

namespace A142538

/-- `A000027(p?[A317323(n)+A164284(n+1)])` -/
def P6018154255028180485.Spec : Prop :=
  ∀ n, P6018154255028180485.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P5052103821722795266

`record[A020639(53*(n+1)+8)]`
-/

namespace A142538.P5052103821722795266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142538.P5052103821722795266

namespace A142538

/-- `record[A020639(53*(n+1)+8)]` -/
def P5052103821722795266.Spec : Prop :=
  ∀ n, P5052103821722795266.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P6476343657497764483

`A001414(p?[A139608(n)+A008607(n)])`
-/

namespace A142538.P6476343657497764483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142538.P6476343657497764483

namespace A142538

/-- `A001414(p?[A139608(n)+A008607(n)])` -/
def P6476343657497764483.Spec : Prop :=
  ∀ n, P6476343657497764483.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P10914582808934420178

`A008472(p?[A139608(n)+A008607(n)])`
-/

namespace A142538.P10914582808934420178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142538.P10914582808934420178

namespace A142538

/-- `A008472(p?[A139608(n)+A008607(n)])` -/
def P10914582808934420178.Spec : Prop :=
  ∀ n, P10914582808934420178.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P16939946783219714672

`A008475(p?[A139608(n)+A008607(n)])`
-/

namespace A142538.P16939946783219714672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142538.P16939946783219714672

namespace A142538

/-- `A008475(p?[A139608(n)+A008607(n)])` -/
def P16939946783219714672.Spec : Prop :=
  ∀ n, P16939946783219714672.a n = A142538 (n + 1)

end A142538

/-! ## A142538.P5214238588672387106

`A007947(p?[A317323(n)+A164284(n+1)])`
-/

namespace A142538.P5214238588672387106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n + A164284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142538.P5214238588672387106

namespace A142538

/-- `A007947(p?[A317323(n)+A164284(n+1)])` -/
def P5214238588672387106.Spec : Prop :=
  ∀ n, P5214238588672387106.a n = A142538 (n + 1)

end A142538

/-!
# A142539: Primes congruent to 9 mod 53.

The programs for A142539, the canonical program `A142539.P11762698342472285005` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142539 has offset 1).

The definition of A142539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142539.P11762698342472285005

`p?[53*n+9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142539

/-- `p?[53*n+9]` -/
def P11762698342472285005.Spec : Prop :=
  ∀ n, (P11762698342472285005.a n : ℤ) = A142539 (n + 1)

theorem P11762698342472285005.correct : P11762698342472285005.Spec := by
  intro n
  simp only [A142539, Nat.add_sub_cancel]

end A142539

/-! ## A142539.P17555186558449538050

`p?[A102439(n)+A016969(n)]%A053742(n)²`
-/

namespace A142539.P17555186558449538050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A053742 n ^ 2)

end

end A142539.P17555186558449538050

namespace A142539

/-- `p?[A102439(n)+A016969(n)]%A053742(n)²` -/
def P17555186558449538050.Spec : Prop :=
  ∀ n, P17555186558449538050.a n = A142539 (n + 1)

end A142539

/-! ## A142539.P8175417580964632655

`A000007(n+1)+p?[A102439(n)+A016969(n)]`
-/

namespace A142539.P8175417580964632655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142539.P8175417580964632655

namespace A142539

/-- `A000007(n+1)+p?[A102439(n)+A016969(n)]` -/
def P8175417580964632655.Spec : Prop :=
  ∀ n, P8175417580964632655.a n = A142539 (n + 1)

end A142539

/-! ## A142539.P10066570501465019659

`p?[A102439(n)+A016969(n)]/(A004442(n)-n)²`
-/

namespace A142539.P10066570501465019659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A142539.P10066570501465019659

namespace A142539

/-- `p?[A102439(n)+A016969(n)]/(A004442(n)-n)²` -/
def P10066570501465019659.Spec : Prop :=
  ∀ n, P10066570501465019659.a n = (A142539 (n + 1) : ℚ)

end A142539

/-! ## A142539.P497903573612617526

`p?[A102439(n)+A016969(n)]/(n+2+n-A005408(n))`
-/

namespace A142539.P497903573612617526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((n + 2 + n : ℤ) - A005408 n : ℚ)

end

end A142539.P497903573612617526

namespace A142539

/-- `p?[A102439(n)+A016969(n)]/(n+2+n-A005408(n))` -/
def P497903573612617526.Spec : Prop :=
  ∀ n, P497903573612617526.a n = (A142539 (n + 1) : ℚ)

end A142539

/-! ## A142539.P13539400189464727092

`p?[A102439(n)+A016969(n)]/A134101(n+1)%2`
-/

namespace A142539.P13539400189464727092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A134101 (n + 1)) 2 : ℚ)

end

end A142539.P13539400189464727092

namespace A142539

/-- `p?[A102439(n)+A016969(n)]/A134101(n+1)%2` -/
def P13539400189464727092.Spec : Prop :=
  ∀ n, P13539400189464727092.a n = (A142539 (n + 1) : ℚ)

end A142539

/-! ## A142539.P2803426382653001682

`A000027(p?[A102439(n)+A016969(n)])`
-/

namespace A142539.P2803426382653001682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142539.P2803426382653001682

namespace A142539

/-- `A000027(p?[A102439(n)+A016969(n)])` -/
def P2803426382653001682.Spec : Prop :=
  ∀ n, P2803426382653001682.a n = A142539 (n + 1)

end A142539

/-! ## A142539.P8465815093346371133

`A000265(p?[A102439(n)+A016969(n)])`
-/

namespace A142539.P8465815093346371133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142539.P8465815093346371133

namespace A142539

/-- `A000265(p?[A102439(n)+A016969(n)])` -/
def P8465815093346371133.Spec : Prop :=
  ∀ n, P8465815093346371133.a n = A142539 (n + 1)

end A142539

/-! ## A142539.P15668060847235818170

`A008472(p?[A102439(n)+A016969(n)])`
-/

namespace A142539.P15668060847235818170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142539.P15668060847235818170

namespace A142539

/-- `A008472(p?[A102439(n)+A016969(n)])` -/
def P15668060847235818170.Spec : Prop :=
  ∀ n, P15668060847235818170.a n = A142539 (n + 1)

end A142539

/-! ## A142539.P3845354081268651350

`A007947(p?[A139611(n)-A051755(n+2)])`
-/

namespace A142539.P3845354081268651350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142539.P3845354081268651350

namespace A142539

/-- `A007947(p?[A139611(n)-A051755(n+2)])` -/
def P3845354081268651350.Spec : Prop :=
  ∀ n, P3845354081268651350.a n = A142539 (n + 1)

end A142539

/-! ## A142539.P3581113160683964448

`A008472(p?[A139611(n)-A051755(n+2)])`
-/

namespace A142539.P3581113160683964448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142539.P3581113160683964448

namespace A142539

/-- `A008472(p?[A139611(n)-A051755(n+2)])` -/
def P3581113160683964448.Spec : Prop :=
  ∀ n, P3581113160683964448.a n = A142539 (n + 1)

end A142539

/-!
# A142540: Primes congruent to 10 mod 53.

The programs for A142540, the canonical program `A142540.P2217964675190997392` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142540 has offset 1).

The definition of A142540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142540.P2217964675190997392

`p?[53*n+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142540

/-- `p?[53*n+10]` -/
def P2217964675190997392.Spec : Prop :=
  ∀ n, (P2217964675190997392.a n : ℤ) = A142540 (n + 1)

theorem P2217964675190997392.correct : P2217964675190997392.Spec := by
  intro n
  simp only [A142540, Nat.add_sub_cancel]

end A142540

/-! ## A142540.P1128058915504132335

`p?[A139611(n)-A005408(n)]%A153406(n+1)`
-/

namespace A142540.P1128058915504132335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A153406 (n + 1))

end

end A142540.P1128058915504132335

namespace A142540

/-- `p?[A139611(n)-A005408(n)]%A153406(n+1)` -/
def P1128058915504132335.Spec : Prop :=
  ∀ n, P1128058915504132335.a n = A142540 (n + 1)

end A142540

/-! ## A142540.P10304345064325110722

`p?[A139611(n)-A005408(n)]/A309873(n+1)²`
-/

namespace A142540.P10304345064325110722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A309873 (n + 1) ^ 2 : ℚ)

end

end A142540.P10304345064325110722

namespace A142540

/-- `p?[A139611(n)-A005408(n)]/A309873(n+1)²` -/
def P10304345064325110722.Spec : Prop :=
  ∀ n, P10304345064325110722.a n = (A142540 (n + 1) : ℚ)

end A142540

/-! ## A142540.P9142606575425778847

`p?[A139611(n)-A005408(n)]/(A008619(2*n)-n)`
-/

namespace A142540.P9142606575425778847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008619 (2 * n) - (n : ℤ) : ℚ)

end

end A142540.P9142606575425778847

namespace A142540

/-- `p?[A139611(n)-A005408(n)]/(A008619(2*n)-n)` -/
def P9142606575425778847.Spec : Prop :=
  ∀ n, P9142606575425778847.a n = (A142540 (n + 1) : ℚ)

end A142540

/-! ## A142540.P17437685696003065971

`A000027(p?[A139611(n)-A005408(n)])`
-/

namespace A142540.P17437685696003065971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142540.P17437685696003065971

namespace A142540

/-- `A000027(p?[A139611(n)-A005408(n)])` -/
def P17437685696003065971.Spec : Prop :=
  ∀ n, P17437685696003065971.a n = A142540 (n + 1)

end A142540

/-! ## A142540.P289681370842129344

`A000265(p?[A139611(n)-A005408(n)])`
-/

namespace A142540.P289681370842129344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142540.P289681370842129344

namespace A142540

/-- `A000265(p?[A139611(n)-A005408(n)])` -/
def P289681370842129344.Spec : Prop :=
  ∀ n, P289681370842129344.a n = A142540 (n + 1)

end A142540

/-! ## A142540.P2301023942999501941

`A007913(p?[A139611(n)-A005408(n)])`
-/

namespace A142540.P2301023942999501941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142540.P2301023942999501941

namespace A142540

/-- `A007913(p?[A139611(n)-A005408(n)])` -/
def P2301023942999501941.Spec : Prop :=
  ∀ n, P2301023942999501941.a n = A142540 (n + 1)

end A142540

/-! ## A142540.P17254731233284222824

`A008472(p?[A139611(n)-A005408(n)])`
-/

namespace A142540.P17254731233284222824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142540.P17254731233284222824

namespace A142540

/-- `A008472(p?[A139611(n)-A005408(n)])` -/
def P17254731233284222824.Spec : Prop :=
  ∀ n, P17254731233284222824.a n = A142540 (n + 1)

end A142540

/-!
# A142541: Primes congruent to 11 mod 53.

The programs for A142541, the canonical program `A142541.P7515019460399577004` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142541 has offset 1).

The definition of A142541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142541.P7515019460399577004

`p?[53*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142541

/-- `p?[53*n+11]` -/
def P7515019460399577004.Spec : Prop :=
  ∀ n, (P7515019460399577004.a n : ℤ) = A142541 (n + 1)

theorem P7515019460399577004.correct : P7515019460399577004.Spec := by
  intro n
  simp only [A142541, Nat.add_sub_cancel]

end A142541

/-! ## A142541.P7364640246742510806

`∏{d}[p?[11-(n-54*n)], #]`
-/

namespace A142541.P7364640246742510806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - ((n : ℤ) - (54 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142541.P7364640246742510806

namespace A142541

/-- `∏{d}[p?[11-(n-54*n)], #]` -/
def P7364640246742510806.Spec : Prop :=
  ∀ n, (P7364640246742510806.a n : ℤ) = A142541 (n + 1)

end A142541

/-! ## A142541.P14961727196337813958

`record[A020639(A139611(n)-2*n)]`
-/

namespace A142541.P14961727196337813958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142541.P14961727196337813958

namespace A142541

/-- `record[A020639(A139611(n)-2*n)]` -/
def P14961727196337813958.Spec : Prop :=
  ∀ n, P14961727196337813958.a n = A142541 (n + 1)

end A142541

/-! ## A142541.P16777006998850564050

`record[A020639(A159551(n)+A016861(n))]`
-/

namespace A142541.P16777006998850564050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A159551 n + A016861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142541.P16777006998850564050

namespace A142541

/-- `record[A020639(A159551(n)+A016861(n))]` -/
def P16777006998850564050.Spec : Prop :=
  ∀ n, P16777006998850564050.a n = A142541 (n + 1)

end A142541

/-! ## A142541.P8066383881502694064

`A000265(p?[A139611(n)-A005843(n)])`
-/

namespace A142541.P8066383881502694064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142541.P8066383881502694064

namespace A142541

/-- `A000265(p?[A139611(n)-A005843(n)])` -/
def P8066383881502694064.Spec : Prop :=
  ∀ n, P8066383881502694064.a n = A142541 (n + 1)

end A142541

/-! ## A142541.P14938955001674533989

`A008472(p?[A139611(n)-A005843(n)])`
-/

namespace A142541.P14938955001674533989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142541.P14938955001674533989

namespace A142541

/-- `A008472(p?[A139611(n)-A005843(n)])` -/
def P14938955001674533989.Spec : Prop :=
  ∀ n, P14938955001674533989.a n = A142541 (n + 1)

end A142541

/-! ## A142541.P17202929373170361497

`record[A020639(A102439(n)+A016969(n)+2)]`
-/

namespace A142541.P17202929373170361497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102439 n + A016969 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142541.P17202929373170361497

namespace A142541

/-- `record[A020639(A102439(n)+A016969(n)+2)]` -/
def P17202929373170361497.Spec : Prop :=
  ∀ n, P17202929373170361497.a n = A142541 (n + 1)

end A142541

/-!
# A142542: Primes congruent to 12 mod 53.

The programs for A142542, the canonical program `A142542.P533235712252162130` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142542 has offset 1).

The definition of A142542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142542.P533235712252162130

`p?[53*n+12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142542

/-- `p?[53*n+12]` -/
def P533235712252162130.Spec : Prop :=
  ∀ n, (P533235712252162130.a n : ℤ) = A142542 (n + 1)

theorem P533235712252162130.correct : P533235712252162130.Spec := by
  intro n
  simp only [A142542, Nat.add_sub_cancel]

end A142542

/-! ## A142542.P17342274632490563582

`A000027(p?[A304205(n+1)+A008586(n)])`
-/

namespace A142542.P17342274632490563582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142542.P17342274632490563582

namespace A142542

/-- `A000027(p?[A304205(n+1)+A008586(n)])` -/
def P17342274632490563582.Spec : Prop :=
  ∀ n, P17342274632490563582.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P887838303593091692

`A000027(p?[A139611(n)-A004280(n+1)])`
-/

namespace A142542.P887838303593091692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142542.P887838303593091692

namespace A142542

/-- `A000027(p?[A139611(n)-A004280(n+1)])` -/
def P887838303593091692.Spec : Prop :=
  ∀ n, P887838303593091692.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P15361053543945477040

`p?[A154266(2*n)-n]*char[A006368(n)]`
-/

namespace A142542.P15361053543945477040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A142542.P15361053543945477040

namespace A142542

/-- `p?[A154266(2*n)-n]*char[A006368(n)]` -/
def P15361053543945477040.Spec : Prop :=
  ∀ n, P15361053543945477040.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P422078182735366676

`p?[A154266(2*n)-n]*char[A006369(n)]`
-/

namespace A142542.P422078182735366676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A142542.P422078182735366676

namespace A142542

/-- `p?[A154266(2*n)-n]*char[A006369(n)]` -/
def P422078182735366676.Spec : Prop :=
  ∀ n, P422078182735366676.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P3495695424520571661

`p?[A154266(2*n)-n]*char[A035327(n)]`
-/

namespace A142542.P3495695424520571661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A142542.P3495695424520571661

namespace A142542

/-- `p?[A154266(2*n)-n]*char[A035327(n)]` -/
def P3495695424520571661.Spec : Prop :=
  ∀ n, P3495695424520571661.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P15074671317235367335

`p?[A154266(2*n)-n]*char[A279645(n)]`
-/

namespace A142542.P15074671317235367335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A142542.P15074671317235367335

namespace A142542

/-- `p?[A154266(2*n)-n]*char[A279645(n)]` -/
def P15074671317235367335.Spec : Prop :=
  ∀ n, P15074671317235367335.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P2178731736484524408

`A000027(p?[A154266(n)-A004525(n)])`
-/

namespace A142542.P2178731736484524408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142542.P2178731736484524408

namespace A142542

/-- `A000027(p?[A154266(n)-A004525(n)])` -/
def P2178731736484524408.Spec : Prop :=
  ∀ n, P2178731736484524408.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P11237052123117980886

`A000265(p?[A154266(2*n)-n])`
-/

namespace A142542.P11237052123117980886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142542.P11237052123117980886

namespace A142542

/-- `A000265(p?[A154266(2*n)-n])` -/
def P11237052123117980886.Spec : Prop :=
  ∀ n, P11237052123117980886.a n = A142542 (n + 1)

end A142542

/-! ## A142542.P10635991876427958940

`A000265(p?[A139611(n)-A004280(n+1)])`
-/

namespace A142542.P10635991876427958940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142542.P10635991876427958940

namespace A142542

/-- `A000265(p?[A139611(n)-A004280(n+1)])` -/
def P10635991876427958940.Spec : Prop :=
  ∀ n, P10635991876427958940.a n = A142542 (n + 1)

end A142542

/-!
# A142543: Primes congruent to 13 mod 53.

The programs for A142543, the canonical program `A142543.P13721539067979919973` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142543 has offset 1).

The definition of A142543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142543.P13721539067979919973

`p?[53*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142543

/-- `p?[53*n+13]` -/
def P13721539067979919973.Spec : Prop :=
  ∀ n, (P13721539067979919973.a n : ℤ) = A142543 (n + 1)

theorem P13721539067979919973.correct : P13721539067979919973.Spec := by
  intro n
  simp only [A142543, Nat.add_sub_cancel]

end A142543

/-! ## A142543.P5621093311121033429

`A000027(p?[A139610(n)+A017101(n)])`
-/

namespace A142543.P5621093311121033429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142543.P5621093311121033429

namespace A142543

/-- `A000027(p?[A139610(n)+A017101(n)])` -/
def P5621093311121033429.Spec : Prop :=
  ∀ n, P5621093311121033429.a n = A142543 (n + 1)

end A142543

/-! ## A142543.P14166661138679036071

`A000027(p?[A154609(n)+A139279(n+1)])`
-/

namespace A142543.P14166661138679036071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142543.P14166661138679036071

namespace A142543

/-- `A000027(p?[A154609(n)+A139279(n+1)])` -/
def P14166661138679036071.Spec : Prop :=
  ∀ n, P14166661138679036071.a n = A142543 (n + 1)

end A142543

/-! ## A142543.P16415213571223752354

`record[A020639(A139610(n)+A017101(n))]`
-/

namespace A142543.P16415213571223752354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139610 n + A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142543.P16415213571223752354

namespace A142543

/-- `record[A020639(A139610(n)+A017101(n))]` -/
def P16415213571223752354.Spec : Prop :=
  ∀ n, P16415213571223752354.a n = A142543 (n + 1)

end A142543

/-! ## A142543.P4561491565571793612

`A000265(p?[A139610(n)+A017101(n)])`
-/

namespace A142543.P4561491565571793612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142543.P4561491565571793612

namespace A142543

/-- `A000265(p?[A139610(n)+A017101(n)])` -/
def P4561491565571793612.Spec : Prop :=
  ∀ n, P4561491565571793612.a n = A142543 (n + 1)

end A142543

/-! ## A142543.P2646422554227579057

`record[A020639(A304205(n+1)+A016813(n))]`
-/

namespace A142543.P2646422554227579057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142543.P2646422554227579057

namespace A142543

/-- `record[A020639(A304205(n+1)+A016813(n))]` -/
def P2646422554227579057.Spec : Prop :=
  ∀ n, P2646422554227579057.a n = A142543 (n + 1)

end A142543

/-! ## A142543.P5334527733575176989

`A007913(p?[A304205(n+1)+A016813(n)])`
-/

namespace A142543.P5334527733575176989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142543.P5334527733575176989

namespace A142543

/-- `A007913(p?[A304205(n+1)+A016813(n)])` -/
def P5334527733575176989.Spec : Prop :=
  ∀ n, P5334527733575176989.a n = A142543 (n + 1)

end A142543

/-!
# A142544: Primes congruent to 14 mod 53.

The programs for A142544, the canonical program `A142544.P2515203654304685136` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142544 has offset 1).

The definition of A142544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142544.P2515203654304685136

`p?[53*n+14]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142544

/-- `p?[53*n+14]` -/
def P2515203654304685136.Spec : Prop :=
  ∀ n, (P2515203654304685136.a n : ℤ) = A142544 (n + 1)

theorem P2515203654304685136.correct : P2515203654304685136.Spec := by
  intro n
  simp only [A142544, Nat.add_sub_cancel]

end A142544

/-! ## A142544.P6889250972172517102

`or(1, p?[A139618(n)-A102439(n)])`
-/

namespace A142544.P6889250972172517102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142544.P6889250972172517102

namespace A142544

/-- `or(1, p?[A139618(n)-A102439(n)])` -/
def P6889250972172517102.Spec : Prop :=
  ∀ n, P6889250972172517102.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P6340318398038706820

`p?[A139618(n)-A102439(n)]-n*A000007(n)`
-/

namespace A142544.P6340318398038706820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A000007 n

end

end A142544.P6340318398038706820

namespace A142544

/-- `p?[A139618(n)-A102439(n)]-n*A000007(n)` -/
def P6340318398038706820.Spec : Prop :=
  ∀ n, P6340318398038706820.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P14734382014017766242

`p?[A139618(n)-A102439(n)]%A034856(n+5)²`
-/

namespace A142544.P14734382014017766242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A034856 (n + 5) ^ 2)

end

end A142544.P14734382014017766242

namespace A142544

/-- `p?[A139618(n)-A102439(n)]%A034856(n+5)²` -/
def P14734382014017766242.Spec : Prop :=
  ∀ n, P14734382014017766242.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P17662491534293271944

`p?[A139618(n)-A102439(n)]+(n+1)%A019554(n+1)`
-/

namespace A142544.P17662491534293271944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n + 1 : ℤ) (A019554 (n + 1))

end

end A142544.P17662491534293271944

namespace A142544

/-- `p?[A139618(n)-A102439(n)]+(n+1)%A019554(n+1)` -/
def P17662491534293271944.Spec : Prop :=
  ∀ n, P17662491534293271944.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P11996334351124418968

`A000027(p?[A177044(n+1)+A014682(n)])`
-/

namespace A142544.P11996334351124418968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) + A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142544.P11996334351124418968

namespace A142544

/-- `A000027(p?[A177044(n+1)+A014682(n)])` -/
def P11996334351124418968.Spec : Prop :=
  ∀ n, P11996334351124418968.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P17792717382748667137

`A000027(p?[A304205(n+1)+A016825(n)])`
-/

namespace A142544.P17792717382748667137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142544.P17792717382748667137

namespace A142544

/-- `A000027(p?[A304205(n+1)+A016825(n)])` -/
def P17792717382748667137.Spec : Prop :=
  ∀ n, P17792717382748667137.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P15031624980396979175

`A000265(p?[A139618(n)-A102439(n)])`
-/

namespace A142544.P15031624980396979175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142544.P15031624980396979175

namespace A142544

/-- `A000265(p?[A139618(n)-A102439(n)])` -/
def P15031624980396979175.Spec : Prop :=
  ∀ n, P15031624980396979175.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P7486530484898679203

`A000265(p?[A304205(n+1)+A016825(n)])`
-/

namespace A142544.P7486530484898679203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142544.P7486530484898679203

namespace A142544

/-- `A000265(p?[A304205(n+1)+A016825(n)])` -/
def P7486530484898679203.Spec : Prop :=
  ∀ n, P7486530484898679203.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P5140815875006275936

`A000265(p?[A304839(n+1)-A004768(n)])`
-/

namespace A142544.P5140815875006275936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142544.P5140815875006275936

namespace A142544

/-- `A000265(p?[A304839(n+1)-A004768(n)])` -/
def P5140815875006275936.Spec : Prop :=
  ∀ n, P5140815875006275936.a n = A142544 (n + 1)

end A142544

/-! ## A142544.P1821124917609744709

`A034699(p?[A139618(n)-A102439(n)])`
-/

namespace A142544.P1821124917609744709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142544.P1821124917609744709

namespace A142544

/-- `A034699(p?[A139618(n)-A102439(n)])` -/
def P1821124917609744709.Spec : Prop :=
  ∀ n, P1821124917609744709.a n = A142544 (n + 1)

end A142544

/-!
# A142545: Primes congruent to 15 mod 53.

The programs for A142545, the canonical program `A142545.P10300672822079420733` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142545 has offset 1).

The definition of A142545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142545.P10300672822079420733

`p?[53*n+15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142545

/-- `p?[53*n+15]` -/
def P10300672822079420733.Spec : Prop :=
  ∀ n, (P10300672822079420733.a n : ℤ) = A142545 (n + 1)

theorem P10300672822079420733.correct : P10300672822079420733.Spec := by
  intro n
  simp only [A142545, Nat.add_sub_cancel]

end A142545

/-! ## A142545.P2066774896352020128

`or(1, p?[A269044(n)+A139279(n+1)])`
-/

namespace A142545.P2066774896352020128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142545.P2066774896352020128

namespace A142545

/-- `or(1, p?[A269044(n)+A139279(n+1)])` -/
def P2066774896352020128.Spec : Prop :=
  ∀ n, P2066774896352020128.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P9755842434152662251

`p?[A139611(n)-A005408(n)+5]%A126165(n+1)`
-/

namespace A142545.P9755842434152662251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A126165 (n + 1))

end

end A142545.P9755842434152662251

namespace A142545

/-- `p?[A139611(n)-A005408(n)+5]%A126165(n+1)` -/
def P9755842434152662251.Spec : Prop :=
  ∀ n, P9755842434152662251.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P14409854408704593123

`A000027(p?[A269044(n)+A139279(n+1)])`
-/

namespace A142545.P14409854408704593123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P14409854408704593123

namespace A142545

/-- `A000027(p?[A269044(n)+A139279(n+1)])` -/
def P14409854408704593123.Spec : Prop :=
  ∀ n, P14409854408704593123.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P6526026214707719397

`A000027(p?[A139610(n)+A017101(n)+2])`
-/

namespace A142545.P6526026214707719397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017101 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P6526026214707719397

namespace A142545

/-- `A000027(p?[A139610(n)+A017101(n)+2])` -/
def P6526026214707719397.Spec : Prop :=
  ∀ n, P6526026214707719397.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P11752953800844751656

`A000027(p?[A139611(n)-A005408(n)+5])`
-/

namespace A142545.P11752953800844751656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A005408 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P11752953800844751656

namespace A142545

/-- `A000027(p?[A139611(n)-A005408(n)+5])` -/
def P11752953800844751656.Spec : Prop :=
  ∀ n, P11752953800844751656.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P6591823457010457874

`A000027(p?[A154267(n)-A001281(n)])`
-/

namespace A142545.P6591823457010457874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P6591823457010457874

namespace A142545

/-- `A000027(p?[A154267(n)-A001281(n)])` -/
def P6591823457010457874.Spec : Prop :=
  ∀ n, P6591823457010457874.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P7860580383441476294

`A000265(p?[A269044(n)+A139279(n+1)])`
-/

namespace A142545.P7860580383441476294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P7860580383441476294

namespace A142545

/-- `A000265(p?[A269044(n)+A139279(n+1)])` -/
def P7860580383441476294.Spec : Prop :=
  ∀ n, P7860580383441476294.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P3331004654852284813

`A007913(p?[A269044(n)+A139279(n+1)])`
-/

namespace A142545.P3331004654852284813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P3331004654852284813

namespace A142545

/-- `A007913(p?[A269044(n)+A139279(n+1)])` -/
def P3331004654852284813.Spec : Prop :=
  ∀ n, P3331004654852284813.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P5707408582082442892

`A000265(p?[A139610(n)+A017041(n)+n])`
-/

namespace A142545.P5707408582082442892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017041 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142545.P5707408582082442892

namespace A142545

/-- `A000265(p?[A139610(n)+A017041(n)+n])` -/
def P5707408582082442892.Spec : Prop :=
  ∀ n, P5707408582082442892.a n = A142545 (n + 1)

end A142545

/-! ## A142545.P14631211499363682570

`record[A020639(A139611(n+4)-A005843(n+2))]`
-/

namespace A142545.P14631211499363682570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 (n + 4) - A005843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142545.P14631211499363682570

namespace A142545

/-- `record[A020639(A139611(n+4)-A005843(n+2))]` -/
def P14631211499363682570.Spec : Prop :=
  ∀ n, P14631211499363682570.a n = A142545 (n + 1)

end A142545

/-!
# A142546: Primes congruent to 16 mod 53.

The programs for A142546, the canonical program `A142546.P18148107209974160927` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142546 has offset 1).

The definition of A142546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142546.P18148107209974160927

`p?[53*n+16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142546

/-- `p?[53*n+16]` -/
def P18148107209974160927.Spec : Prop :=
  ∀ n, (P18148107209974160927.a n : ℤ) = A142546 (n + 1)

theorem P18148107209974160927.correct : P18148107209974160927.Spec := by
  intro n
  simp only [A142546, Nat.add_sub_cancel]

end A142546

/-! ## A142546.P16326728144212202815

`or(1, p?[A053742(n+3)+A008585(n)])`
-/

namespace A142546.P16326728144212202815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 3) + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142546.P16326728144212202815

namespace A142546

/-- `or(1, p?[A053742(n+3)+A008585(n)])` -/
def P16326728144212202815.Spec : Prop :=
  ∀ n, P16326728144212202815.a n = A142546 (n + 1)

end A142546

/-! ## A142546.P5814110108079756912

`∏{d}[p?[A152691(n+2)-A017461(n)], #]`
-/

namespace A142546.P5814110108079756912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (n + 2) - A017461 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142546.P5814110108079756912

namespace A142546

/-- `∏{d}[p?[A152691(n+2)-A017461(n)], #]` -/
def P5814110108079756912.Spec : Prop :=
  ∀ n, (P5814110108079756912.a n : ℤ) = A142546 (n + 1)

end A142546

/-! ## A142546.P9922997685949843215

`A000027(p?[A139610(n)+A017101(n)+3])`
-/

namespace A142546.P9922997685949843215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A017101 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142546.P9922997685949843215

namespace A142546

/-- `A000027(p?[A139610(n)+A017101(n)+3])` -/
def P9922997685949843215.Spec : Prop :=
  ∀ n, P9922997685949843215.a n = A142546 (n + 1)

end A142546

/-! ## A142546.P11916913953083576586

`A000027(p?[A306285(n+1)+A139279(n+1)])`
-/

namespace A142546.P11916913953083576586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142546.P11916913953083576586

namespace A142546

/-- `A000027(p?[A306285(n+1)+A139279(n+1)])` -/
def P11916913953083576586.Spec : Prop :=
  ∀ n, P11916913953083576586.a n = A142546 (n + 1)

end A142546

/-! ## A142546.P6180453374162913098

`A008472(p?[A269044(n)+A139279(n+1)+1])`
-/

namespace A142546.P6180453374162913098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A139279 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142546.P6180453374162913098

namespace A142546

/-- `A008472(p?[A269044(n)+A139279(n+1)+1])` -/
def P6180453374162913098.Spec : Prop :=
  ∀ n, P6180453374162913098.a n = A142546 (n + 1)

end A142546

/-! ## A142546.P10487698880659256909

`A000265(p?[n+1+A139610(n)+A017041(n)])`
-/

namespace A142546.P10487698880659256909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A139610 n + A017041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142546.P10487698880659256909

namespace A142546

/-- `A000265(p?[n+1+A139610(n)+A017041(n)])` -/
def P10487698880659256909.Spec : Prop :=
  ∀ n, P10487698880659256909.a n = A142546 (n + 1)

end A142546

/-!
# A142547: Primes congruent to 17 mod 53.

The programs for A142547, the canonical program `A142547.P9271317736826490547` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142547 has offset 1).

The definition of A142547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142547.P9271317736826490547

`p?[53*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142547

/-- `p?[53*n+17]` -/
def P9271317736826490547.Spec : Prop :=
  ∀ n, (P9271317736826490547.a n : ℤ) = A142547 (n + 1)

theorem P9271317736826490547.correct : P9271317736826490547.Spec := by
  intro n
  simp only [A142547, Nat.add_sub_cancel]

end A142547

/-! ## A142547.P16283911529458184315

`∩[A000040(n+1), 53*n+17]`
-/

namespace A142547.P16283911529458184315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 17

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A142547.P16283911529458184315

namespace A142547

/-- `∩[A000040(n+1), 53*n+17]` -/
def P16283911529458184315.Spec : Prop :=
  ∀ n, (P16283911529458184315.a n : ℤ) = A142547 (n + 1)

end A142547

/-! ## A142547.P16085926354643997476

`record[A020639(53*n+17)]`
-/

namespace A142547.P16085926354643997476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142547.P16085926354643997476

namespace A142547

/-- `record[A020639(53*n+17)]` -/
def P16085926354643997476.Spec : Prop :=
  ∀ n, P16085926354643997476.a n = A142547 (n + 1)

end A142547

/-! ## A142547.P751165228551891302

`or(1, p?[A298026(A298029(n+1))-n])`
-/

namespace A142547.P751165228551891302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (A298029 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142547.P751165228551891302

namespace A142547

/-- `or(1, p?[A298026(A298029(n+1))-n])` -/
def P751165228551891302.Spec : Prop :=
  ∀ n, P751165228551891302.a n = A142547 (n + 1)

end A142547

/-! ## A142547.P16926806672986087813

`record[A014963(53*n+17)]`
-/

namespace A142547.P16926806672986087813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (53 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142547.P16926806672986087813

namespace A142547

/-- `record[A014963(53*n+17)]` -/
def P16926806672986087813.Spec : Prop :=
  ∀ n, P16926806672986087813.a n = A142547 (n + 1)

end A142547

/-!
# A142548: Primes congruent to 18 mod 53.

The programs for A142548, the canonical program `A142548.P13639296875527498970` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142548 has offset 1).

The definition of A142548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142548.P13639296875527498970

`p?[53*n+18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142548

/-- `p?[53*n+18]` -/
def P13639296875527498970.Spec : Prop :=
  ∀ n, (P13639296875527498970.a n : ℤ) = A142548 (n + 1)

theorem P13639296875527498970.correct : P13639296875527498970.Spec := by
  intro n
  simp only [A142548, Nat.add_sub_cancel]

end A142548

/-! ## A142548.P18242771507972714549

`p?[A053741(n+1)+A016777(n)]%A014575(n+1)`
-/

namespace A142548.P18242771507972714549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 (n + 1) + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014575 (n + 1))

end

end A142548.P18242771507972714549

namespace A142548

/-- `p?[A053741(n+1)+A016777(n)]%A014575(n+1)` -/
def P18242771507972714549.Spec : Prop :=
  ∀ n, P18242771507972714549.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P7717601557584414069

`A000027(p?[A053741(n+1)+A016777(n)])`
-/

namespace A142548.P7717601557584414069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 (n + 1) + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P7717601557584414069

namespace A142548

/-- `A000027(p?[A053741(n+1)+A016777(n)])` -/
def P7717601557584414069.Spec : Prop :=
  ∀ n, P7717601557584414069.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P526304168075215300

`A000027(p?[A124388(n)-A004525(n)])`
-/

namespace A142548.P526304168075215300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P526304168075215300

namespace A142548

/-- `A000027(p?[A124388(n)-A004525(n)])` -/
def P526304168075215300.Spec : Prop :=
  ∀ n, P526304168075215300.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P9475902913475322215

`A000027(p?[A124388(n)-A026741(n)])`
-/

namespace A142548.P9475902913475322215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P9475902913475322215

namespace A142548

/-- `A000027(p?[A124388(n)-A026741(n)])` -/
def P9475902913475322215.Spec : Prop :=
  ∀ n, P9475902913475322215.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P8561973039408705239

`A008472(p?[A124388(n)-A004525(n)])`
-/

namespace A142548.P8561973039408705239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P8561973039408705239

namespace A142548

/-- `A008472(p?[A124388(n)-A004525(n)])` -/
def P8561973039408705239.Spec : Prop :=
  ∀ n, P8561973039408705239.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P16425968419293425207

`A000265(p?[A124388(n)-A026741(n)])`
-/

namespace A142548.P16425968419293425207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P16425968419293425207

namespace A142548

/-- `A000265(p?[A124388(n)-A026741(n)])` -/
def P16425968419293425207.Spec : Prop :=
  ∀ n, P16425968419293425207.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P4075220913167194306

`A007913(p?[A124388(n)-A026741(n)])`
-/

namespace A142548.P4075220913167194306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P4075220913167194306

namespace A142548

/-- `A007913(p?[A124388(n)-A026741(n)])` -/
def P4075220913167194306.Spec : Prop :=
  ∀ n, P4075220913167194306.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P8433545198645471664

`A008472(p?[A124388(n)-A026741(n)])`
-/

namespace A142548.P8433545198645471664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142548.P8433545198645471664

namespace A142548

/-- `A008472(p?[A124388(n)-A026741(n)])` -/
def P8433545198645471664.Spec : Prop :=
  ∀ n, P8433545198645471664.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P1724607238736904110

`record[A006530(A053741(n+1)+A016777(n))]`
-/

namespace A142548.P1724607238736904110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053741 (n + 1) + A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142548.P1724607238736904110

namespace A142548

/-- `record[A006530(A053741(n+1)+A016777(n))]` -/
def P1724607238736904110.Spec : Prop :=
  ∀ n, P1724607238736904110.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P15054185772814381486

`record[A006530(A304609(n+1)-A304839(n+1))]`
-/

namespace A142548.P15054185772814381486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (n + 1) - A304839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142548.P15054185772814381486

namespace A142548

/-- `record[A006530(A304609(n+1)-A304839(n+1))]` -/
def P15054185772814381486.Spec : Prop :=
  ∀ n, P15054185772814381486.a n = A142548 (n + 1)

end A142548

/-! ## A142548.P8195993306060339749

`record[A008472(A304609(n+1)-A304839(n+1))]`
-/

namespace A142548.P8195993306060339749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A304609 (n + 1) - A304839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142548.P8195993306060339749

namespace A142548

/-- `record[A008472(A304609(n+1)-A304839(n+1))]` -/
def P8195993306060339749.Spec : Prop :=
  ∀ n, P8195993306060339749.a n = A142548 (n + 1)

end A142548

/-!
# A142549: Primes congruent to 19 mod 53.

The programs for A142549, the canonical program `A142549.P8502377864127700655` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142549 has offset 1).

The definition of A142549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142549.P8502377864127700655

`p?[53*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142549

/-- `p?[53*n+19]` -/
def P8502377864127700655.Spec : Prop :=
  ∀ n, (P8502377864127700655.a n : ℤ) = A142549 (n + 1)

theorem P8502377864127700655.correct : P8502377864127700655.Spec := by
  intro n
  simp only [A142549, Nat.add_sub_cancel]

end A142549

/-! ## A142549.P6320332439919446570

`p?[A139610(n)+A004768(n)]%A017642(n)`
-/

namespace A142549.P6320332439919446570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017642 n)

end

end A142549.P6320332439919446570

namespace A142549

/-- `p?[A139610(n)+A004768(n)]%A017642(n)` -/
def P6320332439919446570.Spec : Prop :=
  ∀ n, P6320332439919446570.a n = A142549 (n + 1)

end A142549

/-! ## A142549.P14682482523383563379

`p?[A139610(n)+A004768(n)]/A283131(n+1)²`
-/

namespace A142549.P14682482523383563379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A004768 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A283131 (n + 1) ^ 2 : ℚ)

end

end A142549.P14682482523383563379

namespace A142549

/-- `p?[A139610(n)+A004768(n)]/A283131(n+1)²` -/
def P14682482523383563379.Spec : Prop :=
  ∀ n, P14682482523383563379.a n = (A142549 (n + 1) : ℚ)

end A142549

/-! ## A142549.P14802315537311665754

`A000027(p?[A139610(n)+A004768(n)])`
-/

namespace A142549.P14802315537311665754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142549.P14802315537311665754

namespace A142549

/-- `A000027(p?[A139610(n)+A004768(n)])` -/
def P14802315537311665754.Spec : Prop :=
  ∀ n, P14802315537311665754.a n = A142549 (n + 1)

end A142549

/-! ## A142549.P9272268049570783838

`record[A020639(A161705(3*n+1)-n)]`
-/

namespace A142549.P9272268049570783838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161705 (3 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142549.P9272268049570783838

namespace A142549

/-- `record[A020639(A161705(3*n+1)-n)]` -/
def P9272268049570783838.Spec : Prop :=
  ∀ n, P9272268049570783838.a n = A142549 (n + 1)

end A142549

/-! ## A142549.P4080701427558889004

`record[A020639(A139610(n)+A004768(n))]`
-/

namespace A142549.P4080701427558889004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139610 n + A004768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142549.P4080701427558889004

namespace A142549

/-- `record[A020639(A139610(n)+A004768(n))]` -/
def P4080701427558889004.Spec : Prop :=
  ∀ n, P4080701427558889004.a n = A142549 (n + 1)

end A142549

/-! ## A142549.P47230015510248924

`A008472(p?[A139610(n)+A004768(n)])`
-/

namespace A142549.P47230015510248924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142549.P47230015510248924

namespace A142549

/-- `A008472(p?[A139610(n)+A004768(n)])` -/
def P47230015510248924.Spec : Prop :=
  ∀ n, P47230015510248924.a n = A142549 (n + 1)

end A142549

/-!
# A142550: Primes congruent to 20 mod 53.

The programs for A142550, the canonical program `A142550.P14879884511883009788` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142550 has offset 1).

The definition of A142550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142550.P14879884511883009788

`p?[53*n+20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142550

/-- `p?[53*n+20]` -/
def P14879884511883009788.Spec : Prop :=
  ∀ n, (P14879884511883009788.a n : ℤ) = A142550 (n + 1)

theorem P14879884511883009788.correct : P14879884511883009788.Spec := by
  intro n
  simp only [A142550, Nat.add_sub_cancel]

end A142550

/-! ## A142550.P4282604112652228682

`p?[A298028(n)+A053741(n)]%A017500(n)`
-/

namespace A142550.P4282604112652228682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017500 n)

end

end A142550.P4282604112652228682

namespace A142550

/-- `p?[A298028(n)+A053741(n)]%A017500(n)` -/
def P4282604112652228682.Spec : Prop :=
  ∀ n, P4282604112652228682.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P11944734662991859090

`p?[A053741(n)+A008585(n)]+A195824(n)%2`
-/

namespace A142550.P11944734662991859090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A195824 n) 2

end

end A142550.P11944734662991859090

namespace A142550

/-- `p?[A053741(n)+A008585(n)]+A195824(n)%2` -/
def P11944734662991859090.Spec : Prop :=
  ∀ n, P11944734662991859090.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P15532823576898181016

`p?[A053741(n)+A008585(n)]/A004768(n)%2`
-/

namespace A142550.P15532823576898181016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008585 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A004768 n) 2 : ℚ)

end

end A142550.P15532823576898181016

namespace A142550

/-- `p?[A053741(n)+A008585(n)]/A004768(n)%2` -/
def P15532823576898181016.Spec : Prop :=
  ∀ n, P15532823576898181016.a n = (A142550 (n + 1) : ℚ)

end A142550

/-! ## A142550.P3714926149745298628

`p?[A053741(n)+A008585(n)]/A005408(n)%2`
-/

namespace A142550.P3714926149745298628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008585 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A005408 n) 2 : ℚ)

end

end A142550.P3714926149745298628

namespace A142550

/-- `p?[A053741(n)+A008585(n)]/A005408(n)%2` -/
def P3714926149745298628.Spec : Prop :=
  ∀ n, P3714926149745298628.a n = (A142550 (n + 1) : ℚ)

end A142550

/-! ## A142550.P8517965554096542162

`A000027(p?[A053741(n)+A008585(n)])`
-/

namespace A142550.P8517965554096542162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P8517965554096542162

namespace A142550

/-- `A000027(p?[A053741(n)+A008585(n)])` -/
def P8517965554096542162.Spec : Prop :=
  ∀ n, P8517965554096542162.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P15431821310403966652

`A000027(p?[A298028(n)+A053741(n)])`
-/

namespace A142550.P15431821310403966652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P15431821310403966652

namespace A142550

/-- `A000027(p?[A298028(n)+A053741(n)])` -/
def P15431821310403966652.Spec : Prop :=
  ∀ n, P15431821310403966652.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P8832630952381633483

`A000027(p?[A215148(n)+A156376(n)])`
-/

namespace A142550.P8832630952381633483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P8832630952381633483

namespace A142550

/-- `A000027(p?[A215148(n)+A156376(n)])` -/
def P8832630952381633483.Spec : Prop :=
  ∀ n, P8832630952381633483.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P5154871091503487

`A000027(p?[A250024(n+1)+A190991(n)])`
-/

namespace A142550.P5154871091503487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P5154871091503487

namespace A142550

/-- `A000027(p?[A250024(n+1)+A190991(n)])` -/
def P5154871091503487.Spec : Prop :=
  ∀ n, P5154871091503487.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P14870691955236543321

`record[A020639(53*(n+1)+20)]`
-/

namespace A142550.P14870691955236543321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * (n + 1) + 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142550.P14870691955236543321

namespace A142550

/-- `record[A020639(53*(n+1)+20)]` -/
def P14870691955236543321.Spec : Prop :=
  ∀ n, P14870691955236543321.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P9503014321305429403

`A000265(p?[A053741(n)+A008585(n)])`
-/

namespace A142550.P9503014321305429403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P9503014321305429403

namespace A142550

/-- `A000265(p?[A053741(n)+A008585(n)])` -/
def P9503014321305429403.Spec : Prop :=
  ∀ n, P9503014321305429403.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P11702223166140092117

`A001414(p?[A053741(n)+A008486(n)])`
-/

namespace A142550.P11702223166140092117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P11702223166140092117

namespace A142550

/-- `A001414(p?[A053741(n)+A008486(n)])` -/
def P11702223166140092117.Spec : Prop :=
  ∀ n, P11702223166140092117.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P16427472415562320151

`A001414(p?[A053741(n)+A008585(n)])`
-/

namespace A142550.P16427472415562320151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P16427472415562320151

namespace A142550

/-- `A001414(p?[A053741(n)+A008585(n)])` -/
def P16427472415562320151.Spec : Prop :=
  ∀ n, P16427472415562320151.a n = A142550 (n + 1)

end A142550

/-! ## A142550.P10090664908612639213

`A007913(p?[A298028(n)+A053741(n)])`
-/

namespace A142550.P10090664908612639213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142550.P10090664908612639213

namespace A142550

/-- `A007913(p?[A298028(n)+A053741(n)])` -/
def P10090664908612639213.Spec : Prop :=
  ∀ n, P10090664908612639213.a n = A142550 (n + 1)

end A142550

/-!
# A142551: Primes congruent to 21 mod 53.

The programs for A142551, the canonical program `A142551.P57321066052564490` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142551 has offset 1).

The definition of A142551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142551.P57321066052564490

`p?[53*n+21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142551

/-- `p?[53*n+21]` -/
def P57321066052564490.Spec : Prop :=
  ∀ n, (P57321066052564490.a n : ℤ) = A142551 (n + 1)

theorem P57321066052564490.correct : P57321066052564490.Spec := by
  intro n
  simp only [A142551, Nat.add_sub_cancel]

end A142551

/-! ## A142551.P7708902711914969063

`A000007(n+1)+p?[A053741(n)+A016777(n)]`
-/

namespace A142551.P7708902711914969063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142551.P7708902711914969063

namespace A142551

/-- `A000007(n+1)+p?[A053741(n)+A016777(n)]` -/
def P7708902711914969063.Spec : Prop :=
  ∀ n, P7708902711914969063.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P13326890786531726318

`p?[A053741(n)+A016777(n)]%A157998(n+1)`
-/

namespace A142551.P13326890786531726318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157998 (n + 1))

end

end A142551.P13326890786531726318

namespace A142551

/-- `p?[A053741(n)+A016777(n)]%A157998(n+1)` -/
def P13326890786531726318.Spec : Prop :=
  ∀ n, P13326890786531726318.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P4733678048749992312

`A001489(n)+p?[A053741(n)+A016777(n)]+n`
-/

namespace A142551.P4733678048749992312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ))

end

end A142551.P4733678048749992312

namespace A142551

/-- `A001489(n)+p?[A053741(n)+A016777(n)]+n` -/
def P4733678048749992312.Spec : Prop :=
  ∀ n, P4733678048749992312.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P14105402009511171808

`p?[A053741(n)+A016777(n)]/(A024000(n)+n)`
-/

namespace A142551.P14105402009511171808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A024000 n + (n : ℤ) : ℚ)

end

end A142551.P14105402009511171808

namespace A142551

/-- `p?[A053741(n)+A016777(n)]/(A024000(n)+n)` -/
def P14105402009511171808.Spec : Prop :=
  ∀ n, P14105402009511171808.a n = (A142551 (n + 1) : ℚ)

end A142551

/-! ## A142551.P11638255025046642750

`A000027(p?[A053741(n)+A016777(n)])`
-/

namespace A142551.P11638255025046642750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P11638255025046642750

namespace A142551

/-- `A000027(p?[A053741(n)+A016777(n)])` -/
def P11638255025046642750.Spec : Prop :=
  ∀ n, P11638255025046642750.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P16843032037334799970

`A000027(p?[A304158(n+1)-A017017(n)])`
-/

namespace A142551.P16843032037334799970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P16843032037334799970

namespace A142551

/-- `A000027(p?[A304158(n+1)-A017017(n)])` -/
def P16843032037334799970.Spec : Prop :=
  ∀ n, P16843032037334799970.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P2866733805190385911

`A000265(p?[A053741(n)+A016777(n)])`
-/

namespace A142551.P2866733805190385911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P2866733805190385911

namespace A142551

/-- `A000265(p?[A053741(n)+A016777(n)])` -/
def P2866733805190385911.Spec : Prop :=
  ∀ n, P2866733805190385911.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P1583493605967439991

`A007913(p?[A053741(n)+A016777(n)])`
-/

namespace A142551.P1583493605967439991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P1583493605967439991

namespace A142551

/-- `A007913(p?[A053741(n)+A016777(n)])` -/
def P1583493605967439991.Spec : Prop :=
  ∀ n, P1583493605967439991.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P9032795755734851724

`A007947(p?[A053741(n)+A016777(n)])`
-/

namespace A142551.P9032795755734851724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P9032795755734851724

namespace A142551

/-- `A007947(p?[A053741(n)+A016777(n)])` -/
def P9032795755734851724.Spec : Prop :=
  ∀ n, P9032795755734851724.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P14339293594746403723

`A008472(p?[A053741(n)+A016777(n)])`
-/

namespace A142551.P14339293594746403723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P14339293594746403723

namespace A142551

/-- `A008472(p?[A053741(n)+A016777(n)])` -/
def P14339293594746403723.Spec : Prop :=
  ∀ n, P14339293594746403723.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P11990863198899264856

`A007913(p?[A304158(n+1)-A017017(n)])`
-/

namespace A142551.P11990863198899264856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P11990863198899264856

namespace A142551

/-- `A007913(p?[A304158(n+1)-A017017(n)])` -/
def P11990863198899264856.Spec : Prop :=
  ∀ n, P11990863198899264856.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P673809711708788521

`A007947(p?[A304158(n+1)-A017017(n)])`
-/

namespace A142551.P673809711708788521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P673809711708788521

namespace A142551

/-- `A007947(p?[A304158(n+1)-A017017(n)])` -/
def P673809711708788521.Spec : Prop :=
  ∀ n, P673809711708788521.a n = A142551 (n + 1)

end A142551

/-! ## A142551.P13576564714791831977

`A125746(p?[A053741(n)+A016777(n)])`
-/

namespace A142551.P13576564714791831977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142551.P13576564714791831977

namespace A142551

/-- `A125746(p?[A053741(n)+A016777(n)])` -/
def P13576564714791831977.Spec : Prop :=
  ∀ n, P13576564714791831977.a n = A142551 (n + 1)

end A142551

/-!
# A142552: Primes congruent to 22 mod 53.

The programs for A142552, the canonical program `A142552.P10742857382744305642` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142552 has offset 1).

The definition of A142552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142552.P10742857382744305642

`p?[53*n-31]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142552

/-- `p?[53*n-31]` -/
def P10742857382744305642.Spec : Prop :=
  ∀ n, P10742857382744305642.a n = A142552 (n + 1)

theorem P10742857382744305642.correct : P10742857382744305642.Spec := by
  intro n
  simp only [A142552, Nat.add_sub_cancel]

end A142552

/-! ## A142552.P3613854396257697663

`or(1, p?[A053741(n)+A016789(n)])`
-/

namespace A142552.P3613854396257697663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142552.P3613854396257697663

namespace A142552

/-- `or(1, p?[A053741(n)+A016789(n)])` -/
def P3613854396257697663.Spec : Prop :=
  ∀ n, P3613854396257697663.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P15969514946042576663

`p?[A053741(n)+A016789(n)]%A016901(n)`
-/

namespace A142552.P15969514946042576663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016901 n)

end

end A142552.P15969514946042576663

namespace A142552

/-- `p?[A053741(n)+A016789(n)]%A016901(n)` -/
def P15969514946042576663.Spec : Prop :=
  ∀ n, P15969514946042576663.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P2313120742012663933

`A000035(2*n)+p?[A053741(n)+A016789(n)]`
-/

namespace A142552.P2313120742012663933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142552.P2313120742012663933

namespace A142552

/-- `A000035(2*n)+p?[A053741(n)+A016789(n)]` -/
def P2313120742012663933.Spec : Prop :=
  ∀ n, P2313120742012663933.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P5643960328889009134

`p?[A053741(n)+A016789(n)]+A130772(n)%2`
-/

namespace A142552.P5643960328889009134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A130772 n) 2

end

end A142552.P5643960328889009134

namespace A142552

/-- `p?[A053741(n)+A016789(n)]+A130772(n)%2` -/
def P5643960328889009134.Spec : Prop :=
  ∀ n, P5643960328889009134.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P2810390076101850264

`p?[A053741(n)+A016789(n)]/(A061800(n)-n)²`
-/

namespace A142552.P2810390076101850264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A061800 n - (n : ℤ)) ^ 2 : ℚ)

end

end A142552.P2810390076101850264

namespace A142552

/-- `p?[A053741(n)+A016789(n)]/(A061800(n)-n)²` -/
def P2810390076101850264.Spec : Prop :=
  ∀ n, P2810390076101850264.a n = (A142552 (n + 1) : ℚ)

end A142552

/-! ## A142552.P11627302542600890389

`p?[A053741(n)+A016789(n)]+A008683(12*n+8)`
-/

namespace A142552.P11627302542600890389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (12 * n + 8)

end

end A142552.P11627302542600890389

namespace A142552

/-- `p?[A053741(n)+A016789(n)]+A008683(12*n+8)` -/
def P11627302542600890389.Spec : Prop :=
  ∀ n, P11627302542600890389.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P14364285254456122257

`(-A133707(n+1)%2)²*p?[A053741(n)+A016789(n)]`
-/

namespace A142552.P14364285254456122257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A133707 (n + 1)) 2 ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142552.P14364285254456122257

namespace A142552

/-- `(-A133707(n+1)%2)²*p?[A053741(n)+A016789(n)]` -/
def P14364285254456122257.Spec : Prop :=
  ∀ n, P14364285254456122257.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P6602719378638290042

`A000027(p?[A304158(n+1)-A017005(n)])`
-/

namespace A142552.P6602719378638290042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142552.P6602719378638290042

namespace A142552

/-- `A000027(p?[A304158(n+1)-A017005(n)])` -/
def P6602719378638290042.Spec : Prop :=
  ∀ n, P6602719378638290042.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P1494277515958148030

`A000265(p?[A053741(n)+A016789(n)])`
-/

namespace A142552.P1494277515958148030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142552.P1494277515958148030

namespace A142552

/-- `A000265(p?[A053741(n)+A016789(n)])` -/
def P1494277515958148030.Spec : Prop :=
  ∀ n, P1494277515958148030.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P2413628496672832862

`A001414(p?[A053741(n)+A016789(n)])`
-/

namespace A142552.P2413628496672832862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142552.P2413628496672832862

namespace A142552

/-- `A001414(p?[A053741(n)+A016789(n)])` -/
def P2413628496672832862.Spec : Prop :=
  ∀ n, P2413628496672832862.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P3288515996098422182

`A007913(p?[A304158(n+1)-A017005(n)])`
-/

namespace A142552.P3288515996098422182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142552.P3288515996098422182

namespace A142552

/-- `A007913(p?[A304158(n+1)-A017005(n)])` -/
def P3288515996098422182.Spec : Prop :=
  ∀ n, P3288515996098422182.a n = A142552 (n + 1)

end A142552

/-! ## A142552.P5022956399657984719

`A007947(p?[A304158(n+1)-A017005(n)])`
-/

namespace A142552.P5022956399657984719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142552.P5022956399657984719

namespace A142552

/-- `A007947(p?[A304158(n+1)-A017005(n)])` -/
def P5022956399657984719.Spec : Prop :=
  ∀ n, P5022956399657984719.a n = A142552 (n + 1)

end A142552

/-!
# A142553: Primes congruent to 23 mod 53.

The programs for A142553, the canonical program `A142553.P16008129457823151344` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142553 has offset 1).

The definition of A142553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142553.P16008129457823151344

`p?[53*n+23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142553

/-- `p?[53*n+23]` -/
def P16008129457823151344.Spec : Prop :=
  ∀ n, (P16008129457823151344.a n : ℤ) = A142553 (n + 1)

theorem P16008129457823151344.correct : P16008129457823151344.Spec := by
  intro n
  simp only [A142553, Nat.add_sub_cancel]

end A142553

/-! ## A142553.P15359262306336633283

`or(1, p?[53*n-30])`
-/

namespace A142553.P15359262306336633283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142553.P15359262306336633283

namespace A142553

/-- `or(1, p?[53*n-30])` -/
def P15359262306336633283.Spec : Prop :=
  ∀ n, P15359262306336633283.a n = A142553 (n + 1)

end A142553

/-! ## A142553.P3886893133667479637

`∑{p}[p?[53*n-30], #]`
-/

namespace A142553.P3886893133667479637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142553.P3886893133667479637

namespace A142553

/-- `∑{p}[p?[53*n-30], #]` -/
def P3886893133667479637.Spec : Prop :=
  ∀ n, (P3886893133667479637.a n : ℤ) = A142553 (n + 1)

end A142553

/-! ## A142553.P17863697095525187488

`p?[53*n-30]-A109017(2*n)`
-/

namespace A142553.P17863697095525187488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A109017 (2 * n)

end

end A142553.P17863697095525187488

namespace A142553

/-- `p?[53*n-30]-A109017(2*n)` -/
def P17863697095525187488.Spec : Prop :=
  ∀ n, P17863697095525187488.a n = A142553 (n + 1)

end A142553

/-! ## A142553.P5389559463617312161

`p?[53*n-30]*A059841(2*n)`
-/

namespace A142553.P5389559463617312161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A059841 (2 * n)

end

end A142553.P5389559463617312161

namespace A142553

/-- `p?[53*n-30]*A059841(2*n)` -/
def P5389559463617312161.Spec : Prop :=
  ∀ n, P5389559463617312161.a n = A142553 (n + 1)

end A142553

/-! ## A142553.P14940269254800956102

`record[A020639(53*n+23)]`
-/

namespace A142553.P14940269254800956102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142553.P14940269254800956102

namespace A142553

/-- `record[A020639(53*n+23)]` -/
def P14940269254800956102.Spec : Prop :=
  ∀ n, P14940269254800956102.a n = A142553 (n + 1)

end A142553

/-! ## A142553.P15814358872002055523

`filter[A155107(2*n+1), A010051(#)]`
-/

namespace A142553.P15814358872002055523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142553.P15814358872002055523

namespace A142553

/-- `filter[A155107(2*n+1), A010051(#)]` -/
def P15814358872002055523.Spec : Prop :=
  ∀ n, P15814358872002055523.a n = A142553 (n + 1)

end A142553

/-!
# A142554: Primes congruent to 24 mod 53.

The programs for A142554, the canonical program `A142554.P5046670377294890160` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142554 has offset 1).

The definition of A142554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142554.P5046670377294890160

`p?[a(n-1)+53]` with `a(0)=24`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142554

/-- `p?[a(n-1)+53]` -/
def P5046670377294890160.Spec : Prop :=
  ∀ n, (P5046670377294890160.a n : ℤ) = A142554 (n + 1)

theorem P5046670377294890160.correct : P5046670377294890160.Spec := by
  intro n
  simp only [A142554, Nat.add_sub_cancel]

end A142554

/-! ## A142554.P3114008676320735539

`p?[xor(1, 53*n-30)]`
-/

namespace A142554.P3114008676320735539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((53 * n : ℤ) - 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142554.P3114008676320735539

namespace A142554

/-- `p?[xor(1, 53*n-30)]` -/
def P3114008676320735539.Spec : Prop :=
  ∀ n, P3114008676320735539.a n = A142554 (n + 1)

end A142554

/-! ## A142554.P17553730372973894695

`p?[n+1-52*(23-n)]`
-/

namespace A142554.P17553730372973894695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 52 * (23 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142554.P17553730372973894695

namespace A142554

/-- `p?[n+1-52*(23-n)]` -/
def P17553730372973894695.Spec : Prop :=
  ∀ n, P17553730372973894695.a n = A142554 (n + 1)

end A142554

/-! ## A142554.P17894099921912319168

`or(1, p?[A053742(n+1)+A016789(n)])`
-/

namespace A142554.P17894099921912319168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142554.P17894099921912319168

namespace A142554

/-- `or(1, p?[A053742(n+1)+A016789(n)])` -/
def P17894099921912319168.Spec : Prop :=
  ∀ n, P17894099921912319168.a n = A142554 (n + 1)

end A142554

/-! ## A142554.P7767836497217335484

`∏{d}[p?[A139610(n+6)+A004768(n)], #]`
-/

namespace A142554.P7767836497217335484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 (n + 6) + A004768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142554.P7767836497217335484

namespace A142554

/-- `∏{d}[p?[A139610(n+6)+A004768(n)], #]` -/
def P7767836497217335484.Spec : Prop :=
  ∀ n, (P7767836497217335484.a n : ℤ) = A142554 (n + 1)

end A142554

/-! ## A142554.P2883679753951810324

`A000265(p?[A155107(2*n+1)+1])`
-/

namespace A142554.P2883679753951810324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142554.P2883679753951810324

namespace A142554

/-- `A000265(p?[A155107(2*n+1)+1])` -/
def P2883679753951810324.Spec : Prop :=
  ∀ n, P2883679753951810324.a n = A142554 (n + 1)

end A142554

/-!
# A142555: Primes congruent to 25 mod 53.

The programs for A142555, the canonical program `A142555.P4054102190725040796` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142555 has offset 1).

The definition of A142555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142555.P4054102190725040796

`p?[53*n-28]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142555

/-- `p?[53*n-28]` -/
def P4054102190725040796.Spec : Prop :=
  ∀ n, P4054102190725040796.a n = A142555 (n + 1)

theorem P4054102190725040796.correct : P4054102190725040796.Spec := by
  intro n
  simp only [A142555, Nat.add_sub_cancel]

end A142555

/-! ## A142555.P17845161262995840188

`∑{p}[p?[A053742(n)+A008585(n)], #]`
-/

namespace A142555.P17845161262995840188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142555.P17845161262995840188

namespace A142555

/-- `∑{p}[p?[A053742(n)+A008585(n)], #]` -/
def P17845161262995840188.Spec : Prop :=
  ∀ n, (P17845161262995840188.a n : ℤ) = A142555 (n + 1)

end A142555

/-! ## A142555.P8216928577553252485

`p?[A053742(n)+A008486(n)]*A057979(4*n)`
-/

namespace A142555.P8216928577553252485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057979 (4 * n)

end

end A142555.P8216928577553252485

namespace A142555

/-- `p?[A053742(n)+A008486(n)]*A057979(4*n)` -/
def P8216928577553252485.Spec : Prop :=
  ∀ n, P8216928577553252485.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P8511840231138434864

`p?[A053742(n)+A008486(n)]%A338070(n+1)`
-/

namespace A142555.P8511840231138434864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A338070 (n + 1))

end

end A142555.P8511840231138434864

namespace A142555

/-- `p?[A053742(n)+A008486(n)]%A338070(n+1)` -/
def P8511840231138434864.Spec : Prop :=
  ∀ n, P8511840231138434864.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P443856140743242935

`p?[A053742(n)+A008486(n)]+n*A000007(n)`
-/

namespace A142555.P443856140743242935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ) * A000007 n

end

end A142555.P443856140743242935

namespace A142555

/-- `p?[A053742(n)+A008486(n)]+n*A000007(n)` -/
def P443856140743242935.Spec : Prop :=
  ∀ n, P443856140743242935.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P14639252433234401385

`p?[A053742(n)+A008585(n)]%A000217(n+6)²`
-/

namespace A142555.P14639252433234401385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000217 (n + 6) ^ 2)

end

end A142555.P14639252433234401385

namespace A142555

/-- `p?[A053742(n)+A008585(n)]%A000217(n+6)²` -/
def P14639252433234401385.Spec : Prop :=
  ∀ n, P14639252433234401385.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P18435548031331607425

`A008620(3*n)/(n+1)*p?[A053742(n)+A008486(n)]`
-/

namespace A142555.P18435548031331607425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (n + 1 : ℚ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A142555.P18435548031331607425

namespace A142555

/-- `A008620(3*n)/(n+1)*p?[A053742(n)+A008486(n)]` -/
def P18435548031331607425.Spec : Prop :=
  ∀ n, P18435548031331607425.a n = (A142555 (n + 1) : ℚ)

end A142555

/-! ## A142555.P17007832961269268324

`A000027(p?[A053742(n)+A008486(n)])`
-/

namespace A142555.P17007832961269268324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142555.P17007832961269268324

namespace A142555

/-- `A000027(p?[A053742(n)+A008486(n)])` -/
def P17007832961269268324.Spec : Prop :=
  ∀ n, P17007832961269268324.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P3790902808809397035

`A000265(p?[A053742(n)+A008486(n)])`
-/

namespace A142555.P3790902808809397035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142555.P3790902808809397035

namespace A142555

/-- `A000265(p?[A053742(n)+A008486(n)])` -/
def P3790902808809397035.Spec : Prop :=
  ∀ n, P3790902808809397035.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P11166486730255517994

`A000265(p?[A053742(n)+A008585(n)])`
-/

namespace A142555.P11166486730255517994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142555.P11166486730255517994

namespace A142555

/-- `A000265(p?[A053742(n)+A008585(n)])` -/
def P11166486730255517994.Spec : Prop :=
  ∀ n, P11166486730255517994.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P8567269652454834219

`A001414(p?[A053742(n)+A008486(n)])`
-/

namespace A142555.P8567269652454834219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142555.P8567269652454834219

namespace A142555

/-- `A001414(p?[A053742(n)+A008486(n)])` -/
def P8567269652454834219.Spec : Prop :=
  ∀ n, P8567269652454834219.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P14238068581962603379

`A008472(p?[A053742(n)+A008486(n)])`
-/

namespace A142555.P14238068581962603379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142555.P14238068581962603379

namespace A142555

/-- `A008472(p?[A053742(n)+A008486(n)])` -/
def P14238068581962603379.Spec : Prop :=
  ∀ n, P14238068581962603379.a n = A142555 (n + 1)

end A142555

/-! ## A142555.P16797296035682616799

`A034699(p?[A053742(n)+A008486(n)])`
-/

namespace A142555.P16797296035682616799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142555.P16797296035682616799

namespace A142555

/-- `A034699(p?[A053742(n)+A008486(n)])` -/
def P16797296035682616799.Spec : Prop :=
  ∀ n, P16797296035682616799.a n = A142555 (n + 1)

end A142555

/-!
# A142556: Primes congruent to 26 mod 53.

The programs for A142556, the canonical program `A142556.P7315416885756247894` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142556 has offset 1).

The definition of A142556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142556.P7315416885756247894

`p?[53*n+26]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142556

/-- `p?[53*n+26]` -/
def P7315416885756247894.Spec : Prop :=
  ∀ n, (P7315416885756247894.a n : ℤ) = A142556 (n + 1)

theorem P7315416885756247894.correct : P7315416885756247894.Spec := by
  intro n
  simp only [A142556, Nat.add_sub_cancel]

end A142556

/-! ## A142556.P6307032770445524504

`p?[A053742(n)+A016777(n)]%A017104(n)`
-/

namespace A142556.P6307032770445524504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017104 n)

end

end A142556.P6307032770445524504

namespace A142556

/-- `p?[A053742(n)+A016777(n)]%A017104(n)` -/
def P6307032770445524504.Spec : Prop :=
  ∀ n, P6307032770445524504.a n = A142556 (n + 1)

end A142556

/-! ## A142556.P5362175336014610033

`p?[A053742(n)+A016777(n)]/A025455(n)!`
-/

namespace A142556.P5362175336014610033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (A025455 n).toNat : ℚ)

end

end A142556.P5362175336014610033

namespace A142556

/-- `p?[A053742(n)+A016777(n)]/A025455(n)!` -/
def P5362175336014610033.Spec : Prop :=
  ∀ n, P5362175336014610033.a n = (A142556 (n + 1) : ℚ)

end A142556

/-! ## A142556.P14630423001998806166

`p?[A053742(n)+A016777(n)]/A309873(n+1)²`
-/

namespace A142556.P14630423001998806166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A309873 (n + 1) ^ 2 : ℚ)

end

end A142556.P14630423001998806166

namespace A142556

/-- `p?[A053742(n)+A016777(n)]/A309873(n+1)²` -/
def P14630423001998806166.Spec : Prop :=
  ∀ n, P14630423001998806166.a n = (A142556 (n + 1) : ℚ)

end A142556

/-! ## A142556.P4068930957313369160

`A000027(p?[A053742(n)+A016777(n)])`
-/

namespace A142556.P4068930957313369160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142556.P4068930957313369160

namespace A142556

/-- `A000027(p?[A053742(n)+A016777(n)])` -/
def P4068930957313369160.Spec : Prop :=
  ∀ n, P4068930957313369160.a n = A142556 (n + 1)

end A142556

/-! ## A142556.P8067675877747972073

`A000265(p?[A053742(n)+A016777(n)])`
-/

namespace A142556.P8067675877747972073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142556.P8067675877747972073

namespace A142556

/-- `A000265(p?[A053742(n)+A016777(n)])` -/
def P8067675877747972073.Spec : Prop :=
  ∀ n, P8067675877747972073.a n = A142556 (n + 1)

end A142556

/-! ## A142556.P15046638475472528973

`A001414(p?[A053742(n)+A016777(n)])`
-/

namespace A142556.P15046638475472528973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142556.P15046638475472528973

namespace A142556

/-- `A001414(p?[A053742(n)+A016777(n)])` -/
def P15046638475472528973.Spec : Prop :=
  ∀ n, P15046638475472528973.a n = A142556 (n + 1)

end A142556

/-! ## A142556.P6867528182582750255

`A007913(p?[A053742(n)+A016777(n)])`
-/

namespace A142556.P6867528182582750255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142556.P6867528182582750255

namespace A142556

/-- `A007913(p?[A053742(n)+A016777(n)])` -/
def P6867528182582750255.Spec : Prop :=
  ∀ n, P6867528182582750255.a n = A142556 (n + 1)

end A142556

/-! ## A142556.P3331049552501140490

`A007947(p?[A053742(n)+A016777(n)])`
-/

namespace A142556.P3331049552501140490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142556.P3331049552501140490

namespace A142556

/-- `A007947(p?[A053742(n)+A016777(n)])` -/
def P3331049552501140490.Spec : Prop :=
  ∀ n, P3331049552501140490.a n = A142556 (n + 1)

end A142556

/-! ## A142556.P3063890768772854103

`record[A020639(A053742(n+1)+A016777(n+1))]`
-/

namespace A142556.P3063890768772854103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 (n + 1) + A016777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142556.P3063890768772854103

namespace A142556

/-- `record[A020639(A053742(n+1)+A016777(n+1))]` -/
def P3063890768772854103.Spec : Prop :=
  ∀ n, P3063890768772854103.a n = A142556 (n + 1)

end A142556

/-!
# A142557: Primes congruent to 27 mod 53.

The programs for A142557, the canonical program `A142557.P17053330527406815909` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142557 has offset 1).

The definition of A142557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142557.P17053330527406815909

`p?[53*n-26]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142557

/-- `p?[53*n-26]` -/
def P17053330527406815909.Spec : Prop :=
  ∀ n, P17053330527406815909.a n = A142557 (n + 1)

theorem P17053330527406815909.correct : P17053330527406815909.Spec := by
  intro n
  simp only [A142557, Nat.add_sub_cancel]

end A142557

/-! ## A142557.P14127446817472337245

`p?[A053742(n)+A016789(n)]%A017259(n)`
-/

namespace A142557.P14127446817472337245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017259 n)

end

end A142557.P14127446817472337245

namespace A142557

/-- `p?[A053742(n)+A016789(n)]%A017259(n)` -/
def P14127446817472337245.Spec : Prop :=
  ∀ n, P14127446817472337245.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P7982183482561397912

`A188510(2*n)+p?[A053742(n)+A016789(n)]`
-/

namespace A142557.P7982183482561397912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142557.P7982183482561397912

namespace A142557

/-- `A188510(2*n)+p?[A053742(n)+A016789(n)]` -/
def P7982183482561397912.Spec : Prop :=
  ∀ n, P7982183482561397912.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P15548248199541175077

`p?[A053742(n)+A016789(n)]+A008586(n)%2`
-/

namespace A142557.P15548248199541175077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A008586 n) 2

end

end A142557.P15548248199541175077

namespace A142557

/-- `p?[A053742(n)+A016789(n)]+A008586(n)%2` -/
def P15548248199541175077.Spec : Prop :=
  ∀ n, P15548248199541175077.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P17506193860118337283

`A014963(6*(n+2))*p?[A053742(n)+A016789(n)]`
-/

namespace A142557.P17506193860118337283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142557.P17506193860118337283

namespace A142557

/-- `A014963(6*(n+2))*p?[A053742(n)+A016789(n)]` -/
def P17506193860118337283.Spec : Prop :=
  ∀ n, P17506193860118337283.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P17254039827738471183

`A023219(n+1)%2*p?[A053742(n)+A016789(n)]`
-/

namespace A142557.P17254039827738471183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023219 (n + 1)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142557.P17254039827738471183

namespace A142557

/-- `A023219(n+1)%2*p?[A053742(n)+A016789(n)]` -/
def P17254039827738471183.Spec : Prop :=
  ∀ n, P17254039827738471183.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P13153065029326523311

`A284382(n+1)%2*p?[A053742(n)+A016789(n)]`
-/

namespace A142557.P13153065029326523311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284382 (n + 1)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142557.P13153065029326523311

namespace A142557

/-- `A284382(n+1)%2*p?[A053742(n)+A016789(n)]` -/
def P13153065029326523311.Spec : Prop :=
  ∀ n, P13153065029326523311.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P2015538321313862141

`p?[A053742(n)+A016789(n)]+((2*n)^4)%A034444(n+1)`
-/

namespace A142557.P2015538321313862141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod ((2 * n) ^ 4 : ℤ) (A034444 (n + 1))

end

end A142557.P2015538321313862141

namespace A142557

/-- `p?[A053742(n)+A016789(n)]+((2*n)^4)%A034444(n+1)` -/
def P2015538321313862141.Spec : Prop :=
  ∀ n, P2015538321313862141.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P2025914039532156850

`A000027(p?[A053742(n)+A016789(n)])`
-/

namespace A142557.P2025914039532156850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P2025914039532156850

namespace A142557

/-- `A000027(p?[A053742(n)+A016789(n)])` -/
def P2025914039532156850.Spec : Prop :=
  ∀ n, P2025914039532156850.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P1546954717709030949

`A000265(p?[A014682(n)+A008607(n)])`
-/

namespace A142557.P1546954717709030949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P1546954717709030949

namespace A142557

/-- `A000265(p?[A014682(n)+A008607(n)])` -/
def P1546954717709030949.Spec : Prop :=
  ∀ n, P1546954717709030949.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P17526065475608116450

`A007947(p?[A014682(n)+A008607(n)])`
-/

namespace A142557.P17526065475608116450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P17526065475608116450

namespace A142557

/-- `A007947(p?[A014682(n)+A008607(n)])` -/
def P17526065475608116450.Spec : Prop :=
  ∀ n, P17526065475608116450.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P15065594873557617581

`A000265(p?[A053742(n)+A016789(n)])`
-/

namespace A142557.P15065594873557617581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P15065594873557617581

namespace A142557

/-- `A000265(p?[A053742(n)+A016789(n)])` -/
def P15065594873557617581.Spec : Prop :=
  ∀ n, P15065594873557617581.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P13676301784942936455

`A001414(p?[A053742(n)+A016789(n)])`
-/

namespace A142557.P13676301784942936455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P13676301784942936455

namespace A142557

/-- `A001414(p?[A053742(n)+A016789(n)])` -/
def P13676301784942936455.Spec : Prop :=
  ∀ n, P13676301784942936455.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P11681733431031810406

`A007913(p?[A053742(n)+A016789(n)])`
-/

namespace A142557.P11681733431031810406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P11681733431031810406

namespace A142557

/-- `A007913(p?[A053742(n)+A016789(n)])` -/
def P11681733431031810406.Spec : Prop :=
  ∀ n, P11681733431031810406.a n = A142557 (n + 1)

end A142557

/-! ## A142557.P7964475832688643947

`A007947(p?[A053742(n)+A016789(n)])`
-/

namespace A142557.P7964475832688643947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142557.P7964475832688643947

namespace A142557

/-- `A007947(p?[A053742(n)+A016789(n)])` -/
def P7964475832688643947.Spec : Prop :=
  ∀ n, P7964475832688643947.a n = A142557 (n + 1)

end A142557

/-!
# A142558: Primes congruent to 28 mod 53.

The programs for A142558, the canonical program `A142558.P15611946228353489870` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142558 has offset 1).

The definition of A142558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142558.P15611946228353489870

`p?[53*n+28]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142558

/-- `p?[53*n+28]` -/
def P15611946228353489870.Spec : Prop :=
  ∀ n, (P15611946228353489870.a n : ℤ) = A142558 (n + 1)

theorem P15611946228353489870.correct : P15611946228353489870.Spec := by
  intro n
  simp only [A142558, Nat.add_sub_cancel]

end A142558

/-! ## A142558.P4892827336290924689

`∑{p}[p?[A053742(n)+A016777(n)+2], #]`
-/

namespace A142558.P4892827336290924689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142558.P4892827336290924689

namespace A142558

/-- `∑{p}[p?[A053742(n)+A016777(n)+2], #]` -/
def P4892827336290924689.Spec : Prop :=
  ∀ n, (P4892827336290924689.a n : ℤ) = A142558 (n + 1)

end A142558

/-! ## A142558.P7911938445907837308

`∏{p}[p?[A053741(n)+A016777(n)+7], #]`
-/

namespace A142558.P7911938445907837308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A016777 n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142558.P7911938445907837308

namespace A142558

/-- `∏{p}[p?[A053741(n)+A016777(n)+7], #]` -/
def P7911938445907837308.Spec : Prop :=
  ∀ n, (P7911938445907837308.a n : ℤ) = A142558 (n + 1)

end A142558

/-! ## A142558.P5744754768978347856

`abs(2-p?[A158071(n+3)-A017461(n)])+2`
-/

namespace A142558.P5744754768978347856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 3) - A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A142558.P5744754768978347856

namespace A142558

/-- `abs(2-p?[A158071(n+3)-A017461(n)])+2` -/
def P5744754768978347856.Spec : Prop :=
  ∀ n, P5744754768978347856.a n = A142558 (n + 1)

end A142558

/-! ## A142558.P8605634705842815576

`A000027(p?[A053742(n+1)+A016777(n)+5]+1)-1`
-/

namespace A142558.P8605634705842815576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 1) + A016777 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 1

end

end A142558.P8605634705842815576

namespace A142558

/-- `A000027(p?[A053742(n+1)+A016777(n)+5]+1)-1` -/
def P8605634705842815576.Spec : Prop :=
  ∀ n, P8605634705842815576.a n = A142558 (n + 1)

end A142558

/-! ## A142558.P12428094232067699411

`A007913(p?[A239128(n+1)+A139607(n)-10])`
-/

namespace A142558.P12428094232067699411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142558.P12428094232067699411

namespace A142558

/-- `A007913(p?[A239128(n+1)+A139607(n)-10])` -/
def P12428094232067699411.Spec : Prop :=
  ∀ n, P12428094232067699411.a n = A142558 (n + 1)

end A142558

/-! ## A142558.P13998522202895503442

`A008472(p?[A239128(n+1)+A139607(n)-10])`
-/

namespace A142558.P13998522202895503442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142558.P13998522202895503442

namespace A142558

/-- `A008472(p?[A239128(n+1)+A139607(n)-10])` -/
def P13998522202895503442.Spec : Prop :=
  ∀ n, P13998522202895503442.a n = A142558 (n + 1)

end A142558

/-!
# A142559: Primes congruent to 29 mod 53.

The programs for A142559, the canonical program `A142559.P8067734731705167456` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142559 has offset 1).

The definition of A142559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142559.P8067734731705167456

`p?[53*n-24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142559

/-- `p?[53*n-24]` -/
def P8067734731705167456.Spec : Prop :=
  ∀ n, P8067734731705167456.a n = A142559 (n + 1)

theorem P8067734731705167456.correct : P8067734731705167456.Spec := by
  intro n
  simp only [A142559, Nat.add_sub_cancel]

end A142559

/-! ## A142559.P5520614499470007623

`p?[A053742(n)+A016777(n)+3]%A017513(n)`
-/

namespace A142559.P5520614499470007623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017513 n)

end

end A142559.P5520614499470007623

namespace A142559

/-- `p?[A053742(n)+A016777(n)+3]%A017513(n)` -/
def P5520614499470007623.Spec : Prop :=
  ∀ n, P5520614499470007623.a n = A142559 (n + 1)

end A142559

/-! ## A142559.P1651936912001905820

`p?[A161714(n+1)+A008607(n)]*A325470(2*n+1)`
-/

namespace A142559.P1651936912001905820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (n + 1) + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A325470 (2 * n + 1)

end

end A142559.P1651936912001905820

namespace A142559

/-- `p?[A161714(n+1)+A008607(n)]*A325470(2*n+1)` -/
def P1651936912001905820.Spec : Prop :=
  ∀ n, P1651936912001905820.a n = A142559 (n + 1)

end A142559

/-! ## A142559.P323074598723316133

`record[A020639(A155107(2*(n+1))-1)]`
-/

namespace A142559.P323074598723316133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155107 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142559.P323074598723316133

namespace A142559

/-- `record[A020639(A155107(2*(n+1))-1)]` -/
def P323074598723316133.Spec : Prop :=
  ∀ n, P323074598723316133.a n = A142559 (n + 1)

end A142559

/-! ## A142559.P3611524427864419849

`record[A020639(2*A154267(n)-(n+1))]`
-/

namespace A142559.P3611524427864419849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A154267 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142559.P3611524427864419849

namespace A142559

/-- `record[A020639(2*A154267(n)-(n+1))]` -/
def P3611524427864419849.Spec : Prop :=
  ∀ n, P3611524427864419849.a n = A142559 (n + 1)

end A142559

/-! ## A142559.P1818596827534522592

`record[A020639(A053742(n)+A016777(n)+3)]`
-/

namespace A142559.P1818596827534522592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 n + A016777 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142559.P1818596827534522592

namespace A142559

/-- `record[A020639(A053742(n)+A016777(n)+3)]` -/
def P1818596827534522592.Spec : Prop :=
  ∀ n, P1818596827534522592.a n = A142559 (n + 1)

end A142559

/-!
# A142560: Primes congruent to 30 mod 53.

The programs for A142560, the canonical program `A142560.P2547294110501529911` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142560 has offset 1).

The definition of A142560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142560.P2547294110501529911

`p?[53*n-23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142560

/-- `p?[53*n-23]` -/
def P2547294110501529911.Spec : Prop :=
  ∀ n, P2547294110501529911.a n = A142560 (n + 1)

theorem P2547294110501529911.correct : P2547294110501529911.Spec := by
  intro n
  simp only [A142560, Nat.add_sub_cancel]

end A142560

/-! ## A142560.P4476556978442872174

`or(1, p?[53*n+83])`
-/

namespace A142560.P4476556978442872174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 83

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142560.P4476556978442872174

namespace A142560

/-- `or(1, p?[53*n+83])` -/
def P4476556978442872174.Spec : Prop :=
  ∀ n, (P4476556978442872174.a n : ℤ) = A142560 (n + 1)

end A142560

/-! ## A142560.P14142364683805375881

`A000007(n+1)+p?[53*n+83]`
-/

namespace A142560.P14142364683805375881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 83

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142560.P14142364683805375881

namespace A142560

/-- `A000007(n+1)+p?[53*n+83]` -/
def P14142364683805375881.Spec : Prop :=
  ∀ n, P14142364683805375881.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P3931559531316245354

`p?[53*n+83]*A239633(Δ[A290561(n)])`
-/

namespace A142560.P3931559531316245354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 83

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A239633 (f2 (n + 1) - f2 n).toNat

end

end A142560.P3931559531316245354

namespace A142560

/-- `p?[53*n+83]*A239633(Δ[A290561(n)])` -/
def P3931559531316245354.Spec : Prop :=
  ∀ n, P3931559531316245354.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P692203276743936180

`record[A006530(53*n+83)]`
-/

namespace A142560.P692203276743936180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (53 * n + 83)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142560.P692203276743936180

namespace A142560

/-- `record[A006530(53*n+83)]` -/
def P692203276743936180.Spec : Prop :=
  ∀ n, P692203276743936180.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P1620881447866512978

`record[A020639(53*n+83)]`
-/

namespace A142560.P1620881447866512978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * n + 83)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142560.P1620881447866512978

namespace A142560

/-- `record[A020639(53*n+83)]` -/
def P1620881447866512978.Spec : Prop :=
  ∀ n, P1620881447866512978.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P18079381855125873186

`filter[A155107(2*(n+1)), A010051(#)]`
-/

namespace A142560.P18079381855125873186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142560.P18079381855125873186

namespace A142560

/-- `filter[A155107(2*(n+1)), A010051(#)]` -/
def P18079381855125873186.Spec : Prop :=
  ∀ n, P18079381855125873186.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P1591499123151579982

`filter[A155107(2*(n+1)), A355937(#)]`
-/

namespace A142560.P1591499123151579982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142560.P1591499123151579982

namespace A142560

/-- `filter[A155107(2*(n+1)), A355937(#)]` -/
def P1591499123151579982.Spec : Prop :=
  ∀ n, P1591499123151579982.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P6718315985148908382

`filter[A155107(2*(n+1)), A257531(#)]`
-/

namespace A142560.P6718315985148908382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A142560.P6718315985148908382

namespace A142560

/-- `filter[A155107(2*(n+1)), A257531(#)]` -/
def P6718315985148908382.Spec : Prop :=
  ∀ n, P6718315985148908382.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P14359001009255904123

`filter[A155107(2*(n+1)), A302777(#)]`
-/

namespace A142560.P14359001009255904123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142560.P14359001009255904123

namespace A142560

/-- `filter[A155107(2*(n+1)), A302777(#)]` -/
def P14359001009255904123.Spec : Prop :=
  ∀ n, P14359001009255904123.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P13212034984053283210

`filter[A155107(2*(n+1)), A323153(#)]`
-/

namespace A142560.P13212034984053283210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142560.P13212034984053283210

namespace A142560

/-- `filter[A155107(2*(n+1)), A323153(#)]` -/
def P13212034984053283210.Spec : Prop :=
  ∀ n, P13212034984053283210.a n = A142560 (n + 1)

end A142560

/-! ## A142560.P17007204932033508708

`filter[A155107(2*(n+1)), A351957(#)]`
-/

namespace A142560.P17007204932033508708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142560.P17007204932033508708

namespace A142560

/-- `filter[A155107(2*(n+1)), A351957(#)]` -/
def P17007204932033508708.Spec : Prop :=
  ∀ n, P17007204932033508708.a n = A142560 (n + 1)

end A142560

/-!
# A142561: Primes congruent to 31 mod 53.

The programs for A142561, the canonical program `A142561.P5495587934823750673` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142561 has offset 1).

The definition of A142561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1528 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142561.P5495587934823750673

`p?[53*n+31]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142561

/-- `p?[53*n+31]` -/
def P5495587934823750673.Spec : Prop :=
  ∀ n, (P5495587934823750673.a n : ℤ) = A142561 (n + 1)

theorem P5495587934823750673.correct : P5495587934823750673.Spec := by
  intro n
  simp only [A142561, Nat.add_sub_cancel]

end A142561

/-! ## A142561.P2730250652920036448

`or(1, p?[A248572(n+1)+A103214(n)])`
-/

namespace A142561.P2730250652920036448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142561.P2730250652920036448

namespace A142561

/-- `or(1, p?[A248572(n+1)+A103214(n)])` -/
def P2730250652920036448.Spec : Prop :=
  ∀ n, P2730250652920036448.a n = A142561 (n + 1)

end A142561

/-! ## A142561.P7039195994374791304

`∑{p}[p?[A053742(n)+A016777(n)+5], #]`
-/

namespace A142561.P7039195994374791304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142561.P7039195994374791304

namespace A142561

/-- `∑{p}[p?[A053742(n)+A016777(n)+5], #]` -/
def P7039195994374791304.Spec : Prop :=
  ∀ n, (P7039195994374791304.a n : ℤ) = A142561 (n + 1)

end A142561

/-! ## A142561.P6400870169993047172

`p?[A248572(n+1)+A103214(n)]/A033999(n)²`
-/

namespace A142561.P6400870169993047172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + A103214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A142561.P6400870169993047172

namespace A142561

/-- `p?[A248572(n+1)+A103214(n)]/A033999(n)²` -/
def P6400870169993047172.Spec : Prop :=
  ∀ n, P6400870169993047172.a n = (A142561 (n + 1) : ℚ)

end A142561

/-! ## A142561.P11259346129907545275

`record[A006530(53*n+31)]`
-/

namespace A142561.P11259346129907545275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (53 * n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142561.P11259346129907545275

namespace A142561

/-- `record[A006530(53*n+31)]` -/
def P11259346129907545275.Spec : Prop :=
  ∀ n, P11259346129907545275.a n = A142561 (n + 1)

end A142561

/-! ## A142561.P8105532968483811340

`record[A020639(53*n+31)]`
-/

namespace A142561.P8105532968483811340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142561.P8105532968483811340

namespace A142561

/-- `record[A020639(53*n+31)]` -/
def P8105532968483811340.Spec : Prop :=
  ∀ n, P8105532968483811340.a n = A142561 (n + 1)

end A142561

/-! ## A142561.P11438780052797831191

`p?[A248572(n+1)+A103214(n)]%A298687(n+1)`
-/

namespace A142561.P11438780052797831191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A298687 (n + 1))

end

end A142561.P11438780052797831191

namespace A142561

/-- `p?[A248572(n+1)+A103214(n)]%A298687(n+1)` -/
def P11438780052797831191.Spec : Prop :=
  ∀ n, P11438780052797831191.a n = A142561 (n + 1)

end A142561

/-!
# A142562: Primes congruent to 32 mod 53.

The programs for A142562, the canonical program `A142562.P3809062214029627843` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142562 has offset 1).

The definition of A142562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142562.P3809062214029627843

`p?[53*n-21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142562

/-- `p?[53*n-21]` -/
def P3809062214029627843.Spec : Prop :=
  ∀ n, P3809062214029627843.a n = A142562 (n + 1)

theorem P3809062214029627843.correct : P3809062214029627843.Spec := by
  intro n
  simp only [A142562, Nat.add_sub_cancel]

end A142562

/-! ## A142562.P5294594612504594896

`A000007(n+1)+p?[A102439(n)+A016969(n)-30]`
-/

namespace A142562.P5294594612504594896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n + A016969 n - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142562.P5294594612504594896

namespace A142562

/-- `A000007(n+1)+p?[A102439(n)+A016969(n)-30]` -/
def P5294594612504594896.Spec : Prop :=
  ∀ n, P5294594612504594896.a n = A142562 (n + 1)

end A142562

/-! ## A142562.P10458443681215021239

`∑{p}[p?[A053742(n)+A016777(n)+6], #]`
-/

namespace A142562.P10458443681215021239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A016777 n + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142562.P10458443681215021239

namespace A142562

/-- `∑{p}[p?[A053742(n)+A016777(n)+6], #]` -/
def P10458443681215021239.Spec : Prop :=
  ∀ n, (P10458443681215021239.a n : ℤ) = A142562 (n + 1)

end A142562

/-! ## A142562.P9333622191442656021

`or(1, p?[A161714(n+3)+A008607(n)])`
-/

namespace A142562.P9333622191442656021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (n + 3) + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142562.P9333622191442656021

namespace A142562

/-- `or(1, p?[A161714(n+3)+A008607(n)])` -/
def P9333622191442656021.Spec : Prop :=
  ∀ n, P9333622191442656021.a n = A142562 (n + 1)

end A142562

/-! ## A142562.P14392280980284645686

`A340774(p?[A257645(3*n+1)+8*n+3])`
-/

namespace A142562.P14392280980284645686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (3 * n + 1) + (8 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340774 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142562.P14392280980284645686

namespace A142562

/-- `A340774(p?[A257645(3*n+1)+8*n+3])` -/
def P14392280980284645686.Spec : Prop :=
  ∀ n, P14392280980284645686.a n = A142562 (n + 1)

end A142562

/-!
# A142563: Primes congruent to 33 mod 53.

The programs for A142563, the canonical program `A142563.P12359353660996850255` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142563 has offset 1).

The definition of A142563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142563.P12359353660996850255

`p?[53*n-20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142563

/-- `p?[53*n-20]` -/
def P12359353660996850255.Spec : Prop :=
  ∀ n, P12359353660996850255.a n = A142563 (n + 1)

theorem P12359353660996850255.correct : P12359353660996850255.Spec := by
  intro n
  simp only [A142563, Nat.add_sub_cancel]

end A142563

/-! ## A142563.P11796319815362781735

`or(1, p?[A304839(n+1)+A139610(n)])`
-/

namespace A142563.P11796319815362781735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142563.P11796319815362781735

namespace A142563

/-- `or(1, p?[A304839(n+1)+A139610(n)])` -/
def P11796319815362781735.Spec : Prop :=
  ∀ n, P11796319815362781735.a n = A142563 (n + 1)

end A142563

/-! ## A142563.P11546427964826937698

`p?[A304839(n+1)+A139610(n)]%A017117(n)`
-/

namespace A142563.P11546427964826937698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017117 n)

end

end A142563.P11546427964826937698

namespace A142563

/-- `p?[A304839(n+1)+A139610(n)]%A017117(n)` -/
def P11546427964826937698.Spec : Prop :=
  ∀ n, P11546427964826937698.a n = A142563 (n + 1)

end A142563

/-! ## A142563.P1929339975867867170

`A000007(n+1)+p?[A304839(n+1)+A139610(n)]`
-/

namespace A142563.P1929339975867867170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142563.P1929339975867867170

namespace A142563

/-- `A000007(n+1)+p?[A304839(n+1)+A139610(n)]` -/
def P1929339975867867170.Spec : Prop :=
  ∀ n, P1929339975867867170.a n = A142563 (n + 1)

end A142563

/-! ## A142563.P11405497402169290106

`A000027(p?[A304839(n+1)+A139610(n)])`
-/

namespace A142563.P11405497402169290106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142563.P11405497402169290106

namespace A142563

/-- `A000027(p?[A304839(n+1)+A139610(n)])` -/
def P11405497402169290106.Spec : Prop :=
  ∀ n, P11405497402169290106.a n = A142563 (n + 1)

end A142563

/-! ## A142563.P10174656370099053355

`A001414(p?[A304839(n+1)+A139610(n)])`
-/

namespace A142563.P10174656370099053355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142563.P10174656370099053355

namespace A142563

/-- `A001414(p?[A304839(n+1)+A139610(n)])` -/
def P10174656370099053355.Spec : Prop :=
  ∀ n, P10174656370099053355.a n = A142563 (n + 1)

end A142563

/-! ## A142563.P6441004573479902679

`A007913(p?[A304839(n+1)+A139610(n)])`
-/

namespace A142563.P6441004573479902679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142563.P6441004573479902679

namespace A142563

/-- `A007913(p?[A304839(n+1)+A139610(n)])` -/
def P6441004573479902679.Spec : Prop :=
  ∀ n, P6441004573479902679.a n = A142563 (n + 1)

end A142563

/-!
# A142564: Primes congruent to 34 mod 53.

The programs for A142564, the canonical program `A142564.P501766830947275686` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142564 has offset 1).

The definition of A142564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142564.P501766830947275686

`p?[53*n-19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142564

/-- `p?[53*n-19]` -/
def P501766830947275686.Spec : Prop :=
  ∀ n, P501766830947275686.a n = A142564 (n + 1)

theorem P501766830947275686.correct : P501766830947275686.Spec := by
  intro n
  simp only [A142564, Nat.add_sub_cancel]

end A142564

/-! ## A142564.P15575506755603045727

`p?[A239128(n+1)+A139607(n)-4]%A002997(n+1)`
-/

namespace A142564.P15575506755603045727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002997 (n + 1))

end

end A142564.P15575506755603045727

namespace A142564

/-- `p?[A239128(n+1)+A139607(n)-4]%A002997(n+1)` -/
def P15575506755603045727.Spec : Prop :=
  ∀ n, P15575506755603045727.a n = A142564 (n + 1)

end A142564

/-! ## A142564.P17402220173257485882

`record[A006530(A304609(n+2)-A004771(n+1))]`
-/

namespace A142564.P17402220173257485882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (n + 2) - A004771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142564.P17402220173257485882

namespace A142564

/-- `record[A006530(A304609(n+2)-A004771(n+1))]` -/
def P17402220173257485882.Spec : Prop :=
  ∀ n, P17402220173257485882.a n = A142564 (n + 1)

end A142564

/-! ## A142564.P12942776704088813364

`record[A020639(A304609(n+2)-A004771(n+1))]`
-/

namespace A142564.P12942776704088813364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304609 (n + 2) - A004771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142564.P12942776704088813364

namespace A142564

/-- `record[A020639(A304609(n+2)-A004771(n+1))]` -/
def P12942776704088813364.Spec : Prop :=
  ∀ n, P12942776704088813364.a n = A142564 (n + 1)

end A142564

/-! ## A142564.P2670958426423810183

`A007913(p?[A239128(n+1)+A139607(n)-4])`
-/

namespace A142564.P2670958426423810183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142564.P2670958426423810183

namespace A142564

/-- `A007913(p?[A239128(n+1)+A139607(n)-4])` -/
def P2670958426423810183.Spec : Prop :=
  ∀ n, P2670958426423810183.a n = A142564 (n + 1)

end A142564

/-! ## A142564.P12424330879831536792

`A008472(p?[A239128(n+1)+A139607(n)-4])`
-/

namespace A142564.P12424330879831536792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142564.P12424330879831536792

namespace A142564

/-- `A008472(p?[A239128(n+1)+A139607(n)-4])` -/
def P12424330879831536792.Spec : Prop :=
  ∀ n, P12424330879831536792.a n = A142564 (n + 1)

end A142564

/-! ## A142564.P14998315498059772064

`A052410(p?[A239128(n+1)+A139607(n)-4])`
-/

namespace A142564.P14998315498059772064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142564.P14998315498059772064

namespace A142564

/-- `A052410(p?[A239128(n+1)+A139607(n)-4])` -/
def P14998315498059772064.Spec : Prop :=
  ∀ n, P14998315498059772064.a n = A142564 (n + 1)

end A142564

/-!
# A142565: Primes congruent to 35 mod 53.

The programs for A142565, the canonical program `A142565.P15807843790863738585` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142565 has offset 1).

The definition of A142565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142565.P15807843790863738585

`p?[53*n-18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142565

/-- `p?[53*n-18]` -/
def P15807843790863738585.Spec : Prop :=
  ∀ n, P15807843790863738585.a n = A142565 (n + 1)

theorem P15807843790863738585.correct : P15807843790863738585.Spec := by
  intro n
  simp only [A142565, Nat.add_sub_cancel]

end A142565

/-! ## A142565.P3220501363375124536

`p?[A305068(n+1)-A004442(n)]%A197114(n+1)`
-/

namespace A142565.P3220501363375124536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A197114 (n + 1))

end

end A142565.P3220501363375124536

namespace A142565

/-- `p?[A305068(n+1)-A004442(n)]%A197114(n+1)` -/
def P3220501363375124536.Spec : Prop :=
  ∀ n, P3220501363375124536.a n = A142565 (n + 1)

end A142565

/-! ## A142565.P8168577552161926176

`p?[A305068(n+1)-A004442(n)]/A033999(n+7)²`
-/

namespace A142565.P8168577552161926176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - A004442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 (n + 7) ^ 2 : ℚ)

end

end A142565.P8168577552161926176

namespace A142565

/-- `p?[A305068(n+1)-A004442(n)]/A033999(n+7)²` -/
def P8168577552161926176.Spec : Prop :=
  ∀ n, P8168577552161926176.a n = (A142565 (n + 1) : ℚ)

end A142565

/-! ## A142565.P2322372195940906272

`A000027(p?[A305068(n+1)-(n+1)])`
-/

namespace A142565.P2322372195940906272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142565.P2322372195940906272

namespace A142565

/-- `A000027(p?[A305068(n+1)-(n+1)])` -/
def P2322372195940906272.Spec : Prop :=
  ∀ n, P2322372195940906272.a n = A142565 (n + 1)

end A142565

/-! ## A142565.P11743267086899763845

`p?[A305068(n+1)-A004442(n)]%A014363(n)`
-/

namespace A142565.P11743267086899763845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014363 n)

end

end A142565.P11743267086899763845

namespace A142565

/-- `p?[A305068(n+1)-A004442(n)]%A014363(n)` -/
def P11743267086899763845.Spec : Prop :=
  ∀ n, P11743267086899763845.a n = A142565 (n + 1)

end A142565

/-! ## A142565.P3530588528477788061

`A001414(p?[A305068(n+1)-(n+1)])`
-/

namespace A142565.P3530588528477788061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142565.P3530588528477788061

namespace A142565

/-- `A001414(p?[A305068(n+1)-(n+1)])` -/
def P3530588528477788061.Spec : Prop :=
  ∀ n, P3530588528477788061.a n = A142565 (n + 1)

end A142565

/-!
# A142566: Primes congruent to 36 mod 53.

The programs for A142566, the canonical program `A142566.P5463133517147334273` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142566 has offset 1).

The definition of A142566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142566.P5463133517147334273

`p?[53*n-17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142566

/-- `p?[53*n-17]` -/
def P5463133517147334273.Spec : Prop :=
  ∀ n, P5463133517147334273.a n = A142566 (n + 1)

theorem P5463133517147334273.correct : P5463133517147334273.Spec := by
  intro n
  simp only [A142566, Nat.add_sub_cancel]

end A142566

/-! ## A142566.P3074426858941894523

`or(p?[A305068(n+1)-n], A000007(n))`
-/

namespace A142566.P3074426858941894523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142566.P3074426858941894523

namespace A142566

/-- `or(p?[A305068(n+1)-n], A000007(n))` -/
def P3074426858941894523.Spec : Prop :=
  ∀ n, P3074426858941894523.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P8363583641002399788

`p?[A305068(n+1)-n]%Δ[A017308(n)]`
-/

namespace A142566.P8363583641002399788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (n + 1) - f2 n)

end

end A142566.P8363583641002399788

namespace A142566

/-- `p?[A305068(n+1)-n]%Δ[A017308(n)]` -/
def P8363583641002399788.Spec : Prop :=
  ∀ n, P8363583641002399788.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P12661256367237262745

`A000007(n+1)+p?[A305068(n+1)-n]`
-/

namespace A142566.P12661256367237262745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142566.P12661256367237262745

namespace A142566

/-- `A000007(n+1)+p?[A305068(n+1)-n]` -/
def P12661256367237262745.Spec : Prop :=
  ∀ n, P12661256367237262745.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P16217007011815082674

`A000038(n+1)+p?[A305068(n+1)-n]`
-/

namespace A142566.P16217007011815082674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142566.P16217007011815082674

namespace A142566

/-- `A000038(n+1)+p?[A305068(n+1)-n]` -/
def P16217007011815082674.Spec : Prop :=
  ∀ n, P16217007011815082674.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P6513192666021075408

`or(p?[A305068(n+1)-n], A137794(n+1))`
-/

namespace A142566.P6513192666021075408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A137794 (n + 1))

end

end A142566.P6513192666021075408

namespace A142566

/-- `or(p?[A305068(n+1)-n], A137794(n+1))` -/
def P6513192666021075408.Spec : Prop :=
  ∀ n, P6513192666021075408.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P4044928062133885665

`A316868(A058306(n))+p?[A305068(n+1)-n]`
-/

namespace A142566.P4044928062133885665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A058306 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142566.P4044928062133885665

namespace A142566

/-- `A316868(A058306(n))+p?[A305068(n+1)-n]` -/
def P4044928062133885665.Spec : Prop :=
  ∀ n, P4044928062133885665.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P14478444089125447646

`A000027(p?[A305068(n+1)-n])`
-/

namespace A142566.P14478444089125447646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142566.P14478444089125447646

namespace A142566

/-- `A000027(p?[A305068(n+1)-n])` -/
def P14478444089125447646.Spec : Prop :=
  ∀ n, P14478444089125447646.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P71340334496056483

`A000027(p?[A304609(n+1)-A004770(n+1)])`
-/

namespace A142566.P71340334496056483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) - A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142566.P71340334496056483

namespace A142566

/-- `A000027(p?[A304609(n+1)-A004770(n+1)])` -/
def P71340334496056483.Spec : Prop :=
  ∀ n, P71340334496056483.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P11793134390412148646

`∏{d}[p?[A305068(n+1)-n], A020639(#)]`
-/

namespace A142566.P11793134390412148646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A142566.P11793134390412148646

namespace A142566

/-- `∏{d}[p?[A305068(n+1)-n], A020639(#)]` -/
def P11793134390412148646.Spec : Prop :=
  ∀ n, P11793134390412148646.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P16540733250634956240

`record[A020639(A304609(n+1)-A004770(n+1))]`
-/

namespace A142566.P16540733250634956240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304609 (n + 1) - A004770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142566.P16540733250634956240

namespace A142566

/-- `record[A020639(A304609(n+1)-A004770(n+1))]` -/
def P16540733250634956240.Spec : Prop :=
  ∀ n, P16540733250634956240.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P11931409886818741202

`A007947(p?[A304609(n+1)-A004770(n+1)])`
-/

namespace A142566.P11931409886818741202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) - A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142566.P11931409886818741202

namespace A142566

/-- `A007947(p?[A304609(n+1)-A004770(n+1)])` -/
def P11931409886818741202.Spec : Prop :=
  ∀ n, P11931409886818741202.a n = A142566 (n + 1)

end A142566

/-! ## A142566.P17739899479259641738

`record[A020639(A305068(2*(n+1))-A004442(2*n))]`
-/

namespace A142566.P17739899479259641738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (2 * (n + 1)) - A004442 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142566.P17739899479259641738

namespace A142566

/-- `record[A020639(A305068(2*(n+1))-A004442(2*n))]` -/
def P17739899479259641738.Spec : Prop :=
  ∀ n, P17739899479259641738.a n = A142566 (n + 1)

end A142566

/-!
# A142567: Primes congruent to 37 mod 53.

The programs for A142567, the canonical program `A142567.P9068125809523552776` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142567 has offset 1).

The definition of A142567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142567.P9068125809523552776

`p?[53*n-16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142567

/-- `p?[53*n-16]` -/
def P9068125809523552776.Spec : Prop :=
  ∀ n, P9068125809523552776.a n = A142567 (n + 1)

theorem P9068125809523552776.correct : P9068125809523552776.Spec := by
  intro n
  simp only [A142567, Nat.add_sub_cancel]

end A142567

/-! ## A142567.P281579200514017034

`or(1, p?[A139615(n)+22+n])`
-/

namespace A142567.P281579200514017034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 22 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142567.P281579200514017034

namespace A142567

/-- `or(1, p?[A139615(n)+22+n])` -/
def P281579200514017034.Spec : Prop :=
  ∀ n, P281579200514017034.a n = A142567 (n + 1)

end A142567

/-! ## A142567.P7072720012078208126

`p?[A139615(n)+22+n]*char[A061601(n)]`
-/

namespace A142567.P7072720012078208126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 22 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A142567.P7072720012078208126

namespace A142567

/-- `p?[A139615(n)+22+n]*char[A061601(n)]` -/
def P7072720012078208126.Spec : Prop :=
  ∀ n, P7072720012078208126.a n = A142567 (n + 1)

end A142567

/-! ## A142567.P16501567353125794617

`record[A020639(55*n+37-2*n)]`
-/

namespace A142567.P16501567353125794617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (55 * n + 37 - 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142567.P16501567353125794617

namespace A142567

/-- `record[A020639(55*n+37-2*n)]` -/
def P16501567353125794617.Spec : Prop :=
  ∀ n, P16501567353125794617.a n = A142567 (n + 1)

end A142567

/-! ## A142567.P2571667521526751607

`A000265(p?[A139615(n)+22+n])`
-/

namespace A142567.P2571667521526751607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n + 22 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142567.P2571667521526751607

namespace A142567

/-- `A000265(p?[A139615(n)+22+n])` -/
def P2571667521526751607.Spec : Prop :=
  ∀ n, P2571667521526751607.a n = A142567 (n + 1)

end A142567

/-!
# A142568: Primes congruent to 38 mod 53.

The programs for A142568, the canonical program `A142568.P6146946396043828447` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142568 has offset 1).

The definition of A142568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142568.P6146946396043828447

`p?[53*n-15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142568

/-- `p?[53*n-15]` -/
def P6146946396043828447.Spec : Prop :=
  ∀ n, P6146946396043828447.a n = A142568 (n + 1)

theorem P6146946396043828447.correct : P6146946396043828447.Spec := by
  intro n
  simp only [A142568, Nat.add_sub_cancel]

end A142568

/-! ## A142568.P3132842223942971946

`or(1, p?[A239128(n+1)+A139607(n)])`
-/

namespace A142568.P3132842223942971946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142568.P3132842223942971946

namespace A142568

/-- `or(1, p?[A239128(n+1)+A139607(n)])` -/
def P3132842223942971946.Spec : Prop :=
  ∀ n, P3132842223942971946.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P659421051022229773

`A000035(2*n)+p?[A239128(n+1)+A139607(n)]`
-/

namespace A142568.P659421051022229773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142568.P659421051022229773

namespace A142568

/-- `A000035(2*n)+p?[A239128(n+1)+A139607(n)]` -/
def P659421051022229773.Spec : Prop :=
  ∀ n, P659421051022229773.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P2606280497856093863

`A000086(2*(n+1))+p?[A239128(n+1)+A139607(n)]`
-/

namespace A142568.P2606280497856093863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142568.P2606280497856093863

namespace A142568

/-- `A000086(2*(n+1))+p?[A239128(n+1)+A139607(n)]` -/
def P2606280497856093863.Spec : Prop :=
  ∀ n, P2606280497856093863.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P3212525473230787083

`A000027(p?[A239128(n+1)+A139607(n)])`
-/

namespace A142568.P3212525473230787083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142568.P3212525473230787083

namespace A142568

/-- `A000027(p?[A239128(n+1)+A139607(n)])` -/
def P3212525473230787083.Spec : Prop :=
  ∀ n, P3212525473230787083.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P8051759930093805445

`A000265(p?[A154266(n+1+n)-(n+1)])`
-/

namespace A142568.P8051759930093805445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (n + 1 + n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142568.P8051759930093805445

namespace A142568

/-- `A000265(p?[A154266(n+1+n)-(n+1)])` -/
def P8051759930093805445.Spec : Prop :=
  ∀ n, P8051759930093805445.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P7714397461143836739

`A000265(p?[A239128(n+1)+A139607(n)])`
-/

namespace A142568.P7714397461143836739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142568.P7714397461143836739

namespace A142568

/-- `A000265(p?[A239128(n+1)+A139607(n)])` -/
def P7714397461143836739.Spec : Prop :=
  ∀ n, P7714397461143836739.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P872487354823371328

`A007913(p?[A239128(n+1)+A139607(n)])`
-/

namespace A142568.P872487354823371328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142568.P872487354823371328

namespace A142568

/-- `A007913(p?[A239128(n+1)+A139607(n)])` -/
def P872487354823371328.Spec : Prop :=
  ∀ n, P872487354823371328.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P13787303021962719683

`A008472(p?[A239128(n+1)+A139607(n)])`
-/

namespace A142568.P13787303021962719683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142568.P13787303021962719683

namespace A142568

/-- `A008472(p?[A239128(n+1)+A139607(n)])` -/
def P13787303021962719683.Spec : Prop :=
  ∀ n, P13787303021962719683.a n = A142568 (n + 1)

end A142568

/-! ## A142568.P826551026833443983

`A008475(p?[A239128(n+1)+A139607(n)])`
-/

namespace A142568.P826551026833443983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142568.P826551026833443983

namespace A142568

/-- `A008475(p?[A239128(n+1)+A139607(n)])` -/
def P826551026833443983.Spec : Prop :=
  ∀ n, P826551026833443983.a n = A142568 (n + 1)

end A142568

/-!
# A142569: Primes congruent to 39 mod 53.

The programs for A142569, the canonical program `A142569.P2898584343019619820` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142569 has offset 1).

The definition of A142569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142569.P2898584343019619820

`p?[a(n-1)+53]` with `a(0)=39`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142569

/-- `p?[a(n-1)+53]` -/
def P2898584343019619820.Spec : Prop :=
  ∀ n, (P2898584343019619820.a n : ℤ) = A142569 (n + 1)

theorem P2898584343019619820.correct : P2898584343019619820.Spec := by
  intro n
  simp only [A142569, Nat.add_sub_cancel]

end A142569

/-! ## A142569.P5403033180894461891

`p?[13*(4*n+3)+n]`
-/

namespace A142569.P5403033180894461891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * (4 * n + 3) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142569.P5403033180894461891

namespace A142569

/-- `p?[13*(4*n+3)+n]` -/
def P5403033180894461891.Spec : Prop :=
  ∀ n, (P5403033180894461891.a n : ℤ) = A142569 (n + 1)

end A142569

/-! ## A142569.P15801080641326256141

`or(1, p?[A053743(n+1)+A008458(n)])`
-/

namespace A142569.P15801080641326256141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (n + 1) + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142569.P15801080641326256141

namespace A142569

/-- `or(1, p?[A053743(n+1)+A008458(n)])` -/
def P15801080641326256141.Spec : Prop :=
  ∀ n, P15801080641326256141.a n = A142569 (n + 1)

end A142569

/-! ## A142569.P7145390603192113

`p?[A053743(n+1)+A008458(n)]%A045788(n+1)`
-/

namespace A142569.P7145390603192113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (n + 1) + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A045788 (n + 1))

end

end A142569.P7145390603192113

namespace A142569

/-- `p?[A053743(n+1)+A008458(n)]%A045788(n+1)` -/
def P7145390603192113.Spec : Prop :=
  ∀ n, P7145390603192113.a n = A142569 (n + 1)

end A142569

/-! ## A142569.P10621036369022836445

`or(1, p?[A146081(n+2)-A139607(n)])`
-/

namespace A142569.P10621036369022836445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 (n + 2) - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142569.P10621036369022836445

namespace A142569

/-- `or(1, p?[A146081(n+2)-A139607(n)])` -/
def P10621036369022836445.Spec : Prop :=
  ∀ n, P10621036369022836445.a n = A142569 (n + 1)

end A142569

/-!
# A142570: Primes congruent to 40 mod 53.

The programs for A142570, the canonical program `A142570.P6421627408665633642` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142570 has offset 1).

The definition of A142570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142570.P6421627408665633642

`p?[53*n-13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142570

/-- `p?[53*n-13]` -/
def P6421627408665633642.Spec : Prop :=
  ∀ n, P6421627408665633642.a n = A142570 (n + 1)

theorem P6421627408665633642.correct : P6421627408665633642.Spec := by
  intro n
  simp only [A142570, Nat.add_sub_cancel]

end A142570

/-! ## A142570.P6035117896407038755

`∏{p}[p?[A157947(n+2)+A017089(n)], #]`
-/

namespace A142570.P6035117896407038755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 2) + A017089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142570.P6035117896407038755

namespace A142570

/-- `∏{p}[p?[A157947(n+2)+A017089(n)], #]` -/
def P6035117896407038755.Spec : Prop :=
  ∀ n, (P6035117896407038755.a n : ℤ) = A142570 (n + 1)

end A142570

/-! ## A142570.P8525545401805700607

`∏{p}[p?[A139610(n+4)+A004768(n)], #]`
-/

namespace A142570.P8525545401805700607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 (n + 4) + A004768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142570.P8525545401805700607

namespace A142570

/-- `∏{p}[p?[A139610(n+4)+A004768(n)], #]` -/
def P8525545401805700607.Spec : Prop :=
  ∀ n, (P8525545401805700607.a n : ℤ) = A142570 (n + 1)

end A142570

/-! ## A142570.P11603270444054734188

`record[A006530(A157924(n+2)+8*n+4)]`
-/

namespace A142570.P11603270444054734188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157924 (n + 2) + (8 * n + 4 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142570.P11603270444054734188

namespace A142570

/-- `record[A006530(A157924(n+2)+8*n+4)]` -/
def P11603270444054734188.Spec : Prop :=
  ∀ n, P11603270444054734188.a n = A142570 (n + 1)

end A142570

/-! ## A142570.P1330023271717116125

`record[A006530(A157947(n+2)+A017089(n))]`
-/

namespace A142570.P1330023271717116125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157947 (n + 2) + A017089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142570.P1330023271717116125

namespace A142570

/-- `record[A006530(A157947(n+2)+A017089(n))]` -/
def P1330023271717116125.Spec : Prop :=
  ∀ n, P1330023271717116125.a n = A142570 (n + 1)

end A142570

/-! ## A142570.P15664784476029194498

`A007913(p?[A239128(n+1)+A139607(n)+2])`
-/

namespace A142570.P15664784476029194498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142570.P15664784476029194498

namespace A142570

/-- `A007913(p?[A239128(n+1)+A139607(n)+2])` -/
def P15664784476029194498.Spec : Prop :=
  ∀ n, P15664784476029194498.a n = A142570 (n + 1)

end A142570

/-! ## A142570.P1440839822204216569

`A008472(p?[A239128(n+1)+A139607(n)+2])`
-/

namespace A142570.P1440839822204216569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142570.P1440839822204216569

namespace A142570

/-- `A008472(p?[A239128(n+1)+A139607(n)+2])` -/
def P1440839822204216569.Spec : Prop :=
  ∀ n, P1440839822204216569.a n = A142570 (n + 1)

end A142570

/-! ## A142570.P106615673044375504

`record[A020639(A305068(n+4)-A004442(n)+2)]`
-/

namespace A142570.P106615673044375504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 4) - A004442 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142570.P106615673044375504

namespace A142570

/-- `record[A020639(A305068(n+4)-A004442(n)+2)]` -/
def P106615673044375504.Spec : Prop :=
  ∀ n, P106615673044375504.a n = A142570 (n + 1)

end A142570

/-!
# A142571: Primes congruent to 41 mod 53.

The programs for A142571, the canonical program `A142571.P10702951705278210587` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142571 has offset 1).

The definition of A142571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142571.P10702951705278210587

`p?[53*n-12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142571

/-- `p?[53*n-12]` -/
def P10702951705278210587.Spec : Prop :=
  ∀ n, P10702951705278210587.a n = A142571 (n + 1)

theorem P10702951705278210587.correct : P10702951705278210587.Spec := by
  intro n
  simp only [A142571, Nat.add_sub_cancel]

end A142571

/-! ## A142571.P983573885037818310

`A000027(p?[A298028(n+7)+A053741(n)]+1)-1`
-/

namespace A142571.P983573885037818310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (n + 7) + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 1

end

end A142571.P983573885037818310

namespace A142571

/-- `A000027(p?[A298028(n+7)+A053741(n)]+1)-1` -/
def P983573885037818310.Spec : Prop :=
  ∀ n, P983573885037818310.a n = A142571 (n + 1)

end A142571

/-! ## A142571.P12632350902833727403

`record[A020639(A188861(2*(n+1))-n)]`
-/

namespace A142571.P12632350902833727403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A188861 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142571.P12632350902833727403

namespace A142571

/-- `record[A020639(A188861(2*(n+1))-n)]` -/
def P12632350902833727403.Spec : Prop :=
  ∀ n, P12632350902833727403.a n = A142571 (n + 1)

end A142571

/-! ## A142571.P1683554427397783329

`record[A020639(A305068(n+1)-n+5)]`
-/

namespace A142571.P1683554427397783329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 1) - (n : ℤ) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142571.P1683554427397783329

namespace A142571

/-- `record[A020639(A305068(n+1)-n+5)]` -/
def P1683554427397783329.Spec : Prop :=
  ∀ n, P1683554427397783329.a n = A142571 (n + 1)

end A142571

/-! ## A142571.P13845781464235650938

`A007913(p?[A185452(n)+A142241(n)])`
-/

namespace A142571.P13845781464235650938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 n + A142241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142571.P13845781464235650938

namespace A142571

/-- `A007913(p?[A185452(n)+A142241(n)])` -/
def P13845781464235650938.Spec : Prop :=
  ∀ n, P13845781464235650938.a n = A142571 (n + 1)

end A142571

/-! ## A142571.P6210895126222193465

`A007947(p?[A185452(n)+A142241(n)])`
-/

namespace A142571.P6210895126222193465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 n + A142241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142571.P6210895126222193465

namespace A142571

/-- `A007947(p?[A185452(n)+A142241(n)])` -/
def P6210895126222193465.Spec : Prop :=
  ∀ n, P6210895126222193465.a n = A142571 (n + 1)

end A142571

/-! ## A142571.P14970927006976630538

`A007913(p?[A239128(n+1)+A139607(n)+3])`
-/

namespace A142571.P14970927006976630538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142571.P14970927006976630538

namespace A142571

/-- `A007913(p?[A239128(n+1)+A139607(n)+3])` -/
def P14970927006976630538.Spec : Prop :=
  ∀ n, P14970927006976630538.a n = A142571 (n + 1)

end A142571

/-! ## A142571.P168084794131311188

`A125746(p?[A185452(n)+A142241(n)])`
-/

namespace A142571.P168084794131311188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 n + A142241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142571.P168084794131311188

namespace A142571

/-- `A125746(p?[A185452(n)+A142241(n)])` -/
def P168084794131311188.Spec : Prop :=
  ∀ n, P168084794131311188.a n = A142571 (n + 1)

end A142571

/-!
# A142572: Primes congruent to 42 mod 53.

The programs for A142572, the canonical program `A142572.P13859309934733515950` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142572 has offset 1).

The definition of A142572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142572.P13859309934733515950

`p?[53*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142572

/-- `p?[53*n-11]` -/
def P13859309934733515950.Spec : Prop :=
  ∀ n, P13859309934733515950.a n = A142572 (n + 1)

theorem P13859309934733515950.correct : P13859309934733515950.Spec := by
  intro n
  simp only [A142572, Nat.add_sub_cancel]

end A142572

/-! ## A142572.P6931343403403338786

`∏{d}[p?[A139608(n+5)+A008607(n)], #]`
-/

namespace A142572.P6931343403403338786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 (n + 5) + A008607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142572.P6931343403403338786

namespace A142572

/-- `∏{d}[p?[A139608(n+5)+A008607(n)], #]` -/
def P6931343403403338786.Spec : Prop :=
  ∀ n, (P6931343403403338786.a n : ℤ) = A142572 (n + 1)

end A142572

/-! ## A142572.P9895783585736767190

`A007913(p?[A239128(n+1)+A139607(n)+4])`
-/

namespace A142572.P9895783585736767190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142572.P9895783585736767190

namespace A142572

/-- `A007913(p?[A239128(n+1)+A139607(n)+4])` -/
def P9895783585736767190.Spec : Prop :=
  ∀ n, P9895783585736767190.a n = A142572 (n + 1)

end A142572

/-! ## A142572.P7034749783486409119

`A008472(p?[A239128(n+1)+A139607(n)+4])`
-/

namespace A142572.P7034749783486409119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A139607 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142572.P7034749783486409119

namespace A142572

/-- `A008472(p?[A239128(n+1)+A139607(n)+4])` -/
def P7034749783486409119.Spec : Prop :=
  ∀ n, P7034749783486409119.a n = A142572 (n + 1)

end A142572

/-! ## A142572.P3394790115113516525

`record[A020639(A305068(n+6)-A004442(n)+2)]`
-/

namespace A142572.P3394790115113516525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 6) - A004442 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142572.P3394790115113516525

namespace A142572

/-- `record[A020639(A305068(n+6)-A004442(n)+2)]` -/
def P3394790115113516525.Spec : Prop :=
  ∀ n, P3394790115113516525.a n = A142572 (n + 1)

end A142572

/-!
# A142573: Primes congruent to 43 mod 53.

The programs for A142573, the canonical program `A142573.P10774366854094148211` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142573 has offset 1).

The definition of A142573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142573.P10774366854094148211

`p?[53*n-10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142573

/-- `p?[53*n-10]` -/
def P10774366854094148211.Spec : Prop :=
  ∀ n, P10774366854094148211.a n = A142573 (n + 1)

theorem P10774366854094148211.correct : P10774366854094148211.Spec := by
  intro n
  simp only [A142573, Nat.add_sub_cancel]

end A142573

/-! ## A142573.P15169924103116970673

`∑{p}[p?[A139618(n)-A102439(n)+29], #]`
-/

namespace A142573.P15169924103116970673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139618 n - A102439 n + 29

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142573.P15169924103116970673

namespace A142573

/-- `∑{p}[p?[A139618(n)-A102439(n)+29], #]` -/
def P15169924103116970673.Spec : Prop :=
  ∀ n, (P15169924103116970673.a n : ℤ) = A142573 (n + 1)

end A142573

/-! ## A142573.P8666447026556708769

`p?[A159754(n+1)+A014682(n)]%A027822(n+4)`
-/

namespace A142573.P8666447026556708769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A027822 (n + 4))

end

end A142573.P8666447026556708769

namespace A142573

/-- `p?[A159754(n+1)+A014682(n)]%A027822(n+4)` -/
def P8666447026556708769.Spec : Prop :=
  ∀ n, P8666447026556708769.a n = A142573 (n + 1)

end A142573

/-! ## A142573.P6343730993948737615

`record[A006530(A154267(2*n+1)-(n-1))]`
-/

namespace A142573.P6343730993948737615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154267 (2 * n + 1) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142573.P6343730993948737615

namespace A142573

/-- `record[A006530(A154267(2*n+1)-(n-1))]` -/
def P6343730993948737615.Spec : Prop :=
  ∀ n, P6343730993948737615.a n = A142573 (n + 1)

end A142573

/-! ## A142573.P1442469843048696136

`A000265(p?[A159754(n+1)+A014682(n)])`
-/

namespace A142573.P1442469843048696136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142573.P1442469843048696136

namespace A142573

/-- `A000265(p?[A159754(n+1)+A014682(n)])` -/
def P1442469843048696136.Spec : Prop :=
  ∀ n, P1442469843048696136.a n = A142573 (n + 1)

end A142573

/-! ## A142573.P12141596996163843924

`A007947(p?[A159754(n+1)+A014682(n)])`
-/

namespace A142573.P12141596996163843924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142573.P12141596996163843924

namespace A142573

/-- `A007947(p?[A159754(n+1)+A014682(n)])` -/
def P12141596996163843924.Spec : Prop :=
  ∀ n, P12141596996163843924.a n = A142573 (n + 1)

end A142573

/-! ## A142573.P1007617973534165797

`record[A006530(A239128(n+1)+A139607(n)+5)]`
-/

namespace A142573.P1007617973534165797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239128 (n + 1) + A139607 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142573.P1007617973534165797

namespace A142573

/-- `record[A006530(A239128(n+1)+A139607(n)+5)]` -/
def P1007617973534165797.Spec : Prop :=
  ∀ n, P1007617973534165797.a n = A142573 (n + 1)

end A142573

/-! ## A142573.P12984559769874086364

`record[A020639(A269044(n+2)+A139279(n+1)+2)]`
-/

namespace A142573.P12984559769874086364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A269044 (n + 2) + A139279 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142573.P12984559769874086364

namespace A142573

/-- `record[A020639(A269044(n+2)+A139279(n+1)+2)]` -/
def P12984559769874086364.Spec : Prop :=
  ∀ n, P12984559769874086364.a n = A142573 (n + 1)

end A142573

/-! ## A142573.P15884017649189477374

`record[A006530(A016945(8*n+5)+A016885(n+1)+2)]`
-/

namespace A142573.P15884017649189477374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016945 (8 * n + 5) + A016885 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142573.P15884017649189477374

namespace A142573

/-- `record[A006530(A016945(8*n+5)+A016885(n+1)+2)]` -/
def P15884017649189477374.Spec : Prop :=
  ∀ n, P15884017649189477374.a n = A142573 (n + 1)

end A142573

/-!
# A142574: Primes congruent to 44 mod 53.

The programs for A142574, the canonical program `A142574.P11859166775549771955` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142574 has offset 1).

The definition of A142574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142574.P11859166775549771955

`p?[53*n-9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142574

/-- `p?[53*n-9]` -/
def P11859166775549771955.Spec : Prop :=
  ∀ n, P11859166775549771955.a n = A142574 (n + 1)

theorem P11859166775549771955.correct : P11859166775549771955.Spec := by
  intro n
  simp only [A142574, Nat.add_sub_cancel]

end A142574

/-! ## A142574.P4662190874959607574

`or(1, p?[A298028(n+8)+A053741(n)])`
-/

namespace A142574.P4662190874959607574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (n + 8) + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142574.P4662190874959607574

namespace A142574

/-- `or(1, p?[A298028(n+8)+A053741(n)])` -/
def P4662190874959607574.Spec : Prop :=
  ∀ n, P4662190874959607574.a n = A142574 (n + 1)

end A142574

/-! ## A142574.P4573302078835291507

`A000027(p?[A298028(n+8)+A053741(n)]+1)-1`
-/

namespace A142574.P4573302078835291507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (n + 8) + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 1

end

end A142574.P4573302078835291507

namespace A142574

/-- `A000027(p?[A298028(n+8)+A053741(n)]+1)-1` -/
def P4573302078835291507.Spec : Prop :=
  ∀ n, P4573302078835291507.a n = A142574 (n + 1)

end A142574

/-! ## A142574.P15506887349712727280

`record[A020639(A304840(n+2)-5+n)]`
-/

namespace A142574.P15506887349712727280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304840 (n + 2) - 5 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142574.P15506887349712727280

namespace A142574

/-- `record[A020639(A304840(n+2)-5+n)]` -/
def P15506887349712727280.Spec : Prop :=
  ∀ n, P15506887349712727280.a n = A142574 (n + 1)

end A142574

/-! ## A142574.P12186840032600129171

`A161955(p?[A159754(n+1)+A080512(n+1)])`
-/

namespace A142574.P12186840032600129171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142574.P12186840032600129171

namespace A142574

/-- `A161955(p?[A159754(n+1)+A080512(n+1)])` -/
def P12186840032600129171.Spec : Prop :=
  ∀ n, P12186840032600129171.a n = A142574 (n + 1)

end A142574

/-!
# A142575: Primes congruent to 45 mod 53.

The programs for A142575, the canonical program `A142575.P6606832954996549449` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142575 has offset 1).

The definition of A142575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142575.P6606832954996549449

`p?[53*n-8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142575

/-- `p?[53*n-8]` -/
def P6606832954996549449.Spec : Prop :=
  ∀ n, P6606832954996549449.a n = A142575 (n + 1)

theorem P6606832954996549449.correct : P6606832954996549449.Spec := by
  intro n
  simp only [A142575, Nat.add_sub_cancel]

end A142575

/-! ## A142575.P9521373159499430008

`or(1, p?[A053743(n)+A008458(n)])`
-/

namespace A142575.P9521373159499430008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142575.P9521373159499430008

namespace A142575

/-- `or(1, p?[A053743(n)+A008458(n)])` -/
def P9521373159499430008.Spec : Prop :=
  ∀ n, P9521373159499430008.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P15360580836399218015

`p?[A053743(n)+A008458(n)]%A016889(n)`
-/

namespace A142575.P15360580836399218015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016889 n)

end

end A142575.P15360580836399218015

namespace A142575

/-- `p?[A053743(n)+A008458(n)]%A016889(n)` -/
def P15360580836399218015.Spec : Prop :=
  ∀ n, P15360580836399218015.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P410465105835074839

`A020985(n)²*p?[A053743(n)+A008458(n)]`
-/

namespace A142575.P410465105835074839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142575.P410465105835074839

namespace A142575

/-- `A020985(n)²*p?[A053743(n)+A008458(n)]` -/
def P410465105835074839.Spec : Prop :=
  ∀ n, P410465105835074839.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P9396856571317588561

`A065357(n)²*p?[A053743(n)+A008458(n)]`
-/

namespace A142575.P9396856571317588561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142575.P9396856571317588561

namespace A142575

/-- `A065357(n)²*p?[A053743(n)+A008458(n)]` -/
def P9396856571317588561.Spec : Prop :=
  ∀ n, P9396856571317588561.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P11670681241046421894

`A000007(n+1)+p?[A053743(n)+A008458(n)]`
-/

namespace A142575.P11670681241046421894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142575.P11670681241046421894

namespace A142575

/-- `A000007(n+1)+p?[A053743(n)+A008458(n)]` -/
def P11670681241046421894.Spec : Prop :=
  ∀ n, P11670681241046421894.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P7087716906126512423

`A000035(2*n)+p?[A053743(n)+A008458(n)]`
-/

namespace A142575.P7087716906126512423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142575.P7087716906126512423

namespace A142575

/-- `A000035(2*n)+p?[A053743(n)+A008458(n)]` -/
def P7087716906126512423.Spec : Prop :=
  ∀ n, P7087716906126512423.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P17108309181503572471

`p?[A053743(n)+A008458(n)]+A001105(n)%2`
-/

namespace A142575.P17108309181503572471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A001105 n) 2

end

end A142575.P17108309181503572471

namespace A142575

/-- `p?[A053743(n)+A008458(n)]+A001105(n)%2` -/
def P17108309181503572471.Spec : Prop :=
  ∀ n, P17108309181503572471.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P10373025972660278206

`p?[A053743(n)+A008458(n)]/(A024000(n)+n)`
-/

namespace A142575.P10373025972660278206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A024000 n + (n : ℤ) : ℚ)

end

end A142575.P10373025972660278206

namespace A142575

/-- `p?[A053743(n)+A008458(n)]/(A024000(n)+n)` -/
def P10373025972660278206.Spec : Prop :=
  ∀ n, P10373025972660278206.a n = (A142575 (n + 1) : ℚ)

end A142575

/-! ## A142575.P7062488046297205336

`A000027(p?[A053743(n)+A008458(n)])`
-/

namespace A142575.P7062488046297205336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142575.P7062488046297205336

namespace A142575

/-- `A000027(p?[A053743(n)+A008458(n)])` -/
def P7062488046297205336.Spec : Prop :=
  ∀ n, P7062488046297205336.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P6023525760537704393

`A000265(p?[A053743(n)+A008458(n)])`
-/

namespace A142575.P6023525760537704393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142575.P6023525760537704393

namespace A142575

/-- `A000265(p?[A053743(n)+A008458(n)])` -/
def P6023525760537704393.Spec : Prop :=
  ∀ n, P6023525760537704393.a n = A142575 (n + 1)

end A142575

/-! ## A142575.P9560449885134442461

`A007913(p?[A053743(n)+A008458(n)])`
-/

namespace A142575.P9560449885134442461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142575.P9560449885134442461

namespace A142575

/-- `A007913(p?[A053743(n)+A008458(n)])` -/
def P9560449885134442461.Spec : Prop :=
  ∀ n, P9560449885134442461.a n = A142575 (n + 1)

end A142575

/-!
# A142576: Primes congruent to 46 mod 53.

The programs for A142576, the canonical program `A142576.P13179964568967412309` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142576 has offset 1).

The definition of A142576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142576.P13179964568967412309

`p?[53*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142576

/-- `p?[53*n-7]` -/
def P13179964568967412309.Spec : Prop :=
  ∀ n, P13179964568967412309.a n = A142576 (n + 1)

theorem P13179964568967412309.correct : P13179964568967412309.Spec := by
  intro n
  simp only [A142576, Nat.add_sub_cancel]

end A142576

/-! ## A142576.P17196341271457511624

`or(1, p?[53*n+46])`
-/

namespace A142576.P17196341271457511624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142576.P17196341271457511624

namespace A142576

/-- `or(1, p?[53*n+46])` -/
def P17196341271457511624.Spec : Prop :=
  ∀ n, (P17196341271457511624.a n : ℤ) = A142576 (n + 1)

end A142576

/-! ## A142576.P13748234584189641867

`p?[53*n+46]%p?[53*n+46]²`
-/

namespace A142576.P13748234584189641867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

end

end A142576.P13748234584189641867

namespace A142576

/-- `p?[53*n+46]%p?[53*n+46]²` -/
def P13748234584189641867.Spec : Prop :=
  ∀ n, (P13748234584189641867.a n : ℤ) = A142576 (n + 1)

end A142576

/-! ## A142576.P14520409808895807504

`floor(p?[53*n+46]+Δ[atan(2*n+1)])`
-/

namespace A142576.P14520409808895807504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) + (f2 (n + 1) - f2 n)⌋

end

end A142576.P14520409808895807504

namespace A142576

/-- `floor(p?[53*n+46]+Δ[atan(2*n+1)])` -/
def P14520409808895807504.Spec : Prop :=
  ∀ n, P14520409808895807504.a n = A142576 (n + 1)

end A142576

/-! ## A142576.P3643841256466781029

`round(p?[53*n+46]+Δ[atan(2*n+1)])`
-/

namespace A142576.P3643841256466781029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) + (f2 (n + 1) - f2 n))

end

end A142576.P3643841256466781029

namespace A142576

/-- `round(p?[53*n+46]+Δ[atan(2*n+1)])` -/
def P3643841256466781029.Spec : Prop :=
  ∀ n, P3643841256466781029.a n = A142576 (n + 1)

end A142576

/-! ## A142576.P13697622357378190735

`p?[53*n+46]%A017378(n)²`
-/

namespace A142576.P13697622357378190735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A017378 n ^ 2)

end

end A142576.P13697622357378190735

namespace A142576

/-- `p?[53*n+46]%A017378(n)²` -/
def P13697622357378190735.Spec : Prop :=
  ∀ n, P13697622357378190735.a n = A142576 (n + 1)

end A142576

/-! ## A142576.P9636376950156615961

`p?[53*n+46]*char[A263272(n)]`
-/

namespace A142576.P9636376950156615961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A142576.P9636376950156615961

namespace A142576

/-- `p?[53*n+46]*char[A263272(n)]` -/
def P9636376950156615961.Spec : Prop :=
  ∀ n, (P9636376950156615961.a n : ℤ) = A142576 (n + 1)

end A142576

/-! ## A142576.P1326040606045042996

`A001221(record[A014963(n+2)])*p?[53*n+46]`
-/

namespace A142576.P1326040606045042996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A142576.P1326040606045042996

namespace A142576

/-- `A001221(record[A014963(n+2)])*p?[53*n+46]` -/
def P1326040606045042996.Spec : Prop :=
  ∀ n, P1326040606045042996.a n = A142576 (n + 1)

end A142576

/-! ## A142576.P8028873972231359182

`A001222(record[A014963(n+2)])*p?[53*n+46]`
-/

namespace A142576.P8028873972231359182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A142576.P8028873972231359182

namespace A142576

/-- `A001222(record[A014963(n+2)])*p?[53*n+46]` -/
def P8028873972231359182.Spec : Prop :=
  ∀ n, P8028873972231359182.a n = A142576 (n + 1)

end A142576

/-! ## A142576.P909320393466107587

`A000265(p?[53*n+46])`
-/

namespace A142576.P909320393466107587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142576.P909320393466107587

namespace A142576

/-- `A000265(p?[53*n+46])` -/
def P909320393466107587.Spec : Prop :=
  ∀ n, P909320393466107587.a n = A142576 (n + 1)

end A142576

/-!
# A142577: Primes congruent to 47 mod 53.

The programs for A142577, the canonical program `A142577.P15722763317461293928` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142577 has offset 1).

The definition of A142577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142577.P15722763317461293928

`p?[53*n-6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142577

/-- `p?[53*n-6]` -/
def P15722763317461293928.Spec : Prop :=
  ∀ n, P15722763317461293928.a n = A142577 (n + 1)

theorem P15722763317461293928.correct : P15722763317461293928.Spec := by
  intro n
  simp only [A142577, Nat.add_sub_cancel]

end A142577

/-! ## A142577.P17681348705465200683

`p?[A152691(n)-A017461(n)]/A057077(n)²`
-/

namespace A142577.P17681348705465200683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A017461 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A057077 n ^ 2 : ℚ)

end

end A142577.P17681348705465200683

namespace A142577

/-- `p?[A152691(n)-A017461(n)]/A057077(n)²` -/
def P17681348705465200683.Spec : Prop :=
  ∀ n, P17681348705465200683.a n = (A142577 (n + 1) : ℚ)

end A142577

/-! ## A142577.P2366264127084173876

`A000007(n+1)+p?[A152691(n)-A017461(n)]`
-/

namespace A142577.P2366264127084173876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142577.P2366264127084173876

namespace A142577

/-- `A000007(n+1)+p?[A152691(n)-A017461(n)]` -/
def P2366264127084173876.Spec : Prop :=
  ∀ n, P2366264127084173876.a n = A142577 (n + 1)

end A142577

/-! ## A142577.P16835638325327061624

`A000027(p?[A152691(n)-A017461(n)])`
-/

namespace A142577.P16835638325327061624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142577.P16835638325327061624

namespace A142577

/-- `A000027(p?[A152691(n)-A017461(n)])` -/
def P16835638325327061624.Spec : Prop :=
  ∀ n, P16835638325327061624.a n = A142577 (n + 1)

end A142577

/-! ## A142577.P13113827192068499817

`record[A020639(53*(n+1)-6)]`
-/

namespace A142577.P13113827192068499817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142577.P13113827192068499817

namespace A142577

/-- `record[A020639(53*(n+1)-6)]` -/
def P13113827192068499817.Spec : Prop :=
  ∀ n, P13113827192068499817.a n = A142577 (n + 1)

end A142577

/-! ## A142577.P8385980835840690684

`record[A006530(A001414(53*(n+1)-6))]`
-/

namespace A142577.P8385980835840690684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001414 (53 * (n + 1) - 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142577.P8385980835840690684

namespace A142577

/-- `record[A006530(A001414(53*(n+1)-6))]` -/
def P8385980835840690684.Spec : Prop :=
  ∀ n, P8385980835840690684.a n = A142577 (n + 1)

end A142577

/-! ## A142577.P9838328295220121121

`record[A008472(A008472(53*(n+1)-6))]`
-/

namespace A142577.P9838328295220121121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008472 (53 * (n + 1) - 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142577.P9838328295220121121

namespace A142577

/-- `record[A008472(A008472(53*(n+1)-6))]` -/
def P9838328295220121121.Spec : Prop :=
  ∀ n, P9838328295220121121.a n = A142577 (n + 1)

end A142577

/-!
# A142578: Primes congruent to 48 mod 53.

The programs for A142578, the canonical program `A142578.P15952431760153792585` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142578 has offset 1).

The definition of A142578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142578.P15952431760153792585

`p?[53*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142578

/-- `p?[53*n-5]` -/
def P15952431760153792585.Spec : Prop :=
  ∀ n, P15952431760153792585.a n = A142578 (n + 1)

theorem P15952431760153792585.correct : P15952431760153792585.Spec := by
  intro n
  simp only [A142578, Nat.add_sub_cancel]

end A142578

/-! ## A142578.P5551187722870536037

`p?[A100775(n)+9*n]*A000034(2*n)`
-/

namespace A142578.P5551187722870536037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100775 n + (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A142578.P5551187722870536037

namespace A142578

/-- `p?[A100775(n)+9*n]*A000034(2*n)` -/
def P5551187722870536037.Spec : Prop :=
  ∀ n, P5551187722870536037.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P15086922128015216755

`A000027(p?[A157947(n+1)+A017089(n)])`
-/

namespace A142578.P15086922128015216755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142578.P15086922128015216755

namespace A142578

/-- `A000027(p?[A157947(n+1)+A017089(n)])` -/
def P15086922128015216755.Spec : Prop :=
  ∀ n, P15086922128015216755.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P14290611417789372774

`record[A020639(A100775(n)+9*n)]`
-/

namespace A142578.P14290611417789372774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100775 n + (9 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142578.P14290611417789372774

namespace A142578

/-- `record[A020639(A100775(n)+9*n)]` -/
def P14290611417789372774.Spec : Prop :=
  ∀ n, P14290611417789372774.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P18369268131618526814

`record[A020639(A158066(2*(n+1))+8*n+2)]`
-/

namespace A142578.P18369268131618526814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (2 * (n + 1)) + (8 * n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142578.P18369268131618526814

namespace A142578

/-- `record[A020639(A158066(2*(n+1))+8*n+2)]` -/
def P18369268131618526814.Spec : Prop :=
  ∀ n, P18369268131618526814.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P11100577148483167025

`record[A006530(A158128(n+1)+A008588(n))]`
-/

namespace A142578.P11100577148483167025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158128 (n + 1) + A008588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142578.P11100577148483167025

namespace A142578

/-- `record[A006530(A158128(n+1)+A008588(n))]` -/
def P11100577148483167025.Spec : Prop :=
  ∀ n, P11100577148483167025.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P8272836107216180344

`record[A006530(A157947(n+1)+A017089(n))]`
-/

namespace A142578.P8272836107216180344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157947 (n + 1) + A017089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142578.P8272836107216180344

namespace A142578

/-- `record[A006530(A157947(n+1)+A017089(n))]` -/
def P8272836107216180344.Spec : Prop :=
  ∀ n, P8272836107216180344.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P16157917079784359148

`record[A020639(A158128(n+1)+A008588(n))]`
-/

namespace A142578.P16157917079784359148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158128 (n + 1) + A008588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142578.P16157917079784359148

namespace A142578

/-- `record[A020639(A158128(n+1)+A008588(n))]` -/
def P16157917079784359148.Spec : Prop :=
  ∀ n, P16157917079784359148.a n = A142578 (n + 1)

end A142578

/-! ## A142578.P17094041601460981852

`record[A006530(6*A016789(A016789(n+1))-(n+1))]`
-/

namespace A142578.P17094041601460981852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * A016789 (A016789 (n + 1)).toNat - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142578.P17094041601460981852

namespace A142578

/-- `record[A006530(6*A016789(A016789(n+1))-(n+1))]` -/
def P17094041601460981852.Spec : Prop :=
  ∀ n, P17094041601460981852.a n = A142578 (n + 1)

end A142578

/-!
# A142579: Primes congruent to 49 mod 53.

The programs for A142579, the canonical program `A142579.P9845563896040826654` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142579 has offset 1).

The definition of A142579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142579.P9845563896040826654

`p?[53*n-4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142579

/-- `p?[53*n-4]` -/
def P9845563896040826654.Spec : Prop :=
  ∀ n, P9845563896040826654.a n = A142579 (n + 1)

theorem P9845563896040826654.correct : P9845563896040826654.Spec := by
  intro n
  simp only [A142579, Nat.add_sub_cancel]

end A142579

/-! ## A142579.P14835668218173499948

`or(1, p?[A304840(n+1)+A014681(n)])`
-/

namespace A142579.P14835668218173499948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142579.P14835668218173499948

namespace A142579

/-- `or(1, p?[A304840(n+1)+A014681(n)])` -/
def P14835668218173499948.Spec : Prop :=
  ∀ n, P14835668218173499948.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P11364259977009697399

`p?[A304840(n+1)+A014681(n)]%A147573(n+1)`
-/

namespace A142579.P11364259977009697399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A147573 (n + 1))

end

end A142579.P11364259977009697399

namespace A142579

/-- `p?[A304840(n+1)+A014681(n)]%A147573(n+1)` -/
def P11364259977009697399.Spec : Prop :=
  ∀ n, P11364259977009697399.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P344092462571429537

`A145649(2*(n+1))+p?[A304840(n+1)+A014681(n)]`
-/

namespace A142579.P344092462571429537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142579.P344092462571429537

namespace A142579

/-- `A145649(2*(n+1))+p?[A304840(n+1)+A014681(n)]` -/
def P344092462571429537.Spec : Prop :=
  ∀ n, P344092462571429537.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P7436135298005959211

`A000027(p?[A304840(n+1)+A014681(n)])`
-/

namespace A142579.P7436135298005959211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142579.P7436135298005959211

namespace A142579

/-- `A000027(p?[A304840(n+1)+A014681(n)])` -/
def P7436135298005959211.Spec : Prop :=
  ∀ n, P7436135298005959211.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P7550119233368942731

`A000265(p?[A304840(n+1)+A014681(n)])`
-/

namespace A142579.P7550119233368942731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142579.P7550119233368942731

namespace A142579

/-- `A000265(p?[A304840(n+1)+A014681(n)])` -/
def P7550119233368942731.Spec : Prop :=
  ∀ n, P7550119233368942731.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P14026186104775218653

`A001414(p?[A304840(n+1)+A014681(n)])`
-/

namespace A142579.P14026186104775218653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142579.P14026186104775218653

namespace A142579

/-- `A001414(p?[A304840(n+1)+A014681(n)])` -/
def P14026186104775218653.Spec : Prop :=
  ∀ n, P14026186104775218653.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P8682194899336150275

`A007947(p?[A304840(n+1)+A014681(n)])`
-/

namespace A142579.P8682194899336150275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142579.P8682194899336150275

namespace A142579

/-- `A007947(p?[A304840(n+1)+A014681(n)])` -/
def P8682194899336150275.Spec : Prop :=
  ∀ n, P8682194899336150275.a n = A142579 (n + 1)

end A142579

/-! ## A142579.P14849473262179830643

`A008472(p?[A304840(n+1)+A014681(n)])`
-/

namespace A142579.P14849473262179830643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142579.P14849473262179830643

namespace A142579

/-- `A008472(p?[A304840(n+1)+A014681(n)])` -/
def P14849473262179830643.Spec : Prop :=
  ∀ n, P14849473262179830643.a n = A142579 (n + 1)

end A142579

/-!
# A142580: Primes congruent to 50 mod 53.

The programs for A142580, the canonical program `A142580.P12216637443681934440` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142580 has offset 1).

The definition of A142580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142580.P12216637443681934440

`p?[53*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142580

/-- `p?[53*n-3]` -/
def P12216637443681934440.Spec : Prop :=
  ∀ n, P12216637443681934440.a n = A142580 (n + 1)

theorem P12216637443681934440.correct : P12216637443681934440.Spec := by
  intro n
  simp only [A142580, Nat.add_sub_cancel]

end A142580

/-! ## A142580.P17555938712605688649

`p?[A100775(n)+9*n+2]*A000034(2*n)`
-/

namespace A142580.P17555938712605688649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100775 n + (9 * n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A142580.P17555938712605688649

namespace A142580

/-- `p?[A100775(n)+9*n+2]*A000034(2*n)` -/
def P17555938712605688649.Spec : Prop :=
  ∀ n, P17555938712605688649.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P9902605141814087424

`p?[A146081(n)-A139607(n)]+A046092(n)%2`
-/

namespace A142580.P9902605141814087424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A046092 n) 2

end

end A142580.P9902605141814087424

namespace A142580

/-- `p?[A146081(n)-A139607(n)]+A046092(n)%2` -/
def P9902605141814087424.Spec : Prop :=
  ∀ n, P9902605141814087424.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P5577722630654851836

`A000027(p?[A304840(n+1)+n])`
-/

namespace A142580.P5577722630654851836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142580.P5577722630654851836

namespace A142580

/-- `A000027(p?[A304840(n+1)+n])` -/
def P5577722630654851836.Spec : Prop :=
  ∀ n, P5577722630654851836.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P4620239275052212165

`A000027(p?[A157924(n+1)+A017137(n)])`
-/

namespace A142580.P4620239275052212165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) + A017137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142580.P4620239275052212165

namespace A142580

/-- `A000027(p?[A157924(n+1)+A017137(n)])` -/
def P4620239275052212165.Spec : Prop :=
  ∀ n, P4620239275052212165.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P7508057270493530314

`record[A020639((50*(n+2)+3*n+2)*char[2*n]+1)]`
-/

namespace A142580.P7508057270493530314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((50 * (n + 2) + (3 * n + 2)) * (if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142580.P7508057270493530314

namespace A142580

/-- `record[A020639((50*(n+2)+3*n+2)*char[2*n]+1)]` -/
def P7508057270493530314.Spec : Prop :=
  ∀ n, P7508057270493530314.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P13016271639292699259

`A000265(p?[A304840(n+1)+n])`
-/

namespace A142580.P13016271639292699259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142580.P13016271639292699259

namespace A142580

/-- `A000265(p?[A304840(n+1)+n])` -/
def P13016271639292699259.Spec : Prop :=
  ∀ n, P13016271639292699259.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P2269365433900051556

`A052410(p?[A152691(n)-A017425(n)])`
-/

namespace A142580.P2269365433900051556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142580.P2269365433900051556

namespace A142580

/-- `A052410(p?[A152691(n)-A017425(n)])` -/
def P2269365433900051556.Spec : Prop :=
  ∀ n, P2269365433900051556.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P15199149374403264992

`A000265(p?[A146081(n)-A139607(n)])`
-/

namespace A142580.P15199149374403264992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142580.P15199149374403264992

namespace A142580

/-- `A000265(p?[A146081(n)-A139607(n)])` -/
def P15199149374403264992.Spec : Prop :=
  ∀ n, P15199149374403264992.a n = A142580 (n + 1)

end A142580

/-! ## A142580.P17618143056118131681

`A007913(p?[A146081(n)-A139607(n)])`
-/

namespace A142580.P17618143056118131681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142580.P17618143056118131681

namespace A142580

/-- `A007913(p?[A146081(n)-A139607(n)])` -/
def P17618143056118131681.Spec : Prop :=
  ∀ n, P17618143056118131681.a n = A142580 (n + 1)

end A142580

/-!
# A142581: Primes congruent to 51 mod 53.

The programs for A142581, the canonical program `A142581.P17450910249963365285` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142581 has offset 1).

The definition of A142581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142581.P17450910249963365285

`p?[53*n-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142581

/-- `p?[53*n-2]` -/
def P17450910249963365285.Spec : Prop :=
  ∀ n, P17450910249963365285.a n = A142581 (n + 1)

theorem P17450910249963365285.correct : P17450910249963365285.Spec := by
  intro n
  simp only [A142581, Nat.add_sub_cancel]

end A142581

/-! ## A142581.P4097038229348244090

`xor(1, p?[A304840(A004442(n)+1)+n])+1`
-/

namespace A142581.P4097038229348244090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (A004442 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A142581.P4097038229348244090

namespace A142581

/-- `xor(1, p?[A304840(A004442(n)+1)+n])+1` -/
def P4097038229348244090.Spec : Prop :=
  ∀ n, P4097038229348244090.a n = A142581 (n + 1)

end A142581

/-! ## A142581.P9793379702773497841

`A000038(n+1)+p?[A304840(n+1)+n+1]`
-/

namespace A142581.P9793379702773497841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142581.P9793379702773497841

namespace A142581

/-- `A000038(n+1)+p?[A304840(n+1)+n+1]` -/
def P9793379702773497841.Spec : Prop :=
  ∀ n, P9793379702773497841.a n = A142581 (n + 1)

end A142581

/-! ## A142581.P13162949857837503995

`A323885(A266987(n+1))+p?[A304840(n+1)+n+1]`
-/

namespace A142581.P13162949857837503995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (A266987 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142581.P13162949857837503995

namespace A142581

/-- `A323885(A266987(n+1))+p?[A304840(n+1)+n+1]` -/
def P13162949857837503995.Spec : Prop :=
  ∀ n, P13162949857837503995.a n = A142581 (n + 1)

end A142581

/-! ## A142581.P4944915627159714139

`A000027(p?[A304840(n+1)+n+1])`
-/

namespace A142581.P4944915627159714139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142581.P4944915627159714139

namespace A142581

/-- `A000027(p?[A304840(n+1)+n+1])` -/
def P4944915627159714139.Spec : Prop :=
  ∀ n, P4944915627159714139.a n = A142581 (n + 1)

end A142581

/-! ## A142581.P13858746362282221389

`A000265(p?[A304840(n+1)+n+1])`
-/

namespace A142581.P13858746362282221389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142581.P13858746362282221389

namespace A142581

/-- `A000265(p?[A304840(n+1)+n+1])` -/
def P13858746362282221389.Spec : Prop :=
  ∀ n, P13858746362282221389.a n = A142581 (n + 1)

end A142581

/-! ## A142581.P14173388951426752977

`A007913(p?[A304840(n+1)+n+1])`
-/

namespace A142581.P14173388951426752977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142581.P14173388951426752977

namespace A142581

/-- `A007913(p?[A304840(n+1)+n+1])` -/
def P14173388951426752977.Spec : Prop :=
  ∀ n, P14173388951426752977.a n = A142581 (n + 1)

end A142581

/-!
# A142582: Primes congruent to 52 mod 53.

The programs for A142582, the canonical program `A142582.P1423104978536918347` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142582 has offset 1).

The definition of A142582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142582.P1423104978536918347

`p?[53*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142582

/-- `p?[53*n-1]` -/
def P1423104978536918347.Spec : Prop :=
  ∀ n, P1423104978536918347.a n = A142582 (n + 1)

theorem P1423104978536918347.correct : P1423104978536918347.Spec := by
  intro n
  simp only [A142582, Nat.add_sub_cancel]

end A142582

/-! ## A142582.P10503737757841625248

`or(1, p?[52*(n+1)+n])`
-/

namespace A142582.P10503737757841625248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142582.P10503737757841625248

namespace A142582

/-- `or(1, p?[52*(n+1)+n])` -/
def P10503737757841625248.Spec : Prop :=
  ∀ n, (P10503737757841625248.a n : ℤ) = A142582 (n + 1)

end A142582

/-! ## A142582.P5203230814665989804

`∑{p}[p?[52*(n+1)+n], #]`
-/

namespace A142582.P5203230814665989804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142582.P5203230814665989804

namespace A142582

/-- `∑{p}[p?[52*(n+1)+n], #]` -/
def P5203230814665989804.Spec : Prop :=
  ∀ n, (P5203230814665989804.a n : ℤ) = A142582 (n + 1)

end A142582

/-! ## A142582.P583440620301953372

`∏{p}[p?[52*(n+1)+n], #]`
-/

namespace A142582.P583440620301953372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142582.P583440620301953372

namespace A142582

/-- `∏{p}[p?[52*(n+1)+n], #]` -/
def P583440620301953372.Spec : Prop :=
  ∀ n, (P583440620301953372.a n : ℤ) = A142582 (n + 1)

end A142582

/-! ## A142582.P2326490170203771043

`A000027(p?[A304840(n+1)+n+2])`
-/

namespace A142582.P2326490170203771043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142582.P2326490170203771043

namespace A142582

/-- `A000027(p?[A304840(n+1)+n+2])` -/
def P2326490170203771043.Spec : Prop :=
  ∀ n, P2326490170203771043.a n = A142582 (n + 1)

end A142582

/-! ## A142582.P15678969420957850773

`A000027(p?[A157947(n+1)+A017137(n)])`
-/

namespace A142582.P15678969420957850773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + A017137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142582.P15678969420957850773

namespace A142582

/-- `A000027(p?[A157947(n+1)+A017137(n)])` -/
def P15678969420957850773.Spec : Prop :=
  ∀ n, P15678969420957850773.a n = A142582 (n + 1)

end A142582

/-!
# A142583: A triangle sequence based on a prime root product using a primorial function: f(n)=primorial(n); p(x,n)=If[n == 0, 1, f(n)*(x + 1/f(n))*Product[x + Prime[i], {i, 1, n - 1}]]; t(n,m)=coefficients(p(x,n)).

The programs for A142583, there is no canonical definition to state claims against.
-/

/-! ## A142583.P14194009430088791760

`abs(A142148(A077739(n+1)))`
-/

namespace A142583.P14194009430088791760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142148 (A077739 (n + 1)).toNat|

end

end A142583.P14194009430088791760

/-! ## A142583.P9855157049707436877

`abs(A142148(A085134(n+1)))`
-/

namespace A142583.P9855157049707436877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142148 (A085134 (n + 1)).toNat|

end

end A142583.P9855157049707436877

/-! ## A142583.P15581809985966020250

`abs(A142148(n+1)%A007784(n+1))`
-/

namespace A142583.P15581809985966020250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A142148 (n + 1)) (A007784 (n + 1))|

end

end A142583.P15581809985966020250

/-! ## A142583.P15896901668501573665

`gcd(A008683((2^n+1)²-1), A142148(n+1))`
-/

namespace A142583.P15896901668501573665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 ((2 ^ n + 1) ^ 2 - 1)) (A142148 (n + 1))

end

end A142583.P15896901668501573665

/-! ## A142583.P6710174475120549609

`gcd(A007814(A142143(3*(n+1))), A142148(n+1))`
-/

namespace A142583.P6710174475120549609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A142143 (3 * (n + 1))).toNat) (A142148 (n + 1))

end

end A142583.P6710174475120549609

/-!
# A142584: a(n) = A014217(n+1) - A115360(n+2).

The programs for A142584, the canonical program `A142584.P8654170768485749778` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142584 has offset 1).

The definition of A142584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142584.P8654170768485749778

`A014217(n+2)-A115360(n+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142584

/-- `A014217(n+2)-A115360(n+3)` -/
def P8654170768485749778.Spec : Prop :=
  ∀ n, P8654170768485749778.a n = A142584 (n + 1)

theorem P8654170768485749778.correct : P8654170768485749778.Spec := by
  intro n
  simp only [A142584, Nat.add_sub_cancel]

end A142584

/-! ## A142584.P13970773815343060511

`and(-2, round(ϕ^(n+2)))`
-/

namespace A142584.P13970773815343060511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2)))

end

end A142584.P13970773815343060511

namespace A142584

/-- `and(-2, round(ϕ^(n+2)))` -/
def P13970773815343060511.Spec : Prop :=
  ∀ n, P13970773815343060511.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P16972848810961934885

`or(1, round(ϕ^(n+2)))-1`
-/

namespace A142584.P16972848810961934885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))) - 1

end

end A142584.P16972848810961934885

namespace A142584

/-- `or(1, round(ϕ^(n+2)))-1` -/
def P16972848810961934885.Spec : Prop :=
  ∀ n, P16972848810961934885.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P11174444740409318452

`2*A173714(n+1)`
-/

namespace A142584.P11174444740409318452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173714 (n + 1)

end

end A142584.P11174444740409318452

namespace A142584

/-- `2*A173714(n+1)` -/
def P11174444740409318452.Spec : Prop :=
  ∀ n, P11174444740409318452.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P10206598268439595142

`record[and(-2, A000032(n))]`
-/

namespace A142584.P10206598268439595142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142584.P10206598268439595142

namespace A142584

/-- `record[and(-2, A000032(n))]` -/
def P10206598268439595142.Spec : Prop :=
  ∀ n, P10206598268439595142.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P7431374529200463817

`2*floor(A288219(n)/2)`
-/

namespace A142584.P7431374529200463817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A288219 n : ℚ) / 2⌋

end

end A142584.P7431374529200463817

namespace A142584

/-- `2*floor(A288219(n)/2)` -/
def P7431374529200463817.Spec : Prop :=
  ∀ n, P7431374529200463817.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P9257478681900043337

`A000032(n+2)-(1-n%3)²`
-/

namespace A142584.P9257478681900043337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - (1 - ((n % 3 : ℕ) : ℤ)) ^ 2

end

end A142584.P9257478681900043337

namespace A142584

/-- `A000032(n+2)-(1-n%3)²` -/
def P9257478681900043337.Spec : Prop :=
  ∀ n, P9257478681900043337.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P9959927936237449704

`2*floor(A000032(C(n+2, n+1))/2)`
-/

namespace A142584.P9959927936237449704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000032 (Nat.choose (n + 2) (n + 1)) : ℚ) / 2⌋

end

end A142584.P9959927936237449704

namespace A142584

/-- `2*floor(A000032(C(n+2, n+1))/2)` -/
def P9959927936237449704.Spec : Prop :=
  ∀ n, P9959927936237449704.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P10898877809148477470

`A131534(n)+A014739(n)`
-/

namespace A142584.P10898877809148477470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n + A014739 n

end

end A142584.P10898877809148477470

namespace A142584

/-- `A131534(n)+A014739(n)` -/
def P10898877809148477470.Spec : Prop :=
  ∀ n, P10898877809148477470.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P10724168457569566009

`A092200(n)+A066982(n+1)`
-/

namespace A142584.P10724168457569566009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 n + A066982 (n + 1)

end

end A142584.P10724168457569566009

namespace A142584

/-- `A092200(n)+A066982(n+1)` -/
def P10724168457569566009.Spec : Prop :=
  ∀ n, P10724168457569566009.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P2144732720722116065

`A355325(n)+A081410(n+1)`
-/

namespace A142584.P2144732720722116065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355325 n + A081410 (n + 1)

end

end A142584.P2144732720722116065

namespace A142584

/-- `A355325(n)+A081410(n+1)` -/
def P2144732720722116065.Spec : Prop :=
  ∀ n, P2144732720722116065.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P8485263207040918546

`A033818(n+1)-A117571(n)`
-/

namespace A142584.P8485263207040918546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033818 (n + 1) - A117571 n

end

end A142584.P8485263207040918546

namespace A142584

/-- `A033818(n+1)-A117571(n)` -/
def P8485263207040918546.Spec : Prop :=
  ∀ n, P8485263207040918546.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P17618313834357894274

`A000032(n+2)-A204418(n)`
-/

namespace A142584.P17618313834357894274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A204418 n

end

end A142584.P17618313834357894274

namespace A142584

/-- `A000032(n+2)-A204418(n)` -/
def P17618313834357894274.Spec : Prop :=
  ∀ n, P17618313834357894274.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P4361928523249206641

`record[A001612(n)-gcd(2, A001612(n))]`
-/

namespace A142584.P4361928523249206641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - (Int.gcd 2 (A001612 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142584.P4361928523249206641

namespace A142584

/-- `record[A001612(n)-gcd(2, A001612(n))]` -/
def P4361928523249206641.Spec : Prop :=
  ∀ n, P4361928523249206641.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P10342176176497944709

`A255978(n+2)-A152163(n+1)`
-/

namespace A142584.P10342176176497944709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 (n + 2) - A152163 (n + 1)

end

end A142584.P10342176176497944709

namespace A142584

/-- `A255978(n+2)-A152163(n+1)` -/
def P10342176176497944709.Spec : Prop :=
  ∀ n, P10342176176497944709.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P1306884082264760460

`A000032(n+2)-A011655(n+2)`
-/

namespace A142584.P1306884082264760460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A011655 (n + 2)

end

end A142584.P1306884082264760460

namespace A142584

/-- `A000032(n+2)-A011655(n+2)` -/
def P1306884082264760460.Spec : Prop :=
  ∀ n, P1306884082264760460.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P405873056011167176

`A000204(n+2)-A011655(n+2)`
-/

namespace A142584.P405873056011167176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) - A011655 (n + 2)

end

end A142584.P405873056011167176

namespace A142584

/-- `A000204(n+2)-A011655(n+2)` -/
def P405873056011167176.Spec : Prop :=
  ∀ n, P405873056011167176.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P16227950551040049427

`A000032(n+2)-A267208(n+2)`
-/

namespace A142584.P16227950551040049427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A267208 (n + 2)

end

end A142584.P16227950551040049427

namespace A142584

/-- `A000032(n+2)-A267208(n+2)` -/
def P16227950551040049427.Spec : Prop :=
  ∀ n, P16227950551040049427.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P14124996939834728762

`A000032(n+2)-A000045(n+2)%2`
-/

namespace A142584.P14124996939834728762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - Int.tmod (A000045 (n + 2)) 2

end

end A142584.P14124996939834728762

namespace A142584

/-- `A000032(n+2)-A000045(n+2)%2` -/
def P14124996939834728762.Spec : Prop :=
  ∀ n, P14124996939834728762.a n = A142584 (n + 1)

end A142584

/-! ## A142584.P16179814362597602163

`A000045(gcd(n+2, n-1))+A000032(n+2)-2`
-/

namespace A142584.P16179814362597602163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) + (A000032 (n + 2) - 2)

end

end A142584.P16179814362597602163

namespace A142584

/-- `A000045(gcd(n+2, n-1))+A000032(n+2)-2` -/
def P16179814362597602163.Spec : Prop :=
  ∀ n, P16179814362597602163.a n = A142584 (n + 1)

end A142584

/-!
# A142585: Inverse binomial transform of A014217.

The programs for A142585, the canonical program `A142585.P4790948912570679400` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142585 has offset 0).

The definition of A142585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142585.P12245037328497569780

`ogf((1+3x+2x^2+x^3)/(1+3x+x^2-2x^3))`
-/

namespace A142585.P12245037328497569780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, 1] [1, 3, 1, -2] n

end

end A142585.P12245037328497569780

namespace A142585

/-- `ogf((1+3x+2x^2+x^3)/(1+3x+x^2-2x^3))` -/
def P12245037328497569780.Spec : Prop :=
  ∀ n, P12245037328497569780.a n = A142585 n

end A142585

/-! ## A142585.P4790948912570679400

`(A303427(2*n)-A011782(n))*(-1)^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142585

/-- `(A303427(2*n)-A011782(n))*(-1)^n` -/
def P4790948912570679400.Spec : Prop :=
  ∀ n, P4790948912570679400.a n = A142585 n

theorem P4790948912570679400.correct : P4790948912570679400.Spec := by
  intro n
  simp only [A142585]

end A142585

/-! ## A142585.P1932118218743931993

`(A000032(n)-A011782(n))*A034947(A005408(n))`
-/

namespace A142585.P1932118218743931993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A011782 n) * A034947 (A005408 n).toNat

end

end A142585.P1932118218743931993

namespace A142585

/-- `(A000032(n)-A011782(n))*A034947(A005408(n))` -/
def P1932118218743931993.Spec : Prop :=
  ∀ n, P1932118218743931993.a n = A142585 n

end A142585

/-! ## A142585.P13799896360956623301

`(A000032(n)-A166444(n+1))*A015987(A230865(n)-n)`
-/

namespace A142585.P13799896360956623301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A166444 (n + 1)) * A015987 (A230865 n - (n : ℤ)).toNat

end

end A142585.P13799896360956623301

namespace A142585

/-- `(A000032(n)-A166444(n+1))*A015987(A230865(n)-n)` -/
def P13799896360956623301.Spec : Prop :=
  ∀ n, P13799896360956623301.a n = A142585 n

end A142585

/-! ## A142585.P15801090346445057811

`A142710(n)-A142586(n)`
-/

namespace A142585.P15801090346445057811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142710 n - A142586 n

end

end A142585.P15801090346445057811

namespace A142585

/-- `A142710(n)-A142586(n)` -/
def P15801090346445057811.Spec : Prop :=
  ∀ n, P15801090346445057811.a n = A142585 n

end A142585

/-! ## A142585.P1164464273999343540

`2*A147586(n)-A142586(n)`
-/

namespace A142585.P1164464273999343540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147586 n - A142586 n

end

end A142585.P1164464273999343540

namespace A142585

/-- `2*A147586(n)-A142586(n)` -/
def P1164464273999343540.Spec : Prop :=
  ∀ n, P1164464273999343540.a n = A142585 n

end A142585

/-!
# A142586: Binomial transform of A014217.

The programs for A142586, the canonical program `A142586.P3948802429237657865` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142586 has offset 0).

The definition of A142586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142586.P3948802429237657865

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142586

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P3948802429237657865.Spec : Prop :=
  ∀ n, P3948802429237657865.a n = A142586 n

theorem P3948802429237657865.correct : P3948802429237657865.Spec := by
  intro n
  simp only [A142586]

end A142586

/-! ## A142586.P6396636062448345007

`A005248(n)-ceil(2^(n-1))`
-/

namespace A142586.P6396636062448345007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A142586.P6396636062448345007

namespace A142586

/-- `A005248(n)-ceil(2^(n-1))` -/
def P6396636062448345007.Spec : Prop :=
  ∀ n, P6396636062448345007.a n = A142586 n

end A142586

/-! ## A142586.P17770176103485799578

`record[A005247(n)]-ceil(2^(n-1))`
-/

namespace A142586.P17770176103485799578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A142586.P17770176103485799578

namespace A142586

/-- `record[A005247(n)]-ceil(2^(n-1))` -/
def P17770176103485799578.Spec : Prop :=
  ∀ n, P17770176103485799578.a n = A142586 n

end A142586

/-! ## A142586.P3639985758412435357

`floor(A000032(2*n)-2^(n-1))`
-/

namespace A142586.P3639985758412435357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (2 * n) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A142586.P3639985758412435357

namespace A142586

/-- `floor(A000032(2*n)-2^(n-1))` -/
def P3639985758412435357.Spec : Prop :=
  ∀ n, P3639985758412435357.a n = A142586 n

end A142586

/-! ## A142586.P2824379995153044746

`A122958(n)+A004146(n)`
-/

namespace A142586.P2824379995153044746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n + A004146 n

end

end A142586.P2824379995153044746

namespace A142586

/-- `A122958(n)+A004146(n)` -/
def P2824379995153044746.Spec : Prop :=
  ∀ n, P2824379995153044746.a n = A142586 n

end A142586

/-! ## A142586.P12635676624736526550

`A142710(n)-A142585(n)`
-/

namespace A142586.P12635676624736526550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142710 n - A142585 n

end

end A142586.P12635676624736526550

namespace A142586

/-- `A142710(n)-A142585(n)` -/
def P12635676624736526550.Spec : Prop :=
  ∀ n, P12635676624736526550.a n = A142586 n

end A142586

/-! ## A142586.P11351843170010152780

`A000032(2*n)-A011782(n)`
-/

namespace A142586.P11351843170010152780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A011782 n

end

end A142586.P11351843170010152780

namespace A142586

/-- `A000032(2*n)-A011782(n)` -/
def P11351843170010152780.Spec : Prop :=
  ∀ n, P11351843170010152780.a n = A142586 n

end A142586

/-! ## A142586.P10180556328598830285

`2*A147586(n)-A142585(n)`
-/

namespace A142586.P10180556328598830285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147586 n - A142585 n

end

end A142586.P10180556328598830285

namespace A142586

/-- `2*A147586(n)-A142585(n)` -/
def P10180556328598830285.Spec : Prop :=
  ∀ n, P10180556328598830285.a n = A142586 n

end A142586

/-! ## A142586.P17252162370909157883

`A169986(2*n)-A131577(n)`
-/

namespace A142586.P17252162370909157883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 (2 * n) - A131577 n

end

end A142586.P17252162370909157883

namespace A142586

/-- `A169986(2*n)-A131577(n)` -/
def P17252162370909157883.Spec : Prop :=
  ∀ n, P17252162370909157883.a n = A142586 n

end A142586

/-! ## A142586.P7439222199469425000

`A061084(2*n+1)-A011782(n)`
-/

namespace A142586.P7439222199469425000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n + 1) - A011782 n

end

end A142586.P7439222199469425000

namespace A142586

/-- `A061084(2*n+1)-A011782(n)` -/
def P7439222199469425000.Spec : Prop :=
  ∀ n, P7439222199469425000.a n = A142586 n

end A142586

/-! ## A142586.P1134424101835860410

`A000032(2*n)-A166444(n+1)`
-/

namespace A142586.P1134424101835860410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A166444 (n + 1)

end

end A142586.P1134424101835860410

namespace A142586

/-- `A000032(2*n)-A166444(n+1)` -/
def P1134424101835860410.Spec : Prop :=
  ∀ n, P1134424101835860410.a n = A142586 n

end A142586

/-! ## A142586.P7988704289412054245

`A000032(2*n)-A211164(2*n)`
-/

namespace A142586.P7988704289412054245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A211164 (2 * n)

end

end A142586.P7988704289412054245

namespace A142586

/-- `A000032(2*n)-A211164(2*n)` -/
def P7988704289412054245.Spec : Prop :=
  ∀ n, P7988704289412054245.a n = A142586 n

end A142586

/-! ## A142586.P12797986886898745680

`A000032(comp[2*(n+1)]+1)-A131577(n)`
-/

namespace A142586.P12797986886898745680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A131577 n

end

end A142586.P12797986886898745680

namespace A142586

/-- `A000032(comp[2*(n+1)]+1)-A131577(n)` -/
def P12797986886898745680.Spec : Prop :=
  ∀ n, P12797986886898745680.a n = A142586 n

end A142586

/-! ## A142586.P7190450792221146324

`abs(A000032(A004277(n))-A131577(n))`
-/

namespace A142586.P7190450792221146324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 (A004277 n).toNat - A131577 n|

end

end A142586.P7190450792221146324

namespace A142586

/-- `abs(A000032(A004277(n))-A131577(n))` -/
def P7190450792221146324.Spec : Prop :=
  ∀ n, P7190450792221146324.a n = A142586 n

end A142586

/-! ## A142586.P17345885344063505013

`A001519(n+1)+A001519(n)-A011782(n)`
-/

namespace A142586.P17345885344063505013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A001519 n - A011782 n)

end

end A142586.P17345885344063505013

namespace A142586

/-- `A001519(n+1)+A001519(n)-A011782(n)` -/
def P17345885344063505013.Spec : Prop :=
  ∀ n, P17345885344063505013.a n = A142586 n

end A142586

/-! ## A142586.P4992377521869012592

`A001519(n+1)+A001519(n)-A166444(n+1)`
-/

namespace A142586.P4992377521869012592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A001519 n - A166444 (n + 1))

end

end A142586.P4992377521869012592

namespace A142586

/-- `A001519(n+1)+A001519(n)-A166444(n+1)` -/
def P4992377521869012592.Spec : Prop :=
  ∀ n, P4992377521869012592.a n = A142586 n

end A142586

/-! ## A142586.P7598852573401172723

`A029744(2*n+1)+A000032(2*n)-A029744(2*(n+1))`
-/

namespace A142586.P7598852573401172723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * n + 1) + (A000032 (2 * n) - A029744 (2 * (n + 1)))

end

end A142586.P7598852573401172723

namespace A142586

/-- `A029744(2*n+1)+A000032(2*n)-A029744(2*(n+1))` -/
def P7598852573401172723.Spec : Prop :=
  ∀ n, P7598852573401172723.a n = A142586 n

end A142586

/-! ## A142586.P7422995413840681729

`A226433(n+1)-A054452(n)`
-/

namespace A142586.P7422995413840681729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226433 (n + 1) - A054452 n

end

end A142586.P7422995413840681729

namespace A142586

/-- `A226433(n+1)-A054452(n)` -/
def P7422995413840681729.Spec : Prop :=
  ∀ n, P7422995413840681729.a n = A142586 n

end A142586

/-! ## A142586.P15930454461406946901

`A001610(2*n+1)-(A158780(2*n+1)+A001610(2*n))`
-/

namespace A142586.P15930454461406946901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) - (A158780 (2 * n + 1) + A001610 (2 * n))

end

end A142586.P15930454461406946901

namespace A142586

/-- `A001610(2*n+1)-(A158780(2*n+1)+A001610(2*n))` -/
def P15930454461406946901.Spec : Prop :=
  ∀ n, P15930454461406946901.a n = A142586 n

end A142586

/-!
# A142588: A trisection of A000129, the Pell numbers.

The programs for A142588, the canonical program `A142588.P14446721395174826203` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142588 has offset 0).

The definition of A142588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142588.P7824530262820737045

`((7+5*sqrt(2))^n-(7-5*sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A142588.P7824530262820737045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 5 * Real.sqrt (2 : ℝ)) ^ n - (7 - 5 * Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A142588.P7824530262820737045

namespace A142588

/-- `((7+5*sqrt(2))^n-(7-5*sqrt(2))^n)/(2*sqrt(2))` -/
def P7824530262820737045.Spec : Prop :=
  ∀ n, P7824530262820737045.a n = (A142588 n : ℝ)

end A142588

/-! ## A142588.P14446721395174826203

`A000129(3*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142588

/-- `A000129(3*n)` -/
def P14446721395174826203.Spec : Prop :=
  ∀ n, P14446721395174826203.a n = A142588 n

theorem P14446721395174826203.correct : P14446721395174826203.Spec := by
  intro n
  simp only [A142588]

end A142588

/-! ## A142588.P4934746557606150546

`ogf(5x/(1-14x-x^2))`
-/

namespace A142588.P4934746557606150546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -14, -1] n

end

end A142588.P4934746557606150546

namespace A142588

/-- `ogf(5x/(1-14x-x^2))` -/
def P4934746557606150546.Spec : Prop :=
  ∀ n, P4934746557606150546.a n = A142588 n

end A142588

/-! ## A142588.P14139001201540005926

`a(n-2)+14*a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A142588.P14139001201540005926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 2) + 14 * a (n - 1)

end

end A142588.P14139001201540005926

namespace A142588

/-- `a(n-2)+14*a(n-1)` -/
def P14139001201540005926.Spec : Prop :=
  ∀ n, (P14139001201540005926.a n : ℤ) = A142588 n

end A142588

/-! ## A142588.P2205318495206811880

`16*a(n-1)-(a(n-1)-a(n-2))-a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A142588.P2205318495206811880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  16 * a (n - 1) - (a (n - 1) - a (n - 2)) - a (n - 1)

end

end A142588.P2205318495206811880

namespace A142588

/-- `16*a(n-1)-(a(n-1)-a(n-2))-a(n-1)` -/
def P2205318495206811880.Spec : Prop :=
  ∀ n, P2205318495206811880.a n = A142588 n

end A142588

/-! ## A142588.P15988566315175829595

`A002965(6*n)`
-/

namespace A142588.P15988566315175829595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (6 * n)

end

end A142588.P15988566315175829595

namespace A142588

/-- `A002965(6*n)` -/
def P15988566315175829595.Spec : Prop :=
  ∀ n, P15988566315175829595.a n = A142588 n

end A142588

/-! ## A142588.P7019097384824938936

`A116558(6*n)`
-/

namespace A142588.P7019097384824938936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (6 * n)

end

end A142588.P7019097384824938936

namespace A142588

/-- `A116558(6*n)` -/
def P7019097384824938936.Spec : Prop :=
  ∀ n, P7019097384824938936.a n = A142588 n

end A142588

/-! ## A142588.P3812157887318830521

`A135153(6*n)`
-/

namespace A142588.P3812157887318830521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (6 * n)

end

end A142588.P3812157887318830521

namespace A142588

/-- `A135153(6*n)` -/
def P3812157887318830521.Spec : Prop :=
  ∀ n, P3812157887318830521.a n = A142588 n

end A142588

/-! ## A142588.P12220622260770300590

`A249576(9*n)`
-/

namespace A142588.P12220622260770300590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (9 * n)

end

end A142588.P12220622260770300590

namespace A142588

/-- `A249576(9*n)` -/
def P12220622260770300590.Spec : Prop :=
  ∀ n, P12220622260770300590.a n = A142588 n

end A142588

/-! ## A142588.P230659766837785103

`A174191(3*n)-1`
-/

namespace A142588.P230659766837785103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (3 * n) - 1

end

end A142588.P230659766837785103

namespace A142588

/-- `A174191(3*n)-1` -/
def P230659766837785103.Spec : Prop :=
  ∀ n, P230659766837785103.a n = A142588 n

end A142588

/-!
# A142589: Square array T(n,m) = Product_{i=0..m} (1+n*i) read by antidiagonals.

The programs for A142589, there is no canonical definition to state claims against.
-/

/-! ## A142589.P11799777589547780406

`A256268(∑[char[∑[n]]]+n)`
-/

namespace A142589.P11799777589547780406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A142589.P11799777589547780406

/-! ## A142589.P2510029800699956440

`A077028(n)*A256268(n)`
-/

namespace A142589.P2510029800699956440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A256268 n

end

end A142589.P2510029800699956440

/-! ## A142589.P5259961411854668667

`(A004247(n)+1)*A256268(n)`
-/

namespace A142589.P5259961411854668667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) * A256268 n

end

end A142589.P5259961411854668667

/-! ## A142589.P9391113364941196643

`A008619(A130154(n+1))*A256268(n)`
-/

namespace A142589.P9391113364941196643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A130154 (n + 1)).toNat * A256268 n

end

end A142589.P9391113364941196643

/-! ## A142589.P5462896218878262952

`A008619(2*A004247(n))*A256268(n)`
-/

namespace A142589.P5462896218878262952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A004247 n).toNat * A256268 n

end

end A142589.P5462896218878262952

/-! ## A142589.P9558962344262450791

`A256268(A007401(n+1))+A000038(n+1)`
-/

namespace A142589.P9558962344262450791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 (A007401 (n + 1)).toNat + A000038 (n + 1)

end

end A142589.P9558962344262450791

/-! ## A142589.P17694119233066432012

`A074909(A285192(n))*A256268(n)`
-/

namespace A142589.P17694119233066432012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A285192 n).toNat * A256268 n

end

end A142589.P17694119233066432012

/-! ## A142589.P15029903881273459105

`A009531(A107171(n+1))*A256268(A014132(n+1)-1)`
-/

namespace A142589.P15029903881273459105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A107171 (n + 1)).toNat * A256268 (A014132 (n + 1) - 1).toNat

end

end A142589.P15029903881273459105

/-!
# A142590: First trisection of A061037 (Balmer line series of the hydrogen atom).

The programs for A142590, the canonical program `A142590.P16542359510751384512` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142590 has offset 0).

The definition of A142590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142590.P17788541178248868181

`3*n*(3*n+4)*(37-27*cos(n*π)-6*cos(n*π/2))/64`
-/

namespace A142590.P17788541178248868181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n * (3 * n + 4) : ℝ) * (37 - 27 * Real.cos ((n : ℝ) * Real.pi) - 6 * Real.cos ((n : ℝ) * Real.pi / 2)) / 64

end

end A142590.P17788541178248868181

namespace A142590

/-- `3*n*(3*n+4)*(37-27*cos(n*π)-6*cos(n*π/2))/64` -/
def P17788541178248868181.Spec : Prop :=
  ∀ n, P17788541178248868181.a n = (A142590 n : ℝ)

end A142590

/-! ## A142590.P16542359510751384512

`A061037(2+3*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142590

/-- `A061037(2+3*n)` -/
def P16542359510751384512.Spec : Prop :=
  ∀ n, P16542359510751384512.a n = A142590 n

theorem P16542359510751384512.correct : P16542359510751384512.Spec := by
  intro n
  simp only [A142590]

end A142590

/-! ## A142590.P1977265703351727650

`3*A142883(n)`
-/

namespace A142590.P1977265703351727650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A142883 n

end

end A142590.P1977265703351727650

namespace A142590

/-- `3*A142883(n)` -/
def P1977265703351727650.Spec : Prop :=
  ∀ n, P1977265703351727650.a n = A142590 n

end A142590

/-! ## A142590.P10594971123529823791

`3*(A191567(n)+A181318(n))`
-/

namespace A142590.P10594971123529823791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A191567 n + A181318 n)

end

end A142590.P10594971123529823791

namespace A142590

/-- `3*(A191567(n)+A181318(n))` -/
def P10594971123529823791.Spec : Prop :=
  ∀ n, P10594971123529823791.a n = A142590 n

end A142590

/-! ## A142590.P13643808290661625236

`sqrt(A181763(3*n+2))`
-/

namespace A142590.P13643808290661625236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181763 (3 * n + 2) : ℝ)

end

end A142590.P13643808290661625236

namespace A142590

/-- `sqrt(A181763(3*n+2))` -/
def P13643808290661625236.Spec : Prop :=
  ∀ n, P13643808290661625236.a n = (A142590 n : ℝ)

end A142590

/-! ## A142590.P5401098079744727963

`A171621(3*n+2)/A010121(n)`
-/

namespace A142590.P5401098079744727963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171621 (3 * n + 2) : ℚ) / (A010121 n : ℚ)

end

end A142590.P5401098079744727963

namespace A142590

/-- `A171621(3*n+2)/A010121(n)` -/
def P5401098079744727963.Spec : Prop :=
  ∀ n, P5401098079744727963.a n = (A142590 n : ℚ)

end A142590

/-! ## A142590.P17818969870943234489

`A246416(3*n)*A247617(3*n)`
-/

namespace A142590.P17818969870943234489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (3 * n) * A247617 (3 * n)

end

end A142590.P17818969870943234489

namespace A142590

/-- `A246416(3*n)*A247617(3*n)` -/
def P17818969870943234489.Spec : Prop :=
  ∀ n, P17818969870943234489.a n = A142590 n

end A142590

/-! ## A142590.P16001369228166870585

`A247829(A249693(2*n+n+2))`
-/

namespace A142590.P16001369228166870585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A249693 (2 * n + (n + 2))).toNat

end

end A142590.P16001369228166870585

namespace A142590

/-- `A247829(A249693(2*n+n+2))` -/
def P16001369228166870585.Spec : Prop :=
  ∀ n, P16001369228166870585.a n = A142590 n

end A142590

/-! ## A142590.P4280357511176928786

`A175628(6*n+2)`
-/

namespace A142590.P4280357511176928786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (6 * n + 2)

end

end A142590.P4280357511176928786

namespace A142590

/-- `A175628(6*n+2)` -/
def P4280357511176928786.Spec : Prop :=
  ∀ n, P4280357511176928786.a n = A142590 n

end A142590

/-! ## A142590.P7447267877665137764

`A225948(6*n+4)`
-/

namespace A142590.P7447267877665137764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (6 * n + 4)

end

end A142590.P7447267877665137764

namespace A142590

/-- `A225948(6*n+4)` -/
def P7447267877665137764.Spec : Prop :=
  ∀ n, P7447267877665137764.a n = A142590 n

end A142590

/-! ## A142590.P15689116934813661046

`A129647(A145979(3*n))`
-/

namespace A142590.P15689116934813661046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (A145979 (3 * n)).toNat

end

end A142590.P15689116934813661046

namespace A142590

/-- `A129647(A145979(3*n))` -/
def P15689116934813661046.Spec : Prop :=
  ∀ n, P15689116934813661046.a n = A142590 n

end A142590

/-! ## A142590.P14029745163198767791

`A214297(A145979(2*n+n))`
-/

namespace A142590.P14029745163198767791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A145979 (2 * n + n)).toNat

end

end A142590.P14029745163198767791

namespace A142590

/-- `A214297(A145979(2*n+n))` -/
def P14029745163198767791.Spec : Prop :=
  ∀ n, P14029745163198767791.a n = A142590 n

end A142590

/-!
# A142591: Composite terms in A143578.

The programs for A142591, there is no canonical definition to state claims against.
-/

/-! ## A142591.P14325369947565893558

`∩[A061367(n+1), A070160(n+1)]`
-/

namespace A142591.P14325369947565893558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P14325369947565893558

/-! ## A142591.P7877199656572994393

`∩[A061367(n+1), A070161(n+1)]`
-/

namespace A142591.P7877199656572994393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P7877199656572994393

/-! ## A142591.P5073158689256044140

`∩[A070160(n+1), A130871(n+1)]`
-/

namespace A142591.P5073158689256044140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P5073158689256044140

/-! ## A142591.P3813785485148454774

`∩[A070161(n+1), A130871(n+1)]`
-/

namespace A142591.P3813785485148454774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P3813785485148454774

/-! ## A142591.P3274621097591825626

`∩[A061367(n+1), A294149(n+1)]`
-/

namespace A142591.P3274621097591825626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P3274621097591825626

/-! ## A142591.P2275286357969481000

`∩[A070160(n+1), A294149(n+1)]`
-/

namespace A142591.P2275286357969481000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P2275286357969481000

/-! ## A142591.P3743745573197634084

`∩[A070161(n+1), A294149(n+1)]`
-/

namespace A142591.P3743745573197634084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P3743745573197634084

/-! ## A142591.P17533664923953183157

`∩[A061367(n+1), A321182(n+1)]`
-/

namespace A142591.P17533664923953183157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P17533664923953183157

/-! ## A142591.P17110198133397023316

`∩[A070160(n+1), A321182(n+1)]`
-/

namespace A142591.P17110198133397023316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P17110198133397023316

/-! ## A142591.P17256106199089638219

`∩[A070161(n+1), A321182(n+1)]`
-/

namespace A142591.P17256106199089638219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P17256106199089638219

/-! ## A142591.P453945150257911980

`∩[A130871(n+1), A321182(n+1)]`
-/

namespace A142591.P453945150257911980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P453945150257911980

/-! ## A142591.P8889040447975866632

`∩[A070160(n+1), A143321(n+1)]`
-/

namespace A142591.P8889040447975866632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P8889040447975866632

/-! ## A142591.P2370198057389122217

`∩[A070161(n+1), A143321(n+1)]`
-/

namespace A142591.P2370198057389122217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P2370198057389122217

/-! ## A142591.P4133247988724692555

`∩[A061367(n+1), A238232(n+1)]`
-/

namespace A142591.P4133247988724692555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P4133247988724692555

/-! ## A142591.P2445270909032893929

`∩[A070160(n+1), A238232(n+1)]`
-/

namespace A142591.P2445270909032893929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P2445270909032893929

/-! ## A142591.P3989903002971872902

`∩[A070161(n+1), A238232(n+1)]`
-/

namespace A142591.P3989903002971872902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P3989903002971872902

/-! ## A142591.P660454968525981399

`∩[A130871(n+1), A238232(n+1)]`
-/

namespace A142591.P660454968525981399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P660454968525981399

/-! ## A142591.P16890395472944662542

`∩[A143321(n+1), A238232(n+1)]`
-/

namespace A142591.P16890395472944662542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P16890395472944662542

/-! ## A142591.P3726751947843088718

`∩[A238232(n+1), A294149(n+1)]`
-/

namespace A142591.P3726751947843088718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P3726751947843088718

/-! ## A142591.P7440357473583954440

`∩[A321182(n+1), A238232(n+1)]`
-/

namespace A142591.P7440357473583954440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142591.P7440357473583954440

/-!
# A142592: Primes congruent to 29 mod 54.

The programs for A142592, there is no canonical definition to state claims against.
-/

/-! ## A142592.P935614116059204273

`A141949(n+2)`
-/

namespace A142592.P935614116059204273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141949 (n + 2)

end

end A142592.P935614116059204273

/-! ## A142592.P13621788514125000396

`p?[27*(n+1)+2]`
-/

namespace A142592.P13621788514125000396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142592.P13621788514125000396

/-! ## A142592.P4105867000704689489

`∩[A049229(n+1), A281546(n)]`
-/

namespace A142592.P4105867000704689489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P4105867000704689489

/-! ## A142592.P13309598435921307223

`∩[A129807(n+1), A281546(n)]`
-/

namespace A142592.P13309598435921307223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P13309598435921307223

/-! ## A142592.P3956086935786715785

`∩[A061238(n+2), A281546(n)]`
-/

namespace A142592.P3956086935786715785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P3956086935786715785

/-! ## A142592.P4694886833610994024

`∩[A007528(n+1), A281546(n)]`
-/

namespace A142592.P4694886833610994024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P4694886833610994024

/-! ## A142592.P991868272201770250

`∩[A045410(n+1), A281546(n)]`
-/

namespace A142592.P991868272201770250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P991868272201770250

/-! ## A142592.P18234981106242143421

`∩[A056955(n+1), A281546(n)]`
-/

namespace A142592.P18234981106242143421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P18234981106242143421

/-! ## A142592.P4260843793067461053

`∩[A003627(n+2), A281546(n)]`
-/

namespace A142592.P4260843793067461053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P4260843793067461053

/-! ## A142592.P16184442738616985312

`∩[A045309(n+2), A281546(n)]`
-/

namespace A142592.P16184442738616985312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P16184442738616985312

/-! ## A142592.P309328076727355034

`∩[A320518(n+1), A281546(n)]`
-/

namespace A142592.P309328076727355034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P309328076727355034

/-! ## A142592.P15545877856274760429

`∩[A049596(n+2), A281546(n)]`
-/

namespace A142592.P15545877856274760429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P15545877856274760429

/-! ## A142592.P8763935914775830017

`∩[A164319(n+1), A281546(n)]`
-/

namespace A142592.P8763935914775830017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P8763935914775830017

/-! ## A142592.P9249426328152137947

`∩[A040044(n+2), A281546(n)]`
-/

namespace A142592.P9249426328152137947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P9249426328152137947

/-! ## A142592.P15726059548602167136

`∩[A040046(n+2), A281546(n)]`
-/

namespace A142592.P15726059548602167136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P15726059548602167136

/-! ## A142592.P4609155192020742519

`∩[A040087(n+2), A281546(n)]`
-/

namespace A142592.P4609155192020742519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P4609155192020742519

/-! ## A142592.P6688552900053247306

`∩[A040060(n+2), A281546(n)]`
-/

namespace A142592.P6688552900053247306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P6688552900053247306

/-! ## A142592.P17614741151103352052

`∩[A040083(n+2), A281546(n)]`
-/

namespace A142592.P17614741151103352052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P17614741151103352052

/-! ## A142592.P15367925896272424591

`∩[A040095(n+2), A281546(n)]`
-/

namespace A142592.P15367925896272424591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P15367925896272424591

/-! ## A142592.P8068996486161541469

`∩[A040028(n+2), A281546(n)]`
-/

namespace A142592.P8068996486161541469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142592.P8068996486161541469

/-!
# A142593: Irregular triangle read by rows: row n gives successive exponents in prime factorization of A141900(n).

The programs for A142593, there is no canonical definition to state claims against.
-/

/-! ## A142593.P6132626648520487355

`A123539(∑[A181154(n)!])`
-/

namespace A142593.P6132626648520487355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A142593.P6132626648520487355

/-! ## A142593.P8262580919357160344

`A123539(n+1)%p?[A123492(n)]`
-/

namespace A142593.P8262580919357160344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123539 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142593.P8262580919357160344

/-! ## A142593.P8213327727574072720

`A123539(n+1)+val(A059802(n+1), 7)`
-/

namespace A142593.P8213327727574072720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123539 (n + 1) + (SequenceMachineLib.valuation (A059802 (n + 1)).toNat 7 : ℤ)

end

end A142593.P8213327727574072720

/-! ## A142593.P16687234941938289865

`A123539(A000027(n+1))%A059802(n+1)`
-/

namespace A142593.P16687234941938289865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123539 (A000027 (n + 1)).toNat) (A059802 (n + 1))

end

end A142593.P16687234941938289865

/-! ## A142593.P13897379497280943223

`gcd(A001462(n+1), A293451(A140643(2*n+1)))`
-/

namespace A142593.P13897379497280943223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001462 (n + 1)) (A293451 (A140643 (2 * n + 1)).toNat)

end

end A142593.P13897379497280943223

/-!
# A142594: Product of exponents in prime factorization of A141900(n).

The programs for A142594, there is no canonical definition to state claims against.
-/

/-! ## A142594.P14086412901743591625

`(n+1)*A262681(A002625(n))`
-/

namespace A142594.P14086412901743591625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262681 (A002625 n).toNat

end

end A142594.P14086412901743591625

/-! ## A142594.P4240150088666771644

`(n+1)*A262681(A004068(n))`
-/

namespace A142594.P4240150088666771644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262681 (A004068 n).toNat

end

end A142594.P4240150088666771644

/-! ## A142594.P4162365925505606343

`(n+1)*∑[A113048(A000070(n))]`
-/

namespace A142594.P4162365925505606343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113048 (A000070 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A142594.P4162365925505606343

/-! ## A142594.P3747355241679308883

`(n+1)*A032552(A089003(n+1))`
-/

namespace A142594.P3747355241679308883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032552 (A089003 (n + 1)).toNat

end

end A142594.P3747355241679308883

/-! ## A142594.P4914325597914848698

`A262681(A375705(n+1))*A348553(n)`
-/

namespace A142594.P4914325597914848698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A375705 (n + 1)).toNat * A348553 n

end

end A142594.P4914325597914848698

/-!
# A142595: Triangle T(n,k) = 2*T(n-1, k-1) + 2*T(n-1, k), read by rows.

The programs for A142595, there is no canonical definition to state claims against.
-/

/-! ## A142595.P14890944500007723482

`A127260(2*A099594(n))`
-/

namespace A142595.P14890944500007723482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127260 (2 * A099594 n).toNat

end

end A142595.P14890944500007723482

/-! ## A142595.P14035262737820605047

`A127260(2*A255256(n))`
-/

namespace A142595.P14035262737820605047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127260 (2 * A255256 n).toNat

end

end A142595.P14035262737820605047

/-! ## A142595.P6839345652599114981

`A343985(2*A372068(n))`
-/

namespace A142595.P6839345652599114981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343985 (2 * A372068 n).toNat

end

end A142595.P6839345652599114981

/-! ## A142595.P3776528964994655351

`A103634(3*A099594(n))`
-/

namespace A142595.P3776528964994655351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (3 * A099594 n).toNat

end

end A142595.P3776528964994655351

/-! ## A142595.P3176232489269807922

`A177736(A048720(n)%A371075(n+1))`
-/

namespace A142595.P3176232489269807922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177736 (Int.tmod (A048720 n) (A371075 (n + 1))).toNat

end

end A142595.P3176232489269807922

/-!
# A142596: Triangle T(n, k) = T(n-1, k-1) + 3*T(n-1, k) + 2*T(n-1, k-1), with T(n,1) = T(n, n) = 1, read by rows.

The programs for A142596, there is no canonical definition to state claims against.
-/

/-! ## A142596.P4483151861160824855

`A008486(A278157(n+1)^A137795(n+1))`
-/

namespace A142596.P4483151861160824855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A278157 (n + 1) : ℚ) ^ (A137795 (n + 1) : ℤ))).toNat

end

end A142596.P4483151861160824855

/-! ## A142596.P3201186761647386272

`A008486(A278157(n+1))%A331874(n+1)`
-/

namespace A142596.P3201186761647386272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A278157 (n + 1)).toNat) (A331874 (n + 1))

end

end A142596.P3201186761647386272

/-! ## A142596.P2772867629506469377

`A008486(A137795(n+1)²²*A278157(n+1))`
-/

namespace A142596.P2772867629506469377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((A137795 (n + 1) ^ 2) ^ 2 * A278157 (n + 1)).toNat

end

end A142596.P2772867629506469377

/-! ## A142596.P5252688276407908642

`A105790(A022167(n))`
-/

namespace A142596.P5252688276407908642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105790 (A022167 n).toNat

end

end A142596.P5252688276407908642

/-! ## A142596.P14556776111946588530

`A114999(A056941(n))`
-/

namespace A142596.P14556776111946588530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114999 (A056941 n).toNat

end

end A142596.P14556776111946588530

/-!
# A142597: Triangle read by rows: t(n,k)=t(n - 1, k - 1) + 4* t(n - 1, k) + 3*t(n - 1, k - 1).

The programs for A142597, there is no canonical definition to state claims against.
-/

/-! ## A142597.P13278704408826320227

`A134637(A143007(n))`
-/

namespace A142597.P13278704408826320227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134637 (A143007 n).toNat

end

end A142597.P13278704408826320227

/-! ## A142597.P2060362961720495108

`A175246(A176467(n))`
-/

namespace A142597.P2060362961720495108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175246 (A176467 n).toNat

end

end A142597.P2060362961720495108

/-! ## A142597.P14486614752043034884

`A257470(A118185(n))`
-/

namespace A142597.P14486614752043034884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257470 (A118185 n).toNat

end

end A142597.P14486614752043034884

/-! ## A142597.P13479004997943931211

`A329395(A154980(n))`
-/

namespace A142597.P13479004997943931211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (A154980 n).toNat

end

end A142597.P13479004997943931211

/-! ## A142597.P12050300765648073962

`A331873(A157637(n))`
-/

namespace A142597.P12050300765648073962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (A157637 n).toNat

end

end A142597.P12050300765648073962

/-!
# A142598: Antidiagonal triangle sequence of coefficient expansion of the general prime product polynomial: f(x,n) = (1 + t^2)/Product_{i=1..n} (1 - t^prime(i + 1)).

The programs for A142598, there is no canonical definition to state claims against.
-/

/-! ## A142598.P14265654686298876338

`A268643(gcd(A158405(n+1), A158517(n+1)))`
-/

namespace A142598.P14265654686298876338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (Int.gcd (A158405 (n + 1)) (A158517 (n + 1)))

end

end A142598.P14265654686298876338

/-! ## A142598.P3186185357309218315

`A322530(A002262(n)%A226675(n+1))`
-/

namespace A142598.P3186185357309218315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (Int.tmod (A002262 n) (A226675 (n + 1))).toNat

end

end A142598.P3186185357309218315

/-! ## A142598.P4259894033400076594

`A208879(A264909(n))%A130321(A002260(n+1))`
-/

namespace A142598.P4259894033400076594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208879 (A264909 n).toNat) (A130321 (A002260 (n + 1)).toNat)

end

end A142598.P4259894033400076594

/-! ## A142598.P16282314583682975129

`A276395(A361839(n))`
-/

namespace A142598.P16282314583682975129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276395 (A361839 n).toNat

end

end A142598.P16282314583682975129

/-!
# A142599: Second trisection of A061037.

The programs for A142599, the canonical program `A142599.P10304847295712391913` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142599 has offset 1).

The definition of A142599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142599.P10304847295712391913

`A176672(n)*A302773(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142599

/-- `A176672(n)*A302773(n+1)` -/
def P10304847295712391913.Spec : Prop :=
  ∀ n, P10304847295712391913.a n = A142599 (n + 1)

theorem P10304847295712391913.correct : P10304847295712391913.Spec := by
  intro n
  simp only [A142599, Nat.add_sub_cancel]

end A142599

/-! ## A142599.P16779770005868936046

`A177049(n+1)/A176672(n+1)*A176672(n)`
-/

namespace A142599.P16779770005868936046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177049 (n + 1) : ℚ) / (A176672 (n + 1) : ℚ) * (A176672 n : ℚ)

end

end A142599.P16779770005868936046

namespace A142599

/-- `A177049(n+1)/A176672(n+1)*A176672(n)` -/
def P16779770005868936046.Spec : Prop :=
  ∀ n, P16779770005868936046.a n = (A142599 (n + 1) : ℚ)

end A142599

/-! ## A142599.P5888592440536032470

`A070262(3*n+1)`
-/

namespace A142599.P5888592440536032470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070262 (3 * n + 1)

end

end A142599.P5888592440536032470

namespace A142599

/-- `A070262(3*n+1)` -/
def P5888592440536032470.Spec : Prop :=
  ∀ n, P5888592440536032470.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P5916370021036086656

`A026741(A165355(n))*A302773(n+1)`
-/

namespace A142599.P5916370021036086656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165355 n).toNat * A302773 (n + 1)

end

end A142599.P5916370021036086656

namespace A142599

/-- `A026741(A165355(n))*A302773(n+1)` -/
def P5916370021036086656.Spec : Prop :=
  ∀ n, P5916370021036086656.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P15802134807939033415

`A060819(A165367(2*n))*A302773(n+1)`
-/

namespace A142599.P15802134807939033415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A165367 (2 * n)).toNat * A302773 (n + 1)

end

end A142599.P15802134807939033415

namespace A142599

/-- `A060819(A165367(2*n))*A302773(n+1)` -/
def P15802134807939033415.Spec : Prop :=
  ∀ n, P15802134807939033415.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P6506132813791810578

`A026741(A302773(2*n))*A302773(n+1)`
-/

namespace A142599.P6506132813791810578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A302773 (2 * n)).toNat * A302773 (n + 1)

end

end A142599.P6506132813791810578

namespace A142599

/-- `A026741(A302773(2*n))*A302773(n+1)` -/
def P6506132813791810578.Spec : Prop :=
  ∀ n, P6506132813791810578.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P13066191774422326019

`A061037(3*(n+1))`
-/

namespace A142599.P13066191774422326019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (3 * (n + 1))

end

end A142599.P13066191774422326019

namespace A142599

/-- `A061037(3*(n+1))` -/
def P13066191774422326019.Spec : Prop :=
  ∀ n, P13066191774422326019.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P5474625426861174152

`sqrt(A181763(3*(n+1)))`
-/

namespace A142599.P5474625426861174152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181763 (3 * (n + 1)) : ℝ)

end

end A142599.P5474625426861174152

namespace A142599

/-- `sqrt(A181763(3*(n+1)))` -/
def P5474625426861174152.Spec : Prop :=
  ∀ n, P5474625426861174152.a n = (A142599 (n + 1) : ℝ)

end A142599

/-! ## A142599.P17404205498891978502

`A060819(A016789(n+1))*A176672(n)`
-/

namespace A142599.P17404205498891978502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A016789 (n + 1)).toNat * A176672 n

end

end A142599.P17404205498891978502

namespace A142599

/-- `A060819(A016789(n+1))*A176672(n)` -/
def P17404205498891978502.Spec : Prop :=
  ∀ n, P17404205498891978502.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P8246419603333288626

`A026741(A165367(n+1))*A176672(n)`
-/

namespace A142599.P8246419603333288626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165367 (n + 1)).toNat * A176672 n

end

end A142599.P8246419603333288626

namespace A142599

/-- `A026741(A165367(n+1))*A176672(n)` -/
def P8246419603333288626.Spec : Prop :=
  ∀ n, P8246419603333288626.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P15491483252810634758

`A060819(3*n+1)*A060819(A016789(n+1))`
-/

namespace A142599.P15491483252810634758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (3 * n + 1) * A060819 (A016789 (n + 1)).toNat

end

end A142599.P15491483252810634758

namespace A142599

/-- `A060819(3*n+1)*A060819(A016789(n+1))` -/
def P15491483252810634758.Spec : Prop :=
  ∀ n, P15491483252810634758.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P17898275096996942582

`A175628(6*n+4)`
-/

namespace A142599.P17898275096996942582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (6 * n + 4)

end

end A142599.P17898275096996942582

namespace A142599

/-- `A175628(6*n+4)` -/
def P17898275096996942582.Spec : Prop :=
  ∀ n, P17898275096996942582.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P11262194980653632300

`A225948(6*(n+1))`
-/

namespace A142599.P11262194980653632300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (6 * (n + 1))

end

end A142599.P11262194980653632300

namespace A142599

/-- `A225948(6*(n+1))` -/
def P11262194980653632300.Spec : Prop :=
  ∀ n, P11262194980653632300.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P7008265966052307604

`A214297(A145979(3*n+1))`
-/

namespace A142599.P7008265966052307604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A145979 (3 * n + 1)).toNat

end

end A142599.P7008265966052307604

namespace A142599

/-- `A214297(A145979(3*n+1))` -/
def P7008265966052307604.Spec : Prop :=
  ∀ n, P7008265966052307604.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P6624061563421697205

`A129647(A145979(2*n+1+n))`
-/

namespace A142599.P6624061563421697205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (A145979 (2 * n + 1 + n)).toNat

end

end A142599.P6624061563421697205

namespace A142599

/-- `A129647(A145979(2*n+1+n))` -/
def P6624061563421697205.Spec : Prop :=
  ∀ n, P6624061563421697205.a n = A142599 (n + 1)

end A142599

/-! ## A142599.P3132868793247732746

`A061045(9*(n+1))`
-/

namespace A142599.P3132868793247732746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061045 (9 * (n + 1))

end

end A142599.P3132868793247732746

namespace A142599

/-- `A061045(9*(n+1))` -/
def P3132868793247732746.Spec : Prop :=
  ∀ n, P3132868793247732746.a n = A142599 (n + 1)

end A142599

