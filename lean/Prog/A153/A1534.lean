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
import Seq.B000.C012
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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153400: Numbers k such that 18*k+1 is not prime.

The programs for A153400, the canonical program `A153400.P11699944517976299925` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153400 has offset 1).

The definition of A153400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153400.P11699944517976299925

`comp[A111094(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153400

/-- `comp[A111094(n+1)]` -/
def P11699944517976299925.Spec : Prop :=
  ∀ n, (P11699944517976299925.a n : ℤ) = A153400 (n + 1)

theorem P11699944517976299925.correct : P11699944517976299925.Spec := by
  intro n
  simp only [A153400, Nat.add_sub_cancel]

end A153400

/-! ## A153400.P10751641070120952571

`floor(A247681(n+1)/18)`
-/

namespace A153400.P10751641070120952571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247681 (n + 1) : ℚ) / 18⌋

end

end A153400.P10751641070120952571

namespace A153400

/-- `floor(A247681(n+1)/18)` -/
def P10751641070120952571.Spec : Prop :=
  ∀ n, P10751641070120952571.a n = A153400 (n + 1)

end A153400

/-! ## A153400.P2924789788276069273

`eq[0, A101264(9*n)]`
-/

namespace A153400.P2924789788276069273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153400.P2924789788276069273

namespace A153400

/-- `eq[0, A101264(9*n)]` -/
def P2924789788276069273.Spec : Prop :=
  ∀ n, (P2924789788276069273.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P1652656829418658124

`eq[0, A010051(3*6*n+1)]`
-/

namespace A153400.P1652656829418658124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (6 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153400.P1652656829418658124

namespace A153400

/-- `eq[0, A010051(3*6*n+1)]` -/
def P1652656829418658124.Spec : Prop :=
  ∀ n, (P1652656829418658124.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P4106786032161421030

`lt[1, A064680(A000005(18*n+1))]`
-/

namespace A153400.P4106786032161421030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A000005 (18 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153400.P4106786032161421030

namespace A153400

/-- `lt[1, A064680(A000005(18*n+1))]` -/
def P4106786032161421030.Spec : Prop :=
  ∀ n, (P4106786032161421030.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P14789614128937956056

`eq[1, A005171(3*6*n+1)]`
-/

namespace A153400.P14789614128937956056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (3 * (6 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153400.P14789614128937956056

namespace A153400

/-- `eq[1, A005171(3*6*n+1)]` -/
def P14789614128937956056.Spec : Prop :=
  ∀ n, (P14789614128937956056.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P8406711278949087587

`lt[A020639(A016921(3*n)), 4*(n+1)]`
-/

namespace A153400.P8406711278949087587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016921 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153400.P8406711278949087587

namespace A153400

/-- `lt[A020639(A016921(3*n)), 4*(n+1)]` -/
def P8406711278949087587.Spec : Prop :=
  ∀ n, (P8406711278949087587.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P14364040237893506060

`lt[3, A354187(9*A004277(n)+1)]`
-/

namespace A153400.P14364040237893506060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (9 * A004277 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153400.P14364040237893506060

namespace A153400

/-- `lt[3, A354187(9*A004277(n)+1)]` -/
def P14364040237893506060.Spec : Prop :=
  ∀ n, (P14364040237893506060.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P6058153749689853452

`eq[0, A285701(3*6*n+1)]`
-/

namespace A153400.P6058153749689853452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (3 * (6 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153400.P6058153749689853452

namespace A153400

/-- `eq[0, A285701(3*6*n+1)]` -/
def P6058153749689853452.Spec : Prop :=
  ∀ n, (P6058153749689853452.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P11320100720938305978

`lt[18*n, A026234(18*n+1)]`
-/

namespace A153400.P11320100720938305978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (18 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153400.P11320100720938305978

namespace A153400

/-- `lt[18*n, A026234(18*n+1)]` -/
def P11320100720938305978.Spec : Prop :=
  ∀ n, (P11320100720938305978.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P5260039793193515522

`lt[A014963(3*6*n+1), n+2]`
-/

namespace A153400.P5260039793193515522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * (6 * n) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153400.P5260039793193515522

namespace A153400

/-- `lt[A014963(3*6*n+1), n+2]` -/
def P5260039793193515522.Spec : Prop :=
  ∀ n, (P5260039793193515522.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P4025438233182410102

`A008618(A247681(n+1))`
-/

namespace A153400.P4025438233182410102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A247681 (n + 1)).toNat

end

end A153400.P4025438233182410102

namespace A153400

/-- `A008618(A247681(n+1))` -/
def P4025438233182410102.Spec : Prop :=
  ∀ n, P4025438233182410102.a n = A153400 (n + 1)

end A153400

/-! ## A153400.P17555258055503378184

`lt[A014963(A161705(n))-1, A016777(n)]`
-/

namespace A153400.P17555258055503378184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A161705 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153400.P17555258055503378184

namespace A153400

/-- `lt[A014963(A161705(n))-1, A016777(n)]` -/
def P17555258055503378184.Spec : Prop :=
  ∀ n, (P17555258055503378184.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P15093541383767950566

`lt[A014963(A161705(n))-1, A016873(n)]`
-/

namespace A153400.P15093541383767950566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A161705 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153400.P15093541383767950566

namespace A153400

/-- `lt[A014963(A161705(n))-1, A016873(n)]` -/
def P15093541383767950566.Spec : Prop :=
  ∀ n, (P15093541383767950566.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P6858226764828129447

`lt[1, A016945(n)-A014963(A161705(n))]`
-/

namespace A153400.P6858226764828129447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A014963 (A161705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153400.P6858226764828129447

namespace A153400

/-- `lt[1, A016945(n)-A014963(A161705(n))]` -/
def P6858226764828129447.Spec : Prop :=
  ∀ n, (P6858226764828129447.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P8754927144492058823

`lt[1, A016957(n)-A014963(A161705(n))]`
-/

namespace A153400.P8754927144492058823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n - A014963 (A161705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153400.P8754927144492058823

namespace A153400

/-- `lt[1, A016957(n)-A014963(A161705(n))]` -/
def P8754927144492058823.Spec : Prop :=
  ∀ n, (P8754927144492058823.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P14460861310402696231

`lt[1, A016969(n)-A014963(A161705(n))]`
-/

namespace A153400.P14460861310402696231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A014963 (A161705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153400.P14460861310402696231

namespace A153400

/-- `lt[1, A016969(n)-A014963(A161705(n))]` -/
def P14460861310402696231.Spec : Prop :=
  ∀ n, (P14460861310402696231.a n : ℤ) = A153400 (n + 1)

end A153400

/-! ## A153400.P1732921719799345785

`lt[A014963(A161705(n))-1, A151800(n)]`
-/

namespace A153400.P1732921719799345785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A161705 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153400.P1732921719799345785

namespace A153400

/-- `lt[A014963(A161705(n))-1, A151800(n)]` -/
def P1732921719799345785.Spec : Prop :=
  ∀ n, (P1732921719799345785.a n : ℤ) = A153400 (n + 1)

end A153400

/-!
# A153401: a(n) is the least positive number such that in the representation of 2n+1, n>=4, as a sum of the form (2*A000695(k)+a(n))+2(2*A000695(l)+a(n)), both of numbers 2*A000695(k)+a(n) and 2*A000695(l)+a(n) are primes.

The programs for A153401, there is no canonical definition to state claims against.
-/

/-! ## A153401.P9468318615097048569

`A126637(p?[A020653(n+1)*A309425(n+1)])`
-/

namespace A153401.P9468318615097048569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1) * A309425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126637 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A153401.P9468318615097048569

/-! ## A153401.P7104606938008826265

`15%Δ[record[A105033(2*n+1)]]`
-/

namespace A153401.P7104606938008826265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 15 (f1 (n + 1) - f1 n)

end

end A153401.P7104606938008826265

/-! ## A153401.P14913404475813176303

`A020639(gcd(A077896(n), A160724(n)))`
-/

namespace A153401.P14913404475813176303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A077896 n) (A160724 n))

end

end A153401.P14913404475813176303

/-! ## A153401.P6383012253170741486

`A174414(gcd(A000225(n), A246850(n+1)))`
-/

namespace A153401.P6383012253170741486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174414 (Int.gcd (A000225 n) (A246850 (n + 1)))

end

end A153401.P6383012253170741486

/-!
# A153402: Smaller of 3 consecutive prime numbers such that p1*p2*p3+d1+d2-1=average of twin prime pairs, d1(delta)=p2-p1,d2(delta)=p3-p2.

The programs for A153402, there is no canonical definition to state claims against.
-/

/-! ## A153402.P14782955700861160487

`A000040(A000720(A153404(n+1)-1))`
-/

namespace A153402.P14782955700861160487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A153404 (n + 1) - 1).toNat).toNat

end

end A153402.P14782955700861160487

/-! ## A153402.P10178232876287490125

`A008578(∑{p}[A153404(n+1), A000720(#)])`
-/

namespace A153402.P10178232876287490125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A153402.P10178232876287490125

/-!
# A153403: Numbers k such that 10*k+3 is not prime.

The programs for A153403, the canonical program `A153403.P824357136833044113` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153403 has offset 1).

The definition of A153403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153403.P824357136833044113

`comp[A102338(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153403

/-- `comp[A102338(n+1)]` -/
def P824357136833044113.Spec : Prop :=
  ∀ n, (P824357136833044113.a n : ℤ) = A153403 (n + 1)

theorem P824357136833044113.correct : P824357136833044113.Spec := by
  intro n
  simp only [A153403, Nat.add_sub_cancel]

end A153403

/-! ## A153403.P15532711534244987698

`comp[A126332(n+1)]+1`
-/

namespace A153403.P15532711534244987698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153403.P15532711534244987698

namespace A153403

/-- `comp[A126332(n+1)]+1` -/
def P15532711534244987698.Spec : Prop :=
  ∀ n, (P15532711534244987698.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P1171528617610249650

`lt[3, A096915(n+1)]+1`
-/

namespace A153403.P1171528617610249650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153403.P1171528617610249650

namespace A153403

/-- `lt[3, A096915(n+1)]+1` -/
def P1171528617610249650.Spec : Prop :=
  ∀ n, (P1171528617610249650.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P10681752071950111562

`lt[1, A001222(10*n+3)]`
-/

namespace A153403.P10681752071950111562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153403.P10681752071950111562

namespace A153403

/-- `lt[1, A001222(10*n+3)]` -/
def P10681752071950111562.Spec : Prop :=
  ∀ n, (P10681752071950111562.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P6504140526737512536

`lt[2, A000005(10*n+3)]`
-/

namespace A153403.P6504140526737512536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153403.P6504140526737512536

namespace A153403

/-- `lt[2, A000005(10*n+3)]` -/
def P6504140526737512536.Spec : Prop :=
  ∀ n, (P6504140526737512536.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P13545639128267067049

`lt[A020639(10*n+3), n+1]`
-/

namespace A153403.P13545639128267067049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153403.P13545639128267067049

namespace A153403

/-- `lt[A020639(10*n+3), n+1]` -/
def P13545639128267067049.Spec : Prop :=
  ∀ n, (P13545639128267067049.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P18253147915383177129

`lt[A006530(10*n+3), 10*n+3]`
-/

namespace A153403.P18253147915383177129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153403.P18253147915383177129

namespace A153403

/-- `lt[A006530(10*n+3), 10*n+3]` -/
def P18253147915383177129.Spec : Prop :=
  ∀ n, (P18253147915383177129.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P14014543512227990118

`eq[1, A292438(A017281(n)+2)]`
-/

namespace A153403.P14014543512227990118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A017281 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153403.P14014543512227990118

namespace A153403

/-- `eq[1, A292438(A017281(n)+2)]` -/
def P14014543512227990118.Spec : Prop :=
  ∀ n, (P14014543512227990118.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P2143505818808198618

`eq[1, A292438(A019428(2*n+1))]`
-/

namespace A153403.P2143505818808198618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A019428 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153403.P2143505818808198618

namespace A153403

/-- `eq[1, A292438(A019428(2*n+1))]` -/
def P2143505818808198618.Spec : Prop :=
  ∀ n, (P2143505818808198618.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P14879319381621646936

`lt[A083914(2*n+1), A005171(A016885(2*n))]`
-/

namespace A153403.P14879319381621646936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A016885 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153403.P14879319381621646936

namespace A153403

/-- `lt[A083914(2*n+1), A005171(A016885(2*n))]` -/
def P14879319381621646936.Spec : Prop :=
  ∀ n, (P14879319381621646936.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P7374333645580390943

`lt[A014963(10*n+3), n]`
-/

namespace A153403.P7374333645580390943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153403.P7374333645580390943

namespace A153403

/-- `lt[A014963(10*n+3), n]` -/
def P7374333645580390943.Spec : Prop :=
  ∀ n, (P7374333645580390943.a n : ℤ) = A153403 (n + 1)

end A153403

/-! ## A153403.P13794940077360688802

`A008616(A053179(n+1))`
-/

namespace A153403.P13794940077360688802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A053179 (n + 1)).toNat

end

end A153403.P13794940077360688802

namespace A153403

/-- `A008616(A053179(n+1))` -/
def P13794940077360688802.Spec : Prop :=
  ∀ n, P13794940077360688802.a n = A153403 (n + 1)

end A153403

/-! ## A153403.P300081097457020323

`eq[A055671(A016885(2*n)), A055671(2*n)]`
-/

namespace A153403.P300081097457020323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A016885 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153403.P300081097457020323

namespace A153403

/-- `eq[A055671(A016885(2*n)), A055671(2*n)]` -/
def P300081097457020323.Spec : Prop :=
  ∀ n, (P300081097457020323.a n : ℤ) = A153403 (n + 1)

end A153403

/-!
# A153404: Middle of 3 consecutive prime numbers such that p1*p2*p3 + d1 + d2 - 1 = average of twin prime pairs, d1 (delta) = p2 - p1, d2 (delta) = p3 - p2.

The programs for A153404, there is no canonical definition to state claims against.
-/

/-! ## A153404.P17670940930219632023

`A151800(A153402(n+1))`
-/

namespace A153404.P17670940930219632023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153402 (n + 1)).toNat

end

end A153404.P17670940930219632023

/-! ## A153404.P13703360585948173408

`∑{d}[A153402(n+1), A340071(#)]`
-/

namespace A153404.P13703360585948173408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153404.P13703360585948173408

/-! ## A153404.P4966716716322643772

`∑{d}[A153402(n+1), A344587(#)]`
-/

namespace A153404.P4966716716322643772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153404.P4966716716322643772

/-! ## A153404.P3060494420232854424

`A340071(A153402(n+1))+A007318(∑[n])`
-/

namespace A153404.P3060494420232854424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153402 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153404.P3060494420232854424

/-!
# A153405: Larger of 3 consecutive prime numbers such that p1*p2*p3 + d1 + d2 - 1 = average of twin prime pairs, d1 (delta) = p2 - p1, d2 (delta) = p3 - p2.

The programs for A153405, there is no canonical definition to state claims against.
-/

/-! ## A153405.P4932572764283548823

`A151800(A153404(n+1))`
-/

namespace A153405.P4932572764283548823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153404 (n + 1)).toNat

end

end A153405.P4932572764283548823

/-! ## A153405.P7580792469138259809

`A151800(A151800(A153402(n+1)))`
-/

namespace A153405.P7580792469138259809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A153402 (n + 1)).toNat).toNat

end

end A153405.P7580792469138259809

/-! ## A153405.P4110166023357280078

`A000040(∑{p}[A153404(n+1), A000720(#)]+1)`
-/

namespace A153405.P4110166023357280078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 1).toNat

end

end A153405.P4110166023357280078

/-! ## A153405.P8427639091839402045

`∑{d}[A153404(n+1), A340071(#)]`
-/

namespace A153405.P8427639091839402045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153405.P8427639091839402045

/-! ## A153405.P6379003982827647985

`∑{d}[A153404(n+1), A344587(#)]`
-/

namespace A153405.P6379003982827647985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153405.P6379003982827647985

/-!
# A153407: Middle of 3 consecutive prime numbers such that p1*p2*p3+d1+d2+1=average of twin prime pairs, d1(delta)=p2-p1,d2(delta)=p3-p2.

The programs for A153407, there is no canonical definition to state claims against.
-/

/-! ## A153407.P4390287360348874873

`A151800(A153406(n+1))`
-/

namespace A153407.P4390287360348874873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153406 (n + 1)).toNat

end

end A153407.P4390287360348874873

/-! ## A153407.P12826660518652820942

`A065091(∑{d}[A153406(n+1), A000720(#)])`
-/

namespace A153407.P12826660518652820942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A153407.P12826660518652820942

/-! ## A153407.P15258189921949087469

`A000040(∑{d}[A153406(n+1), A000720(#)]+1)`
-/

namespace A153407.P15258189921949087469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 1).toNat

end

end A153407.P15258189921949087469

/-! ## A153407.P10126164658315446894

`∑{d}[A153406(n+1), A340071(#)]`
-/

namespace A153407.P10126164658315446894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153407.P10126164658315446894

/-!
# A153408: Largest of 3 consecutive prime numbers such that p1*p2*p3 + d1 + d2 + 1 = average of twin prime pairs, d1 (delta) = p2 - p1, d2 (delta) = p3 - p2.

The programs for A153408, there is no canonical definition to state claims against.
-/

/-! ## A153408.P5543714093447142839

`A151800(A153407(n+1))`
-/

namespace A153408.P5543714093447142839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153407 (n + 1)).toNat

end

end A153408.P5543714093447142839

/-! ## A153408.P12995781605233634835

`A151800(∑{p}[A153406(n+1), A151800(#)])`
-/

namespace A153408.P12995781605233634835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A153408.P12995781605233634835

/-! ## A153408.P16966979182892457009

`A000040(∑{d}[A153406(n+1), A000720(#)]+2)`
-/

namespace A153408.P16966979182892457009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 2).toNat

end

end A153408.P16966979182892457009

/-! ## A153408.P14806054160433704783

`∑{d}[A153407(n+1), A340071(#)]`
-/

namespace A153408.P14806054160433704783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153408.P14806054160433704783

/-! ## A153408.P3137074024392766392

`∑{d}[A153407(n+1), A344587(#)]`
-/

namespace A153408.P3137074024392766392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153408.P3137074024392766392

/-!
# A153409: Smallest of 3 consecutive prime numbers such that p1*p2*p3*d1*d2=average of twin prime pairs; p1,p2,p3 consecutive prime numbers; d1(delta)=p2-p1, d2(delta)=p3-p2.

The programs for A153409, there is no canonical definition to state claims against.
-/

/-! ## A153409.P18424207597404100727

`A079068(p?[A153410(n+1)])`
-/

namespace A153409.P18424207597404100727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A153409.P18424207597404100727

/-! ## A153409.P11720014782646245244

`A079068(or(1, A153410(n+1)))`
-/

namespace A153409.P11720014782646245244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (Int.lor 1 (A153410 (n + 1))).toNat

end

end A153409.P11720014782646245244

/-! ## A153409.P10396763324131995986

`A079068(∑{p}[A153410(n+1), #])`
-/

namespace A153409.P10396763324131995986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A153409.P10396763324131995986

/-!
# A153410: Middle of 3 consecutive prime numbers, p1, p2, p3, such that p1*p2*p3*d1*d2 = average of twin prime pairs; d1 (delta) = p2 - p1, d2 (delta) = p3 - p2.

The programs for A153410, there is no canonical definition to state claims against.
-/

