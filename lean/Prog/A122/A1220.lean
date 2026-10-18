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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A122000: 

The programs for A122000, there is no canonical definition to state claims against.
-/

/-! ## A122000.P7464682395590999313

`A124899(2^n)`
-/

namespace A122000.P7464682395590999313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124899 (2 ^ n)

end

end A122000.P7464682395590999313

/-!
# A122002: a(0)=5; otherwise a(n) = (n mod 4) if n is odd, a(n) = h + 4, where h = (highest odd divisor of n) mod 4 if n is even.

The programs for A122002, the canonical program `A122002.P7860661195516119428` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122002 has offset 0).

The definition of A122002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122002.P7860661195516119428

`(gcd(2, n)+1)!-Δ[xor(n, 2*n-1)]%2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122002

/-- `(gcd(2, n)+1)!-Δ[xor(n, 2*n-1)]%2` -/
def P7860661195516119428.Spec : Prop :=
  ∀ n, P7860661195516119428.a n = A122002 n

theorem P7860661195516119428.correct : P7860661195516119428.Spec := by
  intro n
  simp only [A122002]

end A122002

/-! ## A122002.P3570935309978332627

`gcd(5, n%2)+2*A038189(n)`
-/

namespace A122002.P3570935309978332627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 5 (n % 2) : ℤ) + 2 * A038189 n

end

end A122002.P3570935309978332627

namespace A122002

/-- `gcd(5, n%2)+2*A038189(n)` -/
def P3570935309978332627.Spec : Prop :=
  ∀ n, P3570935309978332627.a n = A122002 n

end A122002

/-! ## A122002.P2442893096732353874

`Δ[A047522(n+1)]-Δ[xor(n, 2*n-1)]%2`
-/

namespace A122002.P2442893096732353874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (f2 (n + 1) - f2 n) 2

end

end A122002.P2442893096732353874

namespace A122002

/-- `Δ[A047522(n+1)]-Δ[xor(n, 2*n-1)]%2` -/
def P2442893096732353874.Spec : Prop :=
  ∀ n, P2442893096732353874.a n = A122002 n

end A122002

/-! ## A122002.P15528411189172602348

`Δ[A047451(n+1)]-A121238(n)`
-/

namespace A122002.P15528411189172602348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A121238 n

end

end A122002.P15528411189172602348

namespace A122002

/-- `Δ[A047451(n+1)]-A121238(n)` -/
def P15528411189172602348.Spec : Prop :=
  ∀ n, P15528411189172602348.a n = A122002 n

end A122002

/-! ## A122002.P11201602071035352766

`A010686(n+1)+2*A038189(n)`
-/

namespace A122002.P11201602071035352766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (n + 1) + 2 * A038189 n

end

end A122002.P11201602071035352766

namespace A122002

/-- `A010686(n+1)+2*A038189(n)` -/
def P11201602071035352766.Spec : Prop :=
  ∀ n, P11201602071035352766.a n = A122002 n

end A122002

/-! ## A122002.P6580963315792476550

`A060747(A038189(n)+(-1)^n+2)`
-/

namespace A122002.P6580963315792476550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A038189 n + ((-1) ^ n + 2)).toNat

end

end A122002.P6580963315792476550

namespace A122002

/-- `A060747(A038189(n)+(-1)^n+2)` -/
def P6580963315792476550.Spec : Prop :=
  ∀ n, P6580963315792476550.a n = A122002 n

end A122002

/-! ## A122002.P12729850178702694653

`A005408(A038189(n)+∑[-a(n-1)])` with `a(0)=2`
-/

namespace A122002.P12729850178702694653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A038189 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122002.P12729850178702694653

namespace A122002

/-- `A005408(A038189(n)+∑[-a(n-1)])` -/
def P12729850178702694653.Spec : Prop :=
  ∀ n, P12729850178702694653.a n = A122002 n

end A122002

/-! ## A122002.P316312204254308925

`A010696(n+1)-A034947(A004277(n))`
-/

namespace A122002.P316312204254308925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 (n + 1) - A034947 (A004277 n).toNat

end

end A122002.P316312204254308925

namespace A122002

/-- `A010696(n+1)-A034947(A004277(n))` -/
def P316312204254308925.Spec : Prop :=
  ∀ n, P316312204254308925.a n = A122002 n

end A122002

/-! ## A122002.P3950047786610377411

`A033999(n)+A007400(A016789(2*n))`
-/

namespace A122002.P3950047786610377411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A007400 (A016789 (2 * n)).toNat

end

end A122002.P3950047786610377411

namespace A122002

/-- `A033999(n)+A007400(A016789(2*n))` -/
def P3950047786610377411.Spec : Prop :=
  ∀ n, P3950047786610377411.a n = A122002 n

end A122002

/-! ## A122002.P16175394332872233189

`A006257(A038189(n)+Δ[A047522(n+1)])`
-/

namespace A122002.P16175394332872233189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A038189 n + (f1 (n + 1) - f1 n)).toNat

end

end A122002.P16175394332872233189

namespace A122002

/-- `A006257(A038189(n)+Δ[A047522(n+1)])` -/
def P16175394332872233189.Spec : Prop :=
  ∀ n, P16175394332872233189.a n = A122002 n

end A122002

/-! ## A122002.P7305713893567471046

`A042965(A038189(n)+Δ[A047336(n+1)])`
-/

namespace A122002.P7305713893567471046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A038189 n + (f1 (n + 1) - f1 n)).toNat

end

end A122002.P7305713893567471046

namespace A122002

/-- `A042965(A038189(n)+Δ[A047336(n+1)])` -/
def P7305713893567471046.Spec : Prop :=
  ∀ n, P7305713893567471046.a n = A122002 n

end A122002

/-! ## A122002.P16061930853466403554

`A004273(A038189(n)+Δ[A338062(n+1)])`
-/

namespace A122002.P16061930853466403554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A038189 n + (f1 (n + 1) - f1 n)).toNat

end

end A122002.P16061930853466403554

namespace A122002

/-- `A004273(A038189(n)+Δ[A338062(n+1)])` -/
def P16061930853466403554.Spec : Prop :=
  ∀ n, P16061930853466403554.a n = A122002 n

end A122002

/-! ## A122002.P13087775929004495331

`Δ[A047522(n+1)]-A034947(A008574(n))`
-/

namespace A122002.P13087775929004495331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034947 (A008574 n).toNat

end

end A122002.P13087775929004495331

namespace A122002

/-- `Δ[A047522(n+1)]-A034947(A008574(n))` -/
def P13087775929004495331.Spec : Prop :=
  ∀ n, P13087775929004495331.a n = A122002 n

end A122002

/-! ## A122002.P11501580212699131110

`Δ[A060000(A047522(n+1))]-A112347(n)`
-/

namespace A122002.P11501580212699131110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A047522 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A112347 n

end

end A122002.P11501580212699131110

namespace A122002

/-- `Δ[A060000(A047522(n+1))]-A112347(n)` -/
def P11501580212699131110.Spec : Prop :=
  ∀ n, P11501580212699131110.a n = A122002 n

end A122002

/-!
# A122006: Expansion of x^2*(1-x)/((1-3*x)*(1-3*x^2)).

The programs for A122006, the canonical program `A122006.P8887755279537965619` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122006 has offset 1).

The definition of A122006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-3x-3x^2+9x^3))` (program `A122006.P8887755279537965619`, by `A122006.P8887755279537965619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122006.P8887755279537965619

`ogf((x-x^2)/(1-3x-3x^2+9x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122006

/-- `ogf((x-x^2)/(1-3x-3x^2+9x^3))` -/
def P8887755279537965619.Spec : Prop :=
  ∀ n, P8887755279537965619.a n = A122006 (n + 1)

theorem P8887755279537965619.correct : P8887755279537965619.Spec := by
  intro n
  simp only [A122006, Nat.add_sub_cancel]

end A122006

/-! ## A122006.P11121231321504510658

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A122006.P11121231321504510658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3)

end

end A122006.P11121231321504510658

namespace A122006

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P11121231321504510658.Spec : Prop :=
  ∀ n, P11121231321504510658.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P15733569660178224096

`Δ[A167993(n)]`
-/

namespace A122006.P15733569660178224096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122006.P15733569660178224096

namespace A122006

/-- `Δ[A167993(n)]` -/
def P15733569660178224096.Spec : Prop :=
  ∀ n, P15733569660178224096.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P4977732544949931284

`a(n-1)+A122008(n)+a(n-1)` with `a(0)=0`
-/

namespace A122006.P4977732544949931284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A122008 n + a (n - 1))

end

end A122006.P4977732544949931284

namespace A122006

/-- `a(n-1)+A122008(n)+a(n-1)` -/
def P4977732544949931284.Spec : Prop :=
  ∀ n, P4977732544949931284.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P5076548701416889617

`A182522(n)*A232801(n)`
-/

namespace A122006.P5076548701416889617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n * A232801 n

end

end A122006.P5076548701416889617

namespace A122006

/-- `A182522(n)*A232801(n)` -/
def P5076548701416889617.Spec : Prop :=
  ∀ n, P5076548701416889617.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P12681361946186644407

`A167993(n+1)-A167993(n)`
-/

namespace A122006.P12681361946186644407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1) - A167993 n

end

end A122006.P12681361946186644407

namespace A122006

/-- `A167993(n+1)-A167993(n)` -/
def P12681361946186644407.Spec : Prop :=
  ∀ n, P12681361946186644407.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P2775248698583789169

`A122007(n+1)-A254006(n+1)/3`
-/

namespace A122006.P2775248698583789169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122007 (n + 1) : ℚ) - (A254006 (n + 1) : ℚ) / 3

end

end A122006.P2775248698583789169

namespace A122006

/-- `A122007(n+1)-A254006(n+1)/3` -/
def P2775248698583789169.Spec : Prop :=
  ∀ n, P2775248698583789169.a n = (A122006 (n + 1) : ℚ)

end A122006

/-! ## A122006.P2161330906662883123

`A094388(n)-A094388(A142150(n))`
-/

namespace A122006.P2161330906662883123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n - A094388 (A142150 n).toNat

end

end A122006.P2161330906662883123

namespace A122006

/-- `A094388(n)-A094388(A142150(n))` -/
def P2161330906662883123.Spec : Prop :=
  ∀ n, P2161330906662883123.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P7363579772105176431

`A074324(n)/A040001(n)*A232801(n)`
-/

namespace A122006.P7363579772105176431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074324 n : ℚ) / (A040001 n : ℚ) * (A232801 n : ℚ)

end

end A122006.P7363579772105176431

namespace A122006

/-- `A074324(n)/A040001(n)*A232801(n)` -/
def P7363579772105176431.Spec : Prop :=
  ∀ n, P7363579772105176431.a n = (A122006 (n + 1) : ℚ)

end A122006

/-! ## A122006.P8768069713266074724

`∪[A024023(n)*A140429(n), A140429(n)²]`
-/

namespace A122006.P8768069713266074724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A140429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122006.P8768069713266074724

namespace A122006

/-- `∪[A024023(n)*A140429(n), A140429(n)²]` -/
def P8768069713266074724.Spec : Prop :=
  ∀ n, (P8768069713266074724.a n : ℤ) = A122006 (n + 1)

end A122006

/-! ## A122006.P13538808856538594203

`∪[A103453(n)*A140429(n), A140429(n)²]`
-/

namespace A122006.P13538808856538594203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n * A140429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122006.P13538808856538594203

namespace A122006

/-- `∪[A103453(n)*A140429(n), A140429(n)²]` -/
def P13538808856538594203.Spec : Prop :=
  ∀ n, (P13538808856538594203.a n : ℤ) = A122006 (n + 1)

end A122006

/-! ## A122006.P11099177318962764717

`A122008(n+1)+A254006(n+1)-A038754(n)`
-/

namespace A122006.P11099177318962764717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (n + 1) + (A254006 (n + 1) - A038754 n)

end

end A122006.P11099177318962764717

namespace A122006

/-- `A122008(n+1)+A254006(n+1)-A038754(n)` -/
def P11099177318962764717.Spec : Prop :=
  ∀ n, P11099177318962764717.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P7801260577886351034

`A122007(n+1)-A038754(n+1)%A038754(n)`
-/

namespace A122006.P7801260577886351034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122007 (n + 1) - Int.tmod (A038754 (n + 1)) (A038754 n)

end

end A122006.P7801260577886351034

namespace A122006

/-- `A122007(n+1)-A038754(n+1)%A038754(n)` -/
def P7801260577886351034.Spec : Prop :=
  ∀ n, P7801260577886351034.a n = A122006 (n + 1)

end A122006

/-! ## A122006.P8008531490053645894

`(3^n-A254006(n))/3`
-/

namespace A122006.P8008531490053645894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - A254006 n : ℚ) / 3

end

end A122006.P8008531490053645894

namespace A122006

/-- `(3^n-A254006(n))/3` -/
def P8008531490053645894.Spec : Prop :=
  ∀ n, P8008531490053645894.a n = (A122006 (n + 1) : ℚ)

end A122006

/-!
# A122007: Expansion of 2*x^2*(1-2*x) / ((3*x-1)*(3*x^2-1)).

The programs for A122007, the canonical program `A122007.P7515375071099048773` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122007 has offset 1).

The definition of A122007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-4x^2)/(1-3x-3x^2+9x^3))` (program `A122007.P7515375071099048773`, by `A122007.P7515375071099048773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122007.P7515375071099048773

`ogf((2x-4x^2)/(1-3x-3x^2+9x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122007

/-- `ogf((2x-4x^2)/(1-3x-3x^2+9x^3))` -/
def P7515375071099048773.Spec : Prop :=
  ∀ n, P7515375071099048773.a n = A122007 (n + 1)

theorem P7515375071099048773.correct : P7515375071099048773.Spec := by
  intro n
  simp only [A122007, Nat.add_sub_cancel]

end A122007

/-! ## A122007.P1966967663158434843

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A122007.P1966967663158434843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3)

end

end A122007.P1966967663158434843

namespace A122007

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P1966967663158434843.Spec : Prop :=
  ∀ n, P1966967663158434843.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P1677574229427609521

`2*(Δ[A167993(n)]-A167993(n))`
-/

namespace A122007.P1677574229427609521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A167993 n)

end

end A122007.P1677574229427609521

namespace A122007

/-- `2*(Δ[A167993(n)]-A167993(n))` -/
def P1677574229427609521.Spec : Prop :=
  ∀ n, P1677574229427609521.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P11473690638342373569

`2*(A122006(n+1)-A167993(n))`
-/

namespace A122007.P11473690638342373569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122006 (n + 1) - A167993 n)

end

end A122007.P11473690638342373569

namespace A122007

/-- `2*(A122006(n+1)-A167993(n))` -/
def P11473690638342373569.Spec : Prop :=
  ∀ n, P11473690638342373569.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P12452292243408443563

`A122006(n+1)+A254006(n+1)/3`
-/

namespace A122007.P12452292243408443563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122006 (n + 1) : ℚ) + (A254006 (n + 1) : ℚ) / 3

end

end A122007.P12452292243408443563

namespace A122007

/-- `A122006(n+1)+A254006(n+1)/3` -/
def P12452292243408443563.Spec : Prop :=
  ∀ n, P12452292243408443563.a n = (A122007 (n + 1) : ℚ)

end A122007

/-! ## A122007.P6186728372897506300

`2*(∑[A122008(n+1)]-A122008(n+1))`
-/

namespace A122007.P6186728372897506300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A122008 (n + 1))

end

end A122007.P6186728372897506300

namespace A122007

/-- `2*(∑[A122008(n+1)]-A122008(n+1))` -/
def P6186728372897506300.Spec : Prop :=
  ∀ n, P6186728372897506300.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P7983205953978326047

`A122006(n+1)+A000035(n)*A108411(n)`
-/

namespace A122007.P7983205953978326047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1) + A000035 n * A108411 n

end

end A122007.P7983205953978326047

namespace A122007

/-- `A122006(n+1)+A000035(n)*A108411(n)` -/
def P7983205953978326047.Spec : Prop :=
  ∀ n, P7983205953978326047.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P16147663887478231993

`A122006(n+1)+A038754(n)-Δ[A038754(n)]`
-/

namespace A122007.P16147663887478231993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1) + (A038754 n - (f1 (n + 1) - f1 n))

end

end A122007.P16147663887478231993

namespace A122007

/-- `A122006(n+1)+A038754(n)-Δ[A038754(n)]` -/
def P16147663887478231993.Spec : Prop :=
  ∀ n, P16147663887478231993.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P15617200716193742427

`A122006(n+1)+A038754(n+1)%A038754(n)`
-/

namespace A122007.P15617200716193742427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1) + Int.tmod (A038754 (n + 1)) (A038754 n)

end

end A122007.P15617200716193742427

namespace A122007

/-- `A122006(n+1)+A038754(n+1)%A038754(n)` -/
def P15617200716193742427.Spec : Prop :=
  ∀ n, P15617200716193742427.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P10392224293831214986

`A000244(n)-Δ[A122006(n+1)]`
-/

namespace A122007.P10392224293831214986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (f1 (n + 1) - f1 n)

end

end A122007.P10392224293831214986

namespace A122007

/-- `A000244(n)-Δ[A122006(n+1)]` -/
def P10392224293831214986.Spec : Prop :=
  ∀ n, P10392224293831214986.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P12704461162549462583

`Δ[A003462(n)-A122006(n+1)]`
-/

namespace A122007.P12704461162549462583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122007.P12704461162549462583

namespace A122007

/-- `Δ[A003462(n)-A122006(n+1)]` -/
def P12704461162549462583.Spec : Prop :=
  ∀ n, P12704461162549462583.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P18029703429801658664

`Δ[A115098(n)-A122006(n+1)]`
-/

namespace A122007.P18029703429801658664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122007.P18029703429801658664

namespace A122007

/-- `Δ[A115098(n)-A122006(n+1)]` -/
def P18029703429801658664.Spec : Prop :=
  ∀ n, P18029703429801658664.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P9077074105434644257

`record[A254006(n)]-Δ[A122006(n+1)]`
-/

namespace A122007.P9077074105434644257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A122007.P9077074105434644257

namespace A122007

/-- `record[A254006(n)]-Δ[A122006(n+1)]` -/
def P9077074105434644257.Spec : Prop :=
  ∀ n, P9077074105434644257.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P304406955114616055

`A074324(A005408(n))-Δ[A122006(n+1)]`
-/

namespace A122007.P304406955114616055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A005408 n).toNat - (f1 (n + 1) - f1 n)

end

end A122007.P304406955114616055

namespace A122007

/-- `A074324(A005408(n))-Δ[A122006(n+1)]` -/
def P304406955114616055.Spec : Prop :=
  ∀ n, P304406955114616055.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P321156469083675948

`A122006(n+1)+A000244(n)-A122006(n+2)`
-/

namespace A122007.P321156469083675948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1) + (A000244 n - A122006 (n + 2))

end

end A122007.P321156469083675948

namespace A122007

/-- `A122006(n+1)+A000244(n)-A122006(n+2)` -/
def P321156469083675948.Spec : Prop :=
  ∀ n, P321156469083675948.a n = A122007 (n + 1)

end A122007

/-! ## A122007.P13181296390411349689

`A122008(n+1)+A122008(n+2)-A000244(n)`
-/

namespace A122007.P13181296390411349689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (n + 1) + (A122008 (n + 2) - A000244 n)

end

end A122007.P13181296390411349689

namespace A122007

/-- `A122008(n+1)+A122008(n+2)-A000244(n)` -/
def P13181296390411349689.Spec : Prop :=
  ∀ n, P13181296390411349689.a n = A122007 (n + 1)

end A122007

/-!
# A122008: Expansion of (2*x-1)*(x-1)*x / ((3*x-1)*(3*x^2-1)).

The programs for A122008, the canonical program `A122008.P7682969925366346587` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122008 has offset 1).

The definition of A122008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+2x^2)/(1-3x-3x^2+9x^3))` (program `A122008.P7682969925366346587`, by `A122008.P7682969925366346587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122008.P7682969925366346587

`ogf((1-3x+2x^2)/(1-3x-3x^2+9x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122008

/-- `ogf((1-3x+2x^2)/(1-3x-3x^2+9x^3))` -/
def P7682969925366346587.Spec : Prop :=
  ∀ n, P7682969925366346587.a n = A122008 (n + 1)

theorem P7682969925366346587.correct : P7682969925366346587.Spec := by
  intro n
  simp only [A122008, Nat.add_sub_cancel]

end A122008

/-! ## A122008.P4720681093803146530

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A122008.P4720681093803146530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3)

end

end A122008.P4720681093803146530

namespace A122008

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P4720681093803146530.Spec : Prop :=
  ∀ n, P4720681093803146530.a n = A122008 (n + 1)

end A122008

/-! ## A122008.P14471987274450033229

`A254006(n)+2*A167993(n)`
-/

namespace A122008.P14471987274450033229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + 2 * A167993 n

end

end A122008.P14471987274450033229

namespace A122008

/-- `A254006(n)+2*A167993(n)` -/
def P14471987274450033229.Spec : Prop :=
  ∀ n, P14471987274450033229.a n = A122008 (n + 1)

end A122008

/-! ## A122008.P4752984970663087037

`A122006(n+1)+A038754(n)-A254006(n+1)`
-/

namespace A122008.P4752984970663087037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1) + (A038754 n - A254006 (n + 1))

end

end A122008.P4752984970663087037

namespace A122008

/-- `A122006(n+1)+A038754(n)-A254006(n+1)` -/
def P4752984970663087037.Spec : Prop :=
  ∀ n, P4752984970663087037.a n = A122008 (n + 1)

end A122008

/-! ## A122008.P8151709888188843660

`Δ[A122007(n+1)/2]`
-/

namespace A122008.P8151709888188843660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122007 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122008.P8151709888188843660

namespace A122008

/-- `Δ[A122007(n+1)/2]` -/
def P8151709888188843660.Spec : Prop :=
  ∀ n, P8151709888188843660.a n = (A122008 (n + 1) : ℚ)

end A122008

/-! ## A122008.P12099158018268412004

`Δ[A122006(n+1)]-A122006(n+1)`
-/

namespace A122008.P12099158018268412004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122006 (n + 1)

end

end A122008.P12099158018268412004

namespace A122008

/-- `Δ[A122006(n+1)]-A122006(n+1)` -/
def P12099158018268412004.Spec : Prop :=
  ∀ n, P12099158018268412004.a n = A122008 (n + 1)

end A122008

/-! ## A122008.P1489111148069485642

`A122006(n+2)-2*A122006(n+1)`
-/

namespace A122008.P1489111148069485642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 2) - 2 * A122006 (n + 1)

end

end A122008.P1489111148069485642

namespace A122008

/-- `A122006(n+2)-2*A122006(n+1)` -/
def P1489111148069485642.Spec : Prop :=
  ∀ n, P1489111148069485642.a n = A122008 (n + 1)

end A122008

/-!
# A122009: G.f. x*(1-11*x+6*x^2)/(1-12*x+15*x^2-2*x^3).

The programs for A122009, the canonical program `A122009.P7686855830054409497` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122009 has offset 1).

The definition of A122009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122009.P7686855830054409497