/-! ## A153410.P13901326756533014171

`A151800(A153409(n+1))`
-/

namespace A153410.P13901326756533014171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153409 (n + 1)).toNat

end

end A153410.P13901326756533014171

/-! ## A153410.P10877452419273175703

`∑{d}[A153409(n+1), A340071(#)]`
-/

namespace A153410.P10877452419273175703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153410.P10877452419273175703

/-! ## A153410.P4795870550430702686

`∑{d}[A153409(n+1), A344587(#)]`
-/

namespace A153410.P4795870550430702686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153410.P4795870550430702686

/-! ## A153410.P7286233489077237010

`A079068(p?[A153411(n+1)])`
-/

namespace A153410.P7286233489077237010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A153410.P7286233489077237010

/-!
# A153411: Larger of 3 consecutive prime numbers such that p1*p2*p3*d1*d2=average of twin prime pairs; p1,p2,p3 consecutive prime numbers; d1(delta)=p2-p1, d2(delta)=p3-p2.

The programs for A153411, there is no canonical definition to state claims against.
-/

/-! ## A153411.P3549318872336930710

`A151800(A153410(n+1))`
-/

namespace A153411.P3549318872336930710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153410 (n + 1)).toNat

end

end A153411.P3549318872336930710

/-! ## A153411.P1111557222518324473

`A151800(∑{p}[A153409(n+1), A151800(#)])`
-/

namespace A153411.P1111557222518324473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A153411.P1111557222518324473

/-! ## A153411.P18335732875014412445

`∑{d}[A153410(n+1), A340071(#)]`
-/

namespace A153411.P18335732875014412445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153411.P18335732875014412445

/-! ## A153411.P2778849257585342094

`∑{d}[A153410(n+1), A344587(#)]`
-/

namespace A153411.P2778849257585342094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153411.P2778849257585342094

/-! ## A153411.P2061149445446954333

`A151800(∑{d}[A153409(n+1), A340071(#)])`
-/

namespace A153411.P2061149445446954333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d).toNat

end

end A153411.P2061149445446954333

/-!
# A153413: Smaller of twin prime pairs such that p1*p2+average_of_twin_prime_pair=prime.

The programs for A153413, there is no canonical definition to state claims against.
-/

/-! ## A153413.P15660234826444433923

`A154667(n+1)-1`
-/

namespace A153413.P15660234826444433923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154667 (n + 1) - 1

end

end A153413.P15660234826444433923

/-! ## A153413.P6035054552114377870

`A153414(n+1)-2`
-/

namespace A153413.P6035054552114377870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153414 (n + 1) - 2

end

end A153413.P6035054552114377870

/-! ## A153413.P15707466292520581435

`p?[A136241(n+1)-1]`
-/

namespace A153413.P15707466292520581435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136241 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153413.P15707466292520581435

/-! ## A153413.P11419896909971357577

`p?[A091567(n+1)-2]`
-/

namespace A153413.P11419896909971357577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091567 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153413.P11419896909971357577

/-! ## A153413.P38266308699144380

`p?[p?[A002328(n+1)]-2]`
-/

namespace A153413.P38266308699144380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153413.P38266308699144380

/-!
# A153414: Larger of twin prime pairs such that p1*p2+average_of_twin_prime_pair=prime.

The programs for A153414, there is no canonical definition to state claims against.
-/

/-! ## A153414.P5527137562793256946

`A154667(n+1)+1`
-/

namespace A153414.P5527137562793256946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154667 (n + 1) + 1

end

end A153414.P5527137562793256946

/-! ## A153414.P7267695679216801869

`∩[A001359(n+1), A180931(n+1)]+2`
-/

namespace A153414.P7267695679216801869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P7267695679216801869

/-! ## A153414.P9468689849038731277

`∩[A054799(n+1), A180931(n+1)]+2`
-/

namespace A153414.P9468689849038731277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P9468689849038731277

/-! ## A153414.P13506468568869714877

`∩[A063693(n+1), A180931(n+1)]+2`
-/

namespace A153414.P13506468568869714877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P13506468568869714877

/-! ## A153414.P12641145445605611793

`∩[A063700(n+1), A180931(n+1)]+2`
-/

namespace A153414.P12641145445605611793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P12641145445605611793

/-! ## A153414.P5094442728743025368

`∩[A073534(n+1), A180931(n+1)]+2`
-/

namespace A153414.P5094442728743025368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P5094442728743025368

/-! ## A153414.P10791203403209360471

`∩[A124588(n+1), A180931(n+1)]+2`
-/

namespace A153414.P10791203403209360471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P10791203403209360471

/-! ## A153414.P5969408047335841539

`∩[A180931(n+1), A181747(n+1)]+2`
-/

namespace A153414.P5969408047335841539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P5969408047335841539

/-! ## A153414.P16627441329721349502

`∩[A180931(n+1), A238528(n+1)]+2`
-/

namespace A153414.P16627441329721349502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P16627441329721349502

/-! ## A153414.P5406742108299051952

`∩[A180931(n+1), A280255(n+1)]+2`
-/

namespace A153414.P5406742108299051952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P5406742108299051952

/-! ## A153414.P1887608382293945679

`∩[A180931(n+1), A378983(n+1)]+2`
-/

namespace A153414.P1887608382293945679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P1887608382293945679

/-! ## A153414.P8819481831522894337

`∩[A180931(n+1), A280590(n+1)]+2`
-/

namespace A153414.P8819481831522894337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P8819481831522894337

/-! ## A153414.P3189625953023506526

`p?[A153590(n+1)+2]`
-/

namespace A153414.P3189625953023506526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153414.P3189625953023506526

/-! ## A153414.P2232677978130448347

`p?[A180931(n+1)+2]`
-/

namespace A153414.P2232677978130448347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153414.P2232677978130448347

/-! ## A153414.P4081680561532341775

`p?[ceil(sqrt(A180932(n+1)))]`
-/

namespace A153414.P4081680561532341775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A180932 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153414.P4081680561532341775

/-! ## A153414.P11268466281010628265

`∩[A001359(n+1), A153590(n+1)]+2`
-/

namespace A153414.P11268466281010628265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A153414.P11268466281010628265

/-! ## A153414.P8019159283985839439

`p?[p?[A002328(n+1)]-2]+2`
-/

namespace A153414.P8019159283985839439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A153414.P8019159283985839439

/-! ## A153414.P636096139713793403

`A151800(A154667(n+1))`
-/

namespace A153414.P636096139713793403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A154667 (n + 1)).toNat

end

end A153414.P636096139713793403

/-! ## A153414.P15902349022251996050

`record[A006530(A180931(n+1)+2)]`
-/

namespace A153414.P15902349022251996050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A180931 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153414.P15902349022251996050

/-! ## A153414.P7275409523578528790

`∩[A006512(n+1), A125236(n+1)]`
-/

namespace A153414.P7275409523578528790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153414.P7275409523578528790

/-!
# A153417: Primes p such that p+14 is also prime.

The programs for A153417, there is no canonical definition to state claims against.
-/

/-! ## A153417.P17613173017767802148

`A087697(n+1)-7`
-/

namespace A153417.P17613173017767802148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087697 (n + 1) - 7

end

end A153417.P17613173017767802148

/-! ## A153417.P15040543296920923987

`A140446(Δ[n²])`
-/

namespace A153417.P15040543296920923987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153417.P15040543296920923987

/-! ## A153417.P14077475929652017001

`p?[A140446(comp[2*n])]`
-/

namespace A153417.P14077475929652017001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P14077475929652017001

/-! ## A153417.P1636169946643927580

`record[A033999(n)*A140446(n+1)]`
-/

namespace A153417.P1636169946643927580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A140446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153417.P1636169946643927580

/-! ## A153417.P1676660974889832997

`A033999(2*n)*A140446(2*n+1)`
-/

namespace A153417.P1676660974889832997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A140446 (2 * n + 1)

end

end A153417.P1676660974889832997

/-! ## A153417.P9246272554307087348

`A001222(A140446(n+2))*A140446(2*n+1)`
-/

namespace A153417.P9246272554307087348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140446 (n + 2)).toNat * A140446 (2 * n + 1)

end

end A153417.P9246272554307087348

/-! ## A153417.P13626150263950576418

`p?[A055670(n+1)-15]`
-/

namespace A153417.P13626150263950576418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P13626150263950576418

/-! ## A153417.P18011423074026396431

`p?[A059456(n+1)-14]`
-/

namespace A153417.P18011423074026396431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P18011423074026396431

/-! ## A153417.P7342251044572100587

`p?[A086303(n+1)+1]`
-/

namespace A153417.P7342251044572100587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P7342251044572100587

/-! ## A153417.P3909667569678503097

`p?[A088967(n+1)-5]`
-/

namespace A153417.P3909667569678503097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P3909667569678503097

/-! ## A153417.P16674360985364434019

`p?[2*A089559(n+1)+1]`
-/

namespace A153417.P16674360985364434019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089559 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P16674360985364434019

/-! ## A153417.P7447384358855229374

`p?[2*A153081(n+1)-1]`
-/

namespace A153417.P7447384358855229374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153081 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P7447384358855229374

/-! ## A153417.P15320777882942245489

`p?[p?[2*n+1]-14]`
-/

namespace A153417.P15320777882942245489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P15320777882942245489

/-! ## A153417.P10217845425305555336

`p?[A086304(n+1)-8]`
-/

namespace A153417.P10217845425305555336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P10217845425305555336

/-! ## A153417.P12569538044030747294

`p?[A118538(n+1)-8]`
-/

namespace A153417.P12569538044030747294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P12569538044030747294

/-! ## A153417.P16573715485009738829

`p?[A172367(n+1)-10]`
-/

namespace A153417.P16573715485009738829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P16573715485009738829

/-! ## A153417.P16677038927847203622

`p?[A154115(n+1)-11]`
-/

namespace A153417.P16677038927847203622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P16677038927847203622

/-! ## A153417.P11677508518167189784

`p?[A045319(n+1)-14]`
-/

namespace A153417.P11677508518167189784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P11677508518167189784

/-! ## A153417.P2119651322188275839

`p?[A065091(n+1)-14]`
-/

namespace A153417.P2119651322188275839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P2119651322188275839

/-! ## A153417.P16938667145961340617

`p?[A048974(n+1)-16]`
-/

namespace A153417.P16938667145961340617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153417.P16938667145961340617

/-!
# A153418: Primes p such that p+18 is also prime.

The programs for A153418, there is no canonical definition to state claims against.
-/

/-! ## A153418.P15092222358414906189

`A087678(n+1)-9`
-/

namespace A153418.P15092222358414906189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087678 (n + 1) - 9

end

end A153418.P15092222358414906189

/-! ## A153418.P409803519939744816

`2*A088769(n+1)-9`
-/

namespace A153418.P409803519939744816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088769 (n + 1) - 9

end

end A153418.P409803519939744816

/-! ## A153418.P4634031015660521459

`p?[2*A153143(n+1)+1]`
-/

namespace A153418.P4634031015660521459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153143 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P4634031015660521459

/-! ## A153418.P16185123394895706751

`p?[2*A173059(n+1)-1]`
-/

namespace A153418.P16185123394895706751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173059 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P16185123394895706751

/-! ## A153418.P2478179138783687266

`p?[p?[2*n+1]-18]`
-/

namespace A153418.P2478179138783687266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P2478179138783687266

/-! ## A153418.P11475567387785361361

`p?[A040976(n+1)-16]`
-/

namespace A153418.P11475567387785361361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P11475567387785361361

/-! ## A153418.P18310164642731878013

`p?[A006093(n+1)-17]`
-/

namespace A153418.P18310164642731878013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P18310164642731878013

/-! ## A153418.P10552291595712033364

`p?[A000040(n+1)-18]`
-/

namespace A153418.P10552291595712033364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P10552291595712033364

/-! ## A153418.P14209726024042903777

`p?[A004273(A089559(n+1)-1)]`
-/

namespace A153418.P14209726024042903777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A089559 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P14209726024042903777

/-! ## A153418.P10053800534470537211

`A156328(Δ[n²])`
-/

namespace A153418.P10053800534470537211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153418.P10053800534470537211

/-! ## A153418.P7625857660413066048

`p?[A156328(2*n+1)]`
-/

namespace A153418.P7625857660413066048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153418.P7625857660413066048

/-! ## A153418.P8749552429267531652

`filter[A156328(2*n+1), A008966(#)]`
-/

namespace A153418.P8749552429267531652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A153418.P8749552429267531652

/-! ## A153418.P8744265578131453673

`filter[A156328(2*n+1), A010051(#)]`
-/

namespace A153418.P8744265578131453673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153418.P8744265578131453673

/-! ## A153418.P8270582288322176833

`filter[A156328(2*n+1), A014306(#)]`
-/

namespace A153418.P8270582288322176833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A153418.P8270582288322176833

/-! ## A153418.P4302842944764909982

`filter[A156328(2*n+1), A014578(#)]`
-/

namespace A153418.P4302842944764909982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A153418.P4302842944764909982

/-! ## A153418.P8656703597141992911

`filter[A156328(2*n+1), A035263(#)]`
-/

namespace A153418.P8656703597141992911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A153418.P8656703597141992911

/-! ## A153418.P7239221137871964233

`filter[A156328(2*n+1), A039982(#)]`
-/

namespace A153418.P7239221137871964233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A153418.P7239221137871964233

/-! ## A153418.P12479881987362397211

`filter[A156328(2*n+1), A049240(#)]`
-/

namespace A153418.P12479881987362397211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A153418.P12479881987362397211

/-! ## A153418.P7474081131953279161

`filter[A156328(2*n+1), A053867(#)]`
-/

namespace A153418.P7474081131953279161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A153418.P7474081131953279161

/-! ## A153418.P12748168472252146904

`filter[A156328(2*n+1), A066829(#)]`
-/

namespace A153418.P12748168472252146904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A153418.P12748168472252146904

/-!
# A153419: Primes p such that p+20 is also prime.

The programs for A153419, there is no canonical definition to state claims against.
-/

/-! ## A153419.P1968938706258475269

`A087683(n+1)-10`
-/

namespace A153419.P1968938706258475269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087683 (n + 1) - 10

end

end A153419.P1968938706258475269

/-! ## A153419.P3322196745600061951

`A272816(Δ[n²])`
-/

namespace A153419.P3322196745600061951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153419.P3322196745600061951

/-! ## A153419.P13089225383359406950

`p?[A272816(2*n+1)]`
-/

namespace A153419.P13089225383359406950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P13089225383359406950

/-! ## A153419.P8607056110879725416

`A272816(2*n+1)+char[A138438(2*n+5)]`
-/

namespace A153419.P8607056110879725416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138438 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153419.P8607056110879725416

/-! ## A153419.P8213706036840352317

`A272816(2*n+1)+char[A251983(3*n+5)]`
-/

namespace A153419.P8213706036840352317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153419.P8213706036840352317

/-! ## A153419.P3029538345448734517

`A272816(A000027(2*n+1))+A000007(3*n+1)`
-/

namespace A153419.P3029538345448734517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (A000027 (2 * n + 1)).toNat + A000007 (3 * n + 1)

end

end A153419.P3029538345448734517

/-! ## A153419.P2389583907491396807

`p?[2*A153143(n+1)-1]`
-/

namespace A153419.P2389583907491396807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153143 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P2389583907491396807

/-! ## A153419.P8922197779925423567

`p?[p?[2*n+1]-20]`
-/

namespace A153419.P8922197779925423567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P8922197779925423567

/-! ## A153419.P14512500040712853276

`p?[A065091(n+1)-20]`
-/

namespace A153419.P14512500040712853276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P14512500040712853276

/-! ## A153419.P15090858949481130962

`p?[A040976(n+1)-18]`
-/

namespace A153419.P15090858949481130962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P15090858949481130962

/-! ## A153419.P17755039634277085430

`p?[A006093(n+1)-19]`
-/

namespace A153419.P17755039634277085430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P17755039634277085430

/-! ## A153419.P8652118965809471445

`p?[A000040(n+1)-20]`
-/

namespace A153419.P8652118965809471445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P8652118965809471445

/-! ## A153419.P12320423948843856492

`p?[A008578(n+1)-20]`
-/

namespace A153419.P12320423948843856492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P12320423948843856492

/-! ## A153419.P4704417049316348844

`p?[A008864(n+1)-21]`
-/

namespace A153419.P4704417049316348844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153419.P4704417049316348844

/-! ## A153419.P12157745096266543195

`filter[A272816(2*n+1), A008966(#)]`
-/

namespace A153419.P12157745096266543195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A153419.P12157745096266543195

/-! ## A153419.P9447338536799659701

`filter[A272816(2*n+1), A010051(#)]`
-/

namespace A153419.P9447338536799659701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153419.P9447338536799659701

/-! ## A153419.P6244400403920137662

`filter[A272816(2*n+1), A066829(#)]`
-/

namespace A153419.P6244400403920137662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A153419.P6244400403920137662

/-! ## A153419.P10246013508680884817

`filter[A272816(2*n+1), A069513(#)]`
-/

namespace A153419.P10246013508680884817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A153419.P10246013508680884817

/-! ## A153419.P1964528115759637834

`filter[A272816(2*n+1), A011558(#)]`
-/

namespace A153419.P1964528115759637834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A153419.P1964528115759637834

/-! ## A153419.P9053447477638952794

`filter[A272816(2*n+1), A014306(#)]`
-/

namespace A153419.P9053447477638952794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A153419.P9053447477638952794

/-!
# A153422: Primes of the form k^2 + 15*k + 13.

The programs for A153422, the canonical program `A153422.P8580579969849460685` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153422 has offset 1).

The definition of A153422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153422.P8580579969849460685