`12*a(n-1)-15*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122009

/-- `12*a(n-1)-15*a(n-2)+2*a(n-3)` -/
def P7686855830054409497.Spec : Prop :=
  ∀ n, P7686855830054409497.a n = A122009 (n + 1)

theorem P7686855830054409497.correct : P7686855830054409497.Spec := by
  intro n
  simp only [A122009, Nat.add_sub_cancel]

end A122009

/-! ## A122009.P14787756581226043767

`A024699(A127089(n)-A335515(n))`
-/

namespace A122009.P14787756581226043767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (A127089 n - A335515 n).toNat

end

end A122009.P14787756581226043767

namespace A122009

/-- `A024699(A127089(n)-A335515(n))` -/
def P14787756581226043767.Spec : Prop :=
  ∀ n, P14787756581226043767.a n = A122009 (n + 1)

end A122009

/-!
# A122010: G.f. x^2*(1-5*x)/(1-12*x+15*x^2-2*x^3).

The programs for A122010, the canonical program `A122010.P9787334408878106347` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122010 has offset 1).

The definition of A122010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122010.P9787334408878106347

`12*a(n-1)-15*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122010

/-- `12*a(n-1)-15*a(n-2)+2*a(n-3)` -/
def P9787334408878106347.Spec : Prop :=
  ∀ n, P9787334408878106347.a n = A122010 (n + 1)

theorem P9787334408878106347.correct : P9787334408878106347.Spec := by
  intro n
  simp only [A122010, Nat.add_sub_cancel]

end A122010

/-! ## A122010.P2451455745850797826

`Δ[A122009(n+1)]-A122011(n+1)`
-/

namespace A122010.P2451455745850797826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122011 (n + 1)

end

end A122010.P2451455745850797826

namespace A122010

/-- `Δ[A122009(n+1)]-A122011(n+1)` -/
def P2451455745850797826.Spec : Prop :=
  ∀ n, P2451455745850797826.a n = A122010 (n + 1)

end A122010

/-!
# A122011: G.f. x^2*(1+x)/(1-12*x+15*x^2-2*x^3).

The programs for A122011, the canonical program `A122011.P8787108409207591018` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122011 has offset 1).

The definition of A122011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122011.P8787108409207591018

`12*a(n-1)-15*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122011

/-- `12*a(n-1)-15*a(n-2)+2*a(n-3)` -/
def P8787108409207591018.Spec : Prop :=
  ∀ n, P8787108409207591018.a n = A122011 (n + 1)

theorem P8787108409207591018.correct : P8787108409207591018.Spec := by
  intro n
  simp only [A122011, Nat.add_sub_cancel]

end A122011

/-! ## A122011.P12134778836562559081

`Δ[A122009(n+1)]-A122010(n+1)`
-/

namespace A122011.P12134778836562559081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122010 (n + 1)

end

end A122011.P12134778836562559081

namespace A122011

/-- `Δ[A122009(n+1)]-A122010(n+1)` -/
def P12134778836562559081.Spec : Prop :=
  ∀ n, P12134778836562559081.a n = A122011 (n + 1)

end A122011

/-!
# A122012: G.f.: x^2*(3+3*x-2*x^2)/ ( (x^2-x-1) * (x^2+x-1)).

The programs for A122012, the canonical program `A122012.P16950815244662836799` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122012 has offset 1).

The definition of A122012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122012.P16950815244662836799

`3*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122012

/-- `3*a(n-2)-a(n-4)` -/
def P16950815244662836799.Spec : Prop :=
  ∀ n, P16950815244662836799.a n = A122012 (n + 1)

theorem P16950815244662836799.correct : P16950815244662836799.Spec := by
  intro n
  simp only [A122012, Nat.add_sub_cancel]

end A122012

/-! ## A122012.P10049210028649546834

`ogf((3x+3x^2-2x^3)/(1-3x^2+x^4))`
-/

namespace A122012.P10049210028649546834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, -2] [1, 0, -3, 0, 1] n

end

end A122012.P10049210028649546834

namespace A122012

/-- `ogf((3x+3x^2-2x^3)/(1-3x^2+x^4))` -/
def P10049210028649546834.Spec : Prop :=
  ∀ n, P10049210028649546834.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P6248753790206372585

`A094966(n)+A006355(n+1)`
-/

namespace A122012.P6248753790206372585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + A006355 (n + 1)

end

end A122012.P6248753790206372585

namespace A122012

/-- `A094966(n)+A006355(n+1)` -/
def P6248753790206372585.Spec : Prop :=
  ∀ n, P6248753790206372585.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P7499011663732357812

`A133586(n+1)-A152163(n)`
-/

namespace A122012.P7499011663732357812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (n + 1) - A152163 n

end

end A122012.P7499011663732357812

namespace A122012

/-- `A133586(n+1)-A152163(n)` -/
def P7499011663732357812.Spec : Prop :=
  ∀ n, P7499011663732357812.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P12673091045376394645

`A094966(n)+2*A000045(n)`
-/

namespace A122012.P12673091045376394645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + 2 * A000045 n

end

end A122012.P12673091045376394645

namespace A122012

/-- `A094966(n)+2*A000045(n)` -/
def P12673091045376394645.Spec : Prop :=
  ∀ n, P12673091045376394645.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P12282591578034622705

`A292412(n+1)+Δ[A000032(n)]`
-/

namespace A122012.P12282591578034622705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292412 (n + 1) + (f1 (n + 1) - f1 n)

end

end A122012.P12282591578034622705

namespace A122012

/-- `A292412(n+1)+Δ[A000032(n)]` -/
def P12282591578034622705.Spec : Prop :=
  ∀ n, P12282591578034622705.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P6472017357508989591

`A109794(n+1)-Δ[A000045(n)]`
-/

namespace A122012.P6472017357508989591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (n + 1) - (f1 (n + 1) - f1 n)

end

end A122012.P6472017357508989591

namespace A122012

/-- `A109794(n+1)-Δ[A000045(n)]` -/
def P6472017357508989591.Spec : Prop :=
  ∀ n, P6472017357508989591.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P3832082934788065641

`A133586(n+1)+Δ[Δ[A000045(n)]]`
-/

namespace A122012.P3832082934788065641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (n + 1) + (f1 (n + 1) - f1 n)

end

end A122012.P3832082934788065641

namespace A122012

/-- `A133586(n+1)+Δ[Δ[A000045(n)]]` -/
def P3832082934788065641.Spec : Prop :=
  ∀ n, P3832082934788065641.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P1434792381800106479

`A109794(n+1)+A000045(n)-A000045(n+1)`
-/

namespace A122012.P1434792381800106479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (n + 1) + (A000045 n - A000045 (n + 1))

end

end A122012.P1434792381800106479

namespace A122012

/-- `A109794(n+1)+A000045(n)-A000045(n+1)` -/
def P1434792381800106479.Spec : Prop :=
  ∀ n, P1434792381800106479.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P1269620609572973312

`A005013(n+1)+A108362(n+1)-A108362(n)`
-/

namespace A122012.P1269620609572973312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (n + 1) + (A108362 (n + 1) - A108362 n)

end

end A122012.P1269620609572973312

namespace A122012

/-- `A005013(n+1)+A108362(n+1)-A108362(n)` -/
def P1269620609572973312.Spec : Prop :=
  ∀ n, P1269620609572973312.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P1586616050668220326

`A000032(n+1)+A000032(n+1)-A178766(n+2)`
-/

namespace A122012.P1586616050668220326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A000032 (n + 1) - A178766 (n + 2))

end

end A122012.P1586616050668220326

namespace A122012

/-- `A000032(n+1)+A000032(n+1)-A178766(n+2)` -/
def P1586616050668220326.Spec : Prop :=
  ∀ n, P1586616050668220326.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P2476917882035606845

`A000285(n)-A094967(n)`
-/

namespace A122012.P2476917882035606845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A094967 n

end

end A122012.P2476917882035606845

namespace A122012

/-- `A000285(n)-A094967(n)` -/
def P2476917882035606845.Spec : Prop :=
  ∀ n, P2476917882035606845.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P11282821993582814397

`A000285(n)-A000045(or(1, n))`
-/

namespace A122012.P11282821993582814397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A000045 (Nat.lor 1 n)

end

end A122012.P11282821993582814397

namespace A122012

/-- `A000285(n)-A000045(or(1, n))` -/
def P11282821993582814397.Spec : Prop :=
  ∀ n, P11282821993582814397.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P5964254872025198095

`A094966(n)+Δ[A019274(n+1)]`
-/

namespace A122012.P5964254872025198095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + (f1 (n + 1) - f1 n)

end

end A122012.P5964254872025198095

namespace A122012

/-- `A094966(n)+Δ[A019274(n+1)]` -/
def P5964254872025198095.Spec : Prop :=
  ∀ n, P5964254872025198095.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P4491335890008737349

`A104449(n+1)-A000045(or(1, n))`
-/

namespace A122012.P4491335890008737349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1) - A000045 (Nat.lor 1 n)

end

end A122012.P4491335890008737349

namespace A122012

/-- `A104449(n+1)-A000045(or(1, n))` -/
def P4491335890008737349.Spec : Prop :=
  ∀ n, P4491335890008737349.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P9268170668419428598

`A000285(n)-A001519(∑[and(1, n+1)])`
-/

namespace A122012.P9268170668419428598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A001519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122012.P9268170668419428598

namespace A122012

/-- `A000285(n)-A001519(∑[and(1, n+1)])` -/
def P9268170668419428598.Spec : Prop :=
  ∀ n, P9268170668419428598.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P2505579707025303941

`A000285(n)-A000045((n+1)%2+n)`
-/

namespace A122012.P2505579707025303941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A000045 ((n + 1) % 2 + n)

end

end A122012.P2505579707025303941

namespace A122012

/-- `A000285(n)-A000045((n+1)%2+n)` -/
def P2505579707025303941.Spec : Prop :=
  ∀ n, P2505579707025303941.a n = A122012 (n + 1)

end A122012

/-! ## A122012.P595044313796669310

`A121955(n+1)%A022096(n)`
-/

namespace A122012.P595044313796669310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121955 (n + 1)) (A022096 n)

end

end A122012.P595044313796669310

namespace A122012

/-- `A121955(n+1)%A022096(n)` -/
def P595044313796669310.Spec : Prop :=
  ∀ n, P595044313796669310.a n = A122012 (n + 1)

end A122012

/-!
# A122013: Expansion of g.f. -x*(5*x^7-20*x^6-2*x^5+54*x^4+7*x^3-20*x^2-8*x-1)/((x^4-x^3-3*x^2+x+1)*(x^4+x^3-3*x^2-x+1)).

The programs for A122013, the canonical program `A122013.P16973060973382398851` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122013 has offset 1).

The definition of A122013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+8x+20x^2-7x^3-54x^4+2x^5+20x^6-5x^7)/(1-7x^2+13x^4-7x^6+x^8))` (program `A122013.P16973060973382398851`, by `A122013.P16973060973382398851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122013.P16973060973382398851

`ogf((1+8x+20x^2-7x^3-54x^4+2x^5+20x^6-5x^7)/(1-7x^2+13x^4-7x^6+x^8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122013

/-- `ogf((1+8x+20x^2-7x^3-54x^4+2x^5+20x^6-5x^7)/(1-7x^2+13x^4-7x^6+x^8))` -/
def P16973060973382398851.Spec : Prop :=
  ∀ n, P16973060973382398851.a n = A122013 (n + 1)

theorem P16973060973382398851.correct : P16973060973382398851.Spec := by
  intro n
  simp only [A122013, Nat.add_sub_cancel]

end A122013

/-!
# A122014: Expansion of -x*(8*x^7-33*x^6-30*x^5+88*x^4+35*x^3-33*x^2-11*x-1)/((x^4-x^3-3*x^2+x+1)*(x^4+x^3-3*x^2-x+1)).

The programs for A122014, the canonical program `A122014.P14421008103429635716` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122014 has offset 1).

The definition of A122014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+11x+33x^2-35x^3-88x^4+30x^5+33x^6-8x^7)/(1-7x^2+13x^4-7x^6+x^8))` (program `A122014.P14421008103429635716`, by `A122014.P14421008103429635716.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122014.P14421008103429635716

`ogf((1+11x+33x^2-35x^3-88x^4+30x^5+33x^6-8x^7)/(1-7x^2+13x^4-7x^6+x^8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122014

/-- `ogf((1+11x+33x^2-35x^3-88x^4+30x^5+33x^6-8x^7)/(1-7x^2+13x^4-7x^6+x^8))` -/
def P14421008103429635716.Spec : Prop :=
  ∀ n, P14421008103429635716.a n = A122014 (n + 1)

theorem P14421008103429635716.correct : P14421008103429635716.Spec := by
  intro n
  simp only [A122014, Nat.add_sub_cancel]

end A122014

/-!
# A122015: Expansion of -x * (21*x^7+65*x^6+77*x^5+39*x^4-17*x^3-38*x^2-11*x-1) / ((x+1) * (x^3+x^2-1) * (x^4+2*x^3+x^2+x-1)).

The programs for A122015, the canonical program `A122015.P9420169728651956267` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122015 has offset 1).

The definition of A122015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+11x+38x^2+17x^3-39x^4-77x^5-65x^6-21x^7)/(1-3x^2-4x^3-x^4+4x^5+6x^6+4x^7+x^8))` (program `A122015.P9420169728651956267`, by `A122015.P9420169728651956267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122015.P9420169728651956267

`ogf((1+11x+38x^2+17x^3-39x^4-77x^5-65x^6-21x^7)/(1-3x^2-4x^3-x^4+4x^5+6x^6+4x^7+x^8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122015

/-- `ogf((1+11x+38x^2+17x^3-39x^4-77x^5-65x^6-21x^7)/(1-3x^2-4x^3-x^4+4x^5+6x^6+4x^7+x^8))` -/
def P9420169728651956267.Spec : Prop :=
  ∀ n, P9420169728651956267.a n = A122015 (n + 1)

theorem P9420169728651956267.correct : P9420169728651956267.Spec := by
  intro n
  simp only [A122015, Nat.add_sub_cancel]

end A122015

/-!
# A122016: Riordan array(1, x*(1+2*x)/(1-x)).

The programs for A122016, there is no canonical definition to state claims against.
-/

/-! ## A122016.P640461719909945068

`A240834(A300280(n)+1)`
-/

namespace A122016.P640461719909945068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (A300280 n + 1).toNat

end

end A122016.P640461719909945068

/-! ## A122016.P15529321822273743221

`A097805(n)*A142157(A142175(n))`
-/

namespace A122016.P15529321822273743221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A142157 (A142175 n).toNat

end

end A122016.P15529321822273743221

/-! ## A122016.P1177662022581956004

`A053837(A370432(n))`
-/

namespace A122016.P1177662022581956004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A370432 n).toNat

end

end A122016.P1177662022581956004

/-! ## A122016.P11593860348109976508

`A116575(A395762(n))`
-/

namespace A122016.P11593860348109976508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116575 (A395762 n).toNat

end

end A122016.P11593860348109976508

/-! ## A122016.P12667995532186075969

`A381423(A187557(n))`
-/

namespace A122016.P12667995532186075969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A187557 n).toNat

end

end A122016.P12667995532186075969

/-!
# A122019: Product of the first n semiprimes, divided by product of the first n primes, rounded down.

The programs for A122019, the canonical program `A122019.P15272871461275094966` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122019 has offset 1).

The definition of A122019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122019.P15272871461275094966

`floor(∏[A001358(n+1)/A000040(n+1)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A122019

/-- `floor(∏[A001358(n+1)/A000040(n+1)])` -/
def P15272871461275094966.Spec : Prop :=
  ∀ n, P15272871461275094966.a n = A122019 (n + 1)

theorem P15272871461275094966.correct : P15272871461275094966.Spec := by
  intro n
  simp only [A122019, Nat.add_sub_cancel]

end A122019

/-!
# A122020: Sum[k=0..n] Eulerian[n,k]*n^k.

The programs for A122020, there is no canonical definition to state claims against.
-/

/-! ## A122020.P17879278242894486912

`(n+1)*A122778(n+1)`
-/

namespace A122020.P17879278242894486912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122778 (n + 1)

end

end A122020.P17879278242894486912

/-! ## A122020.P11044721980467086132

`A122778(n+1)*A348553(n)`
-/

namespace A122020.P11044721980467086132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122778 (n + 1) * A348553 n

end

end A122020.P11044721980467086132

/-! ## A122020.P6067152088418131744

`lcm(A122778(n+1), A187829(n+1))`
-/

namespace A122020.P6067152088418131744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122778 (n + 1)) (A187829 (n + 1))

end

end A122020.P6067152088418131744

/-! ## A122020.P6612031117854419788

`lcm(A005555(n), A122778(A005555(n)))`
-/

namespace A122020.P6612031117854419788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005555 n) (A122778 (A005555 n).toNat)

end

end A122020.P6612031117854419788

/-! ## A122020.P6930973190176236923

`record[A122778(A331852(n))*A331852(n)]`
-/

namespace A122020.P6930973190176236923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122778 (A331852 n).toNat * A331852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122020.P6930973190176236923

/-!
# A122021: a(n) = a(n-2) - (n-1)*a(n-3), with a(0) = 0, a(1) = 1, a(2) = 2.

The programs for A122021, the canonical program `A122021.P3686730119942392498` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122021 has offset 0).

The definition of A122021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)-(n-1)*a(n-3)` (program `A122021.P3686730119942392498`, by `A122021.P3686730119942392498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122021.P3686730119942392498

`a(n-2)-(n-1)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122021

/-- `a(n-2)-(n-1)*a(n-3)` -/
def P3686730119942392498.Spec : Prop :=
  ∀ n, P3686730119942392498.a n = A122021 n

theorem P3686730119942392498.correct : P3686730119942392498.Spec := by
  intro n
  simp only [A122021]

end A122021

/-!
# A122022: a(n) = a(n-1) - (n-1)*a(n-4), with a(0) = 0, a(1) = 1, a(2) = 2, a(3) = 1.

The programs for A122022, the canonical program `A122022.P7100811097718165957` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122022 has offset 0).

The definition of A122022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-(n-1)*a(n-4)` (program `A122022.P7100811097718165957`, by `A122022.P7100811097718165957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122022.P7100811097718165957

`a(n-1)-(n-1)*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122022

/-- `a(n-1)-(n-1)*a(n-4)` -/
def P7100811097718165957.Spec : Prop :=
  ∀ n, P7100811097718165957.a n = A122022 n

theorem P7100811097718165957.correct : P7100811097718165957.Spec := by
  intro n
  simp only [A122022]

end A122022

/-!
# A122023: Expansion of x^2*(1+3*x+x^2-x^3+28*x^4+80*x^5)/(1-10*x^2+29*x^4-24*x^6).

The programs for A122023, the canonical program `A122023.P14711024749590421889` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122023 has offset 1).

The definition of A122023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2+x^3-x^4+28x^5+80x^6)/(1-10x^2+29x^4-24x^6))` (program `A122023.P14711024749590421889`, by `A122023.P14711024749590421889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122023.P14711024749590421889

`ogf((x+3x^2+x^3-x^4+28x^5+80x^6)/(1-10x^2+29x^4-24x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122023

/-- `ogf((x+3x^2+x^3-x^4+28x^5+80x^6)/(1-10x^2+29x^4-24x^6))` -/
def P14711024749590421889.Spec : Prop :=
  ∀ n, P14711024749590421889.a n = A122023 (n + 1)

theorem P14711024749590421889.correct : P14711024749590421889.Spec := by
  intro n
  simp only [A122023, Nat.add_sub_cancel]

end A122023

/-! ## A122023.P8463004161224806372

`or(n, A211964(2^n-1))`
-/

namespace A122023.P8463004161224806372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A211964 (2 ^ n - 1))

end

end A122023.P8463004161224806372

namespace A122023

/-- `or(n, A211964(2^n-1))` -/
def P8463004161224806372.Spec : Prop :=
  ∀ n, P8463004161224806372.a n = A122023 (n + 1)

end A122023

/-!
# A122024: a(n) = (3*a(n - 1)a(n - 5) - a(n - 2)*a(n - 4))/a(n - 6); a(0) = 1, a(1) = 1, a(2) = 1, a(3) = 1, a(4) = 1, a(5) = 1.

The programs for A122024, there is no canonical definition to state claims against.
-/

/-! ## A122024.P1740964473925640433

`A324935(A011851(n)+1)`
-/

namespace A122024.P1740964473925640433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A011851 n + 1).toNat

end

end A122024.P1740964473925640433

/-! ## A122024.P1713971544236888483

`A000924(A372359(n+1)+A000105(n)+1)`
-/

namespace A122024.P1713971544236888483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000924 (A372359 (n + 1) + (A000105 n + 1)).toNat

end

end A122024.P1713971544236888483

/-! ## A122024.P1978611163976217145

`ceil(A321680(n+1)/44)`
-/

namespace A122024.P1978611163976217145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321680 (n + 1) : ℚ) / 44⌉

end

end A122024.P1978611163976217145

/-! ## A122024.P9984681503130727033

`A335433(a(n-1)*∑[char[6*n]])` with `a(0)=1`
-/

namespace A122024.P9984681503130727033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335433 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A122024.P9984681503130727033

/-! ## A122024.P15061077366293503723

`A193917(A036653(n))`
-/

namespace A122024.P15061077366293503723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193917 (A036653 n).toNat

end

end A122024.P15061077366293503723

/-!
# A122025: a(n) = (3*a(n-1)*a(n-4) - a(n-2)*a(n-3)) / a(n-5).

The programs for A122025, there is no canonical definition to state claims against.
-/

/-! ## A122025.P11669164899852953969

`(3*a(n-1)*a(n-4)-a(n-2)*a(n-3))/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A122025.P11669164899852953969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  (3 * (a (n - 1) * a (n - 4)) - a (n - 2) * a (n - 3)) / a (n - 5)

end

end A122025.P11669164899852953969

/-! ## A122025.P4299183751798339661

`A262341(A309352(n)+1)`
-/

namespace A122025.P4299183751798339661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262341 (A309352 n + 1).toNat

end

end A122025.P4299183751798339661

/-! ## A122025.P10527425422869102168

`A298538(A146010(n+2))`
-/

namespace A122025.P10527425422869102168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (A146010 (n + 2)).toNat

end

end A122025.P10527425422869102168

/-! ## A122025.P2508583565290822028

`A130855(A020114(n))-A293724(n)`
-/

namespace A122025.P2508583565290822028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A020114 n).toNat - A293724 n

end

end A122025.P2508583565290822028

/-!
# A122027: Largest integer m such that every n-tournament contains a transitive (i.e., acyclic) sub-tournament with at least m vertices.

The programs for A122027, there is no canonical definition to state claims against.
-/

/-! ## A122027.P3736403059698856086

`ceil(log2(lt[1, ∏{digits}[n, #]]))`
-/

namespace A122027.P3736403059698856086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℝ)⌉

end

end A122027.P3736403059698856086

/-! ## A122027.P4698531746014429996

`floor(log2(n*log2(5)+2))`
-/

namespace A122027.P4698531746014429996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n : ℝ) * Real.logb 2 (5 : ℝ) + 2)⌋

end

end A122027.P4698531746014429996

/-! ## A122027.P9308440032464481534

`round(log2(ϕ*(n-cos(3))))`
-/

namespace A122027.P9308440032464481534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.goldenRatio * ((n : ℝ) - Real.cos (3 : ℝ))))

end

end A122027.P9308440032464481534

/-! ## A122027.P10923585075968961489

`ceil(∑[log(2)^∏{p}[n, #]])`
-/

namespace A122027.P10923585075968961489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ) ^ (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A122027.P10923585075968961489

/-! ## A122027.P12750427612407841993

`round(log2(ϕ*(n-sin(36))))`
-/

namespace A122027.P12750427612407841993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.goldenRatio * ((n : ℝ) - Real.sin (36 : ℝ))))

end

end A122027.P12750427612407841993

/-!
# A122028: Least positive prime primitive root of n-th prime.

The programs for A122028, there is no canonical definition to state claims against.
-/

/-! ## A122028.P7854421949387722985

`A080848(A002233(n+1))`
-/