`p?[∑[2*n]-43]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A153422

/-- `p?[∑[2*n]-43]` -/
def P8580579969849460685.Spec : Prop :=
  ∀ n, P8580579969849460685.a n = A153422 (n + 1)

theorem P8580579969849460685.correct : P8580579969849460685.Spec := by
  intro n
  simp only [A153422, Nat.add_sub_cancel]

end A153422

/-! ## A153422.P11149004955310319002

`or(1, p?[n²-43+n])`
-/

namespace A153422.P11149004955310319002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 43 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A153422.P11149004955310319002

namespace A153422

/-- `or(1, p?[n²-43+n])` -/
def P11149004955310319002.Spec : Prop :=
  ∀ n, P11149004955310319002.a n = A153422 (n + 1)

end A153422

/-! ## A153422.P13521461539099990444

`floor(p?[n²-43+n]+gcd(3, n)/5)`
-/

namespace A153422.P13521461539099990444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 43 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) + (Nat.gcd 3 n : ℚ) / 5⌋

end

end A153422.P13521461539099990444

namespace A153422

/-- `floor(p?[n²-43+n]+gcd(3, n)/5)` -/
def P13521461539099990444.Spec : Prop :=
  ∀ n, P13521461539099990444.a n = A153422 (n + 1)

end A153422

/-! ## A153422.P11316053414769158708

`p?[n²-43+n]*char[A004442(n)]`
-/

namespace A153422.P11316053414769158708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 43 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153422.P11316053414769158708

namespace A153422

/-- `p?[n²-43+n]*char[A004442(n)]` -/
def P11316053414769158708.Spec : Prop :=
  ∀ n, P11316053414769158708.a n = A153422 (n + 1)

end A153422

/-! ## A153422.P3438671254852989549

`p?[n²-43+n]%A006911(n+3)`
-/

namespace A153422.P3438671254852989549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 43 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A006911 (n + 3))

end

end A153422.P3438671254852989549

namespace A153422

/-- `p?[n²-43+n]%A006911(n+3)` -/
def P3438671254852989549.Spec : Prop :=
  ∀ n, P3438671254852989549.a n = A153422 (n + 1)

end A153422

/-! ## A153422.P16262321819075940703

`A000027(p?[A243138(n)])`
-/

namespace A153422.P16262321819075940703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A153422.P16262321819075940703

namespace A153422

/-- `A000027(p?[A243138(n)])` -/
def P16262321819075940703.Spec : Prop :=
  ∀ n, P16262321819075940703.a n = A153422 (n + 1)

end A153422

/-! ## A153422.P14836394710205245507

`∩[A045438(n+1), A243138(n)]`
-/

namespace A153422.P14836394710205245507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P14836394710205245507

namespace A153422

/-- `∩[A045438(n+1), A243138(n)]` -/
def P14836394710205245507.Spec : Prop :=
  ∀ n, (P14836394710205245507.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P11567666574432078122

`∩[A045448(n+1), A243138(n)]`
-/

namespace A153422.P11567666574432078122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P11567666574432078122

namespace A153422

/-- `∩[A045448(n+1), A243138(n)]` -/
def P11567666574432078122.Spec : Prop :=
  ∀ n, (P11567666574432078122.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P10580361197048656413

`∩[A042991(n+1), A243138(n)]`
-/

namespace A153422.P10580361197048656413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P10580361197048656413

namespace A153422

/-- `∩[A042991(n+1), A243138(n)]` -/
def P10580361197048656413.Spec : Prop :=
  ∀ n, (P10580361197048656413.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P3125073873286010718

`∩[A045327(n+1), A243138(n)]`
-/

namespace A153422.P3125073873286010718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P3125073873286010718

namespace A153422

/-- `∩[A045327(n+1), A243138(n)]` -/
def P3125073873286010718.Spec : Prop :=
  ∀ n, (P3125073873286010718.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P10529247168367846762

`∩[A040159(n+1), A243138(n)]`
-/

namespace A153422.P10529247168367846762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P10529247168367846762

namespace A153422

/-- `∩[A040159(n+1), A243138(n)]` -/
def P10529247168367846762.Spec : Prop :=
  ∀ n, (P10529247168367846762.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P6692029013928859787

`∩[A040161(n+1), A243138(n)]`
-/

namespace A153422.P6692029013928859787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P6692029013928859787

namespace A153422

/-- `∩[A040161(n+1), A243138(n)]` -/
def P6692029013928859787.Spec : Prop :=
  ∀ n, (P6692029013928859787.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P261009232852628530

`∩[A040165(n+1), A243138(n)]`
-/

namespace A153422.P261009232852628530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P261009232852628530

namespace A153422

/-- `∩[A040165(n+1), A243138(n)]` -/
def P261009232852628530.Spec : Prop :=
  ∀ n, (P261009232852628530.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P17494433248470596755

`∩[A040169(n+1), A243138(n)]`
-/

namespace A153422.P17494433248470596755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P17494433248470596755

namespace A153422

/-- `∩[A040169(n+1), A243138(n)]` -/
def P17494433248470596755.Spec : Prop :=
  ∀ n, (P17494433248470596755.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P1310244757907853497

`∩[A040171(n+1), A243138(n)]`
-/

namespace A153422.P1310244757907853497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P1310244757907853497

namespace A153422

/-- `∩[A040171(n+1), A243138(n)]` -/
def P1310244757907853497.Spec : Prop :=
  ∀ n, (P1310244757907853497.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P18434558600979298238

`∩[A040177(n+1), A243138(n)]`
-/

namespace A153422.P18434558600979298238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P18434558600979298238

namespace A153422

/-- `∩[A040177(n+1), A243138(n)]` -/
def P18434558600979298238.Spec : Prop :=
  ∀ n, (P18434558600979298238.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P16531471724169270176

`∩[A040179(n+1), A243138(n)]`
-/

namespace A153422.P16531471724169270176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P16531471724169270176

namespace A153422

/-- `∩[A040179(n+1), A243138(n)]` -/
def P16531471724169270176.Spec : Prop :=
  ∀ n, (P16531471724169270176.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P12759966998571481342

`∩[A040184(n+1), A243138(n)]`
-/

namespace A153422.P12759966998571481342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P12759966998571481342

namespace A153422

/-- `∩[A040184(n+1), A243138(n)]` -/
def P12759966998571481342.Spec : Prop :=
  ∀ n, (P12759966998571481342.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P195589646647248888

`∩[A040970(n+1), A243138(n)]`
-/

namespace A153422.P195589646647248888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P195589646647248888

namespace A153422

/-- `∩[A040970(n+1), A243138(n)]` -/
def P195589646647248888.Spec : Prop :=
  ∀ n, (P195589646647248888.a n : ℤ) = A153422 (n + 1)

end A153422

/-! ## A153422.P11533043314457814772

`∩[A040972(n+1), A243138(n)]`
-/

namespace A153422.P11533043314457814772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153422.P11533043314457814772

namespace A153422

/-- `∩[A040972(n+1), A243138(n)]` -/
def P11533043314457814772.Spec : Prop :=
  ∀ n, (P11533043314457814772.a n : ℤ) = A153422 (n + 1)

end A153422

/-!
# A153423: Primes of the form k^2 + 9*k + 241.

The programs for A153423, there is no canonical definition to state claims against.
-/

/-! ## A153423.P1790918868799720027

`A153424(n+4)`
-/

namespace A153423.P1790918868799720027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153424 (n + 4)

end

end A153423.P1790918868799720027

/-! ## A153423.P9829917370128145818

`record[A153424(A188134(A008574(n)))]`
-/

namespace A153423.P9829917370128145818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153424 (A188134 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153423.P9829917370128145818

/-! ## A153423.P13627933447655260473

`p?[∑[a(n-1)+2]]` with `a(0)=241, a(1)=10`
-/

namespace A153423.P13627933447655260473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [241, 10] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A153423.P13627933447655260473

/-! ## A153423.P4311301228317498537

`p?[A153424(A001057(A020742(n)))]`
-/

namespace A153423.P4311301228317498537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153424 (A001057 (A020742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153423.P4311301228317498537

/-!
# A153424: Primes of the form k^2+3*k+223.

The programs for A153424, there is no canonical definition to state claims against.
-/

/-! ## A153424.P18393117667471717699

`A250521(A287378(n))+A028387(n)`
-/

namespace A153424.P18393117667471717699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250521 (A287378 n).toNat + A028387 n

end

end A153424.P18393117667471717699

/-! ## A153424.P13489837437702114900

`A028387(n)+A007947(A128675(n+1))`
-/

namespace A153424.P13489837437702114900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + A007947 (A128675 (n + 1)).toNat

end

end A153424.P13489837437702114900

/-!
# A153426: a(n) = (n+1)! mod prime(n).

The programs for A153426, there is no canonical definition to state claims against.
-/

/-! ## A153426.P8120840812002070871

`(n+2)!%Δ[A007504(n)]`
-/

namespace A153426.P8120840812002070871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 2) : ℤ) (f1 (n + 1) - f1 n)

end

end A153426.P8120840812002070871

/-! ## A153426.P7388208192162974086

`∏[n+2]%A000040(n+1)`
-/

namespace A153426.P7388208192162974086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000040 (n + 1))

end

end A153426.P7388208192162974086

/-! ## A153426.P11832798988438111363

`A000142(n+2)%p?[ceil(2/acot(n))]`
-/

namespace A153426.P11832798988438111363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A153426.P11832798988438111363

/-! ## A153426.P16471904967390156396

`∏[a(n-1)+1]%record[A006530(n+2)]` with `a(0)=2`
-/

namespace A153426.P16471904967390156396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A153426.P16471904967390156396

/-! ## A153426.P9188650763121231794

`∏[abs(2*n+1-n)+1]%record[A014963(n+2)]`
-/

namespace A153426.P9188650763121231794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (n : ℤ)| + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A153426.P9188650763121231794

/-!
# A153429: Numbers k such that k! is equal to the sum of two consecutive primes.

The programs for A153429, there is no canonical definition to state claims against.
-/

/-! ## A153429.P6961880603399572731

`A201739(A215279(n+1))`
-/

namespace A153429.P6961880603399572731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201739 (A215279 (n + 1)).toNat

end

end A153429.P6961880603399572731

/-!
# A153435: Numbers with 2n binary digits where every run length is 2, written in binary.

The programs for A153435, there is no canonical definition to state claims against.
-/

/-! ## A153435.P7208090326025038019

`A259661(Δ[n²])`
-/

namespace A153435.P7208090326025038019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153435.P7208090326025038019

/-! ## A153435.P5480459224256979182

`record[A259661(xor(1, n))]`
-/

namespace A153435.P5480459224256979182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259661 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153435.P5480459224256979182

/-! ## A153435.P6061938827924563422

`11*A281214(2*n)`
-/

namespace A153435.P6061938827924563422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A281214 (2 * n)

end

end A153435.P6061938827924563422

/-! ## A153435.P11380053690001919860

`A319424(∑[A008619(n)])`
-/

namespace A153435.P11380053690001919860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153435.P11380053690001919860

/-! ## A153435.P7996521662958555743

`record[A259661(A089598(n))]`
-/

namespace A153435.P7996521662958555743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259661 (A089598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153435.P7996521662958555743

/-! ## A153435.P11187094951821626240

`or(8, A259661(A005408(n)))`
-/

namespace A153435.P11187094951821626240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A259661 (A005408 n).toNat)

end

end A153435.P11187094951821626240

/-! ## A153435.P10007110159071634226

`record[A259661(abs(A097062(n)))]`
-/

namespace A153435.P10007110159071634226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259661 |A097062 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153435.P10007110159071634226

/-! ## A153435.P11931667542451000292

`A319424(∑[∑[A059841(n)]])`
-/

namespace A153435.P11931667542451000292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153435.P11931667542451000292

/-! ## A153435.P12155906825680032690

`A259661(2*n+1)+A056594(2*n+1)`
-/

namespace A153435.P12155906825680032690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259661 (2 * n + 1) + A056594 (2 * n + 1)

end

end A153435.P12155906825680032690

/-! ## A153435.P6742062377116617809

`A319424(∑[A318921(A320038(n+2))])`
-/

namespace A153435.P6742062377116617809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A320038 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153435.P6742062377116617809

/-!
# A153438: Least k > 1 such that k^(3^n)*(k^(3^n)+1) + 1 is prime.

The programs for A153438, there is no canonical definition to state claims against.
-/

/-! ## A153438.P15579318127301180364

`A085398(3^(n+1))`
-/

namespace A153438.P15579318127301180364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (3 ^ (n + 1))

end

end A153438.P15579318127301180364

/-! ## A153438.P1826505528780406975

`A085398(A000244(n+1))%A041716(n)`
-/

namespace A153438.P1826505528780406975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085398 (A000244 (n + 1)).toNat) (A041716 n)

end

end A153438.P1826505528780406975

/-! ## A153438.P14740229067899405308

`A037306(n+1)*A085398(A000244(n+1))`
-/

namespace A153438.P14740229067899405308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (n + 1) * A085398 (A000244 (n + 1)).toNat

end

end A153438.P14740229067899405308

/-!
# A153441: Numbers k such that k^27*(k^27+1)+1 is prime.

The programs for A153441, there is no canonical definition to state claims against.
-/

/-! ## A153441.P16532904959468255748

`A276147(2*n+1)*A347777(A022105(n))`
-/

namespace A153441.P16532904959468255748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (2 * n + 1) * A347777 (A022105 n).toNat

end

end A153441.P16532904959468255748

/-!
# A153443: Aurifeuillian primes of the form 2^k+1.

The programs for A153443, there is no canonical definition to state claims against.
-/

/-! ## A153443.P17636384376396968626

`∩[A153601(n+1), A393641(n+1)]`
-/

namespace A153443.P17636384376396968626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153443.P17636384376396968626

/-! ## A153443.P12546478146515387375

`∩[A153602(n+1), A393641(n+1)]`
-/

namespace A153443.P12546478146515387375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153443.P12546478146515387375

/-! ## A153443.P18359439706556110894

`filter[A153602(n+1), A305994(#)]`
-/

namespace A153443.P18359439706556110894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A153443.P18359439706556110894

/-! ## A153443.P12365110692913453672

`∩[A206864(n+1), A393641(n+1)]`
-/

namespace A153443.P12365110692913453672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153443.P12365110692913453672

/-! ## A153443.P10505909819994755892

`∩[A206942(n+1), A393641(n+1)]`
-/

namespace A153443.P10505909819994755892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153443.P10505909819994755892

/-!
# A153446: Terms in A046034 which are pairwise products of terms in A046034.

The programs for A153446, there is no canonical definition to state claims against.
-/

/-! ## A153446.P4841108191937875499

`∩[A061371(n+1), A185867(n+1)]`
-/

namespace A153446.P4841108191937875499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153446.P4841108191937875499

/-!
# A153448: 3 times 12-gonal (or dodecagonal) numbers: a(n) = 3*n*(5*n-4).

The programs for A153448, the canonical program `A153448.P2421589460322655268` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153448 has offset 0).

The definition of A153448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153448.P2421589460322655268

`15*n²-12*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A153448

/-- `15*n²-12*n` -/
def P2421589460322655268.Spec : Prop :=
  ∀ n, P2421589460322655268.a n = A153448 n

theorem P2421589460322655268.correct : P2421589460322655268.Spec := by
  intro n
  simp only [A153448]

end A153448

/-! ## A153448.P15614147052067830308

`A051624(n)*3`
-/

namespace A153448.P15614147052067830308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n * 3

end

end A153448.P15614147052067830308

namespace A153448

/-- `A051624(n)*3` -/
def P15614147052067830308.Spec : Prop :=
  ∀ n, P15614147052067830308.a n = A153448 n

end A153448

/-! ## A153448.P9716913059908056650

`∑[a(n-1)+30]` with `a(0)=0, a(1)=3`
-/

namespace A153448.P9716913059908056650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153448.P9716913059908056650

namespace A153448

/-- `∑[a(n-1)+30]` -/
def P9716913059908056650.Spec : Prop :=
  ∀ n, (P9716913059908056650.a n : ℤ) = A153448 n

end A153448

/-! ## A153448.P4095296045277920139

`3*(A190816(n)-1)`
-/

namespace A153448.P4095296045277920139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A190816 n - 1)

end

end A153448.P4095296045277920139

namespace A153448

/-- `3*(A190816(n)-1)` -/
def P4095296045277920139.Spec : Prop :=
  ∀ n, P4095296045277920139.a n = A153448 n

end A153448

/-! ## A153448.P6963553532888719342

`3/2*A152965(n)`
-/

namespace A153448.P6963553532888719342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A152965 n : ℚ)

end

end A153448.P6963553532888719342

namespace A153448

/-- `3/2*A152965(n)` -/
def P6963553532888719342.Spec : Prop :=
  ∀ n, P6963553532888719342.a n = (A153448 n : ℚ)

end A153448

/-! ## A153448.P1557892180082055316

`3*(A135706(n)-n)`
-/

namespace A153448.P1557892180082055316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A135706 n - (n : ℤ))

end

end A153448.P1557892180082055316

namespace A153448

/-- `3*(A135706(n)-n)` -/
def P1557892180082055316.Spec : Prop :=
  ∀ n, P1557892180082055316.a n = A153448 n

end A153448

/-! ## A153448.P10980554332534148068

`n*(A170837(n+1)-(n+1))`
-/

namespace A153448.P10980554332534148068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A170837 (n + 1) - (n + 1 : ℤ))

end

end A153448.P10980554332534148068

namespace A153448

/-- `n*(A170837(n+1)-(n+1))` -/
def P10980554332534148068.Spec : Prop :=
  ∀ n, P10980554332534148068.a n = A153448 n

end A153448

/-!
# A153449: 11 times pentagonal numbers: 11*n*(3n-1)/2.

The programs for A153449, the canonical program `A153449.P17548089329346926644` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153449 has offset 0).

The definition of A153449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153449.P5147476871210923382

`(33*n²-11*n)/2`
-/

namespace A153449.P5147476871210923382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((33 * n ^ 2 : ℤ) - (11 * n : ℤ) : ℚ) / 2

end

end A153449.P5147476871210923382

namespace A153449

/-- `(33*n²-11*n)/2` -/
def P5147476871210923382.Spec : Prop :=
  ∀ n, P5147476871210923382.a n = (A153449 n : ℚ)

theorem P5147476871210923382.correct : P5147476871210923382.Spec := by
  intro n
  induction n with
  | zero => simp [A153449, A153449.P5147476871210923382.a, A153449.P17548089329346926644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153449, Nat.add_sub_cancel, A153449.P5147476871210923382.a, A153449.P17548089329346926644.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153449

/-! ## A153449.P17548089329346926644

`33*n+a(n-1)-22` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A153449

/-- `33*n+a(n-1)-22` -/
def P17548089329346926644.Spec : Prop :=
  ∀ n, P17548089329346926644.a n = A153449 n

theorem P17548089329346926644.correct : P17548089329346926644.Spec := by
  intro n
  simp only [A153449]

end A153449

/-! ## A153449.P8130091279680819390

`A000326(n)*11`
-/

namespace A153449.P8130091279680819390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n * 11

end

end A153449.P8130091279680819390

namespace A153449

/-- `A000326(n)*11` -/
def P8130091279680819390.Spec : Prop :=
  ∀ n, P8130091279680819390.a n = A153449 n

end A153449

/-! ## A153449.P13034720874120377815

`11*(C(n, 2)+n²)`
-/

namespace A153449.P13034720874120377815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (Nat.choose n 2 + n ^ 2)

end

end A153449.P13034720874120377815

namespace A153449

/-- `11*(C(n, 2)+n²)` -/
def P13034720874120377815.Spec : Prop :=
  ∀ n, (P13034720874120377815.a n : ℤ) = A153449 n

end A153449

/-! ## A153449.P12434337593080826408

`∑[a(n-1)+33]` with `a(0)=0, a(1)=11`
-/

namespace A153449.P12434337593080826408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153449.P12434337593080826408

namespace A153449

/-- `∑[a(n-1)+33]` -/
def P12434337593080826408.Spec : Prop :=
  ∀ n, (P12434337593080826408.a n : ℤ) = A153449 n

end A153449

/-! ## A153449.P2701007583247818548

`11*(3*C(n, 2)+n)`
-/

namespace A153449.P2701007583247818548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (3 * Nat.choose n 2 + n)

end

end A153449.P2701007583247818548

namespace A153449

/-- `11*(3*C(n, 2)+n)` -/
def P2701007583247818548.Spec : Prop :=
  ∀ n, (P2701007583247818548.a n : ℤ) = A153449 n

end A153449

/-! ## A153449.P16905040783413897497

`Δ[(n-1)*11*C(n, 2)]`
-/

namespace A153449.P16905040783413897497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (11 * Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153449.P16905040783413897497

namespace A153449

/-- `Δ[(n-1)*11*C(n, 2)]` -/
def P16905040783413897497.Spec : Prop :=
  ∀ n, P16905040783413897497.a n = A153449 n

end A153449

/-! ## A153449.P7260106879421262442

`A028994(n)+∑[n]`
-/

namespace A153449.P7260106879421262442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153449.P7260106879421262442

namespace A153449

/-- `A028994(n)+∑[n]` -/
def P7260106879421262442.Spec : Prop :=
  ∀ n, P7260106879421262442.a n = A153449 n

end A153449

/-! ## A153449.P3884014450743517754

`∑[n]+2*A139273(n)`
-/

namespace A153449.P3884014450743517754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A139273 n

end

end A153449.P3884014450743517754

namespace A153449

/-- `∑[n]+2*A139273(n)` -/
def P3884014450743517754.Spec : Prop :=
  ∀ n, P3884014450743517754.a n = A153449 n

end A153449

/-! ## A153449.P14562559510175883555

`∑[n]+n*A113770(n)`
-/

namespace A153449.P14562559510175883555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * A113770 n

end

end A153449.P14562559510175883555

namespace A153449

/-- `∑[n]+n*A113770(n)` -/
def P14562559510175883555.Spec : Prop :=
  ∀ n, P14562559510175883555.a n = A153449 n

end A153449

/-! ## A153449.P13198720711133920745

`A143856(n+1)+∑[n-1]`
-/

namespace A153449.P13198720711133920745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143856 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153449.P13198720711133920745

namespace A153449

/-- `A143856(n+1)+∑[n-1]` -/
def P13198720711133920745.Spec : Prop :=
  ∀ n, P13198720711133920745.a n = A153449 n

end A153449

/-! ## A153449.P3196555026546231412

`∑[n]+2*n*or(1, A086570(n))`
-/

namespace A153449.P3196555026546231412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 * n : ℤ) * Int.lor 1 (A086570 n)

end

end A153449.P3196555026546231412

namespace A153449

/-- `∑[n]+2*n*or(1, A086570(n))` -/
def P3196555026546231412.Spec : Prop :=
  ∀ n, P3196555026546231412.a n = A153449 n

end A153449

/-! ## A153449.P3034328488257323259

`A051866(n)+A022278(n)`
-/

namespace A153449.P3034328488257323259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A022278 n

end

end A153449.P3034328488257323259

namespace A153449

/-- `A051866(n)+A022278(n)` -/
def P3034328488257323259.Spec : Prop :=
  ∀ n, P3034328488257323259.a n = A153449 n

end A153449

/-! ## A153449.P3161285275389828153

`A051868(n)+A022277(n)`
-/

namespace A153449.P3161285275389828153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A022277 n

end

end A153449.P3161285275389828153

namespace A153449

/-- `A051868(n)+A022277(n)` -/
def P3161285275389828153.Spec : Prop :=
  ∀ n, P3161285275389828153.a n = A153449 n

end A153449

/-! ## A153449.P10864254425354474033

`A062741(n)+A014642(n)`
-/

namespace A153449.P10864254425354474033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + A014642 n

end

end A153449.P10864254425354474033

namespace A153449

/-- `A062741(n)+A014642(n)` -/
def P10864254425354474033.Spec : Prop :=
  ∀ n, P10864254425354474033.a n = A153449 n

end A153449

/-! ## A153449.P12561385998955676836

`A051867(n)+A033583(n)`
-/

namespace A153449.P12561385998955676836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + A033583 n

end

end A153449.P12561385998955676836

namespace A153449

/-- `A051867(n)+A033583(n)` -/
def P12561385998955676836.Spec : Prop :=
  ∀ n, P12561385998955676836.a n = A153449 n

end A153449

/-! ## A153449.P3224839005082665094

`A051871(n)+A033585(n)`
-/

namespace A153449.P3224839005082665094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + A033585 n

end

end A153449.P3224839005082665094

namespace A153449

/-- `A051871(n)+A033585(n)` -/
def P3224839005082665094.Spec : Prop :=
  ∀ n, P3224839005082665094.a n = A153449 n

end A153449

/-! ## A153449.P16223771095977336544

`A062783(n)+A062708(n)`
-/

namespace A153449.P16223771095977336544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + A062708 n

end

end A153449.P16223771095977336544

namespace A153449

/-- `A062783(n)+A062708(n)` -/
def P16223771095977336544.Spec : Prop :=
  ∀ n, P16223771095977336544.a n = A153449 n

end A153449

/-! ## A153449.P5103806239389944479

`A098923(n)+A028569(n)`
-/

namespace A153449.P5103806239389944479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098923 n + A028569 n

end

end A153449.P5103806239389944479

namespace A153449

/-- `A098923(n)+A028569(n)` -/
def P5103806239389944479.Spec : Prop :=
  ∀ n, P5103806239389944479.a n = A153449 n

end A153449

/-! ## A153449.P15632035824625654539

`A153780(n)+A000326(n)`
-/

namespace A153449.P15632035824625654539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n + A000326 n

end

end A153449.P15632035824625654539

namespace A153449

/-- `A153780(n)+A000326(n)` -/
def P15632035824625654539.Spec : Prop :=
  ∀ n, P15632035824625654539.a n = A153449 n

end A153449

/-!
# A153450: Number of primes <= 2^(2^n) = pi(A001146(n)).

The programs for A153450, the canonical program `A153450.P11237216334743077294` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153450 has offset 0).

The definition of A153450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153450.P11237216334743077294

`A007053(2^n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153450

/-- `A007053(2^n)` -/
def P11237216334743077294.Spec : Prop :=
  ∀ n, P11237216334743077294.a n = A153450 n

theorem P11237216334743077294.correct : P11237216334743077294.Spec := by
  intro n
  simp only [A153450]

end A153450

/-! ## A153450.P7542643518395221711

`record[A007053(A001316(n))]`
-/

namespace A153450.P7542643518395221711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153450.P7542643518395221711

namespace A153450

/-- `record[A007053(A001316(n))]` -/
def P7542643518395221711.Spec : Prop :=
  ∀ n, P7542643518395221711.a n = A153450 n

end A153450

/-! ## A153450.P10531059932064435368

`record[A007053(A077957(n))]`
-/

namespace A153450.P10531059932064435368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A077957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153450.P10531059932064435368

namespace A153450

/-- `record[A007053(A077957(n))]` -/
def P10531059932064435368.Spec : Prop :=
  ∀ n, P10531059932064435368.a n = A153450 n

end A153450

/-!
# A153452: a(1) = 1; if n > 1, then a(n) = Sum_{prime q |n} a(n*q' /q), where q' = prevprime(q) for q>2 and 2' = 1.

The programs for A153452, there is no canonical definition to state claims against.
-/

/-! ## A153452.P7723421941431350398

`abs(Δ[A153730(A000038(n)+n)])`
-/

namespace A153452.P7723421941431350398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153730 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A153452.P7723421941431350398

/-! ## A153452.P7283993616747925144

`A000007(n)+Δ[A153730(A028310(n))]`
-/

namespace A153452.P7283993616747925144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153730 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A153452.P7283993616747925144

/-! ## A153452.P542649144425186546

`A000007(n)+Δ[A153730(A000007(n)+n)]`
-/

namespace A153452.P542649144425186546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153730 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A153452.P542649144425186546

/-! ## A153452.P11863824095610617199

`A153730(n+1)+A000007(n)-A153730(A028310(n))`
-/

namespace A153452.P11863824095610617199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153730 (n + 1) + (A000007 n - A153730 (A028310 n).toNat)

end

end A153452.P11863824095610617199

/-! ## A153452.P10296078576201519389

`A028310(Δ[A153730(A028310(n))])`
-/

namespace A153452.P10296078576201519389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153730 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A153452.P10296078576201519389

/-! ## A153452.P10739262886808527270

`Δ[A153730(A000038(a(n-1)+1)+n)]` with `a(0)=0`
-/

namespace A153452.P10739262886808527270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A153730 (A000038 (f1 (n - 1) + 1).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153452.P10739262886808527270

/-! ## A153452.P13945212857150660609

`A153734(A215501(n+1)-1)`
-/

namespace A153452.P13945212857150660609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153734 (A215501 (n + 1) - 1).toNat

end

end A153452.P13945212857150660609

/-! ## A153452.P1860010050810160400

`A290252(gcd(A049084(n+1), A156552(n+1)))`
-/

namespace A153452.P1860010050810160400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (Int.gcd (A049084 (n + 1)) (A156552 (n + 1)))

end

end A153452.P1860010050810160400

/-! ## A153452.P297352702542066136

`A290252(A156552(n+1)%A299925(n+1))`
-/

namespace A153452.P297352702542066136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (Int.tmod (A156552 (n + 1)) (A299925 (n + 1))).toNat

end

end A153452.P297352702542066136

/-!
# A153453: a(n) = letters(n) + a(n-1); a(0) = 0 in Spanish.

The programs for A153453, there is no canonical definition to state claims against.
-/

/-! ## A153453.P6804319518942552310

`∑[A011762(n)]-4`
-/

namespace A153453.P6804319518942552310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A153453.P6804319518942552310

/-! ## A153453.P6602021288265748694

`∑[A011762(n)*A057427(n)]`
-/

namespace A153453.P6602021288265748694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153453.P6602021288265748694

/-! ## A153453.P15738675395472457375

`∑[A011762(n)%A004009(n)]`
-/

namespace A153453.P15738675395472457375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011762 n) (A004009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153453.P15738675395472457375

/-! ## A153453.P4596948299626948491

`A011762(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A153453.P4596948299626948491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A011762 n + a (A023443 n).toNat

end

end A153453.P4596948299626948491

/-! ## A153453.P5629544172819250133

`∑[and(1, A000040(n+1))*A011762(n)]`
-/

namespace A153453.P5629544172819250133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A011762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153453.P5629544172819250133

/-! ## A153453.P3806043164566644927

`∑[--A011762(n)%A000290(n+1)]`
-/

namespace A153453.P3806043164566644927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A011762 n) (A000290 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153453.P3806043164566644927

/-! ## A153453.P10754657535981520981

`A011762(n)-(A000007(n)-a(n-1))` with `a(0)=0`
-/

namespace A153453.P10754657535981520981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A011762 n - (A000007 n - a (n - 1))

end

end A153453.P10754657535981520981

/-!
# A153454: Decimal expansion of log_20 (5).

The programs for A153454, there is no canonical definition to state claims against.
-/

/-! ## A153454.P1586453675613723533

`9-A153124(n)`
-/

namespace A153454.P1586453675613723533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153124 n

end

end A153454.P1586453675613723533

/-!
# A153459: Decimal expansion of log_3 (6).

The programs for A153459, there is no canonical definition to state claims against.
-/

/-! ## A153459.P7048002244962900012

`A152549(n)-A000007(n)`
-/

namespace A153459.P7048002244962900012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152549 (n + 1) - A000007 n

end

end A153459.P7048002244962900012

/-! ## A153459.P6641339038036325655

`A152549(n)/A054977(n)`
-/

namespace A153459.P6641339038036325655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152549 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A153459.P6641339038036325655

/-! ## A153459.P10530690422953608836

`A152549(n)/A141044(n+1)`
-/

namespace A153459.P10530690422953608836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152549 (n + 1) : ℚ) / (A141044 (n + 1) : ℚ)

end

end A153459.P10530690422953608836

/-! ## A153459.P15279634086527495620

`A152549(n)/gcd(n, A141044(n))`
-/

namespace A153459.P15279634086527495620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152549 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A141044 n) : ℚ)

end

end A153459.P15279634086527495620

/-! ## A153459.P5980359390464263141

`gcd(log2(A141044(2*n+1)), A152549(n))`
-/

namespace A153459.P5980359390464263141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 (A141044 (2 * n + 1) : ℝ))) (A152549 (n + 1))

end

end A153459.P5980359390464263141

/-! ## A153459.P15381404114406627939

`A152549(n)-A008683(A008574(n))`
-/

namespace A153459.P15381404114406627939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152549 (n + 1) - A008683 (A008574 n).toNat

end

end A153459.P15381404114406627939

/-! ## A153459.P18350131360115432236

`A152549(n)+A008683(2*A008574(n))`
-/

namespace A153459.P18350131360115432236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152549 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A153459.P18350131360115432236

/-!
# A153460: Decimal expansion of log_4 (6).

The programs for A153460, there is no canonical definition to state claims against.
-/

/-! ## A153460.P9269404874317781279

`A154197(2*char[1]+n)`
-/

namespace A153460.P9269404874317781279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154197 (2 * (if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A153460.P9269404874317781279

/-! ## A153460.P13298839615446654521

`A155936(n)+a(n-1)-A008554(a(n-1)+1)` with `a(0)=1`
-/

namespace A153460.P13298839615446654521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155936 (n + 1) + a (n - 1) - A008554 (a (n - 1) + 1).toNat

end

end A153460.P13298839615446654521

/-! ## A153460.P12451617017809401368

`A327500(A006530(n+1))+A155936(n)-1`
-/

namespace A153460.P12451617017809401368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A006530 (n + 1)).toNat + (A155936 (n + 1) - 1)

end

end A153460.P12451617017809401368

/-!
# A153462: Triangle read by rows, = A000931(n-k+3) * (A000073 * 0^(n-k)).

The programs for A153462, there is no canonical definition to state claims against.
-/

/-! ## A153462.P10119406509249789659

`A090001(A111549(n+1))`
-/

namespace A153462.P10119406509249789659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A111549 (n + 1)).toNat

end

end A153462.P10119406509249789659

/-! ## A153462.P17622408844197428758

`A178487(lcm(A093768(n), A281446(n+2)))`
-/

namespace A153462.P17622408844197428758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (Int.lcm (A093768 n) (A281446 (n + 2)))

end

end A153462.P17622408844197428758

/-! ## A153462.P17965052725896584946

`A185284(2*n+1)+A000931(A099375(n+1))`
-/

namespace A153462.P17965052725896584946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A000931 (A099375 (n + 1)).toNat

end

end A153462.P17965052725896584946

/-! ## A153462.P1948896479635689113

`abs(A111941(n+1)%A196380(3*n+2))`
-/

namespace A153462.P1948896479635689113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A111941 (n + 1)) (A196380 (3 * n + 2))|

end

end A153462.P1948896479635689113

/-! ## A153462.P2990092099502578512

`A005251(A025581(n+1)%A358885(2*(n+2)))`
-/

namespace A153462.P2990092099502578512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (Int.tmod (A025581 (n + 1)) (A358885 (2 * (n + 2)))).toNat

end

end A153462.P2990092099502578512

/-!
# A153464: Numbers k such that 4*k+9 is not prime.

The programs for A153464, the canonical program `A153464.P11627895847707691394` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153464 has offset 1).

The definition of A153464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153464.P1796761187570620993

`comp[A111199(n+1)]`
-/

namespace A153464.P1796761187570620993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153464.P1796761187570620993

namespace A153464

/-- `comp[A111199(n+1)]` -/
def P1796761187570620993.Spec : Prop :=
  ∀ n, (P1796761187570620993.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P11627895847707691394

`A153085(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153464

/-- `A153085(n+1)-1` -/
def P11627895847707691394.Spec : Prop :=
  ∀ n, P11627895847707691394.a n = A153464 (n + 1)

theorem P11627895847707691394.correct : P11627895847707691394.Spec := by
  intro n
  simp only [A153464, Nat.add_sub_cancel]

end A153464

/-! ## A153464.P1699806346982584588

`comp[A111215(n+1)-1]`
-/

namespace A153464.P1699806346982584588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153464.P1699806346982584588

namespace A153464

/-- `comp[A111215(n+1)-1]` -/
def P1699806346982584588.Spec : Prop :=
  ∀ n, (P1699806346982584588.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P2871591053855894037

`comp[A005098(n+1)-2]`
-/

namespace A153464.P2871591053855894037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153464.P2871591053855894037

namespace A153464

/-- `comp[A005098(n+1)-2]` -/
def P2871591053855894037.Spec : Prop :=
  ∀ n, (P2871591053855894037.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P4728306621356202133

`lt[1, A340101(2*n)]-2`
-/

namespace A153464.P4728306621356202133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A153464.P4728306621356202133

namespace A153464

/-- `lt[1, A340101(2*n)]-2` -/
def P4728306621356202133.Spec : Prop :=
  ∀ n, P4728306621356202133.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P18165309083579585428

`lt[2, A237053(2*n)]-2`
-/

namespace A153464.P18165309083579585428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A153464.P18165309083579585428

namespace A153464

/-- `lt[2, A237053(2*n)]-2` -/
def P18165309083579585428.Spec : Prop :=
  ∀ n, P18165309083579585428.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P7538650203024915603

`lt[1, A001222(4*n+9)]`
-/

namespace A153464.P7538650203024915603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153464.P7538650203024915603

namespace A153464

/-- `lt[1, A001222(4*n+9)]` -/
def P7538650203024915603.Spec : Prop :=
  ∀ n, (P7538650203024915603.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P18308886944855854263

`lt[2, A000005(4*n+9)]`
-/

namespace A153464.P18308886944855854263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153464.P18308886944855854263

namespace A153464

/-- `lt[2, A000005(4*n+9)]` -/
def P18308886944855854263.Spec : Prop :=
  ∀ n, (P18308886944855854263.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P10061867229975810962

`lt[A006530(4*n+9), 4*n+9]`
-/

namespace A153464.P10061867229975810962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153464.P10061867229975810962

namespace A153464

/-- `lt[A006530(4*n+9), 4*n+9]` -/
def P10061867229975810962.Spec : Prop :=
  ∀ n, (P10061867229975810962.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P12553788323082261904

`A045751(n+2)-2`
-/

namespace A153464.P12553788323082261904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 2) - 2

end

end A153464.P12553788323082261904

namespace A153464

/-- `A045751(n+2)-2` -/
def P12553788323082261904.Spec : Prop :=
  ∀ n, P12553788323082261904.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P12629888148026363227

`lt[4, ∏{e}[8*n+18, #+1]]`
-/

namespace A153464.P12629888148026363227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 18

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153464.P12629888148026363227

namespace A153464

/-- `lt[4, ∏{e}[8*n+18, #+1]]` -/
def P12629888148026363227.Spec : Prop :=
  ∀ n, (P12629888148026363227.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P14496499566550890942

`eq[1, A260821(n+2)]`
-/

namespace A153464.P14496499566550890942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260821 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153464.P14496499566550890942

namespace A153464

/-- `eq[1, A260821(n+2)]` -/
def P14496499566550890942.Spec : Prop :=
  ∀ n, (P14496499566550890942.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P16985175478332912961

`lt[1, A037039(n+2)]`
-/

namespace A153464.P16985175478332912961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153464.P16985175478332912961

namespace A153464

/-- `lt[1, A037039(n+2)]` -/
def P16985175478332912961.Spec : Prop :=
  ∀ n, (P16985175478332912961.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P13265910239684460164

`lt[1, A345468(n+2)]`
-/

namespace A153464.P13265910239684460164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153464.P13265910239684460164

namespace A153464

/-- `lt[1, A345468(n+2)]` -/
def P13265910239684460164.Spec : Prop :=
  ∀ n, (P13265910239684460164.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P2615934274166013102

`eq[2, A218831(2*(n+1))]-1`
-/

namespace A153464.P2615934274166013102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153464.P2615934274166013102

namespace A153464

/-- `eq[2, A218831(2*(n+1))]-1` -/
def P2615934274166013102.Spec : Prop :=
  ∀ n, P2615934274166013102.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P3558429820462018383

`A023443(A153085(n+1))`
-/

namespace A153464.P3558429820462018383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153085 (n + 1)).toNat

end

end A153464.P3558429820462018383

namespace A153464

/-- `A023443(A153085(n+1))` -/
def P3558429820462018383.Spec : Prop :=
  ∀ n, P3558429820462018383.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P5403332401467153343

`A023444(A045751(n+2))`
-/

namespace A153464.P5403332401467153343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A045751 (n + 2)).toNat

end

end A153464.P5403332401467153343

namespace A153464

/-- `A023444(A045751(n+2))` -/
def P5403332401467153343.Spec : Prop :=
  ∀ n, P5403332401467153343.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P9383865761445422769

`eq[1, A088422(2*n+1)]`
-/

namespace A153464.P9383865761445422769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088422 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153464.P9383865761445422769

namespace A153464

/-- `eq[1, A088422(2*n+1)]` -/
def P9383865761445422769.Spec : Prop :=
  ∀ n, (P9383865761445422769.a n : ℤ) = A153464 (n + 1)

end A153464

/-! ## A153464.P1802838619063262001

`lt[1, A193773(2*n)]-2`
-/

namespace A153464.P1802838619063262001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A153464.P1802838619063262001

namespace A153464

/-- `lt[1, A193773(2*n)]-2` -/
def P1802838619063262001.Spec : Prop :=
  ∀ n, P1802838619063262001.a n = A153464 (n + 1)

end A153464

/-! ## A153464.P12290628756187854956

`lt[1, A281680(2*n)]-2`
-/

namespace A153464.P12290628756187854956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A153464.P12290628756187854956

namespace A153464

/-- `lt[1, A281680(2*n)]-2` -/
def P12290628756187854956.Spec : Prop :=
  ∀ n, P12290628756187854956.a n = A153464 (n + 1)

end A153464

/-!
# A153465: a(n) = 9*4^n - 2.

The programs for A153465, the canonical program `A153465.P16690281371548900820` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153465 has offset 1).

The definition of A153465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153465.P16690281371548900820

`5*a(n-1)-4*a(n-2)` with `a(0)=34, a(1)=142`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A153465

/-- `5*a(n-1)-4*a(n-2)` -/
def P16690281371548900820.Spec : Prop :=
  ∀ n, P16690281371548900820.a n = A153465 (n + 1)

theorem P16690281371548900820.correct : P16690281371548900820.Spec := by
  intro n
  simp only [A153465, Nat.add_sub_cancel]

end A153465

/-! ## A153465.P6861075713108042304

`36*4^n-2`
-/

namespace A153465.P6861075713108042304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (36 * 4 ^ n : ℤ) - 2

end

end A153465.P6861075713108042304

namespace A153465

/-- `36*4^n-2` -/
def P6861075713108042304.Spec : Prop :=
  ∀ n, P6861075713108042304.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P12782454156762465413

`or(6, 4*a(n-1))` with `a(0)=34`
-/

namespace A153465.P12782454156762465413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [34] fun n a =>
  Nat.lor 6 (4 * a (n - 1))

end

end A153465.P12782454156762465413

namespace A153465

/-- `or(6, 4*a(n-1))` -/
def P12782454156762465413.Spec : Prop :=
  ∀ n, (P12782454156762465413.a n : ℤ) = A153465 (n + 1)

end A153465

/-! ## A153465.P7597888954751817073

`2*(2*a(n-1)+3)` with `a(0)=34`
-/

namespace A153465.P7597888954751817073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [34] fun n a =>
  2 * (2 * a (n - 1) + 3)

end

end A153465.P7597888954751817073

namespace A153465

/-- `2*(2*a(n-1)+3)` -/
def P7597888954751817073.Spec : Prop :=
  ∀ n, (P7597888954751817073.a n : ℤ) = A153465 (n + 1)

end A153465

/-! ## A153465.P6022194460640457099

`abs(Δ[abs(lcm(3, 4^(n+1))-4)]-2)`
-/

namespace A153465.P6022194460640457099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (4 ^ (n + 1)) : ℤ) - 4|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 2|

end

end A153465.P6022194460640457099

namespace A153465

/-- `abs(Δ[abs(lcm(3, 4^(n+1))-4)]-2)` -/
def P6022194460640457099.Spec : Prop :=
  ∀ n, P6022194460640457099.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P11674105166792603535

`Δ[A101945(Δ[n²])]`
-/

namespace A153465.P11674105166792603535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101945 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P11674105166792603535

namespace A153465

/-- `Δ[A101945(Δ[n²])]` -/
def P11674105166792603535.Spec : Prop :=
  ∀ n, P11674105166792603535.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P16985036655081286082

`A176449(2*(n+1))`
-/

namespace A153465.P16985036655081286082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176449 (2 * (n + 1))

end

end A153465.P16985036655081286082

namespace A153465

/-- `A176449(2*(n+1))` -/
def P16985036655081286082.Spec : Prop :=
  ∀ n, P16985036655081286082.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P8202797897819626306

`abs(Δ[A181358(n)]-2)`
-/

namespace A153465.P8202797897819626306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 2|

end

end A153465.P8202797897819626306

namespace A153465

/-- `abs(Δ[A181358(n)]-2)` -/
def P8202797897819626306.Spec : Prop :=
  ∀ n, P8202797897819626306.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P9605013702335220305

`Δ[Δ[A024038(n+1)]]`
-/

namespace A153465.P9605013702335220305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P9605013702335220305

namespace A153465

/-- `Δ[Δ[A024038(n+1)]]` -/
def P9605013702335220305.Spec : Prop :=
  ∀ n, P9605013702335220305.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P6881352293039229883

`abs(4-A164093(n+1))`
-/

namespace A153465.P6881352293039229883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A164093 (n + 1)|

end

end A153465.P6881352293039229883

namespace A153465

/-- `abs(4-A164093(n+1))` -/
def P6881352293039229883.Spec : Prop :=
  ∀ n, P6881352293039229883.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P16066500210804165659

`Δ[A077802(2*(n+1))]`
-/

namespace A153465.P16066500210804165659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P16066500210804165659

namespace A153465

/-- `Δ[A077802(2*(n+1))]` -/
def P16066500210804165659.Spec : Prop :=
  ∀ n, P16066500210804165659.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P426009880717452147

`Δ[A079583(2*(n+1))]`
-/

namespace A153465.P426009880717452147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P426009880717452147

namespace A153465

/-- `Δ[A079583(2*(n+1))]` -/
def P426009880717452147.Spec : Prop :=
  ∀ n, P426009880717452147.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P1786594077859140345

`Δ[A095151(2*(n+1))]`
-/

namespace A153465.P1786594077859140345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P1786594077859140345

namespace A153465

/-- `Δ[A095151(2*(n+1))]` -/
def P1786594077859140345.Spec : Prop :=
  ∀ n, P1786594077859140345.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P12216211374345346834

`2*(Δ[A002023(n)]-1)`
-/

namespace A153465.P12216211374345346834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A153465.P12216211374345346834

namespace A153465

/-- `2*(Δ[A002023(n)]-1)` -/
def P12216211374345346834.Spec : Prop :=
  ∀ n, P12216211374345346834.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P3476104586985691063

`Δ[A058968(2*n+3)]`
-/

namespace A153465.P3476104586985691063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058968 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P3476104586985691063

namespace A153465

/-- `Δ[A058968(2*n+3)]` -/
def P3476104586985691063.Spec : Prop :=
  ∀ n, P3476104586985691063.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P1234279096051196581

`2*A052996(2*n+3)`
-/

namespace A153465.P1234279096051196581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052996 (2 * n + 3)

end

end A153465.P1234279096051196581

namespace A153465

/-- `2*A052996(2*n+3)` -/
def P1234279096051196581.Spec : Prop :=
  ∀ n, P1234279096051196581.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P15321113566490497875

`Δ[12*A000079(n)²-(2*n+1)]`
-/

namespace A153465.P15321113566490497875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000079 n ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P15321113566490497875

namespace A153465

/-- `Δ[12*A000079(n)²-(2*n+1)]` -/
def P15321113566490497875.Spec : Prop :=
  ∀ n, P15321113566490497875.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P7028185086742748969

`Δ[A033484(2*(n+1))-comp[2*n]]`
-/

namespace A153465.P7028185086742748969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (2 * (n + 1)) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P7028185086742748969

namespace A153465

/-- `Δ[A033484(2*(n+1))-comp[2*n]]` -/
def P7028185086742748969.Spec : Prop :=
  ∀ n, P7028185086742748969.a n = A153465 (n + 1)

end A153465

/-! ## A153465.P12910879536396538812

`Δ[Δ[A000079(2*(n+1))]-(2*n+1)]`
-/

namespace A153465.P12910879536396538812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153465.P12910879536396538812

namespace A153465

/-- `Δ[Δ[A000079(2*(n+1))]-(2*n+1)]` -/
def P12910879536396538812.Spec : Prop :=
  ∀ n, P12910879536396538812.a n = A153465 (n + 1)

end A153465

/-!
# A153466: a(n) = A027941(n) + A027941(n+6).

The programs for A153466, the canonical program `A153466.P2922486959135561412` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153466 has offset 0).

The definition of A153466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153466.P5406542902802325072

`3*a(n-1)-a(n-2)+2` with `a(0)=232, a(1)=610`
-/

namespace A153466.P5406542902802325072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [232, 610] fun n a =>
  3 * a (n - 1) - a (n - 2) + 2

end

end A153466.P5406542902802325072

namespace A153466

/-- `3*a(n-1)-a(n-2)+2` -/
def P5406542902802325072.Spec : Prop :=
  ∀ n, P5406542902802325072.a n = A153466 n

end A153466

/-! ## A153466.P9160760071196454208

`2*A153873(n+3)`
-/

namespace A153466.P9160760071196454208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153873 (n + 3)

end

end A153466.P9160760071196454208

namespace A153466

/-- `2*A153873(n+3)` -/
def P9160760071196454208.Spec : Prop :=
  ∀ n, P9160760071196454208.a n = A153466 n

end A153466

/-! ## A153466.P2922486959135561412

`A027941(n)+A027941(n+6)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A153466

/-- `A027941(n)+A027941(n+6)` -/
def P2922486959135561412.Spec : Prop :=
  ∀ n, P2922486959135561412.a n = A153466 n

theorem P2922486959135561412.correct : P2922486959135561412.Spec := by
  intro n
  simp only [A153466]

end A153466

/-! ## A153466.P10421102846841149427

`A153819(n+3)`
-/

namespace A153466.P10421102846841149427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153819 (n + 3)

end

end A153466.P10421102846841149427

namespace A153466

/-- `A153819(n+3)` -/
def P10421102846841149427.Spec : Prop :=
  ∀ n, P10421102846841149427.a n = A153466 n

end A153466

/-! ## A153466.P10501112430735681779

`record[A153819(abs(3-n))]`
-/

namespace A153466.P10501112430735681779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153819 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153466.P10501112430735681779

namespace A153466

/-- `record[A153819(abs(3-n))]` -/
def P10501112430735681779.Spec : Prop :=
  ∀ n, P10501112430735681779.a n = A153466 n

end A153466

/-! ## A153466.P149193273011617924

`A022352(2*n+7)-2`
-/

namespace A153466.P149193273011617924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 (2 * n + 7) - 2

end

end A153466.P149193273011617924

namespace A153466

/-- `A022352(2*n+7)-2` -/
def P149193273011617924.Spec : Prop :=
  ∀ n, P149193273011617924.a n = A153466 n

end A153466

/-! ## A153466.P4752906938170915626

`A153981(n+3)/2`
-/

namespace A153466.P4752906938170915626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153981 (n + 3) : ℚ) / 2

end

end A153466.P4752906938170915626

namespace A153466

/-- `A153981(n+3)/2` -/
def P4752906938170915626.Spec : Prop :=
  ∀ n, P4752906938170915626.a n = (A153466 n : ℚ)

end A153466

/-!
# A153467: 1/4 of the number of 4-colorings of a planar n X n X n triangular grid.

The programs for A153467, there is no canonical definition to state claims against.
-/

/-! ## A153467.P16203245179953115094

`A182798(n+1)/4`
-/

namespace A153467.P16203245179953115094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182798 (n + 1) : ℚ) / 4

end

end A153467.P16203245179953115094

/-! ## A153467.P16190187973746250197

`record[A182798(A272020(n))/4]`
-/

namespace A153467.P16190187973746250197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182798 (A272020 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153467.P16190187973746250197

/-! ## A153467.P11909721401562706909

`A182797(A141214(n)+7)/4`
-/

namespace A153467.P11909721401562706909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182797 (A141214 n + 7).toNat : ℚ) / 4

end

end A153467.P11909721401562706909

/-!
# A153468: 1/5 of the number of 5-colorings of a planar n X n X n triangular grid.

The programs for A153468, there is no canonical definition to state claims against.
-/

/-! ## A153468.P2308633153718325466

`A182797(A167499(n+3))/5`
-/

namespace A153468.P2308633153718325466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182797 (A167499 (n + 3)).toNat : ℚ) / 5

end

end A153468.P2308633153718325466

/-!
# A153474: Sum of first n Mersenne primes A000668.

The programs for A153474, there is no canonical definition to state claims against.
-/

/-! ## A153474.P17259819102020667478

`∑[A000668(n+1)]`
-/

namespace A153474.P17259819102020667478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153474.P17259819102020667478

/-! ## A153474.P18249248237115367376

`∑[A343733(n+2)]`
-/

namespace A153474.P18249248237115367376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153474.P18249248237115367376

/-! ## A153474.P16048459466020296355

`∑[sqrt(A133049(n+1))]`
-/

namespace A153474.P16048459466020296355
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133049 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153474.P16048459466020296355

/-! ## A153474.P9033916211166328133

`∑[A169628(∑[n+1])]`
-/

namespace A153474.P9033916211166328133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153474.P9033916211166328133

/-! ## A153474.P18019859333621791011

`∑[record[A016047(n+1)]]`
-/

namespace A153474.P18019859333621791011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153474.P18019859333621791011

/-!
# A153475: Sum of the first n even superperfect numbers (A061652).

The programs for A153475, there is no canonical definition to state claims against.
-/

/-! ## A153475.P15558832111204751229

`∑[A019279(n+1)]`
-/

namespace A153475.P15558832111204751229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153475.P15558832111204751229

/-! ## A153475.P2859144556251181836

`2*A153476(n+1)`
-/

namespace A153475.P2859144556251181836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153476 (n + 1)

end

end A153475.P2859144556251181836

/-! ## A153475.P8802711947549127791

`∑[sqrt(A152921(n+1))]`
-/

namespace A153475.P8802711947549127791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152921 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153475.P8802711947549127791

/-! ## A153475.P3855001231716056499

`∑[A256438(n+1)-1]`
-/

namespace A153475.P3855001231716056499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256438 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153475.P3855001231716056499

/-! ## A153475.P4176750843369052547

`∑[2*A134708(n+1)]`
-/

namespace A153475.P4176750843369052547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153475.P4176750843369052547

/-!
# A153476: Sum of first n even superperfect numbers A061652, divided by 2.

The programs for A153476, there is no canonical definition to state claims against.
-/

/-! ## A153476.P10310624390644801249

`A153475(n+1)/2`
-/

namespace A153476.P10310624390644801249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153475 (n + 1) : ℚ) / 2

end

end A153476.P10310624390644801249

/-! ## A153476.P11673591341887991354

`∑[A134708(n+1)]`
-/

namespace A153476.P11673591341887991354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153476.P11673591341887991354

/-! ## A153476.P11773911207664099411

`∑[sqrt(A152923(n+1))]`
-/

namespace A153476.P11773911207664099411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152923 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153476.P11773911207664099411

/-! ## A153476.P16709731060150051873

`∑[A134709(n+1)+1]`
-/

namespace A153476.P16709731060150051873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134709 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153476.P16709731060150051873

/-! ## A153476.P2183799479275296110

`∑[2^A153798(n+1)]`
-/

namespace A153476.P2183799479275296110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A153798 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153476.P2183799479275296110

/-!
# A153477: Primes p such that 2p+1 and 2p^2+4p+1 are also prime.

The programs for A153477, the canonical program `A153477.P5045853048162138776` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153477 has offset 1).

The definition of A153477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153477.P5045853048162138776

`floor(p?[2*A164042(n+1)+1]/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153477

/-- `floor(p?[2*A164042(n+1)+1]/2)` -/
def P5045853048162138776.Spec : Prop :=
  ∀ n, P5045853048162138776.a n = A153477 (n + 1)

theorem P5045853048162138776.correct : P5045853048162138776.Spec := by
  intro n
  simp only [A153477, Nat.add_sub_cancel]

end A153477

/-! ## A153477.P15087261304627222808

`∩[A005384(n+1), A164042(n+1)]`
-/

namespace A153477.P15087261304627222808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P15087261304627222808

namespace A153477

/-- `∩[A005384(n+1), A164042(n+1)]` -/
def P15087261304627222808.Spec : Prop :=
  ∀ n, (P15087261304627222808.a n : ℤ) = A153477 (n + 1)

end A153477

/-! ## A153477.P5736863130881754491

`∩[A164042(n+1), A246857(n+1)]`
-/

namespace A153477.P5736863130881754491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P5736863130881754491

namespace A153477

/-- `∩[A164042(n+1), A246857(n+1)]` -/
def P5736863130881754491.Spec : Prop :=
  ∀ n, (P5736863130881754491.a n : ℤ) = A153477 (n + 1)

end A153477

/-! ## A153477.P16921378236835094435

`∩[A164042(n+1), A348511(n+1)]`
-/

namespace A153477.P16921378236835094435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P16921378236835094435

namespace A153477

/-- `∩[A164042(n+1), A348511(n+1)]` -/
def P16921378236835094435.Spec : Prop :=
  ∀ n, (P16921378236835094435.a n : ℤ) = A153477 (n + 1)

end A153477

/-! ## A153477.P514890059870008313

`∩[A164042(n+1), A364926(n+1)]`
-/

namespace A153477.P514890059870008313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P514890059870008313

namespace A153477

/-- `∩[A164042(n+1), A364926(n+1)]` -/
def P514890059870008313.Spec : Prop :=
  ∀ n, (P514890059870008313.a n : ℤ) = A153477 (n + 1)

end A153477

/-! ## A153477.P7814758323797911564

`∩[A164042(n+1), A074259(n)+a(n-1)]` with `a(0)=2`
-/

namespace A153477.P7814758323797911564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A074259 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P7814758323797911564

namespace A153477

/-- `∩[A164042(n+1), A074259(n)+a(n-1)]` -/
def P7814758323797911564.Spec : Prop :=
  ∀ n, (P7814758323797911564.a n : ℤ) = A153477 (n + 1)

end A153477

/-! ## A153477.P4102919444549246998

`filter[A164042(n+1), A101264(#)]`
-/

namespace A153477.P4102919444549246998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A153477.P4102919444549246998

namespace A153477

/-- `filter[A164042(n+1), A101264(#)]` -/
def P4102919444549246998.Spec : Prop :=
  ∀ n, P4102919444549246998.a n = A153477 (n + 1)

end A153477

/-! ## A153477.P1346644316176188765

`∩[A006530(A077065(n+1)), A164042(n+1)]`
-/

namespace A153477.P1346644316176188765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077065 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P1346644316176188765

namespace A153477

/-- `∩[A006530(A077065(n+1)), A164042(n+1)]` -/
def P1346644316176188765.Spec : Prop :=
  ∀ n, (P1346644316176188765.a n : ℤ) = A153477 (n + 1)

end A153477

/-! ## A153477.P5292510206396713756

`∩[A164042(n+1), A259973(n+1)]`
-/

namespace A153477.P5292510206396713756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153477.P5292510206396713756

namespace A153477

/-- `∩[A164042(n+1), A259973(n+1)]` -/
def P5292510206396713756.Spec : Prop :=
  ∀ n, (P5292510206396713756.a n : ℤ) = A153477 (n + 1)

end A153477

/-!
# A153478: Sum of first n isolated (or single) primes A007510.

The programs for A153478, the canonical program `A153478.P4380550818135464510` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153478 has offset 1).

The definition of A153478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153478.P4380550818135464510

`∑[A007510(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A153478

/-- `∑[A007510(n+1)]` -/
def P4380550818135464510.Spec : Prop :=
  ∀ n, P4380550818135464510.a n = A153478 (n + 1)

theorem P4380550818135464510.correct : P4380550818135464510.Spec := by
  intro n
  simp only [A153478, Nat.add_sub_cancel]

end A153478

/-! ## A153478.P12105440940794523039

`∑[A167277(n+1)+1]`
-/

namespace A153478.P12105440940794523039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P12105440940794523039

namespace A153478

/-- `∑[A167277(n+1)+1]` -/
def P12105440940794523039.Spec : Prop :=
  ∀ n, P12105440940794523039.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P11720979806232420647

`A134797(n)+a(n-1)` with `a(0)=2`
-/

namespace A153478.P11720979806232420647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134797 n + a (n - 1)

end

end A153478.P11720979806232420647

namespace A153478

/-- `A134797(n)+a(n-1)` -/
def P11720979806232420647.Spec : Prop :=
  ∀ n, P11720979806232420647.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P8953447659567435120

`∑[A167397(n+1)+1+n]`
-/

namespace A153478.P8953447659567435120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167397 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P8953447659567435120

namespace A153478

/-- `∑[A167397(n+1)+1+n]` -/
def P8953447659567435120.Spec : Prop :=
  ∀ n, P8953447659567435120.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P14624499918562671271

`∑[A163654(n)-a(n-1)]` with `a(0)=2`
-/

namespace A153478.P14624499918562671271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A163654 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P14624499918562671271

namespace A153478

/-- `∑[A163654(n)-a(n-1)]` -/
def P14624499918562671271.Spec : Prop :=
  ∀ n, P14624499918562671271.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P14214438862435646652

`∑[A164274(n+1)-A014574(n+1)]`
-/

namespace A153478.P14214438862435646652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P14214438862435646652

namespace A153478

/-- `∑[A164274(n+1)-A014574(n+1)]` -/
def P14214438862435646652.Spec : Prop :=
  ∀ n, P14214438862435646652.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P9370341327781107381

`∑[A134797(n+1)]+2-A134797(n+1)`
-/

namespace A153478.P9370341327781107381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A134797 (n + 1))

end

end A153478.P9370341327781107381

namespace A153478

/-- `∑[A134797(n+1)]+2-A134797(n+1)` -/
def P9370341327781107381.Spec : Prop :=
  ∀ n, P9370341327781107381.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P559444945122971868

`∑[p?[A167706(n+1)]]`
-/

namespace A153478.P559444945122971868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P559444945122971868

namespace A153478

/-- `∑[p?[A167706(n+1)]]` -/
def P559444945122971868.Spec : Prop :=
  ∀ n, P559444945122971868.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P6440894999875846254

`∑[p?[A062729(n+1)]]`
-/

namespace A153478.P6440894999875846254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P6440894999875846254

namespace A153478

/-- `∑[p?[A062729(n+1)]]` -/
def P6440894999875846254.Spec : Prop :=
  ∀ n, P6440894999875846254.a n = A153478 (n + 1)

end A153478

/-! ## A153478.P13818041903007347345

`∑[p?[comp[A001097(n+1)]]]`
-/

namespace A153478.P13818041903007347345
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P13818041903007347345

namespace A153478

/-- `∑[p?[comp[A001097(n+1)]]]` -/
def P13818041903007347345.Spec : Prop :=
  ∀ n, (P13818041903007347345.a n : ℤ) = A153478 (n + 1)

end A153478

/-! ## A153478.P15790249366514396146

`∑[record[A014963(A062729(n+2))]]`
-/

namespace A153478.P15790249366514396146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062729 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P15790249366514396146

namespace A153478

/-- `∑[record[A014963(A062729(n+2))]]` -/
def P15790249366514396146.Spec : Prop :=
  ∀ n, P15790249366514396146.a n = A153478 (n + 1)

end A153478

/-!
# A153479: Recursive triangular symmetrical sequence: A(n,k) := (n - k + 1)A(n - 1, k - 1) + (k)* A(n - 1, k) - (n + 1)*A(n - 2, k - 1).

The programs for A153479, there is no canonical definition to state claims against.
-/

/-! ## A153479.P18208740126456241032

`A117924(A153310(n))`
-/

namespace A153479.P18208740126456241032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A153310 n).toNat

end

end A153479.P18208740126456241032

/-! ## A153479.P11329636206169391578

`A033677(A153283(n)*A157178(n))`
-/

namespace A153479.P11329636206169391578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A153283 n * A157178 n).toNat

end

end A153479.P11329636206169391578

/-! ## A153479.P10741505008827394065

`A033677(A153288(n)*A157178(n))`
-/

namespace A153479.P10741505008827394065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A153288 n * A157178 n).toNat

end

end A153479.P10741505008827394065

/-! ## A153479.P707473458217102558

`A033677(A153311(n)*A157178(n))`
-/

namespace A153479.P707473458217102558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A153311 n * A157178 n).toNat

end

end A153479.P707473458217102558

/-!
# A153480: a(n) = 2*prime(n)^2 - 4.

The programs for A153480, the canonical program `A153480.P781182470284605165` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153480 has offset 0).

The definition of A153480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153480.P781182470284605165

`2*A049001(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153480

/-- `2*A049001(n+1)` -/
def P781182470284605165.Spec : Prop :=
  ∀ n, P781182470284605165.a n = A153480 n

theorem P781182470284605165.correct : P781182470284605165.Spec := by
  intro n
  simp only [A153480]

end A153480

/-! ## A153480.P7142634603020566560

`A079704(n+1)-4`
-/

namespace A153480.P7142634603020566560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - 4

end

end A153480.P7142634603020566560

namespace A153480

/-- `A079704(n+1)-4` -/
def P7142634603020566560.Spec : Prop :=
  ∀ n, P7142634603020566560.a n = A153480 n

end A153480

/-! ## A153480.P8185092804709342049

`A179262(n+1)-3`
-/

namespace A153480.P8185092804709342049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) - 3

end

end A153480.P8185092804709342049

namespace A153480

/-- `A179262(n+1)-3` -/
def P8185092804709342049.Spec : Prop :=
  ∀ n, P8185092804709342049.a n = A153480 n

end A153480

/-! ## A153480.P16123826047489684907

`2*(A182200(n+1)+1)`
-/

namespace A153480.P16123826047489684907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182200 (n + 1) + 1)

end

end A153480.P16123826047489684907

namespace A153480

/-- `2*(A182200(n+1)+1)` -/
def P16123826047489684907.Spec : Prop :=
  ∀ n, P16123826047489684907.a n = A153480 n

end A153480

/-! ## A153480.P2816577518402995052

`2*(A084920(n+1)-1)`
-/

namespace A153480.P2816577518402995052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084920 (n + 1) - 1)

end

end A153480.P2816577518402995052

namespace A153480

/-- `2*(A084920(n+1)-1)` -/
def P2816577518402995052.Spec : Prop :=
  ∀ n, P2816577518402995052.a n = A153480 n

end A153480

/-! ## A153480.P9129313417333283665

`2*(A166010(n+1)+2)`
-/

namespace A153480.P9129313417333283665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166010 (n + 1) + 2)

end

end A153480.P9129313417333283665

namespace A153480

/-- `2*(A166010(n+1)+2)` -/
def P9129313417333283665.Spec : Prop :=
  ∀ n, P9129313417333283665.a n = A153480 n

end A153480

/-! ## A153480.P12934431291443598844

`2*(A001248(n+1)-2)`
-/

namespace A153480.P12934431291443598844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001248 (n + 1) - 2)

end

end A153480.P12934431291443598844

namespace A153480

/-- `2*(A001248(n+1)-2)` -/
def P12934431291443598844.Spec : Prop :=
  ∀ n, P12934431291443598844.a n = A153480 n

end A153480

/-! ## A153480.P12343028016311149043

`2*(A066872(n+1)-3)`
-/

namespace A153480.P12343028016311149043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066872 (n + 1) - 3)

end

end A153480.P12343028016311149043

namespace A153480

/-- `2*(A066872(n+1)-3)` -/
def P12343028016311149043.Spec : Prop :=
  ∀ n, P12343028016311149043.a n = A153480 n

end A153480

/-! ## A153480.P14751099260033964598

`2*(A061725(n+1)-4)`
-/

namespace A153480.P14751099260033964598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061725 (n + 1) - 4)

end

end A153480.P14751099260033964598

namespace A153480

/-- `2*(A061725(n+1)-4)` -/
def P14751099260033964598.Spec : Prop :=
  ∀ n, P14751099260033964598.a n = A153480 n

end A153480

/-! ## A153480.P2357905330620938332

`A069262(n+1)/2-4`
-/

namespace A153480.P2357905330620938332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 2 - 4

end

end A153480.P2357905330620938332

namespace A153480

/-- `A069262(n+1)/2-4` -/
def P2357905330620938332.Spec : Prop :=
  ∀ n, P2357905330620938332.a n = (A153480 n : ℚ)

end A153480

/-! ## A153480.P14554842971025481810

`2*(A000040(n+1)²-2)`
-/

namespace A153480.P14554842971025481810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) ^ 2 - 2)

end

end A153480.P14554842971025481810

namespace A153480

/-- `2*(A000040(n+1)²-2)` -/
def P14554842971025481810.Spec : Prop :=
  ∀ n, P14554842971025481810.a n = A153480 n

end A153480

/-! ## A153480.P1526927230780603912

`2*(A273960(n+1)²-2)`
-/

namespace A153480.P1526927230780603912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A273960 (n + 1) ^ 2 - 2)

end

end A153480.P1526927230780603912

namespace A153480

/-- `2*(A273960(n+1)²-2)` -/
def P1526927230780603912.Spec : Prop :=
  ∀ n, P1526927230780603912.a n = A153480 n

end A153480

/-! ## A153480.P12030162087653606963

`2*(sqrt(A030514(n+1))-2)`
-/

namespace A153480.P12030162087653606963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A030514 (n + 1) : ℝ) - 2)

end

end A153480.P12030162087653606963

namespace A153480

/-- `2*(sqrt(A030514(n+1))-2)` -/
def P12030162087653606963.Spec : Prop :=
  ∀ n, P12030162087653606963.a n = (A153480 n : ℝ)

end A153480

/-! ## A153480.P12303072610280087818

`2*(A182174(n+1)+n-1)`
-/

namespace A153480.P12303072610280087818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182174 (n + 1) + ((n : ℤ) - 1))