namespace A122028.P7854421949387722985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080848 (A002233 (n + 1)).toNat

end

end A122028.P7854421949387722985

/-! ## A122028.P3761705785982586558

`A002233(A054977(n)²+n)`
-/

namespace A122028.P3761705785982586558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A122028.P3761705785982586558

/-! ## A122028.P731686755726361638

`A038699(A002233(n+1)+1)`
-/

namespace A122028.P731686755726361638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (A002233 (n + 1) + 1).toNat

end

end A122028.P731686755726361638

/-! ## A122028.P12693189289739128690

`A280488(3*A002233(n+1))`
-/

namespace A122028.P12693189289739128690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280488 (3 * A002233 (n + 1)).toNat

end

end A122028.P12693189289739128690

/-! ## A122028.P2896822684002439020

`A002233(n+1)+A000038(n)`
-/

namespace A122028.P2896822684002439020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1) + A000038 n

end

end A122028.P2896822684002439020

/-! ## A122028.P11246442400040943491

`A002233(n+1)+2*A000007(n)`
-/

namespace A122028.P11246442400040943491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1) + 2 * A000007 n

end

end A122028.P11246442400040943491

/-! ## A122028.P14600140267854544823

`A002233((A054977(n)+n)*A054977(n))`
-/

namespace A122028.P14600140267854544823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 ((A054977 n + (n : ℤ)) * A054977 n).toNat

end

end A122028.P14600140267854544823

/-! ## A122028.P442467178046572126

`A002233(n+1)-2*A008683(A002246(n+1))`
-/

namespace A122028.P442467178046572126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1) - 2 * A008683 (A002246 (n + 1)).toNat

end

end A122028.P442467178046572126

/-! ## A122028.P4514466087350864828

`2*A002233(A348776(n+1))-A002233(n+1)`
-/

namespace A122028.P4514466087350864828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002233 (A348776 (n + 1)).toNat - A002233 (n + 1)

end

end A122028.P4514466087350864828

/-! ## A122028.P5024130582801852290

`A229708(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A122028.P5024130582801852290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A122028.P5024130582801852290

/-! ## A122028.P13935643736368471373

`p?[∑{e}[n+1, #]*A229708(n+1)]`
-/

namespace A122028.P13935643736368471373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) * A229708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122028.P13935643736368471373

/-! ## A122028.P2560090437705933286

`A229708(A000040(n+1))`
-/

namespace A122028.P2560090437705933286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A000040 (n + 1)).toNat

end

end A122028.P2560090437705933286

/-! ## A122028.P13407787800412572660

`A229708(A161847(n+1))`
-/

namespace A122028.P13407787800412572660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A161847 (n + 1)).toNat

end

end A122028.P13407787800412572660

/-! ## A122028.P7561192103499159697

`A229708(A008578(n+2))`
-/

namespace A122028.P7561192103499159697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A008578 (n + 2)).toNat

end

end A122028.P7561192103499159697

/-! ## A122028.P18441724380589220424

`A229708(A182986(n+2))`
-/

namespace A122028.P18441724380589220424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A182986 (n + 2)).toNat

end

end A122028.P18441724380589220424

/-! ## A122028.P11836983896393472978

`A229708(record[A006530(n+2)])`
-/

namespace A122028.P11836983896393472978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122028.P11836983896393472978

/-! ## A122028.P16515640860974057198

`A229708(record[A014963(n+2)])`
-/

namespace A122028.P16515640860974057198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122028.P16515640860974057198

/-! ## A122028.P11931521763290500636

`A229708(record[A020639(n+2)])`
-/

namespace A122028.P11931521763290500636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122028.P11931521763290500636

/-! ## A122028.P10977279224612552782

`A229708(record[A000010(n+1)+1])`
-/

namespace A122028.P10977279224612552782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122028.P10977279224612552782

/-! ## A122028.P976635519001383952

`A229708(eq[1, A001222(n+1)]+1)`
-/

namespace A122028.P976635519001383952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A122028.P976635519001383952

/-!
# A122031: a(n) = a(n - 1) + (n - 1)*a(n - 2).

The programs for A122031, the canonical program `A122031.P13081537344647698062` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122031 has offset 0).

The definition of A122031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-1)*a(n-2)` (program `A122031.P13081537344647698062`, by `A122031.P13081537344647698062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122031.P13081537344647698062

`a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122031

/-- `a(n-1)+(n-1)*a(n-2)` -/
def P13081537344647698062.Spec : Prop :=
  ∀ n, P13081537344647698062.a n = A122031 n

theorem P13081537344647698062.correct : P13081537344647698062.Spec := by
  intro n
  simp only [A122031]

end A122031

/-! ## A122031.P16064451170605271473

`∏[(n-1)/a(n-1)+1]` with `a(0)=1, a(1)=2`
-/

namespace A122031.P16064451170605271473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122031.P16064451170605271473

namespace A122031

/-- `∏[(n-1)/a(n-1)+1]` -/
def P16064451170605271473.Spec : Prop :=
  ∀ n, P16064451170605271473.a n = (A122031 n : ℚ)

end A122031

/-! ## A122031.P2031902300187981771

`floor(a(n-1)-(1-n)*a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A122031.P2031902300187981771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (1 - (n : ℤ)) * a (n - 2)

end

end A122031.P2031902300187981771

namespace A122031

/-- `floor(a(n-1)-(1-n)*a(n-2))` -/
def P2031902300187981771.Spec : Prop :=
  ∀ n, P2031902300187981771.a n = A122031 n

theorem P2031902300187981771.correct : P2031902300187981771.Spec := by
  intro n
  simp only [A122031, Nat.add_sub_cancel, A122031.P2031902300187981771.a, A122031.P13081537344647698062.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122031

/-! ## A122031.P9603247117132887887

`∏[abs(1-a(n-1)-n)/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A122031.P9603247117132887887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  |1 - f1 (n - 1) - (n : ℚ)| / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122031.P9603247117132887887

namespace A122031

/-- `∏[abs(1-a(n-1)-n)/a(n-1)]` -/
def P9603247117132887887.Spec : Prop :=
  ∀ n, P9603247117132887887.a n = (A122031 n : ℚ)

end A122031

/-! ## A122031.P5327962363445847363

`a(n-1)+a(n-2)/(n-1)^-1` with `a(0)=1, a(1)=2`
-/

namespace A122031.P5327962363445847363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((n : ℤ) - 1 : ℚ) ^ (-1 : ℤ)

end

end A122031.P5327962363445847363

namespace A122031

/-- `a(n-1)+a(n-2)/(n-1)^-1` -/
def P5327962363445847363.Spec : Prop :=
  ∀ n, P5327962363445847363.a n = (A122031 n : ℚ)

end A122031

/-! ## A122031.P9554417177932233558

`a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A122031.P9554417177932233558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A122031.P9554417177932233558

namespace A122031

/-- `a(n-1)-(a(n-2)-n*a(n-2))` -/
def P9554417177932233558.Spec : Prop :=
  ∀ n, P9554417177932233558.a n = A122031 n

end A122031

/-! ## A122031.P9679291484887469936

`A187044(n)-A186738(n)`
-/

namespace A122031.P9679291484887469936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n - A186738 n

end

end A122031.P9679291484887469936

namespace A122031

/-- `A187044(n)-A186738(n)` -/
def P9679291484887469936.Spec : Prop :=
  ∀ n, P9679291484887469936.a n = A122031 n

end A122031

/-! ## A122031.P8861049923522371203

`A193361(n+2)-A186738(n)`
-/

namespace A122031.P8861049923522371203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2) - A186738 n

end

end A122031.P8861049923522371203

namespace A122031

/-- `A193361(n+2)-A186738(n)` -/
def P8861049923522371203.Spec : Prop :=
  ∀ n, P8861049923522371203.a n = A122031 n

end A122031

/-! ## A122031.P3556569470380335144

`A186739(n+1)+A000085(n)-A186738(n)`
-/

namespace A122031.P3556569470380335144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 1) + (A000085 n - A186738 n)

end

end A122031.P3556569470380335144

namespace A122031

/-- `A186739(n+1)+A000085(n)-A186738(n)` -/
def P3556569470380335144.Spec : Prop :=
  ∀ n, P3556569470380335144.a n = A122031 n

end A122031

/-!
# A122032: Product of the first n 3-almost primes, divided by product of the first n primes, rounded down.

The programs for A122032, there is no canonical definition to state claims against.
-/

/-! ## A122032.P13424329584607940144

`floor(A114425(n+1)/A002110(n+1))`
-/

namespace A122032.P13424329584607940144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114425 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A122032.P13424329584607940144

/-!
# A122033: a(n) = 2*a(n-1) - 2*(n-2)*a(n-2), with a(0)=1, a(1)=2.

The programs for A122033, the canonical program `A122033.P16351512269671422191` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122033 has offset 0).

The definition of A122033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*(n-2)*a(n-2)` (program `A122033.P16351512269671422191`, by `A122033.P16351512269671422191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122033.P14982184517257323920

`2*(a(n-1)-(n-2)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A122033.P14982184517257323920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - ((n : ℤ) - 2) * a (n - 2))

end

end A122033.P14982184517257323920

namespace A122033

/-- `2*(a(n-1)-(n-2)*a(n-2))` -/
def P14982184517257323920.Spec : Prop :=
  ∀ n, P14982184517257323920.a n = A122033 n

theorem P14982184517257323920.correct : P14982184517257323920.Spec := by
  intro n
  simp only [A122033, Nat.add_sub_cancel, A122033.P14982184517257323920.a, A122033.P16351512269671422191.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122033

/-! ## A122033.P16351512269671422191

`2*a(n-1)-2*(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122033

/-- `2*a(n-1)-2*(n-2)*a(n-2)` -/
def P16351512269671422191.Spec : Prop :=
  ∀ n, P16351512269671422191.a n = A122033 n

theorem P16351512269671422191.correct : P16351512269671422191.Spec := by
  intro n
  simp only [A122033]

end A122033

/-! ## A122033.P8499859991202151631

`A001227(A007821(n+1))*A062267(n-A057427(n))`
-/

namespace A122033.P8499859991202151631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A007821 (n + 1)).toNat * A062267 ((n : ℤ) - A057427 n).toNat

end

end A122033.P8499859991202151631

namespace A122033

/-- `A001227(A007821(n+1))*A062267(n-A057427(n))` -/
def P8499859991202151631.Spec : Prop :=
  ∀ n, P8499859991202151631.a n = A122033 n

end A122033

/-! ## A122033.P1647159829876023436

`A014963(A060632(n+1))*A062267(n-A057427(n))`
-/

namespace A122033.P1647159829876023436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A060632 (n + 1)).toNat * A062267 ((n : ℤ) - A057427 n).toNat

end

end A122033.P1647159829876023436

namespace A122033

/-- `A014963(A060632(n+1))*A062267(n-A057427(n))` -/
def P1647159829876023436.Spec : Prop :=
  ∀ n, P1647159829876023436.a n = A122033 n

end A122033

/-! ## A122033.P11198700132028220447

`A062267(n)+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A122033.P11198700132028220447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062267 n + ((n : ℤ) - 1) * a (n - 1)

end

end A122033.P11198700132028220447

namespace A122033

/-- `A062267(n)+(n-1)*a(n-1)` -/
def P11198700132028220447.Spec : Prop :=
  ∀ n, P11198700132028220447.a n = A122033 n

end A122033

/-! ## A122033.P7500234891150975266

`A000122(n²)*A062267(n-A057427(n))`
-/

namespace A122033.P7500234891150975266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A062267 ((n : ℤ) - A057427 n).toNat

end

end A122033.P7500234891150975266

namespace A122033

/-- `A000122(n²)*A062267(n-A057427(n))` -/
def P7500234891150975266.Spec : Prop :=
  ∀ n, P7500234891150975266.a n = A122033 n

end A122033

/-!
# A122037: Largest prime factor of number equal to the arithmetic mean of four successive primes.

The programs for A122037, the canonical program `A122037.P14771729018691792230` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122037 has offset 1).

The definition of A122037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A102655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122037.P14771729018691792230

`A006530(A102655(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A122037

/-- `A006530(A102655(n+1))` -/
def P14771729018691792230.Spec : Prop :=
  ∀ n, P14771729018691792230.a n = A122037 (n + 1)

theorem P14771729018691792230.correct : P14771729018691792230.Spec := by
  intro n
  simp only [A122037, Nat.add_sub_cancel]

end A122037

/-! ## A122037.P15315496649540036037

`A034699(∏{p}[A102655(n+1), #])`
-/

namespace A122037.P15315496649540036037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122037.P15315496649540036037

namespace A122037

/-- `A034699(∏{p}[A102655(n+1), #])` -/
def P15315496649540036037.Spec : Prop :=
  ∀ n, P15315496649540036037.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P15517912176186188164

`A088387(∏{p}[A102655(n+1), #])`
-/

namespace A122037.P15517912176186188164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122037.P15517912176186188164

namespace A122037

/-- `A088387(∏{p}[A102655(n+1), #])` -/
def P15517912176186188164.Spec : Prop :=
  ∀ n, P15517912176186188164.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P5500165565312893653

`A002034(∏{p}[A102655(n+1), #])`
-/

namespace A122037.P5500165565312893653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122037.P5500165565312893653

namespace A122037

/-- `A002034(∏{p}[A102655(n+1), #])` -/
def P5500165565312893653.Spec : Prop :=
  ∀ n, P5500165565312893653.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P15456050641722830329

`A025492(∏{p}[A102655(n+1), #])`
-/

namespace A122037.P15456050641722830329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122037.P15456050641722830329

namespace A122037

/-- `A025492(∏{p}[A102655(n+1), #])` -/
def P15456050641722830329.Spec : Prop :=
  ∀ n, P15456050641722830329.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P6959525498527179173

`A053585(∏{p}[A102655(n+1), #])`
-/

namespace A122037.P6959525498527179173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122037.P6959525498527179173

namespace A122037

/-- `A053585(∏{p}[A102655(n+1), #])` -/
def P6959525498527179173.Spec : Prop :=
  ∀ n, P6959525498527179173.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P17588306349478968422

`A085392(2*A102655(n+1))`
-/

namespace A122037.P17588306349478968422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A102655 (n + 1)).toNat

end

end A122037.P17588306349478968422

namespace A122037

/-- `A085392(2*A102655(n+1))` -/
def P17588306349478968422.Spec : Prop :=
  ∀ n, P17588306349478968422.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P18105821893053945431

`A111089(2*A102655(n+1))`
-/

namespace A122037.P18105821893053945431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * A102655 (n + 1)).toNat

end

end A122037.P18105821893053945431

namespace A122037

/-- `A111089(2*A102655(n+1))` -/
def P18105821893053945431.Spec : Prop :=
  ∀ n, P18105821893053945431.a n = A122037 (n + 1)

end A122037

/-! ## A122037.P5393313233308868788

`A085392(lcm(2, A102655(n+1)))`
-/

namespace A122037.P5393313233308868788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Int.lcm 2 (A102655 (n + 1)))

end

end A122037.P5393313233308868788

namespace A122037

/-- `A085392(lcm(2, A102655(n+1)))` -/
def P5393313233308868788.Spec : Prop :=
  ∀ n, P5393313233308868788.a n = A122037 (n + 1)

end A122037

/-!
# A122038: a(n) = 1*3^(3*n) + 2*3^(2*n) - 3*3^(1*n).

The programs for A122038, the canonical program `A122038.P16174208437455517955` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122038 has offset 1).

The definition of A122038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122038.P16174208437455517955

`(3^n+1)*(3^(n+1)-1)*3^(n+2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122038

/-- `(3^n+1)*(3^(n+1)-1)*3^(n+2)` -/
def P16174208437455517955.Spec : Prop :=
  ∀ n, P16174208437455517955.a n = A122038 (n + 1)

theorem P16174208437455517955.correct : P16174208437455517955.Spec := by
  intro n
  simp only [A122038, Nat.add_sub_cancel]

end A122038

/-!
# A122040: Numbers which are equal to the arithmetic mean of six successive primes.

The programs for A122040, there is no canonical definition to state claims against.
-/

/-! ## A122040.P13157930483602834702

`∩[A127333(n+1), A008585(n)]/6`
-/

namespace A122040.P13157930483602834702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A122040.P13157930483602834702

/-!
# A122041: a(n) = 2*a(n-1) - 1 for n>1, a(1)=23.

The programs for A122041, the canonical program `A122041.P11946366216932726882` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122041 has offset 1).

The definition of A122041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A122041.P11946366216932726882`, by `A122041.P11946366216932726882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122041.P6556820249700221577

`1+11*2^(n+1)`
-/

namespace A122041.P6556820249700221577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 11 * 2 ^ (n + 1)

end

end A122041.P6556820249700221577

namespace A122041

/-- `1+11*2^(n+1)` -/
def P6556820249700221577.Spec : Prop :=
  ∀ n, (P6556820249700221577.a n : ℤ) = A122041 (n + 1)

theorem P6556820249700221577.correct : P6556820249700221577.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122041, Nat.add_sub_cancel, A122041.P6556820249700221577.a, A122041.P11946366216932726882.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122041, Nat.add_sub_cancel, A122041.P6556820249700221577.a, A122041.P11946366216932726882.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122041

/-! ## A122041.P11946366216932726882

`2*a(n-1)-1` with `a(0)=23`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122041

/-- `2*a(n-1)-1` -/
def P11946366216932726882.Spec : Prop :=
  ∀ n, P11946366216932726882.a n = A122041 (n + 1)

theorem P11946366216932726882.correct : P11946366216932726882.Spec := by
  intro n
  simp only [A122041, Nat.add_sub_cancel]

end A122041

/-! ## A122041.P15605053375265364113

`A083683(n+1)`
-/

namespace A122041.P15605053375265364113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 (n + 1)

end

end A122041.P15605053375265364113

namespace A122041

/-- `A083683(n+1)` -/
def P15605053375265364113.Spec : Prop :=
  ∀ n, P15605053375265364113.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P5770154866856658379

`or(1, 22*2^n)`
-/

namespace A122041.P5770154866856658379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (22 * 2 ^ n)

end

end A122041.P5770154866856658379

namespace A122041

/-- `or(1, 22*2^n)` -/
def P5770154866856658379.Spec : Prop :=
  ∀ n, (P5770154866856658379.a n : ℤ) = A122041 (n + 1)

end A122041

/-! ## A122041.P11358453058446238952

`ogf((23-24x)/(1-3x+2x^2))`
-/

namespace A122041.P11358453058446238952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, -24] [1, -3, 2] n

end

end A122041.P11358453058446238952

namespace A122041

/-- `ogf((23-24x)/(1-3x+2x^2))` -/
def P11358453058446238952.Spec : Prop :=
  ∀ n, P11358453058446238952.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P13518910630316879447

`xor(1, A005015(n+1))`
-/

namespace A122041.P13518910630316879447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A005015 (n + 1))

end

end A122041.P13518910630316879447

namespace A122041

/-- `xor(1, A005015(n+1))` -/
def P13518910630316879447.Spec : Prop :=
  ∀ n, P13518910630316879447.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P15901307530402211885

`xor(1, 22*A000079(n))`
-/

namespace A122041.P15901307530402211885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (22 * A000079 n)

end

end A122041.P15901307530402211885

namespace A122041

/-- `xor(1, 22*A000079(n))` -/
def P15901307530402211885.Spec : Prop :=
  ∀ n, P15901307530402211885.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P1757672323761235159

`record[A083683(abs(1-n))]`
-/

namespace A122041.P1757672323761235159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122041.P1757672323761235159

namespace A122041

/-- `record[A083683(abs(1-n))]` -/
def P1757672323761235159.Spec : Prop :=
  ∀ n, P1757672323761235159.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P5315673896425536722

`xor(A000051(n+3), A110286(n+1))`
-/

namespace A122041.P5315673896425536722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 (n + 3)) (A110286 (n + 1))

end

end A122041.P5315673896425536722

namespace A122041

/-- `xor(A000051(n+3), A110286(n+1))` -/
def P5315673896425536722.Spec : Prop :=
  ∀ n, P5315673896425536722.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P315980176475118788

`xor(A086224(n+1)+2, A081808(n+2))`
-/

namespace A122041.P315980176475118788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086224 (n + 1) + 2) (A081808 (n + 2))

end

end A122041.P315980176475118788

namespace A122041

/-- `xor(A086224(n+1)+2, A081808(n+2))` -/
def P315980176475118788.Spec : Prop :=
  ∀ n, P315980176475118788.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P9351334107002459237

`abs(A005015(n+1)-A008683(A155555(n+1)))`
-/

namespace A122041.P9351334107002459237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005015 (n + 1) - A008683 (A155555 (n + 1)).toNat|

end

end A122041.P9351334107002459237

namespace A122041

/-- `abs(A005015(n+1)-A008683(A155555(n+1)))` -/
def P9351334107002459237.Spec : Prop :=
  ∀ n, P9351334107002459237.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P16712126343913570137

`(A196655(n)-4)/3`
-/

namespace A122041.P16712126343913570137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196655 n - 4 : ℚ) / 3

end

end A122041.P16712126343913570137

namespace A122041

/-- `(A196655(n)-4)/3` -/
def P16712126343913570137.Spec : Prop :=
  ∀ n, P16712126343913570137.a n = (A122041 (n + 1) : ℚ)

end A122041

/-! ## A122041.P11526721027551981100

`(A086225(n+2)+3)/2`
-/

namespace A122041.P11526721027551981100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086225 (n + 2) + 3 : ℚ) / 2

end

end A122041.P11526721027551981100

namespace A122041

/-- `(A086225(n+2)+3)/2` -/
def P11526721027551981100.Spec : Prop :=
  ∀ n, P11526721027551981100.a n = (A122041 (n + 1) : ℚ)

end A122041

/-! ## A122041.P2108797401630300896

`Δ[A083706(n+1)+A083705(n+1)]`
-/

namespace A122041.P2108797401630300896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (n + 1) + A083705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122041.P2108797401630300896

namespace A122041

/-- `Δ[A083706(n+1)+A083705(n+1)]` -/
def P2108797401630300896.Spec : Prop :=
  ∀ n, P2108797401630300896.a n = A122041 (n + 1)

end A122041

/-! ## A122041.P17884696705181196969

`(A168596(n+1)+A083705(n+1))/2`
-/

namespace A122041.P17884696705181196969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168596 (n + 1) + A083705 (n + 1) : ℚ) / 2

end

end A122041.P17884696705181196969

namespace A122041

/-- `(A168596(n+1)+A083705(n+1))/2` -/
def P17884696705181196969.Spec : Prop :=
  ∀ n, P17884696705181196969.a n = (A122041 (n + 1) : ℚ)

end A122041

/-! ## A122041.P2090618330826285843

`(A002089(n+1)+A000079(n+1))/A000079(n+1)`
-/

namespace A122041.P2090618330826285843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002089 (n + 1) + A000079 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A122041.P2090618330826285843

namespace A122041

/-- `(A002089(n+1)+A000079(n+1))/A000079(n+1)` -/
def P2090618330826285843.Spec : Prop :=
  ∀ n, P2090618330826285843.a n = (A122041 (n + 1) : ℚ)

end A122041

/-!
# A122044: a(n) = a(n-2) - (n-3)*a(n-3), with a(0)=0, a(1)=1, a(2)=2.

The programs for A122044, the canonical program `A122044.P9052574890221782621` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122044 has offset 0).

The definition of A122044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)-(n-3)*a(n-3)` (program `A122044.P9052574890221782621`, by `A122044.P9052574890221782621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122044.P9052574890221782621

`a(n-2)-(n-3)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122044

/-- `a(n-2)-(n-3)*a(n-3)` -/
def P9052574890221782621.Spec : Prop :=
  ∀ n, P9052574890221782621.a n = A122044 n

theorem P9052574890221782621.correct : P9052574890221782621.Spec := by
  intro n
  simp only [A122044]

end A122044

/-!
# A122045: Euler (or secant) numbers E(n).

The programs for A122045, there is no canonical definition to state claims against.
-/

/-! ## A122045.P4541576626473657538

`A119879(∑[n])`
-/

namespace A122045.P4541576626473657538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122045.P4541576626473657538

/-! ## A122045.P4859624864427048166

`Δ[A009390(n)]`
-/

namespace A122045.P4859624864427048166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122045.P4859624864427048166

/-! ## A122045.P14129964210610650984

`1-A009832(n)`
-/

namespace A122045.P14129964210610650984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009832 n

end

end A122045.P14129964210610650984

/-! ## A122045.P16841300345815268687

`2-A119880(n)`
-/

namespace A122045.P16841300345815268687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A119880 n

end

end A122045.P16841300345815268687

/-! ## A122045.P11272890473170627499

`(1-and(2, n))*A008280(∑[n])`
-/

namespace A122045.P11272890473170627499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A008280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122045.P11272890473170627499

/-! ## A122045.P3346338295522258730

`a(n-1)-A241209(n-1)` with `a(0)=1`
-/

namespace A122045.P3346338295522258730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A241209 (n - 1)

end

end A122045.P3346338295522258730

/-! ## A122045.P3114229091330203533

`or(char[2], A119879(A000217(n)))`
-/

namespace A122045.P3114229091330203533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A119879 (A000217 n).toNat)