end

end A153480.P12303072610280087818

namespace A153480

/-- `2*(A182174(n+1)+n-1)` -/
def P12303072610280087818.Spec : Prop :=
  ∀ n, P12303072610280087818.a n = A153480 n

end A153480

/-! ## A153480.P14654439510013889586

`A166010(n+1)+A001248(n+1)`
-/

namespace A153480.P14654439510013889586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + A001248 (n + 1)

end

end A153480.P14654439510013889586

namespace A153480

/-- `A166010(n+1)+A001248(n+1)` -/
def P14654439510013889586.Spec : Prop :=
  ∀ n, P14654439510013889586.a n = A153480 n

end A153480

/-! ## A153480.P18225219027947089919

`A182200(n+1)+A084920(n+1)`
-/

namespace A153480.P18225219027947089919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + A084920 (n + 1)

end

end A153480.P18225219027947089919

namespace A153480

/-- `A182200(n+1)+A084920(n+1)` -/
def P18225219027947089919.Spec : Prop :=
  ∀ n, P18225219027947089919.a n = A153480 n

end A153480

/-! ## A153480.P13576515481443662251

`A079705(n+1)-A287922(n+1)`
-/

namespace A153480.P13576515481443662251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - A287922 (n + 1)

end

end A153480.P13576515481443662251