end

end A122045.P3114229091330203533

/-! ## A122045.P9067204185676150566

`A009390(n+1)-A009390(n)`
-/

namespace A122045.P9067204185676150566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 (n + 1) - A009390 n

end

end A122045.P9067204185676150566

/-! ## A122045.P7739972186492121130

`A000034(n)*A119879(A000217(n))`
-/

namespace A122045.P7739972186492121130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A119879 (A000217 n).toNat

end

end A122045.P7739972186492121130

/-! ## A122045.P3043089792766454957

`A028920(n)*A119879(A000217(n))`
-/

namespace A122045.P3043089792766454957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n * A119879 (A000217 n).toNat

end

end A122045.P3043089792766454957

/-!
# A122046: Partial sums of floor(n^2/8).

The programs for A122046, the canonical program `A122046.P14111764381793131601` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122046 has offset 0).

The definition of A122046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122046.P14111764381793131601

`round((2*n^3+3*n²-8*n)/48)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122046

/-- `round((2*n^3+3*n²-8*n)/48)` -/
def P14111764381793131601.Spec : Prop :=
  ∀ n, P14111764381793131601.a n = A122046 n

theorem P14111764381793131601.correct : P14111764381793131601.Spec := by
  intro n
  simp only [A122046]

end A122046

/-! ## A122046.P17680539043090159720

`a(n-8)+(n-4)²+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=10, a(7)=16`
-/

namespace A122046.P17680539043090159720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3, 6, 10, 16] fun n a =>
  a (n - 8) + ((n : ℤ) - 4) ^ 2 + (n : ℤ)

end

end A122046.P17680539043090159720

namespace A122046

/-- `a(n-8)+(n-4)²+n` -/
def P17680539043090159720.Spec : Prop :=
  ∀ n, P17680539043090159720.a n = A122046 n

end A122046

/-! ## A122046.P18173316112911584782

`∑[∑[∑[char[or(3, n)]]]]`
-/

namespace A122046.P18173316112911584782
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P18173316112911584782

namespace A122046

/-- `∑[∑[∑[char[or(3, n)]]]]` -/
def P18173316112911584782.Spec : Prop :=
  ∀ n, (P18173316112911584782.a n : ℤ) = A122046 n

end A122046

/-! ## A122046.P1442299236477546000

`∑[∑[∑[C(n, 3)%2]]]`
-/

namespace A122046.P1442299236477546000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P1442299236477546000

namespace A122046

/-- `∑[∑[∑[C(n, 3)%2]]]` -/
def P1442299236477546000.Spec : Prop :=
  ∀ n, (P1442299236477546000.a n : ℤ) = A122046 n

end A122046

/-! ## A122046.P17621552968704610682

`∑[∑[∑[and(1, C(n, 3))]]]`
-/

namespace A122046.P17621552968704610682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P17621552968704610682

namespace A122046

/-- `∑[∑[∑[and(1, C(n, 3))]]]` -/
def P17621552968704610682.Spec : Prop :=
  ∀ n, (P17621552968704610682.a n : ℤ) = A122046 n

end A122046

/-! ## A122046.P13622671509112693035

`∑[∑[∑[C(n, or(3, n))]]]`
-/

namespace A122046.P13622671509112693035
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 3 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P13622671509112693035

namespace A122046

/-- `∑[∑[∑[C(n, or(3, n))]]]` -/
def P13622671509112693035.Spec : Prop :=
  ∀ n, (P13622671509112693035.a n : ℤ) = A122046 n

end A122046

/-! ## A122046.P3597785026844952616

`floor(a(n-1)+n²/8)` with `a(0)=0`
-/

namespace A122046.P3597785026844952616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 8⌋

end

end A122046.P3597785026844952616

namespace A122046

/-- `floor(a(n-1)+n²/8)` -/
def P3597785026844952616.Spec : Prop :=
  ∀ n, P3597785026844952616.a n = A122046 n

end A122046

/-! ## A122046.P2694835541742501118

`∑[∑[a(n-4)+1]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A122046.P2694835541742501118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  f2 (n - 4) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P2694835541742501118

namespace A122046

/-- `∑[∑[a(n-4)+1]]` -/
def P2694835541742501118.Spec : Prop :=
  ∀ n, (P2694835541742501118.a n : ℤ) = A122046 n

end A122046

/-! ## A122046.P15767710560250900846

`∑[∑[∑[a(n-4)²]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A122046.P15767710560250900846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f3 =>
  f3 (n - 4) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P15767710560250900846

namespace A122046

/-- `∑[∑[∑[a(n-4)²]]]` -/
def P15767710560250900846.Spec : Prop :=
  ∀ n, (P15767710560250900846.a n : ℤ) = A122046 n

end A122046

/-! ## A122046.P7626792407376756651

`a(n-1)+floor(n*n/8)` with `a(0)=0`
-/

namespace A122046.P7626792407376756651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) * ((n : ℚ) / 8)⌋

end

end A122046.P7626792407376756651

namespace A122046

/-- `a(n-1)+floor(n*n/8)` -/
def P7626792407376756651.Spec : Prop :=
  ∀ n, P7626792407376756651.a n = A122046 n

end A122046

/-! ## A122046.P15687508411338973521

`floor((∑[∑[n%2+n-1]]+1)/4)`
-/

namespace A122046.P15687508411338973521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + n : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌋

end

end A122046.P15687508411338973521

namespace A122046

/-- `floor((∑[∑[n%2+n-1]]+1)/4)` -/
def P15687508411338973521.Spec : Prop :=
  ∀ n, P15687508411338973521.a n = A122046 n

end A122046

/-! ## A122046.P557195045237719085

`∑[A130519(n+1)]`
-/

namespace A122046.P557195045237719085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122046.P557195045237719085

namespace A122046

/-- `∑[A130519(n+1)]` -/
def P557195045237719085.Spec : Prop :=
  ∀ n, P557195045237719085.a n = A122046 n

end A122046

/-! ## A122046.P3649747673973869832

`floor((∑[A000982(n)-1]+1)/4)`
-/

namespace A122046.P3649747673973869832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌋

end

end A122046.P3649747673973869832

namespace A122046

/-- `floor((∑[A000982(n)-1]+1)/4)` -/
def P3649747673973869832.Spec : Prop :=
  ∀ n, P3649747673973869832.a n = A122046 n

end A122046

/-! ## A122046.P12892006015256336620

`A177189(n)+A175777(n)`
-/

namespace A122046.P12892006015256336620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177189 n + A175777 n

end

end A122046.P12892006015256336620

namespace A122046

/-- `A177189(n)+A175777(n)` -/
def P12892006015256336620.Spec : Prop :=
  ∀ n, P12892006015256336620.a n = A122046 n

end A122046

/-! ## A122046.P16948307905999345456

`A173196(n)-A173722(n)`
-/

namespace A122046.P16948307905999345456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A173722 n

end

end A122046.P16948307905999345456

namespace A122046

/-- `A173196(n)-A173722(n)` -/
def P16948307905999345456.Spec : Prop :=
  ∀ n, P16948307905999345456.a n = A122046 n

end A122046

/-! ## A122046.P13562794047094041288

`A175287(n)-A175826(n)`
-/

namespace A122046.P13562794047094041288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - A175826 n

end

end A122046.P13562794047094041288

namespace A122046

/-- `A175287(n)-A175826(n)` -/
def P13562794047094041288.Spec : Prop :=
  ∀ n, P13562794047094041288.a n = A122046 n

end A122046

/-! ## A122046.P3241938178127968112

`A175812(n)-A175870(n)`
-/

namespace A122046.P3241938178127968112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n - A175870 n

end

end A122046.P3241938178127968112

namespace A122046

/-- `A175812(n)-A175870(n)` -/
def P3241938178127968112.Spec : Prop :=
  ∀ n, P3241938178127968112.a n = A122046 n

end A122046

/-! ## A122046.P9262319494880354640

`A299286(n)-A299288(n)`
-/

namespace A122046.P9262319494880354640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299286 n - A299288 n

end

end A122046.P9262319494880354640

namespace A122046

/-- `A299286(n)-A299288(n)` -/
def P9262319494880354640.Spec : Prop :=
  ∀ n, P9262319494880354640.a n = A122046 n

end A122046

/-! ## A122046.P14743079638156968688

`A211520(n)+A032801(n+1)`
-/

namespace A122046.P14743079638156968688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211520 n + A032801 (n + 1)

end

end A122046.P14743079638156968688

namespace A122046

/-- `A211520(n)+A032801(n+1)` -/
def P14743079638156968688.Spec : Prop :=
  ∀ n, P14743079638156968688.a n = A122046 n

end A122046

/-!
# A122047: Degree of the polynomial P(n,x), defined by a Somos-6 type sequence: P(n,x)=(x^(n-1)*P(n-1,x)*P(n-5,x) + P(n-2,x)*P(n-4,x))/P(n-6,x), initialized with P(n,x)=1 at n

The programs for A122047, the canonical program `A122047.P16851133736225854951` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122047 has offset 0).

The definition of A122047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122047.P16851133736225854951

`floor((n^3+6*n²+5*n)/30)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122047

/-- `floor((n^3+6*n²+5*n)/30)` -/
def P16851133736225854951.Spec : Prop :=
  ∀ n, P16851133736225854951.a n = A122047 n

theorem P16851133736225854951.correct : P16851133736225854951.Spec := by
  intro n
  simp only [A122047]

end A122047

/-! ## A122047.P1710037355089051952

`round((C(n+3, 3)-(n+1))/5)`
-/

namespace A122047.P1710037355089051952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 3) 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 5)

end

end A122047.P1710037355089051952

namespace A122047

/-- `round((C(n+3, 3)-(n+1))/5)` -/
def P1710037355089051952.Spec : Prop :=
  ∀ n, P1710037355089051952.a n = A122047 n

end A122047

/-! ## A122047.P16395621529621255530

`ceil((C(n+3, 3)-(n+3))/5)`
-/

namespace A122047.P16395621529621255530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 3) 3 : ℤ) - (n + 3 : ℤ) : ℚ) / 5⌉

end

end A122047.P16395621529621255530

namespace A122047

/-- `ceil((C(n+3, 3)-(n+3))/5)` -/
def P16395621529621255530.Spec : Prop :=
  ∀ n, P16395621529621255530.a n = A122047 n

end A122047

/-! ## A122047.P17586795722383337967

`a(n-1)-∑[floor((1-n)/5)]` with `a(0)=0`
-/

namespace A122047.P17586795722383337967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P17586795722383337967

namespace A122047

/-- `a(n-1)-∑[floor((1-n)/5)]` -/
def P17586795722383337967.Spec : Prop :=
  ∀ n, P17586795722383337967.a n = A122047 n

end A122047

/-! ## A122047.P11292773416432602369

`round(∑[A000217(n)+n]/5)`
-/

namespace A122047.P11292773416432602369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5)

end

end A122047.P11292773416432602369

namespace A122047

/-- `round(∑[A000217(n)+n]/5)` -/
def P11292773416432602369.Spec : Prop :=
  ∀ n, P11292773416432602369.a n = A122047 n

end A122047

/-! ## A122047.P11182834567013205963

`∑[A186384(n+1)-(n+1)]`
-/

namespace A122047.P11182834567013205963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186384 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P11182834567013205963

namespace A122047

/-- `∑[A186384(n+1)-(n+1)]` -/
def P11182834567013205963.Spec : Prop :=
  ∀ n, P11182834567013205963.a n = A122047 n

end A122047

/-! ## A122047.P13459458334327812058

`A173690(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A122047.P13459458334327812058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A173690 n - a (n - 3)

end

end A122047.P13459458334327812058

namespace A122047

/-- `A173690(n)-a(n-3)` -/
def P13459458334327812058.Spec : Prop :=
  ∀ n, P13459458334327812058.a n = A122047 n

end A122047

/-! ## A122047.P9679056241180369864

`ceil((A000292(n+1)-(n+4))/5)`
-/

namespace A122047.P9679056241180369864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000292 (n + 1) - (n + 4 : ℤ) : ℚ) / 5⌉

end

end A122047.P9679056241180369864

namespace A122047

/-- `ceil((A000292(n+1)-(n+4))/5)` -/
def P9679056241180369864.Spec : Prop :=
  ∀ n, P9679056241180369864.a n = A122047 n

end A122047

/-! ## A122047.P3011552406112575305

`A181640(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A122047.P3011552406112575305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181640 (n + 1) - a (n - 1)

end

end A122047.P3011552406112575305

namespace A122047

/-- `A181640(n+1)-a(n-1)` -/
def P3011552406112575305.Spec : Prop :=
  ∀ n, P3011552406112575305.a n = A122047 n

end A122047

/-! ## A122047.P13016655911057250915

`∑[A398060(n+1)-(n+1)²]`
-/

namespace A122047.P13016655911057250915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398060 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P13016655911057250915

namespace A122047

/-- `∑[A398060(n+1)-(n+1)²]` -/
def P13016655911057250915.Spec : Prop :=
  ∀ n, P13016655911057250915.a n = A122047 n

end A122047

/-! ## A122047.P3242470247093895285

`∑[A249013(n+2)]-A008738(n+1)`
-/

namespace A122047.P3242470247093895285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008738 (n + 1)

end

end A122047.P3242470247093895285

namespace A122047

/-- `∑[A249013(n+2)]-A008738(n+1)` -/
def P3242470247093895285.Spec : Prop :=
  ∀ n, P3242470247093895285.a n = A122047 n

end A122047

/-! ## A122047.P3126968707266212947

`round(record[∑[∑[(n-1)/5]]])`
-/

namespace A122047.P3126968707266212947
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 5

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A122047.P3126968707266212947

namespace A122047

/-- `round(record[∑[∑[(n-1)/5]]])` -/
def P3126968707266212947.Spec : Prop :=
  ∀ n, P3126968707266212947.a n = A122047 n

end A122047

/-! ## A122047.P4120318076419985657

`∑[A130520(n+3)]`
-/

namespace A122047.P4120318076419985657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P4120318076419985657

namespace A122047

/-- `∑[A130520(n+3)]` -/
def P4120318076419985657.Spec : Prop :=
  ∀ n, P4120318076419985657.a n = A122047 n

end A122047

/-! ## A122047.P4895773489349300861

`A177239(n+1)+A177239(n+2)`
-/

namespace A122047.P4895773489349300861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (n + 1) + A177239 (n + 2)

end

end A122047.P4895773489349300861

namespace A122047

/-- `A177239(n+1)+A177239(n+2)` -/
def P4895773489349300861.Spec : Prop :=
  ∀ n, P4895773489349300861.a n = A122047 n

end A122047

/-! ## A122047.P9004025759316134469

`∑[∑[A002266(n+3)]]`
-/

namespace A122047.P9004025759316134469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P9004025759316134469

namespace A122047

/-- `∑[∑[A002266(n+3)]]` -/
def P9004025759316134469.Spec : Prop :=
  ∀ n, P9004025759316134469.a n = A122047 n

end A122047

/-! ## A122047.P1397128252783903972

`A008669(2*n)-∑[A008672(n)]`
-/

namespace A122047.P1397128252783903972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P1397128252783903972

namespace A122047

/-- `A008669(2*n)-∑[A008672(n)]` -/
def P1397128252783903972.Spec : Prop :=
  ∀ n, P1397128252783903972.a n = A122047 n

end A122047

/-! ## A122047.P13377875298925017958

`∑[A008720(2*n+1)]`
-/

namespace A122047.P13377875298925017958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P13377875298925017958

namespace A122047

/-- `∑[A008720(2*n+1)]` -/
def P13377875298925017958.Spec : Prop :=
  ∀ n, P13377875298925017958.a n = A122047 n

end A122047

/-! ## A122047.P17530209553475057007

`∑[∑[A008616(2*n+1)]]`
-/

namespace A122047.P17530209553475057007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122047.P17530209553475057007

namespace A122047

/-- `∑[∑[A008616(2*n+1)]]` -/
def P17530209553475057007.Spec : Prop :=
  ∀ n, P17530209553475057007.a n = A122047 n

end A122047

/-! ## A122047.P116323651035465887

`A008669(2*n)+A008669(n+1)-A001304(n+1)`
-/

namespace A122047.P116323651035465887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (2 * n) + (A008669 (n + 1) - A001304 (n + 1))

end

end A122047.P116323651035465887

namespace A122047

/-- `A008669(2*n)+A008669(n+1)-A001304(n+1)` -/
def P116323651035465887.Spec : Prop :=
  ∀ n, P116323651035465887.a n = A122047 n

end A122047

/-! ## A122047.P12586203467824960341

`A029266(A101328(n+2))`
-/

namespace A122047.P12586203467824960341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029266 (A101328 (n + 2)).toNat

end

end A122047.P12586203467824960341

namespace A122047

/-- `A029266(A101328(n+2))` -/
def P12586203467824960341.Spec : Prop :=
  ∀ n, P12586203467824960341.a n = A122047 n

end A122047

/-!
# A122048: a(n) = (n-2)*a(n-2) - a(n-3), with a(0)=0, a(1)=1, a(2)=2.

The programs for A122048, the canonical program `A122048.P6056550156523102236` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122048 has offset 0).

The definition of A122048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-2)*a(n-2)-a(n-3)` (program `A122048.P6056550156523102236`, by `A122048.P6056550156523102236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122048.P6056550156523102236

`(n-2)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122048

/-- `(n-2)*a(n-2)-a(n-3)` -/
def P6056550156523102236.Spec : Prop :=
  ∀ n, P6056550156523102236.a n = A122048 n

theorem P6056550156523102236.correct : P6056550156523102236.Spec := by
  intro n
  simp only [A122048]

end A122048

/-!
# A122049: a(n) = a(n-1) - (n-4)*a(n-4), with a(0)=0, a(1)=1, a(2)=2, a(3)=1.

The programs for A122049, the canonical program `A122049.P527668626710041926` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122049 has offset 0).

The definition of A122049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-(n-4)*a(n-4)` (program `A122049.P527668626710041926`, by `A122049.P527668626710041926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122049.P527668626710041926

`a(n-1)-(n-4)*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122049

/-- `a(n-1)-(n-4)*a(n-4)` -/
def P527668626710041926.Spec : Prop :=
  ∀ n, P527668626710041926.a n = A122049 n

theorem P527668626710041926.correct : P527668626710041926.Spec := by
  intro n
  simp only [A122049]

end A122049

/-!
# A122050: a(n) = (n-1)*a(n-1) - a(n-4) with a(0)=0, a(1)=1, a(2)=2, a(3)=1.

The programs for A122050, the canonical program `A122050.P1652026722211384020` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122050 has offset 0).

The definition of A122050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-1)-a(n-4)` (program `A122050.P1652026722211384020`, by `A122050.P1652026722211384020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122050.P1652026722211384020