namespace A153480

/-- `A079705(n+1)-A287922(n+1)` -/
def P13576515481443662251.Spec : Prop :=
  ∀ n, P13576515481443662251.a n = A153480 n

end A153480

/-! ## A153480.P15023690529350758813

`A382097(n+1)-A129070(n+1)`
-/

namespace A153480.P15023690529350758813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1) - A129070 (n + 1)

end

end A153480.P15023690529350758813

namespace A153480

/-- `A382097(n+1)-A129070(n+1)` -/
def P15023690529350758813.Spec : Prop :=
  ∀ n, P15023690529350758813.a n = A153480 n

end A153480

/-! ## A153480.P10413116082431372813

`A166010(n+1)+A000040(n+1)²`
-/

namespace A153480.P10413116082431372813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + A000040 (n + 1) ^ 2

end

end A153480.P10413116082431372813

namespace A153480

/-- `A166010(n+1)+A000040(n+1)²` -/
def P10413116082431372813.Spec : Prop :=
  ∀ n, P10413116082431372813.a n = A153480 n

end A153480

/-! ## A153480.P7244832065493278548

`A049001(n+1)+A182200(n+1)+1`
-/

namespace A153480.P7244832065493278548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + (A182200 (n + 1) + 1)

end

end A153480.P7244832065493278548

namespace A153480

/-- `A049001(n+1)+A182200(n+1)+1` -/
def P7244832065493278548.Spec : Prop :=
  ∀ n, P7244832065493278548.a n = A153480 n

end A153480

/-!
# A153481: a(n) = prime(n)^3 - 2.

The programs for A153481, the canonical program `A153481.P3996597360084470413` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153481 has offset 1).

The definition of A153481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153481.P3996597360084470413