`(n-1)*a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122050

/-- `(n-1)*a(n-1)-a(n-4)` -/
def P1652026722211384020.Spec : Prop :=
  ∀ n, P1652026722211384020.a n = A122050 n

theorem P1652026722211384020.correct : P1652026722211384020.Spec := by
  intro n
  simp only [A122050]

end A122050

/-! ## A122050.P4605084427824971851

`A006530(A089066(n+3))%A139006(n)`
-/

namespace A122050.P4605084427824971851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A089066 (n + 3)).toNat) (A139006 n)

end

end A122050.P4605084427824971851

namespace A122050

/-- `A006530(A089066(n+3))%A139006(n)` -/
def P4605084427824971851.Spec : Prop :=
  ∀ n, P4605084427824971851.a n = A122050 n

end A122050

/-! ## A122050.P2489311512485479557

`A006530(A099030(n+3))%A139006(n)`
-/

namespace A122050.P2489311512485479557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A099030 (n + 3)).toNat) (A139006 n)

end

end A122050.P2489311512485479557

namespace A122050

/-- `A006530(A099030(n+3))%A139006(n)` -/
def P2489311512485479557.Spec : Prop :=
  ∀ n, P2489311512485479557.a n = A122050 n

end A122050

/-!
# A122054: Least positive number with exactly n partitions into a square and a cube.

The programs for A122054, there is no canonical definition to state claims against.
-/

/-! ## A122054.P3384140086264541202

`∏{e}[2^n, A060835(#)]`
-/

namespace A122054.P3384140086264541202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A060835 (Nat.factorization (f1 n) p)

end

end A122054.P3384140086264541202

/-! ## A122054.P14471657265093729853

`A060835(n%round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A122054.P14471657265093729853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060835 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))).toNat

end

end A122054.P14471657265093729853

/-! ## A122054.P17982904933773828541

`A060835(A028310(n))-char[24*n]`
-/

namespace A122054.P17982904933773828541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060835 (A028310 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A122054.P17982904933773828541

/-! ## A122054.P9438496020451621573

`A060835(A028310(n))/A054977(n)`
-/

namespace A122054.P9438496020451621573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060835 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A122054.P9438496020451621573

/-! ## A122054.P11812242747935590860

`A060835(A028310(n))^A178334(n)`
-/

namespace A122054.P11812242747935590860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060835 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A122054.P11812242747935590860

/-!
# A122055: A Somos 9-type recurrence: a(n) = (3*a(n-1)*a(n-8) - a(n-4)*a(n-5))/a(n-9), with a(0)=...=a(8)=1.

The programs for A122055, there is no canonical definition to state claims against.
-/

/-! ## A122055.P1419478656087889773

`A098887(floor(n/9)+2*a(n-1))` with `a(0)=1`
-/

namespace A122055.P1419478656087889773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098887 (⌊(n : ℚ) / 9⌋ + 2 * a (n - 1)).toNat

end

end A122055.P1419478656087889773

/-! ## A122055.P2499379768061218480

`A117407(A011845(n))`
-/

namespace A122055.P2499379768061218480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117407 (A011845 n).toNat

end

end A122055.P2499379768061218480

/-! ## A122055.P17719351619231935714

`A257480(A275074(n))`
-/

namespace A122055.P17719351619231935714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257480 (A275074 n).toNat

end

end A122055.P17719351619231935714

/-! ## A122055.P12432603840484026496

`A003602(∏[A081604(n)])`
-/

namespace A122055.P12432603840484026496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122055.P12432603840484026496

/-! ## A122055.P15183598795966053818

`A112095(A348290(n+1))`
-/

namespace A122055.P15183598795966053818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112095 (A348290 (n + 1)).toNat

end

end A122055.P15183598795966053818

/-!
# A122056: Expansion of g.f. x^2/((1 - x)^4*(1 + x)*(1 + x^2)*(1 + x^4)).

The programs for A122056, the canonical program `A122056.P7452166061429440744` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122056 has offset 0).

The definition of A122056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-3x+3x^2-x^3-x^8+3x^9-3x^10+x^11))` (program `A122056.P7452166061429440744`, by `A122056.P7452166061429440744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122056.P7452166061429440744

`ogf(x^2/(1-3x+3x^2-x^3-x^8+3x^9-3x^10+x^11))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122056

/-- `ogf(x^2/(1-3x+3x^2-x^3-x^8+3x^9-3x^10+x^11))` -/
def P7452166061429440744.Spec : Prop :=
  ∀ n, P7452166061429440744.a n = A122056 n

theorem P7452166061429440744.correct : P7452166061429440744.Spec := by
  intro n
  simp only [A122056]

end A122056

/-! ## A122056.P12960933469788235402

`∑[∑[ceil((n-1)/8)]]`
-/

namespace A122056.P12960933469788235402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 8⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122056.P12960933469788235402

namespace A122056

/-- `∑[∑[ceil((n-1)/8)]]` -/
def P12960933469788235402.Spec : Prop :=
  ∀ n, P12960933469788235402.a n = A122056 n

end A122056

/-! ## A122056.P3099798763991653314

`∑[∑[A110656(A267458(n))]]-(2*n+1)`
-/

namespace A122056.P3099798763991653314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A267458 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A122056.P3099798763991653314

namespace A122056

/-- `∑[∑[A110656(A267458(n))]]-(2*n+1)` -/
def P3099798763991653314.Spec : Prop :=
  ∀ n, P3099798763991653314.a n = A122056 n

end A122056

/-! ## A122056.P7089508065404587372

`A175777(n+3)-A110656(n)`
-/

namespace A122056.P7089508065404587372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175777 (n + 3) - A110656 n

end

end A122056.P7089508065404587372

namespace A122056

/-- `A175777(n+3)-A110656(n)` -/
def P7089508065404587372.Spec : Prop :=
  ∀ n, P7089508065404587372.a n = A122056 n

end A122056

/-! ## A122056.P7944472459726985320

`A175777(n+3)-A110655(A110654(n))`
-/

namespace A122056.P7944472459726985320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175777 (n + 3) - A110655 (A110654 n).toNat

end

end A122056.P7944472459726985320

namespace A122056

/-- `A175777(n+3)-A110655(A110654(n))` -/
def P7944472459726985320.Spec : Prop :=
  ∀ n, P7944472459726985320.a n = A122056 n

end A122056

/-! ## A122056.P1807449480007249239

`∑[A004526(A001972(n))]-A110656(n)`
-/

namespace A122056.P1807449480007249239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110656 n

end

end A122056.P1807449480007249239

namespace A122056

/-- `∑[A004526(A001972(n))]-A110656(n)` -/
def P1807449480007249239.Spec : Prop :=
  ∀ n, P1807449480007249239.a n = A122056 n

end A122056

/-!
# A122057: a(n) = (n+1)! * (H(n+1) - H(2)), where H(n) are the harmonic numbers.

The programs for A122057, there is no canonical definition to state claims against.
-/

/-! ## A122057.P5463352090911533423

`(n+1)!+(n+2)*a(n-1)` with `a(0)=0`
-/

namespace A122057.P5463352090911533423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial (n + 1) + (n + 2) * a (n - 1)

end

end A122057.P5463352090911533423

/-! ## A122057.P12128495903368998010

`∏[n+1]+(n+2)*a(n-1)` with `a(0)=0`
-/

namespace A122057.P12128495903368998010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 2) * a (n - 1)

end

end A122057.P12128495903368998010

/-! ## A122057.P12361253790239762834

`record[A104150(n)+n*a(n-1)]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A122057.P12361253790239762834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  A104150 n + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122057.P12361253790239762834

/-! ## A122057.P2236630037729291092

`record[abs(A081047(n))-A001710(n)]`
-/

namespace A122057.P2236630037729291092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081047 n| - A001710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122057.P2236630037729291092

/-! ## A122057.P14268038311905027445

`A001705(n+1)-A001710(n+2)`
-/

namespace A122057.P14268038311905027445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (n + 1) - A001710 (n + 2)

end

end A122057.P14268038311905027445

/-! ## A122057.P13283816030395448246

`A001705(n+1)-A000142(n)*A000217(n+1)`
-/

namespace A122057.P13283816030395448246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (n + 1) - A000142 n * A000217 (n + 1)

end

end A122057.P13283816030395448246

/-!
# A122058: Expansion of x*(1 + 4*x + 6*x^2 + 6*x^3)/((1-x)*(1 - 11*x^2 - 12*x^3)).

The programs for A122058, the canonical program `A122058.P11160557782661088882` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122058 has offset 1).

The definition of A122058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+6x^2+6x^3)/(1-x-11x^2-x^3+12x^4))` (program `A122058.P11160557782661088882`, by `A122058.P11160557782661088882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122058.P11160557782661088882

`ogf((1+4x+6x^2+6x^3)/(1-x-11x^2-x^3+12x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122058

/-- `ogf((1+4x+6x^2+6x^3)/(1-x-11x^2-x^3+12x^4))` -/
def P11160557782661088882.Spec : Prop :=
  ∀ n, P11160557782661088882.a n = A122058 (n + 1)

theorem P11160557782661088882.correct : P11160557782661088882.Spec := by
  intro n
  simp only [A122058, Nat.add_sub_cancel]

end A122058

/-! ## A122058.P2927040239869311151

`a(n-1)+11*a(n-2)+a(n-3)-12*a(n-4)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=84`
-/

namespace A122058.P2927040239869311151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 22, 84] fun n a =>
  a (n - 1) + 11 * a (n - 2) + a (n - 3) - 12 * a (n - 4)

end

end A122058.P2927040239869311151

namespace A122058

/-- `a(n-1)+11*a(n-2)+a(n-3)-12*a(n-4)` -/
def P2927040239869311151.Spec : Prop :=
  ∀ n, P2927040239869311151.a n = A122058 (n + 1)

end A122058

/-!
# A122060: Position in decimal expansion of 1/n where repetition begins.

The programs for A122060, there is no canonical definition to state claims against.
-/

/-! ## A122060.P9072737542419888767

`A304042(3*n)+A054710(n+1)`
-/

namespace A122060.P9072737542419888767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (3 * n) + A054710 (n + 1)

end

end A122060.P9072737542419888767

/-! ## A122060.P1012222475797473059

`A054710(n+1)+A002212(A025427(n))`
-/

namespace A122060.P1012222475797473059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) + A002212 (A025427 n).toNat

end

end A122060.P1012222475797473059

/-! ## A122060.P10571413245391587988

`A054710(n+1)+A026105(A028586(n))`
-/

namespace A122060.P10571413245391587988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) + A026105 (A028586 n).toNat

end

end A122060.P10571413245391587988

/-! ## A122060.P7575867326160208283

`A054724(A051340(n))+A054710(n+1)`
-/

namespace A122060.P7575867326160208283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054724 (A051340 n).toNat + A054710 (n + 1)

end

end A122060.P7575867326160208283

/-!
# A122061: First pentagonal number, 2nd hexagonal number, 3rd heptagonal number, 4th octagonal number and then repeat the same pattern: 5th pentagonal, 6th hexagonal, 7th heptagonal, 8th octagonal, etc.

The programs for A122061, the canonical program `A122061.P18245514178777019949` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122061 has offset 1).

The definition of A122061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122061.P18245514178777019949

`(n%4+3)*∑[n]+n+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122061

/-- `(n%4+3)*∑[n]+n+1` -/
def P18245514178777019949.Spec : Prop :=
  ∀ n, (P18245514178777019949.a n : ℤ) = A122061 (n + 1)

theorem P18245514178777019949.correct : P18245514178777019949.Spec := by
  intro n
  simp only [A122061, Nat.add_sub_cancel]

end A122061

/-! ## A122061.P4469377026705184676

`(and(3, n)+3)*∑[n]+n+1`
-/

namespace A122061.P4469377026705184676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A122061.P4469377026705184676

namespace A122061

/-- `(and(3, n)+3)*∑[n]+n+1` -/
def P4469377026705184676.Spec : Prop :=
  ∀ n, (P4469377026705184676.a n : ℤ) = A122061 (n + 1)

end A122061

/-! ## A122061.P12020046598676461401

`(n+1)²+∑[n]*A010883(n)`
-/

namespace A122061.P12020046598676461401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010883 n

end

end A122061.P12020046598676461401

namespace A122061

/-- `(n+1)²+∑[n]*A010883(n)` -/
def P12020046598676461401.Spec : Prop :=
  ∀ n, P12020046598676461401.a n = A122061 (n + 1)

end A122061

/-! ## A122061.P16121351498192651877

`∑[n+1]+∑[n]*A328943(n)`
-/

namespace A122061.P16121351498192651877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A328943 n

end

end A122061.P16121351498192651877

namespace A122061

/-- `∑[n+1]+∑[n]*A328943(n)` -/
def P16121351498192651877.Spec : Prop :=
  ∀ n, P16121351498192651877.a n = A122061 (n + 1)

end A122061

/-! ## A122061.P5420828127564723641

`(A010873(n)+3)*∑[n]+n+1`
-/

namespace A122061.P5420828127564723641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010873 n + 3) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ)

end

end A122061.P5420828127564723641

namespace A122061

/-- `(A010873(n)+3)*∑[n]+n+1` -/
def P5420828127564723641.Spec : Prop :=
  ∀ n, P5420828127564723641.a n = A122061 (n + 1)

end A122061

/-! ## A122061.P1849491494841616949

`(n+1)*(∑[n+1]-n*A122461(n))`
-/

namespace A122061.P1849491494841616949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * A122461 n)

end

end A122061.P1849491494841616949

namespace A122061

/-- `(n+1)*(∑[n+1]-n*A122461(n))` -/
def P1849491494841616949.Spec : Prop :=
  ∀ n, P1849491494841616949.a n = A122061 (n + 1)

end A122061

/-!
# A122062: Numbers k such that k^2 + 16 is prime.

The programs for A122062, there is no canonical definition to state claims against.
-/

/-! ## A122062.P13827067197463033498

`sqrt(A243451(n+1)-16)`
-/

namespace A122062.P13827067197463033498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243451 (n + 1) - 16 : ℝ)

end

end A122062.P13827067197463033498

/-! ## A122062.P12952858903441223204

`(A243451(n+1)-16)^2^A008683(A020483(n))`
-/

namespace A122062.P12952858903441223204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243451 (n + 1) - 16 : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) : ℝ)

end

end A122062.P12952858903441223204

/-! ## A122062.P15164371174396695374

`sqrt(p?[n²+16]-16)`
-/

namespace A122062.P15164371174396695374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 16 : ℝ)

end

end A122062.P15164371174396695374

/-! ## A122062.P6376002003862140943

`root(p?[n²+16]-16, 2)`
-/

namespace A122062.P6376002003862140943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 16 : ℝ) ^ (1 / (2 : ℝ))

end

end A122062.P6376002003862140943

/-! ## A122062.P15339336569699226675

`(p?[n²+16]-16)^(1/2)`
-/

namespace A122062.P15339336569699226675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 16 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A122062.P15339336569699226675

/-! ## A122062.P1250836356254686260

`sqrt(∏{p}[p?[A241751(n)], #]-16)`
-/

namespace A122062.P1250836356254686260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 16 : ℝ)

end

end A122062.P1250836356254686260

/-! ## A122062.P890179572161645486

`sqrt(p?[A241751(n)]%A237730(n+1)-16)`
-/

namespace A122062.P890179572161645486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A237730 (n + 1)) - 16 : ℝ)

end

end A122062.P890179572161645486

/-!
# A122063: a(1) = 17, a(n) = sum of digits of all previous terms.

The programs for A122063, there is no canonical definition to state claims against.
-/

/-! ## A122063.P18085880205280803520

`A062028(a(n-1))` with `a(0)=17, a(1)=8`
-/

namespace A122063.P18085880205280803520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17, 8] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A122063.P18085880205280803520

/-! ## A122063.P10052979064005677756

`A160931(a(n-1)-1)+1` with `a(0)=17, a(1)=8`
-/

namespace A122063.P10052979064005677756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17, 8] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A122063.P10052979064005677756

/-! ## A122063.P13195593334887042946

`A160939(a(n-1)+1)-1` with `a(0)=17, a(1)=8`
-/

namespace A122063.P13195593334887042946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17, 8] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A122063.P13195593334887042946

/-! ## A122063.P14983085946273644082

`A007953(a(n-1))+a(n-1)` with `a(0)=17, a(1)=8`
-/

namespace A122063.P14983085946273644082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17, 8] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A122063.P14983085946273644082

/-! ## A122063.P8684912876117635355

`a(n-1)+A057147(a(n-1))/a(n-1)` with `a(0)=17, a(1)=8`
-/

namespace A122063.P8684912876117635355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [17, 8] fun n a =>
  a (n - 1) + (A057147 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / a (n - 1)

end

end A122063.P8684912876117635355

/-!
# A122067: a(n) = 2^A014105(n).

The programs for A122067, the canonical program `A122067.P14510393899295328003` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122067 has offset 0).

The definition of A122067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122067.P14510393899295328003

`2^(n*(2*n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122067

/-- `2^(n*(2*n+1))` -/
def P14510393899295328003.Spec : Prop :=
  ∀ n, (P14510393899295328003.a n : ℤ) = A122067 n

theorem P14510393899295328003.correct : P14510393899295328003.Spec := by
  intro n
  simp only [A122067]

end A122067

/-! ## A122067.P12853878894621573243

`2^A014105(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122067.P12853878894621573243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014105 n : ℤ)

end

end A122067.P12853878894621573243

namespace A122067

/-- `2^A014105(n)` -/
def P12853878894621573243.Spec : Prop :=
  ∀ n, P12853878894621573243.a n = (A122067 n : ℚ)

end A122067

/-! ## A122067.P16886241975692555251

`record[-∏[-2^n]]`
-/

namespace A122067.P16886241975692555251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122067.P16886241975692555251

namespace A122067

/-- `record[-∏[-2^n]]` -/
def P16886241975692555251.Spec : Prop :=
  ∀ n, P16886241975692555251.a n = A122067 n

end A122067

/-! ## A122067.P88925185885816762

`abs(Δ[record[∑[(-2)^n]]]^n)`
-/

namespace A122067.P88925185885816762
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A122067.P88925185885816762

namespace A122067

/-- `abs(Δ[record[∑[(-2)^n]]]^n)` -/
def P88925185885816762.Spec : Prop :=
  ∀ n, P88925185885816762.a n = A122067 n

end A122067

/-! ## A122067.P15316118255819196826

`floor(2^((n/sin(atan(1)))²+n))`
-/

namespace A122067.P15316118255819196826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (((n : ℝ) / Real.sin (Real.arctan (1 : ℝ))) ^ 2 + (n : ℝ))⌋

end

end A122067.P15316118255819196826

namespace A122067

/-- `floor(2^((n/sin(atan(1)))²+n))` -/
def P15316118255819196826.Spec : Prop :=
  ∀ n, P15316118255819196826.a n = A122067 n

end A122067

/-!
# A122068: Expansion of x*(1-3*x)*(1-x)/(1-7*x+14*x^2-7*x^3).

The programs for A122068, the canonical program `A122068.P6281034815194245229` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122068 has offset 1).

The definition of A122068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+3x^2)/(1-7x+14x^2-7x^3))` (program `A122068.P6281034815194245229`, by `A122068.P6281034815194245229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122068.P6281034815194245229

`ogf((1-4x+3x^2)/(1-7x+14x^2-7x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122068

/-- `ogf((1-4x+3x^2)/(1-7x+14x^2-7x^3))` -/
def P6281034815194245229.Spec : Prop :=
  ∀ n, P6281034815194245229.a n = A122068 (n + 1)

theorem P6281034815194245229.correct : P6281034815194245229.Spec := by
  intro n
  simp only [A122068, Nat.add_sub_cancel]

end A122068

/-! ## A122068.P9978521112015093590

`7*(a(n-1)-2*a(n-2)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A122068.P9978521112015093590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  7 * (a (n - 1) - 2 * a (n - 2) + a (n - 3))

end

end A122068.P9978521112015093590

namespace A122068

/-- `7*(a(n-1)-2*a(n-2)+a(n-3))` -/
def P9978521112015093590.Spec : Prop :=
  ∀ n, P9978521112015093590.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P1802331870450212250

`(A215007(n)+A215008(n+1)-2*A215008(n))/2`
-/

namespace A122068.P1802331870450212250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215007 n + A215008 (n + 1) - 2 * A215008 n : ℚ) / 2

end

end A122068.P1802331870450212250

namespace A122068

/-- `(A215007(n)+A215008(n+1)-2*A215008(n))/2` -/
def P1802331870450212250.Spec : Prop :=
  ∀ n, P1802331870450212250.a n = (A122068 (n + 1) : ℚ)

end A122068

/-! ## A122068.P17597117332583136270

`Δ[A215493(n)]`
-/

namespace A122068.P17597117332583136270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122068.P17597117332583136270

namespace A122068

/-- `Δ[A215493(n)]` -/
def P17597117332583136270.Spec : Prop :=
  ∀ n, P17597117332583136270.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P10632613205236558144

`Δ[A215007(n)]-A215007(n)`
-/

namespace A122068.P10632613205236558144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215007 n

end

end A122068.P10632613205236558144

namespace A122068

/-- `Δ[A215007(n)]-A215007(n)` -/
def P10632613205236558144.Spec : Prop :=
  ∀ n, P10632613205236558144.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P12003416549469100748

`A215493(n+1)-A215493(n)`
-/

namespace A122068.P12003416549469100748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 (n + 1) - A215493 n

end

end A122068.P12003416549469100748

namespace A122068

/-- `A215493(n+1)-A215493(n)` -/
def P12003416549469100748.Spec : Prop :=
  ∀ n, P12003416549469100748.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P1128460305877014462

`(A319512(n)+A215007(n))/2`
-/

namespace A122068.P1128460305877014462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319512 n + A215007 n : ℚ) / 2

end

end A122068.P1128460305877014462

namespace A122068

/-- `(A319512(n)+A215007(n))/2` -/
def P1128460305877014462.Spec : Prop :=
  ∀ n, P1128460305877014462.a n = (A122068 (n + 1) : ℚ)

end A122068

/-! ## A122068.P15920290060929465168

`A215007(n+1)-2*A215007(n)`
-/

namespace A122068.P15920290060929465168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 (n + 1) - 2 * A215007 n

end

end A122068.P15920290060929465168

namespace A122068

/-- `A215007(n+1)-2*A215007(n)` -/
def P15920290060929465168.Spec : Prop :=
  ∀ n, P15920290060929465168.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P565551864251141839

`A215007(n)-(A215493(n)-A215008(n))`
-/

namespace A122068.P565551864251141839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 n - (A215493 n - A215008 n)

end

end A122068.P565551864251141839

namespace A122068

/-- `A215007(n)-(A215493(n)-A215008(n))` -/
def P565551864251141839.Spec : Prop :=
  ∀ n, P565551864251141839.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P2132002006878324019

`A215493(n)-(A215008(n)-A319512(n))`
-/

namespace A122068.P2132002006878324019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 n - (A215008 n - A319512 n)

end

end A122068.P2132002006878324019

namespace A122068

/-- `A215493(n)-(A215008(n)-A319512(n))` -/
def P2132002006878324019.Spec : Prop :=
  ∀ n, P2132002006878324019.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P12585551616056437712

`A215494(n+1)/7`
-/

namespace A122068.P12585551616056437712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215494 (n + 1) : ℚ) / 7

end

end A122068.P12585551616056437712

namespace A122068

/-- `A215494(n+1)/7` -/
def P12585551616056437712.Spec : Prop :=
  ∀ n, P12585551616056437712.a n = (A122068 (n + 1) : ℚ)

end A122068

/-! ## A122068.P11978268069431158622

`abs(A322459(n+1))/7`
-/

namespace A122068.P11978268069431158622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A322459 (n + 1)| : ℚ) / 7

end

end A122068.P11978268069431158622

namespace A122068

/-- `abs(A322459(n+1))/7` -/
def P11978268069431158622.Spec : Prop :=
  ∀ n, P11978268069431158622.a n = (A122068 (n + 1) : ℚ)

end A122068

/-! ## A122068.P12057045189674465572

`Δ[A319512(n)-A215143(n)]`
-/

namespace A122068.P12057045189674465572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 n - A215143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122068.P12057045189674465572

namespace A122068

/-- `Δ[A319512(n)-A215143(n)]` -/
def P12057045189674465572.Spec : Prop :=
  ∀ n, P12057045189674465572.a n = A122068 (n + 1)

end A122068

/-! ## A122068.P3792649375944071860

`A319512(n+1)-(A319512(n)+A215008(n+1))`
-/

namespace A122068.P3792649375944071860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 (n + 1) - (A319512 n + A215008 (n + 1))

end

end A122068.P3792649375944071860

namespace A122068

/-- `A319512(n+1)-(A319512(n)+A215008(n+1))` -/
def P3792649375944071860.Spec : Prop :=
  ∀ n, P3792649375944071860.a n = A122068 (n + 1)

end A122068

/-!
# A122069: a(n) = 3*a(n-1) + 9*a(n-2) for n > 1, with a(0)=1, a(1)=3.

The programs for A122069, the canonical program `A122069.P13984293536454737963` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122069 has offset 0).

The definition of A122069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+9*a(n-2)` (program `A122069.P13984293536454737963`, by `A122069.P13984293536454737963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122069.P13984293536454737963

`3*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122069

/-- `3*a(n-1)+9*a(n-2)` -/
def P13984293536454737963.Spec : Prop :=
  ∀ n, (P13984293536454737963.a n : ℤ) = A122069 n

theorem P13984293536454737963.correct : P13984293536454737963.Spec := by
  intro n
  simp only [A122069]

end A122069

/-! ## A122069.P18346226880707149945

`A099012(n+1)`
-/

namespace A122069.P18346226880707149945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 (n + 1)

end

end A122069.P18346226880707149945

namespace A122069

/-- `A099012(n+1)` -/
def P18346226880707149945.Spec : Prop :=
  ∀ n, P18346226880707149945.a n = A122069 n

end A122069

/-! ## A122069.P680106296041810874

`3^n*A000045(n+1)`
-/

namespace A122069.P680106296041810874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000045 (n + 1)

end

end A122069.P680106296041810874

namespace A122069

/-- `3^n*A000045(n+1)` -/
def P680106296041810874.Spec : Prop :=
  ∀ n, P680106296041810874.a n = A122069 n

end A122069

/-! ## A122069.P14533416203730328284

`ogf(1/(1-3x-9x^2))`
-/

namespace A122069.P14533416203730328284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -9] n

end

end A122069.P14533416203730328284

namespace A122069

/-- `ogf(1/(1-3x-9x^2))` -/
def P14533416203730328284.Spec : Prop :=
  ∀ n, P14533416203730328284.a n = A122069 n

end A122069

/-! ## A122069.P6071531050540116829

`3^n*Δ[round(ϕ*a(n-1))]` with `a(0)=1`
-/

namespace A122069.P6071531050540116829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A122069.P6071531050540116829

namespace A122069

/-- `3^n*Δ[round(ϕ*a(n-1))]` -/
def P6071531050540116829.Spec : Prop :=
  ∀ n, P6071531050540116829.a n = A122069 n

end A122069

/-! ## A122069.P18065602363203261343

`3*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A122069.P18065602363203261343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A122069.P18065602363203261343