`A030078(n+1)-2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153481

/-- `A030078(n+1)-2` -/
def P3996597360084470413.Spec : Prop :=
  ∀ n, P3996597360084470413.a n = A153481 (n + 1)

theorem P3996597360084470413.correct : P3996597360084470413.Spec := by
  intro n
  simp only [A153481, Nat.add_sub_cancel]

end A153481

/-! ## A153481.P8709967270680923318

`abs(Δ[A242188(n)])-2`
-/

namespace A153481.P8709967270680923318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 2

end

end A153481.P8709967270680923318

namespace A153481

/-- `abs(Δ[A242188(n)])-2` -/
def P8709967270680923318.Spec : Prop :=
  ∀ n, P8709967270680923318.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P9825200739344552043

`sqrt(A030516(n+1))-2`
-/

namespace A153481.P9825200739344552043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ) - 2

end

end A153481.P9825200739344552043

namespace A153481

/-- `sqrt(A030516(n+1))-2` -/
def P9825200739344552043.Spec : Prop :=
  ∀ n, P9825200739344552043.a n = (A153481 (n + 1) : ℝ)

end A153481

/-! ## A153481.P9029838669247404951

`Δ[A007504(n)]^3-2`
-/

namespace A153481.P9029838669247404951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 - 2

end

end A153481.P9029838669247404951

namespace A153481

/-- `Δ[A007504(n)]^3-2` -/
def P9029838669247404951.Spec : Prop :=
  ∀ n, P9029838669247404951.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P13179996409083039633

`A172190(n+1)/2-2`
-/

namespace A153481.P13179996409083039633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 1) : ℚ) / 2 - 2

end

end A153481.P13179996409083039633

namespace A153481

/-- `A172190(n+1)/2-2` -/
def P13179996409083039633.Spec : Prop :=
  ∀ n, P13179996409083039633.a n = (A153481 (n + 1) : ℚ)

end A153481

/-! ## A153481.P8415490273972627534

`A000040(n+1)^3-2`
-/

namespace A153481.P8415490273972627534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 - 2

end

end A153481.P8415490273972627534

namespace A153481

/-- `A000040(n+1)^3-2` -/
def P8415490273972627534.Spec : Prop :=
  ∀ n, P8415490273972627534.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P5292887453411953980

`sqrt(sqrt(A030631(n+1)))-2`
-/

namespace A153481.P5292887453411953980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A030631 (n + 1) : ℝ)) - 2

end

end A153481.P5292887453411953980

namespace A153481

/-- `sqrt(sqrt(A030631(n+1)))-2` -/
def P5292887453411953980.Spec : Prop :=
  ∀ n, P5292887453411953980.a n = (A153481 (n + 1) : ℝ)

end A153481

/-! ## A153481.P6099137836994514167

`ceil(sqrt(A138408(n+1)))-2`
-/

namespace A153481.P6099137836994514167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A138408 (n + 1) : ℝ)⌉ - 2

end

end A153481.P6099137836994514167

namespace A153481

/-- `ceil(sqrt(A138408(n+1)))-2` -/
def P6099137836994514167.Spec : Prop :=
  ∀ n, P6099137836994514167.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P5259840689050201473

`A127917(n+1)+A040976(n+1)`
-/

namespace A153481.P5259840689050201473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A040976 (n + 1)

end

end A153481.P5259840689050201473

namespace A153481

/-- `A127917(n+1)+A040976(n+1)` -/
def P5259840689050201473.Spec : Prop :=
  ∀ n, P5259840689050201473.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P17054336808786454420

`A135177(n+1)+A049001(n+1)`
-/

namespace A153481.P17054336808786454420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A049001 (n + 1)

end

end A153481.P17054336808786454420

namespace A153481

/-- `A135177(n+1)+A049001(n+1)` -/
def P17054336808786454420.Spec : Prop :=
  ∀ n, P17054336808786454420.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P3005053440765083628

`A135178(n+1)-A061725(n+1)`
-/

namespace A153481.P3005053440765083628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A061725 (n + 1)

end

end A153481.P3005053440765083628

namespace A153481

/-- `A135178(n+1)-A061725(n+1)` -/
def P3005053440765083628.Spec : Prop :=
  ∀ n, P3005053440765083628.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P17407002192690423201

`A181150(n+1)-A113935(n+1)`
-/

namespace A153481.P17407002192690423201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) - A113935 (n + 1)

end

end A153481.P17407002192690423201

namespace A153481

/-- `A181150(n+1)-A113935(n+1)` -/
def P17407002192690423201.Spec : Prop :=
  ∀ n, P17407002192690423201.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P10686537129052055097

`A006093(n+1)+A127917(n+1)-1`
-/

namespace A153481.P10686537129052055097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A127917 (n + 1) - 1)

end

end A153481.P10686537129052055097

namespace A153481

/-- `A006093(n+1)+A127917(n+1)-1` -/
def P10686537129052055097.Spec : Prop :=
  ∀ n, P10686537129052055097.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P11380702042367628598

`A181149(n+1)-(A060800(n+1)+1)`
-/

namespace A153481.P11380702042367628598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) - (A060800 (n + 1) + 1)

end

end A153481.P11380702042367628598

namespace A153481

/-- `A181149(n+1)-(A060800(n+1)+1)` -/
def P11380702042367628598.Spec : Prop :=
  ∀ n, P11380702042367628598.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P4042828462607868974

`A036689(n+1)+A083558(n+1)-2`
-/

namespace A153481.P4042828462607868974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + (A083558 (n + 1) - 2)

end

end A153481.P4042828462607868974

namespace A153481

/-- `A036689(n+1)+A083558(n+1)-2` -/
def P4042828462607868974.Spec : Prop :=
  ∀ n, P4042828462607868974.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P8411891345682200167

`A000040(n+1)+A127917(n+1)-2`
-/

namespace A153481.P8411891345682200167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A127917 (n + 1) - 2)

end

end A153481.P8411891345682200167

namespace A153481

/-- `A000040(n+1)+A127917(n+1)-2` -/
def P8411891345682200167.Spec : Prop :=
  ∀ n, P8411891345682200167.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P9129340739811303760

`A001248(n+1)+A135177(n+1)-2`
-/

namespace A153481.P9129340739811303760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A135177 (n + 1) - 2)

end

end A153481.P9129340739811303760

namespace A153481

/-- `A001248(n+1)+A135177(n+1)-2` -/
def P9129340739811303760.Spec : Prop :=
  ∀ n, P9129340739811303760.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P13222041233226257730

`A135178(n+1)-(A001248(n+1)+2)`
-/

namespace A153481.P13222041233226257730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - (A001248 (n + 1) + 2)

end

end A153481.P13222041233226257730

namespace A153481

/-- `A135178(n+1)-(A001248(n+1)+2)` -/
def P13222041233226257730.Spec : Prop :=
  ∀ n, P13222041233226257730.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P9027262083101665753

`A030514(n+1)-(A138403(n+1)+2)`
-/

namespace A153481.P9027262083101665753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - (A138403 (n + 1) + 2)

end

end A153481.P9027262083101665753

namespace A153481

/-- `A030514(n+1)-(A138403(n+1)+2)` -/
def P9027262083101665753.Spec : Prop :=
  ∀ n, P9027262083101665753.a n = A153481 (n + 1)

end A153481

/-! ## A153481.P11407122893912724913

`A030516(n+1)-(A138410(n+1)+2)`
-/

namespace A153481.P11407122893912724913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - (A138410 (n + 1) + 2)

end

end A153481.P11407122893912724913

namespace A153481

/-- `A030516(n+1)-(A138410(n+1)+2)` -/
def P11407122893912724913.Spec : Prop :=
  ∀ n, P11407122893912724913.a n = A153481 (n + 1)

end A153481

/-!
# A153482: a(n) = prime(n)^4 - 8.

The programs for A153482, the canonical program `A153482.P18052968321130329475` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153482 has offset 1).

The definition of A153482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153482.P18052968321130329475

`A030514(n+1)-8`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153482

/-- `A030514(n+1)-8` -/
def P18052968321130329475.Spec : Prop :=
  ∀ n, P18052968321130329475.a n = A153482 (n + 1)

theorem P18052968321130329475.correct : P18052968321130329475.Spec := by
  intro n
  simp only [A153482, Nat.add_sub_cancel]

end A153482

/-! ## A153482.P15373510018950303976

`A001248(n+1)²-8`
-/

namespace A153482.P15373510018950303976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 - 8

end

end A153482.P15373510018950303976

namespace A153482

/-- `A001248(n+1)²-8` -/
def P15373510018950303976.Spec : Prop :=
  ∀ n, P15373510018950303976.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P6295298797751901056

`A000040(n+1)^4-8`
-/

namespace A153482.P6295298797751901056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 4 - 8

end

end A153482.P6295298797751901056

namespace A153482

/-- `A000040(n+1)^4-8` -/
def P6295298797751901056.Spec : Prop :=
  ∀ n, P6295298797751901056.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P4860187815003646589

`(A040976(n+1)+2)²²-8`
-/

namespace A153482.P4860187815003646589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A040976 (n + 1) + 2) ^ 2) ^ 2 - 8

end

end A153482.P4860187815003646589

namespace A153482

/-- `(A040976(n+1)+2)²²-8` -/
def P4860187815003646589.Spec : Prop :=
  ∀ n, P4860187815003646589.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P15782218437991095931

`A000040(n+1)²²-A000005(A007304(n+1))`
-/

namespace A153482.P15782218437991095931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2 - A000005 (A007304 (n + 1)).toNat

end

end A153482.P15782218437991095931

namespace A153482

/-- `A000040(n+1)²²-A000005(A007304(n+1))` -/
def P15782218437991095931.Spec : Prop :=
  ∀ n, P15782218437991095931.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P13002450028300081987

`A049001(n+1)+A061725(n+1)*A182200(n+1)`
-/

namespace A153482.P13002450028300081987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + A061725 (n + 1) * A182200 (n + 1)

end

end A153482.P13002450028300081987

namespace A153482

/-- `A049001(n+1)+A061725(n+1)*A182200(n+1)` -/
def P13002450028300081987.Spec : Prop :=
  ∀ n, P13002450028300081987.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P7123144761898191188

`record[A006530(n+2)^4-8]`
-/

namespace A153482.P7123144761898191188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 4 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153482.P7123144761898191188

namespace A153482

/-- `record[A006530(n+2)^4-8]` -/
def P7123144761898191188.Spec : Prop :=
  ∀ n, P7123144761898191188.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P7718494100523722093

`record[A020639(n+2)^4-8]`
-/

namespace A153482.P7718494100523722093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 4 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153482.P7718494100523722093

namespace A153482

/-- `record[A020639(n+2)^4-8]` -/
def P7718494100523722093.Spec : Prop :=
  ∀ n, P7718494100523722093.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P11288848793938488414

`record[(A000010(n+1)+1)²]²-8`
-/

namespace A153482.P11288848793938488414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 8

end

end A153482.P11288848793938488414

namespace A153482

/-- `record[(A000010(n+1)+1)²]²-8` -/
def P11288848793938488414.Spec : Prop :=
  ∀ n, P11288848793938488414.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P13310143802439225482

`(eq[1, A001222(n+1)]+1)²²-8`
-/

namespace A153482.P13310143802439225482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2) ^ 2 : ℤ) - 8

end

end A153482.P13310143802439225482

namespace A153482

/-- `(eq[1, A001222(n+1)]+1)²²-8` -/
def P13310143802439225482.Spec : Prop :=
  ∀ n, P13310143802439225482.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P6270158758258502046

`(eq[2, A000005(n+1)]+1)²²-8`
-/

namespace A153482.P6270158758258502046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2) ^ 2 : ℤ) - 8

end

end A153482.P6270158758258502046

namespace A153482

/-- `(eq[2, A000005(n+1)]+1)²²-8` -/
def P6270158758258502046.Spec : Prop :=
  ∀ n, P6270158758258502046.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P15626649279123146726

`(lt[A001222(n+2), 2]+2)²²-8`
-/

namespace A153482.P15626649279123146726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) ^ 2) ^ 2 : ℤ) - 8

end

end A153482.P15626649279123146726

namespace A153482

/-- `(lt[A001222(n+2), 2]+2)²²-8` -/
def P15626649279123146726.Spec : Prop :=
  ∀ n, P15626649279123146726.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P11520115551720071885

`(lt[A000005(n+2), 3]+2)²²-8`
-/

namespace A153482.P11520115551720071885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) ^ 2) ^ 2 : ℤ) - 8

end

end A153482.P11520115551720071885

namespace A153482

/-- `(lt[A000005(n+2), 3]+2)²²-8` -/
def P11520115551720071885.Spec : Prop :=
  ∀ n, P11520115551720071885.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P3637204306868772287

`(lt[n, A000010(n+2)]+2)²²-8`
-/

namespace A153482.P3637204306868772287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) ^ 2) ^ 2 : ℤ) - 8

end

end A153482.P3637204306868772287

namespace A153482

/-- `(lt[n, A000010(n+2)]+2)²²-8` -/
def P3637204306868772287.Spec : Prop :=
  ∀ n, P3637204306868772287.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P17746597424321322213

`p?[comp[A018252(n+1)]]^4-8`
-/

namespace A153482.P17746597424321322213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 4 : ℤ) - 8

end

end A153482.P17746597424321322213

namespace A153482

/-- `p?[comp[A018252(n+1)]]^4-8` -/
def P17746597424321322213.Spec : Prop :=
  ∀ n, P17746597424321322213.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P17305641212379544485

`record[A014963(n+2)^4-8]`
-/

namespace A153482.P17305641212379544485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 4 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153482.P17305641212379544485

namespace A153482

/-- `record[A014963(n+2)^4-8]` -/
def P17305641212379544485.Spec : Prop :=
  ∀ n, P17305641212379544485.a n = A153482 (n + 1)

end A153482

/-! ## A153482.P4929463322464231488

`record[A039649(n+1)²]²-8`
-/

namespace A153482.P4929463322464231488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 8

end

end A153482.P4929463322464231488

namespace A153482

/-- `record[A039649(n+1)²]²-8` -/
def P4929463322464231488.Spec : Prop :=
  ∀ n, P4929463322464231488.a n = A153482 (n + 1)

end A153482

/-!
# A153483: a(n) = prime(n)^4 - 32.

The programs for A153483, the canonical program `A153483.P8077417549685996379` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153483 has offset 1).

The definition of A153483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153483.P8077417549685996379

`A001248(n+1)²-32`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153483

/-- `A001248(n+1)²-32` -/
def P8077417549685996379.Spec : Prop :=
  ∀ n, P8077417549685996379.a n = A153483 (n + 1)

theorem P8077417549685996379.correct : P8077417549685996379.Spec := by
  intro n
  simp only [A153483, Nat.add_sub_cancel]

end A153483

/-! ## A153483.P13383643690192402349

`A000040(n+1)²²-32`
-/

namespace A153483.P13383643690192402349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2 - 32

end

end A153483.P13383643690192402349

namespace A153483

/-- `A000040(n+1)²²-32` -/
def P13383643690192402349.Spec : Prop :=
  ∀ n, P13383643690192402349.a n = A153483 (n + 1)

end A153483

/-! ## A153483.P11165543231747350319

`A030514(n+1)-(4/2)^5`
-/

namespace A153483.P11165543231747350319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) : ℚ) - ((4 : ℚ) / 2) ^ 5

end

end A153483.P11165543231747350319

namespace A153483

/-- `A030514(n+1)-(4/2)^5` -/
def P11165543231747350319.Spec : Prop :=
  ∀ n, P11165543231747350319.a n = (A153483 (n + 1) : ℚ)

end A153483

/-! ## A153483.P12861507094813375102

`(A006093(n+1)+1)²²-32`
-/

namespace A153483.P12861507094813375102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A006093 (n + 1) + 1) ^ 2) ^ 2 - 32

end

end A153483.P12861507094813375102

namespace A153483

/-- `(A006093(n+1)+1)²²-32` -/
def P12861507094813375102.Spec : Prop :=
  ∀ n, P12861507094813375102.a n = A153483 (n + 1)

end A153483

/-! ## A153483.P11075299353291064203

`A008578(n+2)²²-32`
-/

namespace A153483.P11075299353291064203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 2) ^ 2) ^ 2 - 32

end

end A153483.P11075299353291064203

namespace A153483

/-- `A008578(n+2)²²-32` -/
def P11075299353291064203.Spec : Prop :=
  ∀ n, P11075299353291064203.a n = A153483 (n + 1)

end A153483

/-! ## A153483.P5257166552475845959

`p?[comp[n²]]²²-32`
-/

namespace A153483.P5257166552475845959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) ^ 2 : ℤ) - 32

end

end A153483.P5257166552475845959

namespace A153483

/-- `p?[comp[n²]]²²-32` -/
def P5257166552475845959.Spec : Prop :=
  ∀ n, P5257166552475845959.a n = A153483 (n + 1)

end A153483

/-!
# A153484: a(n) = prime(n)^5 - 128.

The programs for A153484, the canonical program `A153484.P16027499122342455010` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153484 has offset 1).

The definition of A153484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153484.P16027499122342455010

`A050997(n+1)-16*16/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153484

/-- `A050997(n+1)-16*16/2` -/
def P16027499122342455010.Spec : Prop :=
  ∀ n, P16027499122342455010.a n = (A153484 (n + 1) : ℚ)

end A153484

/-! ## A153484.P13682524711498112110

`A000584(A000040(n+1))-128`
-/

namespace A153484.P13682524711498112110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A000040 (n + 1)).toNat - 128

end

end A153484.P13682524711498112110

namespace A153484

/-- `A000584(A000040(n+1))-128` -/
def P13682524711498112110.Spec : Prop :=
  ∀ n, P13682524711498112110.a n = A153484 (n + 1)

end A153484

/-! ## A153484.P3763675331116636682

`A138404(n+1)+A000040(n+1)-A368170(A179664(2*(n+1)))`
-/

namespace A153484.P3763675331116636682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) + A000040 (n + 1) - A368170 (A179664 (2 * (n + 1))).toNat

end

end A153484.P3763675331116636682

namespace A153484

/-- `A138404(n+1)+A000040(n+1)-A368170(A179664(2*(n+1)))` -/
def P3763675331116636682.Spec : Prop :=
  ∀ n, P3763675331116636682.a n = A153484 (n + 1)

end A153484

/-! ## A153484.P12078177874409930162

`A135180(n+1)+A135177(n+1)-A368170(A179664(2*(n+1)))`
-/

namespace A153484.P12078177874409930162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) + A135177 (n + 1) - A368170 (A179664 (2 * (n + 1))).toNat

end

end A153484.P12078177874409930162

namespace A153484

/-- `A135180(n+1)+A135177(n+1)-A368170(A179664(2*(n+1)))` -/
def P12078177874409930162.Spec : Prop :=
  ∀ n, P12078177874409930162.a n = A153484 (n + 1)

end A153484

/-!
# A153485: Sum of all aliquot divisors of all positive integers <= n.

The programs for A153485, the canonical program `A153485.P1399869421749084233` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153485 has offset 1).

The definition of A153485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153485.P1399869421749084233

`A000217(n)-A004125(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A153485

/-- `A000217(n)-A004125(n+1)` -/
def P1399869421749084233.Spec : Prop :=
  ∀ n, P1399869421749084233.a n = A153485 (n + 1)

theorem P1399869421749084233.correct : P1399869421749084233.Spec := by
  intro n
  simp only [A153485, Nat.add_sub_cancel]

end A153485

/-! ## A153485.P11364181249463756576

`A244048(n+2)`
-/

namespace A153485.P11364181249463756576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 2)

end

end A153485.P11364181249463756576

namespace A153485

/-- `A244048(n+2)` -/
def P11364181249463756576.Spec : Prop :=
  ∀ n, P11364181249463756576.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P10761176009901718485

`A024816(n+2)-A004125(n+2)`
-/

namespace A153485.P10761176009901718485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 2) - A004125 (n + 2)

end

end A153485.P10761176009901718485

namespace A153485

/-- `A024816(n+2)-A004125(n+2)` -/
def P10761176009901718485.Spec : Prop :=
  ∀ n, P10761176009901718485.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P8247883822380734953

`∑[∑{d}[n+1, #]-(n+1)]`
-/

namespace A153485.P8247883822380734953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P8247883822380734953

namespace A153485

/-- `∑[∑{d}[n+1, #]-(n+1)]` -/
def P8247883822380734953.Spec : Prop :=
  ∀ n, P8247883822380734953.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P12179580730545935139

`∑[∑{d}[n+1, #%(n+1)]]`
-/

namespace A153485.P12179580730545935139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P12179580730545935139

namespace A153485

/-- `∑[∑{d}[n+1, #%(n+1)]]` -/
def P12179580730545935139.Spec : Prop :=
  ∀ n, (P12179580730545935139.a n : ℤ) = A153485 (n + 1)

end A153485

/-! ## A153485.P15291798554328213634

`∑{d}[n+1, #]+a(n-1)-(n+1)` with `a(0)=0`
-/

namespace A153485.P15291798554328213634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (a (n - 1) - (n + 1 : ℤ))

end

end A153485.P15291798554328213634

namespace A153485

/-- `∑{d}[n+1, #]+a(n-1)-(n+1)` -/
def P15291798554328213634.Spec : Prop :=
  ∀ n, P15291798554328213634.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P18300238854755561525

`∑[A001065(n+1)]`
-/

namespace A153485.P18300238854755561525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P18300238854755561525

namespace A153485

/-- `∑[A001065(n+1)]` -/
def P18300238854755561525.Spec : Prop :=
  ∀ n, P18300238854755561525.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P14404793829622991879

`A244049(n+1)+n`
-/

namespace A153485.P14404793829622991879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (n + 1) + (n : ℤ)

end

end A153485.P14404793829622991879

namespace A153485

/-- `A244049(n+1)+n` -/
def P14404793829622991879.Spec : Prop :=
  ∀ n, P14404793829622991879.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P9100264003631495778

`∑[A173455(n+1)]-1`
-/

namespace A153485.P9100264003631495778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A153485.P9100264003631495778

namespace A153485

/-- `∑[A173455(n+1)]-1` -/
def P9100264003631495778.Spec : Prop :=
  ∀ n, P9100264003631495778.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P7322508688361119812

`∑[A091818(n+1)/2]`
-/

namespace A153485.P7322508688361119812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P7322508688361119812

namespace A153485

/-- `∑[A091818(n+1)/2]` -/
def P7322508688361119812.Spec : Prop :=
  ∀ n, P7322508688361119812.a n = (A153485 (n + 1) : ℚ)

end A153485

/-! ## A153485.P17320355292548545023

`∑[A048050(n+1)]+n`
-/

namespace A153485.P17320355292548545023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A153485.P17320355292548545023

namespace A153485

/-- `∑[A048050(n+1)]+n` -/
def P17320355292548545023.Spec : Prop :=
  ∀ n, P17320355292548545023.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P14136143340325244777

`∑[A237588(n+1)+n]`
-/

namespace A153485.P14136143340325244777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P14136143340325244777

namespace A153485

/-- `∑[A237588(n+1)+n]` -/
def P14136143340325244777.Spec : Prop :=
  ∀ n, P14136143340325244777.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P16878620565984092094

`∑[A039653(n+1)-n]`
-/

namespace A153485.P16878620565984092094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P16878620565984092094

namespace A153485

/-- `∑[A039653(n+1)-n]` -/
def P16878620565984092094.Spec : Prop :=
  ∀ n, P16878620565984092094.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P8780103603355876769

`∑[n-A235796(n+1)]`
-/

namespace A153485.P8780103603355876769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P8780103603355876769

namespace A153485

/-- `∑[n-A235796(n+1)]` -/
def P8780103603355876769.Spec : Prop :=
  ∀ n, P8780103603355876769.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P2351490310347463648

`∑[∑[A340793(n+1)-1]]`
-/

namespace A153485.P2351490310347463648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P2351490310347463648

namespace A153485

/-- `∑[∑[A340793(n+1)-1]]` -/
def P2351490310347463648.Spec : Prop :=
  ∀ n, P2351490310347463648.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P17618904636829559067

`∑[∑[n]-A024816(n+1)]`
-/

namespace A153485.P17618904636829559067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A024816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P17618904636829559067

namespace A153485

/-- `∑[∑[n]-A024816(n+1)]` -/
def P17618904636829559067.Spec : Prop :=
  ∀ n, P17618904636829559067.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P11734406504452327657

`∑[(A062967(n+1)+1)/2]`
-/

namespace A153485.P11734406504452327657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062967 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P11734406504452327657

namespace A153485

/-- `∑[(A062967(n+1)+1)/2]` -/
def P11734406504452327657.Spec : Prop :=
  ∀ n, P11734406504452327657.a n = (A153485 (n + 1) : ℚ)

end A153485

/-! ## A153485.P2679829537976569763

`(n+1)²-A354801(n+1)`
-/

namespace A153485.P2679829537976569763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A354801 (n + 1)

end

end A153485.P2679829537976569763

namespace A153485

/-- `(n+1)²-A354801(n+1)` -/
def P2679829537976569763.Spec : Prop :=
  ∀ n, P2679829537976569763.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P8464167312440517473

`∑[A033880(n+1)+n+1]`
-/

namespace A153485.P8464167312440517473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P8464167312440517473

namespace A153485

/-- `∑[A033880(n+1)+n+1]` -/
def P8464167312440517473.Spec : Prop :=
  ∀ n, P8464167312440517473.a n = A153485 (n + 1)

end A153485

/-! ## A153485.P11949344105446471729

`∑[A000203(n+1)-(n+1)]`
-/

namespace A153485.P11949344105446471729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153485.P11949344105446471729

namespace A153485

/-- `∑[A000203(n+1)-(n+1)]` -/
def P11949344105446471729.Spec : Prop :=
  ∀ n, P11949344105446471729.a n = A153485 (n + 1)

end A153485

/-!
# A153486: a(n) = prime(n)^6 - 512.

The programs for A153486, the canonical program `A153486.P10579548031634709284` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153486 has offset 1).

The definition of A153486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153486.P10579548031634709284

`A001248(n+1)^3-512`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153486

/-- `A001248(n+1)^3-512` -/
def P10579548031634709284.Spec : Prop :=
  ∀ n, P10579548031634709284.a n = A153486 (n + 1)

theorem P10579548031634709284.correct : P10579548031634709284.Spec := by
  intro n
  simp only [A153486, Nat.add_sub_cancel]

end A153486

/-! ## A153486.P3975935588119704880

`A030516(n+1)-A030628(A000005(A030632(n+1)))`
-/

namespace A153486.P3975935588119704880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A030628 (A000005 (A030632 (n + 1)).toNat).toNat

end

end A153486.P3975935588119704880

namespace A153486

/-- `A030516(n+1)-A030628(A000005(A030632(n+1)))` -/
def P3975935588119704880.Spec : Prop :=
  ∀ n, P3975935588119704880.a n = A153486 (n + 1)

end A153486

/-! ## A153486.P17252868057928745453

`A030516(n+1)-A036967(A001222(A179696(n+1)))`
-/

namespace A153486.P17252868057928745453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A036967 (A001222 (A179696 (n + 1)).toNat).toNat

end

end A153486.P17252868057928745453

namespace A153486

/-- `A030516(n+1)-A036967(A001222(A179696(n+1)))` -/
def P17252868057928745453.Spec : Prop :=
  ∀ n, P17252868057928745453.a n = A153486 (n + 1)

end A153486

/-! ## A153486.P3990804534686182485

`A030516(n+1)-A100577(A178739(n+1))`
-/

namespace A153486.P3990804534686182485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A100577 (A178739 (n + 1)).toNat

end

end A153486.P3990804534686182485

namespace A153486

/-- `A030516(n+1)-A100577(A178739(n+1))` -/
def P3990804534686182485.Spec : Prop :=
  ∀ n, P3990804534686182485.a n = A153486 (n + 1)

end A153486

/-! ## A153486.P994702350698211123

`A030516(n+1)-2^A000005(A030627(n+1))`
-/

namespace A153486.P994702350698211123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) : ℚ) - (2 : ℚ) ^ (A000005 (A030627 (n + 1)).toNat : ℤ)

end

end A153486.P994702350698211123

namespace A153486

/-- `A030516(n+1)-2^A000005(A030627(n+1))` -/
def P994702350698211123.Spec : Prop :=
  ∀ n, P994702350698211123.a n = (A153486 (n + 1) : ℚ)

end A153486

/-! ## A153486.P3817224554878528787

`A030516(n+1)-A069493(A001222(A143610(n+1)))`
-/

namespace A153486.P3817224554878528787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A069493 (A001222 (A143610 (n + 1)).toNat).toNat

end

end A153486.P3817224554878528787

namespace A153486

/-- `A030516(n+1)-A069493(A001222(A143610(n+1)))` -/
def P3817224554878528787.Spec : Prop :=
  ∀ n, P3817224554878528787.a n = A153486 (n + 1)

end A153486

/-!
# A153487: Sum of first n perfect numbers A000396, divided by 2.

The programs for A153487, there is no canonical definition to state claims against.
-/

/-! ## A153487.P18316128292094938066

`A092336(n+1)/2`
-/

namespace A153487.P18316128292094938066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092336 (n + 1) : ℚ) / 2

end

end A153487.P18316128292094938066

/-! ## A153487.P5352241641880695519

`∑[A133028(n+1)]`
-/

namespace A153487.P5352241641880695519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153487.P5352241641880695519

/-! ## A153487.P10862999134693243689

`∑[A133067(n+1)+1]`
-/

namespace A153487.P10862999134693243689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133067 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153487.P10862999134693243689

/-! ## A153487.P10392770382855259540

`∑[A000396(n+1)/2]`
-/

namespace A153487.P10392770382855259540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153487.P10392770382855259540

/-! ## A153487.P1835157091599840545

`A185351(2^(n+1))/2`
-/

namespace A153487.P1835157091599840545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185351 (2 ^ (n + 1)) : ℚ) / 2

end

end A153487.P1835157091599840545

/-!
# A153488: Triangle T(n, k) = prime(n)^k - 2^(2*k-3) with T(n, 1) = prime(n), read by rows.

The programs for A153488, there is no canonical definition to state claims against.
-/

/-! ## A153488.P601249109768230927

`A038568(2*A033467(n))`
-/

namespace A153488.P601249109768230927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * A033467 n).toNat

end

end A153488.P601249109768230927

/-! ## A153488.P3834129340515248866

`A274640(or(n, A002387(2*n)))`
-/

namespace A153488.P3834129340515248866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (Int.lor (n : ℤ) (A002387 (2 * n))).toNat

end

end A153488.P3834129340515248866

/-!
# A153489: Triangular recursive sequence: a(n,k)=(n - k + 1)A(n - 1, k - 1) + (k)* A(n - 1, k) - 18*A(n - 2, k - 1).

The programs for A153489, there is no canonical definition to state claims against.
-/

/-! ## A153489.P5339845336983991714

`A375814(A153759(n+1))`
-/

namespace A153489.P5339845336983991714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375814 (A153759 (n + 1)).toNat

end

end A153489.P5339845336983991714

/-! ## A153489.P11674448780044079710

`xor(A002262(A174921(n)), A153310(n))`
-/

namespace A153489.P11674448780044079710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A174921 n).toNat) (A153310 n)

end

end A153489.P11674448780044079710

/-! ## A153489.P12138859261276162408

`xor(A153283(n), A335681(A176560(n)))`
-/

namespace A153489.P12138859261276162408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153283 n) (A335681 (A176560 n).toNat)

end

end A153489.P12138859261276162408

/-! ## A153489.P2512058063651624214

`xor(A153288(n), A335681(A176560(n)))`
-/

namespace A153489.P2512058063651624214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153288 n) (A335681 (A176560 n).toNat)

end

end A153489.P2512058063651624214

/-! ## A153489.P16898953208164091064

`xor(A153311(n), A335681(A176560(n)))`
-/

namespace A153489.P16898953208164091064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153311 n) (A335681 (A176560 n).toNat)

end

end A153489.P16898953208164091064

/-!
# A153490: Sierpinski carpet, read by antidiagonals.

The programs for A153490, there is no canonical definition to state claims against.
-/

/-! ## A153490.P13550862171506951862

`floor(sqrt(A211312(n)))`
-/

namespace A153490.P13550862171506951862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A211312 n)

end

end A153490.P13550862171506951862

/-! ## A153490.P2243234203994994967

`A008288(n)²%3`
-/

namespace A153490.P2243234203994994967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008288 n ^ 2) 3

end

end A153490.P2243234203994994967

/-! ## A153490.P15971115030583240815

`A059474(n)²%3`
-/

namespace A153490.P15971115030583240815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059474 n ^ 2) 3

end

end A153490.P15971115030583240815

/-! ## A153490.P3640650447108629274

`A059576(n)²%3`
-/

namespace A153490.P3640650447108629274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059576 n ^ 2) 3

end

end A153490.P3640650447108629274

/-! ## A153490.P10738970447925894608

`A081579(n)²%3`
-/

namespace A153490.P10738970447925894608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081579 n ^ 2) 3

end

end A153490.P10738970447925894608

/-! ## A153490.P7366907198962274919

`A081582(n)²%3`
-/

namespace A153490.P7366907198962274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081582 n ^ 2) 3

end

end A153490.P7366907198962274919

/-! ## A153490.P4177080976141219484

`A098593(n)²%3`
-/

namespace A153490.P4177080976141219484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098593 n ^ 2) 3

end

end A153490.P4177080976141219484

/-! ## A153490.P4126427711538672875

`A108625(n)²%3`
-/

namespace A153490.P4126427711538672875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108625 n ^ 2) 3

end

end A153490.P4126427711538672875

/-! ## A153490.P10183868349829531420

`dr(A047671(n+1))%2`
-/

namespace A153490.P10183868349829531420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A047671 (n + 1)) % 2

end

end A153490.P10183868349829531420

/-! ## A153490.P13907375844631960035

`A049600(comp[∑[n]])²%3`
-/

namespace A153490.P13907375844631960035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2) 3

end

end A153490.P13907375844631960035

/-!
# A153491: Triangle T(n,m)= 11*binomial(n,k) - 8 read by rows, 0<=k<=n.

The programs for A153491, the canonical program `A153491.P5433564092227727412` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153491 has offset 0).

The definition of A153491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153491.P5433564092227727412

`11*A007318(n)-8`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A153491

/-- `11*A007318(n)-8` -/
def P5433564092227727412.Spec : Prop :=
  ∀ n, P5433564092227727412.a n = A153491 n

theorem P5433564092227727412.correct : P5433564092227727412.Spec := by
  intro n
  simp only [A153491]

end A153491

/-! ## A153491.P2288412633323522827

`A131061(n)+A131067(n)+1`
-/

namespace A153491.P2288412633323522827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + (A131067 n + 1)

end

end A153491.P2288412633323522827

namespace A153491

/-- `A131061(n)+A131067(n)+1` -/
def P2288412633323522827.Spec : Prop :=
  ∀ n, P2288412633323522827.a n = A153491 n

end A153491

/-! ## A153491.P3797171631117381854

`A131063(n)+A131065(n)+1`
-/

namespace A153491.P3797171631117381854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + (A131065 n + 1)

end

end A153491.P3797171631117381854

namespace A153491

/-- `A131063(n)+A131065(n)+1` -/
def P3797171631117381854.Spec : Prop :=
  ∀ n, P3797171631117381854.a n = A153491 n

end A153491

/-! ## A153491.P8958650390393449592

`A131060(n)+A168625(n)+1`
-/

namespace A153491.P8958650390393449592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A168625 n + 1)

end

end A153491.P8958650390393449592

namespace A153491

/-- `A131060(n)+A168625(n)+1` -/
def P8958650390393449592.Spec : Prop :=
  ∀ n, P8958650390393449592.a n = A153491 n

end A153491

/-! ## A153491.P1812588734937347751

`A007318(n)+2*A131063(n)`
-/

namespace A153491.P1812588734937347751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A131063 n

end

end A153491.P1812588734937347751

namespace A153491

/-- `A007318(n)+2*A131063(n)` -/
def P1812588734937347751.Spec : Prop :=
  ∀ n, P1812588734937347751.a n = A153491 n

end A153491

/-! ## A153491.P17013251966555433424

`A131067(n)+2*A109128(n)`
-/

namespace A153491.P17013251966555433424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n + 2 * A109128 n

end

end A153491.P17013251966555433424

namespace A153491

/-- `A131067(n)+2*A109128(n)` -/
def P17013251966555433424.Spec : Prop :=
  ∀ n, P17013251966555433424.a n = A153491 n

end A153491

/-! ## A153491.P10704272247312658183

`A131060(n)+2*A131061(n)`
-/

namespace A153491.P10704272247312658183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + 2 * A131061 n

end

end A153491.P10704272247312658183

namespace A153491

/-- `A131060(n)+2*A131061(n)` -/
def P10704272247312658183.Spec : Prop :=
  ∀ n, P10704272247312658183.a n = A153491 n

end A153491

/-! ## A153491.P4522293601322866595

`A131063(n)+2*A131060(n)`
-/

namespace A153491.P4522293601322866595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + 2 * A131060 n

end

end A153491.P4522293601322866595

namespace A153491

/-- `A131063(n)+2*A131060(n)` -/
def P4522293601322866595.Spec : Prop :=
  ∀ n, P4522293601322866595.a n = A153491 n

end A153491

/-! ## A153491.P16459296582468218927

`A007318(n)+A131065(n)+A131061(n)`
-/

namespace A153491.P16459296582468218927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131065 n + A131061 n)

end

end A153491.P16459296582468218927

namespace A153491

/-- `A007318(n)+A131065(n)+A131061(n)` -/
def P16459296582468218927.Spec : Prop :=
  ∀ n, P16459296582468218927.a n = A153491 n

end A153491

/-! ## A153491.P11371993655222077762

`A007318(n)+A131067(n)+A131060(n)`
-/

namespace A153491.P11371993655222077762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131067 n + A131060 n)

end

end A153491.P11371993655222077762

namespace A153491

/-- `A007318(n)+A131067(n)+A131060(n)` -/
def P11371993655222077762.Spec : Prop :=
  ∀ n, P11371993655222077762.a n = A153491 n

end A153491

/-! ## A153491.P10333360637296771795

`A007318(n)+A168625(n)+A109128(n)`
-/

namespace A153491.P10333360637296771795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A168625 n + A109128 n)

end

end A153491.P10333360637296771795

namespace A153491

/-- `A007318(n)+A168625(n)+A109128(n)` -/
def P10333360637296771795.Spec : Prop :=
  ∀ n, P10333360637296771795.a n = A153491 n

end A153491

/-! ## A153491.P9741770691325350176

`A109128(n)+A131063(n)+A131061(n)`
-/

namespace A153491.P9741770691325350176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A131063 n + A131061 n)

end

end A153491.P9741770691325350176

namespace A153491

/-- `A109128(n)+A131063(n)+A131061(n)` -/
def P9741770691325350176.Spec : Prop :=
  ∀ n, P9741770691325350176.a n = A153491 n

end A153491

/-! ## A153491.P1203700973876829287

`A109128(n)+A131065(n)+A131060(n)`
-/

namespace A153491.P1203700973876829287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A131065 n + A131060 n)

end

end A153491.P1203700973876829287

namespace A153491

/-- `A109128(n)+A131065(n)+A131060(n)` -/
def P1203700973876829287.Spec : Prop :=
  ∀ n, P1203700973876829287.a n = A153491 n

end A153491

/-! ## A153491.P10260872665771359378

`A017425(A014473(n))`
-/

namespace A153491.P10260872665771359378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 (A014473 n).toNat

end

end A153491.P10260872665771359378

namespace A153491

/-- `A017425(A014473(n))` -/
def P10260872665771359378.Spec : Prop :=
  ∀ n, P10260872665771359378.a n = A153491 n

end A153491

/-! ## A153491.P16562481095510176099

`A017413(A007318(n)-1)+1`
-/

namespace A153491.P16562481095510176099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (A007318 n - 1).toNat + 1

end

end A153491.P16562481095510176099

namespace A153491

/-- `A017413(A007318(n)-1)+1` -/
def P16562481095510176099.Spec : Prop :=
  ∀ n, P16562481095510176099.a n = A153491 n

end A153491

/-! ## A153491.P4220192566104454521

`A017401(A007318(n)-1)+2`
-/

namespace A153491.P4220192566104454521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A007318 n - 1).toNat + 2

end

end A153491.P4220192566104454521

namespace A153491

/-- `A017401(A007318(n)-1)+2` -/
def P4220192566104454521.Spec : Prop :=
  ∀ n, P4220192566104454521.a n = A153491 n

end A153491

/-! ## A153491.P10870758369358549761

`A299647(A109128(n))`
-/

namespace A153491.P10870758369358549761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299647 (A109128 n).toNat

end

end A153491.P10870758369358549761

namespace A153491

/-- `A299647(A109128(n))` -/
def P10870758369358549761.Spec : Prop :=
  ∀ n, P10870758369358549761.a n = A153491 n

end A153491

/-! ## A153491.P5844009325374280983

`A343028(A131060(n))`
-/

namespace A153491.P5844009325374280983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343028 (A131060 n).toNat

end

end A153491.P5844009325374280983

namespace A153491

/-- `A343028(A131060(n))` -/
def P5844009325374280983.Spec : Prop :=
  ∀ n, P5844009325374280983.a n = A153491 n

end A153491

/-! ## A153491.P16696201579230770741

`A131060(n)+A047396(A131060(n)+1)`
-/

namespace A153491.P16696201579230770741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + A047396 (A131060 n + 1).toNat

end

end A153491.P16696201579230770741

namespace A153491

/-- `A131060(n)+A047396(A131060(n)+1)` -/
def P16696201579230770741.Spec : Prop :=
  ∀ n, P16696201579230770741.a n = A153491 n

end A153491

/-! ## A153491.P5842276471471448164

`A131061(n)+A047286(A131061(n)+1)`
-/

namespace A153491.P5842276471471448164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + A047286 (A131061 n + 1).toNat

end

end A153491.P5842276471471448164

namespace A153491

/-- `A131061(n)+A047286(A131061(n)+1)` -/
def P5842276471471448164.Spec : Prop :=
  ∀ n, P5842276471471448164.a n = A153491 n

end A153491

/-!
# A153497: a(n) is the number whose binary expansion is A153498(n).

The programs for A153497, there is no canonical definition to state claims against.
-/

/-! ## A153497.P6799415930914715422

`A006995(A136401(n+3)+A000079(n))`
-/

namespace A153497.P6799415930914715422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A136401 (n + 3) + A000079 n).toNat

end

end A153497.P6799415930914715422

/-! ## A153497.P5337965020134798804

`A206913(A269303(3*n+2)*A270831(n+1))`
-/

namespace A153497.P5337965020134798804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (A269303 (3 * n + 2) * A270831 (n + 1)).toNat

end

end A153497.P5337965020134798804

/-!
# A153498: Palindromes formed from concatenation of A147759(n) and the same string A147759(n) but without its initial digit.

The programs for A153498, there is no canonical definition to state claims against.
-/

/-! ## A153498.P13579512002868004292

`A000533(n)*A147759(n+1)-A178500(n)`
-/

namespace A153498.P13579512002868004292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n * A147759 (n + 1) - A178500 n

end

end A153498.P13579512002868004292

/-! ## A153498.P15295847963778429146

`A342040(and(A153497(n+1), A290113(n)))`
-/

namespace A153498.P15295847963778429146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342040 (Int.land (A153497 (n + 1)) (A290113 n)).toNat

end

end A153498.P15295847963778429146

/-! ## A153498.P7210983361135508112

`A007088(A153497(n+1))`
-/

namespace A153498.P7210983361135508112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A153497 (n + 1)).toNat

end

end A153498.P7210983361135508112

/-!
# A153499: a(n) is the number whose binary expansion is A153500(n).

The programs for A153499, there is no canonical definition to state claims against.
-/

/-! ## A153499.P8952866618028825338

`A359402(2*floor(24^(n/4)))`
-/

namespace A153499.P8952866618028825338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (2 * ⌊(24 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋).toNat

end

end A153499.P8952866618028825338