namespace A122069

/-- `3*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P18065602363203261343.Spec : Prop :=
  ∀ n, P18065602363203261343.a n = A122069 n

end A122069

/-! ## A122069.P11157181730138504280

`Δ[A099013(n)]`
-/

namespace A122069.P11157181730138504280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122069.P11157181730138504280

namespace A122069

/-- `Δ[A099013(n)]` -/
def P11157181730138504280.Spec : Prop :=
  ∀ n, P11157181730138504280.a n = A122069 n

end A122069

/-! ## A122069.P11665164857688606995

`∑[abs(Δ[A099012(n)])]`
-/

namespace A122069.P11665164857688606995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122069.P11665164857688606995

namespace A122069

/-- `∑[abs(Δ[A099012(n)])]` -/
def P11665164857688606995.Spec : Prop :=
  ∀ n, P11665164857688606995.a n = A122069 n

end A122069

/-! ## A122069.P10231823817616686839

`A261397(n+1)/3`
-/

namespace A122069.P10231823817616686839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261397 (n + 1) : ℚ) / 3

end

end A122069.P10231823817616686839

namespace A122069

/-- `A261397(n+1)/3` -/
def P10231823817616686839.Spec : Prop :=
  ∀ n, P10231823817616686839.a n = (A122069 n : ℚ)

end A122069

/-! ## A122069.P14317176872400426126

`record[A099012(abs(1-n))]`
-/

namespace A122069.P14317176872400426126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122069.P14317176872400426126

namespace A122069

/-- `record[A099012(abs(1-n))]` -/
def P14317176872400426126.Spec : Prop :=
  ∀ n, P14317176872400426126.a n = A122069 n

end A122069

/-! ## A122069.P5382303596432876310

`3^n*A212804(n+2)`
-/

namespace A122069.P5382303596432876310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A212804 (n + 2)

end

end A122069.P5382303596432876310

namespace A122069

/-- `3^n*A212804(n+2)` -/
def P5382303596432876310.Spec : Prop :=
  ∀ n, P5382303596432876310.a n = A122069 n

end A122069

/-! ## A122069.P2328218692070080076

`3^n*A324969(n+2)`
-/

namespace A122069.P2328218692070080076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A324969 (n + 2)

end

end A122069.P2328218692070080076

namespace A122069

/-- `3^n*A324969(n+2)` -/
def P2328218692070080076.Spec : Prop :=
  ∀ n, P2328218692070080076.a n = A122069 n

end A122069

/-! ## A122069.P10795710720615257873

`3^n*∑[A000045(abs(1-n))]`
-/

namespace A122069.P10795710720615257873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122069.P10795710720615257873

namespace A122069

/-- `3^n*∑[A000045(abs(1-n))]` -/
def P10795710720615257873.Spec : Prop :=
  ∀ n, P10795710720615257873.a n = A122069 n

end A122069

/-! ## A122069.P2322762345917389268

`Δ[A000045(n+2)]/3^-n`
-/

namespace A122069.P2322762345917389268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A122069.P2322762345917389268

namespace A122069

/-- `Δ[A000045(n+2)]/3^-n` -/
def P2322762345917389268.Spec : Prop :=
  ∀ n, P2322762345917389268.a n = (A122069 n : ℚ)

end A122069

/-! ## A122069.P14808493487443312177

`A099013(n+1)-A099013(n)`
-/

namespace A122069.P14808493487443312177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099013 (n + 1) - A099013 n

end

end A122069.P14808493487443312177

namespace A122069

/-- `A099013(n+1)-A099013(n)` -/
def P14808493487443312177.Spec : Prop :=
  ∀ n, P14808493487443312177.a n = A122069 n

end A122069

/-! ## A122069.P18130220687873872759

`A000045(n+1)*A000244(n)`
-/

namespace A122069.P18130220687873872759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000244 n

end

end A122069.P18130220687873872759

namespace A122069

/-- `A000045(n+1)*A000244(n)` -/
def P18130220687873872759.Spec : Prop :=
  ∀ n, P18130220687873872759.a n = A122069 n

end A122069

/-! ## A122069.P16994282362465394354

`A000045(n+1)*Δ[A003462(n)]`
-/

namespace A122069.P16994282362465394354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A122069.P16994282362465394354

namespace A122069

/-- `A000045(n+1)*Δ[A003462(n)]` -/
def P16994282362465394354.Spec : Prop :=
  ∀ n, P16994282362465394354.a n = A122069 n

end A122069

/-! ## A122069.P6510964030783149308

`A000045(n+1)*Δ[A007051(n)]`
-/

namespace A122069.P6510964030783149308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A122069.P6510964030783149308

namespace A122069

/-- `A000045(n+1)*Δ[A007051(n)]` -/
def P6510964030783149308.Spec : Prop :=
  ∀ n, P6510964030783149308.a n = A122069 n

end A122069

/-! ## A122069.P3258930217905629908

`A000045(n+1)*A133494(n+1)`
-/

namespace A122069.P3258930217905629908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A133494 (n + 1)

end

end A122069.P3258930217905629908

namespace A122069

/-- `A000045(n+1)*A133494(n+1)` -/
def P3258930217905629908.Spec : Prop :=
  ∀ n, P3258930217905629908.a n = A122069 n

end A122069

/-! ## A122069.P7299785663239565829

`A000045(n+1)*A140429(n+1)`
-/

namespace A122069.P7299785663239565829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A140429 (n + 1)

end

end A122069.P7299785663239565829

namespace A122069

/-- `A000045(n+1)*A140429(n+1)` -/
def P7299785663239565829.Spec : Prop :=
  ∀ n, P7299785663239565829.a n = A122069 n

end A122069

/-!
# A122070: Triangle given by T(n,k) = Fibonacci(n+k+1)*binomial(n,k) for 0<=k<=n.

The programs for A122070, the canonical program `A122070.P1492106937163336465` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122070 has offset 0).

The definition of A122070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122070.P1492106937163336465

`A007318(n)*A199512(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A122070

/-- `A007318(n)*A199512(n)` -/
def P1492106937163336465.Spec : Prop :=
  ∀ n, P1492106937163336465.a n = A122070 n

theorem P1492106937163336465.correct : P1492106937163336465.Spec := by
  intro n
  simp only [A122070]

end A122070

/-! ## A122070.P15329345055390945689

`A007318(n)*A000045(A051162(n)+1)`
-/

namespace A122070.P15329345055390945689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (A051162 n + 1).toNat

end

end A122070.P15329345055390945689

namespace A122070

/-- `A007318(n)*A000045(A051162(n)+1)` -/
def P15329345055390945689.Spec : Prop :=
  ∀ n, P15329345055390945689.a n = A122070 n

end A122070

/-! ## A122070.P14366758568683784468

`A000045(A094727(n+1))*A007318(n)`
-/

namespace A122070.P14366758568683784468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A094727 (n + 1)).toNat * A007318 n

end

end A122070.P14366758568683784468

namespace A122070

/-- `A000045(A094727(n+1))*A007318(n)` -/
def P14366758568683784468.Spec : Prop :=
  ∀ n, P14366758568683784468.a n = A122070 n

end A122070

/-! ## A122070.P17652839890218646358

`A007318(n)*A000045(A134478(n)+1)`
-/

namespace A122070.P17652839890218646358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (A134478 n + 1).toNat

end

end A122070.P17652839890218646358

namespace A122070

/-- `A007318(n)*A000045(A134478(n)+1)` -/
def P17652839890218646358.Spec : Prop :=
  ∀ n, P17652839890218646358.a n = A122070 n

end A122070

/-! ## A122070.P8702807890981543830

`A185384(A061579(n))`
-/

namespace A122070.P8702807890981543830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185384 (A061579 n).toNat

end

end A122070.P8702807890981543830

namespace A122070

/-- `A185384(A061579(n))` -/
def P8702807890981543830.Spec : Prop :=
  ∀ n, P8702807890981543830.a n = A122070 n

end A122070

/-! ## A122070.P7227468063960063260

`A007318(n)*A092565(A051162(n)²)`
-/

namespace A122070.P7227468063960063260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A092565 (A051162 n ^ 2).toNat

end

end A122070.P7227468063960063260

namespace A122070

/-- `A007318(n)*A092565(A051162(n)²)` -/
def P7227468063960063260.Spec : Prop :=
  ∀ n, P7227468063960063260.a n = A122070 n

end A122070

/-!
# A122071: Sum over divisors d of 2n+1 of Kronecker(-18/d).

The programs for A122071, the canonical program `A122071.P3435191698193599100` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122071 has offset 0).

The definition of A122071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122071.P3435191698193599100

`A113411(n)/A254046(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122071

/-- `A113411(n)/A254046(n+1)` -/
def P3435191698193599100.Spec : Prop :=
  ∀ n, P3435191698193599100.a n = (A122071 n : ℚ)

end A122071

/-! ## A122071.P8290042222477010502

`A035172(Δ[n²])`
-/

namespace A122071.P8290042222477010502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122071.P8290042222477010502

namespace A122071

/-- `A035172(Δ[n²])` -/
def P8290042222477010502.Spec : Prop :=
  ∀ n, P8290042222477010502.a n = A122071 n

end A122071

/-! ## A122071.P5000827458106815802

`dr(A035172(2*n+1))`
-/

namespace A122071.P5000827458106815802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A035172 (2 * n + 1))

end

end A122071.P5000827458106815802

namespace A122071

/-- `dr(A035172(2*n+1))` -/
def P5000827458106815802.Spec : Prop :=
  ∀ n, (P5000827458106815802.a n : ℤ) = A122071 n

end A122071

/-! ## A122071.P14637299185993655389

`A002325(A098486(n+1))`
-/

namespace A122071.P14637299185993655389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A098486 (n + 1)).toNat

end

end A122071.P14637299185993655389

namespace A122071

/-- `A002325(A098486(n+1))` -/
def P14637299185993655389.Spec : Prop :=
  ∀ n, P14637299185993655389.a n = A122071 n

end A122071

/-! ## A122071.P16425792692506771559

`A002325(A038502(2*n+1))`
-/

namespace A122071.P16425792692506771559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A038502 (2 * n + 1)).toNat

end

end A122071.P16425792692506771559

namespace A122071

/-- `A002325(A038502(2*n+1))` -/
def P16425792692506771559.Spec : Prop :=
  ∀ n, P16425792692506771559.a n = A122071 n

end A122071

/-! ## A122071.P9132558542568139969

`A002325(A065330(2*n+1))`
-/

namespace A122071.P9132558542568139969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A065330 (2 * n + 1)).toNat

end

end A122071.P9132558542568139969

namespace A122071

/-- `A002325(A065330(2*n+1))` -/
def P9132558542568139969.Spec : Prop :=
  ∀ n, P9132558542568139969.a n = A122071 n

end A122071

/-! ## A122071.P15238876025404267987

`A035172(2*n+1)*A391183(2*n+1)`
-/

namespace A122071.P15238876025404267987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (2 * n + 1) * A391183 (2 * n + 1)

end

end A122071.P15238876025404267987

namespace A122071

/-- `A035172(2*n+1)*A391183(2*n+1)` -/
def P15238876025404267987.Spec : Prop :=
  ∀ n, P15238876025404267987.a n = A122071 n

end A122071

/-! ## A122071.P6968358308243622719

`A002325(2*n+1)/A051064(2*n+1)`
-/

namespace A122071.P6968358308243622719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (2 * n + 1) : ℚ) / (A051064 (2 * n + 1) : ℚ)

end

end A122071.P6968358308243622719

namespace A122071

/-- `A002325(2*n+1)/A051064(2*n+1)` -/
def P6968358308243622719.Spec : Prop :=
  ∀ n, P6968358308243622719.a n = (A122071 n : ℚ)

end A122071

/-! ## A122071.P8727478227097873652

`A002325(2*n+1)/A002325(A065331(2*n+1))`
-/

namespace A122071.P8727478227097873652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (2 * n + 1) : ℚ) / (A002325 (A065331 (2 * n + 1)).toNat : ℚ)

end

end A122071.P8727478227097873652

namespace A122071

/-- `A002325(2*n+1)/A002325(A065331(2*n+1))` -/
def P8727478227097873652.Spec : Prop :=
  ∀ n, P8727478227097873652.a n = (A122071 n : ℚ)

end A122071

/-! ## A122071.P666871294116200425

`A113411(A005408(n)+n)-A113411(n)`
-/

namespace A122071.P666871294116200425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (A005408 n + (n : ℤ)).toNat - A113411 n

end

end A122071.P666871294116200425

namespace A122071

/-- `A113411(A005408(n)+n)-A113411(n)` -/
def P666871294116200425.Spec : Prop :=
  ∀ n, P666871294116200425.a n = A122071 n

end A122071

/-! ## A122071.P2561701500021826216

`A002325(6*n+3)-A002325(2*n+1)`
-/

namespace A122071.P2561701500021826216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (6 * n + 3) - A002325 (2 * n + 1)

end

end A122071.P2561701500021826216

namespace A122071

/-- `A002325(6*n+3)-A002325(2*n+1)` -/
def P2561701500021826216.Spec : Prop :=
  ∀ n, P2561701500021826216.a n = A122071 n

end A122071

/-! ## A122071.P14569879562788518924

`A125096(6*n+3)-A125096(2*n+1)`
-/

namespace A122071.P14569879562788518924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (6 * n + 3) - A125096 (2 * n + 1)

end

end A122071.P14569879562788518924

namespace A122071

/-- `A125096(6*n+3)-A125096(2*n+1)` -/
def P14569879562788518924.Spec : Prop :=
  ∀ n, P14569879562788518924.a n = A122071 n

end A122071

/-!
# A122072: Greatest prime less than 10*n.

The programs for A122072, the canonical program `A122072.P12226478731095441089` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122072 has offset 1).

The definition of A122072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122072.P7024468418085429090

`A000040(∑[A038800(n)])`
-/

namespace A122072.P7024468418085429090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122072.P7024468418085429090

namespace A122072

/-- `A000040(∑[A038800(n)])` -/
def P7024468418085429090.Spec : Prop :=
  ∀ n, P7024468418085429090.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P12226478731095441089

`A000040(A038801(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122072

/-- `A000040(A038801(n+1))` -/
def P12226478731095441089.Spec : Prop :=
  ∀ n, P12226478731095441089.a n = A122072 (n + 1)

theorem P12226478731095441089.correct : P12226478731095441089.Spec := by
  intro n
  simp only [A122072, Nat.add_sub_cancel]

end A122072

/-! ## A122072.P11149892135720223356

`A008578(A038801(n+1)+1)`
-/

namespace A122072.P11149892135720223356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038801 (n + 1) + 1).toNat

end

end A122072.P11149892135720223356

namespace A122072

/-- `A008578(A038801(n+1)+1)` -/
def P11149892135720223356.Spec : Prop :=
  ∀ n, P11149892135720223356.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P10802805176523846856

`A182986(A038801(n+1)+1)`
-/

namespace A122072.P10802805176523846856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A038801 (n + 1) + 1).toNat

end

end A122072.P10802805176523846856

namespace A122072

/-- `A182986(A038801(n+1)+1)` -/
def P10802805176523846856.Spec : Prop :=
  ∀ n, P10802805176523846856.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P11360720802792577744

`A000040(A000720(10*(n+1)))`
-/

namespace A122072.P11360720802792577744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (10 * (n + 1))).toNat

end

end A122072.P11360720802792577744

namespace A122072

/-- `A000040(A000720(10*(n+1)))` -/
def P11360720802792577744.Spec : Prop :=
  ∀ n, P11360720802792577744.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P5568575173354786598

`A008578(A000720(A218255(n+1)))`
-/

namespace A122072.P5568575173354786598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A218255 (n + 1)).toNat).toNat

end

end A122072.P5568575173354786598

namespace A122072

/-- `A008578(A000720(A218255(n+1)))` -/
def P5568575173354786598.Spec : Prop :=
  ∀ n, P5568575173354786598.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P16583343770263225529

`A060265(5*(n+1))`
-/

namespace A122072.P16583343770263225529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (5 * (n + 1))

end

end A122072.P16583343770263225529

namespace A122072

/-- `A060265(5*(n+1))` -/
def P16583343770263225529.Spec : Prop :=
  ∀ n, P16583343770263225529.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P4252667483586652214

`A060308(5*(n+1))`
-/

namespace A122072.P4252667483586652214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (5 * (n + 1))

end

end A122072.P4252667483586652214

namespace A122072

/-- `A060308(5*(n+1))` -/
def P4252667483586652214.Spec : Prop :=
  ∀ n, P4252667483586652214.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P16747402317307404052

`A000040(A099802(5*(n+1)))`
-/

namespace A122072.P16747402317307404052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (5 * (n + 1))).toNat

end

end A122072.P16747402317307404052

namespace A122072

/-- `A000040(A099802(5*(n+1)))` -/
def P16747402317307404052.Spec : Prop :=
  ∀ n, P16747402317307404052.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P13353069897625601497

`A007917(A017377(n))`
-/

namespace A122072.P13353069897625601497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A017377 n).toNat

end

end A122072.P13353069897625601497

namespace A122072

/-- `A007917(A017377(n))` -/
def P13353069897625601497.Spec : Prop :=
  ∀ n, P13353069897625601497.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P8195097394434144941

`A000040(∑[A048853(A017317(n))])`
-/

namespace A122072.P8195097394434144941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122072.P8195097394434144941

namespace A122072

/-- `A000040(∑[A048853(A017317(n))])` -/
def P8195097394434144941.Spec : Prop :=
  ∀ n, P8195097394434144941.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P6880576253436386800

`A335285(A017293(n+1))`
-/

namespace A122072.P6880576253436386800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A017293 (n + 1)).toNat

end

end A122072.P6880576253436386800

namespace A122072

/-- `A335285(A017293(n+1))` -/
def P6880576253436386800.Spec : Prop :=
  ∀ n, P6880576253436386800.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P5883013728330305835

`A000040(A230980(10*(n+1)))`
-/

namespace A122072.P5883013728330305835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (10 * (n + 1))).toNat

end

end A122072.P5883013728330305835

namespace A122072

/-- `A000040(A230980(10*(n+1)))` -/
def P5883013728330305835.Spec : Prop :=
  ∀ n, P5883013728330305835.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P14527588320239371035

`p?[A064989(A218255(n))]`
-/

namespace A122072.P14527588320239371035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A218255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122072.P14527588320239371035

namespace A122072

/-- `p?[A064989(A218255(n))]` -/
def P14527588320239371035.Spec : Prop :=
  ∀ n, P14527588320239371035.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P8142332989136804570

`A064989(A218255(n+1))`
-/

namespace A122072.P8142332989136804570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A218255 (n + 1)).toNat

end

end A122072.P8142332989136804570

namespace A122072

/-- `A064989(A218255(n+1))` -/
def P8142332989136804570.Spec : Prop :=
  ∀ n, P8142332989136804570.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P9129430376955958988

`A136548(10*(n+1))`
-/

namespace A122072.P9129430376955958988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (10 * (n + 1))

end

end A122072.P9129430376955958988

namespace A122072

/-- `A136548(10*(n+1))` -/
def P9129430376955958988.Spec : Prop :=
  ∀ n, P9129430376955958988.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P9016753972397215976

`A055377(A008602(n+1))`
-/

namespace A122072.P9016753972397215976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A008602 (n + 1)).toNat

end

end A122072.P9016753972397215976

namespace A122072

/-- `A055377(A008602(n+1))` -/
def P9016753972397215976.Spec : Prop :=
  ∀ n, P9016753972397215976.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P16724534595573202754

`A055377(A215145(n+1))`
-/

namespace A122072.P16724534595573202754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A215145 (n + 1)).toNat

end

end A122072.P16724534595573202754

namespace A122072

/-- `A055377(A215145(n+1))` -/
def P16724534595573202754.Spec : Prop :=
  ∀ n, P16724534595573202754.a n = A122072 (n + 1)

end A122072

/-! ## A122072.P6475746877175198660

`A120303(5*(n+1))`
-/

namespace A122072.P6475746877175198660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120303 (5 * (n + 1))

end

end A122072.P6475746877175198660

namespace A122072

/-- `A120303(5*(n+1))` -/
def P6475746877175198660.Spec : Prop :=
  ∀ n, P6475746877175198660.a n = A122072 (n + 1)

end A122072

/-!
# A122074: a(0)=1, a(1)=6, a(n) = 7*a(n-1) - 2*a(n-2).

The programs for A122074, the canonical program `A122074.P15231348639980122564` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122074 has offset 0).

The definition of A122074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-2*a(n-2)` (program `A122074.P15231348639980122564`, by `A122074.P15231348639980122564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122074.P15231348639980122564

`7*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122074

/-- `7*a(n-1)-2*a(n-2)` -/
def P15231348639980122564.Spec : Prop :=
  ∀ n, P15231348639980122564.a n = A122074 n

theorem P15231348639980122564.correct : P15231348639980122564.Spec := by
  intro n
  simp only [A122074]

end A122074

/-! ## A122074.P5984405365112947558

`ogf((1-x)/(1-7x+2x^2))`
-/

namespace A122074.P5984405365112947558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7, 2] n

end

end A122074.P5984405365112947558

namespace A122074

/-- `ogf((1-x)/(1-7x+2x^2))` -/
def P5984405365112947558.Spec : Prop :=
  ∀ n, P5984405365112947558.a n = A122074 n

end A122074

/-! ## A122074.P13609850649253888442

`Δ[floor((a(n-1)²-2)/a(n-2))]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A122074.P13609850649253888442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 - 2 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122074.P13609850649253888442

namespace A122074

/-- `Δ[floor((a(n-1)²-2)/a(n-2))]` -/
def P13609850649253888442.Spec : Prop :=
  ∀ n, P13609850649253888442.a n = A122074 n

end A122074

/-!
# A122075: Coefficients of a generalized Pell-Lucas polynomial read by rows.

The programs for A122075, there is no canonical definition to state claims against.
-/

/-! ## A122075.P10024294500673774469

`A207632(n+1)-A155161(A028310(n))`
-/

namespace A122075.P10024294500673774469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (n + 1) - A155161 (A028310 n).toNat

end

end A122075.P10024294500673774469

/-! ## A122075.P7796367148880097529

`A155161(n+1)+A037027(n)`
-/

namespace A122075.P7796367148880097529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A037027 n

end

end A122075.P7796367148880097529

/-! ## A122075.P11095278097460976044

`A155161(n+1)+A038137(A061579(n))`
-/

namespace A122075.P11095278097460976044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A038137 (A061579 n).toNat

end

end A122075.P11095278097460976044

/-! ## A122075.P8937978960502737371

`A155161(n+1)+A038137(A038722(n+2))`
-/

namespace A122075.P8937978960502737371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A038137 (A038722 (n + 2)).toNat

end

end A122075.P8937978960502737371

/-! ## A122075.P1516111025361267824

`A037027(n+1)+A037027(n)-A055830(n+1)`
-/

namespace A122075.P1516111025361267824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1) + (A037027 n - A055830 (n + 1))

end

end A122075.P1516111025361267824

/-! ## A122075.P344097694756946171

`A208337(A038722(n+1))`
-/

namespace A122075.P344097694756946171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (A038722 (n + 1)).toNat

end

end A122075.P344097694756946171

/-! ## A122075.P4428650642808290905

`A207632(n+1)-A155161(A066182(n+1))`
-/

namespace A122075.P4428650642808290905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (n + 1) - A155161 (A066182 (n + 1)).toNat

end

end A122075.P4428650642808290905

/-! ## A122075.P13420291975017476376

`A207632(A066182(n+2))-A155161(n)`
-/

namespace A122075.P13420291975017476376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (A066182 (n + 2)).toNat - A155161 n

end

end A122075.P13420291975017476376

/-! ## A122075.P17148405187061558976

`A055830(comp[∑[n-1]])`
-/

namespace A122075.P17148405187061558976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A122075.P17148405187061558976

/-! ## A122075.P17302663023153929752

`A209599(A245300(n))`
-/

namespace A122075.P17302663023153929752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A245300 n).toNat

end

end A122075.P17302663023153929752

/-!
# A122077: a(1)=1. a(n) = a(n-1) + (the number of earlier terms which divide a(n-1) (including a(n-1) itself)).

The programs for A122077, there is no canonical definition to state claims against.
-/

/-! ## A122077.P16612049449571057434

`A056556(A057083(n)+A048395(n))`
-/

namespace A122077.P16612049449571057434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A057083 n + A048395 n).toNat

end

end A122077.P16612049449571057434

/-! ## A122077.P11848944566110403606

`∑[A030547(A052409(n+1)+A001359(n+1))]`
-/

namespace A122077.P11848944566110403606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A052409 (n + 1) + A001359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122077.P11848944566110403606

/-! ## A122077.P1491067812602869835

`lt[A045380(A173306(2*n+3)), A070418(n+1)]`
-/

namespace A122077.P1491067812602869835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (A173306 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122077.P1491067812602869835

/-! ## A122077.P9067408478971140928

`lt[A173283(A173306(2*n+3)), A173295(n+1)]`
-/

namespace A122077.P9067408478971140928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173283 (A173306 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122077.P9067408478971140928

/-!
# A122078: Triangle read by rows: T(n,k) is the number of unlabeled acyclic digraphs with n >= 0 nodes and n-k outnodes (0 <= k <= n).

The programs for A122078, there is no canonical definition to state claims against.
-/

/-! ## A122078.P14333166887345479747

`A108611(6*A320079(n))`
-/

namespace A122078.P14333166887345479747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A320079 n).toNat

end

end A122078.P14333166887345479747

/-! ## A122078.P17574756414932399359

`A046051(2^A128888(n))`
-/

namespace A122078.P17574756414932399359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A128888 n : ℤ))).toNat

end

end A122078.P17574756414932399359

/-! ## A122078.P8963183506297842584

`A294046(n)+A151795(A088996(n))`
-/

namespace A122078.P8963183506297842584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 n + A151795 (A088996 n).toNat

end

end A122078.P8963183506297842584

/-! ## A122078.P4855130210408227995

`A294046(n)+A125005(A294950(n))`
-/

namespace A122078.P4855130210408227995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 n + A125005 (A294950 n).toNat

end

end A122078.P4855130210408227995

/-! ## A122078.P14964700321596482933

`A002981(A070914(n))+A005423(A124540(n))-1`
-/

namespace A122078.P14964700321596482933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (A070914 n).toNat + (A005423 (A124540 n).toNat - 1)

end

end A122078.P14964700321596482933

/-!
# A122079: Kissing numbers (divided by 2) of 8-dimensional perfect lattices.

The programs for A122079, there is no canonical definition to state claims against.
-/

/-! ## A122079.P17612613430355817354

`A122080(n+1)/2`
-/

namespace A122079.P17612613430355817354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122080 (n + 1) : ℚ) / 2

end

end A122079.P17612613430355817354

/-! ## A122079.P2067860604712196742

`floor(A122080(Δ[n²]-n)/2)`
-/

namespace A122079.P2067860604712196742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122080 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A122079.P2067860604712196742

/-! ## A122079.P10150380957575729315

`A001281(A122080(n+1))`
-/

namespace A122079.P10150380957575729315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A122080 (n + 1)).toNat

end

end A122079.P10150380957575729315

/-! ## A122079.P17707505892562852017

`record[A122080(A286378(n))]/2`
-/

namespace A122079.P17707505892562852017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A286378 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A122079.P17707505892562852017

/-! ## A122079.P14596270231622054173

`A004524(A122080(n+1)+1)`
-/

namespace A122079.P14596270231622054173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A122080 (n + 1) + 1).toNat

end

end A122079.P14596270231622054173

/-! ## A122079.P12767278826004653394

`A004526(A122080(n+1)+1)`
-/

namespace A122079.P12767278826004653394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122080 (n + 1) + 1).toNat

end

end A122079.P12767278826004653394

/-! ## A122079.P5572916927739695467

`A000463(A122080(n+1)-1)`
-/

namespace A122079.P5572916927739695467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A122080 (n + 1) - 1).toNat

end

end A122079.P5572916927739695467

/-! ## A122079.P11591405081905389590

`A001057(A122080(n+1)-1)`
-/

namespace A122079.P11591405081905389590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A122080 (n + 1) - 1).toNat

end

end A122079.P11591405081905389590

/-! ## A122079.P2523537994412497387

`A003602(A122080(n+1)-1)`
-/

namespace A122079.P2523537994412497387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A122080 (n + 1) - 1).toNat

end

end A122079.P2523537994412497387

/-! ## A122079.P1127374556944476231

`A002265(2*A122080(n+1))`
-/

namespace A122079.P1127374556944476231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A122080 (n + 1)).toNat

end

end A122079.P1127374556944476231

/-!
# A122080: Kissing numbers of 8-dimensional perfect lattices.

The programs for A122080, there is no canonical definition to state claims against.
-/

/-! ## A122080.P9054226106907693083

`2*A122079(n+1)`
-/

namespace A122080.P9054226106907693083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122079 (n + 1)

end

end A122080.P9054226106907693083

/-! ## A122080.P10141251268273139878

`A004277(A122079(n+1))`
-/

namespace A122080.P10141251268273139878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A122079 (n + 1)).toNat

end

end A122080.P10141251268273139878

/-! ## A122080.P660538707275275507

`record[2*A122079(A344180(n))]`
-/

namespace A122080.P660538707275275507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122079 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122080.P660538707275275507

/-! ## A122080.P12056966840624197617

`A004275(A122079(n+1)+1)`
-/

namespace A122080.P12056966840624197617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A122079 (n + 1) + 1).toNat

end

end A122080.P12056966840624197617

/-! ## A122080.P8998181118473557487

`A004273(A122079(n+1)+1)-1`
-/

namespace A122080.P8998181118473557487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A122079 (n + 1) + 1).toNat - 1

end

end A122080.P8998181118473557487

/-! ## A122080.P16834713868955289281

`A122079(ϕ²-(ϕ-n))+A122079(n+1)`
-/

namespace A122080.P16834713868955289281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat + A122079 (n + 1)

end

end A122080.P16834713868955289281

/-! ## A122080.P3567406973320132607

`gcd(A000038(n), A005843(A122079(n+1)))`
-/

namespace A122080.P3567406973320132607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005843 (A122079 (n + 1)).toNat)

end

end A122080.P3567406973320132607

/-! ## A122080.P9299279025526396252

`lcm(A000034(n), A005843(A122079(n+1)))`
-/

namespace A122080.P9299279025526396252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A005843 (A122079 (n + 1)).toNat)

end

end A122080.P9299279025526396252

/-! ## A122080.P4708866527966697080

`A005843(A122079(n+1))/A005117(gcd(n, n+1))`
-/

namespace A122080.P4708866527966697080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A122079 (n + 1)).toNat : ℚ) / (A005117 (Nat.gcd n (n + 1)) : ℚ)

end

end A122080.P4708866527966697080

/-! ## A122080.P11924599404639825191

`A005843(A122079(n+1))/A000108(∑[(-1)^n])`
-/

namespace A122080.P11924599404639825191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A122079 (n + 1)).toNat : ℚ) / (A000108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A122080.P11924599404639825191

/-!
# A122082: Number of unlabeled bicolored graphs on 2n nodes which are invariant when the two color classes are interchanged.

The programs for A122082, there is no canonical definition to state claims against.
-/

/-! ## A122082.P17617872028458897002

`2*A007139(n)-A002724(n)`
-/

namespace A122082.P17617872028458897002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007139 n - A002724 n

end

end A122082.P17617872028458897002

/-! ## A122082.P10796665802509645327

`∑[A319155(n)]`
-/

namespace A122082.P10796665802509645327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122082.P10796665802509645327

/-!
# A122083: Triangle read by rows in which row n gives the number of unlabeled bicolored graphs having k nodes of one color and n-k nodes of the other color, with no isolated nodes; the color classes are not interchangeable.

The programs for A122083, there is no canonical definition to state claims against.
-/

/-! ## A122083.P12523702543207827240

`A117707(A342980(n))`
-/

namespace A122083.P12523702543207827240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A342980 n).toNat

end

end A122083.P12523702543207827240

/-! ## A122083.P6208965448840106456

`A325678(A271697(n))`
-/

namespace A122083.P6208965448840106456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A271697 n).toNat

end

end A122083.P6208965448840106456

/-! ## A122083.P1080201974710372209

`A328003(A371761(n))`
-/

namespace A122083.P1080201974710372209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A371761 n).toNat

end

end A122083.P1080201974710372209

/-! ## A122083.P4837286997817573893

`A108920(A271697(n)+1)`
-/

namespace A122083.P4837286997817573893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (A271697 n + 1).toNat

end

end A122083.P4837286997817573893

/-! ## A122083.P15886947855392358151

`A104484(A382736(n))`
-/

namespace A122083.P15886947855392358151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A382736 n).toNat

end

end A122083.P15886947855392358151

/-!
# A122084: Triangle read by rows: T(n,k) = number of unlabeled rooted bicolored trees with n nodes (n >= 1) in which k (1 <= k <= n-1, except k=1 if n=1) nodes have even distance from the root and n-k nodes have odd distance from the root.

The programs for A122084, there is no canonical definition to state claims against.
-/

/-! ## A122084.P17721622394763878741

`A159081(A369288(n)²)`
-/

namespace A122084.P17721622394763878741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (A369288 n ^ 2).toNat

end

end A122084.P17721622394763878741

/-! ## A122084.P475127747204682540

`A039636(A249027(n+1))`
-/

namespace A122084.P475127747204682540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A249027 (n + 1)).toNat

end

end A122084.P475127747204682540

/-! ## A122084.P6685426369697560460

`A144823(A144324(A144324(n+1))+n)`
-/

namespace A122084.P6685426369697560460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A144324 (A144324 (n + 1)).toNat + (n : ℤ)).toNat

end

end A122084.P6685426369697560460

/-!
# A122085: Triangle read by rows: T(n,k) = number of unlabeled free bicolored trees with n nodes (n >= 1) and k (1 <= k <= n-1, except k=0 or 1 if n=1, k=1 if n=2) nodes of one color and n-k nodes of the other color (the colors are not interchangeable).

The programs for A122085, there is no canonical definition to state claims against.
-/

/-! ## A122085.P16717871396449995138

`A329054(eq[1, A144112(n+1)])`
-/

namespace A122085.P16717871396449995138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122085.P16717871396449995138

/-! ## A122085.P1496420177879019842

`A329054(lt[n, A157208(n)+1])`
-/

namespace A122085.P1496420177879019842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157208 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A122085.P1496420177879019842

/-! ## A122085.P13306239886671629664

`A329054(lt[n-1, A157208(n)])`
-/

namespace A122085.P13306239886671629664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122085.P13306239886671629664

/-! ## A122085.P622441477796148457

`A329054(record[(n+1)%(A329054(n+1)+n+1)])`
-/

namespace A122085.P622441477796148457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A329054 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122085.P622441477796148457

/-! ## A122085.P3967317636024479049

`A329054(lt[A000007(n), A329054(n)])`
-/

namespace A122085.P3967317636024479049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122085.P3967317636024479049

/-! ## A122085.P7412892436346920931

`A329054(lt[A173196(n), A022180(n)])`
-/

namespace A122085.P7412892436346920931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122085.P7412892436346920931

/-!
# A122086: Number of unlabeled free bicolored trees with n nodes (the colors are not interchangeable).

The programs for A122086, there is no canonical definition to state claims against.
-/

/-! ## A122086.P16521967245243730852

`A125702(n+1)+A000007(n)`
-/

namespace A122086.P16521967245243730852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + A000007 n

end

end A122086.P16521967245243730852

/-! ## A122086.P2749866096509501718

`A054977(n)*A125702(n+1)`
-/

namespace A122086.P2749866096509501718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A125702 (n + 1)

end

end A122086.P2749866096509501718

/-! ## A122086.P3521643123087871734

`A125702(n+1)+A000079(n)%2`
-/

namespace A122086.P3521643123087871734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + Int.tmod (A000079 n) 2

end

end A122086.P3521643123087871734

/-! ## A122086.P847009004431188269

`lcm(A000034(n+1), A125702(n+1))`
-/

namespace A122086.P847009004431188269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 1)) (A125702 (n + 1))

end

end A122086.P847009004431188269

/-! ## A122086.P10265476576654617043

`A125702(n+1)+char[A284960(n+5)]`
-/

namespace A122086.P10265476576654617043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284960 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122086.P10265476576654617043

/-! ## A122086.P9712954049513975849

`A125702(n+1)+char[A022265(n)²²]`
-/

namespace A122086.P9712954049513975849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022265 n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122086.P9712954049513975849

/-! ## A122086.P16149210558288163560

`A125702(n+1)+char[A125729(3*n+1)]`
-/

namespace A122086.P16149210558288163560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125729 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122086.P16149210558288163560

/-! ## A122086.P536727146517475054

`A125702(n+1)+char[A007814(2*n+3)]`
-/

namespace A122086.P536727146517475054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122086.P536727146517475054

/-! ## A122086.P17331941879099451651

`A125702(n+1)+char[A125729(n+1)²²]`
-/

namespace A122086.P17331941879099451651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A125729 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122086.P17331941879099451651

/-! ## A122086.P2138364920029780271

`A125702(n+1)+A025155(A000120(n))`
-/

namespace A122086.P2138364920029780271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + A025155 (A000120 n).toNat

end

end A122086.P2138364920029780271

/-! ## A122086.P13627392223583591666

`A125702(n+1)+A005369(A048761(n))`
-/

namespace A122086.P13627392223583591666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + A005369 (A048761 n).toNat

end

end A122086.P13627392223583591666

/-! ## A122086.P5260251356322412849

`lcm(A014710(A249674(n)), A125702(n+1))`
-/

namespace A122086.P5260251356322412849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014710 (A249674 n).toNat) (A125702 (n + 1))

end

end A122086.P5260251356322412849

/-! ## A122086.P8215433597739735243

`A125702(n+1)+A059841(A000040(n+1))`
-/

namespace A122086.P8215433597739735243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + A059841 (A000040 (n + 1)).toNat

end

end A122086.P8215433597739735243

/-! ## A122086.P7892914053641953269

`A125702(n+1)+and(A000079(n), A328887(n))`
-/

namespace A122086.P7892914053641953269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + Int.land (A000079 n) (A328887 n)

end

end A122086.P7892914053641953269

/-! ## A122086.P13494007951537450934

`A125702(n+1)+and(A000079(n), A329052(n))`
-/

namespace A122086.P13494007951537450934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + Int.land (A000079 n) (A329052 n)

end

end A122086.P13494007951537450934

/-! ## A122086.P16073845350419233558

`A125702(n+1)+and(A000079(n), A072590(n+1))`
-/

namespace A122086.P16073845350419233558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 1) + Int.land (A000079 n) (A072590 (n + 1))

end

end A122086.P16073845350419233558

/-! ## A122086.P5337269320831897411

`A014963(A217259(n+1))*A125702(n+1)`
-/

namespace A122086.P5337269320831897411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A217259 (n + 1)).toNat * A125702 (n + 1)

end

end A122086.P5337269320831897411

/-! ## A122086.P12718519756936032623

`A014963(A182456(n+1))*A125702(n+1)`
-/

namespace A122086.P12718519756936032623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A182456 (n + 1)).toNat * A125702 (n + 1)

end

end A122086.P12718519756936032623

/-!
# A122088: Add 10, subtract 5, add 10, subtract 5, ad infinitum.

The programs for A122088, the canonical program `A122088.P505371168706336582` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122088 has offset 1).

The definition of A122088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122088.P505371168706336582

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=11, a(2)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122088

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P505371168706336582.Spec : Prop :=
  ∀ n, P505371168706336582.a n = A122088 (n + 1)

theorem P505371168706336582.correct : P505371168706336582.Spec := by
  intro n
  simp only [A122088, Nat.add_sub_cancel]

end A122088

/-! ## A122088.P12708675963090687827

`a(n-2)+5` with `a(0)=1, a(1)=11`
-/

namespace A122088.P12708675963090687827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 2) + 5

end

end A122088.P12708675963090687827

namespace A122088

/-- `a(n-2)+5` -/
def P12708675963090687827.Spec : Prop :=
  ∀ n, (P12708675963090687827.a n : ℤ) = A122088 (n + 1)

end A122088

/-! ## A122088.P17607196426817344208

`∑[5-a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A122088.P17607196426817344208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122088.P17607196426817344208

namespace A122088

/-- `∑[5-a(n-1)]` -/
def P17607196426817344208.Spec : Prop :=
  ∀ n, P17607196426817344208.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P14556310170242696261

`∑[∑[ogf((1+10x-6x^2)/(1+x))]]`
-/

namespace A122088.P14556310170242696261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122088.P14556310170242696261

namespace A122088

/-- `∑[∑[ogf((1+10x-6x^2)/(1+x))]]` -/
def P14556310170242696261.Spec : Prop :=
  ∀ n, P14556310170242696261.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P14770567504750425557

`ogf((1+10x-6x^2)/(1-x-x^2+x^3))`
-/

namespace A122088.P14770567504750425557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -6] [1, -1, -1, 1] n

end

end A122088.P14770567504750425557

namespace A122088

/-- `ogf((1+10x-6x^2)/(1-x-x^2+x^3))` -/
def P14770567504750425557.Spec : Prop :=
  ∀ n, P14770567504750425557.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P3029381800673597318

`5-floor(-a(n-2))` with `a(0)=1, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A122088.P3029381800673597318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  5 - (-a (n - 2))

end

end A122088.P3029381800673597318

namespace A122088

/-- `5-floor(-a(n-2))` -/
def P3029381800673597318.Spec : Prop :=
  ∀ n, P3029381800673597318.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P5410696051177141757

`5-ceil(-a(n-2))` with `a(0)=1, a(1)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A122088.P5410696051177141757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  5 - (-a (n - 2))

end

end A122088.P5410696051177141757

namespace A122088

/-- `5-ceil(-a(n-2))` -/
def P5410696051177141757.Spec : Prop :=
  ∀ n, P5410696051177141757.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P4380183139344024450

`5-round(-a(n-2))` with `a(0)=1, a(1)=11`

`round` is left out, it is the identity on integers.
-/

namespace A122088.P4380183139344024450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  5 - (-a (n - 2))

end

end A122088.P4380183139344024450

namespace A122088

/-- `5-round(-a(n-2))` -/
def P4380183139344024450.Spec : Prop :=
  ∀ n, P4380183139344024450.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P2243087644367977714

`5*n-(a(n-1)-7)` with `a(0)=1`
-/

namespace A122088.P2243087644367977714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 7)

end

end A122088.P2243087644367977714

namespace A122088

/-- `5*n-(a(n-1)-7)` -/
def P2243087644367977714.Spec : Prop :=
  ∀ n, P2243087644367977714.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P15053941873222546767

`∑[(4^(n%2))²]-6*n`
-/

namespace A122088.P15053941873222546767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ (n % 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (6 * n : ℤ)

end

end A122088.P15053941873222546767

namespace A122088

/-- `∑[(4^(n%2))²]-6*n` -/
def P15053941873222546767.Spec : Prop :=
  ∀ n, P15053941873222546767.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P3554929113909093021

`5*(round(n/2)+1-char[2*n])+1`
-/

namespace A122088.P3554929113909093021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1

end

end A122088.P3554929113909093021

namespace A122088

/-- `5*(round(n/2)+1-char[2*n])+1` -/
def P3554929113909093021.Spec : Prop :=
  ∀ n, P3554929113909093021.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P18061950589947319179

`A016861(A030451(n))`
-/

namespace A122088.P18061950589947319179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A030451 n).toNat

end

end A122088.P18061950589947319179

namespace A122088

/-- `A016861(A030451(n))` -/
def P18061950589947319179.Spec : Prop :=
  ∀ n, P18061950589947319179.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P17525467819341819113

`A016861(1-A028242(n)+n)`
-/

namespace A122088.P17525467819341819113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (1 - A028242 n + (n : ℤ)).toNat

end

end A122088.P17525467819341819113

namespace A122088

/-- `A016861(1-A028242(n)+n)` -/
def P17525467819341819113.Spec : Prop :=
  ∀ n, P17525467819341819113.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P13921016343733774951

`A016861(1-(A028242(n)-n))`
-/

namespace A122088.P13921016343733774951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (1 - (A028242 n - (n : ℤ))).toNat

end

end A122088.P13921016343733774951

namespace A122088

/-- `A016861(1-(A028242(n)-n))` -/
def P13921016343733774951.Spec : Prop :=
  ∀ n, P13921016343733774951.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P11056360035868926417

`A016861(A028242(n+1))`
-/

namespace A122088.P11056360035868926417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A028242 (n + 1)).toNat

end

end A122088.P11056360035868926417

namespace A122088

/-- `A016861(A028242(n+1))` -/
def P11056360035868926417.Spec : Prop :=
  ∀ n, P11056360035868926417.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P2070698799621342487

`A168282(A067060(n+2))`
-/

namespace A122088.P2070698799621342487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (A067060 (n + 2)).toNat

end

end A122088.P2070698799621342487

namespace A122088

/-- `A168282(A067060(n+2))` -/
def P2070698799621342487.Spec : Prop :=
  ∀ n, P2070698799621342487.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P4864260460399565059

`A168282(A103889(n+2))`
-/

namespace A122088.P4864260460399565059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (A103889 (n + 2)).toNat

end

end A122088.P4864260460399565059

namespace A122088

/-- `A168282(A103889(n+2))` -/
def P4864260460399565059.Spec : Prop :=
  ∀ n, P4864260460399565059.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P5152716790134339130

`A168282(A065168(n+2))`
-/

namespace A122088.P5152716790134339130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (A065168 (n + 2)).toNat

end

end A122088.P5152716790134339130

namespace A122088

/-- `A168282(A065168(n+2))` -/
def P5152716790134339130.Spec : Prop :=
  ∀ n, P5152716790134339130.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P4470715453319786804

`A047209(A010685(n)+n)`
-/

namespace A122088.P4470715453319786804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A010685 n + (n : ℤ)).toNat

end

end A122088.P4470715453319786804

namespace A122088

/-- `A047209(A010685(n)+n)` -/
def P4470715453319786804.Spec : Prop :=
  ∀ n, P4470715453319786804.a n = A122088 (n + 1)

end A122088

/-! ## A122088.P7466251344792610888

`A008851(A010685(n)+1+n)`
-/

namespace A122088.P7466251344792610888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A010685 n + 1 + (n : ℤ)).toNat

end

end A122088.P7466251344792610888

namespace A122088

/-- `A008851(A010685(n)+1+n)` -/
def P7466251344792610888.Spec : Prop :=
  ∀ n, P7466251344792610888.a n = A122088 (n + 1)

end A122088

/-!
# A122089: a(1)=a(2)=1. a(n) = smallest integer which is greater than a(n-1) and is coprime to (a(n-1)+a(n-2)).

The programs for A122089, there is no canonical definition to state claims against.
-/

/-! ## A122089.P5622879920763005829

`A071222(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A122089.P5622879920763005829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071222 (a (n - 2)).toNat + a (n - 1)

end

end A122089.P5622879920763005829

/-! ## A122089.P7580903394377709263

`a(n-1)+A053669(a(n-2)+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A122089.P7580903394377709263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A053669 (a (n - 2) + 1).toNat - 1)

end

end A122089.P7580903394377709263

/-! ## A122089.P4469721675320330423

`A079578(a(n-1)-A000035(n))` with `a(0)=1, a(1)=1`
-/

namespace A122089.P4469721675320330423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079578 (a (n - 1) - A000035 n).toNat

end

end A122089.P4469721675320330423

/-! ## A122089.P17741731784621630330

`A079578(a(n-1)-A166486(n²))` with `a(0)=1, a(1)=1`
-/

namespace A122089.P17741731784621630330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079578 (a (n - 1) - A166486 (n ^ 2)).toNat

end

end A122089.P17741731784621630330

/-! ## A122089.P5235290681350089522

`A071222(a(n-2))-(A000038(n)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A122089.P5235290681350089522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071222 (a (n - 2)).toNat - (A000038 n - a (n - 1))

end

end A122089.P5235290681350089522

/-!
# A122090: a(1)=1. a(n) = smallest integer that is greater than a(n-1) and is coprime to the largest nonprime (1 or composite) occurring among the first (n-1) terms of the sequence.

The programs for A122090, there is no canonical definition to state claims against.
-/

/-! ## A122090.P12847636358907674805

`∪[A051884(n+1), Δ[A007504(n)]]`
-/

namespace A122090.P12847636358907674805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P12847636358907674805

/-! ## A122090.P12263320276003214761

`∪[A000040(n+1), A051884(n+1)]`
-/

namespace A122090.P12263320276003214761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P12263320276003214761

/-! ## A122090.P17898945527289359535

`∪[A000430(n+1), A051884(n+1)]`
-/

namespace A122090.P17898945527289359535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P17898945527289359535

/-! ## A122090.P5784255712254810813

`∪[A008578(n+1), A051884(n+1)]`
-/

namespace A122090.P5784255712254810813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P5784255712254810813

/-! ## A122090.P17305014829918307798

`∪[A015919(n+1), A051884(n+1)]`
-/

namespace A122090.P17305014829918307798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P17305014829918307798

/-! ## A122090.P5594110390765639094

`∪[A033946(n+1), A051884(n+1)]`
-/

namespace A122090.P5594110390765639094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P5594110390765639094

/-! ## A122090.P11904388419783523519

`∪[A046022(n+1), A051884(n+1)]`
-/

namespace A122090.P11904388419783523519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P11904388419783523519

/-! ## A122090.P11688121404988664516

`∪[A049551(n+1), A051884(n+1)]`
-/

namespace A122090.P11688121404988664516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P11688121404988664516

/-! ## A122090.P9781284240413153748

`∪[A049569(n+1), A051884(n+1)]`
-/

namespace A122090.P9781284240413153748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P9781284240413153748

/-! ## A122090.P3666067484499125235

`∪[A050260(n+1), A051884(n+1)]`
-/

namespace A122090.P3666067484499125235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122090.P3666067484499125235

/-!
# A122091: Numbers appearing in A122072 at least twice.

The programs for A122091, there is no canonical definition to state claims against.
-/

/-! ## A122091.P11763767331523244971

`record[A007917(A078492(A273943(n)))]`
-/

namespace A122091.P11763767331523244971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A078492 (A273943 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122091.P11763767331523244971

/-! ## A122091.P5720288931966658323

`record[A007917(A118118(n+1)-A093178(n))]`
-/

namespace A122091.P5720288931966658323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A118118 (n + 1) - A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122091.P5720288931966658323

/-! ## A122091.P11048140831474662191

`record[A335285(A118118(n+1)-A093178(n))]`
-/

namespace A122091.P11048140831474662191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A118118 (n + 1) - A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122091.P11048140831474662191

/-! ## A122091.P7045031561690283063

`record[A007917(A118118(n+1)-A001511(n+1))]`
-/

namespace A122091.P7045031561690283063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A118118 (n + 1) - A001511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122091.P7045031561690283063

/-! ## A122091.P15922190588716242770

`A122072(eq[A218255(n), A256481(n+1)])`
-/

namespace A122091.P15922190588716242770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122091.P15922190588716242770

/-!
# A122092: a(n) = (n-2)*a(n-1) - (n-1)*a(n-2), with a(0)=1, a(1)=1.

The programs for A122092, the canonical program `A122092.P2337939032853629328` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122092 has offset 0).

The definition of A122092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-2)*a(n-1)-(n-1)*a(n-2)` (program `A122092.P2337939032853629328`, by `A122092.P2337939032853629328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122092.P2337939032853629328

`(n-2)*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A122092

/-- `(n-2)*a(n-1)-(n-1)*a(n-2)` -/
def P2337939032853629328.Spec : Prop :=
  ∀ n, P2337939032853629328.a n = A122092 n

theorem P2337939032853629328.correct : P2337939032853629328.Spec := by
  intro n
  simp only [A122092]

end A122092

/-! ## A122092.P1112470330015231178

`∏[n-2-(n-1)/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A122092.P1112470330015231178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 2 : ℚ) - ((n : ℤ) - 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122092.P1112470330015231178

namespace A122092

/-- `∏[n-2-(n-1)/a(n-1)]` -/
def P1112470330015231178.Spec : Prop :=
  ∀ n, P1112470330015231178.a n = (A122092 n : ℚ)

end A122092

/-! ## A122092.P8131022570207131811

`2*A152689(n)-A165900(n)`
-/

namespace A122092.P8131022570207131811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152689 n - A165900 n

end

end A122092.P8131022570207131811

namespace A122092

/-- `2*A152689(n)-A165900(n)` -/
def P8131022570207131811.Spec : Prop :=
  ∀ n, P8131022570207131811.a n = A122092 n

end A122092

/-! ## A122092.P11846813462814863650

`A152689(n)+A232845(n)+1-n`
-/

namespace A122092.P11846813462814863650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152689 n + (A232845 n + (1 - (n : ℤ)))

end

end A122092.P11846813462814863650

namespace A122092

/-- `A152689(n)+A232845(n)+1-n` -/
def P11846813462814863650.Spec : Prop :=
  ∀ n, P11846813462814863650.a n = A122092 n

end A122092

/-! ## A122092.P9771277524218674097

`2*A152689(n)-∑[A004273(n)-1]`
-/

namespace A122092.P9771277524218674097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152689 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122092.P9771277524218674097

namespace A122092

/-- `2*A152689(n)-∑[A004273(n)-1]` -/
def P9771277524218674097.Spec : Prop :=
  ∀ n, P9771277524218674097.a n = A122092 n

end A122092

/-!
# A122093: Product of the first n 4-almost primes, divided by product of the first n primes, rounded down.

The programs for A122093, there is no canonical definition to state claims against.
-/

/-! ## A122093.P1157623317631436171

`floor(A114426(n+1)/A002110(n+1))`
-/

namespace A122093.P1157623317631436171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114426 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A122093.P1157623317631436171

/-!
# A122094: Prime divisors of Mersenne numbers. Primes p such that the multiplicative order of 2 modulo p is prime.

The programs for A122094, there is no canonical definition to state claims against.
-/

/-! ## A122094.P2110694253394468452

`p?[A392845(n+1)]`
-/

namespace A122094.P2110694253394468452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122094.P2110694253394468452

/-! ## A122094.P17270489936497442917

`∩[A097958(n+1), A392845(n+1)]`
-/

namespace A122094.P17270489936497442917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P17270489936497442917

/-! ## A122094.P8544279285980305715

`∩[A385221(n+1), A392845(n+1)]`
-/

namespace A122094.P8544279285980305715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P8544279285980305715

/-! ## A122094.P7035554552294086147

`∩[A045323(n+1), A392845(n+1)]`
-/

namespace A122094.P7035554552294086147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P7035554552294086147

/-! ## A122094.P15928855955711398792

`∩[A045419(n+1), A392845(n+1)]`
-/

namespace A122094.P15928855955711398792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P15928855955711398792

/-! ## A122094.P470910002954094104

`∩[A049549(n+1), A392845(n+1)]`
-/

namespace A122094.P470910002954094104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P470910002954094104

/-! ## A122094.P10602662191713231770

`∩[A049551(n+1), A392845(n+1)]`
-/

namespace A122094.P10602662191713231770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P10602662191713231770

/-! ## A122094.P4554330878829510698

`∩[A004139(n+1), A392845(n+1)]`
-/

namespace A122094.P4554330878829510698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P4554330878829510698

/-! ## A122094.P330669549578273787

`∩[A000040(n+1), A392845(n+1)]`
-/

namespace A122094.P330669549578273787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P330669549578273787

/-! ## A122094.P7882304948903837756

`∩[A006005(n+1), A392845(n+1)]`
-/

namespace A122094.P7882304948903837756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P7882304948903837756

/-! ## A122094.P11998911483834292895

`∩[A008578(n+1), A392845(n+1)]`
-/

namespace A122094.P11998911483834292895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P11998911483834292895

/-! ## A122094.P17282337049838984450

`∩[A033946(n+1), A392845(n+1)]`
-/

namespace A122094.P17282337049838984450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P17282337049838984450

/-! ## A122094.P7467474408797645470

`∩[A045319(n+1), A392845(n+1)]`
-/

namespace A122094.P7467474408797645470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P7467474408797645470

/-! ## A122094.P15132937402753384293

`∩[A046022(n+1), A392845(n+1)]`
-/

namespace A122094.P15132937402753384293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P15132937402753384293

/-! ## A122094.P5413056262150609796

`∩[A060634(n+1), A392845(n+1)]`
-/

namespace A122094.P5413056262150609796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P5413056262150609796

/-! ## A122094.P16740562614828902741

`∩[A326715(n+1), A392845(n+1)]`
-/

namespace A122094.P16740562614828902741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P16740562614828902741

/-! ## A122094.P9628176011203983066

`∩[A000430(n+1), A392845(n+1)]`
-/

namespace A122094.P9628176011203983066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P9628176011203983066

/-! ## A122094.P10133679439239333423

`∩[A050150(n+1), A392845(n+1)]`
-/

namespace A122094.P10133679439239333423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P10133679439239333423

/-! ## A122094.P13157188197238109242

`∩[A050376(n+1), A392845(n+1)]`
-/

namespace A122094.P13157188197238109242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P13157188197238109242

/-! ## A122094.P1145829872322594115

`∩[A062090(n+1), A392845(n+1)]`
-/

namespace A122094.P1145829872322594115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122094.P1145829872322594115

/-!
# A122095: Primes p for which 8*p+1 divides 2^p-1.

The programs for A122095, there is no canonical definition to state claims against.
-/

/-! ## A122095.P17155573376472754947

`p?[floor(A152308(n+1)/8)]`
-/

namespace A122095.P17155573376472754947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152308 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122095.P17155573376472754947

/-! ## A122095.P3296001022711558036

`p?[round(A152308(n+2)/8)]`
-/

namespace A122095.P3296001022711558036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A152308 (n + 2) : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122095.P3296001022711558036

/-! ## A122095.P5490872944779658436

`record[A006530(floor(A152308(n+2)/8))]`
-/

namespace A122095.P5490872944779658436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A152308 (n + 2) : ℚ) / 8⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122095.P5490872944779658436

/-! ## A122095.P15409024658770546721

`record[A020639(floor(A152308(n+2)/8))]`
-/

namespace A122095.P15409024658770546721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A152308 (n + 2) : ℚ) / 8⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122095.P15409024658770546721

/-! ## A122095.P5027994315320451927

`record[A020639(round(A152308(n+2)/8))]`
-/

namespace A122095.P5027994315320451927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A152308 (n + 2) : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122095.P5027994315320451927

/-!
# A122097: Number of fusenes with 23 hexagons, C_(2v) symmetry and containing n carbon atoms.

The programs for A122097, there is no canonical definition to state claims against.
-/

/-! ## A122097.P12141114814249916320

`A123142(n)+A031286(A006126(n))`
-/

namespace A122097.P12141114814249916320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123142 (n + 64) + A031286 (A006126 n).toNat

end

end A122097.P12141114814249916320

/-! ## A122097.P5671777370117120620

`A123142(n)+A005091(A081301(n))`
-/

namespace A122097.P5671777370117120620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123142 (n + 64) + A005091 (A081301 n).toNat

end

end A122097.P5671777370117120620

/-!
# A122098: Smallest number, different from 1, which when multiplied by "n" produces a number with "n" as its rightmost digits.

The programs for A122098, the canonical program `A122098.P17266895398125348710` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122098 has offset 1).

The definition of A122098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122098.P14142168371119343880

`A078267(n+1)+1`
-/

namespace A122098.P14142168371119343880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078267 (n + 1) + 1

end

end A122098.P14142168371119343880

namespace A122098

/-- `A078267(n+1)+1` -/
def P14142168371119343880.Spec : Prop :=
  ∀ n, P14142168371119343880.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P16722379054898538893

`A075559(n+1)/(n+1)`
-/

namespace A122098.P16722379054898538893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075559 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A122098.P16722379054898538893

namespace A122098

/-- `A075559(n+1)/(n+1)` -/
def P16722379054898538893.Spec : Prop :=
  ∀ n, P16722379054898538893.a n = (A122098 (n + 1) : ℚ)

end A122098

/-! ## A122098.P11198880704696285038

`A020725(A078267(n+1))`
-/

namespace A122098.P11198880704696285038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A078267 (n + 1)).toNat

end

end A122098.P11198880704696285038

namespace A122098

/-- `A020725(A078267(n+1))` -/
def P11198880704696285038.Spec : Prop :=
  ∀ n, P11198880704696285038.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P17266895398125348710

`A078268(n+1)+A068823(n+1)/(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A122098

/-- `A078268(n+1)+A068823(n+1)/(n+1)+1` -/
def P17266895398125348710.Spec : Prop :=
  ∀ n, P17266895398125348710.a n = (A122098 (n + 1) : ℚ)

end A122098

/-! ## A122098.P6969597506183247019

`A172503(n+1)/gcd(A005915(n)², A172503(n+1))+1`
-/

namespace A122098.P6969597506183247019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172503 (n + 1) : ℚ) / (Int.gcd (A005915 n ^ 2) (A172503 (n + 1)) : ℚ) + 1

end

end A122098.P6969597506183247019

namespace A122098

/-- `A172503(n+1)/gcd(A005915(n)², A172503(n+1))+1` -/
def P6969597506183247019.Spec : Prop :=
  ∀ n, P6969597506183247019.a n = (A122098 (n + 1) : ℚ)

end A122098

/-! ## A122098.P16378133147791616722

`A033999(2*A051601(n))*A226219(A237416(n+1))`
-/

namespace A122098.P16378133147791616722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * A051601 n).toNat * A226219 (A237416 (n + 1)).toNat

end

end A122098.P16378133147791616722

namespace A122098

/-- `A033999(2*A051601(n))*A226219(A237416(n+1))` -/
def P16378133147791616722.Spec : Prop :=
  ∀ n, P16378133147791616722.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P15108404095704688578

`A226219(A237416(n+1))+A000007(A131063(n))`
-/

namespace A122098.P15108404095704688578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat + A000007 (A131063 n).toNat

end

end A122098.P15108404095704688578

namespace A122098

/-- `A226219(A237416(n+1))+A000007(A131063(n))` -/
def P15108404095704688578.Spec : Prop :=
  ∀ n, P15108404095704688578.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P345926165284075367

`A054977(A308269(n+1))*A226219(A237416(n+1))`
-/

namespace A122098.P345926165284075367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A308269 (n + 1)).toNat * A226219 (A237416 (n + 1)).toNat

end

end A122098.P345926165284075367

namespace A122098

/-- `A054977(A308269(n+1))*A226219(A237416(n+1))` -/
def P345926165284075367.Spec : Prop :=
  ∀ n, P345926165284075367.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P4670298362263737063

`A226219(A237416(n+1))%A025326(A001749(n+1))`
-/

namespace A122098.P4670298362263737063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226219 (A237416 (n + 1)).toNat) (A025326 (A001749 (n + 1)).toNat)

end

end A122098.P4670298362263737063

namespace A122098

/-- `A226219(A237416(n+1))%A025326(A001749(n+1))` -/
def P4670298362263737063.Spec : Prop :=
  ∀ n, P4670298362263737063.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P1846747305524673806

`A060576(A137186(n+1))*A226219(A237416(n+1))`
-/

namespace A122098.P1846747305524673806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A137186 (n + 1)).toNat * A226219 (A237416 (n + 1)).toNat

end

end A122098.P1846747305524673806

namespace A122098

/-- `A060576(A137186(n+1))*A226219(A237416(n+1))` -/
def P1846747305524673806.Spec : Prop :=
  ∀ n, P1846747305524673806.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P17821527388744689037

`A226219(A237416(n+1))+A005088(A137688(n))`
-/

namespace A122098.P17821527388744689037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat + A005088 (A137688 n).toNat

end

end A122098.P17821527388744689037

namespace A122098

/-- `A226219(A237416(n+1))+A005088(A137688(n))` -/
def P17821527388744689037.Spec : Prop :=
  ∀ n, P17821527388744689037.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P15873598396165948713

`A226219(A237416(n+1))*A246588(A130321(n))`
-/

namespace A122098.P15873598396165948713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat * A246588 (A130321 n).toNat

end

end A122098.P15873598396165948713

namespace A122098

/-- `A226219(A237416(n+1))*A246588(A130321(n))` -/
def P15873598396165948713.Spec : Prop :=
  ∀ n, P15873598396165948713.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P8499401863521232240

`A226219(abs(A122188(n+1)*A237416(n+1)))`
-/

namespace A122098.P8499401863521232240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 |A122188 (n + 1) * A237416 (n + 1)|.toNat

end

end A122098.P8499401863521232240

namespace A122098

/-- `A226219(abs(A122188(n+1)*A237416(n+1)))` -/
def P8499401863521232240.Spec : Prop :=
  ∀ n, P8499401863521232240.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P9529912222999504529

`A226219(abs(A237416(n+1)/A122188(n+1)))`
-/

namespace A122098.P9529912222999504529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (SequenceMachineLib.roundAway |(A237416 (n + 1) : ℚ) / (A122188 (n + 1) : ℚ)|).toNat

end

end A122098.P9529912222999504529

namespace A122098

/-- `A226219(abs(A237416(n+1)/A122188(n+1)))` -/
def P9529912222999504529.Spec : Prop :=
  ∀ n, P9529912222999504529.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P8006467714592748106

`A226219(A122188(n+1)²*A237416(n+1))`
-/

namespace A122098.P8006467714592748106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A122188 (n + 1) ^ 2 * A237416 (n + 1)).toNat

end

end A122098.P8006467714592748106

namespace A122098

/-- `A226219(A122188(n+1)²*A237416(n+1))` -/
def P8006467714592748106.Spec : Prop :=
  ∀ n, P8006467714592748106.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P16175836064114325859

`A003557(A084758(n+1))*A226219(A237416(n+1))`
-/

namespace A122098.P16175836064114325859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A084758 (n + 1)).toNat * A226219 (A237416 (n + 1)).toNat

end

end A122098.P16175836064114325859

namespace A122098

/-- `A003557(A084758(n+1))*A226219(A237416(n+1))` -/
def P16175836064114325859.Spec : Prop :=
  ∀ n, P16175836064114325859.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P10934723661310399202

`A226219(A044332(n+1))`
-/

namespace A122098.P10934723661310399202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A044332 (n + 1)).toNat

end

end A122098.P10934723661310399202

namespace A122098

/-- `A226219(A044332(n+1))` -/
def P10934723661310399202.Spec : Prop :=
  ∀ n, P10934723661310399202.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P15131609900877282279

`A226219(A111708(n)+1+n)`
-/

namespace A122098.P15131609900877282279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A111708 n + 1 + (n : ℤ)).toNat

end

end A122098.P15131609900877282279

namespace A122098

/-- `A226219(A111708(n)+1+n)` -/
def P15131609900877282279.Spec : Prop :=
  ∀ n, P15131609900877282279.a n = A122098 (n + 1)

end A122098

/-! ## A122098.P10339001803245418744

`A303612(A158128(n+1)-1)+1`
-/

namespace A122098.P10339001803245418744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303612 (A158128 (n + 1) - 1).toNat + 1

end

end A122098.P10339001803245418744

namespace A122098

/-- `A303612(A158128(n+1)-1)+1` -/
def P10339001803245418744.Spec : Prop :=
  ∀ n, P10339001803245418744.a n = A122098 (n + 1)

end A122098

/-!
# A122099: a(n) = -3*a(n-1) + a(n-3) for n>2, with a(0)=1, a(1)=1, a(2)=0.

The programs for A122099, the canonical program `A122099.P854490588697344585` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122099 has offset 0).

The definition of A122099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122099.P854490588697344585

`(-1)^n*A122100(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122099

/-- `(-1)^n*A122100(n)` -/
def P854490588697344585.Spec : Prop :=
  ∀ n, P854490588697344585.a n = A122099 n

theorem P854490588697344585.correct : P854490588697344585.Spec := by
  intro n
  simp only [A122099]

end A122099

/-! ## A122099.P9660317318999527325

`ogf((1+4x+3x^2)/(1+3x-x^3))`
-/

namespace A122099.P9660317318999527325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, 3, 0, -1] n

end

end A122099.P9660317318999527325

namespace A122099

/-- `ogf((1+4x+3x^2)/(1+3x-x^3))` -/
def P9660317318999527325.Spec : Prop :=
  ∀ n, P9660317318999527325.a n = A122099 n

end A122099

/-! ## A122099.P8228019312327838404

`a(n-3)-3*a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A122099.P8228019312327838404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) - 3 * a (n - 1)

end

end A122099.P8228019312327838404

namespace A122099

/-- `a(n-3)-3*a(n-1)` -/
def P8228019312327838404.Spec : Prop :=
  ∀ n, P8228019312327838404.a n = A122099 n

end A122099

/-! ## A122099.P13773432594986130696

`a(n-3)-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A122099.P13773432594986130696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 1) - a (n - 1)

end

end A122099.P13773432594986130696

namespace A122099

/-- `a(n-3)-a(n-1)-a(n-1)-a(n-1)` -/
def P13773432594986130696.Spec : Prop :=
  ∀ n, P13773432594986130696.a n = A122099 n

end A122099

/-! ## A122099.P6581186585155842122

`A122100(n)/A033999(n)`
-/

namespace A122099.P6581186585155842122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122100 n : ℚ) / (A033999 n : ℚ)

end

end A122099.P6581186585155842122

namespace A122099

/-- `A122100(n)/A033999(n)` -/
def P6581186585155842122.Spec : Prop :=
  ∀ n, P6581186585155842122.a n = (A122099 n : ℚ)

end A122099

/-! ## A122099.P3421991232731011636

`A122100(n)/A122100(Δ[A004526(n)])`
-/

namespace A122099.P3421991232731011636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122100 n : ℚ) / (A122100 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A122099.P3421991232731011636

namespace A122099

/-- `A122100(n)/A122100(Δ[A004526(n)])` -/
def P3421991232731011636.Spec : Prop :=
  ∀ n, P3421991232731011636.a n = (A122099 n : ℚ)

end A122099

/-! ## A122099.P2217122461713322668

`A122100(n)*A195017(A000040(n+1))`
-/

namespace A122099.P2217122461713322668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 n * A195017 (A000040 (n + 1)).toNat

end

end A122099.P2217122461713322668

namespace A122099

/-- `A122100(n)*A195017(A000040(n+1))` -/
def P2217122461713322668.Spec : Prop :=
  ∀ n, P2217122461713322668.a n = A122099 n

end A122099

